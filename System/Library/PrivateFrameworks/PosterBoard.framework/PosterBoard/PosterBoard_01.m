void sub_21B61E054(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_21B6C9444();
    sub_21B61785C(0, &qword_28120B150);
    sub_21B61E3A8(&qword_28120B148, &qword_28120B150);
    sub_21B6C8FB4();
    v3 = v20;
    v4 = v21;
    v5 = v22;
    v6 = v23;
    v7 = v24;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);
    swift_bridgeObjectRetain_n();
    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (1)
  {
    if (v3 < 0)
    {
      if (!sub_21B6C9474() || (sub_21B61785C(0, &qword_28120B150), swift_dynamicCast(), (v14 = v19) == 0))
      {
LABEL_25:
        sub_21B61E2EC();
        return;
      }

      goto LABEL_19;
    }

    v12 = v6;
    v13 = v7;
    if (!v7)
    {
      break;
    }

LABEL_15:
    v7 = (v13 - 1) & v13;
    v14 = *(*(v3 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_25;
    }

LABEL_19:
    v15 = *(v2 + OBJC_IVAR___PBFPosterSwitcherSceneDelegate_window);
    if (v15 && (v16 = [v15 rootViewController]) != 0)
    {
      v17 = v16;
      type metadata accessor for PosterRackCollectionViewController();
      if (swift_dynamicCastClass())
      {
        if ((PosterRackCollectionViewController.handle(_:)(v14) & 1) == 0)
        {

          goto LABEL_9;
        }

        v18 = sub_21B61C124(v14);
      }

      else
      {
      }
    }

    else
    {
LABEL_9:
    }
  }

  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_25;
    }

    v13 = *(v4 + 8 * v6);
    ++v12;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_21B61E3A8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_21B61785C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B61E3F8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21B6C96E4() & 1;
  }
}

uint64_t sub_21B61E450(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21B6C88C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_21B61E4B4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11PosterBoard23PosterCoupledTitlesView_titleLabelSpacingFromTopEdge] = 0x4042000000000000;
  *&v4[OBJC_IVAR____TtC11PosterBoard23PosterCoupledTitlesView_footerLabelSpacingFromBottomEdge] = 0x4024000000000000;
  BSRectWithSize();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B6D8270;
  *(inited + 32) = v17;
  *(inited + 40) = v18;
  *(inited + 48) = v19;
  v21 = inited & 0xC000000000000001;
  v22 = v17;
  v55 = v18;
  v57 = v19;
  if ((inited & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x21CEF66E0](0, inited);
  }

  else
  {
    v23 = v22;
  }

  v24 = v23;
  v25 = objc_opt_self();
  v26 = *MEMORY[0x277D76800];
  [v24 setMaximumContentSizeCategory_];
  [v24 setAdjustsFontForContentSizeCategory_];
  [v24 setAdjustsFontSizeToFitWidth_];
  [v24 setMinimumScaleFactor_];
  [v24 setTextAlignment_];
  v27 = [v25 whiteColor];
  [v24 setTextColor_];

  [v24 setNumberOfLines_];
  if (v21)
  {
    v28 = MEMORY[0x21CEF66E0](1, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_22;
    }

    v28 = *(inited + 40);
  }

  v29 = v28;
  [v28 setMaximumContentSizeCategory_];
  [v29 setAdjustsFontForContentSizeCategory_];
  [v29 setAdjustsFontSizeToFitWidth_];
  [v29 setMinimumScaleFactor_];
  [v29 setTextAlignment_];
  v30 = [v25 whiteColor];
  [v29 setTextColor_];

  [v29 setNumberOfLines_];
  if (v21)
  {
    v31 = MEMORY[0x21CEF66E0](2, inited);
    goto LABEL_11;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v31 = *(inited + 48);
LABEL_11:
  v32 = v31;

  [v32 setMaximumContentSizeCategory_];
  [v32 setAdjustsFontForContentSizeCategory_];
  [v32 setAdjustsFontSizeToFitWidth_];
  [v32 setMinimumScaleFactor_];
  [v32 setTextAlignment_];
  v33 = [v25 whiteColor];
  [v32 setTextColor_];

  [v32 setNumberOfLines_];
  v34 = sub_21B6C8D74();
  v35 = PBFLocalizedString(v34);

  if (!v35)
  {
    sub_21B6C8DA4();
    v35 = sub_21B6C8D74();
  }

  [v22 setText_];

  v36 = sub_21B6C8D74();
  v37 = PBFLocalizedString(v36);

  if (!v37)
  {
    sub_21B6C8DA4();
    v37 = sub_21B6C8D74();
  }

  [v56 setText_];

  v38 = sub_21B6C8D74();
  v39 = PBFLocalizedString(v38);

  if (!v39)
  {
    sub_21B6C8DA4();
    v39 = sub_21B6C8D74();
  }

  [v57 setText_];

  v40 = objc_opt_self();
  v41 = [v40 _preferredFontDescriptorWithTextStyle_weight_];
  if (!v41)
  {
    goto LABEL_23;
  }

  v42 = v41;
  v43 = objc_opt_self();
  v44 = [v43 fontWithDescriptor:v42 size:0.0];
  [v22 setFont_];
  v45 = [v40 _preferredFontDescriptorWithTextStyle_weight_];
  if (v45)
  {
    v46 = v45;
    v47 = [v43 fontWithDescriptor:v45 size:0.0];
    [v56 setFont_];
    [v57 setFont_];

    *&v4[OBJC_IVAR____TtC11PosterBoard23PosterCoupledTitlesView_titleLabel] = v22;
    *&v4[OBJC_IVAR____TtC11PosterBoard23PosterCoupledTitlesView_lockFooterLabel] = v56;
    *&v4[OBJC_IVAR____TtC11PosterBoard23PosterCoupledTitlesView_homeFooterLabel] = v57;
    v58.receiver = v4;
    v58.super_class = type metadata accessor for PosterCoupledTitlesView();
    v48 = v22;
    v49 = v56;
    v50 = v57;
    v51 = objc_msgSendSuper2(&v58, sel_initWithFrame_, a1, a2, a3, a4);
    [v51 addSubview_];
    [v51 addSubview_];
    [v51 addSubview_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92C88);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_21B6D7FE0;
    v53 = sub_21B6C8B54();
    v54 = MEMORY[0x277D74DB8];
    *(v52 + 32) = v53;
    *(v52 + 40) = v54;
    MEMORY[0x21CEF6310](v52, sel_setNeedsLayout);

    swift_unknownObjectRelease();

    return;
  }

LABEL_24:
  __break(1u);
}

id sub_21B61ECF0()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for PosterCoupledTitlesView();
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];

  v10 = *&v0[OBJC_IVAR____TtC11PosterBoard23PosterCoupledTitlesView_titleLabel];
  [v10 sizeThatFits_];
  BSSizeCeilForScale();
  v26.origin.x = v2;
  v26.origin.y = v4;
  v26.size.width = v6;
  v26.size.height = v8;
  CGRectGetMidX(v26);
  v27.origin.x = v2;
  v27.origin.y = v4;
  v27.size.width = v6;
  v27.size.height = v8;
  CGRectGetMinY(v27);
  BSPointRoundForScale();
  [v10 setFrame_];
  v11 = [v0 effectiveUserInterfaceLayoutDirection];
  v28.origin.x = v2;
  v28.origin.y = v4;
  v28.size.width = v6;
  v28.size.height = v8;
  v12 = (CGRectGetWidth(v28) + -10.0) * 0.5;
  v29.origin.x = v2;
  v29.origin.y = v4;
  v29.size.width = v6;
  v29.size.height = v8;
  Height = CGRectGetHeight(v29);
  v30.origin.x = v2;
  v30.origin.y = v4;
  v30.size.width = v6;
  v30.size.height = v8;
  CGRectGetMaxY(v30);
  v14 = *&v0[OBJC_IVAR____TtC11PosterBoard23PosterCoupledTitlesView_lockFooterLabel];
  [v14 sizeThatFits_];
  BSSizeCeilForScale();
  v15 = v2;
  v16 = v4;
  v17 = v6;
  v18 = v8;
  if (v11)
  {
    CGRectGetMaxX(*&v15);
  }

  else
  {
    CGRectGetMinX(*&v15);
  }

  BSFloatRoundForScale();
  [v14 setFrame_];
  v19 = *&v0[OBJC_IVAR____TtC11PosterBoard23PosterCoupledTitlesView_homeFooterLabel];
  [v19 sizeThatFits_];
  BSSizeCeilForScale();
  v20 = v2;
  v21 = v4;
  v22 = v6;
  v23 = v8;
  if (v11)
  {
    CGRectGetMinX(*&v20);
  }

  else
  {
    CGRectGetMaxX(*&v20);
  }

  BSFloatRoundForScale();
  return [v19 setFrame_];
}

id sub_21B61F028()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterCoupledTitlesView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21B61F0DC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v21 = MEMORY[0x277D84F90];
    sub_21B6C9594();
    v4 = v1 + 56;
    result = sub_21B6C9414();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v18 = v1 + 64;
    v19 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v20 = v6;
      v10 = PBFSnapshotDefinitionForIdentifier(*(*(v1 + 48) + 8 * v5));
      sub_21B6C9574();
      sub_21B6C95A4();
      v1 = v19;
      sub_21B6C95B4();
      result = sub_21B6C9584();
      v8 = 1 << *(v19 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v11 = *(v4 + 8 * v9);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(v19 + 36))
      {
        goto LABEL_25;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v8 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v9 << 6;
        v14 = v9 + 1;
        v15 = (v18 + 8 * v9);
        while (v14 < (v8 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_21B62A0B8(v5, v7, 0);
            v8 = __clz(__rbit64(v16)) + v13;
            goto LABEL_4;
          }
        }

        result = sub_21B62A0B8(v5, v7, 0);
      }

LABEL_4:
      v6 = v20 + 1;
      v5 = v8;
      if (v20 + 1 == v2)
      {
        return v21;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_21B61F2F8()
{
  result = [objc_allocWithZone(type metadata accessor for PosterStore()) init];
  qword_28120CDA8 = result;
  return result;
}

id sub_21B61F3A0()
{
  v1 = v0;
  v2 = sub_21B6C88C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig;
  v7 = [*(v1 + OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig) activeConfiguration];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 _path];
    v10 = [v9 serverIdentity];

    if (v10)
    {
      v11 = [v10 posterUUID];

      sub_21B6C88A4();
      v10 = sub_21B6C8874();

      (*(v3 + 8))(v5, v2);
    }

    else
    {
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = [*(v1 + v6) selectedConfiguration];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 _path];
    v15 = [v14 serverIdentity];

    if (v15)
    {
      v16 = [v15 posterUUID];

      sub_21B6C88A4();
      sub_21B6C8874();

      (*(v3 + 8))(v5, v2);
    }

    else
    {
    }
  }

  return v10;
}

void *sub_21B61F5F8(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21B6C9454())
  {

    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CEF66E0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = *&v9[OBJC_IVAR___PBFPosterPair_id] == a1 && *&v9[OBJC_IVAR___PBFPosterPair_id + 8] == a2;
      if (v12 || (sub_21B6C96E4() & 1) != 0)
      {

        return v10;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_17:

  return 0;
}

void *sub_21B61F748(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21B6C9454())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CEF66E0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

char *sub_21B61F85C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    v7 = sub_21B6C9454();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v24 = MEMORY[0x277D84F90];

    result = sub_21B696384(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v22 = a1;
    v23 = a2;
    v10 = 0;
    v8 = v24;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CEF66E0](v10, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = *&v11[OBJC_IVAR___PBFPosterPair_id];
      v14 = *&v11[OBJC_IVAR___PBFPosterPair_id + 8];

      v16 = *(v24 + 16);
      v15 = *(v24 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_21B696384((v15 > 1), v16 + 1, 1);
      }

      ++v10;
      *(v24 + 16) = v16 + 1;
      v17 = v24 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
    }

    while (v7 != v10);

    a1 = v22;
    a2 = v23;
  }

  v18 = *(v8 + 16);
  v19 = 0;
  if (v18)
  {
    v20 = (v8 + 40);
    while (1)
    {
      v21 = *(v20 - 1) == a1 && *v20 == a2;
      if (v21 || (sub_21B6C96E4() & 1) != 0)
      {
        break;
      }

      ++v19;
      v20 += 2;
      if (v18 == v19)
      {
        v19 = 0;
        break;
      }
    }
  }

  return v19;
}

unint64_t sub_21B61FA3C(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_21B6C9454();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CEF66E0](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for PosterPair();
    v8 = sub_21B6C91A4();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

void sub_21B61FB2C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v49 = swift_allocObject();
  *(v49 + 16) = MEMORY[0x277D84F98];
  v58 = MEMORY[0x277D84F90];
  v50 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v47 = a2;
  v7 = [a2 definitions];
  sub_21B61785C(0, &qword_28120B238);
  v8 = sub_21B6C8E84();

  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = &protocol conformance descriptor for PosterEditingConfirmationViewControllerUserChoice;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_15:

    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_12:

      sub_21B6C96F4();
LABEL_13:

      v34 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92F08);
      v35 = sub_21B6C8E74();

      v36 = [v34 join_];

      v37 = swift_allocObject();
      v37[2] = v49;
      v37[3] = a3;
      v37[4] = a4;
      v56 = sub_21B62A81C;
      v57 = v37;
      aBlock = MEMORY[0x277D85DD0];
      v53 = 1107296256;
      v54 = sub_21B6208A8;
      v55 = &block_descriptor_129;
      v38 = _Block_copy(&aBlock);

      [v36 addCompletionBlock_];
      _Block_release(v38);

      return;
    }

LABEL_16:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92F08);
    sub_21B6C95E4();

    goto LABEL_13;
  }

  v10 = sub_21B6C9454();
  v9 = v8;
  v11 = &protocol conformance descriptor for PosterEditingConfirmationViewControllerUserChoice;
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_3:
  v12 = v9;
  v45 = objc_opt_self();
  if (v10 >= 1)
  {
    v39 = a3;
    v40 = a4;
    v13 = 0;
    v14 = v12;
    v41 = v12 & 0xC000000000000001;
    v42 = OBJC_IVAR____TtC11PosterBoard11PosterStore_glue;
    v15 = v11[60];
    v43 = v10;
    v44 = v12;
    do
    {
      if (v41)
      {
        v16 = MEMORY[0x21CEF66E0](v13, v14);
      }

      else
      {
        v16 = *(v14 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = [v16 uniqueIdentifier];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD92C10);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_21B6D81D0;
      *(v19 + 32) = v17;
      v51 = v17;
      v20 = sub_21B6C8E74();

      v21 = [v47 requestWithDefinitions_];

      v22 = [*(v48 + v42) dataStore];
      v23 = [v22 snapshotBundleForRequest_];

      v24 = swift_allocObject();
      v24[2] = v50;
      v24[3] = v49;
      v24[4] = v18;
      v56 = sub_21B62A808;
      v57 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v53 = v15;
      v54 = sub_21B620234;
      v55 = &block_descriptor_117;
      v25 = _Block_copy(&aBlock);
      v26 = v50;

      v27 = v18;

      [v23 addSuccessBlock:v25 scheduler:{objc_msgSend(v45, sel_offMainThreadScheduler)}];
      swift_unknownObjectRelease();
      _Block_release(v25);
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = a1;
      v56 = sub_21B62A814;
      v57 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v53 = v15;
      v54 = sub_21B6204B4;
      v55 = &block_descriptor_123;
      v29 = _Block_copy(&aBlock);
      v30 = v27;
      v31 = a1;

      [v23 addFailureBlock_];
      _Block_release(v29);
      v32 = v23;
      MEMORY[0x21CEF6000]();
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
      }

      ++v13;
      sub_21B6C8EA4();

      v14 = v44;
    }

    while (v43 != v13);
    v33 = v58;

    a3 = v39;
    a4 = v40;
    if (!(v33 >> 62))
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  __break(1u);
}

id sub_21B62016C(void *a1, id a2, uint64_t a3, void *a4)
{
  [a2 lock];
  swift_beginAccess();
  v8 = a4;
  v9 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_21B645810(v9, v8, isUniquelyReferenced_nonNull_native);

  *(a3 + 16) = v12;
  swift_endAccess();
  return [a2 unlock];
}

void sub_21B62023C(void *a1, void *a2, void *a3)
{
  if (qword_28120B3A0 != -1)
  {
    swift_once();
  }

  v6 = sub_21B6C8AB4();
  __swift_project_value_buffer(v6, qword_28120CD90);
  v7 = sub_21B6C9024();
  v8 = a2;
  v9 = a3;
  v10 = a1;
  oslog = sub_21B6C8A94();

  if (os_log_type_enabled(oslog, v7))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 136315650;
    type metadata accessor for Identifier(0);
    v14 = v8;
    v15 = sub_21B6C8DB4();
    v17 = sub_21B656178(v15, v16, &v23);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2112;
    v18 = [v9 _path];
    *(v11 + 14) = v18;
    *v12 = v18;
    *(v11 + 22) = 2080;
    swift_getErrorValue();
    v19 = sub_21B6C9744();
    v21 = sub_21B656178(v19, v20, &v23);

    *(v11 + 24) = v21;
    _os_log_impl(&dword_21B526000, oslog, v7, "Failed to fetch snapshot for kind '%s' for poster at path: %@ due to error: %s", v11, 0x20u);
    sub_21B62AA8C(v12, &qword_27CD92EF0);
    MEMORY[0x21CEF8150](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CEF8150](v13, -1, -1);
    MEMORY[0x21CEF8150](v11, -1, -1);
  }

  else
  {
  }
}

void sub_21B6204BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_21B620528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_opt_self() offMainThreadScheduler];
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v12[4] = sub_21B62A868;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_21B63863C;
  v12[3] = &block_descriptor_135;
  v10 = _Block_copy(v12);

  [v8 performBlock_];
  _Block_release(v10);
  return swift_unknownObjectRelease();
}

id sub_21B62064C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; result = [*(*(v6 + 56) + ((v13 << 9) | (8 * v14))) prepareForPresentation])
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      v15 = [objc_opt_self() mainThreadScheduler];
      v16 = swift_allocObject();
      v16[2] = a2;
      v16[3] = a3;
      v16[4] = a1;
      aBlock[4] = sub_21B62A874;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21B63863C;
      aBlock[3] = &block_descriptor_141;
      v17 = _Block_copy(aBlock);

      [v15 performBlock_];
      _Block_release(v17);
      return swift_unknownObjectRelease();
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B620840(void (*a1)(uint64_t))
{
  swift_beginAccess();

  a1(v2);
}

void sub_21B6208A8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_21B620934(void *a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [*(v1 + OBJC_IVAR____TtC11PosterBoard11PosterStore_glue) dataStore];
  v4 = [a1 identity];
  v5 = [v4 provider];

  if (!v5)
  {
    sub_21B6C8DA4();
    v5 = sub_21B6C8D74();
  }

  v6 = sub_21B6C8D74();
  v12[0] = 0;
  v7 = [v3 acquireExtensionInstance:v5 reason:v6 error:v12];

  v8 = v12[0];
  if (!v7)
  {
    v9 = v8;
    v10 = sub_21B6C8764();

    swift_willThrow();
  }

  return v7;
}

BOOL sub_21B620A90(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + OBJC_IVAR___PBFPosterPair_configuredProperties) focusConfiguration];
  if (v2)
  {

    return 0;
  }

  else
  {
    v4 = [*(v1 + OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig) configurations];
    sub_21B61785C(0, &qword_28120B290);
    v5 = sub_21B6C8E84();

    v6 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 >> 62)
    {
LABEL_21:
      v7 = sub_21B6C9454();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    v9 = 0;
    v10 = v5 & 0xC000000000000001;
    v11 = &selRef_iconImageView;
    v26 = v5 & 0xC000000000000001;
    while (v7 != v8)
    {
      if (v10)
      {
        v21 = MEMORY[0x21CEF66E0](v8, v5);
      }

      else
      {
        if (v8 >= *(v6 + 16))
        {
          goto LABEL_19;
        }

        v21 = *(v5 + 8 * v8 + 32);
      }

      v22 = v21;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v27[0] = 0;
      v23 = [v21 v11[400]];
      if (v23)
      {
        v24 = v23;
        v25 = v27[0];

        v19 = 0;
      }

      else
      {
        v12 = v27[0];
        v13 = v7;
        v14 = v5;
        v15 = v6;
        v16 = v11;
        v17 = sub_21B6C8764();

        swift_willThrow();
        v18 = v17;
        v11 = v16;
        v6 = v15;
        v5 = v14;
        v7 = v13;
        v10 = v26;

        v19 = 1;
      }

      ++v8;
      v20 = __OFADD__(v9, v19);
      v9 += v19;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    return v9 == 1;
  }
}

uint64_t sub_21B620CB8(char *a1, void *a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v414 = a5;
  v426 = a4;
  v431 = a3;
  v410 = a2;
  v438[4] = *MEMORY[0x277D85DE8];
  v432 = sub_21B6C88C4();
  v434 = *(v432 - 8);
  v8 = MEMORY[0x28223BE20](v432);
  v422 = &v393 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v416 = &v393 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v408 = &v393 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v406 = &v393 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v404 = &v393 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v402 = &v393 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v401 = &v393 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v405 = &v393 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v403 = &v393 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v409 = &v393 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v413 = &v393 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v415 = &v393 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v425 = &v393 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v430 = (&v393 - v35);
  MEMORY[0x28223BE20](v34);
  v419 = &v393 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v421 = &v393 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v412 = &v393 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v417 = &v393 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v418 = &v393 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v411 = (&v393 - v47);
  MEMORY[0x28223BE20](v46);
  v49 = &v393 - v48;
  v50 = OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig;
  v51 = [*(v5 + OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig) configurations];
  v52 = sub_21B61785C(0, &qword_28120B290);
  v53 = sub_21B6C8E84();

  [*(v5 + v50) mutableCopy];
  sub_21B6C93E4();
  swift_unknownObjectRelease();
  v54 = sub_21B61785C(0, &unk_28120B1E0);
  swift_dynamicCast();
  v55 = v435;
  v433 = a1;
  [v435 ingestNewPosterConfiguration_];
  v56 = OBJC_IVAR____TtC11PosterBoard11PosterStore_glue;
  v57 = v6;
  v58 = [*(v6 + OBJC_IVAR____TtC11PosterBoard11PosterStore_glue) dataStore];
  v59 = sub_21B6C8D74();
  v438[0] = 0;
  v423 = v55;
  v424 = [v58 updateDataStoreForSwitcherConfiguration:v55 options:1 reason:v59 error:v438];

  if (v438[0])
  {
    v60 = v438[0];

    if (qword_28120B3A0 != -1)
    {
      goto LABEL_47;
    }

    goto LABEL_3;
  }

  v395 = v54;
  v75 = v432;
  v394 = v56;
  v399 = v52;
  v396 = 0;
  v420 = v49;
  v407 = v57;
  v438[0] = MEMORY[0x277D84F90];
  v60 = v53;
  if (v53 >> 62)
  {
    v76 = sub_21B6C9454();
  }

  else
  {
    v76 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v77 = v431;
  v78 = v75;
  v79 = MEMORY[0x277D84F90];
  v429 = v60;
  if (v76)
  {
    v80 = 0;
    v427 = (v60 & 0xFFFFFFFFFFFFFF8);
    v428 = (v60 & 0xC000000000000001);
    v81 = &selRef_newAssertionForBundleIdentifier_withReason_level_;
    while (1)
    {
      if (v428)
      {
        v82 = MEMORY[0x21CEF66E0](v80, v60);
      }

      else
      {
        if (v80 >= v427[2].isa)
        {
          goto LABEL_44;
        }

        v82 = *(v60 + 8 * v80 + 32);
      }

      v83 = v82;
      v84 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        swift_once();
LABEL_3:
        v61 = sub_21B6C8AB4();
        __swift_project_value_buffer(v61, qword_28120CD90);
        v62 = sub_21B6C9024();
        v63 = v60;
        v64 = v433;
        v65 = sub_21B6C8A94();

        if (os_log_type_enabled(v65, v62))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v438[0] = v68;
          *v66 = 138412546;
          v69 = [v64 sourceIdentity];
          *(v66 + 4) = v69;
          *v67 = v69;
          *(v66 + 12) = 2080;
          v70 = [v63 localizedDescription];
          v71 = sub_21B6C8DA4();
          v73 = v72;

          v74 = sub_21B656178(v71, v73, v438);

          *(v66 + 14) = v74;
          _os_log_impl(&dword_21B526000, v65, v62, "PosterStore failed to ingest poster %@ due to error %s", v66, 0x16u);
          sub_21B62AA8C(v67, &qword_27CD92EF0);
          MEMORY[0x21CEF8150](v67, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v68);
          MEMORY[0x21CEF8150](v68, -1, -1);
          MEMORY[0x21CEF8150](v66, -1, -1);
        }

        else
        {
        }

        return 0;
      }

      v85 = [v82 _path];
      v86 = [v85 serverIdentity];

      if (v86)
      {
        v87 = [v86 v81[404]];

        v86 = sub_21B6C8DA4();
        v89 = v88;
      }

      else
      {
        v89 = 0;
      }

      v90 = [v433 sourceIdentity];
      v91 = v81;
      v92 = [v90 v81[404]];

      v93 = sub_21B6C8DA4();
      v95 = v94;

      if (v89)
      {
        if (v86 == v93 && v89 == v95)
        {

          v81 = v91;
        }

        else
        {
          v96 = sub_21B6C96E4();

          v81 = v91;
          if ((v96 & 1) == 0)
          {

            goto LABEL_10;
          }
        }

        sub_21B6C9574();
        sub_21B6C95A4();
        sub_21B6C95B4();
        sub_21B6C9584();
      }

      else
      {

        v81 = v91;
      }

LABEL_10:
      v80 = (v80 + 1);
      v60 = v429;
      v77 = v431;
      if (v84 == v76)
      {
        v79 = v438[0];
        v78 = v432;
        break;
      }
    }
  }

  if ((v79 & 0x8000000000000000) != 0 || (v79 & 0x4000000000000000) != 0)
  {
    v97 = sub_21B6C9454();
    if (v97)
    {
LABEL_31:
      v438[0] = MEMORY[0x277D84F90];
      sub_21B6963C4(0, v97 & ~(v97 >> 63), 0);
      if (v97 < 0)
      {
        goto LABEL_97;
      }

      v78 = 0;
      v98 = v438[0];
      while (1)
      {
        v76 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          goto LABEL_45;
        }

        if ((v79 & 0xC000000000000001) != 0)
        {
          v99 = MEMORY[0x21CEF66E0](v78, v79);
        }

        else
        {
          if (v78 >= *(v79 + 16))
          {
            goto LABEL_46;
          }

          v99 = *(v79 + 8 * v78 + 32);
        }

        v100 = v99;
        v101 = [v99 _path];
        v102 = [v101 serverIdentity];

        if (!v102)
        {
          break;
        }

        v103 = [v102 posterUUID];

        v104 = v430;
        sub_21B6C88A4();

        v438[0] = v98;
        v106 = v98[2];
        v105 = v98[3];
        v60 = v106 + 1;
        if (v106 >= v105 >> 1)
        {
          sub_21B6963C4(v105 > 1, v106 + 1, 1);
          v98 = v438[0];
        }

        v98[2] = v60;
        (*(v434 + 32))(v98 + ((*(v434 + 80) + 32) & ~*(v434 + 80)) + *(v434 + 72) * v106, v104, v432);
        ++v78;
        if (v76 == v97)
        {

          v77 = v431;
          v78 = v432;
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_214:
      __break(1u);
      goto LABEL_215;
    }
  }

  else
  {
    v97 = *(v79 + 16);
    if (v97)
    {
      goto LABEL_31;
    }
  }

  v98 = MEMORY[0x277D84F90];
LABEL_51:
  v107 = sub_21B699EC8(v98);

  v108 = [v433 sourceIdentity];
  v109 = [v108 posterUUID];

  v110 = v419;
  sub_21B6C88A4();

  v400 = v107;
  v111 = v110;
  LOBYTE(v110) = sub_21B66FC04(v110, v107);
  v76 = v434 + 8;
  v398 = *(v434 + 8);
  v398(v111, v78);
  v97 = v426;
  v112 = MEMORY[0x277D84F90];
  if (v110)
  {
    if (qword_28120B3A0 != -1)
    {
      goto LABEL_98;
    }

    goto LABEL_53;
  }

  v397 = v76;
  v127 = [v424 configurations];
  v76 = sub_21B6C8E84();

  v438[0] = v112;
  if (v76 >> 62)
  {
    v128 = sub_21B6C9454();
  }

  else
  {
    v128 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v129 = MEMORY[0x277D84F90];
  if (!v128)
  {
LABEL_78:

    if ((v129 & 0x8000000000000000) != 0 || (v129 & 0x4000000000000000) != 0)
    {
      v97 = sub_21B6C9454();
      v77 = v431;
      v78 = v432;
      v76 = v397;
      if (v97)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v97 = *(v129 + 16);
      v77 = v431;
      v78 = v432;
      v76 = v397;
      if (v97)
      {
LABEL_81:
        v438[0] = MEMORY[0x277D84F90];
        sub_21B6963C4(0, v97 & ~(v97 >> 63), 0);
        if (v97 < 0)
        {
          __break(1u);
          goto LABEL_208;
        }

        v76 = 0;
        v144 = v438[0];
        do
        {
          v78 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
            goto LABEL_95;
          }

          if ((v129 & 0xC000000000000001) != 0)
          {
            v145 = MEMORY[0x21CEF66E0](v76, v129);
          }

          else
          {
            if (v76 >= *(v129 + 16))
            {
              goto LABEL_96;
            }

            v145 = *(v129 + 8 * v76 + 32);
          }

          v146 = v145;
          v147 = [v145 _path];
          v148 = [v147 serverIdentity];

          if (!v148)
          {
            goto LABEL_214;
          }

          v149 = [v148 posterUUID];

          v77 = v425;
          sub_21B6C88A4();

          v438[0] = v144;
          v151 = v144[2];
          v150 = v144[3];
          if (v151 >= v150 >> 1)
          {
            sub_21B6963C4(v150 > 1, v151 + 1, 1);
            v144 = v438[0];
          }

          v144[2] = v151 + 1;
          (*(v434 + 32))(v144 + ((*(v434 + 80) + 32) & ~*(v434 + 80)) + *(v434 + 72) * v151, v77, v432);
          ++v76;
        }

        while (v78 != v97);

        v77 = v431;
        v78 = v432;
        v76 = v397;
LABEL_102:
        v152 = sub_21B699EC8(v144);

        v435 = v152;
        sub_21B629200(v400);
        v153 = v434;
        v97 = v426;
        if (*(v435 + 2) == 1)
        {
          v154 = v411;
          sub_21B623F90(v435, v411);
          result = (*(v153 + 48))(v154, 1, v78);
          if (result == 1)
          {
LABEL_224:
            __break(1u);
            return result;
          }

          v156 = *(v153 + 32);
          v157 = v415;
          v156(v415, v154, v78);
          v76 = *(v153 + 16);
          v158 = v420;
          (v76)(v420, v157, v78);
          (*(v153 + 56))(v158, 0, 1, v78);
          if (!v410)
          {

            if (qword_28120B3A0 != -1)
            {
              swift_once();
            }

            v224 = sub_21B6C8AB4();
            __swift_project_value_buffer(v224, qword_28120CD90);
            v225 = sub_21B6C9044();
            v226 = v408;
            v179 = v415;
            v78 = v432;
            (v76)(v408, v415, v432);
            v227 = v433;
            v228 = sub_21B6C8A94();

            if (os_log_type_enabled(v228, v225))
            {
              v229 = swift_slowAlloc();
              v230 = swift_slowAlloc();
              v231 = swift_slowAlloc();
              v438[0] = v231;
              *v229 = 138412546;
              v232 = [v227 sourceIdentity];
              *(v229 + 4) = v232;
              *v230 = v232;
              *(v229 + 12) = 2080;
              sub_21B61E450(&unk_27CD93530);
              v233 = sub_21B6C9654();
              v235 = v234;
              v236 = v226;
              v76 = v397;
              v192 = v398;
              v398(v236, v78);
              v237 = sub_21B656178(v233, v235, v438);
              v179 = v415;

              *(v229 + 14) = v237;
              _os_log_impl(&dword_21B526000, v228, v225, "PosterStore ingested poster %@ as %s", v229, 0x16u);
              sub_21B62AA8C(v230, &qword_27CD92EF0);
              MEMORY[0x21CEF8150](v230, -1, -1);
              __swift_destroy_boxed_opaque_existential_0(v231);
              MEMORY[0x21CEF8150](v231, -1, -1);
              MEMORY[0x21CEF8150](v229, -1, -1);
            }

            else
            {

              v254 = v226;
              v76 = v397;
              v192 = v398;
              v398(v254, v78);
            }

            v125 = 0;
            v126 = v422;
            v97 = v426;
            v77 = v431;
            goto LABEL_143;
          }

          v159 = v410;
          [v424 mutableCopy];
          sub_21B6C93E4();
          swift_unknownObjectRelease();
          swift_dynamicCast();
          v160 = v437;
          v161 = OBJC_IVAR___PBFPosterPair_configuration;
          v162 = [*(&v159->isa + OBJC_IVAR___PBFPosterPair_configuration) _path];
          v163 = [v162 serverIdentity];

          if (!v163)
          {

            if (qword_28120B3A0 != -1)
            {
              swift_once();
            }

            v238 = sub_21B6C8AB4();
            __swift_project_value_buffer(v238, qword_28120CD90);
            v239 = sub_21B6C9024();
            v240 = v159;
            v241 = sub_21B6C8A94();

            v242 = os_log_type_enabled(v241, v239);
            v77 = v431;
            v76 = v397;
            if (v242)
            {
              v243 = swift_slowAlloc();
              v244 = swift_slowAlloc();
              *v243 = 138412290;
              v245 = *(&v159->isa + v161);
              *(v243 + 4) = v245;
              *v244 = v245;
              v246 = v245;
              _os_log_impl(&dword_21B526000, v241, v239, "PosterStore failed to find uuid of pair to be replaced %@", v243, 0xCu);
              sub_21B62AA8C(v244, &qword_27CD92EF0);
              MEMORY[0x21CEF8150](v244, -1, -1);
              MEMORY[0x21CEF8150](v243, -1, -1);
            }

            v125 = 0;
            v126 = v422;
            v97 = v426;
            v78 = v432;
            v398(v415, v432);
            goto LABEL_144;
          }

          v427 = v159;
          v164 = [v163 posterUUID];

          v165 = v409;
          sub_21B6C88A4();

          v166 = v413;
          v156(v413, v165, v432);
          v167 = [v160 configurations];
          v168 = sub_21B6C8E84();

          MEMORY[0x28223BE20](v169);
          *(&v393 - 2) = v166;
          v170 = v396;
          sub_21B64763C(sub_21B62AA6C, (&v393 - 4), v168);
          v428 = v171;
          LOBYTE(v167) = v172;

          v430 = v160;
          v173 = [v160 configurations];
          v174 = sub_21B6C8E84();

          MEMORY[0x28223BE20](v175);
          *(&v393 - 2) = v415;
          sub_21B64763C(sub_21B62AB38, (&v393 - 4), v174);
          v177 = v176;
          v179 = v178;

          v396 = v170;
          if (v167 & 1) != 0 || (v179)
          {
            if (qword_28120B3A0 == -1)
            {
              goto LABEL_109;
            }

            goto LABEL_212;
          }

          v274 = v428;
          v275 = v407;
          if (v428 == v177)
          {
            v78 = v430;
            if (qword_28120B3A0 == -1)
            {
LABEL_161:
              v276 = sub_21B6C8AB4();
              __swift_project_value_buffer(v276, qword_28120CD90);
              v277 = sub_21B6C9044();
              v278 = v404;
              v279 = v432;
              (v76)(v404, v413, v432);
              v280 = sub_21B6C8A94();
              if (os_log_type_enabled(v280, v277))
              {
                v281 = swift_slowAlloc();
                v282 = swift_slowAlloc();
                v438[0] = v282;
                *v281 = 136315138;
                sub_21B61E450(&unk_27CD93530);
                v283 = sub_21B6C9654();
                v285 = v284;
                v286 = v278;
                v76 = v397;
                v192 = v398;
                v398(v286, v279);
                v287 = sub_21B656178(v283, v285, v438);

                *(v281 + 4) = v287;
                _os_log_impl(&dword_21B526000, v280, v277, "PosterStore replacement is the same as ingested - no need for further changes: %s", v281, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v282);
                MEMORY[0x21CEF8150](v282, -1, -1);
                MEMORY[0x21CEF8150](v281, -1, -1);
              }

              else
              {

                v340 = v278;
                v76 = v397;
                v192 = v398;
                v398(v340, v279);
              }

              v78 = v279;
              v125 = 0;
              goto LABEL_142;
            }

LABEL_215:
            swift_once();
            goto LABEL_161;
          }

          v288 = [v430 configurations];
          v289 = sub_21B6C8E84();

          if ((v289 & 0xC000000000000001) != 0)
          {
            v425 = MEMORY[0x21CEF66E0](v274, v289);
            v290 = v405;
          }

          else
          {
            v290 = v405;
            if ((v274 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_218;
            }

            if (v274 >= *((v289 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_220;
            }

            v425 = *(v289 + 8 * v274 + 32);
          }

          v291 = [v430 configurations];
          v289 = sub_21B6C8E84();

          if ((v289 & 0xC000000000000001) == 0)
          {
            if ((v177 & 0x8000000000000000) == 0)
            {
              if (v177 < *((v289 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v292 = *(v289 + 8 * v177 + 32);
                goto LABEL_171;
              }

LABEL_221:
              __break(1u);
              goto LABEL_222;
            }

LABEL_220:
            __break(1u);
            goto LABEL_221;
          }

LABEL_218:
          v292 = MEMORY[0x21CEF66E0](v177, v289);
LABEL_171:
          v293 = v292;

          v294 = v430;
          v295 = [v430 configurations];
          v296 = sub_21B6C8E84();

          v438[0] = v296;
          sub_21B6241EC(v428, v177);
          v297 = sub_21B6C8E74();

          [v294 setConfigurations:v297];

          sub_21B61785C(0, &qword_28120B120);
          v298 = [v294 selectedConfiguration];
          LOBYTE(v297) = sub_21B6C91A4();

          if (v297)
          {
            [v294 setSelectedConfiguration:v293];
          }

          v419 = v293;
          v299 = [v294 activeConfiguration];
          v300 = v394;
          if (v299)
          {
            v301 = v299;
            v302 = v425;
            v303 = sub_21B6C91A4();

            v275 = v407;
            if (v303)
            {
              [v294 setDesiredActiveConfiguration:v419];
            }
          }

          [v294 removeConfiguration:v425];
          v304 = [*(v275 + v300) dataStore];
          v305 = sub_21B6C8D74();
          v437 = 0;

          v125 = v437 == 0;
          v306 = qword_28120B3A0;
          if (!v437)
          {
            v179 = v415;
            if (qword_28120B3A0 != -1)
            {
              swift_once();
            }

            v341 = sub_21B6C8AB4();
            __swift_project_value_buffer(v341, qword_28120CD90);
            v342 = sub_21B6C9044();
            v343 = v401;
            v78 = v432;
            (v76)(v401, v179, v432);
            v344 = v402;
            (v76)(v402, v413, v78);
            v345 = v433;
            v346 = sub_21B6C8A94();

            LODWORD(v433) = v342;
            if (os_log_type_enabled(v346, v342))
            {
              v347 = swift_slowAlloc();
              v348 = swift_slowAlloc();
              LODWORD(v428) = v125;
              v349 = v348;
              v411 = swift_slowAlloc();
              v437 = v411;
              *v347 = 138412802;
              v350 = [v345 sourceIdentity];
              *(v347 + 4) = v350;
              *v349 = v350;
              *(v347 + 12) = 2080;
              sub_21B61E450(&unk_27CD93530);
              v351 = v346;
              v352 = sub_21B6C9654();
              v354 = v353;
              v355 = v343;
              v76 = v397;
              v356 = v398;
              v398(v355, v78);
              v357 = sub_21B656178(v352, v354, &v437);

              *(v347 + 14) = v357;
              *(v347 + 22) = 2080;
              v358 = sub_21B6C9654();
              v360 = v359;
              v356(v344, v78);
              v361 = sub_21B656178(v358, v360, &v437);
              v179 = v415;

              *(v347 + 24) = v361;
              _os_log_impl(&dword_21B526000, v351, v433, "PosterStore ingested poster %@ as %s replacing %s", v347, 0x20u);
              sub_21B62AA8C(v349, &qword_27CD92EF0);
              v362 = v349;
              v125 = v428;
              MEMORY[0x21CEF8150](v362, -1, -1);
              v363 = v411;
              swift_arrayDestroy();
              MEMORY[0x21CEF8150](v363, -1, -1);
              MEMORY[0x21CEF8150](v347, -1, -1);
            }

            else
            {

              v76 = v397;
              v366 = v343;
              v367 = v398;
              v398(v344, v78);
              v367(v366, v78);
            }

            v126 = v422;
            v77 = v431;
            v368 = v427;
            sub_21B6276B0(0, 0);

            v97 = v426;
            v365 = v430;
LABEL_189:

            v192 = v398;
            v398(v413, v78);
            goto LABEL_143;
          }

          LODWORD(v428) = 0;
          v289 = v437;
          v179 = v415;
          if (v306 == -1)
          {
LABEL_178:
            v307 = sub_21B6C8AB4();
            __swift_project_value_buffer(v307, qword_28120CD90);
            v308 = sub_21B6C9044();
            v309 = v403;
            v310 = v432;
            (v76)(v403, v179, v432);
            v311 = v290;
            (v76)(v290, v413, v310);
            v312 = v433;
            v313 = v289;
            v314 = sub_21B6C8A94();

            LODWORD(v433) = v308;
            if (os_log_type_enabled(v314, v308))
            {
              v315 = swift_slowAlloc();
              v428 = v314;
              v316 = v309;
              v317 = v315;
              v318 = swift_slowAlloc();
              v411 = v318;
              v319 = swift_slowAlloc();
              v437 = v319;
              *v317 = 138413058;
              v320 = [v312 sourceIdentity];
              *(v317 + 4) = v320;
              *v318 = v320;
              *(v317 + 12) = 2080;
              sub_21B61E450(&unk_27CD93530);
              v321 = sub_21B6C9654();
              v322 = v313;
              v324 = v323;
              v325 = v316;
              v76 = v397;
              v326 = v311;
              v192 = v398;
              v398(v325, v310);
              v327 = sub_21B656178(v321, v324, &v437);

              *(v317 + 14) = v327;
              *(v317 + 22) = 2080;
              v328 = sub_21B6C9654();
              v330 = v329;
              v192(v326, v310);
              v331 = sub_21B656178(v328, v330, &v437);

              *(v317 + 24) = v331;
              *(v317 + 32) = 2080;
              v332 = [v322 localizedDescription];
              v333 = sub_21B6C8DA4();
              v335 = v334;

              v336 = v333;
              v179 = v415;
              v337 = sub_21B656178(v336, v335, &v437);

              *(v317 + 34) = v337;
              v338 = v428;
              _os_log_impl(&dword_21B526000, v428, v433, "PosterStore failed to select poster %@ as %s replacing %s due to error %s", v317, 0x2Au);
              v339 = v411;
              sub_21B62AA8C(v411, &qword_27CD92EF0);
              MEMORY[0x21CEF8150](v339, -1, -1);
              swift_arrayDestroy();
              MEMORY[0x21CEF8150](v319, -1, -1);
              MEMORY[0x21CEF8150](v317, -1, -1);

              v125 = 0;
              v78 = v310;
              v126 = v422;
              v97 = v426;
              v77 = v431;
              v192(v413, v310);
              goto LABEL_143;
            }

            v76 = v397;
            v364 = v398;
            v398(v290, v310);
            v364(v309, v310);
            v365 = v313;
            v78 = v310;
            v126 = v422;
            v97 = v426;
            v77 = v431;
            v125 = v428;
            goto LABEL_189;
          }

LABEL_222:
          swift_once();
          goto LABEL_178;
        }

        if (qword_28120B3A0 == -1)
        {
LABEL_112:
          v202 = sub_21B6C8AB4();
          __swift_project_value_buffer(v202, qword_28120CD90);
          LODWORD(v203) = sub_21B6C9024();
          v204 = v433;
          v205 = v424;
          v206 = sub_21B6C8A94();

          if (!os_log_type_enabled(v206, v203))
          {

            v223 = v420;
            goto LABEL_137;
          }

          v207 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v438[0] = v77;
          *v207 = 138412546;
          v208 = [v204 sourceIdentity];
          *(v207 + 4) = v208;
          *v78 = v208;
          *(v207 + 6) = 2080;
          v209 = [v205 configurations];
          v76 = sub_21B6C8E84();

          if (v76 >> 62)
          {
            goto LABEL_210;
          }

          v210 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_115;
        }

LABEL_208:
        swift_once();
        goto LABEL_112;
      }
    }

    v144 = MEMORY[0x277D84F90];
    goto LABEL_102;
  }

  v130 = 0;
  v430 = (v76 & 0xC000000000000001);
  v427 = v128;
  v428 = (v76 & 0xFFFFFFFFFFFFFF8);
  v131 = &selRef_newAssertionForBundleIdentifier_withReason_level_;
  while (1)
  {
    if (v430)
    {
      v132 = MEMORY[0x21CEF66E0](v130, v76);
    }

    else
    {
      if (v130 >= v428[2].isa)
      {
        goto LABEL_94;
      }

      v132 = *(v76 + 8 * v130 + 32);
    }

    v78 = v132;
    v133 = (v130 + 1);
    if (__OFADD__(v130, 1))
    {
      break;
    }

    v134 = [v132 _path];
    v135 = [v134 serverIdentity];

    if (v135)
    {
      v136 = [v135 v131[404]];

      v135 = sub_21B6C8DA4();
      v138 = v137;
    }

    else
    {
      v138 = 0;
    }

    v139 = [v433 sourceIdentity];
    v97 = v131;
    v140 = [v139 v131[404]];

    v141 = sub_21B6C8DA4();
    v77 = v142;

    if (v138)
    {
      if (v135 == v141 && v138 == v77)
      {

        v131 = v97;
      }

      else
      {
        v143 = sub_21B6C96E4();

        v131 = v97;
        if ((v143 & 1) == 0)
        {

          goto LABEL_61;
        }
      }

      sub_21B6C9574();
      sub_21B6C95A4();
      sub_21B6C95B4();
      sub_21B6C9584();
    }

    else
    {

      v131 = v97;
    }

LABEL_61:
    v130 = (v130 + 1);
    if (v133 == v427)
    {
      v129 = v438[0];
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  swift_once();
LABEL_53:
  v113 = sub_21B6C8AB4();
  __swift_project_value_buffer(v113, qword_28120CD90);
  v114 = sub_21B6C9044();
  v115 = v433;
  v116 = sub_21B6C8A94();

  if (os_log_type_enabled(v116, v114))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v117 = 138412290;
    v119 = [v115 sourceIdentity];
    *(v117 + 4) = v119;
    *v118 = v119;
    _os_log_impl(&dword_21B526000, v116, v114, "PosterStore updated poster %@", v117, 0xCu);
    sub_21B62AA8C(v118, &qword_27CD92EF0);
    v120 = v118;
    v97 = v426;
    MEMORY[0x21CEF8150](v120, -1, -1);
    MEMORY[0x21CEF8150](v117, -1, -1);
  }

  v121 = [v115 sourceIdentity];
  v122 = [v121 posterUUID];

  v123 = v420;
  sub_21B6C88A4();

  v124 = v434;
  (*(v434 + 56))(v123, 0, 1, v78);
  v125 = 0;
  v126 = v422;
  while (2)
  {
    v256 = v123;
    v257 = v418;
    sub_21B62A994(v256, v418);
    v258 = *(v124 + 48);
    v433 = (v124 + 48);
    v430 = v258;
    if ((v258)(v257, 1, v78) == 1)
    {
      sub_21B62AA8C(v257, &qword_27CD92EE8);
      v259 = v398;
      goto LABEL_196;
    }

    v260 = v257;
    v261 = v416;
    (*(v124 + 32))(v416, v260, v78);
    v262 = [v424 configurations];
    v263 = sub_21B6C8E84();

    MEMORY[0x28223BE20](v264);
    *(&v393 - 2) = v261;
    v265 = sub_21B61F748(sub_21B62AA04, (&v393 - 4), v263);

    v126 = v422;
    if (v265)
    {
      v427 = v265;
      LODWORD(v428) = v125;
      v206 = [objc_opt_self() defaultConfigurationDefinitions];
      v425 = sub_21B61785C(0, &qword_28120B238);
      v266 = sub_21B6C8E84();

      if (v266 >> 62)
      {
        v203 = sub_21B6C9454();
        if (!v203)
        {
LABEL_191:

          v268 = MEMORY[0x277D84F90];
LABEL_192:
          v369 = sub_21B69A064(v268);

          sub_21B6247E4(v370, v369);
          v372 = v371;
          v373 = objc_opt_self();
          v374 = v427;
          v375 = [v373 snapshotRequestForConfiguration:v427 context:v97];
          sub_21B61F0DC(v372);

          v376 = sub_21B6C8E74();

          v377 = [v375 requestWithDefinitions_];

          LOBYTE(v125) = v428;
          if (v414 > 0)
          {
            v378 = [v377 requestWithSignificantEventsCounter_];

            v377 = v378;
          }

          v261 = v416;
          sub_21B61FB2C(v374, v377, CGPointMake, 0);

          break;
        }
      }

      else
      {
        v203 = *((v266 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v203)
        {
          goto LABEL_191;
        }
      }

      v397 = v76;
      v438[0] = MEMORY[0x277D84F90];
      v207 = v438;
      sub_21B6963A4(0, v203 & ~(v203 >> 63), 0);
      if ((v203 & 0x8000000000000000) == 0)
      {
        v267 = 0;
        v268 = v438[0];
        do
        {
          if ((v266 & 0xC000000000000001) != 0)
          {
            v269 = MEMORY[0x21CEF66E0](v267, v266);
          }

          else
          {
            v269 = *(v266 + 8 * v267 + 32);
          }

          v270 = v269;
          v271 = [v269 uniqueIdentifier];

          v438[0] = v268;
          v273 = v268[2];
          v272 = v268[3];
          if (v273 >= v272 >> 1)
          {
            sub_21B6963A4((v272 > 1), v273 + 1, 1);
            v268 = v438[0];
          }

          ++v267;
          v268[2] = v273 + 1;
          v268[v273 + 4] = v271;
          v97 = v426;
        }

        while (v203 != v267);

        v78 = v432;
        v126 = v422;
        goto LABEL_192;
      }

      __break(1u);
LABEL_210:
      v210 = sub_21B6C9454();
LABEL_115:
      v433 = v207;
      v430 = v77;
      v428 = v78;
      if (v210)
      {
        LODWORD(v425) = v203;
        v427 = v206;
        v437 = MEMORY[0x277D84F90];
        sub_21B696384(0, v210 & ~(v210 >> 63), 0);
        if ((v210 & 0x8000000000000000) == 0)
        {
          v211 = 0;
          v212 = v437;
          do
          {
            if ((v76 & 0xC000000000000001) != 0)
            {
              v213 = MEMORY[0x21CEF66E0](v211, v76);
            }

            else
            {
              v213 = *(v76 + 8 * v211 + 32);
            }

            v214 = v213;
            v215 = [v213 _path];
            v216 = [v215 serverIdentity];

            v436 = v216;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92F10);
            v217 = sub_21B6C8DB4();
            v219 = v218;

            v437 = v212;
            isa = v212[2].isa;
            v220 = v212[3].isa;
            if (isa >= v220 >> 1)
            {
              sub_21B696384((v220 > 1), isa + 1, 1);
              v212 = v437;
            }

            ++v211;
            v212[2].isa = (isa + 1);
            v222 = &v212[2 * isa];
            v222[4].isa = v217;
            v222[5].isa = v219;
            v97 = v426;
          }

          while (v210 != v211);

          v206 = v427;
          LOBYTE(v203) = v425;
          goto LABEL_136;
        }

        __break(1u);
LABEL_212:
        swift_once();
LABEL_109:
        v180 = sub_21B6C8AB4();
        __swift_project_value_buffer(v180, qword_28120CD90);
        v181 = sub_21B6C9024();
        v182 = v406;
        v183 = v432;
        (v76)(v406, v413, v432);
        v184 = v433;
        v185 = sub_21B6C8A94();

        if (os_log_type_enabled(v185, v181))
        {
          v186 = swift_slowAlloc();
          v433 = swift_slowAlloc();
          v438[0] = v433;
          *v186 = 136315394;
          sub_21B61E450(&unk_27CD93530);
          v187 = sub_21B6C9654();
          v189 = v188;
          v190 = v182;
          v191 = v397;
          v192 = v398;
          v398(v190, v183);
          v193 = sub_21B656178(v187, v189, v438);

          *(v186 + 4) = v193;
          *(v186 + 12) = 2080;
          v194 = [v184 sourceIdentity];
          v195 = [v194 posterUUID];

          v196 = v419;
          sub_21B6C88A4();

          v76 = v191;
          v197 = sub_21B6C9654();
          v199 = v198;
          v192(v196, v183);
          v200 = sub_21B656178(v197, v199, v438);

          *(v186 + 14) = v200;
          _os_log_impl(&dword_21B526000, v185, v181, "PosterStore failed to find replacement info: uuidOfReplaced=%s uuidOfIngested=%s", v186, 0x16u);
          v201 = v433;
          swift_arrayDestroy();
          MEMORY[0x21CEF8150](v201, -1, -1);
          MEMORY[0x21CEF8150](v186, -1, -1);
        }

        else
        {

          v255 = v182;
          v76 = v397;
          v192 = v398;
          v398(v255, v183);
        }

        v125 = 0;
        v78 = v183;
LABEL_142:
        v126 = v422;
        v97 = v426;
        v77 = v431;
        v179 = v415;
        v192(v413, v78);
LABEL_143:
        v192(v179, v78);
      }

      else
      {

        v212 = MEMORY[0x277D84F90];
LABEL_136:
        v437 = v212;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92F18);
        sub_21B62AA24(&qword_28120B350, &qword_27CD92F18);
        v247 = sub_21B6C8D54();
        v249 = v248;

        v250 = sub_21B656178(v247, v249, v438);

        v251 = v433;
        *(v433 + 14) = v250;
        _os_log_impl(&dword_21B526000, v206, v203, "PosterStore cannot find result of ingested poster: %@ :configs={\n\t%s\n}", v251, 0x16u);
        v252 = v428;
        sub_21B62AA8C(v428, &qword_27CD92EF0);
        MEMORY[0x21CEF8150](v252, -1, -1);
        v253 = v430;
        __swift_destroy_boxed_opaque_existential_0(v430);
        MEMORY[0x21CEF8150](v253, -1, -1);
        MEMORY[0x21CEF8150](v251, -1, -1);

        v77 = v431;
        v78 = v432;
        v223 = v420;
        v76 = v397;
LABEL_137:
        (*(v434 + 56))(v223, 1, 1, v78);
        v125 = 0;
        v126 = v422;
      }

LABEL_144:
      v124 = v434;
      v123 = v420;
      continue;
    }

    break;
  }

  v259 = v398;
  v398(v261, v78);
LABEL_196:
  v379 = v421;
  v380 = v417;
  if (v125)
  {

    v381 = v430;
    goto LABEL_203;
  }

  v382 = v420;
  sub_21B62A994(v420, v417);
  v381 = v430;
  if ((v430)(v380, 1, v78) != 1)
  {
    sub_21B62AA8C(v380, &qword_27CD92EE8);
    v385 = v412;
    sub_21B62A994(v382, v412);
    result = (v381)(v385, 1, v78);
    if (result != 1)
    {

      v386 = v385;
      v387 = sub_21B6C8874();
      v384 = v388;
      v259(v386, v78);
      v383 = v387;
      v126 = v422;
      goto LABEL_202;
    }

    __break(1u);
    goto LABEL_224;
  }

  sub_21B62AA8C(v380, &qword_27CD92EE8);
  v383 = 0;
  v384 = 0;
LABEL_202:
  sub_21B6276B0(v383, v384);
  v379 = v421;
LABEL_203:

  v389 = v420;
  sub_21B62A994(v420, v379);
  if ((v381)(v379, 1, v78) == 1)
  {
    sub_21B62AA8C(v389, &qword_27CD92EE8);

    sub_21B62AA8C(v379, &qword_27CD92EE8);
    return 0;
  }

  (*(v434 + 32))(v126, v379, v78);
  v390 = sub_21B6C8874();
  v392 = sub_21B61F5F8(v390, v391);

  v259(v126, v78);
  sub_21B62AA8C(v389, &qword_27CD92EE8);
  return v392;
}

uint64_t sub_21B623F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B6C9414();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_21B6295F0(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_21B6C88C4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_21B62404C(id *a1)
{
  v2 = sub_21B6C88C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = [*a1 _path];
  v10 = [v9 serverIdentity];

  if (v10)
  {
    v11 = [v10 posterUUID];

    sub_21B6C88A4();
    (*(v3 + 32))(v8, v6, v2);
    v12 = sub_21B6C8894();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_21B6241EC(unint64_t a1, unint64_t a2)
{
  if (a1 != a2)
  {
    v6 = *v2;
    if ((*v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x21CEF66E0](a1, *v2);
      v9 = MEMORY[0x21CEF66E0](a2, v6);
      goto LABEL_7;
    }

    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 > a1)
      {
        if (v7 > a2)
        {
          v8 = *(v6 + 32 + 8 * a2);
          v3 = *(v6 + 32 + 8 * a1);
          v9 = v8;
LABEL_7:
          v10 = v9;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
          {
            v6 = sub_21B69F91C(v6);
            v11 = (v6 >> 62) & 1;
          }

          else
          {
            LODWORD(v11) = 0;
          }

          v12 = v6 & 0xFFFFFFFFFFFFFF8;
          v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
          *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = v10;

          if ((v6 & 0x8000000000000000) == 0 && !v11)
          {
            if ((a2 & 0x8000000000000000) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_23;
          }

LABEL_22:
          v6 = sub_21B69F91C(v6);
          v12 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((a2 & 0x8000000000000000) == 0)
          {
LABEL_15:
            if (*(v12 + 16) > a2)
            {
              v14 = v12 + 8 * a2;
              v15 = *(v14 + 32);
              *(v14 + 32) = v3;

              *v2 = v6;
              return;
            }

LABEL_24:
            __break(1u);
            return;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }
}

uint64_t sub_21B624328(id *a1, uint64_t a2)
{
  v32 = a2;
  v3 = sub_21B6C88C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD93370);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = [*a1 _path];
  v18 = [v17 serverIdentity];

  if (v18)
  {
    v19 = [v18 posterUUID];

    sub_21B6C88A4();
    v20 = *(v4 + 56);
    v20(v16, 0, 1, v3);
  }

  else
  {
    v20 = *(v4 + 56);
    v20(v16, 1, 1, v3);
  }

  (*(v4 + 16))(v14, v32, v3);
  v20(v14, 0, 1, v3);
  v21 = *(v6 + 48);
  sub_21B62A994(v16, v8);
  sub_21B62A994(v14, &v8[v21]);
  v22 = *(v4 + 48);
  if (v22(v8, 1, v3) != 1)
  {
    v24 = v31;
    sub_21B62A994(v8, v31);
    if (v22(&v8[v21], 1, v3) != 1)
    {
      v25 = &v8[v21];
      v26 = v30;
      (*(v4 + 32))(v30, v25, v3);
      sub_21B61E450(&qword_27CD92F20);
      v23 = sub_21B6C8D64();
      v27 = *(v4 + 8);
      v27(v26, v3);
      sub_21B62AA8C(v14, &qword_27CD92EE8);
      sub_21B62AA8C(v16, &qword_27CD92EE8);
      v27(v31, v3);
      sub_21B62AA8C(v8, &qword_27CD92EE8);
      return v23 & 1;
    }

    sub_21B62AA8C(v14, &qword_27CD92EE8);
    sub_21B62AA8C(v16, &qword_27CD92EE8);
    (*(v4 + 8))(v24, v3);
    goto LABEL_9;
  }

  sub_21B62AA8C(v14, &qword_27CD92EE8);
  sub_21B62AA8C(v16, &qword_27CD92EE8);
  if (v22(&v8[v21], 1, v3) != 1)
  {
LABEL_9:
    sub_21B62AA8C(v8, &unk_27CD93370);
    v23 = 0;
    return v23 & 1;
  }

  sub_21B62AA8C(v8, &qword_27CD92EE8);
  v23 = 1;
  return v23 & 1;
}

void sub_21B6247E4(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_21B61A034(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_21B6248D8(unint64_t a1)
{
  v24[4] = *MEMORY[0x277D85DE8];
  if ((v1[OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex + 8] & 1) != 0 || *&v1[OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex] != a1 || v1[OBJC_IVAR____TtC11PosterBoard11PosterStore_forcePersistSelectionForFocusUpdate] == 1)
  {
    v3 = OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig;
    [*&v1[OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig] mutableCopy];
    sub_21B6C93E4();
    swift_unknownObjectRelease();
    sub_21B61785C(0, &unk_28120B1E0);
    swift_dynamicCast();
    v4 = [*&v1[v3] configurations];
    sub_21B61785C(0, &qword_28120B290);
    v5 = sub_21B6C8E84();

    if ((v5 & 0xC000000000000001) == 0)
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v6 = *(v5 + 8 * a1 + 32);
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_24;
    }

    v6 = MEMORY[0x21CEF66E0](a1, v5);
LABEL_8:
    v4 = v6;

    v7 = [*&v1[v3] focusConfigurationForPoster_];
    if (v7)
    {
    }

    else
    {
      [v23 setSelectedConfiguration_];
    }

    [v23 setDesiredActiveConfiguration_];
    v8 = OBJC_IVAR____TtC11PosterBoard11PosterStore_glue;
    v9 = [*&v1[OBJC_IVAR____TtC11PosterBoard11PosterStore_glue] dataStore];
    v10 = sub_21B6C8D74();
    v24[0] = 0;

    if (!v24[0])
    {
      sub_21B6276B0(0, 0);
      if (v1[OBJC_IVAR____TtC11PosterBoard11PosterStore_forcePersistSelectionForFocusUpdate] != 1)
      {
LABEL_19:

        return;
      }

      v1[OBJC_IVAR____TtC11PosterBoard11PosterStore_forcePersistSelectionForFocusUpdate] = 0;
      v15 = [*&v1[v8] dataStore];
      [v15 updateFocusModeForActivePosterChange];
LABEL_18:

      goto LABEL_19;
    }

    v11 = qword_28120B3A0;
    v1 = v24[0];
    if (v11 == -1)
    {
LABEL_13:
      v12 = sub_21B6C8AB4();
      __swift_project_value_buffer(v12, qword_28120CD90);
      v13 = sub_21B6C9024();
      v14 = v1;
      v15 = sub_21B6C8A94();

      if (os_log_type_enabled(v15, v13))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v24[0] = v17;
        *v16 = 134218242;
        *(v16 + 4) = a1;
        *(v16 + 12) = 2080;
        v18 = [v14 localizedDescription];
        v19 = sub_21B6C8DA4();
        v21 = v20;

        v22 = sub_21B656178(v19, v21, v24);

        *(v16 + 14) = v22;
        _os_log_impl(&dword_21B526000, v15, v13, "PosterStore failed to persist new selection index: %ld due to error: %s", v16, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x21CEF8150](v17, -1, -1);
        MEMORY[0x21CEF8150](v16, -1, -1);

        return;
      }

      goto LABEL_18;
    }

LABEL_24:
    swift_once();
    goto LABEL_13;
  }
}

BOOL sub_21B624D1C(void *a1, char *a2)
{
  v4 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
LABEL_22:
    v6 = sub_21B6C9454();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = a2;
  a2 += OBJC_IVAR___PBFPosterPair_id;

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {

      return 0;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x21CEF66E0](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (*&v8[OBJC_IVAR___PBFPosterPair_id] == *a2 && *&v8[OBJC_IVAR___PBFPosterPair_id + 8] == *(a2 + 1))
    {
      break;
    }

    v11 = sub_21B6C96E4();

    ++v7;
    if (v11)
    {

      goto LABEL_18;
    }
  }

LABEL_18:
  v13 = a1;
  v12 = sub_21B6296B0(v16, v2, v13);

  return v12;
}

BOOL sub_21B624EA0(void *a1, unint64_t a2)
{
  v4 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
LABEL_22:
    v6 = sub_21B6C9454();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = a2;
  v7 = (a2 + OBJC_IVAR___PBFPosterPair_id);
  a2 = v5 & 0xC000000000000001;

  v8 = 0;
  while (1)
  {
    if (v6 == v8)
    {

      return 0;
    }

    if (a2)
    {
      v9 = MEMORY[0x21CEF66E0](v8, v5);
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (*&v9[OBJC_IVAR___PBFPosterPair_id] == *v7 && *&v9[OBJC_IVAR___PBFPosterPair_id + 8] == v7[1])
    {
      break;
    }

    v12 = sub_21B6C96E4();

    ++v8;
    if (v12)
    {

      goto LABEL_18;
    }
  }

LABEL_18:
  v14 = a1;
  v13 = sub_21B62A14C(v16, v2, a1);

  return v13;
}

void sub_21B625024(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a2;
  v35 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_21B6C88C4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = *&a1[OBJC_IVAR___PBFPosterPair_configuration];
  v17 = [v16 _path];
  v18 = [v17 serverIdentity];

  if (v18)
  {
    v19 = [v18 posterUUID];

    sub_21B6C88A4();
    sub_21B6C8874();

    v33 = *(v10 + 8);
    v33(v15, v9);
    sub_21B6C8864();

    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v13, v8, v9);
      v27 = [*(v4 + OBJC_IVAR____TtC11PosterBoard11PosterStore_glue) dataStore];
      v28 = sub_21B6C8884();
      v29 = swift_allocObject();
      v30 = v35;
      *(v29 + 16) = v34;
      *(v29 + 24) = v30;
      aBlock[4] = sub_21B62A7E0;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21B625498;
      aBlock[3] = &block_descriptor_108;
      v31 = _Block_copy(aBlock);

      [v27 duplicatePosterConfigurationMatchingUUID:v28 completion:v31];
      _Block_release(v31);

      v33(v13, v9);
      return;
    }

    sub_21B62AA8C(v8, &qword_27CD92EE8);
  }

  else
  {
  }

  if (qword_28120B3A0 != -1)
  {
    swift_once();
  }

  v20 = sub_21B6C8AB4();
  __swift_project_value_buffer(v20, qword_28120CD90);
  v21 = sub_21B6C9024();
  v22 = a1;
  v23 = sub_21B6C8A94();

  if (os_log_type_enabled(v23, v21))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v22;
    *v25 = v22;
    v26 = v22;
    _os_log_impl(&dword_21B526000, v23, v21, "Unable to find poster ID for %@", v24, 0xCu);
    sub_21B62AA8C(v25, &qword_27CD92EF0);
    MEMORY[0x21CEF8150](v25, -1, -1);
    MEMORY[0x21CEF8150](v24, -1, -1);
  }
}

uint64_t sub_21B625498(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_21B6C88A4();
    v10 = sub_21B6C88C4();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_21B6C88C4();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_21B62AA8C(v8, &qword_27CD92EE8);
}

void sub_21B6255EC(void *a1, void *a2)
{
  v36[4] = *MEMORY[0x277D85DE8];
  v5 = sub_21B6C88C4();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v36[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig) mutableCopy];
  sub_21B6C93E4();
  swift_unknownObjectRelease();
  sub_21B61785C(0, &unk_28120B1E0);
  swift_dynamicCast();
  v10 = v35;
  [v35 ingestNewPosterConfiguration:a1 toBeAssociatedWithHomeScreenConfiguration:a2];
  v11 = [*(v2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_glue) dataStore];
  v12 = sub_21B6C8D74();
  v36[0] = 0;

  if (v36[0])
  {
    v13 = qword_28120B3A0;
    v14 = v36[0];
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_21B6C8AB4();
    __swift_project_value_buffer(v15, qword_28120CD90);
    v16 = sub_21B6C9024();
    v17 = v14;
    v18 = a1;
    v19 = sub_21B6C8A94();

    if (os_log_type_enabled(v19, v16))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36[0] = v22;
      *v20 = 138412546;
      *(v20 + 4) = v18;
      *v21 = v18;
      *(v20 + 12) = 2080;
      v23 = v18;
      v24 = [v17 localizedDescription];
      v25 = sub_21B6C8DA4();
      v27 = v26;

      v28 = sub_21B656178(v25, v27, v36);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_21B526000, v19, v16, "PosterStore failed to ingest home poster: %@ due to error: %s", v20, 0x16u);
      sub_21B62AA8C(v21, &qword_27CD92EF0);
      MEMORY[0x21CEF8150](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x21CEF8150](v22, -1, -1);
      MEMORY[0x21CEF8150](v20, -1, -1);

      return;
    }

    goto LABEL_9;
  }

  v29 = [a2 _path];
  v30 = [v29 serverIdentity];

  if (v30)
  {
    v31 = [v30 posterUUID];

    sub_21B6C88A4();
    v32 = sub_21B6C8874();
    v34 = v33;
    (*(v6 + 8))(v9, v5);
    sub_21B6276B0(v32, v34);

LABEL_9:

    return;
  }

  __break(1u);
}

void sub_21B625CE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v13[4] = a6;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_21B63863C;
  v13[3] = a7;
  v11 = _Block_copy(v13);
  v12 = a1;

  BSDispatchMain();

  _Block_release(v11);
}

void sub_21B625DA4(void *a1)
{
  v2 = sub_21B6C88C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 _path];
  v7 = [v6 serverIdentity];

  if (v7)
  {
    v8 = [v7 posterUUID];

    sub_21B6C88A4();
    v9 = sub_21B6C8874();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    v12 = sub_21B61F5F8(v9, v11);

    if (v12)
    {
      v13 = *&v12[OBJC_IVAR___PBFPosterPair_configuration];
      *&v12[OBJC_IVAR___PBFPosterPair_configuration] = a1;
      v14 = a1;
      sub_21B6A1AA4();
    }
  }
}

void sub_21B625F5C(uint64_t a1, void *a2)
{
  v3 = sub_21B6C88C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a2 _path];
  v8 = [v7 serverIdentity];

  if (v8)
  {
    v9 = [v8 posterUUID];

    sub_21B6C88A4();
    v10 = sub_21B6C8874();
    v12 = v11;
    (*(v4 + 8))(v6, v3);
    sub_21B6276B0(v10, v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_21B626238(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v14[4] = a8;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_21B63863C;
  v14[3] = a9;
  v12 = _Block_copy(v14);
  v13 = a1;

  BSDispatchMain();

  _Block_release(v12);
}

void sub_21B6262FC(void *a1)
{
  v2 = sub_21B6C88C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 _path];
  v7 = [v6 serverIdentity];

  if (v7)
  {
    v8 = [v7 posterUUID];

    sub_21B6C88A4();
    v9 = sub_21B6C8874();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    v12 = sub_21B61F5F8(v9, v11);

    if (v12)
    {
      sub_21B6A2638();
    }
  }
}

void sub_21B62648C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a1;
  v17[4] = a6;
  v17[5] = v11;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_21B63863C;
  v17[3] = a7;
  v12 = _Block_copy(v17);
  v13 = a4;
  v14 = a1;
  v15 = v13;
  v16 = v14;

  BSDispatchMain();

  _Block_release(v12);
}

void sub_21B62656C(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = [*(a1 + OBJC_IVAR____TtC11PosterBoard11PosterStore_observers) allObjects];
  v4 = sub_21B6C8E84();

  if (v4 >> 62)
  {
    v5 = sub_21B6C9454();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CEF66E0](i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8 && v7)
    {
      a2(v7, v8);
    }

    swift_unknownObjectRelease();
  }

LABEL_13:
}

void sub_21B6266B4()
{
  v53 = sub_21B6C88C4();
  v1 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *&v0[OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex];
  v50 = &v0[OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex];
  LODWORD(v3) = v0[OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex + 8];
  v4 = OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig;
  v58 = v0;
  v5 = [*&v0[OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig] activeConfiguration];
  v6 = &selRef_displayNameSystemSymbolName;
  v7 = &selRef_removedAssocPosters;
  v57 = v4;
  if (v5)
  {
    v8 = v5;
    v9 = [v5 _path];
    v10 = [v9 serverIdentity];

    if (v10)
    {
      v11 = [v10 posterUUID];

      v12 = v52;
      sub_21B6C88A4();

      v54 = sub_21B6C8874();
      v56 = v13;

      (*(v1 + 8))(v12, v53);
    }

    else
    {

      v54 = 0;
      v56 = 0;
    }

    v4 = v57;
  }

  else
  {
    v54 = 0;
    v56 = 0;
  }

  v49 = v1;
  v14 = [*&v58[v4] configurations];
  sub_21B61785C(0, &qword_28120B290);
  v15 = sub_21B6C8E84();

  aBlock[0] = MEMORY[0x277D84F90];
  if (v15 >> 62)
  {
    goto LABEL_22;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v3; v16; i = v3)
  {
    v17 = 0;
    v3 = OBJC_IVAR____TtC11PosterBoard11PosterStore_posterFilter;
    v6 = (v15 & 0xC000000000000001);
    v7 = (v15 & 0xFFFFFFFFFFFFFF8);
    v55 = v15 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        v18 = MEMORY[0x21CEF66E0](v17, v15);
      }

      else
      {
        if (v17 >= v7[2])
        {
          goto LABEL_21;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if ([*&v58[v3] shouldIncludePosterConfiguration:v18 inSwitcherConfiguration:*&v58[v4]])
      {
        sub_21B6C9574();
        sub_21B6C95A4();
        v4 = v57;
        sub_21B6C95B4();
        sub_21B6C9584();
        v7 = v55;
      }

      else
      {
      }

      ++v17;
      if (v20 == v16)
      {
        v21 = aBlock[0];
        LOBYTE(v3) = i;
        v6 = &selRef_displayNameSystemSymbolName;
        v7 = &selRef_removedAssocPosters;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v16 = sub_21B6C9454();
  }

  v21 = MEMORY[0x277D84F90];
LABEL_24:

  if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
  {
LABEL_54:
    v22 = sub_21B6C9454();
    if (v22)
    {
      goto LABEL_27;
    }

LABEL_55:

LABEL_56:
    v41 = v50;
    *v50 = 0;
    v38 = 1;
    *(v41 + 8) = 1;
    if (v3)
    {
      return;
    }

    v23 = 0;
LABEL_58:
    v42 = swift_allocObject();
    v43 = v58;
    *(v42 + 16) = v58;
    *(v42 + 24) = v23;
    *(v42 + 32) = v38;
    v44 = swift_allocObject();
    v44[2] = v43;
    v44[3] = sub_21B62A7D4;
    v44[4] = v42;
    aBlock[4] = sub_21B62ABA8;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21B63863C;
    aBlock[3] = &block_descriptor_102;
    v45 = _Block_copy(aBlock);
    v46 = v43;

    BSDispatchMain();
    _Block_release(v45);

    return;
  }

  v22 = *(v21 + 16);
  if (!v22)
  {
    goto LABEL_55;
  }

LABEL_27:
  v23 = 0;
  v57 = v21 & 0xC000000000000001;
  v3 = v49 + 8;
  while (1)
  {
    if (v57)
    {
      v24 = MEMORY[0x21CEF66E0](v23, v21);
    }

    else
    {
      if (v23 >= *(v21 + 16))
      {
        __break(1u);
        goto LABEL_54;
      }

      v24 = *(v21 + 8 * v23 + 32);
    }

    v25 = v24;
    v26 = [v24 v6[498]];
    v27 = [v26 v7[104]];

    if (!v27)
    {
      v36 = v56;

      if (!v36)
      {
        goto LABEL_48;
      }

LABEL_40:
      v37 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }

    v28 = v7;
    v29 = v6;
    v30 = [v27 posterUUID];

    v31 = v52;
    sub_21B6C88A4();

    v32 = sub_21B6C8874();
    v34 = v33;
    (*v3)(v31, v53);
    if (v56)
    {
      break;
    }

    v6 = v29;
    v7 = v28;
    v37 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
LABEL_45:
      __break(1u);
LABEL_46:

      LOBYTE(v3) = i;
      goto LABEL_56;
    }

LABEL_41:
    ++v23;
    if (v37 == v22)
    {
      goto LABEL_46;
    }
  }

  if (v32 == v54 && v56 == v34)
  {

    goto LABEL_49;
  }

  v35 = sub_21B6C96E4();

  v6 = v29;
  v7 = v28;
  if ((v35 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_48:

LABEL_49:
  v38 = 0;
  v39 = v50;
  *v50 = v23;
  *(v39 + 8) = 0;
  v40 = i;
  if (v48 != v23)
  {
    v40 = 1;
  }

  if (v40)
  {
    goto LABEL_58;
  }
}

void sub_21B626D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  BSDispatchQueueAssertMain();
  if (!*(a1 + OBJC_IVAR___PBFPosterRackCollectionViewController_layoutMode) && (a5 & 1) == 0)
  {
    sub_21B690260(a4, 0, 0);
  }
}

uint64_t sub_21B626D8C(void *a1)
{
  v2 = v1;
  v59 = sub_21B6C88C4();
  v4 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 addObserver_];
  v6 = [a1 switcherConfiguration];
  v7 = *(v2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig);
  v60 = OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig;
  *(v2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig) = v6;
  v8 = v6;

  v9 = [v8 configurations];
  sub_21B61785C(0, &qword_28120B290);
  v10 = sub_21B6C8E84();

  v61 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
    goto LABEL_16;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v8; v11; i = v8)
  {
    v55 = v4;
    v56 = v11;
    v12 = 0;
    v8 = OBJC_IVAR____TtC11PosterBoard11PosterStore_posterFilter;
    v57 = OBJC_IVAR____TtC11PosterBoard11PosterStore_posterFilter;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x21CEF66E0](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v4 = v13;
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if ([*&v8[v2] shouldIncludePosterConfiguration:v13 inSwitcherConfiguration:*(v2 + v60)])
      {
        sub_21B6C9574();
        sub_21B6C95A4();
        sub_21B6C95B4();
        sub_21B6C9584();
        v11 = v56;
        v8 = v57;
      }

      else
      {
      }

      ++v12;
      if (v14 == v11)
      {
        v15 = v61;
        v8 = i;
        v4 = v55;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v11 = sub_21B6C9454();
  }

  v15 = MEMORY[0x277D84F90];
LABEL_18:

  v17 = v15;
  if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
  {
    result = sub_21B6C9454();
    v17 = v15;
    v18 = result;
    if (result)
    {
      goto LABEL_21;
    }

LABEL_52:
  }

  v18 = *(v15 + 16);
  if (!v18)
  {
    goto LABEL_52;
  }

LABEL_21:
  if (v18 >= 1)
  {
    v19 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
    v52 = (v2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex);
    v54 = v17 & 0xC000000000000001;
    swift_beginAccess();
    v20 = v15;
    v21 = 0;
    v56 = v15;
    v57 = v4 + 8;
    v55 = v18;
    while (1)
    {
      if (v54)
      {
        v22 = MEMORY[0x21CEF66E0](v21, v20);
      }

      else
      {
        v22 = *(v20 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = [v22 _path];
      v25 = [v24 serverIdentity];

      if (v25)
      {
        v26 = [v25 posterUUID];

        v27 = v58;
        sub_21B6C88A4();

        v28 = sub_21B6C8874();
        v30 = v29;
        (*v57)(v27, v59);
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      v31 = [*(v2 + v60) activeConfiguration];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 _path];
        v34 = [v33 serverIdentity];

        if (v34)
        {
          v35 = [v34 posterUUID];

          v36 = v58;
          sub_21B6C88A4();

          v37 = sub_21B6C8874();
          v34 = v38;

          v39 = v36;
          v8 = i;
          (*v57)(v39, v59);
          if (!v30)
          {
            goto LABEL_39;
          }
        }

        else
        {

          v37 = 0;
          if (!v30)
          {
LABEL_39:
            if (!v34)
            {
              goto LABEL_43;
            }

LABEL_40:

            goto LABEL_46;
          }
        }
      }

      else
      {
        v37 = 0;
        v34 = 0;
        if (!v30)
        {
          goto LABEL_39;
        }
      }

      if (!v34)
      {
        goto LABEL_40;
      }

      if (v28 == v37 && v30 == v34)
      {

LABEL_43:
        v41 = *(v2 + v19);
        if (v41 >> 62)
        {
          v42 = sub_21B6C9454();
        }

        else
        {
          v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v43 = v52;
        *v52 = v42;
        *(v43 + 8) = 0;
        goto LABEL_46;
      }

      v40 = sub_21B6C96E4();

      if (v40)
      {
        goto LABEL_43;
      }

LABEL_46:
      v44 = [v8 homeScreenPosterConfigurationForPosterConfiguration_];
      v45 = objc_allocWithZone(type metadata accessor for PosterPair());
      v46 = v23;
      v47 = v44;
      sub_21B6A3A58(v46, v44);
      v49 = v48;

      swift_beginAccess();
      v50 = v49;
      MEMORY[0x21CEF6000]();
      if (*((*(v2 + v19) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v19) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
      }

      ++v21;
      sub_21B6C8EA4();
      swift_endAccess();

      v20 = v56;
      if (v55 == v21)
      {
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B627440(_BYTE *a1)
{
  v2 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  *&a1[v2] = MEMORY[0x277D84F90];

  v3 = &a1[OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex];
  *v3 = 0;
  v3[8] = 1;
  a1[OBJC_IVAR____TtC11PosterBoard11PosterStore_forcePersistSelectionForFocusUpdate] = 0;
  v4 = [*&a1[OBJC_IVAR____TtC11PosterBoard11PosterStore_glue] dataStore];
  sub_21B626D8C(v4);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = sub_21B62A888;
  v6[4] = v5;
  aBlock[4] = sub_21B62ABA8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B63863C;
  aBlock[3] = &block_descriptor_157;
  v7 = _Block_copy(aBlock);
  v8 = a1;

  BSDispatchMain();
  _Block_release(v7);
}

void sub_21B6276B0(uint64_t a1, uint64_t a2)
{
  v109 = a1;
  v114 = sub_21B6C8964();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114 - 8);
  v115 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92ED0);
  MEMORY[0x28223BE20](v122);
  v123 = &v105 - v5;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92ED8);
  v112 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v111 = &v105 - v6;
  v126 = OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig;
  v7 = *&v2[OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig];
  v129 = v2;
  v8 = *&v2[OBJC_IVAR____TtC11PosterBoard11PosterStore_glue];
  v9 = v7;
  v10 = [v8 dataStore];
  v11 = [v10 switcherConfiguration];

  v12 = &selRef_collectionViewLayout;
  v127 = v9;
  v13 = [v9 configurations];
  v125 = sub_21B61785C(0, &qword_28120B290);
  v14 = sub_21B6C8E84();

  aBlock = MEMORY[0x277D84F90];
  if (v14 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21B6C9454())
  {
    v110 = a2;
    v16 = OBJC_IVAR____TtC11PosterBoard11PosterStore_posterFilter;
    v17 = MEMORY[0x277D84F90];
    v18 = v129;
    if (i)
    {
      v128 = v11;
      v12 = 0;
      v11 = (v14 & 0xC000000000000001);
      a2 = v14 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v11)
        {
          v19 = MEMORY[0x21CEF66E0](v12, v14);
        }

        else
        {
          if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v19 = *(v14 + 8 * v12 + 32);
        }

        v20 = v19;
        v21 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if ([*&v18[v16] shouldIncludePosterConfiguration:v19 inSwitcherConfiguration:v127])
        {
          sub_21B6C9574();
          sub_21B6C95A4();
          sub_21B6C95B4();
          sub_21B6C9584();
          v18 = v129;
        }

        else
        {
        }

        ++v12;
        if (v21 == i)
        {
          v22 = aBlock;
          v11 = v128;
          v12 = 0x2782CD000;
          v17 = MEMORY[0x277D84F90];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_16:

    v23 = [v11 *(v12 + 432)];
    v14 = sub_21B6C8E84();

    aBlock = v17;
    v24 = v124;
    if (!(v14 >> 62))
    {
      v12 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = v129;
      if (!v12)
      {
        break;
      }

      goto LABEL_18;
    }

    v12 = sub_21B6C9454();
    v25 = v129;
    if (!v12)
    {
      break;
    }

LABEL_18:
    v121 = v22;
    v26 = 0;
    a2 = v14 & 0xFFFFFFFFFFFFFF8;
    v128 = v14 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x21CEF66E0](v26, v14);
      }

      else
      {
        if (v26 >= *(a2 + 16))
        {
          goto LABEL_32;
        }

        v27 = *(v14 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if ([*&v25[v16] shouldIncludePosterConfiguration:v27 inSwitcherConfiguration:v11])
      {
        sub_21B6C9574();
        sub_21B6C95A4();
        a2 = v128;
        sub_21B6C95B4();
        sub_21B6C9584();
        v25 = v129;
      }

      else
      {
      }

      ++v26;
      if (v29 == v12)
      {
        v30 = aBlock;
        v24 = v124;
        v22 = v121;
        goto LABEL_36;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v30 = MEMORY[0x277D84F90];
LABEL_36:

  v31 = *&v25[v126];
  *&v25[v126] = v11;
  v118 = v11;

  v32 = v114;
  v33 = swift_allocBox();
  v119 = v34;
  sub_21B6C8954();
  if ((sub_21B667FA8(v22, v30) & 1) == 0)
  {
    v108 = v33;
    v126 = v30;
    aBlock = v30;
    v136 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE0);
    sub_21B62AA24(&qword_28120B348, &qword_27CD92EE0);
    v36 = v111;
    sub_21B6C8D44();

    v107 = swift_allocBox();
    v117 = v37;
    sub_21B6C8954();
    v106 = swift_allocBox();
    v116 = v38;
    sub_21B6C8954();
    v39 = v123;
    (*(v112 + 16))(v123, v36, v24);
    v33 = *(v122 + 36);
    j = sub_21B62AA24(&unk_28120B0E0, &qword_27CD92ED8);
    sub_21B6C8FC4();
    v128 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
    sub_21B6C8FD4();
    if (*(v39 + v33) == aBlock)
    {
LABEL_40:
      sub_21B62AA8C(v39, &qword_27CD92ED0);
      v41 = v128;
      v42 = v129;
      swift_beginAccess();
      v43 = *(v42 + v41);
      if (v43 >> 62)
      {
        goto LABEL_124;
      }

      for (j = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = v66)
      {
        v32 = v114;
        if (j)
        {
          break;
        }

LABEL_65:
        sub_21B6266B4();
        v53 = v113;
        v54 = *(v113 + 16);
        v55 = v115;
        v54(v115, v117, v32);
        v56 = sub_21B6C8934();
        v14 = *(v53 + 8);
        (v14)(v55, v32);
        v57 = v107;
        v58 = v106;
        if ((v56 & 1) == 0 || (v59 = v115, v54(v115, v116, v32), v60 = sub_21B6C8934(), (v14)(v59, v32), (v60 & 1) == 0))
        {
          v61 = swift_allocObject();
          v62 = v129;
          v61[2] = v129;
          v61[3] = v57;
          v61[4] = v58;
          v63 = swift_allocObject();
          v63[2] = v62;
          v63[3] = sub_21B62A114;
          v63[4] = v61;
          v134 = sub_21B62A120;
          v135 = v63;
          aBlock = MEMORY[0x277D85DD0];
          v131 = 1107296256;
          v132 = sub_21B63863C;
          v133 = &block_descriptor_0;
          v64 = _Block_copy(&aBlock);
          v65 = v62;

          BSDispatchMain();
          _Block_release(v64);
        }

        (*(v112 + 8))(v111, v124);

        v35 = v110;
        v33 = v108;
        v30 = v126;
        if (!v110)
        {
          goto LABEL_70;
        }

LABEL_69:
        v42 = v129;
        v66 = sub_21B61F85C(v109, v35);
        if (v67)
        {
          goto LABEL_70;
        }

        j = v66;
        if ((v30 & 0xC000000000000001) != 0)
        {
          goto LABEL_127;
        }

        if ((v66 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_129:

          v71 = MEMORY[0x21CEF66E0](j, v14);

          goto LABEL_79;
        }

        if (v66 >= *(v30 + 16))
        {
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        v68 = *(v30 + 8 * v66 + 32);
LABEL_75:
        v42 = v68;

        v69 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
        v70 = v129;
        v66 = swift_beginAccess();
        v14 = *&v70[v69];
        if ((v14 & 0xC000000000000001) != 0)
        {
          goto LABEL_129;
        }

        if ((j & 0x8000000000000000) != 0)
        {
          goto LABEL_131;
        }

        if (j < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v71 = *(v14 + 8 * j + 32);
LABEL_79:
          v72 = *&v71[OBJC_IVAR___PBFPosterPair_configuration];
          *&v71[OBJC_IVAR___PBFPosterPair_configuration] = v42;
          v73 = v42;
          sub_21B6A1AA4();

          v74 = [v118 homeScreenPosterConfigurationForPosterConfiguration_];
          v75 = *&v71[OBJC_IVAR___PBFPosterPair_associatedConfiguration];
          *&v71[OBJC_IVAR___PBFPosterPair_associatedConfiguration] = v74;
          v76 = v74;
          sub_21B6A223C(v75);

          sub_21B6C8914();
          goto LABEL_80;
        }

LABEL_132:
        __break(1u);
LABEL_133:
        ;
      }

      v44 = v126 & 0xC000000000000001;
      if ((v126 & 0xC000000000000001) != 0 || j <= *(v126 + 16))
      {
        v33 = 4;
        while (1)
        {
          v47 = v33 - 4;
          v42 = *(v42 + v128);
          if ((v42 & 0xC000000000000001) != 0)
          {

            v48 = MEMORY[0x21CEF66E0](v33 - 4, v42);
          }

          else
          {
            if ((v47 & 0x8000000000000000) != 0)
            {
              goto LABEL_115;
            }

            if (v47 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_116;
            }

            v48 = *(v42 + 8 * v33);
          }

          v49 = *&v48[OBJC_IVAR___PBFPosterPair_configuration];

          v50 = v44 ? MEMORY[0x21CEF66E0](v33 - 4, v126) : *(v126 + 8 * v33);
          v30 = v50;
          v42 = sub_21B6C91A4();

          if ((v42 & 1) == 0)
          {
            break;
          }

LABEL_48:
          ++v33;
          --j;
          v42 = v129;
          if (!j)
          {
            goto LABEL_65;
          }
        }

        v51 = *&v129[v128];
        if ((v51 & 0xC000000000000001) != 0)
        {

          v52 = MEMORY[0x21CEF66E0](v33 - 4, v51);

          if (!v44)
          {
            goto LABEL_61;
          }
        }

        else
        {
          if ((v47 & 0x8000000000000000) != 0)
          {
            goto LABEL_117;
          }

          if (v47 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_118;
          }

          v52 = *(v51 + 8 * v33);
          if (!v44)
          {
LABEL_61:
            v45 = *(v126 + 8 * v33);
            goto LABEL_47;
          }
        }

        v45 = MEMORY[0x21CEF66E0](v33 - 4, v126);
LABEL_47:
        v46 = *&v52[OBJC_IVAR___PBFPosterPair_configuration];
        *&v52[OBJC_IVAR___PBFPosterPair_configuration] = v45;
        v30 = v45;
        sub_21B6A1AA4();

        sub_21B6C8914();
        goto LABEL_48;
      }

LABEL_126:
      __break(1u);
LABEL_127:
      v68 = MEMORY[0x21CEF66E0](j, v30);
      goto LABEL_75;
    }

    v121 = j;
    v122 = v33;
    while (1)
    {
      v88 = sub_21B6C8FF4();
      v30 = *v89;
      v32 = *(v89 + 8);
      v90 = *(v89 + 25);
      v91 = v32;
      v88(&aBlock, 0);
      sub_21B6C8FE4();
      if ((v90 & 1) == 0)
      {
        break;
      }

      sub_21B6C8914();
      j = v128;
      v92 = v129;
      swift_beginAccess();
      v42 = *&v92[j];
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *&v92[j] = v42;
      if (!isUniquelyReferenced_nonNull_bridgeObject || v42 < 0 || (v42 & 0x4000000000000000) != 0)
      {
        v42 = sub_21B69F91C(v42);
        *&v129[j] = v42;
      }

      v94 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30 >= v94)
      {
        goto LABEL_119;
      }

      v95 = v94 - 1;
      v96 = *((v42 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 0x20);
      memmove(((v42 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 32), ((v42 & 0xFFFFFFFFFFFFFF8) + 8 * v30 + 40), 8 * (v94 - 1 - v30));
      *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) = v95;
      *&v129[j] = v42;
      swift_endAccess();
LABEL_87:

      v39 = v123;
      j = v121;
      sub_21B6C8FD4();
      v33 = v122;
      if (*(v39 + v122) == aBlock)
      {
        goto LABEL_40;
      }
    }

    v97 = [v118 homeScreenPosterConfigurationForPosterConfiguration_];
    v98 = objc_allocWithZone(type metadata accessor for PosterPair());
    v99 = v32;
    v100 = v97;
    sub_21B6A3A58(v32, v97);
    v33 = v101;
    v120 = v100;

    sub_21B6C8914();
    j = v128;
    v42 = v129;
    swift_beginAccess();
    v85 = *(v42 + j);
    v102 = v85 >> 62;
    if (v85 >> 62)
    {
      if (sub_21B6C9454() < v30)
      {
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
        v66 = sub_21B6C9454();
        if ((v66 & 0x8000000000000000) == 0)
        {
          goto LABEL_133;
        }

        __break(1u);
        goto LABEL_126;
      }
    }

    else if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) < v30)
    {
      goto LABEL_114;
    }

    if (v30 < 0)
    {
      goto LABEL_120;
    }

    if (v102)
    {
      if (v85 < 0)
      {
        v42 = v85;
      }

      else
      {
        v42 = v85 & 0xFFFFFFFFFFFFFF8;
      }

      if (sub_21B6C9454() < v30)
      {
        goto LABEL_123;
      }

      v103 = sub_21B6C9454();
    }

    else
    {
      v103 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v103 < v30)
      {
        goto LABEL_122;
      }
    }

    v42 = v103 + 1;
    if (__OFADD__(v103, 1))
    {
      goto LABEL_121;
    }

    v96 = v33;
    v104 = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v129[j] = v85;
    if (v104)
    {
      if (!v102)
      {
        if (v42 <= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v86 = v129;
          goto LABEL_86;
        }

LABEL_85:
        v85 = sub_21B6C9554();
        v86 = v129;
        *&v129[j] = v85;
LABEL_86:
        v87 = v86;
        sub_21B699350(v30, v30, 1, v96);
        *&v87[j] = v85;
        swift_endAccess();

        goto LABEL_87;
      }
    }

    else if (!v102)
    {
      goto LABEL_85;
    }

    sub_21B6C9454();
    goto LABEL_85;
  }

  sub_21B6266B4();
  v35 = v110;
  if (v110)
  {
    goto LABEL_69;
  }

LABEL_70:

LABEL_80:
  v77 = v113;
  v78 = v115;
  (*(v113 + 16))(v115, v119, v32);
  v79 = sub_21B6C8934();
  (*(v77 + 8))(v78, v32);
  if ((v79 & 1) == 0)
  {
    v80 = swift_allocObject();
    v81 = v129;
    *(v80 + 16) = v129;
    *(v80 + 24) = v33;
    v82 = swift_allocObject();
    v82[2] = v81;
    v82[3] = sub_21B62A144;
    v82[4] = v80;
    v134 = sub_21B62ABA8;
    v135 = v82;
    aBlock = MEMORY[0x277D85DD0];
    v131 = 1107296256;
    v132 = sub_21B63863C;
    v133 = &block_descriptor_92;
    v83 = _Block_copy(&aBlock);
    v84 = v81;

    BSDispatchMain();
    _Block_release(v83);
  }
}

uint64_t sub_21B6287F8(id *a1, void **a2)
{
  v4 = sub_21B6C88C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v9 = [*a1 _path];
  v10 = [v9 serverIdentity];

  if (v10)
  {
    v11 = [v10 posterUUID];

    sub_21B6C88A4();
    v12 = sub_21B6C8874();
    v10 = v13;
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v12 = 0;
  }

  v14 = [v8 _path];
  v15 = [v14 serverIdentity];

  if (v15)
  {
    v16 = [v15 posterUUID];

    sub_21B6C88A4();
    v17 = sub_21B6C8874();
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    if (v10)
    {
      if (v19)
      {
        if (v12 == v17 && v10 == v19)
        {

          v20 = 1;
        }

        else
        {
          v20 = sub_21B6C96E4();
        }

        goto LABEL_16;
      }

      goto LABEL_11;
    }

    if (v19)
    {
      v20 = 0;
      goto LABEL_16;
    }
  }

  else if (v10)
  {
LABEL_11:
    v20 = 0;
LABEL_16:

    return v20 & 1;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_21B628A58()
{
  v0 = sub_21B6C8964();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-v5];
  v7 = swift_projectBox();
  v8 = swift_projectBox();
  swift_beginAccess();
  v9 = *(v1 + 16);
  v9(v6, v7, v0);
  swift_beginAccess();
  v9(v4, v8, v0);
  sub_21B69A4F8(v6, v4);
  v10 = *(v1 + 8);
  v10(v4, v0);
  return (v10)(v6, v0);
}

uint64_t sub_21B628BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21B6C8964();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_projectBox();
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  sub_21B68B8C8(a3, v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21B628D0C(void *a1)
{
  v30[7] = *MEMORY[0x277D85DE8];
  v3 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v4 = *&v1[v3];

  v5 = sub_21B61FA3C(a1, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    v8 = OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig;
    [*&v1[OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig] mutableCopy];
    sub_21B6C93E4();
    swift_unknownObjectRelease();
    sub_21B61785C(0, &unk_28120B1E0);
    swift_dynamicCast();
    v9 = [*&v1[v8] configurations];
    sub_21B61785C(0, &qword_28120B290);
    v10 = sub_21B6C8E84();

    if ((v10 & 0xC000000000000001) == 0)
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v5 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11 = *(v10 + 8 * v5 + 32);
        goto LABEL_6;
      }

      __break(1u);
LABEL_17:
      swift_once();
LABEL_8:
      v16 = sub_21B6C8AB4();
      __swift_project_value_buffer(v16, qword_28120CD90);
      v17 = sub_21B6C9024();
      v18 = v1;
      v19 = a1;
      v20 = sub_21B6C8A94();

      if (os_log_type_enabled(v20, v17))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v30[0] = v22;
        *v21 = 136315394;
        *(v21 + 4) = sub_21B656178(*&v19[OBJC_IVAR___PBFPosterPair_id], *&v19[OBJC_IVAR___PBFPosterPair_id + 8], v30);
        *(v21 + 12) = 2080;
        v23 = [v18 localizedDescription];
        v24 = sub_21B6C8DA4();
        v26 = v25;

        v27 = sub_21B656178(v24, v26, v30);

        *(v21 + 14) = v27;
        _os_log_impl(&dword_21B526000, v20, v17, "PosterStore failed to delete poster with ID: %s due to error: %s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CEF8150](v22, -1, -1);
        MEMORY[0x21CEF8150](v21, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    v11 = MEMORY[0x21CEF66E0](v5, v10);
LABEL_6:
    v12 = v11;

    [v29 removeConfiguration_];

    v13 = [*&v1[OBJC_IVAR____TtC11PosterBoard11PosterStore_glue] dataStore];
    v14 = sub_21B6C8D74();
    v30[0] = 0;

    if (!v30[0])
    {
      sub_21B6276B0(0, 0);

      return 1;
    }

    v15 = qword_28120B3A0;
    v1 = v30[0];
    if (v15 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  return 0;
}

id sub_21B629120()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21B629200(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_21B6C88C4();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_21B62AA8C(v5, &qword_27CD92EE8))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_21B61C2CC(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_21B629420(uint64_t a1, _BYTE *a2)
{
  v4 = &a2[OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex];
  *v4 = 0;
  v4[8] = 1;
  *&a2[OBJC_IVAR____TtC11PosterBoard11PosterStore_significantEventsCounter] = 0;
  v5 = OBJC_IVAR____TtC11PosterBoard11PosterStore_glue;
  *&a2[v5] = [objc_opt_self() sharedInstance];
  *&a2[OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters] = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtC11PosterBoard11PosterStore_observers;
  *&a2[v6] = [objc_opt_self() weakObjectsHashTable];
  a2[OBJC_IVAR____TtC11PosterBoard11PosterStore_forcePersistSelectionForFocusUpdate] = 0;
  v7 = [*&a2[v5] dataStore];
  v8 = [v7 switcherConfiguration];

  *&a2[OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig] = v8;
  *&a2[OBJC_IVAR____TtC11PosterBoard11PosterStore_posterFilter] = a1;
  v15.receiver = a2;
  v15.super_class = type metadata accessor for PosterStore();
  v9 = objc_msgSendSuper2(&v15, sel_init);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 defaultCenter];
  [v12 addObserver:v11 selector:sel_dataStoreDidTearDown name:PBFPosterExtensionDataStoreDidTearDownNotification object:0];

  v13 = [*&v11[OBJC_IVAR____TtC11PosterBoard11PosterStore_glue] dataStore];
  sub_21B626D8C(v13);

  return v11;
}

uint64_t sub_21B6295F0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_21B6C88C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

BOOL sub_21B6296B0(char *a1, uint64_t a2, uint64_t a3)
{
  v51[5] = *MEMORY[0x277D85DE8];
  v6 = OBJC_IVAR___PBFPosterPair_configuredProperties;
  v7 = *&a1[OBJC_IVAR___PBFPosterPair_configuredProperties];
  [v7 mutableCopy];
  sub_21B6C93E4();
  swift_unknownObjectRelease();
  sub_21B61785C(0, &qword_28120B1B0);
  swift_dynamicCast();
  v8 = v51[0];
  [v51[0] setHomeScreenConfiguration_];
  [*(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig) mutableCopy];
  sub_21B6C93E4();
  swift_unknownObjectRelease();
  sub_21B61785C(0, &unk_28120B1E0);
  swift_dynamicCast();
  v50 = v51[0];
  v9 = [v7 focusConfiguration];
  v10 = [v51[0] focusConfiguration];
  v11 = v10;
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  if (!v10)
  {
    v11 = v9;
LABEL_8:

    goto LABEL_9;
  }

  sub_21B61785C(0, &unk_27CD92EF8);
  v12 = sub_21B6C91A4();

  if (v12)
  {
    goto LABEL_19;
  }

LABEL_9:
  v13 = [v51[0] focusConfiguration];
  [v51[0] setFocusConfiguration:v13 forPosterConfiguration:*&a1[OBJC_IVAR___PBFPosterPair_configuration]];

  if (*(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex + 8))
  {
    goto LABEL_19;
  }

  v14 = *(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex);
  v15 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v16 = *(a2 + v15);
  if ((v16 & 0xC000000000000001) == 0)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(v16 + 8 * v14 + 32);
      goto LABEL_14;
    }

    __break(1u);
  }

  v17 = MEMORY[0x21CEF66E0](v14, v16);

LABEL_14:
  v19 = *&v17[OBJC_IVAR___PBFPosterPair_id];
  v18 = *&v17[OBJC_IVAR___PBFPosterPair_id + 8];

  if (v19 == *&a1[OBJC_IVAR___PBFPosterPair_id] && v18 == *&a1[OBJC_IVAR___PBFPosterPair_id + 8])
  {
  }

  else
  {
    v20 = sub_21B6C96E4();

    if ((v20 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  *(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_forcePersistSelectionForFocusUpdate) = 1;
LABEL_19:
  v21 = [v8 homeScreenConfiguration];
  v22 = v50;
  if (v21)
  {
    v23 = v21;
    v24 = [v7 homeScreenConfiguration];
    if (!v24 || (v25 = v24, sub_21B61785C(0, &unk_28120B1D0), v26 = v7, v27 = v23, v28 = sub_21B6C91A4(), v25, v27, v7 = v26, v22 = v50, (v28 & 1) == 0))
    {
      [v22 setHomeConfiguration:v23 forPosterConfiguration:*&a1[OBJC_IVAR___PBFPosterPair_configuration]];
    }
  }

  v29 = [*(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_glue) dataStore];
  v30 = sub_21B6C8D74();
  v51[0] = 0;

  v31 = v51[0];
  if (v51[0])
  {
    v49 = v7;
    v32 = qword_28120B3A0;
    v33 = v51[0];
    if (v32 != -1)
    {
      swift_once();
    }

    v34 = sub_21B6C8AB4();
    __swift_project_value_buffer(v34, qword_28120CD90);
    v35 = sub_21B6C9024();
    v36 = v33;
    v37 = a1;
    v38 = sub_21B6C8A94();

    if (os_log_type_enabled(v38, v35))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v51[0] = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_21B656178(*&v37[OBJC_IVAR___PBFPosterPair_id], *&v37[OBJC_IVAR___PBFPosterPair_id + 8], v51);
      *(v39 + 12) = 2080;
      v41 = [v36 localizedDescription];
      v42 = sub_21B6C8DA4();
      v44 = v43;

      v45 = sub_21B656178(v42, v44, v51);

      *(v39 + 14) = v45;
      _os_log_impl(&dword_21B526000, v38, v35, "PosterStore failed to persist change for poster with ID: %s due to error: %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEF8150](v40, -1, -1);
      MEMORY[0x21CEF8150](v39, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v46 = *&a1[v6];
    *&a1[v6] = v8;
    v47 = v8;
    sub_21B6A1CC4(v46);

    sub_21B6276B0(0, 0);
  }

  return v31 == 0;
}

void sub_21B629D38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_21B6C88C4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() snapshotRequestForConfiguration:a1 context:a3];
  sub_21B61F0DC(a2);
  sub_21B61785C(0, &qword_28120B238);
  v16 = sub_21B6C8E74();

  v17 = [v15 requestWithDefinitions_];

  if (*(v5 + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex + 8))
  {
    goto LABEL_15;
  }

  v35 = v12;
  v18 = *(v5 + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex);
  v19 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v20 = *(v5 + v19);
  v36 = a4;
  v37 = a5;
  if ((v20 & 0xC000000000000001) != 0)
  {

    v21 = MEMORY[0x21CEF66E0](v18, v20);

LABEL_6:
    v23 = *&v21[OBJC_IVAR___PBFPosterPair_id];
    v22 = *&v21[OBJC_IVAR___PBFPosterPair_id + 8];

    v24 = [a1 _path];
    v25 = [v24 serverIdentity];

    if (!v25)
    {

      a4 = v36;
      a5 = v37;
LABEL_14:

LABEL_15:
      sub_21B61FB2C(a1, v17, a4, a5);

      return;
    }

    v26 = v5;
    v27 = [v25 posterUUID];

    sub_21B6C88A4();
    v28 = sub_21B6C8874();
    v30 = v29;
    (*(v35 + 8))(v14, v11);
    if (v23 == v28 && v22 == v30)
    {

      v31 = v26;
      a4 = v36;
    }

    else
    {
      v32 = sub_21B6C96E4();

      v31 = v26;
      a4 = v36;
      if ((v32 & 1) == 0)
      {
LABEL_13:
        a5 = v37;
        goto LABEL_14;
      }
    }

    v33 = [v17 requestWithSignificantEventsCounter_];

    v17 = v33;
    goto LABEL_13;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v18 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v20 + 8 * v18 + 32);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_21B62A0B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_21B62A14C(char *a1, uint64_t a2, uint64_t a3)
{
  v51[5] = *MEMORY[0x277D85DE8];
  v6 = OBJC_IVAR___PBFPosterPair_configuredProperties;
  v7 = *&a1[OBJC_IVAR___PBFPosterPair_configuredProperties];
  [v7 mutableCopy];
  sub_21B6C93E4();
  swift_unknownObjectRelease();
  sub_21B61785C(0, &qword_28120B1B0);
  swift_dynamicCast();
  v8 = v51[0];
  [v51[0] setFocusConfiguration_];
  [*(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_switcherConfig) mutableCopy];
  sub_21B6C93E4();
  swift_unknownObjectRelease();
  sub_21B61785C(0, &unk_28120B1E0);
  swift_dynamicCast();
  v50 = v51[0];
  v9 = [v7 focusConfiguration];
  v10 = [v51[0] focusConfiguration];
  v11 = v10;
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  if (!v10)
  {
    v11 = v9;
LABEL_8:

    goto LABEL_9;
  }

  sub_21B61785C(0, &unk_27CD92EF8);
  v12 = sub_21B6C91A4();

  if (v12)
  {
    goto LABEL_19;
  }

LABEL_9:
  v13 = [v51[0] focusConfiguration];
  [v51[0] setFocusConfiguration:v13 forPosterConfiguration:*&a1[OBJC_IVAR___PBFPosterPair_configuration]];

  if (*(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex + 8))
  {
    goto LABEL_19;
  }

  v14 = *(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_currentSelectionIndex);
  v15 = OBJC_IVAR____TtC11PosterBoard11PosterStore_allPosters;
  swift_beginAccess();
  v16 = *(a2 + v15);
  if ((v16 & 0xC000000000000001) == 0)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(v16 + 8 * v14 + 32);
      goto LABEL_14;
    }

    __break(1u);
  }

  v17 = MEMORY[0x21CEF66E0](v14, v16);

LABEL_14:
  v19 = *&v17[OBJC_IVAR___PBFPosterPair_id];
  v18 = *&v17[OBJC_IVAR___PBFPosterPair_id + 8];

  if (v19 == *&a1[OBJC_IVAR___PBFPosterPair_id] && v18 == *&a1[OBJC_IVAR___PBFPosterPair_id + 8])
  {
  }

  else
  {
    v20 = sub_21B6C96E4();

    if ((v20 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  *(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_forcePersistSelectionForFocusUpdate) = 1;
LABEL_19:
  v21 = [v8 homeScreenConfiguration];
  v22 = v50;
  if (v21)
  {
    v23 = v21;
    v24 = [v7 homeScreenConfiguration];
    if (!v24 || (v25 = v24, sub_21B61785C(0, &unk_28120B1D0), v26 = v7, v27 = v23, v28 = sub_21B6C91A4(), v25, v27, v7 = v26, v22 = v50, (v28 & 1) == 0))
    {
      [v22 setHomeConfiguration:v23 forPosterConfiguration:*&a1[OBJC_IVAR___PBFPosterPair_configuration]];
    }
  }

  v29 = [*(a2 + OBJC_IVAR____TtC11PosterBoard11PosterStore_glue) dataStore];
  v30 = sub_21B6C8D74();
  v51[0] = 0;

  v31 = v51[0];
  if (v51[0])
  {
    v49 = v7;
    v32 = qword_28120B3A0;
    v33 = v51[0];
    if (v32 != -1)
    {
      swift_once();
    }

    v34 = sub_21B6C8AB4();
    __swift_project_value_buffer(v34, qword_28120CD90);
    v35 = sub_21B6C9024();
    v36 = v33;
    v37 = a1;
    v38 = sub_21B6C8A94();

    if (os_log_type_enabled(v38, v35))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v51[0] = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_21B656178(*&v37[OBJC_IVAR___PBFPosterPair_id], *&v37[OBJC_IVAR___PBFPosterPair_id + 8], v51);
      *(v39 + 12) = 2080;
      v41 = [v36 localizedDescription];
      v42 = sub_21B6C8DA4();
      v44 = v43;

      v45 = sub_21B656178(v42, v44, v51);

      *(v39 + 14) = v45;
      _os_log_impl(&dword_21B526000, v38, v35, "PosterStore failed to persist change for poster with ID: %s due to error: %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEF8150](v40, -1, -1);
      MEMORY[0x21CEF8150](v39, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v46 = *&a1[v6];
    *&a1[v6] = v8;
    v47 = v8;
    sub_21B6A1CC4(v46);

    sub_21B6276B0(0, 0);
  }

  return v31 == 0;
}

uint64_t objectdestroy_125Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_21B62A904(uint64_t a1)
{
  v3 = *(v1 + 24);
  BSDispatchQueueAssertMain();
  v4 = *(a1 + OBJC_IVAR___PBFPosterRackCollectionViewController_galleryDataProvider);

  return [v4 configureForGallery_];
}

uint64_t objectdestroy_81Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21B62A994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD92EE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B62AA24(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B62AA8C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_21B62AC3C(id result)
{
  v2 = OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView;
  if (*&v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView] != result)
  {
    v3 = result;
    v4 = [result superview];
    if (v4)
    {
      v5 = v4;

      if (v5 == v1)
      {
        [v3 removeFromSuperview];
      }
    }

    [v1 addSubview_];

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_21B62ACF0(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_title];
  v5 = *&v2[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_title];
  v6 = *&v2[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  if (v5 == a1 && v6 == a2)
  {
  }

  else
  {
    v8 = sub_21B6C96E4();

    if ((v8 & 1) == 0)
    {
      v10 = *&v2[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_titleLabel];

      v11 = sub_21B6C8D74();

      [v10 setText_];

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

char *sub_21B62ADFC(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_title];
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_showsSymbolWhenSelected] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_maximumHorizontalTitleOutset] = 0;
  [a1 setUserInteractionEnabled_];
  v4 = [a1 layer];
  [v4 setBorderWidth_];

  v5 = [a1 layer];
  v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.075];
  v7 = [v6 CGColor];

  [v5 setBorderColor_];
  *&v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView] = a1;
  v8 = a1;
  [v8 setAccessibilityIgnoresInvertColors_];
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v10 = OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_titleLabel;
  *&v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_titleLabel] = v9;
  v11 = qword_28120B3A8;
  v12 = v9;
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setFont_];

  [*&v1[v10] setTextAlignment_];
  [*&v1[v10] setAdjustsFontSizeToFitWidth_];
  [*&v1[v10] setAllowsDefaultTighteningForTruncation_];
  [*&v1[v10] setMinimumScaleFactor_];
  [*&v1[v10] setNumberOfLines_];
  [*&v1[v10] setAccessibilityIgnoresInvertColors_];
  v13 = sub_21B6C8D74();
  v14 = [objc_opt_self() systemImageNamed_];

  v15 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v16 = OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_symbolImageView;
  *&v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_symbolImageView] = v15;
  v17 = objc_opt_self();
  v18 = v15;
  v19 = [v17 systemWhiteColor];
  [v18 setTintColor_];

  [*&v1[v16] setAlpha_];
  [*&v1[v16] sizeToFit];
  [v8 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v37.receiver = v1;
  v37.super_class = type metadata accessor for HomeScreenConfigurationControl();
  v28 = objc_msgSendSuper2(&v37, sel_initWithFrame_, v21, v23, v25, v27);
  [v28 addSubview_];
  [v28 addSubview_];
  [v28 addSubview_];
  v29 = [v28 layer];
  v35 = &type metadata for PosterRackFeatures;
  v36 = sub_21B62C9EC();
  v34[0] = 5;
  LOBYTE(v19) = sub_21B6C8A54();
  __swift_destroy_boxed_opaque_existential_0(v34);
  v30 = &selRef_systemBlueColor;
  if (v19)
  {
    v30 = &selRef_systemWhiteColor;
  }

  v31 = [v17 *v30];
  v32 = [v31 CGColor];

  [v29 setBorderColor_];
  return v28;
}

void sub_21B62B2F8()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for HomeScreenConfigurationControl();
  objc_msgSendSuper2(&v26, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];

  v27.origin.x = v2;
  v27.origin.y = v4;
  v27.size.width = v6;
  v27.size.height = v8;
  Width = CGRectGetWidth(v27);
  v28.origin.x = v2;
  v28.origin.y = v4;
  v28.size.width = v6;
  v28.size.height = v8;
  Height = CGRectGetHeight(v28);
  if (Height >= Width)
  {
    Height = Width;
  }

  v12 = Height * 0.5;
  v13 = [v0 layer];
  [v13 setCornerRadius_];

  v14 = OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView;
  v15 = [*&v0[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView] layer];
  [v15 setCornerRadius_];

  [*&v0[v14] setBounds_];
  v16 = *&v0[v14];
  v29.origin.x = v2;
  v29.origin.y = v4;
  v29.size.width = v6;
  v29.size.height = v8;
  MidX = CGRectGetMidX(v29);
  v30.origin.x = v2;
  v30.origin.y = v4;
  v30.size.width = v6;
  v30.size.height = v8;
  [v16 setCenter_];

  v18 = *&v0[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_symbolImageView];
  [*&v0[v14] center];
  [v18 setCenter_];
  v19 = OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_titleLabel;
  v20 = *&v0[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_titleLabel];
  BSRectWithSize();
  [v20 textRectForBounds:objc_msgSend(*&v0[v19] limitedToNumberOfLines:{sel_numberOfLines), v21, v22, v23, v24}];

  BSSizeCeilForScale();
  v31.origin.x = v2;
  v31.origin.y = v4;
  v31.size.width = v6;
  v31.size.height = v8;
  CGRectGetMidX(v31);
  v32.origin.x = v2;
  v32.origin.y = v4;
  v32.size.width = v6;
  v32.size.height = v8;
  CGRectGetMaxY(v32);
  v25 = *&v0[v19];
  BSPointRoundForScale();
  [v25 setFrame_];
}

void sub_21B62B6E8(char a1)
{
  if ([v1 isSelected] != (a1 & 1))
  {
    v2 = *&v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView];
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      _ZF = v2 == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (_ZF)
    {
      if ([v1 isSelected])
      {
        CGAffineTransformMakeScale(&aBlock, 0.725, 0.725);
        __asm { FMOV            V0.2D, #3.0 }

        *(&_Q0 + 1) = *&aBlock.a;
        *v17 = _Q0;
        *(&_Q0 + 1) = *&aBlock.tx;
        v16 = *&aBlock.d;
        *&_Q0 = aBlock.ty;
        v14 = *&aBlock.b;
        v15 = _Q0;
        if (v1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_showsSymbolWhenSelected])
        {
          v8 = 1.0;
        }

        else
        {
          v8 = 0.0;
        }
      }

      else
      {
        v15 = xmmword_21B6D8370;
        v16 = xmmword_21B6D8380;
        *v17 = xmmword_21B6D8390;
        v14 = 0u;
        v8 = 0.0;
      }

      v10 = objc_opt_self();
      v11 = swift_allocObject();
      *(v11 + 16) = v1;
      *(v11 + 40) = v14;
      *(v11 + 24) = *v17;
      *(v11 + 72) = v15;
      *(v11 + 56) = v16;
      *(v11 + 88) = v8;
      *&aBlock.tx = sub_21B62CB50;
      *&aBlock.ty = v11;
      *&aBlock.a = MEMORY[0x277D85DD0];
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_21B63863C;
      *&aBlock.d = &block_descriptor_45;
      v12 = _Block_copy(&aBlock);
      v13 = v1;

      [v10 animateWithDuration:131078 delay:v12 options:0 animations:0.15 completion:0.0];
      _Block_release(v12);
    }

    else
    {
      v18 = v2;
      v9 = [v1 isSelected];
      v18[OBJC_IVAR____TtC11PosterBoard45HomeScreenConfigurationBlurControlContentView_isSelected] = v9;
      sub_21B62C78C();
    }
  }
}

id sub_21B62B958(char *a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = [a1 layer];
  [v12 setBorderWidth_];

  v13 = OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView;
  v14 = *&a1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView];
  v15 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v15;
  v19 = v10;
  v20 = v11;
  [v14 setTransform_];
  v16 = [*&a1[v13] layer];
  [v16 setBorderWidth_];

  return [*&a1[OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_symbolImageView] setAlpha_];
}

void sub_21B62BAB4(char a1)
{
  v3 = type metadata accessor for HomeScreenConfigurationControl();
  v11.receiver = v1;
  v11.super_class = v3;
  v4 = objc_msgSendSuper2(&v11, sel_isHighlighted);
  v10.receiver = v1;
  v10.super_class = v3;
  objc_msgSendSuper2(&v10, sel_setHighlighted_, a1 & 1);
  if (v4 != [v1 isHighlighted])
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v9[4] = sub_21B62CAEC;
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_21B63863C;
    v9[3] = &block_descriptor_39;
    v7 = _Block_copy(v9);
    v8 = v1;

    [v5 animateWithDuration:6 delay:v7 options:0 animations:0.15 completion:0.0];
    _Block_release(v7);
  }
}

id sub_21B62BC14(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for HomeScreenConfigurationControl();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_21B62BCA8(char a1)
{
  v3 = type metadata accessor for HomeScreenConfigurationControl();
  v12.receiver = v1;
  v12.super_class = v3;
  v4 = objc_msgSendSuper2(&v12, sel_isEnabled);
  v11.receiver = v1;
  v11.super_class = v3;
  objc_msgSendSuper2(&v11, sel_setEnabled_, a1 & 1);
  if (v4 != [v1 isEnabled])
  {
    if ([v1 isEnabled])
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.5;
    }

    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v5;
    v10[4] = sub_21B62CA68;
    v10[5] = v7;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_21B63863C;
    v10[3] = &block_descriptor_1;
    v8 = _Block_copy(v10);
    v9 = v1;

    [v6 animateWithDuration:131078 delay:v8 options:0 animations:0.15 completion:0.0];
    _Block_release(v8);
  }
}

id sub_21B62BE28()
{
  result = [objc_opt_self() systemFontOfSize:10.0 weight:*MEMORY[0x277D74420]];
  qword_28120B3B0 = result;
  return result;
}

void sub_21B62BF50(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_primaryImage];
  *&v1[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_primaryImage] = a1;
  v5 = a1;

  if (a1)
  {
    v4 = *&v1[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_primaryImageView];
    [v4 setImage_];
    [v4 setContentMode_];
    [v4 setBackgroundColor_];
    [v1 setNeedsLayout];
  }
}

char *sub_21B62C020(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_primaryImage] = 0;
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v4 setContentMode_];
  *&v2[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_primaryImageView] = v4;
  v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v5 setContentMode_];
  *&v2[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_floatingImageView] = v5;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for HomeScreenConfigurationPosterControlContentView();
  v6 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_primaryImageView;
  v8 = *&v6[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_primaryImageView];
  v9 = v6;
  [v9 addSubview_];
  [v9 addSubview_];
  [v9 setClipsToBounds_];
  if (a2)
  {
    v10 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:17.0];
    v11 = *&v6[v7];
    v12 = v10;
    v13 = sub_21B6C8D74();

    v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

    [v11 setImage_];
    v15 = *&v6[v7];
    v16 = objc_opt_self();
    v17 = v15;
    v18 = [v16 systemWhiteColor];
    [v17 setTintColor_];

    [*&v6[v7] setContentMode_];
  }

  v19 = *&v6[v7];
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 tertiarySystemBackgroundColor];
  [v21 setBackgroundColor_];

  return v9;
}

id sub_21B62C328()
{
  v23.receiver = v0;
  v23.super_class = type metadata accessor for HomeScreenConfigurationPosterControlContentView();
  objc_msgSendSuper2(&v23, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_primaryImage];
  v10 = 1.0;
  if (v9)
  {
    [v9 size];
    if (v11 > 0.0)
    {
      v10 = v12 / v11;
    }
  }

  v13 = _UILerp(v10);
  CGFloatMax(v13);
  v24.origin.x = v2;
  v24.origin.y = v4;
  v24.size.width = v6;
  v24.size.height = v8;
  CGRectGetWidth(v24);
  v25.origin.x = v2;
  v25.origin.y = v4;
  v25.size.width = v6;
  v25.size.height = v8;
  CGRectGetHeight(v25);
  BSRectWithSize();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [*&v0[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_primaryImageView] setFrame_];
  return [*&v0[OBJC_IVAR____TtC11PosterBoard47HomeScreenConfigurationPosterControlContentView_floatingImageView] setFrame_];
}

id sub_21B62C56C()
{
  v0[OBJC_IVAR____TtC11PosterBoard45HomeScreenConfigurationBlurControlContentView_isSelected] = 0;
  v1 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:17.0];
  v2 = sub_21B6C8D74();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  v10.receiver = v0;
  v10.super_class = type metadata accessor for HomeScreenConfigurationBlurControlContentView();
  v4 = objc_msgSendSuper2(&v10, sel_initWithImage_, v3);

  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 systemWhiteColor];
  [v6 setTintColor_];

  [v6 setContentMode_];
  v8 = [v5 tertiarySystemBackgroundColor];
  [v6 setBackgroundColor_];

  return v6;
}

void sub_21B62C78C()
{
  v1 = OBJC_IVAR____TtC11PosterBoard45HomeScreenConfigurationBlurControlContentView_isSelected;
  if (v0[OBJC_IVAR____TtC11PosterBoard45HomeScreenConfigurationBlurControlContentView_isSelected] == 1 && (v10 = &type metadata for PosterRackFeatures, v11 = sub_21B62C9EC(), v9[0] = 5, v2 = sub_21B6C8A54(), __swift_destroy_boxed_opaque_existential_0(v9), (v2 & 1) != 0))
  {
    v3 = &selRef_systemBlackColor;
  }

  else
  {
    v3 = &selRef_systemWhiteColor;
  }

  v4 = [objc_opt_self() *v3];
  [v0 setTintColor_];

  if (v0[v1] == 1)
  {
    v10 = &type metadata for PosterRackFeatures;
    v11 = sub_21B62C9EC();
    v9[0] = 5;
    v5 = sub_21B6C8A54();
    __swift_destroy_boxed_opaque_existential_0(v9);
    v6 = objc_opt_self();
    v7 = &selRef_systemBlueColor;
    if (v5)
    {
      v7 = &selRef_systemWhiteColor;
    }
  }

  else
  {
    v6 = objc_opt_self();
    v7 = &selRef_tertiarySystemBackgroundColor;
  }

  v8 = [v6 *v7];
  [v0 setBackgroundColor_];
}

id sub_21B62C990(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_21B62C9EC()
{
  result = qword_28120B9C0;
  if (!qword_28120B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120B9C0);
  }

  return result;
}

id sub_21B62CA68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [*(v1 + OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_previewContentView) setAlpha_];
  v3 = *(v1 + OBJC_IVAR____TtC11PosterBoard30HomeScreenConfigurationControl_titleLabel);

  return [v3 setAlpha_];
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_21B62CAEC()
{
  v1 = *(v0 + 16);
  v2 = [v1 isHighlighted];
  v3 = 0.6;
  if (!v2)
  {
    v3 = 1.0;
  }

  return [v1 setAlpha_];
}

char *sub_21B62CC38(double a1, double a2, double a3, double a4)
{
  v9 = sub_21B6C9204();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_21B6C9364();
  v13 = *(v36 - 8);
  v14 = MEMORY[0x28223BE20](v36);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  *&v4[OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v19 = &v4[OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_posterID];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_deleteButton] = 0;
  *&v4[OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_deleteButtonDimension] = 0x4051000000000000;
  v20 = type metadata accessor for PosterSectionRemovalView();
  v37.receiver = v4;
  v37.super_class = v20;
  v21 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a1, a2, a3, a4);
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 systemRedColor];
  sub_21B6C9354();
  v25 = sub_21B6C8D74();
  v26 = [objc_opt_self() systemImageNamed_];

  sub_21B6C9304();
  v27 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:27.0];
  sub_21B6C91C4();
  (*(v10 + 104))(v12, *MEMORY[0x277D74FD8], v9);
  sub_21B6C9224();
  v28 = v24;
  sub_21B6C92C4();
  v29 = [v28 colorWithAlphaComponent_];
  sub_21B6C92B4();
  sub_21B61785C(0, &unk_28120B100);
  v30 = v36;
  (*(v13 + 16))(v16, v18, v36);
  sub_21B61785C(0, &unk_28120B110);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21B6C91B4();
  v31 = sub_21B6C9374();
  [v31 setOverrideUserInterfaceStyle_];
  v32 = sub_21B6C8D74();
  [v31 setAccessibilityIdentifier_];

  [v31 setTintAdjustmentMode_];
  [v23 addSubview_];

  (*(v13 + 8))(v18, v30);
  v33 = *&v23[OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_deleteButton];
  *&v23[OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_deleteButton] = v31;

  return v23;
}

void sub_21B62D0D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_posterID + 8);
    if (v2 && (v3 = *(Strong + OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_posterID), swift_unknownObjectWeakLoadStrong()))
    {

      sub_21B687C20(v1, v3, v2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_21B62D254()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for PosterSectionRemovalView();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];

  v10 = *&v0[OBJC_IVAR____TtC11PosterBoard24PosterSectionRemovalView_deleteButton];
  if (v10)
  {
    v11 = v10;
    BSRectWithSize();
    v17.origin.x = v2;
    v17.origin.y = v4;
    v17.size.width = v6;
    v17.size.height = v8;
    MidX = CGRectGetMidX(v17);
    v13 = v2;
    v14 = MidX;
    v18.origin.x = v13;
    v18.origin.y = v4;
    v18.size.width = v6;
    v18.size.height = v8;
    MidY = CGRectGetMidY(v18);
    CGPointMake(v14, MidY);
    UIRectCenteredAboutPointScale();
    [v11 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

id sub_21B62D3F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PosterSectionRemovalView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21B62D4B4(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_selectedSectionIndex];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionRevealProgressProvider];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_hidesHomeCardsInAlongsideLayout] = 1;
  v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCompactLayoutShouldScaleFurtherBack] = 0;
  v5 = &v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutModeTransitioningTo];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_itemSize];
  *v6 = 0;
  v6[1] = 0;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_minimumLineSpacing] = 0;
  v7 = &v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionInset];
  v8 = *(MEMORY[0x277D768C8] + 16);
  *v7 = *MEMORY[0x277D768C8];
  v7[1] = v8;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_scrollDirection] = 1;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_zoomCardSizeMultiplier] = 0x3FE70A3D70A3D70ALL;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cardSizeMultiplier] = 0x3FE6666666666666;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_peekingCardSizeMultiplier] = 0x3FE47AE147AE147BLL;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCardUpscale] = 0x3FF428F5C28F5C29;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCardLesserUpscale] = 0x3FF35C28F5C28F5CLL;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_maximumVerticalRevealFraction] = 0x3FD0000000000000;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_overhangMultiplier] = 0x3FAEB851EB851EB8;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_zoomCardSizeOverlapMultiplier] = 0x3FD0000000000000;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_selectedFrontBaseOffset] = 0x3FE599999999999ALL;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_unselectedFrontBaseOffset] = 0xBFA2B020C49BA5E3;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_unselectedFrontShovedMultiplier] = 0xBFC999999999999ALL;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_unselectedFrontShovedMultiplierPad] = 0xBFCEB851EB851EB8;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_unselectedFrontParallaxLeadingMultiplier] = 0xBF826E978D4FDF3BLL;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_unselectedFrontParallaxTrailingMultiplier] = 0xBFBBC6A7EF9DB22DLL;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_backBaseOffset] = 0x3FB147AE147AE148;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_backParallaxMultiplier] = 0xBFCB126E978D4FDFLL;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_backParallaxMultiplierPad] = 0xBFCEE147AE147AE1;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_coupledContentEdgeMargin] = 0x4000000000000000;
  v9 = &v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_contentBounds];
  *v9 = 0u;
  v9[1] = 0u;
  v10 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedAttributes] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryHeaderAttributes] = v10;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryFooterAttributes] = v10;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryDecorationAttributes] = v10;
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionRevealProgresses] = MEMORY[0x277D84F98];
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionIndexPathsToDelete] = v10;
  v11 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_indexPathToMaintainForTransition;
  v12 = sub_21B6C8A04();
  (*(*(v12 - 8) + 56))(&v1[v11], 1, 1, v12);
  *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutMode] = a1;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for PosterRackStackedLayout();
  v13 = objc_msgSendSuper2(&v18, sel_init);
  type metadata accessor for PosterCoupledTitlesView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = v13;
  v16 = sub_21B6C8D74();
  [v15 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v16];

  return v15;
}

uint64_t sub_21B62D8AC()
{
  v1 = v0;
  v20 = sub_21B6C8A04();
  v23 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21B6C88D4();
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD930B8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  sub_21B6C88E4();
  v9 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionIndexPathsToDelete;
  sub_21B6C8964();
  sub_21B633594(&qword_27CD930C0, MEMORY[0x277CC9A28]);
  v21 = v0;
  ++v22;
  v19 = v23 + 32;
  while (1)
  {
    sub_21B6C8FD4();
    sub_21B633594(&qword_27CD930C8, MEMORY[0x277CC9A08]);
    v10 = sub_21B6C8D64();
    (*v22)(v5, v3);
    if (v10)
    {
      break;
    }

    v11 = sub_21B6C8FF4();
    v13 = *v12;
    v11(v25, 0);
    sub_21B6C8FE4();
    MEMORY[0x21CEF5B40](0, v13);
    v14 = *(v1 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v9) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_21B6A3078(0, v14[2] + 1, 1, v14);
      *(v1 + v9) = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      v14 = sub_21B6A3078(v16 > 1, v17 + 1, 1, v14);
    }

    v14[2] = v17 + 1;
    (*(v23 + 32))(v14 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v17, v24, v20);
    v1 = v21;
    *(v21 + v9) = v14;
  }

  return sub_21B62AA8C(v8, &qword_27CD930B8);
}

uint64_t sub_21B62DC48@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_21B6C8A04();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_indexPathToMaintainForTransition;
  swift_beginAccess();
  sub_21B633524(v1 + v13, v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v17 = *(v7 + 32);
    v17(v12, v5, v6);
    v17(a1, v12, v6);
    goto LABEL_9;
  }

  sub_21B62AA8C(v5, &qword_27CD93500);
  v14 = *(v1 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionIndexPathsToDelete);
  if (!*(v14 + 16))
  {
    v18 = 1;
    return (*(v7 + 56))(a1, v18, 1, v6);
  }

  (*(v7 + 16))(v10, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);
  sub_21B630624();
  if ((v15 & 1) == 0)
  {
    (*(v7 + 32))(a1, v10, v6);
    goto LABEL_9;
  }

  result = sub_21B6C89F4();
  if (!__OFSUB__(result, 1))
  {
    MEMORY[0x21CEF5B40](0, result - 1);
    (*(v7 + 8))(v10, v6);
LABEL_9:
    v18 = 0;
    return (*(v7 + 56))(a1, v18, 1, v6);
  }

  __break(1u);
  return result;
}

void sub_21B62E05C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v49 - v4;
  v58 = sub_21B6C8A04();
  v5 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PosterRackStackedLayout();
  v59.receiver = v1;
  v59.super_class = v7;
  objc_msgSendSuper2(&v59, sel_prepareForTransitionFromLayout_, a1);
  v56 = v1;
  v8 = [v1 collectionView];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    return;
  }

  v11 = v10;
  v12 = a1;
  [v9 contentOffset];
  v14 = v13;
  v16 = v15;
  [v9 bounds];
  v18 = v17;
  v20 = v19;
  v21 = [v11 layoutAttributesForElementsInRect_];
  if (v21)
  {
    v22 = v21;
    sub_21B6335DC();
    v23 = sub_21B6C8E84();

    if (!(v23 >> 62))
    {
      goto LABEL_5;
    }

LABEL_22:
    v24 = sub_21B6C9454();
    if (v24)
    {
      goto LABEL_6;
    }

LABEL_23:

LABEL_24:

    return;
  }

  v23 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_22;
  }

LABEL_5:
  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    goto LABEL_23;
  }

LABEL_6:
  v50 = v12;
  v51 = v9;
  if (v24 >= 1)
  {
    v25 = 0;
    v26 = *&v56[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutMode];
    v27 = v23 & 0xC000000000000001;
    v55 = (v5 + 8);
    v52 = (v5 + 56);
    v53 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_indexPathToMaintainForTransition;
    v28 = 0.0;
    v29 = &selRef_collectionViewLayout;
    v30 = &off_2782CA000;
    while (1)
    {
      if (v27)
      {
        v31 = MEMORY[0x21CEF66E0](v25, v23);
      }

      else
      {
        v31 = *(v23 + 8 * v25 + 32);
      }

      v32 = v31;
      [v31 v29[412]];
      v62.origin.x = v14;
      v62.origin.y = v16;
      v62.size.width = v18;
      v62.size.height = v20;
      v61 = CGRectIntersection(v60, v62);
      Width = CGRectGetWidth(v61);
      v34 = Width;
      if (v26 == 4)
      {
        v35 = [v32 v30[472]];
        v36 = v57;
        sub_21B6C8994();

        v37 = sub_21B6C89B4();
        (*v55)(v36, v58);
        if (v28 < v34 && v37 == 1)
        {
LABEL_18:
          v38 = [v32 v30[472]];
          v39 = v30;
          v40 = v27;
          v41 = v26;
          v42 = v24;
          v43 = v23;
          v44 = v29;
          v45 = v54;
          sub_21B6C8994();

          (*v52)(v45, 0, 1, v58);
          v46 = v56;
          v47 = v53;
          swift_beginAccess();
          v48 = v45;
          v29 = v44;
          v23 = v43;
          v24 = v42;
          v26 = v41;
          v27 = v40;
          v30 = v39;
          sub_21B633628(v48, &v46[v47]);
          swift_endAccess();
          v28 = v34;
          goto LABEL_9;
        }
      }

      else if (v28 < Width)
      {
        goto LABEL_18;
      }

LABEL_9:
      if (v24 == ++v25)
      {

        goto LABEL_24;
      }
    }
  }

  __break(1u);
}

void sub_21B62E630()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD93500);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v187 - v4;
  v6 = sub_21B6C8A04();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v187 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v191 = &v187 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v187 - v16;
  v18 = type metadata accessor for PosterRackStackedLayout();
  v228.receiver = v2;
  v228.super_class = v18;
  objc_msgSendSuper2(&v228, sel_prepareLayout);
  v19 = [v2 collectionView];
  if (!v19)
  {
    return;
  }

  v194 = v7;
  v20 = v19;
  [v20 bounds];
  v22 = v21;
  v24 = *&v23;
  [v20 safeAreaInsets];
  v198 = v25;

  v26 = *&v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutMode];
  v200 = v26;
  v27 = v22;
  if (!v26)
  {
    LODWORD(v211) = 0;
    v30 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_itemSize;
    *&v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_itemSize] = v22;
    v31 = &v2[v30];
    v31[1] = v24;
    v193 = v31 + 1;
    v32 = 0.0;
    v28 = 1.0;
    LODWORD(v210) = 1;
    goto LABEL_23;
  }

  LODWORD(v210) = v26 != 4;
  if (v26 == 4)
  {
    v28 = 0.7;
  }

  else
  {
    v28 = 1.0;
  }

  LODWORD(v211) = 1;
  if (v26 == 6 || v26 == 4)
  {
LABEL_15:
    v33 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_itemSize;
    *&v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_itemSize] = v22 * v28;
    *&v2[v33 + 8] = v24 * v28;
    v193 = &v2[v33 + 8];
    v32 = 0.0;
    if (v26 == 6)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if (v26 != 2)
  {
    LODWORD(v211) = 0;
    LODWORD(v210) = 0;
    v28 = 0.7;
    v26 = v200;
    goto LABEL_15;
  }

  LODWORD(v210) = 0;
  LODWORD(v211) = 0;
  if (v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCompactLayoutShouldScaleFurtherBack])
  {
    v28 = 0.847;
  }

  else
  {
    v28 = 0.882;
  }

  v29 = &v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_itemSize];
  *v29 = v22 * v28;
  v29[1] = v24 * v28;
  v193 = v29 + 1;
LABEL_16:
  v34 = 24.0;
  if ((v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_hidesHomeCardsInAlongsideLayout] & 1) == 0)
  {
    v35 = BSFloatLessThanOrEqualToFloat();
    v34 = 16.0;
    if (!v35)
    {
      v36 = BSFloatLessThanOrEqualToFloat();
      v34 = 22.0;
      if (v36)
      {
        v34 = 20.0;
      }
    }
  }

  if (v200 == 2)
  {
    v32 = v34 * 0.545;
  }

  else
  {
    v32 = v34;
  }

LABEL_23:
  v190 = v5;
  v203 = v13;
  *&v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_minimumLineSpacing] = v32;
  v37 = &v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionInset];
  *v37 = 0.0;
  v37[1] = v32 * 0.5;
  v37[2] = 0.0;
  v37[3] = v32 * 0.5;
  v38 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedAttributes;
  swift_beginAccess();
  v39 = MEMORY[0x277D84F90];
  v222 = v38;
  *&v2[v38] = MEMORY[0x277D84F90];

  v40 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryHeaderAttributes;
  swift_beginAccess();
  v197 = v40;
  *&v2[v40] = v39;

  v41 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryFooterAttributes;
  swift_beginAccess();
  v196 = v41;
  *&v2[v41] = v39;

  v42 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryDecorationAttributes;
  swift_beginAccess();
  v202 = v42;
  *&v2[v42] = v39;

  v43 = *&v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionRevealProgressProvider];
  v221 = v6;
  if (v43)
  {

    v45 = v43(v44);
    sub_21B52B410(v43);
  }

  else
  {
    v45 = sub_21B698B34(MEMORY[0x277D84F90]);
  }

  v46 = v200;
  *&v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionRevealProgresses] = v45;

  v47 = &v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_contentBounds];
  *v47 = 0;
  *(v47 + 1) = 0;
  *(v47 + 2) = v27;
  *(v47 + 3) = v24;
  v48 = [v20 numberOfSections];
  v49 = v222;
  if (v48 + 0x4000000000000000 < 0)
  {
    goto LABEL_146;
  }

  v50 = v27 * (1.0 - v28);
  v187 = v48;
  v45 = 2 * v48;
  v51 = *v193;
  v52 = (v24 - *v193) * 0.5;
  v53 = v50 * 0.5;
  v54 = v50 * 0.5 - v32;
  v238.origin.x = 0.0;
  v238.origin.y = v52;
  v238.size.width = v54;
  v238.size.height = *v193;
  *v47 = CGRectUnion(*v47, v238);
  if (v46 == 2)
  {
    v55 = v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCompactLayoutShouldScaleFurtherBack] == 0;
    v56 = 0.882;
    if (v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCompactLayoutShouldScaleFurtherBack])
    {
      v56 = 0.847;
    }

    v212 = v56;
    v57 = 0.8064;
    if (!v55)
    {
      v57 = 0.7744;
    }

    v209 = v57;
  }

  else
  {
    v209 = 0.64;
    v212 = 0.7;
  }

  if ((v45 & 0x8000000000000000) != 0)
  {
    goto LABEL_147;
  }

  v188 = v53;
  v189 = v52;
  v192 = v20;
  v216 = v10;
  v208 = v27 * v212;
  v219 = v45;
  v213 = v27;
  if (v45)
  {
    v199 = v32;
    v206 = v27 * 0.5;
    v207 = v27 * v209;
    v205 = v24 * 0.5;
    v204 = objc_opt_self();
    v58 = 0;
    v195 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_hidesHomeCardsInAlongsideLayout;
    v59 = (v194 + 8);
    v60 = v211;
    if (v46 == 3)
    {
      v60 = 1;
    }

    v201 = v60;
    v61 = 0.0;
    v62 = v52;
    v63 = v54;
    v64 = v51;
    v220 = v46;
    v32 = v27;
    v214 = v24;
    while (1)
    {
      v46 = v58 % 2;
      v67 = v208;
      if (v58 % 2)
      {
        v67 = v207;
      }

      v68 = v212;
      if (v58 % 2)
      {
        v68 = v209;
      }

      v69 = v24 * v68;
      v54 = v210 ? v32 : v67;
      v51 = v210 ? v24 : v69;
      *&v218 = v61;
      *&v217 = v62;
      *&v215 = v63;
      v70 = v32;
      v71 = v61;
      v72 = v62;
      v73 = v63;
      v74 = v64;
      v65 = v46 ? CGRectGetMidX(*(&v64 - 3)) + v54 * -0.5 : v199 + CGRectGetMaxX(*(&v64 - 3));
      v66 = (v24 - v51) * 0.5;
      v230.origin.x = v65;
      v230.origin.y = v66;
      v230.size.width = v54;
      v230.size.height = v51;
      v75 = CGRectGetMidX(v230) - v206;
      v231.origin.x = v65;
      v231.origin.y = v66;
      v231.size.width = v54;
      v231.size.height = v51;
      v76 = CGRectGetMidY(v231) - v205;
      MEMORY[0x21CEF5B60](v58 % 2, v58 / 2);
      v77 = sub_21B6C8974();
      v78 = [v204 layoutAttributesForCellWithIndexPath_];

      v79 = v75;
      v24 = v214;
      v80 = v76;
      v32 = v70;
      [v78 setFrame_];
      if (v46)
      {
        break;
      }

      v49 = v222;
      if (v211)
      {
        goto LABEL_61;
      }

LABEL_62:
      swift_beginAccess();
      v83 = v78;
      MEMORY[0x21CEF6000]();
      if (*((*&v2[v49] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v49] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
        v49 = v222;
      }

      sub_21B6C8EA4();
      swift_endAccess();
      if (v46)
      {
        (*v59)(v17, v221);

        v61 = *&v218;
        v65 = *&v218;
        v62 = *&v217;
        v66 = *&v217;
        v63 = *&v215;
        v54 = *&v215;
        v64 = v74;
        v51 = v74;
      }

      else
      {
        v239.origin.x = v65;
        v239.origin.y = v66;
        v239.size.width = v54;
        v239.size.height = v51;
        v232 = CGRectUnion(*v47, v239);
        x = v232.origin.x;
        y = v232.origin.y;
        width = v232.size.width;
        height = v232.size.height;

        (*v59)(v17, v221);
        *v47 = x;
        *(v47 + 1) = y;
        v61 = v65;
        v62 = v66;
        v63 = v54;
        v64 = v51;
        *(v47 + 2) = width;
        *(v47 + 3) = height;
        v32 = v213;
        v24 = v214;
      }

      if (v219 == ++v58)
      {
        goto LABEL_67;
      }
    }

    v81 = v220;
    if (!v211)
    {
      v81 = 3;
    }

    v220 = v81;
    v49 = v222;
    if (v201)
    {
      goto LABEL_62;
    }

    v82 = v2[v195];
    v220 = v200;
    if (v82 != 1)
    {
      goto LABEL_62;
    }

LABEL_61:
    [v78 setHidden_];
    goto LABEL_62;
  }

  v65 = 0.0;
  v66 = v52;
  v220 = v46;
  v32 = v27;
LABEL_67:
  v233.origin.x = v65;
  v233.origin.y = v66;
  v233.size.width = v54;
  v233.size.height = v51;
  v240.origin.x = CGRectGetMaxX(v233);
  v240.size.height = *v193;
  v240.size.width = v188;
  v240.origin.y = v189;
  *v47 = CGRectUnion(*v47, v240);
  [v192 contentOffset];
  v1 = v88;
  v89 = v190;
  v45 = v2;
  sub_21B62DC48(v190);
  v20 = v194;
  v47 = v221;
  if ((*(v194 + 48))(v89, 1, v221) != 1)
  {
    v17 = v191;
    (*(v20 + 32))(v191, v89, v47);
    v45 = v17;
    v90 = sub_21B6C89F4();
    if (v90 + 0x4000000000000000 < 0)
    {
      goto LABEL_148;
    }

    v49 = v90;
    v91 = sub_21B6C89D4();
    v45 = v91 + 2 * v49;
    if (__OFADD__(v91, 2 * v49))
    {
      goto LABEL_149;
    }

    v49 = v222;
    v92 = *&v2[v222];
    if (v92 >> 62)
    {
      goto LABEL_150;
    }

    v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_73;
  }

  sub_21B62AA8C(v89, &qword_27CD93500);
  while (1)
  {
    *&v215 = v187 & 0x7FFFFFFFFFFFFFFFLL;
    if ((v187 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      break;
    }

    v214 = COERCE_DOUBLE(objc_opt_self());
    v46 = 0;
    v20 = 0;
    v212 = COERCE_DOUBLE("erRackStackedLayout");
    if (v220 == 3)
    {
      v97 = 1.0;
    }

    else
    {
      v97 = 0.0;
    }

    v98 = (v194 + 8);
    v17 = v203;
    while (v20 != 0x4000000000000000)
    {
      v45 = *&v2[v49];
      if ((v45 & 0xC000000000000001) != 0)
      {

        v99 = MEMORY[0x21CEF66E0](v46, v45);
      }

      else
      {
        if ((v46 & 0x8000000000000000) != 0)
        {
          goto LABEL_136;
        }

        if (v46 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_137;
        }

        v99 = *(v45 + 8 * v46 + 32);
      }

      [v99 frame];
      v101 = v100;
      v103 = v102;
      v105 = v104;
      v107 = v106;

      v108 = sub_21B62FACC(v101, v103, v105, v107);
      MEMORY[0x21CEF5B60](0, v20);
      sub_21B6304B0(&v223, v101, v103, v105, v107);
      a = v223.a;
      b = v223.b;
      c = v223.c;
      d = v223.d;
      v113 = v225;
      v114 = v226;
      v217 = v224;
      v218 = *&v223.tx;
      v115 = sub_21B6C8D74();
      v116 = sub_21B6C8974();
      v117 = [*&v214 layoutAttributesForDecorationViewOfKind:v115 withIndexPath:v116];

      [v117 setFrame_];
      *&v223.a = v218;
      *&v223.c = v217;
      v223.tx = v113;
      v223.ty = v114;
      [v117 setTransform_];
      [v117 setAlpha_];
      [v117 setHidden_];
      [v117 setZIndex_];
      v118 = v202;
      swift_beginAccess();
      v119 = v117;
      MEMORY[0x21CEF6000]();
      if (*((*&v2[v118] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v118] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
      }

      ++v20;
      v45 = &v2[v118];
      sub_21B6C8EA4();
      swift_endAccess();

      v47 = v221;
      (*v98)(v17, v221);
      v46 += 2;
      v49 = v222;
      v32 = v213;
      if (v215 == v20)
      {
        goto LABEL_94;
      }
    }

    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v93 = sub_21B6C9454();
    if ((v93 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
LABEL_73:
      if (v45 >= v93)
      {
        goto LABEL_78;
      }

      v46 = *&v2[v49];
      if ((v46 & 0xC000000000000001) == 0)
      {
        if (v45 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v94 = *(v46 + 8 * v45 + 32);
        goto LABEL_77;
      }
    }

    v94 = MEMORY[0x21CEF66E0](v45, v46);

LABEL_77:
    [v94 frame];
    MinX = CGRectGetMinX(v234);
    v45 = v2;
    sub_21B632ED0(0, MinX);
    v1 = v96;

LABEL_78:
    (*(v20 + 8))(v17, v47);
  }

LABEL_94:
  v49 = v216;
  if (v219)
  {
    v120 = 0;
    if (v210)
    {
      v121 = v32;
    }

    else
    {
      v121 = v208;
    }

    v122 = round(*&v1 / v121);
    v214 = COERCE_DOUBLE(llround(*&v1 / v121));
    v123 = *MEMORY[0x277D767D8];
    *&v124 = v194 + 8;
    v208 = *MEMORY[0x277D767D0];
    v211 = v1;
    v212 = v122;
    v213 = v121;
    *&v209 = v194 + 8;
    v210 = v123;
    while (1)
    {
      v45 = v120 / 2;
      v46 = v120 % 2;
      MEMORY[0x21CEF5B60](v120 % 2, v120 / 2);
      if (v121 == 0.0)
      {
        v20 = v120 / -2;
        v125 = v222;
      }

      else
      {
        v125 = v222;
        if ((*&v122 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_141;
        }

        if (v122 <= -9.22337204e18)
        {
          goto LABEL_142;
        }

        if (v122 >= 9.22337204e18)
        {
          goto LABEL_144;
        }

        v20 = *&v214 - v45;
        if (__OFSUB__(*&v214, v45))
        {
          goto LABEL_145;
        }
      }

      if (v20 < 0)
      {
        v126 = __OFSUB__(0, v20);
        v20 = -v20;
        if (v126)
        {
          goto LABEL_143;
        }
      }

      v45 = *&v2[v125];
      if ((v45 & 0xC000000000000001) == 0)
      {
        break;
      }

      v17 = MEMORY[0x21CEF66E0](v120, v45);

      if (!v46)
      {
        goto LABEL_111;
      }

LABEL_128:
      if (__OFSUB__(100 - v46, v20))
      {
        goto LABEL_139;
      }

      ++v120;
      [v17 setZIndex_];
      [v17 frame];
      v49 = v216;
      sub_21B62FBE8(&v229, v183, v184, v185, v186, *&v1);
      v223 = v229;
      [v17 setTransform_];

      (**&v124)(v49, v47);
      if (v120 == v219)
      {
        goto LABEL_133;
      }
    }

    if (v120 < 0)
    {
      goto LABEL_138;
    }

    if (v120 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_140;
    }

    v17 = *(v45 + 8 * v120 + 32);
    if (v46)
    {
      goto LABEL_128;
    }

LABEL_111:
    [v17 frame];
    sub_21B630260(&v223, v127, v128, v129, v130, v198, v1);
    v131 = v223.a;
    v132 = v223.b;
    v133 = v223.c;
    v134 = v223.d;
    v135 = v225;
    v136 = v226;
    v137 = v227;
    v218 = *&v223.tx;
    v215 = v224;
    v138 = v210;
    v139 = sub_21B6C8974();
    *&v217 = objc_opt_self();
    v140 = [v217 layoutAttributesForSupplementaryViewOfKind:v138 withIndexPath:v139];

    [v140 setFrame_];
    *&v223.c = v215;
    *&v223.a = v218;
    v223.tx = v135;
    v223.ty = v136;
    [v140 setTransform_];
    v141 = 0.0;
    if (v220 == 1)
    {
      v141 = v137;
    }

    [v140 setAlpha_];
    [v140 setZIndex_];
    v142 = v197;
    swift_beginAccess();
    v143 = v140;
    MEMORY[0x21CEF6000]();
    v144 = *((*&v2[v142] & 0xFFFFFFFFFFFFFF8) + 0x10);
    v145 = *((*&v2[v142] & 0xFFFFFFFFFFFFFF8) + 0x18);
    *&v218 = v143;
    if (v144 >= v145 >> 1)
    {
      sub_21B6C8E94();
    }

    sub_21B6C8EA4();
    swift_endAccess();
    v146 = sub_21B6C89F4();
    v147 = COERCE_DOUBLE(sub_21B63083C(v146));
    if (v148)
    {
      v147 = 0.0;
    }

    *&v215 = v147;
    [v17 frame];
    v150 = v149;
    v152 = v151;
    v154 = v153;
    v156 = v155;
    v157 = [v2 collectionView];
    if (v157)
    {
      v158 = v157;
      v159 = [v157 traitCollection];

      [v159 displayScale];
    }

    CGAffineTransformMakeScale(&v223, 0.7, 0.7);
    v235.origin.x = v150;
    v235.origin.y = v152;
    v235.size.width = v154;
    v235.size.height = v156;
    CGRectApplyAffineTransform(v235, &v223);
    UIRectCenteredIntegralRectScale();
    v161 = v160;
    v162 = v152;
    v164 = v163;
    v236.origin.x = v150;
    v166 = v165;
    v168 = v167;
    v236.origin.y = v162;
    v236.size.width = v154;
    v236.size.height = v156;
    CGRectGetHeight(v236);
    v237.origin.x = v161;
    v237.origin.y = v164;
    v237.size.width = v166;
    v237.size.height = v168;
    CGRectGetMaxY(v237);
    UIRectRoundToScale();
    v170 = v169;
    v172 = v171;
    v32 = v173;
    v175 = v174;
    v176 = *&v208;
    v177 = sub_21B6C8974();
    v178 = [v217 layoutAttributesForSupplementaryViewOfKind:v176 withIndexPath:v177];

    [v178 setFrame_];
    v223.b = 0.0;
    v223.c = 0.0;
    v223.a = 1.0;
    v223.d = 1.0;
    v223.tx = 0.0;
    v223.ty = 0.0;
    [v178 setTransform_];
    v179 = 0.0;
    if (v220 == 1)
    {
      v179 = *&v215;
      v180 = *&v215 <= 0.75;
    }

    else
    {
      v180 = 1;
    }

    if (v180)
    {
      v49 = 0;
    }

    else
    {
      v49 = 250;
    }

    [v178 setAlpha_];
    [v178 setZIndex_];
    v181 = v196;
    swift_beginAccess();
    v182 = v178;
    MEMORY[0x21CEF6000]();
    if (*((*&v2[v181] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v181] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v49 = *((*&v2[v181] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_21B6C8E94();
    }

    v45 = &v2[v181];
    sub_21B6C8EA4();
    swift_endAccess();

    v47 = v221;
    v1 = v211;
    v122 = v212;
    v121 = v213;
    v124 = v209;
    goto LABEL_128;
  }

LABEL_133:
}

uint64_t sub_21B62FACC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = [v4 collectionView];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 traitCollection];

    [v11 displayScale];
  }

  v12 = [v4 collectionView];
  if (v12)
  {
    v13 = v12;
    [v12 bounds];
  }

  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  CGRectGetMidX(v15);
  BSFloatFloorForScale();
  return BSFloatIsZero();
}

CGFloat sub_21B62FBE8@<D0>(_OWORD *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a6@<D4>)
{
  v71 = sub_21B6C89D4();
  v12 = *&v6[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutMode];
  v13 = &v6[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_selectedSectionIndex];
  HIDWORD(v69) = v6[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_selectedSectionIndex + 8];
  v14 = (sub_21B6C89F4() == *v13) & ~v13[8];
  if ((v12 & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_hidesHomeCardsInAlongsideLayout;
  if ((v12 & 0xFFFFFFFFFFFFFFFDLL) == 4)
  {
    v17 = 0;
  }

  else
  {
    v17 = v6[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_hidesHomeCardsInAlongsideLayout];
  }

  LODWORD(v69) = (v12 & 0xFFFFFFFFFFFFFFFDLL) == 4;
  v18 = [v6 collectionView];
  v19 = 0.0;
  if (v18)
  {
    v20 = v18;
    [v18 bounds];
    v19 = v21;
  }

  v22 = [v6 collectionView];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 traitCollection];

    [v24 displayScale];
  }

  v80.origin.x = a2;
  v80.origin.y = a3;
  v80.size.width = a4;
  v80.size.height = a5;
  *v25.i64 = v19 * 0.5 + a6 - CGRectGetMidX(v80);
  v72 = v25;
  v26 = PFCurrentDeviceClass();
  if (!v12 || v12 == 6)
  {
    v28 = 24.0;
    if ((v6[v16] & 1) == 0)
    {
      v29 = BSFloatLessThanOrEqualToFloat();
      v28 = 16.0;
      if ((v29 & 1) == 0)
      {
        v30 = BSFloatLessThanOrEqualToFloat();
        v28 = 22.0;
        if (v30)
        {
          v28 = 20.0;
        }
      }
    }

    v27.i64[0] = 1.0;
    v31.f64[0] = NAN;
    v31.f64[1] = NAN;
    *&v32 = vbslq_s8(vnegq_f64(v31), v27, v72).u64[0];
    v33 = 0.0;
    if (*v72.i64 == 0.0)
    {
      v32 = 0.0;
    }

    v34 = -(v28 * v32);
    v35 = 0.0;
    v36 = 1.0;
    goto LABEL_20;
  }

  if (v12 == 5 || v12 == 3)
  {
    if (sub_21B62FACC(a2, a3, a4, a5))
    {
      if (v12 == 5)
      {
        if (!v71)
        {
          v27.i64[0] = 1.0;
          v33 = 0.0;
          v35 = 0.0;
          v36 = 1.0;
          v34 = 0.0;
          goto LABEL_20;
        }

        v27.i64[0] = _UILerp_0(0.64);
        v34 = 0.0;
        if (*v27.i64 >= 1.0)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }

      BSFloatRoundForScale();
      *v27.i64 = (v19 + -10.0 + -4.0) * 0.5 / a4;
      if (v71)
      {
        v34 = v47;
      }

      else
      {
        v34 = -v47;
      }

LABEL_57:
      v33 = 0.0;
      if (*v27.i64 >= 1.0 || a4 <= 0.0)
      {
        goto LABEL_62;
      }

      v51 = a5 <= 0.0;
      goto LABEL_60;
    }

    v45.i64[0] = 1.0;
    v46.f64[0] = NAN;
    v46.f64[1] = NAN;
    v45.i64[0] = vbslq_s8(vnegq_f64(v46), v45, v72).u64[0];
    if (*v72.i64 == 0.0)
    {
      *v45.i64 = 0.0;
    }

    v34 = v19 * 0.3 * -0.5 * *v45.i64;
LABEL_31:
    v27.i64[0] = 0x3FE6666666666666;
    goto LABEL_57;
  }

  if (v71)
  {
    if (v15)
    {
      v27.i64[0] = 0x3FE6666666666666;
      v34 = 0.0;
      goto LABEL_53;
    }

    if (v12 == 2)
    {
      v49 = v6[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCompactLayoutShouldScaleFurtherBack] == 0;
      v50 = 0.8064;
      v27.i64[0] = 0x3FE8C7E28240B780;
LABEL_45:
      if (v49)
      {
        *v27.i64 = v50;
      }

      v34 = 0.0;
      goto LABEL_53;
    }

    if (!v17)
    {
      v34 = v19 * 0.0675 + *v72.i64 * dbl_21B6D8560[v26 == 1];
      v27.i64[0] = 0x3FE47AE147AE147BLL;
      goto LABEL_57;
    }

    v27.i64[0] = 0x3FE47AE147AE147BLL;
    v34 = 0.0;
  }

  else
  {
    if (v15)
    {
      v81.origin.x = a2;
      v81.origin.y = a3;
      v81.size.width = a4;
      v81.size.height = a5;
      Width = CGRectGetWidth(v81);
      v27.i64[0] = 0x3FE70A3D70A3D70ALL;
      v34 = -4.0 - v19 * 0.5 + Width * 0.72 * -0.5;
      goto LABEL_57;
    }

    if (v12 == 2)
    {
      v49 = v6[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCompactLayoutShouldScaleFurtherBack] == 0;
      v50 = 0.882;
      v27.i64[0] = 0x3FEB1A9FBE76C8B4;
      goto LABEL_45;
    }

    if (!v17)
    {
      v61 = v26;
      v62 = v19 * -0.0365;
      v63 = [v6 collectionView];
      if (v63 && (v64 = v63, v65 = [v63 numberOfItemsInSection_], v64, v65 == 1))
      {
        v66 = *v72.i64;
        v67 = fabs(*v72.i64 / (a4 * 0.33));
        if (v67 > 1.0)
        {
          v67 = 1.0;
        }

        v62 = v62 * v67;
      }

      else
      {
        v66 = *v72.i64;
      }

      v68 = (&unk_21B6D8570 + 8 * (v61 == 1));
      if ((v70 & (HIDWORD(v70) ^ 1)) == 0)
      {
        v68 = (&unk_21B6D8580 + 8 * (v66 > 0.0));
      }

      v34 = v66 * *v68 + v62;
      goto LABEL_31;
    }

    v34 = 0.0;
    v27.i64[0] = 0x3FE6666666666666;
  }

LABEL_53:
  if (a4 <= 0.0)
  {
LABEL_55:
    v33 = 0.0;
LABEL_62:
    v35 = 0.0;
    v36 = *v27.i64;
    goto LABEL_20;
  }

  v51 = a5 <= 0.0;
  v33 = 0.0;
LABEL_60:
  v35 = 0.0;
  v36 = *v27.i64;
  if (!v51)
  {
    CGAffineTransformMakeScale(&t1, *v27.i64, *v27.i64);
    v82.origin.x = a2;
    v82.origin.y = a3;
    v82.size.width = a4;
    v82.size.height = a5;
    CGRectApplyAffineTransform(v82, &t1);
    BSSizeRoundForScale();
    v53 = v52 / a4;
    v74 = v54 / a5;
    BSRectWithSize();
    UIRectCenteredRect();
    v56 = v55;
    v58 = v57;
    BSRectRoundForScale();
    v60 = v59;
    v36 = v53;
    v33 = *v27.i64 - v58;
    v35 = v60 - v56;
    *v27.i64 = v74;
  }

LABEL_20:
  CGAffineTransformMakeScale(&t1, v36, *v27.i64);
  tx = t1.tx;
  ty = t1.ty;
  v73 = *&t1.c;
  recta = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, v35 + v34, v33);
  v39 = *&t1.a;
  v40 = *&t1.c;
  v41 = *&t1.tx;
  *&t1.a = recta;
  *&t1.c = v73;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v39;
  *&t2.c = v40;
  *&t2.tx = v41;
  CGAffineTransformConcat(&v77, &t1, &t2);
  result = v77.a;
  v43 = *&v77.c;
  v44 = *&v77.tx;
  *a1 = *&v77.a;
  a1[1] = v43;
  a1[2] = v44;
  return result;
}

uint64_t sub_21B630260@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, uint64_t a7)
{
  v14 = [v7 collectionView];
  v15 = 0.0;
  if (v14)
  {
    v16 = v14;
    v17 = [v14 traitCollection];

    [v17 displayScale];
  }

  v18 = [v7 collectionView];
  if (v18)
  {
    v19 = v18;
    [v18 bounds];
    v21 = v20;

    v15 = v21 * 0.5;
  }

  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  MidX = CGRectGetMidX(v42);
  CGAffineTransformMakeScale(&v41, 0.7, 0.7);
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  CGRectApplyAffineTransform(v43, &v41);
  UIRectCenteredIntegralRectScale();
  x = v44.origin.x;
  width = v44.size.width;
  height = v44.size.height;
  CGRectGetMinY(v44);
  v45.origin.x = x;
  v45.origin.y = a6;
  v45.size.width = width;
  v45.size.height = height;
  CGRectGetMinY(v45);
  UIRectRoundToScale();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  result = PUIFeatureEnabled();
  if (result)
  {
    v37 = v15 + *&a7 - MidX;
    v35.i64[0] = 1.0;
    v38 = fmin(vabdd_f64(v15 + *&a7, MidX) / v15, 1.0);
    v39 = (1.0 - v38) * (1.0 - v38);
    *v36.i64 = -v37;
    v40.f64[0] = NAN;
    v40.f64[1] = NAN;
    v35.i64[0] = vbslq_s8(vnegq_f64(v40), v35, v36).u64[0];
    if (v37 == 0.0)
    {
      *v35.i64 = -0.0;
    }

    v27 = *v35.i64 * v38 * 114.0 + v27;
  }

  else
  {
    v39 = 1.0;
  }

  *a1 = v27;
  *(a1 + 8) = v29;
  *(a1 + 16) = v31;
  *(a1 + 24) = v33;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x3FF0000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v39;
  return result;
}

uint64_t sub_21B6304B0@<X0>(void *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = [v5 collectionView];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 traitCollection];

    [v13 displayScale];
  }

  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetWidth(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetWidth(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetHeight(v21);
  BSFloatRoundForScale();
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  CGRectGetWidth(v22);
  BSRectWithSize();
  result = UIRectCenteredIntegralRectScale();
  *a1 = v15;
  a1[1] = v16;
  a1[2] = v17;
  a1[3] = v18;
  a1[4] = 0x3FF0000000000000;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0x3FF0000000000000;
  a1[8] = 0;
  a1[9] = 0;
  return result;
}

void sub_21B630624()
{
  v1 = v0;
  v2 = sub_21B6C8A04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 collectionView];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 numberOfSections];

    v9 = *&v1[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionIndexPathsToDelete];
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = __OFSUB__(v8, 1);
      v12 = v8 - 1;
      if (!v11)
      {
        v13 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v14 = v3 + 16;
        v24 = (v3 + 8);

        v15 = 0;
        while (v15 < *(v9 + 16))
        {
          (*(v3 + 16))(v5, v13 + *(v3 + 72) * v15, v2);
          if (sub_21B6C89F4() == v12)
          {
            v16 = v14;
            v17 = v13;
            v18 = v9;
            v19 = v10;
            v20 = v12;
            v21 = sub_21B6C89F4();
            (*v24)(v5, v2);
            v22 = v21 <= 0;
            v12 = v20;
            v10 = v19;
            v9 = v18;
            v13 = v17;
            v14 = v16;
            if (!v22)
            {
LABEL_12:

              return;
            }
          }

          else
          {
            (*v24)(v5, v2);
          }

          if (v10 == ++v15)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }
}

uint64_t sub_21B63083C(uint64_t a1)
{
  v3 = sub_21B6C8A04();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v32 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  v24 = v1;
  v9 = *(v1 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionIndexPathsToDelete);
  v10 = *(v9 + 16);

  v31 = v10;
  if (v10)
  {
    v12 = 0;
    v29 = (v4 + 32);
    v30 = v4 + 16;
    v25 = (v4 + 8);
    v13 = MEMORY[0x277D84F90];
    v27 = v3;
    v28 = a1;
    v26 = v9;
    while (v12 < *(v9 + 16))
    {
      v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v15 = *(v4 + 72);
      (*(v4 + 16))(v8, v9 + v14 + v15 * v12, v3);
      if (sub_21B6C89F4() > a1)
      {
        result = (*v25)(v8, v3);
      }

      else
      {
        v16 = *v29;
        (*v29)(v32, v8, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21B696408(0, *(v13 + 16) + 1, 1);
          v13 = v33;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_21B696408(v18 > 1, v19 + 1, 1);
          v13 = v33;
        }

        *(v13 + 16) = v19 + 1;
        v3 = v27;
        result = (v16)(v13 + v14 + v19 * v15, v32, v27);
        a1 = v28;
        v9 = v26;
      }

      if (v31 == ++v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_13:

  v20 = *(v13 + 16);

  result = a1 + v20;
  if (__OFADD__(a1, v20))
  {
    goto LABEL_19;
  }

  v21 = *(v24 + OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionRevealProgresses);
  if (*(v21 + 16) && (v22 = sub_21B695EF4(result), (v23 & 1) != 0))
  {
    return *(*(v21 + 56) + 8 * v22);
  }

  else
  {
    return 0;
  }
}

char *sub_21B630B1C(unint64_t a1)
{
  v5 = v1;
  v31 = sub_21B6C8A04();
  v7 = *(v31 - 8);
  v8 = MEMORY[0x28223BE20](v31);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - v11;
  v13 = sub_21B6C89F4();
  if (v13 + 0x4000000000000000 < 0)
  {
    goto LABEL_30;
  }

  v14 = v13;
  v15 = sub_21B6C89D4();
  v16 = __OFADD__(v15, 2 * v14);
  v2 = v15 + 2 * v14;
  if (v16)
  {
    goto LABEL_31;
  }

  v4 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedAttributes;
  swift_beginAccess();
  v17 = *&v4[v5];
  if (v17 >> 62)
  {
    goto LABEL_32;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  if (v2 < v18)
  {
    v3 = *&v4[v5];
    if ((v3 & 0xC000000000000001) == 0)
    {
      if (v2 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v19 = *(v3 + 8 * v2 + 32);
        goto LABEL_9;
      }

      __break(1u);
LABEL_36:
      v21 = sub_21B6C9454();
      goto LABEL_13;
    }

    while (1)
    {

      v25 = MEMORY[0x21CEF66E0](v2, v3);

      v19 = v25;
LABEL_9:
      v28 = v19;
      v2 = [v19 indexPath];
      sub_21B6C8994();

      if (sub_21B6C8984())
      {
        (*(v7 + 8))(v12, v31);
        return v28;
      }

      v5 = *&v4[v5];
      if (v5 >> 62)
      {
        goto LABEL_36;
      }

      v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:

      if (!v21)
      {
        break;
      }

      v27 = v12;
      v3 = 0;
      v29 = a1;
      v30 = v5 & 0xC000000000000001;
      v12 = (v5 & 0xFFFFFFFFFFFFFF8);
      v22 = (v7 + 8);
      v26[1] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (1)
      {
        if (v30)
        {
          v23 = MEMORY[0x21CEF66E0](v3, v5);
        }

        else
        {
          if (v3 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v23 = *(v5 + 8 * v3 + 32);
        }

        v4 = v23;
        a1 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v24 = [v23 indexPath];
        sub_21B6C8994();

        v7 = sub_21B6C8984();
        v2 = *v22;
        (*v22)(v10, v31);
        if (v7)
        {
          (v2)(v27, v31);

          return v4;
        }

        ++v3;
        if (a1 == v21)
        {
          (v2)(v27, v31);
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v18 = sub_21B6C9454();
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      __break(1u);
    }

    (*(v7 + 8))(v12, v31);
LABEL_25:
  }

  return 0;
}

unint64_t sub_21B630EA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21B6C89F4();
  if (sub_21B6C8DA4() == a1 && v7 == a2)
  {

    goto LABEL_13;
  }

  v9 = sub_21B6C96E4();

  if (v9)
  {
LABEL_13:
    v13 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryHeaderAttributes;
    swift_beginAccess();
    v14 = *(v3 + v13);
    if (v14 >> 62)
    {
      v15 = sub_21B6C9454();
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6 >= v15)
    {
      return 0;
    }

    v13 = *(v3 + v13);
    if ((v13 & 0xC000000000000001) != 0)
    {
      goto LABEL_30;
    }

    if (v6 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return *(v13 + 8 * v6 + 32);
    }

    __break(1u);
    goto LABEL_32;
  }

  if (sub_21B6C8DA4() == a1 && v10 == a2)
  {
  }

  else
  {
    v12 = sub_21B6C96E4();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryFooterAttributes;
  swift_beginAccess();
  v17 = *(v3 + v13);
  if (!(v17 >> 62))
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_22;
  }

LABEL_32:
  result = sub_21B6C9454();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

LABEL_22:
  if (v6 < result)
  {
    v13 = *(v3 + v13);
    if ((v13 & 0xC000000000000001) == 0)
    {
      if (v6 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return 0;
      }

      return *(v13 + 8 * v6 + 32);
    }

LABEL_30:

    v18 = MEMORY[0x21CEF66E0](v6, v13);

    return v18;
  }

  return 0;
}

unint64_t sub_21B6310C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21B6C89F4();
  if ((a1 != 0xD000000000000017 || 0x800000021B6EEE10 != a2) && (sub_21B6C96E4() & 1) == 0)
  {
    return 0;
  }

  v7 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryDecorationAttributes;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8 >> 62)
  {
    result = sub_21B6C9454();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 >= result)
  {
    return 0;
  }

  v7 = *(v3 + v7);
  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v10 = MEMORY[0x21CEF66E0](v6, v7);

    return v10;
  }

  if (v6 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v7 + 8 * v6 + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_21B631220(uint64_t a1)
{
  v2 = v1;
  v51 = sub_21B6C8A04();
  v4 = *(v51 - 8);
  v5 = MEMORY[0x28223BE20](v51);
  v45[0] = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v45 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v45 - v10;
  v12 = *&v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionIndexPathsToDelete];
  v13 = *(v12 + 16);
  if (v13)
  {
    v46 = a1;
    v47 = v2;
    v48 = v9;
    v49 = v4;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v50 = v15;
    v16 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v17 = *(v14 + 56);
    v45[1] = v12;

    v18 = MEMORY[0x277D84F90];
    do
    {
      v19 = v51;
      v50(v11, v16, v51);
      v20 = sub_21B6C89F4();
      (*(v14 - 8))(v11, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_21B6A30A0(0, *(v18 + 2) + 1, 1, v18);
      }

      v22 = *(v18 + 2);
      v21 = *(v18 + 3);
      if (v22 >= v21 >> 1)
      {
        v18 = sub_21B6A30A0((v21 > 1), v22 + 1, 1, v18);
      }

      *(v18 + 2) = v22 + 1;
      *&v18[8 * v22 + 32] = v20;
      v16 += v17;
      --v13;
    }

    while (v13);

    v9 = v48;
    v4 = v49;
    v2 = v47;
    a1 = v46;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v23 = sub_21B6C89F4();
  v24 = *(v18 + 2);
  v25 = 32;
  do
  {
    if (!v24)
    {

      v42 = sub_21B6C8974();
      v43 = type metadata accessor for PosterRackStackedLayout();
      v52.receiver = v2;
      v52.super_class = v43;
      a = COERCE_DOUBLE(objc_msgSendSuper2(&v52, sel_finalLayoutAttributesForDisappearingItemAtIndexPath_, v42));

      return *&a;
    }

    v26 = *&v18[v25];
    v25 += 8;
    --v24;
  }

  while (v26 != v23);

  (*(v4 + 16))(v9, a1, v51);
  sub_21B630624();
  v28 = v27;
  if ((v27 & 1) == 0)
  {
    goto LABEL_16;
  }

  v29 = sub_21B6C89B4();
  result = sub_21B6C89F4();
  if (!__OFSUB__(result, 1))
  {
    v31 = v45[0];
    MEMORY[0x21CEF5B40](v29, result - 1);
    v32 = v51;
    (*(v4 + 8))(v9, v51);
    (*(v4 + 32))(v9, v31, v32);
LABEL_16:
    v33 = sub_21B6C8974();
    v34 = [v2 layoutAttributesForItemAtIndexPath_];

    if (v34 && ([v34 copy], v34, sub_21B6C93E4(), swift_unknownObjectRelease(), sub_21B6335DC(), (swift_dynamicCast() & 1) != 0))
    {
      a = v53.a;
      if (v28)
      {
        v36 = sub_21B6C8974();
        v37 = [v2 layoutAttributesForItemAtIndexPath_];

        if (v37)
        {
          [v37 transform];
          [*&a setTransform_];
        }
      }

      v38 = [v2 collectionView];
      if (v38)
      {
        v39 = v38;
        [v38 bounds];
        v41 = v40;
      }

      else
      {
        v41 = 0.0;
      }

      [*&a transform];
      if (*&v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_layoutMode] == 2)
      {
        v44 = 0.882;
        if (v2[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_alongsideCompactLayoutShouldScaleFurtherBack])
        {
          v44 = 0.847;
        }
      }

      else
      {
        v44 = 0.7;
      }

      CGAffineTransformTranslate(&v53, &v54, 0.0, -v41 / v44);
      v54 = v53;
      [*&a setTransform_];
      [*&a setZIndex_];
      (*(v4 + 8))(v9, v51);
    }

    else
    {
      (*(v4 + 8))(v9, v51);
      a = 0.0;
    }

    return *&a;
  }

  __break(1u);
  return result;
}

id sub_21B6317CC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = sub_21B6C8A04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B6C8994();
  v10 = a1;
  v11 = a4(v9);

  (*(v7 + 8))(v9, v6);

  return v11;
}

uint64_t sub_21B6318D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v52 = sub_21B6C8A04();
  v8 = *(v52 - 8);
  v9 = MEMORY[0x28223BE20](v52);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = *&v4[OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_sectionIndexPathsToDelete];
  v17 = *(v16 + 16);
  if (v17)
  {
    v45 = a3;
    v46 = a1;
    v47 = a2;
    v48 = v4;
    v49 = v13;
    v50 = v8;
    v51 = *(v8 + 16);
    v18 = v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v19 = *(v8 + 72);
    v20 = (v8 + 8);
    v44 = v16;

    v21 = MEMORY[0x277D84F90];
    do
    {
      v22 = v52;
      v51(v15, v18, v52);
      v23 = sub_21B6C89F4();
      (*v20)(v15, v22);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_21B6A30A0(0, *(v21 + 2) + 1, 1, v21);
      }

      v25 = *(v21 + 2);
      v24 = *(v21 + 3);
      if (v25 >= v24 >> 1)
      {
        v21 = sub_21B6A30A0((v24 > 1), v25 + 1, 1, v21);
      }

      *(v21 + 2) = v25 + 1;
      *&v21[8 * v25 + 32] = v23;
      v18 += v19;
      --v17;
    }

    while (v17);

    v13 = v49;
    v8 = v50;
    v4 = v48;
    a3 = v45;
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v26 = sub_21B6C89F4();
  v27 = *(v21 + 2);
  v28 = 32;
  do
  {
    if (!v27)
    {

      v39 = sub_21B6C8D74();
      v40 = sub_21B6C8974();
      v41 = type metadata accessor for PosterRackStackedLayout();
      v53.receiver = v4;
      v53.super_class = v41;
      v38 = objc_msgSendSuper2(&v53, sel_finalLayoutAttributesForDisappearingSupplementaryElementOfKind_atIndexPath_, v39, v40);

      return v38;
    }

    v29 = *&v21[v28];
    v28 += 8;
    --v27;
  }

  while (v29 != v26);

  (*(v8 + 16))(v13, a3, v52);
  sub_21B630624();
  if ((v30 & 1) == 0)
  {
    goto LABEL_16;
  }

  v31 = sub_21B6C89B4();
  result = sub_21B6C89F4();
  if (!__OFSUB__(result, 1))
  {
    v33 = v43;
    MEMORY[0x21CEF5B40](v31, result - 1);
    v34 = v52;
    (*(v8 + 8))(v13, v52);
    (*(v8 + 32))(v13, v33, v34);
LABEL_16:
    v35 = sub_21B6C8D74();
    v36 = sub_21B6C8974();
    v37 = [v4 layoutAttributesForSupplementaryViewOfKind:v35 atIndexPath:v36];

    if (v37 && ([v37 copy], v37, sub_21B6C93E4(), swift_unknownObjectRelease(), sub_21B6335DC(), (swift_dynamicCast() & 1) != 0))
    {
      v38 = v54;
      [v54 setAlpha_];
      [v38 setZIndex_];
      (*(v8 + 8))(v13, v52);
    }

    else
    {
      (*(v8 + 8))(v13, v52);
      return 0;
    }

    return v38;
  }

  __break(1u);
  return result;
}

id sub_21B631D58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, char *))
{
  v7 = sub_21B6C8A04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21B6C8DA4();
  v13 = v12;
  sub_21B6C8994();
  v14 = a1;
  v15 = a5(v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v15;
}

id sub_21B631E8C()
{
  sub_21B6C8A04();

  v0 = sub_21B6C8E74();

  return v0;
}

uint64_t sub_21B631EF0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v98 = sub_21B6C8A04();
  v12 = *(v98 - 8);
  v13 = MEMORY[0x28223BE20](v98);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v95 = &v89 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v89 - v18;
  v99 = MEMORY[0x277D84F90];
  v20 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedAttributes;
  swift_beginAccess();
  v97 = v5;
  v21 = *(v5 + v20);
  if (v21 >> 62)
  {
    v22 = sub_21B6C9454();
    if (v22 < 0)
    {
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v22)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v97;
  v23 = sub_21B633078(0, v22 - 1, a1, a2, a3, a4);
  if (v24)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = v23;
  if (v23 < 0)
  {
    goto LABEL_47;
  }

  v5 = *&v97[v20];
  v4 = v5 >> 62;
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v23)
    {
      goto LABEL_9;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    v50 = sub_21B6C9454();
    v6 = v91;
    v15 = v93;
    if (v50 < v91)
    {
      goto LABEL_58;
    }

    v19 = v50;
    if (sub_21B6C9454() < v6)
    {
      goto LABEL_59;
    }

    if (sub_21B6C9454() >= v19)
    {
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_48:
  if (sub_21B6C9454() < 0)
  {
    goto LABEL_57;
  }

  if (sub_21B6C9454() < v7)
  {
    goto LABEL_50;
  }

LABEL_9:
  v94 = v20;
  v26 = (v5 & 0xC000000000000001) == 0 || v7 == 0;
  if (v26)
  {
    swift_bridgeObjectRetain_n();
  }

  else
  {
    sub_21B6335DC();
    swift_bridgeObjectRetain_n();
    v27 = 0;
    do
    {
      v28 = v27 + 1;
      sub_21B6C9534();
      v27 = v28;
    }

    while (v7 != v28);
  }

  v93 = v15;

  v91 = v7;
  if (v4)
  {
    v90 = sub_21B6C9604();
    v30 = v32;
    v29 = v33;
    v35 = v34;

    v31 = v35 >> 1;
  }

  else
  {
    v29 = 0;
    v90 = v5 & 0xFFFFFFFFFFFFFF8;
    v30 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    v31 = v7;
  }

  v92 = v12;
  if (v31 != v29)
  {
    v36 = (v12 + 8);
    v96 = MEMORY[0x277D84F90];
    v37 = v31;
    while (!__OFSUB__(v37--, 1))
    {
      if (v37 < v29 || v37 >= v31)
      {
        goto LABEL_43;
      }

      v39 = *(v30 + 8 * v37);
      [v39 frame];
      MaxX = CGRectGetMaxX(v100);
      v101.origin.x = a1;
      v101.origin.y = a2;
      v101.size.width = a3;
      v101.size.height = a4;
      if (CGRectGetMinX(v101) > MaxX)
      {

        goto LABEL_34;
      }

      v41 = [v39 indexPath];
      sub_21B6C8994();

      v42 = [v97 collectionView];
      if (v42)
      {
        v43 = v42;
        v44 = sub_21B6C89D4();
        v45 = [v43 numberOfItemsInSection_];

        (*v36)(v19, v98);
        if (v44 < v45)
        {
          v46 = v39;
          MEMORY[0x21CEF6000]();
          if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21B6C8E94();
          }

          sub_21B6C8EA4();

          v96 = v99;
        }

        else
        {
        }
      }

      else
      {

        (*v36)(v19, v98);
      }

      if (v37 == v29)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  v96 = MEMORY[0x277D84F90];
LABEL_34:
  swift_unknownObjectRelease();
  v5 = *&v97[v94];
  v4 = v5 >> 62;
  if (v5 >> 62)
  {
    goto LABEL_51;
  }

  v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = v91;
  v15 = v93;
  v47 = v92;
  if (v19 < v91)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    while (v6 != v19)
    {
      if (v6 < v19)
      {
        sub_21B6335DC();
        swift_bridgeObjectRetain_n();
        v48 = v6;
        do
        {
          v49 = (v48 + 1);
          sub_21B6C9534();
          v48 = v49;
        }

        while (v19 != v49);
        goto LABEL_62;
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      v47 = v92;
      if ((v5 & 0xC000000000000001) == 0)
      {
        break;
      }
    }
  }

  swift_bridgeObjectRetain_n();
LABEL_62:

  if (v4)
  {
    v52 = sub_21B6C9604();
    v94 = v53;
    v6 = v54;
    v56 = v55;

    v51 = v52;
    v19 = (v56 >> 1);
  }

  else
  {
    v51 = v5 & 0xFFFFFFFFFFFFFF8;
    v94 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  v91 = v51;
  swift_unknownObjectRetain();
  v57 = v95;
  if (v6 != v19)
  {
    v58 = (v47 + 8);
    v90 = (v19 - 1);
    v59 = v6;
    while (1)
    {
      v15 = v59;
      while (1)
      {
        if (v59 < v6 || v15 >= v19)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        v60 = *(v94 + 8 * v15);
        [v60 frame];
        MinX = CGRectGetMinX(v102);
        v103.origin.x = a1;
        v103.origin.y = a2;
        v103.size.width = a3;
        v103.size.height = a4;
        if (MinX > CGRectGetMaxX(v103))
        {

LABEL_82:
          v15 = v93;
          goto LABEL_83;
        }

        v62 = [v60 indexPath];
        sub_21B6C8994();

        v63 = [v97 collectionView];
        if (v63)
        {
          break;
        }

        (*v58)(v57, v98);
LABEL_69:
        if (v19 == ++v15)
        {
          goto LABEL_82;
        }
      }

      v64 = v63;
      v65 = sub_21B6C89D4();
      v66 = [v64 numberOfItemsInSection_];

      (*v58)(v57, v98);
      if (v65 >= v66)
      {
        break;
      }

      v67 = v60;
      MEMORY[0x21CEF6000]();
      if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B6C8E94();
      }

      v59 = (v15 + 1);
      sub_21B6C8EA4();

      v96 = v99;
      v26 = v90 == v15;
      v15 = v93;
      v57 = v95;
      if (v26)
      {
        goto LABEL_83;
      }
    }

    v57 = v95;
    goto LABEL_69;
  }

LABEL_83:
  swift_unknownObjectRelease_n();
  v58 = v96;
  if (v96 >> 62)
  {
LABEL_124:
    v95 = (v58 & 0xFFFFFFFFFFFFFF8);
    v68 = sub_21B6C9454();
  }

  else
  {
    v95 = (v96 & 0xFFFFFFFFFFFFFF8);
    v68 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v69 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryHeaderAttributes;
  v70 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryFooterAttributes;
  v71 = OBJC_IVAR____TtC11PosterBoard23PosterRackStackedLayout_cachedSupplementaryDecorationAttributes;

  v93 = v69;
  swift_beginAccess();
  v91 = v70;
  swift_beginAccess();
  v90 = v71;
  swift_beginAccess();
  v25 = v58;
  if (!v68)
  {
LABEL_119:

    return v25;
  }

  v72 = 0;
  v94 = v58 & 0xC000000000000001;
  v73 = (v92 + 8);
  v25 = v58;
  while (1)
  {
    v74 = v72;
    while (1)
    {
      if (v94)
      {
        v75 = MEMORY[0x21CEF66E0](v74, v58);
      }

      else
      {
        if (v74 >= *(v95 + 2))
        {
          goto LABEL_122;
        }

        v75 = v58[v74 + 4];
      }

      v76 = v75;
      v72 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        __break(1u);
LABEL_122:
        __break(1u);
        goto LABEL_123;
      }

      v77 = [v75 indexPath];
      sub_21B6C8994();

      v78 = sub_21B6C89D4();
      v79 = *v73;
      (*v73)(v15, v98);
      if (!v78)
      {
        break;
      }

      ++v74;
      v58 = v96;
      if (v72 == v68)
      {
        goto LABEL_119;
      }
    }

    v80 = [v76 indexPath];
    sub_21B6C8994();

    v81 = sub_21B6C89F4();
    result = (v79)(v15, v98);
    v83 = *&v97[v93];
    if ((v83 & 0xC000000000000001) != 0)
    {

      MEMORY[0x21CEF66E0](v81, v83);

      v58 = v96;
      goto LABEL_100;
    }

    v58 = v96;
    if ((v81 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v81 >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_126;
    }

    v84 = *(v83 + 8 * v81 + 32);
LABEL_100:
    MEMORY[0x21CEF6000](v84);
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B6C8E94();
    }

    result = sub_21B6C8EA4();
    v85 = *&v97[v91];
    if ((v85 & 0xC000000000000001) != 0)
    {

      MEMORY[0x21CEF66E0](v81, v85);
    }

    else
    {
      if ((v81 & 0x8000000000000000) != 0)
      {
        goto LABEL_127;
      }

      if (v81 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_128;
      }

      v86 = *(v85 + 8 * v81 + 32);
    }

    MEMORY[0x21CEF6000](v86);
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B6C8E94();
    }

    result = sub_21B6C8EA4();
    v87 = *&v97[v90];
    if ((v87 & 0xC000000000000001) != 0)
    {

      MEMORY[0x21CEF66E0](v81, v87);
    }

    else
    {
      if ((v81 & 0x8000000000000000) != 0)
      {
        goto LABEL_129;
      }

      if (v81 >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_130;
      }

      v88 = *(v87 + 8 * v81 + 32);
    }

    MEMORY[0x21CEF6000](v88);
    if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B6C8E94();
    }

    sub_21B6C8EA4();

    v25 = v99;
    if (v72 == v68)
    {
      goto LABEL_119;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}