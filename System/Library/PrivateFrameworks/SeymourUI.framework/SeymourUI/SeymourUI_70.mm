uint64_t sub_20BCF52A0()
{
  sub_20C13E164();
  sub_20BCF50E0();
  return sub_20C13E1B4();
}

uint64_t sub_20BCF52E4()
{
  sub_20C13E164();
  sub_20BCF50E0();
  return sub_20C13E1B4();
}

uint64_t sub_20BCF5320(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = a2[2];
  v8 = a2[3].i8[0];
  return sub_20BCF53D4(v5, v7) & 1;
}

unint64_t sub_20BCF5380()
{
  result = qword_27C76DD88;
  if (!qword_27C76DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DD88);
  }

  return result;
}

uint64_t sub_20BCF53D4(uint64_t *a1, int8x16_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 48);
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      if (a2[3].i8[0] != 3)
      {
        return 0;
      }
    }

    else
    {
      if (v10 != 4)
      {
        if (v6 | v5 | v4 | v7 | v8 | v9)
        {
          if (a2[3].i8[0] != 5)
          {
            return 0;
          }

          if (a2->i64[0] != 1)
          {
            return 0;
          }

          v21 = vorrq_s8(a2[1], a2[2]);
          if (*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | a2->i64[1])
          {
            return 0;
          }
        }

        else
        {
          if (a2[3].i8[0] != 5)
          {
            return 0;
          }

          v22 = vorrq_s8(a2[1], a2[2]);
          if (*&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | a2->i64[1] | a2->i64[0])
          {
            return 0;
          }
        }

        return 1;
      }

      if (a2[3].i8[0] != 4)
      {
        return 0;
      }
    }

    goto LABEL_19;
  }

  if (v10)
  {
    if (v10 != 1)
    {
      if (a2[3].i8[0] == 2)
      {
        v16 = a2->i64[1];
        v17 = a2[1].i64[0];
        v19 = a2[1].i64[1];
        v18 = a2[2].i64[0];
        v20 = a2[2].i64[1];
        if (v5)
        {
          if (!v16 || (v4 != a2->i64[0] || v5 != v16) && (sub_20C13DFF4() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v16)
        {
          return 0;
        }

        if (v7)
        {
          if (!v19 || (v6 != v17 || v7 != v19) && (sub_20C13DFF4() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v19)
        {
          return 0;
        }

        if (v9)
        {
          if (v20)
          {
            if (v8 == v18 && v9 == v20)
            {
              return 1;
            }

            return (sub_20C13DFF4() & 1) != 0;
          }
        }

        else if (!v20)
        {
          return 1;
        }
      }

      return 0;
    }

    if (a2[3].i8[0] != 1)
    {
      return 0;
    }

LABEL_19:
    v13 = a2->i64[1];
    v14 = a2[1].i64[0];
    v15 = a2[1].i64[1];
    if (v5)
    {
      if (!v13 || (v4 != a2->i64[0] || v5 != v13) && (sub_20C13DFF4() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v13)
    {
      return 0;
    }

    if (v7)
    {
      if (v15)
      {
        if (v6 == v14 && v7 == v15)
        {
          return 1;
        }

        return (sub_20C13DFF4() & 1) != 0;
      }
    }

    else if (!v15)
    {
      return 1;
    }

    return 0;
  }

  if (a2[3].i8[0])
  {
    return 0;
  }

  if (v4 == a2->i64[0] && v5 == a2->i64[1])
  {
    return 1;
  }

  return sub_20C13DFF4();
}

char *sub_20BCF5674(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D20);
  MEMORY[0x28223BE20](v9 - 8);
  v89 = &v83 - v10;
  v90 = sub_20C13BC44();
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v87 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13BBC4();
  v85 = *(v12 - 8);
  v86 = v12;
  MEMORY[0x28223BE20](v12);
  v84 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_currentConstraints] = MEMORY[0x277D84F90];
  v14 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_itemInfo;
  v15 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v4[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_showSeparator] = 1;
  v16 = &v4[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkView];
  v17 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v18) = 1148846080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v18];
  LODWORD(v19) = 1148846080;
  [v17 &selRef:1 setBackgroundColor:v19 + 6];
  LODWORD(v20) = 1148846080;
  [v17 setContentHuggingPriority:0 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v17 setContentHuggingPriority:1 forAxis:v21];

  *v16 = v17;
  v16[1] = &off_2822B63E8;
  v22 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_downloadButton;
  v23 = [objc_allocWithZone(type metadata accessor for DownloadButton()) initWithFrame_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v22] = v23;
  v24 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_separator;
  v25 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = objc_opt_self();
  v27 = [v26 separatorColor];
  [v25 setBackgroundColor_];

  *&v4[v24] = v25;
  v28 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_subtitleLabel;
  v29 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  [v29 setAdjustsFontForContentSizeCategory_];
  v30 = objc_opt_self();
  v31 = [v30 preferredFontForTextStyle_];
  [v29 setFont_];

  [v29 setLineBreakMode_];
  [v29 setNumberOfLines_];
  [v29 setAllowsDefaultTighteningForTruncation_];
  v32 = [v26 whiteColor];
  [v29 setTextColor_];

  LODWORD(v33) = 1148846080;
  [v29 setContentCompressionResistancePriority:1 forAxis:v33];

  *&v4[v28] = v29;
  v34 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  [v34 setAdjustsFontForContentSizeCategory_];
  v35 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v36 = [v35 fontDescriptorWithSymbolicTraits_];
  if (v36)
  {
    v37 = v36;

    v35 = v37;
  }

  v38 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_titleLabel;
  v39 = [v30 fontWithDescriptor:v35 size:0.0];

  [v34 setFont_];
  [v34 setLineBreakMode_];
  [v34 setNumberOfLines_];
  [v34 setAllowsDefaultTighteningForTruncation_];
  v40 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v34 setTextColor_];

  LODWORD(v41) = 1148846080;
  [v34 setContentCompressionResistancePriority:1 forAxis:v41];

  *&v4[v38] = v34;
  v42 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkViewWidthConstraint;
  *&v4[v42] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v43 = _UISolariumEnabled();
  v44 = 4.0;
  if (v43)
  {
    v44 = 16.0;
  }

  v45 = &v4[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_layout];
  *v45 = 0.5625;
  v45[1] = v44;
  __asm { FMOV            V0.2D, #20.0 }

  *(v45 + 1) = _Q0;
  v45[4] = 4.0;
  v51 = &v4[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_oldWindowSize];
  v52 = type metadata accessor for GuidedWorkoutBrickRowCell();
  *v51 = 0;
  v51[1] = 0;
  v91.receiver = v4;
  v91.super_class = v52;
  v53 = objc_msgSendSuper2(&v91, sel_initWithFrame_, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D28);
  sub_20C13BC74();
  *(swift_allocObject() + 16) = xmmword_20C14F980;
  v55 = v84;
  v54 = v85;
  v56 = v86;
  (*(v85 + 104))(v84, *MEMORY[0x277D74A98], v86);
  v57 = sub_20C13BBF4();
  (*(*(v57 - 8) + 56))(v89, 1, 1, v57);
  v58 = v53;
  v59 = v87;
  sub_20C13BC34();
  sub_20C13BC04();
  (*(v88 + 8))(v59, v90);
  (*(v54 + 8))(v55, v56);
  sub_20C13D464();
  v60 = &v58[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkView];
  v61 = *&v58[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkView];
  v62 = *&v58[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkView + 8];
  ObjectType = swift_getObjectType();
  v64 = *(v62 + 288);
  v65 = v61;
  v64(2, ObjectType, v62);

  v66 = [v58 contentView];
  [v66 addSubview_];

  v67 = [v58 contentView];
  [v67 addSubview_];

  v68 = [v58 contentView];
  [v68 addSubview_];

  v69 = v58;
  v70 = [v69 contentView];
  [v70 addSubview_];

  v71 = [*v60 layer];
  v72 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.215686275 alpha:1.0];
  v73 = [v72 CGColor];

  [v71 setBorderColor_];
  v74 = [*v60 layer];
  [v74 setCornerRadius_];

  v75 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_downloadButton;
  v76 = *&v69[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_downloadButton];
  [v76 addTarget:v69 action:sel_downloadButtonTapped_ forControlEvents:64];

  v77 = [v69 contentView];
  [v77 addSubview_];

  v78 = [v69 traitCollection];
  v79 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500);

  v80 = sub_20C13CC54();

  [v79 deactivateConstraints_];

  v81 = [v78 preferredContentSizeCategory];
  LOBYTE(v75) = sub_20C13D424();

  if (v75)
  {
    sub_20BCF6DE0();
  }

  else
  {
    sub_20BCF77EC();
  }

  [v69 setNeedsUpdateConstraints];

  return v69;
}

uint64_t sub_20BCF63F8(void *a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for GuidedWorkoutBrickRowCell();
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, a1);
  swift_unknownObjectUnownedInit();
  if (a1)
  {
    v3 = a1;
    v4 = [v3 preferredContentSizeCategory];
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = sub_20C13C954();
    v9 = v8;
    if (v7 == sub_20C13C954() && v9 == v10)
    {

      Strong = v3;
    }

    else
    {
      v12 = sub_20C13DFF4();

      if (v12)
      {
        Strong = v3;
      }

      else
      {
        v18 = [v1 traitCollection];
        Strong = swift_unknownObjectUnownedLoadStrong();
        v19 = objc_opt_self();
        sub_20B51C88C(0, &qword_281100500);

        v20 = sub_20C13CC54();

        [v19 deactivateConstraints_];

        v21 = [v18 preferredContentSizeCategory];
        LOBYTE(v19) = sub_20C13D424();

        if (v19)
        {
          sub_20BCF6DE0();
        }

        else
        {
          sub_20BCF77EC();
        }

        [Strong setNeedsUpdateConstraints];
      }
    }
  }

  else
  {
    v14 = [v1 traitCollection];
    Strong = swift_unknownObjectUnownedLoadStrong();
    v15 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500);

    v16 = sub_20C13CC54();

    [v15 deactivateConstraints_];

    v17 = [v14 preferredContentSizeCategory];
    LOBYTE(v15) = sub_20C13D424();

    if (v15)
    {
      sub_20BCF6DE0();
    }

    else
    {
      sub_20BCF77EC();
    }

    [Strong setNeedsUpdateConstraints];
  }

  return swift_unknownObjectUnownedDestroy();
}

id sub_20BCF6784()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for GuidedWorkoutBrickRowCell();
  objc_msgSendSuper2(&v11, sel_didMoveToWindow);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkViewWidthConstraint];
  v2 = [v0 window];
  if (v2)
  {
    if (qword_27C7606D0 != -1)
    {
      v9 = v2;
      swift_once();
      v2 = v9;
    }

    v3 = *&qword_27C799F40;
    if (qword_27C7606E0 != -1)
    {
      v10 = v2;
      swift_once();
      v2 = v10;
    }

    v4 = v3 + *&qword_27C799F50;
    v5 = v2;
    [v2 bounds];
    Width = CGRectGetWidth(v12);

    v7 = (Width - v4) * 0.5;
  }

  else
  {
    v7 = 0.0;
  }

  [v1 setConstant_];

  return [v0 setNeedsUpdateConstraints];
}

void sub_20BCF692C()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for GuidedWorkoutBrickRowCell();
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
  }

  else
  {
    v4 = 0.0;
    v6 = 0.0;
  }

  v7 = &v0[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_oldWindowSize];
  v8 = *&v0[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_oldWindowSize] == v4 && *&v0[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_oldWindowSize + 8] == v6;
  if (!v8 && (v4 != 0.0 || v6 != 0.0))
  {
    *v7 = v4;
    v7[1] = v6;
    v9 = *&v0[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkViewWidthConstraint];
    v10 = [v0 window];
    if (v10)
    {
      if (qword_27C7606D0 != -1)
      {
        v16 = v10;
        swift_once();
        v10 = v16;
      }

      v11 = *&qword_27C799F40;
      if (qword_27C7606E0 != -1)
      {
        v17 = v10;
        swift_once();
        v10 = v17;
      }

      v12 = v11 + *&qword_27C799F50;
      v13 = v10;
      [v10 bounds];
      Width = CGRectGetWidth(v19);

      v15 = (Width - v12) * 0.5;
    }

    else
    {
      v15 = 0.0;
    }

    [v9 setConstant_];
  }
}

id sub_20BCF6B94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GuidedWorkoutBrickRowCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GuidedWorkoutBrickRowCell()
{
  result = qword_281101698;
  if (!qword_281101698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BCF6CEC()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20BCF6DE0()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkView];
  v2 = [v1 widthAnchor];
  v3 = [v0 window];
  if (v3)
  {
    if (qword_27C7606D0 != -1)
    {
      v83 = v3;
      swift_once();
      v3 = v83;
    }

    v4 = *&qword_27C799F40;
    if (qword_27C7606E0 != -1)
    {
      v84 = v3;
      swift_once();
      v3 = v84;
    }

    v5 = v4 + *&qword_27C799F50;
    v6 = v3;
    [v3 bounds];
    Width = CGRectGetWidth(v88);

    v8 = (Width - v5) * 0.5;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [v2 constraintEqualToConstant_];

  v10 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkViewWidthConstraint;
  v11 = *&v0[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkViewWidthConstraint];
  *&v0[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkViewWidthConstraint] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20C14FE90;
  v13 = [v1 leadingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 leadingAnchor];

  v16 = &v0[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_layout];
  v17 = [v13 constraintEqualToAnchor:v15 constant:*&v0[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_layout + 16]];

  *(v12 + 32) = v17;
  v18 = [v1 topAnchor];
  v19 = [v0 contentView];
  v20 = [v19 &selRef_setLineBreakMode_];

  v21 = [v18 constraintEqualToAnchor:v20 constant:v16[2]];
  v22 = *&v0[v10];
  *(v12 + 40) = v21;
  *(v12 + 48) = v22;
  v87 = v12;
  v23 = v22;
  v24 = [v1 heightAnchor];
  v25 = [v1 widthAnchor];
  v26 = v0;
  v27 = v16;
  v85 = v16;
  v28 = [v24 constraintEqualToAnchor:v25 multiplier:*v16];

  *(v12 + 56) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20C150040;
  v30 = v29;
  v31 = v26;
  v32 = *&v26[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_titleLabel];
  v33 = [v32 leadingAnchor];
  v34 = [v1 leadingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  v30[4] = v35;
  v36 = [v32 trailingAnchor];
  v37 = [v31 contentView];
  v38 = [v37 trailingAnchor];

  v39 = [v36 constraintEqualToAnchor:v38 constant:-v27[2]];
  v30[5] = v39;
  v86 = v30;
  v40 = [v32 topAnchor];
  v41 = [v1 bottomAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  v30[6] = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20C150040;
  v44 = *&v31[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_subtitleLabel];
  v45 = [v44 leadingAnchor];
  v46 = [v32 leadingAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v43 + 32) = v47;
  v48 = [v44 trailingAnchor];
  v49 = [v32 trailingAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v43 + 40) = v50;
  v51 = [v44 topAnchor];
  v52 = [v32 bottomAnchor];
  v53 = [v51 constraintEqualToAnchor_];

  *(v43 + 48) = v53;
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_20C150040;
  v55 = *&v31[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_downloadButton];
  v56 = [v55 leadingAnchor];
  v57 = [v32 leadingAnchor];
  v58 = [v56 &selRef:v57 alertControllerReleasedDictationButton:? + 5];

  *(v54 + 32) = v58;
  v59 = [v55 topAnchor];
  v60 = [v44 bottomAnchor];
  v61 = [v59 &selRef:v60 alertControllerReleasedDictationButton:? + 5];

  *(v54 + 40) = v61;
  v62 = [v55 bottomAnchor];
  v63 = [v31 contentView];
  v64 = [v63 bottomAnchor];

  v65 = [v62 constraintEqualToAnchor:v64 constant:-v85[2]];
  *(v54 + 48) = v65;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_20C14FE90;
  v67 = *&v31[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_separator];
  v68 = [v67 leadingAnchor];
  v69 = [v1 leadingAnchor];
  v70 = [v68 &selRef:v69 alertControllerReleasedDictationButton:? + 5];

  *(v66 + 32) = v70;
  v71 = [v67 trailingAnchor];
  v72 = [v31 trailingAnchor];
  v73 = [v71 &selRef:v72 alertControllerReleasedDictationButton:? + 5];

  *(v66 + 40) = v73;
  v74 = [v67 &selRef_secondaryLabel + 5];
  v75 = [v31 &selRef_secondaryLabel + 5];
  v76 = [v74 &selRef:v75 alertControllerReleasedDictationButton:? + 5];

  *(v66 + 48) = v76;
  v77 = [v67 heightAnchor];
  sub_20C1387F4();
  v78 = [v77 constraintEqualToConstant_];

  *(v66 + 56) = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C1582F0;
  *(inited + 32) = v87;
  *(inited + 40) = v86;
  *(inited + 48) = v43;
  *(inited + 56) = v54;
  *(inited + 64) = v66;
  v80 = sub_20B853E04(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  *&v31[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_currentConstraints] = v80;

  v81 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500);

  v82 = sub_20C13CC54();

  [v81 activateConstraints_];
}

void sub_20BCF77EC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkView];
  v3 = [v2 widthAnchor];
  v4 = [v1 window];
  if (v4)
  {
    if (qword_27C7606D0 != -1)
    {
      v87 = v4;
      swift_once();
      v4 = v87;
    }

    v5 = *&qword_27C799F40;
    if (qword_27C7606E0 != -1)
    {
      v88 = v4;
      swift_once();
      v4 = v88;
    }

    v6 = v5 + *&qword_27C799F50;
    v7 = v4;
    [v4 bounds];
    Width = CGRectGetWidth(v93);

    v9 = (Width - v6) * 0.5;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [v3 constraintEqualToConstant_];

  v11 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkViewWidthConstraint;
  v12 = *&v1[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkViewWidthConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkViewWidthConstraint] = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20C150050;
  v14 = [v2 leadingAnchor];
  v15 = [v1 contentView];
  v16 = [v15 leadingAnchor];

  v17 = &v1[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_layout];
  v18 = [v14 constraintEqualToAnchor:v16 constant:*&v1[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_layout + 16]];

  *(v13 + 32) = v18;
  v19 = [v2 topAnchor];
  v20 = [v1 contentView];
  v21 = [v20 &selRef_setLineBreakMode_];

  v22 = [v19 constraintEqualToAnchor:v21 constant:v17[2]];
  *(v13 + 40) = v22;
  v23 = [v2 bottomAnchor];
  v24 = [v1 contentView];
  v25 = [v24 &selRef_secondaryLabel + 5];

  v26 = [v23 constraintLessThanOrEqualToAnchor:v25 constant:-v17[2]];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v27) = v92;
  [v26 setPriority_];
  v28 = *&v1[v11];
  *(v13 + 48) = v26;
  *(v13 + 56) = v28;
  v91 = v13;
  v29 = v28;
  v30 = [v2 heightAnchor];
  v31 = [v2 widthAnchor];
  v90 = v17;
  v32 = [v30 constraintEqualToAnchor:v31 multiplier:*v17];

  *(v13 + 64) = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_20C150040;
  v34 = v33;
  v35 = *&v1[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_titleLabel];
  v36 = [v35 leadingAnchor];
  v37 = [v2 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:v17[3]];

  v34[4] = v38;
  v39 = [v35 topAnchor];
  v40 = [v2 topAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  v34[5] = v41;
  v42 = [v35 trailingAnchor];
  v43 = [v1 contentView];
  v44 = [v43 trailingAnchor];

  v45 = [v42 &selRef:v44 alertControllerReleasedDictationButton:? + 5];
  v34[6] = v45;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_20C150040;
  v47 = v46;
  v48 = *&v1[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_subtitleLabel];
  v49 = [v48 leadingAnchor];
  v50 = [v35 leadingAnchor];
  v51 = [v49 &selRef:v50 alertControllerReleasedDictationButton:? + 5];

  v47[4] = v51;
  v52 = [v48 trailingAnchor];
  v53 = [v35 trailingAnchor];
  v54 = [v52 &selRef:v53 alertControllerReleasedDictationButton:? + 5];

  v47[5] = v54;
  v89 = v47;
  v55 = [v48 topAnchor];
  v56 = [v35 bottomAnchor];
  v57 = [v55 &selRef:v56 alertControllerReleasedDictationButton:? + 5];

  v47[6] = v57;
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_20C150040;
  v59 = *&v1[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_downloadButton];
  v60 = [v59 leadingAnchor];
  v61 = [v35 leadingAnchor];
  v62 = [v60 &selRef:v61 alertControllerReleasedDictationButton:? + 5];

  *(v58 + 32) = v62;
  v63 = [v59 bottomAnchor];
  v64 = [v1 contentView];
  v65 = [v64 bottomAnchor];

  v66 = [v63 constraintEqualToAnchor:v65 constant:-v90[2]];
  *(v58 + 40) = v66;
  v67 = [v59 topAnchor];
  v68 = [v48 &selRef_secondaryLabel + 5];
  v69 = [v67 constraintGreaterThanOrEqualToAnchor:v68 constant:v90[4]];

  *(v58 + 48) = v69;
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_20C14FE90;
  v71 = *&v1[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_separator];
  v72 = [v71 leadingAnchor];
  v73 = [v2 leadingAnchor];
  v74 = [v72 constraintEqualToAnchor_];

  *(v70 + 32) = v74;
  v75 = [v71 trailingAnchor];
  v76 = [v1 trailingAnchor];
  v77 = [v75 constraintEqualToAnchor_];

  *(v70 + 40) = v77;
  v78 = [v71 &selRef_secondaryLabel + 5];
  v79 = [v1 &selRef_secondaryLabel + 5];
  v80 = [v78 constraintEqualToAnchor_];

  *(v70 + 48) = v80;
  v81 = [v71 heightAnchor];
  sub_20C1387F4();
  v82 = [v81 constraintEqualToConstant_];

  *(v70 + 56) = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C1582F0;
  *(inited + 32) = v91;
  *(inited + 40) = v34;
  *(inited + 48) = v89;
  *(inited + 56) = v58;
  *(inited + 64) = v70;
  v84 = sub_20B853E04(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  *&v1[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_currentConstraints] = v84;

  v85 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500);

  v86 = sub_20C13CC54();

  [v85 activateConstraints_];
}

void sub_20BCF82C4(unint64_t a1, int a2)
{
  LODWORD(v210) = a2;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v4 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v183 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v184 = &v155 - v7;
  v182 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v155 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v155 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v193 = *(v15 - 8);
  v16 = *(v193 + 64);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v17);
  v192 = &v155 - v18;
  v188 = sub_20C1391C4();
  v187 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v20 = &v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_20C138A64();
  v189 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v191 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v22 - 8);
  v186 = &v155 - v23;
  v24 = sub_20C13C554();
  v203 = *(v24 - 1);
  v204 = v24;
  MEMORY[0x28223BE20](v24);
  v202 = (&v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v205 = sub_20C137C24();
  v207 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v197 = &v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = v26;
  MEMORY[0x28223BE20](v27);
  v206 = &v155 - v28;
  v29 = sub_20C136CD4();
  v198 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v209 = &v155 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C134E44();
  MEMORY[0x28223BE20](v31 - 8);
  v208 = &v155 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C134014();
  *&v36 = MEMORY[0x28223BE20](v33).n128_u64[0];
  v38 = &v155 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v39 == 33)
  {
    [*&v2[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_titleLabel] setText_];
    [*&v2[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_subtitleLabel] setText_];
    sub_20B609FF4(3, 3u, v210 & 1);
    sub_20BA1DAD0();
    v40 = *&v2[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkView];
    v41 = [v40 layer];
    [v41 setBorderColor_];

    v210 = [v40 layer];
    [v210 setBorderWidth_];
    v42 = v210;

    return;
  }

  v171 = v20;
  v172 = v14;
  v166 = v16;
  v167 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = v2;
  v181 = v29;
  v199 = v38;
  v200 = v35;
  v201 = v34;
  v173 = v15;
  v168 = v11;
  v169 = v4;
  if (v39 != 32)
  {
LABEL_18:
    v212 = 0;
    v213 = 0xE000000000000000;
    sub_20C13DC94();
    MEMORY[0x20F2F4230](0xD000000000000017, 0x800000020C1B0AB0);
    v151 = [v194 description];
    v152 = sub_20C13C954();
    v154 = v153;

    MEMORY[0x20F2F4230](v152, v154);

    MEMORY[0x20F2F4230](0x7469206874697720, 0xEC000000203A6D65);
    v211 = a1;
    sub_20C13DDF4();
    sub_20C13DE24();
    __break(1u);
    return;
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
  v44 = swift_projectBox();
  v45 = v44 + *(v43 + 64);
  v46 = *v45;
  v47 = *(v45 + 8);
  v49 = *(v45 + 16);
  v48 = *(v45 + 24);
  v50 = *(v45 + 32);
  v51 = *(v45 + 40);
  v52 = v44 + *(v43 + 96);
  v175 = *v52;
  v174 = *(v52 + 8);
  (*(v200 + 16))(v199, v44, v201);
  v53 = v194;
  v54 = *&v194[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_titleLabel];
  v55 = v46;
  v56 = v47;
  v176 = v49;
  v180 = v48;

  v179 = v50;

  v177 = v51;

  v178 = v55;
  [v54 setAttributedText_];
  [*&v53[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_subtitleLabel] setAttributedText_];
  sub_20C133F04();
  v57 = sub_20C138054();
  v196 = v58;
  sub_20C134E34();
  v59 = v206;
  sub_20C136CB4();
  a1 = sub_20C136CC4();
  v61 = v60;
  sub_20B51C88C(0, &qword_281100530);
  v62 = sub_20C13D374();
  v64 = v202;
  v63 = v203;
  *v202 = v62;
  v65 = v204;
  v63[13](v64, *MEMORY[0x277D85200], v204);
  LOBYTE(v43) = sub_20C13C584();
  (v63[1])(v64, v65);
  if ((v43 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v204 = v56;
  v67 = *&v53[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkView];
  v66 = *&v53[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkView + 8];
  ObjectType = swift_getObjectType();
  [v67 setContentMode_];
  if (sub_20BA66C54(v59, v67, v66, 0))
  {
    v162 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v69 = v207;
    v70 = *(v207 + 16);
    v170 = v61;
    v164 = v67;
    v202 = a1;
    v163 = ObjectType;
    v71 = v197;
    v203 = v57;
    v72 = v205;
    v159 = v207 + 16;
    v158 = v70;
    v70(v197, v59, v205);
    v73 = *(v69 + 80);
    v74 = (v73 + 24) & ~v73;
    v155 = v195 + 7;
    v75 = (v195 + 7 + v74) & 0xFFFFFFFFFFFFFFF8;
    v165 = v66;
    v76 = (v75 + 23) & 0xFFFFFFFFFFFFFFF8;
    v77 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
    v161 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
    v160 = v73;
    v78 = swift_allocObject();
    *(v78 + 16) = v162;
    v79 = *(v69 + 32);
    v80 = v78 + v74;
    v81 = v72;
    v82 = v170;
    v157 = v69 + 32;
    v156 = v79;
    v79(v80, v71, v81);
    v83 = (v78 + v75);
    *v83 = v202;
    v83[1] = v82;
    v84 = (v78 + v76);
    v85 = v165;
    v86 = v196;
    *v84 = v203;
    v84[1] = v86;
    *(v78 + v77) = 2;
    v87 = v78 + v161;
    *v87 = MEMORY[0x277D84F90];
    *(v87 + 8) = 0;
    v88 = (v78 + ((v77 + 31) & 0xFFFFFFFFFFFFFFF8));
    *v88 = 0;
    v88[1] = 0;
    v89 = *(v85 + 152);

    v90 = v163;
    v91 = v164;

    v89(sub_20BCF9934, v78, v90, v85);

    [v91 bounds];
    if (v92 <= 0.0 || (v94 = v93, v93 <= 0.0))
    {

      v113 = v210;
      v112 = v181;
      v59 = v206;
    }

    else
    {
      v95 = v92;
      v162 = ~v160;
      (*(v85 + 120))(0, v90, v85);
      v96 = v186;
      v59 = v206;
      v158(v186, v206, v81);
      (*(v207 + 56))(v96, 0, 1, v81);
      (*(v85 + 16))(v96, v90, v85);
      sub_20B51C88C(0, &qword_27C762070);
      v97 = v91;
      sub_20C137BC4();
      v98 = sub_20C13D5A4();
      [v97 setBackgroundColor_];

      (*(v85 + 176))(COERCE_DOUBLE(*&v95), COERCE_DOUBLE(*&v94), 0, v90, v85);
      v99 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v100 = v197;
      v101 = v158;
      v158(v197, v59, v81);
      v102 = (v160 + 16) & v162;
      v103 = (v155 + v102) & 0xFFFFFFFFFFFFFFF8;
      v104 = (v103 + 15) & 0xFFFFFFFFFFFFFFF8;
      v105 = swift_allocObject();
      v156(v105 + v102, v100, v205);
      *(v105 + v103) = v99;
      v106 = (v105 + v104);
      *v106 = v95;
      v106[1] = v94;
      v186 = v105;
      v107 = (v105 + ((v104 + 23) & 0xFFFFFFFFFFFFFFF8));
      v81 = v205;
      *v107 = 0;
      v107[1] = 0;
      v101(v100, v59, v81);
      (*(v187 + 104))(v171, *MEMORY[0x277D542A8], v188);

      v108 = v191;
      sub_20C138A54();
      v109 = v172;
      sub_20B5F1CA8(v108, v172);
      v110 = v193;
      v111 = v173;
      if ((*(v193 + 48))(v109, 1, v173) == 1)
      {
        sub_20B520158(v109, &unk_27C766670);
        sub_20BA1DAD0();

        (*(v189 + 8))(v108, v190);
      }

      else
      {
        v114 = v110;
        v203 = *(v110 + 32);
        (v203)(v192, v109, v111);
        v115 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v158(v100, v59, v81);
        v116 = (v160 + 40) & v162;
        v117 = v116 + v195;
        v118 = (v116 + v195) & 0xFFFFFFFFFFFFFFF8;
        v119 = swift_allocObject();
        *(v119 + 2) = v115;
        v119[3] = v95;
        v119[4] = v94;
        v156(v119 + v116, v100, v205);
        *(v119 + v117) = 0;
        v120 = v119 + v118;
        *(v120 + 1) = 0;
        *(v120 + 2) = 0;
        v121 = swift_allocObject();
        *(v121 + 16) = sub_20BCF9AC8;
        *(v121 + 24) = v119;
        v122 = v167;
        v123 = v173;
        (*(v114 + 16))(v167, v192, v173);
        v124 = (*(v114 + 80) + 16) & ~*(v114 + 80);
        v125 = (v166 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
        v126 = swift_allocObject();
        (v203)(v126 + v124, v122, v123);
        v127 = (v126 + v125);
        *v127 = sub_20B5F67A4;
        v127[1] = v121;
        v128 = v184;
        sub_20C137C94();
        v129 = swift_allocObject();
        v130 = v186;
        *(v129 + 16) = sub_20BCF9A0C;
        *(v129 + 24) = v130;
        v131 = swift_allocObject();
        *(v131 + 16) = sub_20B5F67D4;
        *(v131 + 24) = v129;
        v132 = v169;
        v133 = v183;
        v134 = v185;
        (*(v169 + 16))(v183, v128, v185);
        v135 = (*(v132 + 80) + 16) & ~*(v132 + 80);
        v136 = (v182 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
        v137 = swift_allocObject();
        (*(v132 + 32))(v137 + v135, v133, v134);
        v138 = (v137 + v136);
        *v138 = sub_20B5DF204;
        v138[1] = v131;

        v139 = v168;
        sub_20C137C94();
        v140 = *(v132 + 8);
        v141 = v128;
        v59 = v206;
        v140(v141, v134);
        v142 = sub_20C137CB4();
        v143 = swift_allocObject();
        *(v143 + 16) = 0;
        *(v143 + 24) = 0;
        v142(sub_20B52347C, v143);

        v144 = v134;
        v81 = v205;
        v140(v139, v144);
        (*(v193 + 8))(v192, v173);
        (*(v189 + 8))(v191, v190);
      }

      v113 = v210;
      v112 = v181;
    }
  }

  else
  {

    v81 = v205;
    v112 = v181;
    v113 = v210;
  }

  (*(v207 + 8))(v59, v81);
  (*(v198 + 8))(v209, v112);

  sub_20B60B124(v208, MEMORY[0x277D51268]);
  sub_20B609FF4(v175, v174, v113 & 1);
  v145 = v199;
  v146 = sub_20C133FF4();
  v148 = v147;
  v150 = v149;
  sub_20B5F09F8(v146, v147, v149);
  sub_20B584078(v146, v148, v150);

  (*(v200 + 8))(v145, v201);
}

uint64_t sub_20BCF97DC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BCF9828@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BCF9880(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20BCF98E4(char a1)
{
  v2 = *v1;
  *(v2 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_showSeparator) = a1;
  return [*(v2 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_separator) setHidden_];
}

void sub_20BCF9934()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA511AC(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BCF9A0C(void *a1)
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

  sub_20BA637B0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BCF9AC8(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F300C(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20BCF9B7C()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_currentConstraints) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_showSeparator) = 1;
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkView);
  v4 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v5) = 1148846080;
  [v4 setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v4 &selRef:1 setBackgroundColor:v6 + 6];
  LODWORD(v7) = 1148846080;
  [v4 setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v4 setContentHuggingPriority:1 forAxis:v8];

  *v3 = v4;
  v3[1] = &off_2822B63E8;
  v9 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_downloadButton;
  v10 = [objc_allocWithZone(type metadata accessor for DownloadButton()) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v9) = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_separator;
  v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = objc_opt_self();
  v14 = [v13 separatorColor];
  [v12 setBackgroundColor_];

  *(v0 + v11) = v12;
  v15 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_subtitleLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setAdjustsFontForContentSizeCategory_];
  v17 = objc_opt_self();
  v18 = [v17 preferredFontForTextStyle_];
  [v16 setFont_];

  [v16 setLineBreakMode_];
  [v16 setNumberOfLines_];
  [v16 setAllowsDefaultTighteningForTruncation_];
  v19 = [v13 whiteColor];
  [v16 setTextColor_];

  LODWORD(v20) = 1148846080;
  [v16 setContentCompressionResistancePriority:1 forAxis:v20];

  *(v0 + v15) = v16;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  v22 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v23 = [v22 fontDescriptorWithSymbolicTraits_];
  if (v23)
  {
    v24 = v23;

    v22 = v24;
  }

  v25 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_titleLabel;
  v26 = [v17 fontWithDescriptor:v22 size:0.0];

  [v21 setFont_];
  [v21 setLineBreakMode_];
  [v21 setNumberOfLines_];
  [v21 setAllowsDefaultTighteningForTruncation_];
  v27 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v21 setTextColor_];

  LODWORD(v28) = 1148846080;
  [v21 setContentCompressionResistancePriority:1 forAxis:v28];

  *(v0 + v25) = v21;
  v29 = OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkViewWidthConstraint;
  *(v0 + v29) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v30 = _UISolariumEnabled();
  v31 = 4.0;
  if (v30)
  {
    v31 = 16.0;
  }

  v32 = v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_layout;
  *v32 = 0x3FE2000000000000;
  *(v32 + 8) = v31;
  __asm { FMOV            V0.2D, #20.0 }

  *(v32 + 16) = _Q0;
  *(v32 + 32) = 0x4010000000000000;
  v38 = (v0 + OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_oldWindowSize);
  *v38 = 0;
  v38[1] = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BCFA134()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E27BC);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B60B124(v7, type metadata accessor for ShelfItemAction);
  }

  return result;
}

id sub_20BCFA32C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_artworkView];
  v13 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *v12 = v13;
  *(v12 + 1) = &off_2822B63E8;
  v14 = &v6[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_fetchArtworkHandler];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_fetchFallbackArtworkHandler];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_completedIconView;
  v17 = objc_allocWithZone(type metadata accessor for CompletedIconView());
  v18 = sub_20B9931C0(0, 0.0, 0.0, 0.0, 0.0);
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v16] = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_recencyIconView;
  v20 = objc_allocWithZone(type metadata accessor for RecencyIconView());
  v21 = sub_20B7219DC(0, 0, 0, 0.0, 0.0, 0.0, 0.0);
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for UILayoutPriority(0);
  v60[64] = 1065353216;
  v60[65] = 1148846080;
  sub_20B8318CC(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BBA4();
  LODWORD(v22) = v60[0];
  [v21 setContentCompressionResistancePriority:1 forAxis:v22];

  *&v6[v19] = v21;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  v24 = [objc_opt_self() secondaryLabelColor];
  [v23 setTextColor_];

  v25 = *MEMORY[0x277D769D0];
  v26 = objc_opt_self();
  v27 = [v26 preferredFontDescriptorWithTextStyle:v25 compatibleWithTraitCollection:0];
  v28 = [v27 fontDescriptorWithSymbolicTraits_];
  if (v28)
  {
    v29 = v28;

    v27 = v29;
  }

  v30 = OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_subtitleLabel;
  v58 = objc_opt_self();
  v31 = [v58 fontWithDescriptor:v27 size:0.0];

  [v23 setFont_];
  [v23 setNumberOfLines_];
  [v23 setLineBreakMode_];
  v57 = *MEMORY[0x277D76820];
  [v23 setMaximumContentSizeCategory_];

  [v23 setAdjustsFontForContentSizeCategory_];
  *&v6[v30] = v23;
  v32 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v33 = *MEMORY[0x277D743F8];
  v34 = [v26 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76920] compatibleWithTraitCollection:0];
  v35 = [v34 fontDescriptorWithSymbolicTraits_];
  if (v35)
  {
    v36 = v35;

    v34 = v36;
  }

  v56 = OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_titleLabel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v38 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v39 = swift_initStackObject();
  v40 = MEMORY[0x277D74430];
  *(v39 + 16) = xmmword_20C14F980;
  v41 = *v40;
  *(v39 + 32) = *v40;
  *(v39 + 40) = v33;
  v42 = v38;
  v43 = v41;
  v44 = sub_20B6B134C(v39);
  swift_setDeallocating();
  sub_20B520158(v39 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v44;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B8318CC(&qword_27C7618A0, type metadata accessor for AttributeName);
  v45 = sub_20C13C744();

  v46 = [v34 fontDescriptorByAddingAttributes_];

  v47 = [v58 fontWithDescriptor:v46 size:0.0];
  [v32 setFont_];

  [v32 setNumberOfLines_];
  [v32 setLineBreakMode_];
  [v32 setMaximumContentSizeCategory_];

  [v32 setAdjustsFontForContentSizeCategory_];
  *&v6[v56] = v32;
  v48 = OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_labelLayoutGuide;
  *&v6[v48] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v49 = &v6[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_layout];
  *(v49 + 16) = *(a1 + 128);
  v50 = *(a1 + 112);
  *(v49 + 6) = *(a1 + 96);
  *(v49 + 7) = v50;
  v51 = *(a1 + 80);
  *(v49 + 4) = *(a1 + 64);
  *(v49 + 5) = v51;
  v52 = *(a1 + 48);
  *(v49 + 2) = *(a1 + 32);
  *(v49 + 3) = v52;
  v53 = *(a1 + 16);
  *v49 = *a1;
  *(v49 + 1) = v53;
  sub_20B60C224(a1, v60);
  v59.receiver = v6;
  v59.super_class = type metadata accessor for VideoBrickContentView();
  v54 = objc_msgSendSuper2(&v59, sel_initWithFrame_, a2, a3, a4, a5);
  sub_20BCFAA64();
  sub_20B60C41C(a1);

  return v54;
}

void sub_20BCFAA64()
{
  v1 = v0;
  v2 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor_];

  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_recencyIconView];
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_artworkView];
  v5 = *(v3 + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layoutView);
  *(v3 + OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layoutView) = v4;
  v6 = v4;

  v7 = *&v1[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_labelLayoutGuide];
  [v1 addLayoutGuide_];
  [v1 addSubview_];
  v56 = *&v1[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_subtitleLabel];
  [v1 addSubview_];
  v8 = *&v1[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_titleLabel];
  [v1 addSubview_];
  v57 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20C1580B0;
  v10 = [v1 heightAnchor];
  v11 = [v1 widthAnchor];
  v12 = &v1[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_layout];
  v13 = [v10 constraintEqualToAnchor:v11 multiplier:1.0 / *&v1[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_layout]];

  type metadata accessor for UILayoutPriority(0);
  sub_20B8318CC(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BBA4();
  LODWORD(v14) = v58;
  [v13 setPriority_];
  *(v9 + 32) = v13;
  v15 = [v6 topAnchor];
  v16 = [v1 &selRef_setLineBreakMode_];
  v17 = [v15 constraintEqualToAnchor_];

  *(v9 + 40) = v17;
  v18 = [v6 rightAnchor];
  v19 = [v1 rightAnchor];
  v20 = [v18 &selRef:v19 alertControllerReleasedDictationButton:? + 5];

  *(v9 + 48) = v20;
  v21 = [v6 bottomAnchor];
  v22 = [v1 &selRef_secondaryLabel + 5];
  v23 = [v21 &selRef:v22 alertControllerReleasedDictationButton:? + 5];

  *(v9 + 56) = v23;
  v24 = [v6 leftAnchor];
  v25 = [v1 leftAnchor];
  v26 = [v24 &selRef:v25 alertControllerReleasedDictationButton:? + 5];

  *(v9 + 64) = v26;
  v27 = [v7 widthAnchor];
  v28 = [v1 widthAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 multiplier:v12[11]];

  *(v9 + 72) = v29;
  v30 = [v7 rightAnchor];
  v31 = [v1 rightAnchor];
  v32 = [v30 &selRef:v31 alertControllerReleasedDictationButton:? + 5];

  *(v9 + 80) = v32;
  v33 = [v8 topAnchor];
  v34 = [v1 topAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:v12[7]];

  *(v9 + 88) = v35;
  v36 = [v8 leftAnchor];
  v37 = [v1 leftAnchor];
  v38 = v12[8];
  v39 = [v36 constraintEqualToAnchor:v37 constant:v38];

  *(v9 + 96) = v39;
  v40 = [v8 rightAnchor];
  v41 = [v7 leftAnchor];
  v42 = [v40 constraintEqualToAnchor_];

  *(v9 + 104) = v42;
  v43 = [v56 topAnchor];
  v44 = [v8 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:v12[16]];

  *(v9 + 112) = v45;
  v46 = [v56 leftAnchor];
  v47 = [v1 leftAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:v38];

  *(v9 + 120) = v48;
  v49 = [v56 rightAnchor];
  v50 = [v7 leftAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v9 + 128) = v51;
  v52 = [v56 bottomAnchor];
  v53 = [v1 bottomAnchor];
  v54 = [v52 constraintLessThanOrEqualToAnchor:v53 constant:-v12[9]];

  *(v9 + 136) = v54;
  sub_20B51C88C(0, &qword_281100500);
  v55 = sub_20C13CC54();

  [v57 activateConstraints_];
}

uint64_t sub_20BCFB208(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v223 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v178 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v206 = &v178 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v207 = &v178 - v9;
  v205 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v178 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v14 - 8);
  v209 = &v178 - v15;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v210 = *(v217 - 8);
  v16 = *(v210 + 64);
  MEMORY[0x28223BE20](v217);
  MEMORY[0x28223BE20](v17);
  v208 = &v178 - v18;
  v213 = sub_20C1391C4();
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v214 = &v178 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_20C138A64();
  v215 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v218 = &v178 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v21 - 8);
  v211 = &v178 - v22;
  v23 = sub_20C13C554();
  v224 = *(v23 - 1);
  v225 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = (&v178 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_20C137C24();
  v229 = *(v26 - 8);
  v230 = v26;
  MEMORY[0x28223BE20](v26);
  v219 = v27;
  v220 = &v178 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v228 = &v178 - v29;
  v30 = sub_20C136CD4();
  v221 = *(v30 - 8);
  v222 = v30;
  MEMORY[0x28223BE20](v30);
  v227 = &v178 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C134E44();
  MEMORY[0x28223BE20](v32 - 8);
  v226 = &v178 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_20C134014();
  *&v35 = MEMORY[0x28223BE20](v231).n128_u64[0];
  v37 = &v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v38 == 33)
  {
    v162 = v232;
    [*&v232[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_titleLabel] setAttributedText_];
    [*&v162[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_subtitleLabel] setAttributedText_];
    [*&v162[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_completedIconView] removeFromSuperview];
    [*&v162[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_recencyIconView] removeFromSuperview];

    return sub_20BA1D998();
  }

  else if (v38 == 32)
  {
    v187 = v16;
    v188 = &v178 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v189 = v13;
    v190 = v6;
    v191 = v5;
    v39 = v34;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v41 = swift_projectBox();
    v42 = v41 + *(v40 + 64);
    v43 = *v42;
    v44 = *(v42 + 8);
    v46 = *(v42 + 16);
    v45 = *(v42 + 24);
    v47 = *(v42 + 32);
    v48 = *(v42 + 40);
    v202 = v39;
    (*(v39 + 16))(v37, v41, v231);
    v49 = *&v232[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_titleLabel];
    v50 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v51 = v43;
    v52 = v44;
    v195 = v46;
    v200 = v45;

    v199 = v47;

    v198 = v48;

    v197 = v51;
    v53 = [v50 initWithAttributedString_];
    v54 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    v55 = &selRef_setDescriptionTextHighlightColor_;
    [v54 setLineBreakMode_];
    v56 = v53;
    v57 = [v56 length];
    v58 = *MEMORY[0x277D74118];
    [v56 addAttribute:*MEMORY[0x277D74118] value:v54 range:{0, v57}];

    v194 = v49;
    [v49 setAttributedText_];

    v59 = v232;
    v60 = *&v232[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_subtitleLabel];
    v61 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v196 = v52;
    v62 = [v61 initWithAttributedString_];
    v63 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v63 setLineBreakMode_];
    v64 = v62;
    [v64 addAttribute:v58 value:v63 range:{0, objc_msgSend(v64, sel_length)}];

    v65 = v59;
    v66 = v60;
    [v60 setAttributedText_];

    v67 = sub_20C133EB4();
    sub_20BCFCA40(v67);
    v68 = sub_20C133E54();
    sub_20BCFCC74(v68, v69);

    v70 = v226;
    v201 = v37;
    sub_20C133F04();
    v71 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v223 = v71;
    swift_retain_n();
    v193 = sub_20C138054();
    v204 = v72;
    v73 = v227;
    sub_20C134E34();
    v74 = v228;
    sub_20C136CB4();
    v192 = sub_20C136CC4();
    v203 = v75;
    sub_20B51C88C(0, &qword_281100530);
    *v25 = sub_20C13D374();
    v77 = v224;
    v76 = v225;
    (*(v224 + 104))(v25, *MEMORY[0x277D85200], v225);
    LOBYTE(v71) = sub_20C13C584();
    result = (*(v77 + 8))(v25, v76);
    if (v71)
    {
      v225 = v66;
      v80 = *&v65[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_artworkView];
      v79 = *&v65[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v80 setContentMode_];
      if (sub_20BA66C54(v74, v80, v79, 0))
      {
        v82 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v83 = v229;
        v84 = *(v229 + 16);
        v186 = v80;
        v85 = v220;
        v86 = v74;
        v87 = v230;
        v182 = v229 + 16;
        v181 = v84;
        v84(v220, v86, v230);
        v88 = *(v83 + 80);
        v89 = (v88 + 24) & ~v88;
        v178 = v219 + 7;
        v90 = (v219 + 7 + v89) & 0xFFFFFFFFFFFFFFF8;
        v224 = v79;
        v185 = ObjectType;
        v91 = (v90 + 23) & 0xFFFFFFFFFFFFFFF8;
        v92 = (v91 + 23) & 0xFFFFFFFFFFFFFFF8;
        v184 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
        v183 = v88;
        v93 = swift_allocObject();
        *(v93 + 16) = v82;
        v94 = *(v83 + 32);
        v180 = v83 + 32;
        v179 = v94;
        v94(v93 + v89, v85, v87);
        v95 = (v93 + v90);
        v96 = v203;
        *v95 = v192;
        v95[1] = v96;
        v97 = (v93 + v91);
        v98 = v204;
        *v97 = v193;
        v97[1] = v98;
        *(v93 + v92) = 2;
        v99 = v93 + v184;
        *v99 = MEMORY[0x277D84F90];
        *(v99 + 8) = 0;
        v100 = (v93 + ((v92 + 31) & 0xFFFFFFFFFFFFFFF8));
        v102 = v223;
        v101 = v224;
        *v100 = sub_20BCFD380;
        v100[1] = v102;
        v103 = *(v101 + 152);

        v104 = v186;

        v105 = v224;

        v106 = v185;
        v103(sub_20BCFD3A4, v93);

        [v104 bounds];
        if (v107 <= 0.0)
        {

          v161 = v222;
          v74 = v228;
          goto LABEL_19;
        }

        v109 = v108;
        v55 = &selRef_setDescriptionTextHighlightColor_;
        if (v108 <= 0.0)
        {

          v174 = v221;
          v161 = v222;
          v73 = v227;
          v74 = v228;
          v70 = v226;
        }

        else
        {
          v110 = v107;
          v184 = ~v183;
          v111 = v106;
          (*(v105 + 120))(0, v106, v105);
          v112 = v211;
          v74 = v228;
          v113 = v230;
          v114 = v181;
          v181(v211, v228, v230);
          (*(v229 + 56))(v112, 0, 1, v113);
          (*(v105 + 16))(v112, v111, v105);
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v115 = sub_20C13D5A4();
          [v104 setBackgroundColor_];

          (*(v105 + 176))(COERCE_DOUBLE(*&v110), COERCE_DOUBLE(*&v109), 0, v111, v105);
          v116 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v117 = v220;
          v114(v220, v74, v113);
          v118 = (v183 + 16) & v184;
          v119 = (v178 + v118) & 0xFFFFFFFFFFFFFFF8;
          v120 = (v119 + 15) & 0xFFFFFFFFFFFFFFF8;
          v121 = swift_allocObject();
          v179(v121 + v118, v117, v113);
          *(v121 + v119) = v116;
          v122 = (v121 + v120);
          *v122 = v110;
          v122[1] = v109;
          v224 = v121;
          v123 = (v121 + ((v120 + 23) & 0xFFFFFFFFFFFFFFF8));
          v124 = v223;
          *v123 = sub_20BCFD380;
          v123[1] = v124;
          v125 = v232;
          v181(v117, v74, v113);
          (*(v212 + 104))(v214, *MEMORY[0x277D542A8], v213);

          v126 = v218;
          sub_20C138A54();
          v127 = *&v125[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_fetchArtworkHandler];
          if (v127)
          {

            v128 = v209;
            v127(v126);
            sub_20B583ECC(v127);
            v129 = v210;
            v130 = v217;
            if ((*(v210 + 48))(v128, 1, v217) != 1)
            {
              v214 = *(v129 + 32);
              (v214)(v208, v128, v130);
              v131 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v132 = v220;
              v133 = v230;
              v181(v220, v74, v230);
              v134 = (v183 + 40) & v184;
              v135 = v134 + v219;
              v136 = (v134 + v219) & 0xFFFFFFFFFFFFFFF8;
              v137 = swift_allocObject();
              *(v137 + 2) = v131;
              v137[3] = v110;
              v137[4] = v109;
              v179(v137 + v134, v132, v133);
              *(v137 + v135) = 0;
              v138 = v137 + v136;
              v139 = v223;
              *(v138 + 1) = sub_20BCFD380;
              *(v138 + 2) = v139;
              v140 = swift_allocObject();
              *(v140 + 16) = sub_20BCFD538;
              *(v140 + 24) = v137;
              v141 = v188;
              (*(v129 + 16))(v188, v208, v130);
              v142 = (*(v129 + 80) + 16) & ~*(v129 + 80);
              v143 = (v187 + v142 + 7) & 0xFFFFFFFFFFFFFFF8;
              v144 = swift_allocObject();
              (v214)(v144 + v142, v141, v130);
              v145 = (v144 + v143);
              *v145 = sub_20B5F67A4;
              v145[1] = v140;

              v146 = v207;
              sub_20C137C94();
              v147 = swift_allocObject();
              v148 = v224;
              *(v147 + 16) = sub_20BCFD47C;
              *(v147 + 24) = v148;
              v149 = swift_allocObject();
              *(v149 + 16) = sub_20B5F67D4;
              *(v149 + 24) = v147;
              v150 = v190;
              v151 = v206;
              v152 = v191;
              (*(v190 + 16))(v206, v146, v191);
              v153 = (*(v150 + 80) + 16) & ~*(v150 + 80);
              v154 = (v205 + v153 + 7) & 0xFFFFFFFFFFFFFFF8;
              v155 = swift_allocObject();
              (*(v150 + 32))(v155 + v153, v151, v152);
              v156 = (v155 + v154);
              *v156 = sub_20B5DF204;
              v156[1] = v149;

              v157 = v189;
              sub_20C137C94();
              v158 = *(v150 + 8);
              v158(v146, v152);
              v159 = sub_20C137CB4();
              v160 = swift_allocObject();
              *(v160 + 16) = 0;
              *(v160 + 24) = 0;
              v159(sub_20B52347C, v160);

              v158(v157, v152);
              v74 = v228;
              (*(v129 + 8))(v208, v217);
              (*(v215 + 8))(v218, v216);
              v161 = v222;
LABEL_19:
              v174 = v221;
              v70 = v226;
              v73 = v227;
              v175 = v197;
              v55 = &selRef_setDescriptionTextHighlightColor_;
              goto LABEL_20;
            }
          }

          else
          {
            v128 = v209;
            (*(v210 + 56))(v209, 1, 1, v217);
          }

          sub_20B520158(v128, &unk_27C766670);
          sub_20BA1D998();
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v177 = Strong;
            sub_20BCFCFDC();
          }

          else
          {
          }

          v174 = v221;
          v161 = v222;
          v70 = v226;
          v73 = v227;
          v55 = &selRef_setDescriptionTextHighlightColor_;
          (*(v215 + 8))(v126, v216);
        }
      }

      else
      {

        v174 = v221;
        v161 = v222;
      }

      v175 = v197;
LABEL_20:
      (*(v229 + 8))(v74, v230);
      (*(v174 + 8))(v73, v161);

      sub_20B62A2AC(v70);

      [v194 v55[298]];
      [v225 v55[298]];

      return (*(v202 + 8))(v201, v231);
    }

    __break(1u);
  }

  else
  {
    sub_20C13B534();

    v163 = v232;
    v164 = sub_20C13BB74();
    v165 = sub_20C13D1D4();

    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v233[0] = v168;
      *v166 = 138543618;
      *(v166 + 4) = v163;
      *v167 = v163;
      *(v166 + 12) = 2082;
      v233[3] = a1;
      v169 = sub_20B5F66D0();
      v170 = v163;
      v171 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v169);
      v173 = sub_20B51E694(v171, v172, v233);

      *(v166 + 14) = v173;
      _os_log_impl(&dword_20B517000, v164, v165, "Attempted to configure %{public}@ with item: %{public}s", v166, 0x16u);
      sub_20B520158(v167, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v167, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v168);
      MEMORY[0x20F2F6A40](v168, -1, -1);
      MEMORY[0x20F2F6A40](v166, -1, -1);
    }

    return (*(v223 + 8))(v4, v2);
  }

  return result;
}

void sub_20BCFCA40(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_completedIconView];
  if (a1 < 1)
  {
    v13 = *&v1[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_completedIconView];

    [v13 removeFromSuperview];
  }

  else
  {
    v3 = [*&v1[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_completedIconView] superview];
    if (!v3)
    {
      [v1 addSubview_];
      v4 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_20C151490;
      v6 = [v2 rightAnchor];
      v7 = [v1 rightAnchor];
      v8 = &v1[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_layout];
      v9 = [v6 constraintEqualToAnchor:v7 constant:-*&v1[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_layout + 32]];

      *(v5 + 32) = v9;
      v10 = [v2 bottomAnchor];
      v11 = [v1 bottomAnchor];
      v12 = [v10 constraintEqualToAnchor:v11 constant:-v8[3]];

      *(v5 + 40) = v12;
      sub_20B51C88C(0, &qword_281100500);
      v14 = sub_20C13CC54();

      [v4 activateConstraints_];
      v3 = v14;
    }
  }
}

void sub_20BCFCC74(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_recencyIconView];
  if (a2)
  {
    v4 = &v3[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_title];
    *v4 = a1;
    *(v4 + 1) = a2;

    v5 = *&v3[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_label];

    v6 = sub_20C13C914();
    [v5 setText_];

    [v3 invalidateIntrinsicContentSize];
    v7 = [v3 superview];
    if (!v7)
    {
      sub_20BCFCFDC();
      [v2 addSubview_];
      v8 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_20C150040;
      v10 = [v3 topAnchor];
      v11 = [*&v2[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_subtitleLabel] bottomAnchor];
      v12 = &v2[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_layout];
      v13 = [v10 constraintGreaterThanOrEqualToAnchor:v11 constant:*&v2[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_layout + 96]];

      *(v9 + 32) = v13;
      v14 = [v3 leftAnchor];
      v15 = [v2 leftAnchor];
      v16 = [v14 constraintEqualToAnchor:v15 constant:v12[13]];

      *(v9 + 40) = v16;
      v17 = [v3 bottomAnchor];
      v18 = [v2 bottomAnchor];
      v19 = [v17 constraintEqualToAnchor:v18 constant:-v12[14]];

      *(v9 + 48) = v19;
      sub_20B51C88C(0, &qword_281100500);
      v21 = sub_20C13CC54();

      [v8 activateConstraints_];
      v7 = v21;
    }
  }

  else
  {
    v20 = *&v2[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_recencyIconView];

    [v20 removeFromSuperview];
  }
}

void sub_20BCFCF88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20BCFCFDC();
  }
}

uint64_t sub_20BCFCFDC()
{
  v1 = sub_20C13C4C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_artworkView + 8);
  ObjectType = swift_getObjectType();
  result = (*(v5 + 112))(ObjectType, v5);
  if (result)
  {
    v8 = result;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v2 + 104))(v4, *MEMORY[0x277D851C0], v1);

    sub_20BD519D8(v8, v4, sub_20BCFD378, v9);

    (*(v2 + 8))(v4, v1);
  }

  return result;
}

void sub_20BCFD164(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_recencyIconView);

    [*&v4[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_imageView] setImage_];
    [v4 setNeedsLayout];
  }
}

id sub_20BCFD234()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoBrickContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BCFD3A4()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA36788(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BCFD47C(void *a1)
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

  sub_20BA62F80(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BCFD538(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2688(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20BCFD5EC()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_artworkView);
  v3 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *v2 = v3;
  v2[1] = &off_2822B63E8;
  v4 = (v1 + OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_fetchArtworkHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v1 + OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_fetchFallbackArtworkHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_completedIconView;
  v7 = objc_allocWithZone(type metadata accessor for CompletedIconView());
  v8 = sub_20B9931C0(0, 0.0, 0.0, 0.0, 0.0);
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v6) = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_recencyIconView;
  v10 = objc_allocWithZone(type metadata accessor for RecencyIconView());
  v11 = sub_20B7219DC(0, 0, 0, 0.0, 0.0, 0.0, 0.0);
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B8318CC(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BBA4();
  LODWORD(v12) = v41;
  [v11 setContentCompressionResistancePriority:1 forAxis:v12];

  *(v1 + v9) = v11;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = [objc_opt_self() secondaryLabelColor];
  [v13 setTextColor_];

  v15 = *MEMORY[0x277D769D0];
  v16 = objc_opt_self();
  v17 = [v16 preferredFontDescriptorWithTextStyle:v15 compatibleWithTraitCollection:0];
  v18 = [v17 fontDescriptorWithSymbolicTraits_];
  if (v18)
  {
    v19 = v18;

    v17 = v19;
  }

  v20 = OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_subtitleLabel;
  v21 = objc_opt_self();
  v22 = [v21 fontWithDescriptor:v17 size:0.0];

  [v13 setFont_];
  [v13 setNumberOfLines_];
  [v13 setLineBreakMode_];
  v23 = *MEMORY[0x277D76820];
  [v13 setMaximumContentSizeCategory_];

  [v13 setAdjustsFontForContentSizeCategory_];
  *(v1 + v20) = v13;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = *MEMORY[0x277D743F8];
  v26 = [v16 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76920] compatibleWithTraitCollection:0];
  v27 = [v26 fontDescriptorWithSymbolicTraits_];
  if (v27)
  {
    v28 = v27;

    v26 = v28;
  }

  v29 = OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_titleLabel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v31 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_20C14F980;
  v33 = *MEMORY[0x277D74430];
  *(v32 + 32) = *MEMORY[0x277D74430];
  *(v32 + 40) = v25;
  v34 = v31;
  v35 = v33;
  v36 = sub_20B6B134C(v32);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v36;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B8318CC(&qword_27C7618A0, type metadata accessor for AttributeName);
  v37 = sub_20C13C744();

  v38 = [v26 fontDescriptorByAddingAttributes_];

  v39 = [v21 fontWithDescriptor:v38 size:0.0];
  [v24 setFont_];

  [v24 setNumberOfLines_];
  [v24 setLineBreakMode_];
  [v24 setMaximumContentSizeCategory_];

  [v24 setAdjustsFontForContentSizeCategory_];
  *(v1 + v29) = v24;
  v40 = OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_labelLayoutGuide;
  *(v1 + v40) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20BCFDD18()
{
  result = qword_27C76DDE8;
  if (!qword_27C76DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DDE8);
  }

  return result;
}

uint64_t type metadata accessor for MarketingUserInterfaceResource()
{
  result = qword_27C76DDF0;
  if (!qword_27C76DDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BCFDDB8()
{
  sub_20BCFDE9C(319, &qword_27C76DE00, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_20BCFDE9C(319, &qword_27C76DE10, MEMORY[0x277D540B0]);
    if (v1 <= 0x3F)
    {
      sub_20BCFDF20();
      if (v2 <= 0x3F)
      {
        sub_20B52CB58();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_20BCFDE9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76DE08);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_20BCFDF20()
{
  if (!qword_27C76DE18)
  {
    sub_20C132C14();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76DE20);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C76DE18);
    }
  }
}

uint64_t type metadata accessor for HostedContentIdentifier()
{
  result = qword_27C76DE28;
  if (!qword_27C76DE28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BCFDFEC()
{
  v1 = type metadata accessor for HostedContentIdentifier();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C13E164();
  sub_20BC688F4(v0, v3);
  v4 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 64);
  MEMORY[0x20F2F58E0](0);
  sub_20BBA7D74(v12, v4);

  v8 = sub_20C135214();
  sub_20BCFE5B4(&qword_27C762F80, MEMORY[0x277D51640]);
  sub_20C13C7C4();
  (*(*(v8 - 8) + 8))(v3 + v6, v8);
  v9 = sub_20C133954();
  sub_20BCFE5B4(&qword_27C767540, MEMORY[0x277D50180]);
  sub_20C13C7C4();
  (*(*(v9 - 8) + 8))(v3 + v7, v9);
  return sub_20C13E1B4();
}

uint64_t sub_20BCFE1D0(__int128 *a1)
{
  MEMORY[0x28223BE20](a1);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20BC688F4(v1, v4);
  v5 = *v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 64);
  MEMORY[0x20F2F58E0](0);
  sub_20BBA7D74(a1, v5);

  v9 = sub_20C135214();
  sub_20BCFE5B4(&qword_27C762F80, MEMORY[0x277D51640]);
  sub_20C13C7C4();
  (*(*(v9 - 8) + 8))(v4 + v7, v9);
  v10 = sub_20C133954();
  sub_20BCFE5B4(&qword_27C767540, MEMORY[0x277D50180]);
  sub_20C13C7C4();
  return (*(*(v10 - 8) + 8))(v4 + v8, v10);
}

uint64_t sub_20BCFE394(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = (&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C13E164();
  sub_20BC688F4(v1, v3);
  v4 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 64);
  MEMORY[0x20F2F58E0](0);
  sub_20BBA7D74(v12, v4);

  v8 = sub_20C135214();
  sub_20BCFE5B4(&qword_27C762F80, MEMORY[0x277D51640]);
  sub_20C13C7C4();
  (*(*(v8 - 8) + 8))(v3 + v6, v8);
  v9 = sub_20C133954();
  sub_20BCFE5B4(&qword_27C767540, MEMORY[0x277D50180]);
  sub_20C13C7C4();
  (*(*(v9 - 8) + 8))(v3 + v7, v9);
  return sub_20C13E1B4();
}

uint64_t sub_20BCFE5B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BCFE5FC(uint64_t a1, uint64_t a2)
{
  v43 = sub_20C133954();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v39 - v7;
  v8 = sub_20C135214();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v47 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DE40);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v39 - v15);
  v18 = (&v39 + *(v17 + 56) - v15);
  sub_20BC688F4(a1, &v39 - v15);
  sub_20BC688F4(a2, v18);
  v40 = *v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 64);
  v22 = *v18;
  v44 = v9;
  v23 = *(v9 + 32);
  v41 = v13;
  v23(v13, v16 + v20, v8);
  v46 = v4;
  v24 = *(v4 + 32);
  v25 = v16 + v21;
  v26 = v43;
  v24(v48, v25, v43);
  v45 = v8;
  v23(v47, v18 + v20, v8);
  v27 = v42;
  v28 = v26;
  v24(v42, v18 + v21, v26);
  sub_20BDA3714(v40, v22);
  LOBYTE(v26) = v29;

  if (v26)
  {
    v30 = v41;
    v31 = v47;
    if (MEMORY[0x20F2EC950](v41, v47))
    {
      v32 = v48;
      v33 = MEMORY[0x20F2EAFF0](v48, v27);
    }

    else
    {
      v33 = 0;
      v32 = v48;
    }
  }

  else
  {
    v33 = 0;
    v31 = v47;
    v32 = v48;
    v30 = v41;
  }

  v34 = *(v46 + 8);
  v34(v27, v28);
  v35 = *(v44 + 8);
  v36 = v31;
  v37 = v45;
  v35(v36, v45);
  v34(v32, v28);
  v35(v30, v37);
  return v33 & 1;
}

uint64_t getEnumTagSinglePayload for PlaybackControlType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1E)
  {
    goto LABEL_17;
  }

  if (a2 + 226 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 226) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 226;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for PlaybackControlType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1E)
  {
    v4 = 0;
  }

  if (a2 > 0x1D)
  {
    v5 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20BCFEAE0(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *sub_20BCFEB0C(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 6) & 7 | 0x80;
  }

  return result;
}

unint64_t sub_20BCFEB50()
{
  result = qword_27C76DE48;
  if (!qword_27C76DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DE48);
  }

  return result;
}

uint64_t sub_20BCFEBA4()
{
  sub_20C13CA64();
}

uint64_t sub_20BCFECDC()
{
  sub_20C13CA64();
}

uint64_t sub_20BCFEE1C()
{
  sub_20C13CA64();
}

uint64_t sub_20BCFEF94(unsigned __int8 a1)
{
  if (!(a1 >> 6))
  {
    v3 = 0x61776B6361626F67;
    goto LABEL_5;
  }

  if (a1 >> 6 == 1)
  {
    v3 = 0x726177726F666F67;
    a1 &= 0x3Fu;
LABEL_5:
    sub_20BD03B34(a1);
    v1 = sub_20C13DFA4();
    MEMORY[0x20F2F4230](v1);

    return v3;
  }

  if (a1 == 128)
  {
    return 0x69662E6573756170;
  }

  else
  {
    return 0x6C69662E79616C70;
  }
}

uint64_t sub_20BCFF088(uint64_t a1, unsigned __int8 a2)
{
  if (!(a2 >> 6))
  {
    MEMORY[0x20F2F58E0](2);
    v3 = a2;
    return MEMORY[0x20F2F5910](qword_20C178F88[v3]);
  }

  if (a2 >> 6 == 1)
  {
    MEMORY[0x20F2F58E0](3);
    v3 = a2 & 0x3F;
    return MEMORY[0x20F2F5910](qword_20C178F88[v3]);
  }

  if (a2 == 128)
  {
    return MEMORY[0x20F2F58E0](0);
  }

  else
  {
    return MEMORY[0x20F2F58E0](1);
  }
}

uint64_t sub_20BCFF10C()
{
  v1 = *v0;
  sub_20C13E164();
  sub_20BCFF088(v3, v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BCFF15C()
{
  v1 = *v0;
  sub_20C13E164();
  sub_20BCFF088(v3, v1);
  return sub_20C13E1B4();
}

unint64_t sub_20BCFF1B0()
{
  result = qword_27C76DE50;
  if (!qword_27C76DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DE50);
  }

  return result;
}

uint64_t sub_20BCFF204(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        v2 = a1 & 0x3F;
        v3 = a2 & 0x3F;
        if (v3 > 3)
        {
          if ((a2 & 0x3Fu) > 5)
          {
            if (v3 == 6)
            {
              if (v2 == 6)
              {
                return 1;
              }
            }

            else if (v2 == 7)
            {
              return 1;
            }
          }

          else if (v3 == 4)
          {
            if (v2 == 4)
            {
              return 1;
            }
          }

          else if (v2 == 5)
          {
            return 1;
          }
        }

        else if ((a2 & 0x3Fu) > 1)
        {
          if (v3 == 2)
          {
            if (v2 == 2)
            {
              return 1;
            }
          }

          else if (v2 == 3)
          {
            return 1;
          }
        }

        else if ((a2 & 0x3F) != 0)
        {
          if (v2 == 1)
          {
            return 1;
          }
        }

        else if ((a1 & 0x3F) == 0)
        {
          return 1;
        }
      }
    }

    else if (a1 == 128)
    {
      if (a2 == 128)
      {
        return 1;
      }
    }

    else if (a2 == 129)
    {
      return 1;
    }
  }

  else if (a2 <= 0x3Fu)
  {
    if (a2 > 3u)
    {
      if (a2 > 5u)
      {
        if (a2 == 6)
        {
          if (a1 == 6)
          {
            return 1;
          }
        }

        else if (a1 == 7)
        {
          return 1;
        }
      }

      else if (a2 == 4)
      {
        if (a1 == 4)
        {
          return 1;
        }
      }

      else if (a1 == 5)
      {
        return 1;
      }
    }

    else if (a2 > 1u)
    {
      if (a2 == 2)
      {
        if (a1 == 2)
        {
          return 1;
        }
      }

      else if (a1 == 3)
      {
        return 1;
      }
    }

    else if (a2)
    {
      if (a1 == 1)
      {
        return 1;
      }
    }

    else if (!a1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for DownloadButtonState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DownloadButtonState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_20BCFF454(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_20BCFF46C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_20BCFF494(uint64_t a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a2 <= 1u)
  {
    if (!a2)
    {
      v10 = 0;
      MEMORY[0x20F2F4230](0x20656C6261646441, 0xE800000000000000);
      sub_20C13DDF4();
      return v10;
    }

    sub_20C13DC94();

    v10 = 0xD000000000000019;
    if (v2)
    {
      v3 = 1702195828;
    }

    else
    {
      v3 = 0x65736C6166;
    }

    if (v2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    v4 = v5;
LABEL_13:
    MEMORY[0x20F2F4230](v3, v4);

    return v10;
  }

  if (a2 == 2)
  {
    sub_20C13DC94();

    v10 = 0xD00000000000001BLL;
    v3 = _s12CoreGraphics7CGFloatV9SeymourUIE9logOutputSSvg_0();
    goto LABEL_13;
  }

  v7 = 0x6465646441;
  v8 = 0x6E6564646948;
  v9 = 1701736270;
  if (a1 != 3)
  {
    v9 = 0x646575657551;
  }

  if (a1 != 2)
  {
    v8 = v9;
  }

  if (a1)
  {
    v7 = 0x64616F6C6E776F44;
  }

  if (a1 <= 1)
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_20BCFF684(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      MEMORY[0x20F2F58E0](4);
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = 0;
      }

      return MEMORY[0x20F2F5910](v5);
    }

    else if (a2 <= 1)
    {
      if (a2)
      {
        return MEMORY[0x20F2F58E0](2);
      }

      else
      {
        return MEMORY[0x20F2F58E0](1);
      }
    }

    else if (a2 == 2)
    {
      return MEMORY[0x20F2F58E0](5);
    }

    else if (a2 == 3)
    {
      return MEMORY[0x20F2F58E0](6);
    }

    else
    {
      return MEMORY[0x20F2F58E0](7);
    }
  }

  else if (a3)
  {
    MEMORY[0x20F2F58E0](3);
    return sub_20C13E184();
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    return MEMORY[0x20F2F58E0](a2);
  }
}

uint64_t sub_20BCFF760()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_20C13E164();
  sub_20BCFF684(v4, v1, v2);
  return sub_20C13E1B4();
}

uint64_t sub_20BCFF7BC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_20C13E164();
  sub_20BCFF684(v4, v1, v2);
  return sub_20C13E1B4();
}

unint64_t sub_20BCFF824()
{
  result = qword_27C76DE58;
  if (!qword_27C76DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DE58);
  }

  return result;
}

uint64_t sub_20BCFF878(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a4 == 1)
      {
        return (a3 ^ a1 ^ 1) & 1;
      }
    }

    else if (!a4)
    {
      return a3 == a1;
    }

    return 0;
  }

  if (a2 == 2)
  {
    if (a4 == 2)
    {
      return *&a1 == *&a3;
    }

    return 0;
  }

  if (a1 <= 1)
  {
    if (*&a1 == 0.0)
    {
      if (a4 != 3 || *&a3 != 0.0)
      {
        return 0;
      }
    }

    else if (a4 != 3 || a3 != 1)
    {
      return 0;
    }

    return 1;
  }

  if (a1 == 2)
  {
    return a4 == 3 && a3 == 2;
  }

  if (a1 != 3)
  {
    return a4 == 3 && a3 == 4;
  }

  return a4 == 3 && a3 == 3;
}

uint64_t sub_20BCFF9A0@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v21 = sub_20C136354();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v21);
  v20 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_20C136C64();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  sub_20C13B174();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20B520158(v9, &qword_27C768690);
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    return sub_20C139BE4();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_20C136A34();
    v16 = v20;
    v15 = v21;
    (*(v2 + 16))(v20, v6, v21);
    v17 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v18 = swift_allocObject();
    (*(v2 + 32))(v18 + v17, v16, v15);
    sub_20C137CA4();
    (*(v2 + 8))(v6, v15);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_20BCFFCC0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v20[1] = a1;
  v23 = a2;
  v22 = sub_20C136354();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v22);
  v21 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  v11 = sub_20C136C64();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]);
  sub_20C13B174();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20B520158(v10, &qword_27C768690);
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    return sub_20C139BD4();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_20C136A34();
    v17 = v21;
    v16 = v22;
    (*(v3 + 16))(v21, v7, v22);
    v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v19 = swift_allocObject();
    (*(v3 + 32))(v19 + v18, v17, v16);
    sub_20C137CA4();
    (*(v3 + 8))(v7, v16);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_20BCFFFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = a1;
  v37 = sub_20C136354();
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DE98);
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = &v28 - v6;
  v32 = sub_20C13B0C4();
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - v11;
  v13 = sub_20C135174();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v31 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  __swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]);
  sub_20C13B184();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C76BC00);
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    return sub_20C139C04();
  }

  else
  {
    v20 = *(v14 + 32);
    v30 = v18;
    v20(v18, v12, v13);
    v21 = v2[15];
    v28 = v2[16];
    __swift_project_boxed_opaque_existential_1(v2 + 12, v21);
    v29 = v4;
    v34 = *(v34 + 16);
    v22 = v37;
    (v34)(v9, v39, v37);
    v23 = *MEMORY[0x277D4F670];
    v24 = sub_20C13B254();
    (*(*(v24 - 8) + 104))(v9, v23, v24);
    v25 = v32;
    (*(v7 + 104))(v9, *MEMORY[0x277D4F528], v32);
    sub_20C13B2A4();
    (*(v7 + 8))(v9, v25);
    v26 = v30;
    (*(v14 + 16))(v31, v30, v13);
    (v34)(v29, v39, v22);
    v27 = v33;
    sub_20C137844();
    __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
    sub_20C139AA4();
    (*(v35 + 8))(v27, v36);
    return (*(v14 + 8))(v26, v13);
  }
}

uint64_t sub_20BD004E8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v21 = sub_20C136014();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v21);
  v20 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_20C136C64();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  sub_20C13B174();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20B520158(v9, &qword_27C768690);
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    return sub_20C139BC4();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_20C136A04();
    v16 = v20;
    v15 = v21;
    (*(v2 + 16))(v20, v6, v21);
    v17 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v18 = swift_allocObject();
    (*(v2 + 32))(v18 + v17, v16, v15);
    sub_20C137CA4();
    (*(v2 + 8))(v6, v15);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_20BD00808@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v20[1] = a1;
  v23 = a2;
  v22 = sub_20C136014();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v22);
  v21 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  v11 = sub_20C136C64();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]);
  sub_20C13B174();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20B520158(v10, &qword_27C768690);
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    return sub_20C139BB4();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_20C136A04();
    v17 = v21;
    v16 = v22;
    (*(v3 + 16))(v21, v7, v22);
    v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v19 = swift_allocObject();
    (*(v3 + 32))(v19 + v18, v17, v16);
    sub_20C137CA4();
    (*(v3 + 8))(v7, v16);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_20BD00B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = a1;
  v37 = sub_20C136014();
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DE90);
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = &v28 - v6;
  v32 = sub_20C13B0C4();
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - v11;
  v13 = sub_20C135174();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v31 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  __swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]);
  sub_20C13B184();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C76BC00);
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    return sub_20C139BF4();
  }

  else
  {
    v20 = *(v14 + 32);
    v30 = v18;
    v20(v18, v12, v13);
    v21 = v2[15];
    v28 = v2[16];
    __swift_project_boxed_opaque_existential_1(v2 + 12, v21);
    v29 = v4;
    v34 = *(v34 + 16);
    v22 = v37;
    (v34)(v9, v39, v37);
    v23 = *MEMORY[0x277D4F660];
    v24 = sub_20C13B254();
    (*(*(v24 - 8) + 104))(v9, v23, v24);
    v25 = v32;
    (*(v7 + 104))(v9, *MEMORY[0x277D4F528], v32);
    sub_20C13B2A4();
    (*(v7 + 8))(v9, v25);
    v26 = v30;
    (*(v14 + 16))(v31, v30, v13);
    (v34)(v29, v39, v22);
    v27 = v33;
    sub_20C137844();
    __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
    sub_20C139A64();
    (*(v35 + 8))(v27, v36);
    return (*(v14 + 8))(v26, v13);
  }
}

uint64_t sub_20BD01030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v80 = a3;
  v81 = a1;
  v82 = a2;
  v72 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DE78);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v62 - v6;
  v7 = sub_20C136064();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v68 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v70 = &v62 - v11;
  MEMORY[0x28223BE20](v12);
  v71 = &v62 - v13;
  MEMORY[0x28223BE20](v14);
  v78 = &v62 - v15;
  MEMORY[0x28223BE20](v16);
  v67 = &v62 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v62 - v19;
  v21 = sub_20C136C64();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v4 + 96), *(v4 + 120));
  sub_20C13B174();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_20B520158(v20, &qword_27C768690);
    v25 = sub_20C1356F4();
    sub_20BB6DBA8();
    v26 = swift_allocError();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D51B88], v25);
    *(swift_allocObject() + 16) = v26;
    return sub_20C137CA4();
  }

  else
  {
    v65 = v9;
    v63 = v22;
    v29 = *(v22 + 32);
    v66 = v21;
    v29(v24, v20, v21);
    v64 = v24;
    v30 = sub_20C136B94();
    v31 = v30;
    v32 = v30 + 56;
    v33 = 1 << *(v30 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v30 + 56);
    v36 = (v33 + 63) >> 6;
    v79 = v8 + 32;
    v76 = (v8 + 8);
    v77 = v8 + 16;

    v37 = 0;
    v38 = v71;
    v73 = v32;
    v74 = result;
    v75 = v8;
    if (v35)
    {
      while (1)
      {
        v39 = v37;
LABEL_10:
        v40 = *(v31 + 48) + *(v8 + 72) * (__clz(__rbit64(v35)) | (v39 << 6));
        v41 = v78;
        (*(v8 + 16))(v78, v40, v7);
        v42 = *(v8 + 32);
        v42(v38, v41, v7);
        v43 = sub_20C136054();
        v45 = v44;
        v86 = v43;
        v87 = v44;
        v47 = v46 & 1;
        v88 = v46 & 1;
        v83 = v81;
        v84 = v82;
        v85 = v80 & 1;
        sub_20BD02974();
        sub_20BD029C8();
        v48 = sub_20C133BF4();
        sub_20B583F4C(v43, v45, v47);
        if (v48)
        {
          break;
        }

        v35 &= v35 - 1;
        result = (*v76)(v38, v7);
        v37 = v39;
        v31 = v74;
        v8 = v75;
        v32 = v73;
        if (!v35)
        {
          goto LABEL_7;
        }
      }

      v50 = v69;
      v42(v69, v38, v7);
      v49 = 0;
      v8 = v75;
LABEL_14:
      (*(v8 + 56))(v50, v49, 1, v7);

      v51 = (*(v8 + 48))(v50, 1, v7);
      v52 = v70;
      v53 = v66;
      v54 = v64;
      if (v51 == 1)
      {
        sub_20B520158(v50, &qword_27C76DE78);
        sub_20B6A6418(v81, v82, v80 & 1);
        sub_20C136044();
        v55 = v68;
        (*(v8 + 16))(v68, v52, v7);
        v56 = (*(v8 + 80) + 16) & ~*(v8 + 80);
        v57 = swift_allocObject();
        (*(v8 + 32))(v57 + v56, v55, v7);
        sub_20C137CA4();
        (*(v8 + 8))(v52, v7);
        return (*(v63 + 8))(v54, v53);
      }

      else
      {
        v58 = *(v8 + 32);
        v59 = v67;
        v58(v67, v50, v7);
        (*(v8 + 16))(v52, v59, v7);
        v60 = (*(v8 + 80) + 16) & ~*(v8 + 80);
        v61 = swift_allocObject();
        v58((v61 + v60), v52, v7);
        sub_20C137CA4();
        (*(v8 + 8))(v59, v7);
        return (*(v63 + 8))(v54, v66);
      }
    }

    else
    {
LABEL_7:
      while (1)
      {
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v39 >= v36)
        {

          v49 = 1;
          v50 = v69;
          goto LABEL_14;
        }

        v35 = *(v32 + 8 * v39);
        ++v37;
        if (v35)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_20BD01828@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  LODWORD(v49) = a3;
  v50 = a1;
  v51 = a2;
  v60 = a4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DE68);
  v59 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v58 = v44 - v6;
  v7 = sub_20C13B0C4();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = (v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_20C136064();
  v10 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v44 - v16;
  v18 = sub_20C135174();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v52 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v44 - v22;
  __swift_project_boxed_opaque_existential_1(v4 + 12, v4[15]);
  sub_20C13B184();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_20B520158(v17, &unk_27C76BC00);
    v24 = sub_20C1356F4();
    sub_20BB6DBA8();
    v25 = swift_allocError();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D51B88], v24);
    *(swift_allocObject() + 16) = v25;
    return sub_20C137CA4();
  }

  else
  {
    v28 = *(v19 + 32);
    v48 = v23;
    v28(v23, v17, v18);
    sub_20B6A6418(v50, v51, v49 & 1);
    v29 = v14;
    v45 = v14;
    sub_20C136044();
    v30 = v4[16];
    v49 = v4[15];
    v50 = v30;
    v47 = __swift_project_boxed_opaque_existential_1(v4 + 12, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DE70);
    v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_20C14F980;
    v46 = *(v10 + 16);
    v33 = v29;
    v34 = v57;
    v46(v32 + v31, v33, v57);
    v35 = sub_20BE8DA30(v32);
    swift_setDeallocating();
    v36 = *(v10 + 8);
    v44[1] = v10 + 8;
    v51 = v36;
    v36((v32 + v31), v34);
    swift_deallocClassInstance();
    *v9 = v35;
    v37 = *MEMORY[0x277D4F678];
    v38 = sub_20C13B254();
    (*(*(v38 - 8) + 104))(v9, v37, v38);
    v40 = v55;
    v39 = v56;
    (*(v55 + 104))(v9, *MEMORY[0x277D4F518], v56);
    sub_20C13B2A4();
    (*(v40 + 8))(v9, v39);
    v41 = v48;
    (*(v19 + 16))(v52, v48, v18);
    v42 = v45;
    v46(v54, v45, v34);
    v43 = v58;
    sub_20C137844();
    __swift_project_boxed_opaque_existential_1(v5 + 7, v5[10]);
    sub_20C139A44();
    (*(v59 + 8))(v43, v53);
    v51(v42, v34);
    return (*(v19 + 8))(v41, v18);
  }
}

uint64_t sub_20BD01EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = a1;
  v44 = sub_20C137834();
  v3 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DE60);
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = v34 - v7;
  v8 = sub_20C13B0C4();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v34 - v12;
  v14 = sub_20C135174();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v38 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v34 - v18;
  __swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]);
  sub_20C13B184();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_20B520158(v13, &unk_27C76BC00);
    v20 = sub_20C1356F4();
    sub_20BB6DBA8();
    v21 = swift_allocError();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D51B88], v20);
    *(swift_allocObject() + 16) = v21;
    return sub_20C137CA4();
  }

  else
  {
    v24 = *(v15 + 32);
    v37 = v19;
    v24(v19, v13, v14);
    v25 = v2[15];
    v34[1] = v2[16];
    __swift_project_boxed_opaque_existential_1(v2 + 12, v25);
    v26 = *(v3 + 16);
    v35 = v5;
    v36 = v26;
    v27 = v44;
    v26(v10, v46, v44);
    v28 = *MEMORY[0x277D4F6C0];
    v29 = sub_20C13B254();
    (*(*(v29 - 8) + 104))(v10, v28, v29);
    v30 = v39;
    v31 = v40;
    (*(v39 + 104))(v10, *MEMORY[0x277D4F518], v40);
    sub_20C13B2A4();
    (*(v30 + 8))(v10, v31);
    v32 = v37;
    (*(v15 + 16))(v38, v37, v14);
    v36(v35, v46, v27);
    v33 = v41;
    sub_20C137844();
    __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
    sub_20C139B54();
    (*(v42 + 8))(v33, v43);
    return (*(v15 + 8))(v32, v14);
  }
}

uint64_t sub_20BD0242C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v25 = sub_20C137834();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_20C136C64();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
  sub_20C13B174();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_20B520158(v9, &qword_27C768690);
    v14 = sub_20C1356F4();
    sub_20BB6DBA8();
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D51B88], v14);
    *(swift_allocObject() + 16) = v15;
    return sub_20C137CA4();
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_20C136BF4();
    v18 = v23;
    v19 = v25;
    (*(v2 + 16))(v23, v6, v25);
    v20 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v21 = swift_allocObject();
    (*(v2 + 32))(v21 + v20, v18, v19);
    sub_20C137CA4();
    (*(v2 + 8))(v6, v19);
    return (*(v11 + 8))(v13, v10);
  }
}

unint64_t sub_20BD02974()
{
  result = qword_27C76DE80;
  if (!qword_27C76DE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DE80);
  }

  return result;
}

unint64_t sub_20BD029C8()
{
  result = qword_27C76DE88;
  if (!qword_27C76DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DE88);
  }

  return result;
}

uint64_t objectdestroy_3Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

void sub_20BD02C38(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a4 + 8);
  v11 = v10(a2, a4);
  *&v11[OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate + 8] = a3;
  swift_unknownObjectWeakAssign();

  v12 = v10(a2, a4);
  v13 = *&v12[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = [v5 view];
  v15 = v14;
  if (a1)
  {
    if (!v14)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v16 = v10(a2, a4);
    v17 = *&v16[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

    [v15 insertSubview:v17 atIndex:0];
LABEL_6:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_20C14FE90;
    v20 = v10(a2, a4);
    v21 = *&v20[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

    v22 = [v21 leadingAnchor];
    v23 = [v5 view];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 leadingAnchor];

      v26 = [v22 constraintEqualToAnchor_];
      *(v19 + 32) = v26;
      v27 = v10(a2, a4);
      v28 = *&v27[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

      v29 = [v28 trailingAnchor];
      v30 = [v5 view];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 trailingAnchor];

        v33 = [v29 constraintEqualToAnchor_];
        *(v19 + 40) = v33;
        v34 = v10(a2, a4);
        v35 = *&v34[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

        v36 = [v35 topAnchor];
        v37 = [v5 view];
        if (v37)
        {
          v38 = v37;
          v39 = [v37 topAnchor];

          v40 = [v36 constraintEqualToAnchor_];
          *(v19 + 48) = v40;
          v41 = v10(a2, a4);
          v42 = *&v41[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

          v43 = [v42 bottomAnchor];
          v44 = [v5 view];
          if (v44)
          {
            v45 = v44;
            v46 = objc_opt_self();
            v47 = [v45 bottomAnchor];

            v48 = [v43 constraintEqualToAnchor_];
            *(v19 + 56) = v48;
            sub_20B5E29D0();
            v49 = sub_20C13CC54();

            [v46 activateConstraints_];

            return;
          }

          goto LABEL_14;
        }

LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  if (v14)
  {
    v18 = v10(a2, a4);
    v17 = *&v18[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView];

    [v15 addSubview_];
    goto LABEL_6;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_20BD03170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 8))(a1, a3);
  v4 = *&v3[OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves];

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 48);
      swift_unknownObjectRetain();
      v9(ObjectType, v7);
      swift_unknownObjectRelease();
      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

unint64_t sub_20BD03424()
{
  result = qword_27C76DEA0;
  if (!qword_27C76DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DEA0);
  }

  return result;
}

uint64_t sub_20BD03478()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t sub_20BD03580()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t sub_20BD03690()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t sub_20BD037A0(uint64_t a1, char a2)
{
  sub_20C13E164();
  MEMORY[0x20F2F5910](qword_20C1792C0[a2]);
  return sub_20C13E1B4();
}

uint64_t sub_20BD037F0()
{
  sub_20C13E164();
  sub_20C13E194();
  return sub_20C13E1B4();
}

uint64_t sub_20BD03844()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t sub_20BD03998()
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

uint64_t sub_20BD03AE4(uint64_t a1, char a2)
{
  sub_20C13E164();
  MEMORY[0x20F2F5910](qword_20C179300[a2]);
  return sub_20C13E1B4();
}

uint64_t sub_20BD03B54@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20BD03BC4(*a1);
  *a2 = result;
  return result;
}

double sub_20BD03B80@<D0>(double *a1@<X8>)
{
  result = dbl_20C179370[*v1];
  *a1 = result;
  return result;
}

uint64_t sub_20BD03BC4(double a1)
{
  if (a1 == 5.0)
  {
    return 0;
  }

  if (a1 == 10.0)
  {
    return 1;
  }

  if (a1 == 15.0)
  {
    return 2;
  }

  if (a1 == 30.0)
  {
    return 3;
  }

  if (a1 == 45.0)
  {
    return 4;
  }

  if (a1 == 90.0)
  {
    v2 = 7;
  }

  else
  {
    v2 = 8;
  }

  if (a1 == 75.0)
  {
    v3 = 6;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 60.0)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

id sub_20BD03C7C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC9SeymourUI40ContentRatingSystemSymbolDescriptionView_contentRatingsSymbolLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = objc_opt_self();
  v6 = [v5 labelColor];
  [v4 setTextColor_];

  [v4 setTextAlignment_];
  *&v2[v3] = v4;
  v7 = OBJC_IVAR____TtC9SeymourUI40ContentRatingSystemSymbolDescriptionView_dividerView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = [v5 labelColor];
  [v8 setBackgroundColor_];

  *&v2[v7] = v8;
  v10 = OBJC_IVAR____TtC9SeymourUI40ContentRatingSystemSymbolDescriptionView_contentRatingsTextLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = [v5 labelColor];
  [v11 setTextColor_];

  v13 = [objc_opt_self() smu:*MEMORY[0x277D76988] preferredFontForTextStyle:1024 variant:?];
  [v11 setFont_];

  *&v2[v10] = v11;
  v14 = OBJC_IVAR____TtC9SeymourUI40ContentRatingSystemSymbolDescriptionView_contentRatingSystem;
  v15 = sub_20C135544();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v2[v14], a1, v15);
  sub_20B51CC64(a2, &v2[OBJC_IVAR____TtC9SeymourUI40ContentRatingSystemSymbolDescriptionView_storefrontLocalizer]);
  v22.receiver = v2;
  v22.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v22, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_20BD03F3C();

  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v16 + 8))(a1, v15);
  return v17;
}

void sub_20BD03F3C()
{
  v1 = v0;
  sub_20BF819C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v3 = *MEMORY[0x277CC4810];
  *(inited + 32) = *MEMORY[0x277CC4810];
  v4 = objc_allocWithZone(MEMORY[0x277CC4818]);
  v5 = v3;
  v6 = [v4 init];
  v7 = sub_20B51C88C(0, &qword_27C76DEE0);
  *(inited + 40) = v6;
  v8 = *MEMORY[0x277D740A8];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = objc_opt_self();
  v10 = *MEMORY[0x277D76A20];
  v11 = v8;
  v12 = [v9 smu:v10 preferredFontForTextStyle:1024 variant:?];
  *(inited + 104) = sub_20B51C88C(0, &qword_27C767A60);
  *(inited + 80) = v12;
  sub_20B6B1650(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763978);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v14 = sub_20C13C914();

  type metadata accessor for Key(0);
  sub_20B76322C();
  v15 = sub_20C13C744();

  v51 = [v13 initWithString:v14 attributes:v15];

  v16 = *&v1[OBJC_IVAR____TtC9SeymourUI40ContentRatingSystemSymbolDescriptionView_contentRatingsSymbolLabel];
  [v16 setAttributedText_];
  v17 = *&v1[OBJC_IVAR____TtC9SeymourUI40ContentRatingSystemSymbolDescriptionView_contentRatingsTextLabel];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC9SeymourUI40ContentRatingSystemSymbolDescriptionView_storefrontLocalizer], *&v1[OBJC_IVAR____TtC9SeymourUI40ContentRatingSystemSymbolDescriptionView_storefrontLocalizer + 24]);
  sub_20BF81C8C();
  sub_20C138D34();

  v18 = sub_20C13C914();

  [v17 setText_];

  [v1 addSubview_];
  v19 = *&v1[OBJC_IVAR____TtC9SeymourUI40ContentRatingSystemSymbolDescriptionView_dividerView];
  [v1 addSubview_];
  [v1 addSubview_];
  v50 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20C14FF90;
  v21 = [v16 leadingAnchor];
  v22 = [v1 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v20 + 32) = v23;
  v24 = [v16 centerYAnchor];
  v25 = [v1 &selRef_setNumberOfTapsRequired_];
  v26 = [v24 constraintEqualToAnchor_];

  *(v20 + 40) = v26;
  v27 = [v19 leadingAnchor];
  v28 = [v16 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:5.0];

  *(v20 + 48) = v29;
  v30 = [v19 topAnchor];
  v31 = [v1 topAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v20 + 56) = v32;
  v33 = [v19 bottomAnchor];
  v34 = [v1 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v20 + 64) = v35;
  v36 = [v19 widthAnchor];
  v37 = [v36 constraintEqualToConstant_];

  *(v20 + 72) = v37;
  v38 = [v19 heightAnchor];
  v39 = [v38 constraintEqualToConstant_];

  *(v20 + 80) = v39;
  v40 = [v17 leadingAnchor];
  v41 = [v19 trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:5.0];

  *(v20 + 88) = v42;
  v43 = [v17 trailingAnchor];
  v44 = [v1 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  *(v20 + 96) = v45;
  v46 = [v17 centerYAnchor];
  v47 = [v1 centerYAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v20 + 104) = v48;
  sub_20B51C88C(0, &qword_281100500);
  v49 = sub_20C13CC54();

  [v50 activateConstraints_];
}

uint64_t type metadata accessor for ContentRatingSystemSymbolDescriptionView()
{
  result = qword_27C76DED0;
  if (!qword_27C76DED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BD04794()
{
  result = sub_20C135544();
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

void sub_20BD04840()
{
  v1 = OBJC_IVAR____TtC9SeymourUI40ContentRatingSystemSymbolDescriptionView_contentRatingsSymbolLabel;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = objc_opt_self();
  v4 = [v3 labelColor];
  [v2 setTextColor_];

  [v2 setTextAlignment_];
  *(v0 + v1) = v2;
  v5 = OBJC_IVAR____TtC9SeymourUI40ContentRatingSystemSymbolDescriptionView_dividerView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v3 labelColor];
  [v6 setBackgroundColor_];

  *(v0 + v5) = v6;
  v8 = OBJC_IVAR____TtC9SeymourUI40ContentRatingSystemSymbolDescriptionView_contentRatingsTextLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = [v3 labelColor];
  [v9 setTextColor_];

  v11 = [objc_opt_self() smu:*MEMORY[0x277D76988] preferredFontForTextStyle:1024 variant:?];
  [v9 setFont_];

  *(v0 + v8) = v9;
  sub_20C13DE24();
  __break(1u);
}

char *sub_20BD04A5C(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v12 = sub_20C13D664();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C13BD14();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_20C13D874();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v4[OBJC_IVAR____TtC9SeymourUI13WeekdayButton_onTap];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v4[OBJC_IVAR____TtC9SeymourUI13WeekdayButton_styleProvider];
  sub_20BD05F08(v50);
  v23 = v50[3];
  *(v22 + 2) = v50[2];
  *(v22 + 3) = v23;
  *(v22 + 4) = v50[4];
  v24 = v51;
  v25 = v50[1];
  *v22 = v50[0];
  *(v22 + 1) = v25;
  *(v22 + 10) = v24;
  *(v22 + 11) = 0x4044000000000000;
  v26 = &v4[OBJC_IVAR____TtC9SeymourUI13WeekdayButton_item];
  *v26 = 0;
  *(v26 + 4) = 0;
  v27 = type metadata accessor for WeekdayButton();
  v49.receiver = v4;
  v49.super_class = v27;
  v28 = objc_msgSendSuper2(&v49, sel_initWithFrame_, a1, a2, a3, a4);
  v29 = *MEMORY[0x277D76838];
  v30 = v28;
  [v30 setMaximumContentSizeCategory_];
  sub_20C13D814();
  sub_20C13BCE4();
  sub_20C13D644();
  v31 = [objc_opt_self() clearColor];
  sub_20C13D764();
  sub_20C13D6B4();
  (*(v13 + 104))(v15, *MEMORY[0x277D74FD8], v12);
  sub_20C13D674();
  sub_20C13D754();
  v32 = *(v18 + 16);
  v48 = v17;
  v32(v11, v20, v17);
  (*(v18 + 56))(v11, 0, 1, v17);
  sub_20C13D894();

  v33 = [v30 layer];
  v34 = &v30[OBJC_IVAR____TtC9SeymourUI13WeekdayButton_styleProvider];
  v35 = [*&v30[OBJC_IVAR____TtC9SeymourUI13WeekdayButton_styleProvider] CGColor];
  [v33 setBorderColor_];

  v36 = [v30 layer];
  [v36 setBorderWidth_];

  v37 = v30;
  v38 = [v37 layer];
  [v38 setCornerRadius_];

  [v37 addTarget:v37 action:sel_buttonTapped_ forControlEvents:64];
  v39 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_20C151490;
  v41 = [v37 widthAnchor];
  v42 = [v37 heightAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v40 + 32) = v43;
  v44 = [v37 heightAnchor];

  v45 = [v44 constraintEqualToConstant_];
  *(v40 + 40) = v45;
  sub_20B51C88C(0, &qword_281100500);
  v46 = sub_20C13CC54();

  [v39 activateConstraints_];

  (*(v18 + 8))(v20, v48);
  return v37;
}

uint64_t sub_20BD05100()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = sub_20C13D874();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WeekdayButton();
  v21.receiver = v0;
  v21.super_class = v14;
  objc_msgSendSuper2(&v21, sel_updateConfiguration);
  sub_20C13D884();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_20B520158(v9, &qword_27C764C60);
  }

  (*(v11 + 32))(v13, v9, v10);
  *(swift_allocObject() + 16) = v0;
  v16 = v0;
  sub_20C13C074();
  v17 = sub_20C13C064();
  (*(*(v17 - 8) + 56))(v3, 0, 1, v17);
  sub_20C13D7B4();
  v18 = [v16 layer];
  v19 = [v16 isSelected];
  v20 = 0.0;
  if (v19)
  {
    v20 = *&v16[OBJC_IVAR____TtC9SeymourUI13WeekdayButton_styleProvider + 8];
  }

  [v18 setBorderWidth_];

  (*(v11 + 16))(v6, v13, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  sub_20C13D894();
  return (*(v11 + 8))(v13, v10);
}

void sub_20BD05444(char *a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v6 = [a1 isSelected];
  v7 = 80;
  if (v6)
  {
    v7 = 72;
  }

  v8 = *&a1[OBJC_IVAR____TtC9SeymourUI13WeekdayButton_styleProvider + v7];
  v9 = sub_20C1329B4();
  (*(*(v9 - 8) + 16))(a3, a2, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = *&a1[OBJC_IVAR____TtC9SeymourUI13WeekdayButton_styleProvider + 16];
  v11 = *&a1[OBJC_IVAR____TtC9SeymourUI13WeekdayButton_styleProvider + 24];
  v13 = *&a1[OBJC_IVAR____TtC9SeymourUI13WeekdayButton_styleProvider + 32];
  v12 = *&a1[OBJC_IVAR____TtC9SeymourUI13WeekdayButton_styleProvider + 40];
  v15 = *&a1[OBJC_IVAR____TtC9SeymourUI13WeekdayButton_styleProvider + 48];
  v14 = *&a1[OBJC_IVAR____TtC9SeymourUI13WeekdayButton_styleProvider + 56];
  v16 = *&a1[OBJC_IVAR____TtC9SeymourUI13WeekdayButton_styleProvider + 64];
  v23 = v8;
  v17 = [a1 traitCollection];
  v18 = v17;
  if (v14 < 0)
  {
    v26 = v10;
    v27 = v11;
    LOBYTE(v28) = v13 & 1;
    v29 = v12;
    LODWORD(v30) = v15;
    BYTE4(v30) = BYTE4(v15) & 1;
    v19 = sub_20B992B08();
  }

  else
  {
    v24[0] = BYTE4(v12) & 1;
    LOBYTE(v25) = v14 & 1;
    v26 = v10;
    v27 = v11;
    v28 = v13;
    LODWORD(v29) = v12;
    BYTE4(v29) = BYTE4(v12) & 1;
    BYTE5(v29) = BYTE5(v12);
    v30 = v15;
    v31 = v14 & 1;
    v32 = v16;
    v19 = sub_20B7C6A74(v17);
  }

  v20 = v19;

  v25 = v20;
  sub_20C132864();
  sub_20B81F814();
  v21 = sub_20C132974();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7664B8);
  sub_20B81F86C();
  sub_20C132A74();
  v21(v24, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v23;
  v22 = sub_20C132974();
  sub_20B81F8C0();
  sub_20C132A74();
  v22(v24, 0);
}

id sub_20BD057FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeekdayButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BD05924(char *a1, __int16 a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F18);
  MEMORY[0x28223BE20](v7 - 8);
  v36 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = sub_20C132924();
  v39 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v42 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v2[OBJC_IVAR____TtC9SeymourUI13WeekdayButton_item];
  v18 = *&v2[OBJC_IVAR____TtC9SeymourUI13WeekdayButton_item];
  if (v18)
  {
    v37 = v15;
    v38 = v14;
    v19 = v11;
    v20 = v2;
    v21 = *(v17 + 4);
    sub_20B51C88C(0, &qword_27C7654B0);
    v22 = v18;
    v23 = a1;
    if ((sub_20C13D5F4() & 1) != 0 && v21 == a2)
    {
      v32 = sub_20C137F94();
      v33 = sub_20C137F94();

      v34 = v32 == v33;
      v3 = v20;
      v11 = v19;
      a1 = v23;
      v15 = v37;
      v14 = v38;
      if (v34)
      {
        return;
      }
    }

    else
    {

      v3 = v2;
      v11 = v19;
      v15 = v37;
      v14 = v38;
    }
  }

  v24 = *v17;
  *v17 = a1;
  *(v17 + 4) = a2;
  v25 = a1;

  if (a2)
  {
    [v3 setSelected_];
  }

  v38 = a1;
  swift_getKeyPath();
  sub_20C132864();
  sub_20B81F814();
  v26 = v25;
  v27 = v42;
  sub_20C132944();
  sub_20C13D884();
  v28 = sub_20C13D874();
  v29 = (*(*(v28 - 8) + 48))(v14, 1, v28);
  v30 = v39;
  if (!v29)
  {
    v31 = v36;
    (*(v39 + 16))(v36, v27, v15);
    (*(v30 + 56))(v31, 0, 1, v15);
    sub_20C13D704();
  }

  sub_20B783944(v14, v11);
  sub_20C13D894();
  (*(v30 + 8))(v27, v15);
  sub_20B520158(v14, &qword_27C764C60);
}

id sub_20BD05F08@<X0>(void *a1@<X8>)
{
  v14 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v2 = *MEMORY[0x277D76918];
  v15 = *MEMORY[0x277D743F8];
  v3 = MEMORY[0x277D84FA0];
  sub_20C13E164();
  v13 = v2;
  sub_20C13CA64();
  v4 = sub_20C13E1B4();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if ((*(v3 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(v3 + 48) + v6);
      if (v8 >= 4)
      {
        break;
      }

      v9 = sub_20C13DFF4();

      if (v9)
      {
        goto LABEL_7;
      }

      v6 = (v6 + 1) & v7;
      if (((*(v3 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v3 = MEMORY[0x277D84FA0];
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20B706478(4, v6, isUniquelyReferenced_nonNull_native);
  }

LABEL_7:
  v11 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  result = [objc_opt_self() whiteColor];
  *a1 = v14;
  a1[1] = 0x3FF0000000000000;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v13;
  a1[5] = 0x90100000000;
  a1[6] = v15;
  a1[7] = 0;
  a1[8] = v3;
  a1[9] = v11;
  a1[10] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RemoteParticipantAvatarFetchError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteParticipantAvatarFetchError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20BD0632C()
{
  result = qword_27C76DF00;
  if (!qword_27C76DF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DF00);
  }

  return result;
}

uint64_t sub_20BD06380(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20BD063A0, 0, 0);
}

uint64_t sub_20BD063A0()
{
  v1 = v0[3];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_20B772B0C;
  v5 = v0[2];

  return MEMORY[0x2821B5668](v5, v2, v3);
}

uint64_t sub_20BD06460(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52A9D4;

  return sub_20BD06380(a1, v1);
}

uint64_t sub_20BD064FC()
{
  v0 = sub_20C139354();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-v5];
  v12[15] = 4;
  sub_20B75B4F8();
  v7 = sub_20C135D14();
  v8 = MEMORY[0x277D54350];
  if ((v7 & 1) == 0)
  {
    v8 = MEMORY[0x277D54358];
  }

  (*(v1 + 104))(v6, *v8, v0);
  (*(v1 + 16))(v4, v6, v0);
  v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v10 = swift_allocObject();
  (*(v1 + 32))(v10 + v9, v4, v0);
  sub_20C137CA4();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_20BD06718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  type metadata accessor for MarketingSubscriptionStatusProvider();
  v7 = swift_allocObject();
  sub_20B52E424(&v9, v7 + 16);
  return v7;
}

char *sub_20BD06820(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20SessionIntensityView_label;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  [v4 setTextColor_];

  v6 = v4;
  LODWORD(v7) = 1148846080;
  [v6 setContentCompressionResistancePriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v6 setContentCompressionResistancePriority:1 forAxis:v8];

  v9 = sub_20C1380F4();
  v10 = sub_20BA6BBC8(v9);
  [v6 setFont_];

  *&v1[v3] = v6;
  *&v1[OBJC_IVAR____TtC9SeymourUI20SessionIntensityView_presenter] = a1;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for SessionIntensityView();

  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  *(a1 + 24) = &off_2822DF568;
  swift_unknownObjectWeakAssign();
  v12 = *&v11[OBJC_IVAR____TtC9SeymourUI20SessionIntensityView_label];
  v13 = v11;
  [v13 addSubview_];

  return v13;
}

id sub_20BD06AD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionIntensityView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20BD06B74()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI20SessionIntensityView_label];
  v2 = sub_20C13C914();
  [v1 setText_];

  [v0 invalidateIntrinsicContentSize];

  return [v0 layoutIfNeeded];
}

void sub_20BD06BF0()
{
  v1 = OBJC_IVAR____TtC9SeymourUI20SessionIntensityView_label;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  [v2 setTextColor_];

  v4 = v2;
  LODWORD(v5) = 1148846080;
  [v4 setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v6];

  v7 = sub_20C1380F4();
  v8 = sub_20BA6BBC8(v7);
  [v4 setFont_];

  *(v0 + v1) = v4;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BD06D20(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C137884();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_20BD06D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C137884();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for WorkoutPlanBannerContent()
{
  result = qword_27C76DF18;
  if (!qword_27C76DF18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BD06E54(uint64_t a1)
{
  result = sub_20C137884();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_20BD06EF8(uint64_t a1)
{
  MEMORY[0x28223BE20](a1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13E164();
  sub_20BD07374(v1, v3);
  MEMORY[0x20F2F58E0](0);
  v4 = sub_20C137884();
  sub_20BD073D8(&qword_27C76DF30, MEMORY[0x277D53738]);
  sub_20C13C7C4();
  (*(*(v4 - 8) + 8))(v3, v4);
  return sub_20C13E1B4();
}

uint64_t sub_20BD07010(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BD07374(v1, v3);
  MEMORY[0x20F2F58E0](0);
  v4 = sub_20C137884();
  sub_20BD073D8(&qword_27C76DF30, MEMORY[0x277D53738]);
  sub_20C13C7C4();
  return (*(*(v4 - 8) + 8))(v3, v4);
}

uint64_t sub_20BD07114(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13E164();
  sub_20BD07374(v1, v3);
  MEMORY[0x20F2F58E0](0);
  v4 = sub_20C137884();
  sub_20BD073D8(&qword_27C76DF30, MEMORY[0x277D53738]);
  sub_20C13C7C4();
  (*(*(v4 - 8) + 8))(v3, v4);
  return sub_20C13E1B4();
}

uint64_t sub_20BD07228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DF38);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v8 = *(v7 + 56);
  sub_20BD07374(a1, &v12 - v5);
  sub_20BD07374(a2, &v6[v8]);
  LOBYTE(a2) = MEMORY[0x20F2EEFC0](v6, &v6[v8]);
  v9 = sub_20C137884();
  v10 = *(*(v9 - 8) + 8);
  v10(&v6[v8], v9);
  v10(v6, v9);
  return a2 & 1;
}

uint64_t sub_20BD07374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanBannerContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BD073D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BD07648(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = result + 32;
    do
    {
      sub_20B51F1D8(v3, v8);
      result = swift_dynamicCast();
      if (result)
      {
        if (!v7)
        {
          v4 = (v1 + OBJC_IVAR____TtC9SeymourUI32RemoveBookmarkShareSheetActivity_workoutIdentifier);
          *v4 = v5;
          v4[1] = v6;
        }

        result = sub_20B624748(v5, v6, v7);
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  return result;
}

id sub_20BD07768()
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v1 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = sub_20C132E94();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_20C138034();
  v15 = *(v14 - 8);
  *&v18 = MEMORY[0x28223BE20](v14).n128_u64[0];
  if (*&v0[OBJC_IVAR____TtC9SeymourUI32RemoveBookmarkShareSheetActivity_workoutIdentifier + 8])
  {
    v51 = v6;
    v49 = *&v0[OBJC_IVAR____TtC9SeymourUI32RemoveBookmarkShareSheetActivity_workoutIdentifier];
    v19 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = v17;
    swift_bridgeObjectRetain_n();
    sub_20C132E84();
    v56 = v19;
    sub_20C138014();
    v58 = v9;
    v20 = *&v0[OBJC_IVAR____TtC9SeymourUI32RemoveBookmarkShareSheetActivity_bookmarkClient + 32];
    v47 = *&v0[OBJC_IVAR____TtC9SeymourUI32RemoveBookmarkShareSheetActivity_bookmarkClient + 24];
    v48 = v20;
    v46 = __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC9SeymourUI32RemoveBookmarkShareSheetActivity_bookmarkClient], v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8);
    v21 = v12;
    v22 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v23 = swift_allocObject();
    v52 = v3;
    v24 = v23;
    *(v23 + 16) = xmmword_20C14F980;
    v25 = *(v15 + 16);
    v26 = v19;
    v27 = v15;
    v28 = v59;
    v25(v23 + v22, v26, v59);
    sub_20BE8BBF4(v24);
    v53 = v0;
    swift_setDeallocating();
    v29 = *(v27 + 8);
    v54 = v27 + 8;
    v55 = v29;
    v29((v24 + v22), v28);
    swift_deallocClassInstance();
    v50 = v21;
    sub_20C13A1F4();

    v30 = &v0[OBJC_IVAR____TtC9SeymourUI32RemoveBookmarkShareSheetActivity_assetClient];
    __swift_project_boxed_opaque_existential_1(v30, *(v30 + 3));
    sub_20C139E04();
    __swift_project_boxed_opaque_existential_1(v30, *(v30 + 3));
    v31 = v51;
    sub_20C139E14();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
    v32 = *(v1 + 72);
    v33 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_20C1517D0;
    v35 = v34 + v33;
    v36 = *(v1 + 16);
    v37 = v21;
    v38 = v57;
    v36(v35, v37, v57);
    v39 = v58;
    v36(v35 + v32, v58, v38);
    v36(v35 + 2 * v32, v31, v38);
    sub_20B5E2E18();
    v40 = sub_20C13D374();
    sub_20C13A7C4();
    v41 = v52;
    sub_20C137C74();

    v42 = sub_20C137CB4();
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    v42(sub_20B52347C, v43);

    v44 = *(v1 + 8);
    v44(v41, v38);
    [v53 activityDidFinish_];
    v44(v31, v38);
    v44(v39, v38);
    v44(v50, v38);
    return v55(v56, v59);
  }

  else
  {

    return [v0 activityDidFinish_];
  }
}

id sub_20BD07D90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoveBookmarkShareSheetActivity();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BD07E48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_20B51F1D8(i, v7);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_3:
    if (!--v1)
    {
      return 0;
    }
  }

  if (v6)
  {
    sub_20B624748(v4, v5, v6);
    goto LABEL_3;
  }

  sub_20B624748(v4, v5, 0);
  return 1;
}

BOOL _sSo9MPAVRouteC9SeymourUIE1loiySbAB_ABtFZ_0(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_20BD6D868(v3);
  v5 = a2;
  v6 = sub_20BD6D868(v5);
  if (v4 != v6)
  {
    return qword_20C1798E0[v4] < qword_20C1798E0[v6];
  }

  v7 = [v3 pickableRouteType] == 0;
  v8 = [v5 pickableRouteType];
  result = v7;
  if (v7 != (v8 != 0))
  {
    v10 = [v3 routeName];
    v11 = sub_20C13C954();
    v13 = v12;

    v14 = [v5 routeName];
    v15 = sub_20C13C954();
    v17 = v16;

    if (v11 == v15 && v13 == v17)
    {

      return 0;
    }

    else
    {
      v18 = sub_20C13DFF4();

      return v18 & 1;
    }
  }

  return result;
}

unint64_t sub_20BD08070()
{
  result = qword_27C76DF58;
  if (!qword_27C76DF58)
  {
    sub_20B915C3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DF58);
  }

  return result;
}

char *sub_20BD080C8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_expandableTextView;
  type metadata accessor for ExpandableTextView();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_layout] = 0x4024000000000000;
  v13 = OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_stackView;
  v14 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setAxis_];
  [v14 setDistribution_];
  *&v4[v13] = v14;
  v15 = OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_titleLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setAdjustsFontForContentSizeCategory_];
  LODWORD(v17) = 1148846080;
  [v16 setContentCompressionResistancePriority:1 forAxis:v17];

  v18 = *MEMORY[0x277D743F8];
  v19 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v21 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v22 = swift_initStackObject();
  v23 = MEMORY[0x277D74430];
  *(v22 + 16) = xmmword_20C14F980;
  v24 = *v23;
  *(v22 + 32) = *v23;
  *(v22 + 40) = v18;
  v25 = v21;
  v26 = v24;
  v27 = sub_20B6B134C(v22);
  swift_setDeallocating();
  sub_20B520158(v22 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v27;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v28 = sub_20C13C744();

  v29 = [v19 fontDescriptorByAddingAttributes_];

  v30 = [objc_opt_self() fontWithDescriptor:v29 size:0.0];
  [v16 setFont_];

  v31 = [objc_opt_self() whiteColor];
  [v16 setTextColor_];

  [v16 setLineBreakMode_];
  [v16 setNumberOfLines_];
  *&v4[v15] = v16;
  v64.receiver = v4;
  v64.super_class = type metadata accessor for ExpandingDetailDescriptionCell();
  v32 = objc_msgSendSuper2(&v64, sel_initWithFrame_, a1, a2, a3, a4);
  v33 = OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_stackView;
  v34 = *&v32[OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_stackView];
  v35 = v32;
  [v34 setSpacing_];
  v36 = v35;
  v37 = [v36 contentView];
  [v37 addSubview_];

  [*&v32[v33] addArrangedSubview_];
  v38 = OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_expandableTextView;
  v39 = *&v36[OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_expandableTextView];
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = v39;

  v42 = &v41[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_onMoreTapped];
  v43 = *&v41[OBJC_IVAR____TtC9SeymourUI18ExpandableTextView_onMoreTapped];
  *v42 = sub_20BD096F0;
  v42[1] = v40;

  sub_20B583ECC(v43);

  [*&v32[v33] addArrangedSubview_];
  v44 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_20C14FE90;
  v46 = [*&v32[v33] leadingAnchor];
  v47 = [v36 contentView];
  v48 = [v47 leadingAnchor];

  v49 = [v46 constraintEqualToAnchor_];
  *(v45 + 32) = v49;
  v50 = [*&v32[v33] trailingAnchor];
  v51 = [v36 contentView];
  v52 = [v51 trailingAnchor];

  v53 = [v50 constraintEqualToAnchor_];
  *(v45 + 40) = v53;
  v54 = [*&v32[v33] topAnchor];
  v55 = [v36 contentView];
  v56 = [v55 topAnchor];

  v57 = [v54 constraintEqualToAnchor_];
  *(v45 + 48) = v57;
  v58 = [*&v32[v33] bottomAnchor];
  v59 = [v36 contentView];

  v60 = [v59 bottomAnchor];
  v61 = [v58 constraintEqualToAnchor_];

  *(v45 + 56) = v61;
  sub_20B5E29D0();
  v62 = sub_20C13CC54();

  [v44 activateConstraints_];

  return v36;
}

void sub_20BD08890()
{
  v0 = sub_20C133244();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v11);
      *(&v16 - 4) = 0;
      *(&v16 - 24) = 1;
      *(&v16 - 2) = v6;
      *(&v16 - 1) = v10;
      v12 = *(v10 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
      v13 = v8;
      v14 = [v12 indexPathForCell_];
      if (v14)
      {
        v15 = v14;
        sub_20C1331E4();

        sub_20C0C1CDC(v3, sub_20B5E27BC);
        (*(v1 + 8))(v3, v0);
      }

      swift_unknownObjectRelease();

      sub_20B5E2760(v6);
    }

    else
    {
    }
  }
}

id sub_20BD08CB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpandingDetailDescriptionCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ExpandingDetailDescriptionCell()
{
  result = qword_281100A98;
  if (!qword_281100A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD08DCC()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BD08E98(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BD08EE4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BD08F3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20BD08FA0(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1380F4();
  v7 = sub_20C138104();
  v8 = v7 != sub_20C138104();
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x12)
  {
    v30 = 4 * v8;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v12 = *(v9 + 32);
    LODWORD(v31) = *(v9 + 33);
    v13 = *(v9 + 40);
    v14 = *(v9 + 48);
    v15 = *(v9 + 64);
    v16 = *&v1[OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_titleLabel];

    [v16 setHidden_];
    if (v15)
    {
      v17 = sub_20C13C914();
    }

    else
    {
      v17 = 0;
    }

    [v16 setText_];

    sub_20B7D4748(v10, v11, v12);
    sub_20B63C1E4(&v33);
    v32 = v12;
    v36[0] = v10;
    v36[1] = v11;
    v37 = v12;
    v38 = v33;
    v39 = MEMORY[0x277D84F90];
    v40 = v34;
    v41 = v13;
    v42 = v14;
    v43 = v30;
    v44 = v35;
    sub_20B9E67B4(v36);
    sub_20B9E6914(v31);
    return sub_20B7D4758(v36);
  }

  else
  {
    sub_20C13B534();

    v18 = v1;
    v19 = sub_20C13BB74();
    v20 = sub_20C13D1D4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36[0] = v31;
      *v21 = 138543618;
      *(v21 + 4) = v18;
      *v22 = v18;
      *(v21 + 12) = 2082;
      v33 = a1;
      v23 = sub_20B5F66D0();
      v24 = v18;
      v25 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v23);
      v27 = sub_20B51E694(v25, v26, v36);

      *(v21 + 14) = v27;
      _os_log_impl(&dword_20B517000, v19, v20, "Attempted to configure %{public}@ with item: %{public}s", v21, 0x16u);
      sub_20B520158(v22, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v22, -1, -1);
      v28 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x20F2F6A40](v28, -1, -1);
      MEMORY[0x20F2F6A40](v21, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_20BD092F8()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_expandableTextView;
  type metadata accessor for ExpandableTextView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_layout) = 0x4024000000000000;
  v5 = OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_stackView;
  v6 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setAxis_];
  [v6 setDistribution_];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI30ExpandingDetailDescriptionCell_titleLabel;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAdjustsFontForContentSizeCategory_];
  LODWORD(v9) = 1148846080;
  [v8 setContentCompressionResistancePriority:1 forAxis:v9];

  v10 = *MEMORY[0x277D743F8];
  v11 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v13 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_20C14F980;
  v15 = *MEMORY[0x277D74430];
  *(v14 + 32) = *MEMORY[0x277D74430];
  *(v14 + 40) = v10;
  v16 = v13;
  v17 = v15;
  v18 = sub_20B6B134C(v14);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v18;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v19 = sub_20C13C744();

  v20 = [v11 fontDescriptorByAddingAttributes_];

  v21 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];
  [v8 setFont_];

  v22 = [objc_opt_self() whiteColor];
  [v8 setTextColor_];

  [v8 setLineBreakMode_];
  [v8 setNumberOfLines_];
  *(v0 + v7) = v8;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BD096F8(unsigned __int8 a1)
{
  v1 = a1;
  v2 = 0xE400000000000000;
  v3 = 2003790931;
  v4 = 0xE400000000000000;
  v5 = 1953718598;
  v6 = 0xE600000000000000;
  v7 = 0x726574736146;
  if (a1 != 3)
  {
    v7 = 0x74736574736146;
    v6 = 0xE700000000000000;
  }

  if (a1 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (a1)
  {
    v3 = 0x647261646E617453;
    v2 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (v1 <= 1)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x20F2F4230](v8, v9);

  MEMORY[0x20F2F4230](10272, 0xE200000000000000);
  sub_20C13CF44();
  return 0;
}

uint64_t sub_20BD09848()
{
  v0 = sub_20C132654();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767EA8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  sub_20C132684();
  v13 = sub_20C132704();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v6, 1, v13);
  v28 = v12;
  v29 = v10;
  if (v15 == 1)
  {
    sub_20B520158(v6, &qword_27C7665D8);
  }

  else
  {
    v16 = sub_20C132664();
    result = (*(v14 + 8))(v6, v13);
    if (v16)
    {
      v18 = *(v16 + 16);
      if (v18)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  v16 = MEMORY[0x277D84F90];
  v18 = *(MEMORY[0x277D84F90] + 16);
  if (v18)
  {
LABEL_7:
    v19 = 0;
    while (v19 < *(v16 + 16))
    {
      (*(v1 + 16))(v3, v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19, v0);
      if (sub_20C132634() == 25705 && v20 == 0xE200000000000000)
      {

LABEL_15:

        v24 = v28;
        (*(v1 + 32))(v28, v3, v0);
        v22 = 0;
        v23 = v29;
        goto LABEL_16;
      }

      v21 = sub_20C13DFF4();

      if (v21)
      {
        goto LABEL_15;
      }

      ++v19;
      result = (*(v1 + 8))(v3, v0);
      if (v18 == v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    return result;
  }

LABEL_13:

  v22 = 1;
  v24 = v28;
  v23 = v29;
LABEL_16:
  (*(v1 + 56))(v24, v22, 1, v0);
  sub_20BD09F74(v24, v23);
  if ((*(v1 + 48))(v23, 1, v0) == 1)
  {
    sub_20B520158(v24, &qword_27C767EA8);
    sub_20B520158(v23, &qword_27C767EA8);
  }

  else
  {
    v25 = sub_20C132644();
    v27 = v26;
    sub_20B520158(v24, &qword_27C767EA8);
    (*(v1 + 8))(v23, v0);
    if (v27)
    {
      return v25;
    }
  }

  return 0;
}

uint64_t sub_20BD09C88()
{
  v0 = sub_20C1325D4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v28 - v5;
  v7 = sub_20C132C14();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132B74();
  v11 = sub_20C132B54();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  v28[0] = v11;
  v28[1] = v13;
  sub_20C1325A4();
  sub_20C1325C4();
  v14 = *(v1 + 8);
  v14(v6, v0);
  sub_20B5F6EB0();
  v15 = sub_20C13D9A4();
  v14(v4, v0);

  v17 = 0;
  v18 = *(v15 + 16);
  v19 = MEMORY[0x277D84F90];
LABEL_2:
  v20 = (v15 + 40 + 16 * v17);
  while (v18 != v17)
  {
    if (v17 >= *(v15 + 16))
    {
      __break(1u);
      return result;
    }

    ++v17;
    v22 = *(v20 - 1);
    v21 = *v20;
    v20 += 2;
    v23 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v23 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v28[0] = v19;
      if ((result & 1) == 0)
      {
        result = sub_20B526D44(0, v19[2] + 1, 1);
        v19 = v28[0];
      }

      v25 = v19[2];
      v24 = v19[3];
      if (v25 >= v24 >> 1)
      {
        result = sub_20B526D44((v24 > 1), v25 + 1, 1);
        v19 = v28[0];
      }

      v19[2] = v25 + 1;
      v26 = &v19[2 * v25];
      v26[4] = v22;
      v26[5] = v21;
      goto LABEL_2;
    }
  }

  if (v19[2])
  {
    v27 = v19[4];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

uint64_t sub_20BD09F74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767EA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for DisplayPreferencesItemViewModel.Accessory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for DisplayPreferencesItemViewModel.Accessory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20BD0A184()
{
  result = qword_27C76DF68;
  if (!qword_27C76DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DF68);
  }

  return result;
}

uint64_t sub_20BD0A1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v5 = sub_20C134834();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = (v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_20C1347C4();
  v8 = *(v7 + 16);
  v46 = a1;
  if (v8)
  {
    v9 = sub_20BEDEC40(v8, 0);
    v10 = *(sub_20C137BA4() - 8);
    v11 = sub_20BEE29D4(&v47, &v9[(*(v10 + 80) + 32) & ~*(v10 + 80)], v8, v7);

    sub_20B583EDC();
    if (v11 != v8)
    {
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v47 = v9;
  v8 = 0;
  sub_20BD0A900(&v47);

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DF70);
  v13 = sub_20BD0BD18();
  v14 = sub_20C13CBB4();

  v38[3] = sub_20B7175C0(v14);

  v15 = sub_20C1347A4();
  v16 = *(v15 + 16);
  v44 = v12;
  v45 = a2;
  v43 = v13;
  if (v16)
  {
    v17 = sub_20BEDEC40(v16, 0);
    v18 = *(sub_20C137BA4() - 8);
    v19 = sub_20BEE29D4(&v47, &v17[(*(v18 + 80) + 32) & ~*(v18 + 80)], v16, v15);

    sub_20B583EDC();
    if (v19 == v16)
    {
      a2 = v45;
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_9:
  v47 = v17;
  sub_20BD0A900(&v47);

  v20 = sub_20C13CBB4();

  v38[2] = sub_20B7175C0(v20);

  v21 = sub_20C1347B4();
  v22 = v21;
  v23 = *(v21 + 16);
  if (!v23)
  {
    v24 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v24 = sub_20BEDEC40(*(v21 + 16), 0);
  v25 = *(sub_20C137BA4() - 8);
  v26 = sub_20BEE29D4(&v47, &v24[(*(v25 + 80) + 32) & ~*(v25 + 80)], v23, v22);

  sub_20B583EDC();
  if (v26 != v23)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  a2 = v45;
LABEL_13:
  v47 = v24;
  sub_20BD0A900(&v47);

  v27 = sub_20C13CBB4();

  v28 = sub_20B7175C0(v27);

  v29 = sub_20C1347D4();
  v30 = *(v29 + 16);
  if (!v30)
  {
    v31 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v38[1] = v28;
  v31 = sub_20BEDEC40(v30, 0);
  v32 = *(sub_20C137BA4() - 8);
  v33 = sub_20BEE29D4(&v47, &v31[(*(v32 + 80) + 32) & ~*(v32 + 80)], v30, v29);

  sub_20B583EDC();
  if (v33 == v30)
  {
    a2 = v45;
LABEL_17:
    v47 = v31;
    sub_20BD0A900(&v47);

    v34 = sub_20C13CBB4();

    sub_20B7175C0(v34);

    sub_20C134814();
    sub_20C1347F4();
    v36 = v39;
    v35 = v40;
    *v39 = a2;
    (*(v35 + 104))(v36, *MEMORY[0x277D50AA8], v41);
    return sub_20C134804();
  }

LABEL_21:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_20BD0A7B0()
{
  sub_20C13DC94();
  MEMORY[0x20F2F4230](0xD00000000000001ALL, 0x800000020C1B0FF0);
  sub_20C13CEE4();
  MEMORY[0x20F2F4230](0x4D7265776F6C202CLL, 0xEE003D656C646469);
  sub_20C13CEE4();
  MEMORY[0x20F2F4230](0x4D7265707075202CLL, 0xEE003D656C646469);
  sub_20C13CEE4();
  MEMORY[0x20F2F4230](0x3D7265707075202CLL, 0xE800000000000000);
  sub_20C13CEE4();
  return 0;
}

void sub_20BD0A900(void **a1)
{
  v2 = *(sub_20C137BA4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A1000(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BD0A9A8(v5);
  *a1 = v3;
}

void sub_20BD0A9A8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C137BA4();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C137BA4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20BD0AD7C(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20BD0AAD4(0, v2, 1, a1);
  }
}

void sub_20BD0AAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C137BA4();
  MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v33 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = (v16 + v19 * (a3 - 1));
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      (v45)(v47, v22, v8, v14);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = sub_20C137B84();
      v28 = sub_20C137B84();
      v29 = *v44;
      (*v44)(v26, v8);
      v29(v24, v8);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = &v38[v34];
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20BD0AD7C(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_20C137BA4();
  MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v115 - v12;
  MEMORY[0x28223BE20](v13);
  v138 = &v115 - v14;
  v17 = MEMORY[0x28223BE20](v15);
  v137 = &v115 - v18;
  v19 = a3[1];
  v127 = v16;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v21 = sub_20B6A07A0(v21);
    }

    v140 = v21;
    v111 = *(v21 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v21[16 * v111];
        v113 = *&v21[16 * v111 + 24];
        sub_20BD0B760(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v111 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v21[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v21;
        sub_20B6A0714(v111 - 1);
        v21 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v20 = 0;
  v135 = (v16 + 8);
  v136 = v16 + 16;
  v134 = (v16 + 32);
  v21 = MEMORY[0x277D84F90];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v129 = v19;
      v117 = v6;
      v22 = *a3;
      v119 = v20;
      v23 = v127[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v133 = v22;
      v25 = v9;
      v26 = v127[2];
      v27 = v137;
      v26(v137, v5, v25, v17);
      v28 = &v24[v23 * v20];
      v29 = v138;
      v125 = v26;
      (v26)(v138, v28, v25);
      v130 = sub_20C137B84();
      v126 = sub_20C137B84();
      v30 = v127[1];
      v30(v29, v25);
      v124 = v30;
      v30(v27, v25);
      v31 = v119 + 2;
      v131 = v23;
      v32 = &v133[v23 * (v119 + 2)];
      while (1)
      {
        v33 = v129;
        if (v129 == v31)
        {
          break;
        }

        v34 = v125;
        LODWORD(v133) = v130 < v126;
        v35 = v137;
        v36 = v139;
        (v125)(v137, v32, v139);
        v37 = v138;
        v34(v138, v5, v36);
        v38 = sub_20C137B84();
        v39 = sub_20C137B84();
        v40 = v124;
        (v124)(v37, v36);
        v40(v35, v36);
        v21 = v128;
        ++v31;
        v32 += v131;
        v5 += v131;
        if (((v133 ^ (v38 >= v39)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v9 = v139;
      if (v130 < v126)
      {
        if (v33 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v33)
        {
          v41 = v131 * (v33 - 1);
          v5 = v33 * v131;
          v129 = v33;
          v42 = v33;
          v43 = v119;
          v44 = v119 * v131;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v134;
              (*v134)(v122, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v46(&v45[v41], v122, v9);
              a3 = v120;
              v21 = v128;
            }

            ++v43;
            v41 -= v131;
            v5 -= v131;
            v44 += v131;
          }

          while (v43 < v42);
          v6 = v117;
          v20 = v119;
          v33 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v116)
      {
        if (__OFADD__(v20, v116))
        {
          goto LABEL_124;
        }

        if (v20 + v116 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v116;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_20BC05740(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v21 = sub_20BC05740((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_20BD0B760(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v140 = v21;
        sub_20B6A0714(v5);
        v21 = v140;
        v50 = *(v140 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v94 = *a3;
  v95 = v127[9];
  v133 = v127[2];
  v96 = &v94[v95 * (v33 - 1)];
  v130 = -v95;
  v131 = v94;
  v119 = v20;
  v97 = (v20 - v33);
  v121 = v95;
  v98 = &v94[v33 * v95];
  v123 = v5;
LABEL_85:
  v129 = v33;
  v124 = v98;
  v125 = v97;
  v126 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v137;
    v101 = v133;
    (v133)(v137, v98, v9);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = sub_20C137B84();
    v104 = sub_20C137B84();
    v105 = *v135;
    v106 = v102;
    v9 = v139;
    (*v135)(v106, v139);
    v105(v100, v9);
    if (v103 >= v104)
    {
LABEL_84:
      v33 = v129 + 1;
      v96 = v126 + v121;
      v97 = v125 - 1;
      v5 = v123;
      v98 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v21 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v107 = *v134;
    v108 = v132;
    (*v134)(v132, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v130;
    v98 += v130;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_20BD0B760(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = sub_20C137BA4();
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v64 = a1;
  v63 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v51 = a4;
      v52 = (v8 + 16);
      v50 = (v8 + 8);
      v33 = v31;
      v60 = a1;
      v53 = v32;
      do
      {
        v48 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v36 = a3;
        v54 = v34;
        v55 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v64 = v34;
            v62 = v48;
            goto LABEL_58;
          }

          v37 = v36;
          v49 = v31;
          v59 = v36 + v32;
          v38 = v33 + v32;
          v39 = *v52;
          v40 = v57;
          v41 = v33 + v32;
          v42 = v33;
          v43 = v61;
          (*v52)(v57, v41, v61);
          v44 = v58;
          (v39)(v58, v35, v43);
          v56 = sub_20C137B84();
          v45 = sub_20C137B84();
          v46 = *v50;
          (*v50)(v44, v43);
          v46(v40, v43);
          if (v56 < v45)
          {
            break;
          }

          v31 = v38;
          v36 = v59;
          if (v37 < v42 || v59 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v55;
            a1 = v60;
          }

          else
          {
            v35 = v55;
            a1 = v60;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v38;
          v32 = v53;
          v34 = v54;
          if (v38 <= v51)
          {
            a2 = v54;
            goto LABEL_57;
          }
        }

        v33 = v42;
        if (v37 < v54 || v59 >= v54)
        {
          a3 = v59;
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v31 = v49;
          v32 = v53;
        }

        else
        {
          a3 = v59;
          a2 = v55;
          a1 = v60;
          v31 = v49;
          v32 = v53;
          if (v37 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v51);
    }

LABEL_57:
    v64 = a2;
    v62 = v31;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v16;
    v62 = a4 + v16;
    v59 = a3;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v54 = v13;
      v55 = v8 + 16;
      v52 = (v8 + 8);
      v53 = v19;
      do
      {
        v60 = a1;
        v20 = v57;
        v21 = v61;
        v22 = v53;
        v53(v57, a2, v61);
        v23 = v58;
        v22(v58, a4, v21);
        v24 = a2;
        v25 = sub_20C137B84();
        v26 = sub_20C137B84();
        v27 = *v52;
        (*v52)(v23, v21);
        v27(v20, v21);
        if (v25 >= v26)
        {
          v28 = v54;
          v30 = a4 + v54;
          v29 = v60;
          if (v60 < a4 || v60 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (v60 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v63 = v30;
          a4 += v28;
        }

        else
        {
          v28 = v54;
          a2 = v24 + v54;
          v29 = v60;
          if (v60 < v24 || v60 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v29 + v28;
        v64 = a1;
      }

      while (a4 < v56 && a2 < v59);
    }
  }

LABEL_58:
  sub_20B6A0ABC(&v64, &v63, &v62);
}

unint64_t sub_20BD0BD18()
{
  result = qword_27C76DF78;
  if (!qword_27C76DF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76DF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76DF78);
  }

  return result;
}

double sub_20BD0BD7C(uint64_t a1)
{
  result = 0.05;
  if (qword_28228DC70 == a1)
  {
    return 0.0333333333;
  }

  return result;
}

uint64_t sub_20BD0BDEC(double a1, double a2)
{
  v3 = sub_20C137BA4();
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  result = MEMORY[0x277D84FA0];
  v16 = MEMORY[0x277D84FA0];
  if (a2 > 0.0)
  {
    v11 = 0;
    v12 = (v7 + 8);
    v13 = 0.0;
    while (!__OFADD__(v11, 1))
    {
      if (v13 <= -9.22337204e18)
      {
        goto LABEL_10;
      }

      if (v13 >= 9.22337204e18)
      {
        goto LABEL_11;
      }

      v14 = (v11 + 1);
      sub_20C137B74();
      sub_20B702CD8(v9, v5);
      result = (*v12)(v9, v3);
      ++v11;
      v13 = v14;
      if (v14 >= a2)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_20BD0BF94(uint64_t a1, int a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BD0C3AC(a2);
  }

  return result;
}

uint64_t sub_20BD0BFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  v8 = sub_20C134EC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EquipmentFilterUpdated();
  MEMORY[0x28223BE20](v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_coordinator);

    v24[1] = *(v16 + 24);
    swift_unknownObjectRetain();

    v17 = *(v9 + 16);
    v25 = v8;
    v17(v11, a3, v8);
    sub_20B52F9E8(a1, v7, &qword_27C7627E8);
    v18 = sub_20C1382B4();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v7, 1, v18) == 1)
    {
      sub_20B520158(v7, &qword_27C7627E8);
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = sub_20C138294();
      v21 = v22;
      (*(v19 + 8))(v7, v18);
    }

    swift_getObjectType();
    (*(v9 + 32))(v14, v11, v25);
    v23 = &v14[*(v12 + 20)];
    *v23 = v20;
    v23[1] = v21;
    sub_20BD0D2B4(&qword_27C7667B0, type metadata accessor for EquipmentFilterUpdated);
    sub_20C13A764();
    swift_unknownObjectRelease();
    return sub_20BD0D258(v14);
  }

  return result;
}

uint64_t sub_20BD0C324(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_20BF9FDF0(v3, a1, Strong);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

char *sub_20BD0C3AC(int a1)
{
  v85 = sub_20C13BB84();
  v3 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C554();
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x28223BE20](v6);
  v80 = (&v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_20C132EE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0);
  v83 = *(v12 - 8);
  v84 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v69 - v13;
  if ((sub_20BF7A8FC(3, v1 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_rootModality) & 1) == 0)
  {
    sub_20C13B534();
    v24 = sub_20C13BB74();
    v25 = sub_20C13D1F4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v101[0] = v27;
      *v26 = 136446210;
      v28 = sub_20C1368A4();
      v30 = sub_20B51E694(v28, v29, v101);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_20B517000, v24, v25, "Unsupported property type: %{public}s. Aborting row creation.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x20F2F6A40](v27, -1, -1);
      MEMORY[0x20F2F6A40](v26, -1, -1);
    }

    return (*(v3 + 8))(v5, v85);
  }

  v71 = a1;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_coordinator);
  v16 = *(*(v15 + *(*v15 + 224)) + 16);
  v85 = v1;
  v17 = (v1 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v18 = sub_20C138D34();
  v20 = sub_20BC74CA0(v18, v19, 0x6C6C6562626D7564, 0xED00006C6C69662ELL, v15, v16);

  if ((*(v15 + *(*v15 + 200)) & 8) != 0)
  {
    v21 = 0;
    v23 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v21 = sub_20C138D34();
    v23 = v22;
  }

  v91 = 0uLL;
  LOBYTE(v92) = 1;
  *(&v92 + 1) = 0;
  *&v93 = 0;
  WORD4(v93) = 128;
  v94 = 0uLL;
  v95 = xmmword_20C179AD0;
  *&v96 = v21;
  *(&v96 + 1) = v23;
  LOBYTE(v97) = 0;
  *(&v97 + 1) = v20;
  v98 = MEMORY[0x277D84F90];
  *&v99 = 0;
  *(&v99 + 1) = v21;
  *v100 = v23;
  *&v100[8] = xmmword_20C150190;
  nullsub_1(&v91);
  v32 = v85 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row;
  v33 = *(v85 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 144);
  v101[8] = *(v85 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 128);
  v101[9] = v33;
  v102 = *(v85 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 160);
  v34 = *(v85 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 80);
  v101[4] = *(v85 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 64);
  v101[5] = v34;
  v35 = *(v85 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 112);
  v101[6] = *(v85 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 96);
  v101[7] = v35;
  v36 = *(v85 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 16);
  v101[0] = *(v85 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row);
  v101[1] = v36;
  v37 = *(v85 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 48);
  v101[2] = *(v85 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 32);
  v101[3] = v37;
  v38 = *v100;
  *(v32 + 128) = v99;
  *(v32 + 144) = v38;
  *(v32 + 160) = *&v100[16];
  v39 = v96;
  *(v32 + 64) = v95;
  *(v32 + 80) = v39;
  v40 = v98;
  *(v32 + 96) = v97;
  *(v32 + 112) = v40;
  v41 = v92;
  *v32 = v91;
  *(v32 + 16) = v41;
  v42 = v94;
  *(v32 + 32) = v93;
  *(v32 + 48) = v42;

  sub_20B520158(v101, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (*&result[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
    return swift_unknownObjectRelease();
  }

  v70 = result;
  if (![*&result[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource])
  {
LABEL_27:
    sub_20C0C2D50(0);
    return swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v43 = v84;
  v44 = sub_20C13BE74();
  result = (*(v83 + 8))(v14, v43);
  v78 = *(v44 + 16);
  v79 = v44;
  if (!v78)
  {
LABEL_25:

    goto LABEL_27;
  }

  v45 = 0;
  v76 = v79 + 32;
  v77 = OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_identifier;
  v74 = (v9 + 8);
  v75 = (v9 + 16);
  while (2)
  {
    if (v45 < *(v79 + 16))
    {
      v46 = (v76 + 24 * v45);
      v47 = v46[1];
      v73 = *v46;
      v48 = v46[2];
      v83 = v45 + 1;
      (*v75)(v11, v85 + v77, v8);
      v49 = *(v47 + 16);

      v84 = v48;

      v50 = 0;
      do
      {
        if (v49 == v50)
        {
          (*v74)(v11, v8);
          goto LABEL_15;
        }

        v51 = v50 + 1;
        sub_20BD0D2B4(&qword_27C7641A0, MEMORY[0x277CC95F0]);
        v52 = sub_20C13C894();
        v50 = v51;
      }

      while ((v52 & 1) == 0);
      (*v74)(v11, v8);
      v53 = *(v32 + 128);
      v54 = *(v32 + 144);
      v55 = *(v32 + 96);
      v87[7] = *(v32 + 112);
      v88 = v53;
      v89 = v54;
      v90 = *(v32 + 160);
      v56 = *(v32 + 80);
      v87[4] = *(v32 + 64);
      v87[5] = v56;
      v87[6] = v55;
      v57 = *(v32 + 16);
      v87[0] = *v32;
      v87[1] = v57;
      v58 = *(v32 + 48);
      v87[2] = *(v32 + 32);
      v87[3] = v58;
      v59 = sub_20B5EAF8C(v87);
      if (v59 == 1)
      {
        v60 = 0;
        v61 = 0;
      }

      else
      {
        v60 = *(&v88 + 1);
        v61 = v89;
      }

      v62 = v84;
      v72 = &v69;
      v86[0] = v60;
      v86[1] = v61;
      MEMORY[0x28223BE20](v59);
      *(&v69 - 2) = v86;
      v63 = sub_20B796758(sub_20B5EAFA4, (&v69 - 4), v62);

      if ((v63 & 1) == 0)
      {
LABEL_15:

        v45 = v83;
        if (v83 == v78)
        {
          goto LABEL_25;
        }

        continue;
      }

      sub_20B5E2E18();
      v64 = sub_20C13D374();
      v66 = v80;
      v65 = v81;
      *v80 = v64;
      v67 = v82;
      (*(v65 + 104))(v66, *MEMORY[0x277D85200], v82);
      v68 = sub_20C13C584();
      result = (*(v65 + 8))(v66, v67);
      if ((v68 & 1) == 0)
      {
        goto LABEL_36;
      }

      if ((v71 & 0x80) != 0)
      {
        sub_20C10CA0C(v85, v73, v71 & 1, v70);
      }

      else
      {
        sub_20B61F68C(v73, v47, v84, v85, v71 & 1, v70);
      }

      return swift_unknownObjectRelease();
    }

    break;
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_20BD0CD44()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_rootModality, &unk_27C7710A0);
  v3 = OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_filterRoot;
  v4 = sub_20C134EC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 128);
  v11[9] = v5;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 160);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 64);
  v11[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 96);
  v11[7] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row);
  v11[1] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 32);
  v11[3] = v9;
  sub_20B520158(v11, &qword_27C762340);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_storefrontLocalizer);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EquipmentFilterOptionsShelf()
{
  result = qword_27C76DF80;
  if (!qword_27C76DF80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BD0CF0C()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20B723EF4();
    if (v1 <= 0x3F)
    {
      sub_20C134EC4();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_20BD0D03C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BD0D0B4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI27EquipmentFilterOptionsShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BD0D258(uint64_t a1)
{
  v2 = type metadata accessor for EquipmentFilterUpdated();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BD0D2B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BD0D2FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = sub_20BD12260(v2);
  v5 = sub_20C13DAA4();
  v6 = sub_20BD12128(v5, *(a2 + 36), 0, v4, a2);
  v8 = v7;
  v10 = v9;
  v11 = sub_20BB61B30(v6, v7, v9 & 1, a2);

  sub_20B526EA4(v6, v8, v10 & 1);
  return v11;
}

uint64_t WorkoutPlanArtworkV2.__allocating_init(identifier:schedule:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_multiplier) = 0;
  *(v4 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_shouldOffset) = 0;
  v5 = OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_identifier;
  v6 = sub_20C132EE4();
  (*(*(v6 - 8) + 32))(v4 + v5, a1, v6);
  v7 = OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_schedule;
  v8 = sub_20C1357B4();
  (*(*(v8 - 8) + 32))(v4 + v7, a2, v8);
  return v4;
}

uint64_t WorkoutPlanArtworkV2.init(identifier:schedule:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_multiplier) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_shouldOffset) = 0;
  v5 = OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_identifier;
  v6 = sub_20C132EE4();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  v7 = OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_schedule;
  v8 = sub_20C1357B4();
  (*(*(v8 - 8) + 32))(v2 + v7, a2, v8);
  return v2;
}

uint64_t sub_20BD0D554(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E108);
  if (a1)
  {
    if (a1 == 1)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20C1517D0;
      if (qword_27C760BB0 != -1)
      {
        swift_once();
      }

      *(inited + 32) = qword_27C79C268;
      v3 = qword_27C760BB8;

      if (v3 != -1)
      {
        swift_once();
      }

      *(inited + 40) = qword_27C79C270;
      v4 = qword_27C760BC0;

      if (v4 != -1)
      {
        swift_once();
      }

      v5 = &qword_27C79C278;
    }

    else
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20C1517D0;
      if (qword_27C760B70 != -1)
      {
        swift_once();
      }

      *(inited + 32) = qword_27C79C228;
      v8 = qword_27C760B78;

      if (v8 != -1)
      {
        swift_once();
      }

      *(inited + 40) = qword_27C79C230;
      v9 = qword_27C760B80;

      if (v9 != -1)
      {
        swift_once();
      }

      v5 = &qword_27C79C238;
    }
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C1517D0;
    if (qword_27C760B90 != -1)
    {
      swift_once();
    }

    *(inited + 32) = qword_27C79C248;
    v6 = qword_27C760B98;

    if (v6 != -1)
    {
      swift_once();
    }

    *(inited + 40) = qword_27C79C250;
    v7 = qword_27C760BA0;

    if (v7 != -1)
    {
      swift_once();
    }

    v5 = &qword_27C79C258;
  }

  *(inited + 48) = *v5;

  v10 = sub_20BE8BF50(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v10;
}

__n128 sub_20BD0D864@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DF90);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20C1517D0;
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_27C760BC0 != -1)
      {
        swift_once();
      }

      *(v4 + 32) = sub_20C13C434();
      *(v4 + 40) = v5;
      if (qword_27C760BB8 != -1)
      {
        swift_once();
      }

      *(v4 + 48) = sub_20C13C434();
      *(v4 + 56) = v6;
      if (qword_27C760BC8 == -1)
      {
        goto LABEL_20;
      }

LABEL_21:
      swift_once();
      goto LABEL_20;
    }

    if (qword_27C760B80 != -1)
    {
      swift_once();
    }

    *(v4 + 32) = sub_20C13C434();
    *(v4 + 40) = v9;
    if (qword_27C760B78 != -1)
    {
      swift_once();
    }

    *(v4 + 48) = sub_20C13C434();
    *(v4 + 56) = v10;
    if (qword_27C760B88 != -1)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (qword_27C760BA8 != -1)
    {
      swift_once();
    }

    *(v4 + 32) = sub_20C13C434();
    *(v4 + 40) = v7;
    if (qword_27C760B98 != -1)
    {
      swift_once();
    }

    *(v4 + 48) = sub_20C13C434();
    *(v4 + 56) = v8;
    if (qword_27C760B70 != -1)
    {
      goto LABEL_21;
    }
  }

LABEL_20:

  *(v4 + 64) = sub_20C13C434();
  *(v4 + 72) = v11;
  sub_20C13C444();
  sub_20C13C204();
  result = v14;
  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 24) = v15;
  return result;
}

double static LinearGradient.blueGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DF90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C1517D0;
  if (qword_27C760BA8 != -1)
  {
    swift_once();
  }

  *(v2 + 32) = sub_20C13C434();
  *(v2 + 40) = v3;
  if (qword_27C760B98 != -1)
  {
    swift_once();
  }

  *(v2 + 48) = sub_20C13C434();
  *(v2 + 56) = v4;
  if (qword_27C760B70 != -1)
  {
    swift_once();
  }

  *(v2 + 64) = sub_20C13C434();
  *(v2 + 72) = v5;
  sub_20C13C444();
  sub_20C13C204();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

double static LinearGradient.goldGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DF90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C1517D0;
  if (qword_27C760BC0 != -1)
  {
    swift_once();
  }

  *(v2 + 32) = sub_20C13C434();
  *(v2 + 40) = v3;
  if (qword_27C760BB8 != -1)
  {
    swift_once();
  }

  *(v2 + 48) = sub_20C13C434();
  *(v2 + 56) = v4;
  if (qword_27C760BC8 != -1)
  {
    swift_once();
  }

  *(v2 + 64) = sub_20C13C434();
  *(v2 + 72) = v5;
  sub_20C13C444();
  sub_20C13C204();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

double static LinearGradient.pinkGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DF90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C1517D0;
  if (qword_27C760B80 != -1)
  {
    swift_once();
  }

  *(v2 + 32) = sub_20C13C434();
  *(v2 + 40) = v3;
  if (qword_27C760B78 != -1)
  {
    swift_once();
  }

  *(v2 + 48) = sub_20C13C434();
  *(v2 + 56) = v4;
  if (qword_27C760B88 != -1)
  {
    swift_once();
  }

  *(v2 + 64) = sub_20C13C434();
  *(v2 + 72) = v5;
  sub_20C13C444();
  sub_20C13C204();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_20BD0E07C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C132EE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_20BD0E0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_20C132EE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20BD0E158()
{
  v2 = v0;
  v118 = sub_20C132EE4();
  v102 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v98 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v101 = &v95 - v5;
  MEMORY[0x28223BE20](v6);
  v100 = &v95 - v7;
  MEMORY[0x28223BE20](v8);
  v128 = &v95 - v9;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E0F8);
  MEMORY[0x28223BE20](v115);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v114 = &v95 - v13;
  v117 = type metadata accessor for WorkoutPlanArtworkV2.Workout(0);
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for WorkoutPlanArtworkV2.Day(0);
  v109 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v97 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v107 = &v95 - v18;
  v103 = sub_20C134634();
  v99 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C135764();
  v22 = sub_20C132EB4();
  v24 = v23;
  v25 = v23 >> 62;
  if ((v23 >> 62) > 1)
  {
    goto LABEL_8;
  }

  if (!v25)
  {
    goto LABEL_13;
  }

  v1 = v11;
  v11 = v22;
  if (v22 > v22 >> 32)
  {
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    sub_20C132724();
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v26 = v22;
  v27 = sub_20C132714();
  if (!v27)
  {
LABEL_108:
    result = sub_20C132724();
    __break(1u);
    return result;
  }

  v28 = v27;
  v29 = sub_20C132734();
  if (__OFSUB__(v11, v29))
  {
    goto LABEL_105;
  }

  v30 = v11 - v29 + v28;
  v22 = sub_20C132724();
  if (!v30)
  {
    __break(1u);
LABEL_8:
    if (v25 != 2)
    {
      goto LABEL_13;
    }

    v1 = v11;
    v26 = v22;
    v31 = *(v22 + 16);
    v32 = sub_20C132714();
    if (!v32)
    {
      goto LABEL_106;
    }

    v33 = v32;
    v34 = sub_20C132734();
    if (!__OFSUB__(v31, v34))
    {
      v35 = v31 - v34 + v33;
      sub_20C132724();
      if (v35)
      {
        goto LABEL_12;
      }

      goto LABEL_107;
    }

    goto LABEL_104;
  }

LABEL_12:
  v22 = v26;
  v11 = v1;
LABEL_13:
  sub_20B7197A0(v22, v24);
  sub_20C134624();
  v36 = sub_20BD12260(3uLL);
  if (v36 > 2)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    v1 = sub_20BC05CD8(0, *(v1 + 16) + 1, 1, v1);
    goto LABEL_94;
  }

  v129 = byte_282287178[v36 + 32];
  sub_20BD12328(v36, 1.4, 2.0);
  *(v0 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_multiplier) = v37;
  if (*(v21 + 16) < 3uLL)
  {
    v38 = 1;
  }

  else
  {
    sub_20BD120E0(&qword_27C76E100, MEMORY[0x277D508E8]);
    v38 = (sub_20C13C7A4() & 0x20000) == 0;
  }

  v96 = v0;
  v95 = OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_shouldOffset;
  *(v0 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_shouldOffset) = v38;
  *&v135[0] = v21;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765848);
  sub_20B6D6ABC(&qword_27C765850, &qword_27C765848);
  sub_20B7C347C();
  v39 = sub_20C13CBF4();

  v24 = *(v39 + 16);
  if (!v24)
  {

    v1 = MEMORY[0x277D84F90];
LABEL_58:
    if (*(v1 + 16) > 1uLL)
    {
      goto LABEL_97;
    }

    *(v96 + v95) = 1;
    sub_20C132ED4();
    sub_20BD0F2F0(-0.1, 0.35);
    v42 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AF90);
    v41 = *(v116 + 72);
    v71 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_20C14F320;
    sub_20C13C484();
    sub_20C13C494();
    v72 = v129;
    sub_20BD0D864(v129, v133);
    sub_20C132ED4();
    v73 = sub_20BD0D554(v72);
    v24 = sub_20BD0D2FC(v20, v73);

    if (!v24)
    {
      v24 = sub_20C13C334();
    }

    v74 = sub_20BD0D554(v129);
    v15 = sub_20BD0D2FC(v20, v74);

    if (!v15)
    {
      v15 = sub_20C13C334();
    }

    v75 = sub_20BD12260(5uLL);
    if (v75 <= 4)
    {
      v44 = v43 + v71;
      v76 = qword_2822871A0[v75 + 4];
      if (v76 <= 19)
      {
        if (v76 == 5)
        {
          v2 = v20;
          v77 = 0x3F9999999999999ALL;
          goto LABEL_77;
        }

        if (v76 == 10)
        {
          v2 = v20;
          v77 = 0x3FA999999999999ALL;
          goto LABEL_77;
        }
      }

      else if (v76 != 20)
      {
        if (v76 == 30)
        {
          goto LABEL_75;
        }

        if (v76 == 45)
        {
          v2 = v20;
          v77 = 0x3FC999999999999ALL;
          goto LABEL_77;
        }
      }

      v2 = v20;
      v77 = 0x3FB999999999999ALL;
      goto LABEL_77;
    }

    goto LABEL_100;
  }

  *&v135[0] = MEMORY[0x277D84F90];
  v104 = v39;
  sub_20BB5D470(0, v24, 0);
  v40 = v104;
  v41 = 0;
  v1 = *&v135[0];
  v106 = v104 + 32;
  v112 = (v102 + 32);
  v42 = 0xBFB999999999999ALL;
  v113 = v11;
  v105 = v24;
  while (1)
  {
    if (v41 >= *(v40 + 16))
    {
      __break(1u);
      goto LABEL_99;
    }

    v111 = v41;
    v24 = *(v106 + 16 * v41 + 8);
    v43 = *(v24 + 16);
    if (v43)
    {
      break;
    }

    v2 = MEMORY[0x277D84F90];
LABEL_53:
    sub_20BD0F2F0(-0.1, 0.25);
    v64 = v63;
    v65 = v107;
    sub_20C132ED4();

    v66 = v65;
    v67 = v108;
    *&v65[*(v108 + 20)] = v64;
    *&v65[*(v67 + 24)] = v2;
    *&v135[0] = v1;
    v69 = *(v1 + 16);
    v68 = *(v1 + 24);
    if (v69 >= v68 >> 1)
    {
      sub_20BB5D470(v68 > 1, v69 + 1, 1);
      v40 = v104;
      v66 = v107;
      v1 = *&v135[0];
    }

    v41 = v111 + 1;
    *(v1 + 16) = v69 + 1;
    sub_20BD126DC(v66, v1 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v69, type metadata accessor for WorkoutPlanArtworkV2.Day);
    v24 = v105;
    if (v41 == v105)
    {

      goto LABEL_58;
    }
  }

  v110 = v1;
  *&v133[0] = MEMORY[0x277D84F90];

  sub_20BB5E888(0, v43, 0);
  v2 = *&v133[0];
  v126 = *(v24 + 16);
  v1 = 0;
  v44 = 0;
  v124 = sub_20C136864();
  v45 = *(v124 - 8);
  v122 = v24 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
  v121 = v45 + 16;
  v123 = v45;
  v120 = v45 + 32;
  v119 = v24;
  v125 = v43;
  while (v126 != v1)
  {
    if (v1 >= *(v24 + 16))
    {
      goto LABEL_74;
    }

    v127 = v2;
    v46 = v15;
    v47 = v20;
    v48 = v115;
    v49 = *(v115 + 48);
    v50 = v123;
    v51 = v114;
    v52 = v124;
    (*(v123 + 16))(&v114[v49], v122 + *(v123 + 72) * v1, v124);
    *v11 = v1;
    (*(v50 + 32))(v11 + *(v48 + 48), &v51[v49], v52);
    v130 = sub_20BD0D554(v129);
    if (!v44)
    {
      sub_20C13C334();
    }

    v53 = v47;

    sub_20B6CB138();

    v44 = sub_20BD0D2FC(v47, v130);
    swift_retain_n();

    v15 = v46;
    if (!v44)
    {
      sub_20C13C334();
    }

    sub_20B6CB138();

    v54 = v53;
    v55 = sub_20BD0D2FC(v53, v130);

    v2 = v127;
    if (v1)
    {
      sub_20C13C494();
      sub_20C13C484();
    }

    else
    {
      sub_20C13C484();
      sub_20C13C494();
    }

    sub_20BD0D864(v129, v131);
    sub_20C132ED4();
    v56 = v44;
    if (v44)
    {
      if (v55)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v56 = sub_20C13C334();
      if (v55)
      {
LABEL_33:

        v57 = v55;
        goto LABEL_36;
      }
    }

    v57 = sub_20C13C334();
LABEL_36:

    v11 = v113;
    v58 = sub_20C136854();

    if (v58 <= 19)
    {
      v20 = v54;
      if (v58 == 5)
      {
        v59 = 0x3F9999999999999ALL;
        goto LABEL_47;
      }

      v59 = 0x3FA999999999999ALL;
      v24 = v119;
      if (v58 != 10)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v20 = v54;
      if (v58 == 20)
      {
        v59 = 0x3FB999999999999ALL;
LABEL_47:
        v24 = v119;
        goto LABEL_48;
      }

      v24 = v119;
      if (v58 == 30)
      {
        v59 = 0x3FC3333333333333;
        goto LABEL_48;
      }

      if (v58 != 45)
      {
LABEL_43:
        v59 = 0x3FB999999999999ALL;
        goto LABEL_48;
      }

      v59 = 0x3FC999999999999ALL;
    }

LABEL_48:
    *(v15 + 4) = v132;
    v60 = v131[1];
    *v15 = v131[0];
    *(v15 + 1) = v60;
    v61 = v117;
    (*v112)(&v15[*(v117 + 20)], v128, v118);
    *&v15[v61[6]] = v56;
    *&v15[v61[7]] = v57;
    *&v15[v61[8]] = v59;
    sub_20B520158(v11, &qword_27C76E0F8);
    *&v133[0] = v2;
    v41 = *(v2 + 16);
    v62 = *(v2 + 24);
    if (v41 >= v62 >> 1)
    {
      sub_20BB5E888(v62 > 1, v41 + 1, 1);
      v2 = *&v133[0];
    }

    ++v1;
    *(v2 + 16) = v41 + 1;
    sub_20BD126DC(v15, v2 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v41, type metadata accessor for WorkoutPlanArtworkV2.Workout);
    v43 = v125;
    if (v125 == v1)
    {
      v1 = v110;
      v40 = v104;
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  v2 = v20;
  v77 = 0x3FC3333333333333;
LABEL_77:
  v78 = v133[1];
  *v44 = v133[0];
  *(v44 + 16) = v78;
  *(v44 + 32) = v134;
  v79 = v117;
  v80 = *(v102 + 32);
  v80(v44 + *(v117 + 20), v101, v118);
  *(v44 + v79[6]) = v24;
  *(v44 + v79[7]) = v15;
  *(v44 + v79[8]) = v77;
  sub_20C13C484();
  sub_20C13C494();
  LOBYTE(v79) = v129;
  sub_20BD0D864(v129, v135);
  sub_20C132ED4();
  v81 = sub_20BD0D554(v79);
  v24 = sub_20BD0D2FC(v2, v81);

  if (!v24)
  {
    v24 = sub_20C13C334();
  }

  v82 = sub_20BD0D554(v129);
  v83 = sub_20BD0D2FC(v2, v82);

  if (!v83)
  {
    v83 = sub_20C13C334();
  }

  v84 = sub_20BD12260(5uLL);
  if (v84 > 4)
  {
    goto LABEL_101;
  }

  v85 = qword_2822871E8[v84 + 4];
  if (v85 <= 19)
  {
    if (v85 == 5)
    {
      v86 = 0x3F9999999999999ALL;
    }

    else
    {
      if (v85 != 10)
      {
        goto LABEL_90;
      }

      v86 = 0x3FA999999999999ALL;
    }
  }

  else
  {
    switch(v85)
    {
      case 20:
        goto LABEL_90;
      case 30:
        v86 = 0x3FC3333333333333;
        break;
      case 45:
        v86 = 0x3FC999999999999ALL;
        break;
      default:
LABEL_90:
        v86 = 0x3FB999999999999ALL;
        break;
    }
  }

  v87 = v44 + v41;
  v88 = v135[1];
  *v87 = v135[0];
  *(v87 + 16) = v88;
  *(v87 + 32) = v136;
  v89 = v117;
  v90 = v118;
  v80(v87 + *(v117 + 20), v98, v118);
  *(v87 + v89[6]) = v24;
  *(v87 + v89[7]) = v83;
  *(v87 + v89[8]) = v86;
  v24 = v97;
  v80(v97, v100, v90);
  v91 = v108;
  *(v24 + *(v108 + 20)) = v42;
  *(v24 + *(v91 + 24)) = v43;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_102;
  }

LABEL_94:
  v20 = v2;
  v93 = *(v1 + 16);
  v92 = *(v1 + 24);
  if (v93 >= v92 >> 1)
  {
    v1 = sub_20BC05CD8(v92 > 1, v93 + 1, 1, v1);
  }

  *(v1 + 16) = v93 + 1;
  sub_20BD126DC(v24, v1 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v93, type metadata accessor for WorkoutPlanArtworkV2.Day);
LABEL_97:
  (*(v99 + 8))(v20, v103);
  return v1;
}

void sub_20BD0F2F0(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_20C134634();
  sub_20BD120E0(&qword_27C76E100, MEMORY[0x277D508E8]);
    ;
  }
}

uint64_t WorkoutPlanArtworkV2.deinit()
{
  v1 = OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_schedule;
  v4 = sub_20C1357B4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t WorkoutPlanArtworkV2.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_schedule;
  v4 = sub_20C1357B4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t WorkoutPlanArtworkViewV2.init(artwork:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  v3 = sub_20BD0E158();

  a2[1] = v3;
  return result;
}

uint64_t WorkoutPlanArtworkViewV2.body.getter@<X0>(double (**a1)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_20BD11630;
  a1[1] = v5;
}

double sub_20BD0F5F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = sub_20C13C454();
  a4[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DFA8);
  sub_20BD0F6C4(a2, a3, a1, a4 + *(v9 + 44));
  sub_20C13C1E4();
  sub_20C13C454();
  sub_20C13C1D4();
  v10 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DFB0) + 36));
  *v10 = v12;
  v10[1] = v13;
  result = *&v14;
  v10[2] = v14;
  return result;
}

uint64_t sub_20BD0F6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a3;
  v91 = a1;
  v87 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DFB8);
  MEMORY[0x28223BE20](v6 - 8);
  v89 = (&KeyPath - v7);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DFC0);
  MEMORY[0x28223BE20](v83);
  v86 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v82 = &KeyPath - v10;
  MEMORY[0x28223BE20](v11);
  v85 = &KeyPath - v12;
  v13 = sub_20C13C1F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DFC8);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &KeyPath - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DFD0);
  MEMORY[0x28223BE20](v75);
  v84 = &KeyPath - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v74 = &KeyPath - v22;
  MEMORY[0x28223BE20](v23);
  v90 = &KeyPath - v24;
  *v19 = sub_20C13C264();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DFD8) + 44);
  v25 = *(a2 + 16);
  *&v92 = 0;
  *(&v92 + 1) = v25;
  v79 = v25;
  KeyPath = swift_getKeyPath();
  v26 = *(v14 + 16);
  v73 = v14 + 16;
  v72 = v26;
  v26(&KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v13);
  v27 = *(v14 + 80);
  v70 = ~v27;
  v28 = (v27 + 16) & ~v27;
  v76 = v15;
  v29 = swift_allocObject();
  v30 = *(v14 + 32);
  v77 = &KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v13;
  v78 = v14 + 32;
  v71 = v30;
  v30(v29 + v28, v77, v13);
  v31 = (v29 + ((v15 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  v32 = v91;
  *v31 = v91;
  v31[1] = a2;
  v33 = v32;

  v81 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DFE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DFE8);
  sub_20BD11CCC();
  sub_20BD11DAC();
  v34 = v88;
  sub_20C13C3F4();
  sub_20C13C1E4();
  sub_20C13C454();
  sub_20C13C1D4();
  v35 = &v19[*(v17 + 44)];
  v36 = v93;
  *v35 = v92;
  *(v35 + 1) = v36;
  *(v35 + 2) = v94;
  v69 = OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_shouldOffset;
  v37 = 0.0;
  v38 = 0.0;
  if (*(v33 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_shouldOffset) == 1)
  {
    sub_20C13C1E4();
    v38 = v39 / v79 * *(v91 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_multiplier) * -0.5;
  }

  v40 = v74;
  sub_20B5DF134(v19, v74, &qword_27C76DFC8);
  v41 = v40 + *(v75 + 36);
  *v41 = 0;
  *(v41 + 8) = v38;
  sub_20B5DF134(v40, v90, &qword_27C76DFD0);
  v42 = sub_20C13C264();
  v43 = v89;
  *v89 = v42;
  v43[1] = 0;
  *(v43 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E010);
  v44 = v81;
  v95 = v81;
  v45 = v77;
  v46 = v80;
  v72(v77, v34, v80);
  v47 = (v27 + 32) & v70;
  v48 = swift_allocObject();
  v49 = v91;
  *(v48 + 16) = v91;
  *(v48 + 24) = v44;
  v71(v48 + v47, v45, v46);

  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E018);
  sub_20C132EE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E020);
  sub_20B6D6ABC(&qword_27C76E028, &qword_27C76E018);
  sub_20BD11F10();
  sub_20BD120E0(&qword_27C76E068, type metadata accessor for WorkoutPlanArtworkV2.Day);
  sub_20C13C404();
  if (*(v49 + v69) == 1)
  {
    sub_20C13C1E4();
    v37 = v50 / v79 * *(v91 + OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_multiplier) * -0.5;
  }

  v51 = v82;
  sub_20B5DF134(v89, v82, &qword_27C76DFB8);
  v52 = v51 + *(v83 + 36);
  *v52 = 0;
  *(v52 + 8) = v37;
  v53 = v85;
  sub_20B5DF134(v51, v85, &qword_27C76DFC0);
  sub_20C13C484();
  sub_20C13C494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DF90);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_20C1517D0;
  if (qword_27C760BE0 != -1)
  {
    swift_once();
  }

  sub_20C13C364();
  *(v54 + 32) = sub_20C13C434();
  *(v54 + 40) = v55;
  sub_20C13C364();
  *(v54 + 48) = sub_20C13C434();
  *(v54 + 56) = v56;
  sub_20C13C364();
  *(v54 + 64) = sub_20C13C434();
  *(v54 + 72) = v57;
  sub_20C13C444();
  sub_20C13C204();
  v58 = v90;
  v59 = v84;
  sub_20B52F9E8(v90, v84, &qword_27C76DFD0);
  v60 = v86;
  sub_20B52F9E8(v53, v86, &qword_27C76DFC0);
  v61 = v53;
  v62 = v95;
  v63 = v87;
  sub_20B52F9E8(v59, v87, &qword_27C76DFD0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E070);
  sub_20B52F9E8(v60, v63 + *(v64 + 48), &qword_27C76DFC0);
  v65 = v63 + *(v64 + 64);
  *v65 = v62;
  v66 = v96;
  *(v65 + 24) = v97;
  *(v65 + 8) = v66;

  sub_20B520158(v61, &qword_27C76DFC0);
  sub_20B520158(v58, &qword_27C76DFD0);

  sub_20B520158(v60, &qword_27C76DFC0);
  return sub_20B520158(v59, &qword_27C76DFD0);
}

double sub_20BD100FC@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    sub_20C13C494();
    sub_20C13C484();
  }

  else
  {
    sub_20C13C484();
    sub_20C13C494();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DF90);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F320;
  if (qword_27C760BD0 != -1)
  {
    swift_once();
  }

  *(v3 + 32) = sub_20C13C434();
  *(v3 + 40) = v4;
  if (qword_27C760BD8 != -1)
  {
    swift_once();
  }

  *(v3 + 48) = sub_20C13C434();
  *(v3 + 56) = v5;
  sub_20C13C444();
  sub_20C13C204();
  sub_20C13C1E4();
  sub_20C13C1E4();
  sub_20C13C454();
  sub_20C13C1D4();
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  *(a2 + 80) = v12;
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

double static LinearGradient.backgroundGradient(startPoint:endPoint:)@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76DF90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C14F320;
  if (qword_27C760BD0 != -1)
  {
    swift_once();
  }

  *(v2 + 32) = sub_20C13C434();
  *(v2 + 40) = v3;
  if (qword_27C760BD8 != -1)
  {
    swift_once();
  }

  *(v2 + 48) = sub_20C13C434();
  *(v2 + 56) = v4;
  sub_20C13C444();
  sub_20C13C204();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_20BD1042C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40[1] = a4;
  v42 = a3;
  v41 = a2;
  v47 = a5;
  v7 = sub_20C13C1F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WorkoutPlanArtworkV2.Day(0);
  v12 = v11 - 8;
  v40[0] = *(v11 - 8);
  v13 = *(v40[0] + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E050) - 8;
  MEMORY[0x28223BE20](v43);
  v16 = v40 - v15;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E040) - 8;
  MEMORY[0x28223BE20](v46);
  v45 = v40 - v17;
  *v16 = sub_20C13C244();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v40[3] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E078) + 44);
  v18 = *(v12 + 32);
  v44 = a1;
  sub_20C114758(*(a1 + v18));
  *&v51 = v19;
  v40[2] = swift_getKeyPath();
  sub_20BD123CC(a1, v14);
  (*(v8 + 16))(v10, a4, v7);
  v20 = (*(v40[0] + 80) + 16) & ~*(v40[0] + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v8 + 80) + v21 + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  sub_20BD126DC(v14, v23 + v20, type metadata accessor for WorkoutPlanArtworkV2.Day);
  v24 = (v23 + v21);
  v25 = v42;
  *v24 = v41;
  v24[1] = v25;
  (*(v8 + 32))(v23 + v22, v10, v7);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_20BD12430;
  *(v26 + 24) = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E088);
  sub_20B6D6ABC(&qword_27C76E090, &qword_27C76E080);
  sub_20BD120E0(&qword_27C7675A0, MEMORY[0x277CC95F0]);
  sub_20BD12598();
  sub_20C13C3F4();
  sub_20C13C1E4();
  sub_20C13C454();
  sub_20C13C1D4();
  v27 = &v16[*(v43 + 44)];
  v28 = v49;
  *v27 = v48;
  *(v27 + 1) = v28;
  *(v27 + 2) = v50;
  sub_20C13C454();
  sub_20C13C234();
  v29 = v45;
  sub_20B5DF134(v16, v45, &qword_27C76E050);
  v30 = (v29 + *(v46 + 44));
  v31 = v56;
  v30[4] = v55;
  v30[5] = v31;
  v30[6] = v57;
  v32 = v52;
  *v30 = v51;
  v30[1] = v32;
  v33 = v54;
  v30[2] = v53;
  v30[3] = v33;
  sub_20C13C1E4();
  v35 = v34 * *(v44 + *(v12 + 28));
  v36 = v29;
  v37 = v47;
  sub_20B5DF134(v36, v47, &qword_27C76E040);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E020);
  v39 = v37 + *(result + 36);
  *v39 = v35;
  *(v39 + 8) = 0;
  return result;
}

uint64_t sub_20BD10A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E0A8);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = (v26 - v14);
  *v15 = sub_20C13C454();
  v15[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E0C8);
  sub_20BD10BF8(a2, a1, a3, v15 + *(v17 + 44));
  sub_20C13C1E4();
  v18 = *(a5 + 16);
  v19 = OBJC_IVAR____TtC9SeymourUI20WorkoutPlanArtworkV2_multiplier;
  sub_20C13C1E4();
  type metadata accessor for WorkoutPlanArtworkV2.Workout(0);
  sub_20C13C454();
  sub_20C13C1D4();
  v20 = (v15 + *(v13 + 44));
  v21 = v26[1];
  *v20 = v26[0];
  v20[1] = v21;
  v20[2] = v26[2];
  if (a1)
  {
    sub_20C13C1E4();
    v23 = *(a4 + v19) * (-v22 / v18) * a1;
  }

  else
  {
    v23 = 0.0;
  }

  sub_20B5DF134(v15, a6, &qword_27C76E0A8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E088);
  v25 = a6 + *(result + 36);
  *v25 = v23;
  *(v25 + 8) = 0;
  return result;
}

uint64_t sub_20BD10BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v50 = a2;
  v51 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E0D0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E0D8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = *MEMORY[0x277CE0128];
  v19 = sub_20C13C254();
  (*(*(v19 - 8) + 104))(v8, v18, v19);
  v20 = &v8[*(v6 + 60)];
  *v20 = *a1;
  *(v20 + 8) = *(a1 + 8);
  *(v20 + 24) = *(a1 + 24);
  *&v8[*(v6 + 64)] = 256;

  sub_20C13C454();
  sub_20C13C234();
  sub_20B5DF134(v8, v14, &qword_27C76E0D0);
  v21 = &v14[*(v10 + 44)];
  v22 = *&v76[99];
  *(v21 + 4) = *&v76[91];
  *(v21 + 5) = v22;
  *(v21 + 6) = *&v76[107];
  v23 = *&v76[67];
  *v21 = *&v76[59];
  *(v21 + 1) = v23;
  v24 = *&v76[83];
  *(v21 + 2) = *&v76[75];
  *(v21 + 3) = v24;
  v25 = v17;
  sub_20B5DF134(v14, v17, &qword_27C76E0D8);
  v26 = type metadata accessor for WorkoutPlanArtworkV2.Workout(0);
  v27 = *(a1 + *(v26 + 24));
  sub_20C13C464();
  sub_20C13C234();
  *&v76[27] = *&v76[139];
  *&v76[35] = *&v76[147];
  *&v76[43] = *&v76[155];
  *&v76[51] = *&v76[163];
  *&v76[11] = *&v76[123];
  *&v76[19] = *&v76[131];
  *&v76[3] = *&v76[115];
  v28 = *(a1 + *(v26 + 28));
  v48 = v27;

  sub_20C13C474();
  sub_20C13C234();
  *&v75[54] = *&v76[195];
  *&v75[70] = *&v76[203];
  *&v75[86] = *&v76[211];
  *&v75[102] = *&v76[219];
  *&v75[6] = *&v76[171];
  *&v75[22] = *&v76[179];
  *&v75[38] = *&v76[187];
  if (*(*(v49 + *(type metadata accessor for WorkoutPlanArtworkV2.Day(0) + 24)) + 16) - 1 == v50)
  {
    v29 = 1.0;
  }

  else
  {
    v29 = 0.0;
  }

  v30 = v52;
  sub_20B52F9E8(v25, v52, &qword_27C76E0D8);
  v31 = v30;
  v32 = v51;
  sub_20B52F9E8(v31, v51, &qword_27C76E0D8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E0E0);
  v34 = (v32 + *(v33 + 48));
  *&v53[0] = v27;
  WORD4(v53[0]) = 256;
  *(v53 + 10) = *v76;
  *(&v53[1] + 10) = *&v76[8];
  *(&v53[4] + 10) = *&v76[32];
  *(&v53[5] + 10) = *&v76[40];
  *(&v53[6] + 10) = *&v76[48];
  *(&v53[7] + 1) = *&v76[55];
  *(&v53[2] + 10) = *&v76[16];
  *(&v53[3] + 10) = *&v76[24];
  v35 = v53[5];
  v34[4] = v53[4];
  v34[5] = v35;
  v36 = v53[7];
  v34[6] = v53[6];
  v34[7] = v36;
  v37 = v53[1];
  *v34 = v53[0];
  v34[1] = v37;
  v38 = v53[3];
  v34[2] = v53[2];
  v34[3] = v38;
  v39 = v32 + *(v33 + 64);
  *&v54[0] = v28;
  WORD4(v54[0]) = 256;
  *(&v54[4] + 10) = *&v75[64];
  *(&v54[5] + 10) = *&v75[80];
  *(&v54[6] + 10) = *&v75[96];
  *(&v54[7] + 1) = *&v75[110];
  *(&v54[3] + 10) = *&v75[48];
  *(&v54[2] + 10) = *&v75[32];
  *(&v54[1] + 10) = *&v75[16];
  *(v54 + 10) = *v75;
  v55 = v29;
  v40 = v54[0];
  v41 = v54[1];
  v42 = v54[3];
  *(v39 + 32) = v54[2];
  *(v39 + 48) = v42;
  *v39 = v40;
  *(v39 + 16) = v41;
  v43 = v54[4];
  v44 = v54[5];
  v45 = v54[6];
  v46 = v54[7];
  *(v39 + 128) = v55;
  *(v39 + 96) = v45;
  *(v39 + 112) = v46;
  *(v39 + 64) = v43;
  *(v39 + 80) = v44;

  sub_20B52F9E8(v53, &v56, &qword_27C76E0E8);
  sub_20B52F9E8(v54, &v56, &qword_27C76E0F0);
  sub_20B520158(v25, &qword_27C76E0D8);
  v56 = v28;
  v57 = 256;
  v62 = *&v75[64];
  v63 = *&v75[80];
  *v64 = *&v75[96];
  *&v64[14] = *&v75[110];
  v58 = *v75;
  v59 = *&v75[16];
  v60 = *&v75[32];
  v61 = *&v75[48];
  v65 = v29;
  sub_20B520158(&v56, &qword_27C76E0F0);
  v72 = *&v76[32];
  v73 = *&v76[40];
  *v74 = *&v76[48];
  v68 = *v76;
  v69 = *&v76[8];
  v70 = *&v76[16];
  v66 = v48;
  v67 = 256;
  *&v74[14] = *&v76[55];
  v71 = *&v76[24];
  sub_20B520158(&v66, &qword_27C76E0E8);
  return sub_20B520158(v52, &qword_27C76E0D8);
}