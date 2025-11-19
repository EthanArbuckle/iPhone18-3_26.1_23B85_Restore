double TTRIRemindersListReminderCell.titleRectForScrolling.getter()
{
  v1 = *&v0[qword_280D13278];
  [v1 bounds];
  [v0 convertRect:v1 fromCoordinateSpace:?];
  v21 = CGRectInset(v20, 0.0, -12.0);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  [v0 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;

  *&result = CGRectIntersection(*&v14, *&v7);
  return result;
}

void TTRIRemindersListReminderCell.titleCaretRectForScrolling.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *&v1[qword_280D13278];
  v5 = [v4 selectedTextRange];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 end];
    [v4 caretRectForPosition_];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v2 convertRect:v4 fromCoordinateSpace:{v9, v11, v13, v15}];
    v31 = CGRectInset(v30, 0.0, -12.0);
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
    [v2 bounds];
    v34.origin.x = v20;
    v34.origin.y = v21;
    v34.size.width = v22;
    v34.size.height = v23;
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v33 = CGRectIntersection(v32, v34);
    v27 = v33.origin.x;
    v28 = v33.origin.y;
    v26 = v33.size.width;
    v29 = v33.size.height;

    *&v25 = v26;
    *&v24 = v27;
    *(&v24 + 1) = v28;
    *(&v25 + 1) = v29;
  }

  else
  {
    v24 = 0uLL;
    v25 = 0uLL;
  }

  *a1 = v24;
  *(a1 + 16) = v25;
  *(a1 + 32) = v6 == 0;
}

void TTRIRemindersListReminderCell.notesRectForScrolling.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21D62EAA4(1u);
  v5 = v4;
  if (v4)
  {
    [v4 bounds];
    [v2 convertRect:v5 fromCoordinateSpace:?];
    v21 = CGRectInset(v20, 0.0, -12.0);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
    [v2 bounds];
    v24.origin.x = v10;
    v24.origin.y = v11;
    v24.size.width = v12;
    v24.size.height = v13;
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v23 = CGRectIntersection(v22, v24);
    v17 = v23.origin.x;
    v18 = v23.origin.y;
    v16 = v23.size.width;
    v19 = v23.size.height;

    *&v15 = v16;
    *&v14 = v17;
    *(&v14 + 1) = v18;
    *(&v15 + 1) = v19;
  }

  else
  {
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a1 = v14;
  *(a1 + 16) = v15;
  *(a1 + 32) = v5 == 0;
}

void TTRIRemindersListReminderCell.notesCaretRectForScrolling.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = 1;
  v5 = sub_21D62E958(1u);
  v6 = 0uLL;
  if (v5)
  {
    v7 = v5;
    v8 = [v5 selectedTextRange];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 end];
      [v7 caretRectForPosition_];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      [v2 convertRect:v7 fromCoordinateSpace:{v12, v14, v16, v18}];
      v33 = CGRectInset(v32, 0.0, -12.0);
      x = v33.origin.x;
      y = v33.origin.y;
      width = v33.size.width;
      height = v33.size.height;
      [v2 bounds];
      v36.origin.x = v23;
      v36.origin.y = v24;
      v36.size.width = v25;
      v36.size.height = v26;
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      v35 = CGRectIntersection(v34, v36);
      v29 = v35.origin.x;
      v30 = v35.origin.y;
      v28 = v35.size.width;
      v31 = v35.size.height;

      *&v27 = v28;
      *&v6 = v29;
      v4 = 0;
      *(&v6 + 1) = v30;
      *(&v27 + 1) = v31;
    }

    else
    {

      v27 = 0uLL;
      v6 = 0uLL;
    }
  }

  else
  {
    v27 = 0uLL;
  }

  *a1 = v6;
  *(a1 + 16) = v27;
  *(a1 + 32) = v4;
}

uint64_t static TTRIRemindersListReminderCell.ignoreDragging(view:)(void *a1)
{
  type metadata accessor for TTRIRemindersListReminderCellLinkView();
  v2 = a1;
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for TTRIRemindersListLargeImageAttachmentsView();
    do
    {
      if (swift_dynamicCastClass())
      {
        break;
      }

      type metadata accessor for TTRIRemindersListSmallImageAttachmentsView();
      if (swift_dynamicCastClass())
      {
        break;
      }

      v4 = [v2 superview];

      if (!v4)
      {
        return 0;
      }

      v2 = v4;
    }

    while (!swift_dynamicCastClass());
  }

  return 1;
}

id TTRIRemindersListReminderCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

uint64_t TTRIRemindersListReminderCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v3[qword_280D131E0 + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v3[qword_280D132B8];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 6) = 0;
  *&v3[qword_280D132C8[0] + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v3[qword_280D132A8];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  v7 = &v3[qword_280D132B0];
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *v7 = 0u;
  v8 = &v3[qword_280D13290];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  v3[qword_280D131F8] = 0;
  v9 = &v3[qword_280D131E8];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = &v3[qword_280D13268];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v10[41] = 1;
  *&v3[qword_280D13250] = 0;
  *&v3[qword_280D13238] = 0;
  *&v3[qword_280D13240] = 0;
  v11 = qword_280D13208;
  *&v3[v11] = [objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler()) init];
  v12 = &v3[qword_280D13220];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v3[qword_280D13298] = xmmword_21DC1F990;
  *&v3[qword_27CE5FB30] = 0;
  *&v3[qword_27CE5FB38] = 0;
  v3[qword_280D131F0] = 0;
  *&v3[qword_280D13228] = 0;
  *&v3[qword_280D13210] = 0;
  v13 = [objc_allocWithZone(type metadata accessor for TTRIReminderCompletionButton()) initWithFrame_];
  v14 = &v13[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon];
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  *v14 = 0;
  v14[1] = 0;
  sub_21D637AC4(v15, v16);
  sub_21D637AE8(v15, v16);
  v96[0] = v15;
  v96[1] = v16;
  sub_21D8FD0A0(v96);
  sub_21D637AE8(v15, v16);
  v17 = OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_scale;
  swift_beginAccess();
  v18 = v13[v17];
  v13[v17] = 2;
  if (v18 != 2)
  {
    [v13 setNeedsUpdateConfiguration];
  }

  v19 = v13;
  [v19 setCustomAlignmentRectInsets_];
  if (qword_280D0C1F8 != -1)
  {
    swift_once();
  }

  LODWORD(v20) = 1148846080;
  [v19 setLayoutSize:xmmword_280D0C200 withContentPriority:v20];
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v22 = sub_21D900614(1);
  [v21 setFont_];

  [v21 setAdjustsFontForContentSizeCategory_];
  v23 = *MEMORY[0x277CEC620];
  v24 = *(MEMORY[0x277CEC620] + 8);
  v25 = v21;
  LODWORD(v26) = 1148846080;
  [v25 setLayoutSize:v23 withContentPriority:{v24, v26}];
  v92[0] = 0;
  v27 = objc_allocWithZone(type metadata accessor for TTRIReminderTitleTextView());
  v28 = TTRIReminderTitleTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:hashtagTokenEditingBehavior:usesLegacyTextKit1:)(1, 0, 1, v92, 0);
  v29 = sub_21D900614(1);
  [v28 setFont_];

  [v28 setAdjustsFontForContentSizeCategory_];
  v30 = v28;
  LODWORD(v31) = 1132068864;
  [v30 setContentCompressionResistancePriority:0 forAxis:v31];
  LODWORD(v32) = 1132068864;
  [v30 setContentHuggingPriority:0 forAxis:v32];
  v33 = [objc_opt_self() labelColor];
  [v30 setTextColor_];

  [v30 setBackgroundColor_];
  v34 = qword_280D165E0;
  v35 = v30;
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_21DBFA12C();
  [v35 setAccessibilityLabel_];

  v37 = type metadata accessor for TTRIRemindersListReminderCellAccessoryStackView();
  v38 = [objc_allocWithZone(v37) initWithFrame_];
  LODWORD(v39) = 1148846080;
  [v38 setContentCompressionResistancePriority:0 forAxis:v39];
  LODWORD(v40) = 1148846080;
  [v38 setContentHuggingPriority:0 forAxis:v40];
  v95.receiver = v38;
  v95.super_class = v37;
  objc_msgSendSuper2(&v95, sel_setDebugBoundingBoxesEnabled_, 0);
  v41 = *&v38[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackView];
  v94.receiver = v38;
  v94.super_class = v37;
  [v41 setDebugBoundingBoxesEnabled_];
  v42 = objc_allocWithZone(type metadata accessor for TTRIRemindersListCellContentStackView());
  sub_21D0D8CF0(0, &qword_280D176A0);
  v43 = sub_21DBFA5DC();
  v44 = [v42 initWithArrangedSubviews_];

  v45 = v44;
  [v45 setAxis_];
  [v45 setAlignment_];
  [v45 setSpacing_];

  v46 = v45;
  [v46 setLayoutMarginsRelativeArrangement_];
  v47 = v46;
  [v47 setPreservesSuperviewLayoutMargins_];
  [v47 setDirectionalLayoutMargins_];
  [v47 setDebugBoundingBoxesEnabled_];

  v48 = v47;
  v49 = sub_21DBFA12C();
  [v48 setAccessibilityIdentifier_];

  *&v4[qword_280D13260] = v19;
  *&v4[qword_280D13280] = v25;
  *&v4[qword_280D13278] = v35;
  *&v4[qword_280D13248] = v38;
  *&v4[qword_280D132A0] = v48;
  v50 = v19;
  v51 = v25;
  v52 = v35;
  v53 = v38;
  v54 = v48;
  if (a3)
  {
    sub_21DBF8E0C();
    v55 = sub_21DBFA12C();
  }

  else
  {
    v55 = 0;
  }

  v93.receiver = v4;
  v93.super_class = ObjectType;
  v56 = objc_msgSendSuper2(&v93, sel_initWithStyle_reuseIdentifier_, a1, v55);

  v57 = *&v56[qword_280D13DD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F0F0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_21DC08D20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_21DC0AA10;
  *(v59 + 32) = v19;
  *(v59 + 40) = v25;
  v88 = v25;
  *(v59 + 48) = v35;
  *(v59 + 56) = v38;
  *(v58 + 32) = v59;
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_21DC0AA10;
  *(v60 + 32) = v19;
  *(v60 + 40) = v48;
  *(v60 + 48) = v48;
  *(v60 + 56) = v48;
  *(v58 + 40) = v60;
  v61 = v48;
  v62 = v57;
  v63 = v19;
  v64 = v61;
  v65 = v62;
  v66 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
  v67 = sub_21DBFA5DC();
  [v65 setArrangedSubviewRows_];

  [v65 setRowSpacing_];
  [v65 setColumnSpacing_];
  [v65 setDebugBoundingBoxesEnabled_];
  [v65 setVerticalAlignment_];
  [v65 setHorizontalAlignment_];

  [v65 setAlignment:0 forView:v64 inAxis:1];
  v68 = [v65 columnAtIndex_];
  *&v66[qword_280D13238] = v68;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  if (v68)
  {

    [v68 setSpacingAfter_];
    swift_unknownObjectRelease();
    v70 = [v65 columnAtIndex_];
    *&v66[qword_280D13240] = v70;
    swift_unknownObjectRelease();
    v71 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v72 = v66;

    sub_21D69429C();

    v73 = &v65[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListReminderCellGrid_layoutMarginsDidUpdate];
    v74 = *&v65[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListReminderCellGrid_layoutMarginsDidUpdate];
    *v73 = sub_21D6A2B78;
    v73[1] = v71;

    sub_21D0D0E88(v74);
    v75 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListReminderCellAccessibilityElement()) initWithAccessibilityContainer_];
    v76 = qword_280D13210;
    swift_beginAccess();
    v77 = *&v72[v76];
    *&v72[v76] = v75;

    sub_21D61D520();
    [v63 addTarget:v72 action:sel_completedButtonAction_ forControlEvents:0x2000];

    v78 = [v35 textDragInteraction];
    if (v78)
    {
      v79 = v78;
      [v78 setEnabled_];
      [v35 removeInteraction_];
    }

    [v35 setTextDropDelegate_];
    v80 = [objc_allocWithZone(MEMORY[0x277CD9660]) init];
    v81 = v72;
    [v80 setDelegate_];
    [v35 addInteraction_];
    *&v38[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_accessoryDelegate + 8] = &off_282ECC100;
    swift_unknownObjectWeakAssign();
    [v81 setFocusEffect_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65630);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_21DC08D00;
    v83 = sub_21DBF8A1C();
    v84 = MEMORY[0x277D74C50];
    *(v82 + 32) = v83;
    *(v82 + 40) = v84;
    sub_21DBFB5CC();
    swift_unknownObjectRelease();

    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_21DC08D00;
    v86 = sub_21DBF8B3C();
    v87 = MEMORY[0x277D74CB8];
    *(v85 + 32) = v86;
    *(v85 + 40) = v87;
    sub_21DBFB5CC();

    swift_unknownObjectRelease();

    return v81;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21D69429C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + qword_280D132A0);
    [*(Strong + qword_280D13DD0) layoutMargins];
    v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_superviewBottomLayoutMarginToCompensate);
    *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_superviewBottomLayoutMarginToCompensate) = v4;
    if (v4 != v3)
    {
      sub_21D6A4A5C();
    }
  }
}

uint64_t sub_21D694334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TTRIRemindersListReminderCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

id TTRIRemindersListReminderCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall TTRIRemindersListReminderCell.layoutSubviews()()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v1 = *&v0[qword_280D13220];
  if (v1)
  {
    v2 = v1;
    if ([swift_unknownObjectRetain() isHidden])
    {

      swift_unknownObjectRelease();
      return;
    }

    v3 = [v0 traitCollection];
    v4 = [v3 layoutDirection];

    if (v4 + 1 >= 2)
    {
      if (v4 != 1)
      {
LABEL_10:
        swift_unknownObjectRelease();

        return;
      }

      v8 = *&v0[qword_280D13DD0];
      [v8 frame];
      MaxX = CGRectGetMaxX(v18);
      [v8 directionalLayoutMargins];
      v11 = MaxX - v10;
      [*&v0[qword_280D13278] frame];
      v7 = v11 - CGRectGetMaxX(v19);
    }

    else
    {
      [*&v0[qword_280D13278] frame];
      MinX = CGRectGetMinX(v17);
      [*&v0[qword_280D13DD0] directionalLayoutMargins];
      v7 = MinX - v6;
    }

    v12 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_leadingShiftForReminderTitleAlignment;
    swift_beginAccess();
    v13.i64[0] = *&v2[v12];
    *&v2[v12] = v7;
    v14.n128_u64[0] = 0x3E50000000000000;
    if ((sub_21D110D14(v13, v14, v7, v15) & 1) == 0)
    {
      [v2 setNeedsLayout];
    }

    goto LABEL_10;
  }
}

void sub_21D6945FC(void *a1)
{
  v1 = a1;
  TTRIRemindersListReminderCell.layoutSubviews()();
}

Swift::Void __swiftcall TTRIRemindersListReminderCell.prepareForReuse()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_prepareForReuse);
  v1 = v0 + qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(v1, v2, &unk_27CE5FAD0);
  if (!v3)
  {
    sub_21D0CF7E0(v1, &unk_27CE5FAD0);
    sub_21D0D0FD0(v2, v1);
LABEL_6:
    *(v1 + 41) = 1;
    goto LABEL_7;
  }

  if (v3 != 1)
  {
    sub_21D0CF7E0(v1, &unk_27CE5FAD0);
    *v1 = 0u;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0;
    goto LABEL_6;
  }

  sub_21D0CF7E0(v2, &unk_27CE5FAD0);
LABEL_7:
  swift_endAccess();
}

void sub_21D694738(void *a1)
{
  v1 = a1;
  TTRIRemindersListReminderCell.prepareForReuse()();
}

Swift::Void __swiftcall TTRIRemindersListReminderCell.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  ObjectType = swift_getObjectType();
  v6 = [v2 isEditing];
  v23.receiver = v2;
  v23.super_class = ObjectType;
  v7 = _;
  objc_msgSendSuper2(&v23, sel_setEditing_animated_, v7, animated);
  if (v6 != v7)
  {
    if (animated)
    {
      v8 = objc_opt_self();
      v9 = swift_allocObject();
      *(v9 + 16) = v2;
      v21 = sub_21D6A37A0;
      v22 = v9;
      v17 = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v19 = sub_21D0D74FC;
      v20 = &block_descriptor_22_1;
      v10 = _Block_copy(&v17);
      v11 = v2;

      [v8 animateWithDuration:v10 animations:0.3];
      _Block_release(v10);
    }

    else
    {
      sub_21D694A04();
      sub_21D6951F8();
    }

    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_21D6A375C;
    *(v14 + 24) = v13;
    v21 = sub_21D0E622C;
    v22 = v14;
    v17 = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_21D0E6204;
    v20 = &block_descriptor_16;
    v15 = _Block_copy(&v17);
    v16 = v2;

    [v12 performWithoutAnimation_];
    _Block_release(v15);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }

    else
    {
      sub_21D695350();
    }
  }
}

void sub_21D694A04()
{
  v1 = v0;
  v2 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(&v0[v2], &v41, &unk_27CE5FAD0);
  *&v40[10] = *&v42[10];
  v39 = v41;
  *v40 = *v42;
  if (!v42[25])
  {
    sub_21D0D0FD0(&v39, &v43);
    v3 = *(&v44 + 1);
    if (!*(&v44 + 1))
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  if (v42[25] != 1)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    goto LABEL_13;
  }

  v43 = v41;
  v44 = *v42;
  v45 = *&v42[16];
  v3 = *&v42[8];
  if (*&v42[8])
  {
LABEL_6:
    v4 = v45;
    v5 = __swift_project_boxed_opaque_existential_1(&v43, v3);
    v6 = *(v3 - 8);
    v7 = MEMORY[0x28223BE20](v5);
    v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
    (*(v6 + 16))(v9, v7);
    sub_21D0CF7E0(&v43, &unk_27CE5FAE0);
    (*(v4 + 16))(&v41, v3, v4);
    (*(v6 + 8))(v9, v3);
    LOBYTE(v10) = v41;
    v11 = v41 >> 6;
    if (!v11)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

LABEL_13:
  sub_21D0CF7E0(&v43, &unk_27CE5FAE0);
  if (qword_280D15938 != -1)
  {
    swift_once();
  }

  v10 = word_280D15940;
  sub_21DBF8E0C();
  v11 = v10 >> 6;
  if (!(v10 >> 6))
  {
LABEL_16:
    if (![v1 isEditing] || (objc_msgSend(v1, sel_currentStateMask) & 1) == 0)
    {
      v17 = *&v1[qword_280D13238];
      if (v17)
      {
        [v17 setHidden_];
        sub_21D0D3954(&v1[v2], &v41, &unk_27CE5FAD0);
        *&v40[10] = *&v42[10];
        v39 = v41;
        *v40 = *v42;
        if (v42[25])
        {
          if (v42[25] == 1)
          {
            v43 = v41;
            v44 = *v42;
            v45 = *&v42[16];
            v18 = *&v42[8];
            if (!*&v42[8])
            {
              goto LABEL_33;
            }

LABEL_31:
            v20 = v45;
            v21 = __swift_project_boxed_opaque_existential_1(&v43, v18);
            v22 = *(v18 - 8);
            v23 = MEMORY[0x28223BE20](v21);
            v25 = &v40[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
            (*(v22 + 16))(v25, v23);
            sub_21D0CF7E0(&v43, &unk_27CE5FAE0);
            v26 = (*(v20 + 40))(v18, v20);
            (*(v22 + 8))(v25, v18);
            goto LABEL_34;
          }

          v45 = 0;
          v43 = 0u;
          v44 = 0u;
        }

        else
        {
          sub_21D0D0FD0(&v39, &v43);
          v18 = *(&v44 + 1);
          if (*(&v44 + 1))
          {
            goto LABEL_31;
          }
        }

LABEL_33:
        sub_21D0CF7E0(&v43, &unk_27CE5FAE0);
        v26 = 0;
LABEL_34:
        v27 = *&v1[qword_280D13260];
        sub_21D0D3954(&v1[v2], &v41, &unk_27CE5FAD0);
        *&v40[10] = *&v42[10];
        v39 = v41;
        *v40 = *v42;
        if (v42[25])
        {
          if (v42[25] == 1)
          {
            v43 = v41;
            v44 = *v42;
            v45 = *&v42[16];
            v28 = *&v42[8];
            if (!*&v42[8])
            {
              goto LABEL_41;
            }

LABEL_39:
            v29 = v45;
            v30 = __swift_project_boxed_opaque_existential_1(&v43, v28);
            v31 = *(v28 - 8);
            v32 = MEMORY[0x28223BE20](v30);
            v34 = &v40[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
            (*(v31 + 16))(v34, v32);
            sub_21D0CF7E0(&v43, &unk_27CE5FAE0);
            v35 = (*(v29 + 200))(v28, v29);
            (*(v31 + 8))(v34, v28);
LABEL_42:
            v36 = &v27[OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon];
            swift_beginAccess();
            v37 = *v36;
            v38 = v36[1];
            *v36 = v26 & 1;
            v36[1] = v35;
            sub_21D637AC4(v37, v38);
            sub_21D637AE8(v37, v38);
            *&v39 = v37;
            *(&v39 + 1) = v38;
            sub_21D8FD0A0(&v39);
            sub_21D637AE8(v37, v38);
            [v27 setSelected_];
            TTRIReminderCompletionButton.prefersFadedAppearance.setter(v10 & 1);
            goto LABEL_43;
          }

          v45 = 0;
          v43 = 0u;
          v44 = 0u;
        }

        else
        {
          sub_21D0D0FD0(&v39, &v43);
          v28 = *(&v44 + 1);
          if (*(&v44 + 1))
          {
            goto LABEL_39;
          }
        }

LABEL_41:
        sub_21D0CF7E0(&v43, &unk_27CE5FAE0);
        v35 = 0;
        goto LABEL_42;
      }

      goto LABEL_46;
    }

    goto LABEL_28;
  }

LABEL_7:
  if (v11 != 1)
  {
    v19 = *&v1[qword_280D13238];
    if (v19)
    {
      [v19 setHidden_];
      v13 = (*&v1[qword_280D13260] + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon);
      swift_beginAccess();
      v14 = *v13;
      v15 = v13[1];
      v16 = xmmword_21DC1F9B0;
      goto LABEL_25;
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (![v1 isEditing] || (objc_msgSend(v1, sel_currentStateMask) & 1) == 0)
  {
    v12 = *&v1[qword_280D13238];
    if (v12)
    {
      [v12 setHidden_];
      v13 = (*&v1[qword_280D13260] + OBJC_IVAR____TtC15RemindersUICore28TTRIReminderCompletionButton_icon);
      swift_beginAccess();
      v14 = *v13;
      v15 = v13[1];
      v16 = xmmword_21DC220E0;
LABEL_25:
      *v13 = v16;
      sub_21D637AC4(v14, v15);
      sub_21D637AE8(v14, v15);
      *&v39 = v14;
      *(&v39 + 1) = v15;
      sub_21D8FD0A0(&v39);

      sub_21D637AE8(v14, v15);
      return;
    }

    goto LABEL_45;
  }

  if (*&v1[qword_280D13238])
  {
LABEL_29:
    [swift_unknownObjectRetain() setHidden_];
    swift_unknownObjectRelease();
LABEL_43:

    return;
  }

  __break(1u);
LABEL_28:
  if (*&v1[qword_280D13238])
  {
    goto LABEL_29;
  }

LABEL_47:
  __break(1u);
}

uint64_t sub_21D6951F8()
{
  v1 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(v0 + v1, &v7, &unk_27CE5FAD0);
  *&v6[10] = *&v8[10];
  v5 = v7;
  *v6 = *v8;
  if (v8[25])
  {
    if (v8[25] == 1)
    {
      v9 = v7;
      v10 = *v8;
      v11 = *&v8[16];
      if (!*&v8[8])
      {
        return sub_21D0CF7E0(&v9, &unk_27CE5FAE0);
      }

LABEL_6:
      v2 = sub_21D0D0FD0(&v9, &v7);
      MEMORY[0x28223BE20](v2);
      v4[2] = v0;
      v4[3] = &v7;
      sub_21D6A444C(sub_21D6A42FC, v4);
      return __swift_destroy_boxed_opaque_existential_0(&v7);
    }

    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  else
  {
    sub_21D0D0FD0(&v5, &v9);
    if (*(&v10 + 1))
    {
      goto LABEL_6;
    }
  }

  return sub_21D0CF7E0(&v9, &unk_27CE5FAE0);
}

void sub_21D695350()
{
  [*(v0 + qword_280D13278) setUserInteractionEnabled_];
  v1 = sub_21D62E958(1u);
  if (v1)
  {
    v2 = v1;
    sub_21D69B030(v1);
  }

  v3 = sub_21D62EAA4(2u);
  if (v3)
  {
    v4 = v3;
    [v3 setUserInteractionEnabled_];
  }
}

void sub_21D695430(void *a1, uint64_t a2, Swift::Bool a3, Swift::Bool a4)
{
  v6 = a1;
  TTRIRemindersListReminderCell.setEditing(_:animated:)(a3, a4);
}

Swift::Void __swiftcall TTRIRemindersListReminderCell.layoutMarginsDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutMarginsDidChange);
  sub_21D68E520(1);
}

void sub_21D6954CC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_layoutMarginsDidChange);
  sub_21D68E520(1);
}

uint64_t TTRIRemindersListReminderCell.updateConfiguration(using:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F000);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_21DBF878C();
  v15.receiver = v1;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel__bridgedUpdateConfigurationUsingState_, v6);

  v7 = [v1 traitCollection];
  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_280D17220)
  {

LABEL_9:
    if (qword_280D0C768 != -1)
    {
      swift_once();
    }

    v9 = qword_280D0C770;
    goto LABEL_12;
  }

  v8 = [v7 horizontalSizeClass];

  if (v8 != 2)
  {
    goto LABEL_9;
  }

  if (qword_280D0C740 != -1)
  {
    swift_once();
  }

  v9 = qword_280D0C748;
LABEL_12:
  v10 = sub_21DBF88CC();
  v11 = __swift_project_value_buffer(v10, v9);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v5, v11, v10);
  (*(v12 + 56))(v5, 0, 1, v10);
  return MEMORY[0x223D437B0](v5);
}

uint64_t sub_21D695784(void *a1)
{
  v2 = sub_21DBF87CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF879C();
  v6 = a1;
  TTRIRemindersListReminderCell.updateConfiguration(using:)();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21D69586C()
{
  v1 = v0;
  v2 = v0 + qword_280D131E0;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v3 = *(v2 + 8), v4 = swift_getObjectType(), LOBYTE(v3) = (*(v3 + 8))(v0, v4, v3), result = swift_unknownObjectRelease(), (v3 & 1) != 0))
  {
    v6 = qword_280D13268;
    swift_beginAccess();
    sub_21D0D3954(v1 + v6, &v25, &unk_27CE5FAD0);
    *&v24[10] = *(v26 + 10);
    v23 = v25;
    *v24 = v26[0];
    if (BYTE9(v26[1]))
    {
      if (BYTE9(v26[1]) == 1)
      {
        v27 = v25;
        v28 = v26[0];
        v29 = *&v26[1];
        if (!*(&v26[0] + 1))
        {
          return sub_21D0CF7E0(&v27, &unk_27CE5FAE0);
        }

LABEL_8:
        sub_21D0D0FD0(&v27, v30);
        v7 = v31;
        v8 = v32;
        __swift_project_boxed_opaque_existential_1(v30, v31);
        (*(v8 + 16))(&v25, v7, v8);
        v9 = v25;

        if (v9 >> 6)
        {
          if (v9 >> 6 != 1)
          {
            v17 = *(v1 + qword_280D13278);
            v18 = [v17 window];
            [v18 makeKeyWindow];

            [v17 becomeFirstResponder];
            v19 = [v17 selectedTextRange];
            if (v19)
            {
            }

            else
            {
              v20 = [v17 endOfDocument];
              v21 = [v17 endOfDocument];
              v22 = [v17 textRangeFromPosition:v20 toPosition:v21];

              [v17 setSelectedTextRange_];
            }

            return __swift_destroy_boxed_opaque_existential_0(v30);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v10 = *(v2 + 8);
            ObjectType = swift_getObjectType();
            (*(v10 + 24))(v1, ObjectType, v10);
LABEL_16:
            swift_unknownObjectRelease();
          }
        }

        else if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = *(v2 + 8);
          v13 = swift_getObjectType();
          v14 = v31;
          v15 = v32;
          __swift_project_boxed_opaque_existential_1(v30, v31);
          v16 = (*(v15 + 40))(v14, v15);
          (*(v12 + 16))(v1, (v16 & 1) == 0, v13, v12);
          goto LABEL_16;
        }

        return __swift_destroy_boxed_opaque_existential_0(v30);
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }

    else
    {
      sub_21D0D0FD0(&v23, &v27);
      if (*(&v28 + 1))
      {
        goto LABEL_8;
      }
    }

    return sub_21D0CF7E0(&v27, &unk_27CE5FAE0);
  }

  return result;
}

void sub_21D695BF8()
{
  v1 = v0;
  v2 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(v1 + v2, &v21, &unk_27CE5FAD0);
  *&v20[10] = *&v22[10];
  v19 = v21;
  *v20 = *v22;
  if (!v22[25])
  {
    sub_21D0D0FD0(&v19, &v23);
    v3 = *(&v24 + 1);
    if (*(&v24 + 1))
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_21D0CF7E0(&v23, &unk_27CE5FAE0);
    goto LABEL_11;
  }

  if (v22[25] != 1)
  {
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    goto LABEL_10;
  }

  v23 = v21;
  v24 = *v22;
  v25 = *&v22[16];
  v3 = *&v22[8];
  if (!*&v22[8])
  {
    goto LABEL_10;
  }

LABEL_6:
  v4 = v25;
  v5 = __swift_project_boxed_opaque_existential_1(&v23, v3);
  v6 = *(v3 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  (*(v6 + 16))(v9, v7);
  sub_21D0CF7E0(&v23, &unk_27CE5FAE0);
  (*(v4 + 288))(&v21, v3, v4);
  (*(v6 + 8))(v9, v3);
  v10 = *(&v21 + 1);
  if (*(&v21 + 1) >= 2uLL)
  {
    v11 = v21;

    v12 = v1 + qword_280D131E0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      (*(v13 + 72))(v1, v11, v10, ObjectType, v13);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

LABEL_11:
  if (qword_27CE56B78 != -1)
  {
    swift_once();
  }

  v15 = sub_21DBF84BC();
  __swift_project_value_buffer(v15, qword_27CE5FAB0);
  v16 = sub_21DBF84AC();
  v17 = sub_21DBFAECC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_21D0C9000, v16, v17, "Should not be able to trigger SuggestedSectionButtonAction as button should be hidden when no suggestion available", v18, 2u);
    MEMORY[0x223D46520](v18, -1, -1);
  }
}

uint64_t sub_21D695F48(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_21D0CF7E0(v9, &qword_27CE5C690);
}

uint64_t sub_21D695FD8()
{
  v1 = v0;
  v2 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(v1 + v2, &v14, &unk_27CE5FAD0);
  *&v13[10] = *(v15 + 10);
  v12 = v14;
  *v13 = v15[0];
  if (!BYTE9(v15[1]))
  {
    sub_21D0D0FD0(&v12, &v16);
    v3 = *(&v17 + 1);
    if (*(&v17 + 1))
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_21D0CF7E0(&v16, &unk_27CE5FAE0);
    v10 = 0;
    return ([v1 isEditing] ^ 1) & v10;
  }

  if (BYTE9(v15[1]) != 1)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_8;
  }

  v16 = v14;
  v17 = v15[0];
  v18 = *&v15[1];
  v3 = *(&v15[0] + 1);
  if (!*(&v15[0] + 1))
  {
    goto LABEL_8;
  }

LABEL_6:
  v4 = v18;
  v5 = __swift_project_boxed_opaque_existential_1(&v16, v3);
  v6 = *(v3 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  (*(v6 + 16))(v9, v7);
  sub_21D0CF7E0(&v16, &unk_27CE5FAE0);
  (*(v4 + 16))(&v14, v3, v4);
  (*(v6 + 8))(v9, v3);
  v10 = BYTE2(v14);

  return ([v1 isEditing] ^ 1) & v10;
}

uint64_t sub_21D6961EC()
{
  v1 = v0;
  v2 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(&v0[v2], v52, &unk_27CE5FAD0);
  *(&v51[1] + 10) = *(&v52[1] + 10);
  v51[0] = v52[0];
  v51[1] = v52[1];
  if (BYTE9(v52[2]))
  {
    if (BYTE9(v52[2]) == 1)
    {
      v62 = v52[0];
      v63 = v52[1];
      v64 = *&v52[2];
    }

    else
    {
      v64 = 0;
      v62 = 0u;
      v63 = 0u;
    }
  }

  else
  {
    sub_21D0D0FD0(v51, &v62);
  }

  sub_21D0D3954(&v62, v52, &unk_27CE5FAE0);
  v3 = *(&v52[1] + 1);
  if (!*(&v52[1] + 1))
  {
    goto LABEL_11;
  }

  v4 = *&v52[2];
  __swift_project_boxed_opaque_existential_1(v52, *(&v52[1] + 1));
  (*(v4 + 176))(v51, v3, v4);
  v5 = LOBYTE(v51[0]);
  __swift_destroy_boxed_opaque_existential_0(v52);
  if (v5 == 2 || (v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_21D0D3954(&v62, v52, &unk_27CE5FAE0);
  v6 = *(&v52[1] + 1);
  if (!*(&v52[1] + 1))
  {
LABEL_11:
    sub_21D0CF7E0(v52, &unk_27CE5FAE0);
LABEL_12:
    v46 = 0;
    v47 = 0;
    goto LABEL_13;
  }

  v7 = *&v52[2];
  __swift_project_boxed_opaque_existential_1(v52, *(&v52[1] + 1));
  v8 = (*(v7 + 168))(v6, v7);
  v46 = v9;
  v47 = v8;
  __swift_destroy_boxed_opaque_existential_0(v52);
LABEL_13:
  if (([*&v1[qword_280D13278] isEditing] & 1) == 0)
  {
    v10 = sub_21D62E958(1u);
    if (!v10 || (v11 = v10, v12 = [v10 isEditing], v11, (v12 & 1) == 0))
    {
      v13 = sub_21D62EA00(2u);
      if (v13)
      {
        v14 = v13;
        v15 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
        swift_beginAccess();
        v16 = *&v14[v15];
        if (v16)
        {
          v17 = v16;
          v18 = [v17 isEditing];

          if (v18)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }
      }

      v45 = 0;
      goto LABEL_29;
    }
  }

LABEL_19:
  sub_21D0D3954(&v1[v2], v52, &unk_27CE5FAD0);
  *(&v51[1] + 10) = *(&v52[1] + 10);
  v51[0] = v52[0];
  v51[1] = v52[1];
  if (BYTE9(v52[2]))
  {
    if (BYTE9(v51[2]) == 1)
    {
      v50[0] = v52[0];
      v50[1] = v52[1];
      *&v50[2] = *&v52[2];
      v19 = *(&v52[1] + 1);
      if (*(&v52[1] + 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      memset(v50, 0, 40);
    }

LABEL_25:
    sub_21D0CF7E0(v50, &unk_27CE5FAE0);
    v45 = 1;
    goto LABEL_29;
  }

  sub_21D0D0FD0(v51, v50);
  v19 = *(&v50[1] + 1);
  if (!*(&v50[1] + 1))
  {
    goto LABEL_25;
  }

LABEL_22:
  v20 = *&v50[2];
  v21 = __swift_project_boxed_opaque_existential_1(v50, v19);
  v22 = *(v19 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, v23);
  sub_21D0CF7E0(v50, &unk_27CE5FAE0);
  LOBYTE(v20) = (*(v20 + 224))(v19, v20);
  (*(v22 + 8))(v25, v19);
  v26 = 1;
  v45 = 1;
  if ((v20 & 1) == 0)
  {
LABEL_29:
    v26 = 0;
  }

  v44 = v26;
  v27 = &v1[qword_280D132B8];
  swift_beginAccess();
  if (*(v27 + 5))
  {
    v28 = v27[8];
  }

  else
  {
    v28 = 3;
  }

  v43 = v28;
  if ([v1 isEditing])
  {
    v29 = [v1 currentStateMask] & 1;
  }

  else
  {
    v29 = 0;
  }

  sub_21D0D3954(&v62, v58, &unk_27CE5FAE0);
  v30 = v59;
  if (v59)
  {
    v31 = v60;
    __swift_project_boxed_opaque_existential_1(v58, v59);
    (*(v31 + 136))(v52, v30, v31);
    v32 = v52[0];
    __swift_destroy_boxed_opaque_existential_0(v58);
  }

  else
  {
    sub_21D0CF7E0(v58, &unk_27CE5FAE0);
    v32 = 3;
  }

  sub_21D0D3954(&v62, v52, &unk_27CE5FAE0);
  v33 = *(&v52[1] + 1);
  if (*(&v52[1] + 1))
  {
    v34 = *&v52[2];
    __swift_project_boxed_opaque_existential_1(v52, *(&v52[1] + 1));
    (*(v34 + 264))(v56, v33, v34);
    __swift_destroy_boxed_opaque_existential_0(v52);
  }

  else
  {
    sub_21D0CF7E0(v52, &unk_27CE5FAE0);
    sub_21D639910(v56);
  }

  sub_21D0D3954(&v62, v53, &unk_27CE5FAE0);
  v35 = v54;
  if (v54)
  {
    v36 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v37 = (*(v36 + 208))(v35, v36);
    __swift_destroy_boxed_opaque_existential_0(v53);
  }

  else
  {
    sub_21D0CF7E0(v53, &unk_27CE5FAE0);
    v37 = 0;
  }

  *(&v61[11] + 7) = v56[11];
  *(&v61[12] + 7) = v56[12];
  *(&v61[13] + 7) = v56[13];
  *(&v61[14] + 7) = v57;
  *(&v61[7] + 7) = v56[7];
  *(&v61[8] + 7) = v56[8];
  *(&v61[9] + 7) = v56[9];
  *(&v61[10] + 7) = v56[10];
  *(&v61[3] + 7) = v56[3];
  *(&v61[4] + 7) = v56[4];
  *(&v61[5] + 7) = v56[5];
  *(&v61[6] + 7) = v56[6];
  *(v61 + 7) = v56[0];
  *(&v61[1] + 7) = v56[1];
  *(&v61[2] + 7) = v56[2];
  *(&v49[25] + 1) = v61[11];
  *(&v49[27] + 1) = v61[12];
  *(&v49[29] + 1) = v61[13];
  *&v49[31] = *(&v61[13] + 15);
  *(&v49[17] + 1) = v61[7];
  *(&v49[19] + 1) = v61[8];
  *(&v49[21] + 1) = v61[9];
  *(&v49[23] + 1) = v61[10];
  *(&v49[9] + 1) = v61[3];
  *(&v49[11] + 1) = v61[4];
  *(&v49[13] + 1) = v61[5];
  *(&v49[15] + 1) = v61[6];
  *(&v49[3] + 1) = v61[0];
  *(&v49[5] + 1) = v61[1];
  LOBYTE(v49[0]) = v43;
  BYTE1(v49[0]) = v29;
  BYTE2(v49[0]) = v45;
  BYTE3(v49[0]) = v44;
  v49[1] = v47;
  v49[2] = v46;
  LOBYTE(v49[3]) = v32;
  *(&v49[7] + 1) = v61[2];
  v49[33] = v37;
  v38 = *&v1[qword_280D13248];
  memcpy(v50, v49, sizeof(v50));
  nullsub_1(v50, v39, v40);
  memcpy(v51, (v38 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel), sizeof(v51));
  memcpy(v52, (v38 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel), sizeof(v52));
  memcpy((v38 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel), v50, 0x110uLL);
  sub_21D639958(v49, v48);
  sub_21D0D3954(v51, v48, &unk_27CE5F320);
  sub_21D0CF7E0(v52, &unk_27CE5F320);
  memcpy(v48, v51, sizeof(v48));
  sub_21D6BBA84(v48);
  sub_21D6399B4(v49);
  sub_21D0CF7E0(&v62, &unk_27CE5FAE0);
  return sub_21D0CF7E0(v51, &unk_27CE5F320);
}

uint64_t sub_21D696A64(uint64_t a1)
{
  sub_21D694A04();
  sub_21D696C44();
  sub_21D6970B8();
  v2 = a1 + qword_280D131E0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 80))(a1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  sub_21D68E520(0);
  v5 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(a1 + v5, &v11, &unk_27CE5FAD0);
  *&v10[10] = *&v12[10];
  v9 = v11;
  *v10 = *v12;
  if (v12[25])
  {
    if (v12[25] == 1)
    {
      v13 = v11;
      v14 = *v12;
      v15 = *&v12[16];
      if (!*&v12[8])
      {
        return sub_21D0CF7E0(&v13, &unk_27CE5FAE0);
      }

LABEL_8:
      v6 = sub_21D0D0FD0(&v13, &v11);
      MEMORY[0x28223BE20](v6);
      v8[2] = a1;
      v8[3] = &v11;
      sub_21D6A444C(sub_21D6A4378, v8);
      return __swift_destroy_boxed_opaque_existential_0(&v11);
    }

    v15 = 0;
    v13 = 0u;
    v14 = 0u;
  }

  else
  {
    sub_21D0D0FD0(&v9, &v13);
    if (*(&v14 + 1))
    {
      goto LABEL_8;
    }
  }

  return sub_21D0CF7E0(&v13, &unk_27CE5FAE0);
}

void sub_21D696C44()
{
  v1 = v0;
  v2 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(v0 + v2, &v28, &unk_27CE5FAD0);
  *&v27[10] = *&v29[10];
  v26 = v28;
  *v27 = *v29;
  if (!v29[25])
  {
    sub_21D0D0FD0(&v26, &v30);
    v3 = *(&v31 + 1);
    if (*(&v31 + 1))
    {
      goto LABEL_6;
    }

LABEL_15:
    sub_21D0CF7E0(&v30, &unk_27CE5FAE0);
LABEL_17:
    v18 = *(v1 + qword_280D13240);
    if (v18)
    {
      [v18 setHidden_];
      return;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v29[25] != 1)
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_15;
  }

  v30 = v28;
  v31 = *v29;
  v32 = *&v29[16];
  v3 = *&v29[8];
  if (!*&v29[8])
  {
    goto LABEL_15;
  }

LABEL_6:
  v4 = v32;
  v5 = __swift_project_boxed_opaque_existential_1(&v30, v3);
  v6 = *(v3 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  (*(v6 + 16))(v9, v7);
  sub_21D0CF7E0(&v30, &unk_27CE5FAE0);
  v10 = (*(v4 + 304))(v3, v4);
  v12 = v11;
  (*(v6 + 8))(v9, v3);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    goto LABEL_17;
  }

  v14 = *(v1 + qword_280D13240);
  if (v14)
  {
    [v14 setHidden_];
    v15 = *(v1 + qword_280D13280);
    *&v28 = v10;
    *(&v28 + 1) = v12;
    MEMORY[0x223D42AA0](41154, 0xA200000000000000);
    v16 = sub_21DBFA12C();

    [v15 setText_];

    sub_21D0D3954(v1 + v2, &v28, &unk_27CE5FAD0);
    *&v27[10] = *&v29[10];
    v26 = v28;
    *v27 = *v29;
    if (v29[25])
    {
      if (v29[25] == 1)
      {
        v30 = v28;
        v31 = *v29;
        v32 = *&v29[16];
        v17 = *&v29[8];
        if (!*&v29[8])
        {
          goto LABEL_22;
        }

LABEL_20:
        v19 = v32;
        v20 = __swift_project_boxed_opaque_existential_1(&v30, v17);
        v21 = *(v17 - 8);
        v22 = MEMORY[0x28223BE20](v20);
        v24 = &v27[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
        (*(v21 + 16))(v24, v22);
        sub_21D0CF7E0(&v30, &unk_27CE5FAE0);
        v25 = (*(v19 + 200))(v17, v19);
        (*(v21 + 8))(v24, v17);
LABEL_23:
        [v15 setTextColor_];

        return;
      }

      v32 = 0;
      v30 = 0u;
      v31 = 0u;
    }

    else
    {
      sub_21D0D0FD0(&v26, &v30);
      v17 = *(&v31 + 1);
      if (*(&v31 + 1))
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    sub_21D0CF7E0(&v30, &unk_27CE5FAE0);
    v25 = 0;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_21D6970B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E520);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v16[-v5];
  v7 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(v0 + v7, &v19, &unk_27CE5FAD0);
  *&v18[10] = *&v20[10];
  v17 = v19;
  *v18 = *v20;
  if (v20[25])
  {
    if (v20[25] == 1)
    {
      v21 = v19;
      v22 = *v20;
      v23 = *&v20[16];
    }

    else
    {
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
    }
  }

  else
  {
    sub_21D0D0FD0(&v17, &v21);
  }

  sub_21D0D3954(&v21, &v19, &unk_27CE5FAE0);
  if (*&v20[8])
  {
    sub_21D0D0FD0(&v19, &v17);
    sub_21D69AA50(&v17, v6);
    __swift_destroy_boxed_opaque_existential_0(&v17);
    sub_21D0CF7E0(&v21, &unk_27CE5FAE0);
    v8 = type metadata accessor for TTRReminderCellTitleViewModel();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  else
  {
    sub_21D0CF7E0(&v21, &unk_27CE5FAE0);
    v9 = type metadata accessor for TTRReminderCellTitleViewModel();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  v10 = (v0 + qword_280D132A8);
  swift_beginAccess();
  if (*v10)
  {
    v11 = v10[1];
    swift_endAccess();
    ObjectType = swift_getObjectType();
    sub_21D0D3954(v6, v3, &qword_27CE5E520);
    v13 = *(v11 + 8);
    v14 = *(v13 + 16);
    swift_unknownObjectRetain();
    v14(v3, ObjectType, v13);
    swift_unknownObjectRelease();
    return sub_21D0CF7E0(v6, &qword_27CE5E520);
  }

  else
  {
    sub_21D0CF7E0(v6, &qword_27CE5E520);
    return swift_endAccess();
  }
}

void sub_21D6973B8(void *a1, void **a2, int a3)
{
  v4 = v3;
  v118 = a3;
  v115 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v110 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  MEMORY[0x28223BE20](v113);
  v116 = &v98 - v8;
  v123 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v112 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v98 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v13 - 8);
  v119 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v98 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v18 - 8);
  v111 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v117 = &v98 - v21;
  MEMORY[0x28223BE20](v22);
  v121 = &v98 - v23;
  v24 = *a2;
  v25 = a2[1];
  v120 = a2[2];
  v26 = *(v4 + qword_280D132A0);
  v27 = sub_21D62A934(2);
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = sub_21D62ACD0();
  }

  v30 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(v4 + v30, &v127, &unk_27CE5FAD0);
  *&v126[10] = *&v128[10];
  v125 = v127;
  *v126 = *v128;
  if (!v128[25])
  {
    sub_21D0D0FD0(&v125, &v129);
    if (*(&v130 + 1))
    {
      goto LABEL_9;
    }

LABEL_14:
    v45 = v28;
    sub_21D0CF7E0(&v129, &unk_27CE5FAE0);
    goto LABEL_42;
  }

  if (v128[25] != 1)
  {
    v131 = 0;
    v129 = 0u;
    v130 = 0u;
    goto LABEL_14;
  }

  v129 = v127;
  v130 = *v128;
  v131 = *&v128[16];
  if (!*&v128[8])
  {
    goto LABEL_14;
  }

LABEL_9:
  v109 = a1;
  sub_21D0D0FD0(&v129, &v127);
  v31 = (v4 + qword_280D13290);
  swift_beginAccess();
  v32 = *v31;
  if (!*v31)
  {
    v46 = v28;
    __swift_destroy_boxed_opaque_existential_0(&v127);
    goto LABEL_42;
  }

  v103 = v25;
  v104 = v24;
  v105 = v26;
  v107 = v4;
  v33 = v31[1];
  v34 = *&v128[8];
  v35 = *&v128[16];
  __swift_project_boxed_opaque_existential_1(&v127, *&v128[8]);
  v36 = v28;
  v37 = *(v35 + 272);
  v108 = v36;
  v101 = v36;
  swift_unknownObjectRetain();
  v37(&v125, v34, v35);
  v100 = v125;
  v38 = *(&v125 + 1);
  v102 = *v126;
  ObjectType = swift_getObjectType();
  v40 = *(v33 + 160);
  v106 = v29;
  *&v124 = ObjectType;
  v40(v29);
  if (v118)
  {
    (*(v33 + 16))(v124, v33);
    v41 = (*(v122 + 48))(v17, 1, v123);
    v99 = v38;
    v98 = v32;
    if (v41)
    {
      sub_21D0CF7E0(v17, &unk_27CE5CD80);
      v42 = 1;
      v43 = v114;
      v44 = v121;
    }

    else
    {
      sub_21D6A4234(v17, v12, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21D0CF7E0(v17, &unk_27CE5CD80);
      v44 = v121;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v121);
      sub_21D6A429C(v12, type metadata accessor for TTRRemindersListViewModel.Item);
      v42 = 0;
      v43 = v114;
    }

    v48 = *(v43 + 56);
    v49 = v115;
    v48(v44, v42, 1, v115);
    v50 = *&v128[8];
    v51 = *&v128[16];
    __swift_project_boxed_opaque_existential_1(&v127, *&v128[8]);
    v52 = v112;
    (*(v51 + 8))(v50, v51);
    v53 = v117;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v117);
    v54 = v52;
    v55 = v121;
    sub_21D6A429C(v54, type metadata accessor for TTRRemindersListViewModel.Item);
    v48(v53, 0, 1, v49);
    v56 = *(v113 + 48);
    v57 = v116;
    sub_21D0D3954(v55, v116, &qword_27CE5FB90);
    v58 = v49;
    sub_21D0D3954(v53, v57 + v56, &qword_27CE5FB90);
    v59 = *(v43 + 48);
    if (v59(v57, 1, v49) == 1)
    {
      sub_21D0CF7E0(v53, &qword_27CE5FB90);
      sub_21D0CF7E0(v55, &qword_27CE5FB90);
      v60 = v59(v57 + v56, 1, v49);
      v28 = v108;
      if (v60 == 1)
      {
        sub_21D0CF7E0(v57, &qword_27CE5FB90);
        v47 = 1;
LABEL_25:
        v38 = v99;
        goto LABEL_26;
      }
    }

    else
    {
      v61 = v111;
      sub_21D0D3954(v57, v111, &qword_27CE5FB90);
      if (v59(v57 + v56, 1, v58) != 1)
      {
        v62 = v110;
        sub_21D6A41CC(v57 + v56, v110, type metadata accessor for TTRRemindersListViewModel.ItemID);
        v47 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v61, v62);
        sub_21D6A429C(v62, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D0CF7E0(v117, &qword_27CE5FB90);
        sub_21D0CF7E0(v121, &qword_27CE5FB90);
        sub_21D6A429C(v61, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21D0CF7E0(v57, &qword_27CE5FB90);
        v28 = v108;
        goto LABEL_25;
      }

      sub_21D0CF7E0(v117, &qword_27CE5FB90);
      sub_21D0CF7E0(v121, &qword_27CE5FB90);
      sub_21D6A429C(v61, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v28 = v108;
    }

    sub_21D0CF7E0(v57, &qword_27CE5F2E0);
    v47 = 0;
    goto LABEL_25;
  }

  v47 = 0;
  v28 = v108;
LABEL_26:
  v63 = *&v128[8];
  v64 = *&v128[16];
  __swift_project_boxed_opaque_existential_1(&v127, *&v128[8]);
  v65 = v119;
  (*(v64 + 8))(v63, v64);
  (*(v122 + 56))(v65, 0, 1, v123);
  (*(v33 + 24))(v65, v124, v33);
  if (v47)
  {
  }

  else
  {
    *&v125 = v100;
    *(&v125 + 1) = v38;
    *v126 = v102;
    (*(v33 + 48))(&v125, v124, v33);
  }

  v4 = v107;
  v66 = *(v33 + 72);
  v67 = v109;
  v68 = v109;
  v69 = v124;
  v66(v67, v124, v33);
  v70 = *&v128[8];
  v71 = *&v128[16];
  __swift_project_boxed_opaque_existential_1(&v127, *&v128[8]);
  (*(v71 + 16))(&v125, v70, v71);
  v72 = BYTE2(v125);

  (*(v33 + 184))(v72, v69, v33);
  if (v28 && (v73 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView, v74 = v101, swift_beginAccess(), (v75 = *&v74[v73]) != 0) && ([v75 isEditing] & 1) != 0)
  {
    v76 = 0;
  }

  else
  {
    v77 = *&v128[8];
    v78 = *&v128[16];
    __swift_project_boxed_opaque_existential_1(&v127, *&v128[8]);
    (*(v78 + 272))(&v125, v77, v78);
    if (v125 == 1)
    {
      if (*v126 >> 62)
      {
        v79 = sub_21DBFBD7C();
      }

      else
      {
        v79 = *((*v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v76 = v79 == 0;
    }

    else
    {

      v76 = 1;
    }
  }

  v80 = v104;
  (*(v33 + 176))(v76, v124, v33);
  if (v80)
  {
    v81 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v82 = sub_21D6A41C4;
    v83 = v103;
    v84 = v103;
    v85 = v120;
    v86 = v120;
  }

  else
  {
    v84 = 0;
    v86 = 0;
    v82 = 0;
    v81 = 0;
    v83 = v103;
    v85 = v120;
  }

  *&v125 = v80;
  *(&v125 + 1) = v84;
  *v126 = v86;
  *&v126[8] = v82;
  *&v126[16] = v81;
  v87 = v80;
  v88 = *(v33 + 120);
  sub_21D639788(v87, v83, v85);
  v88(&v125, v124, v33);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(&v127);
  v29 = v106;
  v26 = v105;
LABEL_42:
  v124 = *(v4 + qword_280D13298);
  if (*(v26 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_47;
  }

  if (qword_280D0F140 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v89 = sub_21DBF84BC();
    __swift_project_value_buffer(v89, qword_280D0F148);
    v90 = sub_21DBF84AC();
    v91 = sub_21DBFAECC();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_21D0C9000, v90, v91, "makeVisible called outside of performSubviewUpdates", v92, 2u);
      MEMORY[0x223D46520](v92, -1, -1);
    }

LABEL_47:
    v93 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
    swift_beginAccess();
    v94 = *(v26 + v93);
    v95 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + v93) = v94;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v94 = sub_21D256D30(v94);
      *(v26 + v93) = v94;
    }

    if (v94[2] >= 3uLL)
    {
      break;
    }

    __break(1u);
LABEL_52:
    swift_once();
  }

  v97 = v94[12];
  v94[12] = v95;
  v94[13] = 0;
  *(v94 + 7) = v124;
  *(v26 + v93) = v94;
  swift_endAccess();
  sub_21D157878(v97);
}

void sub_21D698250()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + qword_280D131E0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 40))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

_BYTE *sub_21D698310(_BYTE *result, char a2, char a3)
{
  if (*result <= 1u)
  {
    if (!*result)
    {
      return result;
    }

    sub_21D68E520(1);
    sub_21D6961EC();
    if (a3)
    {
      sub_21D6951F8();
    }

    v6 = qword_280D13268;
    swift_beginAccess();
    sub_21D0D3954(v3 + v6, &v19, &unk_27CE5FAD0);
    *&v18[10] = *&v20[10];
    v17 = v19;
    *v18 = *v20;
    if (!v20[25])
    {
      sub_21D0D0FD0(&v17, &v21);
      if (!*(&v22 + 1))
      {
        return sub_21D0CF7E0(&v21, &unk_27CE5FAE0);
      }

LABEL_21:
      v10 = sub_21D0D0FD0(&v21, v24);
      MEMORY[0x28223BE20](v10);
      v14 = v3;
      v15 = v24;
      v16 = a2 & 1;
      v11 = sub_21D6A414C;
LABEL_24:
      sub_21D6A444C(v11, &v13);
      return __swift_destroy_boxed_opaque_existential_0(v24);
    }

    if (v20[25] == 1)
    {
      v21 = v19;
      v22 = *v20;
      v23 = *&v20[16];
      if (!*&v20[8])
      {
        return sub_21D0CF7E0(&v21, &unk_27CE5FAE0);
      }

      goto LABEL_21;
    }

    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    return sub_21D0CF7E0(&v21, &unk_27CE5FAE0);
  }

  if (*result == 2)
  {
    return result;
  }

  sub_21D68E520(1);
  sub_21D6961EC();
  if (a3)
  {
    sub_21D6951F8();
    sub_21D698618(0, 0, MEMORY[0x277D84F90]);
    v8 = qword_280D13268;
    swift_beginAccess();
    sub_21D0D3954(v3 + v8, &v19, &unk_27CE5FAD0);
    *&v18[10] = *&v20[10];
    v17 = v19;
    *v18 = *v20;
    if (v20[25])
    {
      if (v20[25] != 1)
      {
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        return sub_21D0CF7E0(&v21, &unk_27CE5FAE0);
      }

      v21 = v19;
      v22 = *v20;
      v23 = *&v20[16];
      if (!*&v20[8])
      {
        return sub_21D0CF7E0(&v21, &unk_27CE5FAE0);
      }
    }

    else
    {
      sub_21D0D0FD0(&v17, &v21);
      if (!*(&v22 + 1))
      {
        return sub_21D0CF7E0(&v21, &unk_27CE5FAE0);
      }
    }

    v12 = sub_21D0D0FD0(&v21, v24);
    MEMORY[0x28223BE20](v12);
    v14 = v3;
    v15 = v24;
    v16 = a2 & 1;
    v11 = sub_21D6A4120;
    goto LABEL_24;
  }

  v9 = MEMORY[0x277D84F90];

  return sub_21D698618(0, 0, v9);
}

unint64_t sub_21D698618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v9 = [objc_opt_self() daemonUserDefaults];
    v10 = [v9 enableAutoCompleteReminders];

    if (v10)
    {
      v11 = *&v4[qword_280D13220];
      if (v11)
      {
        v12 = *&v4[qword_280D13220 + 8];
        v13 = *&v4[qword_280D13220];
      }

      else
      {
        v13 = sub_21D699BA8(v4);
        v11 = 0;
        v12 = v22;
      }

      sub_21D639460(v11);
      v23 = [v12 setHidden_];
      MEMORY[0x28223BE20](v23);
      v25[2] = a3;
      v25[3] = v13;
      v25[4] = v4;
      v25[5] = a1;
      v25[6] = a2;
      TTRIRemindersListCellAutoCompleteSuggestionsStackView.performSubviewUpdates(block:)(sub_21D6A4110, v25);
      sub_21D5D3E40(a3);
      swift_unknownObjectRelease();

      goto LABEL_19;
    }
  }

  v14 = &v4[qword_280D13220];
  if (*&v4[qword_280D13220])
  {
    [v14[1] setHidden_];
    if (*v14)
    {
      v15 = *v14;
      result = sub_21D6AC05C();
      v17 = result;
      if (result >> 62)
      {
        result = sub_21DBFBD7C();
        v18 = result;
        if (result)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v18 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
LABEL_9:
          if (v18 < 1)
          {
            __break(1u);
            return result;
          }

          for (i = 0; i != v18; ++i)
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x223D44740](i, v17);
            }

            else
            {
              v20 = *(v17 + 8 * i + 32);
            }

            v21 = v20;
            [*&v20[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_backgroundHighlight] setHidden_];
          }
        }
      }
    }
  }

LABEL_19:
  v4[qword_280D131F0] = v5 != 0;
  v24 = qword_280D131F8;
  swift_beginAccess();
  if (v5 || v4[v24])
  {
    return [v4 setSeparatorInset_];
  }

  else
  {
    return [v4 setSeparatorInset_];
  }
}

void sub_21D6988D0(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v163) = a2;
  v5 = type metadata accessor for TTRIReminderCellNotesViewModel();
  v168 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v8 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v151 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  MEMORY[0x28223BE20](v156);
  v157 = &v144 - v10;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v11 - 8);
  v155 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v152 = &v144 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F300);
  MEMORY[0x28223BE20](v15 - 8);
  v164 = &v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v154 = &v144 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v19 - 8);
  v153 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v162 = &v144 - v22;
  MEMORY[0x28223BE20](v23);
  v165 = &v144 - v24;
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  (*(v26 + 312))(v25, v26);
  v158 = v8;
  if (v27)
  {
    v28 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v29 = sub_21DBFA12C();
    v173 = [v28 initWithString_];
  }

  else
  {
    v30 = a1[3];
    v31 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v30);
    v173 = (*(v31 + 112))(v30, v31);
  }

  v32 = *(v2 + qword_280D132A0);
  v33 = sub_21D62A94C(1);
  v34 = v3 + qword_280D132B0;
  swift_beginAccess();
  v169 = v34;
  sub_21D0D3954(v34, &v176, &unk_27CE62920);
  v35 = v176;
  sub_21D0CF7E0(&v176, &unk_27CE62920);
  if (!v35)
  {
    if (!v33)
    {
LABEL_14:
      sub_21D6A46B0(1u);

      goto LABEL_57;
    }

    v171 = v33;
LABEL_13:
    v33 = v171;
    [v171 setAttributedText_];
    goto LABEL_14;
  }

  v171 = v33;
  *&v170 = a1;
  if ([*(v3 + qword_280D13278) isEditing])
  {
    goto LABEL_21;
  }

  v36 = sub_21D62EA00(2u);
  if (!v36)
  {
LABEL_9:
    if (!v173)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v37 = v36;
  v38 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
  swift_beginAccess();
  v39 = *&v37[v38];
  if (v39)
  {
    v40 = v39;
    v41 = [v40 isEditing];

    if (v41)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  if (!v173)
  {
LABEL_19:
    v33 = v171;
    if (!v171)
    {
      goto LABEL_14;
    }

    if ([v171 isEditing])
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

LABEL_16:
  v42 = [v173 string];
  v43 = sub_21DBFA16C();
  v45 = v44;

  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v46)
  {
    goto LABEL_19;
  }

LABEL_21:
  v146 = v7;
  v147 = v5;
  v166 = v32;
  v167 = v3;
  if (UIAccessibilityIsBoldTextEnabled())
  {
    v47 = 9;
  }

  else
  {
    v47 = 6;
  }

  if (qword_280D176B8 != -1)
  {
    v143 = v47;
    swift_once();
    v47 = v143;
  }

  v48 = sub_21D900614(v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530);
  inited = swift_initStackObject();
  v50 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v51 = MEMORY[0x277D740C0];
  *(inited + 16) = xmmword_21DC08D20;
  v52 = *v51;
  *(inited + 40) = v48;
  *(inited + 48) = v52;
  v53 = objc_opt_self();
  v54 = v52;
  v55 = v50;
  v149 = v54;
  v56 = v55;
  v161 = v48;
  *(inited + 56) = [v53 secondaryLabelColor];
  v57 = sub_21D177570(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F310);
  swift_arrayDestroy();
  v58 = swift_initStackObject();
  v172 = xmmword_21DC08D00;
  *(v58 + 16) = xmmword_21DC08D00;
  *(v58 + 32) = v56;
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  *(v58 + 40) = sub_21D900614(7);
  v59 = sub_21D177570(v58);
  swift_setDeallocating();
  sub_21D0CF7E0(v58 + 32, &unk_27CE5F310);
  v60 = *(v170 + 24);
  v61 = *(v170 + 32);
  __swift_project_boxed_opaque_existential_1(v170, v60);
  v62 = *(v61 + 272);
  v160 = v57;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v62(&v176, v60, v61);
  v150 = v177;

  v63 = swift_initStackObject();
  *(v63 + 16) = v172;
  v64 = v149;
  *(v63 + 32) = v149;
  v65 = v64;
  *(v63 + 40) = [v53 secondaryLabelColor];
  v149 = sub_21D177570(v63);
  swift_setDeallocating();
  sub_21D0CF7E0(v63 + 32, &unk_27CE5F310);
  v66 = swift_initStackObject();
  *(v66 + 16) = v172;
  *(v66 + 32) = v65;
  v67 = v65;
  *(v66 + 40) = [v53 secondaryLabelColor];
  v148 = sub_21D177570(v66);
  swift_setDeallocating();
  sub_21D0CF7E0(v66 + 32, &unk_27CE5F310);
  v68 = swift_initStackObject();
  *(v68 + 16) = v172;
  *(v68 + 32) = v67;
  *(v68 + 40) = [v53 linkColor];
  v69 = sub_21D177570(v68);
  swift_setDeallocating();
  sub_21D0CF7E0(v68 + 32, &unk_27CE5F310);
  v70 = swift_initStackObject();
  *(v70 + 16) = v172;
  *(v70 + 32) = v67;
  *(v70 + 40) = [v53 magentaColor];
  v71 = sub_21D177570(v70);
  swift_setDeallocating();
  sub_21D0CF7E0(v70 + 32, &unk_27CE5F310);
  v72 = type metadata accessor for TTRReminderTextStorage();
  v73 = objc_allocWithZone(v72);
  v74 = v160;
  *&v73[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_baseTextStyles] = v160;
  v75 = v148;
  *&v73[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_uncommittedHashtagTextStyles] = v149;
  v76 = v59;
  *&v73[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_committedHashtagTextStyles] = v59;
  *&v73[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_foreignHashtagTextStyles] = v75;
  *&v73[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_harvestedResultTextStyles] = v69;
  *&v73[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility] = v150;
  *&v73[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_nonEditableTextStyles] = v71;
  v73[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_highlightNonEditableTexts] = 0;
  v73[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_showsAsTransparent] = 0;
  v175.receiver = v73;
  v175.super_class = v72;
  v77 = objc_msgSendSuper2(&v175, sel_init);
  v78 = v173;
  if (v173)
  {
    v79 = v173;
    v81 = v166;
    v80 = v167;
    v82 = 0x277CCA000;
  }

  else
  {
    v82 = 0x277CCA000uLL;
    v79 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    v78 = 0;
    v81 = v166;
    v80 = v167;
  }

  v150 = v78;
  [v77 insertAttributedString:v79 atIndex:0];

  v173 = [objc_allocWithZone(*(v82 + 2200)) initWithAttributedString_];
  v83 = v170;
  v84 = v171;
  if (v171)
  {
    v85 = v171;
  }

  else
  {
    v85 = sub_21D69ACCC(v80, v161);
    v84 = 0;
  }

  v171 = v84;
  v86 = v85;
  sub_21D69B030(v86);
  v87 = *v169;
  *&v172 = v77;
  if (v87)
  {
    v88 = v169[1];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v90 = *(v88 + 64);
    v148 = v88;
    v149 = v87;
    v145 = ObjectType;
    v90(v86);
    v169 = v86;
    if (v163)
    {
      v91 = v154;
      (*(v148 + 8))(v145);
      if ((*(v168 + 48))(v91, 1, v147))
      {
        sub_21D0CF7E0(v91, &unk_27CE5F300);
        v92 = 1;
        v94 = v158;
        v93 = v159;
        v95 = v165;
      }

      else
      {
        v99 = v152;
        sub_21D6A4234(v91, v152, type metadata accessor for TTRRemindersListViewModel.Item);
        sub_21D0CF7E0(v91, &unk_27CE5F300);
        v95 = v165;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v165);
        sub_21D6A429C(v99, type metadata accessor for TTRRemindersListViewModel.Item);
        v92 = 0;
        v94 = v158;
        v93 = v159;
      }

      v163 = *(v94 + 56);
      v163(v95, v92, 1, v93);
      v100 = v83[3];
      v101 = v83[4];
      __swift_project_boxed_opaque_existential_1(v83, v100);
      v102 = v155;
      (*(v101 + 8))(v100, v101);
      v103 = v162;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v162);
      sub_21D6A429C(v102, type metadata accessor for TTRRemindersListViewModel.Item);
      v163(v103, 0, 1, v93);
      v104 = *(v156 + 48);
      v105 = v95;
      v106 = v93;
      v107 = v157;
      sub_21D0D3954(v105, v157, &qword_27CE5FB90);
      sub_21D0D3954(v103, v107 + v104, &qword_27CE5FB90);
      v108 = *(v94 + 48);
      if (v108(v107, 1, v106) == 1)
      {
        sub_21D0CF7E0(v103, &qword_27CE5FB90);
        sub_21D0CF7E0(v165, &qword_27CE5FB90);
        v109 = v108(v107 + v104, 1, v106);
        v74 = v160;
        if (v109 == 1)
        {
          sub_21D0CF7E0(v107, &qword_27CE5FB90);
          v86 = v169;
LABEL_59:
          v113 = [v86 attributedText];

          goto LABEL_47;
        }

        goto LABEL_45;
      }

      v110 = v153;
      sub_21D0D3954(v107, v153, &qword_27CE5FB90);
      v111 = v104;
      v112 = v108(v107 + v104, 1, v106);
      v74 = v160;
      if (v112 == 1)
      {
        sub_21D0CF7E0(v162, &qword_27CE5FB90);
        sub_21D0CF7E0(v165, &qword_27CE5FB90);
        sub_21D6A429C(v110, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_45:
        sub_21D0CF7E0(v107, &qword_27CE5F2E0);
        v86 = v169;
        goto LABEL_46;
      }

      v140 = v151;
      sub_21D6A41CC(v107 + v111, v151, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v141 = v110;
      v142 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v110, v140);
      sub_21D6A429C(v140, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v162, &qword_27CE5FB90);
      sub_21D0CF7E0(v165, &qword_27CE5FB90);
      sub_21D6A429C(v141, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v107, &qword_27CE5FB90);
      v86 = v169;
      if (v142)
      {
        goto LABEL_59;
      }
    }

LABEL_46:

    v113 = v173;
LABEL_47:
    v114 = v83[3];
    v115 = v83[4];
    __swift_project_boxed_opaque_existential_1(v83, v114);
    v116 = v146;
    (*(v115 + 8))(v114, v115);
    v117 = v83[3];
    v118 = v83[4];
    __swift_project_boxed_opaque_existential_1(v83, v117);
    (*(v118 + 16))(&v176, v117, v118);
    v119 = BYTE2(v176);

    v120 = v83[3];
    v121 = v83[4];
    __swift_project_boxed_opaque_existential_1(v83, v120);
    (*(v121 + 272))(v174, v120, v121);
    v122 = v83;
    v123 = v174[1];

    v124 = v122[3];
    v125 = v122[4];
    __swift_project_boxed_opaque_existential_1(v122, v124);
    v126 = (*(v125 + 280))(v124, v125);
    v127 = v147;
    v129 = v147[6];
    v128 = v147[7];
    *(v116 + v147[5]) = v119;
    *(v116 + v129) = v113;
    *(v116 + v128) = v74;
    *(v116 + v127[8]) = v123;
    *(v116 + v127[9]) = v126 & 1;
    v130 = v164;
    sub_21D6A4234(v116, v164, type metadata accessor for TTRIReminderCellNotesViewModel);
    (*(v168 + 56))(v130, 0, 1, v127);
    (*(v148 + 16))(v130, v145);
    swift_unknownObjectRelease();
    sub_21D6A429C(v116, type metadata accessor for TTRIReminderCellNotesViewModel);
    v81 = v166;
    v80 = v167;
    v86 = v169;
    goto LABEL_48;
  }

  v96 = v83[3];
  v97 = v83[4];
  __swift_project_boxed_opaque_existential_1(v83, v96);
  (*(v97 + 272))(&v176, v96, v97);
  v98 = v177;

  v174[0] = v98;
  sub_21D6C3690(v173, v74, v76, v174);

  sub_21D69B030(v86);
LABEL_48:
  v170 = *(v80 + qword_280D13298);
  if (*(v81 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_53;
  }

  if (qword_280D0F140 != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v131 = sub_21DBF84BC();
    __swift_project_value_buffer(v131, qword_280D0F148);
    v132 = sub_21DBF84AC();
    v133 = sub_21DBFAECC();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&dword_21D0C9000, v132, v133, "makeVisible called outside of performSubviewUpdates", v134, 2u);
      MEMORY[0x223D46520](v134, -1, -1);
    }

LABEL_53:
    v135 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
    swift_beginAccess();
    v136 = *(v81 + v135);
    v137 = v86;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v81 + v135) = v136;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v136 = sub_21D256D30(v136);
      *(v81 + v135) = v136;
    }

    if (v136[2] >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_61:
    swift_once();
  }

  v139 = v136[8];
  v136[8] = v137;
  v136[9] = 0;
  *(v136 + 5) = v170;
  *(v81 + v135) = v136;
  swift_endAccess();
  sub_21D157878(v139);

  v33 = v150;
LABEL_57:
}

char *sub_21D699BA8(uint64_t a1)
{
  v16 = 0;
  v2 = objc_allocWithZone(type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView());
  v3 = TTRIRemindersListCellAutoCompleteSuggestionsStackView.init(listLayout:)(&v16);
  [v3 setDebugBoundingBoxesEnabled_];
  v4 = *(a1 + qword_280D13DD0);
  v5 = [v4 numberOfColumns];
  v6 = v3;
  v7 = sub_21D4422C0(v6, v5);

  v8 = [v4 numberOfRows];
  if (v7 >> 62)
  {
    sub_21D0D8CF0(0, &qword_280D176A0);
    sub_21DBF8E0C();
    sub_21DBFC33C();
  }

  else
  {
    sub_21DBF8E0C();
    sub_21DBFC65C();
    sub_21D0D8CF0(0, &qword_280D176A0);
  }

  sub_21D0D8CF0(0, &qword_280D176A0);
  v9 = sub_21DBFA5DC();

  v10 = [v4 addRowWithArrangedSubviews_];
  swift_unknownObjectRelease();

  v11 = [v4 rowAtIndex_];
  v12 = (a1 + qword_280D13220);
  v13 = *(a1 + qword_280D13220);
  *v12 = v6;
  v12[1] = v11;
  v14 = v6;
  swift_unknownObjectRetain();
  sub_21D5C5F74(v13);
  return v14;
}

void sub_21D699DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v8 = *(a1 + 16);
  v29 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_isPerformingSubviewUpdates;
  v30 = qword_280D13278;
  v35 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_subviewUpdates;
  v9 = a1 + 32;
  v28 = OBJC_IVAR____TtC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView_listLayout;
  v10 = 7;
  while (v7 >= v8)
  {
    TTRIRemindersListCellAutoCompleteSuggestionsStackView.makeHidden(at:)(v7);
LABEL_3:
    v10 += 4;
    v9 += 192;
    ++v7;
    if (v10 == 19)
    {
      return;
    }
  }

  v34 = v9;
  sub_21D1D9BE4(v9, v42);
  v11 = sub_21D68D3D0(v7);
  [*(a3 + v30) frame];
  MinX = CGRectGetMinX(v43);
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v14 = *(a2 + v28);
    v15 = objc_allocWithZone(type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView.Row());
    if (v14)
    {
      v16 = 16.0;
    }

    else
    {
      v16 = 0.0;
    }

    v13 = sub_21D6ACE54(v16);
    swift_unknownObjectWeakAssign();
    v17 = &v13[OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_suggestionDelegate];
    swift_beginAccess();
    *(v17 + 1) = &protocol witness table for TTRIRemindersListReminderCell;
    swift_unknownObjectWeakAssign();
    v11 = 0;
  }

  sub_21D1D9BE4(v42, v37);
  v38 = a4;
  v39 = a5;
  v40 = v8 - 1 == v7;
  v41 = MinX;
  sub_21D6394B8(v37, v36);
  v18 = OBJC_IVAR____TtCC15RemindersUICore53TTRIRemindersListCellAutoCompleteSuggestionsStackView3Row_configuration;
  swift_beginAccess();
  v33 = v11;
  sub_21DBF8E0C();
  sub_21D0EB8DC(v36, &v13[v18], &qword_27CE5F290);
  swift_endAccess();
  sub_21D6ACB60();
  sub_21D0CF7E0(v36, &qword_27CE5F290);
  if ((*(a2 + v29) & 1) == 0)
  {
    if (qword_27CE56B90 != -1)
    {
      swift_once();
    }

    v19 = sub_21DBF84BC();
    __swift_project_value_buffer(v19, qword_27CE5FD40);
    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAECC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_21D0C9000, v20, v21, "makeVisible called outside of performSubviewUpdates", v22, 2u);
      MEMORY[0x223D46520](v22, -1, -1);
    }
  }

  swift_beginAccess();
  v23 = *(a2 + v35);
  v24 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v35) = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_21D256D44(v23);
    *(a2 + v35) = v23;
  }

  if (v7 < v23[2])
  {
    v26 = &v23[v10];
    v27 = v23[v10 - 3];
    *(v26 - 3) = v24;
    *(v26 - 2) = 0;
    *(v26 - 1) = 0;
    *v26 = 0;
    *(a2 + v35) = v23;
    swift_endAccess();
    sub_21D157878(v27);

    sub_21D639514(v37);
    sub_21D1D9C40(v42);
    v9 = v34;
    goto LABEL_3;
  }

  __break(1u);
}

void sub_21D69A180(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v61 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - v11;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 288))(v68, v13, v14);
  if (v68[1] < 2uLL)
  {
    goto LABEL_4;
  }

  v15 = v68[0];
  v17 = v68[2];
  v16 = v68[3];
  if ([*&v2[qword_280D13278] isEditing] & 1) != 0 || objc_msgSend(v2, sel_isEditing) && (objc_msgSend(v2, sel_currentStateMask))
  {

LABEL_4:
    sub_21D6A46B0(0xAu);
    return;
  }

  if (v16)
  {

    v15 = v17;
  }

  *&v67 = *&v2[qword_280D132A0];
  v18 = sub_21D62A964(10);
  if (!v18)
  {
    v18 = sub_21D69B2E0(v2);
  }

  v65 = v15;
  v66 = v18;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v62 = sub_21DBF516C();
  v63 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  inited = swift_initStackObject();
  v61 = xmmword_21DC08D00;
  *(inited + 16) = xmmword_21DC08D00;
  v21 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v22 = qword_280D176B8;
  v23 = v21;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = sub_21D900614(1);
  *(inited + 64) = sub_21D0D8CF0(0, &qword_280D176B0);
  *(inited + 40) = v24;
  v64 = sub_21D11274C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &unk_27CE5F2C0);
  v25 = swift_initStackObject();
  v26 = *MEMORY[0x277CCA298];
  *(v25 + 32) = *MEMORY[0x277CCA298];
  *(v25 + 16) = v61;
  *(v25 + 64) = MEMORY[0x277D83E88];
  *(v25 + 40) = 2;
  v27 = v26;
  sub_21D11274C(v25);
  swift_setDeallocating();
  sub_21D0CF7E0(v25 + 32, &unk_27CE5F2C0);
  v28 = objc_allocWithZone(MEMORY[0x277CCAB68]);
  v29 = sub_21DBFA12C();

  v30 = [v28 initWithString_];

  v31 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v32 = sub_21DBFA12C();

  type metadata accessor for Key(0);
  v34 = v33;
  sub_21D6A417C(&qword_280D17790, type metadata accessor for Key);
  v63 = v34;
  v35 = sub_21DBF9E5C();

  v65 = [v31 initWithString:v32 attributes:v35];

  v36 = v30;
  v37 = sub_21DBFA12C();
  v38 = [v36 rangeOfString_];
  v40 = v39;

  if (v38 == sub_21DBF4B4C())
  {

    v41 = v67;
    v42 = v65;
  }

  else
  {
    v43 = sub_21DBFA12C();
    [v36 replaceCharactersInRange:v38 withString:{v40, v43}];

    v44 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v45 = sub_21DBF9E5C();

    v46 = [v44 initWithString:v36 attributes:v45];

    v47 = v65;
    [v46 insertAttributedString:v65 atIndex:v38];

    v42 = v46;
    v41 = v67;
  }

  v48 = v66;
  sub_21DBFB97C();
  v49 = sub_21DBFB95C();
  if ((*(*(v49 - 8) + 48))(v12, 1, v49))
  {
    sub_21D0D3954(v12, v9, &unk_27CE5F2F0);
    sub_21DBFB98C();
    sub_21D0CF7E0(v12, &unk_27CE5F2F0);
  }

  else
  {
    v50 = v42;
    sub_21DBF515C();
    v51 = sub_21DBF514C();
    (*(*(v51 - 8) + 56))(v6, 0, 1, v51);
    sub_21DBFB86C();
    sub_21DBFB98C();
  }

  v67 = *&v2[qword_280D13298];
  if (*(v41 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_26;
  }

  if (qword_280D0F140 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v52 = sub_21DBF84BC();
    __swift_project_value_buffer(v52, qword_280D0F148);
    v53 = sub_21DBF84AC();
    v54 = sub_21DBFAECC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_21D0C9000, v53, v54, "makeVisible called outside of performSubviewUpdates", v55, 2u);
      MEMORY[0x223D46520](v55, -1, -1);
    }

LABEL_26:
    v56 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
    swift_beginAccess();
    v57 = *(v41 + v56);
    v58 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v41 + v56) = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v57 = sub_21D256D30(v57);
      *(v41 + v56) = v57;
    }

    if (v57[2] >= 0xBuLL)
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v60 = v57[44];
  v57[44] = v58;
  v57[45] = 1;
  *(v57 + 23) = v67;
  *(v41 + v56) = v57;
  swift_endAccess();
  sub_21D157878(v60);
}

int *sub_21D69AA50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 8))(v4, v5);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 16))(&v32, v6, v7);
  v30 = BYTE2(v32);

  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v29 = (*(v9 + 32))(v8, v9);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 40))(v10, v11);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 160))(v13, v14);
  v17 = v16;
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  (*(v18 + 272))(v31, v19, v18);
  v20 = v31[1];

  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = (*(v22 + 216))(v21, v22);
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v24 = sub_21D900614(1);
  result = type metadata accessor for TTRReminderCellTitleViewModel();
  v26 = result[7];
  v27 = result[9];
  *(a2 + result[5]) = v30;
  *(a2 + v26) = v29;
  *(a2 + result[6]) = v24;
  v28 = a2 + v27;
  *(a2 + result[8]) = v12 & 1;
  *v28 = v15;
  *(v28 + 8) = v17 & 1;
  *(a2 + result[10]) = v20;
  *(a2 + result[11]) = v23;
  *(a2 + result[12]) = 0;
  return result;
}

id sub_21D69ACCC(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for TTRIWhitespaceSelectionAvoidingTextView());
  v22 = 0;
  v5 = TTRIReminderTitleTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:hashtagTokenEditingBehavior:usesLegacyTextKit1:)(1, 8, 0, &v22, 0);
  sub_21D62DE5C(v5);
  v6 = [v5 textDragInteraction];
  if (v6)
  {
    v7 = v6;
    [v6 setEnabled_];
    [v5 removeInteraction_];
  }

  [v5 setTextDropDelegate_];
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  v9 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 placeholderTextColor];
  v13 = sub_21D0D8CF0(0, &qword_280D1B8F0);
  *(inited + 40) = v12;
  v14 = *MEMORY[0x277D740A8];
  *(inited + 64) = v13;
  *(inited + 72) = v14;
  *(inited + 104) = sub_21D0D8CF0(0, &qword_280D176B0);
  *(inited + 80) = a2;
  v15 = v14;
  v16 = a2;
  sub_21D11274C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0);
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_21DBFA12C();

  type metadata accessor for Key(0);
  sub_21D6A417C(&qword_280D17790, type metadata accessor for Key);
  v19 = sub_21DBF9E5C();

  v20 = [v17 initWithString:v18 attributes:v19];

  [v5 setAttributedPlaceholder_];
  return v5;
}

id sub_21D69B030(void *a1)
{
  if (sub_21D695FD8())
  {
    v3 = qword_280D132B0;
    swift_beginAccess();
    if (!*(v1 + v3))
    {
      [a1 setUserInteractionEnabled_];
      return [a1 setEditable_];
    }

    [a1 setUserInteractionEnabled_];
    v4 = qword_280D13268;
    swift_beginAccess();
    sub_21D0D3954(v1 + v4, &v16, &unk_27CE5FAD0);
    *&v15[10] = *(v17 + 10);
    v14 = v16;
    *v15 = v17[0];
    if (BYTE9(v17[1]))
    {
      if (BYTE9(v17[1]) == 1)
      {
        v18 = v16;
        v19 = v17[0];
        v20 = *&v17[1];
        v5 = *(&v17[0] + 1);
        if (!*(&v17[0] + 1))
        {
          goto LABEL_14;
        }

LABEL_12:
        v7 = v20;
        v8 = __swift_project_boxed_opaque_existential_1(&v18, v5);
        v9 = *(v5 - 8);
        v10 = MEMORY[0x28223BE20](v8);
        v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
        (*(v9 + 16))(v12, v10);
        sub_21D0CF7E0(&v18, &unk_27CE5FAE0);
        (*(v7 + 16))(&v16, v5, v7);
        (*(v9 + 8))(v12, v5);
        v13 = BYTE2(v16);

        return [a1 setEditable_];
      }

      v20 = 0;
      v18 = 0u;
      v19 = 0u;
    }

    else
    {
      sub_21D0D0FD0(&v14, &v18);
      v5 = *(&v19 + 1);
      if (*(&v19 + 1))
      {
        goto LABEL_12;
      }
    }

LABEL_14:
    sub_21D0CF7E0(&v18, &unk_27CE5FAE0);
    v13 = 0;
    return [a1 setEditable_];
  }

  return [a1 setUserInteractionEnabled_];
}

void *sub_21D69B2E0(uint64_t a1)
{
  v2 = sub_21DBFB83C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBFB95C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  sub_21DBFB7CC();
  sub_21DBFB82C();
  (*(v3 + 104))(v5, *MEMORY[0x277D74FF8], v2);
  sub_21DBFB85C();
  sub_21D0D8CF0(0, &qword_280D0C1C0);
  (*(v7 + 16))(v9, v12, v6);
  v13 = sub_21DBFB96C();
  v14 = [v13 titleLabel];
  if (v14)
  {
    v15 = v14;
    [v14 setNumberOfLines_];
  }

  v16 = [v13 titleLabel];
  if (v16)
  {
    v17 = v16;
    [v16 setLineBreakMode_];
  }

  [v13 addTarget:a1 action:sel_suggestedSectionButtonAction_ forControlEvents:0x2000];
  (*(v7 + 8))(v12, v6);
  return v13;
}

void *TTRIRemindersListReminderCell.customAccessibilityElement.getter()
{
  v1 = qword_280D13210;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void TTRIRemindersListReminderCell.customAccessibilityElement.setter(uint64_t a1)
{
  v3 = qword_280D13210;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t TTRIRemindersListReminderCell.reminderListCellAccessibilityCustomRotors()()
{
  v1 = v0 + qword_280D131E0;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 104))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t TTRIRemindersListReminderCell.subtasksExpandedState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1 + qword_280D132B8;
  result = swift_beginAccess();
  v5 = *(v3 + 40);
  if (v5)
  {
    LOBYTE(v5) = *(v3 + 8);
  }

  *a1 = v5;
  return result;
}

id sub_21D69B754(void *a1)
{
  v1 = a1;
  TTRIRemindersListReminderCell.accessibilityIdentifier.getter();
  v3 = v2;

  if (v3)
  {
    v4 = sub_21DBFA12C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t TTRIRemindersListReminderCell.accessibilityIdentifier.getter()
{
  v1 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(v0 + v1, &v13, &unk_27CE5FAD0);
  *&v12[10] = *&v14[10];
  v11 = v13;
  *v12 = *v14;
  if (!v14[25])
  {
    sub_21D0D0FD0(&v11, &v15);
    v2 = *(&v16 + 1);
    if (*(&v16 + 1))
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_21D0CF7E0(&v15, &unk_27CE5FAE0);
    return 0;
  }

  if (v14[25] != 1)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    goto LABEL_8;
  }

  v15 = v13;
  v16 = *v14;
  v17 = *&v14[16];
  v2 = *&v14[8];
  if (!*&v14[8])
  {
    goto LABEL_8;
  }

LABEL_6:
  v3 = v17;
  v4 = __swift_project_boxed_opaque_existential_1(&v15, v2);
  v5 = *(v2 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  (*(v5 + 16))(v8, v6);
  sub_21D0CF7E0(&v15, &unk_27CE5FAE0);
  v9 = (*(v3 + 24))(v2, v3);
  (*(v5 + 8))(v8, v2);
  return v9;
}

void sub_21D69B9CC(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_21DBFA16C();
    v6 = a1;
    a3 = sub_21DBFA12C();
  }

  else
  {
    v7 = a1;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, sel_setAccessibilityIdentifier_, a3);
}

void TTRIRemindersListReminderCell.accessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = sub_21DBFA12C();
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = v2;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_setAccessibilityIdentifier_, v5);
}

void (*TTRIRemindersListReminderCell.accessibilityIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = swift_getObjectType();
  *v4 = TTRIRemindersListReminderCell.accessibilityIdentifier.getter();
  v4[1] = v5;
  return sub_21D62F8B8;
}

BOOL sub_21D69BB64(char *a1)
{
  v1 = *&a1[qword_280D13278];
  v2 = a1;
  v6 = ([v1 isFirstResponder] & 1) == 0 && ((v3 = sub_21D62E958(1u)) == 0 || (v4 = v3, v5 = objc_msgSend(v3, sel_isFirstResponder), v4, !v5)) && UIAccessibilityIsSwitchControlRunning();

  return v6;
}

BOOL TTRIRemindersListReminderCell.isAccessibilityElement.getter()
{
  if ([*(v0 + qword_280D13278) isFirstResponder])
  {
    return 0;
  }

  v1 = sub_21D62E958(1u);
  if (v1 && (v2 = v1, v3 = [v1 isFirstResponder], v2, (v3 & 1) != 0))
  {
    return 0;
  }

  else
  {
    return UIAccessibilityIsSwitchControlRunning();
  }
}

uint64_t (*TTRIRemindersListReminderCell.isAccessibilityElement.modify(BOOL *a1))(void, void, void)
{
  v6 = ([*(v1 + qword_280D13278) isFirstResponder] & 1) == 0 && ((v3 = sub_21D62E958(1u)) == 0 || (v4 = v3, v5 = objc_msgSend(v3, sel_isFirstResponder), v4, !v5)) && UIAccessibilityIsSwitchControlRunning();
  *a1 = v6;
  return nullsub_1;
}

id sub_21D69BD14(void *a1)
{
  v1 = a1;
  v2 = TTRIRemindersListReminderCell.accessibilityElements.getter();

  if (v2)
  {
    v3 = sub_21DBFA5DC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t TTRIRemindersListReminderCell.accessibilityElements.getter()
{
  v1 = v0;
  v2 = sub_21D62E958(1u);
  v3 = *(v0 + qword_280D13278);
  if (([v3 isFirstResponder] & 1) != 0 || v2 && objc_msgSend(v2, sel_isFirstResponder))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58680);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_21DC08D00;
    *(v4 + 56) = type metadata accessor for TTRIReminderTitleTextView();
    *(v4 + 32) = v3;
    v46 = v4;
    if (v2)
    {
      v45 = sub_21D0D8CF0(0, &unk_280D0C330);
      *&v44 = v2;
      v5 = v3;
      v6 = v2;
      v7 = sub_21D213408(1, 2, 1, v4);
      *(v7 + 2) = 2;
      sub_21D0CF2E8(&v44, v7 + 4);
      v46 = v7;
    }

    else
    {
      v20 = v3;
    }

    v21 = *(v0 + qword_280D13248);
    v22 = OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator;
    v23 = *&v21[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator];
    v24 = v21;

    sub_21D442E44(2u, v23, v24);

    v25 = *&v21[v22];
    swift_beginAccess();
    v26 = *(v25 + 40);
    if (*(v26 + 16) >= 3uLL)
    {
      sub_21D0D3954(v26 + 160, &v44, &unk_27CE5F120);
      if (v44)
      {
        v27 = v44;
        sub_21D0CF7E0(&v44, &unk_27CE5F120);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_21DC08D00;
        v29 = sub_21D0D8CF0(0, &qword_280D176A0);
        v30 = v28;
        *(v28 + 56) = v29;
        *(v28 + 32) = v27;
      }

      else
      {
        sub_21D0CF7E0(&v44, &unk_27CE5F120);
        v30 = MEMORY[0x277D84F90];
      }

      sub_21D562F40(v30);
      if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSwitchControlRunning())
      {
        v31 = *(v1 + qword_280D13260);
        v45 = type metadata accessor for TTRIReminderCompletionButton();
        *&v44 = v31;
        v32 = v46;
        v33 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_21D213408(0, *(v32 + 2) + 1, 1, v32);
        }

        v35 = *(v32 + 2);
        v34 = *(v32 + 3);
        if (v35 >= v34 >> 1)
        {
          v32 = sub_21D213408((v34 > 1), v35 + 1, 1, v32);
        }

        *(v32 + 2) = v35 + 1;
        sub_21D0CF2E8(&v44, &v32[32 * v35 + 32]);
        v46 = v32;
      }

      v36 = *(v1 + qword_280D13220);
      if (!v36)
      {
        goto LABEL_34;
      }

      v37 = v36;
      if ([swift_unknownObjectRetain() isHidden])
      {

        swift_unknownObjectRelease();
LABEL_34:

        return v46;
      }

      v45 = type metadata accessor for TTRIRemindersListCellAutoCompleteSuggestionsStackView();
      *&v44 = v37;
      v1 = v46;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_36;
      }

      goto LABEL_45;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    v1 = sub_21D213408(0, *(v1 + 16) + 1, 1, v1);
LABEL_36:
    v40 = *(v1 + 16);
    v39 = *(v1 + 24);
    if (v40 >= v39 >> 1)
    {
      v1 = sub_21D213408((v39 > 1), v40 + 1, 1, v1);
    }

    swift_unknownObjectRelease();

    *(v1 + 16) = v40 + 1;
    sub_21D0CF2E8(&v44, (v1 + 32 * v40 + 32));
    v46 = v1;
    return v1;
  }

  v8 = qword_280D13210;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!v9)
  {

    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58680);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC08D00;
  *(v10 + 56) = type metadata accessor for TTRIRemindersListReminderCellAccessibilityElement();
  v43 = v10;
  *(v10 + 32) = v9;
  v11 = v9;
  v12 = sub_21DBFA12C();
  v13 = NSClassFromString(v12);

  if (v13)
  {
    v14 = [v1 subviews];
    v1 = sub_21D0D8CF0(0, &qword_280D176A0);
    v15 = sub_21DBFA5EC();

    v42 = v1;
    if (v15 >> 62)
    {
      v16 = sub_21DBFBD7C();
      if (v16)
      {
LABEL_10:
        v17 = 0;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x223D44740](v17, v15);
          }

          else
          {
            if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(v15 + 8 * v17 + 32);
          }

          v19 = v18;
          v1 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if ([v18 isKindOfClass_])
          {

            v45 = v42;
            *&v44 = v19;
            v41 = sub_21D213408(1, 2, 1, v10);

            *(v41 + 2) = 2;
            v43 = v41;
            sub_21D0CF2E8(&v44, v41 + 4);
            return v43;
          }

          ++v17;
          if (v1 == v16)
          {
            goto LABEL_47;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_10;
      }
    }

LABEL_47:
  }

  else
  {
  }

  return v43;
}

Swift::Bool __swiftcall TTRIRemindersListReminderCell.accessibilityActivate()()
{
  ObjectType = swift_getObjectType();
  if ([v0 isEditing] && (objc_msgSend(v0, sel_currentStateMask) & 1) != 0)
  {
    v14.receiver = v0;
    v14.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v14, sel_accessibilityActivate);
  }

  else if ([v0 isEditing] && (objc_msgSend(v0, sel_currentStateMask) & 1) != 0 || (objc_msgSend(v0, sel_isEditing) & 1) == 0)
  {
    if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
    {
      v15[3] = ObjectType;
      v15[0] = v0;
      v6 = v0;
      sub_21D69586C();
      sub_21D0CF7E0(v15, &qword_27CE5C690);
    }

    else
    {
      v7 = *&v0[qword_280D13278];
      v8 = [v7 window];
      [v8 makeKeyWindow];

      [v7 becomeFirstResponder];
      v9 = [v7 selectedTextRange];
      if (v9)
      {
      }

      else
      {
        v11 = [v7 endOfDocument];
        v12 = [v7 endOfDocument];
        v13 = [v7 textRangeFromPosition:v11 toPosition:v12];

        [v7 setSelectedTextRange_];
      }
    }

    v5 = 1;
  }

  else
  {
    v2 = &v0[qword_280D131E0];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 1);
      v4 = swift_getObjectType();
      v5 = (*(v3 + 136))(v4, v3);
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

BOOL sub_21D69C62C(void *a1)
{
  v1 = a1;
  v2 = TTRIRemindersListReminderCell.accessibilityActivate()();

  return v2;
}

double sub_21D69C660(void *a1)
{
  v1 = a1;
  TTRIRemindersListReminderCell.accessibilityActivationPoint.getter();
  v3 = v2;

  return v3;
}

id TTRIRemindersListReminderCell.accessibilityActivationPoint.getter()
{
  v1 = *&v0[qword_280D13260];
  [v1 frame];
  CGRectGetMidX(v3);
  [v0 accessibilityFrame];
  CGRectGetMidY(v4);
  [*&v0[qword_280D13278] accessibilityActivationPoint];
  if (UIAccessibilityIsSwitchControlRunning() && (![v0 isEditing] || (objc_msgSend(v0, sel_currentStateMask) & 1) == 0))
  {
    return [v1 accessibilityActivationPoint];
  }

  result = [v0 isEditing];
  if (result)
  {
    return [v0 currentStateMask];
  }

  return result;
}

uint64_t (*TTRIRemindersListReminderCell.accessibilityActivationPoint.modify(void *a1))(void, void, void)
{
  TTRIRemindersListReminderCell.accessibilityActivationPoint.getter();
  *a1 = v2;
  a1[1] = v3;
  return nullsub_1;
}

unint64_t sub_21D69C7F8(void *a1)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v1 = v6.receiver;
  v2 = objc_msgSendSuper2(&v6, sel_accessibilityTraits);
  if ([v1 isSelected])
  {
    v3 = *MEMORY[0x277D76598];

    if ((v3 & ~v2) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v2 |= v4;
  }

  else
  {
  }

  return v2;
}

unint64_t TTRIRemindersListReminderCell.accessibilityTraits.getter()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v4, sel_accessibilityTraits);
  if ([v0 isSelected])
  {
    v2 = *MEMORY[0x277D76598];
    if ((*MEMORY[0x277D76598] & ~v1) == 0)
    {
      v2 = 0;
    }

    v1 |= v2;
  }

  return v1;
}

uint64_t (*TTRIRemindersListReminderCell.accessibilityTraits.modify(objc_super *a1))(void, void, void)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  a1->receiver = v1;
  a1->super_class = ObjectType;
  v5 = [(objc_super *)a1 accessibilityTraits];
  if ([v2 isSelected])
  {
    v6 = *MEMORY[0x277D76598];
    if ((*MEMORY[0x277D76598] & ~v5) == 0)
    {
      v6 = 0;
    }

    v5 |= v6;
  }

  a1[1].receiver = v5;
  return nullsub_1;
}

Swift::Bool __swiftcall TTRIRemindersListReminderCell.accessibilityPerformEscape()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[qword_280D13278];
  if ([v3 isFirstResponder])
  {
    [v3 resignFirstResponder];
    return 1;
  }

  v5 = sub_21D62E958(1u);
  if (v5)
  {
    v6 = v5;
    if ([v5 isFirstResponder])
    {
      [v6 resignFirstResponder];

      return 1;
    }
  }

  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_accessibilityPerformEscape);
}

BOOL sub_21D69CA70(void *a1)
{
  v1 = a1;
  v2 = TTRIRemindersListReminderCell.accessibilityPerformEscape()();

  return v2;
}

id TTRIRemindersListReminderCell.accessibilityDragSourceDescriptors.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(v1 + v3, &v17, &unk_27CE5FAD0);
  *&v16[10] = *(v18 + 10);
  v15 = v17;
  *v16 = v18[0];
  if (!BYTE9(v18[1]))
  {
    sub_21D0D0FD0(&v15, &v19);
    v4 = *(&v20 + 1);
    if (*(&v20 + 1))
    {
      goto LABEL_6;
    }

LABEL_9:
    sub_21D0CF7E0(&v19, &unk_27CE5FAE0);
    goto LABEL_10;
  }

  if (BYTE9(v18[1]) != 1)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_9;
  }

  v19 = v17;
  v20 = v18[0];
  v21 = *&v18[1];
  v4 = *(&v18[0] + 1);
  if (!*(&v18[0] + 1))
  {
    goto LABEL_9;
  }

LABEL_6:
  v5 = v21;
  v6 = __swift_project_boxed_opaque_existential_1(&v19, v4);
  v7 = *(v4 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  sub_21D0CF7E0(&v19, &unk_27CE5FAE0);
  (*(v5 + 16))(&v17, v4, v5);
  (*(v7 + 8))(v10, v4);
  LOBYTE(v10) = BYTE8(v18[0]);

  if ((v10 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v14.receiver = v1;
  v14.super_class = ObjectType;
  result = objc_msgSendSuper2(&v14, sel_accessibilityDragSourceDescriptors);
  if (result)
  {
    v12 = result;
    sub_21D0D8CF0(0, &unk_27CE5FB40);
    v13 = sub_21DBFA5EC();

    return v13;
  }

  return result;
}

Swift::Bool __swiftcall TTRIRemindersListReminderCell.ttriAccessibilityHidesPrivateActions()()
{
  if ([v0 ttriAccessibilityIsTableViewEditing])
  {
    v1 = 1;
  }

  else
  {
    v2 = &v0[qword_280D131E0];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 1);
      ObjectType = swift_getObjectType();
      v1 = (*(v3 + 160))(ObjectType, v3);
      swift_unknownObjectRelease();
    }

    else
    {
      v1 = 0;
    }
  }

  return v1 & 1;
}

BOOL sub_21D69CE24(void *a1)
{
  v1 = a1;
  v2 = TTRIRemindersListReminderCell.ttriAccessibilityHidesPrivateActions()();

  return v2;
}

id sub_21D69CE80(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4)
{
  v6 = a1;
  v7 = a3();

  if (v7)
  {
    sub_21D0D8CF0(0, a4);
    v8 = sub_21DBFA5DC();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

__int128 *TTRIRemindersListReminderCell.accessibilityCustomActions.getter()
{
  v1 = v0;
  v2 = sub_21DBF54CC();
  v289 = *(v2 - 8);
  v3 = *(v289 + 64);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = &v267[-v5];
  v7 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment(0);
  v8 = *(v7 - 8);
  v287 = v7;
  v288 = v8;
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v290 = &v267[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = [v0 isEditing];
  v12 = 0;
  if (v11)
  {
    return v12;
  }

  v13 = &v324;
  v14 = &v321;
  v15 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(&v1[v15], &v324, &unk_27CE5FAD0);
  *(v322 + 10) = *(v325 + 10);
  v321 = v324;
  v322[0] = v325[0];
  if (BYTE9(v325[1]))
  {
    if (BYTE9(v322[1]) == 1)
    {
      v306 = v324;
      v307 = v325[0];
      *&v308 = *&v325[1];
      if (*(&v325[0] + 1))
      {
        goto LABEL_5;
      }
    }

    else
    {
      *&v308 = 0;
      v306 = 0u;
      v307 = 0u;
    }

LABEL_9:
    sub_21D0CF7E0(&v306, &unk_27CE5FAE0);
    return 0;
  }

  sub_21D0D0FD0(&v321, &v306);
  if (!*(&v307 + 1))
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_21D0D0FD0(&v306, v328);
  v16 = &v1[qword_280D131E0];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_29:
    __swift_destroy_boxed_opaque_existential_0(v328);
    return 0;
  }

  v301 = v1;
  v18 = *(v16 + 1);
  v19 = Strong;
  ObjectType = swift_getObjectType();
  if (((*(v18 + 160))(ObjectType, v18) & 1) != 0 || (v286 = v6, v282 = &v267[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v271 = v19, v21 = v329, v22 = v330, __swift_project_boxed_opaque_existential_1(v328, v329), (*(v22 + 16))(&v324, v21, v22), v23 = BYTE9(v325[0]), , v23 != 1))
  {
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v280 = v3;
  v327 = MEMORY[0x277D84F90];
  v24 = v329;
  v25 = v330;
  __swift_project_boxed_opaque_existential_1(v328, v329);
  (*(v25 + 16))(&v324, v24, v25);
  v26 = v324;

  v27 = &unk_21DC09000;
  v281 = v2;
  if (v26 >> 6)
  {
    goto LABEL_13;
  }

  if (v26)
  {
    goto LABEL_13;
  }

  if (((*(v18 + 8))(v301, ObjectType, v18) & 1) == 0)
  {
    goto LABEL_13;
  }

  v77 = [objc_opt_self() currentRequest];
  if (!v77)
  {
    goto LABEL_13;
  }

  v78 = v77;
  v79 = [v77 technology];

  v80 = sub_21DBFA16C();
  v82 = v81;
  if (v80 == sub_21DBFA16C() && v82 == v83)
  {
    goto LABEL_49;
  }

  v91 = sub_21DBFC64C();

  if (v91)
  {
    goto LABEL_56;
  }

  v226 = sub_21DBFA16C();
  v228 = v227;
  if (v226 == sub_21DBFA16C() && v228 == v229)
  {
    goto LABEL_49;
  }

  v230 = sub_21DBFC64C();

  if (v230)
  {
    goto LABEL_56;
  }

  v231 = sub_21DBFA16C();
  v233 = v232;
  if (v231 == sub_21DBFA16C() && v233 == v234)
  {
    goto LABEL_49;
  }

  v235 = sub_21DBFC64C();

  if (v235)
  {
    goto LABEL_56;
  }

  v236 = sub_21DBFA16C();
  v238 = v237;
  if (v236 == sub_21DBFA16C() && v238 == v239)
  {
    goto LABEL_49;
  }

  v240 = sub_21DBFC64C();

  if (v240)
  {
LABEL_56:

    goto LABEL_13;
  }

  v241 = sub_21DBFA16C();
  v243 = v242;
  if (v241 == sub_21DBFA16C() && v243 == v244)
  {
    goto LABEL_49;
  }

  v245 = sub_21DBFC64C();

  if (v245)
  {
    goto LABEL_56;
  }

  v246 = sub_21DBFA16C();
  v248 = v247;
  if (v246 == sub_21DBFA16C() && v248 == v249)
  {
LABEL_49:

    goto LABEL_13;
  }

  v250 = sub_21DBFC64C();

  if (v250)
  {
    goto LABEL_56;
  }

  v251 = sub_21DBFA16C();
  v253 = v252;
  if (v251 == sub_21DBFA16C() && v253 == v254)
  {
    goto LABEL_157;
  }

  v255 = sub_21DBFC64C();

  if (v255)
  {
  }

  else
  {
    v262 = sub_21DBFA16C();
    v264 = v263;
    if (v262 == sub_21DBFA16C() && v264 == v265)
    {
LABEL_157:

      goto LABEL_165;
    }

    v266 = sub_21DBFC64C();

    if ((v266 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_165:
  if ([*&v301[qword_280D13260] isSelected])
  {
    if (qword_27CE573A8 == -1)
    {
      goto LABEL_169;
    }

    goto LABEL_176;
  }

  if (qword_27CE573A0 != -1)
  {
LABEL_176:
    swift_once();
  }

LABEL_169:
  sub_21DBF8E0C();
  v256 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v257 = objc_allocWithZone(MEMORY[0x277D75088]);

  v258 = sub_21DBFA12C();

  *&v325[1] = sub_21D6A38A8;
  *(&v325[1] + 1) = v256;
  *&v324 = MEMORY[0x277D85DD0];
  *(&v324 + 1) = 1107296256;
  *&v325[0] = sub_21D1A62AC;
  *(&v325[0] + 1) = &block_descriptor_78_2;
  v259 = _Block_copy(&v324);
  v260 = [v257 initWithName:v258 actionHandler:v259];

  _Block_release(v259);

  v261 = v260;
  MEMORY[0x223D42D80]();
  if (*((v327 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v327 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21DBFA63C();
  }

  sub_21DBFA6CC();

LABEL_13:
  if (qword_27CE57310 != -1)
  {
    goto LABEL_145;
  }

  while (1)
  {
    v298 = objc_opt_self();
    v28 = [v298 configurationWithPointSize_];
    v29 = sub_21DBFA12C();
    v297 = objc_opt_self();
    v30 = [v297 _systemImageNamed_withConfiguration_];

    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = objc_allocWithZone(MEMORY[0x277D75088]);

    v33 = sub_21DBFA12C();
    *&v325[1] = sub_21D6A37E4;
    *(&v325[1] + 1) = v31;
    *&v324 = MEMORY[0x277D85DD0];
    v34 = v27[87];
    *(&v324 + 1) = v34;
    *&v325[0] = sub_21D1A62AC;
    *(&v325[0] + 1) = &block_descriptor_27_0;
    v35 = _Block_copy(&v324);
    v36 = [v32 initWithName:v33 image:v30 actionHandler:v35];

    _Block_release(v35);

    v37 = v36;
    MEMORY[0x223D42D80]();
    if (*((v327 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v327 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    v270 = v37;
    sub_21DBFA6CC();
    v38 = v329;
    v39 = v330;
    __swift_project_boxed_opaque_existential_1(v328, v329);
    if ((*(v39 + 224))(v38, v39))
    {
      if (qword_27CE57318 != -1)
      {
        swift_once();
      }

      v40 = [v298 configurationWithPointSize_];
      v41 = sub_21DBFA12C();
      v42 = [v297 _systemImageNamed_withConfiguration_];

      v43 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v44 = objc_allocWithZone(MEMORY[0x277D75088]);

      v45 = sub_21DBFA12C();
      *&v325[1] = sub_21D6A38A0;
      *(&v325[1] + 1) = v43;
      *&v324 = MEMORY[0x277D85DD0];
      *(&v324 + 1) = v34;
      *&v325[0] = sub_21D1A62AC;
      *(&v325[0] + 1) = &block_descriptor_74;
      v46 = _Block_copy(&v324);
      v47 = [v44 initWithName:v45 image:v42 actionHandler:v46];

      _Block_release(v46);

      v48 = v47;
      MEMORY[0x223D42D80]();
      if (*((v327 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v327 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
    }

    v49 = v329;
    v50 = v330;
    __swift_project_boxed_opaque_existential_1(v328, v329);
    v51 = (*(v50 + 112))(v49, v50);
    if (v51)
    {
      v52 = v51;
      v53 = [v51 string];

      v54 = sub_21DBFA16C();
      v56 = v55;

      v57 = HIBYTE(v56) & 0xF;
      if ((v56 & 0x2000000000000000) == 0)
      {
        v57 = v54 & 0xFFFFFFFFFFFFLL;
      }

      if (v57)
      {
        if (qword_27CE57328 == -1)
        {
          goto LABEL_33;
        }

LABEL_148:
        swift_once();
        goto LABEL_33;
      }
    }

    if (qword_27CE57320 != -1)
    {
      goto LABEL_148;
    }

LABEL_33:
    sub_21DBF8E0C();
    v59 = [v298 configurationWithPointSize_];
    v60 = sub_21DBFA12C();

    v61 = [v297 _systemImageNamed_withConfiguration_];

    v62 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v63 = objc_allocWithZone(MEMORY[0x277D75088]);

    v64 = sub_21DBFA12C();

    *&v325[1] = sub_21D6A37EC;
    *(&v325[1] + 1) = v62;
    *&v324 = MEMORY[0x277D85DD0];
    *(&v324 + 1) = v34;
    *&v325[0] = sub_21D1A62AC;
    *(&v325[0] + 1) = &block_descriptor_31_2;
    v65 = _Block_copy(&v324);
    v66 = [v63 initWithName:v64 image:v61 actionHandler:v65];

    _Block_release(v65);

    v67 = v66;
    MEMORY[0x223D42D80]();
    if (*((v327 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v327 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    v269 = v67;
    sub_21DBFA6CC();
    v68 = v327;
    v69 = v329;
    v70 = v330;
    __swift_project_boxed_opaque_existential_1(v328, v329);
    v71 = (*(v70 + 160))(v69, v70);
    v72 = v286;
    if ((v73 & 1) == 0 && v71 >= 1)
    {
      v74 = v329;
      v75 = v330;
      __swift_project_boxed_opaque_existential_1(v328, v329);
      (*(v75 + 176))(&v321, v74, v75);
      if (v321 != 2)
      {
        if ((v321 & 1) == 0)
        {
          if (qword_27CE57340 != -1)
          {
            swift_once();
          }

          v84 = [v298 configurationWithPointSize_];
          v85 = sub_21DBFA12C();
          v86 = [v297 _systemImageNamed_withConfiguration_];

          v87 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v88 = objc_allocWithZone(MEMORY[0x277D75088]);

          v89 = sub_21DBFA12C();
          *&v325[1] = sub_21D6A3890;
          *(&v325[1] + 1) = v87;
          *&v324 = MEMORY[0x277D85DD0];
          *(&v324 + 1) = v34;
          *&v325[0] = sub_21D1A62AC;
          *(&v325[0] + 1) = &block_descriptor_66_2;
          v27 = _Block_copy(&v324);
          [v88 initWithName:v89 image:v86 actionHandler:v27];

          _Block_release(v27);

          MEMORY[0x223D42D80](v90);
          if (*((v327 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v327 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
          goto LABEL_61;
        }

        v76 = &v301[qword_280D132B8];
        swift_beginAccess();
        if (*(v76 + 5))
        {
          if (v76[8])
          {
            if (v76[8] == 1)
            {
              if (qword_27CE57330 == -1)
              {
                goto LABEL_58;
              }

LABEL_161:
              swift_once();
            }

            else if (qword_27CE57338 != -1)
            {
              goto LABEL_161;
            }

LABEL_58:
            sub_21DBF8E0C();
            UIAccessibilityButtonShapesEnabled();
            v92 = [v298 configurationWithPointSize_];
            v27 = sub_21DBFA12C();

            v93 = [v297 _systemImageNamed_withConfiguration_];

            v94 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v95 = objc_allocWithZone(MEMORY[0x277D75088]);

            v96 = sub_21DBFA12C();

            *&v325[1] = sub_21D6A3898;
            *(&v325[1] + 1) = v94;
            *&v324 = MEMORY[0x277D85DD0];
            *(&v324 + 1) = v34;
            *&v325[0] = sub_21D1A62AC;
            *(&v325[0] + 1) = &block_descriptor_70_0;
            v97 = _Block_copy(&v324);
            v98 = [v95 initWithName:v96 image:v93 actionHandler:v97];

            _Block_release(v97);

            v99 = v98;
            MEMORY[0x223D42D80]();
            if (*((v327 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v327 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            sub_21DBFA6CC();

LABEL_61:
            v68 = v327;
            v72 = v286;
          }
        }
      }
    }

    v100 = v329;
    v101 = v330;
    __swift_project_boxed_opaque_existential_1(v328, v329);
    (*(v101 + 264))(&v306, v100, v101);
    v102 = v317;
    v104 = v318;
    v103 = v319;
    v14[12] = v318;
    v14[13] = v103;
    v105 = v313;
    v106 = v313;
    v107 = v314;
    v108 = v315;
    v109 = v316;
    v14[8] = v314;
    v14[9] = v108;
    v110 = v315;
    v111 = v317;
    v14[10] = v316;
    v14[11] = v111;
    v112 = v311;
    v113 = v310;
    v114 = v311;
    v14[4] = v310;
    v14[5] = v112;
    v115 = v312;
    v14[6] = v312;
    v14[7] = v105;
    v116 = v307;
    v117 = v306;
    v118 = v307;
    *v14 = v306;
    v14[1] = v116;
    v119 = v309;
    v121 = v308;
    v120 = v309;
    v14[2] = v308;
    v14[3] = v119;
    v122 = v319;
    *(v13 + 192) = v104;
    *(v13 + 208) = v122;
    *(v13 + 128) = v107;
    *(v13 + 144) = v110;
    *(v13 + 160) = v109;
    *(v13 + 176) = v102;
    *(v13 + 64) = v113;
    *(v13 + 80) = v114;
    *(v13 + 96) = v115;
    *(v13 + 112) = v106;
    *v13 = v117;
    *(v13 + 16) = v118;
    v323 = v320;
    v326 = v320;
    *(v13 + 32) = v121;
    *(v13 + 48) = v120;
    if (sub_21D4B9498(&v324) == 1)
    {
      v13 = v281;
      v14 = v68;
    }

    else
    {
      sub_21D0CF7E0(&v321, &unk_27CE5FB50);
      v13 = v281;
      if (qword_27CE57360 != -1)
      {
        swift_once();
      }

      v123 = [v298 configurationWithPointSize_];
      v124 = sub_21DBFA12C();
      v125 = [v297 _systemImageNamed_withConfiguration_];

      v126 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v127 = objc_allocWithZone(MEMORY[0x277D75088]);

      v128 = sub_21DBFA12C();
      *&v308 = sub_21D6A3888;
      *(&v308 + 1) = v126;
      *&v306 = MEMORY[0x277D85DD0];
      *(&v306 + 1) = v34;
      *&v307 = sub_21D1A62AC;
      *(&v307 + 1) = &block_descriptor_62_0;
      v129 = _Block_copy(&v306);
      v130 = [v127 initWithName:v128 image:v125 actionHandler:v129];

      _Block_release(v129);

      v131 = v130;
      MEMORY[0x223D42D80]();
      if (*((v327 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v327 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();

      v14 = v327;
      v72 = v286;
    }

    v132 = v329;
    v133 = v330;
    __swift_project_boxed_opaque_existential_1(v328, v329);
    v134 = (*(v133 + 120))(v132, v133);
    if (!v134)
    {
      break;
    }

    v135 = *(v134 + 16);
    v268 = v135 != 0;
    v279 = v135;
    if (!v135)
    {
LABEL_98:
      v185 = v14;

      v186 = v268;
      goto LABEL_100;
    }

    v136 = 0;
    v137 = *&v301[qword_280D132A0];
    v277 = v134 + ((*(v288 + 80) + 32) & ~*(v288 + 80));
    v278 = v137;
    v275 = 0x800000021DC63DF0;
    v276 = "Cell content stack view";
    v285 = (v289 + 16);
    v274 = v289 + 32;
    v296 = &v307;
    v272 = (v289 + 8);
    v295 = xmmword_21DC08D00;
    v273 = v134;
    while (v136 < *(v134 + 16))
    {
      v138 = v290;
      sub_21D6A4234(v277 + *(v288 + 72) * v136, v290, type metadata accessor for TTRRemindersListViewModel.LinkAttachment);
      v139 = *v285;
      (*v285)(v72, &v138[*(v287 + 20)], v13);
      v300 = sub_21DBF53EC();
      v302 = v140;
      if (!v140)
      {
        v300 = sub_21DBF535C();
        v302 = v141;
      }

      v284 = v136;
      if (qword_27CE57378 != -1)
      {
        swift_once();
      }

      v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v142 = swift_allocObject();
      *(v142 + 16) = v295;
      *(v142 + 56) = MEMORY[0x277D837D0];
      v293 = sub_21D17A884();
      *(v142 + 64) = v293;
      v143 = v302;
      *(v142 + 32) = v300;
      *(v142 + 40) = v143;
      sub_21DBF8E0C();
      sub_21DBFA17C();
      v144 = [v298 configurationWithPointSize_];
      v145 = sub_21DBFA12C();
      v146 = [v297 _systemImageNamed_withConfiguration_];

      v147 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v148 = v282;
      v139(v282, v286, v13);
      v149 = v289;
      v150 = (*(v289 + 80) + 24) & ~*(v289 + 80);
      v151 = swift_allocObject();
      *(v151 + 16) = v147;
      (*(v149 + 32))(v151 + v150, v148, v13);
      v152 = objc_allocWithZone(MEMORY[0x277D75088]);

      v153 = sub_21DBFA12C();

      *&v308 = sub_21D6A3814;
      *(&v308 + 1) = v151;
      *&v306 = MEMORY[0x277D85DD0];
      *(&v306 + 1) = v34;
      *&v307 = sub_21D1A62AC;
      *(&v307 + 1) = &block_descriptor_51_1;
      v154 = _Block_copy(&v306);
      v155 = [v152 initWithName:v153 image:v146 actionHandler:v154];

      _Block_release(v154);

      v156 = v155;
      MEMORY[0x223D42D80]();
      if (*((v327 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v327 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v14 = v327;
      v27 = &OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_attachmentID;
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v292 = sub_21DBF516C();
      v299 = v157;
      v158 = sub_21D6A4844();
      v13 = v158;
      v159 = v301;
      v283 = v156;
      if (v158 >> 62)
      {
        v160 = sub_21DBFBD7C();
        if (!v160)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v160 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v160)
        {
          goto LABEL_72;
        }
      }

      sub_21D0D8CF0(0, &qword_280D17680);
      if (v160 < 1)
      {
        goto LABEL_144;
      }

      v161 = 0;
      v162 = *v290;
      v303 = v13 & 0xC000000000000001;
      v304 = v162;
      v305 = v160;
      v291 = v13;
      do
      {
        if (v303)
        {
          v163 = MEMORY[0x223D44740](v161, v13);
        }

        else
        {
          v163 = *(v13 + 8 * v161 + 32);
        }

        v164 = v163;
        v165 = *&v163[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_attachmentID];
        v166 = sub_21DBFB63C();

        if ((v166 & 1) != 0 && (v167 = [v159 superview]) != 0)
        {
          v168 = v167;
          [v164 accessibilityActivationPoint];
          [v168 convertPoint:0 fromView:?];
          v170 = v169;
          v172 = v171;

          v173 = swift_allocObject();
          *(v173 + 16) = v295;
          v174 = v293;
          *(v173 + 56) = MEMORY[0x277D837D0];
          *(v173 + 64) = v174;
          *(v173 + 32) = v300;
          *(v173 + 40) = v302;
          sub_21DBF8E0C();
          sub_21DBFA17C();
          v175 = [v298 configurationWithPointSize_];
          v176 = sub_21DBFA12C();
          v177 = [v297 _systemImageNamed_withConfiguration_];

          v178 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v179 = swift_allocObject();
          v179[2] = v178;
          v179[3] = v170;
          v179[4] = v172;
          v180 = objc_allocWithZone(MEMORY[0x277D75088]);

          v181 = sub_21DBFA12C();

          *&v308 = sub_21D638968;
          *(&v308 + 1) = v179;
          *&v306 = MEMORY[0x277D85DD0];
          *(&v306 + 1) = v34;
          *&v307 = sub_21D1A62AC;
          *(&v307 + 1) = &block_descriptor_58;
          v182 = _Block_copy(&v306);
          v183 = [v180 initWithName:v181 image:v177 actionHandler:v182];

          _Block_release(v182);

          v184 = v183;
          MEMORY[0x223D42D80]();
          if (*((v327 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v327 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();

          v14 = v327;
          v159 = v301;
          v27 = &OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_attachmentID;
          v13 = v291;
        }

        else
        {
        }

        ++v161;
      }

      while (v305 != v161);
LABEL_72:
      v136 = v284 + 1;

      v72 = v286;
      v13 = v281;
      (*v272)(v286, v281);
      sub_21D6A429C(v290, type metadata accessor for TTRRemindersListViewModel.LinkAttachment);
      v134 = v273;
      if (v136 == v279)
      {
        goto LABEL_98;
      }
    }

    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    swift_once();
  }

  v185 = v14;
  v186 = 0;
LABEL_100:
  v187 = v329;
  v188 = v330;
  __swift_project_boxed_opaque_existential_1(v328, v329);
  v189 = (*(v188 + 128))(v187, v188);
  if (v189)
  {
    v190 = *(v189 + 16);

    if (v190)
    {
      if (qword_27CE57358 != -1)
      {
        swift_once();
      }

      v191 = [v298 configurationWithPointSize_];
      v192 = sub_21DBFA12C();
      v193 = [v297 _systemImageNamed_withConfiguration_];

      v194 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v195 = objc_allocWithZone(MEMORY[0x277D75088]);

      v196 = sub_21DBFA12C();
      *&v308 = sub_21D6A380C;
      *(&v308 + 1) = v194;
      *&v306 = MEMORY[0x277D85DD0];
      *(&v306 + 1) = v34;
      *&v307 = sub_21D1A62AC;
      *(&v307 + 1) = &block_descriptor_44_1;
      v197 = _Block_copy(&v306);
      v198 = [v195 initWithName:v196 image:v193 actionHandler:v197];

      _Block_release(v197);

      v199 = v198;
      MEMORY[0x223D42D80]();
      if (*((v327 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v327 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();

LABEL_108:
      v200 = v329;
      v201 = v330;
      __swift_project_boxed_opaque_existential_1(v328, v329);
      if ((*(v201 + 144))(v200, v201))
      {
        if (qword_27CE57350 == -1)
        {
LABEL_112:
          sub_21DBF8E0C();
          v202 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v203 = objc_allocWithZone(MEMORY[0x277D75088]);

          v204 = sub_21DBFA12C();

          *&v308 = sub_21D6A3804;
          *(&v308 + 1) = v202;
          *&v306 = MEMORY[0x277D85DD0];
          *(&v306 + 1) = v34;
          *&v307 = sub_21D1A62AC;
          *(&v307 + 1) = &block_descriptor_40_0;
          v205 = _Block_copy(&v306);
          v206 = [v203 initWithName:v204 actionHandler:v205];

          _Block_release(v205);

          v207 = v206;
          MEMORY[0x223D42D80]();
          if (*((v327 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v327 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();

          v185 = v327;
          goto LABEL_115;
        }
      }

      else if (qword_27CE57348 == -1)
      {
        goto LABEL_112;
      }

      swift_once();
      goto LABEL_112;
    }
  }

  if (v186)
  {
    goto LABEL_108;
  }

LABEL_115:
  v208 = v329;
  v209 = v330;
  __swift_project_boxed_opaque_existential_1(v328, v329);
  (*(v209 + 240))(&v306, v208, v209);
  v210 = v306;
  if (v306)
  {
    if (v307)
    {
      v211 = *(&v306 + 1);
      v212 = v307;
    }

    else
    {
      if (qword_27CE57388 != -1)
      {
        swift_once();
      }

      v211 = qword_27CE66E50;
      v212 = *algn_27CE66E58;
      sub_21DBF8E0C();
    }

    v213 = qword_27CE57380;
    sub_21DBF8E0C();
    if (v213 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v214 = swift_allocObject();
    *(v214 + 16) = xmmword_21DC08D00;
    *(v214 + 56) = MEMORY[0x277D837D0];
    *(v214 + 64) = sub_21D17A884();
    *(v214 + 32) = v211;
    *(v214 + 40) = v212;
    sub_21DBFA17C();
    v215 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v216 = objc_allocWithZone(MEMORY[0x277D75088]);

    v217 = sub_21DBFA12C();

    *&v308 = sub_21D6A37FC;
    *(&v308 + 1) = v215;
    *&v306 = MEMORY[0x277D85DD0];
    *(&v306 + 1) = v34;
    *&v307 = sub_21D1A62AC;
    *(&v307 + 1) = &block_descriptor_36_1;
    v218 = _Block_copy(&v306);
    v219 = [v216 initWithName:v217 actionHandler:v218];

    _Block_release(v218);

    v220 = v219;
    MEMORY[0x223D42D80]();
    if (*((v327 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v327 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();
    sub_21D6388A4(v210);

    v185 = v327;
  }

  if (qword_280D168D8 != -1)
  {
    swift_once();
  }

  v221 = qword_280D168E0;
  v222 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v223 = sub_21D6390E4(v328, v221, sub_21D6A37F4, v222);

  v224 = v270;
  if (v223)
  {
    v225 = v223;
    MEMORY[0x223D42D80]();
    if (*((v327 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v327 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
      v224 = v270;
    }

    sub_21DBFA6CC();

    swift_unknownObjectRelease();
    v12 = v327;
  }

  else
  {
    swift_unknownObjectRelease();

    v12 = v185;
  }

  __swift_destroy_boxed_opaque_existential_0(v328);
  return v12;
}

BOOL sub_21D69F8A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3[3] = type metadata accessor for TTRIRemindersListReminderCell();
    v3[0] = Strong;
    v1 = Strong;
    sub_21D69586C();

    sub_21D0CF7E0(v3, &qword_27CE5C690);
  }

  return Strong != 0;
}

BOOL sub_21D69F930()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = *(Strong + qword_280D13278);
    v3 = [v2 window];
    [v3 makeKeyWindow];

    [v2 becomeFirstResponder];
    v4 = [v2 selectedTextRange];
    if (!v4)
    {
      v5 = [v2 endOfDocument];
      v6 = [v2 endOfDocument];
      v4 = [v2 textRangeFromPosition:v5 toPosition:v6];

      [v2 setSelectedTextRange_];
    }
  }

  return v1 != 0;
}

uint64_t sub_21D69FA78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (!Strong)
  {
    return v1 != 0;
  }

  v2 = *(Strong + qword_280D13248);
  v3 = OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator;
  v4 = *&v2[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator];
  v5 = v2;

  sub_21D442E44(2u, v4, v5);

  v6 = *&v2[v3];
  result = swift_beginAccess();
  v8 = *(v6 + 40);
  if (*(v8 + 16) >= 3uLL)
  {
    sub_21D0D3954(v8 + 160, v13, &unk_27CE5F120);
    if (v13[0])
    {
      v9 = v13[0];
      sub_21D0CF7E0(v13, &unk_27CE5F120);
      v10 = &v5[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_accessoryDelegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v10 + 1);
        ObjectType = swift_getObjectType();
        (*(v11 + 16))(v5, v9, ObjectType, v11);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      sub_21D0CF7E0(v13, &unk_27CE5F120);
    }

    return v1 != 0;
  }

  __break(1u);
  return result;
}

id sub_21D69FC14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = qword_280D13278;
  if (![*(Strong + qword_280D13278) canBecomeFirstResponder])
  {
    goto LABEL_9;
  }

  v3 = qword_280D132A0;
  v4 = *&v1[qword_280D132A0];
  v5 = sub_21D62E958(1u);

  if (v5)
  {
  }

  else
  {
    [*&v1[v2] becomeFirstResponder];
  }

  v7 = *&v1[v3];
  v8 = sub_21D62E958(1u);

  if (v8)
  {
    v6 = [v8 becomeFirstResponder];
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

  return v6;
}

BOOL sub_21D69FD1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = *(Strong + qword_280D13248);
    v3 = v2 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_accessoryDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 24))(v2, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }

  return v1 != 0;
}

uint64_t sub_21D69FDDC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + qword_280D131E0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 40))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

BOOL sub_21D69FEA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = *(Strong + qword_280D13248);
    sub_21D6BB93C();
  }

  return v1 != 0;
}

uint64_t sub_21D69FF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v5 = Strong;
  v6 = Strong + qword_280D131E0;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {

LABEL_5:
    v9 = 0;
    return v9 & 1;
  }

  v7 = *(v6 + 8);

  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 128))(a3, ObjectType, v7);
  swift_unknownObjectRelease();
  return v9 & 1;
}

uint64_t sub_21D69FFF0()
{
  v0 = type metadata accessor for TTRRemindersListViewModel.ImageAttachment(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v25[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(&v5[v6], &v26, &unk_27CE5FAD0);
  *&v25[10] = *&v27[10];
  v24 = v26;
  *v25 = *v27;
  if (!v27[25])
  {
    sub_21D0D0FD0(&v24, &v28);
    v7 = *(&v29 + 1);
    if (*(&v29 + 1))
    {
      goto LABEL_7;
    }

LABEL_14:

    sub_21D0CF7E0(&v28, &unk_27CE5FAE0);
    return 0;
  }

  if (v27[25] != 1)
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    goto LABEL_14;
  }

  v28 = v26;
  v29 = *v27;
  v30 = *&v27[16];
  v7 = *&v27[8];
  if (!*&v27[8])
  {
    goto LABEL_14;
  }

LABEL_7:
  v8 = v30;
  v9 = __swift_project_boxed_opaque_existential_1(&v28, v7);
  v10 = *(v7 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  (*(v10 + 16))(v13, v11);
  sub_21D0CF7E0(&v28, &unk_27CE5FAE0);
  v14 = (*(v8 + 128))(v7, v8);
  (*(v10 + 8))(v13, v7);
  if (!v14)
  {
LABEL_16:

    return 0;
  }

  if (!*(v14 + 16))
  {

    goto LABEL_16;
  }

  sub_21D6A4234(v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v3, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);

  v15 = *v3;
  sub_21D6A429C(v3, type metadata accessor for TTRRemindersListViewModel.ImageAttachment);
  v16 = &v5[qword_280D131E0];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 1);
    v18 = *&v5[qword_280D132A0];
    v19 = sub_21D62EAA4(9u);

    if (v19)
    {
      swift_getObjectType();
      v20 = swift_conformsToProtocol2();
      if (v20)
      {
        v21 = v19;
        v22 = v19;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
      v20 = 0;
    }

    ObjectType = swift_getObjectType();
    (*(v17 + 64))(v5, v15, v22, v20, ObjectType, v17);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_21D6A041C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + qword_280D131E0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 120))(ObjectType, v3);

      swift_unknownObjectRelease();
      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

BOOL sub_21D6A04DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = Strong + qword_280D131E0;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 56))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return v1 != 0;
}

BOOL sub_21D6A05A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    memset(v2, 0, sizeof(v2));
    sub_21D695BF8();

    sub_21D0CF7E0(v2, &qword_27CE5C690);
  }

  return Strong != 0;
}

uint64_t TTRIRemindersListReminderCell.ttrAccessibilitySectionName.getter()
{
  v1 = v0 + qword_280D131E0;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 144))(v0, ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t TTRIRemindersListReminderCell.ttrAccessibilityIsGroceryList.getter()
{
  v1 = v0 + qword_280D131E0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 152))(v0, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void TTRIRemindersListReminderCell._accessibilityInternalTextLinks()()
{
  v1 = [v0 _accessibleSubviews];
  if (!v1)
  {
    goto LABEL_47;
  }

  v2 = v1;
  v3 = sub_21DBFA5EC();

  v4 = *(v3 + 16);
  if (!v4)
  {

    return;
  }

  v5 = 0;
  v6 = v3 + 32;
  v7 = MEMORY[0x277D84F90];
  v30 = *(v3 + 16);
  v31 = v3;
  v29 = v3 + 32;
  while (v5 < *(v3 + 16))
  {
    sub_21D0CEB98(v6 + 32 * v5, v34);
    sub_21D0D8CF0(0, &unk_280D0C330);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_5;
    }

    v8 = [v33 _accessibilityInternalTextLinks];
    if (!v8)
    {

      goto LABEL_5;
    }

    v9 = v8;
    sub_21D0D8CF0(0, &unk_27CE5F130);
    v10 = sub_21DBFA5EC();

    v11 = v10 >> 62;
    if (v10 >> 62)
    {
      v12 = sub_21DBFBD7C();
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v7 >> 62;
    if (v7 >> 62)
    {
      v14 = sub_21DBFBD7C();
    }

    else
    {
      v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v12;
    v15 = __OFADD__(v14, v12);
    v16 = v14 + v12;
    if (v15)
    {
      goto LABEL_42;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v13)
      {
LABEL_19:
        sub_21DBFBD7C();
      }

LABEL_20:
      v7 = sub_21DBFBF9C();
      v17 = v7 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_21;
    }

    if (v13)
    {
      goto LABEL_19;
    }

    v17 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v16 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_20;
    }

LABEL_21:
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v11)
    {
      v20 = sub_21DBFBD7C();
      if (v20)
      {
LABEL_23:
        if (((v19 >> 1) - v18) < v32)
        {
          goto LABEL_44;
        }

        v21 = v17 + 8 * v18 + 32;
        if (v11)
        {
          if (v20 < 1)
          {
            goto LABEL_46;
          }

          sub_21D0D0F1C(&unk_27CE5F140, &unk_27CE5FB60);
          for (i = 0; i != v20; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB60);
            v24 = sub_21D198D24(v34, i, v10);
            v26 = *v25;
            (v24)(v34, 0);
            *(v21 + 8 * i) = v26;
          }

          v22 = v32;
          if (v32 <= 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v22 = v32;
          swift_arrayInitWithCopy();

          if (v32 <= 0)
          {
LABEL_36:
            v4 = v30;
            v3 = v31;
            v6 = v29;
            goto LABEL_5;
          }
        }

        v27 = *(v17 + 16);
        v15 = __OFADD__(v27, v22);
        v28 = v27 + v22;
        if (v15)
        {
          goto LABEL_45;
        }

        *(v17 + 16) = v28;
        goto LABEL_36;
      }
    }

    else
    {
      v20 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_23;
      }
    }

    v4 = v30;
    v3 = v31;
    v6 = v29;
    if (v32 > 0)
    {
      goto LABEL_43;
    }

LABEL_5:
    if (++v5 == v4)
    {

      return;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

id sub_21D6A0BD0(void *a1)
{
  v1 = a1;
  TTRIRemindersListReminderCell._accessibilityInternalTextLinks()();

  sub_21D0D8CF0(0, &unk_27CE5F130);
  v2 = sub_21DBFA5DC();

  return v2;
}

void sub_21D6A0C44()
{
  sub_21D157444(v0 + qword_280D131E0);
  sub_21D0CF7E0(v0 + qword_280D132B8, &unk_27CE5FB20);
  sub_21D157444(v0 + qword_280D132C8[0]);
  sub_21D0CF7E0(v0 + qword_280D132A8, &unk_27CE5F240);
  sub_21D0CF7E0(v0 + qword_280D132B0, &unk_27CE62920);
  sub_21D0CF7E0(v0 + qword_280D13290, &unk_27CE5EB40);
  sub_21D470EDC(*(v0 + qword_280D131E8));
  sub_21D0CF7E0(v0 + qword_280D13268, &unk_27CE5FAD0);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_21D5C5F74(*(v0 + qword_280D13220));
  v1 = *(v0 + qword_280D13210);
}

id TTRIRemindersListReminderCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21D6A0E48(uint64_t a1)
{
  sub_21D157444(a1 + qword_280D131E0);
  sub_21D0CF7E0(a1 + qword_280D132B8, &unk_27CE5FB20);
  sub_21D157444(a1 + qword_280D132C8[0]);
  sub_21D0CF7E0(a1 + qword_280D132A8, &unk_27CE5F240);
  sub_21D0CF7E0(a1 + qword_280D132B0, &unk_27CE62920);
  sub_21D0CF7E0(a1 + qword_280D13290, &unk_27CE5EB40);
  sub_21D470EDC(*(a1 + qword_280D131E8));
  sub_21D0CF7E0(a1 + qword_280D13268, &unk_27CE5FAD0);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_21D5C5F74(*(a1 + qword_280D13220));
  v2 = *(a1 + qword_280D13210);
}

uint64_t sub_21D6A1020@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_280D132B8;
  swift_beginAccess();
  return sub_21D0D3954(v3 + v4, a1, &unk_27CE5FB20);
}

uint64_t sub_21D6A10E0(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + qword_280D132C8[0];
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D6A1150(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = qword_280D132C8[0];
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_21D6A4448;
}

uint64_t sub_21D6A11F4(uint64_t a1)
{
  v3 = *v1;
  v4 = qword_280D132B8;
  swift_beginAccess();
  sub_21D0EB8DC(a1, v3 + v4, &unk_27CE5FB20);
  swift_endAccess();
  return sub_21D68E520(1);
}

void *sub_21D6A1270()
{
  v1 = qword_280D13210;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21D6A12BC(uint64_t a1)
{
  v3 = qword_280D13210;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_21D6A1398()
{
  if ([v0 isEditing] && (objc_msgSend(v0, sel_currentStateMask) & 1) != 0)
  {
    return 0;
  }

  else
  {
    return [v0 isEditing];
  }
}

uint64_t sub_21D6A141C@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1 + qword_280D132B8;
  result = swift_beginAccess();
  v5 = *(v3 + 40);
  if (v5)
  {
    LOBYTE(v5) = *(v3 + 8);
  }

  *a1 = v5;
  return result;
}

uint64_t sub_21D6A1474()
{
  v1 = v0 + qword_280D131E0;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 144))(v0, ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_21D6A1520()
{
  v1 = v0 + qword_280D131E0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 152))(v0, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_21D6A15C0()
{
  v1 = v0 + qword_280D131E0;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 104))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

void TTRIRemindersListReminderCell.rect(for:in:)(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *a1;
  if (v7 <= 1)
  {
    if (*a1)
    {
      v59 = *&v3[qword_280D13278];
      [*&v4[qword_280D13278] bounds];
      [v4 convertRect:v59 fromCoordinateSpace:?];
      v82 = CGRectInset(v81, 0.0, -12.0);
      x = v82.origin.x;
      y = v82.origin.y;
      width = v82.size.width;
      height = v82.size.height;
      [v4 bounds];
      v86.origin.x = v64;
      v86.origin.y = v65;
      v86.size.width = v66;
      v86.size.height = v67;
      v83.origin.x = x;
      v83.origin.y = y;
      v83.size.width = width;
      v83.size.height = height;
      *&v19 = CGRectIntersection(v83, v86);
    }

    else
    {
      [v3 bounds];
    }

    goto LABEL_16;
  }

  if (v7 == 2)
  {
    v23 = *&v3[qword_280D13278];
    v24 = [v23 selectedTextRange];
    if (!v24)
    {
      v39 = 0uLL;
      v8 = 1;
      v70 = 0uLL;
      goto LABEL_17;
    }

    v10 = v24;
    v25 = [v24 end];
    [v23 caretRectForPosition_];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    [v4 convertRect:v23 fromCoordinateSpace:{v27, v29, v31, v33}];
    v74 = CGRectInset(v73, 0.0, -12.0);
    v11 = v74.origin.x;
    v12 = v74.origin.y;
    v13 = v74.size.width;
    v14 = v74.size.height;
    [v4 bounds];
    goto LABEL_10;
  }

  if (v7 != 3)
  {
    v8 = 1;
    v38 = sub_21D62E958(1u);
    v39 = 0uLL;
    if (v38)
    {
      v10 = v38;
      v40 = [v38 selectedTextRange];
      if (!v40)
      {

        v70 = 0uLL;
        v39 = 0uLL;
        goto LABEL_17;
      }

      v41 = v40;
      v42 = [v40 end];
      [v10 caretRectForPosition_];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      [v4 convertRect:v10 fromCoordinateSpace:{v44, v46, v48, v50}];
      v78 = CGRectInset(v77, 0.0, -12.0);
      v51 = v78.origin.x;
      v52 = v78.origin.y;
      v53 = v78.size.width;
      v54 = v78.size.height;
      [v4 bounds];
      v85.origin.x = v55;
      v85.origin.y = v56;
      v85.size.width = v57;
      v85.size.height = v58;
      v79.origin.x = v51;
      v79.origin.y = v52;
      v79.size.width = v53;
      v79.size.height = v54;
      v80 = CGRectIntersection(v79, v85);
      v34 = v80.origin.x;
      v35 = v80.origin.y;
      v36 = v80.size.width;
      v37 = v80.size.height;

      goto LABEL_14;
    }

LABEL_20:
    v70 = 0uLL;
    goto LABEL_17;
  }

  v8 = 1;
  v9 = sub_21D62EAA4(1u);
  if (!v9)
  {
    v39 = 0uLL;
    goto LABEL_20;
  }

  v10 = v9;
  [v9 bounds];
  [v4 convertRect:v10 fromCoordinateSpace:?];
  v72 = CGRectInset(v71, 0.0, -12.0);
  v11 = v72.origin.x;
  v12 = v72.origin.y;
  v13 = v72.size.width;
  v14 = v72.size.height;
  [v4 bounds];
LABEL_10:
  v84.origin.x = v15;
  v84.origin.y = v16;
  v84.size.width = v17;
  v84.size.height = v18;
  v75.origin.x = v11;
  v75.origin.y = v12;
  v75.size.width = v13;
  v75.size.height = v14;
  v76 = CGRectIntersection(v75, v84);
  v34 = v76.origin.x;
  v35 = v76.origin.y;
  v36 = v76.size.width;
  v37 = v76.size.height;
LABEL_14:

  v22 = v37;
  v21 = v36;
  v20 = v35;
  v19 = v34;
LABEL_16:
  [a2 convertRect:v4 fromCoordinateSpace:{v19, v20, v21, v22}];
  v8 = 0;
  *(&v39 + 1) = v68;
  *(&v70 + 1) = v69;
LABEL_17:
  *a3 = v39;
  *(a3 + 16) = v70;
  *(a3 + 32) = v8;
}

id sub_21D6A1A6C()
{
  v1 = [*(v0 + qword_280D13278) attributedText];

  return v1;
}

double sub_21D6A1AD8@<D0>(_BYTE *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  TTRIRemindersListReminderCell.rect(for:in:)(a1, a2, v6);
  result = *v6;
  v5 = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = v5;
  *(a3 + 32) = v7;
  return result;
}

double TTRIRemindersListReminderCell.visibleBoundsForDragPreview.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 _separatorFrame];
  v18.origin.x = v2;
  v18.origin.y = v4;
  v18.size.width = v6;
  v18.size.height = v8;
  v15 = CGRectIntersection(v14, v18);
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  if (!CGRectIsEmpty(v15))
  {
    v16.origin.x = v2;
    v16.origin.y = v4;
    v16.size.width = v6;
    v16.size.height = v8;
    CGRectGetMaxY(v16);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    CGRectGetMinY(v17);
    return UIEdgeInsetsInsetRect(v2, v4, v6, v8, 0.0, 0.0);
  }

  return v2;
}

double sub_21D6A1C2C()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 _separatorFrame];
  v18.origin.x = v2;
  v18.origin.y = v4;
  v18.size.width = v6;
  v18.size.height = v8;
  v15 = CGRectIntersection(v14, v18);
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  if (!CGRectIsEmpty(v15))
  {
    v16.origin.x = v2;
    v16.origin.y = v4;
    v16.size.width = v6;
    v16.size.height = v8;
    CGRectGetMaxY(v16);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    CGRectGetMinY(v17);
    return UIEdgeInsetsInsetRect(v2, v4, v6, v8, 0.0, 0.0);
  }

  return v2;
}

uint64_t TTRIRemindersListReminderCell.cellTitleDidUpdateAutoCompleteReminderSuggestions(_:query:suggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_21DBFA85C();
  v12 = sub_21DBFA89C();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  sub_21DBFA84C();
  v13 = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v14 = sub_21DBFA83C();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  v15[5] = a3;
  v15[6] = a4;
  v15[7] = a5;
  sub_21D1B5178(0, 0, v11, &unk_21DC22128, v15);
}

uint64_t sub_21D6A1EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_21DBFA84C();
  v7[6] = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D6A1F94, v9, v8);
}

uint64_t sub_21D6A1F94()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];

  sub_21D698618(v3, v2, v1);
  v4 = v0[1];

  return v4();
}

uint64_t TTRIRemindersListReminderCell.handleIfNecessary(_:for:)(uint64_t a1)
{
  v2 = *(v1 + qword_280D13220);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  TTRIRemindersListCellAutoCompleteSuggestionsStackView.handleIfNecessary(_:for:)(a1);
  v6 = v5;

  return v6 & 1;
}

uint64_t sub_21D6A20DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  sub_21DBFA85C();
  v12 = sub_21DBFA89C();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  sub_21DBFA84C();
  v13 = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v14 = sub_21DBFA83C();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  v15[5] = a3;
  v15[6] = a4;
  v15[7] = a5;
  sub_21D1B5178(0, 0, v11, &unk_21DC223F0, v15);
}

uint64_t sub_21D6A2238(uint64_t a1)
{
  v2 = *(v1 + qword_280D13220);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  TTRIRemindersListCellAutoCompleteSuggestionsStackView.handleIfNecessary(_:for:)(a1);
  v6 = v5;

  return v6 & 1;
}

void *TTRIRemindersListReminderCell.nextKeyViewForCellNotes(_:)()
{
  v1 = *(v0 + qword_280D13278);
  v2 = v1;
  return v1;
}

void *sub_21D6A22FC()
{
  v1 = *(v0 + qword_280D13278);
  v2 = v1;
  return v1;
}

uint64_t sub_21D6A2360(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_280D131E0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 48))(v2, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D6A23F8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_280D131E0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 32))(v2, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIRemindersListReminderCell.largeImageAttachmentsView(_:didTapImage:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + qword_280D131E0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 64))(v2, a2, a1, &protocol witness table for TTRIRemindersListLargeImageAttachmentsView, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D6A255C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = v5 + qword_280D131E0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 64))(v5, a2, a1, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIRemindersListReminderCell._scribbleInteraction(_:willBeginWritingInElement:)()
{
  v1 = v0 + qword_280D131E0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 88))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIRemindersListReminderCell._scribbleInteraction(_:didFinishWritingInElement:)()
{
  v1 = v0 + qword_280D131E0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 96))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIRemindersListReminderCell.autoCompleteReminderSuggestionTapped(suggestion:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = &v2[qword_280D132A8];
  result = swift_beginAccess();
  if (*v7)
  {
    v9 = *(v7 + 1);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 56);
    swift_unknownObjectRetain();
    v11(a1, ObjectType, v9);
    v12 = sub_21DBFA89C();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    sub_21DBFA84C();
    v13 = v2;
    v14 = sub_21DBFA83C();
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = v13;
    sub_21D1B5178(0, 0, v6, &unk_21DC22138, v15);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D6A2A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21DBFA84C();
  *(v4 + 24) = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D6A2ACC, v6, v5);
}

uint64_t sub_21D6A2ACC()
{

  sub_21D698618(0, 0, MEMORY[0x277D84F90]);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D6A2B80()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[qword_280D132C8[0]];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 1);
    v5 = swift_getObjectType();
    v8[3] = ObjectType;
    v8[4] = &protocol witness table for TTRIRemindersListReminderCell;
    v8[0] = v0;
    v6 = *(v4 + 8);
    v7 = v0;
    v6(v8, v5, v4);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v8);
  }

  return result;
}

uint64_t sub_21D6A2C44(char *a1)
{
  v2 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(&a1[v2], &aBlock, &unk_27CE5FAD0);
  *&v29[10] = *&v27[10];
  v28 = aBlock;
  *v29 = *v27;
  if (v27[25])
  {
    if (v27[25] != 1)
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      return sub_21D0CF7E0(&v30, &unk_27CE5FAE0);
    }

    v30 = aBlock;
    v31 = *v27;
    v32 = *&v27[16];
    v3 = *&v27[8];
    if (!*&v27[8])
    {
      return sub_21D0CF7E0(&v30, &unk_27CE5FAE0);
    }
  }

  else
  {
    sub_21D0D0FD0(&v28, &v30);
    v3 = *(&v31 + 1);
    if (!*(&v31 + 1))
    {
      return sub_21D0CF7E0(&v30, &unk_27CE5FAE0);
    }
  }

  v4 = v32;
  v5 = __swift_project_boxed_opaque_existential_1(&v30, v3);
  v6 = *(v3 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  (*(v6 + 16))(v9, v7);
  sub_21D0CF7E0(&v30, &unk_27CE5FAE0);
  v10 = (*(v4 + 120))(v3, v4);
  result = (*(v6 + 8))(v9, v3);
  if (!v10)
  {
    return result;
  }

  v12 = *(v10 + 16);

  if (!v12)
  {
    return result;
  }

  sub_21D0D3954(&a1[v2], &aBlock, &unk_27CE5FAD0);
  *&v29[10] = *&v27[10];
  v28 = aBlock;
  *v29 = *v27;
  if (v27[25])
  {
    if (v27[25] == 1)
    {
      v30 = aBlock;
      v31 = *v27;
      v32 = *&v27[16];
      v13 = *&v27[8];
      if (!*&v27[8])
      {
        return sub_21D0CF7E0(&v30, &unk_27CE5FAE0);
      }

      goto LABEL_16;
    }

    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    return sub_21D0CF7E0(&v30, &unk_27CE5FAE0);
  }

  sub_21D0D0FD0(&v28, &v30);
  v13 = *(&v31 + 1);
  if (!*(&v31 + 1))
  {
    return sub_21D0CF7E0(&v30, &unk_27CE5FAE0);
  }

LABEL_16:
  v14 = v32;
  v15 = __swift_project_boxed_opaque_existential_1(&v30, v13);
  v16 = *(v13 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v27[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  (*(v16 + 16))(v19, v17);
  sub_21D0CF7E0(&v30, &unk_27CE5FAE0);
  v20 = (*(v14 + 128))(v13, v14);
  result = (*(v16 + 8))(v19, v13);
  if (v20)
  {
    v21 = *(v20 + 16);

    if (v21)
    {
      v22 = *&a1[qword_280D13DD0];
      v23 = swift_allocObject();
      *(v23 + 16) = a1;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_21D6A4440;
      *(v24 + 24) = v23;
      *&v27[16] = sub_21D0E622C;
      *&v27[24] = v24;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *v27 = sub_21D0E6204;
      *&v27[8] = &block_descriptor_120;
      v25 = _Block_copy(&aBlock);
      a1;

      [v22 performBatchUpdates_];
      _Block_release(v25);
      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

      if (v22)
      {
        __break(1u);
      }

      else
      {
        sub_21D695350();
      }
    }
  }

  return result;
}

void sub_21D6A3118(uint64_t a1)
{
  v2 = qword_280D13268;
  swift_beginAccess();
  sub_21D0D3954(a1 + v2, &v18, &unk_27CE5FAD0);
  *&v21[10] = *&v19[10];
  v20 = v18;
  *v21 = *v19;
  if (!v19[25])
  {
    sub_21D0D0FD0(&v20, &v22);
    v3 = *(&v23 + 1);
    if (*(&v23 + 1))
    {
      goto LABEL_6;
    }

LABEL_11:
    sub_21D0CF7E0(&v22, &unk_27CE5FAE0);
    return;
  }

  if (v19[25] != 1)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    goto LABEL_11;
  }

  v22 = v18;
  v23 = *v19;
  v24 = *&v19[16];
  v3 = *&v19[8];
  if (!*&v19[8])
  {
    goto LABEL_11;
  }

LABEL_6:
  v4 = v24;
  v5 = __swift_project_boxed_opaque_existential_1(&v22, v3);
  v6 = *(v3 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  sub_21D0CF7E0(&v22, &unk_27CE5FAE0);
  (*(v4 + 104))(&v18, v3, v4);
  (*(v6 + 8))(v9, v3);
  v10 = *&v19[8];
  if (*&v19[8])
  {
    v11 = v18;
    v12 = *v19;
    v13 = sub_21D62AAE8(5);
    if (v13)
    {
      v14 = v13;
      v15 = *(v13 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_imageBackgroundColor);
      *(v13 + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListCellLocationView_imageBackgroundColor) = *(&v11 + 1);
      v16 = *(&v11 + 1);

      sub_21D6B1DD0();
    }

    sub_21D4B94BC(v11, *(&v11 + 1), v12, v10);
  }
}

void _s15RemindersUICore29TTRIRemindersListReminderCellC15reuseIdentifierACSgSSSg_tcfc_0()
{
  *(v0 + qword_280D131E0 + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = v0 + qword_280D132B8;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  *(v0 + qword_280D132C8[0] + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = (v0 + qword_280D132A8);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v3 = (v0 + qword_280D132B0);
  v3[1] = 0u;
  v3[2] = 0u;
  *v3 = 0u;
  v4 = (v0 + qword_280D13290);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  *(v0 + qword_280D131F8) = 0;
  v5 = v0 + qword_280D131E8;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = v0 + qword_280D13268;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  *(v6 + 41) = 1;
  *(v0 + qword_280D13250) = 0;
  *(v0 + qword_280D13238) = 0;
  *(v0 + qword_280D13240) = 0;
  v7 = qword_280D13208;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler()) init];
  v8 = (v0 + qword_280D13220);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + qword_280D13298) = xmmword_21DC1F990;
  *(v0 + qword_27CE5FB30) = 0;
  *(v0 + qword_27CE5FB38) = 0;
  *(v0 + qword_280D131F0) = 0;
  *(v0 + qword_280D13228) = 0;
  *(v0 + qword_280D13210) = 0;
  sub_21DBFC31C();
  __break(1u);
}

void _s15RemindersUICore29TTRIRemindersListReminderCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + qword_280D131E0 + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = v0 + qword_280D132B8;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  *(v0 + qword_280D132C8[0] + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = (v0 + qword_280D132A8);
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v3 = (v0 + qword_280D132B0);
  v3[1] = 0u;
  v3[2] = 0u;
  *v3 = 0u;
  v4 = (v0 + qword_280D13290);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  *(v0 + qword_280D131F8) = 0;
  v5 = v0 + qword_280D131E8;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = v0 + qword_280D13268;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  *(v6 + 41) = 1;
  *(v0 + qword_280D13250) = 0;
  *(v0 + qword_280D13238) = 0;
  *(v0 + qword_280D13240) = 0;
  v7 = qword_280D13208;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for TTRIUnsupportedTextDropHandler()) init];
  v8 = (v0 + qword_280D13220);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + qword_280D13298) = xmmword_21DC1F990;
  *(v0 + qword_27CE5FB30) = 0;
  *(v0 + qword_27CE5FB38) = 0;
  *(v0 + qword_280D131F0) = 0;
  *(v0 + qword_280D13228) = 0;
  *(v0 + qword_280D13210) = 0;
  sub_21DBFC31C();
  __break(1u);
}

id sub_21D6A375C()
{
  v1 = *(v0 + 16);
  sub_21D68E520(1);

  return [v1 layoutIfNeeded];
}

id sub_21D6A37A0()
{
  v1 = *(v0 + 16);
  sub_21D694A04();
  sub_21D6951F8();

  return [v1 layoutIfNeeded];
}

uint64_t sub_21D6A3814(uint64_t a1)
{
  v3 = *(sub_21DBF54CC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_21D69FF18(a1, v4, v5);
}

uint64_t sub_21D6A38B0(uint64_t a1)
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
  v10[1] = sub_21D0F00D0;

  return sub_21D6A1EF8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21D6A3984(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D1B795C;

  return sub_21D6A2A34(a1, v4, v5, v6);
}

uint64_t keypath_get_91Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  return sub_21D0D3954(v6 + v7, a4, a3);
}

uint64_t type metadata accessor for TTRIRemindersListReminderCell()
{
  result = qword_280D131C8;
  if (!qword_280D131C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D6A417C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D6A41CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D6A4234(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D6A429C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21D6A444C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates;
  if (v2[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates])
  {
    if (qword_280D0F140 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_280D0F148);
    oslog = sub_21DBF84AC();
    v5 = sub_21DBFAECC();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v5, "performSubviewUpdates cannot be nested", v6, 2u);
      MEMORY[0x223D46520](v6, -1, -1);
    }
  }

  else
  {
    v2[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates] = 1;
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = a2;
    v9[4] = v2;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_21D6A56C0;
    *(v10 + 24) = v9;
    aBlock[4] = sub_21D0E6070;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_74;
    v11 = _Block_copy(aBlock);
    v12 = v2;

    [v12 performBatchUpdates_];
    _Block_release(v11);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }

    else
    {
      v2[v3] = 0;
    }
  }
}

void sub_21D6A46B0(unsigned __int8 a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates))
  {
    goto LABEL_6;
  }

  if (qword_280D0F140 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_280D0F148);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "makeHidden called outside of performSubviewUpdates", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }

LABEL_6:
    v8 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
    swift_beginAccess();
    v9 = *(v2 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v8) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_21D256D30(v9);
      *(v2 + v8) = v9;
    }

    if (v9[2] > a1)
    {
      break;
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

  v11 = &v9[4 * a1];
  v12 = v11[4];
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v2 + v8) = v9;
  swift_endAccess();
  sub_21D576B08(v12);
}

uint64_t sub_21D6A4844()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  result = sub_21DBF8E0C();
  if (v4)
  {
    v6 = 0;
    v7 = -v4;
    do
    {
      v8 = *(v2 + 16);
      v9 = v8 >= v6;
      v10 = v8 - v6;
      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = (v2 + 32 + 32 * v6++);
      while (1)
      {
        if (!v11)
        {
          __break(1u);
          return result;
        }

        v13 = *v12;
        if (*v12)
        {
          type metadata accessor for TTRIRemindersListReminderCellLinkView();
          result = swift_dynamicCastClass();
          if (result)
          {
            break;
          }
        }

        --v11;
        v12 += 4;
        ++v6;
        if (v7 + v6 == 1)
        {
          goto LABEL_14;
        }
      }

      MEMORY[0x223D42D80](v13);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      result = sub_21DBFA6CC();
      v3 = v14;
    }

    while (v7 + v6);
  }

LABEL_14:

  return v3;
}

uint64_t sub_21D6A4994()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F148);
  v1 = __swift_project_value_buffer(v0, qword_280D0F148);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D6A4A5C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
  swift_beginAccess();
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0.0;
  v7 = 0.0;
  do
  {
    v9 = *&v0[v1];
    if (v5 >= *(v9 + 16))
    {
      __break(1u);
      return;
    }

    v10 = (v9 + v2);
    v11 = *(v10 + 4);
    if (v11)
    {
      v12 = *(v10 + 5);
      v13 = v10[6];
      v14 = v10[7];
      v8 = v11;
      if ([v8 isHidden])
      {
        goto LABEL_3;
      }

      if (v4)
      {
        if (!v3)
        {
          goto LABEL_2;
        }
      }

      else
      {
        v15 = v8;
        v4 = v11;
        v7 = v13;
        if (!v3)
        {
LABEL_2:
          [v0 setAlignment:v12 forView:v8 inAxis:0];
          v8 = v3;
          v3 = v11;
          v6 = v14;
LABEL_3:

          goto LABEL_4;
        }
      }

      [v0 setCustomSpacing:v3 afterView:v13];
      goto LABEL_2;
    }

LABEL_4:
    ++v5;
    v2 += 32;
  }

  while (v5 != 11);
  v16 = *MEMORY[0x277D75060];
  v17 = *(MEMORY[0x277D75060] + 16);
  if (v4)
  {
    if (v3)
    {
      v17 = v6 - *&v0[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_superviewBottomLayoutMarginToCompensate];
      v16 = v7;
    }
  }

  [v0 setDirectionalLayoutMargins_];
}

void sub_21D6A4BE0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
  v39 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
  swift_beginAccess();
  swift_beginAccess();
  v3 = 0;
  v4 = 0;
  v5 = 7;
  __asm { FMOV            V0.2D, #-1.0 }

  v36 = _Q0;
  v37 = v2;
  v38 = v1;
  do
  {
    v11 = *&v1[v39];
    if (v4 >= *(v11 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v12 = *&v1[v2];
    if (v4 >= v12[2])
    {
      goto LABEL_50;
    }

    v40 = *(v11 + v5 * 8 - 24);
    v41 = *&v12[v5 - 1];
    v42 = *&v12[v5 - 3];
    swift_beginAccess();
    v13 = v40;
    v14 = v40;
    sub_21D15751C(v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v1[v2] = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_21D256D30(v12);
      *&v1[v2] = v12;
    }

    if (v4 >= v12[2])
    {
      goto LABEL_51;
    }

    v16 = v3;
    v17 = &v12[v5];
    v18 = v12[v5 - 3];
    *(v17 - 3) = 1;
    *(v17 - 2) = 0;
    *(v17 - 1) = 0;
    *v17 = 0;
    *&v1[v2] = v12;
    swift_endAccess();
    sub_21D576B08(v18);
    if (v42)
    {
      if (v42 != 1)
      {
        v1 = v38;
        swift_beginAccess();
        v3 = *&v38[v39];
        sub_21D15751C(v42);
        v24 = v42;
        v25 = swift_isUniquelyReferenced_nonNull_native();
        *&v38[v39] = v3;
        if ((v25 & 1) == 0)
        {
          v3 = sub_21D256D58(v3);
          *&v38[v39] = v3;
        }

        if (v4 >= v3[2])
        {
          goto LABEL_52;
        }

        v26 = &v3[v5];
        v27 = v3[v5 - 3];
        *(v26 - 1) = v41;
        *(v26 - 3) = v42;
        *&v38[v39] = v3;
        swift_endAccess();

        if (v40)
        {
          v3 = v16;
          v2 = v37;
          if (v40 == v42)
          {
            [v14 setHidden_];
            sub_21D576B08(v40);

            goto LABEL_34;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_58;
          }

          [v38 ttr:v16 replaceArrangedSubviewAtIndex:v24 withView:?];
          [v14 removeFromSuperview];
          sub_21D576B08(v42);
        }

        else
        {
          v2 = v37;
          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_57;
          }

          v3 = v16;
          [v38 ttr:v24 insertArrangedSubview:v16 atIndex:?];
          sub_21D576B08(v42);
        }

        v13 = v42;
LABEL_34:
        sub_21D576B08(v13);
        _VF = __OFADD__(v3, 1);
        v3 = (v3 + 1);
        if (_VF)
        {
          goto LABEL_53;
        }

        goto LABEL_3;
      }

      v3 = v16;
      v1 = v38;
      if (!v40)
      {
        goto LABEL_2;
      }

      v3 = (v16 + 1);
      v2 = v37;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }
    }

    else
    {
      v3 = v16;
      if (v40)
      {
        v19 = v14;
        [v19 setHidden_];
        v1 = v38;
        swift_beginAccess();
        v20 = *&v38[v39];
        v21 = swift_isUniquelyReferenced_nonNull_native();
        *&v38[v39] = v20;
        if ((v21 & 1) == 0)
        {
          v20 = sub_21D256D58(v20);
          *&v38[v39] = v20;
        }

        if (v4 >= v20[2])
        {
          goto LABEL_54;
        }

        v22 = &v20[v5];
        v23 = v20[v5 - 3];
        *(v22 - 3) = v40;
        *(v22 - 1) = v36;
        *&v38[v39] = v20;
        swift_endAccess();

        sub_21D576B08(0);
        v3 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          goto LABEL_56;
        }

LABEL_2:
        v2 = v37;
        goto LABEL_3;
      }

      sub_21D576B08(0);
      v2 = v37;
      v1 = v38;
    }

LABEL_3:
    v5 += 4;
    ++v4;
  }

  while (v5 != 51);
  v28 = [v1 arrangedSubviews];
  if (v28)
  {
    v29 = v28;
    sub_21D114EC8();
    v30 = sub_21DBFA5EC();

    if (!(v30 >> 62))
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_40;
    }

LABEL_59:
    v31 = sub_21DBFBD7C();
LABEL_40:

    if (v3 == v31)
    {
      goto LABEL_48;
    }

    goto LABEL_43;
  }

  if (!v3)
  {
    goto LABEL_48;
  }

LABEL_43:
  if (qword_280D0F140 != -1)
  {
    swift_once();
  }

  v32 = sub_21DBF84BC();
  __swift_project_value_buffer(v32, qword_280D0F148);
  v33 = sub_21DBF84AC();
  v34 = sub_21DBFAECC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_21D0C9000, v33, v34, "arrangedSubviews gets mutated unexpectedly", v35, 2u);
    MEMORY[0x223D46520](v35, -1, -1);
  }

LABEL_48:
  sub_21D6A4A5C();
}

id sub_21D6A529C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_superviewBottomLayoutMarginToCompensate] = 0;
  v4 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
  *&v1[v4] = sub_21D442368(0, 0, 0, 0, 11);
  v5 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
  *&v1[v5] = sub_21D442424(1, 0, 0, 0, 11);
  v1[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates] = 0;
  if (a1)
  {
    sub_21D114EC8();
    v6 = sub_21DBFA5DC();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithArrangedSubviews_, v6);

  return v7;
}

id sub_21D6A53D0(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_superviewBottomLayoutMarginToCompensate] = 0;
  v4 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewInfos;
  *&v1[v4] = sub_21D442368(0, 0, 0, 0, 11);
  v5 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_subviewUpdates;
  *&v1[v5] = sub_21D442424(1, 0, 0, 0, 11);
  v1[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListCellContentStackView_isPerformingSubviewUpdates] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_21D6A54C8()
{
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListCellContentStackView.SubviewUpdate(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for TTRIRemindersListCellContentStackView.SubviewUpdate(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

void *sub_21D6A5620(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[2] = 0;
    result[3] = 0;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_21D6A5654(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

unint64_t TTRIReminderTitleTextViewSuggestions.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  result = sub_21D177598(MEMORY[0x277D84F90]);
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t TTRIReminderTitleTextViewSuggestions.init(textEditingSuggestions:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v22 = a2;
    v26 = MEMORY[0x277D84F90];
    v23 = v4;
    sub_21DBFC01C();
    v21 = a1;
    v12 = a1 + 32;
    v13 = (v5 + 16);
    v14 = (v5 + 8);
    v15 = MEMORY[0x277D84F98];
    do
    {
      sub_21DBF56AC();
      v16 = v23;
      (*v13)(v7, v10, v23);
      sub_21D1D9BE4(v12, v25);
      v17 = objc_allocWithZone(type metadata accessor for TTRIReminderTitleTextViewCustomTextSuggestion());
      TTRIReminderTitleTextViewCustomTextSuggestion.init(textEditingSuggestionUUID:suggestion:)(v7, v25);
      sub_21D1D9BE4(v12, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v15;
      sub_21D4789AC(v25, v10, isUniquelyReferenced_nonNull_native);
      v15 = v24;
      (*v14)(v10, v16);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v12 += 192;
      --v11;
    }

    while (v11);

    v20 = v26;
    a2 = v22;
  }

  else
  {

    v15 = MEMORY[0x277D84F98];
    v20 = MEMORY[0x277D84F90];
  }

  *a2 = v20;
  a2[1] = v15;
  return result;
}

double TTRIReminderTitleTextViewSuggestions.textEditingSuggestion(for:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 8);
  type metadata accessor for TTRIReminderTitleTextViewCustomTextSuggestion();
  v6 = swift_dynamicCastClass();
  if (!v6 || !*(v5 + 16))
  {
    goto LABEL_8;
  }

  v7 = v6;
  v8 = OBJC_IVAR___TTRIReminderTitleTextViewCustomTextSuggestion_textEditingSuggestionUUID;
  v12 = a1;
  v9 = sub_21D0F55D0(v7 + v8);
  if ((v10 & 1) == 0)
  {

LABEL_8:
    result = 0.0;
    a2[10] = 0u;
    a2[11] = 0u;
    a2[8] = 0u;
    a2[9] = 0u;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  sub_21D1D9BE4(*(v5 + 56) + 192 * v9, a2);

  return result;
}

uint64_t TTRIReminderTitleTextViewCustomTextSuggestion.textEditingSuggestionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___TTRIReminderTitleTextViewCustomTextSuggestion_textEditingSuggestionUUID;
  v4 = sub_21DBF56BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id TTRIReminderTitleTextViewCustomTextSuggestion.init(textEditingSuggestionUUID:suggestion:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___TTRIReminderTitleTextViewCustomTextSuggestion_textEditingSuggestionUUID;
  v7 = sub_21DBF56BC();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a1, v7);
  v27.receiver = v2;
  v27.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v27, sel_init);
  v10 = *(a2 + 32);
  v11 = v9;
  v10();
  v12 = sub_21DBFA12C();

  [v11 setHeaderText_];

  v13 = (*(a2 + 48))();
  v14 = [v13 string];

  if (!v14)
  {
    sub_21DBFA16C();
    v14 = sub_21DBFA12C();
  }

  [v11 setDisplayText_];

  (*(a2 + 80))(&v24);
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v21 = v24;
  v22 = v25;
  LOBYTE(v23) = v26;
  v18 = sub_21D6A5D54();
  if (v18)
  {
    v19 = v18;
    sub_21D19BAFC(v15, v16, v17);
    [v11 setImage_];

    (*(v8 + 8))(a1, v7);
    sub_21D1D9C40(a2);
  }

  else
  {
    (*(v8 + 8))(a1, v7);
    sub_21D1D9C40(a2);
    sub_21D19BAFC(v15, v16, v17);
  }

  return v11;
}

id sub_21D6A5D54()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 1)
  {
    if (*(v0 + 16))
    {
LABEL_11:
      v5 = sub_21DBFA12C();
      v1 = [objc_opt_self() _systemImageNamed_];

      return v1;
    }

    v3 = v1;
  }

  else
  {
    if (v2 == 2)
    {
      v4 = REMReminderPriorityLevelForPriority();
      if (v4 == 3 || v4 == 2 || v4 == 1)
      {
        goto LABEL_11;
      }
    }

    else if (v2 == 3)
    {
      goto LABEL_11;
    }

    return 0;
  }

  return v1;
}

id TTRIReminderTitleTextViewCustomTextSuggestion.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRIReminderTitleTextViewCustomTextSuggestion.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_21DBF56BC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE589B8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DC08D00;
  *(v12 + 32) = sub_21D6A6600();
  sub_21DBFB5EC();

  sub_21D0DB414(v19, v17);
  if (!v18)
  {
    sub_21D0CF7E0(v19, &qword_27CE5C690);

    sub_21D0CF7E0(v17, &qword_27CE5C690);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_5;
  }

  v13 = swift_dynamicCast();
  (*(v9 + 56))(v7, v13 ^ 1u, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21D0CF7E0(v19, &qword_27CE5C690);

LABEL_5:
    sub_21D0CF7E0(v7, &qword_27CE58370);
    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  (*(v9 + 16))(v2 + OBJC_IVAR___TTRIReminderTitleTextViewCustomTextSuggestion_textEditingSuggestionUUID, v11, v8);
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v16, sel_initWithCoder_, a1);

  (*(v9 + 8))(v11, v8);
  sub_21D0CF7E0(v19, &qword_27CE5C690);
  return v15;
}

Swift::Void __swiftcall TTRIReminderTitleTextViewCustomTextSuggestion.encode(with:)(NSCoder with)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_encodeWithCoder_, with.super.isa);
  v3 = sub_21DBF566C();
  v4 = sub_21DBFA12C();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

id TTRIReminderTitleTextViewCustomTextSuggestion.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIReminderTitleTextViewCustomTextSuggestion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TTRIReminderTitleTextViewCustomTextSuggestion()
{
  result = qword_280D16EA8;
  if (!qword_280D16EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D6A6600()
{
  result = qword_27CE5FBB8;
  if (!qword_27CE5FBB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE5FBB8);
  }

  return result;
}

uint64_t sub_21D6A6664()
{
  result = sub_21DBF56BC();
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

id TTRIRemindersListLargeImageAttachmentsView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t TTRIRemindersListLargeImageAttachmentsView.ViewModel.init(image:attachmentID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void TTRIRemindersListLargeImageAttachmentsView.viewModels.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_viewModels;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = sub_21DBF8E0C();
  sub_21D1D86BC(v5, v4);
  LOBYTE(v3) = v6;

  if ((v3 & 1) == 0)
  {
    sub_21D6A6BE4();
    sub_21D6A6DA0();
  }
}

id TTRIRemindersListLargeImageAttachmentsView.fixedWidth.setter(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  v6 = &v2[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_fixedWidth];
  result = swift_beginAccess();
  v8 = *v6;
  v9 = *(v6 + 8);
  *v6 = *&a1;
  *(v6 + 8) = v5;
  if (a2)
  {
    if (v9)
    {
      return result;
    }

    return [v2 invalidateIntrinsicContentSize];
  }

  if (v8 != *&a1)
  {
    LOBYTE(v9) = 1;
  }

  if (v9)
  {
    return [v2 invalidateIntrinsicContentSize];
  }

  return result;
}

uint64_t sub_21D6A68B0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5FBC0);
  v1 = __swift_project_value_buffer(v0, qword_27CE5FBC0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRIRemindersListLargeImageAttachmentsView.ViewModel.image.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRIRemindersListLargeImageAttachmentsView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRIRemindersListLargeImageAttachmentsView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

void sub_21D6A6B54(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_viewModels;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  swift_bridgeObjectRetain_n();
  sub_21D1D86BC(v2, v5);
  LOBYTE(v4) = v6;

  if ((v4 & 1) == 0)
  {
    sub_21D6A6BE4();
    sub_21D6A6DA0();
  }
}

uint64_t sub_21D6A6BE4()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_viewModels;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = *(v2 + 16);
  if (v3 >= 4)
  {
    v3 = 4;
  }

  v4 = (2 * v3) | 1;
  v5 = *&v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_grid];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v2 + 32;
  v6[4] = 0;
  v6[5] = v4;
  v6[6] = v0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21D6A9F64;
  *(v7 + 24) = v6;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_75;
  v8 = _Block_copy(aBlock);
  swift_bridgeObjectRetain_n();
  v9 = v0;

  [v5 performBatchUpdates_];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_21D6A6DA0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_viewModels;
  swift_beginAccess();
  v2 = &v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_totalCountViews];
  v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_totalCountViews];
  if (*(*&v0[v1] + 16) < 5uLL)
  {
    if (v3)
    {
      [v3 removeFromSuperview];
      v3 = *v2;
    }

    v5 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    sub_21D0D9834(v3, v5);
  }

  else
  {
    if (v3)
    {
      v4 = v2[1];
    }

    else
    {
      v6 = sub_21D6A8880(v0);
      v4 = v7;
    }

    v8 = *(*&v0[v1] + 16);
    v9 = qword_280D1BAA8;
    v10 = *&v4[OBJC_IVAR____TtC15RemindersUICoreP33_34792CABF8531B98D43671B0DD1043EB8BlurView_label];
    if (v9 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D83B88];
    *(v11 + 16) = xmmword_21DC08D00;
    v13 = MEMORY[0x277D83C10];
    *(v11 + 56) = v12;
    *(v11 + 64) = v13;
    *(v11 + 32) = v8;
    sub_21DBFA13C();

    v14 = sub_21DBFA12C();

    [v10 setText_];
  }
}

void (*TTRIRemindersListLargeImageAttachmentsView.viewModels.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_viewModels;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D6A7058;
}

void sub_21D6A7058(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);
  v7 = sub_21DBF8E0C();
  if (a2)
  {
    v8 = sub_21DBF8E0C();
    sub_21D1D86BC(v8, v6);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      sub_21D6A6BE4();
      sub_21D6A6DA0();
    }
  }

  else
  {
    sub_21D1D86BC(v7, v6);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      sub_21D6A6BE4();
      sub_21D6A6DA0();
    }
  }

  free(v3);
}

uint64_t TTRIRemindersListLargeImageAttachmentsView.fixedWidth.getter()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_fixedWidth;
  swift_beginAccess();
  return *v1;
}

void (*TTRIRemindersListLargeImageAttachmentsView.fixedWidth.modify(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_fixedWidth;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_21D6A7214;
}

void sub_21D6A7214(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v3 = ((*a1)[6] + (*a1)[5]);
  v4 = *(*a1 + 32);
  v5 = *v3;
  v6 = *(v3 + 8);
  *v3 = v2;
  *(v3 + 8) = v4;
  if (v4)
  {
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v5 == v2)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  [v1[5] invalidateIntrinsicContentSize];
LABEL_9:

  free(v1);
}

double TTRIRemindersListLargeImageAttachmentsView.cornerRadius.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21D6A72DC(double *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius;
  swift_beginAccess();
  v5.i64[0] = *(v3 + v4);
  *(v3 + v4) = v2;
  v6.n128_u64[0] = 0x3E50000000000000;
  if ((sub_21D110D14(v5, v6, v2, v7) & 1) == 0)
  {
    sub_21D6A73B8();
  }
}

void TTRIRemindersListLargeImageAttachmentsView.cornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius;
  swift_beginAccess();
  v4.i64[0] = *(v1 + v3);
  *(v1 + v3) = a1;
  v5.n128_u64[0] = 0x3E50000000000000;
  if ((sub_21D110D14(v4, v5, a1, v6) & 1) == 0)
  {
    sub_21D6A73B8();
  }
}

void sub_21D6A73B8()
{
  v6 = v0;
  v7 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_imageViews;
  swift_beginAccess();
  v8 = *(v0 + v7);
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 <= 2)
    {
      goto LABEL_3;
    }

LABEL_17:
    if (v9 != 3)
    {
      if (v9 != 4)
      {
        return;
      }

      swift_beginAccess();
      v21 = *(v0 + v7);
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x223D44740](0);
      }

      else
      {
        if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v22 = *(v21 + 32);
      }

      v23 = v22;
      swift_endAccess();
      v1 = &selRef_keyboardType;
      v24 = [v23 layer];
      v2 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius;
      swift_beginAccess();
      v3 = &selRef_setAttributedText_;
      [v24 setCornerRadius_];
      v4 = &selRef__setContentViewMarginType_;
      v5 = &selRef_setQueryFragment_;
      [v24 setMaskedCorners_];

      swift_beginAccess();
      v25 = *(v0 + v7);
      if ((v25 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x223D44740](1);
      }

      else
      {
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v26 = *(v25 + 40);
      }

      v27 = v26;
      swift_endAccess();
      v28 = [v27 layer];
      [v28 setCornerRadius_];
      [v28 setMaskedCorners_];

      swift_beginAccess();
      v29 = *(v0 + v7);
      if ((v29 & 0xC000000000000001) != 0)
      {
        goto LABEL_57;
      }

      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v30 = *(v29 + 48);
LABEL_28:
        v31 = v30;
        swift_endAccess();
        v32 = [v31 v1[387]];
        [v32 v3[18]];
        [v32 v5[250]];

        swift_beginAccess();
        v33 = *(v0 + v7);
        if ((v33 & 0xC000000000000001) != 0)
        {
LABEL_62:
          v34 = MEMORY[0x223D44740](3);
          goto LABEL_31;
        }

        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
        {
          v34 = *(v33 + 56);
LABEL_31:
          v16 = v34;
          swift_endAccess();
          v35 = [v16 v1[387]];
LABEL_42:
          v17 = v35;
          [v17 v3[18]];
          goto LABEL_43;
        }

LABEL_65:
        __break(1u);
        return;
      }

      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    swift_beginAccess();
    v36 = *(v0 + v7);
    if ((v36 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x223D44740](0);
    }

    else
    {
      if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_56:
        __break(1u);
LABEL_57:
        v30 = MEMORY[0x223D44740](2);
        goto LABEL_28;
      }

      v37 = *(v36 + 32);
    }

    v38 = v37;
    swift_endAccess();
    v1 = &selRef_keyboardType;
    v39 = [v38 layer];
    v2 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius;
    swift_beginAccess();
    v3 = &selRef_setAttributedText_;
    [v39 setCornerRadius_];
    v4 = &selRef__setContentViewMarginType_;
    v5 = &selRef_setQueryFragment_;
    [v39 setMaskedCorners_];

    swift_beginAccess();
    v40 = *(v0 + v7);
    if ((v40 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x223D44740](1);
    }

    else
    {
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v41 = *(v40 + 40);
    }

    v42 = v41;
    swift_endAccess();
    v43 = [v42 layer];
    [v43 setCornerRadius_];
    [v43 setMaskedCorners_];

    swift_beginAccess();
    v44 = *(v0 + v7);
    if ((v44 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x223D44740](2);
    }

    else
    {
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_64;
      }

      v45 = *(v44 + 48);
    }

    v16 = v45;
    swift_endAccess();
    v35 = [v16 layer];
    goto LABEL_42;
  }

  v9 = sub_21DBFBD7C();
  if (v9 > 2)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v9 != 1)
  {
    if (v9 != 2)
    {
      return;
    }

    swift_beginAccess();
    v10 = *(v0 + v7);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x223D44740](0);
      goto LABEL_8;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(v10 + 32);
LABEL_8:
      v12 = v11;
      swift_endAccess();
      v1 = &selRef_keyboardType;
      v13 = [v12 layer];
      v2 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius;
      swift_beginAccess();
      v3 = &selRef_setAttributedText_;
      [v13 setCornerRadius_];
      v4 = &selRef__setContentViewMarginType_;
      v5 = &selRef_setQueryFragment_;
      [v13 setMaskedCorners_];

      swift_beginAccess();
      v14 = *(v0 + v7);
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D44740](1);
        goto LABEL_11;
      }

      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
      {
        v15 = *(v14 + 40);
LABEL_11:
        v16 = v15;
        swift_endAccess();
        v17 = [v16 layer];
        [v17 setCornerRadius_];
LABEL_43:
        [v17 v5[250]];
        goto LABEL_44;
      }

      __break(1u);
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_54;
  }

  swift_beginAccess();
  v18 = *(v0 + v7);
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x223D44740](0);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v19 = *(v18 + 32);
  }

  v16 = v19;
  swift_endAccess();
  v17 = [v16 layer];
  v20 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius;
  swift_beginAccess();
  [v17 setCornerRadius_];
  [v17 setMaskedCorners_];
LABEL_44:
}

void (*TTRIRemindersListLargeImageAttachmentsView.cornerRadius.modify(uint64_t *a1))(uint64_t a1, int8x16_t a2, __n128 a3, double a4, int8x16_t a5)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_cornerRadius;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_21D6A7C10;
}

void sub_21D6A7C10(uint64_t a1, int8x16_t a2, __n128 a3, double a4, int8x16_t a5)
{
  v5 = *a1;
  v6 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  v7 = *(*a1 + 40);
  a2.i64[0] = *(v8 + v7);
  *(v8 + v7) = v6;
  a3.n128_u64[0] = 0x3E50000000000000;
  if ((sub_21D110D14(a2, a3, v6, a5) & 1) == 0)
  {
    sub_21D6A73B8();
  }

  free(v5);
}

id TTRIRemindersListLargeImageAttachmentsView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall TTRIRemindersListLargeImageAttachmentsView.layoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v3 = &v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_fixedWidth];
  swift_beginAccess();
  if (!*(v3 + 8))
  {
    v2 = *v3;
  }

  [*&v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_grid] setFrame_];
  v4 = *&v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_totalCountViews];
  if (v4)
  {
    [v4 setFrame_];
  }
}

CGSize __swiftcall TTRIRemindersListLargeImageAttachmentsView.sizeThatFits(_:)(CGSize a1)
{
  width = a1.width;
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_fixedWidth;
  swift_beginAccess();
  v4 = *v3;
  if (*(v3 + 8))
  {
    v4 = width;
  }

  v5 = 157.0;
  result.height = v5;
  result.width = v4;
  return result;
}

uint64_t sub_21D6A7F2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v9 = a4 >> 1;
  v10 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v5 = a5;
    v6 = a3;
    v8 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_imageViews;
    swift_beginAccess();
    v11 = *&v8[v5];
    if (!(v11 >> 62))
    {
      if (v10 == *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      goto LABEL_4;
    }
  }

  if (v10 == sub_21DBFBD7C())
  {
    goto LABEL_65;
  }

LABEL_4:
  v12 = *&v8[v5];
  if (v12 >> 62)
  {
    v13 = sub_21DBFBD7C();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = *&v8[v5];
  v15 = v14 >> 62;
  if (v10 >= v13)
  {
    if (!v15)
    {
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v10)
      {
        goto LABEL_30;
      }

LABEL_12:
      v18 = *&v8[v5];
      if (v18 >> 62)
      {
        v7 = sub_21DBFBD7C();
        v19 = v10 - v7;
        if (!__OFSUB__(v10, v7))
        {
LABEL_14:
          if ((v19 & 0x8000000000000000) == 0)
          {
            if (v19)
            {
              type metadata accessor for TTRIRemindersListImageAttachmentsHiddenByAlphaImageView();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v21 = *MEMORY[0x277CEC620];
              v22 = *(MEMORY[0x277CEC620] + 8);
              v23 = v7 + v6 - v9;
              v7 = *MEMORY[0x277CDA138];
              do
              {
                v24 = [objc_allocWithZone(ObjCClassFromMetadata) init];
                [v24 setContentMode_];
                [v24 setClipsToBounds_];
                v25 = [v24 layer];
                [v25 setCornerCurve_];

                [v24 setAccessibilityIgnoresInvertColors_];
                [v24 setLayoutSize:v21 withContentPriority:{v22, 0.0}];
                swift_beginAccess();
                v26 = v24;
                MEMORY[0x223D42D80]();
                if (*((*&v8[v5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v8[v5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_21DBFA63C();
                }

                sub_21DBFA6CC();
                swift_endAccess();
              }

              while (!__CFADD__(v23++, 1));
            }

            goto LABEL_30;
          }

LABEL_86:
          __break(1u);
          goto LABEL_87;
        }
      }

      else
      {
        v7 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v19 = v10 - v7;
        if (!__OFSUB__(v10, v7))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_86;
    }

LABEL_29:
    if (sub_21DBFBD7C() >= v10)
    {
      goto LABEL_30;
    }

    goto LABEL_12;
  }

  if (v15)
  {
    v28 = sub_21DBFBD7C();
    v17 = __OFSUB__(v28, v10);
    v10 = v28 - v10;
    if (!v17)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v17 = __OFSUB__(v16, v10);
  v10 = v16 - v10;
  if (v17)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_9:
  swift_beginAccess();
  sub_21D6BFF24(v10);
  swift_endAccess();
LABEL_30:
  v29 = *&v8[v5];
  if (v29 >> 62)
  {
    goto LABEL_82;
  }

  for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {
    if (i > 2)
    {
      if (i != 3)
      {
        if (i != 4)
        {
          goto LABEL_64;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F0F0);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_21DC08D20;
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_21DC0AA00;
        result = swift_beginAccess();
        v38 = *&v8[v5];
        if ((v38 & 0xC000000000000001) != 0)
        {
          *(v7 + 32) = MEMORY[0x223D44740](0, *&v8[v5]);
          v43 = MEMORY[0x223D44740](1, v38);
          goto LABEL_46;
        }

        v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v39)
        {
          v40 = *(v38 + 32);
          *(v7 + 32) = v40;
          if (v39 == 1)
          {
            goto LABEL_99;
          }

          v41 = *(v38 + 40);
          v42 = v40;
          v43 = v41;
LABEL_46:
          *(v7 + 40) = v43;
          *(v10 + 32) = v7;
          result = swift_allocObject();
          v6 = result;
          *(result + 16) = xmmword_21DC0AA00;
          v7 = *&v8[v5];
          if ((v7 & 0xC000000000000001) == 0)
          {
            v44 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v44 < 3)
            {
              goto LABEL_101;
            }

            v45 = *(v7 + 48);
            *(result + 32) = v45;
            if (v44 == 3)
            {
              goto LABEL_103;
            }

            v46 = *(v7 + 56);
LABEL_62:
            v57 = v45;
            v58 = v46;
LABEL_63:
            v59 = v58;
            swift_endAccess();
            *(v6 + 40) = v59;
            *(v10 + 40) = v6;
            goto LABEL_64;
          }

LABEL_95:
          *(v6 + 32) = MEMORY[0x223D44740](2, v7);
          v74 = 3;
LABEL_97:
          v58 = MEMORY[0x223D44740](v74, v7);
          goto LABEL_63;
        }

LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F0F0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_21DC08D20;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_21DC0AA00;
      result = swift_beginAccess();
      v50 = *&v8[v5];
      if ((v50 & 0xC000000000000001) != 0)
      {
        *(v7 + 32) = MEMORY[0x223D44740](0, *&v8[v5]);
        v55 = MEMORY[0x223D44740](1, v50);
      }

      else
      {
        v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v51)
        {
          goto LABEL_94;
        }

        v52 = *(v50 + 32);
        *(v7 + 32) = v52;
        if (v51 == 1)
        {
          goto LABEL_100;
        }

        v53 = *(v50 + 40);
        v54 = v52;
        v55 = v53;
      }

      *(v7 + 40) = v55;
      *(v10 + 32) = v7;
      result = swift_allocObject();
      v6 = result;
      *(result + 16) = xmmword_21DC0AA00;
      v7 = *&v8[v5];
      if ((v7 & 0xC000000000000001) == 0)
      {
        v56 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v56)
        {
          goto LABEL_102;
        }

        v45 = *(v7 + 32);
        *(result + 32) = v45;
        if (v56 < 3)
        {
          goto LABEL_104;
        }

        v46 = *(v7 + 48);
        goto LABEL_62;
      }

      *(result + 32) = MEMORY[0x223D44740](0, *&v8[v5]);
      v74 = 2;
      goto LABEL_97;
    }

    if (i != 1)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F0F0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21DC08D00;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21DC09CF0;
    swift_beginAccess();
    v47 = *&v8[v5];
    if ((v47 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x223D44740](0);
    }

    else
    {
      if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_93;
      }

      v48 = *(v47 + 32);
    }

    v49 = v48;
    swift_endAccess();
    *(v6 + 32) = v49;
    *(v10 + 32) = v6;
LABEL_64:
    sub_21D6A73B8();
    v60 = *(v5 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_grid);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
    v61 = sub_21DBFA5DC();

    [v60 setArrangedSubviewRows_];

LABEL_65:
    v62 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListLargeImageAttachmentsView_viewModels;
    swift_beginAccess();
    v63 = *(v5 + v62);
    v5 = *&v8[v5];
    v64 = *(v63 + 16);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (!v64)
    {
LABEL_79:
    }

    v65 = 0;
    v66 = (v63 + 40);
    v7 = v5 >> 62;
    while (v65 < *(v63 + 16))
    {
      v67 = *(v66 - 1);
      v68 = *v66;
      if (v7)
      {
        if (v65 == sub_21DBFBD7C())
        {
LABEL_78:

          goto LABEL_79;
        }
      }

      else if (v65 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_78;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v70 = v67;
        v73 = v68;
        v72 = MEMORY[0x223D44740](v65, v5);
      }

      else
      {
        if (v65 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v69 = *(v5 + 8 * v65 + 32);
        v70 = v67;
        v71 = v68;
        v72 = v69;
      }

      v8 = v72;
      ++v65;
      [v72 setImage_];

      v66 += 2;
      if (v64 == v65)
      {
        goto LABEL_79;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    ;
  }

  if (i != 2)
  {
    goto LABEL_64;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F0F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC08D00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21DC0AA00;
  result = swift_beginAccess();
  v7 = *&v8[v5];
  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_87:
    *(v6 + 32) = MEMORY[0x223D44740](0, v7);
    v36 = MEMORY[0x223D44740](1, v7);
    goto LABEL_39;
  }

  v32 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    __break(1u);
    goto LABEL_92;
  }

  v33 = *(v7 + 32);
  *(v6 + 32) = v33;
  if (v32 != 1)
  {
    v34 = *(v7 + 40);
    v35 = v33;
    v36 = v34;
LABEL_39:
    v37 = v36;
    swift_endAccess();
    *(v6 + 40) = v37;
    *(v10 + 32) = v6;
    goto LABEL_64;
  }

  __break(1u);
LABEL_99:
  __break(1u);
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
  return result;
}