uint64_t sub_21DA30FF8(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return TTRTreeContentsQueryable.children(of:)(a1, v3, v4);
}

uint64_t sub_21DA31088@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_21DA310BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DA31120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_21DA31184(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x1FFFFFFFELL;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 202) = 0u;
  return result;
}

uint64_t sub_21DA313B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF97EC();
  v5 = MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return sub_21DBF97FC();
}

uint64_t sub_21DA314A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21DBF97EC();
  v6 = MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return sub_21DBF97FC();
}

uint64_t View.ttr_if<A>(_:transform:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a7;
  v42 = a6;
  v35 = a3;
  v36 = a2;
  v38 = a1;
  v37 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v35 - v22;
  v40 = sub_21DBF980C();
  v24 = *(v40 - 8);
  v25 = MEMORY[0x28223BE20](v40);
  v27 = &v35 - v26;
  if (v38)
  {
    v36(v39, v25);
    v28 = *(v17 + 16);
    v28(v23, v20, a5);
    v39 = a8;
    v29 = *(v17 + 8);
    v29(v20, a5);
    v28(v20, v23, a5);
    sub_21DA313B0(v20, a5);
    v29(v20, a5);
    v29(v23, a5);
    a8 = v39;
  }

  else
  {
    v30 = v37;
    v31 = *(v37 + 16);
    v31(v15, v39, a4, v25);
    (v31)(v12, v15, a4);
    sub_21DA314A8(v12, a5, a4);
    v32 = *(v30 + 8);
    v32(v12, a4);
    v32(v15, a4);
  }

  v43 = v41;
  v44 = v42;
  v33 = v40;
  swift_getWitnessTable();
  (*(v24 + 16))(a8, v27, v33);
  return (*(v24 + 8))(v27, v33);
}

uint64_t sub_21DA31934()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64D00);
  v1 = __swift_project_value_buffer(v0, qword_27CE64D00);
  if (qword_27CE570E8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CE8ECD0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t UIApplicationShortcutItem.actionURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21DBF7D4C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277D45800], v4, v6);
  v9 = sub_21DBF7D3C();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v12 = [v2 userInfo];
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE64D20);
  v14 = sub_21DBF9E6C();

  if (!*(v14 + 16))
  {

    goto LABEL_8;
  }

  sub_21D0CEF70(v9, v11);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  swift_unknownObjectRetain();

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_21DBFA16C();
    sub_21DBF54BC();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
LABEL_9:
  if (qword_27CE56FC0 != -1)
  {
    swift_once();
  }

  v18 = sub_21DBF84BC();
  __swift_project_value_buffer(v18, qword_27CE64D00);
  v19 = v2;
  v20 = sub_21DBF84AC();
  v21 = sub_21DBFAECC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v22 = 136315138;
    v24 = [v19 userInfo];
    if (v24)
    {
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE64D20);
      v26 = sub_21DBF9E6C();
    }

    else
    {
      v26 = 0;
    }

    v31 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64D18);
    v27 = sub_21DBFA1AC();
    v29 = sub_21D0CDFB4(v27, v28, &v32);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_21D0C9000, v20, v21, "Unexpectedly missing action URL absolute string in user info. Returning nil. {userInfo: %s}", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x223D46520](v23, -1, -1);
    MEMORY[0x223D46520](v22, -1, -1);
  }

  v30 = sub_21DBF54CC();
  return (*(*(v30 - 8) + 56))(a1, 1, 1, v30);
}

id TTRContainerWrappingView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

RemindersUICore::TTRContainerWrappingView::LayoutResult __swiftcall TTRContainerWrappingView.LayoutResult.init(totalRowCountIncludingHidden:hiddenArrangedSubviewCount:)(Swift::Int totalRowCountIncludingHidden, Swift::Int hiddenArrangedSubviewCount)
{
  *v2 = totalRowCountIncludingHidden;
  v2[1] = hiddenArrangedSubviewCount;
  result.hiddenArrangedSubviewCount = hiddenArrangedSubviewCount;
  result.totalRowCountIncludingHidden = totalRowCountIncludingHidden;
  return result;
}

double sub_21DA31E80()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_horizontalSpacing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_21DA31ED0(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_horizontalSpacing;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_21DA33CF8;
}

id sub_21DA31F64(double *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  v9 = *&v6[v7];
  *&v6[v7] = v5;
  if (v5 != v9)
  {
    return [v6 setNeedsInvalidation_];
  }

  return result;
}

double sub_21DA31FD4()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_verticalSpacing;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_21DA32024(uint64_t *a1, double a2)
{
  v4 = *a1;
  result = swift_beginAccess();
  v6 = *&v2[v4];
  *&v2[v4] = a2;
  if (v6 != a2)
  {
    return [v2 setNeedsInvalidation_];
  }

  return result;
}

uint64_t (*sub_21DA32090(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_verticalSpacing;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_21DA32124;
}

void sub_21DA32128(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[4] setNeedsInvalidation_];
  }

  free(v1);
}

uint64_t sub_21DA3218C()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount;
  swift_beginAccess();
  return *v1;
}

id sub_21DA321D8(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  v6 = &v2[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount];
  result = swift_beginAccess();
  v8 = *v6;
  v9 = v6[8];
  *v6 = a1;
  v6[8] = v5;
  if (a2)
  {
    if (v9)
    {
      return result;
    }

    return [v2 setNeedsInvalidation_];
  }

  if (v8 != a1)
  {
    LOBYTE(v9) = 1;
  }

  if (v9)
  {
    return [v2 setNeedsInvalidation_];
  }

  return result;
}

void (*sub_21DA32274(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_21DA32314;
}

void sub_21DA32314(id **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[6] + (*a1)[5];
  v4 = *(*a1 + 32);
  v5 = *v3;
  v6 = v3[8];
  *v3 = v2;
  v3[8] = v4;
  if (v4)
  {
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v2 == v5)
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

  [v1[5] setNeedsInvalidation_];
LABEL_9:

  free(v1);
}

uint64_t sub_21DA32398()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_viewsRequiringNewRows) setRepresentation];
  v2 = sub_21DBFAAAC();

  v3 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 56);
  v7 = (v4 + 63) >> 6;
  result = sub_21DBF8E0C();
  v9 = 0;
  while (v6)
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_21D181CE0(*(v2 + 48) + 40 * (v11 | (v9 << 6)), v14);
    sub_21DBFBE1C();
    sub_21D181D3C(v14);
    sub_21D114EC8();
    result = swift_dynamicCast();
    if ((result & 1) != 0 && v13)
    {
      MEMORY[0x223D42D80]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      result = sub_21DBFA6CC();
      v3 = v15;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      v12 = sub_21D19F288(v3);

      return v12;
    }

    v6 = *(v2 + 56 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_21DA3257C(uint64_t a1)
{
  v3 = sub_21DA32398();
  v4 = sub_21D322428(a1, v3);

  if (v4)
  {
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_viewsRequiringNewRows);
    [v5 removeAllObjects];
    if ((a1 & 0xC000000000000001) != 0)
    {
      sub_21DBFBD1C();
      sub_21D114EC8();
      sub_21DA3386C();
      sub_21DBFAB5C();
      a1 = v23;
      v6 = v24;
      v7 = v25;
      v8 = v26;
      v9 = v27;
    }

    else
    {
      v8 = 0;
      v10 = -1 << *(a1 + 32);
      v6 = a1 + 56;
      v7 = ~v10;
      v11 = -v10;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      else
      {
        v12 = -1;
      }

      v9 = v12 & *(a1 + 56);
    }

    v20 = v7;
    v13 = (v7 + 64) >> 6;
    if (a1 < 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v14 = v8;
      v15 = v9;
      v16 = v8;
      if (!v9)
      {
        break;
      }

LABEL_16:
      v17 = (v15 - 1) & v15;
      v18 = *(*(a1 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
      if (!v18)
      {
LABEL_22:
        sub_21D0CFAF8();
        return;
      }

      while (1)
      {
        [v5 addObject_];

        v8 = v16;
        v9 = v17;
        if ((a1 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_18:
        v19 = sub_21DBFBDBC();
        if (v19)
        {
          v21 = v19;
          sub_21D114EC8();
          swift_dynamicCast();
          v18 = v22;
          v16 = v8;
          v17 = v9;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_22;
      }

      v15 = *(v6 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void (*sub_21DA327B4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_21DA32398();
  return sub_21DA327FC;
}

void sub_21DA327FC(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = sub_21DBF8E0C();
    sub_21DA3257C(v2);
  }

  else
  {
    sub_21DA3257C(*a1);
  }
}

uint64_t sub_21DA32854(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_customSpacingByView) objectForKey_];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  swift_beginAccess();
  v4 = v3[2];

  return v4;
}

uint64_t sub_21DA328FC(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_customSpacingByView) objectForKey_];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  swift_beginAccess();
  v4 = v3[4];

  return v4;
}

__n128 sub_21DA329A4@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_lastLayoutResult);
  swift_beginAccess();
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

void sub_21DA32A74(double a1, double a2, double a3, double a4)
{
  v9 = [v4 visibleArrangedSubviews];
  if (v9)
  {
    v10 = v9;
    sub_21D114EC8();
    v11 = sub_21DBFA5EC();
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  sub_21DA32E0C(a1, a2, a3, a4);
  TTRWrappingArrangement.computeLayout()(&v38);
  rawValue = v38.frames._rawValue;
  if (v11 >> 62)
  {
    goto LABEL_25;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  sub_21D8ECC3C(&v38, v37);
  if (v13)
  {
    v14 = 0;
    v15 = (rawValue + 7);
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x223D44740](v14, v11);
      }

      else
      {
        if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          v13 = sub_21DBFBD7C();
          goto LABEL_6;
        }

        v16 = *(v11 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = rawValue[2];
      if (v14 == v18)
      {

        sub_21D6BA6FC(&v38);

        goto LABEL_21;
      }

      if (v14 >= v18)
      {
        goto LABEL_24;
      }

      v19 = v14 + 1;
      v20 = *(v15 - 3);
      v21 = *(v15 - 2);
      v22 = *(v15 - 1);
      v23 = *v15;
      v24 = v16;
      [v36 layoutFrameForArrangedSubview:v24 withProposedContentFrame:{v20, v21, v22, v23}];
      [v24 setUntransformedFrame_];
      v25 = v14 < v38.visibleSubviewCount;
      v26 = v14 < v38.visibleSubviewCount;
      if (v25)
      {
        v27 = 1.0;
      }

      else
      {
        v27 = 0.0;
      }

      [v24 setAlpha_];
      [v24 setUserInteractionEnabled_];

      v15 += 4;
      v14 = v19;
    }

    while (v13 != v19);
  }

  sub_21D6BA6FC(&v38);
LABEL_21:
  rowCount = v38.rowCount;
  v29 = rawValue[2];
  sub_21D6BA6FC(&v38);
  v30 = __OFSUB__(v29, v38.visibleSubviewCount);
  v31 = v29 - v38.visibleSubviewCount;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    v32 = &v36[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_lastLayoutResult];
    swift_beginAccess();
    *v32 = rowCount;
    *(v32 + 1) = v31;
    v32[16] = 0;
    v33 = [v36 subviews];
    sub_21D114EC8();
    v34 = sub_21DBFA5EC();

    sub_21D7F6724(v34);

    v35 = sub_21DBFA5DC();

    [v36 setAccessibilityElements_];
  }
}

uint64_t sub_21DA32E0C(double a1, double a2, double a3, double a4)
{
  v9 = [v4 visibleArrangedSubviews];
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = v9;
    sub_21D114EC8();
    v12 = sub_21DBFA5EC();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_horizontalSpacing;
  swift_beginAccess();
  v14 = *&v4[v13];
  v15 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_verticalSpacing;
  swift_beginAccess();
  v16 = *&v4[v15];
  v17 = &v4[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount];
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[8];
  v20 = *&v4[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_viewsRequiringNewRows];
  v21 = *&v4[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_customSpacingByView];
  type metadata accessor for TTRWrappingArrangement();
  v22 = swift_allocObject();
  *(v22 + 160) = 0u;
  *(v22 + 176) = 0u;
  *(v22 + 192) = 0u;
  *(v22 + 208) = 0u;
  *(v22 + 224) = v10;
  *(v22 + 248) = 0u;
  *(v22 + 296) = 0;
  *(v22 + 232) = 0u;
  *(v22 + 264) = 0u;
  *(v22 + 280) = 0u;
  *(v22 + 304) = 1;
  *(v22 + 16) = v4;
  *(v22 + 24) = v12;
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;
  *(v22 + 48) = a3;
  *(v22 + 56) = a4;
  *(v22 + 64) = v14;
  *(v22 + 72) = v16;
  *(v22 + 80) = v18;
  *(v22 + 88) = v19;
  *(v22 + 128) = 0;
  *(v22 + 96) = 0u;
  *(v22 + 112) = 0u;
  *(v22 + 136) = 1;
  *(v22 + 144) = v20;
  *(v22 + 152) = v21;
  v23 = v20;
  v24 = v21;
  v25 = v4;
  return v22;
}

uint64_t sub_21DA32FB8(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v6 = *&a2[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_customSpacingByView];
  v7 = [v6 objectForKey_];
  v8 = v7;
  if (!v7)
  {
    type metadata accessor for TTRWrappingArrangement.CustomSpacing();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 1;
    *(v8 + 32) = 0;
    *(v8 + 40) = 1;
  }

  type metadata accessor for TTRWrappingArrangement.CustomSpacing();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 1;
  *(inited + 32) = 0;
  *(inited + 40) = 1;
  swift_beginAccess();
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  swift_beginAccess();
  *(inited + 16) = v10;
  *(inited + 24) = v11;
  swift_beginAccess();
  v12 = *(v8 + 32);
  v13 = *(v8 + 40);
  swift_beginAccess();
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  *(v8 + 16) = a3;
  *(v8 + 24) = a4 & 1;
  if ((_s15RemindersUICore22TTRWrappingArrangementC13CustomSpacingC2eeoiySbAE_AEtFZ_0(v8, inited) & 1) == 0)
  {
    if (a4 & v13)
    {
      if (v7)
      {
        [v6 removeObjectForKey_];
      }
    }

    else if (!v7)
    {
      [v6 setObject:v8 forKey:a1];
    }

    [a2 setNeedsInvalidation_];
  }
}

uint64_t sub_21DA3317C(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v6 = *&a2[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_customSpacingByView];
  v7 = [v6 objectForKey_];
  v8 = v7;
  if (!v7)
  {
    type metadata accessor for TTRWrappingArrangement.CustomSpacing();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 1;
    *(v8 + 32) = 0;
    *(v8 + 40) = 1;
  }

  type metadata accessor for TTRWrappingArrangement.CustomSpacing();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 1;
  *(inited + 32) = 0;
  *(inited + 40) = 1;
  swift_beginAccess();
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  swift_beginAccess();
  *(inited + 16) = v10;
  *(inited + 24) = v11;
  swift_beginAccess();
  v12 = *(v8 + 32);
  v13 = *(v8 + 40);
  swift_beginAccess();
  *(inited + 32) = v12;
  *(inited + 40) = v13;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4 & 1;
  if ((_s15RemindersUICore22TTRWrappingArrangementC13CustomSpacingC2eeoiySbAE_AEtFZ_0(v8, inited) & 1) == 0)
  {
    if (v11 & a4)
    {
      if (v7)
      {
        [v6 removeObjectForKey_];
      }
    }

    else if (!v7)
    {
      [v6 setObject:v8 forKey:a1];
    }

    [a2 setNeedsInvalidation_];
  }
}

id TTRContainerWrappingView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_horizontalSpacing] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_verticalSpacing] = 0x4020000000000000;
  v9 = &v4[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount];
  *v9 = 0;
  v9[8] = 1;
  v10 = &v4[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_lastLayoutResult];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_viewsRequiringNewRows;
  *&v4[v11] = [objc_opt_self() hashTableWithOptions_];
  v12 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_customSpacingByView;
  *&v4[v12] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for TTRContainerWrappingView();
  return objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
}

id TTRContainerWrappingView.__allocating_init(arrangedSubviews:)(uint64_t a1)
{
  if (a1)
  {
    sub_21D114EC8();
    v2 = sub_21DBFA5DC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithArrangedSubviews_];

  return v3;
}

id TTRContainerWrappingView.init(arrangedSubviews:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_horizontalSpacing] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_verticalSpacing] = 0x4020000000000000;
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_lastLayoutResult];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_viewsRequiringNewRows;
  *&v1[v5] = [objc_opt_self() hashTableWithOptions_];
  v6 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_customSpacingByView;
  *&v1[v6] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
  if (a1)
  {
    sub_21D114EC8();
    v7 = sub_21DBFA5DC();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v1;
  v10.super_class = type metadata accessor for TTRContainerWrappingView();
  v8 = objc_msgSendSuper2(&v10, sel_initWithArrangedSubviews_, v7);

  return v8;
}

id TTRContainerWrappingView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRContainerWrappingView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_horizontalSpacing] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_verticalSpacing] = 0x4020000000000000;
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_lastLayoutResult];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_viewsRequiringNewRows;
  *&v1[v5] = [objc_opt_self() hashTableWithOptions_];
  v6 = OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_customSpacingByView;
  *&v1[v6] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for TTRContainerWrappingView();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id TTRContainerWrappingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRContainerWrappingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21DA3386C()
{
  result = qword_27CE58AA8;
  if (!qword_27CE58AA8)
  {
    sub_21D114EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE58AA8);
  }

  return result;
}

id sub_21DA33D08(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  sub_21DBF54BC();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v14 = result;
    sub_21D3050B8(v12, v9);
    v15 = sub_21DBF54CC();
    v16 = *(v15 - 8);
    v17 = 0;
    if ((*(v16 + 48))(v9, 1, v15) != 1)
    {
      v17 = sub_21DBF53FC();
      (*(v16 + 8))(v9, v15);
    }

    sub_21D17716C(MEMORY[0x277D84F90]);
    v18 = sub_21DBF9E5C();

    [v14 openSensitiveURL:v17 withOptions:v18];

    if (a2)
    {
      a2(a1);
    }

    v19 = [objc_opt_self() daemonUserDefaults];
    [v19 *off_27832F690[a4]];

    return sub_21D238E40(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21DA33F60(uint64_t a1, void (*a2)(void), uint64_t a3, char a4)
{
  if (a2)
  {
    a2();
  }

  v5 = [objc_opt_self() daemonUserDefaults];
  [v5 *off_27832F690[a4]];
}

id _s15RemindersUICore27TTRIAlertControllerAssemblyO21privacyAccessSettings4typeSo07UIAlertD0CAA14TTRPrivacyTypeO_tFZ_0(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 1)
  {
    if (*a1)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_13;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (v1 == 2)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (v1 != 3)
  {
    goto LABEL_14;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_15:
    swift_once();
  }

LABEL_13:
  sub_21DBF516C();
  sub_21DBF516C();
LABEL_14:
  v2 = sub_21DBFA12C();

  v3 = sub_21DBFA12C();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  return v4;
}

id _s15RemindersUICore27TTRIAlertControllerAssemblyO036privacyAlertToRequestLocationAuthForA10InCalendarSo07UIAlertD0CyFZ_0()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21DBF516C();
  v0 = sub_21DBFA12C();

  v1 = sub_21DBFA12C();

  v2 = [objc_opt_self() alertControllerWithTitle:v0 message:v1 preferredStyle:{1, 0x800000021DC528D0}];

  return v2;
}

id _s15RemindersUICore27TTRIAlertControllerAssemblyO22contactsAccessSettings14relatedFeature07didOpenH7Handler06cancelM0So07UIAlertD0CSgAA011TTRContactsg5AlertJ0O_ySo0O6ActionCcSgAOtFZ_0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = [objc_opt_self() daemonUserDefaults];
  v11 = v10;
  if (v9)
  {
    if (v9 == 1)
    {
      v12 = [v10 hasViewedContactsAccessAlertForMessaging];
    }

    else
    {
      v12 = [v10 hasViewedContactsAccessAlertForCalDAVSharing];
    }
  }

  else
  {
    v12 = [v10 hasViewedContactsAccessAlertForLocation];
  }

  v13 = v12;

  if ((v13 & 1) != 0 || [objc_opt_self() authorizationStatusForEntityType_] != 2)
  {
    return 0;
  }

  v27 = a5;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21DBF516C();
  v14 = sub_21DBFA12C();

  v15 = sub_21DBFA12C();

  v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:{1, 0x800000021DC480E0}];

  sub_21DBF516C();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = v9;
  sub_21D0D0E78(a2);
  v18 = sub_21DBFA12C();

  v32 = sub_21DA34B64;
  v33 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_21D1B6000;
  v31 = &block_descriptor_131;
  v19 = _Block_copy(&aBlock);

  v20 = objc_opt_self();
  v21 = [v20 actionWithTitle:v18 style:0 handler:{v19, 0x800000021DC47D70}];
  _Block_release(v19);

  [v16 addAction_];
  sub_21DBF516C();
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = v27;
  *(v22 + 32) = v9;
  sub_21D0D0E78(a4);
  v23 = sub_21DBFA12C();

  v32 = sub_21DA34B70;
  v33 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_21D1B6000;
  v31 = &block_descriptor_10_4;
  v24 = _Block_copy(&aBlock);

  v25 = [v20 actionWithTitle:v23 style:1 handler:{v24, 0x800000021DC52340}];
  _Block_release(v24);

  [v16 addAction_];
  return v16;
}

uint64_t sub_21DA34B84()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F1E0);
  v1 = __swift_project_value_buffer(v0, qword_280D0F1E0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21DA34C9C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v5 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAC0);
    sub_21DBFA1AC();
    MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
    v8 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
    sub_21DBF625C();
  }

  return swift_unknownObjectRelease();
}

void (*sub_21DA34E48(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21DA34EE8;
}

void sub_21DA34EE8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      v3[3] = *v3[5];
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAC0);
      sub_21DBFA1AC();
      MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
      v8 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
      sub_21DBF625C();
    }
  }

  free(v3);
}

void sub_21DA350A4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_21DA35104()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t TTRShowRemindersInListDataModelSource.__allocating_init(store:list:countCompleted:sortingStyle:canChangeSortingStyle:userDefaults:)(void *a1, void *a2, _BYTE *a3, uint64_t a4, int a5, uint64_t a6)
{
  LODWORD(v43) = a5;
  v11 = swift_allocObject();
  LOBYTE(a3) = *a3;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list) = 0;
  p_info = _TtC15RemindersUICore18TTRIPrivacyChecker.info;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_layoutContextInstance) = 0;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_dataViewMonitor) = 0;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_shouldSkipReloadingListUponChangingSortingStyle) = 0;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_store) = a1;
  swift_beginAccess();
  *(v11 + v12) = a2;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_countCompleted) = a3;
  sub_21D0D32E4(a6, v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults);
  v14 = a1;
  if (a2)
  {
    v15 = [a2 objectID];
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 2;
  }

  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v17 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v18 = swift_allocObject();
  v19 = sub_21D193548(v15, v16, v17, v18);
  v20 = _TtC15RemindersUICore18TTRIPrivacyChecker.info;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_showCompletedContextInstance) = v19;
  type metadata accessor for TTRRemindersListDataModelSourceHideEmptySectionsContext();
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_hideEmptySectionsContextInstance) = v21;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 18) = 0;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_tipKitContextInstance) = v22;
  type metadata accessor for TTRRemindersListDataModelSourceNewReminderContext();
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x277D84FA0];
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_newReminderContextInstance) = v23;
  v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v25 = sub_21DBF70DC();
  v26 = *(v25 - 8);
  v27 = v11 + v24;
  v28 = a4;
  (*(v26 + 16))(v27, a4, v25);
  *(v11 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v11 + 16) = v43 & 1;
  if (a2)
  {
    v29 = type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
    v44 = a2;
    v45 = 0;
    v30 = *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults + 24);
    v31 = *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults + 32);
    v32 = __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults), v30);
    v43 = &v42;
    v33 = MEMORY[0x28223BE20](v32);
    v34 = v28;
    v36 = &v42 - v35;
    (*(v37 + 16))(&v42 - v35, v33);
    v38 = *(v31 + 8);

    a2 = sub_21D6F1094(&v44, v36, v29, v30, v38);

    __swift_destroy_boxed_opaque_existential_0(a6);
    (*(v26 + 8))(v34, v25);
    if (a2)
    {
      swift_beginAccess();
      a2[4] = &protocol witness table for TTRShowRemindersInListDataModelSource;
      swift_unknownObjectWeakAssign();
    }

    p_info = (_TtC15RemindersUICore18TTRIPrivacyChecker + 32);
    v20 = (_TtC15RemindersUICore18TTRIPrivacyChecker + 32);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(a6);
    (*(v26 + 8))(a4, v25);
  }

  *(&p_info[433]->flags + v11) = a2;

  v39 = *(&v20[430]->flags + v11);
  swift_beginAccess();
  *(v39 + 24) = &protocol witness table for TTRShowRemindersInListDataModelSource;
  swift_unknownObjectWeakAssign();
  v40 = *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_hideEmptySectionsContextInstance);
  swift_beginAccess();
  *(v40 + 24) = &protocol witness table for TTRShowRemindersInListDataModelSource;
  swift_unknownObjectWeakAssign();

  return v11;
}

uint64_t TTRShowRemindersInListDataModelSource.init(store:list:countCompleted:sortingStyle:canChangeSortingStyle:userDefaults:)(void *a1, void *a2, char *a3, uint64_t a4, int a5, uint64_t a6)
{
  LODWORD(v43) = a5;
  v11 = *a3;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list) = 0;
  p_info = _TtC15RemindersUICore18TTRIPrivacyChecker.info;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_layoutContextInstance) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_dataViewMonitor) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_shouldSkipReloadingListUponChangingSortingStyle) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_store) = a1;
  swift_beginAccess();
  *(v6 + v12) = a2;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_countCompleted) = v11;
  sub_21D0D32E4(a6, v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults);
  v14 = a1;
  if (a2)
  {
    v15 = [a2 objectID];
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 2;
  }

  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v17 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v18 = swift_allocObject();
  v19 = sub_21D193548(v15, v16, v17, v18);
  v20 = _TtC15RemindersUICore18TTRIPrivacyChecker.info;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_showCompletedContextInstance) = v19;
  type metadata accessor for TTRRemindersListDataModelSourceHideEmptySectionsContext();
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_hideEmptySectionsContextInstance) = v21;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 18) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_tipKitContextInstance) = v22;
  type metadata accessor for TTRRemindersListDataModelSourceNewReminderContext();
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_newReminderContextInstance) = v23;
  v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v25 = sub_21DBF70DC();
  v26 = *(v25 - 8);
  v27 = v6 + v24;
  v28 = a4;
  (*(v26 + 16))(v27, a4, v25);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v6 + 16) = v43 & 1;
  if (a2)
  {
    v29 = type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
    v44 = a2;
    v45 = 0;
    v30 = *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults + 24);
    v31 = *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults + 32);
    v32 = __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults), v30);
    v43 = &v42;
    v33 = MEMORY[0x28223BE20](v32);
    v34 = v28;
    v36 = &v42 - v35;
    (*(v37 + 16))(&v42 - v35, v33);
    v38 = *(v31 + 8);

    a2 = sub_21D6F1094(&v44, v36, v29, v30, v38);

    __swift_destroy_boxed_opaque_existential_0(a6);
    (*(v26 + 8))(v34, v25);
    if (a2)
    {
      swift_beginAccess();
      a2[4] = &protocol witness table for TTRShowRemindersInListDataModelSource;
      swift_unknownObjectWeakAssign();
    }

    p_info = (_TtC15RemindersUICore18TTRIPrivacyChecker + 32);
    v20 = (_TtC15RemindersUICore18TTRIPrivacyChecker + 32);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(a6);
    (*(v26 + 8))(a4, v25);
  }

  *(&p_info[433]->flags + v6) = a2;

  v39 = *(&v20[430]->flags + v6);
  swift_beginAccess();
  *(v39 + 24) = &protocol witness table for TTRShowRemindersInListDataModelSource;
  swift_unknownObjectWeakAssign();
  v40 = *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_hideEmptySectionsContextInstance);
  swift_beginAccess();
  *(v40 + 24) = &protocol witness table for TTRShowRemindersInListDataModelSource;
  swift_unknownObjectWeakAssign();

  return v6;
}

void sub_21DA35ABC(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = qword_280D17EB8;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_280D0F1E0);
  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAEDC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21D0C9000, v8, v9, "TTRShowRemindersInListDataModelSource start synchronously", v10, 2u);
    MEMORY[0x223D46520](v10, -1, -1);
  }

  v11 = sub_21DA36F58(v6);
  if ((v11 & 1) == 0)
  {
LABEL_8:
    if (qword_280D17EB8 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_280D0F1E0);
    v13 = sub_21DBF84AC();
    v14 = sub_21DBFAEDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21D0C9000, v13, v14, "TTRShowRemindersInListDataModelSource start asynchronously", v15, 2u);
      MEMORY[0x223D46520](v15, -1, -1);
    }

    v16 = 10;
    sub_21DA39670(&v16);
  }
}

void sub_21DA35CB4(void *a1, char a2)
{
  v5 = sub_21DBF70DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v12 = *(v2 + v11);
  *(v2 + v11) = a1;
  v13 = a1;
  v14 = [v13 objectID];
  v15 = v14;
  if (v12)
  {
    v16 = [v12 objectID];
    v17 = v16;
    if (v15)
    {
      if (v16)
      {
        sub_21D0D8CF0(0, &qword_280D17880);
        v18 = sub_21DBFB63C();

        if (v18)
        {
          goto LABEL_13;
        }

LABEL_8:
        if (*(v2 + 16) == 1)
        {
          v19 = [v13 sortingStyle];
          v20 = sub_21DBFA16C();
          v22 = v21;
          if (v20 == sub_21DBFA16C() && v22 == v23)
          {
          }

          else
          {
            v24 = sub_21DBFC64C();

            if ((v24 & 1) == 0)
            {
              v27 = [v13 sortingStyle];
              sub_21DBFAF7C();

              goto LABEL_18;
            }
          }
        }

        sub_21DBF70AC();
LABEL_18:
        v25 = v29;
        (*(v6 + 16))(v29, v10, v5);
        v26 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
        swift_beginAccess();
        (*(v6 + 40))(v2 + v26, v25, v5);
        swift_endAccess();
        v30[0] = 0;
        sub_21DA39670(v30);

        (*(v6 + 8))(v10, v5);
        return;
      }

LABEL_7:

      goto LABEL_8;
    }

    v15 = v16;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  else if (v14)
  {
    goto LABEL_7;
  }

LABEL_13:
  if (a2)
  {

    sub_21D852368();
  }
}

uint64_t sub_21DA36094()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  type metadata accessor for TTRShowRemindersInListDataModelSourceDeleteCompletedContext(0);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC15RemindersUICore59TTRShowRemindersInListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  *(v3 + v4) = [v2 objectID];
  v5 = *MEMORY[0x277D45950];
  v6 = sub_21DBF806C();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  return v3;
}

uint64_t TTRShowRemindersInListDataModelSourceDeleteCompletedContext.__allocating_init(list:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC15RemindersUICore59TTRShowRemindersInListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = [a1 objectID];

  *(v2 + v3) = v4;
  v5 = *MEMORY[0x277D45950];
  v6 = sub_21DBF806C();
  (*(*(v6 - 8) + 104))(v2 + v3, v5, v6);
  return v2;
}

id sub_21DA3626C@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_store);
    v11 = *(v1 + v3);
    v6 = type metadata accessor for TTRShowRemindersInListTipKitDataModelSource();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v11;
    v8 = v5;
    v4 = v11;
    v9 = &protocol witness table for TTRTipKitDataModelSourceBase;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v9 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v7;
  a1[3] = v6;
  a1[4] = v9;

  return v4;
}

double sub_21DA36368@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF70DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF71BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  if (*(v1 + v14))
  {
    v27 = *(v1 + v14);
    if (*(*(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_showCompletedContextInstance) + 40))
    {
      v15 = MEMORY[0x277D45468];
    }

    else
    {
      v15 = MEMORY[0x277D45470];
    }

    (*(v8 + 104))(v13, *v15, v7);
    (*(v8 + 16))(v10, v13, v7);
    v26 = v6;
    v16 = v3;
    v17 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
    swift_beginAccess();
    v18 = v6;
    v19 = v16;
    (*(v4 + 16))(v18, v1 + v17, v16);
    v20 = type metadata accessor for TTRShowRemindersInListPrintingDataModelSource(0);
    v21 = swift_allocObject();
    v22 = v27;
    *(v21 + 16) = v27;
    (*(v8 + 32))(v21 + OBJC_IVAR____TtC15RemindersUICore45TTRShowRemindersInListPrintingDataModelSource_showCompleted, v10, v7);
    (*(v4 + 32))(v21 + OBJC_IVAR____TtC15RemindersUICore45TTRShowRemindersInListPrintingDataModelSource_sortingStyle, v26, v19);
    *(a1 + 24) = v20;
    *(a1 + 32) = &protocol witness table for TTRShowRemindersInListPrintingDataModelSource;
    *a1 = v21;
    v23 = *(v8 + 8);
    v24 = v22;
    v23(v13, v7);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t TTRShowRemindersInListPrintingDataModelSource.__allocating_init(list:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore45TTRShowRemindersInListPrintingDataModelSource_showCompleted;
  v8 = sub_21DBF71BC();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  v9 = OBJC_IVAR____TtC15RemindersUICore45TTRShowRemindersInListPrintingDataModelSource_sortingStyle;
  v10 = sub_21DBF70DC();
  (*(*(v10 - 8) + 32))(v6 + v9, a3, v10);
  return v6;
}

uint64_t sub_21DA3671C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 account];
    v5 = [v4 capabilities];

    LODWORD(v4) = [v5 supportsTemplates];
    if (v4)
    {
      type metadata accessor for TTRShowRemindersInListTemplateContext();
      result = swift_allocObject();
      *(result + 16) = v3;
      return result;
    }
  }

  return 0;
}

uint64_t sub_21DA36834()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v2 = *(v0 + v1);
  type metadata accessor for TTRRemindersListDataModelSourceAutoCategorizationContext();
  swift_allocObject();
  v3 = v2;
  return TTRRemindersListDataModelSourceAutoCategorizationContext.init(list:)(v2);
}

uint64_t sub_21DA368AC()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = [v2 groceryContext];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 shouldCategorizeGroceryItems];

      v6 = *(v0 + v1);
      if (!v6)
      {
        return v5 & 1;
      }
    }

    else
    {
      v5 = 0;
      v6 = *(v0 + v1);
      if (!v6)
      {
        return v5 & 1;
      }
    }

    v7 = v6;
    v8 = sub_21DBFB5FC();

    if (v8)
    {
      v9 = [v8 shouldAutoCategorizeItems];

      v5 |= v9;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_21DA36988(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v51 = a2;
  v2 = sub_21DBF773C();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v42 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF6DDC();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF714C();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF734C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF71BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64D60);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v37 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64D68);
  v20 = *(v48 - 8);
  v21 = MEMORY[0x28223BE20](v48);
  v38 = &v37 - v22;
  v23 = *MEMORY[0x277D45470];
  v24 = *(v14 + 104);
  v47 = v13;
  v25 = v13;
  v26 = v45;
  v24(v16, v23, v25, v21);
  v27 = *MEMORY[0x277D45500];
  v28 = *(v10 + 104);
  v49 = v9;
  v28(v12, v27, v9);
  v29 = v46;
  (*(v26 + 104))(v8, *MEMORY[0x277D45450]);
  sub_21DBF6CCC();
  (*(v26 + 8))(v8, v29);
  (*(v10 + 8))(v12, v49);
  (*(v14 + 8))(v16, v47);
  v30 = v48;
  (*(v20 + 56))(v19, 0, 1, v48);
  v31 = v38;
  (*(v20 + 32))(v38, v19, v30);
  v32 = v39;
  v33 = sub_21DBF76DC();
  v34 = v42;
  MEMORY[0x223D3F580](v33);
  (*(v40 + 8))(v32, v41);
  v35 = sub_21DBF718C();
  (*(v43 + 8))(v34, v44);
  (*(v20 + 8))(v31, v30);
  return v35;
}

uint64_t sub_21DA36F58(void *a1)
{
  v173 = sub_21DBFB11C();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v171 = &v160 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v169);
  v170 = &v160 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v4 - 8);
  v168 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3D0);
  MEMORY[0x28223BE20](v6 - 8);
  v167 = &v160 - v7;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C250);
  MEMORY[0x28223BE20](v195);
  v192 = (&v160 - v8);
  v183 = sub_21DBF76AC();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v181 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v191 = &v160 - v11;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64D70);
  MEMORY[0x28223BE20](v176);
  v175 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v180 = &v160 - v14;
  v190 = sub_21DBF70DC();
  v189 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v188 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_21DBF71BC();
  v16 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v18 = (&v160 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258);
  v164 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v166 = &v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v165 = &v160 - v22;
  MEMORY[0x28223BE20](v23);
  v178 = &v160 - v24;
  MEMORY[0x28223BE20](v25);
  v174 = &v160 - v26;
  MEMORY[0x28223BE20](v27);
  v184 = &v160 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v160 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v160 - v33;
  v163 = sub_21DBF719C();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v177 = &v160 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v160 - v37;
  v39 = sub_21DBF6DBC();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v186 = &v160 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v160 - v43;
  sub_21DBF72BC();
  v45 = sub_21DBF72DC();
  (*(*(v45 - 8) + 56))(v34, 0, 1, v45);
  MEMORY[0x223D3F930](MEMORY[0x277D84F90], v34, 2, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  v46 = sub_21DBFB60C();
  MEMORY[0x223D3F540](v38, v46);
  v179 = v19;
  v47 = *(v19 + 48);
  v197 = v40;
  v48 = v193;
  v49 = *(v40 + 16);
  v185 = v44;
  v196 = v39;
  v49(v31, v44, v39);
  v194 = v31;
  *&v31[v47] = 0;
  v50 = *(v48 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_showCompletedContextInstance);
  if (*(v50 + 40) == 1)
  {
    v51 = v187;
    (*(v16 + 104))(v18, *MEMORY[0x277D45468], v187);
  }

  else
  {
    swift_beginAccess();
    *v18 = *(v50 + 48);
    v51 = v187;
    (*(v16 + 104))(v18, *MEMORY[0x277D45480], v187);
    sub_21DBF8E0C();
  }

  v52 = *(v48 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_countCompleted);
  v53 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v54 = v189;
  v55 = v48 + v53;
  v56 = v188;
  v57 = v190;
  (v189)[2](v188, v55, v190);
  type metadata accessor for TTRShowRemindersInListMonitorableDataView(0);
  v58 = swift_allocObject();
  *(v58 + 16) = a1;
  (*(v16 + 32))(v58 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_showCompleted, v18, v51);
  *(v58 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_countCompleted) = v52;
  (v54)[4](v58 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_sortingStyle, v56, v57);
  *(v58 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_remindersToPrefetchCount) = 0;
  v59 = v192;
  sub_21D0D3954(v194, v192, &qword_27CE5C258);
  swift_storeEnumTagMultiPayload();
  v60 = a1;
  v61 = v186;
  v62 = v191;
  v64 = TTRShowRemindersInListMonitorableDataView.fetchData(from:userInteractive:)(v186, v191, v59, 1);
  v189 = v60;
  v187 = 0;
  v190 = v58;
  sub_21D0CF7E0(v59, &qword_27CE5C250);
  v65 = *(v197 + 32);
  v66 = v62;
  v67 = v180;
  v68 = v196;
  v65(v180, v61, v196);
  v69 = v179;
  *(v67 + *(v179 + 48)) = v64;
  v70 = v176;
  v71 = *(v176 + 48);
  v192 = *(v182 + 32);
  v72 = v183;
  v192(v67 + v71, v66, v183);
  v73 = v175;
  sub_21D0D3954(v67, v175, &qword_27CE64D70);
  v74 = *(v69 + 48);
  v75 = *&v73[v74];
  v191 = *(v70 + 48);
  v76 = v184;
  v188 = v65;
  v65(v184, v73, v68);
  *(v76 + v74) = v75;
  v192(v181, &v73[v191], v72);
  v77 = v69;
  v78 = v174;
  sub_21D0D3954(v76, v174, &qword_27CE5C258);
  if (*&v78[*(v77 + 48)])
  {
    v161 = *&v78[*(v77 + 48)];
    v79 = *(v197 + 8);
    v197 += 8;
    v191 = v79;
    v80 = v196;
    v79(v78, v196);
    v81 = v178;
    sub_21D0D3954(v76, v178, &qword_27CE5C258);
    v82 = v77;
    v83 = *(v77 + 48);
    v84 = v82;
    v85 = *(v81 + v83);
    v86 = v165;
    (v188)(v165, v81, v80);
    *&v86[v83] = v85;
    v87 = v86;
    v188 = sub_21D0D8CF0(0, &qword_280D1B900);

    v88 = sub_21DBFB12C();
    v175 = v88;
    sub_21DBF60DC();
    v186 = sub_21DBF60BC();
    v89 = sub_21DBF60AC();
    v174 = v89;
    v192 = *MEMORY[0x277D76648];
    v176 = *MEMORY[0x277D76768];
    v90 = v176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3D8);
    v91 = swift_allocObject();
    v92 = *(*v91 + 104);
    v93 = *(v164 + 56);
    v94 = v84;
    v93(v91 + v92, 1, 1, v84);
    v95 = (v91 + *(*v91 + 136));
    *v95 = 0;
    v95[1] = 0;
    *(v91 + *(*v91 + 112)) = v88;
    *(v91 + *(*v91 + 120)) = v89;
    sub_21D0D3954(v87, v91 + *(*v91 + 96), &qword_27CE5C258);
    swift_storeEnumTagMultiPayload();
    v96 = v167;
    sub_21D0D3954(v87, v167, &qword_27CE5C258);
    v93(v96, 0, 1, v94);
    swift_beginAccess();
    v97 = v192;
    v98 = v90;
    v175 = v175;
    v99 = v174;
    sub_21DA3DC4C(v96, v91 + v92);
    swift_endAccess();
    sub_21DBF9D4C();
    v201[6] = MEMORY[0x277D84F90];
    sub_21D66282C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
    sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
    sub_21DBFBCBC();
    (*(v172 + 104))(v171, *MEMORY[0x277D85260], v173);
    v100 = sub_21DBFB14C();
    v101 = v166;
    sub_21D0D3954(v87, v166, &qword_27CE5C258);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3E0);
    v102 = swift_allocObject();
    *(v102 + 72) = 0u;
    *(v102 + 88) = 0u;
    *(v102 + 104) = 0;
    *(v102 + 108) = -1;
    *(v102 + 120) = 0;
    *(v102 + 128) = 1;
    v103 = *(*v102 + 216);
    v104 = swift_slowAlloc();
    *(v102 + v103) = v104;
    *(v102 + *(*v102 + 224)) = 0;
    v105 = v186;
    *(v102 + 16) = v100;
    *(v102 + 24) = v105;
    v106 = v190;
    *(v102 + 32) = v99;
    *(v102 + 40) = v106;
    sub_21D0D3954(v101, v102 + *(*v102 + 208), &qword_27CE5C258);
    swift_storeEnumTagMultiPayload();
    *v104 = 0;

    sub_21D0CF7E0(v101, &qword_27CE5C258);
    sub_21D0CF7E0(v87, &qword_27CE5C258);
    v107 = v176;
    *(v102 + 48) = v192;
    *(v102 + 56) = v107;
    *(v102 + 64) = 1;
    *(v91 + *(*v91 + 128)) = v102;
    v108 = swift_allocObject();
    swift_weakInit();
    v109 = swift_allocObject();
    v110 = v193;
    swift_weakInit();
    v111 = swift_allocObject();
    *(v111 + 16) = v108;
    *(v111 + 24) = v109;
    v112 = *(v102 + 72);
    *(v102 + 72) = sub_21D50471C;
    *(v102 + 80) = v111;

    sub_21D0D0E88(v112);

    v113 = *(v91 + *(*v91 + 128));
    v114 = swift_allocObject();
    swift_weakInit();
    v115 = *(v113 + 88);
    *(v113 + 88) = sub_21D504724;
    *(v113 + 96) = v114;

    sub_21D0D0E88(v115);

    v116 = swift_allocObject();
    swift_weakInit();
    v117 = swift_allocObject();
    swift_weakInit();
    v118 = swift_allocObject();
    *(v118 + 16) = v116;
    *(v118 + 24) = v117;
    v119 = (v91 + *(*v91 + 136));
    v120 = *v119;
    *v119 = sub_21D50472C;
    v119[1] = v118;

    sub_21D0D0E88(v120);

    v121 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_dataViewMonitor;
    swift_beginAccess();
    *(v110 + v121) = v91;

    v122 = v178;
    sub_21D0D3954(v184, v178, &qword_27CE5C258);

    MEMORY[0x223D3F550]();
    (v191)(v122, v196);
    v123 = v110 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong() || (v124 = *(v123 + 1), ObjectType = swift_getObjectType(), v126 = (*(*(v124 + 8) + 8))(ObjectType), v128 = v127, swift_unknownObjectRelease(), (v128 & 1) != 0))
    {
      v126 = 30;
    }

    v129 = v126 * 1.5;
    if (COERCE__INT64(fabs(v129)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v129 > -9.22337204e18)
    {
      if (v129 < 9.22337204e18)
      {
        v126 = sub_21DA68CBC(v129);
        if (qword_280D17EB8 == -1)
        {
LABEL_12:
          v130 = sub_21DBF84BC();
          __swift_project_value_buffer(v130, qword_280D0F1E0);
          sub_21DBF8E0C();
          v131 = sub_21DBF84AC();
          v132 = sub_21DBFAEAC();

          if (os_log_type_enabled(v131, v132))
          {
            v133 = swift_slowAlloc();
            v134 = swift_slowAlloc();
            v201[0] = v134;
            *v133 = 136315138;
            if (v126 >> 62)
            {
              v135 = sub_21DBFBD7C();
            }

            else
            {
              v135 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v200 = v135;
            sub_21D679D9C();
            v136 = sub_21DBFBC0C();
            v138 = sub_21D0CDFB4(v136, v137, v201);

            *(v133 + 4) = v138;
            _os_log_impl(&dword_21D0C9000, v131, v132, "Fetching initial set of reminders {count: %s}", v133, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v134);
            MEMORY[0x223D46520](v134, -1, -1);
            MEMORY[0x223D46520](v133, -1, -1);

            v110 = v193;
          }

          else
          {
          }

          v147 = [v189 store];
          v148 = sub_21DBFB12C();
          v149 = swift_allocObject();
          *(v149 + 16) = 0;
          v150 = v161;
          v151 = sub_21D87E81C(v147, sub_21D554248, v149, v150, v148);
          swift_beginAccess();
          v151[3] = &protocol witness table for TTRShowRemindersInListDataModelSource;
          swift_unknownObjectWeakAssign();
          sub_21DAB0AFC(v126);

          v152 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
          swift_beginAccess();
          *(v110 + v152) = v151;

          if (*(v110 + v121))
          {

            sub_21D4009FC(1);
          }

          v198 = 0;
          v199 = 0xE000000000000000;
          sub_21DBFBEEC();
          v198 = *v110;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAC0);
          v153 = sub_21DBFA1AC();
          v155 = v154;

          v198 = v153;
          v199 = v155;
          MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
          v156 = sub_21DBFAEDC();
          MEMORY[0x28223BE20](v156);
          v157 = v189;
          *(&v160 - 4) = v110;
          *(&v160 - 3) = v157;
          v158 = v177;
          v159 = v181;
          *(&v160 - 2) = v177;
          *(&v160 - 1) = v159;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
          sub_21DBF625C();

          sub_21D0CF7E0(v184, &qword_27CE5C258);
          sub_21D0CF7E0(v180, &qword_27CE64D70);
          sub_21D0CF7E0(v194, &qword_27CE5C258);
          (v191)(v185, v196);
          (*(v162 + 8))(v158, v163);
          (*(v182 + 8))(v159, v183);
          return 1;
        }

LABEL_28:
        swift_once();
        goto LABEL_12;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_27;
  }

  v139 = *(v197 + 8);
  v140 = v196;
  v139(v78, v196);
  if (qword_280D17EB8 != -1)
  {
    swift_once();
  }

  v141 = sub_21DBF84BC();
  __swift_project_value_buffer(v141, qword_280D0F1E0);
  v142 = sub_21DBF84AC();
  v143 = sub_21DBFAEBC();
  v144 = os_log_type_enabled(v142, v143);
  v145 = v194;
  if (v144)
  {
    v146 = swift_slowAlloc();
    *v146 = 0;
    _os_log_impl(&dword_21D0C9000, v142, v143, "startSynchronously failed, missing initial fetch result token", v146, 2u);
    v140 = v196;
    MEMORY[0x223D46520](v146, -1, -1);
  }

  sub_21D0CF7E0(v76, &qword_27CE5C258);
  sub_21D0CF7E0(v180, &qword_27CE64D70);
  sub_21D0CF7E0(v145, &qword_27CE5C258);
  v139(v185, v140);
  (*(v182 + 8))(v181, v183);
  return 0;
}

uint64_t TTRShowRemindersInListMonitorableDataView.__allocating_init(list:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  LOBYTE(a3) = *a3;
  *(v10 + 16) = a1;
  v11 = OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_showCompleted;
  v12 = sub_21DBF71BC();
  (*(*(v12 - 8) + 32))(v10 + v11, a2, v12);
  *(v10 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_countCompleted) = a3;
  v13 = OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_sortingStyle;
  v14 = sub_21DBF70DC();
  (*(*(v14 - 8) + 32))(v10 + v13, a4, v14);
  *(v10 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_remindersToPrefetchCount) = a5;
  return v10;
}

uint64_t TTRShowRemindersInListMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v59 = a1;
  v60 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C300);
  MEMORY[0x28223BE20](v54);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v53 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A70);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v73 = &v53 - v10;
  v11 = sub_21DBF714C();
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x28223BE20](v11);
  v67 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF70DC();
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x28223BE20](v13);
  v64 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF738C();
  v70 = *(v15 - 8);
  v71 = v15;
  MEMORY[0x28223BE20](v15);
  v74 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_21DBF71BC();
  v17 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v78 = sub_21DBF734C();
  v23 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v63 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = (&v53 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3D0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v53 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C250);
  sub_21DBFC83C();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258);
  if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
  {
    sub_21D0CF7E0(v30, &qword_27CE5D3D0);
    v77 = 0;
  }

  else
  {
    v77 = *&v30[*(v31 + 48)];
    v32 = sub_21DBF6DBC();
    (*(*(v32 - 8) + 8))(v30, v32);
  }

  v61 = *(v5 + 16);
  v33 = [v61 store];
  v34 = v33;
  if (a4)
  {
    v76 = v33;
    if (!v77)
    {
      v35 = MEMORY[0x277D45508];
      goto LABEL_9;
    }
  }

  else
  {
    v76 = [v33 nonUserInteractiveStore];
  }

  v35 = MEMORY[0x277D454F8];
LABEL_9:
  *v27 = *(v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_remindersToPrefetchCount);
  (*(v23 + 104))(v27, *v35, v78);
  v36 = *(v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_countCompleted);
  v37 = OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_showCompleted;
  v62 = v34;
  if (v36 > 1)
  {
    v38 = v75;
    (*(v17 + 16))(v22, v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_showCompleted, v75);
    v39 = (*(v17 + 88))(v22, v38);
    if (v39 == *MEMORY[0x277D45478])
    {
      (*(v17 + 8))(v22, v38);
    }

    else if (v39 == *MEMORY[0x277D45480])
    {
      (*(v17 + 8))(v22, v75);
    }

    else if (v39 != *MEMORY[0x277D45470] && v39 != *MEMORY[0x277D45468])
    {
      result = sub_21DBFC63C();
      __break(1u);
      return result;
    }
  }

  (*(v65 + 16))(v64, v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_sortingStyle, v66);
  (*(v17 + 16))(v19, v5 + v37, v75);
  v40 = v78;
  (*(v23 + 16))(v63, v27, v78);
  (*(v68 + 104))(v67, *MEMORY[0x277D45450], v69);
  v41 = v74;
  sub_21DBF737C();
  v42 = v72;
  v43 = v73;
  v45 = v76;
  v44 = v77;
  sub_21DBF6D0C();
  if (v42)
  {

    (*(v70 + 8))(v41, v71);
    (*(v23 + 8))(v27, v40);
  }

  else
  {
    v46 = v54;
    v47 = *(v54 + 48);
    v48 = v58;
    v76 = v45;
    v77 = v44;
    v49 = v57;
    sub_21DBF76DC();
    *(v48 + v47) = sub_21DBF76BC();
    v50 = v55;
    sub_21D0D3954(v48, v55, &qword_27CE5C300);
    v41 = *(v50 + *(v46 + 48));
    v51 = sub_21DBF6DBC();
    (*(*(v51 - 8) + 32))(v59, v50, v51);
    sub_21DBF76CC();

    sub_21D0CF7E0(v48, &qword_27CE5C300);
    (*(v56 + 8))(v43, v49);
    (*(v70 + 8))(v74, v71);
    (*(v23 + 8))(v27, v78);
  }

  return v41;
}

uint64_t sub_21DA395A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  v9 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v11 = result;
  if (result)
  {
    v12 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v12 + 24))(a2, a3, a4, ObjectType, v12);
    result = swift_unknownObjectRelease();
  }

  *a5 = v11 == 0;
  return result;
}

uint64_t sub_21DA39670(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_21DBF70DC();
  v101 = *(v4 - 8);
  v102 = v4;
  MEMORY[0x28223BE20](v4);
  v100 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_21DBF71BC();
  v98 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v97 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258);
  v96 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v99 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v108 = &v92 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3D0);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v92 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v92 - v14;
  v16 = sub_21DBF719C();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_21DBF6DBC();
  v19 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v21 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = *a1;
  v104 = v21;
  v105 = v19;
  v103 = v7;
  if (!v106)
  {
    v22 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
    swift_beginAccess();
    v23 = *(v2 + v22);
    if (v23)
    {
      v24 = [v23 objectID];
      v25 = 0;
    }

    else
    {
      v24 = 0;
      v25 = 2;
    }

    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    v26 = qword_280D1AA18;
    type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
    v27 = swift_allocObject();
    v28 = sub_21D193548(v24, v25, v26, v27);

    *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_showCompletedContextInstance) = v28;

    swift_beginAccess();
    v28[3] = &protocol witness table for TTRShowRemindersInListDataModelSource;
    swift_unknownObjectWeakAssign();

    v29 = *(v2 + v22);
    if (v29)
    {
      v30 = type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
      v114 = v29;
      v115 = 0;
      v32 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults + 24);
      v31 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults + 32);
      v33 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults), v32);
      v34 = MEMORY[0x28223BE20](v33);
      v36 = &v92 - v35;
      (*(v37 + 16))(&v92 - v35, v34);
      v38 = *(v31 + 8);
      v39 = v29;
      v40 = sub_21D6F1094(&v114, v36, v30, v32, v38);
      if (v40)
      {
        swift_beginAccess();
        *(v40 + 32) = &protocol witness table for TTRShowRemindersInListDataModelSource;
        swift_unknownObjectWeakAssign();
      }
    }

    else
    {
      v40 = 0;
    }

    v21 = v104;
    v19 = v105;
    v7 = v103;
    *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_layoutContextInstance) = v40;
  }

  v41 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v109 = v41;
  if (*(v2 + v41))
  {
    v42 = v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v43 = *(v42 + 1);
      ObjectType = swift_getObjectType();
      v113[0] = v106;
      (*(*(v43 + 8) + 16))(v113, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  v45 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v46 = *(v2 + v45);
  if (v46)
  {
    v47 = v46;
    sub_21DBF72BC();
    v48 = sub_21DBF72DC();
    (*(*(v48 - 8) + 56))(v15, 0, 1, v48);
    MEMORY[0x223D3F930](MEMORY[0x277D84F90], v15, 2, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
    v94 = v47;
    v49 = sub_21DBFB60C();
    MEMORY[0x223D3F540](v18, v49);
    v50 = *(v2 + v109);
    if (v50)
    {
      v51 = *(*v50 + 104);
      swift_beginAccess();
      v52 = v50 + v51;
      v53 = v95;
      sub_21D0D3954(v52, v95, &qword_27CE5D3D0);
      if (v96[6](v53, 1, v7) == 1)
      {
        sub_21D0CF7E0(v53, &qword_27CE5D3D0);
        v54 = 0;
      }

      else
      {
        v54 = *(v53 + *(v7 + 48));
        (*(v19 + 8))(v53, v110);
      }
    }

    else
    {
      v54 = 0;
    }

    v56 = *(v7 + 48);
    v57 = *(v19 + 16);
    v58 = v108;
    v95 = v19 + 16;
    v93 = v57;
    v57(v108, v21, v110);
    *&v58[v56] = v54;
    v59 = v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v96 = v54;
    if (Strong)
    {
      v61 = *(v59 + 1);
      v62 = swift_getObjectType();
      v63 = *(v61 + 8);
      v64 = *(v63 + 8);
      v65 = v54;
      v66 = v64(v62, v63);
      LOBYTE(v62) = v67;
      swift_unknownObjectRelease();
      if ((v62 & 1) == 0)
      {
        v92 = v66;
LABEL_28:
        v69 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_showCompletedContextInstance);
        v70 = v107;
        v72 = v97;
        v71 = v98;
        if (*(v69 + 40) == 1)
        {
          (*(v98 + 104))(v97, *MEMORY[0x277D45468], v107);
        }

        else
        {
          swift_beginAccess();
          *v72 = *(v69 + 48);
          (*(v71 + 104))(v72, *MEMORY[0x277D45480], v70);
          sub_21DBF8E0C();
        }

        v73 = v72;
        v74 = *(v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_countCompleted);
        v75 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
        swift_beginAccess();
        v77 = v100;
        v76 = v101;
        v78 = v2 + v75;
        v79 = v102;
        (*(v101 + 16))(v100, v78, v102);
        type metadata accessor for TTRShowRemindersInListMonitorableDataView(0);
        v80 = swift_allocObject();
        v81 = v94;
        *(v80 + 16) = v94;
        (*(v71 + 32))(v80 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_showCompleted, v73, v107);
        *(v80 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_countCompleted) = v74;
        (*(v76 + 32))(v80 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_sortingStyle, v77, v79);
        v82 = v93;
        *(v80 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_remindersToPrefetchCount) = v92;
        v83 = *(v103 + 48);
        v84 = v99;
        v85 = v108;
        v82(v99, v108, v110);
        *(v84 + v83) = v96;
        v86 = v109;
        swift_beginAccess();
        v87 = v81;
        sub_21D4FC4AC((v2 + v86), v84, v80, v2, v106);
        sub_21D0CF7E0(v84, &qword_27CE5C258);
        swift_endAccess();
        v111 = *v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAC0);
        v111 = sub_21DBFA1AC();
        v112 = v88;
        MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
        v89 = sub_21DBFAEDC();
        MEMORY[0x28223BE20](v89);
        *(&v92 - 2) = v2;
        *(&v92 - 1) = v87;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
        sub_21DBF625C();

        sub_21D0CF7E0(v85, &qword_27CE5C258);
        return (*(v105 + 8))(v104, v110);
      }
    }

    else
    {
      v68 = v54;
    }

    v92 = 30;
    goto LABEL_28;
  }

  v55 = v109;
  if (*(v2 + v109))
  {

    sub_21D737CF0();
  }

  *(v2 + v55) = 0;

  v91 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
  swift_beginAccess();
  *(v2 + v91) = 0;
}

uint64_t sub_21DA3A26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void sub_21DA3A324(void *a1, uint64_t a2)
{
  if (a1)
  {
    v5 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v2 + v5))
    {
      v6 = a1;

      sub_21D4F9F64(v6, a2);
    }

    else
    {
      v7 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
      swift_beginAccess();
      v8 = *(v2 + v7);
      if (v8)
      {
        v9 = a1;
        v10 = v8;
        v11 = [v10 store];
        sub_21D0D8CF0(0, &qword_280D1B900);
        v12 = v2;
        v13 = sub_21DBFB12C();
        v14 = swift_allocObject();
        *(v14 + 16) = 0;
        v15 = sub_21D87E81C(v11, sub_21D1947D8, v14, v9, v13);

        *(v12 + v5) = v15;

        swift_beginAccess();
        v15[3] = &protocol witness table for TTRShowRemindersInListDataModelSource;
        swift_unknownObjectWeakAssign();
      }
    }
  }
}

uint64_t sub_21DA3A4F4()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate);

  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults);
}

uint64_t TTRShowRemindersInListDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate);

  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_userDefaults);

  return v0;
}

uint64_t TTRShowRemindersInListDataModelSource.__deallocating_deinit()
{
  TTRShowRemindersInListDataModelSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall TTRShowRemindersInListDataModelSource.showCompletedAllowlistChanged(isCleared:)(Swift::Bool isCleared)
{
  if (isCleared)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v2 = v1;
  sub_21DA39670(&v2);
}

uint64_t sub_21DA3A7B8(char a1)
{
  if (a1)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v3 = v1;
  return sub_21DA39670(&v3);
}

Swift::Void __swiftcall TTRShowRemindersInListDataModelSource.listLayoutDidChange(shouldForceUpdate:)(Swift::Bool shouldForceUpdate)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v4 + 8) + 32))(shouldForceUpdate, ObjectType);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21DA3A8D4(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v5 + 8) + 32))(a1 & 1, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21DA3A96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  v6 = sub_21DBF719C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v12 = result;
  if (result)
  {
    v13 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v17 = v6;
    v15 = ObjectType;
    MEMORY[0x223D3F550]();
    (*(v13 + 24))(0, v9, a2, v15, v13);
    swift_unknownObjectRelease();
    result = (*(v7 + 8))(v9, v17);
  }

  *a3 = v12 == 0;
  return result;
}

uint64_t TTRShowRemindersInListDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRShowRemindersInListDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v63 = a4;
  v9 = sub_21DBF719C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258);
  MEMORY[0x28223BE20](v13);
  v62 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  v18 = sub_21DBF6DBC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v60 = v18;
  v20(v17, a2);
  v61 = v13;
  v21 = *(v13 + 48);
  v64 = v17;
  *&v17[v21] = a3;
  v22 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v23 = *(v5 + v22);
  if (!v23)
  {
    v39 = a3;
    return sub_21D0CF7E0(v64, &qword_27CE5C258);
  }

  v24 = a3;
  if (v23 != a1)
  {
    return sub_21D0CF7E0(v64, &qword_27CE5C258);
  }

  v25 = sub_21DBF6E3C();
  sub_21D4F5F28(v25);
  v27 = v26;

  sub_21DA3A324(a3, v27);

  v28 = v62;
  sub_21D0D3954(v64, v62, &qword_27CE5C258);

  MEMORY[0x223D3F550]();
  v58 = *(v19 + 8);
  v59 = v19 + 8;
  v58(v28, v60);
  v29 = sub_21DBF716C();
  (*(v10 + 8))(v12, v9);
  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_5;
    }

LABEL_24:

LABEL_25:
    v46 = v64;
    v47 = v62;
    sub_21D0D3954(v64, v62, &qword_27CE5C258);

    v48 = sub_21DBF6DAC();
    v58(v47, v60);
    v49 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
    swift_beginAccess();
    v50 = *(v5 + v49);
    *(v5 + v49) = v48;

    v65 = 0;
    v66 = 0xE000000000000000;
    sub_21DBFBEEC();
    v65 = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAC0);
    v51 = sub_21DBFA1AC();
    v53 = v52;

    v65 = v51;
    v66 = v53;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v54 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v54);
    *(&v56 - 4) = v5;
    *(&v56 - 3) = v46;
    *(&v56 - 2) = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
    sub_21DBF625C();

    return sub_21D0CF7E0(v64, &qword_27CE5C258);
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_24;
  }

  v30 = sub_21DBFBD7C();
  if (!v30)
  {
    v57 = v5;

    v32 = MEMORY[0x277D84F90];
LABEL_15:
    v5 = v57;
    if (*(v32 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
      v40 = sub_21DBFC40C();
    }

    else
    {
      v40 = MEMORY[0x277D84F98];
    }

    v67[0] = v40;
    v41 = sub_21DBF8E0C();
    sub_21D1931C0(v41, 1, v67);

    v42 = v67[0];
    v43 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v5 + v43))
    {

      sub_21D188810(v42);
      v45 = v44;

      TTRBatchFetchManager<A>.override(objects:)(v45);
    }

    else
    {
    }

    goto LABEL_25;
  }

LABEL_5:
  v57 = v5;
  v67[0] = MEMORY[0x277D84F90];
  sub_21D18E6B8(0, v30 & ~(v30 >> 63), 0);
  if ((v30 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    v32 = v67[0];
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x223D44740](v31, v29);
      }

      else
      {
        v33 = *(v29 + 8 * v31 + 32);
      }

      v34 = v33;
      v35 = [v33 objectID];
      v67[0] = v32;
      v37 = *(v32 + 16);
      v36 = *(v32 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_21D18E6B8((v36 > 1), v37 + 1, 1);
        v32 = v67[0];
      }

      ++v31;
      *(v32 + 16) = v37 + 1;
      v38 = v32 + 16 * v37;
      *(v38 + 32) = v35;
      *(v38 + 40) = v34;
    }

    while (v30 != v31);

    goto LABEL_15;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21DA3B1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v30 = a2;
  v31 = a3;
  v33 = a4;
  v6 = sub_21DBF719C();
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v17 = result;
  if (result)
  {
    v27 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    v18 = v30;
    sub_21D0D3954(v30, v14, &qword_27CE5C258);

    v19 = sub_21DBF6DAC();
    v29 = v4;
    v25 = v19;
    v20 = sub_21DBF6DBC();
    v21 = *(v20 - 8);
    v26 = v6;
    v22 = *(v21 + 8);
    v22(v14, v20);
    sub_21D0D3954(v18, v11, &qword_27CE5C258);

    MEMORY[0x223D3F550]();
    v22(v11, v20);
    v23 = v25;
    (*(v27 + 24))(v25, v8, v31, ObjectType);
    swift_unknownObjectRelease();

    result = (*(v32 + 8))(v8, v26);
  }

  *v33 = v17 == 0;
  return result;
}

uint64_t sub_21DA3B4A8()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21DA3B524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258) + 48));

  return TTRShowRemindersInListDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowRemindersInListDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAC0);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
  sub_21DBF625C();
}

uint64_t sub_21DA3B6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void TTRShowRemindersInListDataModelSource.update(error:)(void *a1)
{
  v2 = v1;
  if (qword_280D17EB8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_280D0F1E0);
  v5 = a1;

  oslog = sub_21DBF84AC();
  v6 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    swift_getErrorValue();
    v9 = sub_21DBFC75C();
    v11 = sub_21D0CDFB4(v9, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = 0xE000000000000000;
    v13 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
    swift_beginAccess();
    v14 = *(v2 + v13);
    if (v14)
    {
      v15 = [v14 description];
      v16 = sub_21DBFA16C();
      v12 = v17;
    }

    else
    {
      v16 = 0;
    }

    MEMORY[0x223D42AA0](v16, v12);

    MEMORY[0x223D42AA0](0x203A7473696CLL, 0xE600000000000000);

    v18 = sub_21D0CDFB4(0, 0xE000000000000000, &v20);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_21D0C9000, oslog, v6, "TTRShowRemindersInListDataModelSource update error {error: %s, dataModelSource: %s}", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v8, -1, -1);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  else
  {
  }
}

id TTRShowRemindersInListPrintingDataModelSource.store.getter()
{
  v1 = [*(v0 + 16) store];

  return v1;
}

uint64_t TTRShowRemindersInListPrintingDataModelSource.init(list:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = OBJC_IVAR____TtC15RemindersUICore45TTRShowRemindersInListPrintingDataModelSource_showCompleted;
  v7 = sub_21DBF71BC();
  (*(*(v7 - 8) + 32))(v3 + v6, a2, v7);
  v8 = OBJC_IVAR____TtC15RemindersUICore45TTRShowRemindersInListPrintingDataModelSource_sortingStyle;
  v9 = sub_21DBF70DC();
  (*(*(v9 - 8) + 32))(v3 + v8, a3, v9);
  return v3;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowRemindersInListPrintingDataModelSource.fetchListTree()(RemindersUICore::TTRRemindersPrintingListTree *__return_ptr retstr)
{
  v2 = v1;
  v81 = retstr;
  v3 = sub_21DBF6F4C();
  v76 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v100 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_21DBF6F8C();
  v75 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v102 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v74 - v7;
  v90 = sub_21DBF6DBC();
  v83 = *(v90 - 1);
  MEMORY[0x28223BE20](v90);
  v82 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF719C();
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x28223BE20](v9);
  v87 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A70);
  v77 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v89 = &v74 - v11;
  v12 = sub_21DBF714C();
  v98 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v97 = (&v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_21DBF734C();
  v94 = *(v14 - 8);
  v95 = v14;
  MEMORY[0x28223BE20](v14);
  v96 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_21DBF71BC();
  v16 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v93 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_21DBF70DC();
  v18 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21DBF738C();
  v85 = *(v21 - 8);
  v86 = v21;
  MEMORY[0x28223BE20](v21);
  v88 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D17EB8 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v23 = sub_21DBF84BC();
    __swift_project_value_buffer(v23, qword_280D0F1E0);

    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAEDC();

    v26 = os_log_type_enabled(v24, v25);
    v101 = v3;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v74 = v12;
      v28 = v2;
      v29 = v27;
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = [v28[2] objectID];
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&dword_21D0C9000, v24, v25, "PrintingDataModelSource: fetch list tree {listID: %@}", v29, 0xCu);
      sub_21D0CF7E0(v30, &unk_27CE60070);
      v32 = v30;
      v3 = v101;
      MEMORY[0x223D46520](v32, -1, -1);
      v33 = v29;
      v2 = v28;
      v12 = v74;
      MEMORY[0x223D46520](v33, -1, -1);
    }

    (*(v18 + 16))(v20, v2 + OBJC_IVAR____TtC15RemindersUICore45TTRShowRemindersInListPrintingDataModelSource_sortingStyle, v91);
    (*(v16 + 16))(v93, v2 + OBJC_IVAR____TtC15RemindersUICore45TTRShowRemindersInListPrintingDataModelSource_showCompleted, v92);
    (*(v94 + 104))(v96, *MEMORY[0x277D45500], v95);
    (*(v98 + 104))(v97, *MEMORY[0x277D45450], v12);
    v34 = v88;
    sub_21DBF737C();
    v35 = [v2[2] store];
    v36 = v99;
    sub_21DBF6D0C();
    if (v36)
    {
      (*(v85 + 8))(v34, v86);

      return;
    }

    v74 = 0;
    v2 = &v110;

    v12 = v82;
    v37 = sub_21DBF76DC();
    MEMORY[0x223D3F550](v37);
    v18 = v83 + 8;
    v99 = *(v83 + 8);
    v38 = v90;
    (v99)(v12, v90);
    sub_21DBF76DC();
    v16 = sub_21DBF6DAC();
    (v99)(v12, v38);
    v39 = sub_21DBF718C();
    v20 = *(v39 + 16);
    if (!v20)
    {
      break;
    }

    v83 = v16;
    v117 = MEMORY[0x277D84F90];
    v99 = v39;
    sub_21D18E6F8(0, v20, 0);
    if (*(v99 + 16))
    {
      v18 = 0;
      v12 = v117;
      v40 = v99 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
      v97 = (v76 + 88);
      v98 = v75 + 16;
      LODWORD(v96) = *MEMORY[0x277D453E0];
      LODWORD(v91) = *MEMORY[0x277D453D8];
      v90 = (v76 + 96);
      v41 = *(v75 + 72);
      v94 = *(v75 + 16);
      v95 = (v75 + 8);
      v92 = v41;
      v93 = v20 - 1;
      do
      {
        v42 = v102;
        (v94)(v102, v40, v118);
        v43 = v100;
        sub_21DBF6F5C();
        v44 = (*v97)(v43, v3);
        if (v44 == v96)
        {
          (*v90)(v43, v3);
          v45 = v43;
          v46 = *v43;
          v47 = *(v43 + 1);
          v48 = *(v45 + 2);

          *&v105 = v47;
          *(&v105 + 1) = v48;
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          LODWORD(v109[0]) = 192;
          BYTE4(v109[0]) = 3;
          *(v109 + 5) = v103;
          BYTE7(v109[0]) = v104;
          *(v109 + 8) = 0u;
          *(&v109[1] + 8) = 0u;
          *(&v109[2] + 8) = 0u;
          WORD4(v109[3]) = 255;
          nullsub_1(&v105, v49, v50);
        }

        else
        {
          if (v44 != v91)
          {
            sub_21DBFC63C();
            __break(1u);
            return;
          }

          sub_21D6EEF24(&v105);
          v42 = v102;
        }

        v20 = sub_21DBF6F7C();
        v114 = v109[0];
        v115 = v109[1];
        v116[0] = v109[2];
        *(v116 + 10) = *(&v109[2] + 10);
        v110 = v105;
        v111 = v106;
        v112 = v107;
        v113 = v108;
        (*v95)(v42, v118);
        v107 = v112;
        v108 = v113;
        v109[2] = v116[0];
        v109[3] = v116[1];
        v109[0] = v114;
        v109[1] = v115;
        v105 = v110;
        v106 = v111;
        v117 = v12;
        v16 = *(v12 + 16);
        v51 = *(v12 + 24);
        if (v16 >= v51 >> 1)
        {
          sub_21D18E6F8((v51 > 1), v16 + 1, 1);
          v12 = v117;
        }

        *(v12 + 16) = v16 + 1;
        v52 = v12 + 136 * v16;
        v53 = v105;
        v54 = v106;
        v55 = v108;
        *(v52 + 64) = v107;
        *(v52 + 80) = v55;
        *(v52 + 32) = v53;
        *(v52 + 48) = v54;
        v56 = v109[0];
        v57 = v109[1];
        v58 = v109[3];
        *(v52 + 128) = v109[2];
        *(v52 + 144) = v58;
        *(v52 + 96) = v56;
        *(v52 + 112) = v57;
        *(v52 + 160) = v20;
        if (v93 == v18)
        {

          v16 = v83;
          goto LABEL_20;
        }

        v40 += v92;
        ++v18;
        v3 = v101;
      }

      while (v18 < *(v99 + 16));
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:
  v59 = [v16 displayName];
  v118 = sub_21DBFA16C();
  v102 = v60;

  type metadata accessor for TTRListColors();
  *(&v106 + 1) = sub_21DBF605C();
  *&v107 = &protocol witness table for REMList;
  *&v105 = v16;
  v100 = v16;
  static TTRListColors.color(for:)(&v105, &v110);
  sub_21D0CF7E0(&v105, &qword_27CE59DC0);
  v61 = v110;
  v62 = v111;
  v63 = *(&v112 + 1);
  v99 = v112;
  v64 = v113;
  v105 = v110;
  v106 = v111;
  v65 = *(&v111 + 1);
  v107 = v112;
  LOBYTE(v108) = v113;
  v101 = TTRListColors.Color.nativeColor.getter();
  sub_21D1078C0(v61, *(&v61 + 1), v62, v65, v99, v63, v64);
  v66 = v80;
  v67 = v87;
  sub_21DBF715C();
  v68 = sub_21DBF72DC();
  v69 = *(v68 - 8);
  v70 = (*(v69 + 48))(v66, 1, v68);
  if (v70 == 1)
  {

    (*(v78 + 8))(v67, v79);
    (*(v77 + 8))(v89, v84);
    (*(v85 + 8))(v88, v86);
    sub_21D0CF7E0(v66, &qword_27CE5D378);
    v71 = 0;
  }

  else
  {
    v71 = sub_21DBF72AC();

    (*(v78 + 8))(v67, v79);
    (*(v77 + 8))(v89, v84);
    (*(v85 + 8))(v88, v86);
    (*(v69 + 8))(v66, v68);
  }

  v72 = v81;
  v73 = v102;
  v81->listName._countAndFlagsBits = v118;
  v72->listName._object = v73;
  v72->listColor.super.isa = v101;
  v72->count.value = v71;
  v72->count.is_nil = v70 == 1;
  v72->sections._rawValue = v12;
  v72->reminderColorSource = RemindersUICore_TTRRemindersPrintingViewModel_ReminderColorSource_parentListColor;
}

uint64_t TTRShowRemindersInListDataModelSourceDeleteCompletedContext.listForBatchDelete.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore59TTRShowRemindersInListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = sub_21DBF806C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRShowRemindersInListDataModelSourceDeleteCompletedContext.init(list:)(void *a1)
{
  v3 = sub_21DBF806C();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [a1 objectID];

  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D45950], v3);
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC15RemindersUICore59TTRShowRemindersInListDataModelSourceDeleteCompletedContext_listForBatchDelete, v7, v3);
  return v1;
}

uint64_t TTRShowRemindersInListDataModelSourceDeleteCompletedContext.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore59TTRShowRemindersInListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v2 = sub_21DBF806C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTRShowRemindersInListDataModelSourceDeleteCompletedContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore59TTRShowRemindersInListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v2 = sub_21DBF806C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21DA3CB7C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore59TTRShowRemindersInListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = sub_21DBF806C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRShowRemindersInListMonitorableDataView.init(list:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  *(v5 + 16) = a1;
  v10 = OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_showCompleted;
  v11 = sub_21DBF71BC();
  (*(*(v11 - 8) + 32))(v5 + v10, a2, v11);
  *(v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_countCompleted) = v9;
  v12 = OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_sortingStyle;
  v13 = sub_21DBF70DC();
  (*(*(v13 - 8) + 32))(v5 + v12, a4, v13);
  *(v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowRemindersInListMonitorableDataView_remindersToPrefetchCount) = a5;
  return v5;
}

uint64_t sub_21DA3CD00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = TTRShowRemindersInListMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

uint64_t sub_21DA3CD9C(uint64_t a1)
{
  v34 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C250);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v36 = sub_21DBF6DBC();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_dataViewMonitor;
  result = swift_beginAccess();
  v35 = v1;
  v18 = *(v1 + v16);
  if (v18)
  {
    v32 = v3;
    v33 = v2;
    v19 = *(*v18 + 96);
    swift_beginAccess();
    sub_21D0D3954(v18 + v19, v7, &qword_27CE5C250);
    sub_21DBFC83C();
    sub_21D0CF7E0(v7, &qword_27CE5C250);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258);
    if ((*(*(v20 - 8) + 48))(v10, 1, v20) == 1)
    {
      return sub_21D0CF7E0(v10, &qword_27CE5D3D0);
    }

    else
    {

      v21 = *(v38 + 32);
      v22 = v36;
      v21(v12, v10, v36);
      v21(v15, v12, v22);
      v41 = v34;
      swift_getKeyPath();
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80);
      sub_21D0D9418(&qword_27CE589E8, &qword_27CE5DF80);
      sub_21D183A0C();
      v23 = sub_21DBFA46C();

      v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v25 = v35;
      swift_beginAccess();
      if (*(v25 + v24))
      {

        TTRBatchFetchManager<A>.override(objects:)(v23);
      }

      v26 = sub_21D183AA0(v23);

      sub_21D19ED38(v26);

      if (MEMORY[0x277D84F90] >> 62)
      {
        if (sub_21DBFBD7C())
        {
          sub_21DB83C28(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21DB83C28(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21DB83C28(MEMORY[0x277D84F90]);
        }
      }

      v27 = v37;
      sub_21DBF767C();
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_21DBFBEEC();
      v39 = *v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAC0);
      v28 = sub_21DBFA1AC();
      v30 = v29;

      v39 = v28;
      v40 = v30;
      MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC448D0);
      v31 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v31);
      *(&v32 - 4) = v25;
      *(&v32 - 3) = v15;
      *(&v32 - 2) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
      sub_21DBF625C();

      (*(v32 + 8))(v27, v33);
      return (*(v38 + 8))(v15, v22);
    }
  }

  return result;
}

void sub_21DA3D408(void *a1)
{
  v2 = v1;
  if (qword_280D17EB8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_280D0F1E0);
  v5 = a1;

  v6 = sub_21DBF84AC();
  v7 = sub_21DBFAEBC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 136315394;
    swift_getErrorValue();
    v10 = sub_21DBFC75C();
    v12 = sub_21D0CDFB4(v10, v11, &v35);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = 0xE000000000000000;
    v38 = 0;
    v39 = 0xE000000000000000;
    v36 = 0x203A7473696CLL;
    v37 = 0xE600000000000000;
    v14 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
    swift_beginAccess();
    v15 = *(v2 + v14);
    if (v15)
    {
      v16 = [v15 description];
      v17 = sub_21DBFA16C();
      v13 = v18;
    }

    else
    {
      v17 = 0;
    }

    MEMORY[0x223D42AA0](v17, v13);

    MEMORY[0x223D42AA0](v36, v37);

    v19 = sub_21D0CDFB4(v38, v39, &v35);

    *(v8 + 14) = v19;
    _os_log_impl(&dword_21D0C9000, v6, v7, "TTRShowRemindersInListDataModelSource did hit error {error: %s, dataModelSource: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  else
  {
  }

  v20 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
  swift_beginAccess();
  v21 = *(v2 + v20);
  if (v21)
  {
    v22 = [v21 objectID];
    if (v22)
    {
      v23 = v22;
      v24 = objc_opt_self();
      v25 = sub_21DBF52CC();
      LODWORD(v24) = [v24 isNoSuchObjectError:v25 forObjectID:v23];

      if (v24)
      {
        v26 = v23;
        v27 = sub_21DBF84AC();
        v28 = sub_21DBFAEBC();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138543362;
          *(v29 + 4) = v26;
          *v30 = v23;
          v31 = v26;
          _os_log_impl(&dword_21D0C9000, v27, v28, "List got deleted {listObjectID: %{public}@}", v29, 0xCu);
          sub_21D0CF7E0(v30, &unk_27CE60070);
          MEMORY[0x223D46520](v30, -1, -1);
          MEMORY[0x223D46520](v29, -1, -1);
        }

        v32 = v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_delegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v33 = *(v32 + 8);
          ObjectType = swift_getObjectType();
          (*(v33 + 40))(ObjectType, v33);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_21DA3DB10()
{
  result = sub_21DBF71BC();
  if (v1 <= 0x3F)
  {
    result = sub_21DBF70DC();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21DA3DC4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DA3DD20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a4)
  {
    return 0;
  }

  else
  {
    v7 = a3;
    if (a4 >= a3)
    {
      v8 = result;
      v5 = 0;
      while (a4 != v7)
      {
        v10 = v7;
        result = v8(&v10);
        if (v4)
        {
          return v5;
        }

        if ((result & 1) != 0 && __OFADD__(v5++, 1))
        {
          __break(1u);
          break;
        }

        if (a4 == ++v7)
        {
          return v5;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void *TTRTreeStorageWithFilteredItems.__allocating_init(upstreamTree:predicate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *TTRTreeStorageWithFilteredItems.init(upstreamTree:predicate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t TTRTreeStorageWithFilteredItems.numberOfChildren(of:)(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = (*(*(*(*(v3 + 88) + 8) + 8) + 24))(a1, *(v3 + 80));
  return sub_21DA3DF24(v4);
}

uint64_t sub_21DA3DF24(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2 = result;
  MEMORY[0x28223BE20](result);
  v6[2] = v1;
  v6[3] = v3;
  v4 = sub_21DA3DD20(sub_21DA3F4C4, v6, 0, v2);
  v5 = __OFSUB__(v2, v4);
  result = v2 - v4;
  if (v5)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t TTRTreeStorageWithFilteredItems.child(_:of:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_21DA3E074(a1, a2);
  swift_beginAccess();
  return (*(*(*(*(v4 + 88) + 8) + 8) + 32))(v5, a2, *(v4 + 80));
}

uint64_t sub_21DA3E074(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v4 = *(*(*(*v2 + 88) + 8) + 8);
  v19 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v17 - v6;
  if (a1 < 0)
  {
    return a1;
  }

  v17 = v4;
  v8 = *(v4 + 32);
  v9 = v2[3];
  v10 = v2;
  swift_beginAccess();
  v11 = 0;
  v12 = (v5 + 8);
  while (1)
  {
    v21 = v10[2];
    v8(v11, v20, v19, v17);
    v13 = v9(v7);
    result = (*v12)(v7, AssociatedTypeWitness);
    if ((v13 & 1) == 0 && __OFADD__(a1++, 1))
    {
      break;
    }

    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      break;
    }

    ++v11;
    if (a1 < v16)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t TTRTreeStorageWithFilteredItems.item(withID:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  v3 = *(*(*(*v2 + 88) + 8) + 8);
  v4 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_21DBFBA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  swift_beginAccess();
  v21 = *(v2 + 16);
  (*(v3 + 40))(v19, v4, v3);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v9, v6);
LABEL_6:
    v17 = 1;
    v16 = v20;
    return (*(v10 + 56))(v16, v17, 1, AssociatedTypeWitness);
  }

  v14 = *(v10 + 32);
  v14(v13, v9, AssociatedTypeWitness);
  if (((*(v2 + 24))(v13) & 1) == 0)
  {
    (*(v10 + 8))(v13, AssociatedTypeWitness);
    goto LABEL_6;
  }

  v15 = v20;
  v14(v20, v13, AssociatedTypeWitness);
  v16 = v15;
  v17 = 0;
  return (*(v10 + 56))(v16, v17, 1, AssociatedTypeWitness);
}

uint64_t TTRTreeStorageWithFilteredItems.parent(of:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v5 = *(*(*(*v3 + 88) + 8) + 8);
  v23 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v21 - v13;
  v15 = v3[3];
  if (((v15)(a1, v12) & 1) == 0)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v25 = v3[2];
  (*(v5 + 48))(a1, v23, v5);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v21 + 8))(v9, v22);
LABEL_7:
    v19 = 1;
    v18 = v24;
    return (*(v10 + 56))(v18, v19, 1, AssociatedTypeWitness);
  }

  v16 = *(v10 + 32);
  v16(v14, v9, AssociatedTypeWitness);
  if ((v15(v14) & 1) == 0)
  {
    (*(v10 + 8))(v14, AssociatedTypeWitness);
    goto LABEL_7;
  }

  v17 = v24;
  v16(v24, v14, AssociatedTypeWitness);
  v18 = v17;
  v19 = 0;
  return (*(v10 + 56))(v18, v19, 1, AssociatedTypeWitness);
}

uint64_t TTRTreeStorageWithFilteredItems.convertFromImmediateUpstream(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = *(*(*v2 + 11) + 8);
  v5 = *(*v2 + 10);
  v28 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v25 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v14);
  v27 = &v25 - v15;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v26 = a1;
  TTRTreeStorageTreeDeriving.item(at:)(a1, v5, v4, v12);
  swift_unknownObjectRelease();
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v12, v7);
  }

  else
  {
    v16 = v27;
    (*(v13 + 32))(v27, v12, AssociatedTypeWitness);
    if ((v2)[3](v16))
    {
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v18 = type metadata accessor for TTRDerivedTreeLocation();
      v19 = v26;
      v20 = sub_21DA3DF24(*(v26 + *(v18 + 36)));
      v21 = v25;
      (*(v8 + 16))(v25, v19, v7);
      v22 = v29;
      TTRDerivedTreeLocation.init(parent:index:)(v21, v20, AssociatedTypeWitness, AssociatedConformanceWitness, v29);
      (*(v13 + 8))(v27, AssociatedTypeWitness);
      return (*(*(v18 - 8) + 56))(v22, 0, 1, v18);
    }

    (*(v13 + 8))(v27, AssociatedTypeWitness);
  }

  swift_getAssociatedConformanceWitness();
  v24 = type metadata accessor for TTRDerivedTreeLocation();
  return (*(*(v24 - 8) + 56))(v29, 1, 1, v24);
}

uint64_t TTRTreeStorageWithFilteredItems.convertToImmediateUpstream(_:for:)(uint64_t a1, _BYTE *a2)
{
  v5 = *v2;
  v6 = sub_21DBF5B9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = *a2;
  sub_21DBF5B8C();
  v28 = v7;
  if ((a2 & 1) == 0)
  {
    v17 = v5 + 80;
    v11 = *(v5 + 80);
    v16 = *(v17 + 8);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v14 = type metadata accessor for TTRDerivedTreeLocation();
    sub_21DA3E074(*(a1 + *(v14 + 36)), a1);
    v18 = sub_21DBF5AFC();
LABEL_12:
    MEMORY[0x28223BE20](v18);
    *(&v25 - 4) = v11;
    *(&v25 - 3) = v16;
    *(&v25 - 2) = a1;
    type metadata accessor for TTRDerivedTreeLocation();
    v22 = sub_21DA3F2FC();
    v24 = sub_21D0E5014(sub_21DA3F2D8, (&v25 - 6), v6, v14, MEMORY[0x277D84A98], v22, MEMORY[0x277D84AC0], v23);
    (*(v28 + 8))(v9, v6);
    return v24;
  }

  v26 = v6;
  v27 = v2;
  v10 = TTRTreeStorageWithFilteredItems.numberOfChildren(of:)(a1);
  v12 = v5 + 80;
  v11 = *(v5 + 80);
  v25 = *(v12 + 8);
  v13 = *(*(v25 + 8) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for TTRDerivedTreeLocation();
  v15 = *(a1 + *(v14 + 36));
  if (v15 < v10)
  {
    sub_21DA3E074(v15, a1);
LABEL_10:
    v18 = sub_21DBF5AFC();
    v6 = v26;
    goto LABEL_11;
  }

  v19 = v27;
  swift_beginAccess();
  v29 = v19[2];
  v20 = (*(v13 + 24))(a1, v11, v13);
  if (v10 < 1)
  {
    sub_21DBF5AFC();
    goto LABEL_10;
  }

  result = sub_21DA3E074(v10 - 1, a1);
  v6 = v26;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else if (v20 >= result + 1)
  {
    v29 = result + 1;
    v30 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64D78);
    sub_21DA3F354();
    v18 = sub_21DBF5AEC();
LABEL_11:
    v16 = v25;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DA3EEF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  v11 = *a1;
  (*(v12 + 16))(v15 - v9, a2, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return TTRDerivedTreeLocation.init(parent:index:)(v10, v11, AssociatedTypeWitness, AssociatedConformanceWitness, a3);
}

BOOL sub_21DA3F040(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15 = a3;
  v3 = a2;
  v5 = *(*(*(*a2 + 88) + 8) + 8);
  v6 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v14 - v9;
  v11 = *a1;
  v12 = *(v3 + 24);
  swift_beginAccess();
  v16 = *(v3 + 16);
  (*(v5 + 32))(v11, v15, v6, v5);
  LOBYTE(v3) = v12(v10);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return (v3 & 1) == 0;
}

uint64_t TTRTreeStorageWithFilteredItems.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t TTRTreeStorageWithFilteredItems.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_21DA3F2FC()
{
  result = qword_280D1B820;
  if (!qword_280D1B820)
  {
    sub_21DBF5B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D1B820);
  }

  return result;
}

unint64_t sub_21DA3F354()
{
  result = qword_27CE64D80[0];
  if (!qword_27CE64D80[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE64D78);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CE64D80);
  }

  return result;
}

uint64_t sub_21DA3F3B8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21DA3F3F4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t Either.left.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 8))(v7, a1);
    return (*(*(*(a1 + 16) - 8) + 56))(a2, 1, 1);
  }

  else
  {
    v9 = *(a1 + 16);
    v10 = *(v9 - 8);
    (*(v10 + 32))(a2, v7, v9);
    return (*(v10 + 56))(a2, 0, 1, v9);
  }
}

uint64_t Either.right.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(v8 - 8);
    (*(v9 + 32))(a2, v7, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {
    (*(v4 + 8))(v7, a1);
    return (*(*(*(a1 + 24) - 8) + 56))(a2, 1, 1);
  }
}

uint64_t sub_21DA3F834()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

void *sub_21DA3F900(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(*(a3 + 24) - 8);
  if (*(v5 + 64) <= *(v4 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(v5 + 64);
  }

  v7 = (*(v5 + 80) | *(v4 + 80));
  if (v7 > 7 || (v6 + 1) > 0x18 || ((*(v5 + 80) | *(v4 + 80)) & 0x100000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v7 + 16) & ~v7));

    return v3;
  }

  v11 = *(a2 + v6);
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v6 <= 3)
    {
      v13 = v6;
    }

    else
    {
      v13 = 4;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v14 = *a2;
      }

      else if (v13 == 3)
      {
        v14 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v14 = *a2;
      }

LABEL_24:
      v15 = (v14 | (v12 << (8 * v6))) + 2;
      v11 = v14 + 2;
      if (v6 < 4)
      {
        v11 = v15;
      }

      goto LABEL_26;
    }

    if (v13)
    {
      v14 = *a2;
      goto LABEL_24;
    }
  }

LABEL_26:
  if (v11 == 1)
  {
    (*(v5 + 16))(a1);
    *(v3 + v6) = 1;
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v6) = 0;
  }

  return v3;
}

uint64_t sub_21DA3FABC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 24) - 8;
  v3 = *v2;
  v4 = *(*v2 + 64);
  if (v4 <= *(*(*(a2 + 16) - 8) + 64))
  {
    v4 = *(*(*(a2 + 16) - 8) + 64);
  }

  v5 = a1[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_17;
      }

      v8 = *a1;
    }

    else if (v7 == 2)
    {
      v8 = *a1;
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (a1[2] << 16);
    }

    else
    {
      v8 = *a1;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_17:
  if (v5 == 1)
  {
    v10 = v3;
  }

  else
  {
    v10 = *(*(a2 + 16) - 8);
  }

  return (*(v10 + 8))();
}

uint64_t sub_21DA3FBE0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  if (*(*(v4 - 8) + 64) <= *(v5 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(*(v4 - 8) + 64);
  }

  v7 = a2[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      v10 = *a2;
    }

    else if (v9 == 2)
    {
      v10 = *a2;
    }

    else if (v9 == 3)
    {
      v10 = *a2 | (a2[2] << 16);
    }

    else
    {
      v10 = *a2;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 2;
    v7 = v10 + 2;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_18:
  v12 = v7 == 1;
  if (v7 == 1)
  {
    v5 = *(v4 - 8);
  }

  (*(v5 + 16))(a1);
  *(a1 + v6) = v12;
  return a1;
}

unsigned __int8 *sub_21DA3FD3C(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_19:
  if (v10 == 1)
  {
    v15 = *(v6 - 8);
  }

  else
  {
    v15 = *(*(a3 + 16) - 8);
  }

  if (v10 == 1)
  {
    v16 = *(a3 + 24);
  }

  else
  {
    v16 = *(a3 + 16);
  }

  (*(v15 + 8))(a1, v16);
  v17 = *(a2 + v9);
  v18 = v17 - 2;
  if (v17 >= 2)
  {
    if (v9 <= 3)
    {
      v19 = v9;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *a2;
      }

      else if (v19 == 3)
      {
        v20 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v20 = *a2;
      }

LABEL_37:
      v21 = (v20 | (v18 << (8 * v9))) + 2;
      v17 = v20 + 2;
      if (v9 < 4)
      {
        v17 = v21;
      }

      goto LABEL_39;
    }

    if (v19)
    {
      v20 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v22 = v17 == 1;
  if (v17 == 1)
  {
    v23 = v8;
  }

  else
  {
    v23 = v7;
  }

  if (v17 == 1)
  {
    v24 = v6;
  }

  else
  {
    v24 = v5;
  }

  (*(v23 + 16))(a1, a2, v24);
  a1[v9] = v22;
  return a1;
}

uint64_t sub_21DA3FF4C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  if (*(*(v4 - 8) + 64) <= *(v5 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(*(v4 - 8) + 64);
  }

  v7 = a2[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      v10 = *a2;
    }

    else if (v9 == 2)
    {
      v10 = *a2;
    }

    else if (v9 == 3)
    {
      v10 = *a2 | (a2[2] << 16);
    }

    else
    {
      v10 = *a2;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 2;
    v7 = v10 + 2;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_18:
  v12 = v7 == 1;
  if (v7 == 1)
  {
    v5 = *(v4 - 8);
  }

  (*(v5 + 32))(a1);
  *(a1 + v6) = v12;
  return a1;
}

unsigned __int8 *sub_21DA400A8(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_19:
  if (v10 == 1)
  {
    v15 = *(v6 - 8);
  }

  else
  {
    v15 = *(*(a3 + 16) - 8);
  }

  if (v10 == 1)
  {
    v16 = *(a3 + 24);
  }

  else
  {
    v16 = *(a3 + 16);
  }

  (*(v15 + 8))(a1, v16);
  v17 = *(a2 + v9);
  v18 = v17 - 2;
  if (v17 >= 2)
  {
    if (v9 <= 3)
    {
      v19 = v9;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *a2;
      }

      else if (v19 == 3)
      {
        v20 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v20 = *a2;
      }

LABEL_37:
      v21 = (v20 | (v18 << (8 * v9))) + 2;
      v17 = v20 + 2;
      if (v9 < 4)
      {
        v17 = v21;
      }

      goto LABEL_39;
    }

    if (v19)
    {
      v20 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v22 = v17 == 1;
  if (v17 == 1)
  {
    v23 = v8;
  }

  else
  {
    v23 = v7;
  }

  if (v17 == 1)
  {
    v24 = v6;
  }

  else
  {
    v24 = v5;
  }

  (*(v23 + 32))(a1, a2, v24);
  a1[v9] = v22;
  return a1;
}

uint64_t sub_21DA402B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_21DA403E0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_21DA405A8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 24) - 8) + 64);
  if (v2 <= *(*(*(a2 + 16) - 8) + 64))
  {
    v2 = *(*(*(a2 + 16) - 8) + 64);
  }

  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return v3;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    LODWORD(v3) = v6 + 2;
    if (v2 >= 4)
    {
      return v3;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

void sub_21DA40658(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 1)
  {
    v5 = *(*(a3 + 24) - 8);
    if (*(v5 + 64) <= *(*(*(a3 + 16) - 8) + 64))
    {
      v6 = *(*(*(a3 + 16) - 8) + 64);
    }

    else
    {
      v6 = *(v5 + 64);
    }

    v7 = a2 - 2;
    if (v6 < 4)
    {
      a1[v6] = (v7 >> (8 * v6)) + 2;
      if (v6)
      {
        v9 = v7 & ~(-1 << (8 * v6));
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v9;
          a1[2] = BYTE2(v9);
        }

        else if (v6 == 2)
        {
          *a1 = v9;
        }

        else
        {
          *a1 = v7;
        }
      }
    }

    else
    {
      a1[v6] = 2;
      bzero(a1, v6);
      *a1 = v7;
    }
  }

  else
  {
    v3 = *(*(a3 + 24) - 8);
    v4 = *(*(*(a3 + 16) - 8) + 64);
    if (*(v3 + 64) > v4)
    {
      v4 = *(v3 + 64);
    }

    a1[v4] = a2;
  }
}

uint64_t sub_21DA40794()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64E08);
  v1 = __swift_project_value_buffer(v0, qword_27CE64E08);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21DA4085C()
{
  v1 = [v0 titleLabel];
  v2 = [v1 font];

  if (v2)
  {
    v3 = [v2 fontDescriptor];
    v4 = [v3 fontDescriptorWithDesign_];

    if (v4)
    {
      v6 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];
    }

    else
    {
      v6 = v2;
    }

    v5 = [v0 titleLabel];
    [v5 setFont_];
  }
}

void sub_21DA409AC()
{
  v1 = [v0 searchField];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  v3 = [v1 font];

  if (!v3)
  {
    return;
  }

  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithDesign_];

  if (v5)
  {
    v6 = [objc_opt_self() fontWithDescriptor:v5 size:0.0];
  }

  else
  {
    v6 = v3;
  }

  v7 = [v0 searchField];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 setFont_];
}

Swift::Void __swiftcall TTRIFontCustomizable.replaceFontWithRounded()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 8))();
  if (v4)
  {
    v9 = v4;
    v5 = [v4 fontDescriptor];
    v6 = [v5 fontDescriptorWithDesign_];

    if (v6)
    {
      v7 = [objc_opt_self() fontWithDescriptor:v6 size:0.0];
    }

    else
    {
      v8 = v9;
      v7 = v9;
    }

    (*(v2 + 16))(v7, v3, v2);
  }
}

uint64_t (*UILabel.ttr_font.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = [v1 font];
  return sub_21DA41DE0;
}

uint64_t (*sub_21DA40C90(void *a1))()
{
  a1[1] = v1;
  *a1 = [v1 font];
  return sub_21DA41DE0;
}

uint64_t (*UITextField.ttr_font.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = [v1 font];
  return sub_21DA41DE0;
}

id UITextView.ttr_font.getter()
{
  v1 = [v0 font];

  return v1;
}

void UITextView.ttr_font.setter(void *a1)
{
  [v1 setFont_];
}

void (*UITextView.ttr_font.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 font];
  return sub_21DA40E24;
}

void sub_21DA40E24(id *a1)
{
  v1 = *a1;
  [a1[1] setFont_];
}

void sub_21DA40E6C(char a1)
{
  if (a1)
  {
    v2 = [v1 font];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 fontDescriptor];
      v5 = [v4 fontDescriptorWithDesign_];

      if (v5)
      {
        v6 = [objc_opt_self() fontWithDescriptor:v5 size:0.0];
      }

      else
      {
        v6 = v3;
      }

      [v1 setFont_];
    }
  }
}

void (*sub_21DA40F7C(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 font];
  return sub_21DA40E24;
}

id UIButton.ttr_font.getter()
{
  v1 = [v0 titleLabel];
  v2 = [v1 font];

  return v2;
}

void sub_21DA41030(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 titleLabel];
  v4 = [v3 font];

  *a2 = v4;
}

void sub_21DA41094(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = [*a2 titleLabel];
  [v3 setFont_];
}

void UIButton.ttr_font.setter(void *a1)
{
  v2 = [v1 titleLabel];
  [v2 setFont_];
}

void (*UIButton.ttr_font.modify(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 titleLabel];
  v4 = [v3 font];

  *a1 = v4;
  return sub_21DA411EC;
}

void sub_21DA411EC(id *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v2 = v2;
    v4 = [v3 titleLabel];
    [v4 setFont_];
  }

  else
  {
    v4 = [a1[1] titleLabel];
    [v4 setFont_];
  }
}

void sub_21DA41298(void *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = a1;
    sub_21DA4085C();
  }
}

id sub_21DA412E8()
{
  v1 = [v0 titleLabel];
  v2 = [v1 font];

  return v2;
}

void sub_21DA41340(void *a1)
{
  v2 = [v1 titleLabel];
  [v2 setFont_];
}

void (*sub_21DA413AC(void *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = UIButton.ttr_font.modify(v2);
  return sub_21D4C3D30;
}

id UISearchBar.ttr_font.getter()
{
  result = [v0 searchField];
  if (result)
  {
    v2 = result;
    v3 = [result font];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21DA4147C(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 searchField];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 font];

    *a2 = v5;
  }

  else
  {
    __break(1u);
  }
}

void sub_21DA414E8(uint64_t *a1, id *a2)
{
  v2 = *a1;
  v3 = [*a2 searchField];
  if (v3)
  {
    v4 = v3;
    [v3 setFont_];
  }

  else
  {
    __break(1u);
  }
}

void UISearchBar.ttr_font.setter(void *a1)
{
  v3 = [v1 searchField];
  if (v3)
  {
    v4 = v3;
    [v3 setFont_];
  }

  else
  {
    __break(1u);
  }
}

void (*UISearchBar.ttr_font.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  result = [v1 searchField];
  if (result)
  {
    v4 = result;
    v5 = [result font];

    *a1 = v5;
    return sub_21DA41658;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21DA41658(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if ((a2 & 1) == 0)
  {
    v7 = *a1;
    v6 = [v2 searchField];
    if (v6)
    {
      v3 = v6;
      [v6 setFont_];
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  v3 = *a1;
  v4 = [v2 searchField];
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  [v4 setFont_];

  v7 = v3;
LABEL_6:
}

void sub_21DA4171C(void *a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = a1;
    sub_21DA409AC();
  }
}

id sub_21DA4176C()
{
  result = [v0 searchField];
  if (result)
  {
    v2 = result;
    v3 = [result font];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21DA417CC(void *a1)
{
  v3 = [v1 searchField];
  if (v3)
  {
    v4 = v3;
    [v3 setFont_];
  }

  else
  {
    __break(1u);
  }
}

void (*sub_21DA41840(void *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = UISearchBar.ttr_font.modify(v2);
  return sub_21D4C30A8;
}

id UIBarItem.ttr_font.getter()
{
  result = [v0 titleTextAttributesForState_];
  if (result)
  {
    v2 = result;
    type metadata accessor for Key(0);
    sub_21D112874();
    v3 = sub_21DBF9E6C();

    if (v3)
    {
      if (*(v3 + 16))
      {
        v4 = sub_21D10FE34(*MEMORY[0x277D740A8]);
        if (v5)
        {
          sub_21D0CEB98(*(v3 + 56) + 32 * v4, v7);

          sub_21DA41C6C();
          if (swift_dynamicCast())
          {
            return v6;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void UIBarItem.ttr_font.setter(void *a1)
{
  v2 = v1;
  v4 = [v1 titleTextAttributesForState_];
  if (!v4)
  {
    v15 = 0;
    if (a1)
    {
      goto LABEL_6;
    }

    v6 = 0;
    goto LABEL_12;
  }

  v5 = v4;
  type metadata accessor for Key(0);
  sub_21D112874();
  v6 = sub_21DBF9E6C();

  v15 = v6;
  if (!a1)
  {
    if (v6)
    {
      sub_21D983190(*MEMORY[0x277D740A8], &v13);
      v6 = v15;
      goto LABEL_13;
    }

LABEL_12:
    v13 = 0u;
    v14 = 0u;
LABEL_13:
    sub_21D1A8418(&v13);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

  if (v6)
  {
    v7 = a1;
    goto LABEL_7;
  }

LABEL_6:
  v7 = a1;
  v6 = sub_21D11274C(MEMORY[0x277D84F90]);
LABEL_7:
  v15 = v6;
  v8 = *MEMORY[0x277D740A8];
  *(&v14 + 1) = sub_21DA41C6C();
  *&v13 = v7;
  sub_21D0CF2E8(&v13, v12);
  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21D476CE0(v12, v8, isUniquelyReferenced_nonNull_native);

  v15 = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_8:
  type metadata accessor for Key(0);
  sub_21D112874();
  v11 = sub_21DBF9E5C();
LABEL_15:
  [v2 setTitleTextAttributes:v11 forState:0];
}

void (*UIBarItem.ttr_font.modify(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = UIBarItem.ttr_font.getter();
  return sub_21DA41BB4;
}

void sub_21DA41BB4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    UIBarItem.ttr_font.setter(v2);
  }

  else
  {
    UIBarItem.ttr_font.setter(*a1);
  }
}

void (*sub_21DA41C24(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = UIBarItem.ttr_font.getter();
  return sub_21DA41BB4;
}

unint64_t sub_21DA41C6C()
{
  result = qword_280D176B0;
  if (!qword_280D176B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D176B0);
  }

  return result;
}

uint64_t sub_21DA41CF4()
{
  if (qword_27CE56FD0 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF84BC();
  __swift_project_value_buffer(v0, qword_27CE64E08);
  v1 = sub_21DBF84AC();
  v2 = sub_21DBFAECC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21D0C9000, v1, v2, "Not intended to be called", v3, 2u);
    MEMORY[0x223D46520](v3, -1, -1);
  }

  return 0;
}

id sub_21DA41E60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRRouter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL TTRRelativeInsertionPosition.siblingAndIsAfter.getter(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2, a2, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(a2 + 16);
  v11 = *(v10 - 8);
  if (EnumCaseMultiPayload > 1)
  {
    v12 = 1;
    v13 = EnumCaseMultiPayload != 2;
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v11 + 32))(a1, v7, v10);
    v12 = 0;
    v13 = 1;
  }

  else
  {
    (*(v11 + 32))(a1, v7, v10);
    v12 = 0;
    v13 = 0;
  }

  (*(v11 + 56))(a1, v12, 1, v10);
  return v13;
}

uint64_t TTRRelativeInsertionPosition.mapSibling<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v13, v9);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    (*(v5 + 32))(v7, v11, v4);
    a1(v7);
    (*(v5 + 8))(v7, v4);
  }

  type metadata accessor for TTRRelativeInsertionPosition();
  return swift_storeEnumTagMultiPayload();
}

uint64_t TTRRelativeInsertionPosition.optionalMapSibling<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v46 = a2;
  v47 = a1;
  v49 = a5;
  v8 = sub_21DBFBA8C();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v48 = *(a4 - 8);
  MEMORY[0x28223BE20](v14);
  v43 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v42 = &v42 - v17;
  v18 = *(a3 + 16);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v42 - v24;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v5, a3, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v33 = type metadata accessor for TTRRelativeInsertionPosition();
    v34 = v49;
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v19 + 32))(v25, v29, v18);
    v47(v25);
    (*(v19 + 8))(v25, v18);
    v35 = v48;
    if ((*(v48 + 48))(v13, 1, a4) == 1)
    {
      (*(v44 + 8))(v13, v45);
      goto LABEL_8;
    }

    v40 = *(v35 + 32);
    v41 = v42;
    v40(v42, v13, a4);
    v34 = v49;
    v40(v49, v41, a4);
    v33 = type metadata accessor for TTRRelativeInsertionPosition();
  }

  else
  {
    (*(v19 + 32))(v22, v29, v18);
    v47(v22);
    (*(v19 + 8))(v22, v18);
    v32 = v48;
    if ((*(v48 + 48))(v10, 1, a4) == 1)
    {
      (*(v44 + 8))(v10, v45);
LABEL_8:
      v36 = type metadata accessor for TTRRelativeInsertionPosition();
      return (*(*(v36 - 8) + 56))(v49, 1, 1, v36);
    }

    v38 = *(v32 + 32);
    v39 = v43;
    v38(v43, v10, a4);
    v34 = v49;
    v38(v49, v39, a4);
    v33 = type metadata accessor for TTRRelativeInsertionPosition();
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v33 - 8) + 56))(v34, 0, 1, v33);
}

uint64_t TTRRelativeInsertionPosition.init(sibling:isAfter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTRRelativeInsertionPosition();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = *(a2 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1, a2, v15) == 1)
  {
    v18 = sub_21DBFBA8C();
    (*(*(v18 - 8) + 8))(a1, v18);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v19 = *(v13 + 32);
    v19(v17, a1, a2);
    v19(v9, v17, a2);
    swift_storeEnumTagMultiPayload();
    v12 = v9;
  }

  return (*(v7 + 32))(a3, v12, v6);
}

uint64_t static TTRRelativeInsertionPosition<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v40 = a1;
  v41 = a2;
  v39 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v34 - v7;
  v8 = type metadata accessor for TTRRelativeInsertionPosition();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = &v34 - v18;
  v21 = *(v20 + 48);
  v38 = v9;
  v22 = *(v9 + 16);
  v22(&v34 - v18, v40, v8, v17);
  (v22)(&v19[v21], v41, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_13;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_13;
    }

    v27 = 1;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload)
  {
    (v22)(v11, v19, v8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_10;
    }

    v24 = v39;
    v25 = &v19[v21];
    v26 = v36;
    (*(v39 + 32))(v36, v25, a3);
    v27 = sub_21DBFA10C();
    v28 = *(v24 + 8);
    v28(v26, a3);
    v28(v11, a3);
LABEL_15:
    v16 = v38;
    goto LABEL_16;
  }

  (v22)(v14, v19, v8);
  if (!swift_getEnumCaseMultiPayload())
  {
    v29 = v39;
    v30 = &v19[v21];
    v31 = v35;
    (*(v39 + 32))(v35, v30, a3);
    v27 = sub_21DBFA10C();
    v32 = *(v29 + 8);
    v32(v31, a3);
    v32(v14, a3);
    goto LABEL_15;
  }

  v11 = v14;
LABEL_10:
  (*(v39 + 8))(v11, a3);
LABEL_13:
  v27 = 0;
  v8 = TupleTypeMetadata2;
LABEL_16:
  (*(v16 + 8))(v19, v8);
  return v27 & 1;
}

uint64_t Array<A>.index(forInsertingAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a3;
  v5[3] = a4;
  return Array<A>.index<A>(forInsertingAt:where:)(a1, sub_21DA42E10, v5, a2, a3, a3, a4);
}

uint64_t Array<A>.index<A>(forInsertingAt:where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a7;
  v31 = a3;
  v12 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = type metadata accessor for TTRRelativeInsertionPosition();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v30 - v20;
  (*(v22 + 16))(&v30 - v20, a1, v18, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0;
    }

    else
    {
      return sub_21DBFA6DC();
    }
  }

  if (!EnumCaseMultiPayload)
  {
    v24 = (*(v12 + 32))(v17, v21, a6);
    v32 = a4;
    MEMORY[0x28223BE20](v24);
    *(&v30 - 6) = a5;
    *(&v30 - 5) = a6;
    v25 = v31;
    *(&v30 - 4) = v30;
    *(&v30 - 3) = a2;
    *(&v30 - 2) = v25;
    *(&v30 - 1) = v17;
    sub_21DBFA74C();
    swift_getWitnessTable();
    sub_21DBFACCC();
    v26 = v33;
    (*(v12 + 8))(v17, a6);
    return v26;
  }

  v27 = (*(v12 + 32))(v14, v21, a6);
  v32 = a4;
  MEMORY[0x28223BE20](v27);
  *(&v30 - 6) = a5;
  *(&v30 - 5) = a6;
  v28 = v31;
  *(&v30 - 4) = v30;
  *(&v30 - 3) = a2;
  *(&v30 - 2) = v28;
  *(&v30 - 1) = v14;
  sub_21DBFA74C();
  swift_getWitnessTable();
  result = sub_21DBFACCC();
  v26 = v33;
  if ((v34 & 1) != 0 || (v26 = v33 + 1, !__OFADD__(v33, 1)))
  {
    (*(v12 + 8))(v14, a6);
    return v26;
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.insert(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a4;
  v25 = a1;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  v16 = type metadata accessor for TTRRelativeInsertionPosition();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v24 - v18;
  (*(v20 + 16))(v24 - v18, a2, v16, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v7 + 16))(v15, v25, v6);
      sub_21DBFA70C();
    }

    else
    {
      (*(v7 + 16))(v15, v25, v6);
      sub_21DBFA6FC();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v7 + 32))(v9, v19, v6);
    v26 = *v4;
    swift_getWitnessTable();
    sub_21DBFAD1C();
    if (v28)
    {
      (*(v7 + 8))(v9, v6);
      return 0;
    }

    v23 = v27;
    result = (*(v7 + 16))(v15, v25, v6);
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      return result;
    }

    sub_21DBFA70C();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v7 + 32))(v12, v19, v6);
    v26 = *v4;
    swift_getWitnessTable();
    sub_21DBFAD1C();
    if (v28)
    {
      (*(v7 + 8))(v12, v6);
      return 0;
    }

    (*(v7 + 16))(v15, v25, v6);
    sub_21DBFA70C();
    (*(v7 + 8))(v12, v6);
  }

  return 1;
}

uint64_t sub_21DA435CC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_21DA43658(void *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if (v6 > 7 || (v5 + 1) > 0x18 || (*(v4 + 80) & 0x100000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v6 + 16) & ~v6));

    return v3;
  }

  v10 = a2[v5];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v5 <= 3)
    {
      v12 = *(v4 + 64);
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_23;
      }

      v13 = *a2;
    }

    else if (v12 == 2)
    {
      v13 = *a2;
    }

    else if (v12 == 3)
    {
      v13 = *a2 | (a2[2] << 16);
    }

    else
    {
      v13 = *a2;
    }

    v14 = (v13 | (v11 << (8 * v5))) + 2;
    v10 = v13 + 2;
    if (v5 < 4)
    {
      v10 = v14;
    }
  }

LABEL_23:
  if (v10 == 1)
  {
    (*(v4 + 16))(__dst);
    *(v3 + v5) = 1;
    return v3;
  }

  if (!v10)
  {
    (*(v4 + 16))(__dst);
    *(v3 + v5) = 0;
    return v3;
  }

  return memcpy(__dst, a2, v5 + 1);
}

unsigned __int8 *sub_21DA437DC(unsigned __int8 *result, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  v3 = result[v2];
  v4 = v3 - 2;
  if (v3 < 2)
  {
    goto LABEL_15;
  }

  if (v2 <= 3)
  {
    v5 = *(*(*(a2 + 16) - 8) + 64);
  }

  else
  {
    v5 = 4;
  }

  if (v5 <= 1)
  {
    if (!v5)
    {
      goto LABEL_15;
    }

    v6 = *result;
  }

  else if (v5 == 2)
  {
    v6 = *result;
  }

  else if (v5 == 3)
  {
    v6 = *result | (result[2] << 16);
  }

  else
  {
    v6 = *result;
  }

  v7 = (v6 | (v4 << (8 * v2))) + 2;
  v3 = v6 + 2;
  if (v2 < 4)
  {
    v3 = v7;
  }

LABEL_15:
  if (v3 <= 1)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  return result;
}

_BYTE *sub_21DA438B4(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = *(v3 + 64);
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = *a2;
    }

    else if (v7 == 2)
    {
      v8 = *a2;
    }

    else if (v7 == 3)
    {
      v8 = *a2 | (a2[2] << 16);
    }

    else
    {
      v8 = *a2;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_15:
  if (v5 == 1)
  {
    v10 = a1;
    (*(v3 + 16))();
    v10[v4] = 1;
    return v10;
  }

  if (!v5)
  {
    v10 = a1;
    (*(v3 + 16))();
    v10[v4] = 0;
    return v10;
  }

  return memcpy(a1, a2, v4 + 1);
}

unsigned __int8 *sub_21DA439F4(unsigned __int8 *result, unsigned __int16 *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = 8 * v4;
  v6 = result[v4];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v4 <= 3)
    {
      v8 = *(v3 + 64);
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_16;
      }

      v9 = *result;
    }

    else if (v8 == 2)
    {
      v9 = *result;
    }

    else if (v8 == 3)
    {
      v9 = *result | (result[2] << 16);
    }

    else
    {
      v9 = *result;
    }

    v10 = (v9 | (v7 << v5)) + 2;
    v6 = v9 + 2;
    if (v4 < 4)
    {
      v6 = v10;
    }
  }

LABEL_16:
  if (v6 <= 1)
  {
    v11 = result;
    v12 = a2;
    (*(v3 + 8))();
    a2 = v12;
    result = v11;
  }

  v13 = *(a2 + v4);
  v14 = v13 - 2;
  if (v13 < 2)
  {
    goto LABEL_32;
  }

  if (v4 <= 3)
  {
    v15 = v4;
  }

  else
  {
    v15 = 4;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v16 = *a2;
    }

LABEL_30:
    v17 = (v16 | (v14 << v5)) + 2;
    v13 = v16 + 2;
    if (v4 < 4)
    {
      v13 = v17;
    }

    goto LABEL_32;
  }

  if (v15)
  {
    v16 = *a2;
    goto LABEL_30;
  }

LABEL_32:
  if (v13 == 1)
  {
    v19 = result;
    (*(v3 + 16))();
    result = v19;
    v19[v4] = 1;
  }

  else if (v13)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    v18 = result;
    (*(v3 + 16))();
    result = v18;
    v18[v4] = 0;
  }

  return result;
}

_BYTE *sub_21DA43C00(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = a2[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = *(v3 + 64);
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_15;
      }

      v8 = *a2;
    }

    else if (v7 == 2)
    {
      v8 = *a2;
    }

    else if (v7 == 3)
    {
      v8 = *a2 | (a2[2] << 16);
    }

    else
    {
      v8 = *a2;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_15:
  if (v5 == 1)
  {
    v10 = a1;
    (*(v3 + 32))();
    v10[v4] = 1;
    return v10;
  }

  if (!v5)
  {
    v10 = a1;
    (*(v3 + 32))();
    v10[v4] = 0;
    return v10;
  }

  return memcpy(a1, a2, v4 + 1);
}

unsigned __int8 *sub_21DA43D40(unsigned __int8 *result, unsigned __int16 *a2, uint64_t a3)
{
  if (result == a2)
  {
    return result;
  }

  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = 8 * v4;
  v6 = result[v4];
  v7 = v6 - 2;
  if (v6 >= 2)
  {
    if (v4 <= 3)
    {
      v8 = *(v3 + 64);
    }

    else
    {
      v8 = 4;
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_16;
      }

      v9 = *result;
    }

    else if (v8 == 2)
    {
      v9 = *result;
    }

    else if (v8 == 3)
    {
      v9 = *result | (result[2] << 16);
    }

    else
    {
      v9 = *result;
    }

    v10 = (v9 | (v7 << v5)) + 2;
    v6 = v9 + 2;
    if (v4 < 4)
    {
      v6 = v10;
    }
  }

LABEL_16:
  if (v6 <= 1)
  {
    v11 = result;
    v12 = a2;
    (*(v3 + 8))();
    a2 = v12;
    result = v11;
  }

  v13 = *(a2 + v4);
  v14 = v13 - 2;
  if (v13 < 2)
  {
    goto LABEL_32;
  }

  if (v4 <= 3)
  {
    v15 = v4;
  }

  else
  {
    v15 = 4;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v16 = *a2;
    }

LABEL_30:
    v17 = (v16 | (v14 << v5)) + 2;
    v13 = v16 + 2;
    if (v4 < 4)
    {
      v13 = v17;
    }

    goto LABEL_32;
  }

  if (v15)
  {
    v16 = *a2;
    goto LABEL_30;
  }

LABEL_32:
  if (v13 == 1)
  {
    v19 = result;
    (*(v3 + 32))();
    result = v19;
    v19[v4] = 1;
  }

  else if (v13)
  {

    return memcpy(result, a2, v4 + 1);
  }

  else
  {
    v18 = result;
    (*(v3 + 32))();
    result = v18;
    v18[v4] = 0;
  }

  return result;
}

uint64_t sub_21DA43F4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = (1u >> (8 * v3)) ^ 0xFD;
  if (v3 > 3)
  {
    v4 = 253;
  }

  if (!a2)
  {
    return 0;
  }

  if (v4 >= a2)
  {
    goto LABEL_25;
  }

  v5 = v3 + 1;
  v6 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v9 = ((~(-1 << v6) + a2 - v4) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v3);
      if (v4 <= (v11 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v11);
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return v4 + (v5 | v10) + 1;
}

void sub_21DA44080(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = (1u >> (8 * v5)) ^ 0xFD;
  if (v5 > 3)
  {
    v6 = 253;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_15;
    }

LABEL_19:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_31:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_19;
  }

LABEL_15:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_35:
    if (v8 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_35;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_39:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_39;
    }
  }

LABEL_36:
  if (v8)
  {
    a1[v7] = v14;
  }
}

uint64_t sub_21DA44248(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  v3 = a1[v2];
  v4 = v3 - 2;
  if (v3 >= 2)
  {
    if (v2 <= 3)
    {
      v5 = *(*(*(a2 + 16) - 8) + 64);
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        return v3;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 2;
    LODWORD(v3) = v6 + 2;
    if (v2 >= 4)
    {
      return v3;
    }

    else
    {
      return v7;
    }
  }

  return v3;
}

void sub_21DA442DC(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (a2 > 1)
  {
    v4 = a2 - 2;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 2;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 2;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

void *TTRReminderLocationPickerInteractor.ReminderEditor.__allocating_init(reminderChangeItem:undoManager:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = 0;
  return result;
}

void *TTRReminderLocationPickerInteractor.FilterEditor.__allocating_init(filter:undoManager:save:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t TTRReminderLocationPickerInteractor.__allocating_init(editor:itemProviders:geoService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v10 = *(a4 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = sub_21DA4845C(a1, a2, a3, v11, v4, v9, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a4);
  return v12;
}

uint64_t sub_21DA444E8()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64EA8);
  v1 = __swift_project_value_buffer(v0, qword_27CE64EA8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t TTRReminderLocationPickerInteractor.ReminderEditor.relevantPreviousLocationTrigger.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  result = sub_21D7A5E9C();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v5 = result;
  v6 = sub_21DBFBD7C();
  result = v5;
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x223D44740](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);
LABEL_6:
    v4 = v3;

    return v4;
  }

  __break(1u);
  return result;
}

void *TTRReminderLocationPickerInteractor.ReminderEditor.__allocating_init(reminderDetailSubject:undoManager:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  v6 = *a1;
  v5 = *(a1 + 8);
  v4[3] = a2;
  v4[4] = 0;
  v4[2] = v6;
  if (v5)
  {
    v7 = a2;

    v8 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64828);
    sub_21D0D0F1C(&qword_27CE64830, &qword_27CE64828);
    v9 = sub_21DBF91AC();
  }

  else
  {
    v9 = 0;
  }

  v4[4] = v9;

  return v4;
}

void *TTRReminderLocationPickerInteractor.ReminderEditor.init(reminderDetailSubject:undoManager:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = *(a1 + 8);
  v3[3] = a2;
  v3[4] = 0;
  v3[2] = v4;
  if (v5)
  {
    v6 = a2;

    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64828);
    sub_21D0D0F1C(&qword_27CE64830, &qword_27CE64828);
    v8 = sub_21DBF91AC();
  }

  else
  {
    v8 = 0;
  }

  v3[4] = v8;

  return v3;
}

void sub_21DA44914(uint64_t a1, void **a2)
{
  v3 = *a2;
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
  v5 = v3;
}

void sub_21DA4498C(NSObject *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    if (qword_27CE56FD8 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE64EA8);
    v5 = a1;
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAEBC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_21DBFC75C();
      v12 = sub_21D0CDFB4(v10, v11, &v22);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21D0C9000, v6, v7, "Failed to save reminderChangeItem {error: %s}", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223D46520](v9, -1, -1);
      MEMORY[0x223D46520](v8, -1, -1);

      return;
    }

    v20 = a1;
  }

  else
  {
    if (qword_27CE56FD8 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_27CE64EA8);
    v15 = a2;
    oslog = sub_21DBF84AC();
    v16 = sub_21DBFAEDC();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = [v15 objectID];
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&dword_21D0C9000, oslog, v16, "Saved reminderChangeItem {objectID: %@}", v17, 0xCu);
      sub_21D0CF7E0(v18, &unk_27CE60070);
      MEMORY[0x223D46520](v18, -1, -1);
      MEMORY[0x223D46520](v17, -1, -1);
    }

    v20 = oslog;
  }
}

uint64_t TTRReminderLocationPickerInteractor.ReminderEditor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id TTRReminderLocationPickerInteractor.FilterEditor.filter.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void TTRReminderLocationPickerInteractor.FilterEditor.filter.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

id TTRReminderLocationPickerInteractor.FilterEditor.relevantPreviousLocationTrigger.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64880);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_21DBF7E8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  swift_beginAccess();
  v11 = *(v0 + 16);
  sub_21DBF7FDC();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21D0CF7E0(v3, &qword_27CE64880);
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    (*(v5 + 16))(v7, v10, v4);
    if ((*(v5 + 88))(v7, v4) == *MEMORY[0x277D458C8])
    {
      (*(v5 + 96))(v7, v4);
      v12 = v7[2];
      v13 = v7[3];
      v14 = v7[4];
      v15 = *(v7 + 5);
      v16 = objc_allocWithZone(MEMORY[0x277CBFBC8]);
      v17 = sub_21DBFA12C();
      v18 = [v16 initWithCenter:v17 radius:v12 identifier:{v13, v14}];

      sub_21D0D8CF0(0, &qword_280D17760);
      v19 = v18;
      v20 = sub_21DBFB3EC();
      v21 = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:v20 proximity:v15];

      (*(v5 + 8))(v10, v4);
      return v21;
    }

    v23 = *(v5 + 8);
    v23(v10, v4);
    v23(v7, v4);
  }

  return 0;
}

void *TTRReminderLocationPickerInteractor.FilterEditor.init(filter:undoManager:save:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t TTRReminderLocationPickerInteractor.FilterEditor.interactor(_:setLocationTrigger:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v46 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64880);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v42 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = sub_21DBF7E8C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v15, 1, 1, v16);
  if (a3)
  {
    v44 = v18;
    v45 = a2;
    v19 = a3;
    v20 = [v19 structuredLocation];
    v21 = [v20 displayName];
    if (v21)
    {
      v22 = v21;
      v23 = sub_21DBFA16C();
      v42 = v24;
      v43 = v23;
    }

    else
    {
      v42 = 0xE000000000000000;
      v43 = 0;
    }

    [v20 latitude];
    v26 = v25;
    [v20 longitude];
    v28 = v27;
    [v20 radius];
    v30 = v29;
    v31 = [v19 proximity];

    sub_21D0CF7E0(v15, &qword_27CE64880);
    v32 = v42;
    *v12 = v43;
    v12[1] = v32;
    v12[2] = v26;
    v12[3] = v28;
    v12[4] = v30;
    v12[5] = v31;
    (*(v17 + 104))(v12, *MEMORY[0x277D458C8], v16);
    v44(v12, 0, 1, v16);
    sub_21DA48570(v12, v15);
    a2 = v45;
  }

  sub_21DBF801C();
  swift_beginAccess();
  v33 = *(v4 + 16);
  sub_21D0D3954(v15, v9, &qword_27CE64880);
  v34 = v33;
  v35 = sub_21DBF7F9C();
  v36 = *(v4 + 16);
  *(v4 + 16) = v35;
  v37 = v35;

  ObjectType = swift_getObjectType();
  (*(a2 + 16))(v4, &protocol witness table for TTRReminderLocationPickerInteractor.FilterEditor, v37, ObjectType, a2);

  v39 = *(v4 + 32);
  if (v39)
  {
    v40 = *(v4 + 16);
    v39();
  }

  return sub_21D0CF7E0(v15, &qword_27CE64880);
}

uint64_t TTRReminderLocationPickerInteractor.FilterEditor.interactor(_:setVehicleTrigger:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64880);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = sub_21DBF7E8C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, v13);
  if (a3)
  {
    v16 = [a3 event];
    sub_21D0CF7E0(v12, &qword_27CE64880);
    *v9 = v16;
    (*(v14 + 104))(v9, *MEMORY[0x277D458C0], v13);
    v15(v9, 0, 1, v13);
    sub_21DA48570(v9, v12);
  }

  sub_21DBF801C();
  swift_beginAccess();
  v17 = *(v4 + 16);
  sub_21D0D3954(v12, v9, &qword_27CE64880);
  v18 = v17;
  v19 = sub_21DBF7F9C();
  v20 = *(v4 + 16);
  *(v4 + 16) = v19;
  v21 = v19;

  ObjectType = swift_getObjectType();
  (*(a2 + 16))(v4, &protocol witness table for TTRReminderLocationPickerInteractor.FilterEditor, v21, ObjectType, a2);

  v23 = *(v4 + 32);
  if (v23)
  {
    v24 = *(v4 + 16);
    v23();
  }

  return sub_21D0CF7E0(v12, &qword_27CE64880);
}

void sub_21DA4571C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(a2 + 24);
    v10 = *(a3 + 16);
    v14[0] = *a3;
    v14[1] = v10;
    v14[2] = *(a3 + 32);
    v15 = *(a3 + 48);
    if (v8)
    {
      v11 = 0;
    }

    else
    {
      v12 = v7;
      v11 = sub_21DBFADDC();
      sub_21D57EF34(v7, 0);
    }

    ObjectType = swift_getObjectType();
    (*(*(v9 + 8) + 48))(v14, v11, a4, ObjectType);
    swift_unknownObjectRelease();
  }
}

void sub_21DA4581C(uint64_t a1, uint64_t a2)
{
  if (qword_27CE56FD8 != -1)
  {
    swift_once();
  }

  v3 = sub_21DBF84BC();
  __swift_project_value_buffer(v3, qword_27CE64EA8);
  sub_21DA489C8(a2, v14);
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEBC();
  sub_21DA48A2C(a2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = *(a2 + 16);
    v14[0] = *a2;
    v14[1] = v8;
    v14[2] = *(a2 + 32);
    v15 = *(a2 + 48);
    sub_21DA489C8(a2, &v12);
    v9 = sub_21DBFA1AC();
    v11 = sub_21D0CDFB4(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_21D0C9000, v4, v5, "Could not get clLocation for item -- Failed to update reminder location {modelPlacemark: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223D46520](v7, -1, -1);
    MEMORY[0x223D46520](v6, -1, -1);
  }
}

void TTRReminderLocationPickerInteractor.FilterEditor.interactorSaveChanges(_:)()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v0 + 16);
    v1();
  }
}

uint64_t TTRReminderLocationPickerInteractor.FilterEditor.__deallocating_deinit()
{
  sub_21D0D0E88(*(v0 + 32));

  return swift_deallocClassInstance();
}

void sub_21DA45A8C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v0 + 16);
    v1();
  }
}

uint64_t TTRReminderLocationPickerInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRReminderLocationPickerInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D242600;
}

uint64_t TTRReminderLocationPickerInteractor.init(editor:itemProviders:geoService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v10 = *(a4 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a4, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_21DA48328(a1, a2, a3, v14, v4, v9, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a4);
  return v16;
}

uint64_t sub_21DA45D84()
{
  v1 = v0;
  v2 = v0[6];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v23 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v5 = v2 + 32;
    do
    {
      sub_21D0D32E4(v5, v20);
      v6 = v22;
      v16 = v21;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v7 = v1[14];
      v15 = v1[13];
      v9 = v1[10];
      v8 = v1[11];
      __swift_project_boxed_opaque_existential_1(v1 + 7, v9);
      v10 = v3;
      v11 = v1;
      v12 = *(v8 + 8);
      sub_21DBF8E0C();
      v12(v19, v9, v8);
      v1 = v11;
      v17 = v19[0];
      v18 = v19[1];
      (*(v6 + 8))(v15, v7, &v17, v16, v6);

      sub_21D0D73FC(v17, *(&v17 + 1), v18, *(&v18 + 1));
      sub_21DBF817C();

      __swift_destroy_boxed_opaque_existential_0(v20);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v5 += 40;
      v3 = v10 - 1;
    }

    while (v10 != 1);
    v4 = v23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64EE0);
  v20[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64EE8);
  sub_21D0D0F1C(&qword_27CE64EF0, &qword_27CE64EE8);
  sub_21DBF819C();

  sub_21D0D8CF0(0, &qword_280D1B900);
  v13 = sub_21DBFB12C();
  sub_21DBF65EC();

  sub_21DBF821C();
}

void TTRReminderLocationPickerInteractor.model.getter(void *a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v17 = a1;
    v25 = MEMORY[0x277D84F90];
    sub_21DBF8E0C();
    sub_21D18F1F0(0, v3, 0);
    v4 = v25;
    v5 = v2 + 40;
    while (1)
    {
      v7 = *(v5 - 8);
      v6 = *v5;
      v8 = *(v5 + 40);
      v9 = (v8 >> 5) - 1 >= 4 && v8 >> 5 == 0;
      v20 = *(v5 + 24);
      v21 = *(v5 + 8);
      if (v9)
      {
        v15 = v18[10];
        v14 = v18[11];
        __swift_project_boxed_opaque_existential_1(v18 + 7, v15);
        v19 = *(v14 + 8);
        v16 = v7;
        v19(v22, v15, v14);
        v10 = v22[0];
        if (v23 >> 2 == 0xFFFFFFFF && (v24 & 0xF000000000000007) == 0)
        {
          goto LABEL_17;
        }

        if (v24 >> 61 != 2)
        {
          sub_21D0D73FC(v22[0], v22[1], v23, v24);
LABEL_17:
          v10 = v7;
          goto LABEL_8;
        }

        sub_21D5801B4(v7, v6, v21, *(&v21 + 1), v20, *(&v20 + 1), v8);
        v6 = 0;
        LOBYTE(v8) = 0;
        v20 = 0u;
        v21 = 0u;
      }

      else
      {
        sub_21D5800C8(v7, v6, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), v8);
        v10 = v7;
      }

LABEL_8:
      v25 = v4;
      v12 = *(v4 + 16);
      v11 = *(v4 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_21D18F1F0((v11 > 1), v12 + 1, 1);
        v4 = v25;
      }

      v5 += 56;
      *(v4 + 16) = v12 + 1;
      v13 = v4 + 56 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v6;
      *(v13 + 48) = v21;
      *(v13 + 64) = v20;
      *(v13 + 80) = v8;
      if (!--v3)
      {

        a1 = v17;
        break;
      }
    }
  }

  *a1 = v4;
}

uint64_t TTRReminderLocationPickerInteractor.prepareForReuse(editor:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v5[2] = a1;
  v5[3] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v5[5] = a4;
  swift_unknownObjectWeakAssign();
  sub_21DBF65EC();
  swift_allocObject();
  v5[12] = sub_21DBF65DC();
}

Swift::Void __swiftcall TTRReminderLocationPickerInteractor.search(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1[10];
  v5 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v4);
  (*(v5 + 24))(v4, v5);
  sub_21DBF65EC();
  swift_allocObject();
  v1[12] = sub_21DBF65DC();

  v1[13] = countAndFlagsBits;
  v1[14] = object;
  sub_21DBF8E0C();

  sub_21DA45D84();
}

void TTRReminderLocationPickerInteractor.placemark(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 48) >> 5;
  if (v5 <= 2)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      if (v5 == 1)
      {
        v7 = v6;
        v8 = 0;
        v4 = v6;
        v6 = 0;
      }

      else
      {
        v4 = *(a1 + 32);
        sub_21DBF8E0C();
        v8 = 1;
      }

      goto LABEL_11;
    }

    if (!v4)
    {
LABEL_16:
      v11 = 2;
      v4 = 1;
      goto LABEL_20;
    }

LABEL_9:
    v10 = v4;
    v11 = 0;
    goto LABEL_20;
  }

  if (v5 == 3)
  {
    goto LABEL_9;
  }

  if (v5 != 4)
  {
    v4 = 0;
    v11 = 2;
    goto LABEL_20;
  }

  v9 = v4;
  v6 = 0;
  v8 = 2;
LABEL_11:
  v12 = v2[10];
  v13 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v12);
  v20[0] = v4;
  v20[1] = v6;
  v21 = v8;
  (*(v13 + 32))(&v22, v20, v12, v13);
  sub_21D181CB8(v4, v6, v8);
  v4 = v22;
  v14 = v23;
  v16 = v24;
  v15 = v25;
  v17 = v25 >> 61;
  if ((v25 >> 61) <= 1)
  {
    sub_21D47B42C(v22, v23, v24, v25);
    goto LABEL_16;
  }

  if (v17 == 2)
  {
    v11 = 0;
  }

  else if (v17 == 3)
  {
    v18 = v23;
    sub_21D47B42C(v4, v14, v16, v15);
    v11 = 1;
    v4 = v14;
  }

  else
  {
    v19 = (v25 & 0x1FFFFFFFFFFFFFFFLL);
    sub_21D47B42C(v4, v14, v16, v15);
    v11 = 1;
    v4 = v15 & 0x1FFFFFFFFFFFFFFFLL;
  }

LABEL_20:
  *a2 = v4;
  *(a2 + 8) = v11;
}

uint64_t TTRReminderLocationPickerInteractor.ensurePlacemarkIsFetched(for:)(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 48);
  v30 = *a1;
  v31 = v2;
  v5 = *(a1 + 32);
  v32 = *(a1 + 16);
  v29 = v5;
  v33 = v5;
  v34 = v4;
  TTRReminderLocationPickerInteractor.placemark(for:)(&v30, &v35);
  v6 = v35;
  v7 = v36;
  if (v1[19])
  {
    v8 = sub_21DBF5F5C();
    sub_21D31A8A0();
    v9 = swift_allocError();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D44D50], v8);

    sub_21DBF5FAC();

    v11 = v1[19];
  }

  else
  {
    v11 = 0;
  }

  v12 = v1[16];
  v13 = v1[17];
  v14 = v1[18];
  *(v1 + 8) = 0u;
  *(v1 + 9) = 0u;
  sub_21DA485E0(v12, v13, v14, v11);
  if (v7 != 2 || v6 != 1)
  {
    v30 = v6;
    LOBYTE(v31) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64EC0);
    swift_allocObject();
    return sub_21DBF824C();
  }

  v15 = v4 >> 5;
  if (v4 >> 5 <= 2)
  {
    if (v15)
    {
      if (v15 == 1)
      {
        v3 = *(&v29 + 1);
        v16 = *(&v29 + 1);
        v17 = 0;
        v18 = 0;
      }

      else
      {
        v17 = *(&v29 + 1);
        sub_21DBF8E0C();
        v3 = v29;
        v18 = 1;
      }

      goto LABEL_15;
    }

LABEL_13:
    v21 = sub_21DBF5F5C();
    sub_21D31A8A0();
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D44D50], v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64EC0);
    swift_allocObject();
    return sub_21DBF823C();
  }

  if (v15 != 4)
  {
    goto LABEL_13;
  }

  v20 = v3;
  v17 = 0;
  v18 = 2;
LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64EC8);
  swift_allocObject();
  sub_21D179E10(v3, v17, v18);
  v23 = sub_21DBF5FDC();
  v24 = v1[16];
  v25 = v1[17];
  v26 = v1[18];
  v27 = v1[19];
  v1[16] = v3;
  v1[17] = v17;
  v1[18] = v18;
  v1[19] = v23;
  sub_21D179E10(v3, v17, v18);

  sub_21DA485E0(v24, v25, v26, v27);
  sub_21D179E10(v3, v17, v18);

  v28 = sub_21DBF5FBC();

  if (v28)
  {
    sub_21D181CB8(v3, v17, v18);
    sub_21D181CB8(v3, v17, v18);

    sub_21D181CB8(v3, v17, v18);
    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void TTRReminderLocationPickerInteractor.updateLocation(to:region:proximity:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  if ((v9 >> 5) - 1 >= 4)
  {
    if (v9 >> 5)
    {
      v6.i64[1] = *(a1 + 24);
      v32 = vorrq_s8(v8, v6);
      if (*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | v7 | *(a1 + 8) || v9 != 160)
      {
        if (qword_27CE56FD8 != -1)
        {
          swift_once();
        }

        v51 = sub_21DBF84BC();
        __swift_project_value_buffer(v51, qword_27CE64EA8);
        v52 = sub_21DBF84AC();
        v53 = sub_21DBFAE9C();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_21D0C9000, v52, v53, "Updating reminder location {vehicle: .disconnected}", v54, 2u);
          MEMORY[0x223D46520](v54, -1, -1);
        }

        v37 = [objc_allocWithZone(MEMORY[0x277D44590]) initWithEvent_];
      }

      else
      {
        if (qword_27CE56FD8 != -1)
        {
          swift_once();
        }

        v33 = sub_21DBF84BC();
        __swift_project_value_buffer(v33, qword_27CE64EA8);
        v34 = sub_21DBF84AC();
        v35 = sub_21DBFAE9C();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_21D0C9000, v34, v35, "Updating reminder location {vehicle: .connected}", v36, 2u);
          MEMORY[0x223D46520](v36, -1, -1);
        }

        v37 = [objc_allocWithZone(MEMORY[0x277D44590]) initWithEvent_];
      }

      v55 = v37;
      swift_beginAccess();
      if (*(v4 + 16))
      {
        v56 = *(v4 + 24);
        ObjectType = swift_getObjectType();
        v58 = *(v56 + 24);
        swift_unknownObjectRetain();
        v58(v4, &protocol witness table for TTRReminderLocationPickerInteractor, v55, ObjectType, v56);

        goto LABEL_42;
      }

      goto LABEL_46;
    }

    v79 = *a1;
    v80 = v7;
    v81 = v8;
    v82 = v9;
    v73 = v8;
    v74 = v6;
    v72 = v7;
    TTRReminderLocationPickerModel.Item.localizedDisplayAttributes.getter();
    v75 = v12;
    v11 = v13;
  }

  else
  {
    v79 = *a1;
    v80 = v7;
    v81 = v8;
    v82 = v9;
    v73 = v8;
    v74 = v6;
    v72 = v7;
    v75 = TTRReminderLocationPickerModel.Item.localizedDisplayAttributes.getter();
    v11 = v10;
  }

  v79 = v74;
  v80 = v72;
  v81 = v73;
  v82 = v9;
  TTRReminderLocationPickerInteractor.placemark(for:)(&v79, &v77);
  v14 = v77;
  v15 = v78;
  if (qword_27CE56FD8 != -1)
  {
    swift_once();
  }

  v16 = sub_21DBF84BC();
  __swift_project_value_buffer(v16, qword_27CE64EA8);
  sub_21D57ED3C(v14, v15);
  v17 = a2;
  sub_21DBF8E0C();
  v18 = sub_21DBF84AC();
  v19 = sub_21DBFAE9C();
  sub_21D57EF34(v14, v15);

  v71 = v15;
  v70 = v14;
  if (!os_log_type_enabled(v18, v19))
  {

    if (!a2)
    {
      goto LABEL_23;
    }

LABEL_11:
    sub_21D0D8CF0(0, &qword_280D17760);
    if (v15)
    {
      v30 = v17;
LABEL_31:
      v44 = v17;
      v45 = sub_21DBFB3EC();
      v46 = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:v45 proximity:a3];
      swift_beginAccess();
      if (*(v4 + 16))
      {
        v47 = *(v4 + 24);
        v48 = swift_getObjectType();
        v49 = *(v47 + 16);
        swift_unknownObjectRetain();
        v50 = v46;
        v49(v4, &protocol witness table for TTRReminderLocationPickerInteractor, v46, v48, v47);

        sub_21D57EF34(v70, v71);
        swift_unknownObjectRelease();
      }

      else
      {

        sub_21D57EF34(v14, v15);
      }

      return;
    }

    v31 = v14;
    v30 = v17;
LABEL_30:
    v43 = v31;
    goto LABEL_31;
  }

  v67 = v9;
  v69 = v3;
  v20 = a2;
  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v77 = v22;
  *v21 = 136315906;
  v79.i64[0] = v14;
  v79.i8[8] = v15;
  v23 = TTRReminderLocationPickerModel.Placemark.description.getter();
  v25 = sub_21D0CDFB4(v23, v24, &v77);

  *(v21 + 4) = v25;
  *(v21 + 12) = 2080;
  *(v21 + 14) = sub_21D0CDFB4(v75, v11, &v77);
  *(v21 + 22) = 2080;
  v68 = v20;
  if (v20)
  {
    v26 = [v17 debugDescription];
    v27 = sub_21DBFA16C();
    v29 = v28;
  }

  else
  {
    v29 = 0xE300000000000000;
    v27 = 7104878;
  }

  v38 = sub_21D0CDFB4(v27, v29, &v77);

  *(v21 + 24) = v38;
  *(v21 + 32) = 2048;
  *(v21 + 34) = a3;
  _os_log_impl(&dword_21D0C9000, v18, v19, "Updating reminder location {modelPlacemark: %s, title: %s, region: %s, proximity: %ld}", v21, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x223D46520](v22, -1, -1);
  MEMORY[0x223D46520](v21, -1, -1);

  v4 = v69;
  v15 = v71;
  v14 = v70;
  LOBYTE(v9) = v67;
  if (v68)
  {
    goto LABEL_11;
  }

LABEL_23:
  if (!v15)
  {
    v31 = v14;
    v42 = sub_21DBFADDC();
    sub_21D57EF34(v14, 0);
    if (!v42)
    {

LABEL_44:
      sub_21D57ED3C(v14, v15);
      sub_21D57EF34(v14, v15);
      sub_21D57EF34(1, 2u);
      sub_21D57ED3C(v14, v15);
      v55 = sub_21DBF84AC();
      v59 = sub_21DBFAEBC();
      sub_21D57EF34(v14, v15);
      if (!os_log_type_enabled(v55, v59))
      {

        sub_21D57EF34(v14, v15);
        return;
      }

      v60 = swift_slowAlloc();
      v61 = v14;
      v62 = swift_slowAlloc();
      v77 = v62;
      *v60 = 136315138;
      v79.i64[0] = v61;
      v79.i8[8] = v15;
      v63 = TTRReminderLocationPickerModel.Placemark.description.getter();
      v65 = v15;
      v66 = sub_21D0CDFB4(v63, v64, &v77);

      *(v60 + 4) = v66;
      _os_log_impl(&dword_21D0C9000, v55, v59, "Could not get clLocation for modelPlacemark -- Failed to update reminder location {modelPlacemark: %s}", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x223D46520](v62, -1, -1);
      MEMORY[0x223D46520](v60, -1, -1);
      sub_21D57EF34(v61, v65);
LABEL_46:

      return;
    }

    sub_21D0D8CF0(0, &qword_280D17760);
    v30 = v42;
    goto LABEL_30;
  }

  if (v15 != 2 || !v14)
  {
    goto LABEL_44;
  }

  sub_21D57EF34(1, 2u);
  sub_21D57EF34(1, 2u);
  swift_beginAccess();
  if (*(v4 + 16))
  {
    v39 = *(v4 + 24);
    v40 = swift_getObjectType();
    v79 = v74;
    v80 = v72;
    v81 = v73;
    v82 = v9;
    v41 = *(v39 + 40);
    swift_unknownObjectRetain();
    v41(v4, &protocol witness table for TTRReminderLocationPickerInteractor, &v79, a3, v40, v39);
LABEL_42:
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall TTRReminderLocationPickerInteractor.clearLocation()()
{
  swift_beginAccess();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 16);
    swift_unknownObjectRetain();
    v3(v0, &protocol witness table for TTRReminderLocationPickerInteractor, 0, ObjectType, v1);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall TTRReminderLocationPickerInteractor.saveChanges()()
{
  swift_beginAccess();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 32);
    swift_unknownObjectRetain();
    v3(v0, &protocol witness table for TTRReminderLocationPickerInteractor, ObjectType, v1);
    swift_unknownObjectRelease();
  }
}

uint64_t TTRReminderLocationPickerInteractor.editor(_:didUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(v3, &protocol witness table for TTRReminderLocationPickerInteractor, a3, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_21DA4736C(char *result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = 0;
  v7 = *result;
  v8 = *(*result + 16);
  v9 = *result + 32;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v8 == v6)
    {
      goto LABEL_19;
    }

    if (v6 >= *(v7 + 16))
    {
      break;
    }

    v11 = *(v9 + 8 * v6++);
    if (v11)
    {
      v24 = a3;
      v12 = v4;
      v13 = *(v11 + 16);
      v14 = *(v10 + 2);
      v15 = v14 + v13;
      if (__OFADD__(v14, v13))
      {
        goto LABEL_21;
      }

      v23 = *(v11 + 16);
      sub_21DBF8E0C();
      result = swift_isUniquelyReferenced_nonNull_native();
      v16 = v10;
      if (!result || v15 > *(v10 + 3) >> 1)
      {
        if (v14 <= v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v14;
        }

        result = sub_21D212DD4(result, v17, 1, v10);
        v16 = result;
      }

      v4 = v12;
      a3 = v24;
      if (*(v11 + 16))
      {
        if ((*(v16 + 3) >> 1) - *(v16 + 2) < v23)
        {
          goto LABEL_22;
        }

        v18 = v16;
        swift_arrayInitWithCopy();

        v10 = v18;
        if (v23)
        {
          v19 = *(v18 + 2);
          v20 = __OFADD__(v19, v23);
          v21 = v19 + v23;
          if (v20)
          {
            goto LABEL_23;
          }

          *(v18 + 2) = v21;
        }
      }

      else
      {
        v22 = v16;

        v10 = v22;
        if (v23)
        {
          __break(1u);
LABEL_19:
          *(a3 + 120) = v10;

          return sub_21DA474F8();
        }
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_21DA474F8()
{
  v1 = v0;
  v2 = sub_21DBF9D8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v5 = sub_21DBFB12C();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v6 = sub_21DBF9DAC();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_27CE56FD8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE64EA8);

  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAE9C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    TTRReminderLocationPickerInteractor.model.getter(v16);
    v11 = *(v16[0] + 16);

    *(v10 + 4) = v11;

    _os_log_impl(&dword_21D0C9000, v8, v9, "Location Picker Interactor model did change {items.count: %ld}", v10, 0xCu);
    MEMORY[0x223D46520](v10, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    TTRReminderLocationPickerInteractor.model.getter(&v15);
    (*(v13 + 8))(v1, &protocol witness table for TTRReminderLocationPickerInteractor, &v15, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRReminderLocationPickerInteractor.deinit()
{
  swift_unknownObjectRelease();
  sub_21D157444(v0 + 32);

  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  sub_21DA485E0(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));
  return v0;
}

uint64_t TTRReminderLocationPickerInteractor.__deallocating_deinit()
{
  TTRReminderLocationPickerInteractor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21DA4786C(uint64_t a1, uint64_t a2)
{
  v5 = v2[10];
  v6 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v5);
  (*(v6 + 24))(v5, v6);
  sub_21DBF65EC();
  swift_allocObject();
  v2[12] = sub_21DBF65DC();

  v2[13] = a1;
  v2[14] = a2;
  sub_21DBF8E0C();

  return sub_21DA45D84();
}

uint64_t sub_21DA47934()
{
  result = swift_beginAccess();
  if (*(v0 + 16))
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    swift_unknownObjectRetain();
    v4(v0, &protocol witness table for TTRReminderLocationPickerInteractor, 0, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21DA479D4()
{
  result = swift_beginAccess();
  if (*(v0 + 16))
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 32);
    swift_unknownObjectRetain();
    v4(v0, &protocol witness table for TTRReminderLocationPickerInteractor, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21DA47A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v5[2] = a1;
  v5[3] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v5[5] = a4;
  swift_unknownObjectWeakAssign();
  sub_21DBF65EC();
  swift_allocObject();
  v5[12] = sub_21DBF65DC();
}

uint64_t sub_21DA47B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(v3, &protocol witness table for TTRReminderLocationPickerInteractor, a3, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRReminderLocationPickerInteractor.geoService(_:didResolveCurrentLocation:)()
{
  if (qword_27CE56FD8 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF84BC();
  __swift_project_value_buffer(v0, qword_27CE64EA8);
  v1 = sub_21DBF84AC();
  v2 = sub_21DBFAE9C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_21D0C9000, v1, v2, "Current location did load", v3, 2u);
    MEMORY[0x223D46520](v3, -1, -1);
  }

  return sub_21DA474F8();
}

void TTRReminderLocationPickerInteractor.geoService(_:didResolve:to:)(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = v3;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *a3;
  v26 = a3[3];
  v27 = a3[1];
  v9 = v26 >> 61;
  if (v26 >> 61 == 2)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = v3[5];
      ObjectType = swift_getObjectType();
      v30 = v6;
      v31 = v5;
      v32 = v7;
      (*(v10 + 16))(v3, &protocol witness table for TTRReminderLocationPickerInteractor, &v30, v8, ObjectType, v10);
      swift_unknownObjectRelease();
    }
  }

  v13 = v3 + 16;
  v12 = v3[16];
  v14 = v3[19];
  if (v14)
  {
    v25 = v8;
    v16 = v4[17];
    v15 = v4[18];
    v30 = v6;
    v31 = v5;
    v32 = v7;
    v28[0] = v12;
    v28[1] = v16;
    v29 = v15;
    sub_21DA48620(v12, v16, v15, v14);
    if ((_s15RemindersUICore029TTRGeoLocationServiceResolvedD0O7AddressO2eeoiySbAE_AEtFZ_0(&v30, v28) & 1) == 0)
    {
LABEL_9:
      sub_21DA485E0(v12, v16, v15, v14);
      return;
    }

    v17 = v4[16];
    v18 = v4[17];
    v19 = v4[18];
    v20 = v4[19];
    *v13 = 0u;
    *(v4 + 9) = 0u;
    sub_21DA485E0(v17, v18, v19, v20);
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v22 = v27;
      }

      else
      {
        v22 = (v26 & 0x1FFFFFFFFFFFFFFFLL);
      }

      v23 = v22;
      sub_21DBF5FAC();
      sub_21DA485E0(v12, v16, v15, v14);
    }

    else
    {
      if (v9 < 2)
      {
        sub_21DA48660();
        v21 = swift_allocError();
        sub_21DBF5FAC();

        goto LABEL_9;
      }

      v30 = v25;
      LOBYTE(v31) = 0;
      v24 = v25;
      sub_21DBF5FCC();
      sub_21DA485E0(v12, v16, v15, v14);
      sub_21D57EF34(v30, v31);
    }
  }
}

void _s15RemindersUICore35TTRReminderLocationPickerInteractorC12FilterEditorC10interactor_15regionNotLoaded9proximityyAA0cdeF24TypeWithEditingAdditions_p_AA0cdE5ModelV4ItemOSo17REMAlarmProximityVtF_0(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v7 = a3[1];
  v19 = *a3;
  v20 = v7;
  v21 = a3[2];
  v22 = *(a3 + 48);
  ObjectType = swift_getObjectType();
  v9 = a3[1];
  v17[0] = *a3;
  v17[1] = v9;
  v17[2] = a3[2];
  v18 = *(a3 + 48);
  (*(*(a2 + 8) + 40))(v17, ObjectType);
  v10 = swift_allocObject();
  *(v10 + 24) = a2;
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = v20;
  *(v11 + 24) = v19;
  *(v11 + 40) = v12;
  *(v11 + 56) = v21;
  *(v11 + 72) = v22;
  *(v11 + 80) = a4;
  sub_21DA489C8(&v19, v17);
  v13 = sub_21DBF816C();
  sub_21DBF820C();

  v14 = swift_allocObject();
  v15 = v20;
  *(v14 + 16) = v19;
  *(v14 + 32) = v15;
  *(v14 + 48) = v21;
  *(v14 + 64) = v22;
  sub_21DA489C8(&v19, v17);
  v16 = sub_21DBF816C();
  sub_21DBF822C();
}

uint64_t sub_21DA4808C(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v4)
  {
    v5 = type metadata accessor for TTRBasicUndoContext();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v7 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v7 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v6;
  v14[3] = v5;
  v14[4] = v7;
  sub_21D0D3954(v14, v13, &unk_27CE60D80);
  type metadata accessor for TTRReminderEditor();
  v8 = swift_allocObject();
  *(v8 + 72) = 0;
  *(v8 + 16) = v3;
  sub_21D0D3954(v13, v8 + 24, &unk_27CE60D80);
  *(v8 + 64) = 0;
  v9 = v3;
  v10 = v4;
  v11 = [v9 fetchedCurrentDueDateDeltaAlert];
  sub_21D0CF7E0(v14, &unk_27CE60D80);
  sub_21D0CF7E0(v13, &unk_27CE60D80);
  *(v8 + 72) = v11;
  _s15RemindersUICore17TTRReminderEditorC4edit14vehicleTriggerySo015REMAlarmVehicleG0CSg_tF_0(a1);
}

void _s15RemindersUICore35TTRReminderLocationPickerInteractorC14ReminderEditorC21interactorSaveChangesyyAA0cdeF24TypeWithEditingAdditions_pF_0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = [v1 saveRequest];
  sub_21D0D8CF0(0, &qword_280D1B900);
  v3 = sub_21DBFB12C();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  aBlock[4] = sub_21DA48A80;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D11E5E4;
  aBlock[3] = &block_descriptor_132;
  v5 = _Block_copy(aBlock);
  v6 = v1;

  [v2 saveWithQueue:v3 completion:v5];
  _Block_release(v5);
}

uint64_t sub_21DA48328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[3] = a6;
  v15[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  *(a5 + 40) = 0;
  *(a5 + 24) = 0;
  *(a5 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 120) = MEMORY[0x277D84F90];
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  swift_beginAccess();
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a5 + 48) = a3;
  sub_21D0D32E4(v15, a5 + 56);
  *(a5 + 104) = 0;
  *(a5 + 112) = 0xE000000000000000;
  sub_21DBF65EC();
  swift_allocObject();
  *(a5 + 96) = sub_21DBF65DC();
  sub_21DA45D84();
  __swift_destroy_boxed_opaque_existential_0(v15);
  return a5;
}

uint64_t sub_21DA4845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  (*(v13 + 16))(v15, a4, a6);
  return sub_21DA48328(a1, a2, a3, v15, v16, a6, a7);
}

uint64_t sub_21DA48570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_21DA485E0(void *result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21D181CB8(result, a2, a3);
  }

  return result;
}

void *sub_21DA48620(void *result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21D179E10(result, a2, a3);
  }

  return result;
}

unint64_t sub_21DA48660()
{
  result = qword_27CE64ED0;
  if (!qword_27CE64ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64ED0);
  }

  return result;
}

uint64_t dispatch thunk of TTRReminderLocationPickerInteractorDelegate.interactor(_:didUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))();
}

{
  return (*(a5 + 24))();
}

unint64_t sub_21DA48934()
{
  result = qword_27CE64ED8;
  if (!qword_27CE64ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64ED8);
  }

  return result;
}

uint64_t REMNavigationSpecifier.init(predefinedSmartListType:pathSpecifier:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = sub_21DBF667C();
  (*(*(v6 - 8) + 32))(a3, a2, v6);
  v7 = sub_21DBF66FC();
  v8 = *(*(v7 - 8) + 104);
  v9 = **(&unk_27832F770 + v5);

  return v8(a3, v9, v7);
}

uint64_t static REMNavigationSpecifier.from(spotlightItemIdentifier:)(uint64_t a1, uint64_t a2)
{
  sub_21D0CE468();
  v4 = sub_21DBFB12C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E08);
  swift_allocObject();
  sub_21DBF828C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E10);
  sub_21DBF81FC();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_21DBF8E0C();
  v6 = sub_21DBF816C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E18);
  sub_21DBF820C();

  v7 = sub_21DBF816C();
  sub_21DBF66FC();
  v8 = sub_21DBF820C();

  return v8;
}

id sub_21DA48D08@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 entityName];
  v5 = sub_21DBFA16C();
  v7 = v6;

  v8 = [objc_opt_self() cdEntityName];
  v9 = sub_21DBFA16C();
  v11 = v10;

  if (v9 == v5 && v11 == v7)
  {

LABEL_8:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62680);
    *a2 = a1;
    v14 = a1;
    sub_21DBF66AC();
    v15 = *MEMORY[0x277D45248];
    v16 = sub_21DBF66FC();
    return (*(*(v16 - 8) + 104))(a2, v15, v16);
  }

  v13 = sub_21DBFC64C();

  if (v13)
  {
    goto LABEL_8;
  }

  v18 = [objc_opt_self() cdEntityName];
  v19 = sub_21DBFA16C();
  v21 = v20;

  if (v19 == v5 && v21 == v7)
  {

LABEL_13:

    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0) + 48);
    *a2 = a1;
    v24 = *MEMORY[0x277D45140];
    v25 = sub_21DBF668C();
    (*(*(v25 - 8) + 104))(&a2[v23], v24, v25);
    v26 = MEMORY[0x277D451F8];
LABEL_14:
    v27 = *v26;
    v28 = sub_21DBF66FC();
    (*(*(v28 - 8) + 104))(a2, v27, v28);
    return a1;
  }

  v22 = sub_21DBFC64C();

  if (v22)
  {
    goto LABEL_13;
  }

  v29 = [objc_opt_self() cdEntityName];
  v30 = sub_21DBFA16C();
  v32 = v31;

  if (v30 == v5 && v32 == v7)
  {

LABEL_19:
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0) + 48);
    *a2 = a1;
    v35 = *MEMORY[0x277D45140];
    v36 = sub_21DBF668C();
    (*(*(v36 - 8) + 104))(&a2[v34], v35, v36);
    v26 = MEMORY[0x277D451D8];
    goto LABEL_14;
  }

  v33 = sub_21DBFC64C();

  if (v33)
  {
    goto LABEL_19;
  }

  v37 = [a1 entityName];
  v38 = sub_21DBFA16C();
  v40 = v39;

  sub_21DA49584();
  swift_allocError();
  *v41 = v38;
  v41[1] = v40;
  return swift_willThrow();
}