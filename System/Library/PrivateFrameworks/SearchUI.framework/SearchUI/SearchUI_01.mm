uint64_t sub_1DA230DDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DA225904(a1, a2);
  }

  return a1;
}

uint64_t sub_1DA230E2C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DA25F6B4() & 1;
  }
}

uint64_t objectdestroy_17Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA230F08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DA231210;

  return sub_1DA22EC48(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DA231010(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }

    sub_1DA25DB94();
  }

  return sub_1DA25DB94();
}

uint64_t sub_1DA23106C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_32Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DA231124(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DA231210;

  return sub_1DA22E194(a1, v4, v5, v6, v7, v8, v9, v10);
}

id sub_1DA231220(void *a1)
{
  v1 = a1;
  sub_1DA231298();
  v3 = v2;

  if (v3)
  {
    v4 = sub_1DA25F234();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t sub_1DA231298()
{
  v1 = 0xD00000000000001ALL;
  v2 = [v0 cardSection];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 typeIdentifier];

      if (v5)
      {
        v6 = sub_1DA25F244();
        v8 = v7;

        sub_1DA25F574();

        MEMORY[0x1DA747B40](v6, v8);

        return 0xD00000000000001BLL;
      }
    }

    else
    {
    }
  }

  return v1;
}

id sub_1DA2313B0(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    v11 = sub_1DA25F234();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v6;
  v14.super_class = type metadata accessor for SearchUICustomViewRowModel();
  v12 = objc_msgSendSuper2(&v14, sel_initWithResult_cardSection_isInline_queryId_itemIdentifier_, a1, a2, a3 & 1, a4, v11);

  if (v12)
  {
  }

  return v12;
}

id sub_1DA231500(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1DA25F234();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for SearchUICustomViewRowModel();
  v6 = objc_msgSendSuper2(&v8, sel_initWithResult_itemIdentifier_, a1, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_1DA2315F8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v9 = sub_1DA25F234();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for SearchUICustomViewRowModel();
  v10 = objc_msgSendSuper2(&v12, sel_initWithResult_cardSection_queryId_itemIdentifier_, a1, a2, a3, v9);

  if (v10)
  {
  }

  return v10;
}

id sub_1DA231728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_1DA173718(0, &unk_1ECBA0980);
    v5 = sub_1DA25F314();

    if (a3)
    {
LABEL_3:
      v6 = sub_1DA25F234();

      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v9.receiver = v3;
  v9.super_class = type metadata accessor for SearchUICustomViewRowModel();
  v7 = objc_msgSendSuper2(&v9, sel_initWithResults_itemIdentifier_, v5, v6);

  if (v7)
  {
  }

  return v7;
}

id sub_1DA231890(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v7 = sub_1DA25F234();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v4;
  v10.super_class = type metadata accessor for SearchUICustomViewRowModel();
  v8 = objc_msgSendSuper2(&v10, sel_initWithCardSection_queryId_itemIdentifier_, a1, a2, v7);

  if (v8)
  {
  }

  return v8;
}

id sub_1DA231B08()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DA231CBC(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for SearchUICustomViewCardSectionView();
  objc_msgSendSuper2(&v16, sel_updateWithRowModel_, a1);
  if (a1)
  {
    type metadata accessor for SearchUICustomViewRowModel();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        v7 = a1;
        v8 = [v4 cardSection];
        if (v8)
        {
          v9 = v8;
          objc_opt_self();
          v10 = swift_dynamicCastObjCClass();
          if (v10)
          {
            v11 = v10;
            v12 = *&v1[OBJC_IVAR___SearchUICustomViewCardSectionView_wrappedView];
            if (v12)
            {
              v13 = v12;
              [v6 recycleCustomView:v13 forCardSection:v11 withPlacement:{objc_msgSend(v7, sel_isTopHit)}];
            }

            else
            {
              v14 = [v6 customViewForCardSection:v10 withPlacement:{objc_msgSend(v7, sel_isTopHit)}];
              if (v14)
              {
                v15 = v14;
                sub_1DA231EA4(v14);
              }
            }
          }

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_1DA231EA4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___SearchUICustomViewCardSectionView_wrappedView;
  v5 = *(v1 + OBJC_IVAR___SearchUICustomViewCardSectionView_wrappedView);
  if (!v5 || (sub_1DA173718(0, &qword_1ECBA3458), v6 = v5, v7 = a1, v8 = sub_1DA25F4D4(), v6, v7, (v8 & 1) == 0))
  {
    v9 = OBJC_IVAR___SearchUICustomViewCardSectionView_hostingView;
    v10 = *(v2 + OBJC_IVAR___SearchUICustomViewCardSectionView_hostingView);
    if (v10)
    {
      [v10 removeFromSuperview];
    }

    v11 = objc_allocWithZone(type metadata accessor for SearchUICustomViewHostingView());
    v12 = a1;
    v13 = [v11 initWithHostedView_];
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    [v13 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview_];
    *&v13[OBJC_IVAR____TtC8SearchUI29SearchUICustomViewHostingView_delegate + 8] = &off_1F55BAFF8;
    swift_unknownObjectWeakAssign();
    [*(v2 + OBJC_IVAR___SearchUICustomViewCardSectionView_baseView) addArrangedSubview_];
    v14 = *(v2 + v9);
    *(v2 + v9) = v13;

    v15 = *(v2 + v4);
    *(v2 + v4) = a1;
  }
}

uint64_t sub_1DA232160(void *a1)
{
  v3 = sub_1DA25EDA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DA25EDC4();
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[OBJC_IVAR___SearchUICustomViewCardSectionView_alreadyDispatchedOnMainQueue] & 1) == 0)
  {
    v1[OBJC_IVAR___SearchUICustomViewCardSectionView_alreadyDispatchedOnMainQueue] = 1;
    sub_1DA173718(0, &qword_1ECBA3438);
    v18 = sub_1DA25F4A4();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v1;
    aBlock[4] = sub_1DA232874;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA2324B4;
    aBlock[3] = &block_descriptor_1;
    v13 = _Block_copy(aBlock);
    v14 = a1;
    v15 = v1;

    sub_1DA25EDB4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1DA232894();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3448);
    sub_1DA2328EC();
    sub_1DA25F4F4();
    v16 = v18;
    MEMORY[0x1DA747D50](0, v11, v6, v13);
    _Block_release(v13);

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

id sub_1DA232414(void *a1, _BYTE *a2)
{
  [a1 intrinsicContentSize];
  v5 = v4;
  result = [a1 bounds];
  if (v7 == v5)
  {
    a2[OBJC_IVAR___SearchUICustomViewCardSectionView_alreadyDispatchedOnMainQueue] = 0;
  }

  else
  {
    [a2 invalidateIntrinsicContentSize];

    return [a2 didInvalidateSizeAnimate_];
  }

  return result;
}

uint64_t sub_1DA2324B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1DA25DB94();
  v1(v2);
}

id sub_1DA2324F8(void *a1, uint64_t a2)
{
  v5 = OBJC_IVAR___SearchUICustomViewCardSectionView_baseView;
  sub_1DA173718(0, &qword_1ECBA3458);
  v6 = sub_1DA25F314();
  v7 = [objc_opt_self() containerBoxViewWithArrangedSubviews_];

  *&v2[v5] = v7;
  *&v2[OBJC_IVAR___SearchUICustomViewCardSectionView_hostingView] = 0;
  *&v2[OBJC_IVAR___SearchUICustomViewCardSectionView_wrappedView] = 0;
  v2[OBJC_IVAR___SearchUICustomViewCardSectionView_alreadyDispatchedOnMainQueue] = 0;
  swift_unknownObjectWeakInit();
  v10.receiver = v2;
  v10.super_class = type metadata accessor for SearchUICustomViewCardSectionView();
  v8 = objc_msgSendSuper2(&v10, sel_initWithRowModel_feedbackDelegate_, a1, a2);

  swift_unknownObjectRelease();
  if (v8)
  {
  }

  return v8;
}

id sub_1DA232660(void *a1)
{
  v3 = OBJC_IVAR___SearchUICustomViewCardSectionView_baseView;
  sub_1DA173718(0, &qword_1ECBA3458);
  v4 = sub_1DA25F314();
  v5 = [objc_opt_self() containerBoxViewWithArrangedSubviews_];

  *&v1[v3] = v5;
  *&v1[OBJC_IVAR___SearchUICustomViewCardSectionView_hostingView] = 0;
  *&v1[OBJC_IVAR___SearchUICustomViewCardSectionView_wrappedView] = 0;
  v1[OBJC_IVAR___SearchUICustomViewCardSectionView_alreadyDispatchedOnMainQueue] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SearchUICustomViewCardSectionView();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1DA2327AC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DA25DB94();
}

unint64_t sub_1DA232894()
{
  result = qword_1ECBA3440;
  if (!qword_1ECBA3440)
  {
    sub_1DA25EDA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3440);
  }

  return result;
}

unint64_t sub_1DA2328EC()
{
  result = qword_1ECBA3450;
  if (!qword_1ECBA3450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3450);
  }

  return result;
}

id sub_1DA232958(void *a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = a1;
    result = [v3 cardSectionRowModels];
    if (result)
    {
      v5 = result;
      sub_1DA173718(0, &qword_1ECBA34E8);
      v6 = sub_1DA25F324();

      if (v6 >> 62)
      {
        goto LABEL_17;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DA25F634())
      {
        v8 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1DA747E20](v8, v6);
          }

          else
          {
            if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_16;
            }

            v9 = *(v6 + 8 * v8 + 32);
          }

          v10 = v9;
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          type metadata accessor for SearchUIRFCardSectionRowModel();
          v12 = swift_dynamicCastClass();
          if (v12)
          {
            v13 = v12;

            return v13;
          }

          ++v8;
          if (v11 == i)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        ;
      }

LABEL_18:

      return 0;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DA232AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DA25E474();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a2 + 8))
  {
    v10 = 0.0;
  }

  else
  {
    v10 = *a2;
  }

  v11 = *(v7 + 28);
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_1DA25E674();
  (*(*(v13 - 8) + 104))(v9 + v11, v12, v13);
  *v9 = v10;
  v9[1] = v10;
  v14 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA34D8) + 36);
  sub_1DA234150(v9, v14);
  *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA34E0) + 36)) = 256;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA34C8);
  return (*(*(v15 - 8) + 16))(a3, a1, v15);
}

uint64_t sub_1DA232D0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_1DA25EB24();
  *a2 = result;
  return result;
}

id sub_1DA232E90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUIContentConfigurator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DA232EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *))
{
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a4;
  v8 = sub_1DA25E784();
  v11[3] = v8;
  v11[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a1, v8);
  return a6(v11);
}

id sub_1DA232FF4(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA34C0);
  v48 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v49 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v50 = &v41 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA34C8);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v51 = &v41 - v21;
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a1)
  {
    v44 = result;
    v45 = v20;
    v46 = v19;
    v47 = v18;
    v23 = objc_opt_self();
    ObjectType = swift_getObjectType();
    v43 = a1;
    result = [v23 bestAppearanceForView_];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v24 = result;
    [result isVibrant];

    v25 = objc_allocWithZone(sub_1DA25F054());
    v26 = sub_1DA25F034();
    v52 = 0;
    v53 = 1;
    sub_1DA25F044();
    swift_unknownObjectRetain();
    sub_1DA25F024();
    type metadata accessor for SearchUIRFCardSectionRowModel();
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = v27;
      v29 = a2;
    }

    else
    {
      v30 = sub_1DA232958(a2);
      if (!v30)
      {
LABEL_16:
        sub_1DA25EFD4();
        v32 = v51;
        v33 = MEMORY[0x1DA747860](a3, v26);
        MEMORY[0x1EEE9AC00](v33);
        *(&v41 - 2) = v32;
        *(&v41 - 1) = &v52;
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA34D8);
        v35 = sub_1DA233FD8();
        sub_1DA25E774();
        sub_1DA25E754();
        v36 = v48[1];
        v36(v13, v6);
        sub_1DA25E894();
        v37 = v49;
        sub_1DA25E764();
        sub_1DA25E8B4();
        v48 = v26;
        v38 = v50;
        sub_1DA25E764();
        v36(v37, v6);
        sub_1DA25E8A4();
        sub_1DA25E764();
        v36(v38, v6);
        sub_1DA25E8C4();
        v39 = v47;
        sub_1DA25E764();
        v36(v13, v6);
        v36(v16, v6);
        v40 = v43;
        (v44)[1](v39, v34, MEMORY[0x1E6981E70], v35, MEMORY[0x1E6981E60], ObjectType);

        v36(v39, v6);
        return (*(v45 + 8))(v51, v46);
      }

      v28 = v30;
    }

    sub_1DA25DB94();
    sub_1DA25F014();
    sub_1DA238014(v54);
    if (LOBYTE(v54[0]) == 2)
    {
      if ([a2 adjustMarginsForConcentricity])
      {
        [objc_opt_self() defaultLayoutMargins];
      }
    }

    else
    {
      sub_1DA238014(&v55);
      sub_1DA238014(&v56);

      v31 = 0xBFF0000000000000;
      if (v56 != 2)
      {
        v31 = v57;
      }

      v52 = v31;
      v53 = 0;
    }

    goto LABEL_16;
  }

  return result;
}

void sub_1DA233660(void *a1, void *a2, uint64_t a3)
{
  v72 = a3;
  v80 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA34C0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v73 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v74 = &v67 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v76 = &v67 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v75 = &v67 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v67 - v14;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA34C8);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  ObjectType = &v67 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA34D0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v67 - v22;
  swift_getObjectType();
  v24 = swift_conformsToProtocol2();
  if (v24 && a1)
  {
    v25 = v24;
    v70 = v15;
    v71 = v5;
    type metadata accessor for SearchUIArchivedRowModel();
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = v26;
      v28 = OBJC_IVAR___SearchUIArchivedRowModel_swiftUIView;
      swift_beginAccess();
      sub_1DA225128(v27 + v28, &v84);
      if (v85)
      {
        sub_1DA175134(&v84, &v86);
        ObjectType = swift_getObjectType();
        MEMORY[0x1EEE9AC00](ObjectType);
        *(&v67 - 2) = &v86;
        v29 = a1;
        v30 = v80;
        v31 = MEMORY[0x1E6981910];
        v32 = MEMORY[0x1E6981900];
        sub_1DA25E774();
        sub_1DA25E884();
        sub_1DA25E764();
        v33 = *(v18 + 8);
        v33(v21, v17);
        (*(v25 + 8))(v23, v31, MEMORY[0x1E6981E70], v32, MEMORY[0x1E6981E60], ObjectType, v25);

        v33(v23, v17);
        __swift_destroy_boxed_opaque_existential_0(&v86);
        return;
      }

      v35 = a1;
      sub_1DA2340E0(&v84);
    }

    else
    {
      v34 = a1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33C0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1DA273A50;
    v37 = a1;
    v38 = v80;
    v39 = [v80 cardSection];
    v40 = v71;
    if (v39)
    {
      *(v36 + 32) = v39;
      swift_getObjectType();
      v41 = swift_conformsToProtocol2();
      if (v41)
      {
        v42 = v41;
        v43 = objc_opt_self();
        v44 = swift_getObjectType();
        v45 = v37;
        v46 = [v43 bestAppearanceForView_];
        if (v46)
        {
          v47 = v46;
          [v46 isVibrant];

          v48 = objc_allocWithZone(sub_1DA25F054());
          v49 = sub_1DA25F034();
          v81 = 0;
          v82 = 1;
          v50 = v49;
          sub_1DA25F044();
          swift_unknownObjectRetain();
          sub_1DA25F024();
          type metadata accessor for SearchUIRFCardSectionRowModel();
          v51 = swift_dynamicCastClass();
          v69 = v45;
          v68 = v42;
          v67 = v44;
          if (v51)
          {
            v52 = v51;
            v53 = v38;
          }

          else
          {
            v54 = sub_1DA232958(v38);
            if (!v54)
            {
LABEL_23:
              sub_1DA25EFD4();
              v56 = ObjectType;
              v57 = MEMORY[0x1DA747860](v36, v50);
              v80 = v50;
              MEMORY[0x1EEE9AC00](v57);
              *(&v67 - 2) = v56;
              *(&v67 - 1) = &v81;
              v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA34D8);
              v59 = sub_1DA233FD8();
              v60 = v76;
              sub_1DA25E774();
              v72 = v36;
              v61 = v75;
              sub_1DA25E754();
              v62 = *(v40 + 8);
              v62(v60, v4);
              sub_1DA25E894();
              v63 = v73;
              sub_1DA25E764();
              sub_1DA25E8B4();
              v64 = v74;
              sub_1DA25E764();
              v62(v63, v4);
              sub_1DA25E8A4();
              sub_1DA25E764();
              v62(v64, v4);
              sub_1DA25E8C4();
              v65 = v70;
              sub_1DA25E764();
              v62(v60, v4);
              v62(v61, v4);
              v66 = v69;
              (*(v68 + 8))(v65, v58, MEMORY[0x1E6981E70], v59, MEMORY[0x1E6981E60], v67);

              v62(v65, v4);
              (*(v77 + 8))(ObjectType, v78);

              return;
            }

            v52 = v54;
          }

          sub_1DA25DB94();
          sub_1DA25F014();
          sub_1DA238014(v83);
          if (LOBYTE(v83[0]) == 2)
          {
            if ([v38 adjustMarginsForConcentricity])
            {
              [objc_opt_self() defaultLayoutMargins];
            }
          }

          else
          {
            sub_1DA238014(&v84);
            sub_1DA238014(&v86);

            v55 = 0xBFF0000000000000;
            if (v86 != 2)
            {
              v55 = v87;
            }

            v81 = v55;
            v82 = 0;
          }

          goto LABEL_23;
        }

LABEL_27:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }
}

unint64_t sub_1DA233FD8()
{
  result = qword_1EDAE5410;
  if (!qword_1EDAE5410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA34D8);
    swift_getOpaqueTypeConformance2();
    sub_1DA23407C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE5410);
  }

  return result;
}

unint64_t sub_1DA23407C()
{
  result = qword_1EDAE5420;
  if (!qword_1EDAE5420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA34E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAE5420);
  }

  return result;
}

uint64_t sub_1DA2340E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA2D68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA234150(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA25E474();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1DA234340()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUISupplementaryIdentifiers();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

SearchUISupplementaryProvider __swiftcall SearchUISupplementaryProvider.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SearchUISupplementaryProvider()
{
  result = qword_1ECBA34F0;
  if (!qword_1ECBA34F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBA34F0);
  }

  return result;
}

uint64_t sub_1DA2344C4()
{
  v0 = type metadata accessor for Header();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v10[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA34F8);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + qword_1EDAE5298);
    sub_1DA25E404();

    sub_1DA234600(&v2[*(v0 + 40)], v10);
    v5 = v11;
    if (v11)
    {
      v6 = v12;
      __swift_project_boxed_opaque_existential_0(v10, v11);
      v7 = (*(v6 + 32))(v5, v6);
      sub_1DA17D260(v2);
      __swift_destroy_boxed_opaque_existential_0(v10);
      return v7;
    }

    sub_1DA17D260(v2);
    sub_1DA234670(v10);
  }

  return 3;
}

uint64_t sub_1DA234600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA234670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1DA2346D8(void *a1)
{
  v1 = a1;
  sub_1DA234750(v1);
  v3 = v2;

  if (v3)
  {
    v4 = sub_1DA25F234();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1DA234750(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  v8 = *(v1 + qword_1EDAE5298);
  sub_1DA25E404();

  v9 = (*(*((v3 & v2) + 0x58) + 16))(v4);
  (*(v5 + 8))(v7, v4);
  return v9;
}

id sub_1DA2348BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SupplementaryHostingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1DA234940(uint64_t a1)
{
  v2 = *(a1 + qword_1EDAE52A0);
}

void sub_1DA23498C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  MEMORY[0x1EEE9AC00](a1);
  v6 = qword_1EDAE5298;
  sub_1DA25E424();
  (*(*((v4 & v3) + 0x58) + 32))(v5);
  *(v2 + v6) = sub_1DA25E3F4();
  *(v2 + qword_1EDAE52A0) = 0;
  sub_1DA25F624();
  __break(1u);
}

uint64_t sub_1DA234B10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v7 = sub_1DA25DF94();
  (*(*(v7 - 8) + 8))(a2, v7);
  result = swift_getKeyPath();
  *a4 = result;
  *(a4 + 8) = 0;
  return result;
}

uint64_t sub_1DA234B94@<X0>(void *a1@<X8>)
{
  result = sub_1DA25E4C4();
  *a1 = v3;
  return result;
}

uint64_t sub_1DA234BE8()
{
  v1 = *(v0 + 16);
  v2 = [v1 command];
  if (!v2)
  {
    goto LABEL_24;
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    goto LABEL_23;
  }

  v5 = [v4 punchout];
  result = [*(v0 + 24) section];
  if (!result)
  {
    goto LABEL_31;
  }

  v7 = result;
  v8 = [result resultSection];

  if (!v8)
  {
    v9 = 0;
LABEL_13:
    if (!v5)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v9 = [v8 results];

  if (!v9)
  {
    goto LABEL_13;
  }

  sub_1DA173718(0, &unk_1ECBA0980);
  v10 = sub_1DA25F324();

  if (v10 >> 62)
  {
    result = sub_1DA25F634();
    if (result)
    {
      goto LABEL_8;
    }

LABEL_19:
    v12 = 0;
LABEL_20:

    v9 = [v12 moreResultsPunchout];

    if (!v5)
    {
LABEL_21:

      if (v9)
      {
        v3 = v9;
        goto LABEL_23;
      }

      return 1;
    }

LABEL_14:
    if (!v9)
    {

LABEL_23:
LABEL_24:
      v14 = [v1 command];
      if (!v14)
      {
        return 0;
      }

      v15 = v14;
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass() != 0;

      return v16;
    }

    sub_1DA173718(0, &qword_1ECBA0998);
    v13 = sub_1DA25F4D4();

    if ((v13 & 1) == 0)
    {
      goto LABEL_24;
    }

    return 1;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_8:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1DA747E20](0, v10);
    goto LABEL_11;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 32);
LABEL_11:
    v12 = v11;
    goto LABEL_20;
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1DA234E50()
{
  v1 = *(v0 + 24);
  v2 = [v1 section];
  v3 = [v2 resultSection];

  v4 = [v1 section];
  if (!v4 || (v5 = v4, v6 = [v4 collectionSection], v5, !v6))
  {
    v27 = 0;
    goto LABEL_16;
  }

  if (v3)
  {
    v7 = [v3 results];
    if (v7)
    {
      v8 = v7;
      sub_1DA173718(0, &unk_1ECBA0980);
      v9 = sub_1DA25F324();

      if (v9 >> 62)
      {
        if (sub_1DA25F634())
        {
          goto LABEL_7;
        }
      }

      else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_7:
        if ((v9 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1DA747E20](0, v9);
        }

        else
        {
          if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_33;
          }

          v10 = *(v9 + 32);
        }

        v11 = v10;

        v12 = [v11 queryId];

        goto LABEL_15;
      }
    }
  }

  v12 = [*(v0 + 32) queryId];
LABEL_15:
  v13 = objc_allocWithZone(SearchUIRowModel);
  v14 = v6;
  v15 = sub_1DA25F234();
  v27 = [v13 initWithCardSection:v14 queryId:v12 itemIdentifier:v15];

LABEL_16:
  v16 = *(v0 + 32);
  [v16 setSection_];
  v17 = [objc_opt_self() handlerForButton:*(v0 + 16) rowModel:v27 sectionModel:v1 environment:v16];
  if (!v17)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v18 = v17;
  [v17 executeWithTriggerEvent_];

  v19 = sub_1DA234BE8();
  if (!v3)
  {
LABEL_25:

    return;
  }

  v20 = v19;
  v21 = [v16 feedbackDelegate];
  if (!v21)
  {
    goto LABEL_34;
  }

  v22 = [v21 respondsToSelector_];
  swift_unknownObjectRelease();
  if (!v22)
  {
    goto LABEL_24;
  }

  v23 = [objc_allocWithZone(MEMORY[0x1E69CA410]) initWithSection:v3 triggerEvent:v20 & 1];
  if (!v23)
  {
    goto LABEL_24;
  }

  v24 = v23;
  v25 = [v16 feedbackDelegate];
  if (!v25)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v26 = v25;
  if ([v25 respondsToSelector_])
  {
    [v26 didEngageSection_];

    swift_unknownObjectRelease();
LABEL_24:

    goto LABEL_25;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1DA2351D8()
{

  v1 = OBJC_IVAR____TtC8SearchUI22ButtonItemHeaderAction___observationRegistrar;
  v2 = sub_1DA25DFF4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA2352A4()
{
  v1 = *(*v0 + 40);

  return v1;
}

uint64_t sub_1DA2352D8()
{
  v1 = *(*v0 + 56);

  return v1;
}

uint64_t sub_1DA23530C()
{
  if (sub_1DA234BE8())
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1DA235360()
{
  swift_getKeyPath();
  sub_1DA175884();
  sub_1DA25DFD4();

  return *(v0 + 16);
}

uint64_t sub_1DA2353D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA175884();
  sub_1DA25DFD4();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1DA235448(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA175884();
    sub_1DA25DFC4();
  }

  return result;
}

void sub_1DA235528()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    sub_1DA175884();
    sub_1DA25DFD4();

    if (*(v0 + 16))
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }

    v4 = *(v0 + 24);
    [v2 toggleExpansionForSectionModel_];
    v5 = [v2 isExpandedForSectionModel_];
    if (v5 == *(v0 + 16))
    {
      *(v0 + 16) = v5;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1DA25DFC4();
    }

    v10 = [v4 section];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 resultSection];

      if (v12)
      {
        v13 = [objc_allocWithZone(MEMORY[0x1E69CA410]) initWithSection:v12 triggerEvent:v3];
        if (v13)
        {
          v14 = v13;
          v15 = swift_unknownObjectWeakLoadStrong();
          if (!v15)
          {
            swift_unknownObjectRelease();

            goto LABEL_24;
          }

          v16 = v15;
          if ([v15 respondsToSelector_])
          {
            [v16 didEngageSection_];
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
LABEL_24:

            return;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      swift_unknownObjectRelease();
      return;
    }

    __break(1u);
  }

  else
  {
    if (qword_1ECBA2C78 != -1)
    {
      swift_once();
    }

    v7 = sub_1DA25E2B4();
    __swift_project_value_buffer(v7, qword_1ECBA5748);
    v8 = sub_1DA25F464();
    v17 = sub_1DA25E294();
    if (os_log_type_enabled(v17, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1DA169000, v17, v8, "ExpandSectionHeaderAction: delegate is unexpectedly nil", v9, 2u);
      MEMORY[0x1DA748F50](v9, -1, -1);
    }
  }
}

unint64_t sub_1DA23586C()
{
  v1 = [v0 resultSection];
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = v1;
  v3 = [v1 results];

  if (!v3)
  {
    goto LABEL_12;
  }

  sub_1DA173718(0, &unk_1ECBA0980);
  v4 = sub_1DA25F324();

  if (v4 >> 62)
  {
    result = sub_1DA25F634();
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1DA747E20](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;
LABEL_11:

  v8 = [v7 moreResults];

  if (v8)
  {
LABEL_26:

    return v8 != 0;
  }

LABEL_12:
  v9 = [v0 resultSection];
  if (!v9 || (v10 = v9, v11 = [v9 results], v10, !v11))
  {
    v8 = 0;
    goto LABEL_26;
  }

  sub_1DA173718(0, &unk_1ECBA0980);
  v4 = sub_1DA25F324();

  if (!(v4 >> 62))
  {
    v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_16;
    }

LABEL_24:
    v15 = 0;
    goto LABEL_25;
  }

  v12 = sub_1DA25F634();
  if (!v12)
  {
    goto LABEL_24;
  }

LABEL_16:
  v13 = __OFSUB__(v12, 1);
  result = v12 - 1;
  if (v13)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v14 = MEMORY[0x1DA747E20](result, v4);
    goto LABEL_21;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v4 + 8 * result + 32);
LABEL_21:
    v15 = v14;
LABEL_25:

    v8 = [v15 moreResults];

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

id sub_1DA235AB4()
{
  v1 = [v0 collectionSection];
  if (v1 && (v2 = v1, v3 = [v1 collectionStyle], v2, v3))
  {
    v4 = &selRef_initiallyVisibleCardSectionCount;
  }

  else
  {
    v5 = [v0 resultSection];
    if (!v5)
    {
      v6 = 0;
      goto LABEL_8;
    }

    v3 = v5;
    v4 = &selRef_maxInitiallyVisibleResults;
  }

  v6 = [v3 *v4];

LABEL_8:
  v7 = [v0 collectionSection];
  if (!v7 || (v8 = v7, v9 = [v7 collectionStyle], v8, !v9))
  {
    result = [v0 resultSection];
    if (!result)
    {
      return result;
    }

    v14 = result;
    v12 = [result results];

    if (v12)
    {
      v13 = &unk_1ECBA0980;
      goto LABEL_16;
    }

    return 0;
  }

  [v9 initiallyVisibleCardSectionCount];

  result = [v0 collectionSection];
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = [result cardSections];

  if (!v12)
  {
    return 0;
  }

  v13 = &unk_1EDAE5400;
LABEL_16:
  sub_1DA173718(0, v13);
  v15 = sub_1DA25F324();

  if (v15 >> 62)
  {
    v16 = sub_1DA25F634();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return ((v6 - 1) < 0xFFFFFFFFFFFFFFFELL && v6 < v16 && v16 > 0);
}

uint64_t sub_1DA235D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA35C8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = sub_1DA25E6A4();
  LOBYTE(v23[0]) = 1;
  sub_1DA1749CC(a1, v20);
  *&v19[7] = v20[0];
  *&v19[23] = v20[1];
  *&v19[39] = v20[2];
  *&v19[55] = v20[3];
  v11 = v23[0];
  sub_1DA174C48(v9);
  sub_1DA23106C(v9, v7, &qword_1ECBA35C8);
  v21[0] = v10;
  v21[1] = 0;
  v22[0] = v11;
  *&v22[1] = *v19;
  *&v22[17] = *&v19[16];
  *&v22[33] = *&v19[32];
  *&v22[49] = *&v19[48];
  v12 = *&v19[63];
  *&v22[64] = *&v19[63];
  v13 = *v22;
  *a2 = v10;
  *(a2 + 16) = v13;
  v14 = *&v22[16];
  v15 = *&v22[32];
  v16 = *&v22[48];
  *(a2 + 80) = v12;
  *(a2 + 48) = v15;
  *(a2 + 64) = v16;
  *(a2 + 32) = v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA35D0);
  sub_1DA23106C(v7, a2 + *(v17 + 48), &qword_1ECBA35C8);
  sub_1DA23106C(v21, v23, &qword_1ECBA35D8);
  sub_1DA179568(v9, &qword_1ECBA35C8);
  sub_1DA179568(v7, &qword_1ECBA35C8);
  v23[0] = v10;
  v23[1] = 0;
  v24 = v11;
  v26 = *&v19[16];
  v27 = *&v19[32];
  *v28 = *&v19[48];
  *&v28[15] = *&v19[63];
  v25 = *v19;
  return sub_1DA179568(v23, &qword_1ECBA35D8);
}

uint64_t sub_1DA235F58()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_1DA235FB0(uint64_t a1)
{
  v2 = sub_1DA25E694();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1DA25E4F4();
}

uint64_t sub_1DA236078()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t sub_1DA2360CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA23613C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DA23615C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1DA2361A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = a1;
  v3 = sub_1DA25E464();
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3630);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3638);
  v10 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v12 = &v18 - v11;
  sub_1DA236BC0(v2, v23);
  v13 = swift_allocObject();
  sub_1DA236BF8(v23, v13 + 16);
  v22 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3640);
  sub_1DA236C40();
  sub_1DA25EB04();
  sub_1DA25E454();
  v14 = sub_1DA17525C(&qword_1ECBA3690, &qword_1ECBA3630);
  v15 = sub_1DA236E90();
  sub_1DA25E984();
  (*(v20 + 8))(v5, v3);
  (*(v7 + 8))(v9, v6);
  v23[0] = v6;
  v23[1] = v3;
  v23[2] = v14;
  v23[3] = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v19;
  sub_1DA25EA14();
  return (*(v10 + 8))(v12, v16);
}

void *sub_1DA2364E8(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result scrollSection:*a1 direction:a1[1]];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DA236548@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3610);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v53 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3678);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3668);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3658);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v53 - v15;
  v16 = sub_1DA25EA74();
  v17 = (v4 + *(v2 + 44));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3618) + 28);
  v19 = *MEMORY[0x1E69816C0];
  v20 = sub_1DA25EA94();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  *v4 = v16;
  LOBYTE(v19) = sub_1DA25E8D4();
  sub_1DA25E2C4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1DA17657C(v4, v8, &qword_1ECBA3610);
  v29 = &v8[*(v6 + 44)];
  *v29 = v19;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  LOBYTE(v19) = sub_1DA25E874();
  sub_1DA25E2C4();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_1DA17657C(v8, v12, &qword_1ECBA3678);
  v38 = &v12[*(v10 + 44)];
  *v38 = v19;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = v53;
  v40 = &v53[*(v14 + 44)];
  sub_1DA25EBC4();
  LOBYTE(v8) = sub_1DA25E884();
  v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3688) + 36)] = v8;
  sub_1DA17657C(v12, v39, &qword_1ECBA3668);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3640);
  v42 = v54;
  v43 = (v54 + *(v41 + 36));
  v44 = *(sub_1DA25E474() + 20);
  v45 = *MEMORY[0x1E697F468];
  v46 = sub_1DA25E674();
  (*(*(v46 - 8) + 104))(&v43[v44], v45, v46);
  __asm { FMOV            V0.2D, #5.0 }

  *v43 = _Q0;
  *&v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA34E0) + 36)] = 256;
  return sub_1DA17657C(v39, v42, &qword_1ECBA3658);
}

uint64_t sub_1DA236968@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  swift_unknownObjectWeakInit();
  if (a3 > 2u)
  {
    if (a3 != 4)
    {
      goto LABEL_8;
    }

    v10 = "leadingScrollButton";
  }

  else
  {
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    v10 = "sectionTopSeparator";
  }

  if (0x80000001DA278860 == ((v10 - 32) | 0x8000000000000000))
  {

    v11 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v12 = sub_1DA25F6B4();

  v11 = (v12 & 1) == 0;
LABEL_9:
  a5[1] = v11;
  *a5 = sub_1DA25DF84();
  v13 = [a4 scrollButtonDelegate];

  v14 = sub_1DA25DF94();
  (*(*(v14 - 8) + 8))(a2, v14);
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1DA236B74@<X0>(void *a1@<X8>)
{
  swift_unknownObjectWeakInit();
  *a1 = 0;
  a1[1] = 0;

  return swift_unknownObjectWeakAssign();
}

unint64_t sub_1DA236C40()
{
  result = qword_1ECBA3648;
  if (!qword_1ECBA3648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3640);
    sub_1DA236CF8();
    sub_1DA17525C(&qword_1EDAE5420, &qword_1ECBA34E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3648);
  }

  return result;
}

unint64_t sub_1DA236CF8()
{
  result = qword_1ECBA3650;
  if (!qword_1ECBA3650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3658);
    sub_1DA236E0C(&qword_1ECBA3660, &qword_1ECBA3668, &unk_1DA274308, sub_1DA236DDC);
    sub_1DA17525C(&qword_1ECBA3680, &qword_1ECBA3688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3650);
  }

  return result;
}

uint64_t sub_1DA236E0C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1DA236E90()
{
  result = qword_1ECBA0AA8;
  if (!qword_1ECBA0AA8)
  {
    sub_1DA25E464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0AA8);
  }

  return result;
}

uint64_t sub_1DA236F0C(uint64_t a1)
{
  v2 = sub_1DA25EA94();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1DA25E494();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1DA236FF4(uint64_t a1, unsigned int a2)
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

uint64_t sub_1DA23703C(uint64_t result, unsigned int a2, unsigned int a3)
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

double sub_1DA23709C@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3568);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for SearchUIAppearance();
  v3 = *(v2 + 20);
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3570);
  swift_storeEnumTagMultiPayload();
  v4 = a1 + *(v2 + 24);
  *v4 = 0;
  v4[8] = 2;
  sub_1DA25EBE4();
  sub_1DA25E374();
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3698) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_1DA2371A8@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

unint64_t sub_1DA2371DC()
{
  result = qword_1ECBA0AC0;
  if (!qword_1ECBA0AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3698);
    sub_1DA237268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0AC0);
  }

  return result;
}

unint64_t sub_1DA237268()
{
  result = qword_1ECBA0AD8;
  if (!qword_1ECBA0AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA36A0);
    sub_1DA2372F4();
    sub_1DA237348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0AD8);
  }

  return result;
}

unint64_t sub_1DA2372F4()
{
  result = qword_1ECBA0A40;
  if (!qword_1ECBA0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0A40);
  }

  return result;
}

unint64_t sub_1DA237348()
{
  result = qword_1ECBA0A38;
  if (!qword_1ECBA0A38)
  {
    type metadata accessor for SearchUIAppearance();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA0A38);
  }

  return result;
}

BOOL sub_1DA2373A0(void *a1)
{
  v2 = v1;
  v4 = *(sub_1DA25EFE4() + 16);

  v5 = v4 >= 2 && ![a1 sectionType] || objc_msgSend(a1, sel_sectionType) == 3;
  v6 = [v2 image];
  if (!v6)
  {
    return 0;
  }

  v7 = [v2 text_1];
  if (v7 || (v7 = [v2 text_2]) != 0)
  {

    return 0;
  }

  return v5;
}

id sub_1DA237480@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DA2373A0(a1);
  if (result)
  {
    v5 = [a1 sectionType];
    result = [objc_opt_self() isSiri];
    if (result)
    {
      v6 = 0x4028000000000000;
      v7 = 28.0 - 12.0;
      if (v5 != 3)
      {
        v8 = 0;
        v9 = 0;
LABEL_10:
        v11 = 0x4028000000000000;
        goto LABEL_11;
      }
    }

    else
    {
      if (v5 != 3)
      {
        v8 = 0;
        v9 = 0;
        v7 = 24.0;
        v6 = 0x4028000000000000;
        goto LABEL_10;
      }

      v7 = 14.0;
    }

    v8 = *MEMORY[0x1E69DC5C0];
    v6 = *(MEMORY[0x1E69DC5C0] + 8);
    v9 = *(MEMORY[0x1E69DC5C0] + 16);
    v11 = *(MEMORY[0x1E69DC5C0] + 24);
LABEL_11:
    v10 = 1;
    goto LABEL_12;
  }

  v8 = 0;
  v9 = 0;
  v6 = 0;
  v10 = 2;
  v11 = 0;
  v7 = 0.0;
LABEL_12:
  *a2 = v10;
  *(a2 + 8) = v8;
  *(a2 + 16) = v6;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v7;
  return result;
}

double sub_1DA2375C0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DA237480(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

void sub_1DA237604()
{
  v1 = [v0 text_3];
  if (v1)
  {
    v2 = v1;
    sub_1DA173718(0, &qword_1ECBA36E0);
    v3 = sub_1DA25F324();

    if (v3 >> 62)
    {
      v4 = sub_1DA25F634();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        if (v4 < 1)
        {
          __break(1u);
          return;
        }

        v5 = 0;
        do
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1DA747E20](v5, v3);
          }

          else
          {
            v9 = *(v3 + 8 * v5 + 32);
          }

          v10 = v9;
          ++v5;
          v6 = sub_1DA238600(v9);
          if (v7)
          {
            v8 = v7;
          }

          else
          {
            v6 = 0;
            v8 = 0xE000000000000000;
          }

          MEMORY[0x1DA747B40](v6, v8);
        }

        while (v4 != v5);
      }
    }
  }
}

id sub_1DA2377A8()
{
  v1 = [*v0 text_2];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DA238600(v1);

  return v3;
}

id sub_1DA23784C()
{
  result = [v0 cardSection];
  if (result)
  {
    v2 = result;
    ObjectType = swift_getObjectType();

    v10 = ObjectType;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA36D8);
    v4 = sub_1DA25F254();
    v6 = v5;
    v11.receiver = v0;
    v11.super_class = type metadata accessor for SearchUIRFCardSectionRowModel();
    v7 = objc_msgSendSuper2(&v11, sel_reuseIdentifier, v10);
    if (v7)
    {
      v8 = v7;
      v9 = sub_1DA25F244();
    }

    else
    {
      v9 = 0x3E6C696E3CLL;
    }

    MEMORY[0x1DA747B40](45, 0xE100000000000000);
    MEMORY[0x1DA747B40](v4, v6);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DA237A4C()
{
  result = [v0 cardSection];
  if (result)
  {
    v2 = result;
    v3 = [result separatorStyle];

    if (v3)
    {
      v6.receiver = v0;
      v6.super_class = type metadata accessor for SearchUIRFCardSectionRowModel();
      return objc_msgSendSuper2(&v6, sel_separatorStyle);
    }

    else
    {
      sub_1DA25EFD4();
      v4 = [v0 cardSection];
      v5 = sub_1DA25EFA4();

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA237B40()
{
  if (![v0 cardSection] || (sub_1DA173718(0, &unk_1EDAE5400), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA36C0), (swift_dynamicCast() & 1) == 0))
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    goto LABEL_6;
  }

  v1 = *(&v7 + 1);
  if (!*(&v7 + 1))
  {
LABEL_6:
    sub_1DA179568(&v6, &qword_1ECBA36B8);
    v4 = [objc_opt_self() fillsBackgroundWithContentForRowModel_];
    return v4 & 1;
  }

  v2 = v8;
  __swift_project_boxed_opaque_existential_0(&v6, *(&v7 + 1));
  v3 = (*(v2 + 8))(v0, v1, v2);
  __swift_destroy_boxed_opaque_existential_0(&v6);
  v4 = v3;
  return v4 & 1;
}

uint64_t sub_1DA237CA0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1DA25EFD4();
  v5 = a1;
  v6 = [v5 cardSection];
  LOBYTE(a3) = a3();

  return a3 & 1;
}

uint64_t sub_1DA237D34()
{
  if ([v0 cardSection] && (sub_1DA173718(0, &unk_1EDAE5400), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA36D0), (swift_dynamicCast() & 1) != 0))
  {
    v1 = *(&v6 + 1);
    if (*(&v6 + 1))
    {
      v2 = v7;
      __swift_project_boxed_opaque_existential_0(&v5, *(&v6 + 1));
      v3 = (*(v2 + 8))(v1, v2);
      __swift_destroy_boxed_opaque_existential_0(&v5);
      return v3;
    }
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
  }

  sub_1DA179568(&v5, &qword_1ECBA36C8);
  return 0;
}

id sub_1DA237E64(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1DA25F234();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1DA237EE4()
{
  if ([v0 cardSection] && (sub_1DA173718(0, &unk_1EDAE5400), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA36D0), (swift_dynamicCast() & 1) != 0))
  {
    v1 = *(&v6 + 1);
    if (*(&v6 + 1))
    {
      v2 = v7;
      __swift_project_boxed_opaque_existential_0(&v5, *(&v6 + 1));
      v3 = (*(v2 + 16))(v1, v2);
      __swift_destroy_boxed_opaque_existential_0(&v5);
      return v3;
    }
  }

  else
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
  }

  sub_1DA179568(&v5, &qword_1ECBA36C8);
  return 0;
}

uint64_t sub_1DA238014@<X0>(__int128 *a1@<X8>)
{
  v3 = [v1 cardSection];
  if (!v3 || (*&v16[0] = v3, sub_1DA173718(0, &unk_1EDAE5400), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA36C0), (swift_dynamicCast() & 1) == 0))
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    goto LABEL_6;
  }

  v4 = *(&v14 + 1);
  if (!*(&v14 + 1))
  {
LABEL_6:
    result = sub_1DA179568(&v13, &qword_1ECBA36B8);
    v9 = xmmword_1DA2744D0;
    v7 = 0uLL;
    v8 = 0uLL;
    goto LABEL_7;
  }

  v5 = v15;
  __swift_project_boxed_opaque_existential_0(&v13, *(&v14 + 1));
  (*(v5 + 16))(v16, v1, v4, v5);
  v11 = v16[1];
  v12 = v16[0];
  v10 = v16[2];
  result = __swift_destroy_boxed_opaque_existential_0(&v13);
  v8 = v10;
  v7 = v11;
  v9 = v12;
LABEL_7:
  *a1 = v9;
  a1[1] = v7;
  a1[2] = v8;
  return result;
}

void sub_1DA2383A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___SearchUIRFCardSectionRowModelProvider_builderContext);
  v17[3] = sub_1DA25F004();
  v17[0] = v9;
  v10 = type metadata accessor for SearchUIRFCardSectionRowModel();
  v11 = objc_allocWithZone(v10);
  sub_1DA2259C8(v17, v16);
  sub_1DA25DB94();
  swift_dynamicCast();
  *&v11[OBJC_IVAR___SearchUIRFCardSectionRowModel__builderContext] = v15;
  v12 = sub_1DA25F234();
  v14.receiver = v11;
  v14.super_class = v10;
  v13 = objc_msgSendSuper2(&v14, sel_initWithResult_cardSection_isInline_queryId_itemIdentifier_, a2, a1, a3 & 1, a4, v12);

  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    __break(1u);
  }
}

id sub_1DA2385C8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1DA238600(void *a1)
{
  v1 = 0xE000000000000000;
  result = [a1 text_elements];
  if (result)
  {
    v3 = result;
    sub_1DA173718(0, &qword_1ECBA36E8);
    v4 = sub_1DA25F324();

    if (v4 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DA25F634())
    {
      v6 = 0;
      v24 = v4;
      v25 = v4 & 0xC000000000000001;
      v21 = v4 + 32;
      v22 = v4 & 0xFFFFFFFFFFFFFF8;
      v23 = i;
      while (1)
      {
        if (v25)
        {
          v8 = MEMORY[0x1DA747E20](v6, v4);
        }

        else
        {
          if (v6 >= *(v22 + 16))
          {
            goto LABEL_29;
          }

          v8 = *(v21 + 8 * v6);
        }

        v7 = v8;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        v10 = [v8 formatted_text];
        if (!v10)
        {
          goto LABEL_6;
        }

        v1 = v10;
        sub_1DA173718(0, &qword_1ECBA36F0);
        v11 = sub_1DA25F324();

        v26 = v7;
        if (v11 >> 62)
        {
          v12 = sub_1DA25F634();
          if (v12)
          {
LABEL_15:
            if (v12 < 1)
            {
              goto LABEL_28;
            }

            v13 = 0;
            do
            {
              if ((v11 & 0xC000000000000001) != 0)
              {
                v17 = MEMORY[0x1DA747E20](v13, v11);
              }

              else
              {
                v17 = *(v11 + 8 * v13 + 32);
              }

              v18 = v17;
              v19 = [v17 text];
              if (v19)
              {
                v14 = v19;
                v1 = sub_1DA25F244();
                v16 = v15;
              }

              else
              {
                v1 = 0;
                v16 = 0xE000000000000000;
              }

              ++v13;
              MEMORY[0x1DA747B40](v1, v16);
            }

            while (v12 != v13);
          }
        }

        else
        {
          v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12)
          {
            goto LABEL_15;
          }
        }

        i = v23;
        v4 = v24;
        v7 = v26;
LABEL_6:

        if (v6 == i)
        {

          result = 0;
          v1 = 0xE000000000000000;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

    result = 0;
  }

LABEL_32:
  v20 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v20 = result;
  }

  if (!v20)
  {

    return 0;
  }

  return result;
}

uint64_t sub_1DA2388A4(uint64_t a1, uint64_t a2)
{
  sub_1DA25F0C4();
  v4 = sub_1DA25F0B4();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1DA25DB94();
  sub_1DA25F0A4();
}

uint64_t sub_1DA238A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1DA25F064();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA25F0C4();
  v10 = sub_1DA25F0B4();
  (*(v7 + 104))(v9, *MEMORY[0x1E69D3988], v6);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  sub_1DA25DB94();
  sub_1DA25F094();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DA238FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, char *, uint64_t, void *))
{
  v20 = a6;
  v21 = a7;
  v8 = v7;
  v13 = sub_1DA25F064();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA25F0C4();
  v17 = sub_1DA25F0B4();
  (*(v14 + 104))(v16, *MEMORY[0x1E69D3988], v13);
  v18 = swift_allocObject();
  v18[2] = v8;
  v18[3] = a3;
  v18[4] = a4;
  sub_1DA25DB94();
  v21(a1, a2, v16, v20, v18);

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1DA23916C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = [objc_opt_self() defaultCenter];
  v6 = sub_1DA25F234();
  [v5 postNotificationName:v6 object:0];

  return a3(a1);
}

void sub_1DA2393EC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1DA25DE04();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_1DA239450()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = sub_1DA25F234();
  [v0 postNotificationName:v1 object:0];
}

id SearchUISportsKitUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchUISportsKitUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUISportsKitUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SearchUISportsKitUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUISportsKitUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1DA239804()
{
  v1 = OBJC_IVAR____TtC8SearchUI30SearchUIBasicAnimationSettings_duration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DA23989C(double a1)
{
  v3 = OBJC_IVAR____TtC8SearchUI30SearchUIBasicAnimationSettings_duration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1DA239994()
{
  v1 = OBJC_IVAR____TtC8SearchUI30SearchUIBasicAnimationSettings_delay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DA239A2C(double a1)
{
  v3 = OBJC_IVAR____TtC8SearchUI30SearchUIBasicAnimationSettings_delay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1DA239B84()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6979318]) init];
  v2 = OBJC_IVAR____TtC8SearchUI30SearchUIBasicAnimationSettings_duration;
  swift_beginAccess();
  [v1 setDuration_];
  return v1;
}

id sub_1DA239CC8()
{
  v1 = OBJC_IVAR____TtC8SearchUI30SearchUIBasicAnimationSettings_duration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithAnimationCurve_];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v3 timingParameters:v2];

  return v4;
}

id sub_1DA239E84(double a1, double a2)
{
  v4 = type metadata accessor for SearchUISpringAnimationSettings();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_delay] = 0;
  *&v5[OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_bounce] = a1;
  *&v5[OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_perceptualDuration] = a2;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id sub_1DA239F20(double a1, double a2)
{
  v4 = type metadata accessor for SearchUISpringAnimationSettings();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_delay] = 0;
  *&v5[OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_bounce] = a1;
  *&v5[OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_perceptualDuration] = a2;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

double sub_1DA239FE0()
{
  v1 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_bounce;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DA23A078(double a1)
{
  v3 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_bounce;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1DA23A170()
{
  v1 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_perceptualDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DA23A208(double a1)
{
  v3 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_perceptualDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1DA23A300()
{
  v1 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_delay;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DA23A398(double a1)
{
  v3 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_delay;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1DA23A4E8()
{
  v1 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_perceptualDuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_bounce;
  swift_beginAccess();
  return [objc_allocWithZone(MEMORY[0x1E69794A8]) initWithPerceptualDuration:v2 bounce:*(v0 + v3)];
}

id sub_1DA23A660()
{
  v1 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_perceptualDuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtC8SearchUI31SearchUISpringAnimationSettings_bounce;
  swift_beginAccess();
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithDuration:v2 bounce:*(v0 + v3)];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v4 timingParameters:0.0];

  return v5;
}

id static SearchUIBasicLayerAnimation.opacity(from:to:)(double a1, double a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v5 = type metadata accessor for SearchUIBasicLayerAnimation();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_keyPath];
  *v7 = 0x7974696361706FLL;
  *(v7 + 1) = 0xE700000000000000;
  *&v6[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_fromValue] = v3;
  *&v6[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_toValue] = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  return objc_msgSendSuper2(&v9, sel_init);
}

id static SearchUIBasicLayerAnimation.blur(from:to:)(double a1, double a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v5 = type metadata accessor for SearchUIBasicLayerAnimation();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_keyPath];
  *v7 = 0xD000000000000020;
  *(v7 + 1) = 0x80000001DA279700;
  *&v6[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_fromValue] = v3;
  *&v6[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_toValue] = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  return objc_msgSendSuper2(&v9, sel_init);
}

id static SearchUIBasicLayerAnimation.verticalScale(from:to:)(double a1, double a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v5 = type metadata accessor for SearchUIBasicLayerAnimation();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_keyPath];
  *v7 = 0xD000000000000011;
  *(v7 + 1) = 0x80000001DA279730;
  *&v6[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_fromValue] = v3;
  *&v6[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_toValue] = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  return objc_msgSendSuper2(&v9, sel_init);
}

id static SearchUIBasicLayerAnimation.horizontalScale(from:to:)(double a1, double a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v5 = type metadata accessor for SearchUIBasicLayerAnimation();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_keyPath];
  *v7 = 0xD000000000000011;
  *(v7 + 1) = 0x80000001DA279750;
  *&v6[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_fromValue] = v3;
  *&v6[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_toValue] = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_1DA23AEBC(void *a1)
{
  v2 = [a1 coreAnimation];

  v3 = sub_1DA25F234();

  [v2 setKeyPath_];

  [v2 setFromValue_];
  [v2 setToValue_];
  return v2;
}

uint64_t sub_1DA23B074(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E6979308]) init];
  v4 = *(v1 + OBJC_IVAR____TtC8SearchUI29SearchUIGroupedLayerAnimation_animations);
  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DA25F634())
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v18 = MEMORY[0x1E69E7CC0];

      result = sub_1DA25F5F4();
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v8 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1DA747E20](v8, v4);
        }

        else
        {
          v9 = *(v4 + 8 * v8 + 32);
          swift_unknownObjectRetain();
        }

        ++v8;
        v10 = [v9 animationWith_];
        swift_unknownObjectRelease();
        sub_1DA25F5D4();
        sub_1DA25F604();
        sub_1DA25F614();
        sub_1DA25F5E4();
      }

      while (i != v8);

      v6 = v18;
    }

    sub_1DA23BA18();
    v11 = sub_1DA25F314();
    [v3 setAnimations_];

    a1 = v6 >> 62 ? sub_1DA25F634() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v3;
    if (!a1)
    {
      break;
    }

    v4 = 0;
    v12 = 0.0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1DA747E20](v4, v6);
      }

      else
      {
        if (v4 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v13 = *(v6 + 8 * v4 + 32);
      }

      v14 = v13;
      v15 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v13 duration];
      v17 = v16;

      if (v12 <= v17)
      {
        v12 = v17;
      }

      ++v4;
      if (v15 == a1)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  v12 = 0.0;
LABEL_25:

  [v3 setDuration_];

  return v3;
}

id sub_1DA23B30C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = a4(a3);
  swift_unknownObjectRelease();

  return v8;
}

void static SearchUIAnimator.animate(layer:with:key:animations:delegate:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for SearchUIGroupedLayerAnimation();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC8SearchUI29SearchUIGroupedLayerAnimation_animations] = a5;
  v15.receiver = v11;
  v15.super_class = v10;

  v12 = objc_msgSendSuper2(&v15, sel_init);
  v13 = sub_1DA23B074(a2);
  [v13 setDelegate_];
  v14 = sub_1DA25F234();
  [a1 addAnimation:v13 forKey:v14];
}

uint64_t sub_1DA23B5FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_1DA25DB94();
  v3(a2);
}

id SearchUIAnimator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchUIAnimator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUIAnimator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1DA23B814(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id _s8SearchUI0A21UIBasicLayerAnimationC5scale4from2toAA0a7UILayerE0_p12CoreGraphics7CGFloatV_AJtFZ_0(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DA274680;
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v7 = type metadata accessor for SearchUIBasicLayerAnimation();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_keyPath];
  *v9 = 0xD000000000000011;
  *(v9 + 1) = 0x80000001DA279730;
  *&v8[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_fromValue] = v5;
  *&v8[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_toValue] = v6;
  v19.receiver = v8;
  v19.super_class = v7;
  *(v4 + 32) = objc_msgSendSuper2(&v19, sel_init);
  v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v12 = objc_allocWithZone(v7);
  v13 = &v12[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_keyPath];
  *v13 = 0xD000000000000011;
  *(v13 + 1) = 0x80000001DA279750;
  *&v12[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_fromValue] = v10;
  *&v12[OBJC_IVAR____TtC8SearchUI27SearchUIBasicLayerAnimation_toValue] = v11;
  v18.receiver = v12;
  v18.super_class = v7;
  *(v4 + 40) = objc_msgSendSuper2(&v18, sel_init);
  v14 = type metadata accessor for SearchUIGroupedLayerAnimation();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC8SearchUI29SearchUIGroupedLayerAnimation_animations] = v4;
  v17.receiver = v15;
  v17.super_class = v14;
  return objc_msgSendSuper2(&v17, sel_init);
}

unint64_t sub_1DA23BA18()
{
  result = qword_1ECBA3740;
  if (!qword_1ECBA3740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBA3740);
  }

  return result;
}

id _s8SearchUI0A10UIAnimatorC7animate4with10animations10completionSo22UIViewPropertyAnimatorCAA0A19UIAnimationSettings_p_yycySbcSgtFZ_0(void *a1, uint64_t (*a2)(uint64_t result), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [a1 propertyAnimator];
  v19 = a2;
  v20 = a3;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1DA2324B4;
  v18 = &block_descriptor_2;
  v11 = _Block_copy(&v15);
  sub_1DA25DB94();

  [v10 addAnimations_];
  _Block_release(v11);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v19 = sub_1DA23C204;
  v20 = v12;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1DA23B5FC;
  v18 = &block_descriptor_59;
  v13 = _Block_copy(&v15);
  sub_1DA23C23C(a4);

  [v10 addCompletion_];
  _Block_release(v13);
  [a1 delay];
  [v10 startAnimationAfterDelay_];
  return v10;
}

double keypath_getTm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_1DA23C1C4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1DA25DB94();
}

uint64_t sub_1DA23C204(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result == 0);
  }

  return result;
}

uint64_t sub_1DA23C23C(uint64_t result)
{
  if (result)
  {
    return sub_1DA25DB94();
  }

  return result;
}

unint64_t sub_1DA23C26C()
{
  result = qword_1ECBA3750;
  if (!qword_1ECBA3750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3750);
  }

  return result;
}

unint64_t sub_1DA23C2C4()
{
  result = qword_1ECBA3758;
  if (!qword_1ECBA3758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3758);
  }

  return result;
}

uint64_t sub_1DA23C350()
{
  v0 = sub_1DA25DE24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DA25DF34();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DA25F224();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DA25DE44();
  __swift_allocate_value_buffer(v6, qword_1ECBA56C0);
  __swift_project_value_buffer(v6, qword_1ECBA56C0);
  sub_1DA25F1C4();
  sub_1DA25DF24();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1DA25DE54();
}

uint64_t sub_1DA23C540@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3788);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_1DA25DE24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1DA25DF34();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1DA25F224();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1DA25DE44();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DA25F1C4();
  sub_1DA25DF24();
  (*(v6 + 104))(v8, *MEMORY[0x1E6968DF0], v5);
  sub_1DA25DE54();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_1DA25DCD4();
  v13 = sub_1DA25DCC4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

double sub_1DA23C870@<D0>(uint64_t a1@<X8>)
{
  sub_1DA25DB34();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_1DA23C8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA23C8E8, 0, 0);
}

uint64_t sub_1DA23C8E8()
{
  sub_1DA25DA04();
  *(v0 + 96) = *(v0 + 64);
  sub_1DA25DB34();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 104) = v1;
  *(v0 + 112) = *(v0 + 40);
  *(v0 + 128) = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_1DA23C9D8;

  return sub_1DA23E310(v2, v1, 0);
}

uint64_t sub_1DA23C9D8()
{
  v2 = *(*v1 + 96);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA23CBA8, 0, 0);
  }
}

uint64_t sub_1DA23CBA8()
{
  sub_1DA25DAF4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA23CC0C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBA2C30 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA25DE44();
  v3 = __swift_project_value_buffer(v2, qword_1ECBA56C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DA23CCC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA37B0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA37B8);
  MEMORY[0x1EEE9AC00](v1);
  sub_1DA25DD84();
  sub_1DA25DD74();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA37C0);
  sub_1DA25DD64();

  sub_1DA25DD74();
  sub_1DA25DD94();
  return sub_1DA25DD54();
}

uint64_t sub_1DA23CE70(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DA22C568;

  return sub_1DA23C8C4(a1, v5, v4);
}

uint64_t sub_1DA23CF1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA23D014();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA23CF44(uint64_t a1)
{
  v2 = sub_1DA23D598();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1DA23CF80(uint64_t *a1, int a2)
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

uint64_t sub_1DA23CFC8(uint64_t result, int a2, int a3)
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

uint64_t sub_1DA23D014()
{
  v0 = sub_1DA25DDA4();
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v27 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3780);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v25 = v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3788);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v24 = v23 - v7;
  v8 = sub_1DA25DE24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DA25DF34();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1DA25F224();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v23[0] = sub_1DA25DE44();
  v14 = *(v23[0] - 8);
  MEMORY[0x1EEE9AC00](v23[0]);
  v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3790);
  sub_1DA25F1C4();
  sub_1DA25DF24();
  v15 = *MEMORY[0x1E6968DF0];
  v16 = *(v9 + 104);
  v16(v11, v15, v8);
  sub_1DA25DE54();
  sub_1DA25F1C4();
  sub_1DA25DF24();
  v16(v11, v15, v8);
  v17 = v24;
  sub_1DA25DE54();
  (*(v14 + 56))(v17, 0, 1, v23[0]);
  v18 = sub_1DA25DAE4();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = *(*(v18 - 8) + 56);
  v19(v25, 1, 1, v18);
  v19(v26, 1, 1, v18);
  (*(v28 + 104))(v27, *MEMORY[0x1E695A500], v29);
  sub_1DA17B688();
  v20 = sub_1DA25DB64();
  sub_1DA25DA44();
  sub_1DA25DA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3798);
  *&v32 = type metadata accessor for SearchUIAppIntentRunner();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA37A0);
  v30 = sub_1DA25F254();
  v31 = v21;
  sub_1DA25F504();
  sub_1DA25DA14();
  return v20;
}

unint64_t sub_1DA23D598()
{
  result = qword_1ECBA37A8;
  if (!qword_1ECBA37A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA37A8);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1DA23D654()
{
  result = qword_1ECBA37C8;
  if (!qword_1ECBA37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA37C8);
  }

  return result;
}

unint64_t sub_1DA23D6AC()
{
  result = qword_1ECBA37D0;
  if (!qword_1ECBA37D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA37D0);
  }

  return result;
}

uint64_t sub_1DA23D738()
{
  v0 = sub_1DA25DE24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DA25DF34();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DA25F224();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DA25DE44();
  __swift_allocate_value_buffer(v6, qword_1ECBA56D8);
  __swift_project_value_buffer(v6, qword_1ECBA56D8);
  sub_1DA25F1C4();
  sub_1DA25DF24();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1DA25DE54();
}

uint64_t sub_1DA23D928@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3788);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_1DA25DE24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1DA25DF34();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1DA25F224();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1DA25DE44();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DA25F1C4();
  sub_1DA25DF24();
  (*(v6 + 104))(v8, *MEMORY[0x1E6968DF0], v5);
  sub_1DA25DE54();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_1DA25DCD4();
  v13 = sub_1DA25DCC4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

__n128 sub_1DA23DC34@<Q0>(__n128 *a1@<X8>)
{
  sub_1DA25DB34();
  result = v5;
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1] = v5;
  a1[2].n128_u64[0] = v6;
  return result;
}

uint64_t sub_1DA23DC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA23DCA4, 0, 0);
}

uint64_t sub_1DA23DCA4()
{
  sub_1DA25DA04();
  v0[11] = v0[7];
  sub_1DA25DB34();
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v0[12] = v1;
  v0[13] = v3;
  v0[14] = v4;
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1DA23DD8C;

  return sub_1DA23E3AC(v2, v1, 0);
}

uint64_t sub_1DA23DD8C()
{
  v2 = *(*v1 + 88);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA23DF40, 0, 0);
  }
}

uint64_t sub_1DA23DF40()
{
  sub_1DA25DAF4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA23DFA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBA2C38 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA25DE44();
  v3 = __swift_project_value_buffer(v2, qword_1ECBA56D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DA23E04C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3800);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3808);
  MEMORY[0x1EEE9AC00](v1);
  sub_1DA25DD84();
  sub_1DA25DD74();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3810);
  sub_1DA25DD64();

  sub_1DA25DD74();
  sub_1DA25DD94();
  return sub_1DA25DD54();
}

uint64_t sub_1DA23E1F0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DA22C568;

  return sub_1DA23DC80(a1, v5, v4);
}

uint64_t sub_1DA23E29C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DA23E6AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DA23E2C4(uint64_t a1)
{
  v2 = sub_1DA23EC40();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1DA23E310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_1DA25F394();
  v4[6] = sub_1DA25F384();
  v6 = sub_1DA25F364();

  return MEMORY[0x1EEE6DFA0](sub_1DA23ECE8, v6, v5);
}

uint64_t sub_1DA23E3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_1DA25F394();
  v4[6] = sub_1DA25F384();
  v6 = sub_1DA25F364();

  return MEMORY[0x1EEE6DFA0](sub_1DA23E448, v6, v5);
}

id sub_1DA23E448()
{
  v1 = v0[5] + OBJC_IVAR____TtC8SearchUI23SearchUIAppIntentRunner_delegate;
  if (swift_unknownObjectWeakLoadStrong() && (v2 = *(v1 + 8), v3 = swift_getObjectType(), v4 = (*(v2 + 8))(v3, v2), swift_unknownObjectRelease(), v4))
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = v0[2];
      v5 = v0[3];
      v7 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      v9 = (*(v7 + 16))(v6, v5, ObjectType, v7);
      swift_unknownObjectRelease();
      if (v9)
      {
        v10 = v0[4];
        if (v10)
        {
          v11 = objc_opt_self();
          v12 = v10;
          result = [v11 handlerForButton:v12 rowModel:v9 environment:v4];
          if (result)
          {
            v14 = result;

            [v14 executeWithTriggerEvent_];

LABEL_16:
            v17 = v0[1];
            goto LABEL_11;
          }

          __break(1u);
        }

        else
        {
          result = [objc_opt_self() handlerForRowModel:v9 environment:v4];
          if (result)
          {
            v14 = result;

            [v14 executeWithTriggerEvent_];
            goto LABEL_16;
          }
        }

        __break(1u);
        return result;
      }
    }

    sub_1DA23EC94();
    swift_allocError();
    *v16 = 2;
    swift_willThrow();
  }

  else
  {

    sub_1DA23EC94();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
  }

  v17 = v0[1];
LABEL_11:

  return v17();
}

uint64_t sub_1DA23E6AC()
{
  v0 = sub_1DA25DDA4();
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v27 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3780);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v25 = v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3788);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v24 = v23 - v7;
  v8 = sub_1DA25DE24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DA25DF34();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1DA25F224();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v23[0] = sub_1DA25DE44();
  v14 = *(v23[0] - 8);
  MEMORY[0x1EEE9AC00](v23[0]);
  v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA37E8);
  sub_1DA25F1C4();
  sub_1DA25DF24();
  v15 = *MEMORY[0x1E6968DF0];
  v16 = *(v9 + 104);
  v16(v11, v15, v8);
  sub_1DA25DE54();
  sub_1DA25F1C4();
  sub_1DA25DF24();
  v16(v11, v15, v8);
  v17 = v24;
  sub_1DA25DE54();
  (*(v14 + 56))(v17, 0, 1, v23[0]);
  v18 = sub_1DA25DAE4();
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v19 = *(*(v18 - 8) + 56);
  v19(v25, 1, 1, v18);
  v19(v26, 1, 1, v18);
  (*(v28 + 104))(v27, *MEMORY[0x1E695A500], v29);
  sub_1DA17BB88();
  v20 = sub_1DA25DB64();
  sub_1DA25DA44();
  sub_1DA25DA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3798);
  *&v32 = type metadata accessor for SearchUIAppIntentRunner();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA37A0);
  v30 = sub_1DA25F254();
  v31 = v21;
  sub_1DA25F504();
  sub_1DA25DA14();
  return v20;
}

unint64_t sub_1DA23EC40()
{
  result = qword_1ECBA37F0;
  if (!qword_1ECBA37F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA37F0);
  }

  return result;
}

unint64_t sub_1DA23EC94()
{
  result = qword_1ECBA37F8;
  if (!qword_1ECBA37F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA37F8);
  }

  return result;
}

unint64_t sub_1DA23ECF0()
{
  result = qword_1ECBA3818;
  if (!qword_1ECBA3818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3818);
  }

  return result;
}

unint64_t sub_1DA23ED48()
{
  result = qword_1ECBA3820;
  if (!qword_1ECBA3820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3820);
  }

  return result;
}

uint64_t sub_1DA23EDA0()
{
  sub_1DA25DA44();
  sub_1DA25DA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3798);
  type metadata accessor for SearchUIAppIntentRunner();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA37A0);
  sub_1DA25F254();
  sub_1DA25F504();
  result = sub_1DA25DA14();
  qword_1ECBA56F0 = result;
  return result;
}

uint64_t sub_1DA23EE50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3788);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1DA25DE24();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA25DF34();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DA25F224();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DA25DE44();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DA25DDD4();
  __swift_allocate_value_buffer(v10, qword_1ECBA56F8);
  __swift_project_value_buffer(v10, qword_1ECBA56F8);
  sub_1DA25F1C4();
  sub_1DA25DF24();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1DA25DE54();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1DA25DDC4();
}

uint64_t sub_1DA23F13C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3860);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v19 = &v16 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3788);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v18 = &v16 - v4;
  v5 = sub_1DA25DE24();
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DA25DF34();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1DA25F224();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1DA25F204();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1DA25DE44();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  sub_1DA25F1F4();
  sub_1DA25F1E4();
  sub_1DA25DB04();
  sub_1DA25F1D4();

  sub_1DA25F1E4();
  sub_1DA25DB04();
  sub_1DA25F1D4();

  sub_1DA25F1E4();
  sub_1DA25F214();
  sub_1DA25DF24();
  (*(v16 + 104))(v7, *MEMORY[0x1E6968DF0], v17);
  sub_1DA25DE54();
  (*(v12 + 56))(v18, 1, 1, v11);

  v13 = v19;
  sub_1DA25DD04();
  v14 = sub_1DA25DD14();
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  return sub_1DA25DD24();
}

uint64_t sub_1DA23F578@<X0>(uint64_t *a1@<X8>)
{
  sub_1DA25DA44();
  sub_1DA25DA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3798);
  type metadata accessor for SearchUIAppIntentRunner();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA37A0);
  sub_1DA25F254();
  sub_1DA25F504();
  result = sub_1DA25DA14();
  *a1 = result;
  return result;
}

uint64_t sub_1DA23F634(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DA23F658, 0, 0);
}

uint64_t sub_1DA23F658()
{
  sub_1DA25DA04();
  v0[5] = v0[2];
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1DA23F714;
  v2 = v0[3];

  return sub_1DA241CFC(v2);
}

uint64_t sub_1DA23F714(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA23F86C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1DA23F86C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA23F8D0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DA23F8F4, 0, 0);
}

uint64_t sub_1DA23F8F4()
{
  sub_1DA25DA04();
  v0[5] = v0[2];
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1DA23F9A8;

  return sub_1DA2426C4();
}

uint64_t sub_1DA23F9A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA23F86C, 0, 0);
  }

  else
  {
    v6 = *(v4 + 24);

    *v6 = a1;
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_1DA23FB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DA23FBC8;

  return MEMORY[0x1EEDB2EC0](a1, a2, a3, a4);
}

uint64_t sub_1DA23FBC8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1DA23FCCC()
{
  result = qword_1ECBA3828;
  if (!qword_1ECBA3828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3828);
  }

  return result;
}

unint64_t sub_1DA23FD24()
{
  result = qword_1ECBA3830;
  if (!qword_1ECBA3830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3838);
    sub_1DA17B884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3830);
  }

  return result;
}

uint64_t sub_1DA23FDA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1DA2402D8();
  *v5 = v2;
  v5[1] = sub_1DA22C568;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

uint64_t sub_1DA23FE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA22C568;

  return MEMORY[0x1EEDB3B80](a1, a2, a3);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1DA23FF28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DA23FF70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DA23FFDC@<X0>(void *a1@<X8>)
{
  if (qword_1ECBA2C40 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ECBA56F0;

  return sub_1DA25DB94();
}

uint64_t sub_1DA24004C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1DA240058@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBA2C48 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA25DDD4();
  v3 = __swift_project_value_buffer(v2, qword_1ECBA56F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DA240100(uint64_t a1)
{
  v2 = sub_1DA17B688();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1DA240150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DA231210;

  return MEMORY[0x1EEDB3F60](a1, a2, a3, a4);
}

uint64_t sub_1DA240214(uint64_t a1)
{
  v2 = sub_1DA17B9F0();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

unint64_t sub_1DA240270()
{
  result = qword_1ECBA3840;
  if (!qword_1ECBA3840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA3848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3840);
  }

  return result;
}

unint64_t sub_1DA2402D8()
{
  result = qword_1ECBA3850;
  if (!qword_1ECBA3850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA3850);
  }

  return result;
}

void sub_1DA240338(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v60 = a1;
  v58 = a2;
  v2 = sub_1DA25DE24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA25DF34();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DA25F224();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DA25DE44();
  MEMORY[0x1EEE9AC00](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3868);
  sub_1DA25F1C4();
  sub_1DA25DF24();
  v9 = *MEMORY[0x1E6968DF0];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  sub_1DA25DE54();
  v59 = sub_1DA25DB24();
  sub_1DA25F1C4();
  sub_1DA25DF24();
  v10(v5, v9, v2);
  v11 = v60;
  sub_1DA25DE54();
  v12 = sub_1DA25DB24();
  v13 = [v11 itemIdentifier];
  if (!v13)
  {
    __break(1u);
    goto LABEL_26;
  }

  v14 = v13;
  v57 = sub_1DA25F244();
  v16 = v15;

  v17 = [v11 cardSection];
  if (!v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v18 = v17;
  v19 = [v17 command];

  if (v19)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;
      v22 = [v20 applicationBundleIdentifier];
      if (v22)
      {
        v23 = v22;
        v24 = sub_1DA25F244();
        v26 = v25;
        v27 = [v21 searchString];
        v28 = v59;
        if (v27)
        {
          v29 = v27;
          v30 = sub_1DA25F244();
          v55 = v31;
          v56 = v30;

          v32 = SSAppNameForBundleId();

          if (v32)
          {
            v33 = sub_1DA25F244();
            v35 = v34;

            v61 = v33;
            v62 = v35;
            sub_1DA25DB14();
            v36 = v55;
            v37 = v56;
LABEL_17:
            v61 = v37;
            v62 = v36;
            sub_1DA25DB14();

            v53 = v57;
            v52 = v58;
LABEL_24:
            *v52 = v53;
            v52[1] = v16;
            v52[2] = v24;
            v52[3] = v26;
            v52[4] = v28;
            v52[5] = v12;
            return;
          }

          goto LABEL_28;
        }

        v19 = v23;
LABEL_23:

        v53 = 0;
        v16 = 0;
        v24 = 0;
        v26 = 0;
        v28 = 0;
        v12 = 0;
        v52 = v58;
        goto LABEL_24;
      }

LABEL_19:

      goto LABEL_23;
    }
  }

  v38 = [v11 cardSection];
  if (!v38)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v39 = v38;
  v19 = [v38 command];

  if (!v19)
  {

LABEL_22:
    v19 = v11;
    goto LABEL_23;
  }

  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  v28 = v59;
  if (!v40)
  {
    goto LABEL_19;
  }

  v41 = [v40 searchString];
  if (!v41)
  {

    goto LABEL_22;
  }

  v42 = v41;
  v43 = sub_1DA25F244();
  v56 = v44;

  v45 = [objc_opt_self() defaultBrowserBundleIdentifier];
  if (!v45)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v46 = v45;
  v55 = v43;
  v24 = sub_1DA25F244();
  v26 = v47;

  v48 = SSAppNameForBundleId();

  if (v48)
  {
    v49 = sub_1DA25F244();
    v51 = v50;

    v61 = v49;
    v62 = v51;
    sub_1DA25DB14();
    v37 = v55;
    v36 = v56;
    goto LABEL_17;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_1DA240924(uint64_t a1)
{
  v2 = sub_1DA25ED84();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3888);
    v9 = sub_1DA25F534();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1DA240F64(&qword_1ECBA3890, MEMORY[0x1E69DB0B8]);
      v16 = sub_1DA25F1A4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1DA240F64(&qword_1ECBA3898, MEMORY[0x1E69DB0B8]);
          v23 = sub_1DA25F1B4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1DA240C44(uint64_t a1)
{
  v2 = sub_1DA25EC14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3870);
    v9 = sub_1DA25F534();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1DA240F64(&qword_1ECBA3878, MEMORY[0x1E69DA970]);
      v16 = sub_1DA25F1A4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1DA240F64(&qword_1ECBA3880, MEMORY[0x1E69DA970]);
          v23 = sub_1DA25F1B4();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1DA240F64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DA240FB4()
{
  result = qword_1ECBA38A0;
  if (!qword_1ECBA38A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA38A0);
  }

  return result;
}

unint64_t sub_1DA24100C()
{
  result = qword_1ECBA38A8;
  if (!qword_1ECBA38A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA38A8);
  }

  return result;
}

uint64_t sub_1DA241064()
{
  sub_1DA25DA44();
  sub_1DA25DA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3798);
  type metadata accessor for SearchUIAppIntentRunner();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA37A0);
  sub_1DA25F254();
  sub_1DA25F504();
  result = sub_1DA25DA14();
  qword_1ECBA5710 = result;
  return result;
}

uint64_t sub_1DA241114()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3788);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1DA25DE24();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA25DF34();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1DA25F224();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DA25DE44();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DA25DDD4();
  __swift_allocate_value_buffer(v10, qword_1ECBA5718);
  __swift_project_value_buffer(v10, qword_1ECBA5718);
  sub_1DA25F1C4();
  sub_1DA25DF24();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1DA25DE54();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1DA25DDC4();
}

uint64_t sub_1DA241400()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3860);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3788);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_1DA25DE44();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1DA25F204();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1DA25F1F4();
  sub_1DA25F1E4();
  sub_1DA25DB04();
  sub_1DA25F1D4();

  sub_1DA25F1E4();
  sub_1DA25DE34();
  (*(v5 + 56))(v3, 1, 1, v4);

  sub_1DA25DCF4();
  return sub_1DA25DD24();
}

uint64_t sub_1DA241678(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DA24169C, 0, 0);
}

uint64_t sub_1DA24169C()
{
  sub_1DA25DA04();
  v0[5] = v0[2];
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1DA23F714;
  v2 = v0[3];

  return sub_1DA242034(v2);
}

uint64_t sub_1DA241758(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DA24177C, 0, 0);
}

uint64_t sub_1DA24177C()
{
  sub_1DA25DA04();
  v0[5] = v0[2];
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1DA23F9A8;

  return sub_1DA242984();
}

unint64_t sub_1DA241834()
{
  result = qword_1ECBA38B0;
  if (!qword_1ECBA38B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA38B0);
  }

  return result;
}

unint64_t sub_1DA24188C()
{
  result = qword_1ECBA38B8;
  if (!qword_1ECBA38B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA38C0);
    sub_1DA17BCF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA38B8);
  }

  return result;
}

uint64_t sub_1DA241910(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1DA241CA8();
  *v5 = v2;
  v5[1] = sub_1DA22C568;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DA2419D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DA241A20(uint64_t result, int a2, int a3)
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

uint64_t sub_1DA241A88@<X0>(void *a1@<X8>)
{
  if (qword_1ECBA2C58 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1ECBA5710;

  return sub_1DA25DB94();
}

uint64_t sub_1DA241AF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBA2C60 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA25DDD4();
  v3 = __swift_project_value_buffer(v2, qword_1ECBA5718);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DA241BA0(uint64_t a1)
{
  v2 = sub_1DA17BB88();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1DA241BF0(uint64_t a1)
{
  v2 = sub_1DA17BE00();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

unint64_t sub_1DA241C40()
{
  result = qword_1ECBA38C8;
  if (!qword_1ECBA38C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBA38D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA38C8);
  }

  return result;
}

unint64_t sub_1DA241CA8()
{
  result = qword_1ECBA38D8;
  if (!qword_1ECBA38D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA38D8);
  }

  return result;
}

uint64_t sub_1DA241CFC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_1DA25F394();
  v2[10] = sub_1DA25F384();
  v4 = sub_1DA25F364();

  return MEMORY[0x1EEE6DFA0](sub_1DA241D94, v4, v3);
}

uint64_t sub_1DA241D94()
{
  v1 = *(v0 + 72);

  v2 = v1 + OBJC_IVAR____TtC8SearchUI23SearchUIAppIntentRunner_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v32 = (*(v4 + 24))(ObjectType, v4);
    result = swift_unknownObjectRelease();
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  v6 = 0;
  v7 = *(v33 + 64);
  v8 = *(v7 + 16);
  v9 = v7 + 40;
  v29 = v7 + 40;
  v30 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v10 = (v9 + 16 * v6);
  while (v8 != v6)
  {
    if (v6 >= v8)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_23;
    }

    v31 = v6 + 1;
    v11 = v8;
    v13 = *(v10 - 1);
    v12 = *v10;

    sub_1DA242364(v13, v12, v32, (v33 + 16), v14, v15);
    v16 = *(v33 + 16);
    v17 = *(v33 + 24);
    v19 = *(v33 + 32);
    v18 = *(v33 + 40);
    v20 = *(v33 + 48);
    v21 = *(v33 + 56);
    v8 = v11;

    v10 += 2;
    ++v6;
    if (v17)
    {
      v22 = v30;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DA242C34(0, *(v30 + 16) + 1, 1, v30);
        v22 = result;
      }

      v24 = *(v22 + 16);
      v23 = *(v22 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_1DA242C34((v23 > 1), v24 + 1, 1, v22);
        v22 = result;
      }

      *(v22 + 16) = v24 + 1;
      v30 = v22;
      v25 = (v22 + 48 * v24);
      v25[4] = v16;
      v25[5] = v17;
      v25[6] = v19;
      v25[7] = v18;
      v25[8] = v20;
      v25[9] = v21;
      v6 = v31;
      v8 = v11;
      v9 = v29;
      goto LABEL_5;
    }
  }

  if (*(v30 + 16))
  {
    v26 = *(v33 + 8);

    return v26();
  }

  else
  {

    sub_1DA23EC94();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();
    v28 = *(v33 + 8);

    return v28();
  }
}

uint64_t sub_1DA242034(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_1DA25F394();
  v2[9] = sub_1DA25F384();
  v4 = sub_1DA25F364();

  return MEMORY[0x1EEE6DFA0](sub_1DA2420CC, v4, v3);
}

uint64_t sub_1DA2420CC()
{
  v1 = *(v0 + 64);

  v2 = v1 + OBJC_IVAR____TtC8SearchUI23SearchUIAppIntentRunner_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v30 = (*(v4 + 24))(ObjectType, v4);
    result = swift_unknownObjectRelease();
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  v6 = 0;
  v7 = *(v31 + 56);
  v8 = *(v7 + 16);
  v9 = v7 + 40;
  v27 = v7 + 40;
  v28 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v10 = (v9 + 16 * v6);
  while (v8 != v6)
  {
    if (v6 >= v8)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_23;
    }

    v29 = v6 + 1;
    v11 = v8;
    v13 = *(v10 - 1);
    v12 = *v10;

    sub_1DA242514(v13, v12, v30, (v31 + 16), v14);
    v15 = *(v31 + 16);
    v16 = *(v31 + 24);
    v17 = *(v31 + 32);
    v18 = *(v31 + 40);
    v19 = *(v31 + 48);
    v8 = v11;

    v10 += 2;
    ++v6;
    if (v16)
    {
      v20 = v28;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DA242D54(0, *(v28 + 16) + 1, 1, v28);
        v20 = result;
      }

      v22 = *(v20 + 16);
      v21 = *(v20 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_1DA242D54((v21 > 1), v22 + 1, 1, v20);
        v20 = result;
      }

      *(v20 + 16) = v22 + 1;
      v28 = v20;
      v23 = (v20 + 40 * v22);
      v23[4] = v15;
      v23[5] = v16;
      v23[6] = v17;
      v23[7] = v18;
      v23[8] = v19;
      v6 = v29;
      v8 = v11;
      v9 = v27;
      goto LABEL_5;
    }
  }

  if (*(v28 + 16))
  {
    v24 = *(v31 + 8);

    return v24();
  }

  else
  {

    sub_1DA23EC94();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();
    v26 = *(v31 + 8);

    return v26();
  }
}

void sub_1DA242364(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>)
{
  if (a3 >> 62)
  {
    goto LABEL_23;
  }

  v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = 0uLL; v9; i = 0uLL)
  {
    v11 = 0;
    v26 = a3 & 0xC000000000000001;
    while (1)
    {
      if (v26)
      {
        v12 = MEMORY[0x1DA747E20](v11, a3, a5, a6, 0);
      }

      else
      {
        if (v11 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v12 = *(a3 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = [v12 itemIdentifier];
      if (v15)
      {
        a4 = v15;
        v16 = sub_1DA25F244();
        v18 = v17;

        if (v16 == a1 && v18 == a2)
        {

LABEL_19:
          sub_1DA240338(v13, v25);
          i = v25[0];
          v21 = v25[1];
          v22 = v25[2];
LABEL_20:
          a4 = v23;
          goto LABEL_25;
        }

        v20 = sub_1DA25F6B4();

        if (v20)
        {
          goto LABEL_19;
        }
      }

      ++v11;
      i = 0uLL;
      if (v14 == v9)
      {
        v21 = 0uLL;
        v22 = 0uLL;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v9 = sub_1DA25F634();
  }

  v21 = 0uLL;
  v22 = 0uLL;
LABEL_25:
  *a4 = i;
  a4[1] = v21;
  a4[2] = v22;
}

void sub_1DA242514(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>, __n128 a5@<Q0>)
{
  if (a3 >> 62)
  {
    goto LABEL_23;
  }

  v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = 0uLL; v8; i = 0uLL)
  {
    v10 = 0;
    v26 = a3 & 0xC000000000000001;
    while (1)
    {
      if (v26)
      {
        v11 = MEMORY[0x1DA747E20](v10, a3, a5, 0);
      }

      else
      {
        if (v10 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v11 = *(a3 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = [v11 itemIdentifier];
      if (v14)
      {
        a4 = v14;
        v15 = sub_1DA25F244();
        v17 = v16;

        if (v15 == a1 && v17 == a2)
        {

LABEL_19:
          sub_1DA242E74(v12, v24);
          i = v24[0];
          v21 = v24[1];
          v20 = v25;
LABEL_20:
          a4 = v22;
          goto LABEL_25;
        }

        v19 = sub_1DA25F6B4();

        if (v19)
        {
          goto LABEL_19;
        }
      }

      ++v10;
      i = 0uLL;
      if (v13 == v8)
      {
        v20 = 0;
        v21 = 0uLL;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v8 = sub_1DA25F634();
  }

  v20 = 0;
  v21 = 0uLL;
LABEL_25:
  *a4 = i;
  a4[1] = v21;
  *(a4 + 4) = v20;
}

uint64_t sub_1DA2426C4()
{
  *(v1 + 64) = v0;
  sub_1DA25F394();
  *(v1 + 72) = sub_1DA25F384();
  v3 = sub_1DA25F364();

  return MEMORY[0x1EEE6DFA0](sub_1DA24275C, v3, v2);
}

uint64_t sub_1DA24275C()
{
  v1 = *(v0 + 64);

  v2 = v1 + OBJC_IVAR____TtC8SearchUI23SearchUIAppIntentRunner_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 24))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  if (v5 >> 62)
  {
LABEL_25:
    v6 = sub_1DA25F634();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (v6 != v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1DA747E20](v7, v5);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v9 = *(v5 + 8 * v7 + 32);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    sub_1DA240338(v9, (v0 + 16));
    v11 = *(v0 + 24);
    ++v7;
    if (v11)
    {
      v17 = *(v0 + 16);
      v20 = *(v0 + 40);
      v18 = *(v0 + 56);
      v19 = *(v0 + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1DA242C34(0, *(v8 + 2) + 1, 1, v8);
      }

      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      if (v13 >= v12 >> 1)
      {
        v8 = sub_1DA242C34((v12 > 1), v13 + 1, 1, v8);
      }

      *(v8 + 2) = v13 + 1;
      v14 = &v8[48 * v13];
      *(v14 + 4) = v17;
      *(v14 + 5) = v11;
      *(v14 + 6) = v19;
      *(v14 + 56) = v20;
      *(v14 + 9) = v18;
      v7 = v10;
    }
  }

  v15 = *(v0 + 8);

  return v15(v8);
}

uint64_t sub_1DA242984()
{
  *(v1 + 56) = v0;
  sub_1DA25F394();
  *(v1 + 64) = sub_1DA25F384();
  v3 = sub_1DA25F364();

  return MEMORY[0x1EEE6DFA0](sub_1DA242A1C, v3, v2);
}

uint64_t sub_1DA242A1C()
{
  v1 = *(v0 + 56);

  v2 = v1 + OBJC_IVAR____TtC8SearchUI23SearchUIAppIntentRunner_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 24))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  if (v5 >> 62)
  {
LABEL_25:
    v6 = sub_1DA25F634();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (v6 != v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1DA747E20](v7, v5);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v9 = *(v5 + 8 * v7 + 32);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    sub_1DA242E74(v9, (v0 + 16));
    v11 = *(v0 + 24);
    ++v7;
    if (v11)
    {
      v19 = *(v0 + 32);
      v17 = *(v0 + 16);
      v18 = *(v0 + 48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1DA242D54(0, *(v8 + 2) + 1, 1, v8);
      }

      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      if (v13 >= v12 >> 1)
      {
        v8 = sub_1DA242D54((v12 > 1), v13 + 1, 1, v8);
      }

      *(v8 + 2) = v13 + 1;
      v14 = &v8[40 * v13];
      *(v14 + 4) = v17;
      *(v14 + 5) = v11;
      *(v14 + 3) = v19;
      *(v14 + 8) = v18;
      v7 = v10;
    }
  }

  v15 = *(v0 + 8);

  return v15(v8);
}

char *sub_1DA242C34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA38E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DA242D54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA38E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DA242E74(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DA25DE24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DA25DF34();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1DA25F224();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1DA25DE44();
  MEMORY[0x1EEE9AC00](v10 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3868);
  sub_1DA25F1C4();
  sub_1DA25DF24();
  (*(v5 + 104))(v7, *MEMORY[0x1E6968DF0], v4);
  sub_1DA25DE54();
  v11 = sub_1DA25DB24();
  v12 = [a1 itemIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1DA25F244();
    v16 = v15;

    v17 = [a1 cardSection];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 command];

      if (v19)
      {
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (v20)
        {
          v21 = v20;
          v22 = [v20 tokenString];
          if (v22)
          {
            v23 = v22;
            v46 = sub_1DA25F244();
            v25 = v24;

            v26 = [v21 symbolImage];
            if (v26 && (v27 = v26, v28 = [v26 symbolName], v27, v28))
            {
              v29 = sub_1DA25F244();
              v31 = v30;
            }

            else
            {
              v29 = 0;
              v31 = 0;
            }

            v47 = v46;
            v48 = v25;
            goto LABEL_34;
          }

          goto LABEL_21;
        }
      }
    }

    v32 = [a1 cardSection];
    if (!v32 || (v33 = v32, v19 = [v32 command], v33, !v19))
    {

LABEL_21:

LABEL_23:
      v14 = 0;
      v16 = 0;
      v29 = 0;
      v31 = 0;
      v11 = 0;
LABEL_35:
      *a2 = v14;
      a2[1] = v16;
      a2[2] = v29;
      a2[3] = v31;
      a2[4] = v11;
      return;
    }

    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (!v34 || (v35 = v34, (v36 = [v34 card]) == 0))
    {

      goto LABEL_23;
    }

    v37 = v36;
    v31 = [v36 title];

    if (!v31)
    {

      v14 = 0;
      v16 = 0;
      v29 = 0;
      v11 = 0;
      goto LABEL_35;
    }

    v38 = sub_1DA25F244();
    v46 = v39;

    v40 = [v35 card];
    if (!v40)
    {
      v29 = 0;
      v31 = 0;
LABEL_33:
      v47 = v38;
      v48 = v46;
LABEL_34:

      sub_1DA25DB14();

      goto LABEL_35;
    }

    v41 = v38;
    v42 = v40;
    v29 = [v40 titleImage];

    if (v29)
    {
      objc_opt_self();
      v43 = swift_dynamicCastObjCClass();
      if (v43)
      {
        v44 = [v43 symbolName];

        if (v44)
        {
          v29 = sub_1DA25F244();
          v31 = v45;

LABEL_32:
          v38 = v41;
          goto LABEL_33;
        }
      }

      else
      {
      }

      v29 = 0;
    }

    v31 = 0;
    goto LABEL_32;
  }

  __break(1u);
}

uint64_t sub_1DA2433F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1DA23106C(a3, v25 - v10, &qword_1ECBA33B0);
  v12 = sub_1DA25F3C4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_1DA25DB94();
  if (v14 == 1)
  {
    sub_1DA179568(v11, &qword_1ECBA33B0);
  }

  else
  {
    sub_1DA25F3B4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1DA25F364();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1DA25F264() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1DA25DB94();
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1DA179568(a3, &qword_1ECBA33B0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DA179568(a3, &qword_1ECBA33B0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_1DA2436F0()
{
  v0 = MEMORY[0x1E69E7CD0];
  v7 = MEMORY[0x1E69E7CD0];
  result = [objc_opt_self() bundleIdentifierForApp_];
  if (result)
  {
    v2 = result;
    v3 = sub_1DA25F244();
    v5 = v4;

    sub_1DA2457E8(&v6, v3, v5);

    v0 = v7;
  }

  qword_1ECBA5730 = v0;
  return result;
}

uint64_t static SearchUIToolKitUtilities.performOpenIntent(for:bundleId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DA24384C;

  return sub_1DA246310(a1, a2, a3);
}

uint64_t sub_1DA24384C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1DA243948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_1DA243BA4(void *a1, int a2, void *aBlock)
{
  v3[2] = a1;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1DA25F244();
  v7 = v6;
  v3[4] = v6;
  v8 = a1;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_1DA243C94;

  return sub_1DA246310(v8, v5, v7);
}

uint64_t sub_1DA243C94(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v4)
  {
    v7 = *(v3 + 24);
    v7[2](v7, a1 & 1);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t static SearchUIToolKitUtilities.executeToolInvocation(from:completionHandler:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA33B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_1DA25F3C4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a4;
  sub_1DA231010(a1, a2);
  sub_1DA25DB94();
  sub_1DA2433F0(0, 0, v10, &unk_1DA2753A8, v12);
}

uint64_t sub_1DA243F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA38F8);
  v7[10] = swift_task_alloc();
  v8 = sub_1DA25ED14();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v9 = sub_1DA25EC44();
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA244094, 0, 0);
}

uint64_t sub_1DA244094()
{
  sub_1DA231010(v0[6], v0[7]);
  sub_1DA248C48(&qword_1ECBA3900, MEMORY[0x1E69DAA28]);
  sub_1DA248C48(&qword_1ECBA3908, MEMORY[0x1E69DAC80]);
  sub_1DA25E1E4();
  sub_1DA25ED04();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1DA2443AC;
  v2 = v0[13];

  return MEMORY[0x1EEE4AC90](v2);
}

uint64_t sub_1DA2443AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  v5 = v3[13];
  v6 = v3[12];
  v7 = v3[11];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    return MEMORY[0x1EEE6DFA0](sub_1DA244A7C, 0, 0);
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = swift_task_alloc();
    v3[20] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3910);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *v8 = v4;
    v8[1] = sub_1DA2445D8;
    v11 = v3[16];
    v12 = v3[10];

    return MEMORY[0x1EEE4AAB8](v12, v11, v9, OpaqueTypeConformance2);
  }
}

uint64_t sub_1DA2445D8()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1DA244C78;
  }

  else
  {
    sub_1DA179568(*(v2 + 80), &qword_1ECBA38F8);
    v3 = sub_1DA244704;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DA244704()
{
  if (qword_1ECBA2C88 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA25E2B4();
  __swift_project_value_buffer(v1, qword_1ECBA5778);
  v2 = sub_1DA25E294();
  v3 = sub_1DA25F484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DA169000, v2, v3, "Tool execution completed successfully", v4, 2u);
    MEMORY[0x1DA748F50](v4, -1, -1);
  }

  sub_1DA25F394();
  *(v0 + 176) = sub_1DA25F384();
  v6 = sub_1DA25F364();

  return MEMORY[0x1EEE6DFA0](sub_1DA244854, v6, v5);
}

uint64_t sub_1DA244854()
{
  v1 = *(v0 + 64);

  v1(1, 0);

  return MEMORY[0x1EEE6DFA0](sub_1DA2448D0, 0, 0);
}

uint64_t sub_1DA2448D0()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DA244978()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 64);

  v2(0, v1);

  return MEMORY[0x1EEE6DFA0](sub_1DA2449FC, 0, 0);
}

uint64_t sub_1DA2449FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DA244A7C()
{
  v15 = v0;
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[19];
  v0[23] = v1;
  if (qword_1ECBA2C88 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA25E2B4();
  __swift_project_value_buffer(v2, qword_1ECBA5778);
  v3 = v1;
  v4 = sub_1DA25E294();
  v5 = sub_1DA25F464();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1DA25F6D4();
    v10 = sub_1DA22535C(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DA169000, v4, v5, "Failed to execute tool invocation: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1DA748F50](v7, -1, -1);
    MEMORY[0x1DA748F50](v6, -1, -1);
  }

  sub_1DA25F394();
  v0[24] = sub_1DA25F384();
  v12 = sub_1DA25F364();

  return MEMORY[0x1EEE6DFA0](sub_1DA244978, v12, v11);
}

uint64_t sub_1DA244C78()
{
  v18 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v4 = v0[21];
  v0[23] = v4;
  if (qword_1ECBA2C88 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA25E2B4();
  __swift_project_value_buffer(v5, qword_1ECBA5778);
  v6 = v4;
  v7 = sub_1DA25E294();
  v8 = sub_1DA25F464();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_1DA25F6D4();
    v13 = sub_1DA22535C(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1DA169000, v7, v8, "Failed to execute tool invocation: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1DA748F50](v10, -1, -1);
    MEMORY[0x1DA748F50](v9, -1, -1);
  }

  sub_1DA25F394();
  v0[24] = sub_1DA25F384();
  v15 = sub_1DA25F364();

  return MEMORY[0x1EEE6DFA0](sub_1DA244978, v15, v14);
}

void sub_1DA244FE8(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1DA25DE04();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t static SearchUIToolKitUtilities.loadIcon(from:size:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA24507C, 0, 0);
}

uint64_t sub_1DA24507C()
{
  *(v0 + 48) = sub_1DA25E1D4();
  sub_1DA25F394();
  *(v0 + 56) = sub_1DA25F384();
  v2 = sub_1DA25F364();

  return MEMORY[0x1EEE6DFA0](sub_1DA24511C, v2, v1);
}

uint64_t sub_1DA24511C()
{

  v1 = sub_1DA25E1C4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DA245340(void *a1, void *aBlock, double a3, double a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  *(v4 + 32) = _Block_copy(aBlock);
  v6 = a1;
  v7 = sub_1DA25DEA4();
  v9 = v8;

  *(v4 + 40) = v7;
  *(v4 + 48) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1DA2453DC, 0, 0);
}

uint64_t sub_1DA2453DC()
{
  *(v0 + 56) = sub_1DA25E1D4();
  sub_1DA25F394();
  *(v0 + 64) = sub_1DA25F384();
  v2 = sub_1DA25F364();

  return MEMORY[0x1EEE6DFA0](sub_1DA24547C, v2, v1);
}

uint64_t sub_1DA24547C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v4 = sub_1DA25E1C4();
  sub_1DA225904(v2, v1);
  if (v3)
  {
    v5 = v0[4];
    (v5)[2](v5, v4);

    _Block_release(v5);
  }

  else
  {
  }

  v6 = v0[1];

  return v6();
}

SearchUIToolKitUtilities __swiftcall SearchUIToolKitUtilities.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1DA2455F8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DA2456F0;

  return v6(a1);
}

uint64_t sub_1DA2456F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DA2457E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1DA25F744();
  sub_1DA25F284();
  v8 = sub_1DA25F764();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1DA25F6B4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1DA245B98(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1DA245938()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3858);
  result = sub_1DA25F524();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1DA25F744();
      sub_1DA25F284();
      result = sub_1DA25F764();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1DA245B98(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1DA245938();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1DA245D18();
      goto LABEL_16;
    }

    sub_1DA245E74();
  }

  v10 = *v4;
  sub_1DA25F744();
  sub_1DA25F284();
  result = sub_1DA25F764();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1DA25F6B4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1DA25F6C4();
  __break(1u);
  return result;
}

void *sub_1DA245D18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3858);
  v2 = *v0;
  v3 = sub_1DA25F514();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DA245E74()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3858);
  result = sub_1DA25F524();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1DA25F744();

      sub_1DA25F284();
      result = sub_1DA25F764();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1DA2460AC(uint64_t a1, uint64_t a2)
{
  sub_1DA25F744();
  sub_1DA25F284();
  v4 = sub_1DA25F764();

  return sub_1DA246124(a1, a2, v4);
}

unint64_t sub_1DA246124(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1DA25F6B4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DA2461DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3960);
    v3 = sub_1DA25F644();
    v4 = a1 + 32;
    sub_1DA25DB94();
    while (1)
    {
      sub_1DA23106C(v4, &v13, &qword_1ECBA3958);
      v5 = v13;
      v6 = v14;
      result = sub_1DA2460AC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DA175134(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1DA246310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA38F8);
  v3[20] = swift_task_alloc();
  v4 = sub_1DA25ED14();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3918);
  v3[24] = swift_task_alloc();
  v5 = sub_1DA25EC44();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  v6 = sub_1DA25ED74();
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3920);
  v3[31] = swift_task_alloc();
  v7 = sub_1DA25ED64();
  v3[32] = v7;
  v3[33] = *(v7 - 8);
  v3[34] = swift_task_alloc();
  v8 = sub_1DA25EC24();
  v3[35] = v8;
  v3[36] = *(v8 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v9 = sub_1DA25ED44();
  v3[39] = v9;
  v3[40] = *(v9 - 8);
  v3[41] = swift_task_alloc();
  v10 = sub_1DA25DF34();
  v3[42] = v10;
  v3[43] = *(v10 - 8);
  v3[44] = swift_task_alloc();
  v11 = sub_1DA25EC04();
  v3[45] = v11;
  v3[46] = *(v11 - 8);
  v3[47] = swift_task_alloc();
  v12 = sub_1DA25ECA4();
  v3[48] = v12;
  v3[49] = *(v12 - 8);
  v3[50] = swift_task_alloc();
  v13 = sub_1DA25EC84();
  v3[51] = v13;
  v3[52] = *(v13 - 8);
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v14 = sub_1DA25ED84();
  v3[56] = v14;
  v3[57] = *(v14 - 8);
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA246844, 0, 0);
}

uint64_t sub_1DA246844()
{
  v107 = v0;
  if (qword_1ECBA2C68 != -1)
  {
    swift_once();
  }

  if (sub_1DA178A70(v0[18], v0[19], qword_1ECBA5730))
  {
    if (qword_1ECBA2C88 != -1)
    {
      swift_once();
    }

    v1 = sub_1DA25E2B4();
    __swift_project_value_buffer(v1, qword_1ECBA5778);

    v2 = sub_1DA25E294();
    v3 = sub_1DA25F464();

    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_17;
    }

    v5 = v0[18];
    v4 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v106[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DA22535C(v5, v4, v106);
    _os_log_impl(&dword_1DA169000, v2, v3, "Unable to perform OpenIntent: %s opted out", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1DA748F50](v7, -1, -1);
    v8 = v6;
LABEL_16:
    MEMORY[0x1DA748F50](v8, -1, -1);
LABEL_17:

LABEL_18:

    v29 = v0[1];

    return v29(0);
  }

  v9 = [v0[17] entityIdentifer];
  if (!v9)
  {
LABEL_12:
    if (qword_1ECBA2C88 != -1)
    {
      swift_once();
    }

    v26 = sub_1DA25E2B4();
    __swift_project_value_buffer(v26, qword_1ECBA5778);
    v2 = sub_1DA25E294();
    v27 = sub_1DA25F464();
    if (!os_log_type_enabled(v2, v27))
    {
      goto LABEL_17;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1DA169000, v2, v27, "Unable to perform OpenIntent: incomplete annotation", v28, 2u);
    v8 = v28;
    goto LABEL_16;
  }

  v10 = v0[17];
  v11 = v9;
  sub_1DA25F244();

  v12 = [v10 typeIdentifer];
  if (!v12)
  {

    goto LABEL_12;
  }

  v13 = v0[59];
  v14 = v0[56];
  v15 = v0[57];
  v17 = v0[18];
  v16 = v0[19];
  v18 = v12;
  v19 = sub_1DA25F244();
  v21 = v20;

  v0[60] = v19;
  v0[61] = v21;
  v22 = swift_allocObject();
  v22[2] = v17;
  v22[3] = v16;
  v22[4] = v19;
  v22[5] = v21;
  *v13 = v22;
  (*(v15 + 104))(v13, *MEMORY[0x1E69DB098], v14);
  sub_1DA25ECF4();

  v0[62] = sub_1DA25ECE4();
  v23 = v0[59];
  v25 = v0[56];
  v24 = v0[57];
  v85 = v19;
  v86 = v21;
  v31 = v0[53];
  v102 = v0[54];
  v105 = v0[52];
  v32 = v0[50];
  v100 = v0[51];
  v33 = v0;
  v34 = v0[49];
  v87 = v33[48];
  v88 = v33[47];
  v89 = v33[46];
  v90 = v33[45];
  v93 = v33[40];
  v95 = v33[41];
  v97 = v33[39];
  sub_1DA25EC74();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3928);
  v35 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1DA275380;
  v84 = *(v24 + 16);
  v84(v36 + v35, v23, v25);
  v37 = sub_1DA240924(v36);
  swift_setDeallocating();
  v38 = *(v24 + 8);
  v33[63] = v38;
  v33[64] = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v99 = v38;
  v38(v36 + v35, v25);
  swift_deallocClassInstance();
  MEMORY[0x1DA747530](v37);

  sub_1DA248C48(&qword_1ECBA3930, MEMORY[0x1E69DAAB8]);
  sub_1DA248C48(&qword_1ECBA3938, MEMORY[0x1E69DAAE0]);
  sub_1DA25ED34();

  (*(v34 + 8))(v32, v87);
  v39 = *(v105 + 8);
  v39(v31, v100);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3940);
  v40 = sub_1DA25EC14();
  v41 = *(v40 - 8);
  v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1DA275380;
  (*(v41 + 104))(v43 + v42, *MEMORY[0x1E69DA968], v40);
  v44 = sub_1DA240C44(v43);
  swift_setDeallocating();
  (*(v41 + 8))(v43 + v42, v40);
  swift_deallocClassInstance();
  *v88 = v44;
  (*(v89 + 104))(v88, *MEMORY[0x1E69DA940], v90);
  sub_1DA248C48(&qword_1ECBA3948, MEMORY[0x1E69DA950]);
  v45 = v102;
  sub_1DA25ED34();

  (*(v89 + 8))(v88, v90);
  v103 = v39;
  v39(v45, v100);
  sub_1DA25DF14();
  (*(v93 + 104))(v95, *MEMORY[0x1E69DAC60], v97);
  v46 = sub_1DA25ECD4();
  v47 = v33[55];
  v48 = v33[51];
  v50 = v33[43];
  v49 = v33[44];
  v51 = v33[42];
  (*(v33[40] + 8))(v33[41], v33[39]);
  (*(v50 + 8))(v49, v51);
  v103(v47, v48);
  if (*(v46 + 16) != 1)
  {
    v0 = v33;

    v67 = *(v46 + 16);

    if (v67)
    {
      v68 = v99;
      if (qword_1ECBA2C88 != -1)
      {
        swift_once();
      }

      v69 = sub_1DA25E2B4();
      __swift_project_value_buffer(v69, qword_1ECBA5778);

      v70 = sub_1DA25E294();
      v71 = sub_1DA25F454();

      v72 = os_log_type_enabled(v70, v71);
      v73 = v0[59];
      v74 = v0[56];
      if (v72)
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v106[0] = v76;
        *v75 = 136315138;
        v77 = sub_1DA22535C(v85, v86, v106);

        *(v75 + 4) = v77;
        v78 = "Too many OpenIntents found for type: %s. Unable to pick one!";
LABEL_35:
        _os_log_impl(&dword_1DA169000, v70, v71, v78, v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x1DA748F50](v76, -1, -1);
        MEMORY[0x1DA748F50](v75, -1, -1);

        v99(v73, v74);
        goto LABEL_18;
      }
    }

    else
    {
      v68 = v99;
      if (qword_1ECBA2C88 != -1)
      {
        swift_once();
      }

      v81 = sub_1DA25E2B4();
      __swift_project_value_buffer(v81, qword_1ECBA5778);

      v70 = sub_1DA25E294();
      v71 = sub_1DA25F454();

      v82 = os_log_type_enabled(v70, v71);
      v73 = v0[59];
      v74 = v0[56];
      if (v82)
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v106[0] = v76;
        *v75 = 136315138;
        v83 = sub_1DA22535C(v85, v86, v106);

        *(v75 + 4) = v83;
        v78 = "No usable OpenIntent found for type: %s";
        goto LABEL_35;
      }
    }

    v68(v73, v74);
    goto LABEL_18;
  }

  v52 = v33[58];
  v53 = v33[59];
  v54 = v33[56];
  v94 = v33[38];
  v101 = v33[37];
  v92 = v33[35];
  v56 = v33[33];
  v55 = v33[34];
  v57 = v33[31];
  v91 = v33[32];
  v58 = v33[29];
  v96 = v33[30];
  v98 = v33[28];
  v104 = v33[24];
  v59 = *(v33[36] + 16);
  v59();

  v84(v52, v53, v54);
  v60 = sub_1DA25ED94();
  (*(*(v60 - 8) + 56))(v57, 1, 1, v60);
  sub_1DA25ED54();
  v61 = swift_allocBox();
  (*(v56 + 16))(v62, v55, v91);
  *v96 = v61;
  (*(v58 + 104))(v96, *MEMORY[0x1E69DAE28], v98);
  (v59)(v101, v94, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA275380;
  *(inited + 32) = 0x746567726174;
  *(inited + 40) = 0xE600000000000000;
  v64 = MEMORY[0x1E69DAE80];
  *(inited + 72) = v98;
  *(inited + 80) = v64;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(v58 + 16))(boxed_opaque_existential_1, v96, v98);
  sub_1DA2461DC(inited);
  swift_setDeallocating();
  sub_1DA179568(inited + 32, &qword_1ECBA3958);
  v66 = sub_1DA25ECC4();
  (*(*(v66 - 8) + 56))(v104, 1, 1, v66);
  sub_1DA25EC34();
  sub_1DA25ED04();
  v79 = swift_task_alloc();
  v33[65] = v79;
  *v79 = v33;
  v79[1] = sub_1DA247970;
  v80 = v33[23];

  return MEMORY[0x1EEE4AC90](v80);
}

uint64_t sub_1DA247970(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[66] = a1;
  v3[67] = v1;

  v5 = v3[23];
  v6 = v3[22];
  v7 = v3[21];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    return MEMORY[0x1EEE6DFA0](sub_1DA247ED4, 0, 0);
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = swift_task_alloc();
    v3[68] = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3910);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *v8 = v4;
    v8[1] = sub_1DA247BA0;
    v11 = v3[27];
    v12 = v3[20];

    return MEMORY[0x1EEE4AAB8](v12, v11, v9, OpaqueTypeConformance2);
  }
}

uint64_t sub_1DA247BA0()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {
    v3 = sub_1DA248270;
  }

  else
  {
    sub_1DA179568(*(v2 + 160), &qword_1ECBA38F8);

    v3 = sub_1DA247CD8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DA247CD8()
{
  v17 = v0[63];
  v15 = v0[56];
  v16 = v0[59];
  v1 = v0[36];
  v13 = v0[35];
  v14 = v0[38];
  v2 = v0[33];
  v11 = v0[32];
  v12 = v0[34];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[25];
  v8 = v0[26];
  swift_unknownObjectRelease();

  (*(v8 + 8))(v5, v7);
  (*(v3 + 8))(v4, v6);
  (*(v2 + 8))(v12, v11);
  (*(v1 + 8))(v14, v13);
  v17(v16, v15);

  v9 = v0[1];

  return v9(1);
}

uint64_t sub_1DA247ED4()
{
  v33 = v0;
  v31 = v0[63];
  v29 = v0[56];
  v30 = v0[59];
  v1 = v0[36];
  v27 = v0[35];
  v28 = v0[38];
  v2 = v0[33];
  v26 = v0[34];
  v3 = v0[32];
  v4 = v0[29];
  v5 = v0[30];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[25];
  v9 = v0[26];

  (*(v9 + 8))(v7, v8);
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v26, v3);
  (*(v1 + 8))(v28, v27);
  v31(v30, v29);
  v10 = v0[67];
  if (qword_1ECBA2C88 != -1)
  {
    swift_once();
  }

  v11 = sub_1DA25E2B4();
  __swift_project_value_buffer(v11, qword_1ECBA5778);

  v12 = v10;
  v13 = sub_1DA25E294();
  v14 = sub_1DA25F464();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[61];
  if (v15)
  {
    v17 = v0[60];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = v19;
    *v18 = 136315394;
    v20 = sub_1DA22535C(v17, v16, &v32);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2080;
    swift_getErrorValue();
    v21 = sub_1DA25F6D4();
    v23 = sub_1DA22535C(v21, v22, &v32);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_1DA169000, v13, v14, "Failed to perform OpenIntent for type: %s. Error: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA748F50](v19, -1, -1);
    MEMORY[0x1DA748F50](v18, -1, -1);
  }

  else
  {
  }

  v24 = v0[1];

  return v24(0);
}

uint64_t sub_1DA248270()
{
  v33 = v0;
  v31 = v0[63];
  v29 = v0[56];
  v30 = v0[59];
  v1 = v0[36];
  v27 = v0[35];
  v28 = v0[38];
  v2 = v0[33];
  v25 = v0[32];
  v26 = v0[34];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[25];
  v8 = v0[26];
  swift_unknownObjectRelease();

  (*(v8 + 8))(v5, v7);
  (*(v3 + 8))(v4, v6);
  (*(v2 + 8))(v26, v25);
  (*(v1 + 8))(v28, v27);
  v31(v30, v29);
  v9 = v0[69];
  if (qword_1ECBA2C88 != -1)
  {
    swift_once();
  }

  v10 = sub_1DA25E2B4();
  __swift_project_value_buffer(v10, qword_1ECBA5778);

  v11 = v9;
  v12 = sub_1DA25E294();
  v13 = sub_1DA25F464();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[61];
  if (v14)
  {
    v16 = v0[60];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v17 = 136315394;
    v19 = sub_1DA22535C(v16, v15, &v32);

    *(v17 + 4) = v19;
    *(v17 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_1DA25F6D4();
    v22 = sub_1DA22535C(v20, v21, &v32);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_1DA169000, v12, v13, "Failed to perform OpenIntent for type: %s. Error: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA748F50](v18, -1, -1);
    MEMORY[0x1DA748F50](v17, -1, -1);
  }

  else
  {
  }

  v23 = v0[1];

  return v23(0);
}

uint64_t sub_1DA248614(uint64_t a1)
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
  v10[1] = sub_1DA231210;

  return sub_1DA243F3C(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t type metadata accessor for SearchUIToolKitUtilities()
{
  result = qword_1ECBA38F0;
  if (!qword_1ECBA38F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBA38F0);
  }

  return result;
}

uint64_t sub_1DA248734()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1DA231210;

  return sub_1DA245340(v2, v5, v3, v4);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();
  sub_1DA225904(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DA24884C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DA231210;

  return sub_1DA243BA4(v2, v3, v4);
}

uint64_t sub_1DA24890C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DA231210;

  return sub_1DA259804(v2, v3, v4);
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DA248A0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DA22C568;

  return sub_1DA2598EC(a1, v4, v5, v6);
}

uint64_t sub_1DA248AD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA231210;

  return sub_1DA2455F8(a1, v4);
}

uint64_t sub_1DA248B90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA22C568;

  return sub_1DA2455F8(a1, v4);
}

uint64_t sub_1DA248C48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AppDependency<>.init(manager:)()
{
  swift_getMetatypeMetadata();
  sub_1DA25F254();
  sub_1DA25F504();
  return sub_1DA25DA14();
}

uint64_t sub_1DA248D08(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v4 + 16))(&v6 - v3, a1);
  return sub_1DA25DB74();
}

void sub_1DA248E04(void *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = type metadata accessor for SearchUIAppIntentRunner();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC8SearchUI23SearchUIAppIntentRunner_delegate + 8] = 0;
  v5 = swift_unknownObjectWeakInit();
  v6 = &off_1F55BBB30;
  if (!Strong)
  {
    v6 = 0;
  }

  *(v5 + 8) = v6;
  swift_unknownObjectWeakAssign();
  v8.receiver = v4;
  v8.super_class = v3;
  v7 = objc_msgSendSuper2(&v8, sel_init);

  *a1 = v7;
}

SearchUIAppEntityAnnotator __swiftcall SearchUIAppEntityAnnotator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for SearchUIAppEntityAnnotator()
{
  result = qword_1ECBA3968;
  if (!qword_1ECBA3968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBA3968);
  }

  return result;
}

void *sub_1DA248FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA249168();
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DA25F634())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA747E20](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 itemIdentifier];
      if (v11)
      {
        v12 = v11;
        v13 = a2;
        v14 = sub_1DA25F244();
        v16 = v15;

        if (v14 == a1 && v16 == v13)
        {

LABEL_18:

          return v9;
        }

        a2 = v13;
        v18 = sub_1DA25F6B4();

        if (v18)
        {
          goto LABEL_18;
        }
      }

      ++v7;
      if (v10 == i)
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

  return 0;
}

id sub_1DA249168()
{
  result = [v0 dataSource];
  if (result)
  {
    v2 = result;
    v3 = [result snapshot];

    v4 = [v3 itemIdentifiers];
    v5 = sub_1DA25F324();

    v12 = MEMORY[0x1E69E7CC0];
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + 32;
      v8 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1DA2259C8(v7, v11);
        sub_1DA249F44(v11, &v9);
        sub_1DA249F54();
        if ((swift_dynamicCast() & 1) != 0 && v10)
        {
          MEMORY[0x1DA747BA0]();
          if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1DA25F334();
          }

          sub_1DA25F344();
          v8 = v12;
        }

        v7 += 32;
        --v6;
      }

      while (v6);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DA249308()
{
  v1 = [v0 searchUICommandEnvironment];

  return v1;
}

uint64_t sub_1DA24937C()
{
  v0 = sub_1DA25F204();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DA25F1F4();
  sub_1DA25F1E4();
  sub_1DA25F1D4();

  sub_1DA25F1E4();
  return sub_1DA25DE34();
}

uint64_t sub_1DA24949C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000656C62;
  v3 = 0x616C696176616E75;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x616C696176616E75;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v4 == 1)
  {
    v6 = 0xEB00000000656C62;
  }

  else
  {
    v6 = 0x80000001DA278970;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001DA278950;
  }

  if (*a2 != 1)
  {
    v3 = 0xD000000000000016;
    v2 = 0x80000001DA278970;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001DA278950;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DA25F6B4();
  }

  return v11 & 1;
}

uint64_t sub_1DA249580()
{
  sub_1DA25F744();
  sub_1DA25F284();

  return sub_1DA25F764();
}

uint64_t sub_1DA249630()
{
  sub_1DA25F284();
}

uint64_t sub_1DA2496CC()
{
  sub_1DA25F744();
  sub_1DA25F284();

  return sub_1DA25F764();
}

uint64_t sub_1DA249778@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA249EF8();
  *a1 = result;
  return result;
}

void sub_1DA2497A8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656C62;
  v4 = 0x616C696176616E75;
  if (v2 != 1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x80000001DA278970;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x80000001DA278950;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1DA24981C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_1DA25F394();
  v4[6] = sub_1DA25F384();
  v6 = sub_1DA25F364();

  return MEMORY[0x1EEE6DFA0](sub_1DA2498B8, v6, v5);
}

id sub_1DA2498B8()
{
  if ([objc_opt_self() isAppIntentsSupportEnabled])
  {
    v1 = v0[5] + OBJC_IVAR____TtC8SearchUI23SearchUIAppIntentRunner_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v1 + 8);
      ObjectType = swift_getObjectType();
      v4 = (*(v2 + 8))(ObjectType, v2);
      swift_unknownObjectRelease();
      if (v4)
      {
        if (v0[4] && swift_unknownObjectWeakLoadStrong() && (v6 = v0[3], v5 = v0[4], v7 = *(v1 + 8), v8 = swift_getObjectType(), v9 = (*(v7 + 16))(v6, v5, v8, v7), swift_unknownObjectRelease(), v9))
        {
          result = [objc_opt_self() handlerForCommand:v0[2] rowModel:v9 button:0 sectionModel:0 environment:v4];
          if (result)
          {
            v11 = result;

            [v11 executeWithTriggerEvent_];

LABEL_17:
            v13 = v0[1];
            goto LABEL_12;
          }
        }

        else
        {
          result = [objc_opt_self() handlerForCommand:v0[2] environment:v4];
          if (result)
          {
            v11 = result;

            [v11 executeWithTriggerEvent_];
            goto LABEL_17;
          }

          __break(1u);
        }

        __break(1u);
        return result;
      }
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  sub_1DA23EC94();
  swift_allocError();
  *v12 = v4;
  swift_willThrow();
  v13 = v0[1];
LABEL_12:

  return v13();
}

id SearchUIAppIntentRunner.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchUIAppIntentRunner.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUIAppIntentRunner();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of SearchUIAppIntentRunner.perform(command:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x90);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DA22C568;

  return v11(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for SearchUIAppIntentRunner.RunnerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchUIAppIntentRunner.RunnerError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DA249EA4()
{
  result = qword_1ECBA39F0;
  if (!qword_1ECBA39F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBA39F0);
  }

  return result;
}

uint64_t sub_1DA249EF8()
{
  v0 = sub_1DA25F674();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

_OWORD *sub_1DA249F44(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1DA249F54()
{
  result = qword_1ECBA3228;
  if (!qword_1ECBA3228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBA3228);
  }

  return result;
}

uint64_t sub_1DA249FB4(uint64_t a1)
{
  v26 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A28);
  v1 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v3 = v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A30);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DA23D598();
  sub_1DA25DC64();
  sub_1DA25DC54();
  swift_getKeyPath();
  v18[1] = sub_1DA17B884();
  sub_1DA25DB94();

  sub_1DA25DC44();

  sub_1DA25DC54();
  sub_1DA25DC74();
  v5 = sub_1DA25DBC4();
  v7 = v1 + 8;
  v6 = *(v1 + 8);
  v22 = v5;
  v23 = v6;
  v8 = v25;
  v6(v3, v25);
  v24 = v7;
  sub_1DA25DC64();
  sub_1DA25DC54();
  swift_getKeyPath();
  sub_1DA25DB94();

  sub_1DA25DC44();

  sub_1DA25DC54();
  sub_1DA25DC74();
  v21 = sub_1DA25DBC4();
  v9 = v23;
  v23(v3, v8);
  sub_1DA25DC64();
  sub_1DA25DC54();
  swift_getKeyPath();
  sub_1DA25DB94();

  sub_1DA25DC44();

  sub_1DA25DC54();
  sub_1DA25DC74();
  v20 = sub_1DA25DBC4();
  v9(v3, v25);
  sub_1DA25DC64();
  sub_1DA25DC54();
  swift_getKeyPath();
  sub_1DA25DB94();

  sub_1DA25DC44();

  sub_1DA25DC54();
  sub_1DA25DC74();
  v19 = sub_1DA25DBC4();
  v10 = v25;
  v11 = v23;
  v23(v3, v25);
  sub_1DA25DC64();
  sub_1DA25DC54();
  swift_getKeyPath();
  sub_1DA25DB94();

  sub_1DA25DC44();

  sub_1DA25DC54();
  sub_1DA25DC74();
  v12 = sub_1DA25DBC4();
  v11(v3, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A38);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DA275700;
  v14 = v21;
  *(v13 + 32) = v22;
  *(v13 + 40) = v14;
  v15 = v19;
  *(v13 + 48) = v20;
  *(v13 + 56) = v15;
  *(v13 + 64) = v12;
  v16 = sub_1DA25DBB4();

  return v16;
}

uint64_t sub_1DA24A5A4()
{

  sub_1DA25DB94();
  sub_1DA25DB94();
  return sub_1DA25DB44();
}

uint64_t sub_1DA24A65C()
{
  v0 = sub_1DA25DBE4();
  v1 = sub_1DA25DBE4();
  v2 = sub_1DA25DBE4();
  v3 = sub_1DA25DBE4();
  v4 = sub_1DA25DBE4();
  v5 = sub_1DA25DBE4();
  v6 = sub_1DA25DBE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A08);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DA275710;
  *(v7 + 32) = v0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  v8 = sub_1DA25DBD4();

  return v8;
}

uint64_t sub_1DA24A794(uint64_t a1)
{
  v21 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A10);
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v2 = &v19 - v1;
  v3 = sub_1DA25DBA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A18);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DA23EC40();
  sub_1DA25DC64();
  sub_1DA25DC54();
  swift_getKeyPath();
  v27 = sub_1DA17BCF8();
  sub_1DA25DB94();

  sub_1DA25DC44();

  sub_1DA25DC54();
  (*(v4 + 104))(v6, *MEMORY[0x1E695A1E0], v3);
  sub_1DA25DC34();
  (*(v4 + 8))(v6, v3);
  sub_1DA25DC54();
  sub_1DA25DC74();
  v8 = sub_1DA25DBC4();
  v9 = *(v28 + 8);
  v28 += 8;
  v24 = v8;
  v25 = v9;
  v10 = v26;
  v9(v2, v26);
  sub_1DA25DC64();
  sub_1DA25DC54();
  swift_getKeyPath();
  sub_1DA25DB94();

  sub_1DA25DC44();

  sub_1DA25DC54();
  sub_1DA25DC74();
  v23 = sub_1DA25DBC4();
  v25(v2, v10);
  sub_1DA25DC64();
  sub_1DA25DC54();
  swift_getKeyPath();
  sub_1DA25DB94();

  sub_1DA25DC44();

  sub_1DA25DC54();
  sub_1DA25DC74();
  v22 = sub_1DA25DBC4();
  v11 = v25;
  v25(v2, v10);
  sub_1DA25DC64();
  sub_1DA25DC54();
  swift_getKeyPath();
  sub_1DA25DB94();

  sub_1DA25DC44();

  sub_1DA25DC54();
  sub_1DA25DC74();
  v20 = sub_1DA25DBC4();
  v12 = v26;
  v11(v2, v26);
  sub_1DA25DC64();
  sub_1DA25DC54();
  swift_getKeyPath();
  sub_1DA25DB94();

  sub_1DA25DC44();

  sub_1DA25DC54();
  sub_1DA25DC74();
  v13 = sub_1DA25DBC4();
  v11(v2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A20);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DA275700;
  v15 = v23;
  *(v14 + 32) = v24;
  *(v14 + 40) = v15;
  v16 = v20;
  *(v14 + 48) = v22;
  *(v14 + 56) = v16;
  *(v14 + 64) = v13;
  v17 = sub_1DA25DBB4();

  return v17;
}

uint64_t sub_1DA24AE5C()
{

  sub_1DA25DB94();

  return sub_1DA25DB44();
}

uint64_t sub_1DA24AF0C(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = sub_1DA25DC24();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_1DA25DB94();

  a4(v10);
  sub_1DA25DC14();
  v11 = sub_1DA25DC04();
  (*(v7 + 8))(v9, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DA275380;
  *(v12 + 32) = v11;
  v13 = sub_1DA25DBF4();

  return v13;
}

uint64_t sub_1DA24B08C()
{
  v0 = sub_1DA25DBE4();
  v1 = sub_1DA25DBE4();
  v2 = sub_1DA25DBE4();
  v3 = sub_1DA25DBE4();
  v4 = sub_1DA25DBE4();
  v5 = sub_1DA25DBE4();
  v6 = sub_1DA25DBE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A08);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DA275710;
  *(v7 + 32) = v0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  v8 = sub_1DA25DBD4();

  return v8;
}

uint64_t sub_1DA24B21C()
{
  v0 = sub_1DA25DCA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DA23D014();
  v13 = v4;
  sub_1DA23D598();
  sub_1DA25DCB4();
  v5 = sub_1DA25DC94();
  v6 = *(v1 + 8);
  v6(v3, v0);
  v12 = sub_1DA23E6AC();
  v13 = v7;
  sub_1DA23EC40();
  sub_1DA25DCB4();
  v8 = sub_1DA25DC94();
  v6(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA39F8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DA273FD0;
  *(v9 + 32) = v5;
  *(v9 + 40) = v8;
  v10 = sub_1DA25DC84();

  return v10;
}

uint64_t sub_1DA24B584(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1DA24B658;

  return sub_1DA24B9F0(v6);
}

uint64_t sub_1DA24B658()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v4 = sub_1DA25F314();

  (v1)[2](v1, v4);

  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

id sub_1DA24B818()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchUIWeatherColor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DA24B870()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DA22C568;

  return sub_1DA24B584(v2, v3, v4);
}

uint64_t sub_1DA24B924(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DA231210;

  return sub_1DA2598EC(a1, v4, v5, v6);
}

uint64_t sub_1DA24B9F0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1DA25F174();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1DA25F0E4();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_1DA25F0F4();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_1DA25F154();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A40);
  v1[16] = swift_task_alloc();
  v6 = sub_1DA25DED4();
  v1[17] = v6;
  v1[18] = *(v6 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v7 = sub_1DA25F194();
  v1[21] = v7;
  v1[22] = *(v7 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v8 = sub_1DA25DF54();
  v1[25] = v8;
  v1[26] = *(v8 - 8);
  v1[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3A48);
  v1[28] = swift_task_alloc();
  v9 = sub_1DA25DFB4();
  v1[29] = v9;
  v1[30] = *(v9 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA24BDE0, 0, 0);
}

uint64_t sub_1DA24BDE0()
{
  v1 = [*(v0 + 16) location];
  if (!v1)
  {
    if (qword_1ECBA2C78 != -1)
    {
      swift_once();
    }

    v16 = sub_1DA25E2B4();
    __swift_project_value_buffer(v16, qword_1ECBA5748);
    v17 = sub_1DA25E294();
    v18 = sub_1DA25F464();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DA169000, v17, v18, "Invalid SFWeatherColor provided: no coordinates set!", v19, 2u);
      MEMORY[0x1DA748F50](v19, -1, -1);
    }

    goto LABEL_21;
  }

  v2 = v1;
  v3 = *(v0 + 16);
  (*(*(v0 + 240) + 104))(*(v0 + 264), *MEMORY[0x1E6984C98], *(v0 + 232));
  v4 = [v3 condition];
  if (v4)
  {
    v5 = *(v0 + 232);
    v6 = *(v0 + 240);
    v7 = *(v0 + 224);
    v8 = v4;
    sub_1DA25F244();

    sub_1DA25DFA4();
    v9 = *(v6 + 48);
    v10 = v9(v7, 1, v5);
    v11 = *(v0 + 256);
    v12 = *(v0 + 232);
    v13 = *(v0 + 240);
    v14 = *(v0 + 224);
    if (v10 == 1)
    {
      v15 = *(v13 + 32);
      v15(*(v0 + 256), *(v0 + 264), *(v0 + 232));
      if (v9(v14, 1, v12) != 1)
      {
        sub_1DA179568(*(v0 + 224), &qword_1ECBA3A48);
      }
    }

    else
    {
      (*(v13 + 8))(*(v0 + 264), *(v0 + 232));
      v15 = *(v13 + 32);
      v15(v11, v14, v12);
    }

    v15(*(v0 + 264), *(v0 + 256), *(v0 + 232));
  }

  [v2 lat];
  v21 = v20;
  [v2 lng];
  v23 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v21 longitude:v22];
  v24 = [objc_opt_self() _timeZoneAtLocation_];
  if (!v24)
  {
    if (qword_1ECBA2C78 != -1)
    {
      swift_once();
    }

    v35 = sub_1DA25E2B4();
    __swift_project_value_buffer(v35, qword_1ECBA5748);
    v36 = v23;
    v37 = sub_1DA25E294();
    v38 = sub_1DA25F464();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v36;
      *v40 = v23;
      v41 = v36;
      _os_log_impl(&dword_1DA169000, v37, v38, "Failed to determine timeZone from location: %@", v39, 0xCu);
      sub_1DA179568(v40, &qword_1ECBA3A50);
      MEMORY[0x1DA748F50](v40, -1, -1);
      MEMORY[0x1DA748F50](v39, -1, -1);
    }

    v42 = *(v0 + 264);
    v43 = *(v0 + 232);
    v44 = *(v0 + 240);

    (*(v44 + 8))(v42, v43);
LABEL_21:
    v79 = MEMORY[0x1E69E7CC0];
    goto LABEL_25;
  }

  v25 = *(v0 + 16);
  v26 = v24;
  sub_1DA25DF44();

  v74 = v23;
  [v23 coordinate];
  v27 = [v25 date];
  v28 = *(v0 + 160);
  v75 = v2;
  if (v27)
  {
    v30 = *(v0 + 144);
    v29 = *(v0 + 152);
    v32 = *(v0 + 128);
    v31 = *(v0 + 136);
    v33 = v27;
    sub_1DA25DEB4();

    v34 = *(v30 + 32);
    v34(v32, v29, v31);
    (*(v30 + 56))(v32, 0, 1, v31);
    v34(v28, v32, v31);
  }

  else
  {
    v45 = *(v0 + 136);
    v46 = *(v0 + 144);
    v47 = *(v0 + 128);
    (*(v46 + 56))(v47, 1, 1, v45);
    sub_1DA25DEC4();
    if ((*(v46 + 48))(v47, 1, v45) != 1)
    {
      sub_1DA179568(*(v0 + 128), &qword_1ECBA3A40);
    }
  }

  v78 = *(v0 + 264);
  v48 = *(v0 + 240);
  v59 = *(v0 + 248);
  v77 = *(v0 + 232);
  v71 = *(v0 + 216);
  v72 = *(v0 + 208);
  v49 = *(v0 + 192);
  v73 = *(v0 + 200);
  v50 = *(v0 + 176);
  v60 = *(v0 + 184);
  v51 = *(v0 + 160);
  v76 = *(v0 + 168);
  v53 = *(v0 + 136);
  v52 = *(v0 + 144);
  v54 = *(v0 + 120);
  v80 = *(v0 + 112);
  v63 = *(v0 + 104);
  v64 = *(v0 + 96);
  v65 = *(v0 + 88);
  v69 = *(v0 + 80);
  v70 = *(v0 + 72);
  v55 = *(v0 + 56);
  v61 = *(v0 + 64);
  v62 = *(v0 + 48);
  v66 = *(v0 + 40);
  v56 = *(v0 + 16);
  v67 = *(v0 + 32);
  v68 = *(v0 + 24);
  sub_1DA25F134();
  (*(v52 + 8))(v51, v53);
  [v56 cloudCoverLowAltPct];
  [v56 cloudCoverMidAltPct];
  [v56 cloudCoverHighAltPct];
  sub_1DA25F144();
  (*(v48 + 16))(v59, v78, v77);
  (*(v50 + 16))(v60, v49, v76);
  sub_1DA25F184();
  (*(v55 + 104))(v61, *MEMORY[0x1E69E20A0], v62);
  [v56 cloudCover];
  (*(v63 + 16))(v80, v54, v64);
  sub_1DA25F0D4();
  sub_1DA25F124();
  swift_allocObject();
  sub_1DA25F114();
  sub_1DA25F104();

  v79 = sub_1DA25F164();

  (*(v67 + 8))(v66, v68);
  (*(v69 + 8))(v65, v70);
  (*(v63 + 8))(v54, v64);
  (*(v50 + 8))(v49, v76);
  (*(v72 + 8))(v71, v73);
  (*(v48 + 8))(v78, v77);
LABEL_25:

  v57 = *(v0 + 8);

  return v57(v79);
}

uint64_t View.searchUIAppearance(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = 0;
  return View.searchUIAppearance(_:)(&v4, a2, a3);
}

uint64_t View.searchUIButtonAppearance(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = 1;
  return View.searchUIAppearance(_:)(&v4, a2, a3);
}

uint64_t View.searchUIAppearance(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SearchUIAppearance();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3568);
  swift_storeEnumTagMultiPayload();
  v10 = *(v6 + 20);
  *(v8 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3570);
  swift_storeEnumTagMultiPayload();
  v11 = v8 + *(v6 + 24);
  *v11 = v9;
  v11[8] = a1;
  MEMORY[0x1DA7472A0](v8, a2, v6, a3);
  return sub_1DA24CF18(v8);
}

id SearchUIAppearance.Style.color(for:)(id a1)
{
  v2 = *v1;
  if (!*(v1 + 8))
  {
LABEL_5:
    a1 = [a1 colorForProminence_];
    if (a1)
    {
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_7;
  }

  if (*(v1 + 8) == 1)
  {
    a1 = [a1 buttonColorForProminence_];
    if (a1)
    {
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_5;
  }

LABEL_7:
  result = [objc_opt_self() separatorColorForAppearance_];
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_8:

  return sub_1DA25EA34();
}

uint64_t sub_1DA24C918@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DA25E5E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3568);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1DA23106C(v2, &v14 - v9, &qword_1ECBA3568);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1DA25E304();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1DA25F474();
    v13 = sub_1DA25E864();
    sub_1DA25E284();

    sub_1DA25E5D4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1DA24CB18@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DA25E5E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3570);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SearchUIAppearance();
  sub_1DA23106C(v1 + *(v10 + 20), v9, &qword_1ECBA3570);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1DA17657C(v9, a1, &qword_1ECBA3AA0);
  }

  sub_1DA25F474();
  v12 = sub_1DA25E864();
  sub_1DA25E284();

  sub_1DA25E5D4();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t SearchUIAppearance.style.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for SearchUIAppearance();
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1DA24CD84(uint64_t a1)
{
  v2 = sub_1DA25E304();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1DA25E4B4();
}

uint64_t sub_1DA24CE70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3AA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DA23106C(a1, &v5 - v3, &qword_1ECBA3AA0);
  return sub_1DA25E534();
}

uint64_t sub_1DA24CF18(uint64_t a1)
{
  v2 = type metadata accessor for SearchUIAppearance();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SearchUIAppearance.Style(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SearchUIAppearance.Style(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DA24D044()
{
  sub_1DA25EF94();
  v1 = sub_1DA25EF84();
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DA24D174;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3300);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DA22CAA4;
  v0[13] = &block_descriptor_3;
  v0[14] = v2;
  [v1 providerLogoWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DA24D174()
{

  return MEMORY[0x1EEE6DFA0](sub_1DA24D254, 0, 0);
}

uint64_t sub_1DA24D254()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1DA24D43C(const void *a1)
{
  *(v1 + 152) = _Block_copy(a1);

  return MEMORY[0x1EEE6DFA0](sub_1DA24D4A4, 0, 0);
}

uint64_t sub_1DA24D4A4()
{
  sub_1DA25EF94();
  v1 = sub_1DA25EF84();
  v0[20] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DA24D5D4;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3300);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DA22CAA4;
  v0[13] = &block_descriptor_53;
  v0[14] = v2;
  [v1 providerLogoWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DA24D5D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1DA24D6B4, 0, 0);
}

uint64_t sub_1DA24D6B4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  (v1)[2](v1, v2);
  _Block_release(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DA24D754()
{
  sub_1DA25EF94();
  v1 = sub_1DA25EF84();
  v0[20] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1DA24D884;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBA3AB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DA24D9D0;
  v0[13] = &block_descriptor_3;
  v0[14] = v2;
  [v1 providerNameWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DA24D884()
{

  return MEMORY[0x1EEE6DFA0](sub_1DA24D964, 0, 0);
}

uint64_t sub_1DA24D964()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}