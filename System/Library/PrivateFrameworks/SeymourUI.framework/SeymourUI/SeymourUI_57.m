Swift::Void __swiftcall WorkoutPlanArtworkView.layoutSubviews()()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v1 = &v0[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_renderedRect];
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_renderedRect];
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_renderedRect + 8];
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_renderedRect + 16];
  v5 = *&v0[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_renderedRect + 24];
  [v0 bounds];
  v18.origin.x = v6;
  v18.origin.y = v7;
  v18.size.width = v8;
  v18.size.height = v9;
  v17.origin.x = v2;
  v17.origin.y = v3;
  v17.size.width = v4;
  v17.size.height = v5;
  if (!CGRectEqualToRect(v17, v18))
  {
    v10 = *&v0[OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_dimmedGradientLayer];
    if (v10)
    {
      v11 = v10;
      [v0 bounds];
      [v11 setFrame_];
    }

    [v0 bounds];
    *v1 = v12;
    *(v1 + 1) = v13;
    *(v1 + 2) = v14;
    *(v1 + 3) = v15;
    [v0 setNeedsDisplay];
  }
}

id sub_20BB7EBC8()
{
  v1 = v0;
  v2 = type metadata accessor for RadialCornerGradientLayer();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC9SeymourUI25RadialCornerGradientLayer_corner] = 3;
  v24.receiver = v3;
  v24.super_class = v2;
  v4 = objc_msgSendSuper2(&v24, sel_init);
  [v4 setStartPoint_];
  [v4 setType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20C14F320;
  v6 = [v0 traitCollection];
  v7 = objc_opt_self();
  v8 = [v7 systemBackgroundColor];
  v9 = sub_20C13D3B4();
  v10 = [v8 resolvedColorWithTraitCollection_];

  v11 = [v10 CGColor];
  type metadata accessor for CGColor(0);
  v13 = v12;
  *(v5 + 56) = v12;
  *(v5 + 32) = v11;
  v14 = [v1 traitCollection];
  v15 = [v7 systemBackgroundColor];
  v16 = sub_20C13D3B4();
  v17 = [v15 resolvedColorWithTraitCollection_];

  v18 = [v17 colorWithAlphaComponent_];
  v19 = [v18 CGColor];

  *(v5 + 88) = v13;
  *(v5 + 64) = v19;
  v20 = sub_20C13CC54();

  [v4 setColors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20C151490;
  sub_20B8602D4();
  *(v21 + 32) = sub_20C13D5D4();
  *(v21 + 40) = sub_20C13D5D4();
  v22 = sub_20C13CC54();

  [v4 setLocations_];

  return v4;
}

id WorkoutPlanArtworkView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id WorkoutPlanArtworkView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BB7F0D0()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView____lazy_storage___placeholderImage) = 1;
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_artwork;
  v2 = 0uLL;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  v3 = OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_bottomLineColor;
  if (qword_27C760C00 != -1)
  {
    swift_once();
    v2 = 0uLL;
  }

  *(v0 + v3) = qword_27C79C6B0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_dimmedGradientLayer) = 0;
  v4 = (v0 + OBJC_IVAR____TtC9SeymourUI22WorkoutPlanArtworkView_renderedRect);
  *v4 = v2;
  v4[1] = v2;
  sub_20C13DE24();
  __break(1u);
}

void sub_20BB7F1BC(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_20BB7F1CC(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_20BB7F204()
{
  result = qword_27C76BC40;
  if (!qword_27C76BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76BC40);
  }

  return result;
}

uint64_t sub_20BB7F2E8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7665D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = sub_20C132704();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C132BB4();
  v15 = v14;
  v16 = sub_20C13A894();
  if (v15)
  {
    if (v13 == v16 && v15 == v17)
    {

LABEL_7:
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      *a3 = sub_20C132B04();
      *(a3 + 8) = v20 & 1;
      v21 = sub_20C132AE4();
      v23 = v22;
      v24 = sub_20C132C14();
      (*(*(v24 - 8) + 8))(a1, v24);
      *(a3 + 16) = v21;
      *(a3 + 24) = v23;
      v25 = sub_20C1344C4();
      (*(*(v25 - 8) + 56))(a3 + v19, 1, 1, v25);
      goto LABEL_12;
    }

    v18 = sub_20C13DFF4();

    if (v18)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v26 = sub_20C132B04();
  if ((v27 & 1) == 0)
  {
    v29 = v26;
    v30 = sub_20C132C14();
    (*(*(v30 - 8) + 8))(a1, v30);
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
    *a3 = v29;
    *(a3 + 8) = 0;
    v32 = sub_20C1344C4();
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    (*(*(v32 - 8) + 56))(a3 + v31, 1, 1, v32);
LABEL_12:
    *(a3 + 32) = 0;
    type metadata accessor for NavigationIntent();

    return swift_storeEnumTagMultiPayload();
  }

  sub_20C132684();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v28 = sub_20C132C14();
    (*(*(v28 - 8) + 8))(a1, v28);
    sub_20B91588C(v8);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v33 = sub_20C1326A4();
    if (v34)
    {
      MEMORY[0x20F2F1C80](v33);
    }

    v35 = sub_20C132C14();
    (*(*(v35 - 8) + 8))(a1, v35);
    (*(v10 + 8))(v12, v9);
  }

  *a3 = a2 & 1;
  type metadata accessor for NavigationIntent();
  return swift_storeEnumTagMultiPayload();
}

CGFloat sub_20BB7F7A0(char a1)
{
  [v1 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = &selRef_safeAreaInsets;
  if ((a1 & 1) == 0)
  {
    v11 = &selRef_adjustedContentInset;
  }

  [v1 *v11];
  v13 = v12;
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  v14 = CGRectGetMinX(v16) + v13;
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  CGRectGetMinY(v17);
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  CGRectGetWidth(v18);
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  CGRectGetHeight(v19);
  return v14;
}

uint64_t sub_20BB7F8A0(uint64_t a1, uint64_t a2)
{
  v68 = sub_20C133954();
  v4 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v49 - v8;
  v66 = sub_20C135214();
  v9 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v69 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767548);
  MEMORY[0x28223BE20](v60);
  v59 = (&v49 - v14);
  v15 = type metadata accessor for ShelfItemX() - 8;
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v49 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_13:
    v40 = 0;
    return v40 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v40 = 1;
    return v40 & 1;
  }

  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v51 = (v4 + 32);
  v52 = (v9 + 32);
  v53 = (v4 + 8);
  v54 = (v9 + 8);
  v50 = *(v19 + 72);
  v57 = v17;
  v58 = v6;
  v55 = v13;
  v56 = &v49 - v20;
  while (1)
  {
    result = sub_20BB82830(v24, v21, type metadata accessor for ShelfItemX);
    if (!v22)
    {
      break;
    }

    v62 = v24;
    v63 = v22;
    v61 = v25;
    sub_20BB82830(v25, v17, type metadata accessor for ShelfItemX);
    v27 = v59;
    v28 = v59 + *(v60 + 48);
    sub_20BB82830(v21, v59, type metadata accessor for ShelfItemX);
    sub_20BB82830(v17, v28, type metadata accessor for ShelfItemX);
    v65 = *v27;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C76CCD0);
    v30 = *(v29 + 48);
    v31 = *(v29 + 64);
    v64 = *v28;
    v32 = *v52;
    v33 = v66;
    (*v52)(v13, v27 + v30, v66);
    v34 = *v51;
    v35 = v68;
    (*v51)(v67, v27 + v31, v68);
    v32(v69, (v28 + v30), v33);
    v36 = (v28 + v31);
    v37 = v58;
    v34(v58, v36, v35);
    v13 = v55;
    sub_20BDA3714(v65, v64);
    LOBYTE(v28) = v38;

    if ((v28 & 1) == 0 || (MEMORY[0x20F2EC950](v13, v69) & 1) == 0)
    {
      v45 = *v53;
      v46 = v68;
      (*v53)(v37, v68);
      v47 = *v54;
      v48 = v66;
      (*v54)(v69, v66);
      v45(v67, v46);
      v47(v13, v48);
      sub_20BB82898(v57, type metadata accessor for ShelfItemX);
      sub_20BB82898(v56, type metadata accessor for ShelfItemX);
      goto LABEL_13;
    }

    v39 = v67;
    v40 = MEMORY[0x20F2EAFF0](v67, v37);
    v41 = *v53;
    v42 = v68;
    (*v53)(v37, v68);
    v43 = *v54;
    v44 = v66;
    (*v54)(v69, v66);
    v41(v39, v42);
    v43(v13, v44);
    v17 = v57;
    sub_20BB82898(v57, type metadata accessor for ShelfItemX);
    v21 = v56;
    sub_20BB82898(v56, type metadata accessor for ShelfItemX);
    if (v40)
    {
      v22 = v63 - 1;
      v25 = v61 + v50;
      v24 = v62 + v50;
      if (v63 != 1)
      {
        continue;
      }
    }

    return v40 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20BB7FE40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageAlertAction();
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_20BB82830(v13, v10, type metadata accessor for PageAlertAction);
      sub_20BB82830(v14, v6, type metadata accessor for PageAlertAction);
      if ((sub_20C132EC4() & 1) == 0 || v10[*(v4 + 20)] != v6[*(v4 + 20)])
      {
LABEL_18:
        sub_20BB82898(v6, type metadata accessor for PageAlertAction);
        sub_20BB82898(v10, type metadata accessor for PageAlertAction);
        return 0;
      }

      v16 = *(v4 + 24);
      v17 = &v10[v16];
      v18 = *&v10[v16 + 8];
      v19 = &v6[v16];
      v20 = *(v19 + 1);
      v21 = v20 == 0;
      if (!v18)
      {
        goto LABEL_5;
      }

      if (!v20)
      {
        goto LABEL_18;
      }

      if (*v17 != *v19 || v18 != v20)
      {
        break;
      }

      sub_20BB82898(v6, type metadata accessor for PageAlertAction);
      sub_20BB82898(v10, type metadata accessor for PageAlertAction);
LABEL_6:
      v14 += v15;
      v13 += v15;
      if (!--v11)
      {
        return 1;
      }
    }

    v21 = sub_20C13DFF4();
LABEL_5:
    sub_20BB82898(v6, type metadata accessor for PageAlertAction);
    sub_20BB82898(v10, type metadata accessor for PageAlertAction);
    if ((v21 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_20BB800B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      v10 = *v3;
      if (v5)
      {
        if (!v8)
        {
          return 0;
        }

        v11 = *(v4 - 3) == *(v3 - 3) && v5 == v8;
        if (!v11 && (sub_20C13DFF4() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      if (v7)
      {
        if (!v10 || (v6 != v9 || v7 != v10) && (sub_20C13DFF4() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }

      v4 += 4;
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_20BB801A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_20B969AA8(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_20BB80260(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      v5 = sub_20C134744();
      v7 = v6;
      if (v5 == sub_20C134744() && v7 == v8)
      {
      }

      else
      {
        v10 = sub_20C13DFF4();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_20BB80344(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BB80418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkAnnotation();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v19 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_20BB82830(v13, v10, type metadata accessor for LinkAnnotation);
        sub_20BB82830(v14, v7, type metadata accessor for LinkAnnotation);
        v16 = *v10 == *v7 && v10[1] == v7[1];
        if (!v16 && (sub_20C13DFF4() & 1) == 0)
        {
          break;
        }

        v17 = sub_20C132B84();
        sub_20BB82898(v7, type metadata accessor for LinkAnnotation);
        sub_20BB82898(v10, type metadata accessor for LinkAnnotation);
        if (v17)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v17 & 1;
      }

      sub_20BB82898(v7, type metadata accessor for LinkAnnotation);
      sub_20BB82898(v10, type metadata accessor for LinkAnnotation);
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_20BB80638(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (sub_20C13DFF4() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_20BB806DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  for (i = 0; ; i += 64)
  {
    result = 0;
    v5 = a1 + i;
    v6 = a2 + i;
    if (*(a1 + i + 32) != *(a2 + i + 32) || ((*(v5 + 40) ^ *(v6 + 40)) & 1) != 0 || ((*(v5 + 41) ^ *(v6 + 41)) & 1) != 0)
    {
      break;
    }

    v7 = *(v5 + 64);
    v8 = *(v5 + 72);
    v9 = *(v6 + 64);
    v10 = *(v6 + 72);
    if (*(v5 + 48) == *(v6 + 48) && *(v5 + 56) == *(v6 + 56))
    {
      result = 0;
      if (v7 != v9 || v8 != v10 || *(v5 + 80) != *(v6 + 80) || *(v5 + 88) != *(v6 + 88))
      {
        return result;
      }
    }

    else
    {
      v16 = *(v6 + 80);
      v17 = *(v5 + 80);
      v14 = *(v6 + 88);
      v15 = *(v5 + 88);
      v11 = sub_20C13DFF4();
      result = 0;
      if ((v11 & 1) == 0 || v7 != v9 || v8 != v10 || v17 != v16 || v15 != v14)
      {
        return result;
      }
    }

    v12 = sub_20C137F94();
    v13 = sub_20C137F94();

    if (v12 != v13)
    {
      return 0;
    }

    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_20BB808A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonAction(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v24 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_20BB82830(v13, v10, type metadata accessor for ButtonAction);
        sub_20BB82830(v14, v7, type metadata accessor for ButtonAction);
        v16 = v10[1];
        v17 = v7[1];
        if (v16)
        {
          if (!v17 || (*v10 != *v7 || v16 != v17) && (sub_20C13DFF4() & 1) == 0)
          {
LABEL_30:
            sub_20BB82898(v7, type metadata accessor for ButtonAction);
            sub_20BB82898(v10, type metadata accessor for ButtonAction);
            goto LABEL_31;
          }
        }

        else if (v17)
        {
          goto LABEL_30;
        }

        v18 = v10[3];
        v19 = v7[3];
        if (v18)
        {
          if (!v19 || (v10[2] != v7[2] || v18 != v19) && (sub_20C13DFF4() & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else if (v19)
        {
          goto LABEL_30;
        }

        v20 = v10[5];
        v21 = v7[5];
        if (v20)
        {
          if (!v21 || (v10[4] != v7[4] || v20 != v21) && (sub_20C13DFF4() & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else if (v21)
        {
          goto LABEL_30;
        }

        v22 = sub_20BDA4D98(v10 + *(v4 + 28), v7 + *(v4 + 28));
        sub_20BB82898(v7, type metadata accessor for ButtonAction);
        sub_20BB82898(v10, type metadata accessor for ButtonAction);
        if (v22)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v22 & 1;
      }
    }

    v22 = 1;
  }

  else
  {
LABEL_31:
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_20BB80B50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_20C13DFF4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_20BB80BE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  for (i = 0; ; i += 48)
  {
    result = 0;
    v7 = a1 + i;
    v8 = a2 + i;
    if (*(a1 + i + 32) != *(a2 + i + 32) || ((*(v7 + 40) ^ *(v8 + 40)) & 1) != 0)
    {
      break;
    }

    v9 = *(v7 + 64);
    v10 = *(v7 + 72);
    v11 = *(v8 + 64);
    v12 = *(v8 + 72);
    v13 = *(v7 + 48) == *(v8 + 48) && *(v7 + 56) == *(v8 + 56);
    if (!v13 && (sub_20C13DFF4() & 1) == 0)
    {
      return 0;
    }

    v14 = v9 == v11 && v10 == v12;
    if (!v14 && (sub_20C13DFF4() & 1) == 0)
    {
      return 0;
    }

    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_20BB80CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetadataEntry();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v27 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      sub_20B51C88C(0, &qword_27C7654B0);
      v15 = *(v5 + 72);
      while (1)
      {
        sub_20BB82830(v13, v10, type metadata accessor for MetadataEntry);
        sub_20BB82830(v14, v8, type metadata accessor for MetadataEntry);
        if ((sub_20C13D5F4() & 1) == 0)
        {
LABEL_35:
          sub_20BB82898(v8, type metadata accessor for MetadataEntry);
          sub_20BB82898(v10, type metadata accessor for MetadataEntry);
          goto LABEL_36;
        }

        v17 = v10[1];
        v16 = v10[2];
        v18 = v10[3];
        v20 = v8[1];
        v19 = v8[2];
        v21 = v8[3];
        if (!(v17 >> 62))
        {
          break;
        }

        if (v17 >> 62 == 1)
        {
          if (v20 >> 62 != 1)
          {
            goto LABEL_35;
          }

          goto LABEL_11;
        }

        if (v17 != 0x8000000000000000 || v18 | v16)
        {
          if (v20 >> 62 != 2)
          {
            goto LABEL_35;
          }

          v22 = 0x8000000000000001;
        }

        else
        {
          if (v20 >> 62 != 2)
          {
            goto LABEL_35;
          }

          v22 = 0x8000000000000000;
        }

        if (v20 != v22 || v21 | v19)
        {
          goto LABEL_35;
        }

LABEL_24:
        v23 = v10[5];
        v24 = v8[5];
        if (v23)
        {
          if (!v24 || (v10[4] != v8[4] || v23 != v24) && (sub_20C13DFF4() & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else if (v24)
        {
          goto LABEL_35;
        }

        v25 = sub_20C132EC4();
        sub_20BB82898(v8, type metadata accessor for MetadataEntry);
        sub_20BB82898(v10, type metadata accessor for MetadataEntry);
        if (v25)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v25 & 1;
      }

      if (v20 >> 62)
      {
        goto LABEL_35;
      }

LABEL_11:
      if (((v20 ^ v17) & 1) != 0 || (v16 != v19 || v18 != v21) && (sub_20C13DFF4() & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    v25 = 1;
  }

  else
  {
LABEL_36:
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_20BB81024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      do
      {
        sub_20BB82830(v18, v15, a4);
        sub_20BB82830(v19, v12, a4);
        v21 = a5(v15, v12);
        sub_20BB82898(v12, a4);
        sub_20BB82898(v15, a4);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v19 += v20;
        v18 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_20BB811C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 1);
      v9 = *v4;
      if (*(v3 - 3) == *(v4 - 3) && *(v3 - 2) == *(v4 - 2))
      {
        if (v6 != v8 || v7 != v9)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_20C13DFF4();
        result = 0;
        if ((v11 & 1) == 0 || v6 != v8 || v7 != v9)
        {
          return result;
        }
      }

      v3 += 32;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return 1;
}

BOOL sub_20BB81298(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    sub_20B51C88C(0, &qword_27C7654B0);
    v5 = a1 + 41;
    v6 = a2 + 41;
    while (1)
    {
      v7 = *(v5 - 1);
      v8 = *(v6 - 9);
      v9 = *(v6 - 1);
      v10 = *(v5 - 9);
      v11 = v8;
      if ((sub_20C13D5F4() & 1) == 0 || v7 != v9)
      {
        break;
      }

      v12 = sub_20C137F94();
      v13 = sub_20C137F94();

      result = v12 == v13;
      if (v12 == v13)
      {
        v5 += 16;
        v6 += 16;
        if (--v2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 0;
}

uint64_t sub_20BB813C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 64);
    for (i = (a2 + 64); ; i += 5)
    {
      v5 = *(v3 - 16);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(i - 16);
      v9 = *(i - 1);
      v10 = *i;
      if (*(v3 - 4) == *(i - 4) && *(v3 - 3) == *(i - 3))
      {
        if (v5 != v8)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_20C13DFF4();
        result = 0;
        if (v12 & 1) == 0 || ((v5 ^ v8))
        {
          return result;
        }
      }

      v14 = v6 == v9 && v7 == v10;
      if (!v14 && (sub_20C13DFF4() & 1) == 0)
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_20BB814C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 32)
    {
      v6 = a1 + i;
      v7 = a2 + i;
      if (*(a1 + i + 32) != *(a2 + i + 32))
      {
        break;
      }

      v8 = *(v6 + 40) == *(v7 + 40) && *(v6 + 48) == *(v7 + 48);
      if (!v8 && (sub_20C13DFF4() & 1) == 0)
      {
        break;
      }

      v9 = sub_20C134744();
      v11 = v10;
      if (v9 == sub_20C134744() && v11 == v12)
      {
      }

      else
      {
        v14 = sub_20C13DFF4();

        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_20BB81628(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a2 + 48);
    v33 = *(a2 + 56);
    v6 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
    if (v6 || (v7 = a1, v8 = a2, v9 = sub_20C13DFF4(), a2 = v8, v10 = v9, a1 = v7, (v10 & 1) != 0))
    {
      v11 = (a1 + 88);
      v12 = v2 - 1;
      for (i = (a2 + 88); ; i += 32)
      {
        v32 = v12;
        v31 = v11;
        if (v3)
        {
          if (!v5)
          {
            return 0;
          }

          sub_20B51C88C(0, &qword_27C7626E8);
          v14 = v5;
          v15 = v5;
          v16 = v3;
          v17 = v3;
          v18 = v15;
          v19 = v17;

          v20 = sub_20C13D5F4();

          if ((v20 & 1) == 0)
          {

            return 0;
          }

          if ((v4 & 0x80) == 0)
          {
LABEL_16:
            if ((v33 & 0x80) != 0)
            {
              goto LABEL_54;
            }

            if (v4)
            {
              if (v4 == 1)
              {
                v21 = 0xE500000000000000;
                v22 = 0x7261656C63;
                v23 = v33;
                if (v33)
                {
LABEL_20:
                  if (v23 == 1)
                  {
                    v24 = 0xE500000000000000;
                    if (v22 != 0x7261656C63)
                    {
                      goto LABEL_48;
                    }
                  }

                  else
                  {
                    v24 = 0xE400000000000000;
                    if (v22 != 1953064037)
                    {
                      goto LABEL_48;
                    }
                  }

LABEL_38:
                  if (v21 == v24)
                  {
                    goto LABEL_47;
                  }

                  goto LABEL_48;
                }
              }

              else
              {
                v21 = 0xE400000000000000;
                v22 = 1953064037;
                v23 = v33;
                if (v33)
                {
                  goto LABEL_20;
                }
              }
            }

            else
            {
              v22 = 0x62694C6F54646461;
              v21 = 0xEC00000079726172;
              v23 = v33;
              if (v33)
              {
                goto LABEL_20;
              }
            }

            v24 = 0xEC00000079726172;
            if (v22 != 0x62694C6F54646461)
            {
              goto LABEL_48;
            }

            goto LABEL_38;
          }
        }

        else
        {
          if (v5)
          {
            return 0;
          }

          v14 = 0;
          v16 = 0;

          if ((v4 & 0x80) == 0)
          {
            goto LABEL_16;
          }
        }

        if ((v33 & 0x80) == 0)
        {
LABEL_54:

          return 0;
        }

        if ((v4 & 0x7F) != 0)
        {
          v25 = 0xE400000000000000;
          if ((v4 & 0x7F) == 1)
          {
            v26 = 1953064037;
            v27 = v33 & 0x7F;
            if ((v33 & 0x7F) == 0)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v26 = 1702257011;
            v27 = v33 & 0x7F;
            if ((v33 & 0x7F) == 0)
            {
LABEL_41:
              v28 = 0xE600000000000000;
              if (v26 != 0x6574656C6564)
              {
                goto LABEL_48;
              }

              goto LABEL_46;
            }
          }
        }

        else
        {
          v25 = 0xE600000000000000;
          v26 = 0x6574656C6564;
          v27 = v33 & 0x7F;
          if ((v33 & 0x7F) == 0)
          {
            goto LABEL_41;
          }
        }

        v28 = 0xE400000000000000;
        if (v27 == 1)
        {
          if (v26 != 1953064037)
          {
            goto LABEL_48;
          }
        }

        else if (v26 != 1702257011)
        {
          goto LABEL_48;
        }

LABEL_46:
        if (v25 == v28)
        {
LABEL_47:

          goto LABEL_49;
        }

LABEL_48:
        v29 = sub_20C13DFF4();

        if ((v29 & 1) == 0)
        {
          return 0;
        }

LABEL_49:
        if (!v32)
        {
          return 1;
        }

        v3 = *(v31 - 1);
        v4 = *v31;
        v5 = *(i - 1);
        v33 = *i;
        if ((*(v31 - 3) != *(i - 3) || *(v31 - 2) != *(i - 2)) && (sub_20C13DFF4() & 1) == 0)
        {
          return 0;
        }

        v11 = v31 + 32;
        v12 = v32 - 1;
      }
    }
  }

  return 0;
}

uint64_t sub_20BB81A28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatePickerItem();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v26 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  while (1)
  {
    result = sub_20BB82830(v13, v10, type metadata accessor for DatePickerItem);
    if (!v11)
    {
      break;
    }

    sub_20BB82830(v14, v7, type metadata accessor for DatePickerItem);
    if ((sub_20C133534() & 1) == 0 || ((v21 = *(v4 + 20), v22 = *&v10[v21], v23 = *&v10[v21 + 8], v24 = &v7[v21], v22 == *v24) ? (v25 = v23 == *(v24 + 1)) : (v25 = 0), !v25 && (sub_20C13DFF4() & 1) == 0))
    {
      sub_20BB82898(v7, type metadata accessor for DatePickerItem);
      sub_20BB82898(v10, type metadata accessor for DatePickerItem);
      return 0;
    }

    v16 = *(v4 + 24);
    v17 = v10[v16];
    v18 = v7[v16];
    sub_20BB82898(v7, type metadata accessor for DatePickerItem);
    sub_20BB82898(v10, type metadata accessor for DatePickerItem);
    result = v17 == v18;
    v20 = v17 != v18 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v20)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BB81C78(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_20B51C88C(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x20F2F5430](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x20F2F5430](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_20C13D5F4();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_20C13D5F4();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_20C13DB34();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_20C13DB34();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_20BB81F18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8, v13);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v11, v19, v8);
    sub_20BB828F8(v32, v33);
    v26 = sub_20C13C894();
    v27 = *v22;
    (*v22)(v11, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20BB82110(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 40;
      v4 = a2 + 40;
      do
      {

        v5 = sub_20C1367F4();

        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 16;
        v4 += 16;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t ShelfLockupAttributedTagStrings.hash(into:)()
{
  v1 = sub_20C138094();
  v28 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = v0[3];
  v12 = v0[4];
  v27 = v0[5];
  MEMORY[0x20F2F58E0](*(v11 + 16), v8);
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v15 = *(v28 + 72);
    do
    {
      v16 = MEMORY[0x277D53BC8];
      sub_20BB82830(v14, v10, MEMORY[0x277D53BC8]);
      sub_20C138084();
      sub_20BB82898(v10, v16);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  MEMORY[0x20F2F58E0](*(v12 + 16));
  v17 = *(v12 + 16);
  if (v17)
  {
    v18 = v12 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v19 = *(v28 + 72);
    do
    {
      v20 = MEMORY[0x277D53BC8];
      sub_20BB82830(v18, v6, MEMORY[0x277D53BC8]);
      sub_20C138084();
      sub_20BB82898(v6, v20);
      v18 += v19;
      --v17;
    }

    while (v17);
  }

  v21 = v27;
  result = MEMORY[0x20F2F58E0](*(v27 + 16));
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v25 = *(v28 + 72);
    do
    {
      v26 = MEMORY[0x277D53BC8];
      sub_20BB82830(v24, v3, MEMORY[0x277D53BC8]);
      sub_20C138084();
      result = sub_20BB82898(v3, v26);
      v24 += v25;
      --v23;
    }

    while (v23);
  }

  return result;
}

uint64_t ShelfLockupAttributedTagStrings.hashValue.getter()
{
  sub_20C13E164();
  ShelfLockupAttributedTagStrings.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t sub_20BB824F0()
{
  sub_20C13E164();
  ShelfLockupAttributedTagStrings.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t sub_20BB82548()
{
  sub_20C13E164();
  ShelfLockupAttributedTagStrings.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t static ShelfLockupAttributedTagStrings.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  if (sub_20BB81024(a1[3], a2[3], MEMORY[0x277D53BC8], MEMORY[0x277D53BC8], MEMORY[0x277D53BC0]) & 1) != 0 && (sub_20BB81024(v2, v4, MEMORY[0x277D53BC8], MEMORY[0x277D53BC8], MEMORY[0x277D53BC0]))
  {
    v6 = sub_20BB81024(v3, v5, MEMORY[0x277D53BC8], MEMORY[0x277D53BC8], MEMORY[0x277D53BC0]);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_20BB826BC()
{
  result = qword_27C76B510;
  if (!qword_27C76B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B510);
  }

  return result;
}

uint64_t sub_20BB82710(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  if (sub_20BB81024(a1[3], a2[3], MEMORY[0x277D53BC8], MEMORY[0x277D53BC8], MEMORY[0x277D53BC0]) & 1) != 0 && (sub_20BB81024(v2, v4, MEMORY[0x277D53BC8], MEMORY[0x277D53BC8], MEMORY[0x277D53BC0]))
  {
    v6 = sub_20BB81024(v3, v5, MEMORY[0x277D53BC8], MEMORY[0x277D53BC8], MEMORY[0x277D53BC0]);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_20BB82830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BB82898(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BB828F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BB82944(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v10 - 8);
  v99 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_programDetail;
  v13 = sub_20C135974();
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_marketingOffer;
  v15 = sub_20C138894();
  (*(*(v15 - 8) + 56))(v5 + v14, 1, 1, v15);
  v16 = (v5 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_metricPageName);
  *v16 = 0;
  v16[1] = 0;
  v17 = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_subtitleTags) = MEMORY[0x277D84F90];
  v18 = v17;
  *(v5 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_shouldPublishPageEventWhenAvailable) = 0;
  *(v5 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_backgroundArtworkDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v19 = MEMORY[0x277D84FA0];
  *(v5 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_assetBundles) = MEMORY[0x277D84FA0];
  *(v5 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_bookmarks) = v19;
  *(v5 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_playlists) = v19;
  *(v5 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_resumableSessions) = v19;
  *(v5 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_upNextQueueItems) = v18;
  v20 = OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_configuration;
  v21 = sub_20C134104();
  (*(*(v21 - 8) + 56))(v5 + v20, 1, 1, v21);
  v100 = a1;
  v101 = a2;
  *(v5 + 416) = a1;
  *(v5 + 424) = a2;
  *(v5 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_marketingPlacement) = a4;
  *(v5 + 216) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40);
  sub_20C133AA4();
  sub_20B51C710(v116, v5 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  sub_20B51C710(v116, v5 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v116, v5 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v116, v5 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(v116, v5 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v5 + 224) = v116[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768650);
  sub_20C133AA4();
  sub_20B51C710(v116, v5 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(v116, v5 + 280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(v116, v5 + 320);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v5 + 360) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(v116, v5 + 368);
  type metadata accessor for TVCatalogProgramDetailHeaderShelf();
  swift_allocObject();

  v23 = sub_20C09AF6C(v22);

  v24 = OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_headerShelf;
  *(v5 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_headerShelf) = v23;
  type metadata accessor for CatalogProgramWorkoutListShelf();
  swift_allocObject();

  v25 = sub_20B8C6514();

  v26 = OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_workoutListShelf;
  *(v5 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_workoutListShelf) = v25;
  type metadata accessor for TVCatalogSummaryShelf();
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  swift_unknownObjectWeakInit();

  sub_20C132ED4();
  v28 = v27 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_row;
  sub_20B5D8060(v116);
  v29 = v116[9];
  *(v28 + 128) = v116[8];
  *(v28 + 144) = v29;
  *(v28 + 160) = v117;
  v30 = v116[5];
  *(v28 + 64) = v116[4];
  *(v28 + 80) = v30;
  v31 = v116[7];
  *(v28 + 96) = v116[6];
  *(v28 + 112) = v31;
  v32 = v116[1];
  *v28 = v116[0];
  *(v28 + 16) = v32;
  v33 = v116[3];
  *(v28 + 32) = v116[2];
  *(v28 + 48) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(&v113, v27 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(&v113, v27 + OBJC_IVAR____TtC9SeymourUI21TVCatalogSummaryShelf_storefrontLocalizer);

  v34 = OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_summaryShelf;
  *(v5 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_summaryShelf) = v27;
  v102 = a3;
  sub_20C133AA4();
  sub_20B51C710(&v113, v5 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_20C1517D0;
  *(v35 + 32) = *(v5 + v24);
  *(v35 + 40) = &off_282305758;
  v36 = *(v5 + v26);
  *(v35 + 48) = v36;
  *(v35 + 56) = &off_2822B24E8;
  v37 = *(v5 + v34);
  *(v35 + 64) = v37;
  *(v35 + 72) = &off_2822F9D68;

  v95 = v36;

  v96 = v37;

  v98 = sub_20C1380F4();
  v38 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v97 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v38 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v39 = sub_20C13C724();
  v40 = type metadata accessor for CatalogPageImpressionTracker();
  v41 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v42 = MEMORY[0x277D221C0];
  v41[2] = sub_20C13C6D4();
  v41[3] = v39;
  v41[4] = v42;
  v114 = v40;
  v43 = sub_20BB86CA0(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v115 = v43;
  *&v113 = v41;
  v44 = type metadata accessor for MetricLocationStore();
  v45 = swift_allocObject();
  v46 = MEMORY[0x277D84F98];
  v47 = MEMORY[0x277D84F90];
  *(v45 + 16) = MEMORY[0x277D84F90];
  *(v45 + 24) = v46;
  v48 = __swift_mutable_project_boxed_opaque_existential_1(&v113, v40);
  v49 = MEMORY[0x28223BE20](v48);
  v51 = (&v93 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51, v49);
  v53 = *v51;
  v99 = v43;
  v112[3] = v40;
  v112[4] = v43;
  v112[0] = v53;
  v111[3] = v44;
  v111[4] = &off_2822B6968;
  v94 = v44;
  v111[0] = v45;
  v110[0] = v47;
  sub_20BB5D394(0, 3, 0);
  v54 = v110[0];
  v55 = *(v110[0] + 16);
  v56 = *(v110[0] + 24);
  v57 = v56 >> 1;
  v58 = v55 + 1;
  v93 = *(v35 + 32);
  swift_unknownObjectRetain();
  if (v56 >> 1 <= v55)
  {
    sub_20BB5D394((v56 > 1), v55 + 1, 1);
    v54 = v110[0];
    v56 = *(v110[0] + 24);
    v57 = v56 >> 1;
  }

  *(v54 + 16) = v58;
  v59 = v54 + 24 * v55;
  *(v59 + 32) = v93;
  *(v59 + 48) = 0;
  v60 = v55 + 2;
  v61 = v95;

  if (v57 <= v58)
  {
    sub_20BB5D394((v56 > 1), v60, 1);
    v54 = v110[0];
  }

  *(v54 + 16) = v60;
  v62 = v54 + 24 * v58;
  *(v62 + 32) = v61;
  *(v62 + 40) = &off_2822B24E8;
  *(v62 + 48) = 0;
  v63 = v96;
  swift_unknownObjectRetain();

  v65 = *(v54 + 16);
  v64 = *(v54 + 24);
  if (v65 >= v64 >> 1)
  {
    sub_20BB5D394((v64 > 1), v65 + 1, 1);
  }

  v66 = v110[0];
  *(v110[0] + 16) = v65 + 1;
  v67 = v66 + 24 * v65;
  *(v67 + 32) = v63;
  *(v67 + 40) = &off_2822F9D68;
  *(v67 + 48) = 0;
  sub_20B51CC64(v112, v110);
  sub_20B51CC64(v111, v109);
  v68 = __swift_mutable_project_boxed_opaque_existential_1(v110, v110[3]);
  v69 = MEMORY[0x28223BE20](v68);
  v71 = (&v93 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71, v69);
  v73 = __swift_mutable_project_boxed_opaque_existential_1(v109, v109[3]);
  v96 = &v93;
  v74 = MEMORY[0x28223BE20](v73);
  v76 = (&v93 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v77 + 16))(v76, v74);
  v78 = *v71;
  v79 = *v76;
  v107 = v40;
  v108 = v99;
  v106[0] = v78;
  v104 = v94;
  v105 = &off_2822B6968;
  v103[0] = v79;
  v80 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v81 = __swift_mutable_project_boxed_opaque_existential_1(v106, v107);
  v82 = MEMORY[0x28223BE20](v81);
  v84 = (&v93 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v85 + 16))(v84, v82);
  v86 = __swift_mutable_project_boxed_opaque_existential_1(v103, v104);
  v87 = MEMORY[0x28223BE20](v86);
  v89 = (&v93 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v90 + 16))(v89, v87);
  v91 = sub_20BE3AA74(v100, v101, v66, v98, v97, *v84, *v89, 2, v80);
  __swift_destroy_boxed_opaque_existential_1(v111);
  __swift_destroy_boxed_opaque_existential_1(v112);
  __swift_destroy_boxed_opaque_existential_1(v103);
  __swift_destroy_boxed_opaque_existential_1(v106);
  __swift_destroy_boxed_opaque_existential_1(v109);
  __swift_destroy_boxed_opaque_existential_1(v110);
  __swift_destroy_boxed_opaque_existential_1(&v113);
  *(v5 + 408) = v91;
  sub_20BE131B0();
  swift_getObjectType();
  sub_20C139454();
  swift_allocObject();
  swift_weakInit();
  sub_20BB86CA0(&unk_281103B10, MEMORY[0x277D543B0]);

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&v113);

  swift_getObjectType();
  sub_20C13AEC4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&v113);

  swift_getObjectType();
  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(&v113);

  return v5;
}

uint64_t sub_20BB838A8(uint64_t a1, const char *a2)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1F4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20B517000, v7, v8, a2, v9, 2u);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BB83A1C();
  }

  return result;
}

uint64_t sub_20BB83A1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v2 = *(v1 - 8);
  v135 = v1;
  v136 = v2;
  MEMORY[0x28223BE20](v1);
  v134 = &v116 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A60);
  v138 = *(v4 - 8);
  v139 = v4;
  v137 = *(v138 + 64);
  MEMORY[0x28223BE20](v4);
  v119 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v118 = &v116 - v7;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764208);
  v8 = *(v146 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v146);
  v10 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v116 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v148 = *(v121 - 8);
  v14 = *(v148 + 64);
  MEMORY[0x28223BE20](v121);
  v120 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v141 = &v116 - v16;
  MEMORY[0x28223BE20](v17);
  v143 = &v116 - v18;
  MEMORY[0x28223BE20](v19);
  v145 = &v116 - v20;
  MEMORY[0x28223BE20](v21);
  v147 = &v116 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763090);
  v23 = swift_allocBox();
  v25 = v24;
  v133 = sub_20C135974();
  (*(*(v133 - 8) + 56))(v25, 1, 1, v133);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  v140 = swift_allocBox();
  v27 = v26;
  v28 = sub_20C138894();
  (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
  v144 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  v29 = v13;
  sub_20C139EE4();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_20BB86A84;
  *(v30 + 24) = v23;
  v142 = v23;
  v31 = *(v8 + 16);
  v131 = v8 + 16;
  v132 = v31;
  v123 = v10;
  v32 = v13;
  v122 = v13;
  v33 = v146;
  v31(v10, v32, v146);
  v34 = v8;
  v35 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v130 = *(v8 + 80);
  v36 = v9 + v35;
  v37 = v35;
  v126 = v35;
  v38 = (v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v124 = v38;
  v39 = swift_allocObject();
  v40 = *(v34 + 32);
  v125 = v34 + 32;
  v127 = v40;
  v40(v39 + v37, v10, v33);
  v41 = (v39 + v38);
  *v41 = sub_20BB86AA0;
  v41[1] = v30;

  sub_20C137C94();
  v42 = *(v34 + 8);
  v128 = v34 + 8;
  v129 = v42;
  v42(v29, v33);
  v43 = v144[33];
  v44 = v144[34];
  v45 = v144;
  __swift_project_boxed_opaque_existential_1(v144 + 30, v43);
  v46 = v118;
  sub_20BBC5308(*(v45 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_marketingPlacement), v45 + 40, 0, 0, v43, v44, v118);
  v47 = swift_allocObject();
  v48 = v139;
  v49 = v140;
  *(v47 + 16) = sub_20BB86AD0;
  *(v47 + 24) = v49;
  v50 = v138;
  v51 = v119;
  (*(v138 + 16))(v119, v46, v48);
  v52 = v50;
  v53 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v54 = (v137 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  (*(v52 + 32))(v55 + v53, v51, v48);
  v56 = (v55 + v54);
  *v56 = sub_20B80E568;
  v56[1] = v47;

  v57 = v141;
  sub_20C137C94();
  (*(v52 + 8))(v46, v48);
  v58 = swift_allocObject();
  *(v58 + 16) = sub_20BB86B14;
  *(v58 + 24) = v49;
  v59 = v148;
  v117 = *(v148 + 16);
  v137 = v148 + 16;
  v60 = v120;
  v61 = v121;
  v117(v120, v57, v121);
  v62 = v59;
  v63 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v116 = *(v59 + 80);
  v64 = v14 + v63;
  v65 = v63;
  v138 = v63;
  v66 = (v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  v68 = *(v62 + 32);
  v139 = v62 + 32;
  v69 = v60;
  v70 = v61;
  v68(v67 + v65, v69, v61);
  v71 = v68;
  v119 = v68;
  v118 = v66;
  v72 = (v67 + v66);
  *v72 = sub_20B5DF204;
  v72[1] = v58;

  v73 = v143;
  sub_20C137C94();
  v74 = *(v62 + 8);
  v148 = v62 + 8;
  v74(v57, v70);
  v120 = v74;
  v75 = swift_allocObject();
  *(v75 + 16) = nullsub_1;
  *(v75 + 24) = 0;
  v76 = v57;
  v77 = v73;
  v78 = v70;
  v79 = v70;
  v80 = v117;
  v117(v57, v77, v79);
  v81 = v116;
  v82 = swift_allocObject();
  v71(v82 + v138, v76, v78);
  v83 = (v82 + v66);
  *v83 = sub_20B5DF3D4;
  v83[1] = v75;
  v84 = v145;
  sub_20C137C94();
  v85 = v143;
  v86 = v148;
  v74(v143, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v87 = *(v86 + 64);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_20C14F320;
  v89 = v88 + ((v81 + 32) & ~v81);
  v80(v89, v147, v78);
  v80(v89 + v87, v84, v78);
  v90 = v80;
  sub_20B5E2E18();
  v91 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v92 = swift_allocObject();
  v93 = v142;
  *(v92 + 16) = sub_20BB86B30;
  *(v92 + 24) = v93;
  v94 = swift_allocObject();
  *(v94 + 16) = sub_20B7F133C;
  *(v94 + 24) = v92;
  v95 = swift_allocObject();
  *(v95 + 16) = sub_20BB86B38;
  *(v95 + 24) = v94;
  v96 = v141;
  v90(v141, v85, v78);
  v97 = v118;
  v98 = swift_allocObject();
  (v119)(v98 + v138, v96, v78);
  v99 = (v98 + v97);
  *v99 = sub_20BB86B54;
  v99[1] = v95;

  v100 = v122;
  sub_20C137C94();
  v101 = v120;
  (v120)(v85, v78);
  v102 = swift_allocObject();
  swift_weakInit();
  v103 = swift_allocObject();
  v104 = v140;
  *(v103 + 16) = v102;
  *(v103 + 24) = v104;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_20BB86B84;
  *(v105 + 24) = v103;
  v106 = v123;
  v107 = v146;
  v132(v123, v100, v146);
  v108 = v124;
  v109 = swift_allocObject();
  v127(v109 + v126, v106, v107);
  v110 = (v109 + v108);
  *v110 = sub_20BB86BA0;
  v110[1] = v105;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v111 = v134;
  sub_20C137C94();
  v129(v100, v107);
  v112 = v135;
  v113 = sub_20C137CB4();
  v114 = swift_allocObject();
  *(v114 + 16) = 0;
  *(v114 + 24) = 0;
  v113(sub_20B52347C, v114);

  (*(v136 + 8))(v111, v112);
  v101(v145, v78);
  v101(v147, v78);
}

uint64_t sub_20BB8478C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = swift_projectBox();
  v6 = sub_20C135974();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4, a1, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  swift_beginAccess();
  return sub_20B5DF2D4(v4, v5, &qword_27C763090);
}

uint64_t sub_20BB848D4(void **a1)
{
  v2 = sub_20C139594();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C138E94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = *a1;
  v14 = swift_projectBox();
  (*(v7 + 104))(v9, *MEMORY[0x277D54198], v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D54408], v2);
  v15 = v13;
  sub_20C138854();
  v16 = sub_20C138894();
  (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
  swift_beginAccess();
  return sub_20B5DF2D4(v12, v14, &unk_27C768660);
}

uint64_t sub_20BB84B40(void *a1)
{
  v2 = v1;
  v4 = sub_20C139594();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20C138E94();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13BB84();
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v10 - 8);
  v49 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7662D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - v13;
  v48 = swift_projectBox();
  v52[0] = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
  v16 = sub_20C138A74();
  v17 = swift_dynamicCast();
  v18 = *(*(v16 - 8) + 56);
  if (v17)
  {
    v19 = *(v16 - 8);
    v18(v14, 0, 1, v16);
    v20 = (*(v19 + 88))(v14, v16);
    v21 = *MEMORY[0x277D54118];
    (*(v19 + 8))(v14, v16);
    v22 = v20 == v21;
    v2 = v1;
    if (v22)
    {
      v23 = sub_20C138894();
      v24 = v49;
      (*(*(v23 - 8) + 56))(v49, 1, 1, v23);
      goto LABEL_10;
    }
  }

  else
  {
    v18(v14, 1, 1, v16);
    sub_20B520158(v14, &qword_27C7662D0);
  }

  sub_20C13B534();
  v25 = a1;
  v26 = sub_20C13BB74();
  v27 = sub_20C13D1D4();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40 = v2;
    v30 = v29;
    v52[0] = v29;
    *v28 = 136446210;
    swift_getErrorValue();
    v31 = MEMORY[0x20F2F5850](v50, v51);
    v33 = v9;
    v34 = sub_20B51E694(v31, v32, v52);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_20B517000, v26, v27, "Error fetching marketing offer: %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x20F2F6A40](v30, -1, -1);
    MEMORY[0x20F2F6A40](v28, -1, -1);

    (*(v43 + 8))(v33, v7);
  }

  else
  {

    (*(v43 + 8))(v9, v7);
  }

  sub_20B6B4370(MEMORY[0x277D84F90]);
  v35 = objc_allocWithZone(MEMORY[0x277CEE528]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7662D8);
  v36 = sub_20C13C744();

  [v35 initWithDictionary_];

  (*(v44 + 104))(v45, *MEMORY[0x277D54198], v46);
  (*(v41 + 104))(v47, *MEMORY[0x277D54408], v42);
  v24 = v49;
  sub_20C138854();
  v37 = sub_20C138894();
  (*(*(v37 - 8) + 56))(v24, 0, 1, v37);
LABEL_10:
  v38 = v48;
  swift_beginAccess();
  return sub_20B5DF2D4(v24, v38, &unk_27C768660);
}

uint64_t sub_20BB85194@<X0>(uint64_t a1@<X8>)
{
  v2 = swift_projectBox();
  swift_beginAccess();
  return sub_20B52F9E8(v2, a1, &qword_27C763090);
}

uint64_t sub_20BB851F0@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  v7 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v9 = result;
  if (result)
  {
    swift_beginAccess();
    sub_20B52F9E8(v7, v6, &unk_27C768660);
    sub_20BB8532C(a1, v6);

    result = sub_20B520158(v6, &unk_27C768660);
  }

  *a2 = v9 == 0;
  return result;
}

uint64_t sub_20BB8532C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v75 = a2;
  v5 = sub_20C1333A4();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_20C137C24();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v67 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C136CD4();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x28223BE20](v8);
  v80 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C134E44();
  MEMORY[0x28223BE20](v10 - 8);
  v78 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v12 - 8);
  v77 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v66 - v15;
  v16 = sub_20C134314();
  v73 = *(v16 - 8);
  v74 = v16;
  MEMORY[0x28223BE20](v16);
  v72 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763090);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v66 - v19;
  v21 = sub_20C135974();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v23(v20, a1, v21);
  v24 = *(v22 + 56);
  v24(v20, 0, 1, v21);
  v25 = OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_programDetail;
  swift_beginAccess();
  sub_20B5DF2D4(v20, v2 + v25, &qword_27C763090);
  swift_endAccess();
  v26 = *(v2 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_headerShelf);
  v27 = OBJC_IVAR____TtC9SeymourUI33TVCatalogProgramDetailHeaderShelf_marketingOffer;
  swift_beginAccess();
  sub_20B5DF33C(v75, v26 + v27);
  swift_endAccess();
  v23(v20, a1, v21);
  v24(v20, 0, 1, v21);
  v28 = OBJC_IVAR____TtC9SeymourUI33TVCatalogProgramDetailHeaderShelf_programDetail;
  swift_beginAccess();
  sub_20B5DF2D4(v20, v26 + v28, &qword_27C763090);
  swift_endAccess();
  sub_20C09979C(1);
  v29 = v3;
  sub_20B8C3AF8();
  v71 = a1;
  sub_20BF6DDF8();
  v30 = (v3 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_mediaTagStringBuilder);
  v31 = *(v3 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_mediaTagStringBuilder + 24);
  v75 = *(v3 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_mediaTagStringBuilder + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_mediaTagStringBuilder), v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168);
  v32 = *(sub_20C138094() - 8);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_20C14F980;
  v35 = (v34 + v33);
  v36 = v72;
  sub_20C135954();
  v37 = v36;
  v38 = sub_20C1342D4();
  v40 = v39;
  (*(v73 + 8))(v37, v74);
  *v35 = v38;
  v35[1] = v40;
  v41 = v29;
  swift_storeEnumTagMultiPayload();
  v42 = v76;
  v43 = sub_20C138544();

  v44 = [v43 string];

  v45 = sub_20C13C954();
  v47 = v46;

  v48 = (v41 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_metricPageName);
  *v48 = v45;
  v48[1] = v47;

  __swift_project_boxed_opaque_existential_1(v30, v30[3]);

  v49 = v79;
  v50 = sub_20C138544();

  v51 = [v50 string];

  v52 = v81;
  v75 = sub_20C13C954();
  v54 = v53;

  v55 = v78;
  sub_20C135944();
  v56 = v80;
  sub_20C134E34();
  sub_20B62A2AC(v55);
  sub_20C136CB4();
  v57 = v77;
  (*(v82 + 8))(v56, v83);
  (*(v49 + 56))(v42, 0, 1, v52);
  sub_20B52F9E8(v42, v57, &unk_27C766680);
  if ((*(v49 + 48))(v57, 1, v52) == 1)
  {
    sub_20B520158(v57, &unk_27C766680);
  }

  else
  {
    v58 = v67;
    (*(v49 + 32))(v67, v57, v52);
    sub_20BC4D8C8(v58);
    (*(v49 + 8))(v58, v52);
  }

  v59 = v41 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_backgroundArtworkDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v60 = *(v59 + 8);
    ObjectType = swift_getObjectType();
    v84[3] = type metadata accessor for TVCatalogProgramPageDataProvider();
    v84[4] = &off_2822D0190;
    v84[0] = v41;
    v62 = *(v60 + 16);

    v62(v84, v42, v45, v47, v75, v54, ObjectType, v60);

    swift_unknownObjectRelease();
    sub_20B520158(v42, &unk_27C766680);
    result = __swift_destroy_boxed_opaque_existential_1(v84);
  }

  else
  {

    result = sub_20B520158(v42, &unk_27C766680);
  }

  v64 = OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_shouldPublishPageEventWhenAvailable;
  if (*(v41 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_shouldPublishPageEventWhenAvailable) == 1)
  {
    v84[0] = v41;
    v65 = v68;
    sub_20BB86150(v68);
    type metadata accessor for TVCatalogProgramPageDataProvider();
    sub_20BB86CA0(&qword_27C7630A0, type metadata accessor for TVCatalogProgramPageDataProvider);
    sub_20C138C54();
    result = (*(v69 + 8))(v65, v70);
    *(v41 + v64) = 0;
  }

  return result;
}

uint64_t sub_20BB85CB4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 240);
  __swift_destroy_boxed_opaque_existential_1(v0 + 280);
  __swift_destroy_boxed_opaque_existential_1(v0 + 320);

  __swift_destroy_boxed_opaque_existential_1(v0 + 368);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_programDetail, &qword_27C763090);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_marketingOffer, &unk_27C768660);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_mediaTagStringBuilder);

  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_backgroundArtworkDelegate);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_configuration, &qword_27C761800);
  return v0;
}

uint64_t sub_20BB85E60()
{
  sub_20BB85CB4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVCatalogProgramPageDataProvider()
{
  result = qword_27C76B530;
  if (!qword_27C76B530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BB85F0C()
{
  sub_20BB860FC(319, &qword_27C76B540, MEMORY[0x277D51D90]);
  if (v0 <= 0x3F)
  {
    sub_20BB860FC(319, &qword_281103B50, MEMORY[0x277D540B0]);
    if (v1 <= 0x3F)
    {
      sub_20BB860FC(319, &qword_281103BF0, MEMORY[0x277D50560]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_20BB860FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20BB86150@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v2 - 8);
  v38 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v31 - v5;
  v6 = sub_20C134314();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C135974();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763090);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v31 - v18;
  v36 = *(*(v1 + 408) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v20 = *MEMORY[0x277D51850];
  v21 = sub_20C1352F4();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v19, v20, v21);
  (*(v22 + 56))(v19, 0, 1, v21);
  v23 = OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_programDetail;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v23, v13, &qword_27C763090);
  if ((*(v9 + 48))(v13, 1, v8))
  {

    sub_20B520158(v13, &qword_27C763090);
    v24 = 1;
  }

  else
  {
    v25 = v32;
    (*(v9 + 16))(v32, v13, v8);

    sub_20B520158(v13, &qword_27C763090);
    v26 = v33;
    sub_20C135954();
    (*(v9 + 8))(v25, v8);
    sub_20C1342A4();
    (*(v34 + 8))(v26, v35);
    v24 = 0;
  }

  v27 = sub_20C132C14();
  (*(*(v27 - 8) + 56))(v16, v24, 1, v27);
  v28 = sub_20C135ED4();
  (*(*(v28 - 8) + 56))(v37, 1, 1, v28);
  v29 = sub_20C136914();
  (*(*(v29 - 8) + 56))(v38, 1, 1, v29);

  return sub_20C133384();
}

uint64_t sub_20BB86754@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI32TVCatalogProgramPageDataProvider_configuration;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C761800);
}

uint64_t sub_20BB867BC@<X0>(void (*a1)(__n128)@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763090);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  a1(v5);
  v8 = sub_20C135974();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  sub_20B520158(v7, &qword_27C763090);
  v10 = sub_20C133C44();
  sub_20BB86CA0(&qword_27C7662C8, MEMORY[0x277D50320]);
  swift_allocError();
  (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D50318], v10);
  return swift_willThrow();
}

uint64_t sub_20BB86988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_20C135974();

  return sub_20C137C94();
}

uint64_t sub_20BB86BD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BB86CA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ClearAllSelected()
{
  result = qword_27C76B548;
  if (!qword_27C76B548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *static TVButton.makeTextButton(title:font:forDynamicType:frame:isPillShape:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  objc_allocWithZone(type metadata accessor for TVButtonTextContentView());

  v20 = TVButtonTextContentView.init(title:)(a1, a2);
  v21 = v20;
  if (a3)
  {
    [*&v20[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setFont_];
  }

  if (a4 != 2)
  {
    [*&v21[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setAdjustsFontForContentSizeCategory_];
  }

  return sub_20BB87F8C(v21, a5 & 1, 0, objc_allocWithZone(v10), &protocol witness table for TVButtonTextContentView, sub_20BB88C24, a6, a7, a8, a9);
}

char *static TVButton.makeTextButton(attributedTitle:font:forDynamicType:frame:isPillShape:)(void *a1, uint64_t a2, char a3, char a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  objc_allocWithZone(type metadata accessor for TVButtonTextContentView());
  v18 = a1;
  v19 = TVButtonTextContentView.init(attributedTitle:)(a1);
  v20 = v19;
  if (a2)
  {
    [*&v19[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setFont_];
  }

  if (a3 != 2)
  {
    [*&v20[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setAdjustsFontForContentSizeCategory_];
  }

  return sub_20BB87F8C(v20, a4 & 1, 0, objc_allocWithZone(v9), &protocol witness table for TVButtonTextContentView, sub_20BB88C24, a5, a6, a7, a8);
}

char *TVButtonTextContentView.init(title:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_focusedTextColor;
  v5 = objc_opt_self();
  *&v2[v4] = [v5 blackColor];
  if (_UISolariumEnabled())
  {
    v6 = [v5 blackColor];
    v7 = [v5 whiteColor];
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = objc_allocWithZone(MEMORY[0x277D75348]);
    v55[4] = sub_20BB8870C;
    v55[5] = v8;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 1107296256;
    v55[2] = sub_20BB87EE4;
    v55[3] = &block_descriptor_91;
    v10 = _Block_copy(v55);
    v11 = [v9 initWithDynamicProvider_];
    _Block_release(v10);
  }

  else
  {
    v11 = [v5 whiteColor];
  }

  *&v2[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_unfocusedTextColor] = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v13 setNumberOfLines_];
  [v13 setLineBreakMode_];
  [v13 setAllowsDefaultTighteningForTruncation_];
  v14 = [v5 whiteColor];
  [v13 setTextColor_];

  [v13 setTextAlignment_];
  v15 = objc_opt_self();
  v16 = [v15 preferredFontForTextStyle_];
  [v16 pointSize];
  v18 = v17;

  v19 = [v15 boldSystemFontOfSize_];
  [v13 setFont_];

  [v13 setAdjustsFontForContentSizeCategory_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v12] = v13;
  *&v2[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_buttonControlState] = 0;
  v20 = v13;
  if (a2)
  {
    v21 = sub_20C13C914();
  }

  else
  {
    v21 = 0;
  }

  [v13 setText_];

  v22 = type metadata accessor for TVButtonTextContentView();
  v56.receiver = v2;
  v56.super_class = v22;
  v23 = objc_msgSendSuper2(&v56, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v24 = OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel;
  v25 = *&v23[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel];
  v26 = v23;
  [v26 addSubview_];
  v28 = *MEMORY[0x277D768C8];
  v27 = *(MEMORY[0x277D768C8] + 8);
  v29 = *(MEMORY[0x277D768C8] + 16);
  v30 = *(MEMORY[0x277D768C8] + 24);
  v31 = *&v23[v24];
  v32 = [v31 leadingAnchor];
  v33 = [v26 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:v27];

  LODWORD(v35) = 1148846080;
  [v34 setPriority_];
  v36 = v34;
  v37 = [v31 trailingAnchor];
  v38 = [v26 trailingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:-v30];

  LODWORD(v40) = 1148846080;
  [v39 setPriority_];
  v41 = v39;
  v42 = [v31 topAnchor];
  v43 = [v26 topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:v28];

  LODWORD(v45) = 1148846080;
  [v44 setPriority_];
  v46 = [v31 bottomAnchor];
  v47 = [v26 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:-v29];

  LODWORD(v49) = 1148846080;
  [v48 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_20C14FE90;
  *(v50 + 32) = v36;
  *(v50 + 40) = v41;
  *(v50 + 48) = v44;
  *(v50 + 56) = v48;
  v51 = v44;

  v52 = objc_opt_self();
  sub_20B5E29D0();
  v53 = sub_20C13CC54();

  [v52 activateConstraints_];

  return v26;
}

char *TVButtonTextContentView.init(attributedTitle:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_focusedTextColor;
  v4 = objc_opt_self();
  *&v1[v3] = [v4 blackColor];
  if (_UISolariumEnabled())
  {
    v5 = [v4 blackColor];
    v6 = [v4 whiteColor];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = objc_allocWithZone(MEMORY[0x277D75348]);
    v52[4] = sub_20BB89E34;
    v52[5] = v7;
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 1107296256;
    v52[2] = sub_20BB87EE4;
    v52[3] = &block_descriptor_7_0;
    v9 = _Block_copy(v52);
    v10 = [v8 initWithDynamicProvider_];
    _Block_release(v9);
  }

  else
  {
    v10 = [v4 whiteColor];
  }

  *&v1[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_unfocusedTextColor] = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v12 setNumberOfLines_];
  [v12 setLineBreakMode_];
  [v12 setAllowsDefaultTighteningForTruncation_];
  v13 = [v4 whiteColor];
  [v12 setTextColor_];

  [v12 setTextAlignment_];
  v14 = objc_opt_self();
  v15 = [v14 preferredFontForTextStyle_];
  [v15 pointSize];
  v17 = v16;

  v18 = [v14 boldSystemFontOfSize_];
  [v12 setFont_];

  [v12 setAdjustsFontForContentSizeCategory_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v11] = v12;
  *&v1[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_buttonControlState] = 0;
  [v12 setAttributedText_];
  v19 = type metadata accessor for TVButtonTextContentView();
  v53.receiver = v1;
  v53.super_class = v19;
  v20 = objc_msgSendSuper2(&v53, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v21 = OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel;
  v22 = *&v20[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel];
  v23 = v20;
  [v23 addSubview_];
  v25 = *MEMORY[0x277D768C8];
  v24 = *(MEMORY[0x277D768C8] + 8);
  v26 = *(MEMORY[0x277D768C8] + 16);
  v27 = *(MEMORY[0x277D768C8] + 24);
  v28 = *&v20[v21];
  v29 = [v28 leadingAnchor];
  v30 = [v23 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:v24];

  LODWORD(v32) = 1148846080;
  [v31 setPriority_];
  v33 = v31;
  v34 = [v28 trailingAnchor];
  v35 = [v23 trailingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:-v27];

  LODWORD(v37) = 1148846080;
  [v36 setPriority_];
  v38 = v36;
  v39 = [v28 topAnchor];
  v40 = [v23 topAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:v25];

  LODWORD(v42) = 1148846080;
  [v41 setPriority_];
  v43 = [v28 bottomAnchor];
  v44 = [v23 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-v26];

  LODWORD(v46) = 1148846080;
  [v45 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_20C14FE90;
  *(v47 + 32) = v33;
  *(v47 + 40) = v38;
  *(v47 + 48) = v41;
  *(v47 + 56) = v45;
  v48 = v41;

  v49 = objc_opt_self();
  sub_20B5E29D0();
  v50 = sub_20C13CC54();

  [v49 activateConstraints_];

  return v23;
}

id sub_20BB87C88(void *a1)
{
  v2 = OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_focusedTextColor;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_focusedTextColor);
  *(v1 + OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_focusedTextColor) = a1;
  v4 = a1;

  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_buttonControlState) & 8) != 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_unfocusedTextColor;
  }

  v6 = *(v1 + v5);
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel);

  return [v7 setTextColor_];
}

id sub_20BB87D08(void *a1)
{
  v2 = OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_unfocusedTextColor;
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_unfocusedTextColor);
  *(v1 + OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_unfocusedTextColor) = a1;
  v4 = a1;

  if ((*(v1 + OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_buttonControlState) & 8) != 0)
  {
    v5 = OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_focusedTextColor;
  }

  else
  {
    v5 = v2;
  }

  v6 = *(v1 + v5);
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel);

  return [v7 setTextColor_];
}

id TVButtonTextContentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TVButtonTextContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVButtonTextContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20BB87EE4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

char *sub_20BB87F8C(void *a1, char a2, int a3, _BYTE *a4, uint64_t a5, void (*a6)(void), double a7, double a8, double a9, double a10)
{
  v75 = a6;
  LODWORD(v77) = a3;
  ObjectType = swift_getObjectType();
  v18 = sub_20C13C0B4();
  v73 = *(v18 - 8);
  v74 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v73 - v22;
  v24 = OBJC_IVAR____TtC9SeymourUI8TVButton_activityIndicator;
  v25 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a4[v24] = v25;
  *&a4[OBJC_IVAR____TtC9SeymourUI8TVButton_controlState] = 0;
  *&a4[OBJC_IVAR____TtC9SeymourUI8TVButton_menu] = 0;
  v26 = &a4[OBJC_IVAR____TtC9SeymourUI8TVButton_onWillDisplayMenu];
  *v26 = 0;
  v26[1] = 0;
  v27 = OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint;
  *&a4[v27] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v28 = OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint;
  *&a4[v28] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v29 = OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint;
  *&a4[v29] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v30 = OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint;
  *&a4[v30] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  a4[OBJC_IVAR____TtC9SeymourUI8TVButton_isLoading] = 0;
  [*&a4[v24] setHidesWhenStopped_];
  v31 = &a4[OBJC_IVAR____TtC9SeymourUI8TVButton_contentView];
  *v31 = a1;
  v31[1] = a5;
  a4[OBJC_IVAR____TtC9SeymourUI8TVButton_isPillShape] = a2;
  a4[OBJC_IVAR____TtC9SeymourUI8TVButton_ignoreContentInsets] = v77;
  v77 = a1;
  v32 = _UISolariumEnabled();
  v33 = 24.0;
  v34 = &a4[OBJC_IVAR____TtC9SeymourUI8TVButton_underlyingContentInset];
  *&a4[OBJC_IVAR____TtC9SeymourUI8TVButton_underlyingContentInset] = 0x4024000000000000;
  if (v32)
  {
    v33 = 30.0;
  }

  v34[1] = v33;
  v34[2] = 10.0;
  v34[3] = v33;
  v35 = sub_20B8F59B8(a7, a8, a9, a10);
  v36 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
  *&a4[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] = v35;
  [v35 cornerRadius];
  v37 = &OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_workoutPlanStringBuilder;
  *&a4[OBJC_IVAR____TtC9SeymourUI8TVButton_cornerRadius] = v38;
  v39 = *&a4[v36];
  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 clearColor];
  [v41 setBackgroundColor:v42 forState:2];

  if (_UISolariumEnabled())
  {
    v43 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    sub_20C13C084();
    sub_20C13C094();
    v44 = v73;
    v45 = v74;
    v46 = *(v73 + 8);
    v46(v21, v74);
    (*(v44 + 16))(v21, v23, v45);
    v78[3] = sub_20C13C0D4();
    v78[4] = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(v78);
    sub_20C13C0E4();
    sub_20C13D564();
    v46(v23, v45);
    v37 = &OBJC_IVAR____TtC9SeymourUI30WorkoutPlanActivityPickerShelf_workoutPlanStringBuilder;
  }

  else
  {
    v47 = [objc_opt_self() effectWithStyle_];
    v43 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  }

  *&a4[OBJC_IVAR____TtC9SeymourUI8TVButton_backgroundView] = v43;
  v48 = v43;
  [v48 setUserInteractionEnabled_];

  result = [*&a4[v36] visualEffectContainerView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v50 = result;
  [result addSubview_];

  v79.receiver = a4;
  v79.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v79, sel_initWithFrame_, a7, a8, a9, a10);
  v52 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
  v53 = *&v51[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView];
  v54 = v51;
  [v53 cornerRadius];
  *&v54[v37[423]] = v55;
  sub_20B9DE3E4();
  [v54 addSubview_];
  result = [*&v51[v52] contentView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v56 = result;
  v57 = OBJC_IVAR____TtC9SeymourUI8TVButton_activityIndicator;
  [result addSubview_];

  v58 = [v54 traitCollection];
  LODWORD(v56) = [v58 userInterfaceStyle] == 2;

  v59 = *&v51[v52];
  v60 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:dbl_20C167360[v56]];
  [v59 setBackgroundColor:v60 forState:4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_20C151490;
  v62 = [*&v54[v57] centerYAnchor];
  result = [*&v51[v52] contentView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v63 = result;
  v64 = [result centerYAnchor];

  v65 = [v62 constraintEqualToAnchor_];
  *(v61 + 32) = v65;
  v66 = [*&v54[v57] centerXAnchor];
  result = [*&v51[v52] contentView];
  if (result)
  {
    v67 = result;
    v68 = objc_opt_self();
    v69 = [v67 centerXAnchor];

    v70 = [v66 constraintEqualToAnchor_];
    *(v61 + 40) = v70;
    sub_20B5E29D0();
    v71 = sub_20C13CC54();

    [v68 activateConstraints_];

    v72 = v77;
    v75();

    return v54;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_20BB88754(void *a1, _BYTE *a2)
{
  v4 = &a2[OBJC_IVAR____TtC9SeymourUI8TVButton_contentView];
  swift_beginAccess();
  [*v4 removeFromSuperview];
  v5 = *v4;
  *v4 = a1;
  *(v4 + 1) = &off_2822B2B08;
  v6 = a1;

  v7 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView];
  result = [v7 contentView];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  [result addSubview_];

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  if (a2[OBJC_IVAR____TtC9SeymourUI8TVButton_ignoreContentInsets] != 1)
  {
    v12 = [v6 leftAnchor];
    result = [v7 contentView];
    if (result)
    {
      v13 = result;
      v14 = [result leftAnchor];

      v15 = &a2[OBJC_IVAR____TtC9SeymourUI8TVButton_underlyingContentInset];
      v16 = [v12 constraintEqualToAnchor:v14 constant:*&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_underlyingContentInset + 8]];

      v17 = OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint;
      v18 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint];
      *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint] = v16;

      v19 = [v6 rightAnchor];
      result = [v7 contentView];
      if (result)
      {
        v20 = result;
        v21 = [result rightAnchor];

        v22 = [v19 constraintEqualToAnchor:v21 constant:-v15[3]];
        v23 = OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint;
        v24 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint];
        *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint] = v22;

        v25 = [v6 topAnchor];
        result = [v7 contentView];
        if (result)
        {
          v26 = result;
          v27 = [result topAnchor];

          v28 = [v25 constraintEqualToAnchor:v27 constant:*v15];
          v29 = OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint;
          v30 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint];
          *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint] = v28;

          v31 = [v6 bottomAnchor];
          result = [v7 contentView];
          if (result)
          {
            v32 = result;
            v33 = [result bottomAnchor];

            v34 = [v31 constraintEqualToAnchor:v33 constant:-v15[2]];
            v35 = OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint;
            v36 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint];
            *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint] = v34;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
            v37 = swift_allocObject();
            *(v37 + 16) = xmmword_20C14FE90;
            v38 = *&a2[v17];
            v39 = *&a2[v23];
            *(v37 + 32) = v38;
            *(v37 + 40) = v39;
            v40 = *&a2[v29];
            v41 = *&a2[v35];
            *(v37 + 48) = v40;
            *(v37 + 56) = v41;
            v11 = objc_opt_self();
            sub_20B5E29D0();
            v42 = v38;
            v43 = v39;
            v44 = v40;
            v45 = v41;
            goto LABEL_10;
          }

LABEL_19:
          __break(1u);
          return result;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = [v7 contentView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  UIView.constraintsPinningCenterToCenterOfView(_:)(result);

  v11 = objc_opt_self();
  sub_20B5E29D0();
LABEL_10:
  v46 = sub_20C13CC54();

  [v11 activateConstraints_];

  v47 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_controlState];
  *&v6[OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_buttonControlState] = v47;
  if ((v47 & 8) != 0)
  {
    v48 = &OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_focusedTintColor;
  }

  else
  {
    v48 = &OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_unfocusedTintColor;
  }

  [*&v6[OBJC_IVAR____TtC9SeymourUI24TVButtonImageContentView_imageView] setTintColor_];
  sub_20B9DDDD4();
  return [a2 layoutIfNeeded];
}

id sub_20BB88C24(void *a1, _BYTE *a2)
{
  v4 = &a2[OBJC_IVAR____TtC9SeymourUI8TVButton_contentView];
  swift_beginAccess();
  [*v4 removeFromSuperview];
  v5 = *v4;
  *v4 = a1;
  *(v4 + 1) = &protocol witness table for TVButtonTextContentView;
  v6 = a1;

  v7 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView];
  result = [v7 contentView];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  [result addSubview_];

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  if (a2[OBJC_IVAR____TtC9SeymourUI8TVButton_ignoreContentInsets] != 1)
  {
    v12 = [v6 leftAnchor];
    result = [v7 contentView];
    if (result)
    {
      v13 = result;
      v14 = [result leftAnchor];

      v15 = &a2[OBJC_IVAR____TtC9SeymourUI8TVButton_underlyingContentInset];
      v16 = [v12 constraintEqualToAnchor:v14 constant:*&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_underlyingContentInset + 8]];

      v17 = OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint;
      v18 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint];
      *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint] = v16;

      v19 = [v6 rightAnchor];
      result = [v7 contentView];
      if (result)
      {
        v20 = result;
        v21 = [result rightAnchor];

        v22 = [v19 constraintEqualToAnchor:v21 constant:-v15[3]];
        v23 = OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint;
        v24 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint];
        *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint] = v22;

        v25 = [v6 topAnchor];
        result = [v7 contentView];
        if (result)
        {
          v26 = result;
          v27 = [result topAnchor];

          v28 = [v25 constraintEqualToAnchor:v27 constant:*v15];
          v29 = OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint;
          v30 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint];
          *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint] = v28;

          v31 = [v6 bottomAnchor];
          result = [v7 contentView];
          if (result)
          {
            v32 = result;
            v33 = [result bottomAnchor];

            v34 = [v31 constraintEqualToAnchor:v33 constant:-v15[2]];
            v35 = OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint;
            v36 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint];
            *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint] = v34;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
            v37 = swift_allocObject();
            *(v37 + 16) = xmmword_20C14FE90;
            v38 = *&a2[v17];
            v39 = *&a2[v23];
            *(v37 + 32) = v38;
            *(v37 + 40) = v39;
            v40 = *&a2[v29];
            v41 = *&a2[v35];
            *(v37 + 48) = v40;
            *(v37 + 56) = v41;
            v11 = objc_opt_self();
            sub_20B5E29D0();
            v42 = v38;
            v43 = v39;
            v44 = v40;
            v45 = v41;
            goto LABEL_10;
          }

LABEL_19:
          __break(1u);
          return result;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = [v7 contentView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result;
  UIView.constraintsPinningCenterToCenterOfView(_:)(result);

  v11 = objc_opt_self();
  sub_20B5E29D0();
LABEL_10:
  v46 = sub_20C13CC54();

  [v11 activateConstraints_];

  v47 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_controlState];
  *&v6[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_buttonControlState] = v47;
  if ((v47 & 8) != 0)
  {
    v48 = &OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_focusedTextColor;
  }

  else
  {
    v48 = &OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_unfocusedTextColor;
  }

  [*&v6[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel] setTextColor_];
  sub_20B9DDDD4();
  return [a2 layoutIfNeeded];
}

id sub_20BB890F4(void *a1, char *a2)
{
  v4 = &a2[OBJC_IVAR____TtC9SeymourUI8TVButton_contentView];
  swift_beginAccess();
  [*v4 removeFromSuperview];
  v5 = *v4;
  *v4 = a1;
  *(v4 + 1) = &off_2822ADCD8;
  v6 = a1;

  v7 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView];
  result = [v7 contentView];
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  [result addSubview_];

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  if (a2[OBJC_IVAR____TtC9SeymourUI8TVButton_ignoreContentInsets] == 1)
  {
    result = [v7 contentView];
    if (result)
    {
      v10 = result;
      UIView.constraintsPinningCenterToCenterOfView(_:)(result);

      v11 = objc_opt_self();
      sub_20B5E29D0();
      v12 = sub_20C13CC54();

      [v11 activateConstraints_];
LABEL_10:

      sub_20B9DDDD4();
      return [a2 layoutIfNeeded];
    }

    goto LABEL_12;
  }

  v13 = [v6 leftAnchor];
  result = [v7 contentView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = result;
  v15 = [result leftAnchor];

  v16 = &a2[OBJC_IVAR____TtC9SeymourUI8TVButton_underlyingContentInset];
  v17 = [v13 constraintEqualToAnchor:v15 constant:*&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_underlyingContentInset + 8]];

  v18 = OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint;
  v19 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint];
  *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint] = v17;

  v20 = [v6 rightAnchor];
  result = [v7 contentView];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = result;
  v22 = [result rightAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:-v16[3]];
  v24 = OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint;
  v25 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint];
  *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint] = v23;

  v26 = [v6 topAnchor];
  result = [v7 contentView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = result;
  v28 = [result topAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 constant:*v16];
  v30 = OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint;
  v31 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint];
  *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint] = v29;

  v32 = [v6 bottomAnchor];
  result = [v7 contentView];
  if (result)
  {
    v33 = result;
    v34 = [result bottomAnchor];

    v35 = [v32 constraintEqualToAnchor:v34 constant:-v16[2]];
    v36 = OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint;
    v37 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint];
    *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint] = v35;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_20C14FE90;
    v39 = *&a2[v18];
    v40 = *&a2[v24];
    *(v38 + 32) = v39;
    *(v38 + 40) = v40;
    v41 = *&a2[v30];
    v42 = *&a2[v36];
    *(v38 + 48) = v41;
    *(v38 + 56) = v42;
    v43 = objc_opt_self();
    sub_20B5E29D0();
    v44 = v39;
    v45 = v40;
    v46 = v41;
    v47 = v42;
    v12 = sub_20C13CC54();

    [v43 activateConstraints_];
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
  return result;
}

id sub_20BB8958C(void *a1, _BYTE *a2)
{
  v4 = &a2[OBJC_IVAR____TtC9SeymourUI8TVButton_contentView];
  swift_beginAccess();
  [*v4 removeFromSuperview];
  v5 = *v4;
  *v4 = a1;
  *(v4 + 1) = &off_2822BB848;
  v6 = a1;

  v7 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView];
  result = [v7 contentView];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  [result addSubview_];

  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  if (a2[OBJC_IVAR____TtC9SeymourUI8TVButton_ignoreContentInsets] != 1)
  {
    v12 = [v6 leftAnchor];
    result = [v7 contentView];
    if (result)
    {
      v13 = result;
      v14 = [result leftAnchor];

      v15 = &a2[OBJC_IVAR____TtC9SeymourUI8TVButton_underlyingContentInset];
      v16 = [v12 constraintEqualToAnchor:v14 constant:*&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_underlyingContentInset + 8]];

      v17 = OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint;
      v18 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint];
      *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_leftPaddingConstraint] = v16;

      v19 = [v6 rightAnchor];
      result = [v7 contentView];
      if (result)
      {
        v20 = result;
        v21 = [result rightAnchor];

        v22 = [v19 constraintEqualToAnchor:v21 constant:-v15[3]];
        v23 = OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint;
        v24 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint];
        *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_rightPaddingConstraint] = v22;

        v25 = [v6 topAnchor];
        result = [v7 contentView];
        if (result)
        {
          v26 = result;
          v27 = [result topAnchor];

          v28 = [v25 constraintEqualToAnchor:v27 constant:*v15];
          v29 = OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint;
          v30 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint];
          *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_topPaddingConstraint] = v28;

          v31 = [v6 bottomAnchor];
          result = [v7 contentView];
          if (result)
          {
            v32 = result;
            v33 = [result bottomAnchor];

            v34 = [v31 constraintEqualToAnchor:v33 constant:-v15[2]];
            v35 = OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint;
            v36 = *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint];
            *&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_bottomPaddingConstraint] = v34;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
            v37 = swift_allocObject();
            *(v37 + 16) = xmmword_20C14FE90;
            v38 = *&a2[v17];
            v39 = *&a2[v23];
            *(v37 + 32) = v38;
            *(v37 + 40) = v39;
            v40 = *&a2[v29];
            v41 = *&a2[v35];
            *(v37 + 48) = v40;
            *(v37 + 56) = v41;
            v11 = objc_opt_self();
            sub_20B5E29D0();
            v42 = v38;
            v43 = v39;
            v44 = v40;
            v45 = v41;
            goto LABEL_10;
          }

LABEL_18:
          __break(1u);
          return result;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = [v7 contentView];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  UIView.constraintsPinningCenterToCenterOfView(_:)(result);

  v11 = objc_opt_self();
  sub_20B5E29D0();
LABEL_10:
  v46 = sub_20C13CC54();

  [v11 activateConstraints_];

  v47 = 32;
  if ((*&a2[OBJC_IVAR____TtC9SeymourUI8TVButton_controlState] & 8) == 0)
  {
    v47 = 24;
  }

  v48 = *&v6[OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_imageView];
  v49 = *&v6[OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_layout + v47];
  [v48 setTintColor_];
  [*&v6[OBJC_IVAR____TtC9SeymourUI30TVUpNextQueueButtonContentView_textView] setTextColor_];

  sub_20B9DDDD4();
  return [a2 layoutIfNeeded];
}

id _s9SeymourUI23TVButtonTextContentViewC16updateAppearance12controlState8animatedySo09UIControlJ0V_SbtF_0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_buttonControlState) = a1;
  v2 = &OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_unfocusedTextColor;
  if ((a1 & 8) != 0)
  {
    v2 = &OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_focusedTextColor;
  }

  return [*(v1 + OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel) setTextColor_];
}

void sub_20BB89B04()
{
  v1 = OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_focusedTextColor;
  v2 = objc_opt_self();
  *(v0 + v1) = [v2 blackColor];
  if (_UISolariumEnabled())
  {
    v3 = [v2 blackColor];
    v4 = [v2 whiteColor];
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = objc_allocWithZone(MEMORY[0x277D75348]);
    aBlock[4] = sub_20BB89E34;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BB87EE4;
    aBlock[3] = &block_descriptor_26_0;
    v7 = _Block_copy(aBlock);
    v8 = [v6 initWithDynamicProvider_];
    _Block_release(v7);
  }

  else
  {
    v8 = [v2 whiteColor];
  }

  *(v0 + OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_unfocusedTextColor) = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setNumberOfLines_];
  [v10 setLineBreakMode_];
  [v10 setAllowsDefaultTighteningForTruncation_];
  v11 = [v2 whiteColor];
  [v10 setTextColor_];

  [v10 setTextAlignment_];
  v12 = objc_opt_self();
  v13 = [v12 preferredFontForTextStyle_];
  [v13 pointSize];
  v15 = v14;

  v16 = [v12 boldSystemFontOfSize_];
  [v10 setFont_];

  [v10 setAdjustsFontForContentSizeCategory_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v9) = v10;
  *(v0 + OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_buttonControlState) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BB89E38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v8 = *(v40 - 8);
  v38 = *(v8 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v13 = *(v12 - 8);
  v41 = v12;
  v42 = v13;
  MEMORY[0x28223BE20](v12);
  v39 = &v36 - v14;
  sub_20B5A5244(v7);
  sub_20B51CC64(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_configurationClient, v43);
  v15 = swift_allocObject();
  sub_20B51C710(v43, v15 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20B9A9C2C;
  *(v16 + 24) = v15;
  (*(v2 + 16))(v4, v7, v1);
  v17 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v18 = (v3 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v2 + 32))(v19 + v17, v4, v1);
  v20 = (v19 + v18);
  *v20 = sub_20B7F133C;
  v20[1] = v16;
  sub_20C134104();
  v21 = v36;
  sub_20C137C94();
  (*(v2 + 8))(v7, v1);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20BB8FFCC;
  *(v23 + 24) = v22;
  v24 = v37;
  v25 = v21;
  v26 = v40;
  (*(v8 + 16))(v37, v21, v40);
  v27 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v28 = (v38 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v8 + 32))(v29 + v27, v24, v26);
  v30 = (v29 + v28);
  *v30 = sub_20B9A9CBC;
  v30[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v31 = v39;
  sub_20C137C94();
  (*(v8 + 8))(v25, v26);
  v32 = v41;
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v33(sub_20B52347C, v34);

  return (*(v42 + 8))(v31, v32);
}

uint64_t sub_20BB8A348@<X0>(char *a1@<X0>, BOOL *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v5 = result;
  if (result)
  {
    sub_20BB8A3CC(a1);
  }

  *a2 = v5 == 0;
  return result;
}

uint64_t sub_20BB8A3CC(char *a1)
{
  v2 = v1;
  v111 = a1;
  v3 = sub_20C13C554();
  v100 = *(v3 - 8);
  v101 = v3;
  MEMORY[0x28223BE20](v3);
  v99 = (&v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v96 - v6;
  v7 = type metadata accessor for ButtonAction(0);
  v8 = *(v7 - 8);
  v106 = v7;
  v107 = v8;
  MEMORY[0x28223BE20](v7);
  v109 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v96 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v96 - v14;
  v16 = sub_20C138204();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_playlist;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v20, v15, &qword_27C7643F0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_20B520158(v15, &qword_27C7643F0);
  }

  v97 = v17;
  v98 = v16;
  (*(v17 + 32))(v19, v15, v16);
  v105 = v19;
  v22 = sub_20C1381E4();
  v23 = *(v22 + 16);
  v108 = v2;
  v102 = v12;
  if (v23)
  {
    v24 = sub_20BEDE85C(v23, 0);
    v25 = *(sub_20C133B74() - 8);
    v26 = sub_20BEE200C(v124, &v24[(*(v25 + 80) + 32) & ~*(v25 + 80)], v23, v22);

    sub_20B583EDC();
    if (v26 != v23)
    {
      __break(1u);
      goto LABEL_27;
    }

    v2 = v108;
    v12 = v102;
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  *&v124[0] = v24;
  sub_20BB8DF8C(v124);

  v27 = *&v124[0];
  v28 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_marketingOffer;
  swift_beginAccess();
  v29 = v110;
  sub_20B52F9E8(v2 + v28, v110, &unk_27C768660);
  v30 = sub_20C01A7BC(v29);
  sub_20B520158(v29, &unk_27C768660);
  if (*(v30 + 16))
  {
    v31 = v109;
    sub_20B9A9B7C(v30 + ((*(v107 + 80) + 32) & ~*(v107 + 80)), v109, type metadata accessor for ButtonAction);

    sub_20B5F6860(v31, v12);
  }

  else
  {

    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_storefrontLocalizer), *(v2 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_storefrontLocalizer + 24));
    v32 = sub_20C138D34();
    v34 = v33;
    type metadata accessor for ButtonAction.ActionType(0);
    swift_storeEnumTagMultiPayload();
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 4) = v32;
    *(v12 + 5) = v34;
  }

  v35 = sub_20BEF6794(v27);
  sub_20B71D954(v35);

  v36 = (v108 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_mediaTagStringBuilder);
  __swift_project_boxed_opaque_existential_1((v108 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_mediaTagStringBuilder), *(v108 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_mediaTagStringBuilder + 24));
  v104 = sub_20C138544();

  v37 = sub_20BEF6794(v27);

  sub_20B71D860(v37);
  v38 = v108;

  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  v103 = sub_20C138544();

  v39 = *(v38 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_menuOptions);
  v40 = *(v39 + 16);
  if (v40)
  {
    *&v124[0] = MEMORY[0x277D84F90];
    sub_20BB5E478(0, v40, 0);
    v110 = v38 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_storefrontLocalizer;
    v41 = (v39 + 32);
    v42 = *&v124[0];
    v109 = "EDIT_PLAYLIST_ALERT_TITLE";
    do
    {
      v43 = *v41;
      v111 = v41 + 1;
      __swift_project_boxed_opaque_existential_1(v110, *(v110 + 24));
      v44 = sub_20C138D34();
      v46 = v45;

      v47 = sub_20C13C914();
      v48 = [objc_opt_self() smm:v47 systemImageNamed:?];

      *&v124[0] = v42;
      v50 = *(v42 + 16);
      v49 = *(v42 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_20BB5E478((v49 > 1), v50 + 1, 1);
        v42 = *&v124[0];
      }

      *(v42 + 16) = v50 + 1;
      v51 = v42 + 32 * v50;
      *(v51 + 32) = v44;
      *(v51 + 40) = v46;
      *(v51 + 48) = v48;
      *(v51 + 56) = v43 | 0x80;
      --v40;
      v41 = v111;
    }

    while (v40);
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768198);
  v53 = swift_allocBox();
  v55 = v54;
  v56 = v52[20];
  v110 = v52[24];
  v111 = v53;
  v57 = v52[28];
  v58 = v52[32];
  *v54 = sub_20C1381D4();
  *(v55 + 1) = v59;
  v60 = [v103 string];
  v61 = sub_20C13C954();
  v63 = v62;

  *(v55 + 2) = v61;
  *(v55 + 3) = v63;
  v64 = [v104 string];
  v65 = sub_20C13C954();
  v67 = v66;

  *(v55 + 4) = v65;
  *(v55 + 5) = v67;
  v68 = v102;
  sub_20B9A9B7C(v102, &v55[v56], type metadata accessor for ButtonAction);
  (*(v107 + 56))(&v55[v56], 0, 1, v106);
  *&v55[v110] = v42;
  v55[v57] = 1;
  v55[v58] = 1;
  v69 = v111;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_20C14F980;
  *(v70 + 32) = v69 | 0x7000000000000006;
  v115 = 0uLL;
  LOBYTE(v116) = 1;
  *(&v116 + 1) = *v114;
  DWORD1(v116) = *&v114[3];
  *(&v116 + 1) = 0;
  *&v117 = 0;
  WORD4(v117) = 128;
  *(&v117 + 10) = *&v112[7];
  HIWORD(v117) = v113;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  LOBYTE(v121) = 0;
  *(&v121 + 1) = *v112;
  DWORD1(v121) = *&v112[3];
  *(&v121 + 1) = v70;
  *&v122[0] = MEMORY[0x277D84F90];
  *(v122 + 8) = 0u;
  *(&v122[1] + 8) = 0u;
  *(&v122[2] + 1) = 0;
  v123 = 2;
  nullsub_1(&v115);
  v71 = v108;
  v72 = v108 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row;
  v73 = *(v108 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 144);
  v124[8] = *(v108 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 128);
  v124[9] = v73;
  v125 = *(v108 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 160);
  v74 = *(v108 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 80);
  v124[4] = *(v108 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 64);
  v124[5] = v74;
  v75 = *(v108 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 112);
  v124[6] = *(v108 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 96);
  v124[7] = v75;
  v76 = *(v108 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 16);
  v124[0] = *(v108 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row);
  v124[1] = v76;
  v77 = *(v108 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 48);
  v124[2] = *(v108 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 32);
  v124[3] = v77;
  v78 = v122[0];
  v79 = v122[2];
  *(v72 + 128) = v122[1];
  *(v72 + 144) = v79;
  *(v72 + 160) = v123;
  v80 = v120;
  *(v72 + 64) = v119;
  *(v72 + 80) = v80;
  *(v72 + 96) = v121;
  *(v72 + 112) = v78;
  v81 = v116;
  *v72 = v115;
  *(v72 + 16) = v81;
  v82 = v118;
  *(v72 + 32) = v117;
  *(v72 + 48) = v82;

  sub_20B520158(v124, &qword_27C762340);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    v85 = v105;
    goto LABEL_25;
  }

  v84 = Strong;
  v85 = v105;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {

    swift_unknownObjectRelease();
LABEL_25:

    sub_20B9A9AE4(v68, type metadata accessor for ButtonAction);
    return (*(v97 + 8))(v85, v98);
  }

  v86 = sub_20B61DD38(v71, Strong);
  if (!v87)
  {
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();
    v68 = v102;
    goto LABEL_25;
  }

  v89 = v86;
  v90 = v87;
  v91 = v88;
  sub_20B51C88C(0, &qword_281100530);
  v92 = sub_20C13D374();
  v94 = v99;
  v93 = v100;
  *v99 = v92;
  v24 = v101;
  (*(v93 + 104))(v94, *MEMORY[0x277D85200], v101);
  v95 = sub_20C13C584();
  (*(v93 + 8))(v94, v24);
  if (v95)
  {
    sub_20B621464(v89, v90, v91, v108, 1, v84);

    swift_unknownObjectRelease();

    v68 = v102;
    v85 = v105;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_20BB8B000()
{
  v1 = v0;
  v2 = type metadata accessor for PageAlertAction();
  v3 = (v2 - 8);
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = (v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_storefrontLocalizer + 24));
  v11 = sub_20C138D34();
  v13 = v12;
  sub_20C132ED4();
  v14 = &v9[v3[8]];
  *v14 = v11;
  v14[1] = v13;
  v9[v3[7]] = 2;
  v15 = &v9[v3[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v16 = sub_20C138D34();
  v18 = v17;

  sub_20C132ED4();
  v19 = &v6[v3[8]];
  *v19 = v16;
  v19[1] = v18;
  v6[v3[7]] = 1;
  v20 = &v6[v3[9]];
  *v20 = sub_20BB8FF94;
  v20[1] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240);
  v21 = *(v4 + 72);
  v22 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20C14F320;
  v24 = v23 + v22;
  sub_20B9A9B7C(v9, v24, type metadata accessor for PageAlertAction);
  sub_20B9A9B7C(v6, v24 + v21, type metadata accessor for PageAlertAction);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v25 = sub_20C138D34();
  v27 = v26;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    type metadata accessor for DefaultPageAlertPresenter();
    v30 = swift_allocObject();
    *(v30 + 24) = 0;
    swift_unknownObjectWeakInit();
    v31 = MEMORY[0x277D84F90];
    *(v30 + 32) = v23;
    *(v30 + 40) = v31;
    *(v30 + 48) = v25;
    *(v30 + 56) = v27;
    *(v30 + 64) = 0;
    *(v30 + 72) = 0;
    *(v30 + 80) = 1;
    *(v30 + 88) = 0;
    v32 = v29 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v33 = *(v32 + 8);
      ObjectType = swift_getObjectType();
      (*(v33 + 224))(v29, v30, &off_2822DD358, ObjectType, v33);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }

  sub_20B9A9AE4(v6, type metadata accessor for PageAlertAction);
  return sub_20B9A9AE4(v9, type metadata accessor for PageAlertAction);
}

uint64_t sub_20BB8B3D8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_20C138204();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_playlist;
  swift_beginAccess();
  sub_20B52F9E8(a2 + v13, v8, &qword_27C7643F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20B520158(v8, &qword_27C7643F0);
  }

  (*(v10 + 32))(v12, v8, v9);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_bookmarkClient), *(a2 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_bookmarkClient + 24));
  sub_20C13A194();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = sub_20C137CB4();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20BB8FF9C;
  *(v17 + 24) = v15;

  v16(sub_20B5DF6DC, v17);

  (*(v18 + 8))(v5, v3);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_20BB8B708()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = *(v3 + 8);
        ObjectType = swift_getObjectType();
        (*(v4 + 248))(v2, ObjectType, v4);
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20BB8B7D8()
{
  v1 = v0;
  v2 = sub_20C138204();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_storefrontLocalizer + 24));
  v34 = sub_20C138D34();
  v10 = v9;
  v11 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_playlist;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v11, v8, &qword_27C7643F0);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_20B520158(v8, &qword_27C7643F0);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_20B520158(v8, &qword_27C7643F0);
    v12 = sub_20C1381D4();
    v13 = v14;
    (*(v3 + 8))(v5, v2);
  }

  v15 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = objc_opt_self();

  v18 = [v17 bundleForClass_];
  v19 = sub_20C132964();
  v21 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772010);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_20C1517D0;
  *(v22 + 56) = &type metadata for TrimLeadingWhitespaceFilter;
  *(v22 + 64) = &off_2822B8960;
  *(v22 + 96) = &type metadata for MaxLengthFilter;
  *(v22 + 104) = &off_2822B8BF0;
  *(v22 + 72) = 40;
  *(v22 + 136) = &type metadata for MaxBytesFilter;
  *(v22 + 144) = &off_2822E2930;
  *(v22 + 112) = 99;
  type metadata accessor for SanitizingTextInputPresenter();
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  swift_unknownObjectWeakInit();
  *&v36 = v34;
  *(&v36 + 1) = v10;
  v37 = 0uLL;
  *&v38 = v12;
  *(&v38 + 1) = v13;
  *&v39 = v19;
  *(&v39 + 1) = v21;
  *&v40 = sub_20BB8FF8C;
  *(&v40 + 1) = v15;
  v41[0] = v34;
  v41[1] = v10;
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v12;
  v41[5] = v13;
  v41[6] = v19;
  v41[7] = v21;
  v41[8] = sub_20BB8FF8C;
  v41[9] = v15;
  sub_20B9A9A2C(&v36, &v35);
  sub_20B9A9A88(v41);
  v24 = v39;
  *(v23 + 64) = v38;
  *(v23 + 80) = v24;
  *(v23 + 96) = v40;
  v25 = v37;
  *(v23 + 32) = v36;
  *(v23 + 48) = v25;
  *(v23 + 120) = 0;
  *(v23 + 128) = 0;
  *(v23 + 112) = v22;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v27 = Strong;
  v28 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v29 = *(v28 + 8);
    ObjectType = swift_getObjectType();
    v31 = *(v29 + 240);

    v31(v27, v23, &off_2822EEEA0, ObjectType, v29);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20BB8BCA8(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BB8BD1C(a1, a2);
  }

  return result;
}

uint64_t sub_20BB8BD1C(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v44 = a1;
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v8 - 8);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  v13 = sub_20C138204();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v16);
  v49 = &v38 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  v21 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_playlist;
  swift_beginAccess();
  v43 = v2;
  sub_20B52F9E8(v2 + v21, v12, &qword_27C7643F0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_20B520158(v12, &qword_27C7643F0);
  }

  v23 = v14;
  v40 = *(v14 + 32);
  v41 = v14 + 32;
  v38 = v20;
  v39 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40(v20, v12, v13);
  v24 = sub_20C132E94();
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  v25 = v49;
  sub_20C1381F4();
  sub_20B520158(v7, &qword_27C762AC0);
  v45 = *(v14 + 16);
  v26 = v42;
  v27 = v43;
  v45(v42, v25, v13);
  (*(v23 + 56))(v26, 0, 1, v13);
  swift_beginAccess();
  sub_20B5DF2D4(v26, v27 + v21, &qword_27C7643F0);
  swift_endAccess();
  sub_20BB89E38();
  __swift_project_boxed_opaque_existential_1((v27 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_bookmarkClient), *(v27 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_bookmarkClient + 24));
  v28 = v46;
  sub_20C13A1A4();
  v29 = swift_allocObject();
  swift_weakInit();
  v31 = v38;
  v30 = v39;
  v45(v39, v38, v13);
  v32 = (*(v23 + 80) + 24) & ~*(v23 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v29;
  v40((v33 + v32), v30, v13);
  v34 = v48;
  v35 = sub_20C137CB4();
  v36 = swift_allocObject();
  *(v36 + 16) = sub_20BB8FF18;
  *(v36 + 24) = v33;

  v35(sub_20B5DF6DC, v36);

  (*(v47 + 8))(v28, v34);
  v37 = *(v23 + 8);
  v37(v49, v13);
  return (v37)(v31, v13);
}

void sub_20BB8C2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-v6];
  if (*(a1 + 8) == 1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = sub_20C138204();
      v11 = *(v10 - 8);
      (*(v11 + 16))(v7, a3, v10);
      (*(v11 + 56))(v7, 0, 1, v10);
      v12 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_playlist;
      swift_beginAccess();
      sub_20B5DF2D4(v7, v9 + v12, &qword_27C7643F0);
      swift_endAccess();
      sub_20BB89E38();
    }
  }
}

uint64_t sub_20BB8C434()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_20C1352E4();
  v19 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C134F24();
  v8 = *(v20 - 8);
  v9 = MEMORY[0x28223BE20](v20);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v0;
  v21 = v0;
  (*(v8 + 104))(v11, *MEMORY[0x277D51390], v9);
  (*(v5 + 104))(v7, *MEMORY[0x277D51768], v4);
  v18 = sub_20C133394();
  v12 = *MEMORY[0x277D523D8];
  v13 = sub_20C135ED4();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v3, v12, v13);
  (*(v14 + 56))(v3, 0, 1, v13);
  type metadata accessor for TVPlaylistHeaderShelf();
  sub_20BB8FEC0();
  sub_20C138D94();

  sub_20B520158(v3, &unk_27C7621D0);
  (*(v5 + 8))(v7, v19);
  return (*(v8 + 8))(v11, v20);
}

uint64_t sub_20BB8C744()
{
  v1 = v0;
  v61 = type metadata accessor for ShelfMetricAction();
  MEMORY[0x28223BE20](v61);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C134DC4();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v56 - v8;
  v10 = sub_20C138204();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_playlist;
  swift_beginAccess();
  v62 = v1;
  sub_20B52F9E8(v1 + v14, v9, &qword_27C7643F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_20B520158(v9, &qword_27C7643F0);
  }

  (*(v11 + 32))(v13, v9, v10);
  v16 = sub_20C1381E4();
  v17 = *(v16 + 16);
  v59 = v10;
  v60 = v6;
  v58 = v11;
  if (v17)
  {
    v57 = v13;
    v18 = sub_20BEDE85C(v17, 0);
    v19 = *(sub_20C133B74() - 8);
    v20 = sub_20BEE200C(&v65, &v18[(*(v19 + 80) + 32) & ~*(v19 + 80)], v17, v16);

    sub_20B583EDC();
    if (v20 != v17)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v10 = v59;
    v6 = v60;
    v13 = v57;
    v11 = v58;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v65 = v18;
  sub_20BB8DF8C(&v65);

  v22 = v65;
  MEMORY[0x28223BE20](v21);
  *(&v56 - 2) = v13;
  v23 = sub_20B5E7124(sub_20BB8FEA0, (&v56 - 4), v22);

  if (*(v23 + 16))
  {
    (*(v63 + 16))(v6, v23 + ((*(v63 + 80) + 32) & ~*(v63 + 80)), v64);
    v24 = sub_20C136664();
    (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
    v25 = v61;
    v26 = *(v61 + 20);
    v27 = *MEMORY[0x277D513F8];
    v28 = sub_20C134F24();
    (*(*(v28 - 8) + 104))(&v3[v26], v27, v28);
    v29 = v25[6];
    v30 = sub_20C132C14();
    (*(*(v30 - 8) + 56))(&v3[v29], 1, 1, v30);
    v31 = sub_20C134D74();
    v33 = v32;
    v34 = v25[8];
    v35 = *MEMORY[0x277D52408];
    v36 = sub_20C135ED4();
    v37 = *(v36 - 8);
    (*(v37 + 104))(&v3[v34], v35, v36);
    (*(v37 + 56))(&v3[v34], 0, 1, v36);
    v38 = v25[10];
    v39 = *MEMORY[0x277D51768];
    v40 = sub_20C1352E4();
    (*(*(v40 - 8) + 104))(&v3[v38], v39, v40);
    v41 = v25[11];
    v42 = sub_20C136E94();
    (*(*(v42 - 8) + 56))(&v3[v41], 1, 1, v42);
    v43 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    v44 = &v3[v25[7]];
    *v44 = v31;
    v44[1] = v33;
    v45 = &v3[v25[9]];
    *v45 = 0;
    *(v45 + 1) = 0;
    *&v3[v25[12]] = v43;
    v46 = v62;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_20BF9FDC0(v46, v3, Strong);
      swift_unknownObjectRelease();
    }

    sub_20B9A9AE4(v3, type metadata accessor for ShelfMetricAction);
    v48 = swift_unknownObjectWeakLoadStrong();
    if (v48)
    {
      v49 = v48;
      v50 = v48 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      v51 = swift_unknownObjectWeakLoadStrong();
      v53 = v59;
      v52 = v60;
      if (v51)
      {
        v54 = *(v50 + 8);
        ObjectType = swift_getObjectType();
        (*(v54 + 120))(v49, v23, ObjectType, v54);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {

      v53 = v59;
      v52 = v60;
    }

    (*(v63 + 8))(v52, v64);
    return (*(v58 + 8))(v13, v53);
  }

  else
  {

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_20BB8CE94()
{
  sub_20C133B24();
  sub_20C133B34();
  sub_20C133B64();
  sub_20C133B54();
  sub_20C1381A4();
  return sub_20C134D64();
}

uint64_t sub_20BB8CF54(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_20C139594();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_20C138E94();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A60);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = sub_20C13BB84();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BB8D134, 0, 0);
}

uint64_t sub_20BB8D134()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[4];
  sub_20C13B444();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v4);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_marketingItemProvider), *(v5 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_marketingItemProvider + 24));
  sub_20C1382F4();
  sub_20C138E74();

  v6 = swift_task_alloc();
  v0[17] = v6;
  *(v6 + 16) = "SeymourUI/TVPlaylistHeaderShelf.swift";
  *(v6 + 24) = 37;
  *(v6 + 32) = 2;
  *(v6 + 40) = 239;
  *(v6 + 48) = v3;
  v7 = swift_task_alloc();
  v0[18] = v7;
  v8 = sub_20B51C88C(0, &qword_27C768670);
  *v7 = v0;
  v7[1] = sub_20B9A5E90;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B8A95F0, v6, v8);
}

uint64_t sub_20BB8D310()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 32);
  v11[3] = v7;
  sub_20B520158(v11, &qword_27C762340);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_bookmarkClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_catalogClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_configurationClient);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_marketingItemProvider);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_mediaTagStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_remoteBrowsingSource);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_storefrontLocalizer);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_config, &qword_27C761800);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_serviceSubscription, &unk_27C762390);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_playlist, &qword_27C7643F0);

  v8 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_metricPage;
  v9 = sub_20C1333A4();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_marketingOffer, &unk_27C768660);
  return v0;
}

uint64_t sub_20BB8D594()
{
  sub_20BB8D310();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVPlaylistHeaderShelf()
{
  result = qword_27C76B5B0;
  if (!qword_27C76B5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BB8D640()
{
  sub_20C132EE4();
  if (v0 <= 0x3F)
  {
    sub_20BB8D8DC(319, &qword_281103BF0, MEMORY[0x277D50560]);
    if (v1 <= 0x3F)
    {
      sub_20BB8D8DC(319, &qword_27C762130, MEMORY[0x277D51C40]);
      if (v2 <= 0x3F)
      {
        sub_20BB8D8DC(319, &qword_27C76B5C0, MEMORY[0x277D53C88]);
        if (v3 <= 0x3F)
        {
          sub_20C1333A4();
          if (v4 <= 0x3F)
          {
            sub_20BB8D8DC(319, &qword_281103B50, MEMORY[0x277D540B0]);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_20BB8D8DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20BB8D930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660);
  v5 = swift_task_alloc();
  v4[6] = v5;
  v4[7] = sub_20C13CDA4();
  v4[8] = sub_20C13CD94();
  v6 = swift_task_alloc();
  v4[9] = v6;
  *v6 = v4;
  v6[1] = sub_20BB8DA2C;

  return sub_20BB8CF54(v5);
}

uint64_t sub_20BB8DA2C()
{
  *(*v1 + 80) = v0;

  v3 = sub_20C13CD24();
  if (v0)
  {
    v4 = sub_20BB8DC84;
  }

  else
  {
    v4 = sub_20BB8DB88;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_20BB8DB88()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = sub_20C138894();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_marketingOffer;
  swift_beginAccess();
  sub_20B5DF2D4(v1, v2 + v4, &unk_27C768660);
  swift_endAccess();
  sub_20BB89E38();

  v5 = v0[1];

  return v5();
}

uint64_t sub_20BB8DC84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BB8DCF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BB8DD6C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row + 32);
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

uint64_t sub_20BB8DE28()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_20C13CDA4();

  v6 = sub_20C13CD94();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_20B614F94(0, 0, v4, &unk_20C170828, v7);
}

void sub_20BB8DF8C(void **a1)
{
  v2 = *(sub_20C133B74() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0DD0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BB8E034(v5);
  *a1 = v3;
}

void sub_20BB8E034(uint64_t *a1)
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
        sub_20C133B74();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C133B74() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20BB8E408(v8, v9, a1, v4);
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
    sub_20BB8E160(0, v2, 1, a1);
  }
}

void sub_20BB8E160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C133B74();
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
      v27 = sub_20C133B44();
      v28 = sub_20C133B44();
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

void sub_20BB8E408(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_20C133B74();
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
        sub_20BB8EDEC(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
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
      v130 = sub_20C133B44();
      v126 = sub_20C133B44();
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
        v38 = sub_20C133B44();
        v39 = sub_20C133B44();
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
        sub_20BB8EDEC(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
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
    (v133)(v137, v98, v9, v17);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = sub_20C133B44();
    v104 = sub_20C133B44();
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

void sub_20BB8EDEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = sub_20C133B74();
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
          v56 = sub_20C133B44();
          v45 = sub_20C133B44();
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
        v25 = sub_20C133B44();
        v26 = sub_20C133B44();
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
  sub_20B6A07CC(&v64, &v63, &v62);
}

uint64_t sub_20BB8F3A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v6 = v2 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_row;
  sub_20B5D8060(v26);
  v7 = v26[9];
  *(v6 + 128) = v26[8];
  *(v6 + 144) = v7;
  *(v6 + 160) = v27;
  v8 = v26[5];
  *(v6 + 64) = v26[4];
  *(v6 + 80) = v8;
  v9 = v26[7];
  *(v6 + 96) = v26[6];
  *(v6 + 112) = v9;
  v10 = v26[1];
  *v6 = v26[0];
  *(v6 + 16) = v10;
  v11 = v26[3];
  *(v6 + 32) = v26[2];
  *(v6 + 48) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_multiUserEligibilityObserver;
  sub_20C13B704();
  *(v2 + v12) = sub_20C13B6F4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_accountHasSupportedDevice) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_accountHasWatch) = 0;
  v13 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_config;
  v14 = sub_20C134104();
  (*(*(v14 - 8) + 56))(v3 + v13, 1, 1, v14);
  *(v3 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_deviceCloudAccount) = 0;
  *(v3 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_deviceSubscriberAccount) = 0;
  *(v3 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_matchingDeviceSubscriberAccount) = 0;
  v15 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_serviceSubscription;
  v16 = sub_20C135734();
  (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_playlist;
  v18 = sub_20C138204();
  (*(*(v18 - 8) + 56))(v3 + v17, 1, 1, v18);
  *(v3 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_menuOptions) = &unk_282287468;
  v19 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_marketingOffer;
  v20 = sub_20C138894();
  (*(*(v20 - 8) + 56))(v3 + v19, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *(v3 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_bag) = *&v25[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v25, v3 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(v25, v3 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(v25, v3 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_configurationClient);
  *(v3 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v3 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_eventHub) = v25[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768650);
  sub_20C133AA4();
  sub_20B51C710(v25, v3 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_marketingItemProvider);
  type metadata accessor for QueueMediaTagBuilder();
  v21 = swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();

  *(v3 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_mediaTagBuilder) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v25, v3 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(v25, v3 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_remoteBrowsingSource);
  sub_20C133AA4();
  sub_20B51C710(v25, v3 + OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_storefrontLocalizer);
  v22 = OBJC_IVAR____TtC9SeymourUI21TVPlaylistHeaderShelf_metricPage;
  v23 = sub_20C1333A4();
  (*(*(v23 - 8) + 32))(v3 + v22, a2, v23);
  return v3;
}

void sub_20BB8F8AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v39 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v39 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ButtonAction(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B9A9B7C(a1, v19, type metadata accessor for ShelfItemAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 10)
  {
    v23 = *v19;
    v24 = *(v19 + 1);
    v25 = *(v19 + 2);
    v26 = v19[24];
    v27 = (v26 >> 5) & 3;
    if (v27)
    {
      if (v27 == 3)
      {
        v28 = v26 == 96 && v23 == 1;
        if (v28 && (v25 | v24) == 0)
        {
          sub_20BB8C434();
          return;
        }
      }

      goto LABEL_20;
    }

    if ((v26 & 0x80) == 0)
    {
LABEL_20:
      sub_20B8403A8(v23, v24, v25, v26);
      return;
    }

    if ((v26 & 0x7F) != 0)
    {
      if ((v26 & 0x7F) != 1)
      {
        goto LABEL_20;
      }

      v35 = v19[24];
      v36 = v25;
      v37 = v24;
      v38 = v23;
      sub_20BB8B7D8();
    }

    else
    {
      v35 = v19[24];
      v36 = v25;
      v37 = v24;
      v38 = v23;
      sub_20BB8B000();
    }

    sub_20B8403A8(v38, v37, v36, v35);
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_20B5F6860(v19, v16);
    sub_20B9A9B7C(v16 + *(v14 + 28), v13, type metadata accessor for ButtonAction.ActionType);
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_20BB8C744();
      v21 = type metadata accessor for ButtonAction;
      v22 = v16;
    }

    else
    {
      v30 = sub_20C135ED4();
      (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
      v31 = sub_20C1352E4();
      (*(*(v31 - 8) + 56))(v4, 1, 1, v31);
      sub_20B5A7A34(v16, 0, 0, v7, 0, 0, v4, v10);
      sub_20B520158(v4, &unk_27C765D50);
      sub_20B520158(v7, &unk_27C7621D0);
      v32 = v41;
      v33 = sub_20C137CB4();
      v34 = swift_allocObject();
      *(v34 + 16) = 0;
      *(v34 + 24) = 0;
      v33(sub_20B52347C, v34);

      (*(v40 + 8))(v10, v32);
      sub_20B9A9AE4(v16, type metadata accessor for ButtonAction);
      v21 = type metadata accessor for ButtonAction.ActionType;
      v22 = v13;
    }
  }

  else
  {
    v21 = type metadata accessor for ShelfItemAction;
    v22 = v19;
  }

  sub_20B9A9AE4(v22, v21);
}

uint64_t sub_20BB8FDEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BB8D930(a1, v4, v5, v6);
}

unint64_t sub_20BB8FEC0()
{
  result = qword_27C76B5C8;
  if (!qword_27C76B5C8)
  {
    type metadata accessor for TVPlaylistHeaderShelf();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B5C8);
  }

  return result;
}

void sub_20BB8FF18(uint64_t a1)
{
  v3 = *(sub_20C138204() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_20BB8C2A0(a1, v4, v5);
}

uint64_t sub_20BB90010(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

char *sub_20BB900D8(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC9SeymourUI17PlaybackTrackView_trackLayoutGuide;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  *&v2[OBJC_IVAR____TtC9SeymourUI17PlaybackTrackView_layout] = 0x401C000000000000;
  v32.receiver = v2;
  v32.super_class = type metadata accessor for PlaybackTrackView();
  v6 = objc_msgSendSuper2(&v32, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 setBackgroundColor_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v6 layer];
  [v7 setMaskedCorners_];

  v8 = OBJC_IVAR____TtC9SeymourUI17PlaybackTrackView_trackLayoutGuide;
  [v6 addLayoutGuide_];
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20C150AE0;
  v11 = [v6 heightAnchor];
  v12 = [v11 constraintEqualToConstant_];

  *(v10 + 32) = v12;
  v13 = [*&v6[v8] leadingAnchor];
  v14 = [v6 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v10 + 40) = v15;
  v16 = [*&v6[v8] trailingAnchor];
  v17 = [v6 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v10 + 48) = v18;
  v19 = [*&v6[v8] topAnchor];
  v20 = [v6 topAnchor];
  v21 = [v19 constraintGreaterThanOrEqualToAnchor_];

  *(v10 + 56) = v21;
  v22 = [*&v6[v8] bottomAnchor];
  v23 = [v6 bottomAnchor];
  v24 = [v22 constraintLessThanOrEqualToAnchor_];

  *(v10 + 64) = v24;
  v25 = [*&v6[v8] centerYAnchor];
  v26 = [v6 centerYAnchor];

  v27 = [v25 constraintEqualToAnchor_];
  *(v10 + 72) = v27;
  v28 = [*&v6[v8] heightAnchor];
  v29 = [v28 constraintEqualToConstant_];

  *(v10 + 80) = v29;
  sub_20B5E29D0();
  v30 = sub_20C13CC54();

  [v9 activateConstraints_];

  return v6;
}

id sub_20BB9063C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaybackTrackView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_20BB906B4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v11 = sub_20C1380F4();
  v12 = sub_20BA6D744(v11);
  [v10 setFont_];

  v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  [v10 setTextColor_];

  v14 = v10;
  LODWORD(v15) = 1148846080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v14 setContentCompressionResistancePriority:1 forAxis:v16];

  *&v4[v9] = v14;
  v17 = OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_unitLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v19 = sub_20C1380F4();
  v20 = sub_20BA6BBA4(v19);
  [v18 setFont_];

  v21 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  [v18 setTextColor_];

  v22 = v18;
  LODWORD(v23) = 1148846080;
  [v22 setContentCompressionResistancePriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [v22 setContentCompressionResistancePriority:1 forAxis:v24];

  *&v4[v17] = v22;
  v29.receiver = v4;
  v29.super_class = type metadata accessor for SessionSingleMetricView();
  v25 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a1, a2, a3, a4);
  v26 = *&v25[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel];
  v27 = v25;
  [v27 addSubview_];
  [v27 addSubview_];

  return v27;
}

id sub_20BB90920()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for SessionSingleMetricView();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel];
  [v2 sizeToFit];
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_unitLabel];
  [v3 sizeToFit];
  v4 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  if (v4)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  [v5 frame];
  [v5 setFrame_];
  [v5 frame];
  v7 = CGRectGetMaxX(v10) + 2.0;
  [v6 frame];
  [v6 setFrame_];
  [v2 smu_firstLineCapFrameOriginY];
  return [v3 setSmu_firstLineCapFrameOriginY_];
}

id SessionSingleMetricView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SessionSingleMetricView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionSingleMetricView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20BB90C70()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel];
  v2 = sub_20C13C914();
  [v1 setText_];

  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_unitLabel];
  v4 = sub_20C13C914();
  [v3 setText_];

  [v0 invalidateIntrinsicContentSize];

  return [v0 setNeedsLayout];
}

void _s9SeymourUI23SessionSingleMetricViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_valueLabel;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = sub_20C1380F4();
  v4 = sub_20BA6D744(v3);
  [v2 setFont_];

  v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  [v2 setTextColor_];

  v6 = v2;
  LODWORD(v7) = 1148846080;
  [v6 setContentCompressionResistancePriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v6 setContentCompressionResistancePriority:1 forAxis:v8];

  *(v0 + v1) = v6;
  v9 = OBJC_IVAR____TtC9SeymourUI23SessionSingleMetricView_unitLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v11 = sub_20C1380F4();
  v12 = sub_20BA6BBA4(v11);
  [v10 setFont_];

  v13 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.921568627 alpha:1.0];
  [v10 setTextColor_];

  v14 = v10;
  LODWORD(v15) = 1148846080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v14 setContentCompressionResistancePriority:1 forAxis:v16];

  *(v0 + v9) = v14;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BB90F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a4;
  v8 = type metadata accessor for PageMetricAction();
  MEMORY[0x28223BE20](v8);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B51CC64(a3 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_locationStore, v24);
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  v11 = *(type metadata accessor for ShelfMetricAction() + 28);
  v23 = a2;
  v12 = (a2 + v11);
  if (v12[1])
  {
    v13 = *v12;
    v14 = v12[1];
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = *(a5 + 40);

  v15(v25, v22, a5);
  v16 = sub_20B9297B4(v25, v13, v14);
  sub_20B520158(v25, &qword_27C762340);

  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_20BB91124(v23, v10 + *(v8 + 20));
  *v10 = v16;
  v17 = a3 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 160))(a3, v10, ObjectType, v18);
    swift_unknownObjectRelease();
  }

  return sub_20BB916C8(v10, type metadata accessor for PageMetricAction);
}

uint64_t sub_20BB91124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfMetricAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BB91188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a5;
  v50 = a6;
  v51 = a4;
  v48 = a1;
  v8 = sub_20C135ED4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v46 - v13;
  v15 = type metadata accessor for ShelfMetricAction();
  v16 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  sub_20BB91658(a3, v14);
  v22 = (*(v16 + 48))(v14, 1, v15);
  v47 = a2;
  if (v22 == 1)
  {
    sub_20B520158(v14, &unk_27C7622D0);
    CatalogLockup.metricDestination.getter(v11);
    v23 = sub_20C136664();
    (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
    v24 = v15[5];
    v25 = *MEMORY[0x277D51488];
    v26 = sub_20C134F24();
    (*(*(v26 - 8) + 104))(&v18[v24], v25, v26);
    v27 = v15[6];
    v28 = sub_20C132C14();
    (*(*(v28 - 8) + 56))(&v18[v27], 1, 1, v28);
    v29 = sub_20C133E44();
    v31 = v30;
    v32 = v15[8];
    (*(v9 + 16))(&v18[v32], v11, v8);
    (*(v9 + 56))(&v18[v32], 0, 1, v8);
    v33 = v15[10];
    v34 = *MEMORY[0x277D51778];
    v35 = sub_20C1352E4();
    (*(*(v35 - 8) + 104))(&v18[v33], v34, v35);
    v36 = v15[11];
    v37 = sub_20C136E94();
    (*(*(v37 - 8) + 56))(&v18[v36], 1, 1, v37);
    v38 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    v39 = &v18[v15[7]];
    *v39 = v29;
    v39[1] = v31;
    v40 = &v18[v15[9]];
    *v40 = 0;
    *(v40 + 1) = 0;
    *&v18[v15[12]] = v38;
    v41 = v51;
    sub_20BB90F28(v48, v18, v51, v49, v50);
    sub_20BB916C8(v18, type metadata accessor for ShelfMetricAction);
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_20BB91728(v14, v21);
    v41 = v51;
    sub_20BB90F28(v48, v21, v51, v49, v50);
    sub_20BB916C8(v21, type metadata accessor for ShelfMetricAction);
  }

  v42 = v41 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v44 = *(v42 + 8);
    ObjectType = swift_getObjectType();
    (*(v44 + 40))(v41, v47, ObjectType, v44);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BB91658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BB916C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BB91728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfMetricAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BB9178C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 224))(a2, a1, a4, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BB91850@<X0>(void *a1@<X8>)
{
  result = sub_20C134194();
  *a1 = v3;
  return result;
}

uint64_t sub_20BB9187C()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 32);
  v11[3] = v7;
  sub_20B520158(v11, &qword_27C762340);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_configurationClient);
  v8 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_metricPage;
  v9 = sub_20C1333A4();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_storefrontLocalizer);

  return v0;
}

uint64_t sub_20BB919D0()
{
  sub_20BB9187C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanDurationPickerShelf()
{
  result = qword_27C76B618;
  if (!qword_27C76B618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BB91A7C()
{
  result = sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    result = sub_20C1333A4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_20BB91B9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_activationState) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_activationState) = 1;
    sub_20C13CDC4();
    v4 = sub_20C13CDF4();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v0;

    sub_20B614F94(0, 0, v3, &unk_20C170A40, v5);
  }
}

uint64_t sub_20BB91CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_20C134104();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BB91DEC, 0, 0);
}

uint64_t sub_20BB91DEC()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_configurationClient), *(v0[3] + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_configurationClient + 24));
  sub_20C1398E4();
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = "SeymourUI/WorkoutPlanDurationPickerShelf.swift";
  *(v2 + 24) = 46;
  *(v2 + 32) = 2;
  *(v2 + 40) = 61;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_20BB91F2C;
  v4 = v0[9];
  v5 = v0[7];

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B526754, v2, v5);
}

uint64_t sub_20BB91F2C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_20BB921B4;
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_20BB9207C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BB9207C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v0[2] = sub_20C134084();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765E98);
  sub_20B7F7FB4();
  v4 = sub_20C13CBF4();

  sub_20B5FAD68(v4);

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_20BB921B4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BB92240@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BB922B8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 32);
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

uint64_t sub_20BB923A8@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v60 = a1;
  v59 = sub_20C134944();
  v51 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_20C1341A4();
  v6 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v11 - 8);
  v53 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v52 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D0);
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D8);
  MEMORY[0x28223BE20](v18);
  v50 = &v48 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C8);
  MEMORY[0x28223BE20](v20);
  v22 = (&v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v48 - v25;
  if (a2 < 0)
  {
    return (*(v6 + 56))(a3, 1, 1, v55, v24);
  }

  v57 = v10;
  v48 = v15;
  v54 = a3;
  v27 = *(v56 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_optionCoordinator);
  v28 = *(*v27 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v27 + v28, v26, &qword_27C7627C8);
  sub_20B5DF134(v26, v22, &qword_27C7627C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v30 = *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E0) + 48));
      v44 = sub_20C1365F4();
      (*(*(v44 - 8) + 8))(v22, v44);
      a3 = v54;
      if (!v30)
      {
        return (*(v6 + 56))(a3, 1, 1, v55, v24);
      }
    }

    else
    {
      v30 = *v22;
      a3 = v54;
      if (!*v22)
      {
        return (*(v6 + 56))(a3, 1, 1, v55, v24);
      }
    }

LABEL_8:
    result = sub_20BB93298();
    if (result)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v31 = v50;
    sub_20B5DF134(v22, v50, &qword_27C7627D8);
    v30 = *(v31 + *(v18 + 36));

    sub_20B520158(v31, &qword_27C7627D8);
    a3 = v54;
    if (!v30)
    {
      return (*(v6 + 56))(a3, 1, 1, v55, v24);
    }

    goto LABEL_8;
  }

  sub_20B5DF134(v22, v17, &qword_27C7627D0);
  v30 = *&v17[*(v48 + 36)];

  sub_20B520158(v17, &qword_27C7627D0);
  a3 = v54;
  result = sub_20BB93298();
  if (!result)
  {
LABEL_18:

    return (*(v6 + 56))(a3, 1, 1, v55, v24);
  }

LABEL_9:
  v50 = result;
  v33 = *(v30 + 16);
  v34 = v55;
  if (v33)
  {
    v35 = 0;
    v56 = v6 + 16;
    v36 = (v51 + 8);
    v37 = (v6 + 8);
    while (v35 < *(v30 + 16))
    {
      v38 = v6;
      v39 = v57;
      (*(v6 + 16))(v57, v30 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v35, v34);
      sub_20C134194();
      v40 = v58;
      sub_20C134924();
      v41 = sub_20C134934();
      (*v36)(v40, v59);
      if (v41 == v60)
      {

        v6 = v38;
        v43 = v52;
        (*(v38 + 32))(v52, v39, v34);
        v42 = 0;
        goto LABEL_21;
      }

      ++v35;
      result = (*v37)(v39, v34);
      v6 = v38;
      if (v33 == v35)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    v42 = 1;
    v43 = v52;
LABEL_21:
    v45 = *(v6 + 56);
    v45(v43, v42, 1, v34);
    v46 = v53;
    sub_20B52F9E8(v43, v53, &qword_27C7627B8);
    if ((*(v6 + 48))(v46, 1, v34) == 1)
    {
      sub_20B520158(v43, &qword_27C7627B8);

      sub_20B520158(v46, &qword_27C7627B8);
      return (v45)(v54, 1, 1, v34);
    }

    else
    {
      v47 = v49;
      (*(v6 + 32))(v49, v46, v34);
      sub_20C133994();

      (*(v6 + 8))(v47, v34);
      return sub_20B520158(v43, &qword_27C7627B8);
    }
  }

  return result;
}

uint64_t sub_20BB92AF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_20C1352E4();
  v16 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C134F24();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v0;
  (*(v9 + 104))(v12, *MEMORY[0x277D51450], v8, v10);
  (*(v5 + 104))(v7, *MEMORY[0x277D51768], v4);
  sub_20C134184();
  v13 = sub_20C135ED4();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  type metadata accessor for WorkoutPlanDurationPickerShelf();
  sub_20BB93D80();
  sub_20C138D94();

  sub_20B520158(v3, &unk_27C7621D0);
  (*(v5 + 8))(v7, v16);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_20BB92DD0(uint64_t a1)
{
  v3 = sub_20C13C554();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_20C132964();
  v11 = v10;

  v34 = 0uLL;
  LOBYTE(v35) = 1;
  *(&v35 + 1) = 0;
  *&v36 = 0;
  WORD4(v36) = 128;
  v37 = 0uLL;
  v38 = xmmword_20C1565F0;
  *&v39 = v9;
  *(&v39 + 1) = v11;
  LOBYTE(v40) = 0;
  *(&v40 + 1) = a1;
  v41 = MEMORY[0x277D84F90];
  *&v42 = 0;
  *(&v42 + 1) = v9;
  *v43 = v11;
  *&v43[8] = xmmword_20C150190;
  nullsub_1(&v34);
  v12 = v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row;
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 144);
  v44[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 128);
  v44[9] = v13;
  v45 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 160);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 80);
  v44[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 64);
  v44[5] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 112);
  v44[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 96);
  v44[7] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 16);
  v44[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row);
  v44[1] = v16;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 48);
  v44[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row + 32);
  v44[3] = v17;
  v18 = *v43;
  *(v12 + 128) = v42;
  *(v12 + 144) = v18;
  *(v12 + 160) = *&v43[16];
  v19 = v39;
  *(v12 + 64) = v38;
  *(v12 + 80) = v19;
  v20 = v41;
  *(v12 + 96) = v40;
  *(v12 + 112) = v20;
  v21 = v35;
  *v12 = v34;
  *(v12 + 16) = v21;
  v22 = v37;
  *(v12 + 32) = v36;
  *(v12 + 48) = v22;

  sub_20B520158(v44, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v25 = sub_20B61DD60(v1, result);
      if (v26)
      {
        v28 = v25;
        v29 = v26;
        v30 = v27;
        v31 = v1;
        sub_20B5E2E18();
        *v6 = sub_20C13D374();
        (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
        v32 = sub_20C13C584();
        result = (*(v4 + 8))(v6, v3);
        if ((v32 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B6214A8(v28, v29, v30, v31, 0, v24);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BB93138()
{
  v0 = sub_20C134944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C134194();
  sub_20C134924();
  v4 = sub_20C134934();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_20BB93298()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v27 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = *(*v0 + 104);
  swift_beginAccess();
  sub_20B52F9E8(v0 + v16, v15, &qword_27C7627C8);
  v17 = *(v0 + *(*v0 + 112));
  sub_20B52F9E8(v15, v12, &qword_27C7627C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20B5DF134(v12, v9, &qword_27C7627D8);
      v20 = sub_20BB936A8();
      sub_20B520158(v9, &qword_27C7627D8);
      v21 = &qword_27C7627C8;
      v22 = v15;
    }

    else
    {
      sub_20B5DF134(v12, v6, &qword_27C7627D0);
      v24 = sub_20B6011E0(v17, v3);
      v25 = *v3;
      MEMORY[0x28223BE20](v24);
      *(&v27 - 2) = v3;

      sub_20B5F8524(sub_20BB93D60, (&v27 - 4), v25);
      v20 = v26;
      sub_20B520158(v6, &qword_27C7627D0);
      sub_20B520158(v15, &qword_27C7627C8);
      v21 = &qword_27C7627C0;
      v22 = v3;
    }

    sub_20B520158(v22, v21);
    return v20;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_20B520158(v15, &qword_27C7627C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E0);

      v23 = sub_20C1365F4();
      (*(*(v23 - 8) + 8))(v12, v23);
    }

    else
    {
      sub_20B520158(v15, &qword_27C7627C8);
      sub_20B520158(v12, &qword_27C7627C8);
    }

    return 0;
  }
}

uint64_t sub_20BB936A8()
{
  v1 = sub_20C1341A4();
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x28223BE20](v1);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627D8);
  v7 = *(v0 + *(result + 36));
  if (!v7)
  {
    return 0;
  }

  v8 = *(v0 + *(result + 40));
  if (!v8)
  {
    return 0;
  }

  v35 = *(v7 + 16);
  if (v35)
  {
    v9 = 0;
    v10 = v8 + 56;
    v29 = (v36 + 32);
    v32 = (v36 + 8);
    v33 = v36 + 16;
    v30 = MEMORY[0x277D84F90];
    v34 = v7;
    while (v9 < *(v7 + 16))
    {
      v11 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v12 = *(v36 + 72);
      (*(v36 + 16))(v5, v7 + v11 + v12 * v9, v37);
      v13 = sub_20C1362C4();
      v15 = v14;
      if (*(v8 + 16) && (v16 = v13, sub_20C13E164(), sub_20C13CA64(), v17 = sub_20C13E1B4(), v18 = -1 << *(v8 + 32), v19 = v17 & ~v18, ((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(v8 + 48) + 16 * v19);
          v22 = *v21 == v16 && v21[1] == v15;
          if (v22 || (sub_20C13DFF4() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        v23 = *v29;
        (*v29)(v31, v5, v37);
        v24 = v30;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v24;
        v38 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D57C(0, *(v24 + 16) + 1, 1);
          v26 = v38;
        }

        v28 = *(v26 + 16);
        v27 = *(v26 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_20BB5D57C(v27 > 1, v28 + 1, 1);
          v26 = v38;
        }

        *(v26 + 16) = v28 + 1;
        v30 = v26;
        result = v23((v26 + v11 + v28 * v12), v31, v37);
      }

      else
      {
LABEL_5:

        result = (*v32)(v5, v37);
      }

      ++v9;
      v7 = v34;
      if (v9 == v35)
      {
        return v30;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_20BB939F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v4 = v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_row;
  sub_20B5D8060(v17);
  v5 = v17[9];
  *(v4 + 128) = v17[8];
  *(v4 + 144) = v5;
  *(v4 + 160) = v18;
  v6 = v17[5];
  *(v4 + 64) = v17[4];
  *(v4 + 80) = v6;
  v7 = v17[7];
  *(v4 + 96) = v17[6];
  *(v4 + 112) = v7;
  v8 = v17[1];
  *v4 = v17[0];
  *(v4 + 16) = v8;
  v9 = v17[3];
  *(v4 + 32) = v17[2];
  *(v4 + 48) = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_optionCoordinator;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B628);
  v11 = swift_allocObject();
  v11[3] = 0;
  swift_unknownObjectWeakInit();
  *(v11 + *(*v11 + 104)) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627C8);
  swift_storeEnumTagMultiPayload();
  *(v11 + *(*v11 + 112)) = 1;
  *(v2 + v10) = v11;
  *(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_activationState) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf____lazy_storage___numberFormatter) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(v16, v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_configurationClient);
  v12 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_metricPage;
  v13 = sub_20C1333A4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v2 + v12, a2, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_eventHub) = v16[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  (*(v14 + 8))(a2, v13);
  sub_20B51C710(v16, v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_storefrontLocalizer);
  *(*(v2 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanDurationPickerShelf_optionCoordinator) + 24) = &off_2815F9428;
  swift_unknownObjectWeakAssign();
  return v2;
}

uint64_t sub_20BB93CAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BB91CC4(a1, v4, v5, v6);
}

unint64_t sub_20BB93D80()
{
  result = qword_27C76B630;
  if (!qword_27C76B630)
  {
    type metadata accessor for WorkoutPlanDurationPickerShelf();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76B630);
  }

  return result;
}

void *sub_20BB93DD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_floatingView);
  v2 = v1;
  return v1;
}

id sub_20BB93E08(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_tvArtworkView;
  v13 = [objc_allocWithZone(type metadata accessor for TVArtworkView()) initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v14 = *&qword_27C79ACA0;
  v15 = [v13 config];
  [v15 setCornerRadius_];

  *&v5[v12] = v13;
  v16 = &v5[OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_layout];
  v17 = *MEMORY[0x277CDA138];
  *v16 = xmmword_20C170AB0;
  *(v16 + 1) = xmmword_20C170AC0;
  *(v16 + 4) = 0x4010000000000000;
  *(v16 + 5) = v17;
  *(v16 + 6) = 0x4044000000000000;
  *(v16 + 7) = v14 + 5.0;
  *(v16 + 4) = xmmword_20C151BD0;
  *(v16 + 10) = 0x3FC999999999999ALL;
  v18 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_bottomTextStackView;
  v19 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v20 = v17;
  v21 = [v19 init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAlignment_];
  [v21 setAxis_];
  [v21 setSpacing_];
  *&v5[v18] = v21;
  v22 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_footnoteLabel;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  [v23 setAdjustsFontForContentSizeCategory_];
  v24 = objc_opt_self();
  v25 = [v24 preferredFontForTextStyle_];
  [v23 setFont_];

  v26 = objc_opt_self();
  v27 = [v26 labelColor];
  [v23 setTextColor_];

  [v23 setLineBreakMode_];
  [v23 setNumberOfLines_];
  *&v5[v22] = v23;
  v28 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_recencyIconView;
  v29 = objc_allocWithZone(type metadata accessor for RecencyIconView());
  v30 = sub_20B7219DC(1, 0, 0, 0.0, 0.0, 0.0, 0.0);
  [v30 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v28] = v30;
  v31 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_titleLabel;
  v32 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef:0.0 :{0.0, 0.0, 0.0}hysteresis];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  [v32 setAdjustsFontForContentSizeCategory_];
  LODWORD(v33) = 1148846080;
  [v32 setContentCompressionResistancePriority:1 forAxis:v33];

  v34 = [v24 preferredFontForTextStyle_];
  [v32 setFont_];

  v35 = [v26 labelColor];
  [v32 setTextColor_];

  *&v5[v31] = v32;
  v36 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_gradientLayer;
  *&v5[v36] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v37 = [objc_allocWithZone(MEMORY[0x277D75F68]) &selRef:0.0 :{0.0, a3, a4}hysteresis];
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  v38 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_floatingView;
  *&v5[OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_floatingView] = v37;
  [v37 setCornerRadius_];
  [*&v5[v38] setContinuousCornerEnabled_];
  [*&v5[v38] setRoundContentWhenDeselected_];
  [*&v5[v38] setFocusedSizeIncrease_];
  [*&v5[v38] setContentMotionRotation:0.0 translation:{0.0, *(v16 + 3), *(v16 + 4)}];
  v39 = *&v5[v38];
  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 configurationWithStyle_];
  [v41 setFocusAnimationConfiguration_];

  [*&v5[v38] setShadowVerticalOffset_];
  [*&v5[v38] setShadowOpacity:0 forUserInterfaceStyle:*(v16 + 10)];
  [*&v5[v38] setShadowOpacity:2 forUserInterfaceStyle:*(v16 + 10)];
  [*&v5[v38] setShadowOpacity:1 forUserInterfaceStyle:*(v16 + 10)];
  [*&v5[v38] setShadowRadius_];
  v148.receiver = v5;
  v148.super_class = type metadata accessor for TVEditorialCollectionBrickItemCell();
  v43 = objc_msgSendSuper2(&v148, &selRef__hysteresis, a1, a2, a3, a4);
  v44 = [v43 contentView];
  v45 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_floatingView;
  [v44 addSubview_];

  v46 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_tvArtworkView;
  v47 = [*(v43 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_tvArtworkView) config];
  v146 = (v43 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_layout);
  [v47 setScaleSizeIncrease_];

  v48 = (*(v43 + v46) + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_shelfArtworkIconSafeAreaInsets);
  *v48 = v14;
  v48[1] = v14;
  v48[2] = v14;
  v48[3] = v14;
  v143 = v45;
  result = [*(v43 + v45) contentView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v50 = result;
  v142 = v46;
  [result addSubview_];

  v51 = [v43 contentView];
  v141 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_titleLabel;
  [v51 addSubview_];

  v52 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_gradientLayer;
  v53 = *(v43 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_gradientLayer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_20C151490;
  sub_20B51C88C(0, &qword_27C765490);
  v55 = v53;
  *(v54 + 32) = sub_20C13D5D4();
  *(v54 + 40) = sub_20C13D5D4();
  v56 = sub_20C13CC54();

  [v55 setLocations_];

  [*(v43 + v52) setStartPoint_];
  [*(v43 + v52) setEndPoint_];
  v57 = *(v43 + v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_20C14F320;
  v59 = v57;
  v60 = [v26 blackColor];
  v61 = [v60 colorWithAlphaComponent_];

  v62 = [v61 CGColor];
  type metadata accessor for CGColor(0);
  v64 = v63;
  *(v58 + 56) = v63;
  *(v58 + 32) = v62;
  v65 = [v26 blackColor];
  v66 = [v65 colorWithAlphaComponent_];

  v67 = [v66 CGColor];
  *(v58 + 88) = v64;
  *(v58 + 64) = v67;
  v68 = sub_20C13CC54();

  [v59 setColors_];

  result = [*&v143[v43] contentView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v69 = result;
  v70 = [result layer];

  [v70 addSublayer_];
  v71 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_recencyIconView;
  v72 = *(v43 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_recencyIconView);
  v73 = *(v43 + v142);
  v74 = *&v72[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layoutView];
  *&v72[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layoutView] = v73;
  v75 = v72;
  v76 = v73;

  v77 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_bottomTextStackView;
  [*(v43 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_bottomTextStackView) addArrangedSubview_];
  [*(v43 + v77) addArrangedSubview_];
  result = [*&v143[v43] contentView];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v78 = result;
  v145 = v77;
  [result addSubview_];

  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_20C1697C0;
  v80 = [*&v143[v43] leadingAnchor];
  v81 = [v43 contentView];
  v82 = [v81 leadingAnchor];

  v83 = [v80 constraintEqualToAnchor_];
  *(v79 + 32) = v83;
  v84 = [*&v143[v43] trailingAnchor];
  v85 = [v43 contentView];
  v86 = [v85 trailingAnchor];

  v87 = [v84 constraintEqualToAnchor_];
  *(v79 + 40) = v87;
  v88 = [*&v143[v43] topAnchor];
  v89 = [v43 contentView];
  v90 = [v89 topAnchor];

  v91 = [v88 constraintEqualToAnchor_];
  *(v79 + 48) = v91;
  v92 = [*&v143[v43] bottomAnchor];
  v93 = [*(v43 + v142) bottomAnchor];
  v94 = [v92 constraintEqualToAnchor_];

  *(v79 + 56) = v94;
  v95 = [*&v143[v43] heightAnchor];
  v96 = [v95 constraintEqualToConstant_];

  *(v79 + 64) = v96;
  v97 = [*(v43 + v142) leadingAnchor];
  result = [*&v143[v43] contentView];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v98 = result;
  v99 = [result leadingAnchor];

  v100 = [v97 constraintEqualToAnchor_];
  *(v79 + 72) = v100;
  v101 = [*(v43 + v142) trailingAnchor];
  result = [*&v143[v43] contentView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v102 = result;
  v103 = [result trailingAnchor];

  v104 = [v101 constraintEqualToAnchor_];
  *(v79 + 80) = v104;
  v105 = [*(v43 + v142) topAnchor];
  result = [*&v143[v43] contentView];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v106 = result;
  v107 = [result topAnchor];

  v108 = [v105 constraintEqualToAnchor_];
  *(v79 + 88) = v108;
  v109 = [*(v43 + v142) bottomAnchor];
  result = [*&v143[v43] contentView];
  if (result)
  {
    v110 = result;
    v144 = objc_opt_self();
    v111 = [v110 bottomAnchor];

    v112 = [v109 constraintEqualToAnchor_];
    *(v79 + 96) = v112;
    v113 = [*(v43 + v142) heightAnchor];
    v114 = [v113 constraintEqualToConstant_];

    *(v79 + 104) = v114;
    v115 = [*(v43 + v141) leadingAnchor];
    v116 = [v43 contentView];
    v117 = [v116 leadingAnchor];

    v118 = [v115 constraintEqualToAnchor_];
    *(v79 + 112) = v118;
    v119 = [*(v43 + v141) trailingAnchor];
    v120 = [v43 contentView];
    v121 = [v120 trailingAnchor];

    v122 = [v119 constraintEqualToAnchor_];
    *(v79 + 120) = v122;
    v123 = [*(v43 + v141) topAnchor];
    v124 = [*(v43 + v142) bottomAnchor];
    v125 = [v123 constraintEqualToAnchor:v124 constant:v146[2]];

    *(v79 + 128) = v125;
    v126 = [*(v43 + v141) bottomAnchor];
    v127 = [v43 contentView];

    v128 = [v127 bottomAnchor];
    v129 = [v126 constraintEqualToAnchor_];

    type metadata accessor for UILayoutPriority(0);
    sub_20B5F7718(&qword_27C768270, type metadata accessor for UILayoutPriority);
    sub_20C13BBA4();
    LODWORD(v130) = v147;
    [v129 setPriority_];
    *(v79 + 136) = v129;
    v131 = [*&v145[v43] leftAnchor];
    v132 = [*(v43 + v142) leftAnchor];
    v133 = [v131 constraintEqualToAnchor:v132 constant:v146[7]];

    *(v79 + 144) = v133;
    v134 = [*&v145[v43] rightAnchor];
    v135 = [*(v43 + v142) rightAnchor];
    v136 = [v134 constraintLessThanOrEqualToAnchor:v135 constant:-v146[7]];

    *(v79 + 152) = v136;
    v137 = [*&v145[v43] &selRef_secondaryLabel + 5];
    v138 = [*(v43 + v142) &selRef_secondaryLabel + 5];
    v139 = [v137 constraintEqualToAnchor:v138 constant:-v146[7]];

    *(v79 + 160) = v139;
    sub_20B51C88C(0, &qword_281100500);
    v140 = sub_20C13CC54();

    [v144 activateConstraints_];

    return v43;
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_20BB95344(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v3 contentView];
    v9 = [v8 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v10 = sub_20C13CC74();

    v26[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F2F5430](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v7 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_20B6FFB30(&v29, v13);

        ++v12;
        if (v7 == i)
        {
          v14 = v26[0];
          v7 = &OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v30 = v14;
    sub_20B6FFB30(v26, *&v3[v7[286]]);

    v15 = sub_20B8E9218(v30);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, v26);
        v18 = *&v3[v6];
        v19 = v27;
        v20 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        (*(v20 + 16))(v18, a2 & 1, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(v26);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  [*&v3[v7[286]] setControlState:v5 animated:a2 & 1];
  v21 = (v5 & 8) >> 3;
  v22 = *&v3[OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_titleLabel];
  if ((v5 & 8) != 0)
  {
    v23 = 2;
  }

  else
  {
    v23 = 4;
  }

  [v22 setSmu:v21 marqueeEnabled:?];
  return [v22 setLineBreakMode_];
}

void sub_20BB955FC(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a1;
  v6 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v7 = &OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v8 = [v3 contentView];
    v9 = [v8 subviews];

    sub_20B51C88C(0, &qword_27C762910);
    v10 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v10 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F2F5430](v12, v10);
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v7 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_20B6FFB30(&v29, v13);

        ++v12;
        if (v7 == i)
        {
          v14 = aBlock[0];
          v7 = &OBJC_IVAR____TtC9SeymourUI25CatalogProgramAddAllShelf_row;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v30 = v14;
    sub_20B6FFB30(aBlock, *&v3[v7[286]]);

    v15 = sub_20B8E9218(v30);

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_20B51CC64(v17, aBlock);
        v18 = *&v3[v6];
        v19 = v26;
        v20 = v27;
        __swift_project_boxed_opaque_existential_1(aBlock, v26);
        (*(v20 + 3))(v18, a2, v19, v20);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v5 = a1;
  }

  [*&v3[v7[286]] setControlState:v5 withAnimationCoordinator:a2];
  if (a2)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v3;
    *(v21 + 24) = v5;
    v27 = sub_20BB97FF4;
    v28 = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    v26 = &block_descriptor_92;
    v22 = _Block_copy(aBlock);
    v23 = v3;

    [a2 addCoordinatedAnimations:v22 completion:0];
    _Block_release(v22);
  }
}

id sub_20BB95920(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_titleLabel);
  if ((a2 & 8) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if ((a2 & 8) != 0)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.7;
  }

  [*(a1 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_titleLabel) setSmu:(a2 & 8) >> 3 marqueeEnabled:?];
  [v3 setLineBreakMode_];
  v6 = *(a1 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_gradientLayer);
  *&v7 = v5;

  return [v6 setOpacity_];
}

void sub_20BB95A60()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_itemInfo, &qword_27C762550);

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_gradientLayer);
}

id sub_20BB95B34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVEditorialCollectionBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVEditorialCollectionBrickItemCell()
{
  result = qword_27C76B670;
  if (!qword_27C76B670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BB95CA0()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BB95D60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_20BB95DA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_20BB95E0C(uint64_t a1)
{
  v2 = sub_20C13C4C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_tvArtworkView);

    v9 = [v8 stackImage];
    if (v9)
    {
      (*(v3 + 104))(v5, *MEMORY[0x277D851C0], v2);

      sub_20BD519D8(v9, v5, sub_20BB97FEC, a1);

      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_20BB95F94(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_recencyIconView);

    [*&v4[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_imageView] setImage_];
    [v4 setNeedsLayout];
  }
}

uint64_t sub_20BB96034(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BB96080@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550);
}

uint64_t sub_20BB960E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5DF2D4(a1, v1 + v3, &qword_27C762550);
  return swift_endAccess();
}

uint64_t sub_20BB96188(uint64_t a1, void *a2, int a3)
{
  v35 = a3;
  v5 = sub_20C137C24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v12 - 8);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
  swift_beginAccess();
  (*(v6 + 16))(v16, a1, v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v18 = *(v9 + 56);
  v34 = a2;
  sub_20B52F9E8(a2 + v17, v11, &unk_27C766680);
  sub_20B52F9E8(v16, &v11[v18], &unk_27C766680);
  v19 = *(v6 + 48);
  if (v19(v11, 1, v5) != 1)
  {
    v21 = v36;
    sub_20B52F9E8(v11, v36, &unk_27C766680);
    if (v19(&v11[v18], 1, v5) != 1)
    {
      v22 = v33;
      (*(v6 + 32))(v33, &v11[v18], v5);
      sub_20B5F7718(&qword_27C7626D8, MEMORY[0x277D53A78]);
      v23 = sub_20C13C894();
      v24 = *(v6 + 8);
      v24(v22, v5);
      sub_20B520158(v16, &unk_27C766680);
      v24(v21, v5);
      sub_20B520158(v11, &unk_27C766680);
      v20 = v23 ^ 1;
      if ((v23 ^ 1) & 1) != 0 || (v35)
      {
        return v20 & 1;
      }

      goto LABEL_10;
    }

    sub_20B520158(v16, &unk_27C766680);
    (*(v6 + 8))(v21, v5);
LABEL_7:
    sub_20B520158(v11, &qword_27C7626D0);
    v20 = 1;
    return v20 & 1;
  }

  sub_20B520158(v16, &unk_27C766680);
  if (v19(&v11[v18], 1, v5) != 1)
  {
    goto LABEL_7;
  }

  sub_20B520158(v11, &unk_27C766680);
  if (v35)
  {
    v20 = 0;
    return v20 & 1;
  }

LABEL_10:
  v25 = v34;
  [v34 bounds];
  v26 = [v25 stackImage];
  if (v26)
  {
    v27 = v26;
    [v26 size];
  }

  sub_20C13D504();
  v30 = round(fabs(v29)) > 1.0;
  v20 = round(fabs(v28)) > 1.0 || v30;
  return v20 & 1;
}

id sub_20BB96674(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v217 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v176 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v201 = *(v202 - 8);
  v5 = *(v201 + 64);
  MEMORY[0x28223BE20](v202);
  v199 = &v176 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v200 = &v176 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v176 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v176 - v12;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v209 = *(v212 - 8);
  v14 = *(v209 + 64);
  MEMORY[0x28223BE20](v212);
  MEMORY[0x28223BE20](v15);
  v210 = &v176 - v16;
  v207 = sub_20C1391C4();
  v206 = *(v207 - 8);
  MEMORY[0x28223BE20](v207);
  v208 = &v176 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_20C138A64();
  v203 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v211 = &v176 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v19 - 8);
  v205 = &v176 - v20;
  v21 = sub_20C13C554();
  v218 = *(v21 - 8);
  v219 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = (&v176 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_20C137C24();
  v222 = *(v24 - 8);
  v223 = v24;
  MEMORY[0x28223BE20](v24);
  v213 = v25;
  v214 = &v176 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v224 = &v176 - v27;
  v28 = sub_20C136CD4();
  v215 = *(v28 - 8);
  v216 = v28;
  MEMORY[0x28223BE20](v28);
  v220 = &v176 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20C134E44();
  MEMORY[0x28223BE20](v30 - 8);
  v221 = &v176 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C134014();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v225 = &v176 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v36 == 33)
  {
    v62 = v226;
    v63 = *&v226[OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_titleLabel];
    v64 = sub_20C13C914();
    [v63 setText_];

    v65 = *(v62 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_tvArtworkView);
    if (qword_27C760828 == -1)
    {
LABEL_11:
      [v65 setBackgroundColor_];
      [*(v62 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_recencyIconView) setHidden_];
      [*(v62 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_footnoteLabel) setAttributedText_];

      return sub_20BA1DB6C();
    }

LABEL_30:
    v175 = v65;
    swift_once();
    v65 = v175;
    goto LABEL_11;
  }

  if (v36 == 32)
  {
    v186 = v13;
    v182 = v14;
    v183 = &v176 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v184 = v5;
    v185 = v10;
    v37 = v34;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
    v39 = swift_projectBox();
    v40 = v39 + *(v38 + 64);
    v41 = *v40;
    v42 = *(v40 + 8);
    v44 = *(v40 + 16);
    v43 = *(v40 + 24);
    v45 = *(v40 + 32);
    v46 = *(v40 + 40);
    v190 = v33;
    v47 = *(v33 + 16);
    v191 = v37;
    v47(v225, v39, v37);
    v48 = v226;
    v49 = *&v226[OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_titleLabel];
    v50 = v41;
    v189 = v42;
    v197 = v44;
    v195 = v43;

    v194 = v45;

    v193 = v50;
    [v49 setAttributedText_];
    if ((*&v48[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] & 8) != 0)
    {
      v51 = 2;
    }

    else
    {
      v51 = 4;
    }

    [v49 setSmu:(*&v48[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] & 8uLL) >> 3 marqueeEnabled:?];
    [v49 setLineBreakMode_];
    v52 = *&v48[OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_recencyIconView];
    sub_20C133E54();
    v54 = v53;
    if (v53)
    {
    }

    [v52 setHidden_];
    v55 = sub_20C133E54();
    v57 = v56;
    v58 = &v52[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_title];
    *v58 = v55;
    v58[1] = v56;

    v59 = *&v52[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_label];
    v60 = v220;
    v192 = v46;
    if (v57)
    {

      v61 = sub_20C13C914();
    }

    else
    {
      v61 = 0;
    }

    v78 = v197;
    [v59 setText_];

    [v52 invalidateIntrinsicContentSize];

    v79 = v226;
    [*&v226[OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_footnoteLabel] setAttributedText_];
    v80 = v221;
    sub_20C133F04();
    v81 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_retain_n();
    v188 = sub_20C138054();
    v217 = v82;
    sub_20C134E34();
    v83 = v224;
    sub_20C136CB4();
    v187 = sub_20C136CC4();
    v196 = v84;
    sub_20B51C88C(0, &qword_281100530);
    *v23 = sub_20C13D374();
    v86 = v218;
    v85 = v219;
    (*(v218 + 104))(v23, *MEMORY[0x277D85200], v219);
    v62 = sub_20C13C584();
    v65 = (*(v86 + 8))(v23, v85);
    if (v62)
    {
      v198 = v81;
      v87 = *&v79[OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_tvArtworkView];
      [v87 setContentMode_];
      if (sub_20BB96188(v83, v87, 0))
      {
        v88 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v89 = v222;
        v90 = v223;
        v91 = *(v222 + 16);
        v92 = v214;
        v180 = v222 + 16;
        v181 = v91;
        (v91)(v214, v83, v223);
        v93 = *(v89 + 80);
        v94 = (v93 + 24) & ~v93;
        v176 = v213 + 7;
        v95 = (v213 + 7 + v94) & 0xFFFFFFFFFFFFFFF8;
        v219 = v87;
        v96 = (v95 + 23) & 0xFFFFFFFFFFFFFFF8;
        v97 = (v96 + 23) & 0xFFFFFFFFFFFFFFF8;
        v218 = (v97 + 15) & 0xFFFFFFFFFFFFFFF8;
        v179 = v93;
        v98 = swift_allocObject();
        *(v98 + 16) = v88;
        v99 = *(v89 + 32);
        v178 = v89 + 32;
        v177 = v99;
        v99(v98 + v94, v92, v90);
        v100 = (v98 + v95);
        v101 = v196;
        *v100 = v187;
        v100[1] = v101;
        v102 = (v98 + v96);
        v103 = v217;
        *v102 = v188;
        v102[1] = v103;
        *(v98 + v97) = 2;
        v104 = v219;
        v105 = v98 + v218;
        *v105 = MEMORY[0x277D84F90];
        *(v105 + 8) = 0;
        v106 = (v98 + ((v97 + 31) & 0xFFFFFFFFFFFFFFF8));
        v107 = v198;
        *v106 = sub_20BB97D9C;
        v106[1] = v107;
        v108 = &v104[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        v109 = *&v104[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        *v108 = sub_20BB97DA4;
        v108[1] = v98;

        sub_20B583ECC(v109);

        [v104 bounds];
        if (v110 <= 0.0 || (v112 = v111, v111 <= 0.0))
        {

          v144 = v222;
          v140 = v223;
        }

        else
        {
          v113 = v110;
          v114 = v179;
          v218 = ~v179;
          [v104 setStackImage_];
          v115 = v205;
          v116 = v223;
          v117 = v224;
          v181(v205);
          (*(v222 + 56))(v115, 0, 1, v116);
          v118 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
          swift_beginAccess();
          sub_20B5DF2D4(v115, &v104[v118], &unk_27C766680);
          swift_endAccess();
          sub_20B51C88C(0, &qword_27C762070);
          sub_20C137BC4();
          v119 = sub_20C13D5A4();
          [v104 setBackgroundColor_];

          v120 = &v104[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize];
          *v120 = v113;
          v120[1] = v112;
          *(v120 + 16) = 0;
          v121 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v122 = v214;
          v123 = v116;
          v124 = v181;
          (v181)(v214, v117, v123);
          v125 = (v114 + 16) & v218;
          v126 = (v176 + v125) & 0xFFFFFFFFFFFFFFF8;
          v127 = (v126 + 15) & 0xFFFFFFFFFFFFFFF8;
          v128 = swift_allocObject();
          v129 = v128 + v125;
          v130 = v223;
          v177(v129, v122, v223);
          *(v128 + v126) = v121;
          v131 = (v128 + v127);
          *v131 = v113;
          v131[1] = v112;
          v219 = v128;
          v132 = (v128 + ((v127 + 23) & 0xFFFFFFFFFFFFFFF8));
          v133 = v122;
          *v132 = sub_20BB97D9C;
          v132[1] = v107;
          v134 = v130;
          v124(v122, v224, v130);
          (*(v206 + 104))(v208, *MEMORY[0x277D542A8], v207);

          v135 = v211;
          sub_20C138A54();
          v136 = v107;
          v137 = v186;
          sub_20B5F1EB0(v135, v186);
          v138 = v209;
          v139 = v212;
          if ((*(v209 + 48))(v137, 1, v212) == 1)
          {
            sub_20B520158(v137, &unk_27C766670);
            sub_20BA1DB6C();
            sub_20BB95E0C(v136);

            (*(v203 + 8))(v135, v204);
            v140 = v134;
            v60 = v220;
            v80 = v221;
            v142 = v215;
            v141 = v216;
            v83 = v224;
            v143 = v193;
            v78 = v197;
            v144 = v222;
LABEL_27:
            (*(v144 + 8))(v83, v140);
            (*(v142 + 8))(v60, v141);

            sub_20B62A2AC(v80);
            (*(v190 + 8))(v225, v191);
          }

          v208 = *(v138 + 32);
          (v208)(v210, v137, v139);
          v145 = swift_allocObject();
          swift_unknownObjectWeakInit();
          (v181)(v133, v224, v134);
          v146 = (v179 + 40) & v218;
          v147 = v146 + v213;
          v148 = (v146 + v213) & 0xFFFFFFFFFFFFFFF8;
          v149 = swift_allocObject();
          *(v149 + 2) = v145;
          v149[3] = v113;
          v149[4] = v112;
          v177(v149 + v146, v133, v134);
          *(v149 + v147) = 0;
          v150 = v149 + v148;
          v151 = v198;
          *(v150 + 1) = sub_20BB97D9C;
          *(v150 + 2) = v151;
          v152 = swift_allocObject();
          *(v152 + 16) = sub_20BB97F38;
          *(v152 + 24) = v149;
          v153 = v183;
          v154 = v212;
          (*(v138 + 16))(v183, v210, v212);
          v155 = (*(v138 + 80) + 16) & ~*(v138 + 80);
          v156 = (v182 + v155 + 7) & 0xFFFFFFFFFFFFFFF8;
          v157 = swift_allocObject();
          (v208)(v157 + v155, v153, v154);
          v158 = (v157 + v156);
          *v158 = sub_20B5F67A4;
          v158[1] = v152;

          v159 = v200;
          sub_20C137C94();
          v160 = swift_allocObject();
          v161 = v219;
          *(v160 + 16) = sub_20BB97E7C;
          *(v160 + 24) = v161;
          v162 = swift_allocObject();
          *(v162 + 16) = sub_20B5F67D4;
          *(v162 + 24) = v160;
          v163 = v201;
          v164 = v199;
          v165 = v202;
          (*(v201 + 16))(v199, v159, v202);
          v166 = (*(v163 + 80) + 16) & ~*(v163 + 80);
          v167 = (v184 + v166 + 7) & 0xFFFFFFFFFFFFFFF8;
          v168 = swift_allocObject();
          (*(v163 + 32))(v168 + v166, v164, v165);
          v169 = (v168 + v167);
          *v169 = sub_20B5DF204;
          v169[1] = v162;

          v170 = v185;
          sub_20C137C94();
          v171 = *(v163 + 8);
          v171(v159, v165);
          v172 = sub_20C137CB4();
          v173 = swift_allocObject();
          *(v173 + 16) = 0;
          *(v173 + 24) = 0;
          v172(sub_20B52347C, v173);

          v174 = v222;

          v171(v170, v165);
          (*(v138 + 8))(v210, v212);
          (*(v203 + 8))(v211, v204);
          v144 = v174;
          v140 = v223;
        }

        v60 = v220;
        v80 = v221;
        v142 = v215;
        v141 = v216;
        v83 = v224;
        v143 = v193;
        v78 = v197;
        goto LABEL_27;
      }

      v144 = v222;
      v140 = v223;
      v142 = v215;
      v141 = v216;
      v143 = v193;
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_20C13B534();

  v67 = v226;
  v68 = sub_20C13BB74();
  v69 = sub_20C13D1D4();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v227[0] = v72;
    *v70 = 138543618;
    *(v70 + 4) = v67;
    *v71 = v67;
    *(v70 + 12) = 2082;
    v227[3] = a1;
    v73 = sub_20B5F66D0();
    v74 = v67;
    v75 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v73);
    v77 = sub_20B51E694(v75, v76, v227);

    *(v70 + 14) = v77;
    _os_log_impl(&dword_20B517000, v68, v69, "Attempted to configure %{public}@ with item: %{public}s", v70, 0x16u);
    sub_20B520158(v71, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v71, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v72);
    MEMORY[0x20F2F6A40](v72, -1, -1);
    MEMORY[0x20F2F6A40](v70, -1, -1);
  }

  return (*(v217 + 8))(v4, v2);
}

void sub_20BB97DA4()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA5E894(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BB97E7C(void *a1)
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

  sub_20BA63950(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BB97F38(uint64_t *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F318C(*a1, *(v1 + 16), v1 + v4, *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_20BB97FFC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_tvArtworkView;
  v5 = [objc_allocWithZone(type metadata accessor for TVArtworkView()) initWithFrame_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v6 = *&qword_27C79ACA0;
  v7 = [v5 config];
  [v7 setCornerRadius_];

  *(v1 + v4) = v5;
  v8 = v1 + OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_layout;
  v9 = *MEMORY[0x277CDA138];
  *v8 = xmmword_20C170AB0;
  *(v8 + 16) = xmmword_20C170AC0;
  *(v8 + 32) = 0x4010000000000000;
  *(v8 + 40) = v9;
  *(v8 + 48) = 0x4044000000000000;
  *(v8 + 56) = v6 + 5.0;
  *(v8 + 64) = xmmword_20C151BD0;
  *(v8 + 80) = 0x3FC999999999999ALL;
  v10 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_bottomTextStackView;
  v11 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v12 = v9;
  v13 = [v11 init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setAlignment_];
  [v13 setAxis_];
  [v13 setSpacing_];
  *(v1 + v10) = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_footnoteLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setAdjustsFontForContentSizeCategory_];
  v16 = objc_opt_self();
  v17 = [v16 preferredFontForTextStyle_];
  [v15 setFont_];

  v18 = objc_opt_self();
  v19 = [v18 labelColor];
  [v15 setTextColor_];

  [v15 setLineBreakMode_];
  [v15 setNumberOfLines_];
  *(v1 + v14) = v15;
  v20 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_recencyIconView;
  v21 = objc_allocWithZone(type metadata accessor for RecencyIconView());
  v22 = sub_20B7219DC(1, 0, 0, 0.0, 0.0, 0.0, 0.0);
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v20) = v22;
  v23 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_titleLabel;
  v24 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  [v24 setAdjustsFontForContentSizeCategory_];
  LODWORD(v25) = 1148846080;
  [v24 setContentCompressionResistancePriority:1 forAxis:v25];

  v26 = [v16 preferredFontForTextStyle_];
  [v24 setFont_];

  v27 = [v18 labelColor];
  [v24 setTextColor_];

  *(v1 + v23) = v24;
  v28 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_gradientLayer;
  *(v1 + v28) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BB984C0()
{
  sub_20C1380F4();
  v0 = sub_20C138104();
  result = sub_20C138104();
  v2 = 152.0;
  if (v0 == result)
  {
    v2 = 264.0;
  }

  qword_27C76B680 = *&v2;
  return result;
}

char *sub_20BB98514(void *a1, uint64_t a2)
{
  v3 = v2;
  *&v141 = swift_getObjectType();
  v3[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_countdownPosition] = 0;
  v6 = OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_spinnerView;
  v7 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v6] = v7;
  *&v3[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playPauseGestureRecognizer] = 0;
  v8 = OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonCenterYConstraint;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *&v3[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_presenter] = a1;
  sub_20B51CC64(a2, &v3[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_storefrontLocalizer]);
  v9 = a1;
  v10 = sub_20C1380F4();
  sub_20C0134C0(v10, &v147);
  v11 = v148;
  v12 = v149;
  __swift_project_boxed_opaque_existential_1(&v147, v148);
  v13 = OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_catalogWorkout;
  v14 = (*(v12 + 48))(&v9[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_catalogWorkout], v11, v12);
  v16 = v15;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = &v3[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_countdownView];
  *v17 = v14;
  v17[1] = v16;
  v18 = v148;
  v19 = v149;
  __swift_project_boxed_opaque_existential_1(&v147, v148);
  v20 = (*(v19 + 56))(&v9[v13], v18, v19);
  v22 = v21;
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v23 = &v3[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonView];
  *v23 = v20;
  v23[1] = v22;
  v24 = v148;
  v25 = v149;
  __swift_project_boxed_opaque_existential_1(&v147, v148);
  v26 = *(v25 + 64);
  v139 = v9;
  v137 = a2;
  v27 = v26(&v9[v13], a2, v24, v25);
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_contentRatingsView] = v27;
  sub_20C1380F4();
  v28 = sub_20C138104();
  if (v28 == sub_20C138104())
  {
    v29 = &v3[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_productPlacementView];
    *v29 = 0;
    v29[1] = 0;
  }

  else
  {
    v30 = v148;
    v31 = v149;
    __swift_project_boxed_opaque_existential_1(&v147, v148);
    v32 = (*(v31 + 136))(v30, v31);
    v34 = v33;
    [v32 setTranslatesAutoresizingMaskIntoConstraints_];
    v35 = &v3[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_productPlacementView];
    *v35 = v32;
    v35[1] = v34;
  }

  v36 = v141;
  v146.receiver = v3;
  v146.super_class = v141;
  v37 = objc_msgSendSuper2(&v146, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v38 = &v37[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_countdownView];
  v39 = *&v37[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_countdownView];
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = v37;
  v41 = v39;

  sub_20C139544();

  v42 = *v38;
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v42;

  sub_20C139554();

  v44 = *v38;
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v44;

  sub_20C139564();

  v46 = *v38;
  v140 = v38;
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = v46;

  sub_20C139534();

  v48 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v40 action:sel_handlePlayPauseGesture];
  v143[0] = MEMORY[0x277D84F90];
  v49 = v48;
  sub_20C13DD64();
  sub_20C13D014();
  sub_20C13DD34();
  sub_20C13DD74();
  sub_20C13DD84();
  sub_20C13DD44();
  sub_20B51C88C(0, &qword_27C765490);
  v50 = sub_20C13CC54();

  [v49 setAllowedPressTypes_];

  [v49 setEnabled_];
  v51 = *&v40[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playPauseGestureRecognizer];
  *&v40[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playPauseGestureRecognizer] = v49;
  v52 = v49;

  v53 = v40;
  v136 = v52;
  [v53 addGestureRecognizer_];
  *&v139[OBJC_IVAR____TtC9SeymourUI29SessionIntroSequencePresenter_display + 8] = &off_2822D0ED8;
  swift_unknownObjectWeakAssign();

  sub_20C1380F4();
  v54 = sub_20C138104();
  if (v54 == sub_20C138104())
  {
    [v53 setUserInteractionEnabled_];
  }

  [v53 addSubview_];
  v55 = &v53[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonView];
  v56 = *&v53[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonView];
  v57 = *&v53[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonView + 8];
  ObjectType = swift_getObjectType();
  v144 = v36;
  v145 = v56;
  v143[0] = v53;
  v59 = *(v57 + 8);
  v60 = v53;
  v59(v143, sel_didTouchDownPlayIcon_, 1, ObjectType, v57);
  sub_20B520158(v143, &unk_27C768A00);
  v61 = *v55;
  v62 = v55[1];
  v63 = swift_getObjectType();
  v144 = v141;
  v145 = v61;
  v143[0] = v60;
  v64 = v62[1];
  v65 = v60;
  v66 = v141;
  v64(v143, sel_didTouchUpInsidePlayIcon_, 64, v63, v62);
  sub_20B520158(v143, &unk_27C768A00);
  v67 = *v55;
  v68 = v55[1];
  v69 = swift_getObjectType();
  v144 = v141;
  v145 = v67;
  v143[0] = v65;
  v68[1](v143, sel_didTouchUpOutsidePlayIcon_, 128, v69, v68);
  sub_20B520158(v143, &unk_27C768A00);
  [v65 addSubview_];
  v70 = OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_spinnerView;
  [*&v65[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_spinnerView] setAlpha_];
  v133 = v70;
  [v65 addSubview_];
  if (*&v65[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_productPlacementView])
  {
    [v65 addSubview_];
  }

  v71 = *v140;
  swift_getObjectType();
  v144 = v141;
  v145 = v71;
  v143[0] = v65;
  v135 = v65;
  v72 = v65;
  v73 = v71;
  v74 = sub_20C13DFD4();
  if (v141)
  {
    v75 = __swift_project_boxed_opaque_existential_1(v143, v141);
    v76 = *(v141 - 8);
    v77 = MEMORY[0x28223BE20](v75);
    v79 = &v131 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v76 + 16))(v79, v77);
    v80 = sub_20C13DFD4();
    (*(v76 + 8))(v79, v66);
    __swift_destroy_boxed_opaque_existential_1(v143);
  }

  else
  {
    v80 = 0;
  }

  v132 = objc_opt_self();
  v81 = [v132 constraintWithItem:v74 attribute:10 relatedBy:0 toItem:v80 attribute:4 multiplier:0.48 constant:0.0];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v83 = swift_allocObject();
  v141 = xmmword_20C151490;
  *(v83 + 16) = xmmword_20C151490;
  v84 = v140;
  v85 = [*v140 centerXAnchor];
  v86 = [v72 &selRef_handleMenuButtonTapped + 2];

  v87 = [v85 constraintEqualToAnchor_];
  *(v83 + 32) = v87;
  *(v83 + 40) = v81;
  v131 = v83;
  v88 = *v55;
  v134 = v81;
  v89 = [v88 centerYAnchor];
  v90 = [*v84 centerYAnchor];
  v91 = [v89 constraintEqualToAnchor_];

  v92 = OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonCenterYConstraint;
  v93 = *&v72[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonCenterYConstraint];
  *&v72[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_playButtonCenterYConstraint] = v91;

  v138 = v82;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  v95 = [*v55 centerXAnchor];
  v96 = [*v84 centerXAnchor];
  v97 = [v95 constraintEqualToAnchor:v96 constant:2.0];

  *(inited + 32) = v97;
  v98 = *&v72[v92];
  *(inited + 40) = v98;
  v99 = *v55;
  v100 = v98;
  v101 = [v99 widthAnchor];
  if (qword_27C760998 != -1)
  {
    swift_once();
  }

  v102 = [v101 constraintEqualToConstant_];

  *(inited + 48) = v102;
  v103 = [*v55 heightAnchor];
  v104 = [*v55 widthAnchor];
  v105 = [v103 constraintEqualToAnchor_];

  *(inited + 56) = v105;
  v106 = swift_initStackObject();
  *(v106 + 16) = v141;
  v107 = v135;
  v108 = v133;
  v109 = [*&v135[v133] centerXAnchor];
  v110 = [*v55 centerXAnchor];
  v111 = [v109 constraintEqualToAnchor_];

  *(v106 + 32) = v111;
  v112 = [*&v107[v108] centerYAnchor];
  v113 = [*v55 centerYAnchor];
  v114 = [v112 constraintEqualToAnchor_];

  *(v106 + 40) = v114;
  v115 = sub_20BB99904();
  v142 = v131;
  sub_20B8D9310(inited);
  sub_20B8D9310(v106);
  sub_20B8D9310(v115);
  sub_20B51C88C(0, &qword_281100500);
  v116 = sub_20C13CC54();

  v117 = v132;
  [v132 activateConstraints_];

  v118 = *&v72[OBJC_IVAR____TtC9SeymourUI24SessionIntroSequenceView_contentRatingsView];
  if (v118)
  {
    v119 = v118;
    [v119 setAlpha_];
    [v72 addSubview_];
    v120 = swift_allocObject();
    *(v120 + 16) = v141;
    v121 = [v119 topAnchor];
    v122 = [v72 safeAreaLayoutGuide];
    v123 = [v122 topAnchor];

    v124 = [v121 constraintEqualToAnchor:v123 constant:20.0];
    *(v120 + 32) = v124;
    v125 = [v119 leadingAnchor];
    v126 = [v72 safeAreaLayoutGuide];
    v127 = [v126 leadingAnchor];

    v128 = [v125 constraintEqualToAnchor:v127 constant:20.0];
    *(v120 + 40) = v128;
    v129 = sub_20C13CC54();

    [v117 activateConstraints_];

    __swift_destroy_boxed_opaque_existential_1(v137);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v137);
  }

  __swift_destroy_boxed_opaque_existential_1(&v147);
  return v72;
}