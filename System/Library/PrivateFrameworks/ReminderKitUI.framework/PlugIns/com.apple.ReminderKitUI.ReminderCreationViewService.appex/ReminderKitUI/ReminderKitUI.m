void sub_100001EB8()
{
  sub_10000359C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_100001F64(uint64_t a1)
{
  v3 = sub_100004FAC(&unk_100025570, &unk_100017CF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = qword_1000260F0;
  swift_beginAccess();
  sub_1000077FC(a1, v1 + v8);
  swift_endAccess();
  if (!(*(v4 + 48))(v1 + v8, 1, v3))
  {
    (*(v4 + 16))(v7, v1 + v8, v3);
    sub_1000161BC();
    (*(v4 + 8))(v7, v3);
    swift_getObjectType();
    sub_1000081A0(&qword_100025808, type metadata accessor for TTRIExtensionCreateReminderNotesCellContent);
    swift_unknownObjectRetain();
    sub_10001643C();
    v9 = sub_100015E7C();
    if (v9)
    {
      v10 = v9;
      v11 = *(v9 + qword_100025590);

      sub_10001644C();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return sub_100007DC8(a1, &qword_100025800, &qword_1000181B0);
}

uint64_t sub_10000218C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v31 = sub_100015CFC();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v31);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004FAC(&qword_1000257F8, &unk_100017800);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_100015CDC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_1000260F0;
  v19 = sub_100004FAC(&unk_100025570, &unk_100017CF0);
  (*(*(v19 - 8) + 56))(v4 + v18, 1, 1, v19);
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_100016A9C(31);

  v32 = 0xD00000000000001DLL;
  v33 = 0x8000000100019360;
  sub_100015CCC();
  v20 = sub_100015CBC();
  v22 = v21;
  (*(v14 + 8))(v17, v13);
  v34._countAndFlagsBits = v20;
  v34._object = v22;
  sub_1000168EC(v34);

  v23 = (v4 + qword_100025528);
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;
  v25 = v30;
  sub_100007E28(v30, v12, &qword_1000257F8, &unk_100017800);
  (*(v5 + 104))(v8, enum case for TTRITableCellContentPrototypeCellView.cellClass(_:), v31);
  v26 = sub_100015E8C();
  sub_100007DC8(v25, &qword_1000257F8, &unk_100017800);
  return v26;
}

uint64_t sub_100002480@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRITableCellSelectionBehavior.notSelectable(_:);
  v3 = sub_10001627C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100002510(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100004FAC(&unk_100025570, &unk_100017CF0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = *(a1 + qword_100025590);
  v10 = *(v2 + qword_100025528);
  v11 = *(v2 + qword_100025528 + 8);
  v12 = sub_1000168AC();
  [v9 setAccessibilityIdentifier:v12];

  sub_100015F1C();
  v13 = qword_1000260F0;
  swift_beginAccess();
  result = (*(v5 + 48))(v2 + v13, 1, v4);
  if (!result)
  {
    (*(v5 + 16))(v8, v2 + v13, v4);
    sub_1000161BC();
    (*(v5 + 8))(v8, v4);
    swift_getObjectType();
    sub_10001644C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000026C4(_BYTE *a1)
{
  v71 = a1;
  v2 = *(*(type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0) - 8) + 64);
  (__chkstk_darwin)();
  v59 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (*(*(sub_100004FAC(&qword_1000256A0, &unk_1000176F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v70 = &v59 - v5;
  v6 = sub_100004FAC(&unk_100025570, &unk_100017CF0);
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v61 = &v59 - v8;
  v66 = sub_1000164AC();
  v64 = *(v66 - 8);
  v9 = *(v64 + 64);
  (__chkstk_darwin)();
  v65 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000160AC();
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = *(v62 + 64);
  (__chkstk_darwin)();
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ReminderNotesCellContentState = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState(0);
  v16 = *(ReminderNotesCellContentState - 1);
  v17 = *(v16 + 64);
  (__chkstk_darwin)();
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*(sub_100004FAC(&qword_1000257F8, &unk_100017800) - 8) + 64);
  v21 = (__chkstk_darwin)();
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v59 - v25;
  __chkstk_darwin(v24);
  v28 = &v59 - v27;
  v29 = sub_100004FAC(&qword_1000258E8, &qword_100017848);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v60 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v59 - v33;
  v72 = v1;
  sub_100015E9C();
  sub_100007E28(v28, v26, &qword_1000257F8, &unk_100017800);
  v35 = 1;
  v67 = *(v16 + 48);
  if (v67(v26, 1, ReminderNotesCellContentState) != 1)
  {
    sub_10000786C(v26, v19, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState);
    (*(v62 + 16))(v14, v19, v63);
    v36 = *&v19[ReminderNotesCellContentState[5]];
    (*(v64 + 16))(v65, &v19[ReminderNotesCellContentState[7]], v66);
    v37 = v19[ReminderNotesCellContentState[6]];
    v38 = v36;
    sub_10001625C();
    sub_10000779C(v19, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState);
    v35 = 0;
  }

  sub_100007DC8(v28, &qword_1000257F8, &unk_100017800);
  v39 = sub_10001626C();
  (*(*(v39 - 8) + 56))(v34, v35, 1, v39);
  v40 = qword_1000260F0;
  v41 = v72;
  swift_beginAccess();
  v43 = v68;
  v42 = v69;
  if (!(*(v68 + 48))(v41 + v40, 1, v69))
  {
    v44 = v61;
    (*(v43 + 16))(v61, v41 + v40, v42);
    sub_1000161BC();
    (*(v43 + 8))(v44, v42);
    swift_getObjectType();
    sub_100007E28(v34, v60, &qword_1000258E8, &qword_100017848);
    sub_10001645C();
    swift_unknownObjectRelease();
  }

  sub_100015E9C();
  if (v67(v23, 1, ReminderNotesCellContentState))
  {
    sub_100007DC8(v23, &qword_1000257F8, &unk_100017800);
    ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
    (*(*(ReminderNotesCellContent - 8) + 56))(v70, 1, 1, ReminderNotesCellContent);
    v46 = v71;
  }

  else
  {
    v47 = v70;
    sub_100007E28(&v23[ReminderNotesCellContentState[8]], v70, &qword_1000256A0, &unk_1000176F0);
    sub_100007DC8(v23, &qword_1000257F8, &unk_100017800);
    v48 = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
    v49 = (*(*(v48 - 8) + 48))(v47, 1, v48);
    v46 = v71;
    if (v49 != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v57 = v59;
        sub_10000786C(v47, v59, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
        sub_100003168(v57);
        sub_10000779C(v57, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
      }

      else
      {
        v58 = *v47;
        sub_100002FD8(*v47, *(v47 + 8));
      }

LABEL_11:
      sub_10000339C();
      return sub_100007DC8(v34, &qword_1000258E8, &qword_100017848);
    }
  }

  if (v46[qword_1000255B0 + 8] == 2 && !*&v46[qword_1000255B0])
  {
    goto LABEL_11;
  }

  v50 = sub_1000160EC();
  v51 = swift_allocObject();
  *(v51 + 16) = v46;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_100007D64;
  *(v52 + 24) = v51;
  aBlock[4] = sub_100007DA8;
  aBlock[5] = v52;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012278;
  aBlock[3] = &unk_1000213C0;
  v53 = _Block_copy(aBlock);
  v54 = v46;

  [v50 performBatchUpdates:v53];

  _Block_release(v53);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_100002FD8(void *a1, char a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1000160EC();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2 & 1;
  *(v7 + 40) = ObjectType;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100007ED4;
  *(v8 + 24) = v7;
  v14[4] = sub_10000828C;
  v14[5] = v8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100012278;
  v14[3] = &unk_100021438;
  v9 = _Block_copy(v14);
  v10 = v2;
  v11 = a1;

  [v6 performBatchUpdates:v9];

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100003168(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = sub_1000160EC();
  sub_1000078D4(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  sub_10000786C(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100007FFC;
  *(v9 + 24) = v8;
  aBlock[4] = sub_10000828C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012278;
  aBlock[3] = &unk_1000214B0;
  v10 = _Block_copy(aBlock);
  v11 = v1;

  [v6 performBatchUpdates:v10];

  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_10000339C()
{
  v0 = sub_100015E7C();
  if (!v0)
  {
    v3 = 0;
    v9 = sub_100015E7C();
    if (!v9)
    {
      return;
    }

    goto LABEL_7;
  }

  v1 = v0;
  v2 = *(v0 + qword_100025590);

  v3 = [v2 attributedText];
  if (v3)
  {
    v4 = [v3 string];

    v5 = sub_1000168BC();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v3 = v8 != 0;
  }

  v9 = sub_100015E7C();
  if (v9)
  {
LABEL_7:
    v10 = v9;
    v11 = *(v9 + qword_100025598);

    [v11 setHidden:v3];
  }
}

uint64_t sub_100003500()
{
  v1 = *(v0 + qword_100025528 + 8);

  return sub_100007DC8(v0 + qword_1000260F0, &qword_100025800, &qword_1000181B0);
}

uint64_t sub_100003548(uint64_t a1)
{
  v2 = *(a1 + qword_100025528 + 8);

  return sub_100007DC8(a1 + qword_1000260F0, &qword_100025800, &qword_1000181B0);
}

void sub_10000359C()
{
  if (!qword_100025568)
  {
    sub_100003600(&unk_100025570, &unk_100017CF0);
    v0 = sub_100016A5C();
    if (!v1)
    {
      atomic_store(v0, &qword_100025568);
    }
  }
}

uint64_t sub_100003600(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000036E0()
{
  result = sub_100015E7C();
  if (result)
  {
    v1 = result;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      return v1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_100003748()
{
  v1 = v0;
  v2 = *&v0[qword_1000255B0];
  if (v0[qword_1000255B0 + 8])
  {
    if (v0[qword_1000255B0 + 8] == 1)
    {
      v3 = v2;
      v4 = sub_1000160EC();
      [v4 setAxis:1];

      v5 = sub_1000160EC();
      [v5 setSpacing:8.0];

      v6 = *&v1[qword_1000255A8];
      [v6 setHidden:0];
      sub_100004FAC(&qword_1000258A8, &qword_100017820);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100017560;
      *(v7 + 32) = v3;
      sub_100007C80(0, &qword_1000258B0, UIView_ptr);
      v8 = v3;
      isa = sub_10001691C().super.isa;

      [v6 setArrangedSubviews:isa];

      [v6 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
      [v6 setVerticalAlignment:0];
      [v6 setHorizontalAlignment:1];
    }

    else
    {
      v15 = sub_1000160EC();
      [v15 setAxis:0];

      v6 = *&v1[qword_1000255A8];
      [v6 setHidden:1];
      sub_100007C80(0, &qword_1000258B0, UIView_ptr);
      v8 = sub_10001691C().super.isa;
      [v6 setArrangedSubviews:v8];
    }
  }

  else
  {
    v10 = v2;
    v11 = sub_1000160EC();
    [v11 setAxis:0];

    v12 = sub_1000160EC();
    [v12 setSpacing:12.0];

    v6 = *&v1[qword_1000255A8];
    [v6 setHidden:0];
    sub_100004FAC(&qword_1000258A8, &qword_100017820);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100017560;
    *(v13 + 32) = v10;
    sub_100007C80(0, &qword_1000258B0, UIView_ptr);
    v8 = v10;
    v14 = sub_10001691C().super.isa;

    [v6 setArrangedSubviews:v14];

    [v6 setLayoutMargins:{15.0, 0.0, 0.0, 0.0}];
    [v6 setVerticalAlignment:1];
    [v6 setHorizontalAlignment:0];
  }

  sub_100004FAC(&qword_1000258C8, &qword_100017838);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100017570;
  v17 = *&v1[qword_100025590];
  *(v16 + 56) = sub_10001608C();
  *(v16 + 32) = v17;
  v18 = v17;
  if ([v6 isHidden])
  {
    v19 = 0;
    v20 = 0;
    *(v16 + 72) = 0;
    *(v16 + 80) = 0;
  }

  else
  {
    v20 = sub_100007C80(0, &qword_1000258D0, NUIContainerBoxView_ptr);
    v19 = v6;
  }

  *(v16 + 64) = v19;
  *(v16 + 88) = v20;
  sub_100004FAC(&qword_1000258D8, &qword_100017840);
  sub_100007CC8();
  sub_10001690C();

  v21 = sub_10001691C().super.isa;

  [v1 setAccessibilityElements:v21];
}

void sub_100003BA8(uint64_t a1, void *a2, char a3)
{
  if (*(a1 + qword_1000255B0 + 8))
  {
    v5 = sub_100003C8C(a1);
  }

  else
  {
    v5 = *(a1 + qword_1000255B0);
  }

  v9 = v5;
  if (a3)
  {
    v6 = 16.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = a2;
  [v9 setImage:a2];
  v8 = [v9 layer];
  [v8 setCornerRadius:v6];
}

id sub_100003C8C(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIImageView) init];
  [v2 setContentMode:2];
  [v2 setClipsToBounds:1];
  v3 = [v2 layer];

  [v3 setCornerCurve:kCACornerCurveContinuous];
  v4 = a1 + qword_1000255B0;
  v5 = *(a1 + qword_1000255B0);
  *v4 = v2;
  *(v4 + 8) = 0;
  v6 = v2;

  sub_100003748();
  return v6;
}

void sub_100003D68(uint64_t a1, void **a2)
{
  if (*(a1 + qword_1000255B0 + 8) == 1)
  {
    v3 = *(a1 + qword_1000255B0);
  }

  else
  {
    v3 = sub_10000793C(a2, a1);
  }

  v7 = v3;
  v4 = *(a2 + *(type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0) + 24));
  v5 = v7;
  if (v4)
  {
    v6 = v4;
    sub_10001646C();

    v5 = v7;
  }
}

char *sub_100003E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a3;
  v73 = a2;
  v84 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_10001624C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v3;
  v8 = &v3[qword_1000255B0];
  *v8 = 0;
  v8[8] = 2;
  *&v3[qword_1000255B8] = 0;
  (*(v9 + 104))(v7, enum case for TTRHashtagTokenTextInteraction.TokenEditingBehavior.inline(_:));
  v10 = objc_allocWithZone(sub_10001608C());
  v11 = sub_10001607C();
  [v11 setScrollEnabled:{1, v73}];
  [v11 setShowsVerticalScrollIndicator:1];
  sub_100007C80(0, &qword_1000258A0, UIFont_ptr);
  v12 = v11;
  v13 = sub_100016A1C();
  [v12 setFont:v13];

  [v12 setAdjustsFontForContentSizeCategory:1];
  v14 = objc_opt_self();
  v15 = [v14 labelColor];
  [v12 setTextColor:v15];

  [v12 setEditable:1];
  v16 = v12;
  [v16 setBackgroundColor:0];
  LODWORD(v17) = 1132068864;
  v78 = v16;
  [v16 setContentHuggingPriority:0 forAxis:v17];
  v18 = [objc_allocWithZone(UILabel) init];
  [v18 setNumberOfLines:0];
  v19 = sub_100016A1C();
  [v18 setFont:v19];

  [v18 setAdjustsFontForContentSizeCategory:1];
  [v18 setTextAlignment:4];
  [v18 setUserInteractionEnabled:0];
  v20 = [v14 placeholderTextColor];
  [v18 setTextColor:v20];

  v86._countAndFlagsBits = 0x7365746F4ELL;
  v87._object = 0x8000000100019480;
  v86._object = 0xE500000000000000;
  v87._countAndFlagsBits = 0xD000000000000033;
  sub_100015E0C(v86, v87);
  v21 = sub_1000168AC();

  [v18 setText:v21];

  v80 = sub_100004FAC(&qword_1000258A8, &qword_100017820);
  v22 = swift_allocObject();
  v79 = xmmword_100017580;
  *(v22 + 16) = xmmword_100017580;
  *(v22 + 32) = v16;
  *(v22 + 40) = v18;
  v23 = objc_allocWithZone(NUIContainerBoxView);
  v24 = sub_100007C80(0, &qword_1000258B0, UIView_ptr);
  v25 = v18;
  v76 = v24;
  v77 = v25;
  isa = sub_10001691C().super.isa;

  v27 = [v23 initWithArrangedSubviews:isa];

  [v27 setHorizontalAlignment:0];
  [v27 setVerticalAlignment:0];
  v28 = v27;
  v74 = v28;
  [v28 setAlignment:1 forView:v25 inAxis:1];
  v29 = objc_allocWithZone(NUIContainerBoxView);
  v30 = sub_10001691C().super.isa;
  v31 = [v29 initWithArrangedSubviews:v30];

  v32 = v31;
  v75 = v32;
  [v32 setLayoutMarginsRelativeArrangement:1];
  sub_100004FAC(&qword_1000258B8, &qword_100017828);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100017570;
  *(v33 + 32) = v28;
  *(v33 + 40) = 1132068864;
  *(v33 + 48) = v32;
  *(v33 + 56) = 1144750080;
  sub_100004FAC(&qword_1000258C0, &qword_100017830);
  v34 = sub_1000160FC();
  v35 = *(v34 - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100017590;
  v39 = (v38 + v37);
  *v39 = 0;
  v40 = enum case for TTRIViewContentPriorityType.hugging(_:);
  v41 = *(v35 + 104);
  v41(v39, enum case for TTRIViewContentPriorityType.hugging(_:), v34);
  *(v39 + v36) = 1;
  v41(v39 + v36, v40, v34);
  *(v39 + 2 * v36) = 0;
  v42 = enum case for TTRIViewContentPriorityType.compressionResistance(_:);
  v41(v39 + 2 * v36, enum case for TTRIViewContentPriorityType.compressionResistance(_:), v34);
  *(v39 + 3 * v36) = 1;
  v43 = v39 + 3 * v36;
  v44 = v77;
  v45 = v42;
  v46 = v78;
  v41(v43, v45, v34);
  v47 = v81;
  v48 = v74;
  v49 = v75;
  v50 = v48;
  v51 = v49;
  sub_100016A2C();

  [v50 setDebugBoundingBoxesEnabled:0];

  v52 = v82;
  [v51 setDebugBoundingBoxesEnabled:0];
  *&v52[qword_100025590] = v46;
  *&v52[qword_100025598] = v44;
  *&v52[qword_1000255A0] = v50;
  *&v52[qword_1000255A8] = v51;
  v53 = v46;
  v54 = v44;
  v55 = v50;
  v56 = v51;
  if (v47)
  {
    v57 = sub_1000168AC();
  }

  else
  {
    v57 = 0;
  }

  v85.receiver = v52;
  v85.super_class = ObjectType;
  v58 = objc_msgSendSuper2(&v85, "initWithStyle:reuseIdentifier:", v84, v57);

  v59 = v58;
  v60 = sub_1000160EC();
  [v60 setEdgesPreservingSuperviewLayoutMargins:10];

  v61 = sub_1000160EC();
  [v61 layoutMargins];
  v63 = v62;
  v65 = v64;

  v66 = sub_1000160EC();
  [v66 setLayoutMargins:{12.0, v63, 12.0, v65}];

  v67 = v59;
  v68 = sub_1000160EC();

  v69 = swift_allocObject();
  *(v69 + 16) = v79;
  *(v69 + 32) = v50;
  *(v69 + 40) = v51;
  v70 = sub_10001691C().super.isa;

  [v68 setArrangedSubviews:v70];

  v71 = sub_100004690();
  [v50 setDelegate:v71];

  [v51 setDelegate:*&v67[qword_1000255B8]];
  [v67 setIsAccessibilityElement:0];

  sub_100003748();
  return v67;
}

id sub_100004690()
{
  v1 = qword_1000255B8;
  v2 = *(v0 + qword_1000255B8);
  if (v2)
  {
    v3 = *(v0 + qword_1000255B8);
  }

  else
  {
    v4 = type metadata accessor for CustomSizeMeasurer();
    v5 = objc_allocWithZone(v4);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, "init");
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_100004744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_1000168BC();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100003E08(a3, a4, v6);
}

void sub_100004790(uint64_t a1)
{
  v1 = a1 + qword_1000255B0;
  *v1 = 0;
  *(v1 + 8) = 2;
  *(a1 + qword_1000255B8) = 0;
  sub_100016AEC();
  __break(1u);
}

id sub_10000486C@<X0>(void *a1@<X8>)
{
  v6 = *(v1 + qword_100025590);
  *a1 = v6;
  v3 = enum case for TTRITableCellSeparatorInsetType.leadingOfDescendant(_:);
  v4 = sub_1000162BC();
  (*(*(v4 - 8) + 104))(a1, v3, v4);

  return v6;
}

void sub_100004904()
{
  v1 = *(v0 + qword_1000255B8);
}

void sub_100004988(uint64_t a1)
{
  v2 = *(a1 + qword_1000255B8);
}

id sub_100004ACC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderNotesTableCellC6LayoutOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = v3;
  return a1;
}

uint64_t assignWithCopy for TTRIExtensionCreateReminderNotesTableCell.Layout(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = v3;

  return a1;
}

uint64_t initializeWithTake for TTRIExtensionCreateReminderViewModel.Image(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t assignWithTake for TTRIExtensionCreateReminderNotesTableCell.Layout(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIExtensionCreateReminderNotesTableCell.Layout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for TTRIExtensionCreateReminderNotesTableCell.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_100004C94(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100004CB0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void *sub_100004CD8(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v21 = *a2;
    *a1 = *a2;
    a1 = (v21 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000160AC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[5];
    v9 = a3[6];
    v10 = *(a2 + v8);
    *(a1 + v8) = v10;
    *(a1 + v9) = *(a2 + v9);
    v11 = a3[7];
    v12 = sub_1000164AC();
    v13 = *(*(v12 - 8) + 16);
    v14 = v10;
    v13(a1 + v11, a2 + v11, v12);
    v15 = a3[8];
    v16 = a1 + v15;
    v17 = (a2 + v15);
    ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
    v19 = *(ReminderNotesCellContent - 8);
    if ((*(v19 + 48))(v17, 1, ReminderNotesCellContent))
    {
      v20 = sub_100004FAC(&qword_1000256A0, &unk_1000176F0);
      memcpy(v16, v17, *(*(v20 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v22 = *v17;
        *v16 = *v17;
        ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
        v24 = *(ReminderView + 20);
        v25 = sub_100015C8C();
        v34 = *(*(v25 - 8) + 16);
        v26 = v22;
        v34(&v16[v24], v17 + v24, v25);
        v27 = *(ReminderView + 24);
        v28 = *(v17 + v27);
        *&v16[v27] = v28;
        v29 = v28;
      }

      else
      {
        v30 = *v17;
        v31 = *(v17 + 8);
        v32 = v30;
        *v16 = v30;
        v16[8] = v31;
      }

      swift_storeEnumTagMultiPayload();
      (*(v19 + 56))(v16, 0, 1, ReminderNotesCellContent);
    }
  }

  return a1;
}

uint64_t sub_100004FAC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_100004FF4(uint64_t a1, int *a2)
{
  v4 = sub_1000160AC();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = a2[7];
  v6 = sub_1000164AC();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = a1 + a2[8];
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  if (!(*(*(ReminderNotesCellContent - 8) + 48))(v7, 1, ReminderNotesCellContent))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
      v10 = *(ReminderView + 20);
      v11 = sub_100015C8C();
      (*(*(v11 - 8) + 8))(v7 + v10, v11);
      v12 = *(v7 + *(ReminderView + 24));
    }

    else
    {
      v12 = *v7;
      v13 = *(v7 + 8);
    }
  }
}

uint64_t sub_1000051A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = *(a2 + v7);
  *(a1 + v7) = v9;
  *(a1 + v8) = *(a2 + v8);
  v10 = a3[7];
  v11 = sub_1000164AC();
  v12 = *(*(v11 - 8) + 16);
  v13 = v9;
  v12(a1 + v10, a2 + v10, v11);
  v14 = a3[8];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v18 = *(ReminderNotesCellContent - 8);
  if ((*(v18 + 48))(v16, 1, ReminderNotesCellContent))
  {
    v19 = sub_100004FAC(&qword_1000256A0, &unk_1000176F0);
    memcpy(v15, v16, *(*(v19 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = *v16;
      *v15 = *v16;
      ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
      v22 = *(ReminderView + 20);
      v23 = sub_100015C8C();
      v32 = *(*(v23 - 8) + 16);
      v24 = v20;
      v32(&v15[v22], v16 + v22, v23);
      v25 = *(ReminderView + 24);
      v26 = *(v16 + v25);
      *&v15[v25] = v26;
      v27 = v26;
    }

    else
    {
      v28 = *v16;
      v29 = *(v16 + 8);
      v30 = v28;
      *v15 = v28;
      v15[8] = v29;
    }

    swift_storeEnumTagMultiPayload();
    (*(v18 + 56))(v15, 0, 1, ReminderNotesCellContent);
  }

  return a1;
}

uint64_t sub_100005408(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  *(a1 + v7) = v9;
  v10 = v9;

  *(a1 + a3[6]) = *(a2 + a3[6]);
  v11 = a3[7];
  v12 = sub_1000164AC();
  (*(*(v12 - 8) + 24))(a1 + v11, a2 + v11, v12);
  v13 = a3[8];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v17 = *(ReminderNotesCellContent - 8);
  v18 = *(v17 + 48);
  v19 = v18(v14, 1, ReminderNotesCellContent);
  v20 = v18(v15, 1, ReminderNotesCellContent);
  if (v19)
  {
    if (!v20)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = *v15;
        *v14 = *v15;
        ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
        v23 = *(ReminderView + 20);
        v24 = sub_100015C8C();
        v46 = *(*(v24 - 8) + 16);
        v25 = v21;
        v46(&v14[v23], &v15[v23], v24);
        v26 = *(ReminderView + 24);
        v27 = *&v15[v26];
        *&v14[v26] = v27;
        v28 = v27;
      }

      else
      {
        v39 = *v15;
        v40 = v15[8];
        v41 = v39;
        *v14 = v39;
        v14[8] = v40;
      }

      swift_storeEnumTagMultiPayload();
      (*(v17 + 56))(v14, 0, 1, ReminderNotesCellContent);
      return a1;
    }

LABEL_7:
    v29 = sub_100004FAC(&qword_1000256A0, &unk_1000176F0);
    memcpy(v14, v15, *(*(v29 - 8) + 64));
    return a1;
  }

  if (v20)
  {
    sub_10000779C(v14, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    sub_10000779C(v14, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *v15;
      *v14 = *v15;
      v31 = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
      v32 = *(v31 + 20);
      v33 = sub_100015C8C();
      v34 = *(*(v33 - 8) + 16);
      v35 = v30;
      v34(&v14[v32], &v15[v32], v33);
      v36 = *(v31 + 24);
      v37 = *&v15[v36];
      *&v14[v36] = v37;
      v38 = v37;
    }

    else
    {
      v43 = *v15;
      v44 = v15[8];
      v45 = v43;
      *v14 = v43;
      v14[8] = v44;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_10000579C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[7];
  v9 = sub_1000164AC();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  v10 = a3[8];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v14 = *(ReminderNotesCellContent - 8);
  if ((*(v14 + 48))(v12, 1, ReminderNotesCellContent))
  {
    v15 = sub_100004FAC(&qword_1000256A0, &unk_1000176F0);
    memcpy(v11, v12, *(*(v15 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v11 = *v12;
      ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
      v17 = *(ReminderView + 20);
      v18 = sub_100015C8C();
      (*(*(v18 - 8) + 32))(v11 + v17, v12 + v17, v18);
      *(v11 + *(ReminderView + 24)) = *(v12 + *(ReminderView + 24));
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v11, v12, *(v14 + 64));
    }

    (*(v14 + 56))(v11, 0, 1, ReminderNotesCellContent);
  }

  return a1;
}

uint64_t sub_1000059C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v10 = sub_1000164AC();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  v11 = a3[8];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v15 = *(ReminderNotesCellContent - 8);
  v16 = *(v15 + 48);
  v17 = v16(v12, 1, ReminderNotesCellContent);
  v18 = v16(v13, 1, ReminderNotesCellContent);
  if (!v17)
  {
    if (!v18)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_10000779C(v12, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *v12 = *v13;
        ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
        v24 = *(ReminderView + 20);
        v25 = sub_100015C8C();
        (*(*(v25 - 8) + 32))(&v12[v24], &v13[v24], v25);
        *&v12[*(ReminderView + 24)] = *&v13[*(ReminderView + 24)];
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v22 = *(v15 + 64);
      goto LABEL_8;
    }

    sub_10000779C(v12, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
LABEL_7:
    v22 = *(*(sub_100004FAC(&qword_1000256A0, &unk_1000176F0) - 8) + 64);
LABEL_8:
    memcpy(v12, v13, v22);
    return a1;
  }

  if (v18)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v12 = *v13;
    v19 = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v20 = *(v19 + 20);
    v21 = sub_100015C8C();
    (*(*(v21 - 8) + 32))(&v12[v20], &v13[v20], v21);
    *&v12[*(v19 + 24)] = *&v13[*(v19 + 24)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v12, v13, *(v15 + 64));
  }

  (*(v15 + 56))(v12, 0, 1, ReminderNotesCellContent);
  return a1;
}

uint64_t sub_100005D04(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_1000164AC();
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v16 = sub_100004FAC(&qword_1000256A0, &unk_1000176F0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_100005EA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1000160AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5]) = a2;
    return result;
  }

  v13 = sub_1000164AC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_100004FAC(&qword_1000256A0, &unk_1000176F0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_100006044(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000607C()
{
  v0 = sub_1000160AC();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_1000164AC();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_100006194();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initStructMetadata();
      }
    }
  }
}

void sub_100006194()
{
  if (!qword_100025710)
  {
    type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(255);
    v0 = sub_100016A5C();
    if (!v1)
    {
      atomic_store(v0, &qword_100025710);
    }
  }
}

char *sub_1000061EC(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = &v15[(v5 + 16) & ~v5];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      *a1 = *a2;
      ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
      v8 = *(ReminderView + 20);
      v9 = sub_100015C8C();
      v10 = *(*(v9 - 8) + 16);
      v11 = v6;
      v10(&a1[v8], a2 + v8, v9);
      v12 = *(ReminderView + 24);
      v13 = *(a2 + v12);
      *&a1[v12] = v13;
      v14 = v13;
    }

    else
    {
      v16 = *a2;
      v17 = *(a2 + 8);
      v18 = v16;
      *a1 = v16;
      a1[8] = v17;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_100006340(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v3 = *(ReminderView + 20);
    v4 = sub_100015C8C();
    (*(*(v4 - 8) + 8))(a1 + v3, v4);
    v5 = *(a1 + *(ReminderView + 24));
  }

  else
  {
    v5 = *a1;
    v6 = *(a1 + 8);
  }
}

uint64_t sub_100006404(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a2;
    *a1 = *a2;
    ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v6 = *(ReminderView + 20);
    v7 = sub_100015C8C();
    v8 = *(*(v7 - 8) + 16);
    v9 = v4;
    v8(a1 + v6, a2 + v6, v7);
    v10 = *(ReminderView + 24);
    v11 = *(a2 + v10);
    *(a1 + v10) = v11;
    v12 = v11;
  }

  else
  {
    v13 = *a2;
    v14 = *(a2 + 8);
    v15 = v13;
    *a1 = v13;
    *(a1 + 8) = v14;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_100006504(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_10000779C(a1, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *a2;
      *a1 = *a2;
      ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
      v6 = *(ReminderView + 20);
      v7 = sub_100015C8C();
      v8 = *(*(v7 - 8) + 16);
      v9 = v4;
      v8(a1 + v6, a2 + v6, v7);
      v10 = *(ReminderView + 24);
      v11 = *(a2 + v10);
      *(a1 + v10) = v11;
      v12 = v11;
    }

    else
    {
      v13 = *a2;
      v14 = *(a2 + 8);
      v15 = v13;
      *a1 = v13;
      *(a1 + 8) = v14;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_100006628(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v7 = *(ReminderView + 20);
    v8 = sub_100015C8C();
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
    *&a1[*(ReminderView + 24)] = *&a2[*(ReminderView + 24)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v10 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v10);
  }
}

char *sub_100006728(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_10000779C(a1, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v7 = *(ReminderView + 20);
    v8 = sub_100015C8C();
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
    *&a1[*(ReminderView + 24)] = *&a2[*(ReminderView + 24)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_1000068B0()
{
  result = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_10000694C(uint64_t a1, uint64_t a2)
{
  result = sub_10001694C();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_1000069A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10001695C();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_1000069F8@<X0>(_DWORD *a1@<X8>)
{
  result = sub_10001696C();
  *a1 = v3;
  return result;
}

_DWORD *sub_100006A20@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_100006A30@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100006A3C()
{
  v2 = *v0;
  sub_1000081A0(&qword_100025918, type metadata accessor for UILayoutPriority);
  sub_1000081A0(&unk_100025920, type metadata accessor for UILayoutPriority);
  return sub_100016B1C();
}

void sub_100006B00()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_100016B6C(LODWORD(v1));
}

uint64_t sub_100006B3C(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

uint64_t sub_100006B6C(uint64_t a1, uint64_t a2)
{
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v5 = *(*(ReminderView - 8) + 64);
  __chkstk_darwin(ReminderView);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v9 = *(*(ReminderNotesCellContent - 8) + 64);
  v10 = __chkstk_darwin(ReminderNotesCellContent);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = sub_100004FAC(&qword_100025820, &qword_100017818);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v40 - v18;
  v20 = &v40 + *(v17 + 56) - v18;
  sub_1000078D4(a1, &v40 - v18, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  sub_1000078D4(a2, v20, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000078D4(v19, v14, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
    v30 = *v14;
    v31 = v14[8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      goto LABEL_12;
    }

    v32 = *v20;
    v33 = v20[8];
    if (v31)
    {
      if (v20[8])
      {
        if (!v30)
        {
          if (!v32)
          {

            goto LABEL_34;
          }

          v37 = 0;
          goto LABEL_23;
        }

        if (v32)
        {
          sub_100007C80(0, &qword_100025838, UIImage_ptr);
          v34 = v32;
          v35 = v30;
          v36 = sub_100016A3C();

          if (v36)
          {
            goto LABEL_34;
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

      v37 = v30;
    }

    else
    {
      if ((v20[8] & 1) == 0)
      {
        sub_100007C80(0, &qword_100025828, NSObject_ptr);
        v38 = sub_100016A3C();

        if (v38)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      v37 = v30;
    }

LABEL_23:

LABEL_28:
    sub_10000779C(v19, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
    return 0;
  }

  sub_1000078D4(v19, v12, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000786C(v20, v7, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
    sub_100007C80(0, &qword_100025828, NSObject_ptr);
    v21 = *v12;
    v22 = *v7;
    if (sub_100016A3C())
    {
      v23 = *(ReminderView + 20);
      if (sub_100015C6C())
      {
        v24 = *(ReminderView + 24);
        v25 = *(v12 + v24);
        v26 = *(v7 + v24);
        if (v25)
        {
          if (v26)
          {
            sub_100007C80(0, &qword_100025830, LPLinkMetadata_ptr);
            v27 = v26;
            v28 = v25;
            v29 = sub_100016A3C();

            if (v29)
            {
              goto LABEL_8;
            }
          }
        }

        else if (!v26)
        {
LABEL_8:
          sub_10000779C(v7, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
          sub_10000779C(v12, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
LABEL_34:
          sub_10000779C(v19, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
          return 1;
        }
      }
    }

    sub_10000779C(v7, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
    sub_10000779C(v12, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
    goto LABEL_28;
  }

  sub_10000779C(v12, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
LABEL_12:
  sub_100007DC8(v19, &qword_100025820, &qword_100017818);
  return 0;
}

BOOL sub_100007058(uint64_t a1, uint64_t a2)
{
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v5 = *(ReminderNotesCellContent - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(ReminderNotesCellContent);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004FAC(&qword_1000256A0, &unk_1000176F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v31 - v11;
  v13 = sub_100004FAC(&qword_100025810, &qword_100017810);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v31 - v15;
  if ((sub_10001609C() & 1) == 0)
  {
    return 0;
  }

  v32 = v5;
  ReminderNotesCellContentState = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState(0);
  v18 = ReminderNotesCellContentState[5];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v31 = v8;
    sub_100007C80(0, &qword_100025818, NSAttributedString_ptr);
    v21 = v20;
    v22 = v19;
    v23 = sub_100016A3C();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v31 = v8;
    if (v20)
    {
      return 0;
    }
  }

  if (*(a1 + ReminderNotesCellContentState[6]) != *(a2 + ReminderNotesCellContentState[6]))
  {
    return 0;
  }

  v24 = ReminderNotesCellContentState[7];
  if ((sub_10001649C() & 1) == 0)
  {
    return 0;
  }

  v25 = ReminderNotesCellContentState[8];
  v26 = *(v13 + 48);
  sub_100007E28(a1 + v25, v16, &qword_1000256A0, &unk_1000176F0);
  sub_100007E28(a2 + v25, &v16[v26], &qword_1000256A0, &unk_1000176F0);
  v27 = *(v32 + 48);
  if (v27(v16, 1, ReminderNotesCellContent) == 1)
  {
    if (v27(&v16[v26], 1, ReminderNotesCellContent) == 1)
    {
      sub_100007DC8(v16, &qword_1000256A0, &unk_1000176F0);
      return 1;
    }

    goto LABEL_14;
  }

  sub_100007E28(v16, v12, &qword_1000256A0, &unk_1000176F0);
  if (v27(&v16[v26], 1, ReminderNotesCellContent) == 1)
  {
    sub_10000779C(v12, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
LABEL_14:
    sub_100007DC8(v16, &qword_100025810, &qword_100017810);
    return 0;
  }

  v29 = v31;
  sub_10000786C(&v16[v26], v31, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  v30 = sub_100006B6C(v12, v29);
  sub_10000779C(v29, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  sub_10000779C(v12, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  sub_100007DC8(v16, &qword_1000256A0, &unk_1000176F0);
  return (v30 & 1) != 0;
}

uint64_t sub_100007408(uint64_t a1)
{
  v2 = sub_100004FAC(&qword_1000257F8, &unk_100017800);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  ReminderNotesCellContentState = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState(0);
  v10 = *(ReminderNotesCellContentState - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(ReminderNotesCellContentState);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10001636C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000339C();
  (*(v15 + 16))(v18, a1, v14);
  result = (*(v15 + 88))(v18, v14);
  if (result != enum case for TTRIReminderCellTitleEditingEvent.editingWillBegin(_:) && result != enum case for TTRIReminderCellTitleEditingEvent.editingDidBegin(_:) && result != enum case for TTRIReminderCellTitleEditingEvent.editingChanged(_:))
  {
    if (result == enum case for TTRIReminderCellTitleEditingEvent.editingDidEnd(_:))
    {
      sub_100015E9C();
      if ((*(v10 + 48))(v8, 1, ReminderNotesCellContentState) == 1)
      {
        return sub_100007DC8(v8, &qword_1000257F8, &unk_100017800);
      }

      else
      {
        sub_10000786C(v8, v13, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState);
        v22 = sub_100015E7C();
        if (!v22 || (v23 = v22, v24 = *(v22 + qword_100025590), v23, v25 = [v24 attributedText], v24, !v25))
        {
          v25 = [objc_allocWithZone(NSAttributedString) init];
        }

        v26 = *(ReminderNotesCellContentState + 20);

        *&v13[v26] = v25;
        sub_1000078D4(v13, v6, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState);
        (*(v10 + 56))(v6, 0, 1, ReminderNotesCellContentState);
        sub_100015E6C();
        sub_100007DC8(v6, &qword_1000257F8, &unk_100017800);
        return sub_10000779C(v13, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState);
      }
    }

    else
    {
      result = sub_100016B2C();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10000779C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000077FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004FAC(&qword_100025800, &qword_1000181B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000786C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000078D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_10000793C(void **a1, uint64_t a2)
{
  v4 = sub_100015C8C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  (*(v5 + 16))(v8, a1 + *(ReminderView + 20), v4);
  v10 = *a1;
  v11 = objc_allocWithZone(sub_10001648C());
  v12 = v10;
  v13 = sub_10001647C();
  [v13 _setApplyCornerRadius:1];
  [v13 _setPreferredSizeClass:8];
  v14 = v13;
  v15 = [v14 layer];
  [v15 setCornerRadius:16.0];

  v16 = [v14 layer];
  [v16 setMasksToBounds:1];

  [v14 setUserInteractionEnabled:0];
  v17 = a2 + qword_1000255B0;
  v18 = *(a2 + qword_1000255B0);
  *v17 = v14;
  *(v17 + 8) = 1;
  v19 = v14;

  sub_100003748();
  return v19;
}

void sub_100007B0C(void *a1, double a2, double a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_100016A0C();
    return;
  }

  v7 = Strong;
  if (*(Strong + qword_100025590) == a1)
  {
    [a1 effectiveLayoutSizeFittingSize:{a2, a3}];
    v10 = v7[qword_1000255B0 + 8];
    v11 = *&v7[qword_1000255B0];

    if (v10)
    {
      if (v10 == 1)
      {
      }
    }

    else
    {
    }
  }

  else
  {
    v8 = *(Strong + qword_1000255B0);
    if (*(Strong + qword_1000255B0 + 8))
    {
      if (*(Strong + qword_1000255B0 + 8) == 1 && v8 == a1)
      {
        [a1 effectiveLayoutSizeFittingSize:{a2, 120.0}];
LABEL_16:

        return;
      }

LABEL_15:
      sub_100016A0C();
      goto LABEL_16;
    }

    if (v8 != a1)
    {
      goto LABEL_15;
    }

    [a1 effectiveLayoutSizeFittingSize:{a2, a3}];
  }
}

uint64_t sub_100007C80(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_100007CC8()
{
  result = qword_1000258E0;
  if (!qword_1000258E0)
  {
    sub_100003600(&qword_1000258D8, &qword_100017840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000258E0);
  }

  return result;
}

uint64_t sub_100007D2C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100007D64()
{
  v1 = *(v0 + 16) + qword_1000255B0;
  v2 = *v1;
  *v1 = 0;
  *(v1 + 8) = 2;

  sub_100003748();
}

uint64_t sub_100007DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007DC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100004FAC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007E28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004FAC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007E90()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007EF4()
{
  v1 = (type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = (v0 + v3);
  v6 = v1[7];
  v7 = sub_100015C8C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

void sub_100007FFC()
{
  v1 = *(type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100003D68(v3, (v0 + v2));
}

__n128 initializeWithTake for TTRIExtensionCreateReminderViewController.Argument(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000080B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000080D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_10000810C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000081A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000829C()
{
  v0 = sub_10001687C();
  sub_10000C73C(v0, qword_100025990);
  v1 = sub_10000C698(v0, qword_100025990);
  if (qword_100025518 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C698(v0, qword_100026138);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100008364@<X0>(unint64_t a1@<X8>)
{
  v3 = sub_1000164AC();
  v144 = *(v3 - 8);
  v4 = *(v144 + 64);
  __chkstk_darwin(v3);
  v6 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100015F8C();
  v143 = *(v7 - 8);
  v8 = *(v143 + 64);
  __chkstk_darwin(v7);
  v142 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000167DC();
  v153 = *(v10 - 1);
  v11 = *(v153 + 64);
  __chkstk_darwin(v10);
  v146 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10001620C();
  v148 = *(v13 - 8);
  v149 = v13;
  v14 = *(v148 + 64);
  __chkstk_darwin(v13);
  v150 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004FAC(&qword_100025B78, &unk_100017D00);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v154 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v147 = &v122 - v20;
  v21 = sub_1000164FC();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v141 = sub_10001651C();
  v140 = *(v141 - 8);
  v23 = *(v140 + 64);
  __chkstk_darwin(v141);
  v151 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1000160AC();
  v138 = *(v139 - 8);
  v25 = *(v138 + 64);
  v26 = __chkstk_darwin(v139);
  v137 = &v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v145 = &v122 - v28;
  v152 = v1;
  v29 = v1 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor;
  v30 = *(v1 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor);
  v31 = *(v29 + 8);
  swift_getObjectType();
  v32 = sub_1000165BC();
  if (!v32)
  {
    goto LABEL_9;
  }

  v33 = v32;
  v34 = sub_1000165BC();
  if (!v34)
  {

LABEL_9:
    ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
    v43 = *(*(ReminderViewModel - 8) + 56);

    return v43(a1, 1, 1, ReminderViewModel);
  }

  v123 = v10;
  v35 = v34;
  v36 = [v35 objectID];
  sub_1000160DC();

  if (swift_unknownObjectWeakLoadStrong() && (v37 = sub_100014DD8(), v39 = v38, swift_unknownObjectRelease(), v37))
  {
    swift_getObjectType();
    v40 = *(v39 + 8);
    swift_unknownObjectRetain();
    sub_1000163DC();
    v132 = v37;
    swift_unknownObjectRelease();
    sub_10000CC08(&v157, &v158);
    sub_10000BDC4(&v158, v159);
    if (sub_10001634C())
    {
      sub_10000BDC4(&v158, v159);
      v128 = sub_10001635C();
      sub_10000CDB0(&v158);
      goto LABEL_16;
    }

    sub_10000CDB0(&v158);
    v41 = v132;
  }

  else
  {
    v41 = 0;
  }

  v132 = v41;
  v45 = [v33 titleAsString];
  if (v45)
  {
    v46 = v45;
    sub_1000168BC();

    sub_1000168CC();
    v128 = v47;
  }

  else
  {
    v128 = 0;
  }

LABEL_16:
  v159 = sub_100007C80(0, &qword_100025B80, REMReminderChangeItem_ptr);
  v160 = &protocol witness table for REMReminderChangeItem;
  v158 = v33;
  v48 = v33;
  sub_1000164EC();
  sub_10001650C();
  v49 = sub_1000164DC();
  if (v49)
  {
LABEL_17:
    v50 = v49;
    goto LABEL_19;
  }

  v50 = [v48 title];
  if (!v50)
  {
    v49 = [objc_allocWithZone(NSAttributedString) init];
    goto LABEL_17;
  }

LABEL_19:
  v51 = sub_1000164CC();
  if (!v51)
  {
    v51 = [v48 notes];
    if (!v51)
    {
      v51 = [objc_allocWithZone(NSAttributedString) init];
    }
  }

  v127 = v51;
  v52 = [v48 accountCapabilities];
  v126 = [v52 supportsTextStyling];

  v53 = [v48 attachmentContext];
  if (v53)
  {
    v54 = v53;
    v55 = [v53 attachments];

    sub_100007C80(0, &qword_100025B98, REMAttachment_ptr);
    v56 = sub_10001692C();
  }

  else
  {
    v56 = &_swiftEmptyArrayStorage;
  }

  v129 = v7;
  v155 = v56 >> 62;
  v130 = v3;
  v131 = v48;
  v57 = v56 & 0xFFFFFFFFFFFFFF8;
  if (v56 >> 62)
  {
LABEL_108:
    v58 = sub_100016AFC();
  }

  else
  {
    v58 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v59 = v56 & 0xC000000000000001;
  v134 = (v56 + 32);

  v60 = 0;
  v156 = v56;
  while (v58 != v60)
  {
    if (v59)
    {
      v61 = sub_100016ABC();
    }

    else
    {
      if (v60 >= *(v57 + 16))
      {
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v61 = *(v56 + 8 * v60 + 32);
    }

    v62 = v61;
    objc_opt_self();
    v63 = swift_dynamicCastObjCClass();

    if (v63)
    {
      v58 = v60;
      v56 = v156;
      break;
    }

    v64 = __OFADD__(v60++, 1);
    v56 = v156;
    if (v64)
    {
      goto LABEL_105;
    }
  }

  if (v155)
  {
    v65 = sub_100016AFC();
  }

  else
  {
    v65 = *(v57 + 16);
  }

  v125 = a1;
  v124 = v50;
  if (v58 == v65)
  {

    v66 = 0;
  }

  else
  {
    if (v59)
    {
      v67 = sub_100016ABC();
    }

    else
    {
      if (v58 >= *(v57 + 16))
      {
        __break(1u);
        goto LABEL_111;
      }

      v67 = v134[v58];
    }

    v68 = v67;
    objc_opt_self();
    v69 = swift_dynamicCastObjCClass();
    if (!v69)
    {
      goto LABEL_113;
    }

    v66 = v69;
  }

  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v71 = *(ReminderView - 8);
  v72 = *(v71 + 56);
  v50 = (v71 + 56);
  v72(v147, 1, 1, ReminderView);
  v136 = v66;
  v135 = v6;
  if (v66)
  {
    v73 = v66;
    v74 = [v73 metadata];
    if (v74)
    {
      v75 = v74;
      v76 = sub_100015CAC();
      v78 = v77;

      sub_10000CB60(v76, v78);
      isa = sub_100015C9C().super.isa;
      v133 = [objc_opt_self() metadataWithDataRepresentation:isa];

      sub_10000CBB4(v76, v78);
      sub_10000CBB4(v76, v78);
    }

    else
    {
      v133 = 0;
    }

    v80 = [v73 objectID];
    v81 = [v73 url];
    v82 = v154;
    v83 = &v154[*(ReminderView + 20)];
    sub_100015C7C();

    v6 = &unk_100017D00;
    v84 = v147;
    sub_100007DC8(v147, &qword_100025B78, &unk_100017D00);
    *v82 = v80;
    *(v82 + *(ReminderView + 24)) = v133;
    v72(v82, 0, 1, ReminderView);
    sub_10000CAF8(v82, v84, &qword_100025B78, &unk_100017D00);
    v56 = v156;
  }

  if (v155)
  {
    v68 = sub_100016AFC();
  }

  else
  {
    v68 = *(v57 + 16);
  }

  v60 = 0;
  a1 = &_s15RemindersUICore027TTRIReminderCellModuleOwnerE4TypeOMa_ptr;
  while (v68 != v60)
  {
    if (v59)
    {
      v85 = sub_100016ABC();
    }

    else
    {
      if (v60 >= *(v57 + 16))
      {
        goto LABEL_104;
      }

      v85 = *(v56 + 8 * v60 + 32);
    }

    v86 = v85;
    objc_opt_self();
    v87 = swift_dynamicCastObjCClass();

    if (v87)
    {
      v68 = v60;
      break;
    }

    v64 = __OFADD__(v60++, 1);
    if (v64)
    {
      goto LABEL_106;
    }
  }

  v88 = v136;
  if (!v155)
  {
    if (v68 != *(v57 + 16))
    {
      goto LABEL_69;
    }

LABEL_77:
    swift_bridgeObjectRelease_n();
    if (v88)
    {
      v6 = 0;
      v97 = -1;
      v98 = v125;
LABEL_97:
      v113 = v138;
      v114 = v137;
      v115 = v145;
      v116 = v139;
      (*(v138 + 16))(v137, v145, v139);
      v117 = v142;
      v118 = v151;
      sub_1000164BC();
      sub_100015F7C();

      swift_unknownObjectRelease();
      (*(v143 + 8))(v117, v129);
      (*(v140 + 8))(v118, v141);
      (*(v113 + 8))(v115, v116);
      (*(v113 + 32))(v98, v114, v116);
      v119 = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
      *(v98 + v119[5]) = v128 & 1;
      *(v98 + v119[6]) = v124;
      *(v98 + v119[7]) = v127;
      *(v98 + v119[8]) = v126;
      (*(v144 + 32))(v98 + v119[9], v135, v130);
      sub_10000CAF8(v147, v98 + v119[10], &qword_100025B78, &unk_100017D00);
      v120 = v98 + v119[11];
      *v120 = v6;
      *(v120 + 8) = v97;
      return (*(*(v119 - 1) + 56))(v98, 0, 1, v119);
    }

    v99 = [v131 userActivity];
    v98 = v125;
    if (!v99)
    {
      v6 = 0;
      v97 = -1;
      goto LABEL_97;
    }

    v100 = v99;
    (*(v153 + 104))(v146, enum case for REMApplicationIconFormat.reminderListiOS(_:), v123);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v102 = [Strong view];
      if (!v102)
      {
        goto LABEL_116;
      }

      v103 = v102;
      v104 = [v102 traitCollection];

      [v104 displayScale];
      swift_unknownObjectRelease();
    }

    v121 = v146;
    v6 = sub_1000169CC();

    (*(v153 + 8))(v121, v123);
    if (!v6)
    {
      v97 = -1;
      goto LABEL_97;
    }

    v97 = 0;
    goto LABEL_96;
  }

  if (v68 == sub_100016AFC())
  {
    goto LABEL_77;
  }

LABEL_69:
  if (!v59)
  {
    if (v68 < *(v57 + 16))
    {
      v89 = v134[v68];
      goto LABEL_72;
    }

    __break(1u);
LABEL_113:

    __break(1u);
    goto LABEL_114;
  }

LABEL_111:
  v89 = sub_100016ABC();
LABEL_72:
  v60 = v89;
  v57 = v150;
  v90 = *(a1 + 3096);
  objc_opt_self();
  v91 = swift_dynamicCastObjCClass();
  if (v91)
  {
    v92 = v91;

    v93 = swift_unknownObjectWeakLoadStrong();
    if (!v93)
    {
LABEL_83:
      sub_10000A4EC();
      sub_100004FAC(&qword_1000258A8, &qword_100017820);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_100017560;
      *(v105 + 32) = v92;
      v123 = v60;
      v106 = sub_1000161EC();

      v107 = *(v106 + 16);
      if (v107)
      {
        a1 = 0;
        v6 = 0;
        v108 = v148;
        v154 = (v148 + 88);
        v155 = v148 + 16;
        LODWORD(v153) = enum case for TTRAttachmentThumbnailsManager.Result.thumbnail(_:);
        LODWORD(v146) = enum case for TTRAttachmentThumbnailsManager.Result.pending(_:);
        v134 = (v148 + 8);
        v50 = (v148 + 96);
        v97 = -1;
        LODWORD(v133) = enum case for TTRAttachmentThumbnailsManager.Result.error(_:);
        v109 = v149;
        while (a1 < *(v106 + 16))
        {
          (*(v108 + 16))(v57, v106 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * a1, v109);
          v110 = (*(v108 + 88))(v57, v109);
          if (v110 == v153)
          {
            sub_10000CAC4(v6, v97);
            (*v50)(v57, v109);
            v6 = *v57;
          }

          else
          {
            if (v110 == v146)
            {
              (*v50)(v57, v109);
              v111 = *v57;

              sub_100007C80(0, &qword_100025B88, OS_dispatch_queue_ptr);
              v112 = sub_1000169FC();
              swift_allocObject();
              swift_weakInit();
              sub_100004FAC(&qword_100025B90, &qword_100017D10);
              sub_10001680C();
              sub_10000CAC4(v6, v97);
              v109 = v149;

              v108 = v148;

              v56 = v156;
              v57 = v150;
            }

            else
            {
              if (v110 != v133)
              {
                goto LABEL_117;
              }

              sub_10000CAC4(v6, v97);
              (*v134)(v57, v109);
            }

            v6 = 0;
          }

          ++a1;
          v97 = 1;
          if (v107 == a1)
          {
            goto LABEL_95;
          }
        }

        goto LABEL_107;
      }

      v6 = 0;
      v97 = -1;
LABEL_95:

      v98 = v125;
LABEL_96:

      goto LABEL_97;
    }

    v94 = [v93 view];
    if (v94)
    {
      v95 = v94;
      v96 = [v94 traitCollection];

      [v96 displayScale];
      swift_unknownObjectRelease();

      goto LABEL_83;
    }

    goto LABEL_115;
  }

LABEL_114:

  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  result = sub_100016B2C();
  __break(1u);
  return result;
}

uint64_t sub_1000096EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a3;
  v40 = a6;
  v36 = a4;
  v37 = a1;
  v9 = v7;
  v38 = a2;
  v11 = sub_1000160AC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004FAC(&qword_100025B60, &qword_100017CE8);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v35 - v21;
  v23 = *(v7 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor + 8);
  v24 = *(v7 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor);
  swift_getObjectType();
  v25 = sub_1000165BC();
  if (v25)
  {
    v26 = v25;
    v27 = [v26 objectID];
    sub_1000160DC();

    (*(v12 + 56))(v22, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v22, 1, 1, v11);
  }

  sub_100007E28(v22, v20, &qword_100025B60, &qword_100017CE8);
  v28 = 1;
  if ((*(v12 + 48))(v20, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v20, v11);
    v29 = v9 + *v36;
    v31 = *v29;
    v30 = *(v29 + 8);
    v32 = sub_10000CD68(&qword_100025B68, type metadata accessor for TTRIExtensionCreateReminderPresenter);
    v31(v15, v9, v32, v37, v38, v39);
    (*(v12 + 8))(v15, v11);
    v28 = 0;
  }

  sub_100007DC8(v22, &qword_100025B60, &qword_100017CE8);
  v33 = sub_100004FAC(a5, v40);
  return (*(*(v33 - 8) + 56))(a7, v28, 1, v33);
}

uint64_t sub_100009A04()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10001679C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100025500 != -1)
  {
    swift_once();
  }

  v8 = sub_10001687C();
  sub_10000C698(v8, qword_100025990);
  sub_10000BF40(&_swiftEmptyArrayStorage);
  sub_10000F4B0();

  v9 = *(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor);
  v10 = *(v1 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor + 8);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();

  sub_10001661C();

  sub_100015D9C();
  v11 = sub_100015D6C();
  sub_1000167CC();
  sub_1000167BC();
  v12 = sub_100004FAC(&qword_100025B38, &qword_100017CC0);
  v13 = &v7[v12[12]];
  v14 = v12[16];
  v15 = &v7[v12[20]];
  v16 = enum case for REMUserOperation.commitNewReminder(_:);
  v17 = sub_10001678C();
  (*(*(v17 - 8) + 104))(v7, v16, v17);
  *v13 = sub_100015D7C();
  v13[1] = v18;
  sub_100015D8C();
  v22 = sub_100016B8C();
  v23 = v19;
  v24._countAndFlagsBits = 0x69736E657478452DLL;
  v24._object = 0xEA00000000006E6FLL;
  sub_1000168EC(v24);
  v20 = v23;
  *v15 = v22;
  v15[1] = v20;
  (*(v4 + 104))(v7, enum case for REMAnalyticsEvent.userOperation(_:), v3);
  sub_1000167AC();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_100009D18(void *a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!swift_unknownObjectWeakLoadStrong())
    {
    }

    if (a2)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;

        sub_10000C714(a1, 1);
        sub_10000D2E0();
        v8 = v7;

        v9 = sub_100015C5C();
        [v8 viewServiceDidFailWithError:v9];
        sub_10000C720(a1, 1);
        swift_unknownObjectRelease();

        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_10001685C();
    sub_10001684C();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      sub_10000D2E0();
      v13 = v12;

      [v13 viewServiceDidFinish];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100009E78()
{
  if (qword_100025500 != -1)
  {
    swift_once();
  }

  v0 = sub_10001687C();
  sub_10000C698(v0, qword_100025990);
  sub_10000BF40(&_swiftEmptyArrayStorage);
  sub_10000F4B0();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_10000D2E0();
      v5 = v4;

      [v5 viewServiceDidCancel];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100009F88(void *a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(void), uint64_t a6)
{
  v48 = a6;
  v49 = a2;
  v56 = a5;
  v55 = a4;
  v8 = sub_100004FAC(&qword_100025B08, &qword_100017C98);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v45 - v10;
  v12 = sub_1000167EC();
  v46 = *(v12 - 8);
  v47 = v12;
  v13 = *(v46 + 64);
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004FAC(&qword_100025B10, &qword_100017CA0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v45 - v18;
  v53 = sub_1000166FC();
  v51 = *(v53 - 8);
  v20 = *(v51 + 64);
  __chkstk_darwin(v53);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10001604C();
  v23 = *(v50 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v50);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100015FBC();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v32 = &v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v28 + 104);
  v34 = &enum case for TTRIReminderDetailStyle.sharingExtensionExtendedDetail(_:);
  if (!*(a3 + 48))
  {
    v34 = &enum case for TTRIReminderDetailStyle.sharingExtension(_:);
  }

  v35 = *v34;
  v52 = v30;
  v33(v32, v35);
  v36 = a1;
  sub_10001603C();
  v54 = a3;
  v37 = *(a3 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor);
  v38 = *(a3 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor + 8);
  swift_getObjectType();
  sub_1000165EC();
  if (v49 < 1)
  {
    v39 = 1;
  }

  else
  {
    (*(v46 + 104))(v15, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v47);
    sub_100015D3C();
    v39 = 0;
  }

  v40 = sub_100015D4C();
  (*(*(v40 - 8) + 56))(v19, v39, 1, v40);
  sub_1000160CC();
  sub_10000CD68(&qword_100025B18, type metadata accessor for TTRIExtensionCreateReminderPresenter);
  v41 = sub_10001669C();
  (*(*(v41 - 8) + 56))(v11, 1, 1, v41);
  v42 = v54;
  v43 = sub_1000160BC();
  sub_100007DC8(v11, &qword_100025B08, &qword_100017C98);
  sub_100007DC8(v19, &qword_100025B10, &qword_100017CA0);
  (*(v51 + 8))(v22, v53);
  (*(v23 + 8))(v26, v50);
  swift_unknownObjectRelease();
  v44 = *sub_10000BDC4((v42 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_router), *(v42 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_router + 24));
  sub_10000FFE0(v43, v55 & 1);
  if (v56)
  {
    v56();

    (*(v28 + 8))(v32, v52);
  }

  else
  {
    (*(v28 + 8))(v32, v52);
  }
}

uint64_t sub_10000A4EC()
{
  v1 = v0;
  v2 = sub_1000163AC();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = (v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter____lazy_storage___attachmentThumbnailsManager;
  if (*(v1 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter____lazy_storage___attachmentThumbnailsManager))
  {
    v8 = *(v1 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter____lazy_storage___attachmentThumbnailsManager);
  }

  else
  {
    *v6 = 0x4072C00000000000;
    (*(v4 + 104))(v6, enum case for TTRAttachmentThumbnailSizeProvider.ContentMode.scaleAspectFill(_:));
    v9 = sub_1000163BC();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = sub_10001639C();
    v22[8] = v9;
    v22[9] = &protocol witness table for TTRAttachmentThumbnailSizeProvider;
    v22[5] = v12;
    sub_100007C80(0, &qword_100025B88, OS_dispatch_queue_ptr);
    sub_1000169FC();
    sub_10001677C();
    sub_10001676C();
    v13 = sub_100015F5C();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_100015F4C();
    v22[3] = v13;
    v22[4] = &protocol witness table for TTRThumbnailGenerator;
    v22[0] = v16;
    v17 = sub_10001621C();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v8 = sub_1000161FC();
    v20 = *(v1 + v7);
    *(v1 + v7) = v8;
  }

  return v8;
}

uint64_t sub_10000A6E0@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v3 = result;
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_deferredAction);
    v5._object = 0x8000000100019710;
    v5._countAndFlagsBits = 0xD000000000000011;
    sub_100015DCC(v5);
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_10000A77C()
{
  sub_10000CDFC(v0 + 16);
  sub_10000CDFC(v0 + 32);
  sub_100007DC8(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_viewModel, &qword_100025B58, &qword_100017CE0);
  v1 = *(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor);
  swift_unknownObjectRelease();
  sub_10000CDB0((v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_router));

  v2 = *(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter____lazy_storage___attachmentThumbnailsManager);

  v3 = *(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_deferredAction);

  v4 = *(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_inCellEditingPresenterHelper);

  v5 = *(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_makeCellTitleModule + 8);

  v6 = *(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_makeCellNotesModule + 8);

  v7 = *(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_editingSessionSharedProperties);

  return v0;
}

uint64_t sub_10000A85C()
{
  sub_10000A77C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for TTRIExtensionCreateReminderPresenter()
{
  result = qword_100025A18;
  if (!qword_100025A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000A908()
{
  sub_10000A9F8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000A9F8()
{
  if (!qword_100025A28)
  {
    type metadata accessor for TTRIExtensionCreateReminderViewModel(255);
    v0 = sub_100016A5C();
    if (!v1)
    {
      atomic_store(v0, &qword_100025A28);
    }
  }
}

uint64_t sub_10000AA50()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_10000D2E0();
      v4 = v3;

      [v4 viewServiceDidCancel];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000AADC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      swift_errorRetain();
      sub_10000D2E0();
      v4 = v3;

      v5 = sub_100015C5C();
      [v4 viewServiceDidFailWithError:v5];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10000AB98()
{
  v1 = *(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_deferredAction);
  v2._object = 0x8000000100019710;
  v2._countAndFlagsBits = 0xD000000000000011;
  sub_100015DCC(v2);
}

uint64_t sub_10000ABDC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10001601C();
    sub_1000150D4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10000AC54()
{
  v1 = v0;
  v2 = *sub_10000BDC4((v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_router), *(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_router + 24));

  sub_100010098(sub_10000BE08, v1);
}

void sub_10000ACC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a3;
  v60 = a4;
  v61 = sub_10001633C();
  v59 = *(v61 - 8);
  v5 = *(v59 + 64);
  __chkstk_darwin(v61);
  v58 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004FAC(&qword_100025B28, &qword_100017CB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v62 = &v57 - v9;
  v10 = sub_1000166AC();
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  __chkstk_darwin(v10);
  v57 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004FAC(&qword_100025B20, &qword_100017CA8);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v65 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v57 - v18;
  __chkstk_darwin(v17);
  v21 = &v57 - v20;
  v22 = sub_100004FAC(&qword_100025B30, &qword_100017CB8);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v57 - v24;
  v26 = sub_10001602C();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v57 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a2;
  sub_100007E28(a2, v21, &qword_100025B20, &qword_100017CA8);
  v31 = sub_1000166EC();
  v32 = *(v31 - 8);
  v68 = *(v32 + 48);
  if (v68(v21, 1, v31) == 1)
  {
    sub_100007DC8(v21, &qword_100025B20, &qword_100017CA8);
    (*(v27 + 56))(v25, 1, 1, v26);
LABEL_4:
    sub_100007DC8(v25, &qword_100025B30, &qword_100017CB8);
    goto LABEL_6;
  }

  sub_1000166CC();
  (*(v32 + 8))(v21, v31);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    goto LABEL_4;
  }

  (*(v27 + 32))(v30, v25, v26);
  v34 = *(v67 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor);
  v33 = *(v67 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor + 8);
  swift_getObjectType();
  sub_10001663C();
  (*(v27 + 8))(v30, v26);
LABEL_6:
  v35 = v63;
  v36 = v66;
  sub_100007E28(v66, v19, &qword_100025B20, &qword_100017CA8);
  v37 = v68(v19, 1, v31);
  v38 = v62;
  if (v37 == 1)
  {
    sub_100007DC8(v19, &qword_100025B20, &qword_100017CA8);
    (*(v35 + 56))(v38, 1, 1, v64);
    v39 = v67;
LABEL_9:
    sub_100007DC8(v38, &qword_100025B28, &qword_100017CB0);
    goto LABEL_11;
  }

  sub_1000166DC();
  (*(v32 + 8))(v19, v31);
  v40 = v64;
  v41 = (*(v35 + 48))(v38, 1, v64);
  v39 = v67;
  if (v41 == 1)
  {
    goto LABEL_9;
  }

  v42 = *(v35 + 32);
  v63 = v32;
  v43 = v57;
  v42(v57, v38, v40);
  v45 = *(v39 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor);
  v44 = *(v39 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor + 8);
  swift_getObjectType();
  sub_10001662C();
  v46 = v43;
  v32 = v63;
  (*(v35 + 8))(v46, v40);
LABEL_11:
  v47 = v65;
  sub_100007E28(v36, v65, &qword_100025B20, &qword_100017CA8);
  if (v68(v47, 1, v31) == 1)
  {
    sub_100007DC8(v47, &qword_100025B20, &qword_100017CA8);
  }

  else
  {
    v48 = sub_1000166BC();
    (*(v32 + 8))(v47, v31);
    if (v48)
    {
      goto LABEL_15;
    }
  }

  v49 = *(v39 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_deferredAction);
  v69._object = 0x8000000100019710;
  v69._countAndFlagsBits = 0xD000000000000011;
  sub_100015DCC(v69);
LABEL_15:
  if (*(v39 + 48) == 1)
  {
LABEL_21:
    sub_100009A04();
    return;
  }

  v51 = v58;
  v50 = v59;
  v52 = v61;
  (*(v59 + 16))(v58, v60, v61);
  v53 = (*(v50 + 88))(v51, v52);
  if (v53 != enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
  {
    if (v53 != enum case for TTRIViewControllerDismissalState.requested(_:))
    {
      sub_100016B2C();
      __break(1u);
      return;
    }

    goto LABEL_21;
  }

  v54 = *(*sub_10000BDC4((v39 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_router), *(v39 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_router + 24)) + 24);
  if (v54)
  {
    v55 = [v54 navigationController];
    if (v55)
    {
      v56 = v55;
    }
  }
}

uint64_t sub_10000B498()
{
  if (*(v0 + 48) == 1)
  {
    return sub_100009E78();
  }

  return result;
}

uint64_t sub_10000B4BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100015F9C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10000B52C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100025500 != -1)
  {
    swift_once();
  }

  v2 = sub_10001687C();
  sub_10000C698(v2, qword_100025990);
  v3 = sub_10001686C();
  v4 = sub_1000169AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRIExtensionCreateReminderPresenter.autoCompletReminderListScope(for:) should not be called", v5, 2u);
  }

  v6 = sub_1000162CC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, 1, 1, v6);
}

uint64_t sub_10000B730@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000160AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10000B7E4(uint64_t a1, uint64_t a2)
{
  v18[1] = a2;
  v4 = sub_1000160AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor + 8);
  v10 = *(v2 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor);
  swift_getObjectType();
  result = sub_1000165BC();
  if (result)
  {
    v12 = result;
    sub_1000165CC();
    if (v20)
    {
      sub_10000CC08(&v19, v21);
      (*(v5 + 16))(v8, a1, v4);
      sub_10000CCFC(v21, &v19);
      v13 = *(v2 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_editingSessionSharedProperties);
      swift_allocObject();
      swift_weakInit();
      v14 = sub_1000163FC();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();

      v17 = sub_1000163EC();
      sub_10000CDB0(v21);

      return v17;
    }

    else
    {

      sub_100007DC8(&v19, &qword_100025BA0, &qword_100017D18);
      return 0;
    }
  }

  return result;
}

void sub_10000BA38(id a1)
{
  if (qword_100025500 != -1)
  {
    swift_once();
  }

  v2 = sub_10001687C();
  sub_10000C698(v2, qword_100025990);
  v3 = a1;
  oslog = sub_10001686C();
  v4 = sub_1000169AC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    if (a1)
    {
      a1 = [v3 objectID];
    }

    sub_100004FAC(&qword_100025BB0, &unk_100017D20);
    v7 = sub_100016A4C();
    v9 = v8;

    v10 = sub_10000F9CC(v7, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v4, "TTRIExtensionCreateReminderPresenter: setPendingMoveTargetList is called unexpectedly {listID: %s}", v5, 0xCu);
    sub_10000CDB0(v6);
  }

  else
  {
  }
}

uint64_t sub_10000BC00()
{
  v0 = sub_10001668C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001667C();
  sub_10000CD68(&qword_100025BA8, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets);
  v5 = sub_100016A7C();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v5)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = *(Strong + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_deferredAction);
      v11._object = 0x8000000100019710;
      v11._countAndFlagsBits = 0xD000000000000011;
      sub_100015DCC(v11);
    }
  }

  sub_10001666C();
  sub_100016A7C();
  return (v6)(v4, v0);
}

void *sub_10000BDC4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000BE10(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100016B5C();
  sub_1000168DC();
  v6 = sub_100016B7C();

  return sub_10000BE88(a1, a2, v6);
}

unint64_t sub_10000BE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100016B3C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000BF40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004FAC(&qword_100025B48, &qword_100017CD0);
    v3 = sub_100016B0C();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007E28(v4, &v13, &qword_100025B50, &qword_100017CD8);
      v5 = v13;
      v6 = v14;
      result = sub_10000BE10(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000C72C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000C070(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004FAC(&qword_100025B40, &qword_100017CC8);
    v3 = sub_100016B0C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000BE10(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10000C174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v4 = sub_10001633C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004FAC(&qword_100025B20, &qword_100017CA8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v12 = &v20 - v11;
  v13 = *(v3 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor + 8);
  v14 = *(v3 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor);
  swift_getObjectType();
  sub_1000165FC();
  sub_100007E28(v20, v12, &qword_100025B20, &qword_100017CA8);
  (*(v5 + 16))(v7, v21, v4);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = (v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v5 + 80) + v16 + 8) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_10000CAF8(v12, v18 + v15, &qword_100025B20, &qword_100017CA8);
  *(v18 + v16) = v3;
  (*(v5 + 32))(v18 + v17, v7, v4);

  v19 = sub_1000167FC();
  sub_10001680C();
}

uint64_t sub_10000C3E4()
{
  v1 = *(sub_100004FAC(&qword_100025B20, &qword_100017CA8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_10001633C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_1000166EC();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v2 | v7;
  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + v7 + 8) & ~v7;
  v14 = *(v0 + v12);

  (*(v6 + 8))(v0 + v13, v5);

  return _swift_deallocObject(v0, v13 + v8, v11 | 7);
}

void sub_10000C59C(uint64_t a1)
{
  v3 = *(sub_100004FAC(&qword_100025B20, &qword_100017CA8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_10001633C() - 8);
  sub_10000ACC8(a1, v1 + v4, *(v1 + v5), v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80)));
}

uint64_t sub_10000C698(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000C6D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10000C714(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_10000C720(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

_OWORD *sub_10000C72C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *sub_10000C73C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_10000C7A0()
{
  ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
  v2 = *(ReminderViewModel - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(ReminderViewModel);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004FAC(&qword_100025B58, &qword_100017CE0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  sub_100008364(&v15 - v11);
  v13 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_viewModel;
  swift_beginAccess();
  sub_10000C994(v12, v0 + v13);
  swift_endAccess();
  sub_100007E28(v0 + v13, v10, &qword_100025B58, &qword_100017CE0);
  if ((*(v2 + 48))(v10, 1, ReminderViewModel) == 1)
  {
    return sub_100007DC8(v10, &qword_100025B58, &qword_100017CE0);
  }

  sub_10000CA04(v10, v5);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100012E48(v5);
    swift_unknownObjectRelease();
  }

  return sub_10000CA68(v5);
}

uint64_t sub_10000C994(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004FAC(&qword_100025B58, &qword_100017CE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CA04(uint64_t a1, uint64_t a2)
{
  ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
  (*(*(ReminderViewModel - 8) + 32))(a2, a1, ReminderViewModel);
  return a2;
}

uint64_t sub_10000CA68(uint64_t a1)
{
  ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
  (*(*(ReminderViewModel - 8) + 8))(a1, ReminderViewModel);
  return a1;
}

void sub_10000CAC4(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_10000CAF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004FAC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000CB60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000CBB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000CC08(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000CC20()
{
  if (qword_100025500 != -1)
  {
    swift_once();
  }

  v0 = sub_10001687C();
  sub_10000C698(v0, qword_100025990);
  v1 = sub_10001686C();
  v2 = sub_1000169AC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "TTRIExtensionCreateReminderPresenter.shouldApplyListOfAutoCompleteSuggestion() should not be called", v3, 2u);
  }

  return 0;
}

uint64_t sub_10000CCFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000CD68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000CDB0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000CE24()
{
  v0 = sub_10001687C();
  sub_10000C73C(v0, qword_100025BB8);
  v1 = sub_10000C698(v0, qword_100025BB8);
  if (qword_100025518 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C698(v0, qword_100026138);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10000CEEC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR___TTRIVSReminderCreationViewServiceViewController_currentEventHandler];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *&v3[OBJC_IVAR___TTRIVSReminderCreationViewServiceViewController_contentNavigationController] = 0;
  v6 = &v3[OBJC_IVAR___TTRIVSReminderCreationViewServiceViewController_extensionCreateReminderInterface];
  *v6 = 0;
  *(v6 + 1) = 0;
  if (a2)
  {
    v7 = sub_1000168AC();
  }

  else
  {
    v7 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for TTRIVSReminderCreationViewServiceViewController();
  v8 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", v7, a3);

  v9 = qword_100025508;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_10001687C();
  sub_10000C698(v11, qword_100025BB8);
  v12 = sub_10001686C();
  v13 = sub_10001699C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "TTRIVSReminderCreationViewServiceViewController is ready and waiting", v14, 2u);
  }

  return v10;
}

void sub_10000D2E0()
{
  v1 = v0;
  v2 = sub_10001687C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 _remoteViewControllerProxy])
  {
    sub_100016A6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  sub_10000EE9C(v17, &v15);
  if (*(&v16 + 1))
  {
    sub_100004FAC(&qword_100025D58, &unk_100017E20);
    if (swift_dynamicCast())
    {
      sub_10000EF0C(v17);
      return;
    }
  }

  else
  {
    sub_10000EF0C(&v15);
  }

  if (qword_100025508 != -1)
  {
    swift_once();
  }

  v7 = sub_10000C698(v2, qword_100025BB8);
  (*(v3 + 16))(v6, v7, v2);
  sub_100004FAC(&qword_100025D50, &unk_100017E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100017D30;
  *(inited + 32) = 48;
  *(inited + 40) = 0xE100000000000000;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_10000EE9C(v17, &v11);
  if (v12)
  {
    sub_10000C72C(&v11, &v15);
  }

  else
  {
    *(&v16 + 1) = &type metadata for String;
    *&v15 = 0x296C696E28;
    *(&v15 + 1) = 0xE500000000000000;
  }

  sub_100016ADC();
  sub_10000CDB0(&v15);
  v10 = v13;
  v9 = v14;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v10;
  *(inited + 56) = v9;

  sub_10000BF40(inited);

  sub_10000BF40(&_swiftEmptyArrayStorage);
  sub_10000F754("Expecting _remoteViewControllerProxy to be of type REMReminderCreationRemoteViewController, but got %@ instead", 110, 2);
  __break(1u);
}

void sub_10000D61C(uint64_t a1)
{
  v3 = OBJC_IVAR___TTRIVSReminderCreationViewServiceViewController_contentNavigationController;
  v4 = *&v1[OBJC_IVAR___TTRIVSReminderCreationViewServiceViewController_contentNavigationController];
  if (!v4)
  {
LABEL_4:
    v9 = [objc_allocWithZone(UINavigationController) initWithRootViewController:a1];
    [v1 addChildViewController:v9];
    v10 = [v9 view];

    if (v10)
    {
      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
      v11 = [v1 view];
      if (v11)
      {
        v12 = v11;
        [v11 addSubview:v10];

        sub_100004FAC(&qword_1000258A8, &qword_100017820);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_100017D40;
        v14 = [v1 view];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 leadingAnchor];

          v17 = [v10 leadingAnchor];
          v18 = [v16 constraintEqualToAnchor:v17];

          *(v13 + 32) = v18;
          v19 = [v1 view];
          if (v19)
          {
            v20 = v19;
            v21 = [v19 trailingAnchor];

            v22 = [v10 trailingAnchor];
            v23 = [v21 constraintEqualToAnchor:v22];

            *(v13 + 40) = v23;
            v24 = [v1 view];
            if (v24)
            {
              v25 = v24;
              v26 = [v24 topAnchor];

              v27 = [v10 topAnchor];
              v28 = [v26 constraintEqualToAnchor:v27];

              *(v13 + 48) = v28;
              v29 = [v1 view];
              if (v29)
              {
                v30 = v29;
                v31 = objc_opt_self();
                v32 = [v30 bottomAnchor];

                v33 = [v10 bottomAnchor];
                v34 = [v32 constraintEqualToAnchor:v33];

                *(v13 + 56) = v34;
                sub_100007C80(0, &qword_100025D48, NSLayoutConstraint_ptr);
                isa = sub_10001691C().super.isa;

                [v31 activateConstraints:isa];

                [v9 didMoveToParentViewController:v1];
                v36 = *&v1[v3];
                *&v1[v3] = v9;
                v9;

                return;
              }

              goto LABEL_16;
            }

LABEL_15:
            __break(1u);
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  [v5 willMoveToParentViewController:0];
  v6 = [v5 view];
  if (v6)
  {
    v7 = v6;
    [v6 removeFromSuperview];

    [v5 removeFromParentViewController];
    v8 = *&v1[v3];
    *&v1[v3] = 0;

    goto LABEL_4;
  }

LABEL_17:
  __break(1u);
}

id sub_10000DA40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIVSReminderCreationViewServiceViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000DAF4(uint64_t (*a1)(void, double, double), int a2, id a3)
{
  v4 = [a3 viewIfLoaded];
  if (v4)
  {
    v5 = v4;
    [v4 frame];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = 0.0;
    v9 = 0.0;
  }

  return a1(0, v7, v9);
}

void sub_10000DC0C(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  if (a1)
  {
    v5 = a4.n128_u64[0];
    v6 = a3.n128_u64[0];
    v7 = sub_100015C5C();
    a3.n128_u64[0] = v6;
    a4.n128_u64[0] = v5;
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a2 + 16))(a2, a3, a4);
}

uint64_t sub_10000DC8C()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10000DCF8()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_10001677C();
  v3 = v2;
  v4 = sub_10001675C();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;
  sub_1000163CC();
  v6 = v3;

  v7 = sub_10001681C();

  return v7;
}

uint64_t sub_10000DDBC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000DDFC()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + 32);
  return sub_10001611C();
}

uint64_t sub_10000DE24(void *a1, uint64_t a2, int a3)
{
  v32 = a3;
  v4 = [objc_allocWithZone(REMStore) init];
  v5 = objc_allocWithZone(TTRUndoManager);
  v6 = sub_1000168AC();
  v7 = [v5 initWithDebugIdentifier:v6];

  sub_10001606C();
  sub_10001605C();
  type metadata accessor for ReminderCreationEventHandler();
  sub_10000DCF8();
  v8 = sub_10001642C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = a1;
  v12 = v4;

  v13 = v7;

  v14 = sub_10001640C();
  ReminderRouter = type metadata accessor for TTRIExtensionCreateReminderRouter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v16 + 24) = 0;
  v34[3] = ReminderRouter;
  v34[4] = &off_100021720;
  v34[0] = v16;
  ReminderPresenter = type metadata accessor for TTRIExtensionCreateReminderPresenter();
  v18 = *(ReminderPresenter + 48);
  v19 = *(ReminderPresenter + 52);
  v20 = swift_allocObject();
  v21 = sub_10000ED9C(v34, ReminderRouter);
  v22 = *(*(ReminderRouter - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (&v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v27 = v13;

  v28 = sub_10000E1F8(v14, v26, sub_10000EF74, 0, sub_10000F158, 0, v27, v32, v20);

  sub_10000CDB0(v34);
  type metadata accessor for TTRIExtensionCreateReminderViewController();
  v34[0] = v28;
  v34[1] = &off_100021590;
  sub_10000EDEC(&qword_100025D28, type metadata accessor for TTRIExtensionCreateReminderViewController);
  sub_100015E1C();
  v29 = v33;
  sub_10000EDEC(&qword_100025D30, type metadata accessor for TTRIExtensionCreateReminderPresenter);

  sub_10001641C();

  v28[3] = &off_100021820;
  swift_unknownObjectWeakAssign();
  v28[5] = &off_100021638;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v29;
}

uint64_t *sub_10000E1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t *a9)
{
  v56 = a3;
  v57 = a5;
  v58 = *a9;
  v15 = sub_10001679C();
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = *(v59 + 64);
  __chkstk_darwin(v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100004FAC(&qword_100025B58, &qword_100017CE0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v55 - v21;
  v63[3] = type metadata accessor for TTRIExtensionCreateReminderRouter();
  v63[4] = &off_100021720;
  v63[0] = a2;
  a9[3] = 0;
  swift_unknownObjectWeakInit();
  a9[5] = 0;
  swift_unknownObjectWeakInit();
  *(a9 + 48) = 0;
  v23 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_viewModel;
  ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
  (*(*(ReminderViewModel - 8) + 56))(a9 + v23, 1, 1, ReminderViewModel);
  *(a9 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter____lazy_storage___attachmentThumbnailsManager) = 0;
  v25 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_editingSessionSharedProperties;
  v26 = sub_10001673C();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  *(a9 + v25) = sub_10001672C();
  v29 = (a9 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor);
  *v29 = a1;
  v29[1] = &protocol witness table for TTRExtensionCreateReminderInteractor;
  sub_10000CCFC(v63, a9 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_router);
  *(a9 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_undoManager) = a7;
  *(a9 + 48) = a8;
  v30 = sub_1000165AC();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = a7;
  *(a9 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_inCellEditingPresenterHelper) = sub_10001656C();
  v34 = (a9 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_makeCellTitleModule);
  v35 = v57;
  *v34 = v56;
  v34[1] = a4;
  v36 = (a9 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_makeCellNotesModule);
  *v36 = v35;
  v36[1] = a6;
  sub_100007C80(0, &qword_100025B88, OS_dispatch_queue_ptr);

  sub_1000169FC();
  v37 = sub_100015DFC();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  *(a9 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_deferredAction) = sub_100015DDC();
  sub_10000EDEC(&qword_100025D38, type metadata accessor for TTRIExtensionCreateReminderPresenter);

  sub_100015DEC();

  v40 = *(a9 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_inCellEditingPresenterHelper);
  sub_10000EDEC(&qword_100025D40, type metadata accessor for TTRIExtensionCreateReminderPresenter);

  sub_10001659C();

  sub_100008364(v22);
  v41 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_viewModel;
  swift_beginAccess();
  sub_10000EE34(v22, a9 + v41, &qword_100025B58, &qword_100017CE0);
  swift_endAccess();
  sub_100015D9C();
  v42 = sub_100015D6C();
  sub_1000167CC();
  sub_1000167BC();
  v43 = sub_100004FAC(&qword_100025B38, &qword_100017CC0);
  v44 = &v18[v43[12]];
  v45 = v43[16];
  v46 = &v18[v43[20]];
  v47 = enum case for REMUserOperation.createReminder(_:);
  v48 = sub_10001678C();
  (*(*(v48 - 8) + 104))(v18, v47, v48);
  *v44 = sub_100015D7C();
  v44[1] = v49;
  sub_100015D8C();
  v61 = sub_100016B8C();
  v62 = v50;
  v64._countAndFlagsBits = 0x69736E657478452DLL;
  v64._object = 0xEA00000000006E6FLL;
  sub_1000168EC(v64);
  v51 = v62;
  *v46 = v61;
  v46[1] = v51;
  v53 = v59;
  v52 = v60;
  (*(v59 + 104))(v18, enum case for REMAnalyticsEvent.userOperation(_:), v60);
  sub_1000167AC();

  (*(v53 + 8))(v18, v52);
  sub_10000CDB0(v63);
  return a9;
}

void sub_10000E74C(void *a1, uint64_t a2, void (**a3)(void, void, double, double))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = type metadata accessor for ReminderCreationEventHandler();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = sub_10001623C();
  v40 = &protocol witness table for TTRCurrentUserActivityProvider;
  sub_10000EC40(v38);
  _Block_copy(a3);
  sub_10001622C();
  v9 = sub_10001612C();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v8 + 32) = sub_10001610C();
  *(v8 + 16) = a1;
  swift_unknownObjectWeakAssign();
  v39 = v7;
  v38[0] = v8;
  v12 = OBJC_IVAR___TTRIVSReminderCreationViewServiceViewController_currentEventHandler;
  swift_beginAccess();
  v13 = a1;

  sub_10000EE34(v38, a2 + v12, &qword_100025D20, &unk_100017E00);
  swift_endAccess();
  v14 = [v13 wantsExtendedDetailOnlyView];
  v15 = [v13 reminderID];

  v16 = sub_10000DE24(v15, v8, v14);
  v18 = v17;
  v20 = v19;

  v21 = (a2 + OBJC_IVAR___TTRIVSReminderCreationViewServiceViewController_extensionCreateReminderInterface);
  v22 = *(a2 + OBJC_IVAR___TTRIVSReminderCreationViewServiceViewController_extensionCreateReminderInterface);
  *v21 = v18;
  v21[1] = v20;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_10000D61C(v16);
  v24 = v23;
  if (v14)
  {
    v25 = swift_allocObject();
    v25[2] = sub_10000EC38;
    v25[3] = v6;
    v25[4] = v24;
    v26 = *(v18 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor);
    v27 = *(v18 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor + 8);
    swift_getObjectType();

    v28 = v24;
    sub_10001660C();
    v29 = swift_allocObject();
    *(v29 + 16) = v18;
    *(v29 + 24) = 0;
    *(v29 + 32) = sub_10000ECE4;
    *(v29 + 40) = v25;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_10000ED38;
    *(v30 + 24) = v29;
    swift_unknownObjectRetain();

    v31 = sub_1000167FC();
    sub_10001680C();

    swift_unknownObjectRelease();
  }

  else
  {
    v32 = [v23 viewIfLoaded];
    if (v32)
    {
      v33 = v32;
      [v32 frame];
      v35 = v34;
      v37 = v36;
    }

    else
    {
      v35 = 0.0;
      v37 = 0.0;
    }

    a3[2](a3, 0, v35, v37);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10000EC00()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t *sub_10000EC40(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000ECA4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000ECF0()
{
  v1 = v0[2];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000ED48()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000ED9C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10000EDEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000EE34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004FAC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000EE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004FAC(&qword_100025D20, &unk_100017E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000EF0C(uint64_t a1)
{
  v2 = sub_100004FAC(&qword_100025D20, &unk_100017E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000EF74@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v15[0] = a1;
  v15[1] = a2;
  v2 = sub_100015CEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10001665C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_10001664C();
  v18[3] = v7;
  v18[4] = &protocol witness table for TTRReminderTitleAttributesNoOpInteractor;
  v17 = 0;
  v18[0] = v10;
  memset(v16, 0, sizeof(v16));
  (*(v3 + 104))(v6, enum case for TTRIReminderCellModuleOwnerModuleType.extensionCreateReminder(_:), v2);
  v11 = sub_1000161DC();
  v13 = v12;
  (*(v3 + 8))(v6, v2);
  sub_10000F448(v16);
  sub_10000CDB0(v18);
  *&v16[0] = v11;
  *(&v16[0] + 1) = v13;
  sub_10000F3EC(v19, v18);
  sub_100004FAC(&qword_100025D98, &qword_100017EC8);
  sub_1000161AC();
  return sub_10000CDB0(v19);
}

uint64_t sub_10000F158()
{
  v0 = sub_100015CEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v1 + 104))(v4, enum case for TTRIReminderCellModuleOwnerModuleType.extensionCreateReminder(_:), v0);
  v5 = sub_1000161CC();
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  v10 = v5;
  v11 = v7;
  sub_10000F3EC(v12, v9);
  sub_100004FAC(&qword_100025D88, &qword_100017EB8);
  sub_1000161AC();
  return sub_10000CDB0(v12);
}

id TTRIExtensionCreateReminderAssembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIExtensionCreateReminderAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIExtensionCreateReminderAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIExtensionCreateReminderAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIExtensionCreateReminderAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000F3EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000F448(uint64_t a1)
{
  v2 = sub_100004FAC(&qword_100025D90, &qword_100017EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000F4B0()
{
  sub_10001674C();
  sub_10001683C();
  sub_100004FAC(&qword_100025DA0, &qword_100017EE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100017D30;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  sub_100016AAC();
  v1 = sub_1000168AC();

  *(inited + 48) = v1;
  sub_10000C070(inited);
  swift_setDeallocating();
  sub_10000FF74(inited + 32);
  sub_10001682C();

  if (qword_100025510 != -1)
  {
    swift_once();
  }

  v2 = sub_10001687C();
  sub_10000C698(v2, qword_100026120);

  v3 = sub_10001686C();
  v4 = sub_1000169BC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    v6 = sub_100016AAC();
    v8 = sub_10000F9CC(v6, v7, &v12);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = sub_10001689C();
    v11 = sub_10000F9CC(v9, v10, &v12);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s; UserInfo=%s", v5, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_10000F754(uint64_t a1, uint64_t a2, char a3)
{

  v5 = sub_10001686C();
  v6 = sub_1000169AC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136446722;
    v8 = sub_100016AAC();
    v10 = sub_10000F9CC(v8, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_10001689C();
    v13 = a3;
    v14 = sub_10000F9CC(v11, v12, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2082;
    v15 = sub_10001689C();
    v17 = sub_10000F9CC(v15, v16, &v18);
    a3 = v13;

    *(v7 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s; UserInfo=%s; PublicUserInfo=%{public}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  if (a3)
  {
    goto LABEL_6;
  }

  if (a1)
  {
    rdi_os_crash();
LABEL_6:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10000F958(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = sub_10001687C();
  sub_10000C73C(v5, a2);
  sub_10000C698(v5, a2);
  v6 = [objc_opt_self() *a3];
  return sub_10001688C();
}

uint64_t sub_10000F9CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000FA98(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_10000F3EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000CDB0(v11);
  return v7;
}

unint64_t sub_10000FA98(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000FBA4(a5, a6);
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
    result = sub_100016ACC();
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

char *sub_10000FBA4(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000FBF0(a1, a2);
  sub_10000FD20(&off_1000212B8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000FBF0(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10000FE0C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100016ACC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000168FC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000FE0C(v10, 0);
        result = sub_100016A8C();
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

uint64_t sub_10000FD20(uint64_t result)
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

  result = sub_10000FE80(result, v12, 1, v3);
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

void *sub_10000FE0C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100004FAC(&qword_100025DB0, &unk_100017EF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000FE80(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004FAC(&qword_100025DB0, &unk_100017EF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_10000FF74(uint64_t a1)
{
  v2 = sub_100004FAC(&qword_100025DA8, &qword_100017EE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000FFE0(void *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong navigationController];

    if (v6)
    {
      [v6 pushViewController:a1 animated:a2 & 1];

      v7 = *(v2 + 24);
      *(v2 + 24) = a1;

      v8 = a1;
    }
  }
}

void sub_100010098(uint64_t a1, uint64_t a2)
{
  sub_100015F2C();
  v14._object = 0x8000000100019AB0;
  v15._countAndFlagsBits = 0xD00000000000002FLL;
  v15._object = 0x8000000100019AD0;
  v14._countAndFlagsBits = 0xD000000000000016;
  sub_100015E0C(v14, v15);
  v4 = sub_1000168AC();

  v5 = sub_1000168AC();

  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  sub_100015F3C();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v8 = sub_1000168AC();

  v13[4] = sub_1000103C0;
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000102BC;
  v13[3] = &unk_100021768;
  v9 = _Block_copy(v13);

  v10 = [objc_opt_self() actionWithTitle:v8 style:0 handler:v9];
  _Block_release(v9);

  [v6 addAction:v10];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    [Strong presentViewController:v6 animated:1 completion:0];
  }
}

void sub_1000102BC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100010324()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100010388()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000103C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000103E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_100010400(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v24 = *a2;
    *a1 = *a2;
    a1 = (v24 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000160AC();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v9 = *(a2 + v8);
    *(a1 + v8) = v9;
    v10 = a3[7];
    v11 = a3[8];
    v12 = *(a2 + v10);
    *(a1 + v10) = v12;
    *(a1 + v11) = *(a2 + v11);
    v13 = a3[9];
    v14 = sub_1000164AC();
    v15 = *(*(v14 - 8) + 16);
    v16 = v9;
    v17 = v12;
    v15(a1 + v13, a2 + v13, v14);
    v18 = a3[10];
    v19 = (a1 + v18);
    v20 = (a2 + v18);
    ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v22 = *(ReminderView - 8);
    if ((*(v22 + 48))(v20, 1, ReminderView))
    {
      v23 = sub_100004FAC(&qword_100025B78, &unk_100017D00);
      memcpy(v19, v20, *(*(v23 - 8) + 64));
    }

    else
    {
      v25 = *v20;
      *v19 = *v20;
      v26 = *(ReminderView + 20);
      v27 = sub_100015C8C();
      v41 = *(*(v27 - 8) + 16);
      v28 = v25;
      v41(v19 + v26, v20 + v26, v27);
      v29 = *(ReminderView + 24);
      v30 = *(v20 + v29);
      *(v19 + v29) = v30;
      v31 = *(v22 + 56);
      v32 = v30;
      v31(v19, 0, 1, ReminderView);
    }

    v33 = a3[11];
    v34 = a1 + v33;
    v35 = a2 + v33;
    v36 = v35[8];
    if (v36 == 255)
    {
      *v34 = *v35;
      v34[8] = v35[8];
    }

    else
    {
      v37 = *v35;
      v38 = v36 & 1;
      v39 = *v35;
      *v34 = v37;
      v34[8] = v38;
    }
  }

  return a1;
}

void sub_1000106D8(uint64_t a1, int *a2)
{
  v4 = sub_1000160AC();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = a2[9];
  v6 = sub_1000164AC();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = (a1 + a2[10]);
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  if (!(*(*(ReminderView - 8) + 48))(v7, 1, ReminderView))
  {

    v9 = *(ReminderView + 20);
    v10 = sub_100015C8C();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
  }

  v11 = a1 + a2[11];
  if (*(v11 + 8) != 255)
  {
    v12 = *v11;
  }
}

uint64_t sub_100010874(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = a3[7];
  v10 = a3[8];
  v11 = *(a2 + v9);
  *(a1 + v9) = v11;
  *(a1 + v10) = *(a2 + v10);
  v12 = a3[9];
  v13 = sub_1000164AC();
  v14 = *(*(v13 - 8) + 16);
  v15 = v8;
  v16 = v11;
  v14(a1 + v12, a2 + v12, v13);
  v17 = a3[10];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v21 = *(ReminderView - 8);
  if ((*(v21 + 48))(v19, 1, ReminderView))
  {
    v22 = sub_100004FAC(&qword_100025B78, &unk_100017D00);
    memcpy(v18, v19, *(*(v22 - 8) + 64));
  }

  else
  {
    v23 = *v19;
    *v18 = *v19;
    v24 = *(ReminderView + 20);
    v25 = sub_100015C8C();
    v39 = *(*(v25 - 8) + 16);
    v26 = v23;
    v39(v18 + v24, v19 + v24, v25);
    v27 = *(ReminderView + 24);
    v28 = *(v19 + v27);
    *(v18 + v27) = v28;
    v29 = *(v21 + 56);
    v30 = v28;
    v29(v18, 0, 1, ReminderView);
  }

  v31 = a3[11];
  v32 = a1 + v31;
  v33 = (a2 + v31);
  v34 = *(v33 + 8);
  if (v34 == 255)
  {
    *v32 = *v33;
    *(v32 + 8) = *(v33 + 8);
  }

  else
  {
    v35 = *v33;
    v36 = v34 & 1;
    v37 = *v33;
    *v32 = v35;
    *(v32 + 8) = v36;
  }

  return a1;
}

uint64_t sub_100010AE0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v7 = a3[6];
  v8 = *(a2 + v7);
  v9 = *(a1 + v7);
  *(a1 + v7) = v8;
  v10 = v8;

  v11 = a3[7];
  v12 = *(a2 + v11);
  v13 = *(a1 + v11);
  *(a1 + v11) = v12;
  v14 = v12;

  *(a1 + a3[8]) = *(a2 + a3[8]);
  v15 = a3[9];
  v16 = sub_1000164AC();
  (*(*(v16 - 8) + 24))(a1 + v15, a2 + v15, v16);
  v17 = a3[10];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v21 = *(ReminderView - 8);
  v22 = *(v21 + 48);
  v23 = v22(v18, 1, ReminderView);
  v24 = v22(v19, 1, ReminderView);
  if (v23)
  {
    if (!v24)
    {
      v25 = *v19;
      *v18 = *v19;
      v26 = *(ReminderView + 20);
      v27 = sub_100015C8C();
      v59 = *(*(v27 - 8) + 16);
      v28 = v25;
      v59(v18 + v26, v19 + v26, v27);
      v29 = *(ReminderView + 24);
      v30 = *(v19 + v29);
      *(v18 + v29) = v30;
      v31 = *(v21 + 56);
      v32 = v30;
      v31(v18, 0, 1, ReminderView);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v24)
  {
    sub_100010E58(v18);
LABEL_6:
    v33 = sub_100004FAC(&qword_100025B78, &unk_100017D00);
    memcpy(v18, v19, *(*(v33 - 8) + 64));
    goto LABEL_7;
  }

  v48 = *v19;
  v49 = *v18;
  *v18 = *v19;
  v50 = v48;

  v51 = *(ReminderView + 20);
  v52 = sub_100015C8C();
  (*(*(v52 - 8) + 24))(v18 + v51, v19 + v51, v52);
  v53 = *(ReminderView + 24);
  v54 = *(v18 + v53);
  v55 = *(v19 + v53);
  *(v18 + v53) = v55;
  v56 = v55;

LABEL_7:
  v34 = a3[11];
  v35 = a1 + v34;
  v36 = a2 + v34;
  v37 = *(a1 + v34 + 8);
  v38 = *(v36 + 8);
  if (v37 == 255)
  {
    if (v38 == 255)
    {
      v57 = *v36;
      *(v35 + 8) = *(v36 + 8);
      *v35 = v57;
    }

    else
    {
      v44 = *v36;
      v45 = v38 & 1;
      v46 = v44;
      *v35 = v44;
      *(v35 + 8) = v45;
    }
  }

  else if (v38 == 255)
  {
    sub_100010EB4(v35);
    v47 = *(v36 + 8);
    *v35 = *v36;
    *(v35 + 8) = v47;
  }

  else
  {
    v39 = *v36;
    v40 = v38 & 1;
    v41 = v39;
    v42 = *v35;
    v43 = *(v35 + 8);
    *v35 = v39;
    *(v35 + 8) = v40;
  }

  return a1;
}

uint64_t sub_100010E58(uint64_t a1)
{
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  (*(*(ReminderView - 8) + 8))(a1, ReminderView);
  return a1;
}

uint64_t sub_100010EB4(uint64_t a1)
{
  v2 = *(a1 + 8);

  return a1;
}

uint64_t sub_100010EE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[9];
  v10 = sub_1000164AC();
  (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
  v11 = a3[10];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v15 = *(ReminderView - 8);
  if ((*(v15 + 48))(v13, 1, ReminderView))
  {
    v16 = sub_100004FAC(&qword_100025B78, &unk_100017D00);
    memcpy(v12, v13, *(*(v16 - 8) + 64));
  }

  else
  {
    *v12 = *v13;
    v17 = *(ReminderView + 20);
    v18 = sub_100015C8C();
    (*(*(v18 - 8) + 32))(v12 + v17, v13 + v17, v18);
    *(v12 + *(ReminderView + 24)) = *(v13 + *(ReminderView + 24));
    (*(v15 + 56))(v12, 0, 1, ReminderView);
  }

  v19 = a3[11];
  v20 = a1 + v19;
  v21 = a2 + v19;
  *v20 = *v21;
  *(v20 + 8) = *(v21 + 8);
  return a1;
}

uint64_t sub_1000110F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = a3[7];
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  v11 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v12 = sub_1000164AC();
  (*(*(v12 - 8) + 40))(a1 + v11, a2 + v11, v12);
  v13 = a3[10];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v17 = *(ReminderView - 8);
  v18 = *(v17 + 48);
  v19 = v18(v14, 1, ReminderView);
  v20 = v18(v15, 1, ReminderView);
  if (v19)
  {
    if (!v20)
    {
      *v14 = *v15;
      v21 = *(ReminderView + 20);
      v22 = sub_100015C8C();
      (*(*(v22 - 8) + 32))(v14 + v21, v15 + v21, v22);
      *(v14 + *(ReminderView + 24)) = *(v15 + *(ReminderView + 24));
      (*(v17 + 56))(v14, 0, 1, ReminderView);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v20)
  {
    sub_100010E58(v14);
LABEL_6:
    v23 = sub_100004FAC(&qword_100025B78, &unk_100017D00);
    memcpy(v14, v15, *(*(v23 - 8) + 64));
    goto LABEL_7;
  }

  v30 = *v14;
  *v14 = *v15;

  v31 = *(ReminderView + 20);
  v32 = sub_100015C8C();
  (*(*(v32 - 8) + 40))(v14 + v31, v15 + v31, v32);
  v33 = *(ReminderView + 24);
  v34 = *(v14 + v33);
  *(v14 + v33) = *(v15 + v33);

LABEL_7:
  v24 = a3[11];
  v25 = a1 + v24;
  v26 = a2 + v24;
  if (*(a1 + v24 + 8) == 255)
  {
LABEL_11:
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
    return a1;
  }

  v27 = *(v26 + 8);
  if (v27 == 255)
  {
    sub_100010EB4(v25);
    goto LABEL_11;
  }

  v28 = *v25;
  *v25 = *v26;
  *(v25 + 8) = v27 & 1;

  return a1;
}

uint64_t sub_10001140C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000160AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1000164AC();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v15 = sub_100004FAC(&qword_100025B78, &unk_100017D00);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1000115A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1000160AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = sub_1000164AC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = sub_100004FAC(&qword_100025B78, &unk_100017D00);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

void sub_100011740()
{
  v0 = sub_1000160AC();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_1000164AC();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_100011868();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initStructMetadata();
      }
    }
  }
}

void sub_100011868()
{
  if (!qword_100025EC8)
  {
    type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(255);
    v0 = sub_100016A5C();
    if (!v1)
    {
      atomic_store(v0, &qword_100025EC8);
    }
  }
}

uint64_t _s51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderViewModelV5ImageOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a2;
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t assignWithCopy for TTRIExtensionCreateReminderViewModel.Image(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a2;
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;

  return a1;
}

uint64_t assignWithTake for TTRIExtensionCreateReminderViewModel.Image(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIExtensionCreateReminderViewModel.Image(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TTRIExtensionCreateReminderViewModel.Image(uint64_t result, unsigned int a2, unsigned int a3)
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

void **sub_100011A5C(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v9 = sub_100015C8C();
    v10 = *(*(v9 - 8) + 16);
    v11 = v4;
    v10(v6 + v7, a2 + v7, v9);
    v12 = *(a3 + 24);
    v13 = *(a2 + v12);
    *(v6 + v12) = v13;
    v14 = v13;
  }

  return v6;
}

void sub_100011B48(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_100015C8C();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + *(a2 + 24));
}

void **sub_100011BD0(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = *(a3 + 20);
  v8 = sub_100015C8C();
  v9 = *(*(v8 - 8) + 16);
  v10 = v6;
  v9(a1 + v7, a2 + v7, v8);
  v11 = *(a3 + 24);
  v12 = *(a2 + v11);
  *(a1 + v11) = v12;
  v13 = v12;
  return a1;
}

void **sub_100011C74(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = sub_100015C8C();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  *(a1 + v11) = v13;
  v14 = v13;

  return a1;
}

char *sub_100011D14(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_100015C8C();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

void **sub_100011D9C(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = sub_100015C8C();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = *(a3 + 24);
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  return a1;
}

uint64_t sub_100011E48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100015C8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100011F08(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100015C8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100011FAC()
{
  result = sub_100015C8C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_100012070(uint64_t *a1, uint64_t *a2)
{
  sub_100007C80(0, &qword_100025828, NSObject_ptr);
  v4 = *a1;
  v5 = *a2;
  if (sub_100016A3C())
  {
    ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v7 = *(ReminderView + 20);
    if (sub_100015C6C())
    {
      v8 = *(ReminderView + 24);
      v9 = *(a1 + v8);
      v10 = *(a2 + v8);
      if (v9)
      {
        if (v10)
        {
          sub_100007C80(0, &qword_100025830, LPLinkMetadata_ptr);
          v11 = v10;
          v12 = v9;
          v13 = sub_100016A3C();

          if (v13)
          {
            return 1;
          }
        }
      }

      else if (!v10)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL sub_100012150(void *a1, char a2, void *a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      sub_100007C80(0, &qword_100025828, NSObject_ptr);
      return sub_100016A3C() & 1;
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  if (!a1)
  {
    return !a3;
  }

  if (!a3)
  {
    return 0;
  }

  sub_100007C80(0, &qword_100025838, UIImage_ptr);
  v6 = a3;
  v7 = a1;
  v8 = sub_100016A3C();

  result = 1;
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1000122DC()
{
  v0 = sub_10001687C();
  sub_10000C73C(v0, qword_100025FA8);
  v1 = sub_10000C698(v0, qword_100025FA8);
  if (qword_100025518 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C698(v0, qword_100026138);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000123A4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_needToUpdateCellSizesOnLayout] = 0;
  *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_tableDataController] = 0;
  *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_currentTextInputModeObserver] = 0;
  v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_generatedSuggestionTextHasBeenSelected] = 0;
  v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_isFirstUpdate] = 1;
  *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___titleCell] = 0;
  *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___notesCell] = 0;
  *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___detailsCell] = 0;
  v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_detailViewHasBeenAutomaticallyShown] = 0;
  sub_100015AB0(&qword_100025D28, v5, type metadata accessor for TTRIExtensionCreateReminderViewController);
  sub_100015E2C();
  *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_presenter] = v8[1];
  v8[0].receiver = v2;
  v8[0].super_class = ObjectType;
  swift_unknownObjectRetain();
  v6 = [(objc_super *)v8 initWithCoder:a1];

  swift_unknownObjectRelease();
  if (v6)
  {
  }

  return v6;
}

void *sub_100012544()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100004FAC(&qword_100025B58, &qword_100017CE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v26 - v5;
  ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
  v8 = *(ReminderViewModel - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(ReminderViewModel);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "viewDidLoad");
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = result;
  sub_10001698C();

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = result;
  sub_100015D5C();
  v15 = sub_1000168AC();

  [v14 setAccessibilityIdentifier:v15];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = result;
  [result setEditing:1];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v17 = result;
  [result setKeyboardDismissMode:3];

  sub_100012858();
  v18 = *&v1[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_presenter];
  v19 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_viewModel;
  swift_beginAccess();
  sub_100007E28(v18 + v19, v6, &qword_100025B58, &qword_100017CE0);
  if ((*(v8 + 48))(v6, 1, ReminderViewModel) == 1)
  {
    sub_100007DC8(v6, &qword_100025B58, &qword_100017CE0);
  }

  else
  {
    sub_1000158A0(v6, v11, type metadata accessor for TTRIExtensionCreateReminderViewModel);
    sub_100012E48(v11);
    sub_10000CA68(v11);
  }

  v20 = sub_10001630C();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_1000162FC();
  v24 = *&v1[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_currentTextInputModeObserver];
  *&v1[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_currentTextInputModeObserver] = v23;

  v25 = *(v18 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_inCellEditingPresenterHelper);

  sub_10001658C();
}

void sub_100012858()
{
  v1 = sub_100015FAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004FAC(&qword_1000260A8, &unk_1000181E8);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v49 - v11;
  if (![v0 isViewLoaded])
  {
    return;
  }

  if (!*&v0[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_tableDataController])
  {
    v50 = v1;
    v51 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_tableDataController;
    v52 = v2;
    sub_100004FAC(&qword_1000258A8, &qword_100017820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100018050;
    v18 = sub_10001619C();
    v19 = *(*(v18 - 8) + 56);
    v19(v12, 1, 1, v18);
    v19(v10, 1, 1, v18);
    v55 = sub_100004FAC(&qword_1000260B0, &qword_1000181F8);
    v20 = swift_allocObject();
    v54 = xmmword_100017D30;
    *(v20 + 16) = xmmword_100017D30;
    v53 = v0;
    v21 = sub_100013C94();
    v22 = sub_100015908(&qword_1000260B8, &qword_100026090, &unk_1000181D8);
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    v23 = sub_100015DBC();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    *(inited + 32) = sub_100015DAC();
    v49[1] = inited + 32;
    v19(v12, 1, 1, v18);
    v19(v10, 1, 1, v18);
    v26 = swift_allocObject();
    *(v26 + 16) = v54;
    v27 = sub_100013E3C();
    v28 = sub_100015908(&qword_1000260C0, &qword_100026088, &qword_1000181D0);
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    v29 = *(v23 + 48);
    v30 = *(v23 + 52);
    swift_allocObject();
    *(inited + 40) = sub_100015DAC();
    v19(v12, 1, 1, v18);
    v19(v10, 1, 1, v18);
    v31 = swift_allocObject();
    *(v31 + 16) = v54;
    v32 = v53;
    v33 = sub_100013F94();
    v34 = sub_100015908(&qword_1000260C8, &qword_100026050, &qword_1000181A0);
    *(v31 + 32) = v33;
    *(v31 + 40) = v34;
    v35 = *(v23 + 48);
    v36 = *(v23 + 52);
    swift_allocObject();
    v37 = inited;
    *(inited + 48) = sub_100015DAC();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v39 = Strong;
      v57 = sub_100015854();
      v58 = &protocol witness table for UITableView;
      v56 = v39;
      sub_100014484(inited);
      (*(v52 + 104))(v5, enum case for TTRTableViewAnimations.middle(_:), v50);
      v40 = objc_allocWithZone(sub_10001600C());
      v41 = sub_100015FFC();
      sub_100015FDC();
      v42 = *&v32[v51];
      *&v32[v51] = v41;
      v43 = v41;

      v44 = swift_unknownObjectWeakLoadStrong();
      if (v44)
      {
        v45 = v44;
        [v44 setDataSource:v43];

        v46 = swift_unknownObjectWeakLoadStrong();
        if (v46)
        {
          v47 = v46;
          swift_setDeallocating();
          v48 = *(v37 + 16);
          swift_arrayDestroy();
          [v47 setDelegate:v43];

          return;
        }

LABEL_17:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_100025520 != -1)
  {
    swift_once();
  }

  v13 = sub_10001687C();
  sub_10000C698(v13, qword_100025FA8);
  v55 = sub_10001686C();
  v14 = sub_1000169AC();
  if (os_log_type_enabled(v55, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v55, v14, "buildSections is called more than once", v15, 2u);
  }

  v16 = v55;
}

id sub_100012E48(char *a1)
{
  v2 = v1;
  v71 = a1;
  v3 = sub_10001671C();
  v72 = *(v3 - 8);
  v4 = *(v72 + 64);
  __chkstk_darwin(v3);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004FAC(&qword_100026058, &qword_1000181A8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v68 - v9;
  v11 = sub_100015FEC();
  v70 = *(v11 - 8);
  v12 = *(v70 + 64);
  __chkstk_darwin(v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004FAC(&qword_100025800, &qword_1000181B0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v68 - v20;
  v22 = sub_100004FAC(&qword_100026060, &qword_1000181B8);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v68 - v27;
  result = [v2 isViewLoaded];
  if (result)
  {
    v68 = v6;
    v69 = v3;
    sub_100013C94();
    v30 = sub_100015D1C();

    sub_10001614C();

    v31 = sub_100004FAC(&qword_100025B70, &qword_1000181C0);
    v32 = (*(*(v31 - 8) + 48))(v28, 1, v31);
    sub_100007DC8(v28, &qword_100026060, &qword_1000181B8);
    if (v32 == 1)
    {
      v33 = *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___titleCell];

      v34 = sub_100015D1C();

      v35 = *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_presenter];
      v37 = sub_100015AB0(&qword_100026068, v36, type metadata accessor for TTRIExtensionCreateReminderViewController);
      sub_1000096B4(v2, v37, v2, v26);
      sub_10001615C();
    }

    sub_100013E3C();
    v38 = sub_100015D1C();

    v39 = qword_1000260F0;
    swift_beginAccess();
    sub_100007E28(v38 + v39, v21, &qword_100025800, &qword_1000181B0);

    v40 = sub_100004FAC(&unk_100025570, &unk_100017CF0);
    LODWORD(v38) = (*(*(v40 - 8) + 48))(v21, 1, v40);
    sub_100007DC8(v21, &qword_100025800, &qword_1000181B0);
    if (v38 == 1)
    {
      v41 = *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___notesCell];

      v42 = sub_100015D1C();

      v43 = *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_presenter];
      v45 = sub_100015AB0(&qword_100026070, v44, type metadata accessor for TTRIExtensionCreateReminderViewController);
      sub_1000096D0(v2, v45, v2, v19);
      sub_100001F64(v19);
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v46 = result;
    ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
    v48 = v71;
    [v46 setEnabled:v71[*(ReminderViewModel + 20)]];

    v49 = v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_isFirstUpdate];
    v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_isFirstUpdate] = 0;
    v50 = *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_tableDataController];
    if (v50)
    {
      *v14 = v49 ^ 1;
      v51 = v70;
      v52 = (*(v70 + 104))(v14, enum case for TTRITableDataController.BatchUpdatesApplication.incremental(_:), v11);
      __chkstk_darwin(v52);
      *(&v68 - 2) = v2;
      *(&v68 - 1) = v48;
      v53 = v50;
      sub_100015FCC();

      (*(v51 + 8))(v14, v11);
    }

    v54 = *&v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_presenter];
    v55 = *(v54 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor);
    v56 = *(v54 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor + 8);
    swift_getObjectType();
    sub_1000165DC();
    v57 = v72;
    v58 = v69;
    if ((*(v72 + 48))(v10, 1, v69) == 1)
    {
      return sub_100007DC8(v10, &qword_100026058, &qword_1000181A8);
    }

    v59 = v68;
    sub_10001670C();
    sub_100015AB0(&qword_100026078, 255, &type metadata accessor for TTRExtensionCreateReminderInteractorRequestedActions);
    v60 = sub_100016A7C();
    v61 = *(v57 + 8);
    v61(v59, v58);
    result = (v61)(v10, v58);
    if (v60)
    {
      v62 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_generatedSuggestionTextHasBeenSelected;
      if ((v2[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_generatedSuggestionTextHasBeenSelected] & 1) == 0 && (*(v54 + 48) & 1) == 0)
      {
        v63 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v64 = [v2 transitionCoordinator];
        if (v64)
        {
          v65 = v64;
          if ([v64 isAnimated])
          {

            v66 = swift_allocObject();
            *(v66 + 16) = sub_1000157E4;
            *(v66 + 24) = v63;
            aBlock[4] = sub_1000103C0;
            aBlock[5] = v66;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100015074;
            aBlock[3] = &unk_100021900;
            v67 = _Block_copy(aBlock);

            [v65 animateAlongsideTransition:v67 completion:0];

            _Block_release(v67);
            result = swift_unknownObjectRelease();
LABEL_19:
            v2[v62] = 1;
            return result;
          }

          swift_unknownObjectRelease();
        }

        sub_100014FAC();

        goto LABEL_19;
      }
    }
  }

  return result;
}

uint64_t sub_100013708(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v6[3] = sub_100015854();
    v6[4] = &protocol witness table for UITableView;
    v6[0] = v4;
    sub_1000169EC();
    sub_10000CDB0(v6);
    sub_100015AB0(&qword_100026098, v5, type metadata accessor for TTRIExtensionCreateReminderViewController);
    result = sub_100015F0C();
    if (*&v1[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_currentTextInputModeObserver])
    {

      sub_1000162EC();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100013928()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v9, "viewWillLayoutSubviews");
  if (*(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_needToUpdateCellSizesOnLayout) == 1)
  {
    *(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_needToUpdateCellSizesOnLayout) = 0;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_10001583C;
    *(v4 + 24) = v3;
    v8[4] = sub_1000103C0;
    v8[5] = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_100012278;
    v8[3] = &unk_100021978;
    v5 = _Block_copy(v8);
    v6 = v0;

    [v2 performWithoutAnimation:v5];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100013C94()
{
  v1 = v0;
  v2 = sub_100004FAC(&qword_100026080, &qword_1000181C8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___titleCell;
  if (*(v1 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___titleCell))
  {
    v7 = *(v1 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___titleCell);
  }

  else
  {
    v16._countAndFlagsBits = 0x656C746954;
    v17._countAndFlagsBits = 0xD00000000000002CLL;
    v17._object = 0x8000000100019E00;
    v16._object = 0xE500000000000000;
    sub_100015E0C(v16, v17);
    v8 = sub_10001638C();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = objc_allocWithZone(sub_10001618C());
    sub_10001613C();
    v10 = sub_100004FAC(&qword_100026090, &unk_1000181D8);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = sub_100015D2C();
    v13 = *(v1 + v6);
    *(v1 + v6) = v7;
  }

  return v7;
}

uint64_t sub_100013E3C()
{
  v1 = v0;
  v2 = sub_100004FAC(&qword_1000257F8, &unk_100017800);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - v4;
  v6 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___notesCell;
  if (*(v1 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___notesCell))
  {
    v7 = *(v1 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___notesCell);
  }

  else
  {
    ReminderNotesCellContentState = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState(0);
    (*(*(ReminderNotesCellContentState - 8) + 56))(v5, 1, 1, ReminderNotesCellContentState);
    v9 = objc_allocWithZone(type metadata accessor for TTRIExtensionCreateReminderNotesCellContent(0));
    sub_10000218C(0xD00000000000001CLL, 0x8000000100019DE0, v5);
    v10 = sub_100004FAC(&qword_100026088, &qword_1000181D0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = sub_100015D2C();
    v13 = *(v1 + v6);
    *(v1 + v6) = v7;
  }

  return v7;
}

uint64_t sub_100013F94()
{
  v1 = OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___detailsCell;
  if (*(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___detailsCell))
  {
    v2 = *(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___detailsCell);
  }

  else
  {
    v2 = sub_100013FFC();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100013FFC()
{
  v0 = sub_100015E3C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004FAC(&qword_100026048, &qword_100018198);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_100015E5C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000162AC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v20._countAndFlagsBits = 0x736C6961746544;
  v22._object = 0x8000000100019D50;
  v20._object = 0xE700000000000000;
  v22._countAndFlagsBits = 0xD00000000000001ELL;
  sub_100015E0C(v20, v22);
  v21._countAndFlagsBits = 0x7265646E696D6552;
  v23._countAndFlagsBits = 0xD000000000000028;
  v23._object = 0x8000000100019D70;
  v21._object = 0xE900000000000073;
  sub_100015E0C(v21, v23);
  (*(v1 + 104))(v4, enum case for TTRIDetailCellState.CheckmarkState.notSupported(_:), v0);
  sub_100015E4C();
  v12 = objc_allocWithZone(sub_10001629C());
  v13 = sub_10001628C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = v13;

  sub_100015F6C();

  v15 = sub_100004FAC(&qword_100026050, &qword_1000181A0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  return sub_100015D2C();
}

void sub_100014318()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000169DC();
    [v1 resignFirstResponder];
    v2 = *&v1[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_presenter];
    v3 = *(v2 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor);
    v4 = *(v2 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_interactor + 8);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10001660C();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = 1;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10000ED38;
    *(v6 + 24) = v5;
    swift_unknownObjectRetain();
    v7 = sub_1000167FC();
    sub_10001680C();

    swift_unknownObjectRelease();
  }
}

void *sub_100014484(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_100016AFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_10001595C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = sub_100016ABC();
        v7 = _swiftEmptyArrayStorage[2];
        v6 = _swiftEmptyArrayStorage[3];
        if (v7 >= v6 >> 1)
        {
          v9 = v5;
          sub_10001595C((v6 > 1), v7 + 1, 1);
          v5 = v9;
        }

        ++v4;
        _swiftEmptyArrayStorage[2] = v7 + 1;
        v8 = &_swiftEmptyArrayStorage[2 * v7];
        *(v8 + 4) = v5;
        *(v8 + 5) = &protocol witness table for TTRITableSection;
      }

      while (v2 != v4);
    }

    else
    {
      v10 = (a1 + 32);
      v11 = _swiftEmptyArrayStorage[2];
      v12 = 2 * v11;
      do
      {
        v13 = *v10;
        v14 = _swiftEmptyArrayStorage[3];

        if (v11 >= v14 >> 1)
        {
          sub_10001595C((v14 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        v15 = &_swiftEmptyArrayStorage[v12];
        *(v15 + 4) = v13;
        *(v15 + 5) = &protocol witness table for TTRITableSection;
        v12 += 2;
        ++v10;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001461C(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = sub_100004FAC(&qword_1000257F8, &unk_100017800);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v65 = &v55 - v5;
  v6 = sub_100004FAC(&qword_100025B78, &unk_100017D00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v58 = &v55 - v8;
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v56 = *(ReminderView - 8);
  v57 = ReminderView;
  v10 = *(v56 + 64);
  __chkstk_darwin(ReminderView);
  v55 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004FAC(&qword_1000256A0, &unk_1000176F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v55 - v14;
  v16 = sub_1000164AC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000160AC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100004FAC(&qword_100026080, &qword_1000181C8);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = &v55 - v28;
  v68 = a1;
  sub_100013C94();
  v30 = sub_100015D1C();

  v31 = *(v22 + 16);
  v32 = v59;
  v63 = v22 + 16;
  v64 = v21;
  v62 = v31;
  v31(v25, v59, v21);
  v33 = v32;
  ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
  v35 = *(v33 + ReminderViewModel[6]);
  v36 = *(v17 + 16);
  v60 = ReminderViewModel[9];
  v61 = v36;
  v66 = v17 + 16;
  v67 = v16;
  v36(v20, v33 + v60, v16);
  v37 = v35;
  sub_10001637C();
  v38 = sub_10001638C();
  (*(*(v38 - 8) + 56))(v29, 0, 1, v38);
  sub_100015EAC();

  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v40 = *(*(ReminderNotesCellContent - 8) + 56);
  v40(v15, 1, 1, ReminderNotesCellContent);
  v41 = v33 + ReminderViewModel[11];
  v42 = *(v41 + 8);
  if (v42 != 255)
  {
    v43 = *v41;
    v44 = v42 & 1;
    v45 = *v41;
    sub_100007DC8(v15, &qword_1000256A0, &unk_1000176F0);
    *v15 = v43;
    v15[8] = v44;
LABEL_6:
    swift_storeEnumTagMultiPayload();
    v40(v15, 0, 1, ReminderNotesCellContent);
    goto LABEL_7;
  }

  v46 = v55;
  v47 = v58;
  sub_100007E28(v33 + ReminderViewModel[10], v58, &qword_100025B78, &unk_100017D00);
  if ((*(v56 + 48))(v47, 1, v57) != 1)
  {
    sub_100007DC8(v15, &qword_1000256A0, &unk_1000176F0);
    sub_1000158A0(v47, v46, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
    sub_1000158A0(v46, v15, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
    goto LABEL_6;
  }

  sub_100007DC8(v47, &qword_100025B78, &unk_100017D00);
LABEL_7:
  sub_100013E3C();
  v48 = sub_100015D1C();

  v49 = v65;
  v62(v65, v33, v64);
  v50 = *(v33 + ReminderViewModel[7]);
  v51 = *(v33 + ReminderViewModel[8]);
  ReminderNotesCellContentState = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState(0);
  v61(&v49[ReminderNotesCellContentState[7]], v33 + v60, v67);
  sub_100007E28(v15, &v49[ReminderNotesCellContentState[8]], &qword_1000256A0, &unk_1000176F0);
  *&v49[ReminderNotesCellContentState[5]] = v50;
  v49[ReminderNotesCellContentState[6]] = v51;
  (*(*(ReminderNotesCellContentState - 1) + 56))(v49, 0, 1, ReminderNotesCellContentState);
  v53 = v50;
  sub_100015EAC();

  return sub_100007DC8(v15, &qword_1000256A0, &unk_1000176F0);
}

void sub_100014C78()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong performBatchUpdates:0 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100014DD8()
{
  v0 = sub_100004FAC(&qword_100025B70, &qword_1000181C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  v5 = sub_100004FAC(&qword_100026060, &qword_1000181B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;
  sub_100013C94();
  v9 = sub_100015D1C();

  sub_10001614C();

  if ((*(v1 + 48))(v8, 1, v0))
  {
    sub_100007DC8(v8, &qword_100026060, &qword_1000181B8);
    return 0;
  }

  else
  {
    (*(v1 + 16))(v4, v8, v0);
    sub_100007DC8(v8, &qword_100026060, &qword_1000181B8);
    sub_1000161BC();
    (*(v1 + 8))(v4, v0);
    return v11;
  }
}

void sub_100014FAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100013C94();

    v2 = sub_100015D1C();

    sub_10001616C();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_100013C94();

    v5 = sub_100015D1C();

    sub_10001617C();
  }
}

uint64_t sub_100015074(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000150D4()
{
  v1 = v0;
  v2 = sub_100015E3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004FAC(&qword_100026048, &qword_100018198);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - v9;
  v11 = sub_100015E5C();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = *(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_tableDataController);
  v23 = v2;
  if (!v13)
  {
    if (qword_100025520 != -1)
    {
      swift_once();
    }

    v14 = sub_10001687C();
    sub_10000C698(v14, qword_100025FA8);
    v15 = sub_10001686C();
    v16 = sub_1000169AC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "buildSections hasn't been called when update(listName:)", v17, 2u);
    }
  }

  sub_100013F94();
  v18 = sub_100015D1C();

  v19 = sub_1000162AC();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  v24._countAndFlagsBits = 0x736C6961746544;
  v25._object = 0x8000000100019D50;
  v24._object = 0xE700000000000000;
  v25._countAndFlagsBits = 0xD00000000000001ELL;
  sub_100015E0C(v24, v25);
  (*(v3 + 104))(v6, enum case for TTRIDetailCellState.CheckmarkState.notSupported(_:), v23);

  sub_100015E4C();
  sub_100015EAC();

  v20 = *(v1 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController____lazy_storage___detailsCell);

  sub_100015D0C(0);
}

uint64_t sub_100015454()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100015480(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return TTRKeyboardAvoidance<>.shouldAvoidKeyboard.getter(ObjectType, a2);
}

uint64_t sub_1000154BC()
{
  swift_getObjectType();

  return sub_100015F0C();
}

uint64_t sub_1000154F8()
{
  swift_getObjectType();

  return sub_100015EFC();
}

uint64_t sub_100015534(double a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6.n128_f64[0] = a1;

  return TTRKeyboardAvoidance<>.keyboardWillShow(duration:)(ObjectType, a3, v6);
}

uint64_t sub_100015580(double a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6.n128_f64[0] = a1;

  return TTRKeyboardAvoidance<>.keyboardWillHide(duration:)(ObjectType, a3, v6);
}

uint64_t sub_1000155CC(double a1, double a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8.n128_f64[0] = a1;
  v9.n128_f64[0] = a2;

  return TTRKeyboardAvoidance<>.setKeyboardAvoidanceBottomInset(_:duration:)(ObjectType, a4, v8, v9);
}

void sub_100015628()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_presenter) + OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService36TTRIExtensionCreateReminderPresenter_deferredAction);
  v2._object = 0x8000000100019710;
  v2._countAndFlagsBits = 0xD000000000000011;
  sub_100015DCC(v2);
}

void sub_10001567C()
{
  v0[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_needToUpdateCellSizesOnLayout] = 1;
  v1 = [v0 viewIfLoaded];
  [v1 setNeedsLayout];
}

uint64_t sub_1000156E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015724()
{
  v1 = v0[2];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001576C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000157A4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_1000157EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100015804()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100015854()
{
  result = qword_1000260A0;
  if (!qword_1000260A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000260A0);
  }

  return result;
}

uint64_t sub_1000158A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100015908(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003600(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10001595C(void *a1, int64_t a2, char a3)
{
  result = sub_10001597C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001597C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004FAC(&qword_1000260D0, &qword_100018200);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004FAC(&qword_1000260D8, &qword_100018208);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100015AB0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_OWORD *_s51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewControllerC8ArgumentVwCP_0(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t *assignWithCopy for TTRIExtensionCreateReminderViewController.Argument(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  v4 = *a1;
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = v3;
  return a1;
}

uint64_t *assignWithTake for TTRIExtensionCreateReminderViewController.Argument(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;
  swift_unknownObjectRelease();
  *a1 = *a2;
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIExtensionCreateReminderViewController.Argument(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for TTRIExtensionCreateReminderViewController.Argument(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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