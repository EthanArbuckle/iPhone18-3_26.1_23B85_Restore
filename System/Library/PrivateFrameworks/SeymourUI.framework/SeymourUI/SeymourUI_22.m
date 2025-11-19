void sub_20B79FB04(char a1)
{
  v3 = [v1 navigationItem];
  v4 = v3;
  if ((a1 & 1) == 0)
  {
    v15 = [v3 rightBarButtonItems];
    if (!v15)
    {
      [v4 setRightBarButtonItems_];

      return;
    }

    v16 = v15;
    v17 = sub_20B51C88C(0, &qword_27C770510);
    v18 = sub_20C13CC74();

    v32 = v18;
    v19 = v1;
    v20 = sub_20B7A2C30(&v32, v19);

    if (v32 >> 62)
    {
      v21 = sub_20C13DB34();
      if (v21 >= v20)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v21 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21 >= v20)
      {
LABEL_21:
        sub_20B7A3004(v20, v21);
        if (v32)
        {
          v22 = sub_20C13CC54();
        }

        else
        {
          v22 = 0;
        }

        [v4 setRightBarButtonItems_];

        return;
      }
    }

    __break(1u);
    goto LABEL_46;
  }

  v5 = [v3 rightBarButtonItems];

  if (!v5)
  {
    return;
  }

  sub_20B51C88C(0, &qword_27C770510);
  v6 = sub_20C13CC74();

  if (v6 >> 62)
  {
LABEL_43:
    v7 = sub_20C13DB34();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_ttrBarButtonItem;
  if (!v7)
  {
LABEL_23:

    v23 = sub_20C13C914();
    v24 = [objc_opt_self() systemImageNamed_];

    if (v24)
    {
      v25 = [v24 imageWithRenderingMode_];
    }

    else
    {
      v25 = 0;
    }

    v26 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v25 style:2 target:v1 action:sel_ttrButtonTapped];

    v27 = *&v1[v8];
    *&v1[v8] = v26;
    v17 = v26;

    v20 = [v1 navigationItem];
    v28 = [v20 rightBarButtonItems];
    if (!v28)
    {
      [v20 setRightBarButtonItems_];

LABEL_39:
      return;
    }

    v29 = v28;
    v30 = sub_20C13CC74();

    v32 = v30;
    v17 = v17;
    MEMORY[0x20F2F43B0]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_34:
      sub_20C13CCE4();
      if (v32)
      {
        v31 = sub_20C13CC54();
      }

      else
      {
        v31 = 0;
      }

      [v20 setRightBarButtonItems_];

      goto LABEL_39;
    }

LABEL_46:
    sub_20C13CCA4();
    goto LABEL_34;
  }

  v9 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x20F2F5430](v9, v6);
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v13 = *&v1[v8];

    if (v13 && v11 == v13)
    {
      break;
    }

    ++v9;
    if (v12 == v7)
    {
      goto LABEL_23;
    }
  }
}

void sub_20B79FF88(char a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_upNextSummaryView);
  if (a2)
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = a1 & 1;
    v10[4] = sub_20B7A0A24;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_20B7B548C;
    v10[3] = &block_descriptor_12;
    v7 = _Block_copy(v10);
    v8 = v4;

    [v5 animateWithDuration:v7 animations:0.1];
    _Block_release(v7);
  }

  else
  {
    v9 = *&v4[OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_startButton];

    [v9 setHidden_];
  }
}

uint64_t sub_20B7A00D8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_additionalMetadata) = a1;

  return sub_20B79D158();
}

id sub_20B7A0174(void *a1)
{
  v3 = [a1 popoverPresentationController];
  if (v3)
  {
    v4 = v3;
    [v3 setSourceView_];
  }

  return [v1 presentViewController:a1 animated:1 completion:0];
}

void sub_20B7A020C()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_20B7A30DC;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_20B7B548C;
  v5[3] = &block_descriptor_59;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.3];
  _Block_release(v3);
}

void sub_20B7A03BC(uint64_t a1)
{
  v2 = sub_20B84DBE8(a1);
  [v2 setModalInPresentation_];
  [v1 presentViewController:v2 animated:1 completion:0];
}

id sub_20B7A043C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_upNextSummaryView) + OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_startButton);
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v3 = sub_20C13C914();
  [v2 setText_];

  return [v1 setNeedsLayout];
}

void sub_20B7A04F8()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[4] = sub_20B7A0A30;
  v3[5] = v1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_20B7B548C;
  v3[3] = &block_descriptor_53;
  v2 = _Block_copy(v3);

  [v0 animateWithDuration:v2 animations:0.2];
  _Block_release(v2);
}

void sub_20B7A0628(void *a1)
{
  [a1 contentOffset];
  v4 = v3;
  [a1 adjustedContentInset];
  v6 = v5;
  [a1 adjustedContentInset];
  v8 = v7;
  v9 = [v1 navigationController];
  if (v9)
  {
    v10 = (v4 + v6) / v8;
    v11 = v9;
    v12 = [v9 navigationBar];

    v14 = [v12 smu_backgroundView];
    v13 = 1.0;
    if (v10 <= 1.0)
    {
      v13 = v10;
    }

    if (v13 < 0.0)
    {
      v13 = 0.0;
    }

    [v14 setAlpha_];
  }
}

uint64_t sub_20B7A07C0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763250);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_20C1344C4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, *(v1 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_presenter) + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_catalogWorkout, v6, v8);
  sub_20C134414();
  (*(v7 + 8))(v10, v6);
  v11 = sub_20C135B04();
  v12 = (*(*(v11 - 8) + 48))(v5, 1, v11);
  sub_20B520158(v5, &qword_27C763250);
  v13 = sub_20C1390D4();
  v14 = MEMORY[0x277D54278];
  if (v12 != 1)
  {
    v14 = MEMORY[0x277D54280];
  }

  return (*(*(v13 - 8) + 104))(a1, *v14, v13);
}

unint64_t sub_20B7A0A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_20C134B14();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_20B520158(v25, &unk_27C765380);
  }

  if (v18 < 1)
  {
    return sub_20B520158(v25, &unk_27C765380);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_20B520158(v25, &unk_27C765380);
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_20B7A0BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryView;
  v8 = [objc_allocWithZone(type metadata accessor for SummaryContentSummaryView()) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v7] = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_backgroundView;
  v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v10 &selRef_count + 2];
  *&v6[v9] = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_scrollView;
  v12 = [objc_allocWithZone(MEMORY[0x277D759D8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v12 &selRef_count + 2];
  [v12 setContentInsetAdjustmentBehavior_];
  [v12 setShowsHorizontalScrollIndicator_];
  v13 = sub_20C13C914();
  [v12 setAccessibilityIdentifier_];

  *&v6[v11] = v12;
  v14 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridView;
  v15 = [objc_allocWithZone(type metadata accessor for SummaryMetricGridView()) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v15 &selRef_count + 2];
  *&v6[v14] = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_upNextSummaryView;
  v17 = [objc_allocWithZone(type metadata accessor for SummaryUpNextView()) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v17 &selRef_count + 2];
  *&v6[v16] = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_queueCompleteView;
  v19 = [objc_allocWithZone(type metadata accessor for SummaryQueueCompleteView()) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v19 &selRef_count + 2];
  *&v6[v18] = v19;
  v20 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_buttonStackView;
  v21 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v21 &selRef_count + 2];
  [v21 setAlignment_];
  [v21 setAxis_];
  [v21 setDistribution_];
  [v21 setSpacing_];
  *&v6[v20] = v21;
  v146 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_doneButton;
  v155 = type metadata accessor for SummaryPlatterButtonView();
  v22 = [objc_allocWithZone(v155) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v22 &selRef_count + 2];
  v23 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v22 setBackgroundColor_];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v145 = objc_opt_self();
  v25 = [v145 bundleForClass_];
  sub_20C132964();

  v26 = objc_opt_self();
  v154 = v26;
  v27 = [v26 blackColor];
  v28 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v29 = *&v22[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v30 = sub_20C13C914();

  [v29 setText_];

  [*&v22[v28] setTextColor_];
  [v22 setNeedsLayout];

  v31 = sub_20C13C914();
  [v22 setAccessibilityIdentifier_];

  *&v6[v146] = v22;
  v32 = [objc_allocWithZone(v155) initWithFrame_];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v31) = sub_20C1380F4();
  v33 = objc_allocWithZone(MEMORY[0x277D75348]);
  v34 = 0.15;
  if (v31 == 3)
  {
    v35 = 0.415686275;
  }

  else
  {
    v35 = 0.15;
  }

  v36 = [v33 initWithWhite:v35 alpha:1.0];
  v37 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_cooldownButton;
  [v32 setBackgroundColor_];

  v38 = [v145 bundleForClass_];
  sub_20C132964();

  v39 = [v26 whiteColor];
  v40 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v41 = *&v32[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v42 = sub_20C13C914();

  [v41 setText_];

  [*&v32[v40] setTextColor_];
  [v32 setNeedsLayout];

  v43 = sub_20C13C914();
  [v32 setAccessibilityIdentifier_];

  *&v6[v37] = v32;
  v44 = [objc_allocWithZone(v155) initWithFrame_];
  [v44 setTranslatesAutoresizingMaskIntoConstraints_];
  if (sub_20C1380F4() == 3)
  {
    v34 = 0.415686275;
  }

  v45 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v34 alpha:1.0];
  v46 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_stateOfMindLoggingButton;
  [v44 setBackgroundColor_];

  v47 = [v145 bundleForClass_];
  sub_20C132964();

  v48 = [v154 whiteColor];
  v49 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v50 = *&v44[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v51 = sub_20C13C914();

  [v50 setText_];

  [*&v44[v49] setTextColor_];
  [v44 setNeedsLayout];

  v52 = sub_20C13C914();
  [v44 setAccessibilityIdentifier_];

  *&v6[v46] = v44;
  *&v6[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_ttrBarButtonItem] = 0;
  *&v6[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_activityRingsBottomPinningConstraint] = 0;
  v53 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToContentSummaryLeadingConstraint;
  *&v6[v53] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v54 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToActivityRingsTopConstraint;
  *&v6[v54] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v55 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarLeadingConstraint;
  *&v6[v55] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v56 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToGridViewTopConstraint;
  *&v6[v56] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *&v6[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarBottomPinningConstraint] = 0;
  *&v6[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarConstraints] = MEMORY[0x277D84F90];
  v57 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryTrailingAnchor;
  *&v6[v57] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v58 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewHeight;
  *&v6[v58] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v59 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewWidth;
  *&v6[v59] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v60 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewTopSpacing;
  *&v6[v60] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v61 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_summary;
  v62 = type metadata accessor for SessionSummaryViewModel();
  (*(*(v62 - 8) + 56))(&v6[v61], 1, 1, v62);
  *&v6[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_additionalMetadata] = 0;
  *&v6[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_presenter] = a1;
  v63 = &v6[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_eventHub];
  *v63 = a3;
  *(v63 + 1) = a4;
  sub_20B51CC64(a5, &v6[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_storefrontLocalizer]);
  v64 = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v164[2] = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
  v164[3] = v64;
  v165 = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v65 = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v164[0] = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v164[1] = v65;
  v66 = &v6[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_stringBuilder];
  memmove(&v6[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_stringBuilder], (a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder), 0x42uLL);
  v67 = objc_allocWithZone(type metadata accessor for SummaryActivityRingsView());

  swift_unknownObjectRetain();
  sub_20B7A3194(v164, v166);
  v68 = [v67 init];
  [v68 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_activityRingsView] = v68;
  v69 = sub_20C1371C4();
  v70 = *(v66 + 1);
  v71 = *(v66 + 3);
  v167 = *(v66 + 2);
  v168 = v71;
  v72 = *(v66 + 1);
  v166[0] = *v66;
  v166[1] = v72;
  v160 = v70;
  v161 = v167;
  v162 = *(v66 + 3);
  v169 = *(v66 + 32);
  v163 = *(v66 + 32);
  v159 = v166[0];
  v73 = objc_allocWithZone(type metadata accessor for SummaryBurnBarView());
  sub_20B7A3194(v166, v158);
  v74 = SummaryBurnBarView.init(workoutActivityType:stringBuilder:)(v69, 0, &v159);
  [v74 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarView] = v74;
  v157.receiver = v6;
  v157.super_class = type metadata accessor for TabletSessionSummaryViewController();
  v75 = objc_msgSendSuper2(&v157, sel_initWithNibName_bundle_, 0, 0);
  *(*&v75[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_presenter] + 24) = &off_2822A5EB8;
  swift_unknownObjectWeakAssign();
  v76 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_buttonStackView;
  v77 = *&v75[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_buttonStackView];
  v78 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_doneButton;
  v79 = *&v75[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_doneButton];
  v80 = v75;
  [v77 addArrangedSubview_];
  v156 = v76;
  v81 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_cooldownButton;
  [*&v75[v76] addArrangedSubview_];
  *(&v160 + 1) = &type metadata for Health;
  *&v161 = sub_20B7A31F0();
  LOBYTE(v77) = sub_20C1383C4();
  __swift_destroy_boxed_opaque_existential_1(&v159);
  if (v77)
  {
    [*&v75[v76] addArrangedSubview_];
  }

  v82 = *&v75[v78];
  v83 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v84 = &v82[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v85 = *&v82[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  *v84 = sub_20B7A3244;
  v84[1] = v83;
  v86 = v80;
  v87 = v82;

  sub_20B583ECC(v85);

  v88 = *&v80[v81];
  v89 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v90 = &v88[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v91 = *&v88[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  *v90 = sub_20B7A3274;
  v90[1] = v89;
  v92 = v88;

  sub_20B583ECC(v91);

  v93 = *&v86[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_stateOfMindLoggingButton];
  v94 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v95 = &v93[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  v96 = *&v93[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_onTapped];
  *v95 = sub_20B7A32A4;
  v95[1] = v94;
  v97 = v93;

  sub_20B583ECC(v96);

  v98 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryView;
  v99 = *&v86[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryView];
  v100 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v101 = &v99[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onBookmarkTapped];
  v102 = *&v99[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onBookmarkTapped];
  *v101 = sub_20B7A32AC;
  v101[1] = v100;
  v103 = v99;

  sub_20B583ECC(v102);

  v104 = *&v86[v98];
  v105 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v106 = &v104[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onShareButtonTapped];
  v107 = *&v104[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_onShareButtonTapped];
  *v106 = sub_20B7A32DC;
  v106[1] = v105;
  v108 = v104;

  sub_20B583ECC(v107);

  v109 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_upNextSummaryView;
  v110 = *&v86[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_upNextSummaryView];
  v111 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v112 = &v110[OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_onStartButtonTapped];
  v113 = *&v110[OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_onStartButtonTapped];
  *v112 = sub_20B7A330C;
  v112[1] = v111;
  v114 = v110;

  sub_20B583ECC(v113);

  v151 = v109;
  v115 = *&v86[v109];
  v116 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v117 = &v115[OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_onDoneButtonTapped];
  v118 = *&v115[OBJC_IVAR____TtC9SeymourUI17SummaryUpNextView_onDoneButtonTapped];
  *v117 = sub_20B7A333C;
  v117[1] = v116;
  v119 = v115;

  sub_20B583ECC(v118);

  v120 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_queueCompleteView;
  v121 = *&v86[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_queueCompleteView];
  v122 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v123 = &v121[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_onDoneButtonTapped];
  v124 = *&v121[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_onDoneButtonTapped];
  *v123 = sub_20B7A3344;
  v123[1] = v122;
  v125 = v121;

  sub_20B583ECC(v124);

  v149 = v120;
  v126 = *&v86[v120];
  v127 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v128 = &v126[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_onSaveButtonTapped];
  v129 = *&v126[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_onSaveButtonTapped];
  *v128 = sub_20B7A334C;
  v128[1] = v127;
  v130 = v126;

  sub_20B583ECC(v129);

  v131 = [v86 view];
  if (!v131)
  {
    __break(1u);
    goto LABEL_13;
  }

  v132 = v131;
  v133 = [v154 blackColor];
  [v132 setBackgroundColor_];

  v134 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_backgroundView;
  v135 = *&v86[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_backgroundView];
  v136 = [v154 blackColor];
  [v135 setBackgroundColor_];

  [*&v86[v134] setAlpha_];
  [*&v86[v98] setAlpha_];
  v137 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridView;
  [*&v86[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridView] setAlpha_];
  [*(v156 + v75) setAlpha_];
  v138 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarView;
  [*&v86[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarView] setAlpha_];
  v139 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_activityRingsView;
  [*&v86[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_activityRingsView] setAlpha_];
  v140 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_scrollView;
  [*&v86[OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_scrollView] setDelegate_];
  v141 = [v86 view];
  if (!v141)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v142 = v141;
  [v141 addSubview_];

  v143 = [v86 view];
  if (v143)
  {
    [v143 addSubview_];

    [*&v86[v140] addSubview_];
    [*&v86[v140] addSubview_];
    [*&v86[v140] addSubview_];
    [*&v86[v140] addSubview_];
    [*&v86[v140] addSubview_];
    [*&v86[v140] addSubview_];
    [*&v86[v140] addSubview_];
    [*&v86[v151] setHidden_];
    [*&v86[v149] setHidden_];
    sub_20B79BE00();

    __swift_destroy_boxed_opaque_existential_1(a5);
    v144 = sub_20C137254();
    (*(*(v144 - 8) + 8))(a2, v144);
    return;
  }

LABEL_14:
  __break(1u);
}

unint64_t sub_20B7A1F10(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_20B7A2014()
{
  v1 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryView;
  v2 = [objc_allocWithZone(type metadata accessor for SummaryContentSummaryView()) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_backgroundView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v4 &selRef_count + 2];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_scrollView;
  v6 = [objc_allocWithZone(MEMORY[0x277D759D8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v6 &selRef_count + 2];
  [v6 setContentInsetAdjustmentBehavior_];
  [v6 setShowsHorizontalScrollIndicator_];
  v7 = sub_20C13C914();
  [v6 setAccessibilityIdentifier_];

  *(v0 + v5) = v6;
  v8 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridView;
  v9 = [objc_allocWithZone(type metadata accessor for SummaryMetricGridView()) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v9 &selRef_count + 2];
  *(v0 + v8) = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_upNextSummaryView;
  v11 = [objc_allocWithZone(type metadata accessor for SummaryUpNextView()) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v11 &selRef_count + 2];
  *(v0 + v10) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_queueCompleteView;
  v13 = [objc_allocWithZone(type metadata accessor for SummaryQueueCompleteView()) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v13 &selRef_count + 2];
  *(v0 + v12) = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_buttonStackView;
  v15 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v15 &selRef_count + 2];
  [v15 setAlignment_];
  [v15 setAxis_];
  [v15 setDistribution_];
  [v15 setSpacing_];
  *(v0 + v14) = v15;
  v59 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_doneButton;
  v58 = type metadata accessor for SummaryPlatterButtonView();
  v16 = [objc_allocWithZone(v58) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v16 &selRef_count + 2];
  v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v16 setBackgroundColor_];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v60 = objc_opt_self();
  v18 = [v60 bundleForClass_];
  sub_20C132964();

  v19 = objc_opt_self();
  v56 = v19;
  v20 = [v19 blackColor];
  v21 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v22 = *&v16[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v23 = sub_20C13C914();

  [v22 setText_];

  [*&v16[v21] setTextColor_];
  [v16 setNeedsLayout];

  v24 = sub_20C13C914();
  [v16 setAccessibilityIdentifier_];

  *(v0 + v59) = v16;
  v25 = [objc_allocWithZone(v58) initWithFrame_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v21) = sub_20C1380F4();
  v26 = objc_allocWithZone(MEMORY[0x277D75348]);
  v27 = 0.15;
  if (v21 == 3)
  {
    v28 = 0.415686275;
  }

  else
  {
    v28 = 0.15;
  }

  v29 = [v26 initWithWhite:v28 alpha:1.0];
  v30 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_cooldownButton;
  [v25 setBackgroundColor_];

  v31 = [v60 bundleForClass_];
  sub_20C132964();

  v32 = [v19 whiteColor];
  v33 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v34 = *&v25[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v35 = sub_20C13C914();

  [v34 setText_];

  [*&v25[v33] setTextColor_];
  [v25 setNeedsLayout];

  v36 = sub_20C13C914();
  [v25 setAccessibilityIdentifier_];

  *(v0 + v30) = v25;
  v37 = [objc_allocWithZone(v58) initWithFrame_];
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  if (sub_20C1380F4() == 3)
  {
    v27 = 0.415686275;
  }

  v38 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v27 alpha:1.0];
  v39 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_stateOfMindLoggingButton;
  [v37 setBackgroundColor_];

  v40 = [v60 bundleForClass_];
  sub_20C132964();

  v41 = [v56 whiteColor];
  v42 = OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label;
  v43 = *&v37[OBJC_IVAR____TtC9SeymourUI24SummaryPlatterButtonView_label];
  v44 = sub_20C13C914();

  [v43 setText_];

  [*&v37[v42] setTextColor_];
  [v37 setNeedsLayout];

  v45 = sub_20C13C914();
  [v37 setAccessibilityIdentifier_];

  *(v0 + v39) = v37;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_ttrBarButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_activityRingsBottomPinningConstraint) = 0;
  v46 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToContentSummaryLeadingConstraint;
  *(v0 + v46) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v47 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToActivityRingsTopConstraint;
  *(v0 + v47) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v48 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarLeadingConstraint;
  *(v0 + v48) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v49 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarToGridViewTopConstraint;
  *(v0 + v49) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarBottomPinningConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_burnBarConstraints) = MEMORY[0x277D84F90];
  v50 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_contentSummaryTrailingAnchor;
  *(v0 + v50) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v51 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewHeight;
  *(v0 + v51) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v52 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewWidth;
  *(v0 + v52) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v53 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_gridViewTopSpacing;
  *(v0 + v53) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v54 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_summary;
  v55 = type metadata accessor for SessionSummaryViewModel();
  (*(*(v55 - 8) + 56))(v0 + v54, 1, 1, v55);
  *(v0 + OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_additionalMetadata) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B7A2C30(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v27 = *a1 >> 62;
  v3 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v27)
  {
    goto LABEL_66;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = 0;
  v6 = OBJC_IVAR____TtC9SeymourUI34TabletSessionSummaryViewController_ttrBarButtonItem;
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x20F2F5430](v5, v2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        v4 = sub_20C13DB34();
        goto LABEL_3;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = *(a2 + v6);

    v10 = v5 + 1;
    v11 = __OFADD__(v5, 1);
    if (v9)
    {
      v12 = v8 == v9;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      if (v11)
      {
        __break(1u);
        goto LABEL_23;
      }

      while (1)
      {
        if (v2 >> 62)
        {
          if (v10 == sub_20C13DB34())
          {
            return v5;
          }
        }

        else if (v10 == *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return v5;
        }

        v3 = v2 & 0xC000000000000001;
        if ((v2 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x20F2F5430](v10, v2);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_58;
          }

          if (v10 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v15 = *(v2 + 8 * v10 + 32);
        }

        v16 = v15;
        v17 = *(a2 + v6);

        if (!v17 || v16 != v17)
        {
          if (v5 != v10)
          {
            if (v3)
            {
              v18 = MEMORY[0x20F2F5430](v5, v2);
              v19 = MEMORY[0x20F2F5430](v10, v2);
            }

            else
            {
              if ((v5 & 0x8000000000000000) != 0)
              {
                goto LABEL_63;
              }

              v20 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v5 >= v20)
              {
                goto LABEL_64;
              }

              if (v10 >= v20)
              {
                goto LABEL_65;
              }

              v21 = *(v2 + 32 + 8 * v10);
              v18 = *(v2 + 32 + 8 * v5);
              v19 = v21;
            }

            v22 = v19;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
            {
              v2 = sub_20BF98A94(v2);
              v23 = (v2 >> 62) & 1;
            }

            else
            {
              LODWORD(v23) = 0;
            }

            v3 = v2 & 0xFFFFFFFFFFFFFF8;
            v24 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20);
            *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20) = v22;

            if ((v2 & 0x8000000000000000) != 0 || v23)
            {
              v2 = sub_20BF98A94(v2);
              v3 = v2 & 0xFFFFFFFFFFFFFF8;
              if ((v10 & 0x8000000000000000) != 0)
              {
LABEL_54:
                __break(1u);
                return sub_20C13DB34();
              }
            }

            else if ((v10 & 0x8000000000000000) != 0)
            {
              goto LABEL_54;
            }

            if (v10 >= *(v3 + 16))
            {
              goto LABEL_62;
            }

            v25 = v3 + 8 * v10;
            v26 = *(v25 + 32);
            *(v25 + 32) = v18;

            *a1 = v2;
          }

LABEL_23:
          v14 = __OFADD__(v5++, 1);
          if (v14)
          {
            goto LABEL_61;
          }
        }

        v14 = __OFADD__(v10++, 1);
        if (v14)
        {
          goto LABEL_60;
        }
      }
    }

    ++v5;
    if (v11)
    {
      goto LABEL_57;
    }
  }

  if (v27)
  {
    return sub_20C13DB34();
  }

  return *(v3 + 16);
}

uint64_t sub_20B7A2EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_20B51C88C(0, &qword_27C770510);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_20C13DB34();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_20C13DB34();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_20B7A3004(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_20C13DB34();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_20C13DB34();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_20B8DD124(result, 1);

  return sub_20B7A2EF4(v4, v2, 0);
}

uint64_t sub_20B7A30E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765360);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_20B7A3154(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

unint64_t sub_20B7A31F0()
{
  result = qword_27C765370;
  if (!qword_27C765370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C765370);
  }

  return result;
}

uint64_t sub_20B7A337C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B7A33E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20B7A3444(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 8 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = &v10[a3];
      v15 = (v9 + 32 + 8 * a2);
      if (result != v15 || result >= v15 + 8 * v14)
      {
        result = memmove(result, v15, 8 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v10 = a4;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_20B7A3550(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_20B7A3924(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

unint64_t sub_20B7A3628(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675B0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = swift_unknownObjectRetain();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_20B7A3748(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 40 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 40 * a3;
  v13 = (v7 + 32 + 40 * a2);
  if (result != v13 || result >= v13 + 40 * v12)
  {
    result = memmove(result, v13, 40 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_20B7A384C(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_20B7A3924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_20B7A3A9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_20B7A3B04(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a2)
  {
    v8 = a6;

    v9 = a3;
    v10 = a4;

    v11 = a5;
  }
}

unint64_t sub_20B7A3BE0()
{
  result = qword_27C7653B0;
  if (!qword_27C7653B0)
  {
    type metadata accessor for TabletSessionSummaryViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7653B0);
  }

  return result;
}

uint64_t sub_20B7A3C6C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_20C13DB34();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_20B6CEC8C(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_20C13DB34() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_20C13DB34();
  v2 = sub_20B705CB4(v5, v6);
LABEL_10:

  return sub_20B6D229C(a1, v2);
}

char *sub_20B7A3E04(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_layout];
  *v2 = xmmword_20C1588C0;
  *(v2 + 1) = xmmword_20C1588D0;
  *(v2 + 4) = 0x7069636974726150;
  *(v2 + 5) = 0xEF6C6C6543746E61;
  *(v2 + 3) = xmmword_20C1588E0;
  *(v2 + 8) = 0x4038000000000000;
  *&v1[OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_dataSource] = 0;
  *&v1[OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_currentlyConnectingCell] = 0;
  v3 = OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_titleLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle_];
  [v4 setFont_];

  [v4 setTextAlignment_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v3] = v4;
  v7 = OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_indicatorView;
  v8 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v7] = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_promptLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v11 = [v5 preferredFontForTextStyle_];
  [v10 setFont_];

  [v10 setTextAlignment_];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v14 = sub_20C13C914();
  [v10 setText_];

  v15 = v10;
  [v15 setAlpha_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v1[v9] = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_promptIndicatorView;
  v17 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v16] = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_menuGestureRecognizer;
  *&v1[v18] = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:0 action:0];
  v19 = OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_playPauseGestureRecognizer;
  *&v1[v19] = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:0 action:0];
  *&v1[OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_presenter] = a1;
  v20 = objc_allocWithZone(MEMORY[0x277D752F0]);

  v21 = [v20 init];
  [v21 setScrollDirection_];
  [v21 setItemSize_];
  [v21 setMinimumInteritemSpacing_];
  [v21 setMinimumLineSpacing_];
  v22 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v21 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  [v22 setContentInsetAdjustmentBehavior_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_collectionView] = v22;
  type metadata accessor for TVRemoteParticipantCell();
  v23 = swift_getObjCClassFromMetadata();
  v24 = v22;

  v25 = sub_20C13C914();

  [v24 registerClass:v23 forCellWithReuseIdentifier:v25];

  v47.receiver = v1;
  v47.super_class = type metadata accessor for RemoteBrowsingDiscoveryViewController();
  v26 = objc_msgSendSuper2(&v47, sel_initWithNibName_bundle_, 0, 0);
  v27 = OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_collectionView;
  v28 = *&v26[OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_collectionView];
  *(swift_allocObject() + 16) = v26;
  v29 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765480));
  v30 = v26;
  v31 = v28;
  v32 = sub_20C13BF14();
  v33 = *&v30[OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_dataSource];
  *&v30[OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_dataSource] = v32;

  [*&v26[v27] setDelegate_];
  [*&v26[v27] setClipsToBounds_];
  *(a1 + 24) = &off_2822A6258;
  swift_unknownObjectWeakAssign();
  v34 = OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_menuGestureRecognizer;
  v35 = *&v30[OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_menuGestureRecognizer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_20C14F580;
  v37 = v35;
  *(v36 + 32) = sub_20C13D014();
  sub_20B51C88C(0, &qword_27C765490);
  v38 = sub_20C13CC54();

  [v37 setAllowedPressTypes_];

  [*&v30[v34] addTarget:v30 action:sel_handleMenuButtonTapped];
  [*&v30[v34] setDelegate_];
  v39 = OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_playPauseGestureRecognizer;
  v40 = *&v30[OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_playPauseGestureRecognizer];
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_20C14F580;
  v42 = v40;
  *(v41 + 32) = sub_20C13D014();
  v43 = sub_20C13CC54();

  [v42 setAllowedPressTypes_];

  v44 = *&v30[v39];
  [v44 addTarget:v30 action:sel_handleKohnahmiCodeSequence];

  [*&v30[v39] setNumberOfTapsRequired_];

  return v30;
}

uint64_t sub_20B7A4528(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20C13C914();
  v6 = sub_20C1331B4();
  v7 = [a1 dequeueReusableCellWithReuseIdentifier:v5 forIndexPath:v6];

  type metadata accessor for TVRemoteParticipantCell();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    sub_20B862C5C(a3);
  }

  else
  {
  }

  return v8;
}

void sub_20B7A4720()
{
  v1 = v0;
  v58.receiver = v0;
  v58.super_class = type metadata accessor for RemoteBrowsingDiscoveryViewController();
  objc_msgSendSuper2(&v58, sel_viewDidLoad);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C151490;
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_titleLabel];
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_collectionView];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910);
  v6 = v3;
  v57 = v4;
  v7 = sub_20C13CC54();

  v8 = [v5 initWithArrangedSubviews_];

  [v8 setAxis_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = &v1[OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_layout];
  [v8 setCustomSpacing:v6 afterView:*&v1[OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_layout + 48]];
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20C151490;
  v11 = *&v1[OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_promptIndicatorView];
  v12 = *&v1[OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_promptLabel];
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  v13 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v14 = v11;
  v15 = v12;
  v16 = sub_20C13CC54();

  v17 = [v13 initWithArrangedSubviews_];

  [v17 setAxis_];
  v18 = v9;
  [v17 setSpacing_];
  v19 = v17;
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v20 = [v1 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_12;
  }

  v21 = v20;
  [v20 addSubview_];

  v22 = [v1 view];
  if (!v22)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = v22;
  [v22 addSubview_];

  v24 = [v1 view];
  if (!v24)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v25 = v24;
  v26 = *&v1[OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_indicatorView];
  [v24 addSubview_];

  v27 = [v1 view];
  if (!v27)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v28 = v27;
  v56 = v8;
  [v27 addGestureRecognizer_];

  v29 = [v1 view];
  if (!v29)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = v29;
  [v29 addGestureRecognizer_];

  [v26 setHidesWhenStopped_];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  v32 = [v57 heightAnchor];
  v33 = [v32 constraintEqualToConstant_];

  *(inited + 32) = v33;
  v34 = [v57 widthAnchor];
  v35 = [v1 view];
  if (!v35)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = v35;
  v37 = [v35 safeAreaLayoutGuide];

  v38 = [v37 widthAnchor];
  v39 = [v34 constraintEqualToAnchor_];

  *(inited + 40) = v39;
  v40 = [v19 centerXAnchor];
  v41 = [v1 view];
  if (!v41)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v42 = v41;
  v43 = [v41 centerXAnchor];

  v44 = [v40 constraintEqualToAnchor_];
  *(inited + 48) = v44;
  v45 = [v19 bottomAnchor];

  v46 = [v1 view];
  if (!v46)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v47 = v46;
  v48 = [v46 safeAreaLayoutGuide];

  v49 = [v48 bottomAnchor];
  v50 = [v45 constraintEqualToAnchor:v49 constant:-v18[7]];

  *(inited + 56) = v50;
  UIView.constraintsPinningCenterToCenterOfView(_:)(v57);
  v51 = [v1 view];
  if (v51)
  {
    v52 = v51;
    v53 = objc_opt_self();
    v54 = UIView.constraintsPinningCenterToCenterOfView(_:)(v52);

    sub_20B8D9310(v54);
    sub_20B8D9310(inited);
    sub_20B51C88C(0, &qword_281100500);
    v55 = sub_20C13CC54();

    [v53 activateConstraints_];

    return;
  }

LABEL_19:
  __break(1u);
}

void sub_20B7A4DFC(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(id))
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for RemoteBrowsingDiscoveryViewController();
  v8 = *a4;
  v9 = v11.receiver;
  v10 = objc_msgSendSuper2(&v11, v8, a3);
  a5(v10);
}

uint64_t sub_20B7A4E74(char a1)
{
  v3 = sub_20C1390B4();
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  MEMORY[0x28223BE20](v3);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v6 - 8);
  v36 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - v15;
  v35 = sub_20C1333A4();
  v17 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v34 - v21;
  v23 = type metadata accessor for RemoteBrowsingDiscoveryViewController();
  v40.receiver = v1;
  v40.super_class = v23;
  objc_msgSendSuper2(&v40, sel_viewDidAppear_, a1 & 1);
  v24 = *MEMORY[0x277D51808];
  v25 = sub_20C1352F4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v16, v24, v25);
  (*(v26 + 56))(v16, 0, 1, v25);
  v27 = sub_20C132C14();
  (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
  v28 = sub_20C135ED4();
  (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  v29 = sub_20C136914();
  (*(*(v29 - 8) + 56))(v36, 1, 1, v29);
  sub_20C133384();
  v30 = v35;
  (*(v17 + 16))(v19, v22, v35);
  v31 = v37;
  sub_20C1390C4();
  swift_getObjectType();
  sub_20B7A81BC(&qword_281103B40, MEMORY[0x277D54270]);
  v32 = v38;
  sub_20C13A764();
  (*(v39 + 8))(v31, v32);
  return (*(v17 + 8))(v22, v30);
}

void sub_20B7A53CC(char a1)
{
  v3 = sub_20C1393E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RemoteBrowsingDiscoveryViewController();
  v15.receiver = v1;
  v15.super_class = v7;
  objc_msgSendSuper2(&v15, sel_viewWillDisappear_, a1 & 1);
  v8 = [v1 navigationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 viewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v11 = sub_20C13CC74();

    v14 = v1;
    MEMORY[0x28223BE20](v12);
    *(&v13 - 2) = &v14;
    LOBYTE(v10) = sub_20B79AEEC(sub_20B5978BC, (&v13 - 4), v11);

    if (v10)
    {
    }

    else
    {
      swift_getObjectType();
      sub_20C1393D4();
      sub_20B7A81BC(&unk_281103B20, MEMORY[0x277D54388]);
      sub_20C13A764();

      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t sub_20B7A5654()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteBrowsingDiscoveryPresenter.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v6 + 8))(v8, v5);
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_presenter);
  v10 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_state;
  swift_beginAccess();
  sub_20B7A80F4(v9 + v10, v4, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_20B7A815C(v4, type metadata accessor for RemoteBrowsingDiscoveryPresenter.State);
  }

  v12 = sub_20C135174();
  (*(*(v12 - 8) + 8))(v4, v12);
  return sub_20BAFBBB4();
}

id sub_20B7A58E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteBrowsingDiscoveryViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B7A5B7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A4F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_presenter);
  v9 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_currentSnapshot;
  swift_beginAccess();
  v10 = *(v2 + 16);
  v10(v7, v8 + v9, v1);
  v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_dataSource);
  if (!v11)
  {
    return (*(v2 + 8))(v7, v1);
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10(v4, v7, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = (v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v2 + 32))(v15 + v13, v4, v1);
  *(v15 + v14) = v12;
  v16 = v11;

  sub_20C13BF74();

  (*(v2 + 8))(v7, v1);
}

uint64_t sub_20B7A5DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a2;
  v20[2] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A4F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  v11 = *(v3 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_presenter);
  v12 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_currentSnapshot;
  swift_beginAccess();
  v13 = *(v5 + 16);
  v13(v10, v11 + v12, v4);
  v14 = *(v3 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_dataSource);
  if (!v14)
  {
    return (*(v5 + 8))(v10, v4);
  }

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  *(v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v18 = v14;

  sub_20C13BF74();

  (*(v5 + 8))(v10, v4);
}

uint64_t sub_20B7A602C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A4F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_presenter);
  v9 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_currentSnapshot;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8 + v9, v4);
  sub_20C13BE34();
  sub_20C13BE24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7654A0);
  v10 = *(type metadata accessor for RemoteParticipantButton() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20C14F980;
  sub_20B7A80F4(a1, v12 + v11, type metadata accessor for RemoteParticipantButton);
  v16[1] = 0;
  v17 = 0;
  sub_20C13BE04();

  v13 = *(v2 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_dataSource);
  if (v13)
  {
    v14 = v13;
    sub_20C13BF74();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_20B7A6270()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_collectionView);
  v2 = [v1 subviews];
  sub_20B51C88C(0, &qword_27C762910);
  v3 = sub_20C13CC74();

  v4 = sub_20B716E18(v3);

  v5 = [v1 visibleCells];
  sub_20B51C88C(0, &qword_27C772960);
  v6 = sub_20C13CC74();

  v7 = sub_20B716FA4(v6);

  sub_20B80F3D0(v7);
  v9 = v8;

  v10 = sub_20B7A3C6C(v9, v4);

  if ((v10 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20C13DAE4();
    sub_20B7A7AAC();
    sub_20C13CFF4();
    v11 = v88;
    v12 = v89;
    v13 = v90;
    v14 = v91;
    v15 = v92;
  }

  else
  {
    v16 = -1 << *(v10 + 32);
    v12 = v10 + 56;
    v17 = ~v16;
    v18 = -v16;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v15 = v19 & *(v10 + 56);

    v13 = v17;
    v11 = v10;
    v14 = 0;
  }

  v20 = (v13 + 64) >> 6;
  v72 = v11;
  v73 = v12;
  v71 = v20;
  if ((v11 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  v26 = sub_20C13DB64();
  if (v26 && (v87 = v26, swift_dynamicCast(), v25 = v84[0], v23 = v14, v24 = v15, v84[0]))
  {
    while (1)
    {
      v27 = v25;
      type metadata accessor for TVRemoteParticipantCell();
      v28 = swift_dynamicCastClass();
      if (v28 && (v79 = v27, *&v28[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState]))
      {
        v76 = v23;
        v74 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
        *&v28[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = 0;
        v78 = v28;
        v29 = [v28 contentView];
        v30 = [v29 subviews];

        v31 = sub_20C13CC74();
        if (v31 >> 62)
        {
          v32 = sub_20C13DB34();
        }

        else
        {
          v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v75 = v24;
        v77 = v31;
        if (v32)
        {
          v33 = 0;
          v34 = v31 & 0xC000000000000001;
          v35 = v31 & 0xFFFFFFFFFFFFFF8;
          v36 = v31 + 32;
          v37 = MEMORY[0x277D84FA0];
          v80 = v31 & 0xFFFFFFFFFFFFFF8;
          v81 = v31 & 0xC000000000000001;
          v82 = v31 + 32;
          do
          {
            v38 = v37 & 0xFFFFFFFFFFFFFF8;
            if (v37 < 0)
            {
              v38 = v37;
            }

            v83 = v38;
            while (1)
            {
              if (v34)
              {
                v39 = MEMORY[0x20F2F5430](v33, v77);
              }

              else
              {
                if (v33 >= *(v35 + 16))
                {
                  goto LABEL_72;
                }

                v39 = *(v36 + 8 * v33);
              }

              v40 = v39;
              if (__OFADD__(v33++, 1))
              {
                __break(1u);
LABEL_72:
                __break(1u);
                goto LABEL_73;
              }

              if ((v37 & 0xC000000000000001) == 0)
              {
                v44 = v32;
                v45 = sub_20C13D5E4();
                v46 = ~(-1 << *(v37 + 32));
                for (i = v45 & v46; ; i = (i + 1) & v46)
                {
                  if (((*(v37 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
                  {
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v84[0] = v37;
                    sub_20B7067E0(v40, i, isUniquelyReferenced_nonNull_native);
                    v51 = v84[0];
                    v32 = v44;
                    v35 = v80;
                    v34 = v81;
                    v36 = v82;
                    goto LABEL_43;
                  }

                  v48 = *(*(v37 + 48) + 8 * i);
                  v49 = sub_20C13D5F4();

                  if (v49)
                  {
                    break;
                  }
                }

                v32 = v44;
                v35 = v80;
                v34 = v81;
                v36 = v82;
                if (v33 != v32)
                {
                  continue;
                }

LABEL_60:
                v51 = v37;
                goto LABEL_62;
              }

              v42 = v39;

              v43 = sub_20C13DB44();

              if (!v43)
              {
                break;
              }

              v87 = v43;
              swift_dynamicCast();

              if (v33 == v32)
              {
                goto LABEL_60;
              }
            }

            v52 = sub_20C13DB34();
            if (__OFADD__(v52, 1))
            {
              goto LABEL_75;
            }

            v51 = sub_20B705CB4(v83, v52 + 1);
            v84[0] = v51;
            v53 = *(v51 + 2);
            if (*(v51 + 3) <= v53)
            {
              sub_20B6F7A2C(v53 + 1);
              v51 = v84[0];
            }

            v54 = v42;
            v55 = sub_20C13D5E4();
            v56 = v51 + 56;
            v57 = -1 << v51[32];
            v58 = v55 & ~v57;
            v59 = v58 >> 6;
            if (((-1 << v58) & ~*&v51[8 * (v58 >> 6) + 56]) == 0)
            {
              v61 = 0;
              v62 = (63 - v57) >> 6;
              v36 = v82;
              while (++v59 != v62 || (v61 & 1) == 0)
              {
                v63 = v59 == v62;
                if (v59 == v62)
                {
                  v59 = 0;
                }

                v61 |= v63;
                v64 = *&v56[8 * v59];
                if (v64 != -1)
                {
                  v60 = __clz(__rbit64(~v64)) + (v59 << 6);
                  goto LABEL_58;
                }
              }

              goto LABEL_74;
            }

            v60 = __clz(__rbit64((-1 << v58) & ~*&v51[8 * (v58 >> 6) + 56])) | v58 & 0x7FFFFFFFFFFFFFC0;
            v36 = v82;
LABEL_58:
            *&v56[(v60 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v60;
            *(*(v51 + 6) + 8 * v60) = v54;
            ++*(v51 + 2);

LABEL_43:
            v37 = v51;
          }

          while (v33 != v32);
        }

        else
        {
          v51 = MEMORY[0x277D84FA0];
        }

LABEL_62:

        v87 = v51;
        sub_20B6FFB30(v84, *&v78[OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_monogramButton]);

        v65 = sub_20B8E9218(v87);

        v66 = *(v65 + 16);
        if (v66)
        {
          v67 = v65 + 32;
          v12 = v73;
          do
          {
            sub_20B51CC64(v67, v84);
            v68 = *&v78[v74];
            v69 = v85;
            v70 = v86;
            __swift_project_boxed_opaque_existential_1(v84, v85);
            (*(v70 + 16))(v68, 0, v69, v70);
            __swift_destroy_boxed_opaque_existential_1(v84);
            v67 += 40;
            --v66;
          }

          while (v66);
        }

        else
        {

          v12 = v73;
        }

        v11 = v72;

        v15 = v75;
        v14 = v76;
        v20 = v71;
        if (v72 < 0)
        {
          goto LABEL_16;
        }
      }

      else
      {

        v14 = v23;
        v15 = v24;
        if (v11 < 0)
        {
          goto LABEL_16;
        }
      }

LABEL_10:
      v21 = v14;
      v22 = v15;
      v23 = v14;
      if (!v15)
      {
        break;
      }

LABEL_14:
      v24 = (v22 - 1) & v22;
      v25 = *(*(v11 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
      if (!v25)
      {
        goto LABEL_70;
      }
    }

    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        goto LABEL_70;
      }

      v22 = *(v12 + 8 * v23);
      ++v21;
      if (v22)
      {
        goto LABEL_14;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }

  else
  {
LABEL_70:
    sub_20B583EDC();
  }
}

void sub_20B7A69F0(unint64_t a1)
{
  v2 = v1;
  v58 = a1;
  v3 = sub_20C133244();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A4F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - v9;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v12 + 8))(v14, v11);
  v15 = v2;
  [*(v2 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_promptLabel) setAlpha_];
  [*(v2 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_promptIndicatorView) stopAnimating];
  v16 = *(v2 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_presenter);
  v17 = OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_currentSnapshot;
  swift_beginAccess();
  (*(v8 + 16))(v10, v16 + v17, v7);
  v18 = sub_20C13BE54();
  (*(v8 + 8))(v10, v7);
  v60 = v58;
  v19 = sub_20BBB63F0(sub_20B7A7B14, v59, v18);
  LOBYTE(v2) = v20;

  if ((v2 & 1) == 0)
  {
    v21 = *(v15 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_collectionView);
    MEMORY[0x20F2EA980](v19, 0);
    v22 = sub_20C1331B4();
    (*(v4 + 8))(v6, v3);
    v23 = [v21 cellForItemAtIndexPath_];

    if (v23)
    {
      v24 = type metadata accessor for TVRemoteParticipantCell();
      v25 = swift_dynamicCastClass();
      if (v25)
      {
        v26 = v25;
        v52 = v23;
        v27 = [v21 visibleCells];
        sub_20B51C88C(0, &qword_27C772960);
        v28 = sub_20C13CC74();

        if (v28 >> 62)
        {
          goto LABEL_21;
        }

        for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
        {
          v30 = 0;
          v53 = OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_currentlyConnectingCell;
          v57 = v28 & 0xFFFFFFFFFFFFFF8;
          v58 = v28 & 0xC000000000000001;
          v55 = &v63;
          v56 = i;
          while (1)
          {
            if (v58)
            {
              v36 = MEMORY[0x20F2F5430](v30, v28);
            }

            else
            {
              if (v30 >= *(v57 + 16))
              {
                goto LABEL_20;
              }

              v36 = *(v28 + 8 * v30 + 32);
            }

            v35 = v36;
            v37 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            v38 = swift_dynamicCastClass();
            if (v38)
            {
              v39 = v38;
              sub_20B51C88C(0, &qword_27C7654B0);
              v40 = sub_20C13D5F4();
              v41 = *&v39[OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_indicatorView];
              if (v40)
              {
                [v41 startAnimating];
                [v39 setUserInteractionEnabled_];
                v54 = objc_opt_self();
                v42 = *&v39[OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_layout + 24];
                v43 = swift_allocObject();
                *(v43 + 16) = v39;
                v65 = sub_20B7A7B3C;
                v66 = v43;
                aBlock = MEMORY[0x277D85DD0];
                v62 = 1107296256;
                v63 = sub_20B7B548C;
                v64 = &block_descriptor_54_0;
                v44 = v28;
                v45 = v26;
                v46 = v24;
                v47 = v15;
                v48 = _Block_copy(&aBlock);
                v49 = v35;

                [v54 animateWithDuration:v48 animations:v42];
                v50 = v48;
                v15 = v47;
                v24 = v46;
                v26 = v45;
                v28 = v44;
                _Block_release(v50);
                v35 = *(v15 + v53);
                *(v15 + v53) = v39;
              }

              else
              {
                [v41 stopAnimating];
                [v39 setUserInteractionEnabled_];
                v31 = objc_opt_self();
                v32 = *&v39[OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_layout + 24];
                v33 = swift_allocObject();
                *(v33 + 16) = v39;
                v65 = sub_20B7A7B34;
                v66 = v33;
                aBlock = MEMORY[0x277D85DD0];
                v62 = 1107296256;
                v63 = sub_20B7B548C;
                v64 = &block_descriptor_48_0;
                v34 = _Block_copy(&aBlock);
                v35 = v35;

                [v31 animateWithDuration:v34 animations:v32];
                _Block_release(v34);
              }

              i = v56;
            }

            ++v30;
            if (v37 == i)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          ;
        }

LABEL_22:
      }

      else
      {
      }
    }
  }
}

uint64_t sub_20B7A7104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteParticipantButton();
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C135174();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B7A80F4(a1, v6, type metadata accessor for RemoteParticipantButton);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7654B8);
    sub_20B7A7B44(*&v6[*(v11 + 48)]);
    (*(v8 + 32))(v10, v6, v7);
    v12 = MEMORY[0x20F2EC8B0](v10, a2);
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_20B7A815C(v6, type metadata accessor for RemoteParticipantButton);
    v12 = 0;
  }

  return v12 & 1;
}

void sub_20B7A72DC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_collectionView) visibleCells];
  sub_20B51C88C(0, &qword_27C772960);
  v2 = sub_20C13CC74();

  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F2F5430](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      type metadata accessor for TVRemoteParticipantCell();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;
        [*(v8 + OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_indicatorView) stopAnimating];
        [v9 setUserInteractionEnabled_];
        v10 = objc_opt_self();
        v11 = *&v9[OBJC_IVAR____TtC9SeymourUI23TVRemoteParticipantCell_layout + 24];
        v12 = swift_allocObject();
        *(v12 + 16) = v9;
        aBlock[4] = sub_20B7A7AA4;
        aBlock[5] = v12;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_20B7B548C;
        aBlock[3] = &block_descriptor_13;
        v13 = _Block_copy(aBlock);
        v14 = v6;

        [v10 animateWithDuration:v13 animations:v11];
        _Block_release(v13);
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  v15 = *(v16 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_currentlyConnectingCell);
  *(v16 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_currentlyConnectingCell) = 0;
}

uint64_t sub_20B7A7558()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationController];

    if (v2)
    {
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    sub_20BAFABC8();
  }

  return result;
}

void sub_20B7A7630()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A4F0);
  v0 = *(sub_20C13BE54() + 16);

  if (v0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_7;
    }

    v2 = &selRef_stopAnimating;
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_7;
    }

    v2 = &selRef_startAnimating;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_indicatorView);

  [v4 *v2];
LABEL_7:
  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    [v5 setNeedsFocusUpdate];
  }
}

uint64_t sub_20B7A78B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B7A78F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_28Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A4F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_20B7A7A0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A4F0);

  sub_20B7A7630();
}

unint64_t sub_20B7A7AAC()
{
  result = qword_27C764670;
  if (!qword_27C764670)
  {
    sub_20B51C88C(255, &qword_27C762910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764670);
  }

  return result;
}

void *sub_20B7A7B44(void *result)
{
  if (result)
  {
  }

  return result;
}

void sub_20B7A7B84()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_layout;
  *v1 = xmmword_20C1588C0;
  *(v1 + 16) = xmmword_20C1588D0;
  *(v1 + 32) = 0x7069636974726150;
  *(v1 + 40) = 0xEF6C6C6543746E61;
  *(v1 + 48) = xmmword_20C1588E0;
  *(v1 + 64) = 0x4038000000000000;
  *(v0 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_currentlyConnectingCell) = 0;
  v2 = OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_titleLabel;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = objc_opt_self();
  v5 = [v4 preferredFontForTextStyle_];
  [v3 setFont_];

  [v3 setTextAlignment_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  v6 = OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_indicatorView;
  v7 = [objc_allocWithZone(MEMORY[0x277D750E8]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v6) = v7;
  v8 = OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_promptLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = [v4 preferredFontForTextStyle_];
  [v9 setFont_];

  [v9 setTextAlignment_];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v13 = sub_20C13C914();
  [v9 setText_];

  v14 = v9;
  [v14 setAlpha_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v8) = v14;
  v15 = OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_promptIndicatorView;
  v16 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v15) = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_menuGestureRecognizer;
  *(v0 + v17) = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:0 action:0];
  v18 = OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_playPauseGestureRecognizer;
  *(v0 + v18) = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:0 action:0];
  sub_20C13DE24();
  __break(1u);
}

void sub_20B7A7F18(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A4F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_dataSource);
  if (v8)
  {
    v9 = v8;
    sub_20C13BFA4();
    v10 = sub_20C13BE54();
    (*(v5 + 8))(v7, v4);
    v11 = *(v10 + 16);

    if (v11 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = *(v2 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_layout + 8) * v11 + *(v2 + OBJC_IVAR____TtC9SeymourUI37RemoteBrowsingDiscoveryViewController_layout + 24) * (v12 - 1);
    [a1 bounds];
    if (v13 < v14)
    {
      [a1 bounds];
    }
  }
}

uint64_t sub_20B7A80F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B7A815C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B7A81BC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_20B7A8228(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_layout];
  __asm { FMOV            V0.2D, #10.0 }

  *v11 = _Q0;
  *(v11 + 2) = 0x4018000000000000;
  v17 = OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_downloadButton;
  type metadata accessor for DownloadButton();
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v17] = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_trainerButton;
  type metadata accessor for TightButton();
  v20 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v19] = v20;
  v109 = OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_tagsLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  v22 = *MEMORY[0x277D76968];
  v23 = *MEMORY[0x277D74418];
  v104 = objc_opt_self();
  v24 = [v104 preferredFontDescriptorWithTextStyle:v22 compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v26 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v27 = swift_initStackObject();
  v28 = MEMORY[0x277D74430];
  *(v27 + 16) = xmmword_20C14F980;
  v29 = *v28;
  *(v27 + 32) = *v28;
  *(v27 + 40) = v23;
  v103 = v26;
  v102 = v29;
  v30 = sub_20B6B134C(v27);
  swift_setDeallocating();
  sub_20B520158(v27 + 32, &unk_27C773200);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 64) = v31;
  *(inited + 40) = v30;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B7AA590(&qword_27C7618A0, type metadata accessor for AttributeName);
  v32 = sub_20C13C744();

  v33 = [v24 fontDescriptorByAddingAttributes_];

  v34 = objc_opt_self();
  v35 = [v34 fontWithDescriptor:v33 size:0.0];

  [v21 setFont_];
  [v21 setLineBreakMode_];
  [v21 setNumberOfLines_];
  v36 = [objc_opt_self() whiteColor];
  [v21 setTextColor_];

  *&v4[v109] = v21;
  *&v4[OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_tagsLabelTopLayoutConstraint] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_accessibilityMediaTags] = 0;
  v113.receiver = v4;
  v113.super_class = type metadata accessor for WorkoutMediaTagsCell();
  v37 = objc_msgSendSuper2(&v113, sel_initWithFrame_, a1, a2, a3, a4);
  v38 = OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_trainerButton;
  v39 = *&v37[OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_trainerButton];
  v106 = v37;
  v40 = [v39 titleLabel];
  [v40 setAdjustsFontForContentSizeCategory_];

  v108 = v37;
  v110 = v38;
  v41 = [*&v37[v38] titleLabel];
  if (v41)
  {
    v42 = v41;
    v43 = *MEMORY[0x277D74420];
    v44 = [v104 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
    v45 = swift_initStackObject();
    *(v45 + 16) = xmmword_20C14F980;
    *(v45 + 32) = v103;
    v105 = v34;
    v46 = v31;
    v47 = swift_initStackObject();
    *(v47 + 16) = xmmword_20C14F980;
    *(v47 + 32) = v102;
    *(v47 + 40) = v43;
    v48 = v103;
    v49 = v102;
    v50 = sub_20B6B134C(v47);
    swift_setDeallocating();
    sub_20B520158(v47 + 32, &unk_27C773200);
    *(v45 + 64) = v46;
    *(v45 + 40) = v50;
    sub_20B6B143C(v45);
    swift_setDeallocating();
    sub_20B520158(v45 + 32, &qword_27C773210);
    v51 = sub_20C13C744();

    v52 = [v44 fontDescriptorByAddingAttributes_];

    v53 = [v105 fontWithDescriptor:v52 size:0.0];
    [v42 setFont_];
  }

  v54 = *&v37[v110];
  v55 = v106;
  [v54 addTarget:v55 action:sel_handleTrainerButtonTapped_ forControlEvents:64];
  v56 = v55;
  v57 = [v56 contentView];
  [v57 addSubview_];

  v58 = OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_downloadButton;
  v59 = *&v56[OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_downloadButton];
  [v59 addTarget:v56 action:sel_handleDownloadButtonTapped_ forControlEvents:64];

  v60 = [v56 &selRef_setMaximumFractionDigits_];
  [v60 addSubview_];

  v61 = [v56 &selRef_setMaximumFractionDigits_];
  v107 = OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_tagsLabel;
  [v61 addSubview_];

  v111 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_20C150060;
  v63 = [*&v56[v58] trailingAnchor];
  v64 = [v56 &selRef_setMaximumFractionDigits_];
  v65 = [v64 trailingAnchor];

  v66 = [v63 constraintEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B7AA590(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BBA4();
  LODWORD(v67) = v112;
  [v66 setPriority_];
  *(v62 + 32) = v66;
  v68 = [*&v56[v58] topAnchor];
  v69 = [v56 &selRef_setMaximumFractionDigits_];
  v70 = [v69 topAnchor];

  v71 = [v68 &selRef:v70 alertControllerReleasedDictationButton:? + 5];
  *(v62 + 40) = v71;
  v72 = [*&v56[v58] bottomAnchor];
  v73 = [v56 &selRef_setMaximumFractionDigits_];
  v74 = [v73 &selRef_secondaryLabel + 5];

  v75 = [v72 constraintLessThanOrEqualToAnchor_];
  sub_20C13BBA4();
  LODWORD(v76) = v112;
  [v75 setPriority_];
  *(v62 + 48) = v75;
  v77 = [*&v108[v110] leadingAnchor];
  v78 = [v56 &selRef_setMaximumFractionDigits_];
  v79 = [v78 leadingAnchor];

  v80 = [v77 constraintEqualToAnchor_];
  *(v62 + 56) = v80;
  v81 = [*&v108[v110] trailingAnchor];
  v82 = [*&v56[v58] leadingAnchor];
  v83 = [v81 constraintLessThanOrEqualToAnchor:v82 constant:-10.0];

  *(v62 + 64) = v83;
  v84 = [*&v108[v110] topAnchor];
  v85 = [v56 contentView];
  v86 = [v85 topAnchor];

  v87 = [v84 constraintEqualToAnchor_];
  *(v62 + 72) = v87;
  v88 = [*&v56[v107] leadingAnchor];
  v89 = [v56 contentView];
  v90 = [v89 leadingAnchor];

  v91 = [v88 constraintEqualToAnchor_];
  *(v62 + 80) = v91;
  v92 = [*&v56[v107] trailingAnchor];
  v93 = [*&v56[v58] leadingAnchor];
  v94 = [v92 constraintLessThanOrEqualToAnchor:v93 constant:-10.0];

  *(v62 + 88) = v94;
  v95 = [*&v56[v107] bottomAnchor];
  v96 = [v56 contentView];

  v97 = [v96 bottomAnchor];
  v98 = [v95 constraintEqualToAnchor_];

  sub_20C13BBA4();
  LODWORD(v99) = v112;
  [v98 setPriority_];
  *(v62 + 96) = v98;
  sub_20B5E29D0();
  v100 = sub_20C13CC54();

  [v111 activateConstraints_];

  sub_20B7A9158(0, 0);
  return v56;
}

void sub_20B7A9158(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_tagsLabelTopLayoutConstraint;
  v5 = *&v2[OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_tagsLabelTopLayoutConstraint];
  if (v5)
  {
    v6 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_20C14F580;
    *(v7 + 32) = v5;
    sub_20B5E29D0();
    v8 = v5;
    v9 = sub_20C13CC54();

    [v6 deactivateConstraints_];
  }

  if (a2)
  {
    v10 = *&v2[OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_trainerButton];
    [v10 setHidden_];
    v11 = [v2 tagsLabel];
    v12 = [v11 topAnchor];

    v13 = [v10 bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:6.0];

    v15 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_20C14F580;
    *(v16 + 32) = v14;
    sub_20B5E29D0();
    v17 = v14;
    v18 = sub_20C13CC54();

    [v15 activateConstraints_];

    v19 = *&v2[v4];
    *&v2[v4] = v17;
    v20 = v17;

    v31 = sub_20C13C914();
    [v10 setTitle:v31 forState:0];

    v21 = v31;
  }

  else
  {
    [*&v2[OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_trainerButton] setHidden_];
    v22 = [v2 tagsLabel];
    v23 = [v22 topAnchor];

    v24 = [v2 contentView];
    v25 = [v24 topAnchor];

    v26 = [v23 constraintEqualToAnchor_];
    v27 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20C14F580;
    *(v28 + 32) = v26;
    sub_20B5E29D0();
    v29 = v26;
    v30 = sub_20C13CC54();

    [v27 activateConstraints_];

    v21 = *&v2[v4];
    *&v2[v4] = v29;
  }
}

id sub_20B7A96AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutMediaTagsCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WorkoutMediaTagsCell()
{
  result = qword_281102B20;
  if (!qword_281102B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B7A97E4()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20B7A98B8(unint64_t a1, int a2)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v56 - v11;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x41)
  {
    v58 = v6;
    v56 = a2;
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
    v18 = *(v13 + 48);
    v60 = *(v13 + 56);
    v19 = [v2 tagsLabel];
    [v19 setAttributedText_];

    sub_20B7A9158(v15, v17);
    sub_20C13B4A4();
    v20 = v2;
    v21 = sub_20C13BB74();
    v22 = sub_20C13D1F4();

    v23 = os_log_type_enabled(v21, v22);
    v59 = *&v16;
    v57 = v18;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v62 = v26;
      *v24 = 138543618;
      *(v24 + 4) = v20;
      *v25 = v20;
      *(v24 + 12) = 2082;
      v27 = v20;
      v28 = sub_20BCFF494(v16, v18);
      v30 = v5;
      v31 = sub_20B51E694(v28, v29, &v62);

      *(v24 + 14) = v31;
      _os_log_impl(&dword_20B517000, v21, v22, "[DownloadButton] Updating download button state in %{public}@ to %{public}s", v24, 0x16u);
      sub_20B520158(v25, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x20F2F6A40](v26, -1, -1);
      MEMORY[0x20F2F6A40](v24, -1, -1);

      (*(v58 + 8))(v12, v30);
    }

    else
    {

      (*(v58 + 8))(v12, v5);
    }

    v44 = *&v20[OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_downloadButton];
    v45 = &v44[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
    v46 = *&v44[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
    v47 = v44[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8];
    if (v47 <= 1)
    {
      if (v44[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8])
      {
        v49 = v57;
        v48 = *&v59;
        if (v57 == 1 && ((LODWORD(v46) ^ LODWORD(v59)) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v48 = *&v59;
        v49 = v57;
        if (!v57 && LOBYTE(v46) == LOBYTE(v59))
        {
          goto LABEL_27;
        }
      }
    }

    else if (v47 == 2)
    {
      v49 = v57;
      v48 = *&v59;
      if (v57 == 2 && v46 == v59)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v48 = *&v59;
      v49 = v57;
      if (v47 != 255)
      {
        if (*&v46 <= 1)
        {
          if (v46 == 0.0)
          {
            if (v57 == 3 && v59 == 0.0)
            {
              goto LABEL_27;
            }
          }

          else if (v57 == 3 && *&v59 == 1)
          {
            goto LABEL_27;
          }
        }

        else if (*&v46 == 2)
        {
          if (v57 == 3 && *&v59 == 2)
          {
            goto LABEL_27;
          }
        }

        else if (*&v46 == 3)
        {
          if (v57 == 3 && *&v59 == 3)
          {
            goto LABEL_27;
          }
        }

        else if (v57 == 3 && *&v59 == 4)
        {
          goto LABEL_27;
        }
      }
    }

    *v45 = v48;
    v45[8] = v49;
    sub_20C010054(v48, v49, 2.0);
    v51 = v50;
    v53 = v52;
    ObjectType = swift_getObjectType();
    sub_20C0DC2BC(v51, v56 & 1, v44, ObjectType, v53);
    swift_unknownObjectRelease();
LABEL_27:
    v55 = sub_20C13CC54();
    [v20 setAccessibilityMediaTags_];

    return;
  }

  sub_20C13B534();

  v32 = v2;
  v33 = sub_20C13BB74();
  v34 = sub_20C13D1D4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v60 = v5;
    v36 = v35;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v61 = a1;
    v62 = v38;
    *v36 = 138543618;
    *(v36 + 4) = v32;
    *v37 = v32;
    *(v36 + 12) = 2082;
    v39 = sub_20B5F66D0();
    v40 = v32;
    v41 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v39);
    v43 = sub_20B51E694(v41, v42, &v62);

    *(v36 + 14) = v43;
    _os_log_impl(&dword_20B517000, v33, v34, "Attempted to configure %{public}@ with item: %{public}s", v36, 0x16u);
    sub_20B520158(v37, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v37, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x20F2F6A40](v38, -1, -1);
    MEMORY[0x20F2F6A40](v36, -1, -1);

    (*(v6 + 8))(v8, v60);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_20B7A9E78(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B7A9EC4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B7A9F1C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B7A9FA0()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_layout;
  __asm { FMOV            V0.2D, #10.0 }

  *v3 = _Q0;
  *(v3 + 16) = 0x4018000000000000;
  v9 = OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_downloadButton;
  type metadata accessor for DownloadButton();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v9) = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_trainerButton;
  type metadata accessor for TightButton();
  v12 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v11) = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_tagsLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setAdjustsFontForContentSizeCategory_];
  v15 = *MEMORY[0x277D74418];
  v16 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v18 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_20C14F980;
  v20 = *MEMORY[0x277D74430];
  *(v19 + 32) = *MEMORY[0x277D74430];
  *(v19 + 40) = v15;
  v21 = v18;
  v22 = v20;
  v23 = sub_20B6B134C(v19);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v23;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B7AA590(&qword_27C7618A0, type metadata accessor for AttributeName);
  v24 = sub_20C13C744();

  v25 = [v16 fontDescriptorByAddingAttributes_];

  v26 = [objc_opt_self() fontWithDescriptor:v25 size:0.0];
  [v14 setFont_];

  [v14 setLineBreakMode_];
  [v14 setNumberOfLines_];
  v27 = [objc_opt_self() whiteColor];
  [v14 setTextColor_];

  *(v0 + v13) = v14;
  *(v0 + OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_tagsLabelTopLayoutConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI20WorkoutMediaTagsCell_accessibilityMediaTags) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B7AA3AC(uint64_t a1, void (*a2)(void, void, void, void))
{
  v4 = sub_20C133244();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = swift_storeEnumTagMultiPayload();
    *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
    *(&v17 - 4) = 0;
    *(&v17 - 24) = 1;
    *(&v17 - 2) = v10;
    *(&v17 - 1) = v12;
    v15 = [*(v12 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v15)
    {
      v16 = v15;
      sub_20C1331E4();

      sub_20C0C1CDC(v7, a2);
      (*(v5 + 8))(v7, v4);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v10);
  }

  return result;
}

uint64_t sub_20B7AA590(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B7AA5D8(char a1, unsigned __int8 a2, void *a3, double a4, double a5)
{
  v8 = *(v5 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_supportsScrolling);
  if ((a1 & 1) == 0)
  {
    if ((a2 & 0x80) != 0)
    {
      goto LABEL_38;
    }

    if (qword_27C760B20 != -1)
    {
      v39 = a2;
      swift_once();
      a2 = v39;
    }

    *v67 = *&qword_27C76D758;
    *&v67[16] = xmmword_27C76D768;
    *&v67[32] = unk_27C76D778;
    v68 = xmmword_27C76D788;
    v64 = xmmword_27C76D728;
    v65 = *&qword_27C76D738;
    v66 = xmmword_27C76D748;
    v69 = unk_27C76D798;
    v70 = xmmword_27C76D7A8;
    *&v72[16] = unk_27C76D7D8;
    *&v72[32] = xmmword_27C76D7E8;
    v71 = *&qword_27C76D7B8;
    *v72 = xmmword_27C76D7C8;
    v75 = unk_27C76D818;
    v76 = xmmword_27C76D828;
    v73 = unk_27C76D7F8;
    v74 = xmmword_27C76D808;
    *&v77[32] = unk_27C76D858;
    v78 = xmmword_27C76D868;
    *v77 = *&qword_27C76D838;
    *&v77[16] = *(&xmmword_27C76D840 + 8);
    v79 = unk_27C76D878;
    v80 = xmmword_27C76D888;
    *&v82[16] = *&qword_27C76D8B8;
    *&v82[32] = xmmword_27C76D8C8;
    v81 = *&qword_27C76D898;
    *v82 = xmmword_27C76D8A8;
    v85 = *&qword_27C76D8F8;
    v86 = xmmword_27C76D908;
    v83 = *&qword_27C76D8D8;
    v84 = xmmword_27C76D8E8;
    *&v87[32] = xmmword_27C76D938;
    v88 = xmmword_27C76D948;
    *v87 = *&qword_27C76D918;
    *&v87[16] = *(&xmmword_27C76D920 + 8);
    if (a2 <= 2u)
    {
      if (!a2)
      {
        goto LABEL_32;
      }

      if (a2 == 1)
      {
        v45 = *&v82[8];
        v47 = *&v82[24];
        v41 = *(&v83 + 1);
        v43 = v83;
        v20 = *&v82[40];
        v21 = *v82;
        v22 = v81;
        v23 = BYTE8(v81);
        v24 = BYTE13(v80);
        v25 = DWORD2(v80);
        v26 = BYTE12(v80);
        v28 = v80;
        v27 = *(&v79 + 1);
        v29 = v79;
        v30 = &v79;
        goto LABEL_33;
      }
    }

    else
    {
      if (a2 <= 4u)
      {
        if (a2 != 3)
        {
          v45 = *&v67[8];
          v47 = *&v67[24];
          v41 = *(&v68 + 1);
          v43 = v68;
          v20 = *&v67[40];
          v21 = *v67;
          v22 = v66;
          v23 = BYTE8(v66);
          v24 = BYTE13(v65);
          v25 = DWORD2(v65);
          v26 = BYTE12(v65);
          v27 = *(&v64 + 1);
          v28 = v65;
          v29 = v64;
          v30 = &v64;
LABEL_33:
          sub_20B7B07E8(v30, &v50);
          v89 = v29;
          v90 = v27;
          v91 = v28;
          v92 = v25;
          v93 = v26;
          v94 = v24;
          v95 = v22;
          v96 = v23;
          v97 = v21;
          v50 = v29;
          v51 = v27;
          v52 = v28;
          v53 = v25;
          v54 = v26;
          v55 = v24;
          v56 = v22;
          v57 = v23;
          v58 = v21;
          v59 = v45;
          v60 = v47;
          v61 = v20;
          v62 = v43;
          v63 = v41;
          v31 = sub_20B7C6A74(a3);
          sub_20B7B0844(&v50);
          v34 = *(v49 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_subtitleLabel);
          v33 = 3;
          goto LABEL_34;
        }

LABEL_28:
        v45 = *&v87[8];
        v47 = *&v87[24];
        v41 = *(&v88 + 1);
        v43 = v88;
        v20 = *&v87[40];
        v21 = *v87;
        v22 = v86;
        v23 = BYTE8(v86);
        v24 = BYTE13(v85);
        v25 = DWORD2(v85);
        v26 = BYTE12(v85);
        v28 = v85;
        v27 = *(&v84 + 1);
        v29 = v84;
        v30 = &v84;
        goto LABEL_33;
      }

      if (a2 == 5)
      {
        if (v8)
        {
          goto LABEL_28;
        }

LABEL_32:
        v45 = *&v77[8];
        v47 = *&v77[24];
        v41 = *(&v78 + 1);
        v43 = v78;
        v20 = *&v77[40];
        v21 = *v77;
        v22 = v76;
        v23 = BYTE8(v76);
        v24 = BYTE13(v75);
        v25 = DWORD2(v75);
        v26 = BYTE12(v75);
        v27 = *(&v74 + 1);
        v28 = v75;
        v29 = v74;
        v30 = &v74;
        goto LABEL_33;
      }
    }

    v45 = *&v72[8];
    v47 = *&v72[24];
    v41 = *(&v73 + 1);
    v43 = v73;
    v20 = *&v72[40];
    v21 = *v72;
    v22 = v71;
    v23 = BYTE8(v71);
    v24 = BYTE13(v70);
    v25 = DWORD2(v70);
    v26 = BYTE12(v70);
    v27 = *(&v69 + 1);
    v28 = v70;
    v29 = v69;
    v30 = &v69;
    goto LABEL_33;
  }

  if ((a2 & 0x80) != 0)
  {
LABEL_38:
    result = sub_20C13DE24();
    __break(1u);
    return result;
  }

  if (qword_27C760B28 != -1)
  {
    v38 = a2;
    swift_once();
    a2 = v38;
  }

  *v67 = *&qword_27C76D988;
  *&v67[16] = xmmword_27C76D998;
  *&v67[32] = unk_27C76D9A8;
  v68 = xmmword_27C76D9B8;
  v64 = xmmword_27C76D958;
  v65 = *&qword_27C76D968;
  v66 = xmmword_27C76D978;
  v69 = unk_27C76D9C8;
  v70 = xmmword_27C76D9D8;
  *&v72[32] = xmmword_27C76DA18;
  v73 = unk_27C76DA28;
  *v72 = xmmword_27C76D9F8;
  *&v72[16] = unk_27C76DA08;
  v71 = *&qword_27C76D9E8;
  v74 = xmmword_27C76DA38;
  v75 = unk_27C76DA48;
  *&v77[16] = *(&xmmword_27C76DA70 + 8);
  *&v77[32] = unk_27C76DA88;
  v76 = xmmword_27C76DA58;
  *v77 = *&qword_27C76DA68;
  v80 = xmmword_27C76DAB8;
  v81 = *&qword_27C76DAC8;
  v78 = xmmword_27C76DA98;
  v79 = unk_27C76DAA8;
  *&v82[32] = xmmword_27C76DAF8;
  v83 = *&qword_27C76DB08;
  *v82 = xmmword_27C76DAD8;
  *&v82[16] = *&qword_27C76DAE8;
  v84 = xmmword_27C76DB18;
  v85 = *&qword_27C76DB28;
  *&v87[32] = xmmword_27C76DB68;
  v88 = xmmword_27C76DB78;
  *v87 = *&qword_27C76DB48;
  *&v87[16] = *(&xmmword_27C76DB50 + 8);
  v86 = xmmword_27C76DB38;
  if (a2 <= 2u)
  {
    if (!a2)
    {
      goto LABEL_30;
    }

    if (a2 == 1)
    {
      v44 = *&v82[8];
      v46 = *&v82[24];
      v40 = *(&v83 + 1);
      v42 = v83;
      v9 = *&v82[40];
      v10 = *v82;
      v11 = v81;
      v12 = BYTE8(v81);
      v13 = BYTE13(v80);
      v14 = DWORD2(v80);
      v15 = BYTE12(v80);
      v17 = v80;
      v16 = *(&v79 + 1);
      v18 = v79;
      v19 = &v79;
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      if (v8)
      {
        goto LABEL_24;
      }

LABEL_30:
      v44 = *&v77[8];
      v46 = *&v77[24];
      v40 = *(&v78 + 1);
      v42 = v78;
      v9 = *&v77[40];
      v10 = *v77;
      v11 = v76;
      v12 = BYTE8(v76);
      v13 = BYTE13(v75);
      v14 = DWORD2(v75);
      v15 = BYTE12(v75);
      v16 = *(&v74 + 1);
      v17 = v75;
      v18 = v74;
      v19 = &v74;
      goto LABEL_31;
    }

LABEL_25:
    v44 = *&v72[8];
    v46 = *&v72[24];
    v40 = *(&v73 + 1);
    v42 = v73;
    v9 = *&v72[40];
    v10 = *v72;
    v11 = v71;
    v12 = BYTE8(v71);
    v13 = BYTE13(v70);
    v14 = DWORD2(v70);
    v15 = BYTE12(v70);
    v16 = *(&v69 + 1);
    v17 = v70;
    v18 = v69;
    v19 = &v69;
    goto LABEL_31;
  }

  if (a2 == 3)
  {
LABEL_24:
    v44 = *&v87[8];
    v46 = *&v87[24];
    v40 = *(&v88 + 1);
    v42 = v88;
    v9 = *&v87[40];
    v10 = *v87;
    v11 = v86;
    v12 = BYTE8(v86);
    v13 = BYTE13(v85);
    v14 = DWORD2(v85);
    v15 = BYTE12(v85);
    v17 = v85;
    v16 = *(&v84 + 1);
    v18 = v84;
    v19 = &v84;
    goto LABEL_31;
  }

  v44 = *&v67[8];
  v46 = *&v67[24];
  v40 = *(&v68 + 1);
  v42 = v68;
  v9 = *&v67[40];
  v10 = *v67;
  v11 = v66;
  v12 = BYTE8(v66);
  v13 = BYTE13(v65);
  v14 = DWORD2(v65);
  v15 = BYTE12(v65);
  v16 = *(&v64 + 1);
  v17 = v65;
  v18 = v64;
  v19 = &v64;
LABEL_31:
  sub_20B7B07E8(v19, &v50);
  v89 = v18;
  v90 = v16;
  v91 = v17;
  v92 = v14;
  v93 = v15;
  v94 = v13;
  v95 = v11;
  v96 = v12;
  v97 = v10;
  v50 = v18;
  v51 = v16;
  v52 = v17;
  v53 = v14;
  v54 = v15;
  v55 = v13;
  v56 = v11;
  v57 = v12;
  v58 = v10;
  v59 = v44;
  v60 = v46;
  v61 = v9;
  v62 = v42;
  v63 = v40;
  v31 = sub_20B7C6A74(a3);
  sub_20B7B0844(&v50);
  v32 = *(v49 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_titleLabel);
  v33 = 4;
LABEL_34:
  swift_getObjectType();
  v35 = off_2822AE7F0();
  swift_unknownObjectRelease();
  if (v35)
  {
    v36 = sub_20B914D2C(v31, v33, a4, a5);
  }

  else
  {
    v36 = 1;
  }

  return v36;
}

char *sub_20B7AAD08(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = &v4[OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_currentContainerSize];
  *v10 = 0;
  v10[1] = 0;
  v4[OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_currentLayout] = 7;
  v11 = OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_itemInfo;
  v12 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v13 = &v5[OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_artworkView];
  v14 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *v13 = v14;
  v13[1] = &off_2822B63E8;
  v15 = OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_vibrantShadowView;
  v16 = [objc_allocWithZone(type metadata accessor for VibrantShadowView()) initWithFrame_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v15] = v16;
  *&v5[OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_oldWidth] = 0;
  v5[OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_supportsScrolling] = 1;
  v17 = objc_allocWithZone(type metadata accessor for ProgramBrickContentView());
  v18 = sub_20BEC02C8(1);
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_programContentView] = v18;
  v109.receiver = v5;
  v109.super_class = type metadata accessor for ProgramBrickItemCell();
  v19 = objc_msgSendSuper2(&v109, sel_initWithFrame_, a1, a2, a3, a4);
  v20 = [v19 contentView];
  v21 = OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_artworkView;
  [v20 addSubview_];

  v22 = [v19 &selRef_setMaximumFractionDigits_];
  v105 = OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_vibrantShadowView;
  [v22 addSubview_];

  v23 = *&v19[OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_programContentView];
  v24 = OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_programContentView;
  v107 = OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_programContentView;
  v25 = *&v19[v21];
  v26 = *&v23[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_recencyIconView];
  v27 = *(v26 + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layoutView);
  *(v26 + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layoutView) = v25;
  v28 = v23;
  v29 = v25;

  v30 = [v19 &selRef_setMaximumFractionDigits_];
  [v30 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C1517D0;
  v31 = *&v19[v21];
  v32 = [v19 &selRef_setMaximumFractionDigits_];
  v33 = *MEMORY[0x277D768C8];
  v34 = *(MEMORY[0x277D768C8] + 8);
  v36 = *(MEMORY[0x277D768C8] + 16);
  v35 = *(MEMORY[0x277D768C8] + 24);
  v37 = [v31 leadingAnchor];
  v38 = [v32 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:v34];

  LODWORD(v40) = 1148846080;
  [v39 setPriority_];
  v41 = v39;
  v42 = [v31 trailingAnchor];
  v43 = [v32 trailingAnchor];
  v44 = -v35;
  v45 = [v42 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v46) = 1148846080;
  [v45 &selRef_meterUnit];
  v47 = v45;
  v48 = [v31 topAnchor];
  v49 = [v32 &selRef_setLineBreakMode_];
  v50 = [v48 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v51) = 1148846080;
  [v50 &selRef_meterUnit];
  v52 = [v31 bottomAnchor];
  v53 = [v32 &selRef_secondaryLabel + 5];
  v54 = -v36;
  v55 = [v52 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v56) = 1148846080;
  [v55 &selRef_meterUnit];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_20C14FE90;
  *(v57 + 32) = v41;
  *(v57 + 40) = v47;
  *(v57 + 48) = v50;
  *(v57 + 56) = v55;
  v58 = v50;

  *(inited + 32) = v57;
  v59 = *&v19[v105];
  v60 = [v19 contentView];
  v61 = [v59 leadingAnchor];
  v62 = [v60 leadingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:v34];

  LODWORD(v64) = 1148846080;
  [v63 setPriority_];
  v106 = v63;
  v65 = [v59 trailingAnchor];
  v66 = [v60 trailingAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:v44];

  LODWORD(v68) = 1148846080;
  [v67 setPriority_];
  v69 = v67;
  v70 = [v59 topAnchor];
  v71 = [v60 topAnchor];
  v72 = [v70 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v73) = 1148846080;
  [v72 setPriority_];
  v74 = [v59 bottomAnchor];
  v75 = [v60 bottomAnchor];
  v76 = [v74 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v77) = 1148846080;
  [v76 setPriority_];
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_20C14FE90;
  *(v78 + 32) = v106;
  *(v78 + 40) = v69;
  *(v78 + 48) = v72;
  *(v78 + 56) = v76;
  v79 = v72;

  *(inited + 40) = v78;
  v80 = *&v19[v107];
  v81 = [v19 contentView];

  v82 = [v80 leadingAnchor];
  v83 = [v81 leadingAnchor];
  v84 = [v82 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v85) = 1148846080;
  [v84 &selRef_meterUnit];
  v86 = v84;
  v87 = [v80 trailingAnchor];
  v88 = [v81 trailingAnchor];
  v89 = [v87 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v90) = 1148846080;
  [v89 &selRef_meterUnit];
  v91 = v89;
  v92 = [v80 topAnchor];
  v93 = [v81 topAnchor];
  v94 = [v92 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v95) = 1148846080;
  [v94 &selRef_meterUnit];
  v96 = [v80 bottomAnchor];
  v97 = [v81 bottomAnchor];
  v98 = [v96 constraintEqualToAnchor:v97 constant:v54];

  LODWORD(v99) = 1148846080;
  [v98 &selRef_meterUnit];
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_20C14FE90;
  *(v100 + 32) = v86;
  *(v100 + 40) = v91;
  *(v100 + 48) = v94;
  *(v100 + 56) = v98;
  v101 = v94;

  *(inited + 48) = v100;
  v102 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500);
  v103 = sub_20C13CC54();

  [v102 activateConstraints_];

  return v19;
}

id sub_20B7AB87C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_oldWidth;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_oldWidth];
  [v0 bounds];
  if (v2 != CGRectGetWidth(v5))
  {
    [v0 bounds];
    *&v0[v1] = CGRectGetWidth(v6);
    sub_20BBC6C14();
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for ProgramBrickItemCell();
  return objc_msgSendSuper2(&v4, sel_layoutSubviews);
}

void sub_20B7ABAFC(void *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ProgramBrickItemCell();
  objc_msgSendSuper2(&v7, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = v3;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v3 || (sub_20B51C88C(0, &qword_27C7655A0), v5 = a1, v6 = sub_20C13D5F4(), v5, v4, (v6 & 1) == 0))
  {
LABEL_7:
    sub_20BBC6C14();
  }
}

id sub_20B7ABC3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgramBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ProgramBrickItemCell()
{
  result = qword_281102C40;
  if (!qword_281102C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B7ABD54()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20B7ABE34(uint64_t a1)
{
  v2 = sub_20C13C4C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_artworkView + 8);
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_artworkView);

    ObjectType = swift_getObjectType();
    v11 = (*(v7 + 112))(ObjectType, v7);

    if (v11)
    {
      (*(v3 + 104))(v5, *MEMORY[0x277D851C0], v2);

      sub_20BD519D8(v11, v5, sub_20B7B0AE8, a1);

      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_20B7ABFD4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_programContentView);

    v5 = *&v4[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_recencyIconView];
    [*&v5[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_imageView] setImage_];
    [v5 setNeedsLayout];
  }
}

uint64_t sub_20B7AC080(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B7AC0CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B7AC124(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_20B7AC188(int a1, id a2)
{
  [objc_msgSend(a2 container)];
  v4 = v3;
  swift_unknownObjectRelease();
  v5 = [a2 traitCollection];
  v6 = v5;
  if (v4 >= 350.0)
  {
    [v5 horizontalSizeClass];
    sub_20C1380F4();
    v8 = sub_20C138104();
    v7 = 1;
    if (v8 == sub_20C138104())
    {
      v7 = sub_20BDF9A7C(v4);
    }
  }

  else
  {
    v7 = 0;
  }

  return sub_20B7B1B80(v7, a2);
}

uint64_t sub_20B7AC284(uint64_t a1, char a2, uint64_t a3)
{
  v17 = &v19;
  v18 = a2;
  v7 = sub_20B796808(sub_20B7B0AF0, v16, a1);
  if (v7)
  {
    v8 = v3[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_currentLayout];
    v9 = 0.0;
    if (v8 != 7)
    {
      if (v8 > 1)
      {
        [v3 bounds];
        Width = CGRectGetWidth(v20);
      }

      else
      {
        Width = *&v3[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_currentContainerSize];
      }

      v9 = Width * *&v3[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_styleProvider + 48];
      [v3 bounds];
      CGRectGetHeight(v21);
    }

    v13[2] = &v19;
    *&v13[3] = v9;
    v13[4] = MEMORY[0x28223BE20](v7).n128_u64[0];
    v14 = a2;
    v15 = a3;
    v11 = sub_20B796808(sub_20B7B0B3C, v13, a1);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_20B7AC3D4(uint64_t a1, char a2, uint64_t a3)
{
  v17 = &v19;
  v18 = a2;
  v7 = sub_20B796808(sub_20B7B2540, v16, a1);
  if (v7)
  {
    v8 = v3[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentLayout];
    v9 = 0.0;
    if (v8 != 4)
    {
      v10 = 0.45;
      if (v8 < 2)
      {
        v10 = 0.5;
      }

      v9 = v10 * *&v3[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentContainerSize];
      [v3 bounds];
      CGRectGetHeight(v20);
    }

    v13[2] = &v19;
    *&v13[3] = v9;
    v13[4] = MEMORY[0x28223BE20](v7).n128_u64[0];
    v14 = a2;
    v15 = a3;
    v11 = sub_20B796808(sub_20B7B2574, v13, a1);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_20B7AC50C(char a1, uint64_t a2, char a3, void *a4, double a5, double a6)
{
  if ((a1 & 1) == 0)
  {
    if (a3 < 0)
    {
      v19 = a3 & 0x7F;
      if (qword_27C7606A0 != -1)
      {
        swift_once();
      }

      *v67 = *&qword_27C7633C8;
      *&v67[16] = xmmword_27C7633D8;
      *&v67[32] = unk_27C7633E8;
      v68 = unk_27C7633F8;
      v64 = xmmword_27C763398;
      v65 = *&qword_27C7633A8;
      v66 = xmmword_27C7633B8;
      v69 = unk_27C763408;
      v70 = unk_27C763418;
      *&v72[16] = *&qword_27C763448;
      *&v72[32] = xmmword_27C763458;
      v71 = *&qword_27C763428;
      *v72 = xmmword_27C763438;
      v75 = *&qword_27C763488;
      v76 = xmmword_27C763498;
      v73 = *&qword_27C763468;
      v74 = xmmword_27C763478;
      *&v77[32] = *(&xmmword_27C7634C0 + 8);
      v78 = unk_27C7634D8;
      *v77 = *&qword_27C7634A8;
      *&v77[16] = *(&xmmword_27C7634B0 + 8);
      v79 = unk_27C7634E8;
      v80 = unk_27C7634F8;
      *&v82[32] = *(&xmmword_27C763530 + 8);
      v83 = unk_27C763548;
      *v82 = xmmword_27C763518;
      *&v82[16] = unk_27C763528;
      v81 = *&qword_27C763508;
      if (v19 > 1)
      {
        if (v19 == 2)
        {
          v45 = *&v77[8];
          v47 = *&v77[24];
          v41 = *(&v78 + 1);
          v43 = v78;
          v39 = *&v77[40];
          v20 = *v77;
          v21 = v76;
          v22 = BYTE8(v76);
          v23 = BYTE13(v75);
          v24 = DWORD2(v75);
          v25 = BYTE12(v75);
          v27 = *(&v74 + 1);
          v26 = v75;
          v28 = v74;
          v29 = &v74;
        }

        else
        {
          v45 = *&v82[8];
          v47 = *&v82[24];
          v41 = *(&v83 + 1);
          v43 = v83;
          v39 = *&v82[40];
          v20 = *v82;
          v21 = v81;
          v22 = BYTE8(v81);
          v23 = BYTE13(v80);
          v24 = DWORD2(v80);
          v25 = BYTE12(v80);
          v26 = v80;
          v27 = *(&v79 + 1);
          v28 = v79;
          v29 = &v79;
        }
      }

      else if (v19)
      {
        v45 = *&v72[8];
        v47 = *&v72[24];
        v41 = *(&v73 + 1);
        v43 = v73;
        v39 = *&v72[40];
        v20 = *v72;
        v21 = v71;
        v22 = BYTE8(v71);
        v23 = BYTE13(v70);
        v24 = DWORD2(v70);
        v25 = BYTE12(v70);
        v27 = *(&v69 + 1);
        v26 = v70;
        v28 = v69;
        v29 = &v69;
      }

      else
      {
        v45 = *&v67[8];
        v47 = *&v67[24];
        v41 = *(&v68 + 1);
        v43 = v68;
        v39 = *&v67[40];
        v20 = *v67;
        v21 = v66;
        v22 = BYTE8(v66);
        v23 = BYTE13(v65);
        v24 = DWORD2(v65);
        v25 = BYTE12(v65);
        v27 = *(&v64 + 1);
        v26 = v65;
        v28 = v64;
        v29 = &v64;
      }

      sub_20B7B07E8(v29, &v50);
      v84 = v28;
      v85 = v27;
      v86 = v26;
      v87 = v24;
      v88 = v25;
      v89 = v23;
      v90 = v21;
      v91 = v22;
      v92 = v20;
      v50 = v28;
      v51 = v27;
      v52 = v26;
      v53 = v24;
      v54 = v25;
      v55 = v23;
      v56 = v21;
      v57 = v22;
      v58 = v20;
      v59 = v45;
      v60 = v47;
      v61 = v39;
      v62 = v43;
      v63 = v41;
      v30 = sub_20B7C6A74(a4);
      sub_20B7B0844(&v50);
      v33 = *(a2 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_subtitleLabel);
      v32 = 3;
      goto LABEL_24;
    }

LABEL_28:
    result = sub_20C13DE24();
    __break(1u);
    return result;
  }

  if ((a3 & 0x80) == 0)
  {
    goto LABEL_28;
  }

  v8 = a3 & 0x7F;
  if (qword_27C7606A8 != -1)
  {
    swift_once();
  }

  *v67 = *&qword_27C763588;
  *&v67[16] = xmmword_27C763598;
  *&v67[32] = unk_27C7635A8;
  v68 = unk_27C7635B8;
  v64 = xmmword_27C763558;
  v65 = *&qword_27C763568;
  v66 = xmmword_27C763578;
  v69 = unk_27C7635C8;
  v70 = unk_27C7635D8;
  *&v72[32] = xmmword_27C763618;
  v73 = *&qword_27C763628;
  *v72 = xmmword_27C7635F8;
  *&v72[16] = *&qword_27C763608;
  v71 = *&qword_27C7635E8;
  v74 = xmmword_27C763638;
  v75 = *&qword_27C763648;
  *&v77[16] = *(&xmmword_27C763670 + 8);
  *&v77[32] = *(&xmmword_27C763680 + 8);
  v76 = xmmword_27C763658;
  *v77 = *&qword_27C763668;
  v80 = unk_27C7636B8;
  v81 = *&qword_27C7636C8;
  v78 = unk_27C763698;
  v79 = unk_27C7636A8;
  *&v82[32] = *(&xmmword_27C7636F0 + 8);
  v83 = unk_27C763708;
  *v82 = xmmword_27C7636D8;
  *&v82[16] = unk_27C7636E8;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v44 = *&v77[8];
      v46 = *&v77[24];
      v40 = *(&v78 + 1);
      v42 = v78;
      v38 = *&v77[40];
      v9 = *v77;
      v10 = v76;
      v11 = BYTE8(v76);
      v12 = BYTE13(v75);
      v13 = DWORD2(v75);
      v14 = BYTE12(v75);
      v16 = *(&v74 + 1);
      v15 = v75;
      v17 = v74;
      v18 = &v74;
    }

    else
    {
      v44 = *&v82[8];
      v46 = *&v82[24];
      v40 = *(&v83 + 1);
      v42 = v83;
      v38 = *&v82[40];
      v9 = *v82;
      v10 = v81;
      v11 = BYTE8(v81);
      v12 = BYTE13(v80);
      v13 = DWORD2(v80);
      v14 = BYTE12(v80);
      v15 = v80;
      v16 = *(&v79 + 1);
      v17 = v79;
      v18 = &v79;
    }
  }

  else if (v8)
  {
    v44 = *&v72[8];
    v46 = *&v72[24];
    v40 = *(&v73 + 1);
    v42 = v73;
    v38 = *&v72[40];
    v9 = *v72;
    v10 = v71;
    v11 = BYTE8(v71);
    v12 = BYTE13(v70);
    v13 = DWORD2(v70);
    v14 = BYTE12(v70);
    v16 = *(&v69 + 1);
    v15 = v70;
    v17 = v69;
    v18 = &v69;
  }

  else
  {
    v44 = *&v67[8];
    v46 = *&v67[24];
    v40 = *(&v68 + 1);
    v42 = v68;
    v38 = *&v67[40];
    v9 = *v67;
    v10 = v66;
    v11 = BYTE8(v66);
    v12 = BYTE13(v65);
    v13 = DWORD2(v65);
    v14 = BYTE12(v65);
    v16 = *(&v64 + 1);
    v15 = v65;
    v17 = v64;
    v18 = &v64;
  }

  sub_20B7B07E8(v18, &v50);
  v84 = v17;
  v85 = v16;
  v86 = v15;
  v87 = v13;
  v88 = v14;
  v89 = v12;
  v90 = v10;
  v91 = v11;
  v92 = v9;
  v50 = v17;
  v51 = v16;
  v52 = v15;
  v53 = v13;
  v54 = v14;
  v55 = v12;
  v56 = v10;
  v57 = v11;
  v58 = v9;
  v59 = v44;
  v60 = v46;
  v61 = v38;
  v62 = v42;
  v63 = v40;
  v30 = sub_20B7C6A74(a4);
  sub_20B7B0844(&v50);
  v31 = *(a2 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_titleLabel);
  v32 = 4;
LABEL_24:
  swift_getObjectType();
  v34 = off_2822AE7F0();
  swift_unknownObjectRelease();
  if (v34)
  {
    v35 = sub_20B914D2C(v30, v32, a5, a6);

    return !v35;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_20B7ACB68(unsigned __int8 a1, void *a2, char a3)
{
  *(v3 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_isMinFontPreferred) = a3;
  v5 = sub_20BE8BF3C(&unk_282286F70);
  v6 = 0;
  v7 = v5 + 56;
  v117 = v5;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 56);
  v113 = OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_supportsScrolling;
  v100 = (v3 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_titleLabel);
  v115 = v3;
  v99 = (v3 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_subtitleLabel);
  v11 = (v8 + 63) >> 6;
  v101 = *MEMORY[0x277D740A8];
  v112 = a1;
  v110 = v11;
  v111 = v5 + 56;
  while (v10)
  {
LABEL_10:
    v13 = *(*(v117 + 48) + (__clz(__rbit64(v10)) | (v6 << 6)));
    v14 = *(v115 + v113);
    if (a3)
    {
      if (v13)
      {
        if ((a1 & 0x80) != 0)
        {
          goto LABEL_90;
        }

        if (qword_27C760B28 != -1)
        {
          swift_once();
        }

        *&v138[16] = xmmword_27C76D998;
        *&v138[32] = unk_27C76D9A8;
        v139 = xmmword_27C76D9B8;
        v140 = unk_27C76D9C8;
        v135 = xmmword_27C76D958;
        v136 = *&qword_27C76D968;
        v137 = xmmword_27C76D978;
        *v138 = *&qword_27C76D988;
        v141 = xmmword_27C76D9D8;
        v142 = *&qword_27C76D9E8;
        *&v143[32] = xmmword_27C76DA18;
        v144 = unk_27C76DA28;
        *v143 = xmmword_27C76D9F8;
        *&v143[16] = unk_27C76DA08;
        v145 = xmmword_27C76DA38;
        v146 = unk_27C76DA48;
        *&v148[32] = unk_27C76DA88;
        v149 = xmmword_27C76DA98;
        *v148 = *&qword_27C76DA68;
        *&v148[16] = *(&xmmword_27C76DA70 + 8);
        v147 = xmmword_27C76DA58;
        v150 = unk_27C76DAA8;
        v151 = xmmword_27C76DAB8;
        *&v153[32] = xmmword_27C76DAF8;
        v154 = *&qword_27C76DB08;
        *v153 = xmmword_27C76DAD8;
        *&v153[16] = *&qword_27C76DAE8;
        v152 = *&qword_27C76DAC8;
        v155 = xmmword_27C76DB18;
        v156 = *&qword_27C76DB28;
        *&v158[32] = xmmword_27C76DB68;
        v159 = xmmword_27C76DB78;
        *v158 = *&qword_27C76DB48;
        *&v158[16] = *(&xmmword_27C76DB50 + 8);
        v157 = xmmword_27C76DB38;
        if (a1 <= 2u)
        {
          if (!a1)
          {
            goto LABEL_69;
          }

          if (a1 == 1)
          {
            v85 = *&v153[24];
            v95 = *&v153[8];
            v102 = *(&v154 + 1);
            v90 = v154;
            v106 = *&v153[40];
            v15 = *v153;
            v81 = v152;
            v16 = BYTE8(v152);
            v17 = BYTE13(v151);
            v18 = DWORD2(v151);
            LOBYTE(v19) = BYTE12(v151);
            v20 = v151;
            v21 = *(&v150 + 1);
            v22 = v150;
            v23 = &v150;
            goto LABEL_70;
          }
        }

        else
        {
          if (a1 <= 4u)
          {
            if (a1 != 3)
            {
              v85 = *&v138[24];
              v95 = *&v138[8];
              v102 = *(&v139 + 1);
              v90 = v139;
              v106 = *&v138[40];
              v15 = *v138;
              v81 = v137;
              v16 = BYTE8(v137);
              v17 = BYTE13(v136);
              v18 = DWORD2(v136);
              LOBYTE(v19) = BYTE12(v136);
              v21 = *(&v135 + 1);
              v20 = v136;
              v22 = v135;
              v23 = &v135;
LABEL_70:
              sub_20B7B07E8(v23, &v126);
              v51 = v22;
              *&v122 = v22;
              *(&v122 + 1) = v21;
              v52 = v21;
              *&v123 = v20;
              DWORD2(v123) = v18;
              BYTE12(v123) = v19;
              BYTE13(v123) = v17;
              v53 = v81;
              *&v124 = v81;
              BYTE8(v124) = v16;
              v125 = v15;
              v126 = v122;
              v127 = v123;
              v128 = v124;
              v54 = v95;
              v130 = v95;
              v131 = v85;
              v129 = v15;
              v132 = v106;
              v133 = v90;
              v134 = v102;
              v55 = v85;
              v56 = *(&v95 + 1);
              if (v85)
              {
                v57 = *(&v85 + 1) >> 40;
                v19 = HIDWORD(*(&v85 + 1)) & 1;
                v58 = *(&v95 + 1);
                v59 = v95;
                v18 = DWORD2(v85);
                v20 = v85;
                v53 = v106;
                v16 = v90;
                v15 = v102;
              }

              else
              {
                v80 = v51;
                v89 = v52;
                sub_20B7B2490(&v122, &v118);
                LOBYTE(v57) = v17;
                v56 = *(&v95 + 1);
                v59 = v80;
                v58 = v89;
                v54 = v95;
              }

              *&v118 = v59;
              *(&v118 + 1) = v58;
              *&v119 = v20;
              DWORD2(v119) = v18;
              BYTE12(v119) = v19;
              BYTE13(v119) = v57;
              *&v120 = v53;
              BYTE8(v120) = v16 & 1;
              v121 = v15;
              v167 = v15;
              v164 = v118;
              v165 = v119;
              v166 = v120;
              sub_20B7B23D8(v54, v56, v55);
              v60 = sub_20B7C6A74(a2);
              sub_20B7B24EC(&v118);
              goto LABEL_76;
            }

LABEL_55:
            v85 = *&v158[24];
            v95 = *&v158[8];
            v102 = *(&v159 + 1);
            v90 = v159;
            v106 = *&v158[40];
            v15 = *v158;
            v81 = v157;
            v16 = BYTE8(v157);
            v17 = BYTE13(v156);
            v18 = DWORD2(v156);
            LOBYTE(v19) = BYTE12(v156);
            v20 = v156;
            v21 = *(&v155 + 1);
            v22 = v155;
            v23 = &v155;
            goto LABEL_70;
          }

          if (a1 == 5)
          {
            if (v14)
            {
              goto LABEL_55;
            }

LABEL_69:
            v85 = *&v148[24];
            v95 = *&v148[8];
            v102 = *(&v149 + 1);
            v90 = v149;
            v106 = *&v148[40];
            v15 = *v148;
            v81 = v147;
            v16 = BYTE8(v147);
            v17 = BYTE13(v146);
            v18 = DWORD2(v146);
            LOBYTE(v19) = BYTE12(v146);
            v20 = v146;
            v21 = *(&v145 + 1);
            v22 = v145;
            v23 = &v145;
            goto LABEL_70;
          }
        }

        v85 = *&v143[24];
        v95 = *&v143[8];
        v102 = *(&v144 + 1);
        v90 = v144;
        v106 = *&v143[40];
        v15 = *v143;
        v81 = v142;
        v16 = BYTE8(v142);
        v17 = BYTE13(v141);
        v18 = DWORD2(v141);
        LOBYTE(v19) = BYTE12(v141);
        v20 = v141;
        v21 = *(&v140 + 1);
        v22 = v140;
        v23 = &v140;
        goto LABEL_70;
      }

      if ((a1 & 0x80) != 0)
      {
        goto LABEL_90;
      }

      if (qword_27C760B20 != -1)
      {
        swift_once();
      }

      *&v138[16] = xmmword_27C76D768;
      *&v138[32] = unk_27C76D778;
      v139 = xmmword_27C76D788;
      v140 = unk_27C76D798;
      v135 = xmmword_27C76D728;
      v136 = *&qword_27C76D738;
      v137 = xmmword_27C76D748;
      *v138 = *&qword_27C76D758;
      v141 = xmmword_27C76D7A8;
      v142 = *&qword_27C76D7B8;
      *&v143[32] = xmmword_27C76D7E8;
      v144 = unk_27C76D7F8;
      *v143 = xmmword_27C76D7C8;
      *&v143[16] = unk_27C76D7D8;
      v145 = xmmword_27C76D808;
      v146 = unk_27C76D818;
      *&v148[32] = unk_27C76D858;
      v149 = xmmword_27C76D868;
      *v148 = *&qword_27C76D838;
      *&v148[16] = *(&xmmword_27C76D840 + 8);
      v147 = xmmword_27C76D828;
      v150 = unk_27C76D878;
      v151 = xmmword_27C76D888;
      *&v153[32] = xmmword_27C76D8C8;
      v154 = *&qword_27C76D8D8;
      *v153 = xmmword_27C76D8A8;
      *&v153[16] = *&qword_27C76D8B8;
      v152 = *&qword_27C76D898;
      v155 = xmmword_27C76D8E8;
      v156 = *&qword_27C76D8F8;
      *&v158[32] = xmmword_27C76D938;
      v159 = xmmword_27C76D948;
      *v158 = *&qword_27C76D918;
      *&v158[16] = *(&xmmword_27C76D920 + 8);
      v157 = xmmword_27C76D908;
      if (a1 <= 2u)
      {
        if (!a1)
        {
          goto LABEL_77;
        }

        if (a1 == 1)
        {
          v92 = *&v153[24];
          v97 = *&v153[8];
          v104 = *(&v154 + 1);
          v108 = *&v153[40];
          v33 = *v153;
          v34 = v152;
          v35 = BYTE8(v152);
          v36 = BYTE13(v151);
          v37 = DWORD2(v151);
          v83 = BYTE12(v151);
          v87 = v154;
          v39 = v151;
          v38 = *(&v150 + 1);
          v40 = v150;
          v41 = &v150;
          goto LABEL_78;
        }
      }

      else
      {
        if (a1 <= 4u)
        {
          if (a1 != 3)
          {
            v92 = *&v138[24];
            v97 = *&v138[8];
            v104 = *(&v139 + 1);
            v108 = *&v138[40];
            v33 = *v138;
            v34 = v137;
            v35 = BYTE8(v137);
            v36 = BYTE13(v136);
            v37 = DWORD2(v136);
            v83 = BYTE12(v136);
            v87 = v139;
            v38 = *(&v135 + 1);
            v39 = v136;
            v40 = v135;
            v41 = &v135;
LABEL_78:
            sub_20B7B07E8(v41, &v126);
            *&v122 = v40;
            *(&v122 + 1) = v38;
            *&v123 = v39;
            DWORD2(v123) = v37;
            BYTE12(v123) = v83;
            BYTE13(v123) = v36;
            *&v124 = v34;
            v62 = v35;
            BYTE8(v124) = v35;
            v125 = v33;
            v126 = v122;
            v127 = v123;
            v128 = v124;
            v63 = v97;
            v130 = v97;
            v131 = v92;
            v129 = v33;
            v132 = v108;
            v133 = v87;
            v134 = v104;
            LOBYTE(v64) = v36;
            v65 = v92;
            v66 = *(&v97 + 1);
            if (v92)
            {
              v64 = *(&v92 + 1) >> 40;
              v67 = HIDWORD(*(&v92 + 1)) & 1;
              v68 = *(&v97 + 1);
              v69 = v97;
              v37 = DWORD2(v92);
              v70 = v92;
              v34 = v108;
              v71 = v87;
              v33 = v104;
            }

            else
            {
              v94 = v62;
              sub_20B7B2490(&v122, &v118);
              v66 = *(&v97 + 1);
              v69 = v40;
              v68 = v38;
              v70 = v39;
              LOBYTE(v67) = v83;
              v71 = v94;
              v63 = v97;
            }

            *&v118 = v69;
            *(&v118 + 1) = v68;
            *&v119 = v70;
            DWORD2(v119) = v37;
            BYTE12(v119) = v67;
            BYTE13(v119) = v64;
            *&v120 = v34;
            BYTE8(v120) = v71 & 1;
            v121 = v33;
            v163 = v33;
            v160 = v118;
            v161 = v119;
            v162 = v120;
            sub_20B7B23D8(v63, v66, v65);
            v60 = sub_20B7C6A74(a2);
            sub_20B7B24EC(&v118);
            goto LABEL_84;
          }

LABEL_63:
          v92 = *&v158[24];
          v97 = *&v158[8];
          v104 = *(&v159 + 1);
          v108 = *&v158[40];
          v33 = *v158;
          v34 = v157;
          v35 = BYTE8(v157);
          v36 = BYTE13(v156);
          v37 = DWORD2(v156);
          v83 = BYTE12(v156);
          v87 = v159;
          v39 = v156;
          v38 = *(&v155 + 1);
          v40 = v155;
          v41 = &v155;
          goto LABEL_78;
        }

        if (a1 == 5)
        {
          if (v14)
          {
            goto LABEL_63;
          }

LABEL_77:
          v92 = *&v148[24];
          v97 = *&v148[8];
          v104 = *(&v149 + 1);
          v108 = *&v148[40];
          v33 = *v148;
          v34 = v147;
          v35 = BYTE8(v147);
          v36 = BYTE13(v146);
          v37 = DWORD2(v146);
          v83 = BYTE12(v146);
          v87 = v149;
          v39 = v146;
          v38 = *(&v145 + 1);
          v40 = v145;
          v41 = &v145;
          goto LABEL_78;
        }
      }

      v92 = *&v143[24];
      v97 = *&v143[8];
      v104 = *(&v144 + 1);
      v108 = *&v143[40];
      v33 = *v143;
      v34 = v142;
      v35 = BYTE8(v142);
      v36 = BYTE13(v141);
      v37 = DWORD2(v141);
      v83 = BYTE12(v141);
      v87 = v144;
      v39 = v141;
      v38 = *(&v140 + 1);
      v40 = v140;
      v41 = &v140;
      goto LABEL_78;
    }

    if (v13)
    {
      if ((a1 & 0x80) != 0)
      {
        goto LABEL_90;
      }

      if (qword_27C760B28 != -1)
      {
        swift_once();
      }

      *&v138[16] = xmmword_27C76D998;
      *&v138[32] = unk_27C76D9A8;
      v139 = xmmword_27C76D9B8;
      v140 = unk_27C76D9C8;
      v135 = xmmword_27C76D958;
      v136 = *&qword_27C76D968;
      v137 = xmmword_27C76D978;
      *v138 = *&qword_27C76D988;
      v141 = xmmword_27C76D9D8;
      v142 = *&qword_27C76D9E8;
      *&v143[32] = xmmword_27C76DA18;
      v144 = unk_27C76DA28;
      *v143 = xmmword_27C76D9F8;
      *&v143[16] = unk_27C76DA08;
      v145 = xmmword_27C76DA38;
      v146 = unk_27C76DA48;
      *&v148[32] = unk_27C76DA88;
      v149 = xmmword_27C76DA98;
      *v148 = *&qword_27C76DA68;
      *&v148[16] = *(&xmmword_27C76DA70 + 8);
      v147 = xmmword_27C76DA58;
      v150 = unk_27C76DAA8;
      v151 = xmmword_27C76DAB8;
      *&v153[32] = xmmword_27C76DAF8;
      v154 = *&qword_27C76DB08;
      *v153 = xmmword_27C76DAD8;
      *&v153[16] = *&qword_27C76DAE8;
      v152 = *&qword_27C76DAC8;
      v155 = xmmword_27C76DB18;
      v156 = *&qword_27C76DB28;
      *&v158[32] = xmmword_27C76DB68;
      v159 = xmmword_27C76DB78;
      *v158 = *&qword_27C76DB48;
      *&v158[16] = *(&xmmword_27C76DB50 + 8);
      v157 = xmmword_27C76DB38;
      if (a1 <= 2u)
      {
        if (!a1)
        {
LABEL_74:
          v103 = *&v148[8];
          v107 = *&v148[24];
          v91 = *(&v149 + 1);
          v96 = v149;
          v82 = *v148;
          v86 = *&v148[40];
          v24 = v147;
          v25 = BYTE8(v147);
          v26 = BYTE13(v146);
          v27 = DWORD2(v146);
          v28 = BYTE12(v146);
          v29 = v146;
          v30 = *(&v145 + 1);
          v31 = v145;
          v32 = &v145;
          goto LABEL_75;
        }

        if (a1 == 1)
        {
          v103 = *&v153[8];
          v107 = *&v153[24];
          v91 = *(&v154 + 1);
          v96 = v154;
          v82 = *v153;
          v86 = *&v153[40];
          v24 = v152;
          v25 = BYTE8(v152);
          v26 = BYTE13(v151);
          v27 = DWORD2(v151);
          v28 = BYTE12(v151);
          v29 = v151;
          v30 = *(&v150 + 1);
          v31 = v150;
          v32 = &v150;
          goto LABEL_75;
        }
      }

      else
      {
        if (a1 <= 4u)
        {
          if (a1 != 3)
          {
            v103 = *&v138[8];
            v107 = *&v138[24];
            v91 = *(&v139 + 1);
            v96 = v139;
            v82 = *v138;
            v86 = *&v138[40];
            v24 = v137;
            v25 = BYTE8(v137);
            v26 = BYTE13(v136);
            v27 = DWORD2(v136);
            v28 = BYTE12(v136);
            v30 = *(&v135 + 1);
            v29 = v136;
            v31 = v135;
            v32 = &v135;
            goto LABEL_75;
          }

LABEL_59:
          v103 = *&v158[8];
          v107 = *&v158[24];
          v91 = *(&v159 + 1);
          v96 = v159;
          v82 = *v158;
          v86 = *&v158[40];
          v24 = v157;
          v25 = BYTE8(v157);
          v26 = BYTE13(v156);
          v27 = DWORD2(v156);
          v28 = BYTE12(v156);
          v29 = v156;
          v30 = *(&v155 + 1);
          v31 = v155;
          v32 = &v155;
LABEL_75:
          sub_20B7B07E8(v32, &v126);
          LOBYTE(v122) = v28;
          LOBYTE(v118) = v25;
          v177 = v31;
          v178 = v30;
          v179 = v29;
          v180 = v27;
          v181 = v28;
          v182 = v26;
          v183 = v24;
          v184 = v25;
          v185 = v82;
          *&v126 = v31;
          *(&v126 + 1) = v30;
          *&v127 = v29;
          DWORD2(v127) = v27;
          BYTE12(v127) = v28;
          BYTE13(v127) = v26;
          *&v128 = v24;
          BYTE8(v128) = v25;
          v130 = v103;
          v131 = v107;
          v129 = v82;
          v132 = v86;
          v133 = v96;
          v134 = v91;
          v60 = sub_20B7C6A74(a2);
LABEL_76:
          sub_20B7B0844(&v126);
          v61 = v100;
          goto LABEL_85;
        }

        if (a1 == 5)
        {
          if (v14)
          {
            goto LABEL_59;
          }

          goto LABEL_74;
        }
      }

      v103 = *&v143[8];
      v107 = *&v143[24];
      v91 = *(&v144 + 1);
      v96 = v144;
      v82 = *v143;
      v86 = *&v143[40];
      v24 = v142;
      v25 = BYTE8(v142);
      v26 = BYTE13(v141);
      v27 = DWORD2(v141);
      v28 = BYTE12(v141);
      v29 = v141;
      v30 = *(&v140 + 1);
      v31 = v140;
      v32 = &v140;
      goto LABEL_75;
    }

    if ((a1 & 0x80) != 0)
    {
      goto LABEL_90;
    }

    if (qword_27C760B20 != -1)
    {
      swift_once();
    }

    *&v138[16] = xmmword_27C76D768;
    *&v138[32] = unk_27C76D778;
    v139 = xmmword_27C76D788;
    v140 = unk_27C76D798;
    v135 = xmmword_27C76D728;
    v136 = *&qword_27C76D738;
    v137 = xmmword_27C76D748;
    *v138 = *&qword_27C76D758;
    v141 = xmmword_27C76D7A8;
    v142 = *&qword_27C76D7B8;
    *&v143[32] = xmmword_27C76D7E8;
    v144 = unk_27C76D7F8;
    *v143 = xmmword_27C76D7C8;
    *&v143[16] = unk_27C76D7D8;
    v145 = xmmword_27C76D808;
    v146 = unk_27C76D818;
    *&v148[32] = unk_27C76D858;
    v149 = xmmword_27C76D868;
    *v148 = *&qword_27C76D838;
    *&v148[16] = *(&xmmword_27C76D840 + 8);
    v147 = xmmword_27C76D828;
    v150 = unk_27C76D878;
    v151 = xmmword_27C76D888;
    *&v153[32] = xmmword_27C76D8C8;
    v154 = *&qword_27C76D8D8;
    *v153 = xmmword_27C76D8A8;
    *&v153[16] = *&qword_27C76D8B8;
    v152 = *&qword_27C76D898;
    v155 = xmmword_27C76D8E8;
    v156 = *&qword_27C76D8F8;
    *&v158[32] = xmmword_27C76D938;
    v159 = xmmword_27C76D948;
    *v158 = *&qword_27C76D918;
    *&v158[16] = *(&xmmword_27C76D920 + 8);
    v157 = xmmword_27C76D908;
    if (a1 <= 2u)
    {
      if (!a1)
      {
        goto LABEL_82;
      }

      if (a1 != 1)
      {
LABEL_68:
        v105 = *&v143[8];
        v109 = *&v143[24];
        v93 = *(&v144 + 1);
        v98 = v144;
        v84 = *v143;
        v88 = *&v143[40];
        v42 = v142;
        v43 = BYTE8(v142);
        v44 = BYTE13(v141);
        v45 = DWORD2(v141);
        v46 = BYTE12(v141);
        v47 = v141;
        v48 = *(&v140 + 1);
        v49 = v140;
        v50 = &v140;
        goto LABEL_83;
      }

      v105 = *&v153[8];
      v109 = *&v153[24];
      v93 = *(&v154 + 1);
      v98 = v154;
      v84 = *v153;
      v88 = *&v153[40];
      v42 = v152;
      v43 = BYTE8(v152);
      v44 = BYTE13(v151);
      v45 = DWORD2(v151);
      v46 = BYTE12(v151);
      v47 = v151;
      v48 = *(&v150 + 1);
      v49 = v150;
      v50 = &v150;
    }

    else
    {
      if (a1 > 4u)
      {
        if (a1 != 5)
        {
          goto LABEL_68;
        }

        if ((v14 & 1) == 0)
        {
LABEL_82:
          v105 = *&v148[8];
          v109 = *&v148[24];
          v93 = *(&v149 + 1);
          v98 = v149;
          v84 = *v148;
          v88 = *&v148[40];
          v42 = v147;
          v43 = BYTE8(v147);
          v44 = BYTE13(v146);
          v45 = DWORD2(v146);
          v46 = BYTE12(v146);
          v47 = v146;
          v48 = *(&v145 + 1);
          v49 = v145;
          v50 = &v145;
          goto LABEL_83;
        }

LABEL_67:
        v105 = *&v158[8];
        v109 = *&v158[24];
        v93 = *(&v159 + 1);
        v98 = v159;
        v84 = *v158;
        v88 = *&v158[40];
        v42 = v157;
        v43 = BYTE8(v157);
        v44 = BYTE13(v156);
        v45 = DWORD2(v156);
        v46 = BYTE12(v156);
        v47 = v156;
        v48 = *(&v155 + 1);
        v49 = v155;
        v50 = &v155;
        goto LABEL_83;
      }

      if (a1 == 3)
      {
        goto LABEL_67;
      }

      v105 = *&v138[8];
      v109 = *&v138[24];
      v93 = *(&v139 + 1);
      v98 = v139;
      v84 = *v138;
      v88 = *&v138[40];
      v42 = v137;
      v43 = BYTE8(v137);
      v44 = BYTE13(v136);
      v45 = DWORD2(v136);
      v46 = BYTE12(v136);
      v48 = *(&v135 + 1);
      v47 = v136;
      v49 = v135;
      v50 = &v135;
    }

LABEL_83:
    sub_20B7B07E8(v50, &v126);
    LOBYTE(v122) = v46;
    LOBYTE(v118) = v43;
    v168 = v49;
    v169 = v48;
    v170 = v47;
    v171 = v45;
    v172 = v46;
    v173 = v44;
    v174 = v42;
    v175 = v43;
    v176 = v84;
    *&v126 = v49;
    *(&v126 + 1) = v48;
    *&v127 = v47;
    DWORD2(v127) = v45;
    BYTE12(v127) = v46;
    BYTE13(v127) = v44;
    *&v128 = v42;
    BYTE8(v128) = v43;
    v130 = v105;
    v131 = v109;
    v129 = v84;
    v132 = v88;
    v133 = v98;
    v134 = v93;
    v60 = sub_20B7C6A74(a2);
LABEL_84:
    sub_20B7B0844(&v126);
    v61 = v99;
LABEL_85:
    v72 = *v61;
    swift_getObjectType();
    v73 = off_2822AE7F0;
    swift_unknownObjectRetain();
    v74 = v73();
    if (v74)
    {
      v75 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
      v76 = [v75 length];
      [v75 addAttribute:v101 value:v60 range:{0, v76}];
      v77 = sub_20C13C914();
      [v75 removeAttribute:v77 range:{0, v76}];

      [v75 copy];
      sub_20C13DA64();

      swift_unknownObjectRelease();
      sub_20B51C88C(0, &qword_281100520);
      if (swift_dynamicCast())
      {
        v78 = v150;

        v74 = v78;
      }
    }

    a1 = v112;
    v11 = v110;
    v7 = v111;
    v10 &= v10 - 1;
    off_2822AE7F8(v74);

    swift_unknownObjectRelease_n();
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_90:
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

id sub_20B7ADD94(unint64_t a1)
{
  v4 = v1;
  v6 = sub_20C13BB84();
  v322 = *(v6 - 1);
  v323 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v276 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v305 = &v276 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v276 - v13;
  v304 = v15;
  MEMORY[0x28223BE20](v16);
  v306 = &v276 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v18 - 8);
  v313 = &v276 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v316 = *(v20 - 8);
  v317 = v20;
  MEMORY[0x28223BE20](v20);
  v302 = v21;
  v303 = &v276 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v314 = &v276 - v23;
  v24 = sub_20C1391C4();
  v310 = *(v24 - 8);
  v311 = v24;
  MEMORY[0x28223BE20](v24);
  v312 = &v276 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20C138A64();
  v307 = *(v26 - 8);
  v308 = v26;
  MEMORY[0x28223BE20](v26);
  v315 = &v276 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v28 - 8);
  v309 = &v276 - v29;
  v330 = sub_20C13C554();
  v325 = *(v330 - 8);
  MEMORY[0x28223BE20](v330);
  v324 = &v276 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C137C24();
  v326 = *(v31 - 8);
  v327 = v31;
  MEMORY[0x28223BE20](v31);
  v318 = v32;
  v319 = &v276 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  *&v328 = &v276 - v34;
  v35 = sub_20C136CD4();
  v320 = *(v35 - 8);
  v321 = v35;
  MEMORY[0x28223BE20](v35);
  v37 = &v276 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20C134E44();
  MEMORY[0x28223BE20](v38 - 8);
  *&v329 = &v276 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_20C134014();
  v41 = *(v40 - 8);
  *&v43 = MEMORY[0x28223BE20](v40).n128_u64[0];
  *&v331 = &v276 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v45 == 33)
  {
    v330 = v4;
    v68 = *&v4[OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_programContentView];
    v69 = OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_titleLabel;
    v70 = &off_277D9A000;
    [*(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_titleLabel) setAttributedText_];
    v71 = OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_currentLayout;
    v72 = *(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_currentLayout);
    if (v72 == 7)
    {
      goto LABEL_115;
    }

    *&v331 = [v68 traitCollection];
    v73 = *(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_isMinFontPreferred);
    v74 = *(v68 + v71);
    v75 = 0.0;
    Height = 0.0;
    if (v74 != 7)
    {
      if (v74 > 1)
      {
        [v68 bounds];
        Width = CGRectGetWidth(v394);
      }

      else
      {
        Width = *(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_currentContainerSize);
      }

      v75 = Width * *(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_styleProvider + 48);
      [v68 bounds];
      Height = CGRectGetHeight(v395);
    }

    v97 = *(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_supportsScrolling);
    if (qword_27C760B28 != -1)
    {
      swift_once();
    }

    v352[1] = xmmword_27C76D998;
    v352[2] = unk_27C76D9A8;
    v349 = xmmword_27C76D958;
    v350 = *&qword_27C76D968;
    v351 = xmmword_27C76D978;
    v352[0] = *&qword_27C76D988;
    v355 = xmmword_27C76D9D8;
    v356 = *&qword_27C76D9E8;
    v353 = xmmword_27C76D9B8;
    v354 = unk_27C76D9C8;
    v357[2] = xmmword_27C76DA18;
    v358 = unk_27C76DA28;
    v357[0] = xmmword_27C76D9F8;
    v357[1] = unk_27C76DA08;
    v359 = xmmword_27C76DA38;
    v360 = unk_27C76DA48;
    v362[1] = *(&xmmword_27C76DA70 + 8);
    v362[2] = unk_27C76DA88;
    v361 = xmmword_27C76DA58;
    v362[0] = *&qword_27C76DA68;
    v365 = xmmword_27C76DAB8;
    v366 = *&qword_27C76DAC8;
    v363 = xmmword_27C76DA98;
    v364 = unk_27C76DAA8;
    v367[2] = xmmword_27C76DAF8;
    v368 = *&qword_27C76DB08;
    v367[0] = xmmword_27C76DAD8;
    v367[1] = *&qword_27C76DAE8;
    v369 = xmmword_27C76DB18;
    v370 = *&qword_27C76DB28;
    v372[2] = xmmword_27C76DB68;
    v373 = xmmword_27C76DB78;
    v372[0] = *&qword_27C76DB48;
    v372[1] = *(&xmmword_27C76DB50 + 8);
    v371 = xmmword_27C76DB38;
    v321 = v71;
    LODWORD(v318) = v72;
    LODWORD(v320) = v73;
    v319 = v69;
    if (v72 <= 2)
    {
      if (!v72)
      {
LABEL_102:
        v328 = *(v362 + 8);
        v329 = *(&v362[1] + 8);
        v326 = *(&v363 + 1);
        v327 = v363;
        v324 = *&v362[0];
        v325 = *(&v362[2] + 1);
        v323 = v361;
        v98 = BYTE8(v361);
        LODWORD(v322) = BYTE13(v360);
        v99 = DWORD2(v360);
        v100 = BYTE12(v360);
        v101 = v360;
        v102 = *(&v359 + 1);
        v103 = v359;
        v104 = &v359;
LABEL_103:
        sub_20B7B07E8(v104, &v335);
        LOBYTE(v332) = v100;
        v334 = v98;
        v383 = v103;
        v384 = v102;
        v385 = v101;
        v386 = v99;
        v387 = v100;
        v388 = v322;
        v389 = v323;
        v390 = v98;
        v391 = v324;
        v335 = v103;
        v336 = v102;
        v337 = v101;
        v338 = v99;
        v339 = v100;
        v340 = v322;
        v341 = v323;
        v342 = v98;
        v343 = v324;
        v344 = v328;
        v345 = v329;
        v346 = v325;
        v347 = v327;
        v348 = v326;
        v206 = v331;
        v207 = sub_20B7C6A74(v331);
        sub_20B7B0844(&v335);
        v208 = [*&v319[v68] attributedText];
        if (v208)
        {
          v209 = v208;
          v210 = sub_20B914D2C(v207, 4, v75, Height);

          v71 = v321;
          if (v320 & 1 | !v210)
          {
            v211 = v320 & v210;
            goto LABEL_108;
          }
        }

        else
        {

          v71 = v321;
          if (v320)
          {
            v211 = 1;
LABEL_108:
            v212 = sub_20BE8BF3C(&unk_2822870B0);
            sub_20B7ACB68(v318, v331, 0);
            v213 = sub_20BE8BF3C(&unk_282286F98);
            if (*(v212 + 16) <= *(v213 + 16) >> 3)
            {
              v374 = v213;
              sub_20B6CE640(v212);

              v214 = v374;
              if (!v211)
              {
                goto LABEL_110;
              }
            }

            else
            {
              v214 = sub_20B6CFA4C(v212, v213);

              if (!v211)
              {
LABEL_110:
                v215 = 1;
                v216 = v318;
                v217 = v331;
LABEL_114:
                sub_20B7ACB68(v216, v217, v215 & 1);

LABEL_115:
                v218 = OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_subtitleLabel;
                [*(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_subtitleLabel) setAttributedText_];
                v219 = *(v68 + v71);
                if (v219 == 7)
                {
                  goto LABEL_147;
                }

                v323 = [v68 traitCollection];
                v220 = *(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_isMinFontPreferred);
                v221 = *(v68 + v71);
                v222 = 0.0;
                v223 = 0.0;
                if (v221 != 7)
                {
                  if (v221 > 1)
                  {
                    [v68 bounds];
                    v224 = CGRectGetWidth(v398);
                  }

                  else
                  {
                    v224 = *(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_currentContainerSize);
                  }

                  v222 = v224 * *(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_styleProvider + 48);
                  [v68 bounds];
                  v223 = CGRectGetHeight(v399);
                }

                v225 = *(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_supportsScrolling);
                if (qword_27C760B20 != -1)
                {
                  swift_once();
                }

                v352[1] = xmmword_27C76D768;
                v352[2] = unk_27C76D778;
                v349 = xmmword_27C76D728;
                v350 = *&qword_27C76D738;
                v351 = xmmword_27C76D748;
                v352[0] = *&qword_27C76D758;
                v355 = xmmword_27C76D7A8;
                v356 = *&qword_27C76D7B8;
                v353 = xmmword_27C76D788;
                v354 = unk_27C76D798;
                v357[2] = xmmword_27C76D7E8;
                v358 = unk_27C76D7F8;
                v357[0] = xmmword_27C76D7C8;
                v357[1] = unk_27C76D7D8;
                v359 = xmmword_27C76D808;
                v360 = unk_27C76D818;
                v362[1] = *(&xmmword_27C76D840 + 8);
                v362[2] = unk_27C76D858;
                v361 = xmmword_27C76D828;
                v362[0] = *&qword_27C76D838;
                v365 = xmmword_27C76D888;
                v366 = *&qword_27C76D898;
                v363 = xmmword_27C76D868;
                v364 = unk_27C76D878;
                v367[2] = xmmword_27C76D8C8;
                v368 = *&qword_27C76D8D8;
                v367[0] = xmmword_27C76D8A8;
                v367[1] = *&qword_27C76D8B8;
                v369 = xmmword_27C76D8E8;
                v370 = *&qword_27C76D8F8;
                v372[2] = xmmword_27C76D938;
                v373 = xmmword_27C76D948;
                v372[0] = *&qword_27C76D918;
                v372[1] = *(&xmmword_27C76D920 + 8);
                v371 = xmmword_27C76D908;
                LODWORD(v322) = v220;
                v320 = v218;
                if (v219 <= 2)
                {
                  if (!v219)
                  {
                    goto LABEL_134;
                  }

                  if (v219 == 1)
                  {
                    v331 = *(&v367[1] + 8);
                    v329 = *(v367 + 8);
                    v327 = *(&v368 + 1);
                    *&v328 = v368;
                    v325 = *&v367[0];
                    v326 = *(&v367[2] + 1);
                    v324 = v366;
                    v226 = BYTE8(v366);
                    v227 = BYTE13(v365);
                    v228 = DWORD2(v365);
                    v229 = BYTE12(v365);
                    v230 = v365;
                    v231 = *(&v364 + 1);
                    v232 = v364;
                    v233 = &v364;
                    goto LABEL_135;
                  }
                }

                else
                {
                  if (v219 <= 4)
                  {
                    if (v219 != 3)
                    {
                      v331 = *(&v352[1] + 8);
                      v329 = *(v352 + 8);
                      v327 = *(&v353 + 1);
                      *&v328 = v353;
                      v325 = *&v352[0];
                      v326 = *(&v352[2] + 1);
                      v324 = v351;
                      v226 = BYTE8(v351);
                      v227 = BYTE13(v350);
                      v228 = DWORD2(v350);
                      v229 = BYTE12(v350);
                      v230 = v350;
                      v231 = *(&v349 + 1);
                      v232 = v349;
                      v233 = &v349;
LABEL_135:
                      sub_20B7B07E8(v233, &v335);
                      v334 = v229;
                      v333 = v226;
                      v374 = v232;
                      v375 = v231;
                      v376 = v230;
                      v377 = v228;
                      v378 = v229;
                      v379 = v227;
                      v380 = v324;
                      v381 = v226;
                      v382 = v325;
                      v335 = v232;
                      v336 = v231;
                      v337 = v230;
                      v338 = v228;
                      v339 = v229;
                      v340 = v227;
                      v341 = v324;
                      v342 = v226;
                      v343 = v325;
                      v344 = v329;
                      v345 = v331;
                      v346 = v326;
                      v347 = v328;
                      v348 = v327;
                      v234 = v323;
                      v235 = sub_20B7C6A74(v323);
                      sub_20B7B0844(&v335);
                      v236 = [*(v68 + v320) attributedText];
                      if (v236)
                      {
                        v237 = v236;
                        v238 = sub_20B914D2C(v235, 3, v222, v223);

                        v70 = &off_277D9A000;
                        if (v322 & 1 | !v238)
                        {
                          v239 = v322 & v238;
                          goto LABEL_140;
                        }
                      }

                      else
                      {

                        v70 = &off_277D9A000;
                        if (v322)
                        {
                          v239 = 1;
LABEL_140:
                          v240 = sub_20BE8BF3C(&unk_2822870D8);
                          sub_20B7ACB68(v219, v234, 0);
                          v241 = sub_20BE8BF3C(&unk_282286F98);
                          if (*(v240 + 16) <= *(v241 + 16) >> 3)
                          {
                            v332 = v241;
                            sub_20B6CE640(v240);

                            v242 = v332;
                            if (!v239)
                            {
                              goto LABEL_142;
                            }
                          }

                          else
                          {
                            v242 = sub_20B6CFA4C(v240, v241);

                            if (!v239)
                            {
LABEL_142:
                              v243 = 1;
LABEL_146:
                              sub_20B7ACB68(v219, v234, v243 & 1);

                              goto LABEL_147;
                            }
                          }

                          v243 = sub_20B7AC284(v242, v219, v234);
                          goto LABEL_146;
                        }
                      }

LABEL_147:
                      [*(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_footnoteLabel) v70[196]];
                      [*(v68 + OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_recencyIconView) setHidden_];
                      sub_20BEC0F64(MEMORY[0x277D84F90]);
                      v4 = v330;
                      sub_20BA1D9F8();
                      return [v4 setNeedsLayout];
                    }

LABEL_132:
                    v331 = *(&v372[1] + 8);
                    v329 = *(v372 + 8);
                    v327 = *(&v373 + 1);
                    *&v328 = v373;
                    v325 = *&v372[0];
                    v326 = *(&v372[2] + 1);
                    v324 = v371;
                    v226 = BYTE8(v371);
                    v227 = BYTE13(v370);
                    v228 = DWORD2(v370);
                    v229 = BYTE12(v370);
                    v230 = v370;
                    v231 = *(&v369 + 1);
                    v232 = v369;
                    v233 = &v369;
                    goto LABEL_135;
                  }

                  if (v219 == 5)
                  {
                    if (v225)
                    {
                      goto LABEL_132;
                    }

LABEL_134:
                    v331 = *(&v362[1] + 8);
                    v329 = *(v362 + 8);
                    v327 = *(&v363 + 1);
                    *&v328 = v363;
                    v325 = *&v362[0];
                    v326 = *(&v362[2] + 1);
                    v324 = v361;
                    v226 = BYTE8(v361);
                    v227 = BYTE13(v360);
                    v228 = DWORD2(v360);
                    v229 = BYTE12(v360);
                    v230 = v360;
                    v231 = *(&v359 + 1);
                    v232 = v359;
                    v233 = &v359;
                    goto LABEL_135;
                  }
                }

                v331 = *(&v357[1] + 8);
                v329 = *(v357 + 8);
                v327 = *(&v358 + 1);
                *&v328 = v358;
                v325 = *&v357[0];
                v326 = *(&v357[2] + 1);
                v324 = v356;
                v226 = BYTE8(v356);
                v227 = BYTE13(v355);
                v228 = DWORD2(v355);
                v229 = BYTE12(v355);
                v230 = v355;
                v231 = *(&v354 + 1);
                v232 = v354;
                v233 = &v354;
                goto LABEL_135;
              }
            }

            v216 = v318;
            v217 = v331;
            v215 = sub_20B7AC284(v214, v318, v331);
            goto LABEL_114;
          }
        }

        goto LABEL_115;
      }

      if (v72 == 1)
      {
        v328 = *(v367 + 8);
        v329 = *(&v367[1] + 8);
        v326 = *(&v368 + 1);
        v327 = v368;
        v324 = *&v367[0];
        v325 = *(&v367[2] + 1);
        v323 = v366;
        v98 = BYTE8(v366);
        LODWORD(v322) = BYTE13(v365);
        v99 = DWORD2(v365);
        v100 = BYTE12(v365);
        v101 = v365;
        v102 = *(&v364 + 1);
        v103 = v364;
        v104 = &v364;
        goto LABEL_103;
      }
    }

    else
    {
      if (v72 <= 4)
      {
        if (v72 != 3)
        {
          v328 = *(v352 + 8);
          v329 = *(&v352[1] + 8);
          v326 = *(&v353 + 1);
          v327 = v353;
          v324 = *&v352[0];
          v325 = *(&v352[2] + 1);
          v323 = v351;
          v98 = BYTE8(v351);
          LODWORD(v322) = BYTE13(v350);
          v99 = DWORD2(v350);
          v100 = BYTE12(v350);
          v101 = v350;
          v102 = *(&v349 + 1);
          v103 = v349;
          v104 = &v349;
          goto LABEL_103;
        }

        goto LABEL_41;
      }

      if (v72 == 5)
      {
        if (v97)
        {
LABEL_41:
          v328 = *(v372 + 8);
          v329 = *(&v372[1] + 8);
          v326 = *(&v373 + 1);
          v327 = v373;
          v324 = *&v372[0];
          v325 = *(&v372[2] + 1);
          v323 = v371;
          v98 = BYTE8(v371);
          LODWORD(v322) = BYTE13(v370);
          v99 = DWORD2(v370);
          v100 = BYTE12(v370);
          v101 = v370;
          v102 = *(&v369 + 1);
          v103 = v369;
          v104 = &v369;
          goto LABEL_103;
        }

        goto LABEL_102;
      }
    }

    v328 = *(v357 + 8);
    v329 = *(&v357[1] + 8);
    v326 = *(&v358 + 1);
    v327 = v358;
    v324 = *&v357[0];
    v325 = *(&v357[2] + 1);
    v323 = v356;
    v98 = BYTE8(v356);
    LODWORD(v322) = BYTE13(v355);
    v99 = DWORD2(v355);
    v100 = BYTE12(v355);
    v101 = v355;
    v102 = *(&v354 + 1);
    v103 = v354;
    v104 = &v354;
    goto LABEL_103;
  }

  if (v45 != 32)
  {
    sub_20C13B534();

    v330 = v4;
    v78 = v4;
    v79 = sub_20C13BB74();
    v80 = sub_20C13D1D4();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v369 = v83;
      *v81 = 138543618;
      *(v81 + 4) = v78;
      *v82 = v78;
      *(v81 + 12) = 2082;
      *&v364 = a1;
      v84 = sub_20B5F66D0();
      v85 = v78;
      v86 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v84);
      v88 = sub_20B51E694(v86, v87, &v369);

      *(v81 + 14) = v88;
      _os_log_impl(&dword_20B517000, v79, v80, "Attempted to configure %{public}@ with item: %{public}s", v81, 0x16u);
      sub_20B520158(v82, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v82, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v83);
      MEMORY[0x20F2F6A40](v83, -1, -1);
      MEMORY[0x20F2F6A40](v81, -1, -1);
    }

    v322[1](v8, v323);
    v4 = v330;
    return [v4 setNeedsLayout];
  }

  v286 = v14;
  v287 = v10;
  v288 = v9;
  v46 = v42;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
  v48 = swift_projectBox();
  v49 = v48 + *(v47 + 64);
  v50 = *v49;
  v51 = *(v49 + 8);
  v53 = *(v49 + 16);
  v52 = *(v49 + 24);
  v323 = v37;
  v54 = *(v49 + 32);
  v55 = *(v49 + 40);
  v295 = v41;
  v296 = v46;
  v56 = *(v41 + 16);
  v57 = v52;
  v56(v331, v48, v46);
  v58 = *&v4[OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_programContentView];
  v299 = OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_titleLabel;
  v59 = *&v58[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_titleLabel];
  v64 = v50;
  v322 = v51;
  v300 = v53;
  v294 = v57;

  v297 = v54;
  v60 = v323;

  v292 = v55;
  v61 = v58;

  v62 = &off_277D9A000;
  v293 = v64;
  [v59 setAttributedText_];
  v63 = OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_currentLayout;
  LODWORD(v64) = v58[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_currentLayout];
  v301 = v58;
  if (v64 == 7)
  {
    goto LABEL_57;
  }

  v65 = [v58 traitCollection];
  LODWORD(v279) = v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_isMinFontPreferred];
  v66 = v61[v63];
  v2 = 0.0;
  v3 = 0.0;
  if (v66 != 7)
  {
    if (v66 > 1)
    {
      [v61 bounds];
      v67 = CGRectGetWidth(v392);
    }

    else
    {
      v67 = *&v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_currentContainerSize];
    }

    v2 = v67 * *&v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_styleProvider + 48];
    [v61 bounds];
    v3 = CGRectGetHeight(v393);
  }

  v89 = v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_supportsScrolling];
  if (qword_27C760B28 != -1)
  {
    goto LABEL_151;
  }

  while (1)
  {
    v352[1] = xmmword_27C76D998;
    v352[2] = unk_27C76D9A8;
    v349 = xmmword_27C76D958;
    v350 = *&qword_27C76D968;
    v351 = xmmword_27C76D978;
    v352[0] = *&qword_27C76D988;
    v355 = xmmword_27C76D9D8;
    v356 = *&qword_27C76D9E8;
    v353 = xmmword_27C76D9B8;
    v354 = unk_27C76D9C8;
    v357[2] = xmmword_27C76DA18;
    v358 = unk_27C76DA28;
    v357[0] = xmmword_27C76D9F8;
    v357[1] = unk_27C76DA08;
    v359 = xmmword_27C76DA38;
    v360 = unk_27C76DA48;
    v362[2] = unk_27C76DA88;
    v363 = xmmword_27C76DA98;
    v362[0] = *&qword_27C76DA68;
    v362[1] = *(&xmmword_27C76DA70 + 8);
    v361 = xmmword_27C76DA58;
    v364 = unk_27C76DAA8;
    v365 = xmmword_27C76DAB8;
    v367[1] = *&qword_27C76DAE8;
    v367[2] = xmmword_27C76DAF8;
    v366 = *&qword_27C76DAC8;
    v367[0] = xmmword_27C76DAD8;
    v370 = *&qword_27C76DB28;
    v371 = xmmword_27C76DB38;
    v368 = *&qword_27C76DB08;
    v369 = xmmword_27C76DB18;
    v372[2] = xmmword_27C76DB68;
    v373 = xmmword_27C76DB78;
    v372[0] = *&qword_27C76DB48;
    v372[1] = *(&xmmword_27C76DB50 + 8);
    v280 = v63;
    LODWORD(v278) = v64;
    *&v298 = v65;
    if (v64 <= 2)
    {
      if (v64)
      {
        if (v64 == 1)
        {
          v290 = *(v367 + 8);
          v291 = *(&v367[1] + 8);
          v289 = v368;
          v284 = *(&v367[2] + 1);
          v285 = *(&v368 + 1);
          v282 = v366;
          v283 = *&v367[0];
          v90 = BYTE8(v366);
          LODWORD(v281) = BYTE13(v365);
          v91 = DWORD2(v365);
          v92 = BYTE12(v365);
          v93 = v365;
          v94 = *(&v364 + 1);
          v95 = v364;
          v96 = &v364;
          goto LABEL_44;
        }

LABEL_27:
        v290 = *(v357 + 8);
        v291 = *(&v357[1] + 8);
        v289 = v358;
        v284 = *(&v357[2] + 1);
        v285 = *(&v358 + 1);
        v282 = v356;
        v283 = *&v357[0];
        v90 = BYTE8(v356);
        LODWORD(v281) = BYTE13(v355);
        v91 = DWORD2(v355);
        v92 = BYTE12(v355);
        v93 = v355;
        v94 = *(&v354 + 1);
        v95 = v354;
        v96 = &v354;
        goto LABEL_44;
      }
    }

    else
    {
      if (v64 <= 4)
      {
        if (v64 != 3)
        {
          v290 = *(v352 + 8);
          v291 = *(&v352[1] + 8);
          v289 = v353;
          v284 = *(&v352[2] + 1);
          v285 = *(&v353 + 1);
          v282 = v351;
          v283 = *&v352[0];
          v90 = BYTE8(v351);
          LODWORD(v281) = BYTE13(v350);
          v91 = DWORD2(v350);
          v92 = BYTE12(v350);
          v93 = v350;
          v94 = *(&v349 + 1);
          v95 = v349;
          v96 = &v349;
          goto LABEL_44;
        }

LABEL_26:
        v290 = *(v372 + 8);
        v291 = *(&v372[1] + 8);
        v289 = v373;
        v284 = *(&v372[2] + 1);
        v285 = *(&v373 + 1);
        v282 = v371;
        v283 = *&v372[0];
        v90 = BYTE8(v371);
        LODWORD(v281) = BYTE13(v370);
        v91 = DWORD2(v370);
        v92 = BYTE12(v370);
        v93 = v370;
        v94 = *(&v369 + 1);
        v95 = v369;
        v96 = &v369;
        goto LABEL_44;
      }

      if (v64 != 5)
      {
        goto LABEL_27;
      }

      if (v89)
      {
        goto LABEL_26;
      }
    }

    v290 = *(v362 + 8);
    v291 = *(&v362[1] + 8);
    v289 = v363;
    v284 = *(&v362[2] + 1);
    v285 = *(&v363 + 1);
    v282 = v361;
    v283 = *&v362[0];
    v90 = BYTE8(v361);
    LODWORD(v281) = BYTE13(v360);
    v91 = DWORD2(v360);
    v92 = BYTE12(v360);
    v93 = v360;
    v94 = *(&v359 + 1);
    v95 = v359;
    v96 = &v359;
LABEL_44:
    sub_20B7B07E8(v96, &v335);
    LOBYTE(v332) = v92;
    v334 = v90;
    v383 = v95;
    v384 = v94;
    v385 = v93;
    v386 = v91;
    v387 = v92;
    v388 = v281;
    v389 = v282;
    v390 = v90;
    v391 = v283;
    v335 = v95;
    v336 = v94;
    v337 = v93;
    v338 = v91;
    v339 = v92;
    v340 = v281;
    v341 = v282;
    v342 = v90;
    v343 = v283;
    v344 = v290;
    v345 = v291;
    v346 = v284;
    v347 = v289;
    v348 = v285;
    v105 = sub_20B7C6A74(v298);
    sub_20B7B0844(&v335);
    v61 = v301;
    v106 = [*&v299[v301] attributedText];
    if (v106)
    {
      v107 = v106;
      v108 = sub_20B914D2C(v105, 4, v2, v3);

      if (v279 & 1 | !v108)
      {
        v109 = v279 & v108;
        goto LABEL_49;
      }
    }

    else
    {

      if (v279)
      {
        v109 = 1;
LABEL_49:
        v110 = v298;
        v111 = sub_20BE8BF3C(&unk_282287060);
        sub_20B7ACB68(v278, v110, 0);
        v112 = sub_20BE8BF3C(&unk_282286F98);
        if (*(v111 + 16) <= *(v112 + 16) >> 3)
        {
          v374 = v112;
          sub_20B6CE640(v111);

          v113 = v374;
          if (!v109)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v113 = sub_20B6CFA4C(v111, v112);

          if (!v109)
          {
LABEL_51:
            v114 = 1;
            v115 = v278;
LABEL_55:
            sub_20B7ACB68(v115, v110, v114 & 1);

            goto LABEL_56;
          }
        }

        v115 = v278;
        v114 = sub_20B7AC284(v113, v278, v110);
        goto LABEL_55;
      }
    }

LABEL_56:
    v63 = v280;
LABEL_57:
    v116 = OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_subtitleLabel;
    [*&v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_subtitleLabel] v62[196]];
    v117 = v61[v63];
    if (v117 != 7)
    {
      v118 = [v61 traitCollection];
      LODWORD(v282) = v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_isMinFontPreferred];
      v119 = v61[v63];
      v2 = 0.0;
      v3 = 0.0;
      if (v119 != 7)
      {
        if (v119 > 1)
        {
          [v61 bounds];
          v120 = CGRectGetWidth(v396);
        }

        else
        {
          v120 = *&v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_currentContainerSize];
        }

        v2 = v120 * *&v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_styleProvider + 48];
        [v61 bounds];
        v3 = CGRectGetHeight(v397);
      }

      v121 = v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_supportsScrolling];
      if (qword_27C760B20 != -1)
      {
        swift_once();
      }

      v352[1] = xmmword_27C76D768;
      v352[2] = unk_27C76D778;
      v349 = xmmword_27C76D728;
      v350 = *&qword_27C76D738;
      v351 = xmmword_27C76D748;
      v352[0] = *&qword_27C76D758;
      v355 = xmmword_27C76D7A8;
      v356 = *&qword_27C76D7B8;
      v353 = xmmword_27C76D788;
      v354 = unk_27C76D798;
      v357[2] = xmmword_27C76D7E8;
      v358 = unk_27C76D7F8;
      v357[0] = xmmword_27C76D7C8;
      v357[1] = unk_27C76D7D8;
      v359 = xmmword_27C76D808;
      v360 = unk_27C76D818;
      v362[1] = *(&xmmword_27C76D840 + 8);
      v362[2] = unk_27C76D858;
      v361 = xmmword_27C76D828;
      v362[0] = *&qword_27C76D838;
      v365 = xmmword_27C76D888;
      v366 = *&qword_27C76D898;
      v363 = xmmword_27C76D868;
      v364 = unk_27C76D878;
      v367[2] = xmmword_27C76D8C8;
      v368 = *&qword_27C76D8D8;
      v367[0] = xmmword_27C76D8A8;
      v367[1] = *&qword_27C76D8B8;
      v369 = xmmword_27C76D8E8;
      v370 = *&qword_27C76D8F8;
      v372[2] = xmmword_27C76D938;
      v373 = xmmword_27C76D948;
      v372[0] = *&qword_27C76D918;
      v372[1] = *(&xmmword_27C76D920 + 8);
      v371 = xmmword_27C76D908;
      v299 = v118;
      v281 = v116;
      if (v117 <= 2)
      {
        if (!v117)
        {
LABEL_76:
          v298 = *(&v362[1] + 8);
          v291 = *(v362 + 8);
          v289 = *(&v363 + 1);
          *&v290 = v363;
          v284 = *&v362[0];
          v285 = *(&v362[2] + 1);
          v283 = v361;
          v122 = BYTE8(v361);
          v123 = BYTE13(v360);
          v124 = DWORD2(v360);
          v125 = BYTE12(v360);
          v126 = v360;
          v127 = *(&v359 + 1);
          v128 = v359;
          v129 = &v359;
          goto LABEL_77;
        }

        if (v117 == 1)
        {
          v298 = *(&v367[1] + 8);
          v291 = *(v367 + 8);
          v289 = *(&v368 + 1);
          *&v290 = v368;
          v284 = *&v367[0];
          v285 = *(&v367[2] + 1);
          v283 = v366;
          v122 = BYTE8(v366);
          v123 = BYTE13(v365);
          v124 = DWORD2(v365);
          v125 = BYTE12(v365);
          v126 = v365;
          v127 = *(&v364 + 1);
          v128 = v364;
          v129 = &v364;
          goto LABEL_77;
        }
      }

      else
      {
        if (v117 <= 4)
        {
          if (v117 != 3)
          {
            v298 = *(&v352[1] + 8);
            v291 = *(v352 + 8);
            v289 = *(&v353 + 1);
            *&v290 = v353;
            v284 = *&v352[0];
            v285 = *(&v352[2] + 1);
            v283 = v351;
            v122 = BYTE8(v351);
            v123 = BYTE13(v350);
            v124 = DWORD2(v350);
            v125 = BYTE12(v350);
            v126 = v350;
            v127 = *(&v349 + 1);
            v128 = v349;
            v129 = &v349;
            goto LABEL_77;
          }

LABEL_74:
          v298 = *(&v372[1] + 8);
          v291 = *(v372 + 8);
          v289 = *(&v373 + 1);
          *&v290 = v373;
          v284 = *&v372[0];
          v285 = *(&v372[2] + 1);
          v283 = v371;
          v122 = BYTE8(v371);
          v123 = BYTE13(v370);
          v124 = DWORD2(v370);
          v125 = BYTE12(v370);
          v126 = v370;
          v127 = *(&v369 + 1);
          v128 = v369;
          v129 = &v369;
LABEL_77:
          sub_20B7B07E8(v129, &v335);
          v334 = v125;
          v333 = v122;
          v374 = v128;
          v375 = v127;
          v376 = v126;
          v377 = v124;
          v378 = v125;
          v379 = v123;
          v380 = v283;
          v381 = v122;
          v382 = v284;
          v335 = v128;
          v336 = v127;
          v337 = v126;
          v338 = v124;
          v339 = v125;
          v340 = v123;
          v341 = v283;
          v342 = v122;
          v343 = v284;
          v344 = v291;
          v345 = v298;
          v346 = v285;
          v347 = v290;
          v348 = v289;
          v130 = v299;
          v131 = sub_20B7C6A74(v299);
          sub_20B7B0844(&v335);
          v61 = v301;
          v132 = [*&v301[v281] attributedText];
          if (v132)
          {
            v133 = v132;
            v134 = sub_20B914D2C(v131, 3, v2, v3);

            v62 = &off_277D9A000;
            if (!(v282 & 1 | !v134))
            {
              goto LABEL_85;
            }

            v135 = v282 & v134;
          }

          else
          {

            v62 = &off_277D9A000;
            if ((v282 & 1) == 0)
            {
LABEL_85:

              v60 = v323;
              goto LABEL_89;
            }

            v135 = 1;
          }

          v136 = sub_20BE8BF3C(&unk_282287088);
          sub_20B7ACB68(v117, v299, 0);
          v137 = sub_20BE8BF3C(&unk_282286F98);
          if (*(v136 + 16) <= *(v137 + 16) >> 3)
          {
            v332 = v137;
            sub_20B6CE640(v136);

            v138 = v332;
            if (v135)
            {
              goto LABEL_87;
            }

LABEL_84:
            v139 = 1;
            v140 = v299;
          }

          else
          {
            v138 = sub_20B6CFA4C(v136, v137);

            if (!v135)
            {
              goto LABEL_84;
            }

LABEL_87:
            v140 = v299;
            v139 = sub_20B7AC284(v138, v117, v299);
          }

          sub_20B7ACB68(v117, v140, v139 & 1);

          v60 = v323;
          goto LABEL_89;
        }

        if (v117 == 5)
        {
          if (v121)
          {
            goto LABEL_74;
          }

          goto LABEL_76;
        }
      }

      v298 = *(&v357[1] + 8);
      v291 = *(v357 + 8);
      v289 = *(&v358 + 1);
      *&v290 = v358;
      v284 = *&v357[0];
      v285 = *(&v357[2] + 1);
      v283 = v356;
      v122 = BYTE8(v356);
      v123 = BYTE13(v355);
      v124 = DWORD2(v355);
      v125 = BYTE12(v355);
      v126 = v355;
      v127 = *(&v354 + 1);
      v128 = v354;
      v129 = &v354;
      goto LABEL_77;
    }

LABEL_89:
    [*&v61[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_footnoteLabel] v62[196]];
    sub_20C133F04();
    v62 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_retain_n();
    *&v291 = sub_20C138054();
    v299 = v141;
    sub_20C134E34();
    v64 = v328;
    sub_20C136CB4();
    *&v290 = sub_20C136CC4();
    *&v298 = v142;
    sub_20B51C88C(0, &qword_281100530);
    v143 = sub_20C13D374();
    v145 = v324;
    v144 = v325;
    *v324 = v143;
    v63 = v330;
    (*(v144 + 104))(v145, *MEMORY[0x277D85200], v330);
    v89 = sub_20C13C584();
    v146 = *(v144 + 8);
    v65 = (v144 + 8);
    v146(v145, v63);
    if (v89)
    {
      break;
    }

    __break(1u);
LABEL_151:
    swift_once();
  }

  v148 = *&v4[OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_artworkView];
  v147 = *&v4[OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_artworkView + 8];
  ObjectType = swift_getObjectType();
  [v148 setContentMode_];
  if (sub_20BA66C54(v64, v148, v147, 0))
  {
    v325 = swift_allocObject();
    v330 = v4;
    swift_unknownObjectWeakInit();
    v289 = v62;
    v150 = v326;
    v151 = v319;
    v152 = v64;
    v153 = v327;
    v280 = *(v326 + 16);
    v281 = v326 + 16;
    v280(v319, v152, v327);
    v154 = *(v150 + 80);
    v155 = (v154 + 24) & ~v154;
    v277 = v318 + 7;
    v156 = (v318 + 7 + v155) & 0xFFFFFFFFFFFFFFF8;
    v284 = ObjectType;
    v285 = v148;
    v157 = (v156 + 23) & 0xFFFFFFFFFFFFFFF8;
    v324 = v147;
    v158 = (v157 + 23) & 0xFFFFFFFFFFFFFFF8;
    v282 = v154;
    v283 = (v158 + 15) & 0xFFFFFFFFFFFFFFF8;
    v159 = (v158 + 31) & 0xFFFFFFFFFFFFFFF8;
    v160 = swift_allocObject();
    *(v160 + 16) = v325;
    v278 = *(v150 + 32);
    v279 = v150 + 32;
    v278(v160 + v155, v151, v153);
    v161 = (v160 + v156);
    v162 = v298;
    *v161 = v290;
    v161[1] = v162;
    v163 = (v160 + v157);
    v164 = v299;
    *v163 = v291;
    v163[1] = v164;
    *(v160 + v158) = 2;
    v165 = v324;
    v166 = v160 + v283;
    *v166 = MEMORY[0x277D84F90];
    *(v166 + 8) = 0;
    v167 = (v160 + v159);
    v168 = v285;
    v169 = v289;
    *v167 = sub_20B7B0898;
    v167[1] = v169;
    v170 = *(v165 + 19);

    v171 = v284;

    v170(sub_20B7B08A0, v160, v171, v165);

    [v168 bounds];
    if (v172 <= 0.0 || (v174 = v173, v173 <= 0.0))
    {

      v4 = v330;
      v196 = v321;
      v64 = v328;
      v60 = v323;
LABEL_97:
      v197 = v327;
    }

    else
    {
      v175 = v172;
      v283 = ~v282;
      (*(v165 + 15))(0, v171, v165);
      v176 = v309;
      v178 = v327;
      v177 = v328;
      v179 = v280;
      v280(v309, v328, v327);
      (*(v326 + 56))(v176, 0, 1, v178);
      (*(v165 + 2))(v176, v171, v165);
      sub_20B51C88C(0, &qword_27C762070);
      sub_20C137BC4();
      v180 = sub_20C13D5A4();
      [v168 setBackgroundColor_];

      (*(v165 + 22))(COERCE_DOUBLE(*&v175), COERCE_DOUBLE(*&v174), 0, v171, v165);
      v325 = swift_allocObject();
      v181 = v330;
      swift_unknownObjectWeakInit();
      v182 = v319;
      v179(v319, v177, v178);
      v183 = (v282 + 16) & v283;
      v184 = (v277 + v183) & 0xFFFFFFFFFFFFFFF8;
      v185 = (v184 + 15) & 0xFFFFFFFFFFFFFFF8;
      v186 = swift_allocObject();
      v187 = v186 + v183;
      v4 = v181;
      v278(v187, v182, v178);
      *(v186 + v184) = v325;
      v188 = (v186 + v185);
      *v188 = v175;
      v188[1] = v174;
      v325 = v186;
      v189 = (v186 + ((v185 + 23) & 0xFFFFFFFFFFFFFFF8));
      v190 = v280;
      v191 = v289;
      *v189 = sub_20B7B0898;
      v189[1] = v191;
      v190(v182, v328, v178);
      (*(v310 + 104))(v312, *MEMORY[0x277D542A8], v311);

      v192 = v315;
      sub_20C138A54();
      v193 = v313;
      sub_20B5F19D8(v192, v313);
      v194 = v316;
      v195 = v317;
      if ((*(v316 + 48))(v193, 1) == 1)
      {
        sub_20B520158(v193, &unk_27C766670);
        sub_20BA1D9F8();
        sub_20B7ABE34(v289);

        (*(v307 + 8))(v192, v308);
        v196 = v321;
        v64 = v328;
        v60 = v323;
        goto LABEL_97;
      }

      v324 = *(v194 + 32);
      (v324)(v314, v193, v195);
      v245 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v190(v182, v328, v327);
      v246 = (v282 + 40) & v283;
      v247 = v246 + v318;
      v248 = (v246 + v318) & 0xFFFFFFFFFFFFFFF8;
      v249 = swift_allocObject();
      *(v249 + 2) = v245;
      v249[3] = v175;
      v249[4] = v174;
      v278(v249 + v246, v182, v327);
      *(v249 + v247) = 0;
      v250 = v249 + v248;
      v251 = v289;
      *(v250 + 1) = sub_20B7B0898;
      *(v250 + 2) = v251;
      v252 = swift_allocObject();
      *(v252 + 16) = sub_20B7B0A34;
      *(v252 + 24) = v249;
      v253 = v316;
      v254 = v317;
      v255 = v303;
      (*(v316 + 16))(v303, v314, v317);
      v256 = (*(v253 + 80) + 16) & ~*(v253 + 80);
      v257 = (v302 + v256 + 7) & 0xFFFFFFFFFFFFFFF8;
      v258 = swift_allocObject();
      (v324)(v258 + v256, v255, v254);
      v259 = (v258 + v257);
      *v259 = sub_20B5F67A4;
      v259[1] = v252;

      v260 = v286;
      sub_20C137C94();
      v261 = swift_allocObject();
      v262 = v325;
      *(v261 + 16) = sub_20B7B0978;
      *(v261 + 24) = v262;
      v263 = swift_allocObject();
      *(v263 + 16) = sub_20B5F67D4;
      *(v263 + 24) = v261;
      v265 = v287;
      v264 = v288;
      v266 = v305;
      (*(v287 + 16))(v305, v260, v288);
      v267 = (*(v265 + 80) + 16) & ~*(v265 + 80);
      v268 = (v304 + v267 + 7) & 0xFFFFFFFFFFFFFFF8;
      v269 = swift_allocObject();
      (*(v265 + 32))(v269 + v267, v266, v264);
      v270 = (v269 + v268);
      *v270 = sub_20B5DF204;
      v270[1] = v263;

      v271 = v306;
      sub_20C137C94();
      v272 = *(v265 + 8);
      v272(v260, v264);
      v273 = sub_20C137CB4();
      v274 = swift_allocObject();
      *(v274 + 16) = 0;
      *(v274 + 24) = 0;
      v273(sub_20B52347C, v274);

      v272(v271, v264);
      v275 = v327;
      v4 = v330;
      (*(v316 + 8))(v314, v317);
      (*(v307 + 8))(v315, v308);
      v197 = v275;
      v196 = v321;
      v64 = v328;
      v60 = v323;
    }
  }

  else
  {

    v197 = v327;
    v196 = v321;
  }

  (*(v326 + 8))(v64, v197);
  (*(v320 + 8))(v60, v196);

  sub_20B62A2AC(v329);

  v198 = v331;
  v199 = sub_20C133E54();
  if (v200)
  {
    v201 = v199;
    v202 = v200;
    v203 = v301;
    [*&v301[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_recencyIconView] setHidden_];
    sub_20BEC1388(v201, v202);
  }

  else
  {
    v203 = v301;
    [*&v301[OBJC_IVAR____TtC9SeymourUI23ProgramBrickContentView_recencyIconView] setHidden_];
  }

  v204 = v293;
  v205 = sub_20C133F74();
  sub_20BEC0F64(v205);

  sub_20B86E3F4(v203);

  (*(v295 + 8))(v198, v296);
  return [v4 setNeedsLayout];
}

void sub_20B7B08A0()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA3EC04(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B7B0978(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA63080(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B7B0A34(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2788(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_20B7B0B88(char a1, void *a2, char a3)
{
  *(v3 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_isMinFontPreferred) = a3;
  v5 = sub_20BE8BF3C(&unk_282287128);
  v6 = 0;
  v115 = v5;
  v116 = v5 + 56;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 56);
  v100 = (v3 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_titleLabel);
  v99 = (v3 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_subtitleLabel);
  v10 = (v7 + 63) >> 6;
  v113 = a1;
  v11 = a1 & 0x7F;
  v101 = *MEMORY[0x277D740A8];
  v111 = v10;
  v110 = v11;
  while (v9)
  {
LABEL_10:
    v13 = *(*(v115 + 48) + (__clz(__rbit64(v9)) | (v6 << 6)));
    if (a3)
    {
      if (v13)
      {
        if ((v113 & 0x80) == 0)
        {
          goto LABEL_70;
        }

        if (qword_27C7606A8 != -1)
        {
          swift_once();
        }

        *&v137[16] = xmmword_27C763598;
        *&v137[32] = unk_27C7635A8;
        v138 = unk_27C7635B8;
        v139 = unk_27C7635C8;
        v134 = xmmword_27C763558;
        v135 = *&qword_27C763568;
        v136 = xmmword_27C763578;
        *v137 = *&qword_27C763588;
        v140 = unk_27C7635D8;
        v141 = *&qword_27C7635E8;
        *&v142[32] = xmmword_27C763618;
        v143 = *&qword_27C763628;
        *v142 = xmmword_27C7635F8;
        *&v142[16] = *&qword_27C763608;
        v144 = xmmword_27C763638;
        v145 = *&qword_27C763648;
        *&v147[32] = *(&xmmword_27C763680 + 8);
        v148 = unk_27C763698;
        *v147 = *&qword_27C763668;
        *&v147[16] = *(&xmmword_27C763670 + 8);
        v146 = xmmword_27C763658;
        v149 = unk_27C7636A8;
        v150 = unk_27C7636B8;
        *&v152[32] = *(&xmmword_27C7636F0 + 8);
        v153 = unk_27C763708;
        *v152 = xmmword_27C7636D8;
        *&v152[16] = unk_27C7636E8;
        v151 = *&qword_27C7636C8;
        if (v11 > 1)
        {
          if (v11 == 2)
          {
            v81 = *&v147[24];
            v95 = *&v147[8];
            v106 = *(&v148 + 1);
            v14 = v148;
            v102 = *&v147[40];
            v91 = *v147;
            v15 = v146;
            v16 = BYTE8(v146);
            v86 = BYTE13(v145);
            v17 = DWORD2(v145);
            v18 = BYTE12(v145);
            v20 = v145;
            v19 = *(&v144 + 1);
            v21 = v144;
            v22 = &v144;
          }

          else
          {
            v81 = *&v152[24];
            v95 = *&v152[8];
            v106 = *(&v153 + 1);
            v14 = v153;
            v102 = *&v152[40];
            v91 = *v152;
            v15 = v151;
            v16 = BYTE8(v151);
            v86 = BYTE13(v150);
            v17 = DWORD2(v150);
            v18 = BYTE12(v150);
            v20 = v150;
            v19 = *(&v149 + 1);
            v21 = v149;
            v22 = &v149;
          }
        }

        else if (v11)
        {
          v81 = *&v142[24];
          v95 = *&v142[8];
          v106 = *(&v143 + 1);
          v14 = v143;
          v102 = *&v142[40];
          v91 = *v142;
          v15 = v141;
          v16 = BYTE8(v141);
          v86 = BYTE13(v140);
          v17 = DWORD2(v140);
          v18 = BYTE12(v140);
          v20 = v140;
          v19 = *(&v139 + 1);
          v21 = v139;
          v22 = &v139;
        }

        else
        {
          v81 = *&v137[24];
          v95 = *&v137[8];
          v106 = *(&v138 + 1);
          v14 = v138;
          v102 = *&v137[40];
          v91 = *v137;
          v15 = v136;
          v16 = BYTE8(v136);
          v86 = BYTE13(v135);
          v17 = DWORD2(v135);
          v18 = BYTE12(v135);
          v19 = *(&v134 + 1);
          v20 = v135;
          v21 = v134;
          v22 = &v134;
        }

        sub_20B7B07E8(v22, &v125);
        *&v121 = v21;
        *(&v121 + 1) = v19;
        *&v122 = v20;
        DWORD2(v122) = v17;
        BYTE12(v122) = v18;
        BYTE13(v122) = v86;
        v50 = v15;
        *&v123 = v15;
        BYTE8(v123) = v16;
        v124 = v91;
        v125 = v121;
        v126 = v122;
        v127 = v123;
        v51 = v95;
        v129 = v95;
        v130 = v81;
        v128 = v91;
        v131 = v102;
        v132 = v14;
        v133 = v106;
        v52 = v81;
        v53 = v14;
        v54 = *(&v95 + 1);
        LOBYTE(v14) = v18;
        if (v81)
        {
          v55 = *(&v81 + 1) >> 40;
          v14 = HIDWORD(*(&v81 + 1)) & 1;
          v56 = *(&v95 + 1);
          v21 = v95;
          v17 = DWORD2(v81);
          v57 = v81;
          v58 = v102;
          v16 = v53;
          v59 = v106;
        }

        else
        {
          v85 = v50;
          sub_20B7B2490(&v121, &v117);
          v54 = *(&v95 + 1);
          v56 = v19;
          v57 = v20;
          v58 = v85;
          LOBYTE(v55) = v86;
          v59 = v91;
          v51 = v95;
        }

        *&v117 = v21;
        *(&v117 + 1) = v56;
        *&v118 = v57;
        DWORD2(v118) = v17;
        BYTE12(v118) = v14;
        BYTE13(v118) = v55;
        *&v119 = v58;
        BYTE8(v119) = v16 & 1;
        v120 = v59;
        v161 = v59;
        v158 = v117;
        v159 = v118;
        v160 = v119;
        sub_20B7B23D8(v51, v54, v52);
        v60 = sub_20B7C6A74(a2);
        sub_20B7B24EC(&v117);
LABEL_56:
        sub_20B7B0844(&v125);
        v61 = v100;
        goto LABEL_65;
      }

      if ((v113 & 0x80) == 0)
      {
        goto LABEL_70;
      }

      if (qword_27C7606A0 != -1)
      {
        swift_once();
      }

      *&v137[16] = xmmword_27C7633D8;
      *&v137[32] = unk_27C7633E8;
      v138 = unk_27C7633F8;
      v139 = unk_27C763408;
      v134 = xmmword_27C763398;
      v135 = *&qword_27C7633A8;
      v136 = xmmword_27C7633B8;
      *v137 = *&qword_27C7633C8;
      v140 = unk_27C763418;
      v141 = *&qword_27C763428;
      *&v142[32] = xmmword_27C763458;
      v143 = *&qword_27C763468;
      *v142 = xmmword_27C763438;
      *&v142[16] = *&qword_27C763448;
      v144 = xmmword_27C763478;
      v145 = *&qword_27C763488;
      *&v147[32] = *(&xmmword_27C7634C0 + 8);
      v148 = unk_27C7634D8;
      *v147 = *&qword_27C7634A8;
      *&v147[16] = *(&xmmword_27C7634B0 + 8);
      v146 = xmmword_27C763498;
      v149 = unk_27C7634E8;
      v150 = unk_27C7634F8;
      *&v152[32] = *(&xmmword_27C763530 + 8);
      v153 = unk_27C763548;
      *v152 = xmmword_27C763518;
      *&v152[16] = unk_27C763528;
      v151 = *&qword_27C763508;
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v88 = *&v147[24];
          v97 = *&v147[8];
          v108 = *(&v148 + 1);
          v83 = v148;
          v104 = *&v147[40];
          v93 = *v147;
          v32 = v146;
          v33 = BYTE8(v146);
          v34 = BYTE13(v145);
          v35 = DWORD2(v145);
          v36 = BYTE12(v145);
          v38 = v145;
          v37 = *(&v144 + 1);
          v39 = v144;
          v40 = &v144;
        }

        else
        {
          v88 = *&v152[24];
          v97 = *&v152[8];
          v108 = *(&v153 + 1);
          v83 = v153;
          v104 = *&v152[40];
          v93 = *v152;
          v32 = v151;
          v33 = BYTE8(v151);
          v34 = BYTE13(v150);
          v35 = DWORD2(v150);
          v36 = BYTE12(v150);
          v38 = v150;
          v37 = *(&v149 + 1);
          v39 = v149;
          v40 = &v149;
        }
      }

      else if (v11)
      {
        v88 = *&v142[24];
        v97 = *&v142[8];
        v108 = *(&v143 + 1);
        v83 = v143;
        v104 = *&v142[40];
        v93 = *v142;
        v32 = v141;
        v33 = BYTE8(v141);
        v34 = BYTE13(v140);
        v35 = DWORD2(v140);
        v36 = BYTE12(v140);
        v38 = v140;
        v37 = *(&v139 + 1);
        v39 = v139;
        v40 = &v139;
      }

      else
      {
        v88 = *&v137[24];
        v97 = *&v137[8];
        v108 = *(&v138 + 1);
        v83 = v138;
        v104 = *&v137[40];
        v93 = *v137;
        v32 = v136;
        v33 = BYTE8(v136);
        v34 = BYTE13(v135);
        v35 = DWORD2(v135);
        v36 = BYTE12(v135);
        v37 = *(&v134 + 1);
        v38 = v135;
        v39 = v134;
        v40 = &v134;
      }

      sub_20B7B07E8(v40, &v125);
      *&v121 = v39;
      *(&v121 + 1) = v37;
      *&v122 = v38;
      DWORD2(v122) = v35;
      BYTE12(v122) = v36;
      v62 = v34;
      BYTE13(v122) = v34;
      v63 = v32;
      *&v123 = v32;
      BYTE8(v123) = v33;
      v124 = v93;
      v125 = v121;
      v126 = v122;
      v127 = v123;
      v64 = v97;
      v129 = v97;
      v130 = v88;
      v128 = v93;
      v131 = v104;
      v132 = v83;
      v133 = v108;
      v65 = v88;
      v66 = *(&v97 + 1);
      LOBYTE(v32) = v36;
      if (v88)
      {
        v67 = *(&v88 + 1) >> 40;
        v32 = HIDWORD(*(&v88 + 1)) & 1;
        v68 = *(&v97 + 1);
        v69 = v97;
        v35 = DWORD2(v88);
        v38 = v88;
        v70 = v104;
        v33 = v83;
        v71 = v108;
      }

      else
      {
        v90 = v62;
        v80 = v63;
        sub_20B7B2490(&v121, &v117);
        v66 = *(&v97 + 1);
        v69 = v39;
        v68 = v37;
        v70 = v80;
        LOBYTE(v67) = v90;
        v71 = v93;
        v64 = v97;
      }

      *&v117 = v69;
      *(&v117 + 1) = v68;
      *&v118 = v38;
      DWORD2(v118) = v35;
      BYTE12(v118) = v32;
      BYTE13(v118) = v67;
      *&v119 = v70;
      BYTE8(v119) = v33 & 1;
      v120 = v71;
      v157 = v71;
      v154 = v117;
      v155 = v118;
      v156 = v119;
      sub_20B7B23D8(v64, v66, v65);
      v60 = sub_20B7C6A74(a2);
      sub_20B7B24EC(&v117);
    }

    else
    {
      if (v13)
      {
        if ((v113 & 0x80) == 0)
        {
          goto LABEL_70;
        }

        if (qword_27C7606A8 != -1)
        {
          swift_once();
        }

        *&v137[16] = xmmword_27C763598;
        *&v137[32] = unk_27C7635A8;
        v138 = unk_27C7635B8;
        v139 = unk_27C7635C8;
        v134 = xmmword_27C763558;
        v135 = *&qword_27C763568;
        v136 = xmmword_27C763578;
        *v137 = *&qword_27C763588;
        v140 = unk_27C7635D8;
        v141 = *&qword_27C7635E8;
        *&v142[32] = xmmword_27C763618;
        v143 = *&qword_27C763628;
        *v142 = xmmword_27C7635F8;
        *&v142[16] = *&qword_27C763608;
        v144 = xmmword_27C763638;
        v145 = *&qword_27C763648;
        *&v147[32] = *(&xmmword_27C763680 + 8);
        v148 = unk_27C763698;
        *v147 = *&qword_27C763668;
        *&v147[16] = *(&xmmword_27C763670 + 8);
        v146 = xmmword_27C763658;
        v149 = unk_27C7636A8;
        v150 = unk_27C7636B8;
        *&v152[32] = *(&xmmword_27C7636F0 + 8);
        v153 = unk_27C763708;
        *v152 = xmmword_27C7636D8;
        *&v152[16] = unk_27C7636E8;
        v151 = *&qword_27C7636C8;
        if (v11 > 1)
        {
          if (v11 == 2)
          {
            v103 = *&v147[8];
            v107 = *&v147[24];
            v87 = v148;
            v92 = *&v147[40];
            v96 = *(&v148 + 1);
            v82 = *v147;
            v23 = v146;
            v24 = BYTE8(v146);
            v25 = BYTE13(v145);
            v26 = DWORD2(v145);
            v27 = BYTE12(v145);
            v28 = v145;
            v29 = *(&v144 + 1);
            v30 = v144;
            v31 = &v144;
          }

          else
          {
            v103 = *&v152[8];
            v107 = *&v152[24];
            v87 = v153;
            v92 = *&v152[40];
            v96 = *(&v153 + 1);
            v82 = *v152;
            v23 = v151;
            v24 = BYTE8(v151);
            v25 = BYTE13(v150);
            v26 = DWORD2(v150);
            v27 = BYTE12(v150);
            v28 = v150;
            v29 = *(&v149 + 1);
            v30 = v149;
            v31 = &v149;
          }
        }

        else if (v11)
        {
          v103 = *&v142[8];
          v107 = *&v142[24];
          v87 = v143;
          v92 = *&v142[40];
          v96 = *(&v143 + 1);
          v82 = *v142;
          v23 = v141;
          v24 = BYTE8(v141);
          v25 = BYTE13(v140);
          v26 = DWORD2(v140);
          v27 = BYTE12(v140);
          v28 = v140;
          v29 = *(&v139 + 1);
          v30 = v139;
          v31 = &v139;
        }

        else
        {
          v103 = *&v137[8];
          v107 = *&v137[24];
          v87 = v138;
          v92 = *&v137[40];
          v96 = *(&v138 + 1);
          v82 = *v137;
          v23 = v136;
          v24 = BYTE8(v136);
          v25 = BYTE13(v135);
          v26 = DWORD2(v135);
          v27 = BYTE12(v135);
          v29 = *(&v134 + 1);
          v28 = v135;
          v30 = v134;
          v31 = &v134;
        }

        sub_20B7B07E8(v31, &v125);
        LOBYTE(v121) = v27;
        LOBYTE(v117) = v24;
        v171 = v30;
        v172 = v29;
        v173 = v28;
        v174 = v26;
        v175 = v27;
        v176 = v25;
        v177 = v23;
        v178 = v24;
        v179 = v82;
        *&v125 = v30;
        *(&v125 + 1) = v29;
        *&v126 = v28;
        DWORD2(v126) = v26;
        BYTE12(v126) = v27;
        BYTE13(v126) = v25;
        *&v127 = v23;
        BYTE8(v127) = v24;
        v129 = v103;
        v130 = v107;
        v128 = v82;
        v131 = v92;
        v132 = v87;
        v133 = v96;
        v60 = sub_20B7C6A74(a2);
        goto LABEL_56;
      }

      if ((v113 & 0x80) == 0)
      {
        goto LABEL_70;
      }

      if (qword_27C7606A0 != -1)
      {
        swift_once();
      }

      *&v137[16] = xmmword_27C7633D8;
      *&v137[32] = unk_27C7633E8;
      v138 = unk_27C7633F8;
      v139 = unk_27C763408;
      v134 = xmmword_27C763398;
      v135 = *&qword_27C7633A8;
      v136 = xmmword_27C7633B8;
      *v137 = *&qword_27C7633C8;
      v140 = unk_27C763418;
      v141 = *&qword_27C763428;
      *&v142[32] = xmmword_27C763458;
      v143 = *&qword_27C763468;
      *v142 = xmmword_27C763438;
      *&v142[16] = *&qword_27C763448;
      v144 = xmmword_27C763478;
      v145 = *&qword_27C763488;
      *&v147[32] = *(&xmmword_27C7634C0 + 8);
      v148 = unk_27C7634D8;
      *v147 = *&qword_27C7634A8;
      *&v147[16] = *(&xmmword_27C7634B0 + 8);
      v146 = xmmword_27C763498;
      v149 = unk_27C7634E8;
      v150 = unk_27C7634F8;
      *&v152[32] = *(&xmmword_27C763530 + 8);
      v153 = unk_27C763548;
      *v152 = xmmword_27C763518;
      *&v152[16] = unk_27C763528;
      v151 = *&qword_27C763508;
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v105 = *&v147[8];
          v109 = *&v147[24];
          v89 = v148;
          v94 = *&v147[40];
          v98 = *(&v148 + 1);
          v84 = *v147;
          v41 = v146;
          v42 = BYTE8(v146);
          v43 = BYTE13(v145);
          v44 = DWORD2(v145);
          v45 = BYTE12(v145);
          v46 = v145;
          v47 = *(&v144 + 1);
          v48 = v144;
          v49 = &v144;
        }

        else
        {
          v105 = *&v152[8];
          v109 = *&v152[24];
          v89 = v153;
          v94 = *&v152[40];
          v98 = *(&v153 + 1);
          v84 = *v152;
          v41 = v151;
          v42 = BYTE8(v151);
          v43 = BYTE13(v150);
          v44 = DWORD2(v150);
          v45 = BYTE12(v150);
          v46 = v150;
          v47 = *(&v149 + 1);
          v48 = v149;
          v49 = &v149;
        }
      }

      else if (v11)
      {
        v105 = *&v142[8];
        v109 = *&v142[24];
        v89 = v143;
        v94 = *&v142[40];
        v98 = *(&v143 + 1);
        v84 = *v142;
        v41 = v141;
        v42 = BYTE8(v141);
        v43 = BYTE13(v140);
        v44 = DWORD2(v140);
        v45 = BYTE12(v140);
        v46 = v140;
        v47 = *(&v139 + 1);
        v48 = v139;
        v49 = &v139;
      }

      else
      {
        v105 = *&v137[8];
        v109 = *&v137[24];
        v89 = v138;
        v94 = *&v137[40];
        v98 = *(&v138 + 1);
        v84 = *v137;
        v41 = v136;
        v42 = BYTE8(v136);
        v43 = BYTE13(v135);
        v44 = DWORD2(v135);
        v45 = BYTE12(v135);
        v47 = *(&v134 + 1);
        v46 = v135;
        v48 = v134;
        v49 = &v134;
      }

      sub_20B7B07E8(v49, &v125);
      LOBYTE(v121) = v45;
      LOBYTE(v117) = v42;
      v162 = v48;
      v163 = v47;
      v164 = v46;
      v165 = v44;
      v166 = v45;
      v167 = v43;
      v168 = v41;
      v169 = v42;
      v170 = v84;
      *&v125 = v48;
      *(&v125 + 1) = v47;
      *&v126 = v46;
      DWORD2(v126) = v44;
      BYTE12(v126) = v45;
      BYTE13(v126) = v43;
      *&v127 = v41;
      BYTE8(v127) = v42;
      v129 = v105;
      v130 = v109;
      v128 = v84;
      v131 = v94;
      v132 = v89;
      v133 = v98;
      v60 = sub_20B7C6A74(a2);
    }

    sub_20B7B0844(&v125);
    v61 = v99;
LABEL_65:
    v72 = *v61;
    swift_getObjectType();
    v73 = off_2822AE7F0;
    swift_unknownObjectRetain();
    v74 = v73();
    if (v74)
    {
      v75 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
      v76 = [v75 length];
      [v75 addAttribute:v101 value:v60 range:{0, v76}];
      v77 = sub_20C13C914();
      [v75 removeAttribute:v77 range:{0, v76}];

      [v75 copy];
      sub_20C13DA64();

      swift_unknownObjectRelease();
      sub_20B51C88C(0, &qword_281100520);
      if (swift_dynamicCast())
      {
        v78 = v144;

        v74 = v78;
      }
    }

    v10 = v111;
    v11 = v110;
    v9 &= v9 - 1;
    off_2822AE7F8(v74);

    swift_unknownObjectRelease_n();
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v116 + 8 * v12);
    ++v6;
    if (v9)
    {
      v6 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_70:
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

double sub_20B7B1B80(unsigned __int8 a1, id a2)
{
  [objc_msgSend(a2 container)];
  v5 = v4;
  swift_unknownObjectRelease();
  sub_20C1380F4();
  v6 = sub_20C138104();
  if (v6 == sub_20C138104() && a1 >= 2u)
  {

    sub_20B72097C(3, 2.0, v5);
  }

  else
  {
    v8 = sub_20BCE2EB4(a2, 1);
    v11 = v9 + v10;
    [objc_msgSend(a2 container];
    v13 = v12;
    swift_unknownObjectRelease();
    return v13 - v11;
  }

  return result;
}

void sub_20B7B1C8C()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_currentContainerSize);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_currentLayout) = 7;
  v2 = OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_artworkView);
  v5 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *v4 = v5;
  v4[1] = &off_2822B63E8;
  v6 = OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_vibrantShadowView;
  v7 = [objc_allocWithZone(type metadata accessor for VibrantShadowView()) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v6) = v7;
  *(v0 + OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_oldWidth) = 0;
  sub_20C13DE24();
  __break(1u);
}

double sub_20B7B1E14(void *a1)
{
  [objc_msgSend(a1 container)];
  v3 = v2;
  swift_unknownObjectRelease();
  v4 = [a1 traitCollection];
  v5 = v4;
  if (v3 >= 350.0)
  {
    [v4 horizontalSizeClass];
    sub_20C1380F4();
    v7 = sub_20C138104();
    v6 = 1;
    if (v7 == sub_20C138104())
    {
      v8 = sub_20BDF9A7C(v3);

      v9 = sub_20B7B1B80(v8, a1);
      v10 = 0.5625;
      if (v8 > 1u)
      {
        return v9 * v10;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = sub_20B7B1B80(v6, a1);
LABEL_7:
  v10 = 1.25;
  return v9 * v10;
}

uint64_t sub_20B7B1F24(char a1, unsigned __int8 a2, char a3)
{
  if (a1)
  {
    if ((a2 & 0x80) == 0)
    {
      if (qword_27C760B28 != -1)
      {
        v16 = a2;
        v17 = a3;
        swift_once();
        a2 = v16;
        a3 = v17;
      }

      *v39 = *&qword_27C76D988;
      *&v39[16] = xmmword_27C76D998;
      *&v39[32] = unk_27C76D9A8;
      v40 = xmmword_27C76D9B8;
      v36 = xmmword_27C76D958;
      v37 = *&qword_27C76D968;
      v38 = xmmword_27C76D978;
      v41 = unk_27C76D9C8;
      v42 = xmmword_27C76D9D8;
      *&v44[32] = xmmword_27C76DA18;
      v45 = unk_27C76DA28;
      *v44 = xmmword_27C76D9F8;
      *&v44[16] = unk_27C76DA08;
      v43 = *&qword_27C76D9E8;
      v46 = xmmword_27C76DA38;
      v47 = unk_27C76DA48;
      *&v49[16] = *(&xmmword_27C76DA70 + 8);
      *&v49[32] = unk_27C76DA88;
      v48 = xmmword_27C76DA58;
      *v49 = *&qword_27C76DA68;
      v52 = xmmword_27C76DAB8;
      v53 = *&qword_27C76DAC8;
      v50 = xmmword_27C76DA98;
      v51 = unk_27C76DAA8;
      *&v54[32] = xmmword_27C76DAF8;
      v55 = *&qword_27C76DB08;
      *v54 = xmmword_27C76DAD8;
      *&v54[16] = *&qword_27C76DAE8;
      v56 = xmmword_27C76DB18;
      v57 = *&qword_27C76DB28;
      *&v59[32] = xmmword_27C76DB68;
      v60 = xmmword_27C76DB78;
      *v59 = *&qword_27C76DB48;
      *&v59[16] = *(&xmmword_27C76DB50 + 8);
      v3 = a2;
      v58 = xmmword_27C76DB38;
      if (a2 > 2u)
      {
        if (a2 > 4u)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }

LABEL_17:
      if (!v3)
      {
LABEL_21:
        v22 = *&v49[8];
        v23 = *&v49[24];
        v6 = *&v49[40];
        v5 = *(&v50 + 1);
        v4 = v50;
        v20 = v48;
        v21 = *v49;
        v7 = BYTE8(v48);
        v8 = BYTE13(v47);
        v9 = DWORD2(v47);
        v10 = BYTE12(v47);
        v11 = *(&v46 + 1);
        v12 = v47;
        v13 = v46;
        v14 = &v46;
        goto LABEL_23;
      }

      if (v3 == 1)
      {
        v22 = *&v54[8];
        v23 = *&v54[24];
        v5 = *(&v55 + 1);
        v4 = v55;
        v6 = *&v54[40];
        v20 = v53;
        v21 = *v54;
        v7 = BYTE8(v53);
        v8 = BYTE13(v52);
        v9 = DWORD2(v52);
        v10 = BYTE12(v52);
        v12 = v52;
        v11 = *(&v51 + 1);
        v13 = v51;
        v14 = &v51;
        goto LABEL_23;
      }

      goto LABEL_20;
    }

LABEL_26:
    result = sub_20C13DE24();
    __break(1u);
    return result;
  }

  if ((a2 & 0x80) != 0)
  {
    goto LABEL_26;
  }

  if (qword_27C760B20 != -1)
  {
    v18 = a2;
    v19 = a3;
    swift_once();
    a2 = v18;
    a3 = v19;
  }

  *v39 = *&qword_27C76D758;
  *&v39[16] = xmmword_27C76D768;
  *&v39[32] = unk_27C76D778;
  v40 = xmmword_27C76D788;
  v36 = xmmword_27C76D728;
  v37 = *&qword_27C76D738;
  v38 = xmmword_27C76D748;
  v41 = unk_27C76D798;
  v42 = xmmword_27C76D7A8;
  *&v44[16] = unk_27C76D7D8;
  *&v44[32] = xmmword_27C76D7E8;
  v43 = *&qword_27C76D7B8;
  *v44 = xmmword_27C76D7C8;
  v47 = unk_27C76D818;
  v48 = xmmword_27C76D828;
  v45 = unk_27C76D7F8;
  v46 = xmmword_27C76D808;
  *&v49[32] = unk_27C76D858;
  v50 = xmmword_27C76D868;
  *v49 = *&qword_27C76D838;
  *&v49[16] = *(&xmmword_27C76D840 + 8);
  v51 = unk_27C76D878;
  v52 = xmmword_27C76D888;
  *&v54[16] = *&qword_27C76D8B8;
  *&v54[32] = xmmword_27C76D8C8;
  v53 = *&qword_27C76D898;
  *v54 = xmmword_27C76D8A8;
  v57 = *&qword_27C76D8F8;
  v58 = xmmword_27C76D908;
  v55 = *&qword_27C76D8D8;
  v56 = xmmword_27C76D8E8;
  *&v59[32] = xmmword_27C76D938;
  v60 = xmmword_27C76D948;
  v3 = a2;
  *v59 = *&qword_27C76D918;
  *&v59[16] = *(&xmmword_27C76D920 + 8);
  if (a2 <= 2u)
  {
    goto LABEL_17;
  }

  if (a2 > 4u)
  {
LABEL_7:
    if (v3 == 5)
    {
      if ((a3 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_16:
      v22 = *&v59[8];
      v23 = *&v59[24];
      v5 = *(&v60 + 1);
      v4 = v60;
      v6 = *&v59[40];
      v20 = v58;
      v21 = *v59;
      v7 = BYTE8(v58);
      v8 = BYTE13(v57);
      v9 = DWORD2(v57);
      v10 = BYTE12(v57);
      v11 = *(&v56 + 1);
      v12 = v57;
      v13 = v56;
      v14 = &v56;
      goto LABEL_23;
    }

LABEL_20:
    v22 = *&v44[8];
    v23 = *&v44[24];
    v5 = *(&v45 + 1);
    v4 = v45;
    v6 = *&v44[40];
    v20 = v43;
    v21 = *v44;
    v7 = BYTE8(v43);
    v8 = BYTE13(v42);
    v9 = DWORD2(v42);
    v10 = BYTE12(v42);
    v11 = *(&v41 + 1);
    v12 = v42;
    v13 = v41;
    v14 = &v41;
    goto LABEL_23;
  }

LABEL_15:
  if (v3 == 3)
  {
    goto LABEL_16;
  }

  v22 = *&v39[8];
  v23 = *&v39[24];
  v5 = *(&v40 + 1);
  v4 = v40;
  v6 = *&v39[40];
  v20 = v38;
  v21 = *v39;
  v7 = BYTE8(v38);
  v8 = BYTE13(v37);
  v9 = DWORD2(v37);
  v10 = BYTE12(v37);
  v11 = *(&v36 + 1);
  v12 = v37;
  v13 = v36;
  v14 = &v36;
LABEL_23:
  sub_20B7B07E8(v14, v24);
  v24[0] = v13;
  v24[1] = v11;
  v24[2] = v12;
  v25 = v9;
  v26 = v10;
  v27 = v8;
  v28 = v20;
  v29 = v7;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v33 = v6;
  v34 = v4;
  v35 = v5;
  sub_20B7B23D8(v22, *(&v22 + 1), v23);
  sub_20B7B0844(v24);
  if (!v23)
  {
    return 0;
  }

  sub_20B7B2434(v22, *(&v22 + 1), v23);
  return 1;
}

id sub_20B7B23D8(id result, void *a2, void *a3)
{
  if (a3)
  {
    v6 = result;
    v4 = a2;
    v5 = a3;

    return v6;
  }

  return result;
}

void sub_20B7B2434(void *a1, void *a2, void *a3)
{
  if (a3)
  {
  }
}

uint64_t sub_20B7B25A8(char a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    if (a2 < 0)
    {
      v2 = a2 & 0x7F;
      if (qword_27C7606A0 != -1)
      {
        swift_once();
      }

      *v34 = *&qword_27C7633C8;
      *&v34[16] = xmmword_27C7633D8;
      *&v34[32] = unk_27C7633E8;
      v35 = unk_27C7633F8;
      v31 = xmmword_27C763398;
      v32 = *&qword_27C7633A8;
      v33 = xmmword_27C7633B8;
      v36 = unk_27C763408;
      v37 = unk_27C763418;
      *&v39[16] = *&qword_27C763448;
      *&v39[32] = xmmword_27C763458;
      v38 = *&qword_27C763428;
      *v39 = xmmword_27C763438;
      v42 = *&qword_27C763488;
      v43 = xmmword_27C763498;
      v40 = *&qword_27C763468;
      v41 = xmmword_27C763478;
      *&v44[32] = *(&xmmword_27C7634C0 + 8);
      v45 = unk_27C7634D8;
      *v44 = *&qword_27C7634A8;
      *&v44[16] = *(&xmmword_27C7634B0 + 8);
      v46 = unk_27C7634E8;
      v47 = unk_27C7634F8;
      *&v49[32] = *(&xmmword_27C763530 + 8);
      v50 = unk_27C763548;
      *v49 = xmmword_27C763518;
      *&v49[16] = unk_27C763528;
      v48 = *&qword_27C763508;
      if (v2 <= 1)
      {
        if (v2)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }

LABEL_14:
      if (v2 == 2)
      {
        v17 = *&v44[8];
        v18 = *&v44[24];
        v5 = *&v44[40];
        v4 = *(&v45 + 1);
        v3 = v45;
        v15 = v43;
        v16 = *v44;
        v6 = BYTE8(v43);
        v7 = BYTE13(v42);
        v8 = DWORD2(v42);
        v9 = BYTE12(v42);
        v10 = *(&v41 + 1);
        v11 = v42;
        v12 = v41;
        v13 = &v41;
      }

      else
      {
        v17 = *&v49[8];
        v18 = *&v49[24];
        v4 = *(&v50 + 1);
        v3 = v50;
        v5 = *&v49[40];
        v15 = v48;
        v16 = *v49;
        v6 = BYTE8(v48);
        v7 = BYTE13(v47);
        v8 = DWORD2(v47);
        v9 = BYTE12(v47);
        v10 = *(&v46 + 1);
        v11 = v47;
        v12 = v46;
        v13 = &v46;
      }

      goto LABEL_17;
    }

LABEL_20:
    result = sub_20C13DE24();
    __break(1u);
    return result;
  }

  if ((a2 & 0x80) == 0)
  {
    goto LABEL_20;
  }

  v2 = a2 & 0x7F;
  if (qword_27C7606A8 != -1)
  {
    swift_once();
  }

  *v34 = *&qword_27C763588;
  *&v34[16] = xmmword_27C763598;
  *&v34[32] = unk_27C7635A8;
  v35 = unk_27C7635B8;
  v31 = xmmword_27C763558;
  v32 = *&qword_27C763568;
  v33 = xmmword_27C763578;
  v36 = unk_27C7635C8;
  v37 = unk_27C7635D8;
  *&v39[32] = xmmword_27C763618;
  v40 = *&qword_27C763628;
  *v39 = xmmword_27C7635F8;
  *&v39[16] = *&qword_27C763608;
  v38 = *&qword_27C7635E8;
  v41 = xmmword_27C763638;
  v42 = *&qword_27C763648;
  *&v44[16] = *(&xmmword_27C763670 + 8);
  *&v44[32] = *(&xmmword_27C763680 + 8);
  v43 = xmmword_27C763658;
  *v44 = *&qword_27C763668;
  v47 = unk_27C7636B8;
  v48 = *&qword_27C7636C8;
  v45 = unk_27C763698;
  v46 = unk_27C7636A8;
  *&v49[32] = *(&xmmword_27C7636F0 + 8);
  v50 = unk_27C763708;
  *v49 = xmmword_27C7636D8;
  *&v49[16] = unk_27C7636E8;
  if (v2 > 1)
  {
    goto LABEL_14;
  }

  if (v2)
  {
LABEL_7:
    v17 = *&v39[8];
    v18 = *&v39[24];
    v4 = *(&v40 + 1);
    v3 = v40;
    v5 = *&v39[40];
    v15 = v38;
    v16 = *v39;
    v6 = BYTE8(v38);
    v7 = BYTE13(v37);
    v8 = DWORD2(v37);
    v9 = BYTE12(v37);
    v10 = *(&v36 + 1);
    v11 = v37;
    v12 = v36;
    v13 = &v36;
    goto LABEL_17;
  }

LABEL_13:
  v17 = *&v34[8];
  v18 = *&v34[24];
  v4 = *(&v35 + 1);
  v3 = v35;
  v5 = *&v34[40];
  v15 = v33;
  v16 = *v34;
  v6 = BYTE8(v33);
  v7 = BYTE13(v32);
  v8 = DWORD2(v32);
  v9 = BYTE12(v32);
  v10 = *(&v31 + 1);
  v11 = v32;
  v12 = v31;
  v13 = &v31;
LABEL_17:
  sub_20B7B07E8(v13, v19);
  v19[0] = v12;
  v19[1] = v10;
  v19[2] = v11;
  v20 = v8;
  v21 = v9;
  v22 = v7;
  v23 = v15;
  v24 = v6;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v28 = v5;
  v29 = v3;
  v30 = v4;
  sub_20B7B23D8(v17, *(&v17 + 1), v18);
  sub_20B7B0844(v19);
  if (!v18)
  {
    return 0;
  }

  sub_20B7B2434(v17, *(&v17 + 1), v18);
  return 1;
}

uint64_t sub_20B7B2990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = (*(a4 + 24))(a2, a4);
  v8 = a5(a1);

  return v8;
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

uint64_t sub_20B7B2B18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B7B2B60(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_20B7B2BBC()
{
  v1 = v0;
  v2 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_20C13DC94();

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = sub_20C138D14();
  MEMORY[0x20F2F4230](v3);

  if (v2 == 3)
  {
    v4 = 0xD000000000000015;
    v5 = 0x800000020C1995A0;
  }

  else
  {
    v5 = 0x800000020C199580;
    v4 = 0xD000000000000017;
  }

  MEMORY[0x20F2F4230](v4, v5);
  v6 = sub_20C138D34();

  return v6;
}

id sub_20B7B2E58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVDisplayPreferencesViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B7B2F30(uint64_t a1)
{
  v2 = v1;
  v87 = v1;
  if (sub_20B7B399C(a1))
  {
    v78 = *(a1 + 16);
    if (v78)
    {
      v4 = 0;
      v85 = OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_currentActions;
      v77 = a1 + 32;
      do
      {
        v5 = v77 + 88 * v4;
        v6 = *v5;
        v7 = *(*v5 + 16);
        if (v7)
        {
          v81 = v4;
          v8 = *(v5 + 16);
          v9 = *(v5 + 24);
          v10 = *(v5 + 8);

          swift_bridgeObjectRetain_n();

          swift_beginAccess();
          if (v9)
          {
            v11 = v8;
          }

          else
          {
            v11 = 0;
          }

          if (v9)
          {
            v12 = v9;
          }

          else
          {
            v12 = 0xE000000000000000;
          }

          v83 = ~v10;
          v13 = (v6 + 48);
          do
          {
            v14 = *(v13 - 16);
            v15 = *(v13 - 1);
            v16 = *v13;
            *&v90 = 0;
            *(&v90 + 1) = 0xE000000000000000;

            MEMORY[0x20F2F4230](v11, v12);

            MEMORY[0x20F2F4230](v15, v16);
            v17 = sub_20C13C914();

            v18 = *(v2 + v85);
            if (*(v18 + 16))
            {

              v19 = sub_20B65CEB8(v17);
              if (v20)
              {
                v21 = *(*(v18 + 56) + 8 * v19);

                v22 = v21;
                v2 = v87;
                v23 = v22;

                if (v14 >= 0)
                {
                  v24 = v14 & 1;
                }

                else
                {
                  v24 = 0;
                }

                [v23 setState_];
                [v23 setAttributes_];
              }

              else
              {
              }
            }

            else
            {
            }

            v13 += 3;
            --v7;
          }

          while (v7);

          swift_bridgeObjectRelease_n();
          v4 = v81;
        }

        ++v4;
      }

      while (v4 != v78);
    }

    return;
  }

  v25 = MEMORY[0x277D84F90];
  v105 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_currentSections) = a1;

  v26 = sub_20B6B325C(v25);
  v27 = OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_currentActions;
  swift_beginAccess();
  v86 = v27;
  *(v2 + v27) = v26;

  v103 = 0;
  v104 = 0;
  v102 = a1;

  sub_20B7B3BF8(&v90);
  v98 = v92;
  v99 = v93;
  v100 = v94;
  v101 = v95;
  v96 = v90;
  v97 = v91;
  v28 = *(&v90 + 1);
  if (!*(&v90 + 1))
  {
LABEL_63:

    v66 = sub_20C13C914();
    v67 = [objc_opt_self() smm:v66 systemImageNamed:?];

    v68 = [objc_opt_self() configurationWithWeight_];
    v69 = [v67 imageWithConfiguration_];

    v70 = *(v2 + OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_transportBarControlsCoordinator);
    sub_20B51C88C(0, &unk_27C76FED0);
    v71 = v69;
    v72 = sub_20C13D554();
    swift_beginAccess();
    v73 = v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = *(v70 + 40);
    *(v70 + 40) = 0x8000000000000000;
    sub_20B91DA38(v73, 2, isUniquelyReferenced_nonNull_native);
    *(v70 + 40) = v89;
    swift_endAccess();
    v75 = *(v70 + 16);
    if (v75)
    {
      sub_20B584050(*(v70 + 16));

      v75(v76);

      sub_20B583ECC(v75);
    }

    else
    {
    }

    return;
  }

  while (1)
  {
    if (v98)
    {
      v29 = *(&v97 + 1);
    }

    else
    {
      v29 = 0;
    }

    v30 = 0xE000000000000000;
    if (v98)
    {
      v30 = v98;
    }

    v82 = v30;
    v84 = v29;
    v31 = *(v28 + 16);
    if (v31)
    {
      break;
    }

    sub_20B520158(&v96, &qword_27C7655D0);
    v38 = MEMORY[0x277D84F90];
LABEL_36:
    if (!(v38 >> 62))
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        goto LABEL_38;
      }

      goto LABEL_57;
    }

    v39 = sub_20C13DB34();
    if (v39)
    {
LABEL_38:
      v40 = 0;
      while (1)
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x20F2F5430](v40, v38);
        }

        else
        {
          if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_70;
          }

          v43 = *(v38 + 8 * v40 + 32);
        }

        v44 = v43;
        v45 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_69;
        }

        v46 = [v43 identifier];
        swift_beginAccess();
        v47 = v44;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v49 = *(v2 + v86);
        *(v2 + v86) = 0x8000000000000000;
        v50 = sub_20B65CEB8(v46);
        v52 = v49[2];
        v53 = (v51 & 1) == 0;
        v54 = __OFADD__(v52, v53);
        v55 = v52 + v53;
        if (v54)
        {
          goto LABEL_71;
        }

        v56 = v51;
        if (v49[3] < v55)
        {
          break;
        }

        if (v48)
        {
          goto LABEL_50;
        }

        v60 = v50;
        sub_20BA101A4();
        v50 = v60;
        if (v56)
        {
LABEL_39:
          v41 = v49[7];
          v42 = *(v41 + 8 * v50);
          *(v41 + 8 * v50) = v47;

          goto LABEL_40;
        }

LABEL_51:
        v49[(v50 >> 6) + 8] |= 1 << v50;
        *(v49[6] + 8 * v50) = v46;
        *(v49[7] + 8 * v50) = v47;
        v58 = v49[2];
        v54 = __OFADD__(v58, 1);
        v59 = v58 + 1;
        if (v54)
        {
          goto LABEL_72;
        }

        v49[2] = v59;
LABEL_40:
        v2 = v87;
        *(v87 + v86) = v49;
        swift_endAccess();

        ++v40;
        if (v45 == v39)
        {
          goto LABEL_57;
        }
      }

      sub_20BA09E18(v55, v48);
      v50 = sub_20B65CEB8(v46);
      if ((v56 & 1) != (v57 & 1))
      {
        goto LABEL_73;
      }

LABEL_50:
      if (v56)
      {
        goto LABEL_39;
      }

      goto LABEL_51;
    }

LABEL_57:
    if (v38 >> 62)
    {
      sub_20B51C88C(0, &qword_27C764F30);

      sub_20C13DE34();
    }

    else
    {

      sub_20C13E004();
      sub_20B51C88C(0, &qword_27C764F30);
    }

    sub_20B51C88C(0, &unk_27C76FED0);
    v61 = sub_20C13D554();
    MEMORY[0x20F2F43B0](v61, v62, v63, v64, v65);
    if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    sub_20C13CCE4();
    sub_20B7B3BF8(&v90);
    v96 = v90;
    v97 = v91;
    v98 = v92;
    v99 = v93;
    v100 = v94;
    v101 = v95;
    v28 = *(&v90 + 1);
    if (!*(&v90 + 1))
    {
      goto LABEL_63;
    }
  }

  v79 = v96;
  v88 = MEMORY[0x277D84F90];

  sub_20C13DD64();
  v80 = *(v28 + 16);
  v32 = 0;
  sub_20B51C88C(0, &qword_27C7713A0);
  v33 = (v28 + 48);
  while (v80 != v32)
  {
    if (v32 >= *(v28 + 16))
    {
      goto LABEL_68;
    }

    v34 = *(v33 - 1);
    v35 = *v33;
    *&v90 = 0;
    *(&v90 + 1) = 0xE000000000000000;
    swift_bridgeObjectRetain_n();

    MEMORY[0x20F2F4230](v84, v82);

    MEMORY[0x20F2F4230](v34, v35);
    sub_20C13C914();

    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    v37[2] = v36;
    v37[3] = v32;
    v37[4] = v79;
    sub_20C13D624();

    sub_20C13DD34();
    sub_20C13DD74();
    sub_20C13DD84();
    sub_20C13DD44();
    v33 += 3;
    if (v31 == ++v32)
    {

      sub_20B520158(&v96, &qword_27C7655D0);
      v2 = v87;
      v38 = v88;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  type metadata accessor for Identifier(0);
  sub_20C13E054();
  __break(1u);
}

uint64_t sub_20B7B399C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI34TVDisplayPreferencesViewController_currentSections);
  if (v2 != *(v3 + 16))
  {
    return 0;
  }

  v56 = 1;

  if (v2)
  {
    v5 = 0;
    v6 = 32;
    do
    {
      v7 = (a1 + v6);
      v55 = *(a1 + v6 + 80);
      v8 = *(a1 + v6 + 64);
      v54[3] = *(a1 + v6 + 48);
      v54[4] = v8;
      v9 = *(a1 + v6 + 32);
      v54[1] = *(a1 + v6 + 16);
      v54[2] = v9;
      v54[0] = *(a1 + v6);
      v10 = *(v3 + 16);
      if (v5 == v10)
      {
        break;
      }

      if (v5 >= v10)
      {
        __break(1u);

        v32 = v43;
        v33 = v44;
        v34 = v45;
        v28 = v39;
        v29 = v40;
        v30 = v41;
        v31 = v42;
        v24 = v35;
        v25 = v36;
        v26 = v37;
        v27 = v38;
        result = sub_20B520158(&v24, &qword_27C7655D8);
        __break(1u);
        return result;
      }

      v11 = *(v3 + v6 + 16);
      v46[0] = *(v3 + v6);
      v46[1] = v11;
      v12 = *(v3 + v6 + 32);
      v13 = *(v3 + v6 + 48);
      v14 = *(v3 + v6 + 64);
      v47 = *(v3 + v6 + 80);
      v46[3] = v13;
      v46[4] = v14;
      v46[2] = v12;
      v15 = v7[1];
      v48 = *v7;
      v49 = v15;
      v16 = v7[2];
      v17 = v7[3];
      v18 = v7[4];
      *v53 = *(v7 + 10);
      v51 = v17;
      v52 = v18;
      v50 = v16;
      v19 = *(v3 + v6);
      *&v53[24] = *(v3 + v6 + 16);
      *&v53[8] = v19;
      v20 = *(v3 + v6 + 32);
      v21 = *(v3 + v6 + 48);
      v22 = *(v3 + v6 + 64);
      *&v53[88] = *(v3 + v6 + 80);
      *&v53[72] = v22;
      *&v53[56] = v21;
      *&v53[40] = v20;
      v44 = *&v53[64];
      v45 = *&v53[80];
      v39 = v52;
      v40 = *v53;
      v42 = *&v53[32];
      v43 = *&v53[48];
      v41 = *&v53[16];
      v35 = v48;
      v36 = v49;
      v37 = v50;
      v38 = v51;
      sub_20B7B4014(v54, &v24);
      sub_20B7B4014(v46, &v24);
      sub_20B7B3DF8(&v56, &v35);
      ++v5;
      v32 = v43;
      v33 = v44;
      v34 = v45;
      v28 = v39;
      v29 = v40;
      v30 = v41;
      v31 = v42;
      v24 = v35;
      v25 = v36;
      v26 = v37;
      v27 = v38;
      sub_20B520158(&v24, &qword_27C7655D8);
      v6 += 88;
    }

    while (v2 != v5);
  }

  return v56;
}

uint64_t sub_20B7B3BF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  if (v2 >= v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *v1 + 88 * v2;
  v5 = *(v4 + 48);
  v14 = *(v4 + 32);
  v15 = v5;
  v6 = *(v4 + 64);
  v7 = *(v4 + 80);
  v8 = *(v4 + 96);
  v19 = *(v4 + 112);
  v17 = v7;
  v18 = v8;
  v16 = v6;
  v1[1] = v2 + 1;
  v9 = v1[2];
  if (__OFADD__(v9, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v1[2] = v9 + 1;
  *a1 = v9;
  *(a1 + 40) = v16;
  v10 = v18;
  *(a1 + 56) = v17;
  *(a1 + 72) = v10;
  *(a1 + 88) = v19;
  v11 = v15;
  *(a1 + 8) = v14;
  *(a1 + 24) = v11;
  return sub_20B7B4014(&v14, v13);
}

uint64_t sub_20B7B3CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;

    MEMORY[0x20F2EA980](a3, a4);
    sub_20B64347C();

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}