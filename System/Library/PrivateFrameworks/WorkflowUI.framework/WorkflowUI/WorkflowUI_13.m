uint64_t sub_274845020()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    sub_2749F96A4();
  }

  return result;
}

uint64_t sub_2748451F0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_sections);
    if (*(v3 + 16) > a2)
    {
      return *(*(v3 + 40 * a2 + 48) + 16);
    }
  }

  __break(1u);
  return result;
}

void sub_274845250()
{
  [*&v0[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_headerSeparator] alpha];
  v2 = v1;
  v3 = *&v0[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tableView];
  [v3 contentOffset];
  if (v2 <= 0.0 == v4 > 0.0)
  {
    v5 = v4 > 0.0;
    [v3 setClipsToBounds_];
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    *(v6 + 24) = v5;
    v7 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v8 = v0;
    v9 = sub_27480FE78(sub_27484DE48, v6, 0.35, 1.0);
    [v9 startAnimation];
  }
}

uint64_t sub_27484538C()
{
  sub_2749585BC(1);
  sub_274840B74();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_274815140();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_274845468(void *a1)
{
  v2 = sub_27484DAC0(a1);
  v4 = sub_274820578(v2, v3);

  if (v4)
  {
    v5 = [a1 searchTextField];
    v6 = [v5 tokens];

    sub_27471CF08(0, &unk_28096B150);
    v7 = sub_2749FCF84();

    v8 = sub_27472D918(v7);

    if (!v8)
    {
      sub_2749585BC(0);
    }
  }

  sub_274840B74();
}

void sub_2748455BC()
{
  sub_274840B74();
  if (*(v0 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_mode + 48))
  {
    v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tableView);
    v2 = *MEMORY[0x277CBF348];
    v3 = *(MEMORY[0x277CBF348] + 8);

    [v1 setContentOffset:0 animated:{v2, v3}];
  }
}

void sub_2748456F0(void *a1)
{
  [a1 resignFirstResponder];
  v2 = [a1 searchTextField];
  sub_27471CF08(0, &unk_28096B150);
  v3 = sub_2749FCF74();
  [v2 setTokens_];

  sub_27484DB24(0, 0xE000000000000000, a1, &selRef_setText_);
  sub_2749585BC(0);

  sub_274840B74();
}

void sub_274845834(void *a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = *(v2 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_sections);
  if (*(v3 + 16) <= a2)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (*(v3 + 40 * a2 + 64))
  {
    swift_bridgeObjectRetain_n();

    OUTLINED_FUNCTION_52_4();
    v5 = sub_2749FCD64();
    v6 = [a1 dequeueReusableHeaderFooterViewWithIdentifier_];

    if (v6)
    {

      type metadata accessor for WFDrawerHeaderView();
      swift_dynamicCastClassUnconditional();
      v7 = OUTLINED_FUNCTION_32_1();
      sub_27484DB24(v7, v8, v9, v10);
      return;
    }

    goto LABEL_9;
  }
}

void sub_2748459C8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = *(v2 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_sections);
  if (*(v3 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v4 = (v3 + 40 * a2);
  if (a2 && !v4[8] && (v4[4] != 0x737070615F776B7ALL || v4[5] != 0xE800000000000000))
  {
    sub_2749FDCC4();
  }
}

void sub_274845A98()
{
  type metadata accessor for WFDrawerViewController.Item(0);
  OUTLINED_FUNCTION_43();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_39();
  v5 = v3 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  if (sub_2749F9274() < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_42_5();
  if (v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_28_9();
  v11 = *(v10 + 48);

  v12 = sub_2749F9244();
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v12 >= *(v11 + 16))
  {
LABEL_12:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_71();
  sub_27484DD24(v11 + v13 + *(v1 + 72) * v14, v8);

  sub_27484DDE4(v8, v5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_27484DD88(v5);
      break;
    case 2u:
    case 3u:
      return;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B148);

      sub_2749F9444();
      OUTLINED_FUNCTION_9();
      (*(v15 + 8))(v5);
      break;
  }
}

void sub_274845D94()
{
  OUTLINED_FUNCTION_48();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096A270);
  OUTLINED_FUNCTION_34(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_43();
  v51[0] = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  type metadata accessor for WFDrawerViewController.Item(0);
  OUTLINED_FUNCTION_43();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = v51 - v22;
  v53 = v4;
  if (sub_2749F9274() < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_42_5();
  if (v24)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v51[1] = v2;
  v52 = v6;
  OUTLINED_FUNCTION_28_9();
  v26 = *(v25 + 48);

  v4 = v53;
  v27 = sub_2749F9244();
  if ((v27 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    OUTLINED_FUNCTION_1_1();
LABEL_10:
    v34 = qword_28159E448;
    v35 = sub_2749FCD64();
    v36 = sub_2749FCD64();

    v37 = [v34 localizedStringForKey:v35 value:v36 table:0];

    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v38 = sub_2748403C4(v4);
    [v38 setRepresentedObject_];
    sub_2748409F4(v38);

LABEL_13:
LABEL_14:
    v32 = v52;
    goto LABEL_15;
  }

  if (v27 >= *(v26 + 16))
  {
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_71();
  sub_27484DD24(v26 + v28 + *(v16 + 72) * v29, v23);

  sub_27484DD24(v23, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v39 = *v20;
      v40 = v20[1];
      v41 = v20[2];
      v42 = v20[3];
      objc_opt_self();
      sub_27471CF08(0, &qword_28096BB10);

      v43 = sub_274903E28();
      v44 = OUTLINED_FUNCTION_24_1();
      v46 = [v44 v45];

      sub_27471CF08(0, &unk_28096B150);
      v47 = v46;

      v38 = sub_2748403C4(v46);
      v54 = v39;
      v55 = v40;
      v56 = v41;
      v57 = v42;
      sub_2749FDD34();
      v48 = OUTLINED_FUNCTION_24_1();
      [v48 v49];
      swift_unknownObjectRelease();
      sub_2748409F4(v38);

      goto LABEL_13;
    case 2u:
      sub_27471CF08(0, &qword_280968030);
      v4 = sub_2748565B8();
      sub_27471CF08(0, &unk_28096B150);
      v9 = v4;
      sub_2749FCE14();
      if (qword_28159E3A8 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    case 3u:
      sub_27484DD88(v20);
      goto LABEL_14;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B148);

      v30 = v51[0];
      (*(v51[0] + 32))(v14, v20, v9);
      Strong = swift_unknownObjectWeakLoadStrong();
      v32 = v52;
      if (Strong)
      {
        v33 = sub_2749F9374();
        __swift_storeEnumTagSinglePayload(v1, 1, 1, v33);
        sub_274818AC8();
        swift_unknownObjectRelease();
        sub_27472ECBC(v1, &unk_28096A270);
      }

      (*(v30 + 8))(v14, v9);
      break;
  }

LABEL_15:
  v50 = sub_2749F9224();
  [v32 deselectRowAtIndexPath:v50 animated:1];

  sub_27484DD88(v23);
  OUTLINED_FUNCTION_46();
}

void sub_274846410()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  type metadata accessor for WFDrawerViewController.Item(0);
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_39();
  v8 = v6 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  if (sub_2749F9274() < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v34 = v8;
  v18 = OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_sections;
  OUTLINED_FUNCTION_42_5();
  if (v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_28_9();
  v21 = *(v20 + 48);

  v22 = sub_2749F9244();
  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v22 >= *(v21 + 16))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_71();
  sub_27484DD24(v21 + v23 + *(v4 + 72) * v24, v17);

  sub_27484DD24(v17, v15);
  if (!swift_getEnumCaseMultiPayload())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B148);

    sub_2749F9444();
    OUTLINED_FUNCTION_9();
    (*(v32 + 8))(v15);
    goto LABEL_14;
  }

  sub_27484DD88(v15);
  if (sub_2749F9274() != *(*(v0 + v18) + 16) - 1)
  {
    goto LABEL_10;
  }

  v25 = sub_2749F9244();
  if (sub_2749F9274() < 0)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_42_5();
  if (!v19)
  {
    OUTLINED_FUNCTION_28_9();
    if (v25 != *(*(v26 + 48) + 16) - 1)
    {
LABEL_10:
      sub_27484DD24(v17, v12);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_27484DD88(v12);
      if (EnumCaseMultiPayload != 1)
      {
        v28 = v34;
        sub_27484DD24(v17, v34);
        v29 = swift_getEnumCaseMultiPayload();
        sub_27484DD88(v28);
        if (v29 != 2)
        {
          [v2 setSeparatorInset_];
          goto LABEL_16;
        }
      }

      v30 = 88.0;
      v31 = 10.0;
LABEL_15:
      [v2 setSeparatorInset_];
LABEL_16:
      sub_27484DD88(v17);
      OUTLINED_FUNCTION_46();
      return;
    }

LABEL_14:
    v31 = 1.79769313e308;
    v30 = 0.0;
    goto LABEL_15;
  }

LABEL_23:
  __break(1u);
}

char *sub_274846928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_action;
  v6 = sub_2749F9444();
  __swift_storeEnumTagSinglePayload(&v3[v5], 1, 1, v6);
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_actionView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v3[v7] = v8;
  v9 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_iconView;
  v10 = CGSizeMake(v8);
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x277D7D520]) initWithIcon:0 size:{v10, v11}];
  v12 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_label;
  *&v3[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v13 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_infoButton;
  *&v3[v13] = [objc_opt_self() buttonWithType_];
  *&v3[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_internalBadge] = 0;
  *&v3[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_topHitsScrollView] = 0;
  *&v3[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_topHitViews] = 0;
  *&v3[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_topHits] = MEMORY[0x277D84F90];
  if (a3)
  {

    v14 = sub_2749FCD64();
  }

  else
  {
    v14 = 0;
  }

  v75.receiver = v3;
  v75.super_class = type metadata accessor for WFDrawerActionCell(0);
  v15 = objc_msgSendSuper2(&v75, sel_initWithStyle_reuseIdentifier_, 0, v14);

  v16 = v15;
  [v16 setSelectionStyle_];
  v17 = objc_opt_self();
  v18 = [v17 clearColor];
  [v16 setBackgroundColor_];

  v19 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_actionView;
  v20 = *&v16[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_actionView];
  sub_2749F9BB4();
  v21 = v20;
  v22 = sub_2749F9B54();
  [v21 setBackgroundColor_];

  v23 = [*&v16[v19] layer];
  LODWORD(v24) = 1031127695;
  [v23 setShadowOpacity_];

  v25 = [*&v16[v19] layer];
  [v25 setShadowRadius_];

  v26 = [*&v16[v19] layer];
  [v26 setShadowOffset_];

  v27 = [*&v16[v19] layer];
  [v27 setCornerRadius_];

  v28 = [*&v16[v19] layer];
  [v28 setShadowPathIsBounds_];

  v29 = [v16 contentView];
  v30 = &selRef_setInterGroupSpacing_;
  [v29 addSubview_];

  v31 = [objc_opt_self() systemShortcutsUserDefaults];
  v32 = sub_2749FCD64();
  v33 = [v31 BOOLForKey_];

  if (v33)
  {
    v34 = v16;
    v35 = [v34 contentView];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = *&v16[v19];
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v37 = v36;

    v38 = objc_allocWithZone(sub_2749F9D44());
    v30 = &selRef_setInterGroupSpacing_;
    v39 = sub_2749F9D34();
  }

  else
  {

    v40 = *&v16[v19];
    v41 = objc_allocWithZone(MEMORY[0x277D75468]);
    v42 = v16;
    v35 = v40;
    v39 = [v41 initWithDelegate_];
  }

  [v35 addInteraction_];

  v43 = &selRef_initWithFileResponseCode_error_;
  if (!_UISolariumEnabled())
  {
    v56 = *&v16[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_infoButton];
    sub_27471CF08(0, &qword_280968030);
    v48 = v56;
    v57 = sub_2748565B8();
    if (v57)
    {
      v58 = v57;
      result = [objc_opt_self() _preferredFontForTextStyle_weight_];
      if (!result)
      {
        goto LABEL_20;
      }

      v59 = result;

      v60 = [objc_opt_self() configurationWithFont_];

      v55 = [v58 imageWithConfiguration_];
      v43 = &selRef_initWithFileResponseCode_error_;
    }

    else
    {

      v55 = 0;
    }

    [v48 setImage:v55 forState:0];
    goto LABEL_18;
  }

  sub_27471CF08(0, &qword_28096B140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_274A15450;
  *(v44 + 32) = [v17 labelColor];
  v45 = objc_allocWithZone(MEMORY[0x277D75348]);
  *(v44 + 40) = sub_2747CA0C4(sub_274847604, 0);
  v46 = sub_274847684();
  v47 = *&v16[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_infoButton];
  sub_27471CF08(0, &qword_280968030);
  v48 = v47;
  v49 = sub_2748565B8();
  if (!v49)
  {

    v55 = 0;
    goto LABEL_15;
  }

  v50 = v49;
  result = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (result)
  {
    v52 = result;

    v53 = [objc_opt_self() configurationWithFont_];

    v54 = [v53 configurationByApplyingConfiguration_];
    v55 = [v50 imageWithConfiguration_];

LABEL_15:
    [v48 setImage:v55 forState:0];

    v43 = &selRef_initWithFileResponseCode_error_;
LABEL_18:

    v61 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_infoButton;
    v62 = *&v16[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_infoButton];
    sub_27471CF08(0, &qword_28096D750);
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v64 = v62;
    v65 = sub_2749FD644();
    [v64 addAction:v65 forControlEvents:{64, 0, 0, 0, sub_27484DCEC, v63}];

    [*&v16[v19] v30[298]];
    [*&v16[v19] v30[298]];
    v66 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_label;
    v67 = *&v16[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_label];
    v68 = objc_opt_self();
    v69 = *MEMORY[0x277D76918];
    v70 = *MEMORY[0x277D74420];
    v71 = v67;
    v72 = [v68 _preferredFontForTextStyle_weight_];
    [v71 setFont_];

    v73 = *&v16[v66];
    v74 = [v17 v43[157]];
    [v73 setTextColor_];

    [*&v16[v66] setNumberOfLines_];
    [*&v16[v19] v30[298]];

    return v16;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_27484736C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2749F9444();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B088);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-v7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v10 = Strong;
  v11 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_action;
  swift_beginAccess();
  sub_27484DBD4(v10 + v11, v8);

  if (__swift_getEnumTagSinglePayload(v8, 1, v2))
  {
    sub_27472ECBC(v8, &qword_28096B088);
LABEL_4:
    v12 = sub_2749F93E4();
    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v12);
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_27472ECBC(v8, &qword_28096B088);
  sub_2749F93F4();
  return (*(v3 + 8))(v5, v2);
}

void sub_274847570()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      v3 = swift_unknownObjectWeakLoadStrong();

      if (v3)
      {
        sub_274814B60();
        swift_unknownObjectRelease();
      }
    }
  }
}

id sub_274847618(void *a1, SEL *a2, SEL *a3)
{
  v5 = [a1 userInterfaceStyle];
  v6 = objc_opt_self();
  if (v5 == 1)
  {
    v7 = a2;
  }

  else
  {
    v7 = a3;
  }

  v8 = [v6 *v7];

  return v8;
}

id sub_274847684()
{
  sub_27471CF08(0, &unk_28096B110);
  v0 = sub_2749FCF74();

  v1 = [swift_getObjCClassFromMetadata() configurationWithPaletteColors_];

  return v1;
}

uint64_t sub_274847708()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B088);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v21[-v1];
  v3 = sub_2749F9444();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_action;
    swift_beginAccess();
    sub_27484DBD4(&v8[v9], v2);
    if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
    {

      return sub_27472ECBC(v2, &qword_28096B088);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      v10 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_actionView;
      v11 = [*&v8[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_actionView] window];
      if (v11)
      {
        v12 = v11;
        v13 = *&v8[v10];
        [v13 bounds];
        [v13 convertRect:objc_msgSend(v12 toCoordinateSpace:{sel_coordinateSpace), v14, v15, v16, v17}];

        swift_unknownObjectRelease();
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v19 = Strong, v20 = swift_unknownObjectWeakLoadStrong(), v19, v20))
      {
        sub_2748198FC();

        swift_unknownObjectRelease();
      }

      else
      {
      }

      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

void sub_274847A14()
{
  v1 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_action;
  v2 = sub_2749F9444();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_actionView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_iconView;
  v6 = CGSizeMake(v4);
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D7D520]) initWithIcon:0 size:{v6, v7}];
  v8 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_label;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v9 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_infoButton;
  *(v0 + v9) = [objc_opt_self() buttonWithType_];
  *(v0 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_internalBadge) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_topHitsScrollView) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_topHitViews) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_topHits) = MEMORY[0x277D84F90];
  sub_2749FDAE4();
  __break(1u);
}

uint64_t sub_274847BCC()
{
  v47.receiver = v0;
  v47.super_class = type metadata accessor for WFDrawerActionCell(0);
  objc_msgSendSuper2(&v47, sel_layoutSubviews);
  [v0 bounds];
  CGRectGetWidth(v48);
  sub_274848044(v46);
  v1 = *&v46[4];
  v2 = *&v46[5];
  v3 = *&v46[6];
  v4 = *&v46[7];
  v5 = *&v46[8];
  v6 = *&v46[9];
  v7 = *&v46[10];
  v8 = *&v46[11];
  v44 = *&v46[13];
  v45 = *&v46[12];
  v42 = *&v46[15];
  v43 = *&v46[14];
  v36 = *&v46[17];
  v37 = *&v46[16];
  v34 = *&v46[19];
  v35 = *&v46[18];
  v40 = *&v46[21];
  v41 = *&v46[20];
  v38 = *&v46[23];
  v39 = *&v46[22];
  v32 = *&v46[1];
  v33 = *v46;
  v30 = *&v46[3];
  v31 = *&v46[2];
  [*&v0[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_actionView] setFrame_];
  [*&v0[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_iconView] setFrame_];
  [*&v0[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_label] setFrame_];
  [*&v0[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_infoButton] setFrame_];
  result = *&v0[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_internalBadge];
  if (result)
  {
    result = [result setFrame_];
  }

  v10 = *&v0[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_topHitsScrollView];
  if (v10)
  {
    v11 = *&v0[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_topHitViews];
    if (v11)
    {
      v12 = v10;

      [v12 setFrame_];
      result = sub_27472D918(v11);
      v13 = result;
      v14 = 4.0;
      if (result <= 4)
      {
        v49.origin.y = v32;
        v49.origin.x = v33;
        v49.size.height = v30;
        v49.size.width = v31;
        CGRectGetWidth(v49);
        v15 = [v0 traitCollection];
        [v15 displayScale];

        result = BSFloatRoundForScale();
        v14 = v16;
      }

      if (!__OFSUB__(v13, 1))
      {
        [v12 contentSize];
        [v12 setContentSize_];
        v17 = [v0 traitCollection];
        v18 = [v17 layoutDirection];

        if (v18 == 1)
        {
          v50.origin.y = v32;
          v50.origin.x = v33;
          v50.size.height = v30;
          v50.size.width = v31;
          Width = CGRectGetWidth(v50);
          result = sub_27472D918(v11);
          if (result)
          {
            v20 = result;
            if (result >= 1)
            {
              v21 = 0;
              v22 = Width + -11.0 + -72.0;
              do
              {
                if ((v11 & 0xC000000000000001) != 0)
                {
                  v23 = MEMORY[0x277C5F6D0](v21, v11);
                }

                else
                {
                  v23 = *(v11 + 8 * v21 + 32);
                }

                v24 = v23;
                ++v21;
                [v23 setFrame_];

                v22 = v22 - (v14 + 72.0);
              }

              while (v20 != v21);
              goto LABEL_24;
            }

            goto LABEL_27;
          }
        }

        else
        {
          result = sub_27472D918(v11);
          if (result)
          {
            v25 = result;
            if (result >= 1)
            {
              v26 = 0;
              v27 = 11.0;
              do
              {
                if ((v11 & 0xC000000000000001) != 0)
                {
                  v28 = MEMORY[0x277C5F6D0](v26, v11);
                }

                else
                {
                  v28 = *(v11 + 8 * v26 + 32);
                }

                v29 = v28;
                ++v26;
                [v28 setFrame_];

                v27 = v14 + 72.0 + v27;
              }

              while (v25 != v26);
              goto LABEL_24;
            }

LABEL_28:
            __break(1u);
            return result;
          }
        }

LABEL_24:
      }

      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }
  }

  return result;
}

void sub_274848044(uint64_t a1@<X8>)
{
  v3 = [v1 traitCollection];
  [v3 displayScale];

  v4 = *&v1[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_infoButton];
  [v4 intrinsicContentSize];
  v5 = *&v1[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_internalBadge];
  if (v5)
  {
    [v5 isHidden];
  }

  v6 = CGSizeMake([*&v1[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_label] sizeThatFits_]);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_opt_self();
  v14 = CGSizeMake([v13 userInterfaceLayoutDirectionForSemanticContentAttribute_]);
  v68 = v15;
  v69 = v14;
  v66 = v17;
  v67 = v16;
  if ([v13 userInterfaceLayoutDirectionForSemanticContentAttribute_] != 1)
  {
    v73.origin.x = v6;
    v73.origin.y = v8;
    v73.size.width = v10;
    v73.size.height = v12;
    CGRectGetWidth(v73);
    [v4 intrinsicContentSize];
  }

  v18 = v8;
  v64 = v6;
  v65 = v10;
  v74.origin.x = v6;
  v74.origin.y = v8;
  v74.size.width = v10;
  v74.size.height = v12;
  CGRectGetHeight(v74);
  [v4 intrinsicContentSize];
  v19 = [v1 traitCollection];
  [v19 displayScale];

  BSFloatRoundForScale();
  [v4 intrinsicContentSize];
  v20 = CGSizeMake([v4 intrinsicContentSize]);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v61 = v21;
  if ([v13 userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
  {
    v75.origin.x = v20;
    v75.origin.y = v22;
    v75.size.width = v24;
    v75.size.height = v26;
    MaxX = CGRectGetMaxX(v75);
    v28 = 9.0;
  }

  else
  {
    MaxX = v20 + -9.0;
    v28 = -67.0;
  }

  v29 = MaxX + v28;
  if ([v13 userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
  {
    v76.origin.y = v68;
    v76.origin.x = v69;
    v76.size.height = v66;
    v76.size.width = v67;
    CGRectGetMinX(v76);
  }

  else
  {
    v77.origin.y = v68;
    v77.origin.x = v69;
    v77.size.height = v66;
    v77.size.width = v67;
    CGRectGetMaxX(v77);
  }

  v78.origin.x = v64;
  v78.origin.y = v18;
  v78.size.width = v65;
  v78.size.height = v12;
  CGRectGetHeight(v78);
  v30 = [v1 traitCollection];
  [v30 displayScale];

  v31 = BSFloatRoundForScale();
  v32 = *&v1[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_topHitViews];
  v62 = v26;
  v63 = v24;
  v60 = v29;
  if (!v32)
  {
    goto LABEL_23;
  }

  v33 = sub_27472D918(v32);
  v34 = MEMORY[0x277D84F90];
  if (!v33)
  {
LABEL_22:
    v43 = COERCE_DOUBLE(sub_274848618(v34));
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      v46 = v20;
      v79.origin.y = v68;
      v79.origin.x = v69;
      v79.size.height = v66;
      v79.size.width = v67;
      CGRectGetMaxY(v79);
      v48 = CGSizeMake(v52);
      v47 = v53;
      v50 = v54;
      v49 = v55;
      v51 = v12 + v43 + 15.0;
      goto LABEL_25;
    }

LABEL_23:
    v46 = v20;
    v48 = *MEMORY[0x277CBF398];
    v47 = *(MEMORY[0x277CBF398] + 8);
    v50 = *(MEMORY[0x277CBF398] + 16);
    v49 = *(MEMORY[0x277CBF398] + 24);
    v51 = v12;
LABEL_25:
    v56 = CGSizeMake(v31);
    *a1 = v64;
    *(a1 + 8) = v18;
    *(a1 + 16) = v65;
    *(a1 + 24) = v51;
    *(a1 + 32) = v69;
    *(a1 + 40) = v68;
    *(a1 + 48) = v67;
    *(a1 + 56) = v66;
    *(a1 + 64) = v56;
    *(a1 + 72) = v57;
    *(a1 + 80) = v58;
    *(a1 + 88) = v59;
    *(a1 + 96) = v46;
    *(a1 + 104) = v61;
    *(a1 + 112) = v63;
    *(a1 + 120) = v62;
    *(a1 + 128) = v48;
    *(a1 + 136) = v47;
    *(a1 + 144) = v50;
    *(a1 + 152) = v49;
    *(a1 + 160) = v60;
    *(a1 + 168) = (v12 + -21.0) * 0.5;
    *(a1 + 176) = xmmword_274A197B0;
    return;
  }

  v35 = v33;
  v72 = MEMORY[0x277D84F90];
  v36 = v33 & ~(v33 >> 63);

  sub_27476D9E0(0, v36, 0);
  if ((v35 & 0x8000000000000000) == 0)
  {
    v37 = 0;
    v34 = v72;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x277C5F6D0](v37, v32);
      }

      else
      {
        v38 = *(v32 + 8 * v37 + 32);
      }

      v39 = v38;
      sub_27484AAAC(v38, v70);
      MaxY = CGRectGetMaxY(v71);

      v72 = v34;
      v42 = *(v34 + 16);
      v41 = *(v34 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_27476D9E0((v41 > 1), v42 + 1, 1);
        v34 = v72;
      }

      ++v37;
      *(v34 + 16) = v42 + 1;
      *(v34 + 8 * v42 + 32) = MaxY;
    }

    while (v35 != v37);

    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_274848618(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

double sub_27484865C()
{
  sub_274848044(&v2);
  CGRectGetHeight(v2);

  return CGSizeMake(v0);
}

void sub_274848710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = &selRef_labelColor;
  if (a3)
  {
    v7 = &selRef_secondaryLabelColor;
  }

  v8 = [v6 *v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A0F620;
  v11 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v12 = objc_opt_self();
  v13 = *MEMORY[0x277D76918];
  v14 = *MEMORY[0x277D74420];
  v15 = v8;
  v16 = v11;
  v17 = [v12 _preferredFontForTextStyle_weight_];
  if (v17)
  {
    v18 = v17;
    v19 = sub_27471CF08(0, &qword_280968B90);
    *(inited + 40) = v18;
    v20 = *MEMORY[0x277D740C0];
    *(inited + 64) = v19;
    *(inited + 72) = v20;
    v41 = sub_27471CF08(0, &unk_28096B110);
    *(inited + 104) = v41;
    v38 = v15;
    *(inited + 80) = v15;
    _s3__C3KeyVMa_0(0);
    sub_27484DCA4(&qword_28159E480, _s3__C3KeyVMa_0);
    v21 = v20;
    v22 = sub_2749FCCB4();
    objc_allocWithZone(MEMORY[0x277CCAB48]);

    v23 = sub_27484D90C(a1, a2, v22);
    if (a3)
    {
      v24 = v9;
      v25 = *(a3 + 16);
      if (v25)
      {
        v40 = objc_opt_self();
        v26 = a3 + 40;
        do
        {
          v27 = v24;
          v28 = v23;
          v29 = swift_initStackObject();
          *(v29 + 16) = xmmword_274A0EF10;
          *(v29 + 32) = v21;
          v30 = v21;
          v31 = [v40 labelColor];
          *(v29 + 64) = v41;
          *(v29 + 40) = v31;
          v32 = sub_2749FCCB4();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B120);
          sub_27472AB6C(&unk_28096B128, &qword_28096B120);
          sub_27475D0D0();
          v33 = sub_2749FD694();
          v34 = v32;
          v23 = v28;
          v24 = v27;
          sub_27484D9E4(v34, v33, v35, v23);
          v26 += 16;
          --v25;
        }

        while (v25);
      }
    }

    v36 = *(v39 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_label);
    v37 = v23;
    [v36 setAttributedText_];
  }

  else
  {
    __break(1u);
  }
}

void sub_274848ACC()
{
  v1 = v0;
  v2 = sub_2749F9374();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_topHits;

  sub_274785A98();
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_topHitsScrollView;
    v15 = *(v1 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_topHitsScrollView);
    if (v15)
    {
      [v15 removeFromSuperview];
      v16 = *(v1 + v14);
      *(v1 + v14) = 0;

      *(v1 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_topHitViews) = 0;
    }

    if (*(*(v1 + v11) + 16))
    {
      v46 = v8;
      v17 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
      [v17 setShowsHorizontalScrollIndicator_];
      v18 = v17;
      [*(v1 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_actionView) addSubview_];
      v19 = *(v1 + v11);
      v20 = *(v19 + 16);
      v21 = MEMORY[0x277D84F90];
      if (v20)
      {
        v37 = v14;
        v49 = MEMORY[0x277D84F90];

        sub_2749FDA14();
        v23 = *(v3 + 16);
        v22 = v3 + 16;
        v24 = *(v22 + 64);
        v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
        v36 = v19;
        v25 = (v19 + ((v24 + 32) & ~v24));
        v26 = *(v22 + 56);
        v44 = v24;
        v45 = v4;
        v41 = (v24 + 24) & ~v24;
        v42 = v26;
        v47 = v18;
        v48 = v1;
        v40 = (v22 + 16);
        v38 = v23;
        v39 = (v22 - 8);
        do
        {
          v27 = v38;
          v38(v10, v25, v2);
          v28 = v46;
          v27(v46, v10, v2);
          v29 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v30 = v43;
          v27(v43, v10, v2);
          v31 = v41;
          v32 = swift_allocObject();
          *(v32 + 16) = v29;
          (*v40)(v32 + v31, v30, v2);
          v33 = objc_allocWithZone(type metadata accessor for WFDrawerActionCellTopHitView(0));
          v34 = sub_274849F28(v28, sub_27484DC44, v32);
          [v47 addSubview_];
          (*v39)(v10, v2);
          sub_2749FD9E4();
          sub_2749FDA24();
          sub_2749FDA34();
          sub_2749FD9F4();
          v25 += v42;
          --v20;
        }

        while (v20);

        v1 = v48;
        v21 = v49;
        v14 = v37;
        v18 = v47;
      }

      *(v1 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_topHitViews) = v21;

      v35 = *(v1 + v14);
      *(v1 + v14) = v18;
    }
  }
}

uint64_t sub_274848E94(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096A270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B088);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_2749F9444();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
    return sub_27472ECBC(v8, &qword_28096B088);
  }

  v14 = Strong;
  v15 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_action;
  swift_beginAccess();
  sub_27484DBD4(v14 + v15, v8);

  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    return sub_27472ECBC(v8, &qword_28096B088);
  }

  (*(v10 + 32))(v12, v8, v9);
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = swift_unknownObjectWeakLoadStrong();

    if (v18)
    {
      v19 = swift_unknownObjectWeakLoadStrong();

      if (v19)
      {
        v20 = sub_2749F9374();
        (*(*(v20 - 8) + 16))(v5, a2, v20);
        __swift_storeEnumTagSinglePayload(v5, 0, 1, v20);
        sub_274818AC8();
        swift_unknownObjectRelease();
        sub_27472ECBC(v5, &unk_28096A270);
      }
    }
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2748491A0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_topHits) = a1;
  sub_274848ACC();
}

uint64_t sub_2748491E8()
{
  v1 = sub_2749F9444();
  v30 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B088);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A290);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_2749F93E4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_action;
  swift_beginAccess();
  sub_27484DBD4(v0 + v17, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v1))
  {
    sub_27472ECBC(v6, &qword_28096B088);
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
LABEL_4:
    sub_27472ECBC(v9, &qword_28096A290);
    return MEMORY[0x277D84F90];
  }

  v28 = v0;
  v29 = v16;
  v18 = v30;
  (*(v30 + 16))(v3, v6, v1);
  sub_27472ECBC(v6, &qword_28096B088);
  sub_2749F93F4();
  (*(v18 + 8))(v3, v1);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    goto LABEL_4;
  }

  v21 = v11;
  v22 = *(v11 + 32);
  v23 = v29;
  v22(v29, v9, v10);
  (*(v21 + 16))(v14, v23, v10);
  if ((*(v21 + 88))(v14, v10) == *MEMORY[0x277D7BE50])
  {
    (*(v21 + 96))(v14, v10);
    v24 = *v14;
    v25 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
    [*(v28 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_actionView) bounds];
    [v25 setPreferredPresentationSize_];
    [v25 registerObject:v24 visibility:3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_274A11F70;
    *(v19 + 32) = [objc_allocWithZone(MEMORY[0x277D75470]) initWithItemProvider_];

    (*(v21 + 8))(v23, v10);
    return v19;
  }

  result = sub_2749FDCB4();
  __break(1u);
  return result;
}

void sub_274849714()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_274814B60();

      swift_unknownObjectRelease();
    }
  }
}

id sub_27484983C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerActionCell_actionView);
  v2 = objc_allocWithZone(MEMORY[0x277D75B88]);

  return [v2 initWithView_];
}

void sub_274849A3C()
{
  sub_274849B04();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_274849B04()
{
  if (!qword_28159E828)
  {
    sub_2749F9444();
    v0 = sub_2749FD6C4();
    if (!v1)
    {
      atomic_store(v0, &qword_28159E828);
    }
  }
}

id sub_274849B5C()
{
  result = sub_274849B7C();
  qword_28096AE10 = result;
  return result;
}

id sub_274849B7C()
{
  sub_27471CF08(0, &qword_28096B0C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B0D0);
  inited = swift_initStackObject();
  v1 = MEMORY[0x277D74378];
  *(inited + 16) = xmmword_274A0F620;
  v2 = *v1;
  *(inited + 32) = *v1;
  v3 = *MEMORY[0x277D76938];
  type metadata accessor for TextStyle(0);
  *(inited + 40) = v3;
  v4 = *MEMORY[0x277D74380];
  *(inited + 64) = v5;
  *(inited + 72) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B0D8);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_274A0F620;
  v7 = *MEMORY[0x277D74430];
  type metadata accessor for TraitKey(0);
  sub_27484DCA4(&unk_28096B0E0, type metadata accessor for TraitKey);
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v7;
  sub_2749FD8D4();
  v12 = *MEMORY[0x277D74418];
  type metadata accessor for Weight(0);
  *(v6 + 96) = v13;
  *(v6 + 72) = v12;
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  sub_2749FD8D4();
  *(v6 + 168) = MEMORY[0x277D83B88];
  *(v6 + 144) = 3;
  v14 = sub_2749FCCB4();
  *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096E870);
  *(inited + 80) = v14;
  type metadata accessor for AttributeName(0);
  sub_27484DCA4(&unk_28096B0F0, type metadata accessor for AttributeName);
  sub_2749FCCB4();
  v15 = sub_274849E68();
  v16 = [objc_opt_self() fontWithDescriptor:v15 size:0.0];
  v17 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v18 = [v17 scaledFontForFont_];

  return v18;
}

id sub_274849E68()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for AttributeName(0);
  sub_27484DCA4(&unk_28096B0F0, type metadata accessor for AttributeName);
  v1 = sub_2749FCC94();

  v2 = [v0 initWithFontAttributes_];

  return v2;
}

char *sub_274849F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v67 = sub_2749FA2F4();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2749FA2C4();
  v9 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B090);
  MEMORY[0x28223BE20](v68);
  v13 = &v63 - v12;
  v74 = sub_2749FA034();
  v71 = *(v74 - 8);
  v14 = MEMORY[0x28223BE20](v74);
  v16 = (&v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v73 = &v63 - v17;
  v18 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080828WFDrawerActionCellTopHitView_thumbnailBorderView;
  *&v3[v18] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v19 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080828WFDrawerActionCellTopHitView_label;
  *&v3[v19] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v20 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080828WFDrawerActionCellTopHitView_topHit;
  v21 = sub_2749F9374();
  v69 = *(v21 - 8);
  v70 = v21;
  (*(v69 + 16))(&v4[v20], a1);
  v22 = &v4[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080828WFDrawerActionCellTopHitView_selectionHandler];
  *v22 = a2;
  *(v22 + 1) = a3;
  v72 = a3;

  v23 = a1;
  v24 = sub_2749F9354();
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();

  if (v25 || (v26 = sub_2749F9354(), objc_opt_self(), v27 = swift_dynamicCastObjCClass(), v26, v27))
  {
    *v16 = 0x3FC0A3D70A3D70A4;
    v28 = MEMORY[0x277D7D5B0];
  }

  else
  {
    v28 = MEMORY[0x277D7D5C0];
  }

  v29 = v71;
  v30 = v74;
  (*(v71 + 104))(v16, *v28, v74);
  v31 = v73;
  (*(v29 + 32))(v73, v16, v30);
  v32 = sub_27484A6E8();
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969B50) + 48);
  *v11 = 0x404C000000000000;
  (*(v29 + 16))(&v11[v33], v31, v30);
  (*(v9 + 104))(v11, *MEMORY[0x277D7D698], v64);
  v34 = v23;
  (*(v65 + 104))(v66, *MEMORY[0x277D7D6D0], v67);
  v35 = v32;
  sub_2749FA314();
  KeyPath = swift_getKeyPath();
  v37 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B0A0) + 36)];
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A760) + 28);
  *(v37 + v38) = 1;
  v39 = *MEMORY[0x277D7D6B0];
  v40 = sub_2749FA2D4();
  (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
  *v37 = KeyPath;
  v41 = swift_getKeyPath();
  v42 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B0B0) + 36)];
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B0B8) + 28);
  v44 = *MEMORY[0x277D7D6F0];
  v45 = sub_2749FB224();
  (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
  *v42 = v41;
  v46 = swift_getKeyPath();
  sub_2749FBD44();
  v47 = &v13[*(v68 + 36)];
  *v47 = v46;
  *(v47 + 1) = v48;
  v47[16] = 0;
  v49 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B0C0));
  *&v4[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080828WFDrawerActionCellTopHitView_iconView] = sub_2749FADF4();
  v50 = type metadata accessor for WFDrawerActionCellTopHitView(0);
  v76.receiver = v4;
  v76.super_class = v50;
  v51 = objc_msgSendSuper2(&v76, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v52 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080828WFDrawerActionCellTopHitView_label;
  v53 = *&v51[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080828WFDrawerActionCellTopHitView_label];
  v54 = v51;
  v55 = v53;
  v56 = sub_2749F9364();
  sub_27484DB24(v56, v57, v55, &selRef_setText_);

  [*&v51[v52] setTextAlignment_];
  v58 = qword_280966C00;
  v59 = *&v51[v52];
  if (v58 != -1)
  {
    swift_once();
  }

  [v59 setFont_];

  [*&v51[v52] setNumberOfLines_];
  [*&v51[v52] setPreferredMaxLayoutWidth_];
  [v54 addSubview_];
  [v54 addSubview_];
  v75[3] = v50;
  v75[0] = v54;
  v60 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v61 = sub_2748859DC(v75, sel_didSelect_);
  [v54 addGestureRecognizer_];

  (*(v69 + 8))(v34, v70);
  (*(v29 + 8))(v73, v74);
  return v54;
}

uint64_t sub_27484A6E8()
{
  v0 = sub_2749F9354();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 symbolName];
    v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v5 = v4;

    v6 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
    v7 = objc_allocWithZone(MEMORY[0x277D75348]);
    v8 = sub_2747CA0C4(sub_27484A83C, 0);
    v9 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithPlatformColor_];

    v10 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];
    v11 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v12 = sub_274881D2C(v3, v5, v6, v10);

    return v12;
  }

  else
  {

    return sub_2749F9354();
  }
}

id sub_27484A83C(void *a1)
{
  v2 = [objc_opt_self() systemBlueColor];
  v3 = [v2 colorWithAlphaComponent_];

  return v3;
}

uint64_t sub_27484A8C8(uint64_t a1)
{
  v2 = sub_2749FB224();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2749FB244();
}

id sub_27484A9C0()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for WFDrawerActionCellTopHitView(0);
  v1 = objc_msgSendSuper2(&v8, sel_layoutSubviews);
  sub_27484AAAC(v1, v7);
  v2 = v7[4];
  v3 = v7[5];
  v4 = v7[6];
  v5 = v7[7];
  [*&v0[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080828WFDrawerActionCellTopHitView_iconView] setFrame_];
  return [*&v0[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080828WFDrawerActionCellTopHitView_label] setFrame_];
}

void sub_27484AAAC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = CGSizeMake(a1);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = [*(v2 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080828WFDrawerActionCellTopHitView_label) sizeThatFits_];
  v13 = CGSizeMake(v12);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
}

void sub_27484AB68()
{
  v1 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080828WFDrawerActionCellTopHitView_thumbnailBorderView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v2 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080828WFDrawerActionCellTopHitView_label;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_2749FDAE4();
  __break(1u);
}

id sub_27484AD40(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_27484AE58()
{
  result = sub_2749F9374();
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

char *sub_27484AF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080815WFDrawerAppCell_app];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080815WFDrawerAppCell_label;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v7 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080815WFDrawerAppCell_iconView;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x277D7D520]) initWithIcon:0 size:{48.0, 48.0}];
  if (a3)
  {
    v8 = sub_2749FCD64();
  }

  else
  {
    v8 = 0;
  }

  v26.receiver = v3;
  v26.super_class = type metadata accessor for WFDrawerAppCell();
  v9 = objc_msgSendSuper2(&v26, sel_initWithStyle_reuseIdentifier_, 0, v8);

  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 clearColor];
  [v11 setBackgroundColor_];

  v13 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080815WFDrawerAppCell_label;
  [*&v11[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080815WFDrawerAppCell_label] setTextAlignment_];
  v14 = *&v11[v13];
  v15 = objc_opt_self();
  v16 = *MEMORY[0x277D76918];
  v17 = *MEMORY[0x277D74420];
  v18 = v14;
  v19 = [v15 _preferredFontForTextStyle_weight_];
  [v18 setFont_];

  v20 = *&v11[v13];
  v21 = [v10 labelColor];
  [v20 setTextColor_];

  v22 = [v11 contentView];
  [v22 addSubview_];

  v23 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080815WFDrawerAppCell_iconView;
  [*&v11[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080815WFDrawerAppCell_iconView] setUserInteractionEnabled_];
  v24 = [v11 contentView];

  [v24 addSubview_];
  return v11;
}

void sub_27484B1E4()
{
  v1 = (v0 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080815WFDrawerAppCell_app);
  *v1 = 0u;
  v1[1] = 0u;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080815WFDrawerAppCell_label;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080815WFDrawerAppCell_iconView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D7D520]) initWithIcon:0 size:{48.0, 48.0}];
  sub_2749FDAE4();
  __break(1u);
}

id sub_27484B2EC()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for WFDrawerAppCell();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v1 = objc_opt_self();
  if ([v1 userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
  {
    [v0 bounds];
    CGRectGetWidth(v14);
  }

  v2 = *&v0[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080815WFDrawerAppCell_iconView];
  [v0 bounds];
  CGRectGetHeight(v15);
  v3 = [v0 traitCollection];
  [v3 displayScale];

  v4 = BSFloatRoundForScale();
  [v2 setFrame_];
  v5 = *&v0[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080815WFDrawerAppCell_label];
  [v5 intrinsicContentSize];
  [v0 bounds];
  CGRectGetWidth(v16);
  [v2 frame];
  v6 = [v1 userInterfaceLayoutDirectionForSemanticContentAttribute_];
  [v2 frame];
  if (v6 == 1)
  {
    CGRectGetMinX(*&v7);
  }

  else
  {
    CGRectGetMaxX(*&v7);
  }

  [v0 bounds];
  CGRectGetHeight(v17);
  return [v5 setFrame_];
}

char *sub_27484B668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_label;
  *&v3[v5] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_valueSwitch;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
  v7 = &v3[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_onChange];
  *v7 = 0;
  *(v7 + 1) = 0;
  if (a3)
  {
    v8 = sub_2749FCD64();
  }

  else
  {
    v8 = 0;
  }

  v24.receiver = v3;
  v24.super_class = type metadata accessor for WFDrawerSwitchCell();
  v9 = objc_msgSendSuper2(&v24, sel_initWithStyle_reuseIdentifier_, 0, v8);

  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 clearColor];
  [v11 setBackgroundColor_];

  v13 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_valueSwitch;
  [*&v11[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_valueSwitch] addTarget:v11 action:sel_switchValueChanged forControlEvents:4096];
  v14 = [v11 contentView];
  [v14 addSubview_];

  v15 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_label;
  v16 = *&v11[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_label];
  v17 = objc_opt_self();
  v18 = *MEMORY[0x277D76918];
  v19 = *MEMORY[0x277D74410];
  v20 = v16;
  v21 = [v17 _preferredFontForTextStyle_weight_];
  [v20 setFont_];

  v22 = [v11 contentView];
  [v22 addSubview_];

  [v11 setSelectionStyle_];
  return v11;
}

uint64_t sub_27484B8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a4)
  {
    a4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return a5(a3, a4, v8);
}

void sub_27484B938()
{
  v1 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_label;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_valueSwitch;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
  v3 = (v0 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_onChange);
  *v3 = 0;
  v3[1] = 0;
  sub_2749FDAE4();
  __break(1u);
}

id sub_27484BA18()
{
  v34.receiver = v0;
  v34.super_class = type metadata accessor for WFDrawerSwitchCell();
  objc_msgSendSuper2(&v34, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_valueSwitch];
  v2 = objc_opt_self();
  v3 = 26.0;
  if ([v2 userInterfaceLayoutDirectionForSemanticContentAttribute_] != 1)
  {
    v4 = [v0 contentView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v35.origin.x = v6;
    v35.origin.y = v8;
    v35.size.width = v10;
    v35.size.height = v12;
    v13 = CGRectGetWidth(v35) + -26.0;
    [v1 intrinsicContentSize];
    v3 = v13 - v14;
  }

  v15 = [v0 contentView];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v36.origin.x = v17;
  v36.origin.y = v19;
  v36.size.width = v21;
  v36.size.height = v23;
  CGRectGetHeight(v36);
  [v1 intrinsicContentSize];
  v24 = [v0 traitCollection];
  [v24 displayScale];

  BSFloatRoundForScale();
  v26 = v25;
  [v1 intrinsicContentSize];
  v28 = v27;
  [v1 intrinsicContentSize];
  [v1 setFrame_];
  v30 = *&v0[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_label];
  [v30 intrinsicContentSize];
  [v0 bounds];
  CGRectGetWidth(v37);
  [v1 frame];
  if ([v2 userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
  {
    [v0 bounds];
    v31 = CGRectGetWidth(v38) + -26.0;
  }

  [v0 bounds];
  CGRectGetHeight(v39);
  return [v30 setFrame_];
}

void sub_27484BD14()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_onChange);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_valueSwitch);

    v1([v2 isOn]);

    sub_27471F8A4(v1);
  }
}

uint64_t sub_27484BDF0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for WFDrawerSwitchCell();
  objc_msgSendSuper2(&v4, sel_prepareForReuse);
  v1 = &v0[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_onChange];
  v2 = *&v0[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerSwitchCell_onChange];
  *v1 = 0;
  *(v1 + 1) = 0;
  return sub_27471F8A4(v2);
}

char *sub_27484BF24(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerHeaderView_label;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (a2)
  {
    v5 = sub_2749FCD64();
  }

  else
  {
    v5 = 0;
  }

  v22.receiver = v2;
  v22.super_class = type metadata accessor for WFDrawerHeaderView();
  v6 = objc_msgSendSuper2(&v22, sel_initWithReuseIdentifier_, v5);

  v7 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerHeaderView_label;
  v8 = *&v6[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerHeaderView_label];
  v9 = objc_opt_self();
  v10 = *MEMORY[0x277D76A20];
  v11 = *MEMORY[0x277D74420];
  v12 = v6;
  v13 = v8;
  v14 = [v9 _preferredFontForTextStyle_weight_];
  [v13 setFont_];

  v15 = *&v6[v7];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 labelColor];
  [v17 setTextColor_];

  v19 = [v12 contentView];
  [v19 addSubview_];

  v20 = [v16 clearColor];
  [v12 setBackgroundColor_];

  return v12;
}

id sub_27484C15C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for WFDrawerHeaderView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerHeaderView_label];
  [v0 bounds];
  v7 = CGRectInset(v6, 0.0, 52.0);
  [v1 sizeThatFits_];
  if ([objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
  {
    [v0 bounds];
    v2 = CGRectGetWidth(v8) + -26.0;
  }

  [v0 bounds];
  CGRectGetHeight(v9);
  return [v1 setFrame_];
}

void sub_27484C2C8()
{
  v1 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080818WFDrawerHeaderView_label;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  sub_2749FDAE4();
  __break(1u);
}

char *sub_27484C3C0(void *a1)
{
  v3 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080824WFDrawerCategoryPillView_button;
  *&v1[v3] = [objc_opt_self() buttonWithType_];
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v73.receiver = v1;
  v73.super_class = type metadata accessor for WFDrawerCategoryPillView();
  v8 = objc_msgSendSuper2(&v73, sel_initWithFrame_, v4, v5, v6, v7);
  v9 = [v8 layer];
  [v9 setCornerRadius_];

  v10 = [v8 layer];
  LODWORD(v11) = 1025758986;
  [v10 setShadowOpacity_];

  v12 = [v8 layer];
  [v12 setShadowRadius_];

  v13 = [v8 layer];
  [v13 setShadowPathIsBounds_];

  v14 = [v8 layer];
  [v14 setShadowOffset_];

  v15 = objc_opt_self();
  v16 = [v15 preferredFontForTextStyle_];
  [v16 pointSize];
  v18 = v17;

  v19 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080824WFDrawerCategoryPillView_button;
  v20 = *&v8[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080824WFDrawerCategoryPillView_button];
  sub_27471CF08(0, &qword_280968030);
  v21 = v20;
  v22 = sub_2749FD444();
  v24 = sub_27486C8CC(v22, v23);
  if (v24)
  {
    v25 = v24;
    v26 = 27.0;
    if (v18 <= 27.0)
    {
      v26 = v18;
    }

    v27 = [v15 systemFontOfSize:v26 weight:*MEMORY[0x277D74410]];
    v28 = [objc_opt_self() configurationWithFont_];

    v29 = [v25 imageWithConfiguration_];
  }

  else
  {
    v29 = 0;
  }

  [v21 setImage:v29 forState:0];

  [*&v8[v19] setAdjustsImageWhenHighlighted_];
  v30 = *&v8[v19];
  v31 = WFLocalizedDisplayNameForContentCategory();
  v32 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v34 = v33;

  sub_274958C38(v32, v34, 0, v30);
  v35 = *&v8[v19];
  v36 = [v8 tintColor];
  [v35 setTitleColor:v36 forState:0];

  v37 = [*&v8[v19] titleLabel];
  if (v37)
  {
    v38 = v37;
    v39 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    v40 = [v15 systemFontOfSize_];
    v41 = [v39 scaledFontForFont:v40 maximumPointSize:29.0];

    [v38 setFont_];
  }

  v42 = *&v8[v19];
  sub_2749F9BB4();
  v43 = v42;
  v44 = sub_2749F9B54();
  [v43 setBackgroundColor_];

  v45 = [*&v8[v19] layer];
  [v45 setCornerRadius_];

  v46 = *&v8[v19];
  v47 = [v8 traitCollection];
  [v47 displayScale];
  v49 = v48;

  [v46 setTitleEdgeInsets_];
  [*&v8[v19] setContentEdgeInsets_];
  if (sub_2749FD444() == 0xD000000000000013 && 0x8000000274A2A6E0 == v50)
  {

    goto LABEL_15;
  }

  v52 = sub_2749FDCC4();

  if (v52)
  {
LABEL_15:
    [*&v8[v19] setImageEdgeInsets_];
  }

  v53 = [v8 effectiveUserInterfaceLayoutDirection];

  if (v53 == 1)
  {
    v54 = *&v8[v19];
    [v54 titleEdgeInsets];
    v56 = v55;
    [*&v8[v19] titleEdgeInsets];
    [v54 setTitleEdgeInsets_];

    v58 = *&v8[v19];
    [v58 contentEdgeInsets];
    v60 = v59;
    [*&v8[v19] contentEdgeInsets];
    [v58 setContentEdgeInsets_];
  }

  v62 = *&v8[v19];
  sub_27471CF08(0, &qword_28096D750);
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = v8;
  v65 = v62;
  v72 = v63;
  v66 = sub_2749FD644();
  [v65 addAction:v66 forControlEvents:{17, 0, 0, 0, sub_27484E150, v72}];

  v67 = *&v8[v19];
  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = v67;

  v70 = sub_2749FD644();
  [v69 addAction:v70 forControlEvents:{352, 0, 0, 0, sub_27484E1A4, v68}];

  [v64 addSubview_];
  return v64;
}

uint64_t sub_27484CB94(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_2749FD314();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_27484E210;
  *(v9 + 24) = a1;
  v15[4] = sub_2747B6980;
  v15[5] = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_274963064;
  v15[3] = &block_descriptor_210;
  v10 = _Block_copy(v15);

  LODWORD(v11) = v4;
  LODWORD(v12) = v6;
  LODWORD(v13) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v10);

  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_27484CD2C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CGAffineTransformMakeScale(&v6, 0.92, 0.92);
    v4 = *&v6.c;
    v5 = *&v6.a;
    v3 = *&v6.tx;
    v2 = v1;
    *&v6.a = v5;
    *&v6.c = v4;
    *&v6.tx = v3;
    [v2 setTransform_];
    [v2 setAlpha_];
  }
}

void sub_27484CDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_opt_self();
  v18 = a3;
  v19 = a2;
  OUTLINED_FUNCTION_17_12();
  v15 = 1107296256;
  v16 = sub_274760264;
  v17 = a4;
  v12 = _Block_copy(&v14);

  v18 = a5;
  v19 = 0;
  OUTLINED_FUNCTION_17_12();
  v15 = 1107296256;
  v16 = sub_27480D7B8;
  v17 = a6;
  v13 = _Block_copy(&v14);
  [v11 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v13);
  _Block_release(v12);
}

uint64_t sub_27484CF08(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_2749FD314();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_27484E200;
  *(v9 + 24) = a1;
  v15[4] = sub_2747B6980;
  v15[5] = v9;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_274963064;
  v15[3] = &block_descriptor_197;
  v10 = _Block_copy(v15);

  LODWORD(v11) = v4;
  LODWORD(v12) = v6;
  LODWORD(v13) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v10);

  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_27484D0A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(MEMORY[0x277CBF2C0] + 16);
    v3[0] = *MEMORY[0x277CBF2C0];
    v3[1] = v2;
    v3[2] = *(MEMORY[0x277CBF2C0] + 32);
    [v1 setTransform_];
    [v1 setAlpha_];
  }
}

id sub_27484D190()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for WFDrawerCategoryPillView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080824WFDrawerCategoryPillView_button];
  [v0 bounds];
  return [v1 setFrame_];
}

void sub_27484D244()
{
  v1 = OBJC_IVAR____TtC10WorkflowUIP33_E1EBF4FF771D0942E2717CF38009080824WFDrawerCategoryPillView_button;
  *(v0 + v1) = [objc_opt_self() buttonWithType_];
  sub_2749FDAE4();
  __break(1u);
}

id sub_27484D3C8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v12.receiver = v5;
  v12.super_class = type metadata accessor for WFTouchCancellingTableView();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_style_, a1, a2, a3, a4, a5);
}

id sub_27484D50C(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for WFTouchCancellingScrollView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_27484D598(void *a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2(0);
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_27484D6A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_27484D6E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_10WorkflowUI22WFDrawerViewControllerC16SearchTokenStateO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI22WFDrawerViewControllerC4ModeO(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27484D76C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_27484D7BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

double sub_27484D81C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 48) = (a2 - 1);
  }

  return result;
}

unint64_t sub_27484D860()
{
  result = qword_28096B078;
  if (!qword_28096B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B078);
  }

  return result;
}

unint64_t sub_27484D8B8()
{
  result = qword_28096B080;
  if (!qword_28096B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B080);
  }

  return result;
}

id sub_27484D90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2749FCD64();

  if (a3)
  {
    _s3__C3KeyVMa_0(0);
    sub_27484DCA4(&qword_28159E480, _s3__C3KeyVMa_0);
    v6 = sub_2749FCC94();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

void sub_27484D9E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  _s3__C3KeyVMa_0(0);
  sub_27484DCA4(&qword_28159E480, _s3__C3KeyVMa_0);
  v7 = sub_2749FCC94();

  [a4 setAttributes:v7 range:{a2, a3}];
}

uint64_t sub_27484DAC0(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

void sub_27484DB24(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_2749FCD64();

  [a3 *a4];
}

uint64_t sub_27484DB90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_27484DBD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B088);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27484DC44()
{
  v1 = sub_2749F9374();
  OUTLINED_FUNCTION_34(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_274848E94(v3, v4);
}

uint64_t sub_27484DCA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27484DD24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFDrawerViewController.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27484DD88(uint64_t a1)
{
  v2 = type metadata accessor for WFDrawerViewController.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27484DDE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WFDrawerViewController.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_27484DE48()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_headerSeparator) setAlpha_];
}

uint64_t sub_27484DE80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B088);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_27484DF28(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else if (!a5)
  {

    return result;
  }

  return result;
}

void sub_27484DF88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else if (!a5)
  {
  }
}

uint64_t objectdestroy_121Tm()
{

  if (*(v0 + 80))
  {
    sub_27484DF88(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  v1 = OUTLINED_FUNCTION_32_1();

  return MEMORY[0x2821FE8E8](v1, v2, 7);
}

void *sub_27484E230(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    sub_27484DF88(result, a2, a3, a4, a5);
  }

  return result;
}

void sub_27484E2A0()
{
  sub_27484E308();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_27484E308()
{
  if (!qword_28096B1B8)
  {
    sub_2749F9444();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096B1C0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_28096B1B8);
    }
  }
}

uint64_t sub_27484E390(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_27484E3D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_27484E418(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_27484E448()
{
  result = qword_28096B1D0;
  if (!qword_28096B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B1D0);
  }

  return result;
}

void OUTLINED_FUNCTION_18_14(uint64_t a1@<X8>)
{
  v2[29] = v3 + a1;
  v2[28] = v1 + 16;
  v4 = v2[36];
  v2[38] = v4 + 8;
  v2[39] = v4 + 16;
}

id OUTLINED_FUNCTION_33_8()
{

  return [v0 (v2 + 3192)];
}

uint64_t sub_27484E58C()
{
  v0 = objc_opt_self();
  result = sub_27484F55C(v0, &selRef_bagSubProfile);
  if (v2)
  {
    result = sub_27484F55C(v0, &selRef_bagSubProfileVersion);
    if (v3)
    {
      sub_27471CF08(0, &qword_28159E450);
      result = sub_27484E638();
      qword_28159EBA0 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_27484E638()
{
  v0 = sub_2749FCD64();

  v1 = sub_2749FCD64();

  v2 = [swift_getObjCClassFromMetadata() bagForProfile:v0 profileVersion:v1];

  return v2;
}

void sub_27484E6CC()
{
  if (qword_28159EB98 != -1)
  {
    swift_once();
  }

  v0 = [objc_allocWithZone(MEMORY[0x277CEE690]) initWithBag_];
  [v0 applicationDidForeground];
}

uint64_t static AppStorePromptController.shouldPresentPrompt(numberOfShortcuts:numberOfAutomations:numberOfShortcutRuns:hasShortcutOnHomeScreen:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a4 & (a1 > 5);
  if (a2 <= 0)
  {
    v4 = 0;
  }

  if (a3 > 10)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t static AppStorePromptController.presentReviewPromptIfNeeded(in:database:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = OUTLINED_FUNCTION_2_3();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_27484E7C4()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = qword_28159EB98;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 72);
    v4 = [objc_allocWithZone(MEMORY[0x277CEE690]) initWithBag_];
    v5 = [v4 shouldAttemptReview];
    v6 = swift_allocObject();
    *(v6 + 16) = v13;
    *(v6 + 32) = v3;
    *(v6 + 40) = v4;
    *(v0 + 48) = sub_27484EAA4;
    *(v0 + 56) = v6;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_27479F0F0;
    *(v0 + 40) = &block_descriptor_6_2;
    v7 = _Block_copy((v0 + 16));
    v8 = v3;
    v9 = v13;
    v10 = v4;

    [v5 addFinishBlock_];
    _Block_release(v7);
  }

  OUTLINED_FUNCTION_48_0();

  return v11();
}

id sub_27484E984(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  result = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  if (a1)
  {
    result = [a1 BOOLValue];
    if (result)
    {
      v15 = sub_2749FD0E4();
      __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = a3;
      v16[5] = a4;
      v16[6] = a5;
      v16[7] = a6;
      v17 = a3;
      v18 = a5;
      v19 = a6;
      sub_27479930C();
    }
  }

  return result;
}

uint64_t sub_27484EAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_27484EAD4, 0, 0);
}

uint64_t sub_27484EAD4()
{
  v1 = v0[2];
  v0[6] = [v1 countOfAllVisibleWorkflows];
  v2 = [v1 allConfiguredTriggers];
  v0[7] = [v2 count];

  v3 = [v1 sortedRunEventsWithSource_];
  v0[8] = [v3 count];

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_27484EBE4;

  return sub_27484EE98();
}

uint64_t sub_27484EBE4()
{
  OUTLINED_FUNCTION_79();
  *(*v0 + 96) = v1;

  v2 = OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_27484ECD8()
{
  OUTLINED_FUNCTION_79();
  if (*(v0 + 96) != 1 || *(v0 + 48) < 6 || *(v0 + 56) < 1 || *(v0 + 64) < 11)
  {
    OUTLINED_FUNCTION_48_0();

    return v4();
  }

  else
  {
    *(v0 + 80) = objc_opt_self();
    sub_2749FD0A4();
    *(v0 + 88) = sub_2749FD094();
    v7 = sub_2749FD044();

    return MEMORY[0x2822009F8](sub_27484EDC4, v7, v6);
  }
}

uint64_t sub_27484EDC4()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);

  [v1 requestReviewInScene_];
  v3 = OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_27484EE38()
{
  OUTLINED_FUNCTION_79();
  [*(v0 + 40) didAttemptPromptReview];
  OUTLINED_FUNCTION_48_0();

  return v1();
}

uint64_t sub_27484EE98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27484EF70;

  return MEMORY[0x2822007B8](v0 + 24);
}

uint64_t sub_27484EF70()
{
  OUTLINED_FUNCTION_79();

  v0 = OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void sub_27484F078(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968770);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() sharedInstance];
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_27484F4E0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27484F2A4;
  aBlock[3] = &block_descriptor_19;
  v9 = _Block_copy(aBlock);

  [v6 getHomeScreenShortcutIDsWithCompletionHandler_];
  _Block_release(v9);
}

uint64_t sub_27484F2A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_2749FD154();

  v1(v2);
}

id AppStorePromptController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppStorePromptController.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AppStorePromptController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27484F40C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2747C70B4;

  return sub_27484EAB0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_27484F4E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968770);

  return sub_27484F24C();
}

uint64_t sub_27484F55C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v4;
}

void sub_27484F5CC()
{
  OUTLINED_FUNCTION_48();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v2;
    v6 = v1;
    v7 = v0;
    v8 = 0;
    v10 = v2 == 3 && (v1 | v0) == 0;
    v11 = (v3 + 48);
    while (2)
    {
      v13 = *(v11 - 2);
      v12 = *(v11 - 1);
      v14 = *v11;
      v11 += 24;
      switch(v14)
      {
        case 1:
          if (v5 != 1)
          {
            goto LABEL_24;
          }

          if (v13 != v7 || v12 != v6)
          {
            OUTLINED_FUNCTION_11();
            if ((sub_2749FDCC4() & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          break;
        case 2:
          if (v5 != 2)
          {
            goto LABEL_24;
          }

          sub_27471CF08(0, &qword_28159E390);
          v20 = v13;
          v16 = sub_2749FD604();
          v17 = OUTLINED_FUNCTION_11();
          v19 = 2;
          goto LABEL_14;
        case 3:
          if (v10)
          {
            break;
          }

          goto LABEL_24;
        default:
          if (!v5)
          {
            sub_27471CF08(0, &qword_28159E390);
            v15 = v13;
            v16 = sub_2749FD604();
            v17 = OUTLINED_FUNCTION_11();
            v19 = 0;
LABEL_14:
            sub_274772984(v17, v18, v19);
            if (v16)
            {
              break;
            }
          }

LABEL_24:
          if (v4 == ++v8)
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_27484F734(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (!v4)
  {
    return 0;
  }

  v8 = 0;
  v9 = a3 == 3;
  if (a2 | a1)
  {
    v9 = 0;
  }

  v76 = v9;
  v11 = a1 != 1 || a2 != 0 || a3 != 3;
  v12 = (a4 + 48);
  while (2)
  {
    v14 = *(v12 - 2);
    v13 = *(v12 - 1);
    v16 = *v12;
    v12 += 24;
    v15 = v16;
    switch(v16)
    {
      case 1:
        if (a3 != 1)
        {
          v42 = OUTLINED_FUNCTION_93();
          sub_27477D408(v42, v43, a3);
          v39 = OUTLINED_FUNCTION_43_0();
          v41 = 1;
          goto LABEL_35;
        }

        if (v14 != a1 || v13 != a2)
        {
          OUTLINED_FUNCTION_43_0();
          v18 = sub_2749FDCC4();
          v30 = OUTLINED_FUNCTION_1_31();
          sub_27477D408(v30, v31, v32);
          v33 = OUTLINED_FUNCTION_43_0();
          sub_27477D408(v33, v34, 1u);
          v35 = OUTLINED_FUNCTION_43_0();
          sub_27478C4DC(v35, v36, 1u);
          v26 = OUTLINED_FUNCTION_1_31();
          goto LABEL_29;
        }

        v64 = OUTLINED_FUNCTION_1_31();
        sub_27477D408(v64, v65, v66);
        v67 = OUTLINED_FUNCTION_1_31();
        sub_27477D408(v67, v68, v69);
        v70 = OUTLINED_FUNCTION_1_31();
        sub_27478C4DC(v70, v71, v72);
        v50 = OUTLINED_FUNCTION_1_31();
        goto LABEL_42;
      case 2:
        if (a3 != 2)
        {
          v37 = OUTLINED_FUNCTION_93();
          sub_27477D408(v37, v38, a3);
          v39 = OUTLINED_FUNCTION_43_0();
          v41 = 2;
          goto LABEL_35;
        }

        if (v14 == a1 && v13 == a2)
        {
          v55 = OUTLINED_FUNCTION_2_24();
          sub_27477D408(v55, v56, v57);
          v58 = OUTLINED_FUNCTION_2_24();
          sub_27477D408(v58, v59, v60);
          v61 = OUTLINED_FUNCTION_2_24();
          sub_27478C4DC(v61, v62, v63);
          v50 = OUTLINED_FUNCTION_2_24();
          goto LABEL_42;
        }

        OUTLINED_FUNCTION_43_0();
        v18 = sub_2749FDCC4();
        v19 = OUTLINED_FUNCTION_2_24();
        sub_27477D408(v19, v20, v21);
        v22 = OUTLINED_FUNCTION_43_0();
        sub_27477D408(v22, v23, 2u);
        v24 = OUTLINED_FUNCTION_43_0();
        sub_27478C4DC(v24, v25, 2u);
        v26 = OUTLINED_FUNCTION_2_24();
LABEL_29:
        sub_27478C4DC(v26, v27, v28);
        if (v18)
        {
          return v8;
        }

        goto LABEL_36;
      case 3:
        if (!(v14 | v13))
        {
          if (v76)
          {
            v73 = OUTLINED_FUNCTION_43_0();
            sub_27478C4DC(v73, v74, 3u);
            v50 = 0;
            goto LABEL_41;
          }

LABEL_34:
          v39 = OUTLINED_FUNCTION_93();
          v41 = a3;
LABEL_35:
          sub_27477D408(v39, v40, v41);
          v44 = OUTLINED_FUNCTION_43_0();
          sub_27478C4DC(v44, v45, v15);
          v46 = OUTLINED_FUNCTION_93();
          sub_27478C4DC(v46, v47, a3);
LABEL_36:
          if (v4 == ++v8)
          {
            return 0;
          }

          continue;
        }

        if (v11)
        {
          goto LABEL_34;
        }

        v53 = OUTLINED_FUNCTION_43_0();
        sub_27478C4DC(v53, v54, 3u);
        v50 = 1;
LABEL_41:
        v51 = 0;
        v52 = 3;
LABEL_42:
        sub_27478C4DC(v50, v51, v52);
        return v8;
      default:
        if (a3)
        {
          goto LABEL_34;
        }

        v48 = OUTLINED_FUNCTION_43_0();
        sub_27478C4DC(v48, v49, 0);
        v50 = OUTLINED_FUNCTION_93();
        v52 = 0;
        goto LABEL_42;
    }
  }
}

uint64_t sub_27484F9C4(unsigned __int8 a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a2 + 16) == i)
    {
      return 0;
    }

    if (*(a2 + 32 + i) == a1)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_27484FA08(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a2 + 16);
  while (1)
  {
    if (v5 == v4)
    {
      return 0;
    }

    v6 = type metadata accessor for WFAddToHomeScreenItem();
    OUTLINED_FUNCTION_27(v6);
    if (sub_2749571B4(a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v8 + 72) * v4, a1))
    {
      break;
    }

    ++v4;
  }

  return v4;
}

uint64_t sub_27484FAC0(char a1, uint64_t a2)
{
  for (i = 0; ; ++i)
  {
    if (*(a2 + 16) == i)
    {
      return 0;
    }

    if (*(a2 + 32 + i) == (a1 & 1))
    {
      break;
    }
  }

  return i;
}

void sub_27484FB04()
{
  OUTLINED_FUNCTION_48();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v2;
    v6 = v1;
    v7 = v0;
    v8 = 0;
    if (v1 | v0)
    {
      v9 = 0;
    }

    else
    {
      v9 = v2 == 2;
    }

    v10 = v0 == 1 && v1 == 0;
    v11 = v0;
    v12 = !v10 || v2 != 2;
    v13 = (v3 + 48);
    do
    {
      v14 = *(v13 - 2);
      v15 = *(v13 - 1);
      if (*v13)
      {
        if (*v13 == 1)
        {
          if (v5 == 1 && *(v13 - 2) == v11)
          {
            break;
          }
        }

        else if (v14 | v15)
        {
          if (!v12)
          {
            break;
          }
        }

        else if (v9)
        {
          break;
        }
      }

      else if (!v5)
      {
        v17 = v14 == v7 && v15 == v6;
        if (v17 || (sub_2749FDCC4() & 1) != 0)
        {
          break;
        }
      }

      v13 += 24;
      ++v8;
    }

    while (v4 != v8);
  }

  OUTLINED_FUNCTION_46();
}

void sub_27484FC30()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  v5 = v4(v2);
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
LABEL_11:
      OUTLINED_FUNCTION_46();
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x277C5F6D0](v6, v3);
      goto LABEL_6;
    }

    if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v7 = *(v3 + 8 * v6 + 32);
LABEL_6:
    v8 = v7;
    sub_27471CF08(0, v1);
    v9 = sub_2749FD604();

    if (v9)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_27484FD18()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B3F8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-v5];
  v7 = OUTLINED_FUNCTION_11();
  sub_27484FE50(v7, v8, v3, v1, v9);
  v10[32] = v3;
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  sub_2749FC5E4();
  sub_27485524C();
  sub_2749FC244();

  sub_27472ECBC(v6, &qword_28096B3F8);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_27484FE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v38 = a5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096CFC0);
  v35 = *(v36 - 8);
  v9 = MEMORY[0x28223BE20](v36);
  v37 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  type metadata accessor for ShortcutDetailsViewModel();
  sub_274855380(&qword_280967808, type metadata accessor for ShortcutDetailsViewModel);
  sub_2749FAD94();
  swift_getKeyPath();
  sub_2749FADA4();

  v13 = v45;
  v34 = v46;
  v40 = v47;
  v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B440);
  sub_2749FC704();
  v14 = v42;
  v32 = *(&v42 + 1);
  v33 = v42;
  v39 = *v43;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  swift_retain_n();
  swift_retain_n();
  v17 = v12;
  v31 = v12;
  sub_2749FC624();
  v18 = v35;
  v19 = *(v35 + 16);
  v20 = v37;
  v21 = v17;
  v22 = v36;
  v19(v37, v21, v36);
  v23 = v34;
  *&v42 = v13;
  *(&v42 + 1) = v34;
  *v43 = v40;
  *&v43[8] = v14;
  *&v43[24] = v39;
  *&v44 = sub_2748553C8;
  *(&v44 + 1) = v15;
  v24 = *v43;
  v25 = v38;
  *v38 = v42;
  *(v25 + 1) = v24;
  v26 = v44;
  *(v25 + 2) = *&v43[16];
  *(v25 + 3) = v26;
  v27 = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B448);
  v19(&v27[*(v28 + 48)], v20, v22);
  sub_2747B97A0(&v42, &v45, &unk_28096B450);
  v29 = *(v18 + 8);
  v29(v31, v22);
  v29(v20, v22);
  v45 = v13;
  v46 = v23;
  v47 = v40;
  v48 = v33;
  v49 = v32;
  v50 = v39;
  v51 = sub_2748553C8;
  v52 = v15;
  return sub_27472ECBC(&v45, &unk_28096B450);
}

uint64_t sub_27485022C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  *(v10 + 48) = a1;
  sub_274855440();

  v11 = a1;
  return sub_2749FC624();
}

uint64_t sub_274850308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = sub_2749FA8F4();
  sub_27471CF08(0, &qword_28096EA30);
  sub_27475F564();
  sub_2749FAD44();
  v5(v7, 0);
}

uint64_t sub_2748503D8(uint64_t a1, uint64_t a2)
{
  v2 = [*(a2 + 16) actions];
  sub_27471CF08(0, &qword_28096D540);
  v3 = sub_2749FCF84();

  v4 = sub_27472D918(v3);

  if (v4)
  {
    return sub_27475E0F8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400);
  return sub_2749FC5D4();
}

uint64_t sub_2748504BC@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_2748505DC@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B430);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v33 - v2;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v4 = qword_28159E448;
  v5 = sub_2749FCD64();
  v6 = sub_2749FCD64();

  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  v8 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v10 = v9;

  v38 = v8;
  v39 = v10;
  sub_27475D0D0();
  v11 = sub_2749FBEE4();
  v35 = v12;
  v36 = v11;
  v33[3] = v13;
  v34 = v14;
  sub_2749FCE14();
  v15 = sub_2749FCD64();
  v16 = sub_2749FCD64();

  v17 = [v4 &selRef:v15 presentedViewFrameInContainerViewOfSize:v16 withSizeCalculation:0 + 4];

  v18 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v20 = v19;

  v38 = v18;
  v39 = v20;
  sub_2749FBEE4();
  sub_2749FCE14();
  v21 = sub_2749FCD64();
  v22 = sub_2749FCD64();

  v23 = [v4 localizedStringForKey:v21 value:v22 table:0];

  v24 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v26 = v25;

  v38 = v24;
  v39 = v26;
  v27 = sub_2749FBEE4();
  v29 = v28;
  LOBYTE(v26) = v30;
  sub_2749FC3B4();
  sub_27477656C(v27, v29, v26 & 1);

  v31 = sub_2749FC3C4();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v31);
  return sub_2749FC374();
}

uint64_t sub_274850924(void *a1, uint64_t a2)
{
  sub_2749FD0A4();
  v4 = a1;
  v5 = sub_2749FD094();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  v8 = v4;

  v9 = sub_2749FD094();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v7;
  v10[4] = a2;
  v10[5] = v8;
  sub_27471CF08(0, &qword_28096EA30);
  sub_2749FC6F4();
  return v12;
}

uint64_t sub_274850A38(void **a1)
{
  v1 = *a1;
  sub_27475DD98();
  sub_27484FC30();
  v3 = v2;
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    v7 = v1;
    v8 = sub_27475DD98();
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result || v8 < 0 || (v8 & 0x4000000000000000) != 0)
    {
      result = sub_2747D5784(v8);
      v8 = result;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
      *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v7;

      return sub_27475DB0C(v8);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_274850B1C()
{
  v4 = *v0;
  v5 = *(v0 + 2);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B548);
  MEMORY[0x277C5E410](&v3, v1);
  return v3;
}

uint64_t sub_274850BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809677E0);
  v5 = sub_27471CF08(255, &qword_28096EA30);
  v6 = *(a1 + 16);
  v42 = sub_27472AB6C(&qword_28096B520, &qword_2809677E0);
  v41 = sub_27475F564();
  v61[0] = v4;
  v61[1] = v5;
  v61[2] = v6;
  v61[3] = v42;
  v61[4] = v41;
  v43 = sub_2749FC774();
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v8 = &v39 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B528);
  v46 = sub_2749FAEA4();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v52 = &v39 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B530);
  v10 = sub_2749FAEA4();
  v11 = *(v10 - 8);
  v49 = v10;
  v50 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v44 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v48 = &v39 - v14;
  v61[8] = sub_274850B1C();
  swift_getKeyPath();
  v15 = swift_allocObject();
  v16 = *(a1 + 24);
  *(v15 + 16) = v6;
  *(v15 + 24) = v16;
  v17 = v2[1];
  *(v15 + 32) = *v2;
  *(v15 + 48) = v17;
  v18 = v2[3];
  *(v15 + 64) = v2[2];
  *(v15 + 80) = v18;
  v19 = *(*(a1 - 8) + 16);
  v19(v61, v2, a1);
  v40 = v6;
  sub_2749FC754();
  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = v16;
  v21 = v2[1];
  *(v20 + 32) = *v2;
  *(v20 + 48) = v21;
  v22 = v2[3];
  *(v20 + 64) = v2[2];
  *(v20 + 80) = v22;
  v19(v61, v2, a1);
  v60 = v16;
  v23 = v43;
  WitnessTable = swift_getWitnessTable();
  sub_2749FB534();

  (*(v45 + 8))(v8, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = v40;
  *(v25 + 24) = v16;
  v26 = v2[1];
  *(v25 + 32) = *v2;
  *(v25 + 48) = v26;
  v27 = v2[3];
  *(v25 + 64) = v2[2];
  *(v25 + 80) = v27;
  v19(v61, v2, a1);
  v28 = sub_27472AB6C(&qword_28096B538, &qword_28096B528);
  v58 = WitnessTable;
  v59 = v28;
  v29 = v46;
  swift_getWitnessTable();
  v30 = v44;
  v31 = v52;
  sub_2749FB544();

  (*(v47 + 8))(v31, v29);
  v57 = v16;
  v55 = swift_getWitnessTable();
  v56 = v28;
  v32 = swift_getWitnessTable();
  v33 = sub_27472AB6C(&qword_28096B540, &qword_28096B530);
  v53 = v32;
  v54 = v33;
  v34 = v49;
  v35 = swift_getWitnessTable();
  v36 = v48;
  sub_27490E93C(v30, v34, v35);
  v37 = *(v50 + 8);
  v37(v30, v34);
  sub_27490E93C(v36, v34, v35);
  return (v37)(v36, v34);
}

uint64_t sub_274851234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v16 - v11;
  (*(v13 + 48))(*v10);
  sub_27490E93C(v9, a3, a4);
  v14 = *(v6 + 8);
  v14(v9, a3);
  sub_27490E93C(v12, a3, a4);
  return (v14)(v12, a3);
}

uint64_t sub_27485136C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  v5 = a3[2];
  v9 = v5;
  v10 = v4;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v5;
  sub_274855714(&v10, v7);

  sub_2747B97A0(&v9, v7, &qword_2809677E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B548);
  MEMORY[0x277C5E410](&v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809677E0);
  sub_27472AB6C(&qword_28096B550, &qword_2809677E0);
  sub_2749FCD44();
  v7[0] = v4;
  v7[1] = v3;
  v7[2] = v5;
  sub_2749FC6C4();
  sub_274855770(&v10);

  return sub_27472ECBC(&v9, &qword_2809677E0);
}

uint64_t sub_2748514B8(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v9 = *a2;
  v2 = v9;
  v8 = v4;
  v6[3] = v9;
  v6[4] = v3;
  v6[5] = v4;
  sub_274855714(&v9, v6);

  sub_2747B97A0(&v8, v6, &qword_2809677E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B548);
  MEMORY[0x277C5E410](&v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809677E0);
  sub_27472AB6C(&qword_28096B550, &qword_2809677E0);
  sub_27472AB6C(&qword_28096B558, &qword_2809677E0);
  sub_2749FD214();
  v6[0] = v2;
  v6[1] = v3;
  v6[2] = v4;
  sub_2749FC6C4();
  sub_274855770(&v9);

  sub_27472ECBC(&v8, &qword_2809677E0);
  type metadata accessor for ImportQuestionsListContentView();
  return sub_274850B74();
}

uint64_t sub_274851690@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2749FB524();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B4F0);
  return sub_2748516E8(a1, a2 + *(v4 + 44));
}

uint64_t sub_2748516E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_2749FA2F4();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2749FA2C4();
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2749FA304();
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B3D8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  v17 = a1;
  v18 = [a1 action];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 icon];

    if (v20)
    {
      __asm { FMOV            V0.2D, #22.0 }

      *v8 = _Q0;
      (*(v43 + 104))(v8, *MEMORY[0x277D7D690], v6);
      sub_274851BA8(v17, v5);
      sub_2749FA314();
      (*(v42 + 32))(v16, v11, v9);
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v16, v26, 1, v9);
  v27 = sub_2749FB644();
  v47 = 1;
  sub_274851C78(v17, v51);
  memcpy(v48, v51, sizeof(v48));
  memcpy(v49, v51, sizeof(v49));
  sub_2747B97A0(v48, v50, &qword_28096B4F8);
  sub_27472ECBC(v49, &qword_28096B4F8);
  memcpy(&v46[7], v48, 0x80uLL);
  v28 = v47;
  v29 = sub_2749FBC64();
  sub_2749FA9E4();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v44;
  sub_2747B97A0(v16, v44, &qword_28096B3D8);
  v39 = v45;
  sub_2747B97A0(v38, v45, &qword_28096B3D8);
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B500) + 48);
  v50[0] = v27;
  v50[1] = 0;
  LOBYTE(v50[2]) = v28;
  memcpy(&v50[2] + 1, v46, 0x87uLL);
  LOBYTE(v50[19]) = v29;
  v50[20] = v31;
  v50[21] = v33;
  v50[22] = v35;
  v50[23] = v37;
  LOBYTE(v50[24]) = 0;
  memcpy((v39 + v40), v50, 0xC1uLL);
  sub_2747B97A0(v50, v51, &qword_28096B508);
  sub_27472ECBC(v16, &qword_28096B3D8);
  v51[0] = v27;
  v51[1] = 0;
  LOBYTE(v51[2]) = v28;
  memcpy(&v51[2] + 1, v46, 0x87uLL);
  v52 = v29;
  v53 = v31;
  v54 = v33;
  v55 = v35;
  v56 = v37;
  v57 = 0;
  sub_27472ECBC(v51, &qword_28096B508);
  return sub_27472ECBC(v38, &qword_28096B3D8);
}

uint64_t sub_274851BA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 action];
  if (v3 && (v4 = v3, v5 = [v3 iconColor], v4, v5))
  {
    *a2 = v5;
    *(a2 + 8) = 1;
    v6 = MEMORY[0x277D7D6C0];
  }

  else
  {
    v6 = MEMORY[0x277D7D6D0];
  }

  v7 = *v6;
  v8 = sub_2749FA2F4();
  v9 = *(*(v8 - 8) + 104);

  return v9(a2, v7, v8);
}

uint64_t sub_274851C78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 action];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 localizedName];
    v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v8 = v7;

    v61 = v6;
    v62 = v8;
    sub_27475D0D0();
    v57 = sub_2749FBEE4();
    v54 = v10;
    v55 = v9;
    LOBYTE(v5) = v11;
    KeyPath = swift_getKeyPath();

    v12 = v5 & 1;
    v52 = 1;
  }

  else
  {
    v57 = 0;
    v54 = 0;
    v55 = 0;
    v12 = 0;
    v52 = 0;
    KeyPath = 0;
  }

  sub_2749036A0(a1);
  if (!v13)
  {
    v34 = 0;
    v36 = 0;
    v43 = 0;
    v41 = 0;
    v45 = 0;
    v16 = 0;
LABEL_11:
    v42 = 0;
    v44 = 0;
    goto LABEL_12;
  }

  v14 = sub_2749FCDE4();
  v16 = v15;

  if (!v16)
  {
    v34 = 0;
    v36 = 0;
    v43 = 0;
    v41 = 0;
    v45 = 0;
    goto LABEL_11;
  }

  v49 = v14;
  v50 = v12;

  sub_2749FCE14();
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v17 = qword_28159E448;
  v18 = sub_2749FCD64();

  v19 = sub_2749FCD64();

  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  v21 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v23 = v22;

  sub_2749FCE14();
  sub_2749FCE14();
  v24 = sub_2749FCD64();

  v25 = sub_2749FCD64();

  v26 = [v17 localizedStringForKey:v24 value:v25 table:0];

  v27 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v29 = v28;

  v61 = v21;
  v62 = v23;

  MEMORY[0x277C5EBC0](v49, v16);

  MEMORY[0x277C5EBC0](v27, v29);

  sub_27475D0D0();
  v30 = sub_2749FBEE4();
  v32 = v31;
  LOBYTE(v29) = v33;
  sub_2749FBDF4();
  v34 = sub_2749FBEC4();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  sub_27477656C(v30, v32, v29 & 1);

  v41 = swift_getKeyPath();
  v42 = sub_2749FC4A4();
  v16 = swift_getKeyPath();
  swift_bridgeObjectRelease_n();
  v43 = v40;
  v71 = v38 & 1;
  v70 = 0;
  v44 = v38 & 1;
  v45 = 1;
  v12 = v50;
LABEL_12:
  v47 = v44;
  v48 = v43;
  v51 = v45;
  __src[0] = v34;
  __src[1] = v36;
  __src[2] = v44;
  __src[3] = v43;
  __src[4] = v41;
  __src[5] = v45;
  __src[6] = 0;
  __src[7] = v16;
  __src[8] = v42;
  memcpy(&v59[7], __src, 0x48uLL);
  *a2 = v57;
  *(a2 + 8) = v55;
  *(a2 + 16) = v12;
  *(a2 + 24) = v54;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = v52;
  *(a2 + 48) = 0;
  memcpy((a2 + 49), v59, 0x4FuLL);
  v61 = v34;
  v62 = v36;
  v63 = v47;
  v64 = v48;
  v65 = v41;
  v66 = v51;
  v67 = 0;
  v68 = v16;
  v69 = v42;
  sub_2748555E8(v57, v55, v12, v54);
  sub_2747B97A0(__src, v58, &unk_28096B510);
  sub_27472ECBC(&v61, &unk_28096B510);
  return sub_274855638(v57, v55, v12, v54);
}

void sub_274852188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  v34 = type metadata accessor for ImportQuestionEditorView();
  sub_2747B97A0(v20 + *(v34 + 28), v33, &qword_28096BF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274795A34(v33, v24);
  }

  else
  {
    sub_2749FD2D4();
    v35 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    OUTLINED_FUNCTION_93();
    swift_getAtKeyPath();

    (*(v27 + 8))(v30, v25);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_274852334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v22 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B240);
  sub_2749FC5B4();
  v8 = type metadata accessor for ImportQuestionEditorView();
  v9 = *(v8 + 28);
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  swift_storeEnumTagMultiPayload();
  v10 = (a4 + *(v8 + 32));
  sub_2749F9AA4();
  v22 = sub_2749F9A94();
  sub_2749FC5B4();
  *v10 = v19;
  v10[1] = v20;
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  v21 = a3;

  v11 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B250);
  MEMORY[0x277C5E410](&v22);
  v13 = v22;
  v14 = [v22 defaultState];

  swift_unknownObjectRelease();

  a4[3] = v14;
  a4[4] = 0;
  MEMORY[0x277C5E410](&v22, v12);

  result = sub_27485483C(v22);
  if (v16)
  {
    v17 = result;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  if (v16)
  {
    v18 = v16;
  }

  a4[5] = v17;
  a4[6] = v18;
  a4[7] = 0;
  return result;
}

void sub_2748524FC()
{
  OUTLINED_FUNCTION_48();
  v38 = v1;
  v2 = type metadata accessor for ImportQuestionEditorView();
  v3 = OUTLINED_FUNCTION_27(v2);
  v37 = v4;
  v36 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2749F9F54();
  OUTLINED_FUNCTION_43();
  v33 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2B8);
  OUTLINED_FUNCTION_43();
  v12 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2C0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - v18;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2C8);
  OUTLINED_FUNCTION_43();
  v31 = v20;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  v23 = &v29 - v22;
  v40 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2D0);
  sub_27472AB6C(&qword_28096B2D8, &qword_28096B2D0);
  sub_2749FBE34();
  sub_2749FC914();
  sub_2749FB004();
  (*(v12 + 32))(v19, v15, v30);
  memcpy(&v19[*(v16 + 36)], v41, 0x70uLL);
  sub_2749F9F44();
  v39 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2E0);
  sub_274854BAC();
  sub_274854C64();
  sub_2749FBF24();
  (*(v33 + 8))(v10, v34);
  sub_27472ECBC(v19, &qword_28096B2C0);
  v24 = v35;
  sub_274854D1C(v0, v35);
  v25 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v26 = swift_allocObject();
  sub_274854D80(v24, v26 + v25);
  v27 = v38;
  (*(v31 + 32))(v38, v23, v32);
  v28 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B310) + 36));
  *v28 = 0;
  v28[1] = 0;
  v28[2] = sub_2748557C4;
  v28[3] = v26;
  OUTLINED_FUNCTION_46();
}

uint64_t sub_2748529B8@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B370);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v80 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v84 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B378);
  v77 = *(v7 - 8);
  v78 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v83 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v73 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B380);
  v76 = *(v82 - 8);
  v12 = MEMORY[0x28223BE20](v82);
  v81 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v73 - v14;
  v85 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B388);
  sub_27472AB6C(&qword_28096B390, &qword_28096B388);
  v16 = v15;
  sub_2749FC794();
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v17 = qword_28159E448;
  v18 = sub_2749FCD64();
  v19 = sub_2749FCD64();

  v20 = v17;
  v21 = [v17 localizedStringForKey:v18 value:v19 table:0];

  v22 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v24 = v23;

  v87 = v22;
  v88 = v24;
  v89 = 0;
  MEMORY[0x28223BE20](v25);
  *(&v73 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B398);
  v26 = sub_2748550D0();
  sub_27472AB6C(&qword_28096B3A8, &qword_28096B398);
  v73 = v26;
  sub_2749FC784();
  v87 = *a1;
  v88 = *(a1 + 8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B250);
  MEMORY[0x277C5E410](v86, v27);
  v28 = v86[0];
  v29 = [v86[0] parameter];

  if (!v29)
  {
    v37 = v11;
    goto LABEL_18;
  }

  v30 = [v29 importQuestionBehavior];
  v31 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v33 = v32;

  if (v31 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v33 == v34)
  {
    goto LABEL_17;
  }

  v36 = sub_2749FDCC4();

  if (v36)
  {
LABEL_9:
    v37 = v11;

LABEL_18:
    v54 = 1;
    goto LABEL_19;
  }

  v38 = [v29 importQuestionBehavior];
  v39 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v41 = v40;

  if (v39 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v41 == v42)
  {
LABEL_17:
    v37 = v11;

    goto LABEL_18;
  }

  v44 = sub_2749FDCC4();

  if (v44)
  {
    goto LABEL_9;
  }

  v37 = v11;
  sub_2749FCE14();
  v45 = sub_2749FCD64();
  v46 = sub_2749FCD64();

  v47 = [v20 localizedStringForKey:v45 value:v46 table:0];

  v48 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v50 = v49;

  v87 = v48;
  v88 = v50;
  v89 = 0;
  MEMORY[0x28223BE20](v51);
  *(&v73 - 2) = v29;
  *(&v73 - 1) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B3C0);
  v52 = sub_2749F9BD4();
  v53 = sub_274855380(&qword_28096B3C8, MEMORY[0x277D7BD30]);
  v86[0] = v52;
  v86[1] = v53;
  swift_getOpaqueTypeConformance2();
  sub_2749FC784();

  v54 = 0;
LABEL_19:
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B3B0);
  v56 = v84;
  __swift_storeEnumTagSinglePayload(v84, v54, 1, v55);
  v57 = v76;
  v58 = *(v76 + 16);
  v59 = v81;
  v75 = v16;
  v58(v81, v16, v82);
  v60 = v77;
  v61 = v78;
  v62 = *(v77 + 16);
  v74 = v37;
  v62(v83, v37, v78);
  v63 = v56;
  v64 = v80;
  sub_274749674(v63, v80);
  v65 = v79;
  v66 = v59;
  v67 = v82;
  v58(v79, v66, v82);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B3B8);
  v69 = v83;
  v62(&v65[*(v68 + 48)], v83, v61);
  sub_274749674(v64, &v65[*(v68 + 64)]);
  sub_27472ECBC(v84, &qword_28096B370);
  v70 = *(v60 + 8);
  v70(v74, v61);
  v71 = *(v57 + 8);
  v71(v75, v67);
  sub_27472ECBC(v64, &qword_28096B370);
  v70(v69, v61);
  return (v71)(v81, v67);
}

uint64_t sub_274853234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2749FB524();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B3D0);
  return sub_27485328C(a1, a2 + *(v4 + 44));
}

uint64_t sub_27485328C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_2749FA2F4();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2749FA2C4();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2749FA304();
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B3D8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v41 = *a1;
  v42[0] = *(a1 + 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B250);
  MEMORY[0x277C5E410](v40, v17);
  v18 = v40[0];
  v19 = [v40[0] action];

  if (v19 && (v20 = [v19 icon], v19, v20))
  {
    __asm { FMOV            V0.2D, #22.0 }

    *v7 = _Q0;
    (*(v32 + 104))(v7, *MEMORY[0x277D7D690], v34);
    (*(v35 + 104))(v5, *MEMORY[0x277D7D6D0], v36);
    sub_2749FA314();
    (*(v33 + 32))(v16, v10, v8);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v16, v26, 1, v8);
  v27 = sub_2749FB644();
  LOBYTE(v41) = 1;
  sub_274853704(a1, v39);
  *&v38[7] = v39[0];
  *&v38[23] = v39[1];
  *&v38[39] = v39[2];
  *&v38[55] = v39[3];
  v28 = v41;
  sub_2747B97A0(v16, v14, &qword_28096B3D8);
  v29 = v37;
  sub_2747B97A0(v14, v37, &qword_28096B3D8);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B3E0) + 48);
  v40[0] = v27;
  v40[1] = 0;
  LOBYTE(v40[2]) = v28;
  memcpy(&v40[2] + 1, v38, 0x47uLL);
  memcpy((v29 + v30), v40, 0x58uLL);
  sub_2747B97A0(v40, &v41, &qword_28096B3E8);
  sub_27472ECBC(v16, &qword_28096B3D8);
  v41 = v27;
  *&v42[0] = 0;
  BYTE8(v42[0]) = v28;
  memcpy(v42 + 9, v38, 0x47uLL);
  sub_27472ECBC(&v41, &qword_28096B3E8);
  return sub_27472ECBC(v14, &qword_28096B3D8);
}

uint64_t sub_274853704@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v43 = *a1;
  v44 = v4;
  v45 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B250);
  MEMORY[0x277C5E410](&v42);
  v7 = v42;
  v8 = [v42 action];

  if (v8)
  {
    v9 = [v8 localizedName];
    v10 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v12 = v11;

    v43 = v10;
    v44 = v12;
    sub_27475D0D0();
    v13 = sub_2749FBEE4();
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = v17 & 1;
    sub_274754DBC(v13, v15, v20);
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v20 = 0;
    v19 = 0;
  }

  v43 = v3;
  v44 = v4;
  v45 = v5;
  MEMORY[0x277C5E410](&v42, v6);
  v21 = v42;
  v22 = [v42 parameter];

  if (v22)
  {
    v23 = [v22 localizedLabel];

    v24 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v26 = v25;

    v43 = v24;
    v44 = v26;
    sub_27475D0D0();
    v27 = sub_2749FBEE4();
    v29 = v28;
    v41 = v13;
    v31 = v30;
    sub_2749FBDF4();
    v22 = sub_2749FBEC4();
    v33 = v32;
    v40 = v34;
    v36 = v35;

    v37 = v31 & 1;
    v13 = v41;
    sub_27477656C(v27, v29, v37);

    v38 = v40 & 1;
    sub_274754DBC(v22, v33, v40 & 1);
  }

  else
  {
    v33 = 0;
    v38 = 0;
    v36 = 0;
  }

  sub_2747FF76C(v13, v15, v20, v19);
  sub_2747FF76C(v22, v33, v38, v36);
  sub_2747FF7B8(v13, v15, v20, v19);
  sub_2747FF7B8(v22, v33, v38, v36);
  *a2 = v13;
  a2[1] = v15;
  a2[2] = v20;
  a2[3] = v19;
  a2[4] = v22;
  a2[5] = v33;
  a2[6] = v38;
  a2[7] = v36;
  sub_2747FF7B8(v22, v33, v38, v36);
  return sub_2747FF7B8(v13, v15, v20, v19);
}

uint64_t sub_2748539FC()
{
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v0 = qword_28159E448;
  v1 = sub_2749FCD64();
  v2 = sub_2749FCD64();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBC0);
  sub_2749FC5E4();
  sub_27475D0D0();
  return sub_2749FC9C4();
}

uint64_t sub_274853B94@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[0] = a3;
  v5 = sub_2749F9C04();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2749F9BD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749F9C44();
  v19 = *(a2 + 24);
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B328);
  sub_2749FC5E4();
  sub_2749F9C34();
  v14 = (a2 + *(type metadata accessor for ImportQuestionEditorView() + 32));
  v16 = *v14;
  v15 = v14[1];
  v18[1] = v16;
  v18[2] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B320);
  sub_2749FC5C4();
  (*(v6 + 104))(v8, *MEMORY[0x277D7BD78], v5);
  sub_2749F9BC4();
  sub_274855380(&qword_28096B3C8, MEMORY[0x277D7BD30]);
  sub_2749FBEF4();
  return (*(v10 + 8))(v12, v9);
}

double sub_274853E10@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_2749FB634();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B330);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D790);
  sub_274854BAC();
  sub_27472AB6C(&unk_28096B340, &qword_28096D790);
  sub_2749FC2C4();
  v2 = sub_2749FBC64();
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2E0) + 36);
  *v3 = v2;
  result = 0.0;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 1;
  return result;
}

uint64_t sub_274853F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  sub_2749FB824();
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

void sub_27485432C()
{
  OUTLINED_FUNCTION_48();
  v18[1] = v0;
  v2 = v1;
  v3 = type metadata accessor for ImportQuestionEditorView();
  v4 = OUTLINED_FUNCTION_27(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v9 = qword_28159E448;
  OUTLINED_FUNCTION_11();
  v10 = sub_2749FCD64();
  OUTLINED_FUNCTION_11();
  v11 = sub_2749FCD64();

  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  v13 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v15 = v14;

  v18[2] = v13;
  v18[3] = v15;
  sub_274854D1C(v2, v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_274854D80(v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_27475D0D0();
  sub_2749FC644();
  OUTLINED_FUNCTION_46();
}

void sub_2748544EC()
{
  v1 = v0;
  v2 = sub_2749FAF84();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0);
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - v4;
  v7 = *v0;
  v6 = v0[1];
  v8 = v0[2];
  *&v41 = *v0;
  *(&v41 + 1) = v6;
  v39 = v8;
  v42 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B250);
  MEMORY[0x277C5E410](v40);
  v9 = v40[0];
  v10 = [v40[0] action];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = v10;
  v38 = v3;
  v12 = [v9 parameter];
  if (!v12)
  {

LABEL_6:
    return;
  }

  v13 = v12;
  v14 = v0[7];
  v41 = *(v0 + 5);
  v42 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FBC0);
  sub_2749FC5C4();
  v15 = sub_2749FCDE4();
  v36 = v16;
  v37 = v15;

  v17 = (v0 + *(type metadata accessor for ImportQuestionEditorView() + 32));
  v19 = *v17;
  v18 = v17[1];
  *&v41 = v19;
  *(&v41 + 1) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B320);
  sub_2749FC5C4();
  v20 = v40[0];
  sub_2749F9A44();

  v41 = *(v1 + 3);
  v21 = v13;
  v22 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B328);
  sub_2749FC5C4();
  v23 = v40[0];
  v24 = objc_allocWithZone(MEMORY[0x277D7CA80]);
  v25 = sub_27475F4B4(v22, v21, v37, v36, v23);
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v9;
    v25 = 0;
  }

  *&v41 = v7;
  *(&v41 + 1) = v6;
  v42 = v39;
  v40[0] = v26;
  v27 = v25;
  v28 = sub_2749FC6C4();
  sub_274852188(v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40[0], v40[1], v41, *(&v41 + 1), v42, v43, v44, v45);
  MEMORY[0x277C5E410](v38);
  sub_2749FAF74();
  sub_2749FC6C4();

  sub_27472ECBC(v5, &qword_28096B2A0);
}

uint64_t type metadata accessor for ImportQuestionEditorView()
{
  result = qword_28096B270;
  if (!qword_28096B270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27485483C(void *a1)
{
  v2 = [a1 question];

  if (!v2)
  {
    return 0;
  }

  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

void sub_2748548E8()
{
  sub_274854A0C();
  if (v0 <= 0x3F)
  {
    sub_274854AC4(319, &qword_28096B288, &unk_28096B240, &unk_274A19EF0, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_274854A74();
      if (v2 <= 0x3F)
      {
        sub_274854AC4(319, &qword_28096D3A0, &qword_28096B2A0, &unk_274A11BA0, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_274854B28();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_274854A0C()
{
  if (!qword_28096B280)
  {
    sub_27471CF08(255, &qword_28096EA30);
    v0 = sub_2749FC714();
    if (!v1)
    {
      atomic_store(v0, &qword_28096B280);
    }
  }
}

void sub_274854A74()
{
  if (!qword_28096B290)
  {
    v0 = sub_2749FC5F4();
    if (!v1)
    {
      atomic_store(v0, &qword_28096B290);
    }
  }
}

void sub_274854AC4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_274854B28()
{
  if (!qword_28096B2A8)
  {
    sub_2749F9AA4();
    v0 = sub_2749FC5F4();
    if (!v1)
    {
      atomic_store(v0, &qword_28096B2A8);
    }
  }
}

unint64_t sub_274854BAC()
{
  result = qword_28096B2E8;
  if (!qword_28096B2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B2C0);
    sub_27472AB6C(&qword_28096B2F0, &qword_28096B2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B2E8);
  }

  return result;
}

unint64_t sub_274854C64()
{
  result = qword_28096B2F8;
  if (!qword_28096B2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B2E0);
    sub_27472AB6C(&qword_28096B300, &qword_28096B308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B2F8);
  }

  return result;
}

uint64_t sub_274854D1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportQuestionEditorView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274854D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportQuestionEditorView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_6Tm()
{
  v1 = type metadata accessor for ImportQuestionEditorView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0) + 32);
    sub_2749FAF84();
    OUTLINED_FUNCTION_9();
    (*(v8 + 8))(v5 + v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_274855060()
{
  v1 = *(type metadata accessor for ImportQuestionEditorView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_274854218(v2);
}

unint64_t sub_2748550D0()
{
  result = qword_28096B3A0;
  if (!qword_28096B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B3A0);
  }

  return result;
}

unint64_t sub_27485513C()
{
  result = qword_28096B3F0;
  if (!qword_28096B3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096B310);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B2C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B2E0);
    sub_274854BAC();
    sub_274854C64();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B3F0);
  }

  return result;
}

unint64_t sub_27485524C()
{
  result = qword_28096B408;
  if (!qword_28096B408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B3F8);
    sub_2748552D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B408);
  }

  return result;
}

unint64_t sub_2748552D0()
{
  result = qword_28096B410;
  if (!qword_28096B410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B418);
    sub_27472AB6C(&qword_28096B420, &qword_28096B428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B410);
  }

  return result;
}

uint64_t sub_274855380(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_26Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_274855440()
{
  result = qword_28096B460[0];
  if (!qword_28096B460[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28096B460);
  }

  return result;
}

uint64_t sub_2748554A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2748554E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_274855520(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2748555E8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_274754DBC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_274855638(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_27477656C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t objectdestroy_58Tm()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2748557CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC10WorkflowUI31TriggerEmptyStateViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_274855828(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC10WorkflowUI31TriggerEmptyStateViewController_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t TriggerEmptyStateViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC10WorkflowUI31TriggerEmptyStateViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TriggerEmptyStateViewController.delegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC10WorkflowUI31TriggerEmptyStateViewController_delegate;
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

Swift::Void __swiftcall TriggerEmptyStateViewController.loadView()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DBC0);
  MEMORY[0x28223BE20](v2);
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setView_];

  sub_2749FAB64();
  sub_274856094();
  sub_2749FC6A4();
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096E640));
  v5 = sub_2749FB6C4();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v27 = v6;
  sub_274856100();
  v7 = v1;
  v26 = sub_2749FC6A4();
  sub_2749FB6D4();
  v8 = v5;
  [v7 addChildViewController_];
  v9 = [v8 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = v9;
  v11 = [v7 view];
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  [v11 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v10 setFrame_];
  v21 = [v8 view];

  if (!v21)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v21 setAutoresizingMask_];

  v22 = [v7 view];
  if (!v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v22;
  v24 = [v8 view];

  if (v24)
  {
    [v23 addSubview_];

    v25 = *&v7[OBJC_IVAR____TtC10WorkflowUI31TriggerEmptyStateViewController_hostingController];
    *&v7[OBJC_IVAR____TtC10WorkflowUI31TriggerEmptyStateViewController_hostingController] = v8;

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_274855CA0(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC10WorkflowUI31TriggerEmptyStateViewController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

id TriggerEmptyStateViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
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

id TriggerEmptyStateViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC10WorkflowUI31TriggerEmptyStateViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC10WorkflowUI31TriggerEmptyStateViewController_hostingController] = 0;
  if (a2)
  {
    v7 = sub_2749FCD64();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id TriggerEmptyStateViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TriggerEmptyStateViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC10WorkflowUI31TriggerEmptyStateViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC10WorkflowUI31TriggerEmptyStateViewController_hostingController] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id TriggerEmptyStateViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_274856094()
{
  result = qword_28159E718;
  if (!qword_28159E718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E718);
  }

  return result;
}

unint64_t sub_274856100()
{
  result = qword_28159ECE8[0];
  if (!qword_28159ECE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28159ECE8);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2748561A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_2748561E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_274856258(uint64_t *a1@<X8>)
{
  *a1 = sub_2749FC914();
  a1[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B590);
  sub_2748562A4(v1);
}

void sub_2748562A4(__int128 *a1)
{
  v2 = sub_2749FA2F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2749FA2C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *a1;
  v21 = *(a1 + 2);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B598);
  MEMORY[0x277C5E410](&v19, v10);
  v11 = v19;
  v12 = [v19 RGBAValue];

  v20 = *(a1 + 24);
  LOWORD(v21) = *(a1 + 20);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B5A0);
  MEMORY[0x277C5E410](&v19, v13);
  v14 = v19;
  v15 = objc_allocWithZone(MEMORY[0x277D7A1E0]);
  v16 = sub_27490C76C(v12, v14, 0, 0xF000000000000000);
  v17 = [v16 icon];
  *v9 = vdupq_n_s64(0x404E000000000000uLL);
  (*(v7 + 104))(v9, *MEMORY[0x277D7D690], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D7D6D0], v2);
  sub_2749FA314();
}

unint64_t sub_274856554()
{
  result = qword_28096B5A8;
  if (!qword_28096B5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B5A8);
  }

  return result;
}

id sub_2748565B8()
{
  v0 = sub_2749FCD64();

  v1 = [swift_getObjCClassFromMetadata() systemImageNamed_];

  return v1;
}

unint64_t ActivityProgressControllerState.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_274856630@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ActivityProgressControllerState.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_274856664(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_2748567B8(v1, v2);
}

void sub_2748566A4()
{
  v1 = *(v0 + OBJC_IVAR___WFActivityProgressController_alertController);
  if (v1)
  {
    v2 = v0 + OBJC_IVAR___WFActivityProgressController_title;
    swift_beginAccess();
    if (*(v2 + 8))
    {
      v3 = v1;

      v4 = sub_2749FCD64();
    }

    else
    {
      v3 = v1;
      v4 = 0;
    }

    [v3 setTitle_];
  }
}

uint64_t sub_274856760()
{
  v1 = (v0 + OBJC_IVAR___WFActivityProgressController_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void sub_2748567B8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___WFActivityProgressController_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  sub_2748566A4();
}

void (*sub_27485681C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_274856880;
}

void sub_274856880(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_2748566A4();
  }
}

void sub_274856948(uint64_t a1)
{
  sub_2748579C0(a1, 1);

  sub_27485757C();
}

void (*sub_27485698C(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = *(*(v1 + OBJC_IVAR___WFActivityProgressController_viewController) + OBJC_IVAR___WFActivityProgressViewController__state);
  return sub_2748569CC;
}

id ActivityProgressController.init(title:)(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___WFActivityProgressController_title];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v2[OBJC_IVAR___WFActivityProgressController_alertController] = 0;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;
  type metadata accessor for ActivityProgressViewController();
  *&v2[OBJC_IVAR___WFActivityProgressController_viewController] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ActivityProgressController();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_274856B28(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2749FCB04();
  OUTLINED_FUNCTION_43();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_27471CF08(0, &qword_28159E4E0);
  *v13 = sub_2749FD404();
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v8);
  v14 = sub_2749FCB24();
  (*(v10 + 8))(v13, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_27471CF08(0, &unk_28096DB70);
  v15 = (v4 + OBJC_IVAR___WFActivityProgressController_title);
  swift_beginAccess();
  v17 = *v15;
  v16 = v15[1];

  v8 = sub_274856E7C(v17, v16, 0, 0, 1);
  if (a2)
  {
    sub_27471CF08(0, &qword_28096C980);

    sub_2749FCE14();
    if (qword_28159E3A8 == -1)
    {
LABEL_4:
      v18 = qword_28159E448;
      v19 = sub_2749FCD64();
      v20 = sub_2749FCD64();

      v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

      v22 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v24 = v23;

      v25 = swift_allocObject();
      *(v25 + 16) = a2;
      *(v25 + 24) = a3;

      v26 = sub_274856F34(v22, v24, 1, sub_2747D22F0, v25);
      [v8 addAction_];

      sub_27471F8A4(a2);
      goto LABEL_5;
    }

LABEL_7:
    swift_once();
    goto LABEL_4;
  }

LABEL_5:
  sub_27485757C();
  [v8 setContentViewController_];
  v27 = *(v4 + OBJC_IVAR___WFActivityProgressController_alertController);
  *(v4 + OBJC_IVAR___WFActivityProgressController_alertController) = v8;
  v28 = v8;

  [a1 presentViewController:v28 animated:1 completion:0];
}

id sub_274856E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v7 = sub_2749FCD64();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_2749FCD64();

LABEL_6:
  v9 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v7 message:v8 preferredStyle:a5];

  return v9;
}

id sub_274856F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v8 = sub_2749FCD64();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12[4] = a4;
  v12[5] = a5;
  OUTLINED_FUNCTION_47_0();
  v12[1] = 1107296256;
  v12[2] = sub_27479C03C;
  v12[3] = &block_descriptor_46;
  v9 = _Block_copy(v12);

LABEL_6:
  v10 = [swift_getObjCClassFromMetadata() actionWithTitle:v8 style:a3 handler:v9];
  _Block_release(v9);

  return v10;
}

void sub_2748570F4(uint64_t a1, void (**a2)(void))
{
  v4 = sub_2749FCB04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  sub_27471CF08(0, &qword_28159E4E0);
  _Block_copy(a2);
  *v7 = sub_2749FD404();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v9 = sub_2749FCB24();
  (*(v5 + 8))(v7, v4);
  if (v9)
  {
    v10 = OBJC_IVAR___WFActivityProgressController_alertController;
    v11 = *(a1 + OBJC_IVAR___WFActivityProgressController_alertController);
    if (v11)
    {
      aBlock[4] = sub_274858614;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_274760264;
      aBlock[3] = &block_descriptor_39;
      v12 = _Block_copy(aBlock);
      v13 = v11;

      [v13 dismissViewControllerAnimated:1 completion:v12];

      _Block_release(v12);
      v14 = *(a1 + v10);
      *(a1 + v10) = 0;
    }

    else
    {
      a2[2](a2);
    }

    _Block_release(a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_274857338(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = sub_2749FCB04();
  OUTLINED_FUNCTION_43();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_27471CF08(0, &qword_28159E4E0);
  *v11 = sub_2749FD404();
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v6);
  v12 = sub_2749FCB24();
  v13 = (*(v8 + 8))(v11, v6);
  if (v12)
  {
    v14 = OBJC_IVAR___WFActivityProgressController_alertController;
    v15 = *(v3 + OBJC_IVAR___WFActivityProgressController_alertController);
    if (v15)
    {
      aBlock[4] = a1;
      aBlock[5] = a2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      OUTLINED_FUNCTION_2_2();
      aBlock[2] = v16;
      aBlock[3] = &block_descriptor_23;
      v17 = _Block_copy(aBlock);
      v18 = v15;

      [v18 dismissViewControllerAnimated:1 completion:v17];

      _Block_release(v17);
      v19 = *(v3 + v14);
      *(v3 + v14) = 0;
    }

    else
    {
      a1(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_27485757C()
{
  v1 = *(v0 + OBJC_IVAR___WFActivityProgressController_alertController);
  if (v1)
  {
    v2 = [v1 actions];
    sub_27471CF08(0, &qword_28096C980);
    v3 = sub_2749FCF84();

    v4 = sub_27472D918(v3);
    for (i = 0; v4 != i; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x277C5F6D0](i, v3);
      }

      else
      {
        if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      [v6 setEnabled_];
    }
  }
}

id ActivityProgressController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_2748577C4()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ActivityProgressViewController();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  [*&v0[OBJC_IVAR___WFActivityProgressViewController_activityView] startAnimating];
  v1 = *&v0[OBJC_IVAR___WFActivityProgressViewController_successView];
  v2 = [objc_opt_self() systemGreenColor];
  [v1 setTintColor_];

  v3 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x277D769A8] scale:2];
  [v1 setPreferredSymbolConfiguration_];

  [v1 setMinimumContentSizeCategory_];
  sub_2748579C0(*&v0[OBJC_IVAR___WFActivityProgressViewController__state], 0);
}

void sub_2748579C0(uint64_t a1, char a2)
{
  *(v2 + OBJC_IVAR___WFActivityProgressViewController__state) = a1;
  if (a1)
  {
    if (a1 != 1)
    {
      sub_2749FDD24();
      __break(1u);
      return;
    }

    v4 = &OBJC_IVAR___WFActivityProgressViewController_successView;
  }

  else
  {
    v4 = &OBJC_IVAR___WFActivityProgressViewController_activityView;
  }

  v5 = *(v2 + *v4);
  v6 = v5;
  sub_274857D04(v5, a2 & 1);
}

unint64_t sub_274857AD4()
{
  result = qword_28096B5D8;
  if (!qword_28096B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B5D8);
  }

  return result;
}

void sub_274857D04(void *a1, char a2)
{
  if (a2)
  {
    v4 = 0.3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = OBJC_IVAR___WFActivityProgressViewController__contentView;
  v6 = *&v2[OBJC_IVAR___WFActivityProgressViewController__contentView];
  if (v6)
  {
    v7 = objc_opt_self();
    OUTLINED_FUNCTION_86();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *&v37.tx = sub_2747F59AC;
    *&v37.ty = v8;
    *&v37.a = MEMORY[0x277D85DD0];
    *&v37.b = 1107296256;
    *&v37.c = sub_274760264;
    *&v37.d = &block_descriptor_27_0;
    v9 = _Block_copy(&v37);
    v10 = v6;

    OUTLINED_FUNCTION_86();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *&v37.tx = sub_274858604;
    *&v37.ty = v11;
    *&v37.a = MEMORY[0x277D85DD0];
    *&v37.b = 1107296256;
    *&v37.c = sub_2748581CC;
    *&v37.d = &block_descriptor_33_2;
    v12 = _Block_copy(&v37);
    v13 = v10;

    [v7 animateWithDuration:v9 animations:v12 completion:v4 * 0.5];
    _Block_release(v12);
    _Block_release(v9);

    v14 = *&v2[v5];
  }

  else
  {
    v14 = 0;
  }

  *&v2[v5] = a1;
  v15 = a1;

  if (a1)
  {
    v16 = v15;
    [v16 setTranslatesAutoresizingMaskIntoConstraints_];
    [v16 setAlpha_];
    CGAffineTransformMakeScale(&v37, 0.5, 0.5);
    [v16 setTransform_];
    v17 = [v2 view];
    if (v17)
    {
      v18 = v17;
      [v17 addSubview_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_274A15450;
      v20 = [v16 centerXAnchor];
      v21 = [v2 view];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 centerXAnchor];

        v24 = [v20 constraintEqualToAnchor_];
        *(v19 + 32) = v24;
        v25 = [v16 centerYAnchor];
        v26 = [v2 view];
        if (v26)
        {
          v27 = v26;
          v28 = objc_opt_self();
          v29 = [v27 centerYAnchor];

          v30 = [v25 constraintEqualToAnchor_];
          *(v19 + 40) = v30;
          sub_27471CF08(0, &qword_280968040);
          v31 = sub_2749FCF74();

          [v28 activateConstraints_];

          v32 = objc_opt_self();
          OUTLINED_FUNCTION_86();
          v33 = swift_allocObject();
          *(v33 + 16) = v16;
          *&v37.tx = sub_2748585FC;
          *&v37.ty = v33;
          OUTLINED_FUNCTION_47_0();
          *&v37.b = 1107296256;
          OUTLINED_FUNCTION_2_2();
          v37.c = v34;
          *&v37.d = &block_descriptor_21_1;
          v35 = _Block_copy(&v37);
          v36 = v16;

          [v32 animateWithDuration:4 delay:v35 usingSpringWithDamping:0 initialSpringVelocity:v4 options:0.0 animations:0.6 completion:1.0];
          _Block_release(v35);

          return;
        }

LABEL_15:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_2748581CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_274858220(void *a1)
{
  [a1 setAlpha_];
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [a1 setTransform_];
}

id sub_27485827C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR___WFActivityProgressViewController_activityView;
  *&v4[v7] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v8 = OBJC_IVAR___WFActivityProgressViewController_successView;
  sub_27471CF08(0, &qword_280968030);
  v9 = OUTLINED_FUNCTION_4_20();
  v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  *&v4[v8] = v10;
  *&v4[OBJC_IVAR___WFActivityProgressViewController__contentView] = 0;
  *&v4[OBJC_IVAR___WFActivityProgressViewController__state] = 0;
  if (a2)
  {
    v11 = sub_2749FCD64();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = type metadata accessor for ActivityProgressViewController();
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v11, a3);

  return v12;
}

id sub_274858418(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___WFActivityProgressViewController_activityView;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v5 = OBJC_IVAR___WFActivityProgressViewController_successView;
  sub_27471CF08(0, &qword_280968030);
  v6 = OUTLINED_FUNCTION_4_20();
  v7 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  *&v2[v5] = v7;
  *&v2[OBJC_IVAR___WFActivityProgressViewController__contentView] = 0;
  *&v2[OBJC_IVAR___WFActivityProgressViewController__state] = 0;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for ActivityProgressViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

id sub_274858568(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__int128 *sub_274858650()
{
  if (qword_28159E660 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  return &xmmword_28159E668;
}

uint64_t static EnvironmentValues.LibraryMenuDataSourceKey.defaultValue.setter(uint64_t a1)
{
  if (qword_28159E660 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  OUTLINED_FUNCTION_10_3();
  v2 = OUTLINED_FUNCTION_44();
  sub_274858714(v2, v3);
  swift_endAccess();
  return sub_27472ECBC(a1, &qword_28096B5F8);
}

uint64_t sub_274858714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B5F8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t (*static EnvironmentValues.LibraryMenuDataSourceKey.defaultValue.modify())()
{
  if (qword_28159E660 != -1)
  {
    OUTLINED_FUNCTION_0_24();
  }

  OUTLINED_FUNCTION_10_3();
  return j__swift_endAccess;
}

uint64_t sub_2748587F4@<X0>(uint64_t a1@<X8>)
{
  sub_274858650();
  swift_beginAccess();
  return sub_274738558(&xmmword_28159E668, a1, &qword_28096B5F8);
}

uint64_t sub_274858858(uint64_t a1)
{
  sub_274858650();
  swift_beginAccess();
  sub_274858714(a1, &xmmword_28159E668);
  return swift_endAccess();
}

void (*EnvironmentValues.libraryMenuDataSource.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[15] = v1;
  v3[16] = sub_2747383FC();
  sub_2749FB4D4();
  return sub_274858934;
}

void sub_274858934(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_8_19();
    sub_274738558(v2 + 40, v2 + 80, &qword_28096B5F8);
    sub_2749FB4E4();
    OUTLINED_FUNCTION_7_16();
    sub_27472ECBC(v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_8_19();
    sub_2749FB4E4();
  }

  OUTLINED_FUNCTION_7_16();
  sub_27472ECBC(v5, v6);

  free(v2);
}

uint64_t sub_274858A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LibraryMenu(0);
  result = sub_274738558(v1 + *(v7 + 24), v11, &qword_28096B6F0);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_2749FD2D4();
    v10 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t LibraryMenu.init(tableItems:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LibraryMenu(0);
  v5 = a2 + v4[6];
  *v5 = swift_getKeyPath();
  v5[40] = 0;
  v6 = (a2 + v4[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B600);
  sub_2749FC5B4();
  *v6 = v10;
  v6[1] = v11;
  *a2 = a1;
  v7 = v4[5];
  v8 = sub_2749F9494();
  return __swift_storeEnumTagSinglePayload(a2 + v7, 1, 1, v8);
}

uint64_t LibraryMenu.body.getter()
{
  sub_274858DA4();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B608);
  OUTLINED_FUNCTION_7_16();
  sub_27472AB6C(v0, v1);
  sub_27485B1B8(&qword_28096B618, type metadata accessor for LibraryMenuItem);
  sub_27472AB6C(&qword_28096B620, &qword_28096B608);
  return sub_2749FC754();
}

uint64_t sub_274858DA4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B660);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_2749F9494();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  if (*v0 && (v10 = (v0 + *(type metadata accessor for LibraryMenu(0) + 28)), v12 = *v10, v11 = v10[1], v24 = v12, v25 = v11, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B6E8), sub_2749FC5C4(), v13 = sub_27472D918(v28), , !v13))
  {
    sub_274858A0C(&v24);
    v21 = v26;
    if (v26)
    {
      v22 = v27;
      __swift_project_boxed_opaque_existential_1(&v24, v26);
      v18 = (*(v22 + 8))(v9, v21, v22);
      __swift_destroy_boxed_opaque_existential_0(&v24);
    }

    else
    {
      sub_27472ECBC(&v24, &qword_28096B5F8);
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v14 = type metadata accessor for LibraryMenu(0);
    sub_274738558(v1 + *(v14 + 20), v4, &qword_28096B660);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      sub_27472ECBC(v4, &qword_28096B660);
      v15 = (v1 + *(v14 + 28));
      v17 = *v15;
      v16 = v15[1];
      v24 = v17;
      v25 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B6E8);
      sub_2749FC5C4();
      return v28;
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      sub_274858A0C(&v24);
      v19 = v26;
      if (v26)
      {
        v20 = v27;
        __swift_project_boxed_opaque_existential_1(&v24, v26);
        v18 = (*(v20 + 16))(v8, v19, v20);
        __swift_destroy_boxed_opaque_existential_0(&v24);
      }

      else
      {
        sub_27472ECBC(&v24, &qword_28096B5F8);
        v18 = MEMORY[0x277D84F90];
      }

      (*(v6 + 8))(v8, v5);
    }
  }

  return v18;
}

uint64_t sub_2748590C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2749FC744();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B6D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  if (*(*a1 + 56) == 1)
  {
    sub_2749FC734();
    (*(v5 + 32))(v13, v7, v4);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v14, 1, v4);
  type metadata accessor for LibraryMenuItem(0);
  sub_27485B1B8(&qword_28096B6D8, type metadata accessor for LibraryMenuItem);

  v15 = sub_2749FAD84();
  v17 = v16;
  sub_274738558(v13, v11, &qword_28096B6D0);
  sub_274738558(v11, a2, &qword_28096B6D0);
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B6E0) + 48));
  *v18 = v15;
  v18[1] = v17;

  sub_27472ECBC(v13, &qword_28096B6D0);

  return sub_27472ECBC(v11, &qword_28096B6D0);
}

uint64_t sub_27485932C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B678);
  v61 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v6 = &v59 - v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B680);
  MEMORY[0x28223BE20](v64);
  v62 = &v59 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B688);
  MEMORY[0x28223BE20](v67);
  v71 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B690);
  MEMORY[0x28223BE20](v9);
  v11 = &v59 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B698);
  MEMORY[0x28223BE20](v70);
  v65 = &v59 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B6A0);
  MEMORY[0x28223BE20](v63);
  v14 = &v59 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C020);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v59 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B6A8);
  MEMORY[0x28223BE20](v21 - 8);
  v69 = &v59 - v22;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D8E0);
  v68 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v77 = a1;
  v78 = a2;
  v75 = a1;
  v76 = a2;
  v74 = &v59 - v23;
  sub_2749FC584();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  v26 = v81;
  v25 = v82;
  if (!v83)
  {
    v62 = v9;
    v44 = a2[6];
    if ((v44 & 2) != 0)
    {
      sub_2749FA984();
      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    v50 = v74;
    v51 = sub_2749FA9C4();
    __swift_storeEnumTagSinglePayload(v20, v45, 1, v51);
    v52 = sub_274738558(v20, v18, &qword_28096C020);
    MEMORY[0x28223BE20](v52);
    *(&v59 - 2) = v50;
    sub_27472AB6C(&unk_28096DEF0, &unk_28096D8E0);

    v60 = v26;
    v34 = v66;
    sub_2749FC614();
    KeyPath = swift_getKeyPath();
    v54 = swift_allocObject();
    *(v54 + 16) = (v44 & 4) != 0;
    v55 = &v14[*(v63 + 36)];
    *v55 = KeyPath;
    v55[1] = sub_27485BAB4;
    v55[2] = v54;
    sub_274738558(v14, v11, &qword_28096B6A0);
    swift_storeEnumTagMultiPayload();
    sub_27485B75C();
    sub_27485B840();
    v56 = v65;
    sub_2749FB7B4();
    sub_274738558(v56, v71, &qword_28096B698);
    swift_storeEnumTagMultiPayload();
    sub_27485B6D0();
    sub_27472AB6C(&qword_28096B6C8, &qword_28096B678);
    v40 = v69;
    sub_2749FB7B4();
    sub_27485B6A8(v60, v25, 0);
    v41 = v74;
    sub_27472ECBC(v56, &qword_28096B698);
    sub_27472ECBC(v14, &qword_28096B6A0);
    v42 = v20;
    v43 = &qword_28096C020;
    goto LABEL_9;
  }

  if (v83 == 1)
  {
    sub_2749FD0A4();

    v27 = sub_2749FD094();
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    v28[2] = v27;
    v28[3] = v29;
    v28[4] = v26;
    v60 = v26;
    v59 = v25;
    sub_27485B994(v26, v25, 1u);

    v30 = sub_2749FD094();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = v29;
    v31[4] = v26;
    v31[5] = a1;
    v31[6] = a2;
    v32 = sub_2749FC6F4();
    v61 = v79;
    MEMORY[0x28223BE20](v32);
    *(&v59 - 2) = v74;
    sub_27472AB6C(&unk_28096DEF0, &unk_28096D8E0);

    v33 = v62;
    v34 = v66;
    sub_2749FC674();
    v35 = *(a2 + 48);
    v36 = swift_getKeyPath();
    v37 = swift_allocObject();
    *(v37 + 16) = (v35 & 4) != 0;
    v38 = (v33 + *(v64 + 36));
    *v38 = v36;
    v38[1] = sub_2747FF010;
    v38[2] = v37;
    sub_274738558(v33, v11, &qword_28096B680);
    swift_storeEnumTagMultiPayload();
    sub_27485B75C();
    sub_27485B840();
    v39 = v65;
    sub_2749FB7B4();
    sub_274738558(v39, v71, &qword_28096B698);
    swift_storeEnumTagMultiPayload();
    sub_27485B6D0();
    sub_27472AB6C(&qword_28096B6C8, &qword_28096B678);
    v40 = v69;
    v41 = v74;
    sub_2749FB7B4();

    sub_27485B6A8(v60, v59, 1u);
    sub_27472ECBC(v39, &qword_28096B698);
    v42 = v33;
    v43 = &qword_28096B680;
LABEL_9:
    sub_27472ECBC(v42, v43);
    v49 = v73;
    goto LABEL_10;
  }

  v46 = a2[3];
  v79 = a2[2];
  v80 = v46;
  MEMORY[0x28223BE20](v24);
  *(&v59 - 2) = v26;
  type metadata accessor for LibraryMenu(0);
  sub_27485B1B8(&qword_2815A0CC8, type metadata accessor for LibraryMenu);
  sub_27475D0D0();

  sub_2749FBE64();
  sub_27485B6A8(v26, v25, 2u);
  v47 = v61;
  v48 = v72;
  (*(v61 + 16))(v71, v6, v72);
  swift_storeEnumTagMultiPayload();
  sub_27485B6D0();
  sub_27472AB6C(&qword_28096B6C8, &qword_28096B678);
  v40 = v69;
  sub_2749FB7B4();
  (*(v47 + 8))(v6, v48);
  v49 = v73;
  v41 = v74;
  v34 = v66;
LABEL_10:
  v57 = v68;
  sub_27485B924(v40, v49);
  return (*(v57 + 8))(v41, v34);
}

uint64_t sub_274859F7C@<X0>(uint64_t a1@<X8>)
{
  sub_27475D0D0();

  result = sub_2749FBEE4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_274859FE8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_2749FC534();
  *a1 = result;
  return result;
}

uint64_t sub_27485A02C(unsigned __int8 *a1)
{
  sub_27485A890(*a1);

  return sub_27485A348();
}

uint64_t sub_27485A080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096D8E0);
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a2, a1, v4);
}

uint64_t sub_27485A0F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LibraryMenu(0);
  v5 = a2 + v4[6];
  *v5 = swift_getKeyPath();
  v5[40] = 0;
  v6 = (a2 + v4[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B600);
  sub_2749FC5B4();

  *v6 = a1;
  v6[1] = 0;
  *a2 = 0;
  v7 = v4[5];
  v8 = sub_2749F9494();
  return __swift_storeEnumTagSinglePayload(a2 + v7, 1, 1, v8);
}

double sub_27485A240@<D0>(uint64_t a1@<X8>)
{
  sub_27485A2D0();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_27485A2D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();
}

uint64_t sub_27485A348()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

void (*sub_27485A3C8(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_2749FA8F4();
  return sub_2747AA744;
}

uint64_t sub_27485A458(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B630);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return sub_27485A598(v4);
}

uint64_t sub_27485A52C()
{
  OUTLINED_FUNCTION_10_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B628);
  sub_2749FA8D4();
  return swift_endAccess();
}

uint64_t sub_27485A598(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B630);
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  (*(v4 + 16))(&v8 - v6, a1, v2);
  OUTLINED_FUNCTION_10_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B628);
  sub_2749FA8E4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_27485A6BC(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B630);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_10_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B628);
  sub_2749FA8D4();
  swift_endAccess();
  return sub_27485A7D8;
}

void sub_27485A7D8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    OUTLINED_FUNCTION_7_16();
    v7();
    sub_27485A598(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_27485A598(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_27485A890(uint64_t a1)
{
  sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  result = (*(v1 + 24))(a1);
  *(v1 + 16) = a1 & 1;
  return result;
}

uint64_t (*sub_27485AA9C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_27485AAC8;
}

uint64_t LibraryMenuItem.ToggleModel.__allocating_init(isSelected:action:)(char a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_3_32();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t LibraryMenuItem.ToggleModel.init(isSelected:action:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t LibraryMenuItem.ToggleModel.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_3_32();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t LibraryMenuItem.__allocating_init(title:symbolName:attributes:hasSeparator:variant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, char a6)
{
  v12 = swift_allocObject();
  LibraryMenuItem.init(title:symbolName:attributes:hasSeparator:variant:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t LibraryMenuItem.init(title:symbolName:attributes:hasSeparator:variant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, char a6)
{
  v7 = *a5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 48) = v7;
  *(v6 + 56) = a6;
  OUTLINED_FUNCTION_10_3();
  sub_2749FA8C4();
  swift_endAccess();
  return v6;
}

WorkflowUI::LibraryMenuItem::Attributes sub_27485AD0C@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = LibraryMenuItem.Attributes.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_27485AD4C@<X0>(uint64_t *a1@<X8>)
{
  result = LibraryMenuItem.Attributes.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_27485AD74()
{
  sub_2749FCE24();
  sub_2749FCE24();
  MEMORY[0x277C5FB60](*(v0 + 48));
  return sub_2749FDE14();
}

uint64_t LibraryMenuItem.deinit()
{

  v1 = OBJC_IVAR____TtC10WorkflowUI15LibraryMenuItem__variant;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B628);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t LibraryMenuItem.__deallocating_deinit()
{
  LibraryMenuItem.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_27485AECC()
{
  sub_2749FDDF4();
  sub_27485AD74();
  return sub_2749FDE44();
}

uint64_t sub_27485AF0C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LibraryMenuItem(0);
  result = sub_2749FA874();
  *a1 = result;
  return result;
}

uint64_t sub_27485AF94()
{
  sub_2749FDDF4();
  sub_27485AD74();
  return sub_2749FDE44();
}

unint64_t sub_27485B018()
{
  result = qword_28096B638;
  if (!qword_28096B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B638);
  }

  return result;
}

unint64_t sub_27485B070()
{
  result = qword_28096B640;
  if (!qword_28096B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B640);
  }

  return result;
}

unint64_t sub_27485B0C4()
{
  result = qword_28096B648;
  if (!qword_28096B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B648);
  }

  return result;
}

unint64_t sub_27485B11C()
{
  result = qword_28096B650;
  if (!qword_28096B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B650);
  }

  return result;
}

uint64_t sub_27485B1B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of LibraryMenuDataSource.createMenuItems(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 16))();
}

_BYTE *_s24LibraryMenuDataSourceKeyVwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_27485B538()
{
  result = qword_28096B668;
  if (!qword_28096B668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B670);
    sub_27472AB6C(&qword_28096B620, &qword_28096B608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B668);
  }

  return result;
}

uint64_t sub_27485B5E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_27485B628(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27485B6A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_27485B6D0()
{
  result = qword_28096B6B0;
  if (!qword_28096B6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B698);
    sub_27485B75C();
    sub_27485B840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B6B0);
  }

  return result;
}

unint64_t sub_27485B75C()
{
  result = qword_28096B6B8;
  if (!qword_28096B6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B6A0);
    sub_27472AB6C(&qword_28096AB80, &qword_28096AB88);
    sub_27472AB6C(&unk_28096EC00, &qword_280969988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B6B8);
  }

  return result;
}

unint64_t sub_27485B840()
{
  result = qword_28096B6C0;
  if (!qword_28096B6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B680);
    sub_27472AB6C(&qword_28096AB90, &qword_28096AB98);
    sub_27472AB6C(&unk_28096EC00, &qword_280969988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B6C0);
  }

  return result;
}

uint64_t sub_27485B924(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B6A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27485B994(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 == 2)
  {
  }

  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_27485B9E8()
{
  result = qword_28096B6F8;
  if (!qword_28096B6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B6A8);
    sub_27485B6D0();
    sub_27472AB6C(&qword_28096B6C8, &qword_28096B678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B6F8);
  }

  return result;
}

uint64_t SmartShortcutPickerStaccatoSuggestionsDataSource.__allocating_init(style:)()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_78();
  SmartShortcutPickerStaccatoSuggestionsDataSource.init(style:)(v1);
  return v0;
}

uint64_t SmartShortcutPickerStaccatoSuggestionsDataSource.sections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_1();
  sub_2749FA904();

  return v1;
}

uint64_t sub_27485BB64@<X0>(uint64_t *a1@<X8>)
{
  result = SmartShortcutPickerStaccatoSuggestionsDataSource.sections.getter();
  *a1 = result;
  return result;
}

uint64_t SmartShortcutPickerStaccatoSuggestionsDataSource.sections.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

void (*SmartShortcutPickerStaccatoSuggestionsDataSource.sections.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_2749FA8F4();
  return sub_2747AA744;
}

uint64_t SmartShortcutPickerStaccatoSuggestionsDataSource.$sections.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  sub_2749FA8D4();
  return swift_endAccess();
}

uint64_t sub_27485BD30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FF20);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return SmartShortcutPickerStaccatoSuggestionsDataSource.$sections.setter(v4);
}

uint64_t SmartShortcutPickerStaccatoSuggestionsDataSource.$sections.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FF20);
  OUTLINED_FUNCTION_43();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  (*(v4 + 16))(&v8 - v6, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  sub_2749FA8E4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*SmartShortcutPickerStaccatoSuggestionsDataSource.$sections.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FF20);
  v3[4] = v4;
  OUTLINED_FUNCTION_27(v4);
  v3[5] = v5;
  v7 = *(v6 + 64);
  v3[6] = __swift_coroFrameAllocStub(v7);
  v3[7] = __swift_coroFrameAllocStub(v7);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  sub_2749FA8D4();
  swift_endAccess();
  return sub_27485C04C;
}

void sub_27485C04C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    SmartShortcutPickerStaccatoSuggestionsDataSource.$sections.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    SmartShortcutPickerStaccatoSuggestionsDataSource.$sections.setter(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t SmartShortcutPickerStaccatoSuggestionsDataSource.init(style:)(const void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  OUTLINED_FUNCTION_43();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = OBJC_IVAR____TtC10WorkflowUI48SmartShortcutPickerStaccatoSuggestionsDataSource__sections;
  v11[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B710);
  sub_2749FA8C4();
  (*(v5 + 32))(v1 + v9, v8, v3);
  memcpy((v1 + OBJC_IVAR____TtC10WorkflowUI48SmartShortcutPickerStaccatoSuggestionsDataSource_style), a1, 0x59uLL);
  return v1;
}

uint64_t SmartShortcutPickerStaccatoSuggestionsDataSource.load()()
{
  OUTLINED_FUNCTION_79();
  v1[26] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960);
  v1[27] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v1[28] = v2;
  *v2 = v3;
  v2[1] = sub_27485C2E4;

  return sub_27485C714((v1 + 10));
}

uint64_t sub_27485C2E4()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v2 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v3 = v2;
  *(v4 + 232) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_27485C3E4()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 208);
  v2 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v2;
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 57) = *(v0 + 121);
  sub_2749FD0E4();
  v3 = OUTLINED_FUNCTION_39_8();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  sub_2749FD0A4();

  sub_2747B24E0(v0 + 16, v0 + 144);
  v7 = sub_2749FD094();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v1;
  v10 = *(v0 + 32);
  *(v8 + 40) = *(v0 + 16);
  *(v8 + 56) = v10;
  *(v8 + 72) = *(v0 + 48);
  *(v8 + 81) = *(v0 + 57);
  sub_27479930C();
  *(v0 + 240) = v11;
  v12 = swift_task_alloc();
  *(v0 + 248) = v12;
  *v12 = v0;
  v12[1] = sub_27485C550;

  return MEMORY[0x282200460]();
}

uint64_t sub_27485C550()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v1 = *v0;
  OUTLINED_FUNCTION_8_1();
  *v2 = v1;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_27485C654()
{
  OUTLINED_FUNCTION_79();
  sub_2747D21CC(v0 + 16);

  OUTLINED_FUNCTION_21_12();

  return v1();
}

uint64_t sub_27485C6B8()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_27485C714(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_27485C734, 0, 0);
}

uint64_t sub_27485C734()
{
  OUTLINED_FUNCTION_79();
  v0[4] = OBJC_IVAR____TtC10WorkflowUI48SmartShortcutPickerStaccatoSuggestionsDataSource_style;
  v0[5] = sub_2749FD0A4();
  v0[6] = sub_2749FD094();
  OUTLINED_FUNCTION_78();
  v2 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_27485C7D0, v2, v1);
}

uint64_t sub_27485C7D0()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  *(v0 + 112) = *(v1 + v2 + 88);
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_27485C840()
{
  OUTLINED_FUNCTION_79();
  if (*(v0 + 112))
  {
    if (*(v0 + 112) == 1)
    {
      v1 = swift_task_alloc();
      *(v0 + 64) = v1;
      *v1 = v0;
      v1[1] = sub_27485CB98;

      return sub_27485D358();
    }

    else
    {
      v5 = swift_task_alloc();
      *(v0 + 80) = v5;
      *v5 = v0;
      v5[1] = sub_27485CCCC;

      return sub_27485E8B8();
    }
  }

  else
  {
    *(v0 + 56) = sub_2749FD094();
    OUTLINED_FUNCTION_78();
    v4 = sub_2749FD044();

    return MEMORY[0x2822009F8](sub_27485C9A4, v4, v3);
  }
}

uint64_t sub_27485C9A4()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_27485CA04()
{
  OUTLINED_FUNCTION_44_4();
  v15 = v0;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v1 = qword_28159E448;
  v2 = sub_2749FCD64();
  v3 = sub_2749FCD64();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v7 = v6;

  v8 = [objc_allocWithZone(MEMORY[0x277D79FC8]) init];
  v9 = [objc_allocWithZone(MEMORY[0x277D79FD0]) initWithImage_];

  v10 = *(v0 + 16);
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = v5;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  v14 = MEMORY[0x277D84FA0];
  v11 = sub_274947AD8(MEMORY[0x277D84F90], &v14);

  *(v10 + 48) = v11;
  *(v10 + 56) = 0;
  OUTLINED_FUNCTION_21_12();

  return v12();
}

uint64_t sub_27485CB98()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_21_1();
  v5 = v4;
  OUTLINED_FUNCTION_9_15();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 96) = v3;
    OUTLINED_FUNCTION_30_0();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_27485CCCC()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_21_1();
  v5 = v4;
  OUTLINED_FUNCTION_9_15();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v8 = v7;
  *(v5 + 88) = v0;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 104) = v3;
    OUTLINED_FUNCTION_30_0();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_27485CE00()
{
  OUTLINED_FUNCTION_44_4();
  v16 = v0;
  v1 = *(v0 + 96);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v2 = sub_2749FCD64();
  v3 = sub_2749FCD64();

  v5 = OUTLINED_FUNCTION_52(v4, sel_localizedStringForKey_value_table_);

  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;

  v9 = [objc_allocWithZone(MEMORY[0x277D79FC8]) init];
  v10 = [objc_allocWithZone(MEMORY[0x277D79FD0]) initWithImage_];

  v11 = *(v0 + 16);
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = v6;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  v15 = MEMORY[0x277D84FA0];
  v12 = sub_274947AD8(v1, &v15);

  *(v11 + 48) = v12;
  *(v11 + 56) = 0;
  OUTLINED_FUNCTION_21_12();

  return v13();
}

uint64_t sub_27485CF8C()
{
  OUTLINED_FUNCTION_44_4();
  v18 = v0;
  v1 = *(v0 + 104);
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  OUTLINED_FUNCTION_47_3();
  v2 = sub_2749FCD64();
  OUTLINED_FUNCTION_47_3();
  v3 = sub_2749FCD64();

  v5 = OUTLINED_FUNCTION_52(v4, sel_localizedStringForKey_value_table_);

  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;

  v9 = [objc_opt_self() clearColor];
  v10 = [objc_allocWithZone(MEMORY[0x277D79FB8]) initWithColor_];

  v11 = objc_allocWithZone(MEMORY[0x277D7A158]);
  v12 = sub_27491A250(0x6C7562746867696CLL, 0xE900000000000062, v10);
  v13 = *(v0 + 16);
  *(v13 + 16) = 0;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 24) = v6;
  *(v13 + 32) = v8;
  *(v13 + 40) = v12;
  v17 = MEMORY[0x277D84FA0];
  v14 = sub_274947AD8(v1, &v17);

  *(v13 + 48) = v14;
  *(v13 + 56) = 0;
  OUTLINED_FUNCTION_21_12();

  return v15();
}

uint64_t sub_27485D148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_2749FD0A4();
  v5[12] = sub_2749FD094();
  v7 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_27485D1E0, v7, v6);
}

uint64_t sub_27485D1E0()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 88);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A58);
  v2 = swift_allocObject();
  v2[1] = xmmword_274A0EF10;
  v4 = v1[1];
  v3 = v1[2];
  v5 = *v1;
  *(v2 + 73) = *(v1 + 41);
  v2[3] = v4;
  v2[4] = v3;
  v2[2] = v5;
  sub_2747B24E0(v1, v0 + 16);
  SmartShortcutPickerStaccatoSuggestionsDataSource.sections.setter();
  OUTLINED_FUNCTION_48_0();

  return v6();
}

uint64_t sub_27485D2A0()
{
  OUTLINED_FUNCTION_28_10();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_2747ED3A8;

  return sub_27485D148(v3, v4, v5, v6, (v0 + 5));
}

uint64_t sub_27485D358()
{
  OUTLINED_FUNCTION_79();
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681D0);
  v1[3] = OUTLINED_FUNCTION_56_6();
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v2 = type metadata accessor for SmartShortcutPickerEntry();
  v1[8] = v2;
  OUTLINED_FUNCTION_27(v2);
  v1[9] = v3;
  v1[10] = OUTLINED_FUNCTION_56_6();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  sub_2749FD0A4();
  v1[21] = sub_2749FD094();
  OUTLINED_FUNCTION_78();
  v5 = sub_2749FD044();
  v1[22] = v5;
  v1[23] = v4;

  return MEMORY[0x2822009F8](sub_27485D50C, v5, v4);
}

uint64_t sub_27485D50C()
{
  OUTLINED_FUNCTION_79();
  sub_27485FA18(*(v0 + 160));
  sub_274763E3C(0, 1, 1, MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_49_5();
  if (v6)
  {
    v20 = OUTLINED_FUNCTION_14_9(v5);
    sub_274763E3C(v20, v21, v22, v23);
    v4 = v1;
  }

  v7 = OUTLINED_FUNCTION_43_3(v1, v2, v3, v4);
  *(v0 + 288) = v8;
  OUTLINED_FUNCTION_32_9(v7, v9, v10);
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_34_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  *(v0 + 208) = v11;
  *v11 = v12;
  v11[1] = sub_27485D620;
  OUTLINED_FUNCTION_2_25();

  return sub_27494C534(v13, v14, v15, v16, v17, v18, 0, 0);
}

uint64_t sub_27485D620()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  OUTLINED_FUNCTION_9_15();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485E3F0;
  }

  else
  {
    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485D72C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27485D72C()
{
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_10_17(v2, v3, v4, v0[8]);
  v5 = OUTLINED_FUNCTION_32_1();
  sub_27483585C(v5, v6);
  OUTLINED_FUNCTION_36_10();
  v8 = v0[24];
  if (v1 >= v7 >> 1)
  {
    v12 = OUTLINED_FUNCTION_5_24(v7);
    sub_274763E3C(v12, v13, v14, v8);
    v8 = v15;
  }

  OUTLINED_FUNCTION_45_6(v0[19]);
  OUTLINED_FUNCTION_17_13();
  v0[27] = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[28] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_22_13(v9);

  return sub_27485FEC8();
}

uint64_t sub_27485D7FC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  OUTLINED_FUNCTION_9_15();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485E46C;
  }

  else
  {
    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485D908;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27485D908()
{
  OUTLINED_FUNCTION_44_4();
  v2 = v0[27];
  OUTLINED_FUNCTION_10_17(v3, v4, v5, v0[8]);
  v6 = OUTLINED_FUNCTION_32_1();
  sub_27483585C(v6, v7);
  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  v10 = v0[27];
  if (v9 >= v8 >> 1)
  {
    v30 = OUTLINED_FUNCTION_14_9(v8);
    sub_274763E3C(v30, v31, v32, v10);
    v10 = v33;
  }

  v11 = v0[25];
  v12 = v0[16];
  OUTLINED_FUNCTION_45_6(v0[17]);
  *(v10 + 16) = v9 + 1;
  sub_2748605C4(v12, v10 + v1 + v11 * v9);
  v0[29] = v10;
  if (qword_280966BA8 != -1)
  {
    OUTLINED_FUNCTION_27_0();
  }

  v0[30] = qword_280989158;
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v13 = OUTLINED_FUNCTION_55_3();

  if (v13)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_34_1();
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    v0[31] = v14;
    *v14 = v15;
    v14[1] = sub_27485DB78;
    OUTLINED_FUNCTION_6_19();
LABEL_9:
    OUTLINED_FUNCTION_1_32();
    v26 = 0;
    goto LABEL_11;
  }

  v0[32] = v10;
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v16 = OUTLINED_FUNCTION_55_3();

  if (v16)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_34_1();
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    v0[33] = v17;
    *v17 = v18;
    OUTLINED_FUNCTION_3_33(v17);
    goto LABEL_9;
  }

  v0[34] = v10;
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_48_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[35] = v27;
  *v27 = v28;
  OUTLINED_FUNCTION_0_25(v27);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_33_9();
LABEL_11:

  return sub_27494C534(v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_27485DB78()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  OUTLINED_FUNCTION_9_15();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485E680;
  }

  else
  {
    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485DC84;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27485DC84()
{
  OUTLINED_FUNCTION_44_4();
  v1 = *(v0 + 232);
  OUTLINED_FUNCTION_10_17(v2, v3, v4, *(v0 + 64));
  v5 = OUTLINED_FUNCTION_32_1();
  sub_27483585C(v5, v6);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v0 + 232);
  if (v8 >= v7 >> 1)
  {
    v27 = OUTLINED_FUNCTION_14_9(v7);
    sub_274763E3C(v27, v28, v29, v9);
    v9 = v30;
  }

  v10 = *(v0 + 200);
  v11 = *(v0 + 112);
  v12 = (*(v0 + 288) + 32) & ~*(v0 + 288);
  sub_274835920(*(v0 + 120));
  *(v9 + 16) = v8 + 1;
  sub_2748605C4(v11, v9 + v12 + v10 * v8);
  *(v0 + 256) = v9;
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v13 = sub_27477DEAC();

  if (v13)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_34_1();
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    *(v0 + 264) = v14;
    *v14 = v15;
    OUTLINED_FUNCTION_3_33(v14);
    OUTLINED_FUNCTION_1_32();
    v23 = 0;
  }

  else
  {
    *(v0 + 272) = v9;
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_48_4();
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    *(v0 + 280) = v24;
    *v24 = v25;
    OUTLINED_FUNCTION_0_25(v24);
    OUTLINED_FUNCTION_1_32();
    OUTLINED_FUNCTION_33_9();
  }

  return sub_27494C534(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_27485DE5C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  OUTLINED_FUNCTION_9_15();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485E7E0;
  }

  else
  {
    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485DF68;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27485DF68()
{
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_10_17(v2, v3, v4, v0[8]);
  v5 = OUTLINED_FUNCTION_32_1();
  sub_27483585C(v5, v6);
  OUTLINED_FUNCTION_36_10();
  v8 = v0[32];
  if (v1 >= v7 >> 1)
  {
    v21 = OUTLINED_FUNCTION_5_24(v7);
    sub_274763E3C(v21, v22, v23, v8);
    v8 = v24;
  }

  OUTLINED_FUNCTION_45_6(v0[13]);
  OUTLINED_FUNCTION_17_13();
  v0[34] = v8;
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_48_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[35] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_0_25(v9);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_33_9();
  OUTLINED_FUNCTION_54_7();

  return sub_27494C534(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_27485E084()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  OUTLINED_FUNCTION_9_15();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485E190;
  }

  else
  {
    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485E29C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27485E3F0()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_11_18(v1, v2, v3, v0[8]);
  v0[27] = v0[24];
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[28] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_22_13(v4);

  return sub_27485FEC8();
}

uint64_t sub_27485E46C()
{
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_11_18(v1, v2, v3, v0[8]);
  v4 = v0[27];
  v0[29] = v4;
  if (qword_280966BA8 != -1)
  {
    OUTLINED_FUNCTION_27_0();
  }

  v0[30] = qword_280989158;
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v5 = OUTLINED_FUNCTION_31_13();

  if (v5)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_34_1();
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    v0[31] = v6;
    *v6 = v7;
    v6[1] = sub_27485DB78;
    OUTLINED_FUNCTION_6_19();
LABEL_7:
    OUTLINED_FUNCTION_1_32();
    v18 = 0;
    goto LABEL_9;
  }

  v0[32] = v4;
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = OUTLINED_FUNCTION_31_13();

  if (v8)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_34_1();
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    v0[33] = v9;
    *v9 = v10;
    OUTLINED_FUNCTION_3_33(v9);
    goto LABEL_7;
  }

  v0[34] = v4;
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_34_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[35] = v19;
  *v19 = v20;
  OUTLINED_FUNCTION_0_25(v19);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_33_9();
LABEL_9:

  return sub_27494C534(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_27485E680()
{
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_11_18(v1, v2, v3, v0[8]);
  v4 = v0[29];
  v0[32] = v4;
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v5 = OUTLINED_FUNCTION_31_13();

  if (v5)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_34_1();
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    v0[33] = v6;
    *v6 = v7;
    OUTLINED_FUNCTION_3_33(v6);
    OUTLINED_FUNCTION_1_32();
    v15 = 0;
  }

  else
  {
    v0[34] = v4;
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    OUTLINED_FUNCTION_34_1();
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    v0[35] = v16;
    *v16 = v17;
    OUTLINED_FUNCTION_0_25(v16);
    OUTLINED_FUNCTION_1_32();
    OUTLINED_FUNCTION_33_9();
  }

  return sub_27494C534(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_27485E7E0()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_11_18(v1, v2, v3, v0[8]);
  v0[34] = v0[32];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_48_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[35] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_0_25(v4);
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_33_9();

  return sub_27494C534(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_27485E8B8()
{
  OUTLINED_FUNCTION_79();
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681D0);
  v1[3] = OUTLINED_FUNCTION_56_6();
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v2 = type metadata accessor for SmartShortcutPickerEntry();
  v1[8] = v2;
  OUTLINED_FUNCTION_27(v2);
  v1[9] = v3;
  v1[10] = OUTLINED_FUNCTION_56_6();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  sub_2749FD0A4();
  v1[21] = sub_2749FD094();
  OUTLINED_FUNCTION_78();
  v5 = sub_2749FD044();
  v1[22] = v5;
  v1[23] = v4;

  return MEMORY[0x2822009F8](sub_27485EA6C, v5, v4);
}

uint64_t sub_27485EA6C()
{
  OUTLINED_FUNCTION_79();
  sub_27485FA18(*(v0 + 160));
  sub_274763E3C(0, 1, 1, MEMORY[0x277D84F90]);
  OUTLINED_FUNCTION_49_5();
  if (v6)
  {
    v21 = OUTLINED_FUNCTION_14_9(v5);
    sub_274763E3C(v21, v22, v23, v24);
    v4 = v1;
  }

  v7 = OUTLINED_FUNCTION_43_3(v1, v2, v3, v4);
  *(v0 + 280) = v8;
  OUTLINED_FUNCTION_32_9(v7, v9, v10);
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_34_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  *(v0 + 208) = v11;
  *v11 = v12;
  v11[1] = sub_27485EB7C;
  OUTLINED_FUNCTION_1_32();

  return sub_27494C534(v13, v14, v15, v16, v17, v18, v19, 0);
}

uint64_t sub_27485EB7C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  OUTLINED_FUNCTION_9_15();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485F61C;
  }

  else
  {
    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485EC88;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27485EC88()
{
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_10_17(v2, v3, v4, v0[8]);
  v5 = OUTLINED_FUNCTION_32_1();
  sub_27483585C(v5, v6);
  OUTLINED_FUNCTION_36_10();
  v8 = v0[24];
  if (v1 >= v7 >> 1)
  {
    v21 = OUTLINED_FUNCTION_5_24(v7);
    sub_274763E3C(v21, v22, v23, v8);
    v8 = v24;
  }

  OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_45_6(v0[19]);
  OUTLINED_FUNCTION_17_13();
  v0[27] = v8;
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_34_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[28] = v9;
  *v9 = v10;
  v9[1] = sub_27485EDAC;
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_54_7();

  return sub_27494C534(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_27485EDAC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  OUTLINED_FUNCTION_9_15();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485F6F8;
  }

  else
  {
    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485EEB8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27485EEB8()
{
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_10_17(v2, v3, v4, v0[8]);
  v5 = OUTLINED_FUNCTION_32_1();
  sub_27483585C(v5, v6);
  OUTLINED_FUNCTION_36_10();
  v8 = v0[27];
  if (v1 >= v7 >> 1)
  {
    v12 = OUTLINED_FUNCTION_5_24(v7);
    sub_274763E3C(v12, v13, v14, v8);
    v8 = v15;
  }

  OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_45_6(v0[17]);
  OUTLINED_FUNCTION_17_13();
  v0[29] = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[30] = v9;
  *v9 = v10;
  OUTLINED_FUNCTION_23_11(v9);

  return sub_27485FEC8();
}

uint64_t sub_27485EF88()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  OUTLINED_FUNCTION_9_15();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485F778;
  }

  else
  {
    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485F094;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27485F094()
{
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_10_17(v2, v3, v4, v0[8]);
  v5 = OUTLINED_FUNCTION_32_1();
  sub_27483585C(v5, v6);
  OUTLINED_FUNCTION_36_10();
  v8 = v0[29];
  if (v1 >= v7 >> 1)
  {
    v21 = OUTLINED_FUNCTION_5_24(v7);
    sub_274763E3C(v21, v22, v23, v8);
    v8 = v24;
  }

  OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_45_6(v0[15]);
  OUTLINED_FUNCTION_17_13();
  v0[31] = v8;
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_34_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[32] = v9;
  *v9 = v10;
  v9[1] = sub_27485F19C;
  OUTLINED_FUNCTION_6_19();
  OUTLINED_FUNCTION_1_32();
  OUTLINED_FUNCTION_54_7();

  return sub_27494C534(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_27485F19C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  OUTLINED_FUNCTION_9_15();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485F838;
  }

  else
  {
    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485F2A8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27485F2A8()
{
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_10_17(v2, v3, v4, v0[8]);
  v5 = OUTLINED_FUNCTION_32_1();
  sub_27483585C(v5, v6);
  OUTLINED_FUNCTION_36_10();
  v8 = v0[31];
  if (v1 >= v7 >> 1)
  {
    v21 = OUTLINED_FUNCTION_5_24(v7);
    sub_274763E3C(v21, v22, v23, v8);
    v8 = v24;
  }

  OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_45_6(v0[13]);
  OUTLINED_FUNCTION_17_13();
  v0[33] = v8;
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_34_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[34] = v9;
  *v9 = v10;
  v9[1] = sub_27485F3BC;
  OUTLINED_FUNCTION_4_21();
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_54_7();

  return sub_27494C534(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_27485F3BC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  OUTLINED_FUNCTION_9_15();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485F90C;
  }

  else
  {
    v7 = *(v3 + 176);
    v8 = *(v3 + 184);
    v9 = sub_27485F4C8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_27485F61C()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_11_18(v1, v2, v3, v0[8]);
  v0[27] = v0[24];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_34_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[28] = v4;
  *v4 = v5;
  v4[1] = sub_27485EDAC;
  OUTLINED_FUNCTION_1_32();

  return sub_27494C534(v6, v7, v8, v9, v10, v11, v12, 0);
}

uint64_t sub_27485F6F8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_11_18(v1, v2, v3, v0[8]);
  v0[29] = v0[27];
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[30] = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_23_11(v4);

  return sub_27485FEC8();
}

uint64_t sub_27485F778()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_11_18(v1, v2, v3, v0[8]);
  v0[31] = v0[29];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_34_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[32] = v4;
  *v4 = v5;
  v4[1] = sub_27485F19C;
  OUTLINED_FUNCTION_6_19();
  OUTLINED_FUNCTION_1_32();

  return sub_27494C534(v6, v7, v8, v9, v10, v11, v12, 0);
}

uint64_t sub_27485F838()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_11_18(v1, v2, v3, v0[8]);
  v0[33] = v0[31];
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_34_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  v0[34] = v4;
  *v4 = v5;
  v4[1] = sub_27485F3BC;
  OUTLINED_FUNCTION_4_21();
  OUTLINED_FUNCTION_42_6();

  return sub_27494C534(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_27485FA18@<X0>(char *a1@<X8>)
{
  v44 = a1;
  v43 = sub_2749FA0F4();
  OUTLINED_FUNCTION_43();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = [objc_opt_self() sharedRegistry];
  v7 = [v6 createActionWithIdentifier:*MEMORY[0x277D7CDB8] serializedParameters:0];

  v42 = v7;
  v8 = [v7 identifier];
  v9 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v40 = v10;
  v41 = v9;

  v11 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v38 = v12;
  v39 = v11;
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v13 = qword_28159E448;
  v14 = sub_2749FCD64();
  v15 = sub_2749FCD64();

  v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

  v17 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v19 = v18;

  sub_2749FCE14();
  v20 = sub_2749FCD64();
  v21 = sub_2749FCD64();

  v22 = [v13 localizedStringForKey:v20 value:v21 table:0];

  v23 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v25 = v24;

  v45[0] = v17;
  v45[1] = v19;
  v45[2] = v23;
  v45[3] = v25;
  strcpy(&v45[4], "WFSelectedApp");
  HIWORD(v45[5]) = -4864;
  strcpy(&v45[6], "WFSelectedApp");
  HIWORD(v45[7]) = -4864;
  memset(&v45[8], 0, 40);
  v45[13] = 0xD000000000000014;
  v26 = MEMORY[0x277D84F90];
  v45[14] = 0x8000000274A2FE70;
  v45[15] = MEMORY[0x277D84F90];
  sub_274860690(v45);
  v46[136] = 0;
  memcpy(&v46[7], v45, 0x81uLL);
  v47[0] = v41;
  v47[1] = v40;
  v47[2] = v39;
  v47[3] = v38;
  memset(&v47[4], 0, 17);
  memcpy(&v47[6] + 1, v46, 0x88uLL);
  sub_274754670(v47);
  sub_2747B975C();
  v27 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_];
  *v5 = sub_2747B931C(v27, [objc_allocWithZone(MEMORY[0x277D79E20]) initWithSystemColor_]);
  v28 = *MEMORY[0x277D7D600];
  sub_2749FA0E4();
  OUTLINED_FUNCTION_9();
  (*(v29 + 104))(v5, v28);
  v30 = v43;
  (*(v2 + 104))(v5, *MEMORY[0x277D7D608], v43);
  v31 = [objc_opt_self() clearBackground];
  v32 = objc_allocWithZone(MEMORY[0x277D7A158]);
  v33 = sub_27491A250(0x687361642E707061, 0xEA00000000006465, v31);
  v34 = v44;
  memcpy(v44, v47, 0xB9uLL);
  v35 = type metadata accessor for SmartShortcutPickerEntry();
  (*(v2 + 16))(&v34[v35[5]], v5, v30);

  *&v34[v35[6]] = v33;
  result = (*(v2 + 8))(v5, v30);
  *&v34[v35[7]] = v26;
  return result;
}

uint64_t sub_27485FEC8()
{
  OUTLINED_FUNCTION_79();
  v0[2] = v1;
  sub_2749FD0A4();
  v0[3] = sub_2749FD094();
  OUTLINED_FUNCTION_78();
  v3 = sub_2749FD044();
  v0[4] = v3;
  v0[5] = v2;

  return MEMORY[0x2822009F8](sub_27485FF58, v3, v2);
}

uint64_t sub_27485FF58()
{
  OUTLINED_FUNCTION_79();
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  OUTLINED_FUNCTION_34_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_16();
  *(v0 + 48) = v1;
  *v1 = v2;
  v1[1] = sub_274860028;
  OUTLINED_FUNCTION_2_25();

  return sub_27494C534(v3, v4, v5, v6, v7, v8, 0, 0);
}

uint64_t sub_274860028()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_9_15();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 56) = v0;

  v5 = *(v2 + 40);
  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_2748601B0;
  }

  else
  {
    v7 = sub_274860158;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_274860158()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_21_12();

  return v0();
}

uint64_t sub_2748601B0()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t SmartShortcutPickerStaccatoSuggestionsDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI48SmartShortcutPickerStaccatoSuggestionsDataSource__sections;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_16_0(OBJC_IVAR____TtC10WorkflowUI48SmartShortcutPickerStaccatoSuggestionsDataSource_style);
  return v0;
}

uint64_t SmartShortcutPickerStaccatoSuggestionsDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI48SmartShortcutPickerStaccatoSuggestionsDataSource__sections;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B708);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_16_0(OBJC_IVAR____TtC10WorkflowUI48SmartShortcutPickerStaccatoSuggestionsDataSource_style);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_27486033C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2747ED3A8;

  return SmartShortcutPickerStaccatoSuggestionsDataSource.load()();
}

unint64_t sub_2748603C8(uint64_t a1)
{
  result = sub_2748603F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2748603F0()
{
  result = qword_28096B720;
  if (!qword_28096B720)
  {
    type metadata accessor for SmartShortcutPickerStaccatoSuggestionsDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096B720);
  }

  return result;
}

uint64_t type metadata accessor for SmartShortcutPickerStaccatoSuggestionsDataSource()
{
  result = qword_28096B728;
  if (!qword_28096B728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27486049C()
{
  sub_274860560();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_274860560()
{
  if (!qword_28096B738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B710);
    v0 = sub_2749FA924();
    if (!v1)
    {
      atomic_store(v0, &qword_28096B738);
    }
  }
}

uint64_t sub_2748605C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartShortcutPickerEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274860628(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2748606D8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_2749FD1B4();
  if (!v19)
  {
    return sub_2749FCFD4();
  }

  v41 = v19;
  v45 = sub_2749FDA54();
  v32 = sub_2749FDA64();
  sub_2749FDA04();
  result = sub_2749FD1A4();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_2749FD1F4();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_2749FDA44();
      result = sub_2749FD1C4();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static WFShortcutConcerningReportReason.allCases.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B740);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_274A11F50;
  v1 = *MEMORY[0x277D7CF88];
  v2 = *MEMORY[0x277D7CF78];
  *(v0 + 32) = *MEMORY[0x277D7CF88];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277D7CF80];
  *(v0 + 48) = *MEMORY[0x277D7CF80];
  v4 = v1;
  v5 = v2;
  v6 = v3;
  return v0;
}

uint64_t sub_274860B88()
{
  v0 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v2 = v1;
  if (v0 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v2 == v3)
  {
LABEL_16:

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_66();
  v5 = sub_2749FDCC4();

  if (v5)
  {
    goto LABEL_17;
  }

  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;
  if (v6 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v8 == v9)
  {
  }

  else
  {
    OUTLINED_FUNCTION_66();
    v11 = sub_2749FDCC4();

    if ((v11 & 1) == 0)
    {
      v12 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v14 = v13;
      if (v12 != _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() || v14 != v15)
      {
        sub_2749FDCC4();
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  sub_2749FCE14();
  if (qword_28159E3A8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  OUTLINED_FUNCTION_32();
  v17 = sub_2749FCD64();
  OUTLINED_FUNCTION_32();
  v18 = sub_2749FCD64();

  v20 = OUTLINED_FUNCTION_13_1(v19, sel_localizedStringForKey_value_table_);

  v21 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  return v21;
}

uint64_t sub_274860DBC@<X0>(uint64_t *a1@<X8>)
{
  result = static WFShortcutConcerningReportReason.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274860DE4@<X0>(uint64_t *a1@<X8>)
{
  result = WFShortcutConcerningReportReason.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_274860E28(void *a1)
{
  v1 = a1;
  v2 = WFWorkflow.isReportable.getter();

  return v2 & 1;
}

uint64_t WFWorkflow.isReportable.getter()
{
  sub_2748665C4(v0);
  if (v1)
  {
    v2 = sub_2749FCD64();
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  if ([v3 isEqualToString:@"ShortcutSourceUnknown"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ShortcutSourceOnDevice"))
  {
    goto LABEL_6;
  }

  if ([v3 isEqualToString:@"ShortcutSourceGallery"])
  {
LABEL_9:
    v4 = 1;
    goto LABEL_7;
  }

  if (([v3 isEqualToString:@"ShortcutSourceAddToSiri"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"ShortcutSourceCloudLink"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"ShortcutSourceDefaultShortcut"))
    {
      goto LABEL_9;
    }

    if (([v3 isEqualToString:@"ShortcutSourceSiriTopLevelShortcut"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"ShortcutSourceAutomatorMigration") & 1) == 0)
    {
      if (([v3 isEqualToString:@"ShortcutSourceFilePublic"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"ShortcutSourceFileKnownContacts") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"ShortcutSourceFilePersonal") & 1) == 0)
      {
        if (([v3 isEqualToString:@"ShortcutSourceEditorDocumentMenu"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"ShortcutSourceAppShortcut") & 1) == 0)
        {
          [v3 isEqualToString:@"ShortcutSourceActiveStarterShortcut"];
        }

        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

LABEL_6:
  v4 = 0;
LABEL_7:

  return v4;
}