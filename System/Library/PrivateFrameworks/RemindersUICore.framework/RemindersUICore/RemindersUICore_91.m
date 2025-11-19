void sub_21D97B164(uint64_t a1)
{
  if (*a1 != 1)
  {
    return;
  }

  v2 = *(a1 + 16);
  v1 = a1 + 16;
  v3 = *(v1 - 8);
  v4 = *(v1 + 8);
  swift_bridgeObjectRetain_n();
  v24 = v2;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 == v7)
  {
LABEL_27:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v22 = v6[2];
    if (v22)
    {
      v23 = 4;
      do
      {
        sub_21D29B0D0(&v25, v6[v23]);

        v23 += 3;
        --v22;
      }

      while (v22);
    }

    return;
  }

  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D44740](v5, v3);
      goto LABEL_12;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

    v8 = *(v3 + 8 * v5 + 32);
LABEL_12:
    v9 = v8;
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_32;
    }

    if (*(v4 + 16) && (v11 = sub_21D17E07C(v8), (v12 & 1) != 0))
    {
      v13 = *(v4 + 56) + 24 * v11;
      v14 = *(v13 + 8);
      v15 = *(v13 + 16);
      v16 = *v13;
      sub_21DBF8E0C();

      v17 = sub_21D1E21BC(v16, v24);
      if (v17)
      {
      }

      else
      {
        v25 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21D18F60C(0, v6[2] + 1, 1);
          v6 = v25;
        }

        v19 = v6[2];
        v18 = v6[3];
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          sub_21D18F60C((v18 > 1), v19 + 1, 1);
          v20 = v19 + 1;
          v6 = v25;
        }

        v6[2] = v20;
        v21 = &v6[3 * v19];
        v21[4] = v16;
        v21[5] = v14;
        v21[6] = v15;
      }

      v5 = v10;
      if (!(v3 >> 62))
      {
        goto LABEL_3;
      }

LABEL_5:
      v7 = sub_21DBFBD7C();
      if (v5 == v7)
      {
        goto LABEL_27;
      }
    }

    else
    {

      ++v5;
      if (v10 == v7)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_21D97B3FC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v3 = *(a1 + 2);
    v2 = *(a1 + 3);
    v5 = *(a2 + 2);
    v4 = *(a2 + 3);
    if (sub_21D1D7450(*(a1 + 1), *(a2 + 1)) & 1) != 0 && (sub_21D322414(v3, v5))
    {

      sub_21D371718(v2, v4);
    }
  }
}

uint64_t sub_21D97B494(char a1, uint64_t a2, char a3)
{
  LOBYTE(v3) = a3;
  v4 = a2;
  LOBYTE(v5) = a1;
  v34 = MEMORY[0x277D84F98];
  v6 = *(a2 + 16);
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v35 = sub_21DBFBF9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE643A0);
    sub_21DBF9EAC();
    if (!v6)
    {
      break;
    }

    v30 = v3;
    v31 = v5;
    v7 = v34;
    v5 = (v4 + 48);
    v3 = v6 & ~(v6 >> 63);
    while (v3)
    {
      v32 = *(v5 - 1);
      v4 = *v5;
      v10 = *(v5 - 2);
      sub_21DBF8E0C();
      v11 = v10;
      MEMORY[0x223D42D80]();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v12 = v11;
      sub_21DBF8E0C();
      v13 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v7;
      v15 = sub_21D17E07C(v13);
      v17 = v7[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        goto LABEL_25;
      }

      v21 = v16;
      if (v7[3] < v20)
      {
        sub_21D21EB04(v20, isUniquelyReferenced_nonNull_native);
        v15 = sub_21D17E07C(v13);
        if ((v21 & 1) != (v22 & 1))
        {
          sub_21D37FB1C();
          result = sub_21DBFC70C();
          __break(1u);
          return result;
        }

LABEL_14:
        v23 = v32;
        if (v21)
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v27 = v15;
      sub_21D225B9C();
      v15 = v27;
      v23 = v32;
      v7 = v33;
      if (v21)
      {
LABEL_4:
        v8 = v7[7] + 24 * v15;
        v9 = *v8;
        *v8 = v13;
        *(v8 + 8) = v23;
        *(v8 + 16) = v4;

        goto LABEL_5;
      }

LABEL_15:
      v7[(v15 >> 6) + 8] |= 1 << v15;
      *(v7[6] + 8 * v15) = v13;
      v24 = (v7[7] + 24 * v15);
      *v24 = v13;
      v24[1] = v23;
      v24[2] = v4;

      v25 = v7[2];
      v19 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v19)
      {
        goto LABEL_26;
      }

      v7[2] = v26;
LABEL_5:
      --v3;
      v5 += 3;
      if (!--v6)
      {
        LOBYTE(v3) = v30;
        LOBYTE(v5) = v31;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_21DBFBD7C();
  }

LABEL_20:
  if (v3)
  {
    v28 = 256;
  }

  else
  {
    v28 = 0;
  }

  return v28 & 0xFFFFFFFE | v5 & 1;
}

void sub_21D97B794(uint64_t a1, uint64_t a2)
{
  if (*a1 != 1)
  {
    return;
  }

  v3 = *(a1 + 16);
  v2 = a1 + 16;
  v4 = *(v2 - 8);
  v5 = *(v2 + 8);
  swift_bridgeObjectRetain_n();
  v26 = v3;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 == v8)
  {
LABEL_28:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v23 = v7[2];
    if (v23)
    {
      v24 = 4;
      do
      {
        sub_21D29B0D0(&v27, v7[v24]);

        v24 += 3;
        --v23;
      }

      while (v23);
    }

    return;
  }

  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x223D44740](v6, v4);
      goto LABEL_12;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

    v9 = *(v4 + 8 * v6 + 32);
LABEL_12:
    v10 = v9;
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_33;
    }

    if (*(v5 + 16) && (v12 = sub_21D17E07C(v9), (v13 & 1) != 0))
    {
      v14 = *(v5 + 56) + 24 * v12;
      v15 = *(v14 + 8);
      v16 = *(v14 + 16);
      v17 = *v14;
      sub_21DBF8E0C();

      v18 = sub_21D1E21BC(v17, v26);
      if (v18 & 1) == 0 && (sub_21D1E21BC(v17, a2))
      {
        v27 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21D18F60C(0, v7[2] + 1, 1);
          v7 = v27;
        }

        v20 = v7[2];
        v19 = v7[3];
        v21 = v20 + 1;
        if (v20 >= v19 >> 1)
        {
          sub_21D18F60C((v19 > 1), v20 + 1, 1);
          v21 = v20 + 1;
          v7 = v27;
        }

        v7[2] = v21;
        v22 = &v7[3 * v20];
        v22[4] = v17;
        v22[5] = v15;
        v22[6] = v16;
      }

      else
      {
      }

      v6 = v11;
      if (!(v4 >> 62))
      {
        goto LABEL_3;
      }

LABEL_5:
      v8 = sub_21DBFBD7C();
      if (v6 == v8)
      {
        goto LABEL_28;
      }
    }

    else
    {

      ++v6;
      if (v11 == v8)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_21D97BA40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D97BAB8()
{
  result = qword_27CE643A8;
  if (!qword_27CE643A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE643A8);
  }

  return result;
}

uint64_t TTRITreeViewExpandedState.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

__n128 TTRITreeViewCellModel.init(level:expandedState:itemIdentifier:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = a1;
  *(a4 + 8) = v4;
  result = *a3;
  v6 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v6;
  *(a4 + 48) = *(a3 + 32);
  return result;
}

uint64_t static TTRITreeViewCellModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    JUMPOUT(0x223D445C0);
  }

  return 0;
}

unint64_t sub_21D97BC0C()
{
  result = qword_27CE643B0;
  if (!qword_27CE643B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE643B0);
  }

  return result;
}

uint64_t sub_21D97BC60(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    JUMPOUT(0x223D445C0);
  }

  return 0;
}

uint64_t initializeWithCopy for TTRITreeViewCellModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  (**(v3 - 8))(a1 + 16, a2 + 16);
  return a1;
}

uint64_t assignWithCopy for TTRITreeViewCellModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  __swift_assign_boxed_opaque_existential_1((a1 + 16), (a2 + 16));
  return a1;
}

uint64_t assignWithTake for TTRITreeViewCellModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  __swift_destroy_boxed_opaque_existential_0(a1 + 16);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRITreeViewCellModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for TTRITreeViewCellModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_21D97BF04()
{
  v1 = qword_280D13DC8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21D97BF48(double a1)
{
  v3 = qword_280D13DC8;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_21D97BFF8()
{
  v1 = [v0 contentView];
  [v1 bounds];

  return swift_beginAccess();
}

id sub_21D97C094()
{
  v1 = *&v0[qword_280D13DD0];
  v2 = [v0 contentView];
  [v2 layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  return [v1 setLayoutMargins_];
}

id TTRITableViewContainerCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

id TTRITableViewContainerCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[qword_280D13DC8] = 0x4069000000000000;
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  [v6 setPreservesSuperviewLayoutMargins_];
  [v6 setLayoutMarginsRelativeArrangement_];
  [v6 setAutoresizingMask_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview_];
  *&v3[qword_280D13DD0] = v6;
  v7 = v6;
  if (a3)
  {
    v8 = sub_21DBFA12C();
  }

  else
  {
    v8 = 0;
  }

  v22.receiver = v3;
  v22.super_class = type metadata accessor for TTRITableViewContainerCell();
  v9 = objc_msgSendSuper2(&v22, sel_initWithStyle_reuseIdentifier_, a1, v8);

  v10 = v9;
  v11 = [v10 contentView];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v6 setFrame_];
  v20 = [v10 contentView];

  [v20 addSubview_];
  return v10;
}

id sub_21D97C3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return TTRITableViewContainerCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

id TTRITableViewContainerCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TTRITableViewContainerCell.__allocating_init(reuseIdentifier:)()
{
  v1 = objc_allocWithZone(v0);
  *&v1[qword_280D13DC8] = 0x4069000000000000;
  sub_21DBFC31C();
  __break(1u);
}

double sub_21D97C528(double a1)
{
  sub_21D97C094();
  sub_21D97BFF8();
  [*(v1 + qword_280D13DD0) effectiveLayoutSizeFittingSize_];
  return a1;
}

double sub_21D97C57C(void *a1, double a2)
{
  v3 = a1;
  v4 = sub_21D97C528(a2);

  return v4;
}

id sub_21D97C5C8()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for TTRITableViewContainerCell();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  sub_21D97C094();
  v1 = [v0 contentView];
  [v1 bounds];

  sub_21D97BFF8();
  v2 = *&v0[qword_280D13DD0];
  [v2 effectiveLayoutSizeFittingSize_];
  v4 = v3;
  v6 = v5;
  v7 = [v0 contentView];
  [v7 bounds];
  v9 = v8;
  v11 = v10;

  if (v4 > v9)
  {
    v12 = v4;
  }

  else
  {
    v12 = v9;
  }

  if (v6 > v11)
  {
    v13 = v6;
  }

  else
  {
    v13 = v11;
  }

  return [v2 setFrame_];
}

void sub_21D97C704(void *a1)
{
  v1 = a1;
  sub_21D97C5C8();
}

id TTRITableViewContainerCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRITableViewContainerCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s15RemindersUICore26TTRITableViewContainerCellC5coderACyxGSgSo7NSCoderC_tcfc_0()
{
  *(v0 + qword_280D13DC8) = 0x4069000000000000;
  sub_21DBFC31C();
  __break(1u);
}

void _s15RemindersUICore26TTRITableViewContainerCellC15reuseIdentifierACyxGSgSSSg_tcfc_0()
{
  *(v0 + qword_280D13DC8) = 0x4069000000000000;
  sub_21DBFC31C();
  __break(1u);
}

uint64_t sub_21D97C9C0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v3;
    v6 = a1;
    v4 = a2;
    *v26 = *v3;
    *&v26[16] = *(v3 + 16);
    *&v26[32] = *(v3 + 32);
    a1 = sub_21D97E6B4();
    v5 = *v26;
    v25 = *&v26[8];
    v27 = *v26;
    v7 = *v26 >> 62;
    if (!(*v26 >> 62))
    {
      sub_21D97E824(a1, v6, *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10));
      if (v9)
      {
        v10 = *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      else
      {
        v10 = v8;
      }

      result = sub_21D97E6B4();
      if (v10 < result)
      {
        goto LABEL_30;
      }

      v12 = result;
      result = *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= v12)
      {
        goto LABEL_8;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  v21 = a1;
  v22 = sub_21DBFBD7C();
  sub_21D97E824(v21, v6, v22);
  if (v24)
  {
    v23 = sub_21DBFBD7C();
  }

  v10 = v23;
  result = sub_21D97E6B4();
  if (v10 < result)
  {
    goto LABEL_30;
  }

  v12 = result;
  result = sub_21DBFBD7C();
  if (result < v12)
  {
    goto LABEL_29;
  }

LABEL_8:
  if (v12 < 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v7)
  {
    result = sub_21DBFBD7C();
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v10)
  {
    goto LABEL_32;
  }

  if (v10 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((v5 & 0xC000000000000001) == 0 || v12 == v10)
  {
    sub_21DBF8E0C();
    if (!v7)
    {
LABEL_20:
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v15 + 32;
      v17 = (2 * v10) | 1;
LABEL_23:
      result = sub_21D0CF7E0(&v27, &qword_27CE5DE68);
      *v4 = v15;
      *(v4 + 8) = v16;
      *(v4 + 16) = v12;
      *(v4 + 24) = v17;
      *(v4 + 32) = v25;
      *(v4 + 48) = *&v26[24];
      *(v4 + 64) = *(v2 + 40);
      return result;
    }

LABEL_22:
    sub_21D0CF7E0(&v27, &qword_27CE5DE68);
    v15 = sub_21DBFC3BC();
    v16 = v18;
    v12 = v19;
    v17 = v20;
    goto LABEL_23;
  }

  if (v12 < v10)
  {
    sub_21D97EEFC();
    sub_21DBF8E0C();
    v13 = v12;
    do
    {
      v14 = v13 + 1;
      sub_21DBFBF6C();
      v13 = v14;
    }

    while (v10 != v14);
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_21D97CC08()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE643B8);
  v1 = __swift_project_value_buffer(v0, qword_27CE643B8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRHashtagAssociationPresenterCapability.HashtagLabelRenameIntent.NoOpReason.description.getter()
{
  if (*v0)
  {
    return 0x656D614E656D6173;
  }

  else
  {
    return 0x4E64696C61766E69;
  }
}

uint64_t TTRHashtagAssociationPresenterCapability.HashtagLabelRenameIntent.NoOpReason.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D97CDA0()
{
  if (*v0)
  {
    return 0x656D614E656D6173;
  }

  else
  {
    return 0x4E64696C61766E69;
  }
}

uint64_t TTRHashtagAssociationPresenterCapability.__allocating_init(interactor:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

Swift::String_optional __swiftcall TTRHashtagAssociationPresenterCapability.validateNewHashtagName(_:hasMarkedText:)(Swift::String _, Swift::Bool hasMarkedText)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v5 = sub_21DBF4CAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = 0;
  if (!hasMarkedText)
  {
    v29[4] = 0;
    v29[5] = 0xE000000000000000;
    v11 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v11 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    v29[0] = countAndFlagsBits;
    v29[1] = object;
    v29[2] = 0;
    v29[3] = v11;
    sub_21DBF8E0C();
    v12 = sub_21DBFA30C();
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      do
      {
        sub_21DBF4C2C();
        v17 = sub_21DBF4BFC();
        (*(v6 + 8))(v8, v5);
        if (v17)
        {
          MEMORY[0x223D42A90](v14, v15);
        }

        v14 = sub_21DBFA30C();
        v15 = v16;
      }

      while (v16);
    }

    v18 = sub_21D97EC88(75);
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = MEMORY[0x223D429B0](v18, v20, v22, v24);
    v10 = v26;

    if (v25 == countAndFlagsBits && v10 == object || (sub_21DBFC64C() & 1) != 0)
    {

      v9 = 0;
      v10 = 0;
    }

    else
    {
      v9 = v25;
    }
  }

  v27 = v10;
  result.value._object = v27;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t TTRHashtagAssociationPresenterCapability.hashtagLabelRenameIntent(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = sub_21DBF78CC();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  v6[20] = swift_task_alloc();
  v8 = sub_21DBF582C();
  v6[21] = v8;
  v6[22] = *(v8 - 8);
  v6[23] = swift_task_alloc();
  sub_21DBFA84C();
  v6[24] = sub_21DBFA83C();
  v10 = sub_21DBFA7CC();
  v6[25] = v10;
  v6[26] = v9;

  return MEMORY[0x2822009F8](sub_21D97D1FC, v10, v9);
}

uint64_t sub_21D97D1FC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v5 = v0[13];
  v4 = v0[14];
  sub_21DBF57AC();
  v6 = String.safeNameForHashtag(locale:)(v1, v5, v4);
  v8 = v7;
  v0[27] = v6;
  v0[28] = v7;
  (*(v2 + 8))(v1, v3);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    v12 = v0[10];

    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    goto LABEL_16;
  }

  v10 = v6 == v0[11] && v8 == v0[12];
  if (v10 || (sub_21DBFC64C() & 1) != 0)
  {
    v11 = v0[10];

    *v11 = xmmword_21DC11550;
    *(v11 + 16) = 0;
LABEL_16:

    v25 = v0[1];

    return v25();
  }

  v13 = v0[21];
  v14 = v0[22];
  v15 = v0[20];
  v16 = v0[12];
  v0[5] = v0[11];
  v0[6] = v16;
  sub_21DBF57AC();
  v17 = *(v14 + 56);
  v17(v15, 0, 1, v13);
  sub_21D176F0C();
  v31 = sub_21DBFBBEC();
  v19 = v18;
  sub_21D0CF7E0(v15, &unk_27CE65010);
  v0[7] = v6;
  v0[8] = v8;
  sub_21DBF57AC();
  v17(v15, 0, 1, v13);
  v20 = sub_21DBFBBEC();
  v22 = v21;
  sub_21D0CF7E0(v15, &unk_27CE65010);
  if (v31 == v20 && v19 == v22)
  {

LABEL_15:

    v24 = v0[10];
    *v24 = v6;
    *(v24 + 8) = v8;
    *(v24 + 16) = 1;
    goto LABEL_16;
  }

  v23 = sub_21DBFC64C();

  if (v23)
  {
    goto LABEL_15;
  }

  v27 = *(v0[15] + 24);
  ObjectType = swift_getObjectType();
  v32 = (*(v27 + 48) + **(v27 + 48));
  v29 = swift_task_alloc();
  v0[29] = v29;
  *v29 = v0;
  v29[1] = sub_21D97D5BC;
  v30 = v0[18];

  return v32(v30, ObjectType, v27);
}

uint64_t sub_21D97D5BC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = sub_21D97D824;
  }

  else
  {
    v5 = sub_21D97D6F8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D97D6F8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];

  (*(v4 + 32))(v1, v2, v3);
  v5 = sub_21DBF781C();
  v7 = v6;
  (*(v4 + 8))(v1, v3);
  v8 = v0[28];
  v9 = v0[10];
  if (v7)
  {

    *v9 = v5;
    v10 = 2;
  }

  else
  {
    *v9 = v0[27];
    v10 = 1;
    v7 = v8;
  }

  *(v9 + 8) = v7;
  *(v9 + 16) = v10;

  v11 = v0[1];

  return v11();
}

uint64_t sub_21D97D824()
{
  v18 = v0;

  if (qword_27CE56EB0 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE643B8);
  v3 = v1;
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[30];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_21DBFC75C();
    v12 = sub_21D0CDFB4(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_21D0C9000, v4, v5, "TTRHashtagAssociationPresenterCapability: fetchAllHashtagLabels failed {error: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[28];
  v14 = v0[10];
  *v14 = v0[27];
  *(v14 + 8) = v13;
  *(v14 + 16) = 1;

  v15 = v0[1];

  return v15();
}

uint64_t TTRHashtagAssociationPresenterCapability.obtainNewHashtagNameFromUser(srcLabel:showInputUI:showMergeUI:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  sub_21DBFA84C();
  v7[12] = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();
  v7[13] = v9;
  v7[14] = v8;

  return MEMORY[0x2822009F8](sub_21D97DACC, v9, v8);
}

uint64_t sub_21D97DACC()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v0[15] = v1;
  sub_21DBF8E0C();
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_21D97DBD8;

  return v6(v3, v1);
}

uint64_t sub_21D97DBD8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = a2;

  v5 = *(v3 + 112);
  v6 = *(v3 + 104);

  return MEMORY[0x2822009F8](sub_21D97DD24, v6, v5);
}

uint64_t sub_21D97DD24()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_21D97DE10;
    v3 = v0[17];
    v4 = v0[5];
    v5 = v0[6];

    return TTRHashtagAssociationPresenterCapability.hashtagLabelRenameIntent(from:to:)((v0 + 2), v4, v5, v3, v1);
  }

  else
  {

    v7 = v0[1];

    return v7(0, 0);
  }
}

uint64_t sub_21D97DE10()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21D97DF30, v3, v2);
}

uint64_t sub_21D97DF30()
{
  v25 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 160) = v1;
  *(v0 + 168) = v2;
  v3 = *(v0 + 32);
  *(v0 + 33) = v3;
  if (!v3)
  {

    if (qword_27CE56EB0 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE643B8);
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAEDC();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_25;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315138;
    if (v1)
    {
      v12 = 0x656D614E656D6173;
    }

    else
    {
      v12 = 0x4E64696C61766E69;
    }

    if (v1)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v13 = 0xEB00000000656D61;
    }

    v14 = sub_21D0CDFB4(v12, v13, &v24);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_21D0C9000, v8, v9, "TTRHashtagAssociationPresenterCapability: abort renaming {reason: %s}", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223D46520](v11, -1, -1);
    v15 = v10;
    goto LABEL_24;
  }

  if (v3 == 1)
  {

    v4 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      v5 = *(v0 + 160);
      v6 = *(v0 + 168);
LABEL_26:
      v22 = *(v0 + 8);

      return v22(v5, v6);
    }

    sub_21D97ED24(*(v0 + 160), *(v0 + 168), *(v0 + 33));
    if (qword_27CE56EB0 != -1)
    {
      swift_once();
    }

    v19 = sub_21DBF84BC();
    __swift_project_value_buffer(v19, qword_27CE643B8);
    v8 = sub_21DBF84AC();
    v20 = sub_21DBFAECC();
    if (!os_log_type_enabled(v8, v20))
    {
LABEL_25:

      v5 = 0;
      v6 = 0;
      goto LABEL_26;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_21D0C9000, v8, v20, "TTRHashtagAssociationPresenterCapability: unexpected: invalid newName", v21, 2u);
    v15 = v21;
LABEL_24:
    MEMORY[0x223D46520](v15, -1, -1);
    goto LABEL_25;
  }

  v16 = *(v0 + 72);
  sub_21DBF8E0C();
  v23 = (v16 + *v16);
  v17 = swift_task_alloc();
  *(v0 + 176) = v17;
  *v17 = v0;
  v17[1] = sub_21D97E2DC;

  return v23(v1, v2);
}

uint64_t sub_21D97E2DC(char a1)
{
  v2 = *v1;
  *(*v1 + 34) = a1;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);

  return MEMORY[0x2822009F8](sub_21D97E404, v4, v3);
}

uint64_t sub_21D97E404()
{
  v1 = *(v0 + 34);
  sub_21D97ED24(*(v0 + 160), *(v0 + 168), 2u);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  if (v1)
  {

    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      v5 = *(v0 + 160);
      v6 = *(v0 + 168);
    }

    else
    {
      sub_21D97ED24(*(v0 + 160), *(v0 + 168), *(v0 + 33));
      if (qword_27CE56EB0 != -1)
      {
        swift_once();
      }

      v11 = sub_21DBF84BC();
      __swift_project_value_buffer(v11, qword_27CE643B8);
      v12 = sub_21DBF84AC();
      v13 = sub_21DBFAECC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_21D0C9000, v12, v13, "TTRHashtagAssociationPresenterCapability: unexpected: invalid newName", v14, 2u);
        MEMORY[0x223D46520](v14, -1, -1);
      }

      v5 = 0;
      v6 = 0;
    }

    v15 = *(v0 + 8);

    return v15(v5, v6);
  }

  else
  {
    sub_21D97ED24(*(v0 + 160), *(v0 + 168), 2u);
    v7 = *(v0 + 136);
    v8 = *(v0 + 144);
    *(v0 + 120) = v8;
    v16 = (*(v0 + 56) + **(v0 + 56));
    v9 = swift_task_alloc();
    *(v0 + 128) = v9;
    *v9 = v0;
    v9[1] = sub_21D97DBD8;

    return v16(v7, v8);
  }
}

uint64_t TTRHashtagAssociationPresenterCapability.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21D97E6B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CE90);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = v14 - v3;
  v6 = *v0;
  v5 = *(v0 + 8);
  v14[1] = *(v0 + 16);
  v15 = v5;
  if (v6 >> 62)
  {
LABEL_17:
    v7 = sub_21DBFBD7C();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  v9 = *(v0 + 24);
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x223D44740](v8, v6, v2);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v10 = *(v6 + 8 * v8 + 32);
    }

    v11 = v10;
    v16 = v10;
    v15(&v16);

    v0 = v9(v4);
    sub_21D0CF7E0(v4, &qword_27CE5CE90);
    if (v0)
    {
      return v8;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_16;
    }
  }

  return v7;
}

void sub_21D97E824(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CE90);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v11 = *v3;
  v10 = *(v3 + 8);
  v26 = *(v3 + 16);
  v27 = v10;
  v12 = a2 > 0;
  v13 = a2 >> 63;
  if (a2 >> 63 < 0 && v11 >> 62)
  {
    sub_21DBFBD7C();
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_9;
  }

  v14 = __OFSUB__(0, a2);
  a2 = -a2;
  if (v14)
  {
    __break(1u);
    return;
  }

  if (a2 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_9:
  if (a1 == v23)
  {
    return;
  }

  v22 = a2;
  if (!(v11 >> 62))
  {
    v25 = v11 & 0xFFFFFFFFFFFFFF8;
    v28 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_12;
  }

LABEL_35:
  v25 = v11 & 0xFFFFFFFFFFFFFF8;
  v28 = sub_21DBFBD7C();
LABEL_12:
  v15 = v13 | v12;
  v16 = *(v3 + 24);
  v17 = v11 & 0xC000000000000001;
  v21 = v11;
  v11 += 32;
  v18 = 1;
  do
  {
    v24 = v18;
    v12 = a1;
    while (1)
    {
      a1 = v12 + v15;
      if (__OFADD__(v12, v15))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (a1 == v28)
      {
        break;
      }

      if (v17)
      {
        v19 = MEMORY[0x223D44740](v12 + v15, v21, v7);
      }

      else
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (a1 >= *(v25 + 16))
        {
          goto LABEL_31;
        }

        v19 = *(v11 + 8 * a1);
      }

      v13 = v19;
      v29 = v19;
      v27(&v29);

      v3 = v16(v9);
      sub_21D0CF7E0(v9, &qword_27CE5CE90);
      v12 += v15;
      if (v3)
      {
        goto LABEL_24;
      }
    }

    a1 = v28;
LABEL_24:
    if (v24 == v22)
    {
      break;
    }

    if (v24 >= v22)
    {
      goto LABEL_32;
    }

    v18 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_33;
    }
  }

  while (a1 != v23);
}

BOOL _s15RemindersUICore40TTRHashtagAssociationPresenterCapabilityC24HashtagLabelRenameIntentO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_21D97ED24(*a1, v3, 0);
      sub_21D97ED24(v5, v6, 0);
      return ((v5 ^ v2) & 1) == 0;
    }

    goto LABEL_19;
  }

  if (v4 != 1)
  {
    if (v7 == 2)
    {
      v15 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        v10 = sub_21DBFC64C();
        sub_21D97EDC4(v5, v6, 2u);
        sub_21D97EDC4(v2, v3, 2u);
        sub_21D97ED24(v2, v3, 2u);
        v11 = v5;
        v12 = v6;
        v13 = 2;
        goto LABEL_17;
      }

      sub_21D97EDC4(v15, v3, 2u);
      sub_21D97EDC4(v2, v3, 2u);
      sub_21D97ED24(v2, v3, 2u);
      v17 = v2;
      v18 = v3;
      v19 = 2;
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  if (v7 != 1)
  {
LABEL_18:
    sub_21DBF8E0C();
LABEL_19:
    sub_21D97EDC4(v5, v6, v7);
    sub_21D97ED24(v2, v3, v4);
    sub_21D97ED24(v5, v6, v7);
    return 0;
  }

  v8 = *a1;
  if (v2 != v5 || v3 != v6)
  {
    v10 = sub_21DBFC64C();
    sub_21D97EDC4(v5, v6, 1u);
    sub_21D97EDC4(v2, v3, 1u);
    sub_21D97ED24(v2, v3, 1u);
    v11 = v5;
    v12 = v6;
    v13 = 1;
LABEL_17:
    sub_21D97ED24(v11, v12, v13);
    return v10 & 1;
  }

  sub_21D97EDC4(v8, v3, 1u);
  sub_21D97EDC4(v2, v3, 1u);
  sub_21D97ED24(v2, v3, 1u);
  v17 = v2;
  v18 = v3;
  v19 = 1;
LABEL_22:
  sub_21D97ED24(v17, v18, v19);
  return 1;
}

uint64_t sub_21D97EC88(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21DBFA2BC();

    return sub_21DBFA3FC();
  }

  return result;
}

uint64_t sub_21D97ED24(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

unint64_t sub_21D97ED44()
{
  result = qword_27CE643D0;
  if (!qword_27CE643D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE643D0);
  }

  return result;
}

uint64_t sub_21D97EDC4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
    return sub_21DBF8E0C();
  }

  return result;
}

uint64_t sub_21D97EDF0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D97EDC4(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRHashtagAssociationPresenterCapability.HashtagLabelRenameIntent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D97EDC4(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_21D97ED24(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRHashtagAssociationPresenterCapability.HashtagLabelRenameIntent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_21D97ED24(v4, v5, v6);
  return a1;
}

unint64_t sub_21D97EEFC()
{
  result = qword_280D17640;
  if (!qword_280D17640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D17640);
  }

  return result;
}

RemindersUICore::TTRReminderTextStorage::StyleTypingAttributeState __swiftcall TTRReminderTextStorage.StyleTypingAttributeState.init(boldState:italicState:underlineState:)(RemindersUICore::TTRReminderTextStorage::StyleTypingAttributeState::StyleState boldState, RemindersUICore::TTRReminderTextStorage::StyleTypingAttributeState::StyleState italicState, RemindersUICore::TTRReminderTextStorage::StyleTypingAttributeState::StyleState underlineState)
{
  v4 = *italicState;
  v5 = *underlineState;
  *v3 = *boldState;
  v3[1] = v4;
  v3[2] = v5;
  result.boldState = boldState;
  return result;
}

id TTRReminderTextStorage.__allocating_init(baseTextStyles:uncommittedHashtagTextStyles:committedHashtagTextStyles:foreignHashtagTextStyles:harvestedResultTextStyles:hashtagVisibility:debug_nonEditableTextStyles:debug_highlightNonEditableTexts:showsAsTransparent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, char a8, char a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = *a6;
  *&v18[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_baseTextStyles] = a1;
  *&v18[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_uncommittedHashtagTextStyles] = a2;
  *&v18[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_committedHashtagTextStyles] = a3;
  *&v18[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_foreignHashtagTextStyles] = a4;
  *&v18[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_harvestedResultTextStyles] = a5;
  *&v18[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility] = v19;
  *&v18[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_nonEditableTextStyles] = a7;
  v18[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_highlightNonEditableTexts] = a8;
  v18[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_showsAsTransparent] = a9;
  v21.receiver = v18;
  v21.super_class = v9;
  return objc_msgSendSuper2(&v21, sel_init);
}

uint64_t TTRReminderTextStorage.applyTextHighlights(_:)(void *a1)
{
  v2 = [v1 string];
  v3 = sub_21DBFA16C();
  v5 = v4;

  TTRReminderCellTextHighlights.rebased(forCurrentText:)(v3, v5, v8);

  v6 = sub_21D98115C(v8[2]);

  return v6 & 1;
}

Swift::Bool __swiftcall TTRReminderTextStorage.applyHashtagUpdate(_:)(RemindersUICore::TTRReminderCellHashtagTextUpdate a1)
{
  v2 = v1;
  v4 = *a1.hashtagsToAdd._rawValue;
  v3 = *(a1.hashtagsToAdd._rawValue + 1);
  v5 = *(a1.hashtagsToAdd._rawValue + 2);
  v6 = &selRef_setAttributedText_;
  v7 = [v2 string];
  v8 = sub_21DBFA16C();
  v10 = v9;

  if (v8 == v3 && v10 == v5)
  {
  }

  else
  {
    v12 = sub_21DBFC64C();

    if ((v12 & 1) == 0)
    {
      if (qword_280D0F488 != -1)
      {
        swift_once();
      }

      v13 = sub_21DBF84BC();
      __swift_project_value_buffer(v13, qword_280D0F490);
      v14 = sub_21DBF84AC();
      v15 = sub_21DBFAEBC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_21D0C9000, v14, v15, "TTRReminderTextStorage is given an (probably) outdated hashtagUpdate.expectedCurrentText", v16, 2u);
        MEMORY[0x223D46520](v16, -1, -1);
      }
    }
  }

  v17 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  swift_beginAccess();
  if (!*&v2[v17])
  {
    if (qword_280D0F488 != -1)
    {
      goto LABEL_40;
    }

    goto LABEL_16;
  }

  v18 = *(v4 + 16);
  if (!v18)
  {
    return v18 != 0;
  }

  while (2)
  {
    [v2 beginEditing];
    v23 = [v2 v6[155]];
    v24 = sub_21DBFA16C();
    v26 = v25;

    v27 = MEMORY[0x223D42B30](v24, v26);

    v28 = (v4 + 48);
    v29 = *MEMORY[0x277D740E8];
    v37 = v18;
    while (1)
    {
      v32 = *(v28 - 1);
      v33 = v32 + *v28;
      if (__OFADD__(v32, *v28))
      {
        break;
      }

      v34 = *(v28 - 2);
      if (v33 >= v27)
      {
        v4 = v27;
      }

      else
      {
        v4 = v32 + *v28;
      }

      if ((v32 & 0x8000000000000000) == 0 && v32 < v27)
      {
        v30 = __OFSUB__(v4, v32);
        v4 -= v32;
        if (v30)
        {
          goto LABEL_39;
        }

        goto LABEL_21;
      }

      if (v32 <= 0 && v33 > 0)
      {
        v32 = 0;
LABEL_21:
        v31 = qword_280D177B8;
        swift_unknownObjectRetain();
        if (v31 != -1)
        {
          swift_once();
        }

        [v2 removeAttribute:qword_280D177C0 range:{v32, v4, v37}];
        [v2 removeAttribute:v29 range:{v32, v4}];
        v6 = [objc_opt_self() attributeFromHashtag_];
        [v2 rem:v6 addHashtag:v32 range:v4];
        swift_unknownObjectRelease();
      }

      v28 += 3;
      if (!--v18)
      {
        [v2 endEditing];
        v18 = v37;
        return v18 != 0;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
LABEL_16:
    v19 = sub_21DBF84BC();
    __swift_project_value_buffer(v19, qword_280D0F490);
    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAEBC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_21D0C9000, v20, v21, "TTRReminderTextStorage#applyHashtagUpdate: text storage is configured to hide all hashtags", v22, 2u);
      MEMORY[0x223D46520](v22, -1, -1);
    }

    v18 = *(v4 + 16);
    if (v18)
    {
      continue;
    }

    return v18 != 0;
  }
}

Swift::Void __swiftcall TTRReminderTextStorage.applyStyleAttributeUpdate(_:)(RemindersUICore::TTRReminderCellStyleAttributeUpdate a1)
{
  v2 = *a1.rangeToChange.location;
  v3 = *(a1.rangeToChange.location + 8);
  v4 = *(a1.rangeToChange.location + 16);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  sub_21DBF8E0C();
  v9 = 0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      [v1 addAttribute:*(*(v4 + 48) + ((v10 << 9) | (8 * v11))) value:*(*(v4 + 56) + ((v10 << 9) | (8 * v11))) range:{v2, v3}];
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }
}

Swift::Bool __swiftcall TTRReminderTextStorage.applyParagraphStyleAttributeUpdate(_:)(RemindersUICore::TTRReminderCellParagraphStyleUpdate a1)
{
  v2 = v1;
  v4 = *a1.paragraphStylesToAdd._rawValue;
  v3 = *(a1.paragraphStylesToAdd._rawValue + 1);
  v5 = *(a1.paragraphStylesToAdd._rawValue + 2);
  v6 = [v2 string];
  v7 = sub_21DBFA16C();
  v9 = v8;

  if (v7 == v3 && v9 == v5)
  {
  }

  else
  {
    v11 = sub_21DBFC64C();

    if ((v11 & 1) == 0)
    {
      if (qword_280D0F488 != -1)
      {
        swift_once();
      }

      v12 = sub_21DBF84BC();
      __swift_project_value_buffer(v12, qword_280D0F490);
      v13 = sub_21DBF84AC();
      v14 = sub_21DBFAEBC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_21D0C9000, v13, v14, "TTRReminderTextStorage is given an (probably) outdated paragraphStyleAttributeUpdate.expectedCurrentText", v15, 2u);
        MEMORY[0x223D46520](v15, -1, -1);
      }
    }
  }

  v16 = *(v4 + 16);
  if (v16)
  {
    [v2 beginEditing];
    sub_21D9F82C4(v2, v4);
    [v2 endEditing];
  }

  return v16 != 0;
}

uint64_t TTRReminderTextStorage.hashtagVisibility.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v6 = v4;
  sub_21D980810(&v6);
}

uint64_t TTRReminderTextStorage.typingAttributesFilteringInternalStyles(for:in:currentTypingAttributes:styleTypingAttributeState:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned __int8 *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v12 = a5[2];
  v13 = sub_21DBF4B4C();
  if (a1 < 0 || v13 == a1 || (v14 = a2 + a1, v15 = [a3 string], v16 = sub_21DBFA16C(), v18 = v17, v15, v19 = MEMORY[0x223D42B30](v16, v18), , v19 < v14))
  {
    sub_21DBF8E0C();
  }

  else if (a1)
  {
    v21 = a1 - 1;
    v22 = [v5 rem:v21 fontHintAtIndex:0 effectiveRange:?];
    v23 = [v5 rem:v21 isUnderlinedAtIndex:0 effectiveRange:?];
    v24 = v22 & 1 | 2;
    if (v11 != 1)
    {
      v24 = v22 & 1;
    }

    if (!v11)
    {
      v24 = v22;
    }

    v25 = 3;
    v26 = v22 & 2;
    if (v11 != 1)
    {
      v25 = 1;
    }

    if (!v11)
    {
      v25 = v22 & 2 | 1;
    }

    v27 = 2;
    if (v11 != 1)
    {
      v27 = 0;
    }

    if (v11)
    {
      v26 = v27;
    }

    if (v10 != 1)
    {
      v25 = v26;
    }

    if (v10)
    {
      v28 = v25;
    }

    else
    {
      v28 = v24;
    }

    v29 = v23;
    v30 = objc_opt_self();
    v31 = [v30 attributeNameForStyle_];
    v32 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v33 = v31;
    v34 = [v32 initWithUnsignedInteger_];
    v35 = sub_21D0D8CF0(0, &unk_280D0C1E0);
    v61 = v35;
    *&v60 = v34;
    sub_21D0CF2E8(&v60, v59);
    v36 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_21D476CE0(v59, v33, isUniquelyReferenced_nonNull_native);

    v62 = v36;
    if (v12)
    {
      v38 = v12 == 1;
    }

    else
    {
      v38 = v29;
    }

    v39 = [v30 attributeNameForStyle_];
    v40 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v41 = v39;
    v42 = [v40 initWithBool_];
    v61 = v35;
    *&v60 = v42;
    sub_21D0CF2E8(&v60, v59);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    sub_21D476CE0(v59, v41, v43);

    type metadata accessor for Key(0);
    sub_21D985D5C(&qword_280D17790, type metadata accessor for Key);
    v44 = sub_21DBF9ECC();

    v62 = v44;
    sub_21D983190(*MEMORY[0x277D74118], &v60);

    sub_21D0CF7E0(&v60, &qword_27CE5C690);
    return v62;
  }

  else
  {
    v62 = a4;
    v45 = *MEMORY[0x277D74118];
    sub_21DBF8E0C();
    sub_21D983190(v45, &v60);
    sub_21D0CF7E0(&v60, &qword_27CE5C690);
    v46 = 2;
    if (v10 == 1)
    {
      v46 = 3;
    }

    if (v11 == 1)
    {
      v47 = v46;
    }

    else
    {
      v47 = v10 == 1;
    }

    v48 = objc_opt_self();
    v49 = [v48 attributeNameForStyle_];
    v50 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v51 = v49;
    v52 = [v50 initWithUnsignedInteger_];
    v53 = sub_21D0D8CF0(0, &unk_280D0C1E0);
    v61 = v53;
    *&v60 = v52;
    sub_21D0CF2E8(&v60, v59);
    v54 = v62;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    sub_21D476CE0(v59, v51, v55);

    v56 = [v48 attributeNameForStyle_];
    v57 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v61 = v53;
    *&v60 = v57;
    sub_21D0CF2E8(&v60, v59);
    v58 = swift_isUniquelyReferenced_nonNull_native();
    sub_21D476CE0(v59, v56, v58);

    return v54;
  }

  return a4;
}

uint64_t sub_21D97FD40()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F490);
  v1 = __swift_project_value_buffer(v0, qword_280D0F490);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderTextStorage.StyleTypingAttributeState.StyleState.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

void *sub_21D97FEC4()
{
  result = sub_21D97FEE4();
  off_27CE643D8 = result;
  return result;
}

void *sub_21D97FEE4()
{
  if (qword_27CE56EC8 != -1)
  {
    swift_once();
  }

  v5 = off_27CE643E0;
  v0 = qword_280D0C260;
  sub_21DBF8E0C();
  if (v0 != -1)
  {
    swift_once();
  }

  sub_21D29EA24(&v4, qword_280D0C268);

  if (qword_280D177B8 != -1)
  {
    swift_once();
  }

  sub_21D29EA24(&v4, qword_280D177C0);

  v1 = [objc_opt_self() attributeName];
  sub_21D29EA24(&v4, v1);

  v2 = [objc_opt_self() attributeNameForStyle_];
  sub_21D29EA24(&v4, v2);

  return v5;
}

uint64_t static TTRReminderTextStorage.defaultDisallowedTypingAttributes.getter()
{
  if (qword_27CE56EC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_21DBF8E0C();
}

uint64_t static TTRReminderTextStorage.defaultDisallowedTypingAttributes.setter(void *a1)
{
  if (qword_27CE56EC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_27CE643D8 = a1;
}

uint64_t (*static TTRReminderTextStorage.defaultDisallowedTypingAttributes.modify())()
{
  if (qword_27CE56EC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21D9801E8@<X0>(void *a1@<X8>)
{
  if (qword_27CE56EC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_27CE643D8;
  return sub_21DBF8E0C();
}

uint64_t sub_21D980268(void **a1)
{
  v1 = *a1;
  v2 = qword_27CE56EC0;
  sub_21DBF8E0C();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_27CE643D8 = v1;
}

void (*TTRReminderTextStorage.baseTextStyles.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_baseTextStyles;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D980398;
}

void (*TTRReminderTextStorage.uncommittedHashtagTextStyles.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_uncommittedHashtagTextStyles;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D980464;
}

void sub_21D98047C(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  if (a2)
  {
    v6 = sub_21DBF8E0C();
    a3(v6);
  }

  else
  {
    a3(v5);
  }

  free(v4);
}

void (*TTRReminderTextStorage.committedHashtagTextStyles.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_committedHashtagTextStyles;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D980594;
}

void (*TTRReminderTextStorage.foreignHashtagTextStyles.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_foreignHashtagTextStyles;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D980660;
}

void (*TTRReminderTextStorage.harvestedResultTextStyles.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_harvestedResultTextStyles;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D98072C;
}

uint64_t TTRReminderTextStorage.hashtagVisibility.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  swift_beginAccess();
  *a1 = *(v1 + v3);
  return sub_21DBF8E0C();
}

uint64_t sub_21D98079C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_21DBF8E0C();
  v7 = v5;
  sub_21D980810(&v7);
}

id sub_21D980810(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    if (v2)
    {
      swift_bridgeObjectRetain_n();
      sub_21DBF8E0C();
      v5 = sub_21D3220EC(v4, v2);

      result = swift_bridgeObjectRelease_n();
      if (v5)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  else if (!v2)
  {
    return swift_bridgeObjectRelease_n();
  }

LABEL_7:
  v7 = [v1 string];
  v8 = sub_21DBFA16C();
  v10 = v9;

  v11 = MEMORY[0x223D42B30](v8, v10);

  return [v1 edited:1 range:0 changeInLength:{v11, 0}];
}

void (*TTRReminderTextStorage.hashtagVisibility.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D9809C4;
}

void sub_21D9809C4(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 24);
  if (a2)
  {
    sub_21DBF8E0C();
    v6 = v5;
    sub_21D980810(&v6);
  }

  else
  {
    v6 = v5;
    sub_21D980810(&v6);
  }

  free(v2);
}

uint64_t TTRReminderTextStorage.showsAsTransparent.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_showsAsTransparent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*TTRReminderTextStorage.showsAsTransparent.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_showsAsTransparent;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D980B30;
}

id sub_21D980B4C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  v6 = sub_21DBF8E0C();
  sub_21D37135C(v6, v5);
  LOBYTE(v4) = v7;

  if ((v4 & 1) == 0)
  {
    v9 = [v2 string];
    v10 = sub_21DBFA16C();
    v12 = v11;

    v13 = MEMORY[0x223D42B30](v10, v12);

    return [v2 edited:1 range:0 changeInLength:{v13, 0}];
  }

  return result;
}

void (*TTRReminderTextStorage.debug_nonEditableTextStyles.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_nonEditableTextStyles;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D980CC4;
}

uint64_t TTRReminderTextStorage.debug_highlightNonEditableTexts.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_highlightNonEditableTexts;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_21D980D20(unsigned __int8 *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  v9 = v6[v7];
  v6[v7] = v5;
  if (v5 != v9)
  {
    v10 = [v6 string];
    v11 = sub_21DBFA16C();
    v13 = v12;

    v14 = MEMORY[0x223D42B30](v11, v13);

    return [v6 edited:1 range:0 changeInLength:{v14, 0}];
  }

  return result;
}

id sub_21D980DEC(char a1, uint64_t *a2)
{
  v4 = a1 & 1;
  v5 = *a2;
  result = swift_beginAccess();
  v7 = v2[v5];
  v2[v5] = a1;
  if (v7 != v4)
  {
    v8 = [v2 string];
    v9 = sub_21DBFA16C();
    v11 = v10;

    v12 = MEMORY[0x223D42B30](v9, v11);

    return [v2 edited:1 range:0 changeInLength:{v12, 0}];
  }

  return result;
}

uint64_t (*TTRReminderTextStorage.debug_highlightNonEditableTexts.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_highlightNonEditableTexts;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D985E84;
}

void sub_21D980F40(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    v6 = v1[3];
    v7 = [v6 string];
    v8 = sub_21DBFA16C();
    v10 = v9;

    v11 = MEMORY[0x223D42B30](v8, v10);

    [v6 edited:1 range:0 changeInLength:{v11, 0}];
  }

  free(v1);
}

id TTRReminderTextStorage.init(baseTextStyles:uncommittedHashtagTextStyles:committedHashtagTextStyles:foreignHashtagTextStyles:harvestedResultTextStyles:hashtagVisibility:debug_nonEditableTextStyles:debug_highlightNonEditableTexts:showsAsTransparent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, char a8, char a9)
{
  ObjectType = swift_getObjectType();
  v19 = *a6;
  *&v9[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_baseTextStyles] = a1;
  *&v9[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_uncommittedHashtagTextStyles] = a2;
  *&v9[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_committedHashtagTextStyles] = a3;
  *&v9[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_foreignHashtagTextStyles] = a4;
  *&v9[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_harvestedResultTextStyles] = a5;
  *&v9[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility] = v19;
  *&v9[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_nonEditableTextStyles] = a7;
  v9[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_highlightNonEditableTexts] = a8;
  v9[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_showsAsTransparent] = a9;
  v21.receiver = v9;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init);
}

uint64_t sub_21D98115C(uint64_t a1)
{
  v3 = [v1 string];
  v4 = sub_21DBFA16C();
  v6 = v5;

  v36 = MEMORY[0x223D42B30](v4, v6);

  [v1 beginEditing];
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v34 = v1;
LABEL_5:
  v37 = v7;
  v14 = *(&unk_282EA6390 + v8 + 32);
  v15 = 1 << *(a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a1 + 56);
  v18 = (v15 + 63) >> 6;
  result = sub_21DBF8E0C();
  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  while (1)
  {
    do
    {
      if (!v17)
      {
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_40;
          }

          if (v22 >= v18)
          {
            break;
          }

          v17 = *(a1 + 56 + 8 * v22);
          ++v20;
          if (v17)
          {
            v20 = v22;
            goto LABEL_14;
          }
        }

        if (v14)
        {
          v10 = &qword_280D0C268;
          v11 = v37;
          if (qword_280D0C260 != -1)
          {
            swift_once();
            v10 = &qword_280D0C268;
          }
        }

        else
        {
          v10 = &qword_280D177C0;
          v11 = v37;
          if (qword_280D177B8 != -1)
          {
            swift_once();
            v10 = &qword_280D177C0;
          }
        }

        v12 = *v10;
        v38[3] = MEMORY[0x277D839B0];
        v7 = 1;
        LOBYTE(v38[0]) = 1;
        v13 = sub_21D98257C(v21, v12, v38);

        __swift_destroy_boxed_opaque_existential_0(v38);
        v9 |= v13;
        v8 = 1u;
        if (v11)
        {
          [v1 endEditing];
          return v9 & 1;
        }

        goto LABEL_5;
      }

LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = *(a1 + 48) + 24 * (v23 | (v20 << 6));
    }

    while (v14 != *(v24 + 16));
    v26 = *v24;
    v25 = *(v24 + 8);
    v27 = __OFADD__(v26, v25);
    v28 = v26 + v25;
    if (v27)
    {
      break;
    }

    if (v26 <= 0 && v28 > 0)
    {
      v26 = 0;
      if (v36 < v28)
      {
        v28 = v36;
      }

      goto LABEL_30;
    }

    if ((v26 & 0x8000000000000000) == 0 && v26 < v36)
    {
      if (v36 < v28)
      {
        v28 = v36;
      }

      v27 = __OFSUB__(v28, v26);
      v28 -= v26;
      if (v27)
      {
        goto LABEL_41;
      }

LABEL_30:
      v35 = v28;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21D211158(0, *(v21 + 16) + 1, 1, v21);
        v21 = result;
      }

      v31 = *(v21 + 16);
      v30 = *(v21 + 24);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        result = sub_21D211158((v30 > 1), v31 + 1, 1, v21);
        v32 = v31 + 1;
        v21 = result;
      }

      *(v21 + 16) = v32;
      v33 = v21 + 16 * v31;
      v1 = v34;
      *(v33 + 32) = v26;
      *(v33 + 40) = v35;
    }
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

Swift::Void __swiftcall TTRReminderTextStorage.processEditing()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 editedRange];
  v5 = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21D985B48;
  *(v7 + 24) = v6;
  aBlock[4] = sub_21D301E58;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D472CC4;
  aBlock[3] = &block_descriptor_121;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  [v9 enumerateAttributesInRange:v3 options:v5 usingBlock:{0, v8}];
  _Block_release(v8);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v10.receiver = v9;
    v10.super_class = ObjectType;
    objc_msgSendSuper2(&v10, sel_processEditing);
  }
}

void sub_21D981660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_21D981750(a1);
  sub_21D1891E8(v8);

  type metadata accessor for Key(0);
  sub_21D985D5C(&qword_280D17790, type metadata accessor for Key);
  v9 = sub_21DBF9E5C();

  [a5 addAttributes:v9 range:{a2, a3}];
}

uint64_t sub_21D981750(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_baseTextStyles;
  swift_beginAccess();
  v92 = *(v1 + v4);
  v5 = qword_280D177B8;
  sub_21DBF8E0C();
  if (v5 == -1)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_6;
    }
  }

  else
  {
    swift_once();
    if (!*(a1 + 16))
    {
      goto LABEL_6;
    }
  }

  v6 = sub_21D10FE34(qword_280D177C0);
  if (v7)
  {
    sub_21D0CEB98(*(a1 + 56) + 32 * v6, &v90);
    sub_21D0CF7E0(&v90, &qword_27CE5C690);
    swift_beginAccess();
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60058);
    sub_21DBF9EBC();

    goto LABEL_7;
  }

LABEL_6:
  v90 = 0u;
  v91 = 0u;
  sub_21D0CF7E0(&v90, &qword_27CE5C690);
LABEL_7:
  if (qword_280D0C260 == -1)
  {
    if (!*(a1 + 16))
    {
LABEL_12:
      v90 = 0u;
      v91 = 0u;
      sub_21D0CF7E0(&v90, &qword_27CE5C690);
      goto LABEL_13;
    }
  }

  else
  {
    swift_once();
    if (!*(a1 + 16))
    {
      goto LABEL_12;
    }
  }

  v8 = sub_21D10FE34(qword_280D0C268);
  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_21D0CEB98(*(a1 + 56) + 32 * v8, &v90);
  sub_21D0CF7E0(&v90, &qword_27CE5C690);
  swift_beginAccess();
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60058);
  sub_21DBF9EBC();

LABEL_13:
  v10 = objc_opt_self();
  v11 = [v10 attributeName];
  v12 = v11;
  v13 = &qword_27CE64000;
  if (!*(a1 + 16) || (v14 = sub_21D10FE34(v11), (v15 & 1) == 0))
  {

    goto LABEL_27;
  }

  sub_21D0CEB98(*(a1 + 56) + 32 * v14, v89);

  sub_21D0CF2E8(v89, &v90);
  v16 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if (!v17)
  {
    v19 = sub_21D177570(MEMORY[0x277D84F90]);
    *&v89[0] = v19;
    goto LABEL_22;
  }

  v18 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_committedHashtagTextStyles;
  swift_beginAccess();
  v19 = *(v2 + v18);
  *&v89[0] = v19;
  if (!*(v17 + 16))
  {
    sub_21DBF8E0C();
    if (!*(v19 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v20 = sub_21DBFC62C();
  v21 = sub_21DBFAA9C();

  v22 = [v10 attributeValue:v20 hasEqualHashtagObjectIdentifierIn:v21];
  swift_unknownObjectRelease();

  if (!v22)
  {
LABEL_22:
    if (!*(v19 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  swift_beginAccess();
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60058);
  sub_21DBF9EBC();

  if (!*(*&v89[0] + 16))
  {
LABEL_23:
    v23 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_highlightNonEditableTexts;
    swift_beginAccess();
    if (*(v2 + v23) == 1)
    {

      swift_beginAccess();
      sub_21DBF8E0C();
    }
  }

LABEL_26:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60058);
  sub_21DBF9EBC();

  __swift_destroy_boxed_opaque_existential_0(&v90);
LABEL_27:
  v24 = objc_opt_self();
  v25 = [v24 attributeNameForStyle_];
  v26 = v25;
  if (*(a1 + 16) && (v27 = sub_21D10FE34(v25), (v28 & 1) != 0))
  {
    sub_21D0CEB98(*(a1 + 56) + 32 * v27, &v90);

    if (swift_dynamicCast())
    {
      v29 = *&v89[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21DC08D00;
      v31 = *MEMORY[0x277D741F0];
      *(inited + 32) = *MEMORY[0x277D741F0];
      v32 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v33 = v31;
      *(inited + 40) = [v32 initWithInteger_];
      sub_21D177570(inited);
      swift_setDeallocating();
      sub_21D0CF7E0(inited + 32, &unk_27CE5F310);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60058);
      sub_21DBF9EBC();
    }
  }

  else
  {
  }

  v34 = [v24 attributeNameForStyle_];
  v35 = v34;
  if (*(a1 + 16) && (v36 = sub_21D10FE34(v34), (v37 & 1) != 0))
  {
    sub_21D0CEB98(*(a1 + 56) + 32 * v36, &v90);

    if (swift_dynamicCast())
    {
      v38 = v92;
      if (*(v92 + 16))
      {
        v39 = v89[0];
        v40 = *MEMORY[0x277D740A8];
        v41 = sub_21D10FE34(*MEMORY[0x277D740A8]);
        if (v42)
        {
          v43 = *(*(v38 + 56) + 8 * v41);
          objc_opt_self();
          v44 = swift_dynamicCastObjCClass();
          if (v44)
          {
            v45 = v44;
            v88 = v2;
            if ((v39 & 3) != 0)
            {
              v87 = v43;
              v86 = v43;
              v46 = [v45 fontDescriptor];
              v47 = [v46 symbolicTraits];

              if ((v39 & 2) != 0)
              {
                v47 |= 1u;
                v48 = [v45 fontDescriptor];
                v49 = [v48 fontDescriptorWithDesign_];

                if (v49)
                {
                  v45 = [objc_opt_self() fontWithDescriptor:v49 size:0.0];
                }
              }

              v50 = [v45 fontDescriptor];
              v51 = [v50 fontDescriptorWithSymbolicTraits_];

              if (v51)
              {
                v52 = [objc_opt_self() fontWithDescriptor:v51 size:0.0];

                v45 = v52;
              }

              v43 = v87;
            }

            else
            {
              v82 = v43;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530);
            v83 = swift_initStackObject();
            *(v83 + 16) = xmmword_21DC08D00;
            *(v83 + 32) = v40;
            *(v83 + 40) = v45;
            v84 = v40;
            v85 = v45;
            sub_21D177570(v83);
            swift_setDeallocating();
            sub_21D0CF7E0(v83 + 32, &unk_27CE5F310);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60058);
            sub_21DBF9EBC();

            v2 = v88;
            v13 = &qword_27CE64000;
          }
        }
      }
    }
  }

  else
  {
  }

  v53 = [v24 attributeNameForStyle_];
  v54 = v53;
  if (*(a1 + 16) && (v55 = sub_21D10FE34(v53), (v56 & 1) != 0))
  {
    sub_21D0CEB98(*(a1 + 56) + 32 * v55, v89);

    sub_21D0CF2E8(v89, &v90);
    v57 = objc_allocWithZone(MEMORY[0x277D44888]);
    __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
    v58 = [v57 initWithContents_];
    swift_unknownObjectRelease();
    if (v58)
    {
      __swift_destroy_boxed_opaque_existential_0(&v90);
    }

    else
    {
      if (qword_280D0F488 != -1)
      {
        swift_once();
      }

      v77 = sub_21DBF84BC();
      __swift_project_value_buffer(v77, qword_280D0F490);
      v78 = sub_21DBF84AC();
      v79 = sub_21DBFAEBC();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_21D0C9000, v78, v79, "TTRReminderTextStorage: attempted to construct REMTTParagraphStyle(contents: ttParagraphStyle) and returned nil. attributes[REMTTStyle.attributeName(forStyle: .paragraphStyle)] value is not of type TTParagraphStyle", v80, 2u);
        MEMORY[0x223D46520](v80, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_0(&v90);
    }
  }

  else
  {
  }

  v59 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_showsAsTransparent;
  swift_beginAccess();
  if (*(v2 + v59) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530);
    v60 = swift_initStackObject();
    *(v60 + 16) = xmmword_21DC08D00;
    v61 = *MEMORY[0x277D740C0];
    *(v60 + 32) = *MEMORY[0x277D740C0];
    v62 = objc_opt_self();
    v63 = v61;
    *(v60 + 40) = [v62 clearColor];
    sub_21D177570(v60);
    swift_setDeallocating();
    sub_21D0CF7E0(v60 + 32, &unk_27CE5F310);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60058);
    sub_21DBF9EBC();
  }

  v64 = v13[132];
  swift_beginAccess();
  if (*(v2 + v64) != 1)
  {
    return v92;
  }

  if (qword_27CE56EC8 != -1)
  {
LABEL_80:
    swift_once();
  }

  v65 = off_27CE643E0;
  v66 = off_27CE643E0 + 56;
  v67 = 1 << *(off_27CE643E0 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & *(off_27CE643E0 + 7);
  v70 = (v67 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v71 = 0;
  while (!v69)
  {
    do
    {
      v75 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        __break(1u);
        goto LABEL_80;
      }

      if (v75 >= v70)
      {

        goto LABEL_69;
      }

      v69 = *&v66[8 * v75];
      ++v71;
    }

    while (!v69);
    v71 = v75;
    if (*(a1 + 16))
    {
      goto LABEL_61;
    }

LABEL_58:
    v69 &= v69 - 1;
    v90 = 0u;
    v91 = 0u;
    sub_21D0CF7E0(&v90, &qword_27CE5C690);
  }

  if (!*(a1 + 16))
  {
    goto LABEL_58;
  }

LABEL_61:
  v72 = *(v65[6] + ((v71 << 9) | (8 * __clz(__rbit64(v69)))));
  v73 = sub_21D10FE34(v72);
  if ((v74 & 1) == 0)
  {

    goto LABEL_58;
  }

  v81 = v73;

  sub_21D0CEB98(*(a1 + 56) + 32 * v81, &v90);

  sub_21D0CF7E0(&v90, &qword_27CE5C690);

  swift_beginAccess();
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60058);
  sub_21DBF9EBC();
LABEL_69:

  return v92;
}

void sub_21D9824BC()
{
  v0 = [objc_opt_self() nonEditableAttributes];
  type metadata accessor for Key(0);
  v1 = sub_21DBFA5EC();

  v2 = sub_21D19F9A0(v1);

  v5 = v2;
  v3 = [objc_opt_self() attributeName];
  v4 = sub_21D1ABC08();

  off_27CE643E0 = v5;
}

uint64_t sub_21D98257C(char *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v86 = a1;
  v83 = sub_21DBF5B4C();
  v88 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF5B9C();
  v92 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v85 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v80 = v74 - v11;
  MEMORY[0x28223BE20](v12);
  v79 = v74 - v13;
  MEMORY[0x28223BE20](v14);
  v81 = v74 - v15;
  MEMORY[0x28223BE20](v16);
  v87 = v74 - v17;
  MEMORY[0x28223BE20](v18);
  v84 = v74 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = v74 - v21;
  MEMORY[0x28223BE20](v23);
  v90 = v74 - v24;
  *&v26 = MEMORY[0x28223BE20](v25).n128_u64[0];
  v28 = v74 - v27;
  v29 = [v4 string];
  v30 = sub_21DBFA16C();
  v32 = v31;

  v33 = MEMORY[0x223D42B30](v30, v32);

  sub_21DBF5B8C();
  v34 = swift_allocObject();
  v34[2] = sub_21D13C354;
  v34[3] = 0;
  v91 = v28;
  v34[4] = v28;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_21D985D50;
  *(v35 + 24) = v34;
  v97 = sub_21D24B3B4;
  v98 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v94 = 1107296256;
  v95 = sub_21D1A6068;
  v96 = &block_descriptor_46_1;
  v36 = _Block_copy(&aBlock);

  [v4 enumerateAttribute:a2 inRange:0 options:v33 usingBlock:{0, v36}];
  _Block_release(v36);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v89 = v8;
  sub_21DBF5B8C();
  v38 = *(v86 + 2);
  v39 = v91;
  v40 = v90;
  if (v38)
  {
    v41 = v86 + 40;
    while (1)
    {
      result = *(v41 - 1);
      if (*v41 + result < result)
      {
        break;
      }

      v41 += 2;
      sub_21DBF5ADC();
      if (!--v38)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_6:
  v42 = v92;
  v43 = v89;
  (*(v92 + 32))(v40, v22, v89);
  sub_21D985D5C(&qword_280D17178, MEMORY[0x277CC9A28]);
  v44 = sub_21DBFA10C();
  v45 = v44;
  if (v44)
  {
    v46 = *(v42 + 8);
    v46(v40, v43);
    v46(v39, v43);
  }

  else
  {
    v75 = a3;
    v78 = v44;
    v47 = *(v42 + 16);
    v47(v87, v39, v43);
    v47(v79, v39, v43);
    v77 = v42 + 16;
    v76 = v47;
    v47(v80, v40, v43);
    v48 = sub_21D985D5C(&qword_280D1B818, MEMORY[0x277CC9A28]);
    v49 = v81;
    sub_21DBFBC5C();
    v74[4] = v48;
    sub_21DBFBC3C();
    v50 = *(v42 + 8);
    v92 = v42 + 8;
    v86 = v50;
    (v50)(v49, v43);
    v74[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A150);
    v51 = swift_allocBox();
    v52 = v82;
    sub_21DBF5B6C();
    sub_21DBF5B3C();
    v53 = *(v88 + 8);
    v88 += 8;
    v53(v52, v83);
    v74[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A158);
    inited = swift_initStackObject();
    *(inited + 16) = sub_21D24B41C;
    *(inited + 24) = v51;
    v74[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A160);
    *(swift_initStackObject() + 16) = inited;

    v56 = *(inited + 16);
    v56(&aBlock, v55);
    if ((v95 & 1) == 0)
    {
      v57 = aBlock;
      v58 = v94;
      do
      {
        v56(&aBlock, [v4 removeAttribute:a2 range:{v57, v58}]);
        v57 = aBlock;
        v58 = v94;
      }

      while (v95 != 1);
    }

    v59 = v90;
    v60 = v89;
    v61 = v76;
    v76(v87, v90, v89);
    v61(v79, v59, v60);
    v61(v80, v91, v60);
    v62 = v81;
    sub_21DBFBC5C();
    sub_21DBFBC3C();
    (v86)(v62, v60);
    v63 = swift_allocBox();
    v64 = v82;
    sub_21DBF5B6C();
    sub_21DBF5B3C();
    v53(v64, v83);
    v65 = swift_initStackObject();
    *(v65 + 16) = sub_21D985E88;
    *(v65 + 24) = v63;
    *(swift_initStackObject() + 16) = v65;

    v67 = *(v65 + 16);
    v67(&aBlock, v66);
    v68 = v75;
    if ((v95 & 1) == 0)
    {
      v69 = aBlock;
      v70 = v94;
      do
      {
        __swift_project_boxed_opaque_existential_1(v68, v68[3]);
        [v4 addAttribute:a2 value:sub_21DBFC62C() range:{v69, v70}];
        v71 = swift_unknownObjectRelease();
        v67(&aBlock, v71);
        v69 = aBlock;
        v70 = v94;
      }

      while (v95 != 1);
    }

    v72 = v89;
    v73 = v86;
    (v86)(v85, v89);
    v73(v84, v72);
    v73(v90, v72);
    v73(v91, v72);
    v45 = v78;
  }

  return (v45 & 1) == 0;
}

id TTRReminderTextStorage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRReminderTextStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D983118()
{
  result = sub_21DBFA12C();
  qword_280D0C268 = result;
  return result;
}

double sub_21D983190@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_21D10FE34(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21D2206D8();
      v9 = v11;
    }

    sub_21D0CF2E8((*(v9 + 56) + 32 * v7), a2);
    sub_21D4B3A3C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21D983230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_21D17E2AC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21D220CA4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for TTRSECreateRemindersViewModel.ItemID(0);
    sub_21D107350(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for TTRSECreateRemindersViewModel.ItemID);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
    v20 = *(v13 - 8);
    sub_21D985E14(v12 + *(v20 + 72) * v7, a2, type metadata accessor for TTRSECreateRemindersViewModel.Item);
    sub_21D4B3C04(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for TTRSECreateRemindersViewModel.Item(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_21D9833C8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_21D17E2D8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21D220F90();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_21DBFC1BC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_21D0CF2E8((*(v9 + 56) + 32 * v7), a2);
    sub_21D4B41E4(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21D9834A4(void *a1, void (*a2)(uint64_t, uint64_t), unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = v4;
  v7 = *v4;
  if ((*v4 & 0xC000000000000001) == 0)
  {
    v14 = a3;
    v18 = sub_21D17E07C(a1);
    if (v19)
    {
      v7 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v22 = *v4;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v17 = *(*(v13 + 56) + 8 * v7);
        a2(v7, v13);
        goto LABEL_11;
      }

LABEL_15:
      (v14)();
      v13 = v22;
      goto LABEL_10;
    }

    return 0;
  }

  if (v7 < 0)
  {
    v9 = *v4;
  }

  else
  {
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v10 = a1;
  v11 = sub_21DBFC2CC();

  if (!v11)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  sub_21DBF8E0C();
  v12 = sub_21DBFBD7C();
  v13 = a4(v9, v12);

  v14 = sub_21D17E07C(v10);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = *(*(v13 + 56) + 8 * v14);
  a2(v14, v13);

LABEL_11:
  *v6 = v13;
  return v17;
}

double sub_21D983614@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_21D0CEF70(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21D22163C();
      v10 = v12;
    }

    sub_21D0CF2E8((*(v10 + 56) + 32 * v8), a3);
    sub_21D4B4498(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_21D983730@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X3>, void (*a4)(void)@<X4>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  v10 = v6;
  v12 = sub_21D181E00(a1, a6);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v29 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v16 = v29;
    }

    v17 = *(v16 + 48);
    v18 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    v19 = v14;
    sub_21D107350(v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v20 = *(v16 + 56);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v28 = *(v21 - 8);
    sub_21D0D523C(v20 + *(v28 + 72) * v19, a5, a2);
    a3(v19, v16);
    *v10 = v16;
    v22 = *(v28 + 56);
    v23 = a5;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a5;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

uint64_t sub_21D983930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_21D17E07C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21D223698();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail(0);
    v18 = *(v11 - 8);
    sub_21D985E14(v10 + *(v18 + 72) * v7, a2, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
    sub_21D4B5098(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_21D983A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v8 = sub_21D17EC6C(a1, a2, a3, a4);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    v22 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21D223B08();
      v12 = v22;
    }

    v13 = *(v12 + 56);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8);
    v21 = *(v14 - 8);
    sub_21D0D523C(v13 + *(v21 + 72) * v10, a5, &qword_27CE583A8);
    sub_21D4B5260(v10, v12);
    *v6 = v12;
    v15 = *(v21 + 56);
    v16 = a5;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583A8);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a5;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_21D983C6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21D0CEF70(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21D224E44();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_21D4B5A2C(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_21D983D04(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21D17E780(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21D226980();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_21D4B62F4(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_21D983D98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582F0);
    v2 = sub_21DBFC3FC();
    v19 = v2;
    sub_21DBFC21C();
    v3 = sub_21DBFC2DC();
    if (v3)
    {
      v4 = v3;
      sub_21D0D8CF0(0, &qword_280D17880);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_21D0D8CF0(0, &qword_280D17690);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_21D215CA0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_21DBFB62C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_21DBFC2DC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_21D983FE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58300);
    v2 = sub_21DBFC3FC();
    v19 = v2;
    sub_21DBFC21C();
    v3 = sub_21DBFC2DC();
    if (v3)
    {
      v4 = v3;
      sub_21D0D8CF0(0, &qword_280D17880);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_21D0D8CF0(0, &qword_280D0C320);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_21D215CB4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_21DBFB62C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_21DBFC2DC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_21D984230(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582F8);
    v2 = sub_21DBFC3FC();
    v19 = v2;
    sub_21DBFC21C();
    v3 = sub_21DBFC2DC();
    if (v3)
    {
      v4 = v3;
      sub_21D0D8CF0(0, &qword_280D17880);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_21D0D8CF0(0, &qword_280D17860);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_21D217A94(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_21DBFB62C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_21DBFC2DC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_21D98447C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582C0);
    v2 = sub_21DBFC3FC();
    v19 = v2;
    sub_21DBFC21C();
    v3 = sub_21DBFC2DC();
    if (v3)
    {
      v4 = v3;
      sub_21D0D8CF0(0, &qword_280D17880);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_21D0D8CF0(0, &qword_27CE58DB8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_21D217AA8(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_21DBFB62C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_21DBFC2DC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_21D9846C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581B0);
    v2 = sub_21DBFC3FC();
    v19 = v2;
    sub_21DBFC21C();
    v3 = sub_21DBFC2DC();
    if (v3)
    {
      v4 = v3;
      sub_21D0D8CF0(0, &qword_280D17880);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_21D0D8CF0(0, &qword_27CE58DA8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_21D21AB08(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_21DBFB62C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_21DBFC2DC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_21D984914(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581A8);
    v2 = sub_21DBFC3FC();
    v19 = v2;
    sub_21DBFC21C();
    v3 = sub_21DBFC2DC();
    if (v3)
    {
      v4 = v3;
      sub_21D0D8CF0(0, &qword_280D17880);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_21D0D8CF0(0, &qword_280D17770);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_21D21BEE4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_21DBFB62C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_21DBFC2DC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_21D984B60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B30);
    v2 = sub_21DBFC3FC();
    v19 = v2;
    sub_21DBFC21C();
    v3 = sub_21DBFC2DC();
    if (v3)
    {
      v4 = v3;
      sub_21D0D8CF0(0, &qword_280D17880);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for TTRAccountEditor();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_21D21D6F0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_21DBFB62C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_21DBFC2DC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

void *sub_21D984D94(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_21D984F6C(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_21D984E0C(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_21D984D94(v7, v4, v2);
      MEMORY[0x223D46520](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_21D984F6C(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_21D984F6C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v30 = 0;
  v3 = 0;
  v28 = a3 + 64;
  v4 = 1 << *(a3 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a3 + 64);
  v7 = (v4 + 63) >> 6;
  v31 = v7;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_14:
    v11 = v8 | (v3 << 6);
    v12 = *(*(a3 + 48) + 8 * v11);
    sub_21D0CEB98(*(a3 + 56) + 32 * v11, v35);
    v33 = v12;
    sub_21D0CEB98(v35, &v34);
    v13 = qword_27CE56EC0;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = off_27CE643D8;
    if (!*(off_27CE643D8 + 2))
    {
      goto LABEL_26;
    }

    v36 = v6;
    sub_21DBFA16C();
    sub_21DBFC7DC();
    sub_21DBF8E0C();
    sub_21DBFA27C();
    v16 = sub_21DBFC82C();

    v17 = -1 << v15[32];
    v18 = v16 & ~v17;
    if ((*&v15[((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v18))
    {
      v19 = ~v17;
      while (1)
      {
        v20 = sub_21DBFA16C();
        v22 = v21;
        if (v20 == sub_21DBFA16C() && v22 == v23)
        {
          break;
        }

        v25 = sub_21DBFC64C();

        if (v25)
        {
          goto LABEL_6;
        }

        v18 = (v18 + 1) & v19;
        if (((*&v15[((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v18) & 1) == 0)
        {
          goto LABEL_25;
        }
      }

LABEL_6:

      v7 = v31;
      sub_21D0CF7E0(&v33, &qword_27CE5C898);
      __swift_destroy_boxed_opaque_existential_0(v35);

      v6 = v36;
    }

    else
    {
LABEL_25:

      v7 = v31;
      v6 = v36;
LABEL_26:
      sub_21D0CF7E0(&v33, &qword_27CE5C898);
      __swift_destroy_boxed_opaque_existential_0(v35);

      *(a1 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v30++, 1))
      {
        goto LABEL_32;
      }
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      sub_21D9856A4(a1, a2, v30, a3);
      return;
    }

    v10 = *(v28 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_21D9852A0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
  v45 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v48 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v44 = &v40 - v11;
  v12 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v47 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v42 = &v40 - v15;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581C0);
  result = sub_21DBFC40C();
  v17 = result;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v20 = result + 64;
  v41 = a4;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v46 = (v18 - 1) & v18;
LABEL_16:
    v24 = v21 | (v19 << 6);
    v25 = v42;
    v26 = *(v43 + 72);
    sub_21D371AB0(a4[6] + v26 * v24, v42);
    v27 = a4[7];
    v28 = *(v45 + 72);
    v29 = v27 + v28 * v24;
    v30 = v44;
    sub_21D985DA4(v29, v44);
    sub_21D985E14(v25, v47, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D0D523C(v30, v48, &qword_27CE5CDA0);
    sub_21DBFC7DC();
    TTRRemindersListViewModel.ItemID.hash(into:)();
    result = sub_21DBFC82C();
    v31 = -1 << *(v17 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v20 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v20 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    sub_21D985E14(v47, *(v17 + 48) + v34 * v26, type metadata accessor for TTRRemindersListViewModel.ItemID);
    result = sub_21D0D523C(v48, *(v17 + 56) + v34 * v28, &qword_27CE5CDA0);
    ++*(v17 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v41;
    v18 = v46;
    if (!a3)
    {
      return v17;
    }
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      return v17;
    }

    v23 = a1[v19];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v46 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21D9856A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58280);
  result = sub_21DBFC40C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v30 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    sub_21D0CEB98(*(v4 + 56) + 32 * v16, v32);
    sub_21D0CF2E8(v32, v31);
    sub_21DBFA16C();
    sub_21DBFC7DC();
    v18 = v17;
    sub_21DBFA27C();
    v19 = sub_21DBFC82C();

    v20 = -1 << *(v9 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v18;
    result = sub_21D0CF2E8(v31, (*(v9 + 56) + 32 * v23));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    v10 = v30;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v30 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21D985914(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE599C0);
  result = sub_21DBFC40C();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = sub_21DBFC7CC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_21D985B54()
{
  result = qword_27CE64430;
  if (!qword_27CE64430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64430);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRReminderTextStorage.StyleTypingAttributeState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 3;
  v6 = v4 - 3;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRReminderTextStorage.StyleTypingAttributeState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_21D985D5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D985DA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CDA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D985E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id TTRIRemindersListCellInfoButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRIRemindersListCellInfoButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id TTRIRemindersListCellInfoButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRIRemindersListCellInfoButton.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id TTRIRemindersListCellInfoButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *TTRRemindersBoardCellInfoButtonStates.init(defaultState:stateOverrides:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t TTRBoardReminderCellInfoButtonState.Layout.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

BOOL static TTRBoardReminderCellInfoButtonState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 - 3) < 2)
  {
    return 0;
  }

  return v2 == v3;
}

BOOL sub_21D986234(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 - 3) < 2)
  {
    return 0;
  }

  return v2 == v3;
}

void TTRRemindersBoardCellInfoButtonStates.state(for:)(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  if (*(v4 + 16))
  {
    v5 = sub_21D181E00();
    if (v6)
    {
      v3 = *(*(v4 + 56) + v5);
    }
  }

  *a1 = v3;
}

void static TTRRemindersBoardCellInfoButtonStates.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v2 == 4)
  {
    if (v4 == 4)
    {
      goto LABEL_4;
    }
  }

  else if (v2 == 3)
  {
    if (v4 == 3)
    {
LABEL_4:
      sub_21D370B24(v3, v5);
    }
  }

  else if (v2 == v4 && (v4 - 5) < 0xFFFFFFFE)
  {
    goto LABEL_4;
  }
}

void sub_21D986338(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v2 == 4)
  {
    if (v4 == 4)
    {
      goto LABEL_4;
    }
  }

  else if (v2 == 3)
  {
    if (v4 == 3)
    {
LABEL_4:
      sub_21D370B24(v3, v5);
    }
  }

  else if (v2 == v4 && (v4 - 5) < 0xFFFFFFFE)
  {
    goto LABEL_4;
  }
}

unint64_t sub_21D98638C()
{
  result = qword_27CE64438;
  if (!qword_27CE64438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64438);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRBoardReminderCellInfoButtonState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D986480(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_21D986494(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

id TTRReminderLocationPickerAutocompleteContactItemProvider.__allocating_init(autocompleteStore:backgroundQueue:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_21D987E84(a1, a2);

  return v6;
}

uint64_t sub_21D986528()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE64440);
  v1 = __swift_project_value_buffer(v0, qword_27CE64440);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRReminderLocationPickerAutocompleteContactItemProvider.init(autocompleteStore:backgroundQueue:)(void *a1, void *a2)
{
  v4 = sub_21D987E84(a1, a2);

  return v4;
}

uint64_t sub_21D986630()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchOperation;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchOperation);
  if (v2)
  {
    v7.receiver = *(v0 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchOperation);
    v7.super_class = type metadata accessor for FetchOperation();
    v3 = v2;
    objc_msgSendSuper2(&v7, sel_cancel);
    v4 = swift_unknownObjectRetain();
    sub_21D986D14(v4);

    swift_unknownObjectRelease();
    v5 = *(v0 + v1);
  }

  else
  {
    v5 = 0;
  }

  *(v0 + v1) = 0;

  v8 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE644A0);
  swift_allocObject();
  *(v0 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchPromise) = sub_21DBF824C();
}

id TTRReminderLocationPickerAutocompleteContactItemProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t TTRReminderLocationPickerAutocompleteContactItemProvider.items(matching:location:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v9 = sub_21DBFB12C();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_21DBF9DAC();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v12 = (v3 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentSearchText);
    v13 = *(v3 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentSearchText) == a1 && *(v3 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentSearchText + 8) == a2;
    if (v13 || (sub_21DBFC64C() & 1) != 0)
    {
      v14 = *(v3 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchPromise);
    }

    else
    {
      sub_21D986630();
      *v12 = a1;
      v12[1] = a2;
      sub_21DBF8E0C();

      v15 = v12[1];
      if ((v15 & 0x2000000000000000) != 0)
      {
        v16 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v16 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        v17 = *(v3 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_autocompleteStore);
        Operation = type metadata accessor for FetchOperation();
        v19 = objc_allocWithZone(Operation);
        v20 = &v19[qword_27CE64470];
        *v20 = 0;
        *(v20 + 1) = 0;
        *&v19[qword_27CE64478] = MEMORY[0x277D84F90];
        *&v19[qword_27CE64480] = 0;
        *&v19[qword_27CE64488] = v17;
        v21 = &v19[qword_27CE64490];
        *v21 = a1;
        *(v21 + 1) = a2;
        v31.receiver = v19;
        v31.super_class = Operation;
        sub_21DBF8E0C();
        v22 = v17;
        v23 = objc_msgSendSuper2(&v31, sel_init);
        v24 = *(v3 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchOperation);
        *(v3 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchOperation) = v23;
        v25 = v23;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE644A0);
        v26 = *(v3 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_operationQueue);
        *(swift_allocObject() + 16) = v26;
        v27 = v25;
        v28 = v26;
        sub_21DBF82BC();

        v29 = sub_21DBFB12C();
        v14 = sub_21DBF826C();

        *(v3 + OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchPromise) = v14;
      }

      else
      {
        v30[1] = MEMORY[0x277D84F90];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE644A0);
        swift_allocObject();
        return sub_21DBF824C();
      }
    }

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D986BD4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_27CE64470);
  v4 = *(v2 + qword_27CE64470);
  *v3 = a1;
  v3[1] = a2;
  sub_21D0D0E88(v4);
  v5 = objc_allocWithZone(MEMORY[0x277CFBC60]);

  v6 = [v5 init];
  v7 = sub_21DBFA12C();
  [v6 setSearchString_];

  [v6 setSearchType_];
  [v6 setIncludeDirectoryServers_];
  [v6 setIncludeCalendarServers_];
  [v6 setIncludeContacts_];
  v8 = [*(v2 + qword_27CE64488) executeFetchRequest:v6 delegate:v2];

  *(v2 + qword_27CE64480) = v8;

  return swift_unknownObjectRelease();
}

uint64_t sub_21D986D14(void *a1)
{
  if (a1)
  {
    [a1 cancel];
  }

  v2 = sub_21DBF627C();
  sub_21D9880DC();
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D44F98], v2);
  v5 = (v1 + qword_27CE64470);
  v6 = *(v1 + qword_27CE64470);
  if (v6)
  {

    v6(v3, 1);

    sub_21D0D0E88(v6);
  }

  else
  {
  }

  v7 = *v5;
  *v5 = 0;
  v5[1] = 0;

  return sub_21D0D0E88(v7);
}

void sub_21D986E14(void *a1)
{
  v3.receiver = a1;
  v3.super_class = swift_getObjectType();
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, sel_cancel);
  v2 = swift_unknownObjectRetain();
  sub_21D986D14(v2);
  swift_unknownObjectRelease();
}

uint64_t sub_21D986E90(void *a1)
{
  if ([v1 isCancelled])
  {
    [a1 cancel];
    v3 = sub_21DBF627C();
    sub_21D9880DC();
    v4 = swift_allocError();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D44F98], v3);
    v6 = &v1[qword_27CE64470];
    v7 = *&v1[qword_27CE64470];
    if (v7)
    {

      v7(v4, 1);

      sub_21D0D0E88(v7);
    }

    else
    {
    }

    v13 = *v6;
    *v6 = 0;
    v6[1] = 0;

    return sub_21D0D0E88(v13);
  }

  else
  {
    v8 = qword_27CE64478;
    swift_beginAccess();
    v9 = &v1[qword_27CE64470];
    v10 = *&v1[qword_27CE64470];
    if (v10)
    {
      v11 = *&v1[v8];
      sub_21DBF8E0C();
      sub_21D0D0E78(v10);
      v10(v11, 0);

      sub_21D0D0E88(v10);
      v12 = *v9;
    }

    else
    {
      v12 = 0;
    }

    *v9 = 0;
    v9[1] = 0;
    return sub_21D0D0E88(v12);
  }
}

void sub_21D98705C(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_21D986E90(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_21D9870C4(void *a1, void *a2)
{
  if ([v2 isCancelled])
  {
    [a1 cancel];
    v5 = sub_21DBF627C();
    sub_21D9880DC();
    v6 = swift_allocError();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D44F98], v5);
    v8 = &v2[qword_27CE64470];
    v9 = *&v2[qword_27CE64470];
    if (!v9)
    {

      goto LABEL_8;
    }

    v9(v6, 1);

LABEL_6:
    sub_21D0D0E88(v9);
LABEL_8:
    v10 = *v8;
    goto LABEL_9;
  }

  v8 = &v2[qword_27CE64470];
  v9 = *&v2[qword_27CE64470];
  if (v9)
  {

    v9(a2, 1);
    goto LABEL_6;
  }

  v10 = 0;
LABEL_9:
  *v8 = 0;
  v8[1] = 0;

  return sub_21D0D0E88(v10);
}

void sub_21D987230(void *a1, uint64_t a2, void *a3, void *a4)
{
  swift_unknownObjectRetain();
  v8 = a4;
  v7 = a1;
  sub_21D9870C4(a3, v8);
  swift_unknownObjectRelease();
}

uint64_t sub_21D9872AC(void *a1, unint64_t a2)
{
  v3 = v2;
  v96 = *MEMORY[0x277D85DE8];
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v9 = sub_21DBFB12C();
  (*(v7 + 104))(v9, *MEMORY[0x277D851F0], v6);
  v10 = sub_21DBF9DAC();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    goto LABEL_49;
  }

  if ([v3 isCancelled])
  {
    [a1 cancel];
    v11 = sub_21DBF627C();
    sub_21D9880DC();
    v12 = swift_allocError();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D44F98], v11);
    v14 = &v3[qword_27CE64470];
    v15 = *&v3[qword_27CE64470];
    if (v15)
    {

      v15(v12, 1);

      sub_21D0D0E88(v15);
    }

    else
    {
    }

    v73 = *v14;
    *v14 = 0;
    v14[1] = 0;
    return sub_21D0D0E88(v73);
  }

  if (a2 >> 62)
  {
    goto LABEL_50;
  }

  v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
LABEL_7:
    v17 = sub_21DBF633C();
    v18 = 0;
    v77 = 0;
    v76 = &v3[qword_27CE64490];
    v85 = a2 & 0xC000000000000001;
    v79 = a2 & 0xFFFFFFFFFFFFFF8;
    v78 = a2 + 32;
    v84 = *MEMORY[0x277CBD0C8];
    v88 = 0x800000021DC71D10;
    v93 = MEMORY[0x277D84F90];
    *&v19 = 136315650;
    v75 = v19;
    v82 = a2;
    v83 = v3;
    v81 = v16;
    v80 = v17;
    while (1)
    {
      if (v85)
      {
        v20 = MEMORY[0x223D44740](v18, a2);
      }

      else
      {
        if (v18 >= *(v79 + 16))
        {
          goto LABEL_47;
        }

        v20 = *(v78 + 8 * v18);
      }

      v87 = v20;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v16 = sub_21DBFBD7C();
        if (!v16)
        {
          break;
        }

        goto LABEL_7;
      }

      v22 = sub_21DBF631C();
      sub_21D7F6938(v22);

      v23 = sub_21DBFA5DC();

      v94 = 0;
      v24 = [v87 contactWithKeysToFetch:v23 error:&v94];

      if (v24)
      {
        v25 = v94;
        if ([v24 isKeyAvailable_])
        {
          v92 = v24;
          v26 = [v24 postalAddresses];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE645B0);
          v27 = sub_21DBFA5EC();

          v28 = v27;
          if (v27 >> 62)
          {
            v29 = sub_21DBFBD7C();
            v28 = v27;
            if (!v29)
            {
LABEL_43:

              goto LABEL_9;
            }
          }

          else
          {
            v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v29)
            {
              goto LABEL_43;
            }
          }

          if (v29 < 1)
          {
            goto LABEL_48;
          }

          v86 = v18;
          v30 = 0;
          v89 = v28 & 0xC000000000000001;
          v90 = v29;
          v31 = v92;
          v91 = v28;
          do
          {
            if (v89)
            {
              v32 = MEMORY[0x223D44740](v30);
            }

            else
            {
              v32 = *(v28 + 8 * v30 + 32);
            }

            v33 = v32;
            v94 = 0;
            v95 = 0xE000000000000000;
            sub_21DBFBEEC();

            v94 = 0xD000000000000014;
            v95 = v88;
            v34 = [v33 label];
            if (v34)
            {
              v35 = v34;
              v36 = sub_21DBFA16C();
              v38 = v37;
            }

            else
            {
              v38 = 0xE800000000000000;
              v36 = 0x6C6562616C5F6F6ELL;
            }

            MEMORY[0x223D42AA0](v36, v38);

            MEMORY[0x223D42AA0](45, 0xE100000000000000);
            v39 = [v33 value];
            v40 = [v39 description];
            v41 = sub_21DBFA16C();
            v43 = v42;

            MEMORY[0x223D42AA0](v41, v43);

            v45 = v94;
            v44 = v95;
            v46 = [v33 label];
            if (v46)
            {
              v47 = v46;
              v48 = sub_21DBFA16C();
              v50 = v49;
            }

            else
            {
              v48 = 0;
              v50 = 0;
            }

            v51 = [v33 value];
            v52 = v31;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v93 = sub_21D212DD4(0, *(v93 + 2) + 1, 1, v93);
            }

            v54 = *(v93 + 2);
            v53 = *(v93 + 3);
            if (v54 >= v53 >> 1)
            {
              v93 = sub_21D212DD4((v53 > 1), v54 + 1, 1, v93);
            }

            ++v30;

            v55 = v93;
            *(v93 + 2) = v54 + 1;
            v56 = &v55[56 * v54];
            *(v56 + 4) = v45;
            *(v56 + 5) = v44;
            v28 = v91;
            v31 = v92;
            *(v56 + 6) = v92;
            *(v56 + 7) = v48;
            *(v56 + 8) = v50;
            *(v56 + 9) = v51;
            v56[80] = 32;
          }

          while (v90 != v30);

          a2 = v82;
          v3 = v83;
          v16 = v81;
          goto LABEL_41;
        }
      }

      else
      {
        v86 = v18;
        v57 = v94;
        v58 = sub_21DBF52DC();

        swift_willThrow();
        if (qword_27CE56ED8 != -1)
        {
          swift_once();
        }

        v77 = 0;
        v59 = sub_21DBF84BC();
        __swift_project_value_buffer(v59, qword_27CE64440);
        v60 = v3;
        v61 = v58;
        v62 = v87;
        v63 = sub_21DBF84AC();
        v64 = sub_21DBFAEBC();

        if (!os_log_type_enabled(v63, v64))
        {

LABEL_41:
          v18 = v86;
          goto LABEL_9;
        }

        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v94 = v67;
        *v65 = v75;
        *(v65 + 4) = sub_21D0CDFB4(*v76, *(v76 + 1), &v94);
        *(v65 + 12) = 2080;
        swift_getErrorValue();
        v68 = sub_21DBFC74C();
        v70 = sub_21D0CDFB4(v68, v69, &v94);

        *(v65 + 14) = v70;
        *(v65 + 22) = 2112;
        *(v65 + 24) = v62;
        *v66 = v62;
        v71 = v62;
        _os_log_impl(&dword_21D0C9000, v63, v64, "Failed to get contact from AutoComplete suggestion -- skipping suggestion {searchText: %s, error: %s, autocompleteResult: %@}", v65, 0x20u);
        sub_21D560EB8(v66);
        v16 = v81;
        a2 = v82;
        MEMORY[0x223D46520](v66, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x223D46520](v67, -1, -1);
        v72 = v65;
        v3 = v83;
        MEMORY[0x223D46520](v72, -1, -1);

        v18 = v86;
      }

LABEL_9:
      if (v18 == v16)
      {
        goto LABEL_52;
      }
    }
  }

  v93 = MEMORY[0x277D84F90];
LABEL_52:
  swift_beginAccess();
  sub_21D563628(v93);
  return swift_endAccess();
}

uint64_t sub_21D987C44(void *a1, uint64_t a2, void *a3)
{
  sub_21D0D8CF0(0, &unk_27CE645A0);
  v5 = sub_21DBFA5EC();
  swift_unknownObjectRetain();
  v6 = a1;
  sub_21D9872AC(a3, v5);
  swift_unknownObjectRelease();
}

uint64_t sub_21D987D08()
{

  sub_21D0D0E88(*(v0 + qword_27CE64470));

  return swift_unknownObjectRelease();
}

uint64_t sub_21D987D80(uint64_t a1)
{

  sub_21D0D0E88(*(a1 + qword_27CE64470));

  return swift_unknownObjectRelease();
}

uint64_t sub_21D987E04(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_21D986BD4(sub_21D22D130, v4);
}

id sub_21D987E84(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchOperation] = 0;
  *&v3[OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_autocompleteStore] = a1;
  v7 = objc_allocWithZone(MEMORY[0x277CCABD8]);
  v8 = a1;
  v9 = [v7 init];
  [v9 setMaxConcurrentOperationCount_];
  [v9 setUnderlyingQueue_];
  *&v3[OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_operationQueue] = v9;
  v10 = &v3[OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentSearchText];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v13 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE644A0);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC15RemindersUICore56TTRReminderLocationPickerAutocompleteContactItemProvider_currentFetchPromise] = sub_21DBF824C();
  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t type metadata accessor for FetchOperation()
{
  result = qword_27CE644D0;
  if (!qword_27CE644D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D9880DC()
{
  result = qword_27CE645B8;
  if (!qword_27CE645B8)
  {
    sub_21DBF627C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE645B8);
  }

  return result;
}

uint64_t TTRManagedPasteboardItem.init(pasteboard:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRSystemPasteboardDataType();
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  if (qword_27CE56EE8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_27CE645D8);
  v10 = *(v8 + 8);
  if (v10(v9, v7, v8))
  {
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    sub_21DBF837C();
    swift_storeEnumTagMultiPayload();
    v13 = (*(v12 + 16))(v6, v11, v12);
    v15 = v14;
    sub_21D98A044(v6);
    if (v15)
    {
      *a2 = v13;
      *(a2 + 8) = v15;
      *(a2 + 16) = 0;
      return __swift_destroy_boxed_opaque_existential_0(a1);
    }

    goto LABEL_20;
  }

  if (qword_27CE56EF0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_27CE645F0);
  if ((v10(v17, v7, v8) & 1) == 0)
  {
    if (qword_27CE56EF8 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v4, qword_27CE64608);
    if ((v10(v17, v7, v8) & 1) == 0)
    {
      if (qword_27CE56F00 != -1)
      {
        swift_once();
      }

      v21 = __swift_project_value_buffer(v4, qword_27CE64620);
      if (v10(v21, v7, v8))
      {
        v22 = a1[3];
        v23 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v22);
        v20 = (*(v23 + 24))(v21, v22, v23);
        if (v20)
        {
          goto LABEL_13;
        }
      }

LABEL_20:
      result = __swift_destroy_boxed_opaque_existential_0(a1);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = -1;
      return result;
    }
  }

  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 24))(v17, v18, v19);
  if (!v20)
  {
    goto LABEL_20;
  }

LABEL_13:
  *a2 = v20;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t type metadata accessor for TTRSystemPasteboardDataType()
{
  result = qword_27CE64640;
  if (!qword_27CE64640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTRManagedPasteboardItem.description.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    sub_21DBFBEEC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64638);
    v2 = sub_21DBFA1AC();

    v6 = v2;
    MEMORY[0x223D42AA0](0xD00000000000002BLL, 0x800000021DC71D30);
    [v1 length];
  }

  else
  {
    sub_21DBFBEEC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64638);
    v3 = sub_21DBFA1AC();

    v6 = v3;
    MEMORY[0x223D42AA0](0xD00000000000001ALL, 0x800000021DC71D60);
    sub_21DBFA28C();
  }

  v4 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](v4);

  MEMORY[0x223D42AA0](10530, 0xE200000000000000);
  return v6;
}

unint64_t sub_21D988674(uint64_t a1, unint64_t a2)
{
  v5 = sub_21DBF4CAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = *(v2 + 8);
  if (*(v2 + 16))
  {
    v17 = *v2;
    v18 = v10;
    v19 = 1;
    return sub_21D988EA0(a1, a2, v9);
  }

  else
  {
    v17 = *v2;
    v18 = v10;
    sub_21DBF4C5C();
    sub_21D176F0C();
    v12 = sub_21DBFBB3C();
    v14 = v13;
    (*(v6 + 8))(v8, v5);

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v17 = v9;
      v18 = v10;
      v19 = 0;
      return sub_21D988814(a1, a2, v9, v10);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }
}

unint64_t sub_21D988814(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v71 = a1;
  v72 = a2;
  *&v79 = 9;
  *(&v79 + 1) = 0xE100000000000000;
  v74 = &v79;
  sub_21DBF8E0C();
  v7 = sub_21D98A0A8(0x7FFFFFFFFFFFFFFFLL, 1, sub_21D98AF98, v73, a3, a4, v6);

  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {

    v10 = MEMORY[0x277D84F90];
LABEL_30:
    *&v79 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
    v43 = sub_21DBFA07C();
    v45 = v44;

    *&v79 = 10;
    *(&v79 + 1) = 0xE100000000000000;
    MEMORY[0x28223BE20](v46);
    v67 = &v79;
    v47 = sub_21D98A0A8(0x7FFFFFFFFFFFFFFFLL, 1, sub_21D98B028, &v65, v43, v45, &v69);

    v48 = *(v47 + 16);
    if (v48)
    {
      v82 = v9;
      sub_21D18E678(0, v48, 0);
      v49 = v82;
      v50 = sub_21D44BEC8();
      v51 = sub_21D176F0C();
      v70 = v47;
      v52 = (v47 + 56);
      do
      {
        v53 = *(v52 - 1);
        v54 = *v52;
        v79 = *(v52 - 3);
        v80 = v53;
        v81 = v54;
        v77 = 0x88E2BFA3EF8F88E2;
        v78 = 0xA90000000000008FLL;
        v75 = 10;
        v76 = 0xE100000000000000;
        v67 = v51;
        v68 = v51;
        v66 = v50;
        v65 = MEMORY[0x277D837D0];
        v55 = sub_21DBFBB5C();
        v82 = v49;
        v58 = *(v49 + 16);
        v57 = *(v49 + 24);
        if (v58 >= v57 >> 1)
        {
          v69 = v55;
          v60 = v56;
          sub_21D18E678((v57 > 1), v58 + 1, 1);
          v56 = v60;
          v55 = v69;
          v49 = v82;
        }

        *(v49 + 16) = v58 + 1;
        v59 = v49 + 16 * v58;
        *(v59 + 32) = v55;
        *(v59 + 40) = v56;
        v52 += 4;
        --v48;
      }

      while (v48);
    }

    else
    {

      v49 = MEMORY[0x277D84F90];
    }

    v62 = v71;
    v61 = v72;
    v63 = HIBYTE(v72) & 0xF;
    if ((v72 & 0x2000000000000000) == 0)
    {
      v63 = v71 & 0xFFFFFFFFFFFFLL;
    }

    if (v63)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_21DC08D00;
      *(v64 + 32) = v62;
      *(v64 + 40) = v61;
      *&v79 = v64;
      sub_21DBF8E0C();
      sub_21D5623AC(v49);
      return v79;
    }

    return v49;
  }

  v70 = 0;
  v82 = MEMORY[0x277D84F90];
  sub_21D18E678(0, v8, 0);
  v10 = v82;
  v69 = v7;
  v11 = (v7 + 56);
  while (1)
  {
    v12 = *(v11 - 3);
    v13 = *(v11 - 2);
    v14 = *(v11 - 1);
    v15 = *v11;
    sub_21DBF8E0C();
    if (v13 >> 14 == v12 >> 14)
    {
LABEL_4:
      v16 = MEMORY[0x223D429B0](v12, v13, v14, v15);
      v18 = v17;
      goto LABEL_25;
    }

    if (sub_21DBFBADC() == 34 && v19 == 0xE100000000000000)
    {
    }

    else
    {
      v21 = sub_21DBFC64C();

      if ((v21 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    sub_21DBFBA9C();
    if (sub_21DBFBADC() == 34 && v22 == 0xE100000000000000)
    {
    }

    else
    {
      v23 = sub_21DBFC64C();

      if ((v23 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    sub_21DBF8E0C();
    result = sub_21DBFBAAC();
    if (v25)
    {
      result = v13;
    }

    if (v13 >> 14 < result >> 14)
    {
      break;
    }

    v26 = sub_21DBFBAEC();
    v28 = v27;

    result = sub_21DBFBACC();
    if (__OFSUB__(result, 1))
    {
      goto LABEL_43;
    }

    result = sub_21DBFBAAC();
    if (v29)
    {
      v30 = v28;
    }

    else
    {
      v30 = result;
    }

    if (v30 >> 14 < v26 >> 14)
    {
      goto LABEL_44;
    }

    v31 = sub_21DBFBAEC();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    *&v79 = v31;
    *(&v79 + 1) = v33;
    v80 = v35;
    v81 = v37;
    v77 = 10;
    v78 = 0xE100000000000000;
    v75 = 0x88E2BFA3EF8F88E2;
    v76 = 0xA90000000000008FLL;
    v38 = sub_21D44BEC8();
    v67 = sub_21D176F0C();
    v68 = v67;
    v66 = v38;
    v65 = MEMORY[0x277D837D0];
    v16 = sub_21DBFBB5C();
    v18 = v39;

LABEL_25:

    v82 = v10;
    v41 = *(v10 + 16);
    v40 = *(v10 + 24);
    if (v41 >= v40 >> 1)
    {
      sub_21D18E678((v40 > 1), v41 + 1, 1);
      v10 = v82;
    }

    *(v10 + 16) = v41 + 1;
    v42 = v10 + 16 * v41;
    *(v42 + 32) = v16;
    *(v42 + 40) = v18;
    v11 += 4;
    if (!--v8)
    {

      v9 = MEMORY[0x277D84F90];
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_21D988EA0(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F90];
  v6 = *MEMORY[0x277D74118];
  v7 = [a3 length];
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = v5;
  v8[4] = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21D98AFB4;
  *(v9 + 24) = v8;
  aBlock[4] = sub_21D24B3B4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D1A6068;
  aBlock[3] = &block_descriptor_122;
  v10 = _Block_copy(aBlock);
  v11 = a3;

  [v11 enumerateAttribute:v6 inRange:0 options:v7 usingBlock:{0, v10}];
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v13 = qword_27CE56EE0;
    sub_21DBF8E0C();
    if (v13 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v14 = sub_21DBF4CAC();
  __swift_project_value_buffer(v14, qword_27CE645C0);
  sub_21D176F0C();
  v15 = sub_21DBFBB3C();
  v17 = v16;

  *(v4 + 16) = v15;
  *(v4 + 24) = v17;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18 || (swift_beginAccess(), *(*(v5 + 16) + 16)))
  {
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](v15, v17);
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;

    v19 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v19 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      swift_beginAccess();
      sub_21DBF8E0C();
      sub_21DBD1938(0, 0, a1, a2);
      swift_endAccess();
    }
  }

  swift_beginAccess();
  v20 = *(v5 + 16);
  sub_21DBF8E0C();

  return v20;
}

uint64_t sub_21D989240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF4CAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a1;
  v23 = a2;
  sub_21DBF4C5C();
  sub_21D176F0C();
  v10 = sub_21DBFBB3C();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  v13 = *(a3 + 16);
  v14 = *(v13 + 2);
  if (!v14)
  {
    swift_beginAccess();
    MEMORY[0x223D42AA0](v10, v12);
    swift_endAccess();
  }

  v15 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v15 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_21D210A84(0, v14 + 1, 1, v13);
    *(a3 + 16) = v13;
  }

  v18 = *(v13 + 2);
  v17 = *(v13 + 3);
  if (v18 >= v17 >> 1)
  {
    v13 = sub_21D210A84((v17 > 1), v18 + 1, 1, v13);
  }

  *(v13 + 2) = v18 + 1;
  v19 = &v13[16 * v18];
  *(v19 + 4) = v10;
  *(v19 + 5) = v12;
  *(a3 + 16) = v13;
  return swift_endAccess();
}

void sub_21D989444(uint64_t a1, uint64_t a2, uint64_t a3, int a4, id a5, uint64_t a6)
{
  v9 = [a5 attributedSubstringFromRange_];
  v10 = [v9 string];

  v11 = sub_21DBFA16C();
  v13 = v12;

  sub_21D0DB414(a1, v29);
  if (!v29[3])
  {
    sub_21D0CF7E0(v29, &qword_27CE5C690);
    goto LABEL_17;
  }

  sub_21D0D8CF0(0, &qword_27CE5C878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    sub_21D989240(v11, v13, a6);

    return;
  }

  v14 = [v28 ttr_textLists];
  sub_21D0D8CF0(0, &qword_27CE64670);
  v15 = sub_21DBFA5EC();

  if (v15 >> 62)
  {
    v16 = sub_21DBFBD7C();
    if (v16)
    {
LABEL_5:
      v17 = __OFSUB__(v16, 1);
      v18 = v16 - 1;
      if (v17)
      {
        __break(1u);
      }

      else if ((v15 & 0xC000000000000001) == 0)
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v18 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v19 = *(v15 + 8 * v18 + 32);
          goto LABEL_10;
        }

        __break(1u);
        goto LABEL_24;
      }

      v19 = MEMORY[0x223D44740](v18, v15);
LABEL_10:
      v20 = v19;

      v21 = swift_allocObject();
      *(v21 + 16) = [v20 startingItemNumber];
      v22 = swift_allocObject();
      *(v22 + 24) = 0;
      *(v22 + 16) = 0;
      v29[0] = v11;
      v29[1] = v13;
      v23 = swift_allocObject();
      v23[2] = v20;
      v23[3] = v21;
      v23[4] = v22;
      v23[5] = a6;
      sub_21D176F0C();
      v14 = v20;

      sub_21DBFBB2C();

      swift_beginAccess();
      v11 = *(v22 + 24);
      if (!v11)
      {
LABEL_15:

        return;
      }

      v6 = *(v22 + 16);
      swift_beginAccess();
      v13 = *(a6 + 16);
      sub_21DBF8E0C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a6 + 16) = v13;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_12:
        v26 = *(v13 + 2);
        v25 = *(v13 + 3);
        if (v26 >= v25 >> 1)
        {
          v13 = sub_21D210A84((v25 > 1), v26 + 1, 1, v13);
        }

        *(v13 + 2) = v26 + 1;
        v27 = &v13[16 * v26];
        *(v27 + 4) = v6;
        *(v27 + 5) = v11;
        *(a6 + 16) = v13;
        swift_endAccess();
        goto LABEL_15;
      }

LABEL_24:
      v13 = sub_21D210A84(0, *(v13 + 2) + 1, 1, v13);
      *(a6 + 16) = v13;
      goto LABEL_12;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_5;
    }
  }

  sub_21D989240(v11, v13, a6);
}

uint64_t sub_21D989810(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v64 = a7;
  v65 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v63 - v12;
  swift_beginAccess();
  v14 = [a4 markerForItemNumber_];
  v15 = sub_21DBFA16C();
  v17 = v16;

  v66 = a1;
  v67 = a2;
  v70 = v15;
  v71 = v17;
  v18 = sub_21DBF582C();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  sub_21D176F0C();
  sub_21DBFBBAC();
  v20 = v19;
  v22 = v21;
  sub_21D0CF7E0(v13, &unk_27CE65010);

  if (v22)
  {
    v66 = a1;
    v67 = a2;
    if (qword_27CE56EE0 != -1)
    {
      swift_once();
    }

    v23 = sub_21DBF4CAC();
    __swift_project_value_buffer(v23, qword_27CE645C0);
    v24 = sub_21DBFBB3C();
    v26 = v25;
    v27 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27)
    {
    }

    v28 = v24;
    v29 = v65;
    swift_beginAccess();
    v30 = *(v29 + 24);
    if (v30)
    {
      v70 = *(v29 + 16);
      v71 = v30;
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](10, 0xE100000000000000);
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](v28, v26);

      v31 = v70;
      v32 = v71;
      swift_beginAccess();
      *(v29 + 16) = v31;
      *(v29 + 24) = v32;
    }

    v57 = v64;
    swift_beginAccess();
    v58 = *(v57 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v57 + 16) = v58;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v58 = sub_21D210A84(0, *(v58 + 2) + 1, 1, v58);
      *(v57 + 16) = v58;
    }

    v61 = *(v58 + 2);
    v60 = *(v58 + 3);
    if (v61 >= v60 >> 1)
    {
      v58 = sub_21D210A84((v60 > 1), v61 + 1, 1, v58);
    }

    *(v58 + 2) = v61 + 1;
    v62 = &v58[16 * v61];
    *(v62 + 4) = v28;
    *(v62 + 5) = v26;
    *(v57 + 16) = v58;
    return swift_endAccess();
  }

  else
  {
    sub_21DBF8E0C();
    v33 = sub_21D3F7BA8(v20, a1, a2);
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v66 = v33;
    v67 = v35;
    v68 = v37;
    v69 = v39;
    if (qword_27CE56EE0 != -1)
    {
      swift_once();
    }

    v40 = sub_21DBF4CAC();
    v41 = __swift_project_value_buffer(v40, qword_27CE645C0);
    sub_21D44BEC8();
    v42 = sub_21DBFBB3C();
    v44 = v43;

    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = v42 & 0xFFFFFFFFFFFFLL;
    }

    v47 = v64;
    v46 = v65;
    if (!v45)
    {
      goto LABEL_20;
    }

    swift_beginAccess();
    v37 = *(v46 + 24);
    if (!v37)
    {
      goto LABEL_19;
    }

    v41 = *(v46 + 16);
    swift_beginAccess();
    v39 = *(v47 + 16);
    sub_21DBF8E0C();
    v48 = swift_isUniquelyReferenced_nonNull_native();
    *(v47 + 16) = v39;
    if ((v48 & 1) == 0)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v50 = *(v39 + 2);
      v49 = *(v39 + 3);
      if (v50 >= v49 >> 1)
      {
        v39 = sub_21D210A84((v49 > 1), v50 + 1, 1, v39);
      }

      *(v39 + 2) = v50 + 1;
      v51 = &v39[16 * v50];
      *(v51 + 4) = v41;
      *(v51 + 5) = v37;
      *(v47 + 16) = v39;
      swift_endAccess();
LABEL_19:
      swift_beginAccess();
      v52 = *(v46 + 24);
      *(v46 + 16) = v42;
      *(v46 + 24) = v44;
      v44 = v52;
LABEL_20:

      result = swift_beginAccess();
      v54 = *(a5 + 16);
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (!v55)
      {
        break;
      }

      __break(1u);
LABEL_29:
      v39 = sub_21D210A84(0, *(v39 + 2) + 1, 1, v39);
      *(v47 + 16) = v39;
    }

    *(a5 + 16) = v56;
  }

  return result;
}

uint64_t sub_21D989D24()
{
  v0 = sub_21DBF4CAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v10 - v5;
  __swift_allocate_value_buffer(v7, qword_27CE645C0);
  v8 = __swift_project_value_buffer(v0, qword_27CE645C0);
  sub_21DBF4C5C();
  v10[1] = &unk_282EA7248;
  sub_21D98AFC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64660);
  sub_21D0D0F1C(&qword_27CE64668, &qword_27CE64660);
  sub_21DBFBCBC();
  sub_21DBF4C9C();
  (*(v1 + 8))(v3, v0);
  return (*(v1 + 32))(v8, v6, v0);
}

uint64_t sub_21D989EF4()
{
  v0 = type metadata accessor for TTRSystemPasteboardDataType();
  __swift_allocate_value_buffer(v0, qword_27CE645D8);
  v1 = __swift_project_value_buffer(v0, qword_27CE645D8);
  *v1 = 0xD000000000000037;
  v1[1] = 0x800000021DC71D80;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21D989FCC(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = type metadata accessor for TTRSystemPasteboardDataType();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  a3();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21D98A044(uint64_t a1)
{
  v2 = type metadata accessor for TTRSystemPasteboardDataType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21D98A0A8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_21DBFA3FC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_21D213B7C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_21D213B7C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_21DBFA3CC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_21DBFA29C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_21DBFA29C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_21DBFA3FC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_21D213B7C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_21DBFA3FC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_21D213B7C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_21D213B7C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_21DBFA29C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s15RemindersUICore24TTRManagedPasteboardItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      sub_21D0D8CF0(0, &qword_280D17680);
      sub_21D59B950(v6, v5, 1);
      sub_21D59B950(v3, v2, 1);
      v8 = sub_21DBFB63C();
      sub_21D5968AC(v3, v2, 1);
      v9 = v6;
      v10 = v5;
      v11 = 1;
LABEL_11:
      sub_21D5968AC(v9, v10, v11);
      return v8 & 1;
    }

LABEL_5:
    sub_21D59B950(*a2, *(a2 + 8), v7);
    sub_21D59B950(v3, v2, v4);
    sub_21D5968AC(v3, v2, v4);
    sub_21D5968AC(v6, v5, v7);
    return 0;
  }

  if (*(a2 + 16))
  {
    goto LABEL_5;
  }

  v13 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v8 = sub_21DBFC64C();
    sub_21D59B950(v6, v5, 0);
    sub_21D59B950(v3, v2, 0);
    sub_21D5968AC(v3, v2, 0);
    v9 = v6;
    v10 = v5;
    v11 = 0;
    goto LABEL_11;
  }

  sub_21D59B950(v13, v2, 0);
  sub_21D59B950(v3, v2, 0);
  sub_21D5968AC(v3, v2, 0);
  sub_21D5968AC(v3, v2, 0);
  return 1;
}

uint64_t _s15RemindersUICore27TTRSystemPasteboardDataTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF843C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRSystemPasteboardDataType();
  MEMORY[0x28223BE20](v8);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE64650);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  v18 = (&v26 + *(v17 + 56) - v15);
  sub_21D17B164(a1, &v26 - v15);
  sub_21D17B164(a2, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D17B164(v16, v13);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v7, v18, v4);
      v23 = sub_21DBF839C();
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v13, v4);
      sub_21D98A044(v16);
      return v23 & 1;
    }

    (*(v5 + 8))(v13, v4);
    goto LABEL_12;
  }

  sub_21D17B164(v16, v10);
  v20 = *v10;
  v19 = v10[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_12:
    sub_21D0CF7E0(v16, &qword_27CE64650);
    goto LABEL_13;
  }

  if (v20 == *v18 && v19 == v18[1])
  {

    goto LABEL_16;
  }

  v22 = sub_21DBFC64C();

  if (v22)
  {
LABEL_16:
    sub_21D98A044(v16);
    v23 = 1;
    return v23 & 1;
  }

  sub_21D98A044(v16);
LABEL_13:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_21D98A924(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D59B950(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRITextCellContentState.TextContent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D59B950(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_21D5968AC(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRITextCellContentState.TextContent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_21D5968AC(v4, v5, v6);
  return a1;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRSystemPasteboardDataType(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = a2[1];
      *a1 = *a2;
      a1[1] = v6;
      sub_21DBF8E0C();
    }

    else
    {
      v8 = sub_21DBF843C();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t destroy for TTRSystemPasteboardDataType(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v3 = sub_21DBF843C();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }
}

void *initializeWithCopy for TTRSystemPasteboardDataType(void *a1, void *a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
    sub_21DBF8E0C();
  }

  else
  {
    v5 = sub_21DBF843C();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for TTRSystemPasteboardDataType(void *a1, void *a2)
{
  if (a1 != a2)
  {
    sub_21D98A044(a1);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      sub_21DBF8E0C();
    }

    else
    {
      v4 = sub_21DBF843C();
      (*(*(v4 - 8) + 16))(a1, a2, v4);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *initializeWithTake for TTRSystemPasteboardDataType(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = sub_21DBF843C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for TTRSystemPasteboardDataType(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D98A044(a1);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = sub_21DBF843C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_21D98AECC()
{
  result = sub_21DBF843C();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

unint64_t sub_21D98AFC0()
{
  result = qword_27CE64658;
  if (!qword_27CE64658)
  {
    sub_21DBF4CAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64658);
  }

  return result;
}

uint64_t TTRSingleDataSourceSection.hashValue.getter()
{
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](0);
  return sub_21DBFC82C();
}

unint64_t sub_21D98B0BC()
{
  result = qword_27CE64678;
  if (!qword_27CE64678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64678);
  }

  return result;
}

id TTRReminderSwipeAction.makeContextualAction(handler:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (*v2)
  {
    v6 = v5 == 10;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  v19 = *v2;
  TTRReminderSwipeAction.localizedTitle.getter();
  v8 = sub_21DBFA12C();

  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D6D9B28;
  aBlock[3] = &block_descriptor_123;
  v9 = _Block_copy(aBlock);
  v10 = objc_opt_self();

  v11 = [v10 contextualActionWithStyle:v7 title:v8 handler:v9];

  _Block_release(v9);

  LOBYTE(aBlock[0]) = v5;
  v12 = TTRReminderSwipeAction.backgroundColor.getter();
  if (v12)
  {
    v13 = v12;
    [v11 setBackgroundColor_];
  }

  LOBYTE(aBlock[0]) = v5;
  v14 = TTRReminderSwipeAction.image.getter();
  [v11 setImage_];

  LOBYTE(aBlock[0]) = v5;
  v15 = v11;
  TTRReminderSwipeAction.accessibilityLabel.getter();
  v16 = sub_21DBFA12C();

  [v15 setAccessibilityLabel_];

  return v15;
}

int *TTRBoardColumnItemIntermediateViewModel.init(itemID:itemLevel:isUserInteractionEnabled:isEditingItem:isTargetOfContextualPresentation:infoButtonState:isPonderingTextEffectVisible:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *a6;
  sub_21D241B94(a1, a8);
  result = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v17 = a8 + result[5];
  *v17 = v13;
  *(v17 + 8) = v14;
  *(a8 + result[6]) = a3;
  *(a8 + result[7]) = a4;
  *(a8 + result[8]) = a5;
  *(a8 + result[9]) = v15;
  *(a8 + result[10]) = a7;
  return result;
}

uint64_t type metadata accessor for TTRBoardColumnItemIntermediateViewModel()
{
  result = qword_27CE64680;
  if (!qword_27CE64680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static TTRBoardColumnItemIntermediateViewModel.ItemLevel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  v5 = v3 ^ v2 ^ 1;
  if (*a1 != *a2)
  {
    v5 = 0;
  }

  return v5 & 1;
}

BOOL sub_21D98B424(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  v5 = v3 ^ v2 ^ 1;
  if (*a1 != *a2)
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t TTRBoardColumnItemIntermediateViewModel.itemLevel.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t TTRBoardColumnItemIntermediateViewModel.infoButtonState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t _s15RemindersUICore39TTRBoardColumnItemIntermediateViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    goto LABEL_14;
  }

  v4 = type metadata accessor for TTRBoardColumnItemIntermediateViewModel();
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7 == 2)
  {
    if (v9 != 2)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v7 == 3)
  {
    if (v9 != 3)
    {
      goto LABEL_14;
    }

LABEL_11:
    if (*(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]) || *(a1 + v4[8]) != *(a2 + v4[8]))
    {
      goto LABEL_14;
    }

    v12 = v4[9];
    v13 = *(a1 + v12);
    v14 = *(a2 + v12);
    if (v13 == 4)
    {
      if (v14 == 4)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v13 != 3)
      {
        if (v13 != v14 || (v14 - 5) >= 0xFFFFFFFE)
        {
          goto LABEL_14;
        }

LABEL_26:
        v10 = *(a1 + v4[10]) ^ *(a2 + v4[10]) ^ 1;
        return v10 & 1;
      }

      if (v14 == 3)
      {
        goto LABEL_26;
      }
    }

LABEL_14:
    v10 = 0;
    return v10 & 1;
  }

  if ((v9 & 0xFE) == 2)
  {
    goto LABEL_14;
  }

  v10 = 0;
  if (*v6 == *v8 && ((v9 ^ v7) & 1) == 0)
  {
    goto LABEL_11;
  }

  return v10 & 1;
}

void **initializeBufferWithCopyOfBuffer for TTRBoardColumnItemIntermediateViewModel(void **a1, void **a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v19 = *a2;
      *a1 = *a2;
      v20 = v19;
      goto LABEL_45;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_46:
        v28 = a3[5];
        v29 = a3[6];
        v30 = a1 + v28;
        v31 = a2 + v28;
        *v30 = *v31;
        v30[8] = v31[8];
        *(a1 + v29) = *(a2 + v29);
        v32 = a3[8];
        *(a1 + a3[7]) = *(a2 + a3[7]);
        *(a1 + v32) = *(a2 + v32);
        v33 = a3[10];
        *(a1 + a3[9]) = *(a2 + a3[9]);
        *(a1 + v33) = *(a2 + v33);
        return a1;
      }

      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 > 4)
      {
        if (v10 <= 7)
        {
          if (v10 == 5 || v10 == 6)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        }

        if (v10 != 8 && v10 != 9)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v10 > 2)
        {
LABEL_24:
          v22 = sub_21DBF563C();
          (*(*(v22 - 8) + 16))(a1, a2, v22);
          swift_storeEnumTagMultiPayload();
          goto LABEL_45;
        }

        if (v10 != 1)
        {
          if (v10 == 2)
          {
            goto LABEL_24;
          }

LABEL_35:
          memcpy(a1, a2, *(*(v9 - 8) + 64));
          goto LABEL_45;
        }
      }

      v23 = *a2;
      *a1 = *a2;
      v24 = v23;
      swift_storeEnumTagMultiPayload();
      goto LABEL_45;
    }

    v12 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v12;
    if (v16(a2 + v13, 1, v14))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v13, a2 + v13, *(*(v18 - 8) + 64));
LABEL_45:
      swift_storeEnumTagMultiPayload();
      goto LABEL_46;
    }

    v21 = swift_getEnumCaseMultiPayload();
    if (v21 > 4)
    {
      if (v21 <= 7)
      {
        if (v21 == 5 || v21 == 6)
        {
          goto LABEL_36;
        }

        goto LABEL_43;
      }

      if (v21 != 8 && v21 != 9)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v21 > 2)
      {
LABEL_36:
        v25 = sub_21DBF563C();
        (*(*(v25 - 8) + 16))(a1 + v13, a2 + v13, v25);
        swift_storeEnumTagMultiPayload();
LABEL_44:
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
        goto LABEL_45;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_36;
        }

LABEL_43:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_44;
      }
    }

    v26 = *(a2 + v13);
    *(a1 + v13) = v26;
    v27 = v26;
    swift_storeEnumTagMultiPayload();
    goto LABEL_44;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = &v11[(v5 + 16) & ~v5];

  return a1;
}

void **initializeWithCopy for TTRBoardColumnItemIntermediateViewModel(void **a1, void **a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      goto LABEL_43;
    case 1:
      v10 = *a2;
      *a1 = *a2;
      v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = *(v12 - 8);
      v14 = *(v13 + 48);
      v15 = v10;
      if (v14(a2 + v11, 1, v12))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v11, a2 + v11, *(*(v16 - 8) + 64));
LABEL_43:
        swift_storeEnumTagMultiPayload();
        goto LABEL_44;
      }

      v19 = swift_getEnumCaseMultiPayload();
      if (v19 > 4)
      {
        if (v19 <= 7)
        {
          if (v19 == 5 || v19 == 6)
          {
            goto LABEL_34;
          }

          goto LABEL_41;
        }

        if (v19 != 8 && v19 != 9)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v19 > 2)
        {
LABEL_34:
          v23 = sub_21DBF563C();
          (*(*(v23 - 8) + 16))(a1 + v11, a2 + v11, v23);
          swift_storeEnumTagMultiPayload();
LABEL_42:
          (*(v13 + 56))(a1 + v11, 0, 1, v12);
          goto LABEL_43;
        }

        if (v19 != 1)
        {
          if (v19 == 2)
          {
            goto LABEL_34;
          }

LABEL_41:
          memcpy(a1 + v11, a2 + v11, *(v13 + 64));
          goto LABEL_42;
        }
      }

      v24 = *(a2 + v11);
      *(a1 + v11) = v24;
      v25 = v24;
      swift_storeEnumTagMultiPayload();
      goto LABEL_42;
    case 0:
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 > 4)
      {
        if (v9 <= 7)
        {
          if (v9 == 5 || v9 == 6)
          {
            goto LABEL_22;
          }

          goto LABEL_33;
        }

        if (v9 != 8 && v9 != 9)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v9 > 2)
        {
LABEL_22:
          v20 = sub_21DBF563C();
          (*(*(v20 - 8) + 16))(a1, a2, v20);
          swift_storeEnumTagMultiPayload();
          goto LABEL_43;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            goto LABEL_22;
          }

LABEL_33:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_43;
        }
      }

      v21 = *a2;
      *a1 = *a2;
      v22 = v21;
      swift_storeEnumTagMultiPayload();
      goto LABEL_43;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_44:
  v26 = a3[5];
  v27 = a3[6];
  v28 = a1 + v26;
  v29 = a2 + v26;
  *v28 = *v29;
  v28[8] = v29[8];
  *(a1 + v27) = *(a2 + v27);
  v30 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v30) = *(a2 + v30);
  v31 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v31) = *(a2 + v31);
  return a1;
}

void **assignWithCopy for TTRBoardColumnItemIntermediateViewModel(void **a1, void **a2, int *a3)
{
  if (a1 == a2)
  {
    goto LABEL_45;
  }

  sub_21D371B14(a1);
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      goto LABEL_44;
    case 1:
      v10 = *a2;
      *a1 = *a2;
      v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = *(v12 - 8);
      v14 = *(v13 + 48);
      v15 = v10;
      if (v14(a2 + v11, 1, v12))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v11, a2 + v11, *(*(v16 - 8) + 64));
LABEL_44:
        swift_storeEnumTagMultiPayload();
        goto LABEL_45;
      }

      v19 = swift_getEnumCaseMultiPayload();
      if (v19 > 4)
      {
        if (v19 <= 7)
        {
          if (v19 == 5 || v19 == 6)
          {
            goto LABEL_35;
          }

          goto LABEL_42;
        }

        if (v19 != 8 && v19 != 9)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v19 > 2)
        {
LABEL_35:
          v23 = sub_21DBF563C();
          (*(*(v23 - 8) + 16))(a1 + v11, a2 + v11, v23);
          swift_storeEnumTagMultiPayload();
LABEL_43:
          (*(v13 + 56))(a1 + v11, 0, 1, v12);
          goto LABEL_44;
        }

        if (v19 != 1)
        {
          if (v19 == 2)
          {
            goto LABEL_35;
          }

LABEL_42:
          memcpy(a1 + v11, a2 + v11, *(v13 + 64));
          goto LABEL_43;
        }
      }

      v24 = *(a2 + v11);
      *(a1 + v11) = v24;
      v25 = v24;
      swift_storeEnumTagMultiPayload();
      goto LABEL_43;
    case 0:
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 > 4)
      {
        if (v9 <= 7)
        {
          if (v9 == 5 || v9 == 6)
          {
            goto LABEL_23;
          }

          goto LABEL_34;
        }

        if (v9 != 8 && v9 != 9)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v9 > 2)
        {
LABEL_23:
          v20 = sub_21DBF563C();
          (*(*(v20 - 8) + 16))(a1, a2, v20);
          swift_storeEnumTagMultiPayload();
          goto LABEL_44;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            goto LABEL_23;
          }

LABEL_34:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_44;
        }
      }

      v21 = *a2;
      *a1 = *a2;
      v22 = v21;
      swift_storeEnumTagMultiPayload();
      goto LABEL_44;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_45:
  v26 = a3[5];
  v27 = a1 + v26;
  v28 = a2 + v26;
  v29 = *v28;
  v27[8] = v28[8];
  *v27 = v29;
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

char *initializeWithTake for TTRBoardColumnItemIntermediateViewModel(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(&a2[v11], 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
      goto LABEL_31;
    }

    v15 = swift_getEnumCaseMultiPayload();
    if (v15 <= 3)
    {
      if (v15 == 2 || v15 == 3)
      {
        goto LABEL_18;
      }
    }

    else if (v15 == 4 || v15 == 5 || v15 == 6)
    {
LABEL_18:
      v16 = sub_21DBF563C();
      (*(*(v16 - 8) + 32))(&a1[v11], &a2[v11], v16);
      swift_storeEnumTagMultiPayload();
LABEL_30:
      (*(v13 + 56))(&a1[v11], 0, 1, v12);
      goto LABEL_31;
    }

    memcpy(&a1[v11], &a2[v11], *(v13 + 64));
    goto LABEL_30;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_7;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_7:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_31:
      swift_storeEnumTagMultiPayload();
      goto LABEL_32;
    }

    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_31;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_32:
  v17 = a3[5];
  v18 = a3[6];
  v19 = &a1[v17];
  v20 = &a2[v17];
  *v19 = *v20;
  v19[8] = v20[8];
  a1[v18] = a2[v18];
  v21 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v21] = a2[v21];
  v22 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  a1[v22] = a2[v22];
  return a1;
}

char *assignWithTake for TTRBoardColumnItemIntermediateViewModel(char *a1, char *a2, int *a3)
{
  if (a1 == a2)
  {
    goto LABEL_33;
  }

  sub_21D371B14(a1);
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(&a2[v11], 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
      goto LABEL_32;
    }

    v15 = swift_getEnumCaseMultiPayload();
    if (v15 <= 3)
    {
      if (v15 == 2 || v15 == 3)
      {
        goto LABEL_19;
      }
    }

    else if (v15 == 4 || v15 == 5 || v15 == 6)
    {
LABEL_19:
      v16 = sub_21DBF563C();
      (*(*(v16 - 8) + 32))(&a1[v11], &a2[v11], v16);
      swift_storeEnumTagMultiPayload();
LABEL_31:
      (*(v13 + 56))(&a1[v11], 0, 1, v12);
      goto LABEL_32;
    }

    memcpy(&a1[v11], &a2[v11], *(v13 + 64));
    goto LABEL_31;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_8;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_8:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_32:
      swift_storeEnumTagMultiPayload();
      goto LABEL_33;
    }

    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_32;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_33:
  v17 = a3[5];
  v18 = a3[6];
  v19 = &a1[v17];
  v20 = &a2[v17];
  *v19 = *v20;
  v19[8] = v20[8];
  a1[v18] = a2[v18];
  v21 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v21] = a2[v21];
  v22 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  a1[v22] = a2[v22];
  return a1;
}

uint64_t sub_21D98D710()
{
  result = type metadata accessor for TTRRemindersListViewModel.ItemID(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id UITraitCollection.clampingContentSizeCategory(to:)(void *a1, void *a2)
{
  v3 = v2;
  v23 = v3;
  v6 = [v3 preferredContentSizeCategory];
  v7 = UIContentSizeCategory.clamped(to:)(a1, a2, v6);
  v8 = sub_21DBFA16C();
  v10 = v9;
  if (v8 == sub_21DBFA16C() && v10 == v11)
  {
    goto LABEL_13;
  }

  v13 = sub_21DBFC64C();

  if ((v13 & 1) == 0)
  {
    v14 = sub_21DBFA16C();
    v16 = v15;
    if (v14 != sub_21DBFA16C() || v16 != v17)
    {
      v19 = sub_21DBFC64C();

      if ((v19 & 1) == 0)
      {
        MEMORY[0x28223BE20](v20);
        v21 = sub_21DBFB24C();

        return v21;
      }

      goto LABEL_6;
    }

LABEL_13:

    goto LABEL_14;
  }

LABEL_6:

LABEL_14:

  return v23;
}

void static UITraitCollection.withCurrentSetTo<A>(_:block:)(uint64_t a1, void (*a2)(id))
{
  v4 = objc_opt_self();
  v5 = [v4 _currentTraitCollection];
  a2([v4 _setCurrentTraitCollection_]);
  [v4 _setCurrentTraitCollection_];
}

uint64_t sub_21D98DA54(uint64_t a1, void *a2)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v3 = a2;
  return sub_21DBF860C();
}

RemindersUICore::TTRIFocusGroupIdentifier_optional __swiftcall TTRIFocusGroupIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t TTRIFocusGroupIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 0x7265646E696D6572;
  }

  else
  {
    return 0x73746E756F636361;
  }
}

uint64_t sub_21D98DB5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7265646E696D6572;
  }

  else
  {
    v3 = 0x73746E756F636361;
  }

  if (v2)
  {
    v4 = 0xEC0000007473694CLL;
  }

  else
  {
    v4 = 0xED00007473694C73;
  }

  if (*a2)
  {
    v5 = 0x7265646E696D6572;
  }

  else
  {
    v5 = 0x73746E756F636361;
  }

  if (*a2)
  {
    v6 = 0xED00007473694C73;
  }

  else
  {
    v6 = 0xEC0000007473694CLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21DBFC64C();
  }

  return v8 & 1;
}

unint64_t sub_21D98DC1C()
{
  result = qword_27CE64690;
  if (!qword_27CE64690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE64690);
  }

  return result;
}

uint64_t sub_21D98DC70()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D98DD08()
{
  sub_21DBFA27C();
}

uint64_t sub_21D98DD8C()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D98DE20@<X0>(char *a1@<X8>)
{
  v2 = sub_21DBFC45C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_21D98DE80(uint64_t *a1@<X8>)
{
  v2 = 0x73746E756F636361;
  if (*v1)
  {
    v2 = 0x7265646E696D6572;
  }

  v3 = 0xEC0000007473694CLL;
  if (*v1)
  {
    v3 = 0xED00007473694C73;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t TTRRemindersListEditingSessionPropertiesSharingWrapper.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t TTRRemindersListEditingSessionProperties.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v26 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_21DBFBA8C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = *v3;
  v16 = (*(a2 + 24))(a1, a2, v12);
  if (*(v15 + 16))
  {
    v25 = v7;
    v18 = sub_21D0CEF70(v16, v17);
    v20 = v19;

    if (v20)
    {
      sub_21D0CEB98(*(v15 + 56) + 32 * v18, &v27);
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v7 = v25;
  }

  else
  {

    v27 = 0u;
    v28 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690);
  v21 = swift_dynamicCast();
  v22 = *(AssociatedTypeWitness - 8);
  (*(v22 + 56))(v14, v21 ^ 1u, 1, AssociatedTypeWitness);
  (*(v8 + 16))(v10, v14, v7);
  v23 = *(v22 + 48);
  if (v23(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(a2 + 16))(a1, a2);
    if (v23(v10, 1, AssociatedTypeWitness) != 1)
    {
      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    (*(v22 + 32))(v26, v10, AssociatedTypeWitness);
  }

  return (*(v8 + 8))(v14, v7);
}

uint64_t TTRRemindersListEditingSessionProperties.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21D98E6F8(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*TTRRemindersListEditingSessionProperties.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  TTRRemindersListEditingSessionProperties.subscript.getter(a3, a4, v15);
  return sub_21D98E45C;
}

void sub_21D98E45C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    sub_21D98E6F8(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_21D98E6F8((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t TTRRemindersListEditingSessionPropertiesSharingWrapper.properties.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 16);
  return sub_21DBF8E0C();
}

uint64_t TTRRemindersListEditingSessionPropertiesSharingWrapper.properties.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 16) = v2;
}

uint64_t TTRRemindersListEditingSessionPropertiesSharingWrapper.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t TTRRemindersListEditingSessionPropertiesSharingWrapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D98E6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 24))(a3, a4);
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
  return sub_21D17C970(v11, v5, v7);
}

uint64_t sub_21D98E85C(uint64_t a1)
{
  v1 = a1;
  v23 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_21DBFBD7C();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v28 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    result = sub_21DBFC20C();
    v25 = result;
    v26 = v4;
    v27 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v28 = MEMORY[0x277D84F90];
  sub_21DBFC01C();
  result = sub_21DBFBCCC();
  v5 = *(v1 + 36);
  v25 = result;
  v26 = v5;
  v27 = 0;
LABEL_7:
  v6 = 0;
  v22 = v2;
  while (v6 < v2)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v13 = v25;
    v14 = v26;
    v15 = v27;
    sub_21D99453C(v24, v25, v26, v27, v1, &qword_280D17770);
    v17 = v16;
    v18 = v1;
    v19 = v24[0];
    v20 = [v24[0] objectID];

    sub_21DBFBFEC();
    sub_21DBFC03C();
    sub_21DBFC04C();
    result = sub_21DBFBFFC();
    if (v23)
    {
      if (!v15)
      {
        goto LABEL_21;
      }

      v1 = v18;
      if (sub_21DBFC24C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE646B8);
      v21 = sub_21DBF9EEC();
      sub_21DBFC30C();
      result = v21(v24, 0);
    }

    else
    {
      v7 = sub_21DB84AE0(v13, v14, v15, v18);
      v9 = v8;
      v11 = v10;
      result = sub_21D15746C(v13, v14, v15);
      v25 = v7;
      v26 = v9;
      v27 = v11 & 1;
      v1 = v18;
      v2 = v22;
    }

    ++v6;
    if (v12 == v2)
    {
      sub_21D15746C(v25, v26, v27);
      return v28;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t *TTRRemindersListAttributeEditor.__allocating_init(editorProvider:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_21D994790(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

__n128 TTRRemindersListChangeItemAttributeEditorProvider.__allocating_init(reminderChangeItems:undoContext:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(v4 + 40) = *a2;
  *(v4 + 56) = v6;
  *(v4 + 72) = *(a2 + 32);
  return result;
}

void *TTRRemindersListChangeItemAttributeEditorProvider.__allocating_init(reminderChangeItems:undoManager:)(uint64_t a1, _UNKNOWN **a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = type metadata accessor for TTRBasicUndoContext();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v2 = &protocol witness table for TTRBasicUndoContext;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  result = swift_allocObject();
  result[2] = a1;
  result[3] = 0;
  result[4] = 0;
  result[5] = v5;
  result[6] = 0;
  result[7] = 0;
  result[8] = v4;
  result[9] = v2;
  return result;
}

uint64_t sub_21D98EC3C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE646A0);
  v1 = __swift_project_value_buffer(v0, qword_27CE646A0);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D98ED58(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v17[3] = a4;
  v18 = a2;
  v6 = type metadata accessor for TTRDateChangeType();
  MEMORY[0x28223BE20](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v17 - v10;
  v12 = sub_21DBF509C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a1, v11, &qword_27CE58D60);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21D0CF7E0(v11, &qword_27CE58D60);
    swift_storeEnumTagMultiPayload();
    (*(a3 + 8))(v8, v18, a3);
    return sub_21D1A94E8(v8);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v8, v15, v12);
    swift_storeEnumTagMultiPayload();
    (*(a3 + 8))(v8, v18, a3);
    sub_21D1A94E8(v8);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_21D98EFE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D508AA8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_21D0D0E78(v3);
}

uint64_t sub_21D98F064(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D508A70;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_21D0D0E78(v3);
  result = sub_21D0D0E88(v7);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t TTRRemindersListSetCompletedOptions.afterDateProviderForAdvancingForwardRecurrence.getter()
{
  v1 = *v0;
  sub_21D0D0E78(*v0);
  return v1;
}

uint64_t TTRRemindersListSetCompletedOptions.afterDateProviderForAdvancingForwardRecurrence.setter(uint64_t a1, uint64_t a2)
{
  result = sub_21D0D0E88(*v2);
  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_21D98F18C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D1CDA04;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_21D0D0E78(v3);
}

uint64_t sub_21D98F20C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D359BDC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 16);
  sub_21D0D0E78(v3);
  result = sub_21D0D0E88(v7);
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  return result;
}