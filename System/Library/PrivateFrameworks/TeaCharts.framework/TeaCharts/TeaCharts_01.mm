TeaCharts::ChartLayoutOptions __swiftcall ChartLayoutOptions.init(size:isRTL:)(CGSize size, Swift::Bool isRTL)
{
  *v2 = size.width;
  *(v2 + 8) = size.height;
  *(v2 + 16) = isRTL;
  result.size.height = size.height;
  result.size.width = size.width;
  result.isRTL = isRTL;
  return result;
}

double ChartLayoutOptions.size.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

TeaCharts::ChartLayoutOptions __swiftcall ChartLayoutOptions.init(size:)(CGSize size)
{
  height = size.height;
  width = size.width;
  v4 = v1;
  v5 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
  *v4 = width;
  *(v4 + 8) = height;
  *(v4 + 16) = v5 == 1;
  result.size.height = v7;
  result.size.width = v6;
  result.isRTL = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for ChartLayoutOptions(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ChartLayoutOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GridLayoutOptions(uint64_t a1, int a2)
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

double ColumnChartInteractor.dataPoint(for:model:size:)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_26D153DEC()
{
  result = qword_2812B9988;
  if (!qword_2812B9988)
  {
    type metadata accessor for ColumnChartModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812B9988);
  }

  return result;
}

void sub_26D153E74()
{
  v1 = OBJC_IVAR____TtC9TeaCharts8LineView_imageView;
  v2 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v3 = OUTLINED_FUNCTION_0_7();
  *(v0 + v1) = [v4 v5];
  v6 = OBJC_IVAR____TtC9TeaCharts8LineView_maskLayer;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  sub_26D1746F4();
  __break(1u);
}

char *sub_26D153F44()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC9TeaCharts8LineView_imageView;
  v3 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v4 = OUTLINED_FUNCTION_0_7();
  *(v0 + v2) = [v5 v6];
  v7 = OBJC_IVAR____TtC9TeaCharts8LineView_maskLayer;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v8 = OUTLINED_FUNCTION_0_7();
  v11 = objc_msgSendSuper2(v9, v10, v8, v0, ObjectType);
  [v11 addSubview_];
  return v11;
}

Swift::Void __swiftcall LineView.layoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9TeaCharts8LineView_imageView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC9TeaCharts8LineView_maskLayer];
  [v0 bounds];
  [v2 setFrame_];
}

void sub_26D154104(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC9TeaCharts8LineView_imageView);
    v3 = a1;
    v4 = [v2 layer];
    v5 = [v4 mask];

    v6 = *(v1 + OBJC_IVAR____TtC9TeaCharts8LineView_maskLayer);
    if (!v5 || (sub_26D1543C4(), v7 = v6, v8 = sub_26D1744A4(), v5, v7, (v8 & 1) == 0))
    {
      v9 = [v2 layer];
      [v9 setMask_];
    }

    v10 = [v3 CGPath];
    [v6 setPath_];
  }

  else
  {
    v10 = [*(v1 + OBJC_IVAR____TtC9TeaCharts8LineView_imageView) layer];
    [v10 setMask_];
  }
}

id LineView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LineView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26D1543C4()
{
  result = qword_2812B75B0;
  if (!qword_2812B75B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812B75B0);
  }

  return result;
}

uint64_t sub_26D154408(void (*a1)(void *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D837D0];
  v7 = (a3 + 32);
  if (v4)
  {
    while (1)
    {
      memcpy(__dst, v7, 0x58uLL);
      memcpy(__src, v7, sizeof(__src));
      sub_26D1551AC(__dst, v15, &qword_2812B77D8, v6, type metadata accessor for Grid, sub_26D15513C);
      v19(v16, __src);
      if (v3)
      {
        break;
      }

      memcpy(v15, __src, sizeof(v15));
      sub_26D1550E8(v15, &qword_2812B77D8, v6, type metadata accessor for Grid);
      if (v16[1])
      {
        memcpy(v14, v16, sizeof(v14));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26D153484(0, *(v5 + 16) + 1, 1, v5);
          v5 = v10;
        }

        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_26D153484(v8 > 1, v9 + 1, 1, v5);
          v5 = v11;
        }

        memcpy(v13, v14, sizeof(v13));
        *(v5 + 16) = v9 + 1;
        memcpy((v5 + 80 * v9 + 32), v13, 0x50uLL);
      }

      else
      {
        memcpy(v14, v16, sizeof(v14));
        sub_26D1550E8(v14, qword_2804DD8E0, &type metadata for GridViewModel, MEMORY[0x277D83D88]);
      }

      v7 += 88;
      if (!--v4)
      {
        return v5;
      }
    }

    memcpy(v15, __src, sizeof(v15));
    sub_26D1550E8(v15, &qword_2812B77D8, MEMORY[0x277D837D0], type metadata accessor for Grid);
  }

  return v5;
}

uint64_t sub_26D15465C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = 0;
  v8 = a1;
  v9 = 0;
  v23 = (a5 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = a3 <= a4;
    if (a5 > 0)
    {
      v11 = a3 >= a4;
    }

    if (v11)
    {
      if ((a3 != a4) | v24 & 1 || !(BYTE4(v24) & 1 | (v9 != 0x8000000000000000)))
      {
        return v10;
      }

      LOBYTE(v24) = 1;
      v12 = a3;
    }

    else
    {
      v12 = __OFADD__(a3, a5) ? v23 : a3 + a5;
      v9 = __OFADD__(a3, a5) ? 0x8000000000000000 : 0;
      v13 = !__OFADD__(a3, a5);
      BYTE4(v24) = v13;
    }

    v27 = a3;
    v8(&v25, &v27);
    if (v5)
    {
      break;
    }

    v14 = v26;
    if (v26 != 1)
    {
      v15 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = *(v10 + 16);
        sub_26D1535AC();
        v10 = v19;
      }

      v16 = *(v10 + 16);
      if (v16 >= *(v10 + 24) >> 1)
      {
        sub_26D1535AC();
        v10 = v20;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v15;
      *(v17 + 40) = v14;
      v8 = a1;
    }

    a3 = v12;
  }

  return v10;
}

uint64_t sub_26D154824(uint64_t a1, double a2)
{
  swift_beginAccess();
  sub_26D1551AC(v2 + 56, &v9, &qword_2812B7820, qword_2812B7828, &protocol descriptor for ValueLabelFormatterType, sub_26D15526C);
  if (v10)
  {
    sub_26D146174(&v9, v11);
    v5 = v12;
    v6 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    *&v9 = a1;
    v7 = (*(v6 + 8))(&v9, v5, v6, a2);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_26D155218(&v9, &qword_2812B7820, qword_2812B7828);
    return 0;
  }

  return v7;
}

uint64_t sub_26D154934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_26D1551AC(v3 + 16, &v11, &qword_2812B7810, &qword_2812B7818, &protocol descriptor for StringLabelFormatterType, sub_26D15526C);
  if (v12)
  {
    sub_26D146174(&v11, v13);
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    *&v11 = a3;
    v9 = (*(v8 + 8))(a1, a2, &v11, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_26D155218(&v11, &qword_2812B7810, &qword_2812B7818);
    return 0;
  }

  return v9;
}

uint64_t CategoryAxisGridViewModelGenerator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t CategoryAxisGridViewModelGenerator.models(for:orientation:options:)(uint64_t a1, char *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a1 + *(type metadata accessor for CategoryAxis() + 24));
  v13 = v3;
  v14 = a1;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v7;
  v9 = v7;
  v10 = sub_26D154408(sub_26D1550A8, &v12, v8);

  return v10;
}

uint64_t sub_26D154B6C(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double a7)
{
  v45 = a2;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 80);
  v41 = a6;
  v42 = v12;
  if ((v11 & 1) == 0)
  {
    v19 = *(*&v10 + 16);
    if (!v19)
    {
      return MEMORY[0x277D84F90];
    }

    v44 = a3;
    v43 = (a4 & 1) == 0;

    v20 = (*&v10 + 40);
    v18 = MEMORY[0x277D84F90];
    do
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      v24 = v45[5];
      v23 = v45[6];
      __swift_project_boxed_opaque_existential_1(v45 + 2, v24);
      v46[0] = v43;
      v25 = *(v23 + 8);

      *&v26 = COERCE_DOUBLE(v25(v22, v21, v44, v46, v24, v23, a7));
      if (v27)
      {
      }

      else
      {
        v28 = *&v26;
        if (v42)
        {

          v29 = sub_26D154934(v22, v21, v41);
        }

        else
        {

          v29 = 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = *(v18 + 16);
          sub_26D1535AC();
          v18 = v33;
        }

        v30 = *(v18 + 16);
        if (v30 >= *(v18 + 24) >> 1)
        {
          sub_26D1535AC();
          v18 = v34;
        }

        *(v18 + 16) = v30 + 1;
        v31 = v18 + 16 * v30;
        *(v31 + 32) = v28 / a7;
        *(v31 + 40) = v29;
      }

      v20 += 2;
      --v19;
    }

    while (v19);

    return v18;
  }

  sub_26D149038();
  sub_26D14CD84();

  sub_26D174374();
  sub_26D174394();
  result = sub_26D174384();
  if ((~*&v10 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v10)
  {
    MEMORY[0x28223BE20](result, v15);
    v35[2] = a3;
    v35[3] = v45;
    v36 = a4 & 1;
    v37 = a7;
    v38 = a5;
    v39 = v42;
    v40 = v41;
    v18 = sub_26D15465C(sub_26D15518C, v35, 0, v16, v17);

    return v18;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_26D154E74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D0>)
{
  v14 = *a1;
  sub_26D149038();
  sub_26D174044();
  v16 = v26;
  v15 = v27;
  v18 = a3[5];
  v17 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v18);
  LOBYTE(v26) = (a4 & 1) == 0;
  v19 = (*(v17 + 8))(v16, v27, a2, &v26, v18, v17, a8);
  if (v20)
  {

    v22 = 0.0;
    v23 = 1;
  }

  else
  {
    v24 = *&v19;
    if (a5)
    {
      v23 = sub_26D154934(v16, v15, a6);
    }

    else
    {
      v23 = 0;
    }

    v22 = v24 / a8;
  }

  *a7 = v22;
  *(a7 + 8) = v23;
  return result;
}

uint64_t sub_26D154FA4@<X0>(void *__src@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  memcpy(__dst, __src, 0x58uLL);
  memcpy(v21, __src, sizeof(v21));
  v16 = a4 & 1;
  v17 = sub_26D154B6C(v21, a2, a3, v16, a5, a6, a8);
  if (*(v17 + 16))
  {
    *a7 = v16;
    *(a7 + 8) = v17;
    v18 = __dst[2];
    *(a7 + 16) = __dst[1];
    *(a7 + 32) = v18;
    v19 = __dst[4];
    *(a7 + 48) = __dst[3];
    *(a7 + 64) = v19;
    return sub_26D1529D0(&__dst[1], v21);
  }

  else
  {

    *(a7 + 48) = 0u;
    *(a7 + 64) = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0u;
    *a7 = 0u;
  }

  return result;
}

uint64_t sub_26D1550E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_26D15513C(0, a2, a3, a4);
  OUTLINED_FUNCTION_0_8(v5);
  (*(v6 + 8))(a1);
  return a1;
}

void sub_26D15513C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26D1551AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  OUTLINED_FUNCTION_0_8(v8);
  (*(v9 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26D155218(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_26D15526C(0, a2, a3);
  OUTLINED_FUNCTION_0_8(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_26D15526C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_26D1433B8(255, a3);
    v4 = sub_26D1744C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26D1552C4(uint64_t a1, uint64_t a2, id a3, double *a4)
{
  v5 = v4;
  v9 = a4[2];
  v10 = a4[3];
  [a3 setFrame_];
  v11 = [objc_opt_self() mainScreen];
  [v11 scale];

  v24 = *__swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  sub_26D156A28();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_26D1740E4();
  [a3 setAlpha_];
  v15 = v5[21];
  __swift_project_boxed_opaque_existential_1(v5 + 17, v5[20]);
  sub_26D1468AC(0, &qword_2812B89D8, 0x277D85C78);
  v16 = sub_26D174454();
  sub_26D173FB4();

  v17 = sub_26D173EA4();
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26D156AB4;
  *(v19 + 24) = v18;
  v20 = a3;
  sub_26D1740B4();

  v21 = [v20 traitCollection];
  v22 = [v21 layoutDirection];

  *v25 = v9;
  *&v25[1] = v10;
  v26 = v22 == 1;
  sub_26D1560E0(a2, a1, v20, v25);
}

uint64_t sub_26D155558(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v30 = a4;
  v28 = a2;
  v8 = type metadata accessor for LineChartModel();
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v11 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D14D440();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12, v16);
  v17 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2;
  v35 = a3;
  sub_26D156B20();
  sub_26D174104();
  v29 = sub_26D173EA4();
  (*(v14 + 16))(v17, v30, v13);
  sub_26D14F5B8(v32, v11);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v31 + 80) + v19 + 8) & ~*(v31 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  (*(v14 + 32))(v21 + v18, v17, v13);
  v22 = v28;
  *(v21 + v19) = v28;
  sub_26D14F61C(v11, v21 + v20);

  v23 = v22;
  v24 = v29;
  v25 = sub_26D1740B4();

  return v25;
}

void sub_26D1557DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 8);
  v8 = *(a2 + 184);
  swift_beginAccess();
  v9 = v8[4];
  v10 = v8[5];
  v11 = v8[7];
  v12 = v8[8];
  v13 = v8[9];
  v58 = v9;
  v63 = v8[6];
  v60 = v11;
  v57 = v12;
  v14 = v13;
  sub_26D156CB8(v9, v10);
  sub_26D14D440();
  sub_26D156978(&qword_2812B7B98);
  sub_26D174374();
  sub_26D174394();
  if (v61[0] == v62[0])
  {
    v15 = v14;
    v16 = v58;
    v17 = v60;
    v18 = v63;
    if (v10)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = v57;
LABEL_6:
      v62[0] = v16;
      v62[1] = v10;
      v62[2] = v18;
      v62[3] = v17;
      v62[4] = v25;
      v62[5] = v15;
      if (v23)
      {
        v61[0] = v24;
        v61[1] = v23;
        v61[2] = v22;
        v61[3] = v21;
        v61[4] = v20;
        v61[5] = v19;
        v30 = v10;
        v31 = v16;
        v59 = static CategoryZone.== infix(_:_:)(v62, v61);
        sub_26D156CB8(v31, v30);

        sub_26D156D08(v31, v30);
        if (v59)
        {
          goto LABEL_17;
        }

        goto LABEL_12;
      }

      v51 = v24;
      sub_26D156CB8(v58, v10);

      v16 = v58;
LABEL_11:
      sub_26D156D08(v16, v10);
      sub_26D156D08(v51, v23);
LABEL_12:
      swift_beginAccess();
      sub_26D156D58();
      sub_26D1741C4();
      swift_endAccess();
      sub_26D174374();
      sub_26D174394();
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      if (v61[0] != v62[0])
      {
        v38 = sub_26D1743B4();
        v33 = v39[1];
        v63 = *v39;
        v40 = v39[2];
        v35 = v39[3];
        v36 = v39[4];
        v37 = v39[5];

        v38(v62, 0);
        v34 = v40;
        v32 = v63;
      }

      v16 = v8[4];
      v41 = v8[5];
      v42 = v8[6];
      v43 = v8[7];
      v44 = v8[8];
      v45 = v8[9];
      v8[4] = v32;
      v8[5] = v33;
      v8[6] = v34;
      v8[7] = v35;
      v8[8] = v36;
      v8[9] = v37;
      goto LABEL_16;
    }
  }

  else
  {
    v26 = sub_26D1743B4();
    v23 = v27[1];
    v28 = v27[3];
    v51 = *v27;
    v52 = v27[2];
    v29 = v27[5];
    v54 = v27[4];

    v53 = v28;

    v55 = v29;

    v26(v62, 0);
    v15 = v14;
    if (v10)
    {
      v25 = v57;
      v16 = v58;
      v17 = v60;
      v18 = v63;
      v20 = v54;
      v19 = v55;
      v22 = v52;
      v21 = v53;
      v24 = v51;
      goto LABEL_6;
    }

    v16 = v58;
    if (v23)
    {
      goto LABEL_11;
    }
  }

  v41 = 0;
LABEL_16:
  sub_26D156D08(v16, v41);
LABEL_17:
  v46 = *(a4 + OBJC_IVAR____TtC9TeaCharts13LineChartView_seriesViews);
  v47 = sub_26D14CE24(v46);

  for (i = 0; ; ++i)
  {
    if (v47 == i)
    {

      return;
    }

    if ((v46 & 0xC000000000000001) != 0)
    {
      v49 = MEMORY[0x26D6B38E0](i, v46);
    }

    else
    {
      if (i >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v49 = *(v46 + 8 * i + 32);
    }

    v50 = v49;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_26D155CB0(i, v49, v7, a5, a2);
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_26D155CB0(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OBJC_IVAR____TtC9TeaCharts14LineSeriesView_zoneLineViews;
  swift_beginAccess();
  v37 = a2;
  v9 = *&a2[v8];
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  v35 = a3 + 32;
  v39 = a3 + 32 + 16 * a1;
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v38 = a3;
  while (v12)
  {
    v15 = v12;
    if ((a1 & 0x8000000000000000) != 0)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

LABEL_11:
    if (*(a3 + 16) <= a1)
    {
      goto LABEL_27;
    }

    v12 = (v15 - 1) & v15;
    v17 = *(v39 + 8);
    if (*(v17 + 16))
    {
      v18 = __clz(__rbit64(v15)) | (v14 << 6);
      v19 = (*(v9 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = *(*(v9 + 56) + 8 * v18);

      v23 = v22;

      v24 = sub_26D147140();
      if (v25)
      {
        v26 = *(*(v17 + 56) + 8 * v24);

        [*&v23[OBJC_IVAR____TtC9TeaCharts8LineView_imageView] setImage_];
      }

      else
      {
      }

      a3 = v38;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v16 >= v13)
    {
      break;
    }

    v15 = *(v9 + 64 + 8 * v16);
    ++v14;
    if (v15)
    {
      v14 = v16;
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      goto LABEL_11;
    }
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

  if (*(a3 + 16) <= a1)
  {
    goto LABEL_29;
  }

  if (*(v35 + 16 * a1))
  {
    [*(*&v37[OBJC_IVAR____TtC9TeaCharts14LineSeriesView_defaultLineView] + OBJC_IVAR____TtC9TeaCharts8LineView_imageView) setImage_];
  }

  v27 = *(a4 + *(type metadata accessor for LineChartModel() + 20));
  if (*(v27 + 16) > a1)
  {
    v28 = *(a5 + 184);
    v29 = LineSeriesAccessibilityElementProvider.seriesContainerElement(for:in:chartModel:)(a1, v37, a4);
    [v29 setIsAccessibilityElement_];
    if (*(v27 + 16) <= a1)
    {
      goto LABEL_30;
    }

    v30 = v27 + 24 * a1;
    v31 = *(v30 + 32);
    v32 = *(v30 + 40);

    sub_26D156DC0(v31, v32, v29);

    sub_26D156E24(0, &qword_2812B74D8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_26D1763D0;
    *(v33 + 56) = type metadata accessor for LineSeriesAccessibilityElement();
    *(v33 + 32) = v29;
    sub_26D16DACC(v33, v37);
  }
}

void sub_26D155FF0(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_26D156AD8;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_26D149F38;
  v6[3] = &block_descriptor;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 animateWithDuration:v4 animations:0.15];
  _Block_release(v4);
}

void sub_26D1560E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v98 = a2;
  v95 = a1;
  sub_26D1568F8();
  v94 = v6;
  v7 = OUTLINED_FUNCTION_0_8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D14D440();
  v14 = v13;
  v15 = OUTLINED_FUNCTION_1(v13);
  v17 = v16;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v15, v20);
  v93 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v92 = &v88 - v24;
  v25 = *a4;
  v26 = a4[1];
  v91 = *(a4 + 16);
  v27 = *(a3 + OBJC_IVAR____TtC9TeaCharts13LineChartView_seriesViews);
  v99 = sub_26D14CE24(v27);
  v97 = v27 & 0xC000000000000001;
  v90 = v27 + 32;
  v89 = (v17 + 16);
  v88 = (v17 + 8);
  v100 = v27;

  v28 = 0;
  v106 = v14;
LABEL_2:
  if (v28 == v99)
  {

    return;
  }

  v29 = v97;
  sub_26D1601E0(v28, v97 == 0, v100);
  if (v29)
  {
    v30 = MEMORY[0x26D6B38E0](v28, v100);
  }

  else
  {
    v30 = *(v90 + 8 * v28);
  }

  v109 = v30;
  v31 = *(v98 + *(type metadata accessor for LineChartModel() + 20));
  if (v28 >= *(v31 + 16))
  {
    goto LABEL_37;
  }

  v101 = v28 + 1;
  v32 = (v31 + 24 * v28);
  v33 = v32[5];
  v102 = v32[4];
  v34 = v32[6];
  (*v89)(v92, v95, v14);
  sub_26D156978(&qword_2812B7BA0);
  v104 = v33;

  v103 = v34;

  sub_26D174264();
  v35 = *(v94 + 36);
  v108 = OBJC_IVAR____TtC9TeaCharts14LineSeriesView_zoneLineViews;
  swift_beginAccess();
  sub_26D156978(&qword_2812B7B98);
  v105 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_26D174394();
    if (*&v12[v35] == v112[0])
    {
      break;
    }

    v36 = sub_26D1743B4();
    v38 = *v37;
    v39 = v37[1];
    v40 = v37[3];
    v107 = v37[2];
    v42 = v37[4];
    v41 = v37[5];

    v36(v112, 0);
    sub_26D1743A4();
    if (*(*&v108[v109] + 16))
    {

      sub_26D147140();
      v44 = v43;

      if (v44)
      {

        v45 = v105;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110[0] = v45;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26D14D508(0, v45[2] + 1, 1);
          v45 = v110[0];
        }

        v48 = v45[2];
        v47 = v45[3];
        v49 = (v48 + 1);
        if (v48 >= v47 >> 1)
        {
          v105 = (v48 + 1);
          sub_26D14D508((v47 > 1), v48 + 1, 1);
          v49 = v105;
          v45 = v110[0];
        }

        v45[2] = v49;
        v105 = v45;
        v50 = &v45[6 * v48];
        v50[4] = v38;
        v50[5] = v39;
        v14 = v106;
        v50[6] = v107;
        v50[7] = v40;
        v50[8] = v42;
        v50[9] = v41;
      }

      else
      {

        v14 = v106;
      }
    }

    else
    {
    }
  }

  sub_26D1569BC(v12);
  v51 = __swift_project_boxed_opaque_existential_1((v96 + 96), *(v96 + 120));
  v52 = sub_26D1434EC();
  v53 = sub_26D143558();
  v54 = v93;
  MEMORY[0x26D6B3270](v105, &type metadata for CategoryZone, v52, v53);
  v112[0] = v102;
  v112[1] = v104;
  v112[2] = v103;
  v110[0] = v25;
  v110[1] = v26;
  v111 = v91;
  v55 = *v51;
  v105 = sub_26D172250(v54, v112, v110);
  v107 = v56;
  (*v88)(v54, v14);

  v58 = v108;
  v57 = v109;
  swift_beginAccess();
  v59 = *&v58[v57];
  v60 = v59 + 64;
  v61 = 1 << *(v59 + 32);
  if (v61 < 64)
  {
    v62 = ~(-1 << v61);
  }

  else
  {
    v62 = -1;
  }

  v63 = v62 & *(v59 + 64);
  v64 = (v61 + 63) >> 6;
  v65 = *&v58[v57];
  swift_bridgeObjectRetain_n();
  v66 = 0;
  while (v63)
  {
    v67 = v107;
LABEL_28:
    v69 = __clz(__rbit64(v63));
    v63 &= v63 - 1;
    v70 = v69 | (v66 << 6);
    v71 = (*(v59 + 48) + 16 * v70);
    v72 = v71[1];
    v73 = *(*(v59 + 56) + 8 * v70);
    if (*(v67 + 16))
    {
      v74 = v59;
      v75 = *v71;
      v76 = v71[1];

      v108 = v73;
      v59 = v74;
      v77 = sub_26D147140();
      if ((v78 & 1) == 0)
      {
        goto LABEL_32;
      }

      v79 = *(*(v107 + 56) + 8 * v77);
      v80 = v79;
      v81 = v79;
      v82 = v108;
      sub_26D154104(v81);
      [v82 setHidden_];
    }

    else
    {
      v83 = v71[1];

      v84 = v73;
LABEL_32:
      sub_26D154104(0);
      [v73 setHidden_];
    }
  }

  v67 = v107;
  while (1)
  {
    v68 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      break;
    }

    if (v68 >= v64)
    {

      v85 = v109;
      v86 = *(v109 + OBJC_IVAR____TtC9TeaCharts14LineSeriesView_defaultLineView);
      v87 = v105;
      sub_26D154104(v105);

      v28 = v101;
      v14 = v106;
      goto LABEL_2;
    }

    v63 = *(v60 + 8 * v68);
    ++v66;
    if (v63)
    {
      v66 = v68;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t *sub_26D15687C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v1 = v0[22];

  v2 = v0[23];

  return v0;
}

uint64_t sub_26D1568C4()
{
  sub_26D15687C();

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

void sub_26D1568F8()
{
  if (!qword_2812B7580)
  {
    sub_26D14D440();
    sub_26D156978(&qword_2812B7B98);
    v0 = sub_26D1746B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B7580);
    }
  }
}

uint64_t sub_26D156978(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_26D14D440();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26D1569BC(uint64_t a1)
{
  sub_26D1568F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26D156A28()
{
  if (!qword_2812B7B80)
  {
    sub_26D156E24(255, &qword_2812B7600, &type metadata for LineChartImages, MEMORY[0x277D83940]);
    v0 = sub_26D1740F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B7B80);
    }
  }
}

uint64_t sub_26D156AEC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v0[2] + 176);
  return sub_26D174054();
}

void sub_26D156B20()
{
  if (!qword_2812B75C0)
  {
    sub_26D1468AC(255, &qword_2812B89D0, 0x277D75D18);
    sub_26D156E24(255, &qword_2812B7600, &type metadata for LineChartImages, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812B75C0);
    }
  }
}

void sub_26D156BC4(uint64_t a1)
{
  sub_26D14D440();
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for LineChartModel() - 8);
  sub_26D1557DC(a1, *(v1 + 16), v1 + v4, *(v1 + v5), v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80)));
}

uint64_t sub_26D156CB8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_26D156D08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_26D156D58()
{
  if (!qword_2812B7640[0])
  {
    type metadata accessor for LineSeriesAccessibilityElement();
    v0 = sub_26D1741D4();
    if (!v1)
    {
      atomic_store(v0, qword_2812B7640);
    }
  }
}

void sub_26D156DC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26D174204();

  [a3 setAccessibilityLabel_];
}

void sub_26D156E24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
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

uint64_t sub_26D156E88(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D156EDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t ChartModelFactory.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ChartModelFactory.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ChartModelFactory.model(for:)(__int128 *a1)
{
  v2 = *(a1 + 16);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *a1;
  v7 = v2;
  return v3(&v6);
}

uint64_t ChartModelFactory.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ChartModelFactory.__deallocating_deinit()
{
  ChartModelFactory.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t Series.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Series.init(_:points:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t Series.hash(into:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  sub_26D174244();
  v8 = *(a2 + 16);
  v9 = *(a2 + 40);

  return MEMORY[0x2821FC380](a1, v7, v8, v9);
}

uint64_t static Series.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1[2];
  v9 = a2[2];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_26D1747E4() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a6 + 8);

  return MEMORY[0x2821FC390](v8, v9, a3, v11);
}

uint64_t sub_26D1571C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_26D1747E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E696F70 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26D1747E4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26D1572CC(char a1)
{
  sub_26D174864();
  MEMORY[0x26D6B3B10](a1 & 1);
  return sub_26D174894();
}

uint64_t sub_26D157320(char a1)
{
  if (a1)
  {
    return 0x73746E696F70;
  }

  else
  {
    return 1701667182;
  }
}

BOOL sub_26D15734C(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_26D157294(*a1, *a2);
}

uint64_t sub_26D157364(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_26D1572CC(*v1);
}

uint64_t sub_26D157378(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_26D1572A4(a1, *v2);
}

uint64_t sub_26D15738C(uint64_t a1, void *a2)
{
  sub_26D174864();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_26D1572A4(v9, *v2);
  return sub_26D174894();
}

uint64_t sub_26D1573D8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_26D157320(*v1);
}

uint64_t sub_26D1573EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_26D1571C8(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_26D157420(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  return sub_26D157314();
}

uint64_t sub_26D15744C@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  result = sub_26D15728C();
  *a2 = result;
  return result;
}

uint64_t sub_26D157480(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26D1574D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Series.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v25 = *(a2 + 16);
  v26 = v4;
  v30 = v25;
  v31 = v4;
  type metadata accessor for Series.CodingKeys();
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  v5 = sub_26D174794();
  v6 = OUTLINED_FUNCTION_1(v5);
  v27 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6, v10);
  v12 = &v23 - v11;
  v13 = *v2;
  v14 = v2[1];
  v24 = v2[2];
  v16 = a1[3];
  v15 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  sub_26D1748B4();
  LOBYTE(v30) = 0;
  v20 = v28;
  sub_26D174764();
  if (v20)
  {
    return (*(v27 + 8))(v12, v19);
  }

  v22 = v27;
  *&v30 = v24;
  v32 = 1;
  sub_26D174304();
  v29 = v26;
  swift_getWitnessTable();
  sub_26D174784();
  return (*(v22 + 8))(v12, v19);
}

uint64_t Series.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  v5 = *(v1 + 8);
  sub_26D174864();
  Series.hash(into:)(v4, a1);
  return sub_26D174894();
}

uint64_t Series.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Series.CodingKeys();
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  v5 = sub_26D174754();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1748A4();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(a2) = 0;
  v11 = sub_26D174724();
  v13 = v12;
  v17 = v11;
  sub_26D174304();
  swift_getWitnessTable();
  sub_26D174744();
  v14 = OUTLINED_FUNCTION_1_4();
  v15(v14);
  *a3 = v17;
  a3[1] = v13;
  a3[2] = a2;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D1579D4(uint64_t a1, uint64_t a2)
{
  sub_26D174864();
  Series.hash(into:)(v4, a2);
  return sub_26D174894();
}

uint64_t sub_26D157A18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  return Series.init(from:)(a1, a2[2], a3);
}

uint64_t getEnumTagSinglePayload for Orientation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_26D157B28(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_26D157C48(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_26D157CD4(v2);
}

void *sub_26D157C78()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
  OUTLINED_FUNCTION_19();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26D157CD4(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0xE8);
  OUTLINED_FUNCTION_29();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_26D157D38@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 240);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_21();
  v8 = *(v7 + 80);
  v9 = sub_26D1744C4();
  OUTLINED_FUNCTION_0_8(v9);
  return (*(v10 + 16))(a1, &v1[v6]);
}

uint64_t sub_26D157DDC(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 240);
  swift_beginAccess();
  OUTLINED_FUNCTION_21();
  v8 = *(v7 + 80);
  v9 = sub_26D1744C4();
  OUTLINED_FUNCTION_0_8(v9);
  (*(v10 + 40))(&v1[v6], a1);
  return swift_endAccess();
}

void *sub_26D157E94()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xF8));
  v2 = v1;
  return v1;
}

uint64_t sub_26D157EE0(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0xF8);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_26D157F3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26D157FC0(v4);
}

uint64_t sub_26D157F68()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x108);
  OUTLINED_FUNCTION_19();
  v2 = *(v0 + v1);
}

uint64_t sub_26D157FC0(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x108);
  OUTLINED_FUNCTION_29();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*sub_26D158024())()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x108);
  swift_beginAccess();
  return j__swift_endAccess;
}

id ChartViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ChartViewController.init(coder:)()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v0) + 0x80);
  v6 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_26D1744C4();
  OUTLINED_FUNCTION_0_8(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11, v12);
  v14 = v20 - v13;
  *(v1 + *((v4 & v3) + 0xE8)) = 0;
  __swift_storeEnumTagSinglePayload(v1 + *((*v2 & *v1) + 0xF0), 1, 1, v6);
  *(v1 + *((*v2 & *v1) + 0xF8)) = 0;
  v15 = *((*v2 & *v1) + 0x100);
  sub_26D158310();
  memset(v20, 0, sizeof(v20));
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v1 + v15) = sub_26D173F84();
  v19 = *((*v2 & *v1) + 0x108);
  sub_26D173FA4();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, AssociatedTypeWitness);
  *(v1 + v19) = sub_26D173F74();
  sub_26D1746F4();
  __break(1u);
}

void sub_26D158310()
{
  if (!qword_2812B8998)
  {
    sub_26D158368();
    v0 = sub_26D173FA4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B8998);
    }
  }
}

void sub_26D158368()
{
  if (!qword_2812B8270)
  {
    v0 = sub_26D1744C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B8270);
    }
  }
}

void ChartViewController.init(viewProvider:coordinateProvider:styleManager:layoutAttributesFactory:gridViewProvider:gridViewModelGenerator:interactionManager:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v79 = v3;
  v82 = v4;
  v83 = v6;
  v84 = v5;
  v85 = v8;
  v86 = v7;
  v10 = v9;
  v75 = v9;
  v11 = *v0;
  v12 = *MEMORY[0x277D85000];
  v80 = *MEMORY[0x277D85000] & *v0;
  v78 = *((v12 & v11) + 0x80);
  v77 = *((v12 & v11) + 0x50);
  v13 = v77;
  swift_getAssociatedTypeWitness();
  v14 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_0_8(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v73 - v19;
  *&v2[*((v12 & v11) + 0xE8)] = 0;
  OUTLINED_FUNCTION_0_10();
  __swift_storeEnumTagSinglePayload(&v2[*(v21 + 240)], 1, 1, v13);
  OUTLINED_FUNCTION_0_10();
  *&v2[*(v22 + 248)] = 0;
  OUTLINED_FUNCTION_0_10();
  v24 = *(v23 + 256);
  sub_26D158310();
  v92 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  memset(v91, 0, sizeof(v91));
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *&v2[v24] = sub_26D173F84();
  OUTLINED_FUNCTION_0_10();
  v29 = *(v28 + 264);
  sub_26D173FA4();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v1);
  *&v2[v29] = sub_26D173F74();
  OUTLINED_FUNCTION_0_10();
  v31 = *(v30 + 176);
  v81 = *((v12 & v11) + 0x58);
  OUTLINED_FUNCTION_7_0();
  v76 = v32;
  v34 = OUTLINED_FUNCTION_16(v33);
  v35(v34, v10);
  OUTLINED_FUNCTION_0_10();
  v37 = *(v36 + 184);
  v38 = *((v12 & v11) + 0x60);
  OUTLINED_FUNCTION_7_0();
  v74 = v39;
  v41 = OUTLINED_FUNCTION_16(v40);
  v42(v41, v86, v38);
  OUTLINED_FUNCTION_0_10();
  v44 = *(v43 + 192);
  v45 = *((v12 & v11) + 0x68);
  OUTLINED_FUNCTION_7_0();
  v73 = v46;
  v48 = OUTLINED_FUNCTION_16(v47);
  v49(v48, v85, v45);
  OUTLINED_FUNCTION_0_10();
  sub_26D146A14(v84, &v2[*(v50 + 200)]);
  OUTLINED_FUNCTION_0_10();
  sub_26D146A14(v83, &v2[*(v51 + 208)]);
  OUTLINED_FUNCTION_0_10();
  v53 = *(v52 + 216);
  v54 = *((v12 & v11) + 0x70);
  OUTLINED_FUNCTION_7_0();
  v56 = v55;
  v58 = OUTLINED_FUNCTION_16(v57);
  v59(v58, v82, v54);
  OUTLINED_FUNCTION_0_10();
  v61 = *(v60 + 224);
  v62 = *((v12 & v11) + 0x78);
  OUTLINED_FUNCTION_7_0();
  v64 = v63;
  v66 = OUTLINED_FUNCTION_16(v65);
  v67 = v79;
  v68(v66, v79, v62);
  *&v69 = v77;
  *(&v69 + 1) = v81;
  *&v70 = v38;
  *(&v70 + 1) = v45;
  v71 = *((v12 & v11) + 0xA8);
  v88 = v69;
  v89 = v70;
  *&v90 = v54;
  *(&v90 + 1) = v62;
  v91[0] = v78;
  *&v91[1] = *(v80 + 136);
  *&v91[3] = *(v80 + 152);
  v91[5] = v71;
  v72 = type metadata accessor for ChartViewController();
  v87.receiver = v2;
  v87.super_class = v72;
  objc_msgSendSuper2(&v87, sel_initWithNibName_bundle_, 0, 0);
  (*(v64 + 8))(v67, v62);
  (*(v56 + 8))(v82, v54);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v84);
  (*(v73 + 8))(v85, v45);
  (*(v74 + 8))(v86, v38);
  (*(v76 + 8))(v75, v81);
  OUTLINED_FUNCTION_26();
}

id ChartViewController.__deallocating_deinit()
{
  v1 = (*MEMORY[0x277D85000] & *v0);
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x277D76448] object:0];

  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ChartViewController();
  return objc_msgSendSuper2(&v10, sel_dealloc, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_26D158AF4(char *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0xB0);
  OUTLINED_FUNCTION_5_0(a1, *((*MEMORY[0x277D85000] & *a1) + 0x58));
  (*(v5 + 8))(v6 + v7);
  OUTLINED_FUNCTION_1_5();
  v9 = *(v8 + 184);
  OUTLINED_FUNCTION_5_0(v10, *((v3 & v2) + 0x60));
  (*(v11 + 8))(&a1[v12]);
  OUTLINED_FUNCTION_1_5();
  v14 = *(v13 + 192);
  OUTLINED_FUNCTION_5_0(v15, *((v3 & v2) + 0x68));
  (*(v16 + 8))(&a1[v17]);
  OUTLINED_FUNCTION_1_5();
  __swift_destroy_boxed_opaque_existential_1(&a1[*(v18 + 200)]);
  OUTLINED_FUNCTION_1_5();
  __swift_destroy_boxed_opaque_existential_1(&a1[*(v19 + 208)]);
  OUTLINED_FUNCTION_1_5();
  v21 = *(v20 + 216);
  OUTLINED_FUNCTION_5_0(v22, *((v3 & v2) + 0x70));
  (*(v23 + 8))(&a1[v24]);
  OUTLINED_FUNCTION_1_5();
  v26 = *(v25 + 224);
  OUTLINED_FUNCTION_5_0(v27, *((v3 & v2) + 0x78));
  (*(v28 + 8))(&a1[v29]);
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_1_5();
  v32 = *(v31 + 240);
  v33 = *((v3 & v2) + 0x50);
  v34 = sub_26D1744C4();
  OUTLINED_FUNCTION_0_8(v34);
  (*(v35 + 8))(&a1[v32]);
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_1_5();
  v38 = *&a1[*(v37 + 256)];

  OUTLINED_FUNCTION_1_5();
  v40 = *&a1[*(v39 + 264)];
}

void sub_26D158D90()
{
  v3 = v0;
  v4 = *v0;
  v5 = *MEMORY[0x277D85000];
  *&v141 = *MEMORY[0x277D85000] & *v0;
  v6 = *((v5 & v4) + 0xA0);
  v140 = (v141 + 120);
  v7 = *((v5 & v4) + 0x70);
  *&__dst[0] = OUTLINED_FUNCTION_27();
  *(&__dst[0] + 1) = OUTLINED_FUNCTION_27();
  *&__dst[1] = swift_getAssociatedConformanceWitness();
  *(&__dst[1] + 1) = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for CoordinateSpace();
  v9 = OUTLINED_FUNCTION_1(v8);
  v126 = v10;
  v127 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13, v14);
  OUTLINED_FUNCTION_9_0();
  v124 = v15;
  v16 = *((v5 & v4) + 0x80);
  v17 = *((v5 & v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_26D1744C4();
  v20 = OUTLINED_FUNCTION_1(v19);
  v130 = v21;
  v131 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_9_0();
  v129 = v26;
  OUTLINED_FUNCTION_2();
  v134 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v30, v31);
  OUTLINED_FUNCTION_9_0();
  v133 = v32;
  v33 = sub_26D1744C4();
  v34 = OUTLINED_FUNCTION_1(v33);
  v138 = v35;
  v139 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v121 - v40;
  v137 = AssociatedTypeWitness;
  v136 = *(AssociatedTypeWitness - 8);
  v42 = *(v136 + 64);
  MEMORY[0x28223BE20](v43, v44);
  v132 = &v121 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v47);
  v135 = &v121 - v48;
  v49 = *((v5 & v4) + 0x58);
  v50 = *((v5 & v4) + 0x88);
  v51 = v6;
  v52 = v16;
  v53 = *((v5 & v4) + 0xA8);
  v128 = v7;
  *&v54 = v7;
  *(&v54 + 1) = *v140;
  *&__dst[0] = v17;
  *(&__dst[0] + 1) = v49;
  v140 = v49;
  v55 = *(v141 + 96);
  *&v56 = v16;
  v125 = v50;
  *(&v56 + 1) = v50;
  v123 = v55;
  __dst[1] = v55;
  __dst[2] = v54;
  v57 = *(v141 + 144);
  __dst[3] = v56;
  v141 = v57;
  __dst[4] = v57;
  v122 = v51;
  *&__dst[5] = v51;
  *(&__dst[5] + 1) = v53;
  v58 = type metadata accessor for ChartViewController();
  v146.receiver = v3;
  v146.super_class = v58;
  objc_msgSendSuper2(&v146, sel_viewDidLayoutSubviews);
  v59 = sub_26D157C78();
  if (v59)
  {
    v60 = v59;
    v61 = OUTLINED_FUNCTION_20();
    if (!v61)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    [v61 bounds];
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_14();
  }

  v62 = sub_26D157E94();
  if (v62)
  {
    v63 = v62;
    v64 = OUTLINED_FUNCTION_20();
    if (!v64)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    [v64 bounds];
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_14();
  }

  v65 = OUTLINED_FUNCTION_20();
  if (!v65)
  {
    __break(1u);
    goto LABEL_19;
  }

  v66 = v65;
  v67 = [v65 traitCollection];

  v68 = [v67 layoutDirection];
  v69 = OUTLINED_FUNCTION_20();
  if (!v69)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v70 = v69;
  v71 = v68 == 1;
  [v69 bounds];
  OUTLINED_FUNCTION_22();

  sub_26D157D38(v41);
  if (__swift_getEnumTagSinglePayload(v41, 1, v17))
  {
    v138[1](v41, v139);
    return;
  }

  v72 = v133;
  v73 = v134;
  v134[2](v133, v41, v17);
  v138[1](v41, v139);
  *&__dst[0] = v1;
  *(&__dst[0] + 1) = v2;
  LODWORD(v139) = v71;
  LOBYTE(__dst[1]) = v71;
  (*(v52 + 24))(__dst, v17, v52);
  (v73[1])(v72, v17);
  v75 = v135;
  v74 = v136;
  v76 = *(v136 + 32);
  v77 = OUTLINED_FUNCTION_25();
  v78 = v137;
  v79(v77);
  v80 = sub_26D157C78();
  if (!v80)
  {
    v115 = *(v74 + 8);
    v116 = OUTLINED_FUNCTION_25();
    v117(v116);
    return;
  }

  v81 = v80;
  v82 = sub_26D157E94();
  if (!v82)
  {
    v118 = *(v74 + 8);
    v119 = OUTLINED_FUNCTION_25();
    v120(v119);

    return;
  }

  v138 = v82;
  sub_26D157F68();
  v83 = *(v74 + 16);
  v84 = v129;
  v83(v129, v75, v78);
  __swift_storeEnumTagSinglePayload(v84, 0, 1, v78);
  sub_26D173F64();

  (*(v130 + 8))(v84, v131);
  v85 = OUTLINED_FUNCTION_20();
  if (v85)
  {
    v86 = v85;
    v134 = v81;
    [v85 bounds];
    v88 = v87;
    v90 = v89;

    v91 = OUTLINED_FUNCTION_20();
    if (v91)
    {
      v92 = v91;
      v93 = [v91 traitCollection];

      v94 = *((*MEMORY[0x277D85000] & *v3) + 0xD8);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v96 = v124;
      v97 = v135;
      (*(AssociatedConformanceWitness + 72))(v78, AssociatedConformanceWitness);
      *&__dst[0] = v88;
      *(&__dst[0] + 1) = v90;
      *&__dst[1] = v93;
      v98 = (*(v122 + 40))(v96, __dst, v128);
      (*(v126 + 8))(v96, v127);
      OUTLINED_FUNCTION_4_0();
      v100 = (v3 + *(v99 + 200));
      v101 = v100[3];
      v102 = v100[4];
      __swift_project_boxed_opaque_existential_1(v100, v101);
      *&__dst[0] = v1;
      *(&__dst[0] + 1) = v2;
      LOBYTE(__dst[1]) = v139;
      (*(v102 + 8))(v144, v98, __dst, v101, v102);
      OUTLINED_FUNCTION_4_0();
      v104 = *(v3 + *(v103 + 256));
      memcpy(v143, v144, sizeof(v143));
      sub_26D15ADE8(v144, __dst);
      sub_26D173F64();
      memcpy(__dst, v143, sizeof(__dst));
      sub_26D15AE44(__dst);
      OUTLINED_FUNCTION_4_0();
      v106 = *(v105 + 184);
      (*(v141 + 24))(v97, v123, v144[2], v144[3]);
      OUTLINED_FUNCTION_4_0();
      v108 = *(v107 + 176);
      memcpy(v143, v144, sizeof(v143));
      v109 = v134;
      (*(v125 + 48))(v97, v134, v143, v140);
      OUTLINED_FUNCTION_4_0();
      v111 = (v3 + *(v110 + 208));
      v112 = v111[3];
      v113 = v111[4];
      __swift_project_boxed_opaque_existential_1(v111, v112);
      memcpy(v142, &v144[4], sizeof(v142));
      v114 = v138;
      (*(v113 + 16))(v98, v142, v138, v112, v113);

      memcpy(v143, v142, 0x50uLL);
      sub_26D15AEA0(v143);
      (*(v136 + 8))(v97, v137);
      return;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_26D159788(void *a1)
{
  v1 = a1;
  sub_26D158D90();
}

id sub_26D1597D0(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v107 = a2;
  v7 = *v2;
  v8 = *MEMORY[0x277D85000];
  v102 = (*MEMORY[0x277D85000] & *v2);
  v9 = *((v8 & v7) + 0xA0);
  v99 = *((v8 & v7) + 0x70);
  v100 = v9;
  v110 = OUTLINED_FUNCTION_28();
  v111 = OUTLINED_FUNCTION_28();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v113 = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for CoordinateSpace();
  v11 = OUTLINED_FUNCTION_1(v10);
  v97 = v12;
  v98 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_9_0();
  v96 = v17;
  v18 = *((v8 & v7) + 0x60);
  OUTLINED_FUNCTION_2();
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v95 - v25;
  v27 = *((v8 & v7) + 0x80);
  v28 = *((v8 & v7) + 0x50);
  v108 = v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v104 = sub_26D1744C4();
  OUTLINED_FUNCTION_1(v104);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v95 - v36;
  v109 = AssociatedTypeWitness;
  v106 = *(AssociatedTypeWitness - 8);
  v38 = *(v106 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v39, v40);
  OUTLINED_FUNCTION_9_0();
  v105 = v41;
  v42 = *(*(sub_26D1744C4() - 8) + 64);
  OUTLINED_FUNCTION_6_0();
  v45 = MEMORY[0x28223BE20](v43, v44);
  v47 = &v95 - v46;
  v48 = *(*(v28 - 8) + 16);
  v103 = a1;
  v48(v47, a1, v28, v45);
  __swift_storeEnumTagSinglePayload(v47, 0, 1, v28);
  sub_26D157DDC(v47);
  result = [v5 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v50 = result;
  v101 = v18;
  v51 = [result traitCollection];

  v52 = [v51 layoutDirection];
  result = [v5 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v53 = result;
  [result bounds];
  OUTLINED_FUNCTION_22();

  v110 = *&v3;
  v111 = *&v4;
  LOBYTE(AssociatedConformanceWitness) = v52 == 1;
  v54 = v105;
  (*(v108 + 24))(&v110, v28);
  sub_26D157F68();
  v55 = v109;
  (*(v106 + 16))(v37, v54, v109);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v55);
  sub_26D173F64();

  (*(v31 + 8))(v37, v104);
  v56 = *v5;
  v57 = MEMORY[0x277D85000];
  OUTLINED_FUNCTION_23();
  v59 = v101;
  (*(v20 + 16))(v26, v5 + *(v58 + 184), v101);
  result = [v5 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v60 = result;
  [result bounds];
  OUTLINED_FUNCTION_22();

  v61 = v102;
  (*(v102[18] + 24))(v54, v59, v3, v4);
  v62 = v61;
  (*(v20 + 8))(v26, v59);
  v63 = *v5;
  OUTLINED_FUNCTION_23();
  v65 = *(v64 + 192);
  (*(v61[19] + 16))(v107, v61[13]);
  v66 = sub_26D157E94();
  v67 = v57;
  if (v66)
  {
    v68 = v66;
    [v66 removeFromSuperview];
  }

  v69 = sub_26D157C78();
  if (v69)
  {
    v70 = v69;
    [v69 removeFromSuperview];
  }

  result = [v5 view];
  if (!result)
  {
    goto LABEL_17;
  }

  v71 = result;
  [result bounds];
  OUTLINED_FUNCTION_22();

  result = [v5 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v72 = result;
  v73 = [result traitCollection];

  OUTLINED_FUNCTION_24();
  v75 = *(v74 + 216);
  v76 = v109;
  v77 = swift_getAssociatedConformanceWitness();
  v78 = v96;
  (*(v77 + 72))(v76, v77);
  v110 = *&v3;
  v111 = *&v4;
  AssociatedConformanceWitness = v73;
  v79 = (*(v100 + 40))(v78, &v110, v99);
  (*(v97 + 8))(v78, v98);
  OUTLINED_FUNCTION_24();
  v81 = (v5 + *(v80 + 208));
  v82 = v67;
  v83 = v81[3];
  v84 = v81[4];
  __swift_project_boxed_opaque_existential_1(v81, v83);
  v85 = (*(v84 + 8))(v79, v83, v84);
  result = [v5 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v86 = result;
  [result addSubview_];

  v87 = *((*v82 & *v5) + 0xB0);
  v88 = (*(v62[17] + 40))(v54, v107, v62[11]);
  result = [v5 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v89 = result;
  v90 = v88;
  [v89 addSubview_];

  v91 = v90;
  sub_26D157CD4(v90);
  v92 = v85;
  sub_26D157EE0(v85);
  v93 = *((*MEMORY[0x277D85000] & *v5) + 0xE0);
  (*(v62[21] + 32))(v54, v91, v62[15]);

  result = [v5 view];
  if (result)
  {
    v94 = result;

    [v94 setNeedsLayout];

    return (*(v106 + 8))(v54, v109);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_26D15A0F4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_23();
  v3 = *(v2 + 80);
  v4 = *(*(sub_26D1744C4() - 8) + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5, v6);
  v8 = v17 - v7;
  v9 = sub_26D157E94();
  if (v9)
  {
    v10 = v9;
    [v9 removeFromSuperview];
  }

  v11 = sub_26D157C78();
  if (v11)
  {
    v12 = v11;
    [v11 removeFromSuperview];
  }

  __swift_storeEnumTagSinglePayload(v8, 1, 1, v3);
  sub_26D157DDC(v8);
  v13 = *v0;
  OUTLINED_FUNCTION_23();
  v15 = *(v0 + *(v14 + 256));
  memset(v17, 0, sizeof(v17));
  return sub_26D173F64();
}

uint64_t sub_26D15A214()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  swift_getAssociatedTypeWitness();
  sub_26D1744C4();
  v5 = *((v2 & v1) + 0x50);

  return sub_26D1744C4();
}

void sub_26D15A2BC(void *a1)
{
  v1 = a1;
  sub_26D15A214();
}

id ChartViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26D174204();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_26D15A3B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_26D174234();
  }

  v5 = a4;
  ChartViewController.init(nibName:bundle:)();
}

void ChartViewController<>.add(zone:)()
{
  OUTLINED_FUNCTION_31();
  v52 = v3;
  v4 = *v0;
  v5 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 128);
  v8 = *((v5 & v4) + 0x50);
  swift_getAssociatedTypeWitness();
  v9 = OUTLINED_FUNCTION_18();
  v10 = OUTLINED_FUNCTION_1(v9);
  v48 = v11;
  v49 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2();
  v51 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v19, v20);
  OUTLINED_FUNCTION_9_0();
  v50 = v21;
  OUTLINED_FUNCTION_12();
  v23 = *(v22 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1(AssociatedTypeWitness);
  v26 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v47 - v31;
  OUTLINED_FUNCTION_12();
  v34 = *(v33 + 176);
  v35 = OUTLINED_FUNCTION_11();
  v36(v35);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v52, AssociatedTypeWitness, AssociatedConformanceWitness);
  v38 = *(v26 + 8);
  v39 = OUTLINED_FUNCTION_25();
  v40(v39);
  sub_26D157F68();
  sub_26D173F94();

  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    (*(v48 + 8))(v2, v49);
  }

  else
  {
    v42 = v50;
    v41 = v51;
    v43 = OUTLINED_FUNCTION_15();
    v44(v43);
    if (sub_26D157C78())
    {
      v45 = OUTLINED_FUNCTION_8_0();
      v46(v45);
    }

    (*(v41 + 8))(v42, v1);
  }

  OUTLINED_FUNCTION_26();
}

void ChartViewController<>.removeZone(with:)()
{
  OUTLINED_FUNCTION_31();
  v49 = v3;
  v50 = v4;
  v5 = *v0;
  v6 = *MEMORY[0x277D85000];
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 128);
  v9 = *((v6 & v5) + 0x50);
  swift_getAssociatedTypeWitness();
  v10 = OUTLINED_FUNCTION_18();
  v11 = OUTLINED_FUNCTION_1(v10);
  v45 = v12;
  v46 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2();
  v48 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_9_0();
  v47 = v22;
  OUTLINED_FUNCTION_12();
  v24 = *(v23 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1(AssociatedTypeWitness);
  v27 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v45 - v32;
  OUTLINED_FUNCTION_12();
  v35 = *(v34 + 176);
  v36 = OUTLINED_FUNCTION_11();
  v37(v36);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v49, v50, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v27 + 8))(v33, AssociatedTypeWitness);
  sub_26D157F68();
  sub_26D173F94();

  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    (*(v45 + 8))(v2, v46);
  }

  else
  {
    v40 = v47;
    v39 = v48;
    v41 = OUTLINED_FUNCTION_15();
    v42(v41);
    if (sub_26D157C78())
    {
      v43 = OUTLINED_FUNCTION_8_0();
      v44(v43);
    }

    (*(v39 + 8))(v40, v1);
  }

  OUTLINED_FUNCTION_26();
}

void ChartViewController<>.removeZones(with:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = *v2;
  v8 = *MEMORY[0x277D85000];
  v33 = *MEMORY[0x277D85000] & *v2;
  v9 = *((v8 & v7) + 0x80);
  v10 = *((v8 & v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_26D1744C4();
  v13 = OUTLINED_FUNCTION_1(v12);
  v34 = v14;
  v35 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v33 - v19;
  OUTLINED_FUNCTION_2();
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_13();
  v27 = *(v6 + 16);
  for (i = (v6 + 40); v27; --v27)
  {
    v29 = *i;
    v36[0] = *(i - 1);
    v36[1] = v29;

    sub_26D15AC40(v36, v2, v4);

    i += 2;
  }

  sub_26D157F68();
  sub_26D173F94();

  if (__swift_getEnumTagSinglePayload(v20, 1, AssociatedTypeWitness) == 1)
  {
    (*(v34 + 8))(v20, v35);
  }

  else
  {
    (*(v22 + 32))(v1, v20, AssociatedTypeWitness);
    v30 = sub_26D157C78();
    if (v30)
    {
      v31 = v30;
      v32 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0xB0);
      (*(v4 + 56))(v1, v30, *(v33 + 88), v4);
    }

    (*(v22 + 8))(v1, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_26D15AC40(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & *a2) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v15 = &v21 - v14;
  v16 = *a1;
  v17 = a1[1];
  v22 = v16;
  v18 = a2 + *((v7 & v6) + 0xB0);
  (*(a3 + 48))(v8, a3, v13);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v22, v17, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v10 + 8))(v15, AssociatedTypeWitness);
}

uint64_t sub_26D15AE44(uint64_t a1)
{
  sub_26D158368();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id OUTLINED_FUNCTION_14()
{

  return [v0 (v1 + 2424)];
}

uint64_t OUTLINED_FUNCTION_18()
{

  return sub_26D1744C4();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_20()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_27()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_29()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_30()
{
}

uint64_t MultiTouchInteractionManager.__allocating_init(interactor:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  MultiTouchInteractionManager.init(interactor:)();
  return v3;
}

uint64_t MultiTouchInteractionManager.register(model:on:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = *v2;
  v7 = *(*v2 + 80);
  v34[0] = *(*v2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_26D1744C4();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v34 - v16;
  v18 = *(v5 + 136);
  v19 = *(v2 + v18);
  if (v19)
  {
    [v19 removeGestureRecognizer_];
  }

  (*(*(AssociatedTypeWitness - 8) + 16))(v17, a1, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_1_6();
  v21 = *(v20 + 144);
  swift_beginAccess();
  (*(v11 + 40))(v2 + v21, v17, v9);
  swift_endAccess();
  v22 = *(v2 + v18);
  *(v2 + v18) = a2;

  OUTLINED_FUNCTION_1_6();
  [a2 addGestureRecognizer_];
  OUTLINED_FUNCTION_1_6();
  v25 = *(v24 + 104);
  v26 = OUTLINED_FUNCTION_10();
  v34[6] = *(v2 + v25);
  MEMORY[0x28223BE20](v26, v27);
  v28 = v34[0];
  v34[-4] = v7;
  v34[-3] = v28;
  v34[-2] = a1;
  swift_getAssociatedConformanceWitness();
  v29 = swift_getAssociatedTypeWitness();
  v30 = OUTLINED_FUNCTION_4_1();
  v31 = OUTLINED_FUNCTION_4_1();
  v32 = OUTLINED_FUNCTION_4_1();

  v34[1] = v29;
  v34[2] = v30;
  v34[3] = v31;
  v34[4] = v32;
  type metadata accessor for InteractionCursor();
  type metadata accessor for InteractionHandlerWrapper();
  OUTLINED_FUNCTION_9();
  sub_26D174304();
  OUTLINED_FUNCTION_0_11();
  swift_getWitnessTable();
  sub_26D174284();
}

uint64_t MultiTouchInteractionManager.add<A>(interactionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_1();
  v5 = *(v4 + 88);
  v7 = *(v6 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_5_1();
  type metadata accessor for InteractionCursor();
  type metadata accessor for InteractionHandlerWrapper();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = v5;
  v8[5] = a3;
  v8[6] = v3;
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a2;
  v9[4] = v5;
  v9[5] = a3;
  v9[6] = v3;
  sub_26D16AE4C(sub_26D15CA94, v8, sub_26D15CACC, v9);
  OUTLINED_FUNCTION_2_2();
  v11 = *(v10 + 104);
  swift_beginAccess();
  sub_26D174304();
  swift_unknownObjectRetain_n();

  sub_26D1742F4();
  swift_endAccess();
}

uint64_t MultiTouchInteractionManager.init(interactor:)()
{
  v2 = v0;
  OUTLINED_FUNCTION_8_1();
  v4 = *(v3 + 104);
  v6 = *(v5 + 88);
  v7 = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v10 = OUTLINED_FUNCTION_3_2();
  v11 = OUTLINED_FUNCTION_3_2();
  v24 = v9;
  v25 = OUTLINED_FUNCTION_3_2();
  type metadata accessor for InteractionCursor();
  type metadata accessor for InteractionHandlerWrapper();
  OUTLINED_FUNCTION_9();
  *(v2 + v4) = sub_26D1742C4();
  OUTLINED_FUNCTION_2_2();
  *(v2 + *(v12 + 112)) = 0;
  OUTLINED_FUNCTION_2_2();
  v14 = *(v13 + 120);
  LOBYTE(v24) = 0;
  v15 = objc_allocWithZone(type metadata accessor for TapDragGestureRecognizer());
  *(v2 + v14) = sub_26D166608();
  OUTLINED_FUNCTION_2_2();
  v17 = *(v16 + 128);
  *(v2 + v17) = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  OUTLINED_FUNCTION_2_2();
  *(v2 + *(v18 + 136)) = 0;
  OUTLINED_FUNCTION_2_2();
  __swift_storeEnumTagSinglePayload(v2 + *(v19 + 144), 1, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_2();
  v21 = *(v7 - 8);
  (*(v21 + 16))(v2 + *(v20 + 96), v1, v7);
  OUTLINED_FUNCTION_2_2();
  [*(v2 + *(v22 + 120)) addTarget:v2 action:sel_handleGestureWithGesture_];
  (*(v21 + 8))(v1, v7);
  return v2;
}

void sub_26D15BB6C(void *a1)
{
  v2 = v1;
  v55 = a1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v54 = *(*v1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_26D1744C4();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v52 - v14;
  OUTLINED_FUNCTION_2();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20, v21);
  v23 = v52 - v22;
  v24 = *(v2 + *(v3 + 136));
  if (v24)
  {
    v25 = *(v4 + 144);
    OUTLINED_FUNCTION_10();
    (*(v9 + 16))(v15, v2 + v25, v7);
    if (__swift_getEnumTagSinglePayload(v15, 1, AssociatedTypeWitness) == 1)
    {
      (*(v9 + 8))(v15, v7);
      return;
    }

    v26 = v17;
    (*(v17 + 32))(v23, v15, AssociatedTypeWitness);
    v27 = v24;
    v28 = [v55 state];
    if ((v28 - 3) < 2)
    {
      v42 = *(*v2 + 112);
      swift_beginAccess();
      if (!*(v2 + v42))
      {
        v50 = OUTLINED_FUNCTION_6_1();
        v51(v50);
        swift_endAccess();
        goto LABEL_16;
      }

      swift_endAccess();

      sub_26D16EEF8();
    }

    else
    {
      if (v28 != 2)
      {
        if (v28 == 1)
        {
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v30 = swift_getAssociatedTypeWitness();
          v52[2] = AssociatedConformanceWitness;
          v31 = swift_getAssociatedConformanceWitness();
          v32 = swift_getAssociatedConformanceWitness();
          v33 = swift_getAssociatedConformanceWitness();
          v57 = v30;
          v58 = v31;
          v59 = v32;
          v60 = v33;
          v52[1] = type metadata accessor for InteractionCursor();
          type metadata accessor for HighlightInteraction();
          v34 = sub_26D16EEC8();
          v35 = *v2;
          v53 = v26;
          v36 = *(v35 + 112);
          swift_beginAccess();
          v37 = *(v2 + v36);
          *(v2 + v36) = v34;

          v38 = *(*v2 + 104);
          v39 = OUTLINED_FUNCTION_10();
          v56 = *(v2 + v38);
          MEMORY[0x28223BE20](v39, v40);
          v41 = v54;
          v52[-4] = v5;
          v52[-3] = v41;
          v52[-2] = v34;
          type metadata accessor for InteractionHandlerWrapper();
          OUTLINED_FUNCTION_9();
          sub_26D174304();

          OUTLINED_FUNCTION_0_11();
          swift_getWitnessTable();
          sub_26D174284();

          sub_26D15C0D8(v34, v55, v27, v2, v23);

          (*(v53 + 8))(v23, AssociatedTypeWitness);
          return;
        }

        goto LABEL_14;
      }

      v43 = *(*v2 + 112);
      OUTLINED_FUNCTION_10();
      if (!*(v2 + v43))
      {
LABEL_14:
        v48 = OUTLINED_FUNCTION_6_1();
        v49(v48);
LABEL_16:

        return;
      }

      sub_26D15C0D8(v44, v55, v27, v2, v23);
    }

    v45 = OUTLINED_FUNCTION_6_1();
    v47(v45, v46);
  }
}

uint64_t sub_26D15C0D8(void *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v87 = a5;
  v8 = *a1;
  v9 = *a4;
  v81 = a1;
  v10 = *(v8 + 80);
  v82 = type metadata accessor for HighlightInteraction.InteractionType();
  v79 = *(v82 - 8);
  v11 = *(v79 + 64);
  MEMORY[0x28223BE20](v82, v12);
  v80 = &v76 - v13;
  v14 = sub_26D1744C4();
  v85 = *(v14 - 8);
  v86 = v14;
  v15 = *(v85 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v76 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v76 - v25;
  v84 = *(v10 - 8);
  v27 = *(v84 + 64);
  MEMORY[0x28223BE20](v28, v29);
  v78 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v83 = &v76 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v76 - v36;
  v38 = a2 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_locations;
  result = swift_beginAccess();
  v40 = *(v38 + 32);
  if (v40 != 255)
  {
    v42 = *(v38 + 16);
    v41 = *(v38 + 24);
    v43 = *(v38 + 8);
    if (*v38 > 0.0)
    {
      v44 = *v38;
    }

    else
    {
      v44 = 0.0;
    }

    [a3 bounds];
    Width = CGRectGetWidth(v88);
    if (Width < v44)
    {
      v44 = Width;
    }

    if (v40)
    {
      [a3 bounds];
      v46 = CGRectGetWidth(v89);
      v47 = *(*a4 + 96);
      [a3 bounds];
      v48 = *(v9 + 88);
      v49 = *(v48 + 24);
      v76 = *(v9 + 80);
      v77 = v49;
      (v49)(v87, v44, v43);
      if (__swift_getEnumTagSinglePayload(v22, 1, v10) == 1)
      {
        return (*(v85 + 8))(v22, v86);
      }

      else
      {
        v51 = 0.0;
        if (v42 > 0.0)
        {
          v51 = v42;
        }

        if (v46 >= v51)
        {
          v52 = v51;
        }

        else
        {
          v52 = v46;
        }

        v53 = v84;
        v54 = v22;
        v55 = *(v84 + 32);
        v55(v83, v54, v10);
        [a3 bounds];
        v77(v87, v76, v48, v52, v41);
        if (__swift_getEnumTagSinglePayload(v18, 1, v10) == 1)
        {
          (*(v53 + 8))(v83, v10);
          return (*(v85 + 8))(v18, v86);
        }

        else
        {
          v55(v78, v18, v10);
          v59 = [a3 traitCollection];
          v60 = [v59 layoutDirection];

          v61 = *(swift_getTupleTypeMetadata2() + 48);
          v62 = *(v53 + 16);
          v63 = (v79 + 8);
          v64 = (v53 + 8);
          v65 = v80;
          if (v60 == 1)
          {
            v66 = v78;
            v62(v80, v78, v10);
            v67 = &v65[v61];
            v68 = v83;
            v62(v67, v83, v10);
            v69 = v82;
            swift_storeEnumTagMultiPayload();
            sub_26D16EDEC();
            (*v63)(v65, v69);
            v70 = *v64;
            (*v64)(v66, v10);
            return (v70)(v68, v10);
          }

          else
          {
            v71 = v83;
            v62(v80, v83, v10);
            v72 = &v65[v61];
            v73 = v78;
            v62(v72, v78, v10);
            v74 = v82;
            swift_storeEnumTagMultiPayload();
            sub_26D16EDEC();
            (*v63)(v65, v74);
            v75 = *v64;
            (*v64)(v73, v10);
            return (v75)(v71, v10);
          }
        }
      }
    }

    else
    {
      v50 = *(*a4 + 96);
      [a3 bounds];
      (*(*(v9 + 88) + 24))(v87, *(v9 + 80), v44, v43);
      if (__swift_getEnumTagSinglePayload(v26, 1, v10) == 1)
      {
        return (*(v85 + 8))(v26, v86);
      }

      else
      {
        v56 = v84;
        (*(v84 + 32))(v37, v26, v10);
        v57 = v80;
        (*(v56 + 16))(v80, v37, v10);
        v58 = v82;
        swift_storeEnumTagMultiPayload();
        sub_26D16EDEC();
        (*(v79 + 8))(v57, v58);
        return (*(v56 + 8))(v37, v10);
      }
    }
  }

  return result;
}

uint64_t sub_26D15C7F0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v5 = a2;

  v3(&v5);
}

uint64_t sub_26D15C844(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_26D15BB6C(v3);
}

uint64_t *MultiTouchInteractionManager.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  OUTLINED_FUNCTION_1_6();
  v3 = *(v0 + *(v2 + 104));

  OUTLINED_FUNCTION_1_6();
  v5 = *(v0 + *(v4 + 112));

  OUTLINED_FUNCTION_1_6();

  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_1_6();

  OUTLINED_FUNCTION_1_6();
  v10 = *(v9 + 144);
  v11 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v12 = sub_26D1744C4();
  (*(*(v12 - 8) + 8))(v0 + v10, v12);
  return v0;
}

uint64_t MultiTouchInteractionManager.__deallocating_deinit()
{
  MultiTouchInteractionManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26D15CA60(uint64_t *a1)
{
  v2 = *(v1 + 32);
  v3 = *a1;
  return sub_26D16AE24();
}

uint64_t sub_26D15CA94(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[6];
  return (*(v3 + 40))(a1, v2);
}

uint64_t sub_26D15CACC(uint64_t *a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[6];
  v6 = *a1;
  return (*(v3 + 48))(&v6, v2);
}

uint64_t sub_26D15CB60(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  v4 = v3;
  if (v5 <= 0x3F)
  {
    v10 = *(v3 - 8) + 64;
    v6 = *(a1 + 88);
    swift_getAssociatedTypeWitness();
    v7 = sub_26D1744C4();
    v4 = v7;
    if (v8 <= 0x3F)
    {
      v11 = *(v7 - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return v4;
}

uint64_t sub_26D15CCC8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_26D15C7F0(a1, v1[4]);
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_10()
{

  return swift_beginAccess();
}

void sub_26D15CD44(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v82 = *(a3 + 24);
  v11 = *(a3 + 32);
  if (!sub_26D14CCF0())
  {
    sub_26D142914();
    if (*(a2 + *(v12 + 52) + 8) > *(a2 + *(v12 + 52)) && a5 > 0.0 && a4 > 0.0)
    {
      v13 = 0;
      v107 = MEMORY[0x277D84F90];
      v84 = a1 + 32;
      v86 = *(a1 + 16);
      while (1)
      {
        if (v13 == v86)
        {
          return;
        }

        v14 = (v84 + 24 * v13);
        v15 = v14[1];
        v101 = *v14;
        v16 = v14[2];
        v88 = v13 + 1;
        v17 = objc_allocWithZone(MEMORY[0x277D75208]);

        v18 = v17;
        v19 = v16;
        v90 = [v18 init];
        v92 = v15;
        v20 = 0;
        v102 = *(v16 + 16);
        v21 = (v16 + 48);
        v100 = v16;
        while (v102 != v20)
        {
          if (v20 >= *(v19 + 16))
          {
            __break(1u);
            return;
          }

          v22 = *v21;
          v23 = *(v21 - 1);
          v24 = *(v6 + 16);
          v103[0] = *(v21 - 2);
          v103[1] = v23;
          v103[2] = v22;
          v104 = v101;
          v105 = v15;
          v106 = v19;

          *&v25 = COERCE_DOUBLE(ColumnChartCoordinateProvider.location(for:in:)(v103, &v104));
          if (v27)
          {

            goto LABEL_27;
          }

          v28 = *&v25;
          v29 = v26;
          v30 = v24 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_options;
          swift_beginAccess();
          if (*(v30 + 32))
          {
          }

          else
          {
            v31 = *v30;
            if ((~*&v28 & 0x7FF0000000000000) == 0)
            {
              goto LABEL_24;
            }

            v32 = v28 == 1.79769313e308 || (~*&v29 & 0x7FF0000000000000) == 0;
            v33 = v32 || v29 == 1.79769313e308;
            if (v33 || (v108.origin.x = OUTLINED_FUNCTION_0_12(), CGRectGetWidth(v108), OUTLINED_FUNCTION_1_7(), v62 || (v63 & 1) != 0 || (v109.origin.x = OUTLINED_FUNCTION_0_12(), CGRectGetHeight(v109), OUTLINED_FUNCTION_1_7(), v32) || (v64 & 1) != 0))
            {
LABEL_24:
              HIDWORD(v94) = sub_26D174404();
              sub_26D150C98();
              v98 = v34;
              v35 = OUTLINED_FUNCTION_3_3();
              OUTLINED_FUNCTION_2_3(v35, v36, v37, v38, v39, v40, v41, v42, v80, v82, v84, v86, v88, v90, v92, v94, v96, v98, v43);
              type metadata accessor for CGRect(0);
              v97 = v44;
              sub_26D1746A4();
              v45 = v6;
              v46 = v104;
              v47 = v105;
              v35[3].n128_u64[1] = MEMORY[0x277D837D0];
              v48 = sub_26D150D4C();
              v35[4].n128_u64[0] = v48;
              v35[2].n128_u64[0] = v46;
              v35[2].n128_u64[1] = v47;
              sub_26D14CDDC();
              v49 = sub_26D1744B4();
              sub_26D174164();

              v6 = v45;
              sub_26D174414();
              v50 = OUTLINED_FUNCTION_3_3();
              OUTLINED_FUNCTION_2_3(v50, v51, v52, v53, v54, v55, v56, v57, v81, v83, v85, v87, v89, v91, v93, v95, v97, v99, v58);
              sub_26D1746A4();
              v59 = v104;
              v60 = v105;
              v50[3].n128_u64[1] = MEMORY[0x277D837D0];
              v50[4].n128_u64[0] = v48;
              v50[2].n128_u64[0] = v59;
              v50[2].n128_u64[1] = v60;
              v61 = sub_26D1744B4();
              v15 = v92;
              sub_26D174164();
            }

            else
            {
              v66 = COERCE__INT64(fabs(v11 * v31)) > *&v65;
              if (v11 * v31 != v65 && !v66)
              {
                objc_opt_self();
                v67 = OUTLINED_FUNCTION_0_12();
                v70 = [v68 v69];
                [v90 appendPath_];

                goto LABEL_26;
              }

              sub_26D174404();
              sub_26D150C98();
              v71 = OUTLINED_FUNCTION_3_3();
              *(v71 + 16) = xmmword_26D1763D0;
              v72 = sub_26D174344();
              v74 = v73;
              *(v71 + 56) = MEMORY[0x277D837D0];
              v75 = sub_26D150D4C();
              *(v71 + 64) = v75;
              *(v71 + 32) = v72;
              *(v71 + 40) = v74;
              sub_26D14CDDC();
              v76 = sub_26D1744B4();
              sub_26D174164();

              sub_26D174414();
              v77 = OUTLINED_FUNCTION_3_3();
              *(v77 + 16) = xmmword_26D1763D0;
              v78 = sub_26D174344();
              *(v77 + 56) = MEMORY[0x277D837D0];
              *(v77 + 64) = v75;
              v15 = v92;
              *(v77 + 32) = v78;
              *(v77 + 40) = v79;
              v61 = sub_26D1744B4();
              sub_26D174164();
            }
          }

LABEL_26:
          v19 = v100;
LABEL_27:
          v21 += 3;
          ++v20;
        }

        MEMORY[0x26D6B3530]();
        if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26D1742B4();
        }

        sub_26D1742E4();

        v13 = v88;
      }
    }
  }
}

uint64_t GridLabelFormatter.format(value:options:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v24[-v11];
  v14 = *v13;
  swift_beginAccess();
  sub_26D15D638(v2 + 16, &v25, &qword_2812B7810, &qword_2812B7818);
  if (!v26)
  {
    sub_26D155218(&v25, &qword_2812B7810, &qword_2812B7818);
    goto LABEL_6;
  }

  sub_26D146174(&v25, v27);
  (*(v5 + 16))(v12, a1, v4);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_6:
    swift_beginAccess();
    sub_26D15D638(v2 + 56, &v25, &qword_2812B7820, qword_2812B7828);
    if (v26)
    {
      sub_26D146174(&v25, v27);
      (*(v5 + 16))(v8, a1, v4);
      if (swift_dynamicCast())
      {
        v20 = *&v25;
        v21 = v28;
        v22 = v29;
        __swift_project_boxed_opaque_existential_1(v27, v28);
        *&v25 = v14;
        v19 = (*(v22 + 8))(&v25, v21, v22, v20);
        goto LABEL_9;
      }

      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    else
    {
      sub_26D155218(&v25, &qword_2812B7820, qword_2812B7828);
    }

    return 0;
  }

  v16 = *(&v25 + 1);
  v15 = v25;
  v17 = v28;
  v18 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  *&v25 = v14;
  v19 = (*(v18 + 8))(v15, v16, &v25, v17, v18);

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v19;
}

uint64_t sub_26D15D638(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  OUTLINED_FUNCTION_2_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_8(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

double GridLabelFormatter.__allocating_init()()
{
  OUTLINED_FUNCTION_0_13();
  v0 = swift_allocObject();
  return OUTLINED_FUNCTION_3_4(v0);
}

double GridLabelFormatter.init()()
{
  result = 0.0;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t GridLabelFormatter.deinit()
{
  sub_26D155218(v0 + 16, &qword_2812B7810, &qword_2812B7818);
  sub_26D155218(v0 + 56, &qword_2812B7820, qword_2812B7828);
  return v0;
}

uint64_t GridLabelFormatter.__deallocating_deinit()
{
  GridLabelFormatter.deinit();
  v0 = OUTLINED_FUNCTION_0_13();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

_OWORD *GridLabelFormatter<A>.init(formatter:)(__int128 *a1)
{
  OUTLINED_FUNCTION_0_13();
  v2 = swift_allocObject();
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[1] = 0u;
  sub_26D146174(a1, v4);
  swift_beginAccess();

  sub_26D15D8B8(v4, (v2 + 1), &qword_2812B7810, &qword_2812B7818);
  swift_endAccess();

  return v2;
}

{
  OUTLINED_FUNCTION_0_13();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_3_4(v2);
  sub_26D146174(a1, v4);
  swift_beginAccess();

  sub_26D15D8B8(v4, v2 + 56, &qword_2812B7820, qword_2812B7828);
  swift_endAccess();

  return v2;
}

uint64_t sub_26D15D8B8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  OUTLINED_FUNCTION_2_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_8(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t sub_26D15D908(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26D15D948(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t GridStyle.init(stroke:insetBehavior:labelPadding:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v7 = *(result + 8);
  v8 = *(result + 16);
  v9 = *(result + 24);
  v10 = *a2;
  *a3 = *result;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 25) = v10;
  *(a3 + 32) = a4;
  *(a3 + 40) = a5;
  *(a3 + 48) = a6;
  *(a3 + 56) = a7;
  return result;
}

uint64_t GridInsetBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_26D174864();
  MEMORY[0x26D6B3B10](v1);
  return sub_26D174894();
}

unint64_t sub_26D15DB28()
{
  result = qword_2804DD968;
  if (!qword_2804DD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DD968);
  }

  return result;
}

uint64_t sub_26D15DB7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_26D15DBBC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for GridInsetBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t Orientation.hashValue.getter()
{
  v1 = *v0;
  sub_26D174864();
  MEMORY[0x26D6B3B10](v1);
  return sub_26D174894();
}

unint64_t sub_26D15DDBC()
{
  result = qword_2804DD970;
  if (!qword_2804DD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DD970);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Orientation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t GridViewProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t GridViewProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

char *GridViewProvider.view(for:)(char *result)
{
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v5 = *(result + 2);
  v6 = result + 32;
  while (2)
  {
    if (v3 != v5)
    {
      v7 = 0;
      v8 = v3 + 1;
      v9 = v6[10 * v3 + 1];
      v10 = (v9 + 40);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = *v10;
        v10 += 2;
        v13 = v12 != 0;
        v14 = __OFADD__(v7, v13);
        v7 += v13;
        if (v14)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          return result;
        }
      }

      v3 = v8;
      v14 = __OFADD__(v4, v7);
      v4 += v7;
      if (!v14)
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

  v15 = objc_allocWithZone(type metadata accessor for GridView());
  GridView.init(numberOfGrids:numberOfLabels:)(v5, v4);
  v17 = v16;
  v18 = *__swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  sub_26D171D84(v17);
  v19 = OBJC_IVAR____TtC9TeaCharts8GridView_gridLayers;
  swift_beginAccess();
  v20 = *&v17[v19];
  v21 = sub_26D14AB7C(v20);

  v22 = 0;
  while (v21 != v22)
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D6B38E0](v22, v20);
    }

    else
    {
      if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      result = *(v20 + 8 * v22 + 32);
    }

    v23 = result;
    if (v5 == v22)
    {
      goto LABEL_20;
    }

    ++v22;
    memcpy(__dst, v6, sizeof(__dst));
    v24 = __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
    memcpy(v27, __dst, sizeof(v27));
    v25 = *v24;
    sub_26D150B24(__dst, v26);
    sub_26D171DF8(v23, v27);

    result = sub_26D150BDC(__dst);
    v6 += 10;
  }

  return v17;
}

void GridViewProvider.present(models:attributes:on:)(int a1, uint64_t a2, void *a3)
{
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v18.origin.x = *a2;
  v18.origin.y = v8;
  v18.size.width = v9;
  v18.size.height = v10;
  if (!CGRectIsEmpty(v18))
  {
    v11 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    *v14 = v7;
    *&v14[1] = v8;
    *&v14[2] = v9;
    *&v14[3] = v10;
    v12 = *(a2 + 48);
    v15 = *(a2 + 32);
    v16 = v12;
    v17 = *(a2 + 64);
    v13 = *v11;
    sub_26D160D04(a1, a3, v14);
  }
}

TeaCharts::DataPoint __swiftcall DataPoint.init(x:y:)(Swift::Double x, Swift::Double y)
{
  *v2 = x;
  v2[1] = y;
  result.y = y;
  result.x = x;
  return result;
}

uint64_t sub_26D15E2C4(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for GridViewRenderer();
  result = sub_26D173EE4();
  if (result)
  {
    v20[3] = v3;
    v20[4] = &off_287E8B6F8;
    v20[0] = result;
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v6 = type metadata accessor for GridViewStyler();
    result = sub_26D173EE4();
    if (result)
    {
      v7 = result;
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v20, v3);
      v17 = &v17;
      v9 = *(v3 - 8);
      v10 = *(v9 + 64);
      MEMORY[0x28223BE20](v8, v8);
      v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
      v12 = *(v9 + 16);
      v12(&v18[-1] - v11);
      v13 = *(&v18[-1] - v11);
      v19[3] = v3;
      v19[4] = &off_287E8B6F8;
      v19[0] = v13;
      type metadata accessor for GridViewProvider();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v19, v3);
      MEMORY[0x28223BE20](v15, v15);
      v12(&v18[-1] - v11);
      v16 = *(&v18[-1] - v11);
      v18[3] = v3;
      v18[4] = &off_287E8B6F8;
      v18[0] = v16;
      sub_26D146A14(v18, (v14 + 2));
      v14[10] = v6;
      v14[11] = &off_287E8CA00;
      v14[7] = v7;
      __swift_destroy_boxed_opaque_existential_1(v18);
      __swift_destroy_boxed_opaque_existential_1(v19);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26D15E55C(void *a1, unint64_t *a2, uint64_t a3, void (*a4)(void), void (*a5)(_BYTE *, uint64_t))
{
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, a2);
  result = sub_26D173EF4();
  if (v12)
  {
    a4(0);
    v10 = swift_allocObject();
    a5(v11, v10 + 16);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D15E61C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B9268);
  result = sub_26D173EF4();
  if (v8)
  {
    v5 = type metadata accessor for GridLayoutAttributesFactory();
    v6 = swift_allocObject();
    result = sub_26D146174(&v7, v6 + 16);
    a2[3] = v5;
    a2[4] = &off_287E8A920;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D15E6CC(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B9DD8);
  sub_26D173ED4();
  if (v9)
  {
    sub_26D146174(&v8, &v10);
  }

  else
  {
    v2 = sub_26D173F14();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    v5 = sub_26D173F04();
    v11 = v2;
    v12 = MEMORY[0x277D6CB10];
    *&v10 = v5;
  }

  type metadata accessor for GridViewRenderer();
  v6 = swift_allocObject();
  sub_26D146174(&v10, v6 + 16);
  return v6;
}

uint64_t sub_26D15E7D4()
{
  type metadata accessor for GridViewStyler();

  return swift_allocObject();
}

uint64_t sub_26D15E808@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for GridPathGenerator();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for GridPathGenerator;
  *a1 = result;
  return result;
}

uint64_t sub_26D15E850(uint64_t a1)
{
  sub_26D15E8AC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26D15E8AC()
{
  if (!qword_2812B8990)
  {
    sub_26D1433B8(255, &qword_2812B9DD8);
    v0 = sub_26D1744C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B8990);
    }
  }
}

uint64_t SparklineViewRendererOptions.Method.hashValue.getter()
{
  v1 = *v0;
  sub_26D174864();
  MEMORY[0x26D6B3B10](v1);
  return sub_26D174894();
}

unint64_t sub_26D15E9C8()
{
  result = qword_2804DD978;
  if (!qword_2804DD978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DD978);
  }

  return result;
}

_BYTE *sub_26D15EA2C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26D15EB08()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v2 = v0[3];
  v7 = v0[2];
  v8 = v2;
  sub_26D174864();
  sub_26D1498EC(v4);
  return sub_26D174894();
}

uint64_t sub_26D15EB64()
{
  v1 = *(v0 + 64);

  sub_26D174124();
}

uint64_t *sub_26D15EBE4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

uint64_t sub_26D15EC14()
{
  sub_26D15EBE4();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_26D15EC48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_26D15EC88(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

id sub_26D15ECF0(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ColumnChartViewProvider();
  result = sub_26D173EE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ColumnChartCoordinateProvider();
  result = sub_26D173EE4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D14527C();
  result = sub_26D173EE4();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B8BB8);
  result = sub_26D173EF4();
  if (!v19[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = type metadata accessor for GridViewProvider();
  result = sub_26D173EE4();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18[3] = v11;
  v18[4] = &protocol witness table for GridViewProvider;
  v18[0] = result;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D144468();
  result = sub_26D173EC4();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = result;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D145368(0);
  result = sub_26D173EC4();
  if (result)
  {
    v15 = result;
    sub_26D144DB4();
    v17 = objc_allocWithZone(v16);
    return sub_26D162CEC(v4, v6, v8, v19, v18, v13, v15);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26D15EF40(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B9108);
  result = sub_26D173EF4();
  if (v25)
  {
    v4 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26D1433B8(0, qword_2812B9270);
    result = sub_26D173EF4();
    if (v23)
    {
      v5 = v25;
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      v7 = *(*(v5 - 8) + 64);
      MEMORY[0x28223BE20](v6, v6);
      v9 = (&v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v9;
      v12 = type metadata accessor for ColumnChartRenderer();
      v21[3] = v12;
      v21[4] = &off_287E8CBB8;
      v21[0] = v11;
      type metadata accessor for ColumnChartViewProvider();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
      v15 = *(*(v12 - 8) + 64);
      MEMORY[0x28223BE20](v14, v14);
      v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17);
      v19 = *v17;
      v13[5] = v12;
      v13[6] = &off_287E8CBB8;
      v13[2] = v19;
      sub_26D146174(&v22, (v13 + 7));
      __swift_destroy_boxed_opaque_existential_1(v21);
      __swift_destroy_boxed_opaque_existential_1(v24);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26D15F1AC(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B8C78);
  result = sub_26D173EF4();
  if (v7)
  {
    v3 = type metadata accessor for ColumnChartCoordinateProvider();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    return sub_26D170488(&v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D15F240()
{
  sub_26D14527C();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_26D15F26C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, qword_2812B8F98);
  result = sub_26D173EF4();
  if (v17)
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26D1433B8(0, &qword_2812B9DD8);
    result = sub_26D173ED4();
    if (v15)
    {
      v7 = v17;
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      v9 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v8, v8);
      v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = sub_26D15FC10(*v11, &v14);
      __swift_destroy_boxed_opaque_existential_1(v16);
      result = type metadata accessor for ColumnChartRenderer();
      a2[3] = result;
      a2[4] = &off_287E8CBB8;
      *a2 = v13;
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

uint64_t sub_26D15F494@<X0>(void *a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a2(0);
  result = sub_26D173EE4();
  if (result)
  {
    v12 = OUTLINED_FUNCTION_1_8();
    v13 = a3(v12);
    result = swift_allocObject();
    *(result + 16) = v10;
    a5[3] = v13;
    a5[4] = a4;
    *a5 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D15F538(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for CategoryAxisGridViewModelGenerator();
  result = sub_26D173EE4();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for ValueAxisGridViewModelGenerator();
    result = sub_26D173EE4();
    if (result)
    {
      v6 = result;
      sub_26D144468();
      result = swift_allocObject();
      *(result + 16) = v4;
      *(result + 24) = v6;
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

uint64_t sub_26D15F5EC(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ColumnChartInteractor();
  result = sub_26D173EE4();
  if (result)
  {
    v3 = result;
    sub_26D145368(0);
    v4 = swift_allocObject();
    sub_26D1452CC(0, qword_2812B7E18, type metadata accessor for MultiTouchInteractionManager);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    *(v4 + 16) = sub_26D16329C(v3);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D15F6A0()
{
  type metadata accessor for ColumnChartInteractor();

  return swift_allocObject();
}

uint64_t sub_26D15F6D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, qword_2812B8C80);
  result = sub_26D173EF4();
  if (v28)
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26D1433B8(0, qword_2812B9270);
    result = sub_26D173EF4();
    if (v26)
    {
      v7 = v28;
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      v9 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v8, v8);
      v11 = (&v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v11;
      v14 = type metadata accessor for ColumnChartImageGenerator();
      v24[3] = v14;
      v24[4] = &off_287E8B6E8;
      v24[0] = v13;
      v15 = type metadata accessor for ColumnChartImageLoader();
      v16 = swift_allocObject();
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v24, v14);
      v18 = *(*(v14 - 8) + 64);
      MEMORY[0x28223BE20](v17, v17);
      v20 = (&v24[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v21 + 16))(v20);
      v22 = *v20;
      v16[5] = v14;
      v16[6] = &off_287E8B6E8;
      v16[2] = v22;
      sub_26D146174(&v25, (v16 + 7));
      __swift_destroy_boxed_opaque_existential_1(v24);
      result = __swift_destroy_boxed_opaque_existential_1(v27);
      a2[3] = v15;
      a2[4] = &off_287E8BA20;
      *a2 = v16;
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

uint64_t sub_26D15F95C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, qword_2812B9050);
  result = sub_26D173EF4();
  v5 = v23;
  if (v23)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v7 = *(*(v5 - 8) + 64);
    MEMORY[0x28223BE20](v6, v6);
    v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for ColumnPathGenerator();
    v21[3] = v12;
    v21[4] = &off_287E8B190;
    v21[0] = v11;
    v13 = type metadata accessor for ColumnChartImageGenerator();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    v16 = *(*(v12 - 8) + 64);
    MEMORY[0x28223BE20](v15, v15);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v14[5] = v12;
    v14[6] = &off_287E8B190;
    v14[2] = v20;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    a2[3] = v13;
    a2[4] = &off_287E8B6E8;
    *a2 = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D15FB84(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v11 = type metadata accessor for ColumnChartImageLoader();
  v12 = &off_287E8BA20;
  *&v10 = a1;
  sub_26D14674C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(a3 + 96) = sub_26D174064();
  sub_26D146174(&v10, a3 + 16);
  sub_26D146174(a2, a3 + 56);
  return a3;
}

uint64_t sub_26D15FC10(uint64_t a1, __int128 *a2)
{
  v4 = type metadata accessor for ColumnChartImageLoader();
  v14[3] = v4;
  v14[4] = &off_287E8BA20;
  v14[0] = a1;
  type metadata accessor for ColumnChartRenderer();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v14, v4);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v6, v6);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_26D15FB84(*v9, a2, v5);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v11;
}

id LineChartView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LineChartView.init(seriesViews:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9TeaCharts13LineChartView_seriesViews] = a1;
  v10.receiver = v1;
  v10.super_class = ObjectType;

  v4 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = sub_26D14CE24(a1);
  v6 = v4;
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D6B38E0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v8 = *(a1 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v6 addSubview_];
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

Swift::Void __swiftcall LineChartView.layoutSubviews()()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9TeaCharts13LineChartView_seriesViews];
  v2 = sub_26D14CE24(v1);

  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26D6B38E0](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v0 bounds];
    [v5 setFrame_];
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

id LineChartView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LineChartView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26D16016C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_26D1601E4(uint64_t a1, uint64_t a2, void *__src, uint64_t *a4)
{
  memcpy(__dst, __src, 0x42uLL);
  v8 = *a4;
  v9 = __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v10 = __dst[0];
  v11 = __dst[1];
  v12 = __dst[2];
  v13 = BYTE1(__dst[8]);
  v25 = *&__dst[3];
  v26 = __dst[5];
  v27 = __dst[6];
  v28 = __dst[7];
  v29 = LOWORD(__dst[8]);
  v14 = *v9;
  sub_26D15CD44(a1, a2, &v25, __dst[0], __dst[1]);
  v16 = v15;
  v31.width = v10;
  v31.height = v11;
  UIGraphicsBeginImageContextWithOptions(v31, 0, v12);
  v17 = UIGraphicsGetCurrentContext();
  if (v17)
  {
    v18 = v17;
    v19 = sub_26D14CE24(v16);
    for (i = 0; v19 != i; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x26D6B38E0](i, v16);
      }

      else
      {
        if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v21 = *(v16 + 8 * i + 32);
      }

      v22 = v21;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      sub_26D16040C(i, v21, v8, v18, __dst);
    }

    v23 = UIGraphicsGetImageFromCurrentImageContext();
    v24 = v23;
    if (v23)
    {
      if (v13)
      {
        [(UIImage *)v23 imageWithHorizontallyFlippedOrientation];
      }
    }

    UIGraphicsEndImageContext();
  }

  else
  {

    sub_26D14CDDC();
    v18 = sub_26D1744B4();
    sub_26D174404();
    sub_26D174164();
  }
}

void sub_26D16040C(uint64_t a1, void *a2, uint64_t a3, CGContext *a4, CGFloat *a5)
{
  if (*(a3 + 16) > a1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      v8 = (a3 + 16 * a1 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (qword_2804DD808 != -1)
  {
LABEL_25:
    swift_once();
  }

  v8 = &qword_2804DDC50;
LABEL_6:
  v9 = *v8;
  if (v8[1])
  {
    v10 = objc_opt_self();
    sub_26D14E2C4(v9, 1);
    sub_26D14E2C4(v9, 1);
    v11 = [v10 clearColor];
    [v11 setFill];

    [a2 addClip];
    v12 = sub_26D14CE24(v9);
    if (v12)
    {
      v13 = v12;
      v24 = MEMORY[0x277D84F90];
      sub_26D174674();
      if (v13 < 0)
      {
        __break(1u);
        return;
      }

      colors = a5;
      v14 = 0;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x26D6B38E0](v14, v9);
        }

        else
        {
          v15 = *(v9 + 8 * v14 + 32);
        }

        v16 = v15;
        ++v14;
        v17 = [v15 CGColor];

        sub_26D174654();
        v18 = *(v24 + 16);
        sub_26D174684();
        sub_26D174694();
        sub_26D174664();
      }

      while (v13 != v14);
      sub_26D14ABA0(v9, 1);
      a5 = colors;
    }

    else
    {
      sub_26D14ABA0(v9, 1);
    }

    type metadata accessor for CGColor(0);
    colorsa = sub_26D1742A4();

    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v20 = CGGradientCreateWithColors(DeviceRGB, colorsa, 0);

    if (v20)
    {
      v27.y = a5[1];
      v26.x = 0.0;
      v26.y = 0.0;
      v27.x = 0.0;
      CGContextDrawLinearGradient(a4, v20, v26, v27, 0);
    }

    [a2 fill];
    sub_26D14ABA0(v9, 1);
  }

  else
  {
    sub_26D14E2C4(*v8, 0);
    [v9 setFill];
    [a2 fill];
    [a2 fill];

    sub_26D14ABA0(v9, 0);
  }
}

uint64_t sub_26D160748()
{
  v0 = sub_26D174234();
  v2 = v1;
  if (v0 == sub_26D174234() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_26D1747E4();
  }

  return v5 & 1;
}

Swift::Int_optional __swiftcall CategoryAxis.index(of:)(Swift::String of)
{
  v2 = *(v1 + *(type metadata accessor for CategoryAxis() + 20));
  if (*(v2 + 16) && (v3 = sub_26D147140(), (v4 & 1) != 0))
  {
    v5 = 0;
    v6 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v6 = 0;
    v5 = 1;
  }

  result.value = v6;
  result.is_nil = v5;
  return result;
}

uint64_t CategoryAxis.categories.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_16();
  sub_26D142A64(0, v3, v4, v5, v6);
  v8 = OUTLINED_FUNCTION_0_8(v7);
  v10 = *(v9 + 16);

  return v10(a1, v1, v8);
}

uint64_t CategoryAxis.grids.getter()
{
  v1 = *(v0 + *(type metadata accessor for CategoryAxis() + 24));
}

uint64_t sub_26D1608EC()
{
  sub_26D174234();
  sub_26D174864();
  sub_26D174244();
  v0 = sub_26D174894();

  return v0;
}

unint64_t sub_26D160964(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26D174234();
  sub_26D174864();
  sub_26D174244();
  v4 = sub_26D174894();

  return sub_26D160ACC(a1, v4);
}

unint64_t sub_26D1609F8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_26D174854();

  return sub_26D160BC4(a1, v4);
}

unint64_t sub_26D160A3C(double a1)
{
  OUTLINED_FUNCTION_2_7();
  sub_26D174244();
  v4 = 0.0;
  if (a1 != 0.0)
  {
    v4 = a1;
  }

  MEMORY[0x26D6B3B20](*&v4);
  v5 = sub_26D174894();

  return sub_26D160C24(v2, v1, v5, a1);
}

unint64_t sub_26D160ACC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_26D174234();
    v8 = v7;
    if (v6 == sub_26D174234() && v8 == v9)
    {

      return i;
    }

    v11 = sub_26D1747E4();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_26D160BC4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_26D160C24(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a3 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      v14 = *(v13 + 16);
      v15 = *v13 == a1 && *(v13 + 8) == a2;
      if (v15 || (sub_26D1747E4()) && v14 == a4)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

void sub_26D160D04(int a1, void *a2, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  [a2 setFrame_];
  [a2 setAlpha_];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  sub_26D146644();
  v6 = sub_26D174454();
  sub_26D173FB4();

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_26D1614D8;
  *(v8 + 24) = v7;
  v9 = a2;
  v10 = sub_26D1740A4();
  sub_26D1740B4();
}

uint64_t sub_26D160E74()
{
  sub_26D16159C(0, &qword_2812B8988, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_26D1740E4();
}

uint64_t sub_26D160EF8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = 0;
  v8 = *(a5 + 64);
  v9 = *(v8 + 16);
  v10 = OBJC_IVAR____TtC9TeaCharts8GridView_gridLayers;
  v11 = v8 + 32;
  while (1)
  {
    if (v9 == v7)
    {
      v21 = 0;
      v22 = *(a5 + 72);
      v23 = *(v22 + 16);
      v24 = OBJC_IVAR____TtC9TeaCharts8GridView_labels;
      v47 = *MEMORY[0x277D76528];
      v25 = (v22 + 72);
      v48 = v23;
      while (1)
      {
        if (v23 == v21)
        {
          return a1();
        }

        v26 = *(v25 - 5);
        v27 = *(v25 - 4);
        v28 = *(v25 - 3);
        v29 = *(v25 - 2);
        v30 = *(v25 - 1);
        v31 = *v25;
        result = swift_beginAccess();
        v32 = *(a6 + v24);
        if ((v32 & 0xC000000000000001) != 0)
        {
          v45 = v26;
          v35 = MEMORY[0x26D6B38E0](v21, v32);
        }

        else
        {
          if (v21 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v33 = *(v32 + 8 * v21 + 32);
          v34 = v26;
          v35 = v33;
        }

        v36 = v35;
        swift_endAccess();
        if (!v26)
        {
          goto LABEL_16;
        }

        if (v31)
        {
          break;
        }

        v37 = v26;
        [v36 setAttributedText_];
        [v36 setFrame_];
        result = [v37 length];
        if (result < 0)
        {
          goto LABEL_24;
        }

        v38 = result;
        v39 = swift_allocObject();
        *(v39 + 16) = v36;
        v40 = v39;
        v41 = swift_allocObject();
        *(v41 + 16) = sub_26D1614E8;
        *(v41 + 24) = v40;
        aBlock[4] = sub_26D1614F0;
        aBlock[5] = v41;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_26D161344;
        aBlock[3] = &block_descriptor_17;
        v42 = _Block_copy(aBlock);
        v43 = v36;

        [v37 enumerateAttribute:v47 inRange:0 options:v38 usingBlock:{0, v42}];

        v44 = v42;
        v23 = v48;
        _Block_release(v44);
        LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

        if (v38)
        {
          goto LABEL_25;
        }

LABEL_19:
        v25 += 48;
        ++v21;
      }

LABEL_16:
      goto LABEL_19;
    }

    v12 = *(v11 + 8 * v7);
    result = swift_beginAccess();
    v14 = *(a6 + v10);
    if ((v14 & 0xC000000000000001) == 0)
    {
      break;
    }

    v20 = v12;
    v17 = MEMORY[0x26D6B38E0](v7, v14);
LABEL_6:
    v18 = v17;
    swift_endAccess();
    v19 = [v12 CGPath];
    [v18 setPath_];

    ++v7;
  }

  if (v7 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v14 + 8 * v7 + 32);
    v16 = v12;
    v17 = v15;
    goto LABEL_6;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_26D1612C0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5)
{
  sub_26D1615FC(a1, v9);
  if (v10)
  {
    if (swift_dynamicCast())
    {
      sub_26D156DC0(v7, v8, a5);
      *a4 = 1;
    }
  }

  else
  {
    sub_26D161518(v9);
  }
}

uint64_t sub_26D161344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v12 = a2;
    sub_26D1615EC(&v12, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  swift_unknownObjectRetain();
  v10(v14, a3, a4, a5);
  return sub_26D161518(v14);
}

void sub_26D1613E0(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_26D156AD8;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_26D149F38;
  v6[3] = &block_descriptor_0;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 animateWithDuration:v4 animations:0.15];
  _Block_release(v4);
}

uint64_t sub_26D1614D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_26D160E74();
}

uint64_t sub_26D1614F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26D161518(uint64_t a1)
{
  sub_26D16159C(0, &qword_2812B74D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26D16159C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_OWORD *sub_26D1615EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26D1615FC(uint64_t a1, uint64_t a2)
{
  sub_26D16159C(0, &qword_2812B74D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GridViewModelGenerator.models(for:options:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *(*v2 + 112);
  v30 = 1;
  v26 = v6;
  v27 = v8;
  v10 = v5[12];
  v11 = *(v10 + 24);
  v12 = v5[10];
  v13 = v8;
  v25 = v11(a1, &v30, &v26, v12, v10);
  v23 = *(*v3 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = v5[13];
  v16 = v5[11];
  v17 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v26 = AssociatedTypeWitness;
  v27 = v17;
  v28 = AssociatedConformanceWitness;
  v29 = v19;
  v20 = *(type metadata accessor for CoordinateSpace() + 52);
  v30 = 0;
  v26 = v7;
  v27 = v13;
  v21 = (*(v15 + 24))(a1 + v20, &v30, &v26, v16, v15);
  v26 = v25;
  sub_26D161B24(v21);

  return v26;
}

uint64_t *GridViewModelGenerator.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t GridViewModelGenerator.__deallocating_deinit()
{
  GridViewModelGenerator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26D161A4C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_26D161CF8(result, 1, sub_26D153268);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26D161B24(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_26D161CF8(result, 1, sub_26D153484);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26D161BFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 96);
  v3 = *(a2 + 80);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_26D161C1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  v3 = *(a2 + 88);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_26D161C3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_26D161C7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26D161CF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t ColumnChartModel.series.getter()
{
  v1 = *(v0 + *(type metadata accessor for ColumnChartModel() + 20));
}

double ColumnChartModel.options.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ColumnChartModel() + 24);
  result = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 41);
  *a1 = *v3;
  *(a1 + 16) = result;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 41) = v8;
  return result;
}

__n128 ColumnChartModel.init(coordinateSpace:series:options:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v14 = *a3;
  v6 = a3[1].n128_u64[0];
  v7 = a3[1].n128_u64[1];
  v8 = a3[2].n128_u64[0];
  v9 = a3[2].n128_u8[8];
  v10 = a3[2].n128_u8[9];
  sub_26D14770C(a1, a4);
  v11 = type metadata accessor for ColumnChartModel();
  *(a4 + *(v11 + 20)) = a2;
  v12 = (a4 + *(v11 + 24));
  result = v14;
  *v12 = v14;
  v12[1].n128_u64[0] = v6;
  v12[1].n128_u64[1] = v7;
  v12[2].n128_u64[0] = v8;
  v12[2].n128_u8[8] = v9;
  v12[2].n128_u8[9] = v10;
  return result;
}

uint64_t sub_26D161EE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26D161F44(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_26D161F84(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26D16200C(uint64_t a1, __int128 *a2)
{
  v19 = a2[1];
  v20 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  v8 = *(a2 + 64);
  v9 = *(a2 + 65);
  v10 = v2[10];
  v11 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v10);
  (*(v11 + 8))(__src, v10, v11);
  v12 = *&__src[0];
  if (!*&__src[0])
  {
    return 0;
  }

  v13 = __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v14 = *(a1 + *(type metadata accessor for ColumnChartModel() + 20));
  __src[1] = v19;
  __src[0] = v20;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v21 = v12;
  v15 = *v13;
  sub_26D1601E4(v14, a1, __src, &v21);
  v17 = v16;

  return v17;
}

uint64_t sub_26D162128(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v3 = v2[10];
  v4 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v3);
  v5 = (*(v4 + 8))(&v16, v3, v4);
  if (v16)
  {
    MEMORY[0x28223BE20](v5, v6);
    sub_26D16262C();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = sub_26D1740E4();

    return v10;
  }

  else
  {
    sub_26D1625D8();
    swift_allocError();
    *v12 = 0;
    sub_26D16262C();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    return sub_26D1740D4();
  }
}

uint64_t sub_26D162270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a4;
  v31 = a8;
  v29 = a3;
  v13 = type metadata accessor for ColumnChartModel();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8, v16);
  v17 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  __src[0] = *a5;
  *&__src[1] = *(a5 + 16);
  *(&__src[1] + 8) = *(a5 + 24);
  *(&__src[2] + 8) = *(a5 + 40);
  *(&__src[3] + 2) = *(a5 + 50);
  v28 = sub_26D173F34();
  sub_26D162698(a7, v17);
  v19 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 73) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = a6;
  sub_26D1626FC(v17, v23 + v19);
  memcpy((v23 + v20), __src, 0x42uLL);
  v24 = v30;
  *(v23 + v21) = v31;
  v25 = (v23 + v22);
  *v25 = v29;
  v25[1] = v24;
  v26 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_26D162690;
  v26[1] = v18;

  sub_26D173F24();
}

void sub_26D162478(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, void (*a5)(void), uint64_t a6, void (*a7)(void))
{
  v12 = __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  v13 = *(a2 + *(type metadata accessor for ColumnChartModel() + 20));
  memcpy(__dst, a3, 0x42uLL);
  v20 = a4;
  v14 = *v12;
  sub_26D1601E4(v13, a2, __dst, &v20);
  if (v15)
  {
    v19 = v15;
    a7();
    v16 = v19;
  }

  else
  {
    sub_26D1625D8();
    v17 = swift_allocError();
    *v18 = 1;
    a5();
    v16 = v17;
  }
}

unint64_t sub_26D1625D8()
{
  result = qword_2804DD988;
  if (!qword_2804DD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DD988);
  }

  return result;
}

void sub_26D16262C()
{
  if (!qword_2812B7B78)
  {
    sub_26D148D08();
    v0 = sub_26D1740F4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B7B78);
    }
  }
}

uint64_t sub_26D162698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColumnChartModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D1626FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColumnChartModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26D162760()
{
  v1 = *(type metadata accessor for ColumnChartModel() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 73) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  sub_26D162478(v6, v0 + v2, (v0 + v3), v7, v8, v9, v11);
}

_BYTE *storeEnumTagSinglePayload for ColumnChartImageLoader.ColumnChartImageLoaderError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26D1628FC()
{
  result = qword_2804DD990;
  if (!qword_2804DD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DD990);
  }

  return result;
}

uint64_t sub_26D16295C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t LineChartModel.series.getter()
{
  v1 = *(v0 + *(type metadata accessor for LineChartModel() + 20));
}

uint64_t LineChartModel.tcAccessibleXAxisTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for LineChartModel() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t LineChartModel.tcAccessibleXAxisTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LineChartModel() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t LineChartModel.tcAccessibleYAxisTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for LineChartModel() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t LineChartModel.tcAccessibleYAxisTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LineChartModel() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t LineChartModel.marketTimeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LineChartModel() + 32);
  v4 = sub_26D173E24();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LineChartModel.init(coordinateSpace:series:marketTimeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for LineChartModel();
  v9 = (a4 + v8[6]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a4 + v8[7]);
  *v10 = 0;
  v10[1] = 0;
  sub_26D14770C(a1, a4);
  *(a4 + v8[5]) = a2;
  v11 = v8[8];
  v12 = sub_26D173E24();
  v13 = *(*(v12 - 8) + 32);

  return v13(a4 + v11, a3, v12);
}

id sub_26D162CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v42 = a7;
  sub_26D164A04(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_8(*((*MEMORY[0x277D85000] & *v7) + 0xE8));
  OUTLINED_FUNCTION_2_8(*(v18 + 240));
  OUTLINED_FUNCTION_2_8(*(v19 + 248));
  v21 = *(v20 + 256);
  sub_26D158310();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v7 + v21) = sub_26D173F84();
  OUTLINED_FUNCTION_1_10();
  v26 = *(v25 + 264);
  v27 = type metadata accessor for ColumnChartModel();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v27);
  sub_26D164A38(0, &qword_2812B89A0, sub_26D164A04, MEMORY[0x277D6CB60]);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *(v7 + v26) = sub_26D173F84();
  OUTLINED_FUNCTION_1_10();
  *(v7 + *(v31 + 176)) = a1;
  OUTLINED_FUNCTION_1_10();
  *(v7 + *(v32 + 184)) = a2;
  OUTLINED_FUNCTION_1_10();
  *(v7 + *(v33 + 192)) = a3;
  OUTLINED_FUNCTION_1_10();
  sub_26D146A14(a4, v7 + *(v34 + 200));
  OUTLINED_FUNCTION_1_10();
  sub_26D146A14(a5, v7 + *(v35 + 208));
  OUTLINED_FUNCTION_1_10();
  *(v7 + *(v36 + 216)) = v41;
  OUTLINED_FUNCTION_1_10();
  *(v7 + *(v37 + 224)) = v42;
  sub_26D144DB4();
  v43.receiver = v7;
  v43.super_class = v38;
  v39 = objc_msgSendSuper2(&v43, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v39;
}

id sub_26D162F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v32 = a6;
  v33 = a7;
  sub_26D1649D0(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277D85000];
  *(v7 + *((*MEMORY[0x277D85000] & *v7) + 0xE8)) = 0;
  *(v7 + *((*v19 & *v7) + 0xF0)) = 0;
  *(v7 + *((*v19 & *v7) + 0xF8)) = 0;
  v20 = *((*v19 & *v7) + 0x100);
  sub_26D158310();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v7 + v20) = sub_26D173F84();
  v24 = *((*v19 & *v7) + 0x108);
  v25 = type metadata accessor for LineChartModel();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v25);
  sub_26D164A38(0, &qword_2812B7BA8, sub_26D1649D0, MEMORY[0x277D6CB60]);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  *(v7 + v24) = sub_26D173F84();
  *(v7 + *((*v19 & *v7) + 0xB0)) = a1;
  *(v7 + *((*v19 & *v7) + 0xB8)) = a2;
  *(v7 + *((*v19 & *v7) + 0xC0)) = a3;
  sub_26D146A14(a4, v8 + *((*v19 & *v8) + 0xC8));
  sub_26D146A14(a5, v8 + *((*v19 & *v8) + 0xD0));
  *(v7 + *((*v19 & *v7) + 0xD8)) = v32;
  *(v7 + *((*v19 & *v7) + 0xE0)) = v33;
  sub_26D143F5C();
  v34.receiver = v7;
  v34.super_class = v29;
  v30 = objc_msgSendSuper2(&v34, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v30;
}

void *sub_26D1632B4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2;
  v2[3] = MEMORY[0x277D84F90];
  v2[4] = 0;
  v6 = objc_allocWithZone(type metadata accessor for TapDragGestureRecognizer());
  v2[5] = sub_26D166608();
  v2[6] = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  v2[7] = 0;
  v7 = *(*v2 + 144);
  v8 = a2(0);
  __swift_storeEnumTagSinglePayload(v4 + v7, 1, 1, v8);
  v4[2] = a1;
  [v4[5] addTarget:v4 action:sel_handleGestureWithGesture_];
  return v4;
}

id sub_26D16338C(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LineChartViewProvider();
  result = sub_26D173EE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LineChartCoordinateProvider();
  result = sub_26D173EE4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D14436C(0, &qword_2812B9B30, &type metadata for LineChartStyle, type metadata accessor for StyleManager);
  result = sub_26D173EE4();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B8BB8);
  result = sub_26D173EF4();
  if (!v19[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = type metadata accessor for GridViewProvider();
  result = sub_26D173EE4();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18[3] = v11;
  v18[4] = &protocol witness table for GridViewProvider;
  v18[0] = result;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D144468();
  result = sub_26D173EC4();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = result;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1445D8();
  result = sub_26D173EC4();
  if (result)
  {
    v15 = result;
    sub_26D143F5C();
    v17 = objc_allocWithZone(v16);
    return sub_26D162F7C(v4, v6, v8, v19, v18, v13, v15);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26D1635FC(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for LineChartRenderer();
  result = sub_26D173EE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v45 = v3;
  v46 = &off_287E8ACE0;
  v44[0] = result;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, qword_2812B9320);
  result = sub_26D173EF4();
  if (!v43)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D14340C();
  result = sub_26D173EE4();
  if (result)
  {
    v7 = result;
    v8 = v45;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    v37[2] = v37;
    v10 = *(*(v8 - 8) + 64);
    MEMORY[0x28223BE20](v9, v9);
    v12 = (v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = v43;
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
    v37[1] = v37;
    v16 = *(*(v14 - 8) + 64);
    MEMORY[0x28223BE20](v15, v15);
    v18 = (v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v12;
    v21 = *v18;
    v41[3] = v3;
    v41[4] = &off_287E8ACE0;
    v41[0] = v20;
    v22 = type metadata accessor for LineChartStyler();
    v39 = v22;
    v40 = &off_287E8BB98;
    v38[0] = v21;
    type metadata accessor for LineChartViewProvider();
    v23 = swift_allocObject();
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v41, v3);
    v25 = *(*(v3 - 8) + 64);
    MEMORY[0x28223BE20](v24, v24);
    v27 = (v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    v29 = v39;
    v30 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    v31 = *(*(v29 - 8) + 64);
    MEMORY[0x28223BE20](v30, v30);
    v33 = (v37 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33);
    v35 = *v27;
    v36 = *v33;
    v23[5] = v3;
    v23[6] = &off_287E8ACE0;
    v23[2] = v35;
    v23[10] = v22;
    v23[11] = &off_287E8BB98;
    v23[12] = v7;
    v23[7] = v36;
    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v41);
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return v23;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26D163A2C(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LineChartInteractor();
  result = sub_26D173EE4();
  if (result)
  {
    v3 = result;
    type metadata accessor for LineSeriesAccessibilityElementProvider();
    swift_allocObject();
    return sub_26D1658BC(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D163AA4()
{
  sub_26D14436C(0, &qword_2812B9B30, &type metadata for LineChartStyle, type metadata accessor for StyleManager);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_26D163AF4(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B9048);
  result = sub_26D173EF4();
  if (!v35)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, qword_2812B9320);
  result = sub_26D173EF4();
  if (!v33)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B9040);
  result = sub_26D173EF4();
  if (!v31)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B9DD8);
  result = sub_26D173ED4();
  if (!v29)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LineSeriesAccessibilityElementProvider();
  result = sub_26D173EE4();
  if (result)
  {
    v8 = result;
    v9 = v35;
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
    v11 = *(*(v9 - 8) + 64);
    MEMORY[0x28223BE20](v10, v10);
    v13 = (&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = v33;
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
    v17 = *(*(v15 - 8) + 64);
    MEMORY[0x28223BE20](v16, v16);
    v19 = (&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = v31;
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    v23 = *(*(v21 - 8) + 64);
    MEMORY[0x28223BE20](v22, v22);
    v25 = (&v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = sub_26D1645F0(*v13, *v19, *v25, &v28, v8);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v34);
    return v27;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_26D163ED0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D14436C(0, &qword_2812B9B30, &type metadata for LineChartStyle, type metadata accessor for StyleManager);
  result = sub_26D173EE4();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for LineChartStyler();
    result = swift_allocObject();
    *(result + 16) = v5;
    a2[3] = v6;
    a2[4] = &off_287E8BB98;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D163F7C(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_8();
  type metadata accessor for LineChartInteractor();
  result = sub_26D173EE4();
  if (result)
  {
    v3 = result;
    sub_26D1445D8();
    v4 = swift_allocObject();
    sub_26D16455C();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    *(v4 + 16) = sub_26D1632B4(v3, type metadata accessor for LineChartModel);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D164024(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, qword_2812B8BC0);
  result = sub_26D173EF4();
  if (v6[3])
  {
    v4 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26D1433B8(0, &qword_2812B8C78);
    result = sub_26D173EF4();
    if (v5[3])
    {
      type metadata accessor for LineChartInteractor();
      swift_allocObject();
      return LineChartInteractor.init(categoryCoordinateCalculator:valueCoordinateCalculator:)(v6, v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26D16412C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B9110);
  result = sub_26D173EF4();
  if (v46)
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26D1433B8(0, qword_2812B9320);
    result = sub_26D173EF4();
    if (v44)
    {
      v7 = v46;
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
      v38[2] = v38;
      v9 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v8, v8);
      v11 = (v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = v44;
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
      v38[1] = v38;
      v15 = *(*(v13 - 8) + 64);
      MEMORY[0x28223BE20](v14, v14);
      v17 = (v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17);
      v19 = *v11;
      v20 = *v17;
      v21 = type metadata accessor for LineImageGenerator();
      v42[3] = v21;
      v42[4] = &off_287E8A7D0;
      v42[0] = v19;
      v22 = type metadata accessor for LineChartStyler();
      v40 = v22;
      v41 = &off_287E8BB98;
      v39[0] = v20;
      v23 = type metadata accessor for LineChartImageLoader();
      v24 = swift_allocObject();
      v25 = __swift_mutable_project_boxed_opaque_existential_1(v42, v21);
      v26 = *(*(v21 - 8) + 64);
      MEMORY[0x28223BE20](v25, v25);
      v28 = (v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v29 + 16))(v28);
      v30 = v40;
      v31 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
      v32 = *(*(v30 - 8) + 64);
      MEMORY[0x28223BE20](v31, v31);
      v34 = (v38 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v35 + 16))(v34);
      v36 = *v28;
      v37 = *v34;
      v24[5] = v21;
      v24[6] = &off_287E8A7D0;
      v24[2] = v36;
      v24[10] = v22;
      v24[11] = &off_287E8BB98;
      v24[7] = v37;
      __swift_destroy_boxed_opaque_existential_1(v39);
      __swift_destroy_boxed_opaque_existential_1(v42);
      __swift_destroy_boxed_opaque_existential_1(v43);
      result = __swift_destroy_boxed_opaque_existential_1(v45);
      a2[3] = v23;
      a2[4] = &off_287E8A8C0;
      *a2 = v24;
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

void sub_26D16455C()
{
  if (!qword_2812B7808)
  {
    type metadata accessor for LineChartInteractor();
    sub_26D143F14(qword_2812B93E0, type metadata accessor for LineChartInteractor);
    v0 = type metadata accessor for MultiTouchInteractionManager();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B7808);
    }
  }
}

void *sub_26D1645F0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v37 = a5;
  v9 = type metadata accessor for LineChartImageLoader();
  v44[3] = v9;
  v44[4] = &off_287E8A8C0;
  v44[0] = a1;
  v10 = type metadata accessor for LineChartStyler();
  v42 = v10;
  v43 = &off_287E8BB98;
  v41[0] = a2;
  v11 = type metadata accessor for LineZoneMaskProvider();
  v39 = v11;
  v40 = &off_287E8CAA8;
  v38[0] = a3;
  type metadata accessor for LineChartRenderer();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v44, v9);
  v14 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v13, v13);
  v16 = (&v38[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = v42;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v19, v19);
  v22 = (&v38[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = v39;
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v25, v25);
  v28 = (&v38[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v16;
  v31 = *v22;
  v32 = *v28;
  v12[5] = v9;
  v12[6] = &off_287E8A8C0;
  v12[2] = v30;
  v12[10] = v10;
  v12[11] = &off_287E8BB98;
  v12[12] = v32;
  v12[7] = v31;
  v12[15] = v11;
  v12[16] = &off_287E8CAA8;
  sub_26D164900();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v12[22] = sub_26D174064();
  sub_26D15166C(a4, (v12 + 17));
  v12[23] = v37;
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v12;
}

void sub_26D164900()
{
  if (!qword_2812B7B88)
  {
    sub_26D16498C();
    sub_26D14436C(255, &qword_2812B7600, &type metadata for LineChartImages, MEMORY[0x277D83940]);
    v0 = sub_26D174074();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B7B88);
    }
  }
}

unint64_t sub_26D16498C()
{
  result = qword_2812B89D0;
  if (!qword_2812B89D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812B89D0);
  }

  return result;
}

void sub_26D164A38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

id ColumnChartView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ColumnChartView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9TeaCharts15ColumnChartView_imageView;
  v2 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v3 = OUTLINED_FUNCTION_0_7();
  *(v0 + v1) = [v4 v5];
  sub_26D1746F4();
  __break(1u);
}

char *sub_26D164B90()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC9TeaCharts15ColumnChartView_imageView;
  v3 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v4 = OUTLINED_FUNCTION_0_7();
  *(v0 + v2) = [v5 v6];
  v7 = OUTLINED_FUNCTION_0_7();
  v10 = objc_msgSendSuper2(v8, v9, v7, v0, ObjectType);
  [v10 addSubview_];
  return v10;
}

Swift::Void __swiftcall ColumnChartView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9TeaCharts15ColumnChartView_imageView];
  [v0 bounds];
  [v1 setFrame_];
}

id ColumnChartView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ColumnChartView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26D164E10@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (v4)
  {
    *a1 = v4;
  }

  else
  {
    sub_26D164FC0();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26D177440;
    if (qword_2804DD800 != -1)
    {
      OUTLINED_FUNCTION_0_18();
    }

    *(v5 + 32) = qword_2804DDB10;
    *a1 = v5;
  }
}

uint64_t sub_26D164EBC(uint64_t a1)
{
  sub_26D164E10(&v7);
  v2 = sub_26D14CE24(v7);

  if (v2 <= a1)
  {
    if (qword_2804DD800 != -1)
    {
      OUTLINED_FUNCTION_0_18();
    }

    v5 = qword_2804DDB10;
  }

  else
  {
    sub_26D164E10(&v7);
    v3 = v7;
    v4 = v7 & 0xC000000000000001;
    sub_26D1601E0(a1, (v7 & 0xC000000000000001) == 0, v7);
    if (v4)
    {
      v5 = MEMORY[0x26D6B38E0](a1, v3);
    }

    else
    {
      v5 = *(v3 + 8 * a1 + 32);
    }
  }

  return v5;
}

void sub_26D164FC0()
{
  if (!qword_2812B7C60)
  {
    v0 = sub_26D1747C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B7C60);
    }
  }
}

uint64_t sub_26D16509C()
{
  sub_26D174864();
  MEMORY[0x26D6B3B10](0);
  return sub_26D174894();
}

uint64_t sub_26D1650F0()
{
  sub_26D174864();
  MEMORY[0x26D6B3B10](0);
  return sub_26D174894();
}

uint64_t sub_26D165130()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_26D165194()
{
  result = qword_2804DD9A0;
  if (!qword_2804DD9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DD9A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SparklineLoader.SparklineLoaderError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SparklineLoader.SparklineLoaderError(_BYTE *result, int a2, int a3)
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

unint64_t sub_26D1652EC()
{
  result = qword_2804DD9A8;
  if (!qword_2804DD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DD9A8);
  }

  return result;
}

uint64_t sub_26D165340(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t sub_26D165380(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id SparklineView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SparklineView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_1_11();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_0_19();

  return [v2 v3];
}

id SparklineView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall LineSeriesAccessibilityElementProvider.clearElements()()
{
  swift_beginAccess();
  sub_26D165F88(0, qword_2812B7640, MEMORY[0x277D834E8]);
  sub_26D1741C4();
  swift_endAccess();
}

id LineSeriesAccessibilityElementProvider.seriesContainerElement(for:in:chartModel:)(unint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for LineChartModel();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(v3 + 24);
  if (*(v13 + 16) && (v14 = sub_26D1609F8(a1), (v15 & 1) != 0))
  {
    v27 = *(*(v13 + 56) + 8 * v14);
    swift_endAccess();
    v16 = v27;

    return v16;
  }

  else
  {
    result = swift_endAccess();
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v18 = *(a3 + *(v8 + 20));
      if (*(v18 + 16) > a1)
      {
        v19 = (v18 + 24 * a1);
        v20 = v19[5];
        v21 = v19[6];
        v29[0] = v19[4];
        v29[1] = v20;
        v29[2] = v21;
        sub_26D14F5B8(a3, v12);
        v22 = *(v4 + 16);
        objc_allocWithZone(type metadata accessor for LineSeriesAccessibilityElement());

        v23 = sub_26D16B71C(a2, v29, v12);
        swift_beginAccess();
        v24 = v23;
        v25 = *(v4 + 24);
        swift_isUniquelyReferenced_nonNull_native();
        v28 = *(v4 + 24);
        sub_26D165ADC(v24, a1);
        *(v4 + 24) = v28;
        swift_endAccess();
        return v24;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t LineSeriesAccessibilityElementProvider.currentZone.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v2 = OUTLINED_FUNCTION_0_20();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_26D156CB8(v2, v3);
}

uint64_t LineSeriesAccessibilityElementProvider.currentZone.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  swift_beginAccess();
  v5 = OUTLINED_FUNCTION_0_20();
  v6 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v6;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  return sub_26D156D08(v5, v7);
}

uint64_t sub_26D1658BC(uint64_t a1)
{
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 32) = 0u;
  v2 = MEMORY[0x277D84F98];
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  sub_26D156D08(v3, v4);
  return v1;
}

uint64_t LineSeriesAccessibilityElementProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OUTLINED_FUNCTION_0_20();
  sub_26D156D08(v3, v4);
  return v0;
}

uint64_t LineSeriesAccessibilityElementProvider.__deallocating_deinit()
{
  LineSeriesAccessibilityElementProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void sub_26D16599C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_26D147140();
  OUTLINED_FUNCTION_1_12(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  sub_26D165E58(0, &qword_2812B7550, sub_26D165FF8);
  if ((sub_26D1746C4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_26D147140();
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    sub_26D174804();
    __break(1u);
    return;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    sub_26D165D68(v14, a2, a3, a1, v19);
  }
}

void sub_26D165ADC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_26D1609F8(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  sub_26D165F88(0, &qword_2812B7540, MEMORY[0x277D843B8]);
  if ((sub_26D1746C4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_26D1609F8(a2);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_13:
    sub_26D174804();
    __break(1u);
    return;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = v14[7];
    v16 = *(v15 + 8 * v9);
    *(v15 + 8 * v9) = a1;
  }

  else
  {

    sub_26D165DB0(v9, a2, a1, v14);
  }
}

uint64_t sub_26D165C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26D147140();
  OUTLINED_FUNCTION_1_12(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  sub_26D165E58(0, &qword_2812B7558, sub_26D165EBC);
  if ((sub_26D1746C4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_26D147140();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_26D174804();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {
    sub_26D165DF4(v16, a3, a4, a1, a2, v21);
  }
}

unint64_t sub_26D165D68(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_26D165DB0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_26D165DF4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void sub_26D165E58(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26D1746E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26D165EBC()
{
  if (!qword_2812B7C80)
  {
    sub_26D165F24();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812B7C80);
    }
  }
}

void sub_26D165F24()
{
  if (!qword_2812B7C98[0])
  {
    sub_26D142EBC();
    v0 = sub_26D1741E4();
    if (!v1)
    {
      atomic_store(v0, qword_2812B7C98);
    }
  }
}

void sub_26D165F88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LineSeriesAccessibilityElement();
    v7 = a3(a1, MEMORY[0x277D83B88], v6, MEMORY[0x277D83B98]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_26D165FF8()
{
  result = qword_2812B7C78;
  if (!qword_2812B7C78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812B7C78);
  }

  return result;
}

uint64_t CategoryZone.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void __swiftcall CategoryZone.init(identifier:from:to:)(TeaCharts::CategoryZone *__return_ptr retstr, Swift::String identifier, Swift::String from, Swift::String to)
{
  retstr->identifier = identifier;
  retstr->fromCategory = from;
  retstr->toCategory = to;
}

uint64_t static CategoryZone.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_26D1747E4() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v4 == v7;
  if (!v11 && (sub_26D1747E4() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_26D1747E4();
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

uint64_t sub_26D166194(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26D1661D4(uint64_t result, int a2, int a3)
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

uint64_t sub_26D166230(uint64_t a1)
{
  v2 = sub_26D16A758(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_26D16A7B8(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_26D16A9F8(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_26D16AA2C(v7, v9, v11 & 1);
  if (v12)
  {
    sub_26D16AA2C(v2, v4, v6 & 1);
    return 0;
  }

  else
  {
    sub_26D16A80C(v2, v4, v6 & 1, a1);
    v13 = v14;
    sub_26D16AA2C(v2, v4, v6 & 1);
  }

  return v13;
}

__n128 TapDragGestureRecognizer.locations.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_locations;
  OUTLINED_FUNCTION_1_13();
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 TapDragGestureRecognizer.locations.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_locations;
  OUTLINED_FUNCTION_6_2();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

double TapDragGestureRecognizer.minimumPressDuration.getter()
{
  v1 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_minimumPressDuration;
  OUTLINED_FUNCTION_1_13();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TapDragGestureRecognizer.minimumPressDuration.setter(double a1)
{
  v3 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_minimumPressDuration;
  result = OUTLINED_FUNCTION_6_2();
  *(v1 + v3) = a1;
  return result;
}

id TapDragGestureRecognizer.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TapDragGestureRecognizer.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_locations;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = -1;
  *(v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_minimumPressDuration) = 0x3FB999999999999ALL;
  if (sub_26D14CE24(MEMORY[0x277D84F90]))
  {
    v2 = sub_26D168118(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_touches) = v2;
  *(v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer) = 0;
  sub_26D1746F4();
  __break(1u);
}

id sub_26D166608()
{
  OUTLINED_FUNCTION_3_6();
  ObjectType = swift_getObjectType();
  v3 = *v1;
  v4 = v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_locations;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = -1;
  *(v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_minimumPressDuration) = 0x3FB999999999999ALL;
  if (sub_26D14CE24(MEMORY[0x277D84F90]))
  {
    v5 = sub_26D168118(MEMORY[0x277D84F90]);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_touches) = v5;
  *(v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer) = 0;
  *(v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_orientation) = v3;
  OUTLINED_FUNCTION_1_13();
  return objc_msgSendSuper2(v6, v7, v0, ObjectType);
}

void TapDragGestureRecognizer.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_touches;
  OUTLINED_FUNCTION_1_13();
  swift_beginAccess();
  v7 = *&v2[v6];

  v9 = sub_26D166BBC(v8);

  v10 = a1 & 0xC000000000000001;
  if (v9 > 1)
  {
    if (v10)
    {
      swift_unknownObjectRetain();
      sub_26D174544();
      sub_26D1682B4();
      sub_26D1682F8();
      OUTLINED_FUNCTION_4_3();
      a1 = v63;
      v14 = v64;
      v7 = v65;
      v15 = v66;
      v16 = v67;
    }

    else
    {
      v35 = -1 << *(a1 + 32);
      v14 = a1 + 56;
      v36 = *(a1 + 56);
      OUTLINED_FUNCTION_0_21();
      v16 = v37 & v38;

      v15 = 0;
    }

    v59 = v7;
    v39 = (v7 + 64) >> 6;
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v40 = sub_26D1745B4();
      if (!v40)
      {
        break;
      }

      v62 = v40;
      sub_26D1682B4();
      swift_dynamicCast();
      v41 = v61;
      v42 = v15;
      v43 = v16;
      if (!v61)
      {
        break;
      }

      while (1)
      {
        [v4 ignoreTouch:v41 forEvent:{a2, v59}];

        v15 = v42;
        v16 = v43;
        if (a1 < 0)
        {
          break;
        }

LABEL_33:
        v44 = v15;
        v42 = v15;
        if (!v16)
        {
          while (1)
          {
            v42 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              break;
            }

            if (v42 >= v39)
            {
              goto LABEL_40;
            }

            ++v44;
            if (*(v14 + 8 * v42))
            {
              goto LABEL_37;
            }
          }

LABEL_50:
          __break(1u);
          return;
        }

LABEL_37:
        OUTLINED_FUNCTION_2_9();
        v43 = v46 & v45;
        v41 = *(*(a1 + 48) + ((v42 << 9) | (8 * v47)));
        if (!v41)
        {
          goto LABEL_40;
        }
      }
    }

LABEL_40:
    sub_26D168350();
  }

  else
  {
    if (v10)
    {
      swift_unknownObjectRetain();
      sub_26D174544();
      sub_26D1682B4();
      sub_26D1682F8();
      OUTLINED_FUNCTION_4_3();
      a1 = v63;
      v11 = v64;
      v7 = v65;
      v12 = v66;
      v13 = v67;
    }

    else
    {
      v17 = -1 << *(a1 + 32);
      v11 = a1 + 56;
      v18 = *(a1 + 56);
      OUTLINED_FUNCTION_0_21();
      v13 = v19 & v20;

      v12 = 0;
    }

    v21 = (v7 + 64) >> 6;
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v22 = sub_26D1745B4();
      if (!v22)
      {
        break;
      }

      v62 = v22;
      sub_26D1682B4();
      swift_dynamicCast();
      v23 = v61;
      v24 = v12;
      v3 = v13;
      if (!v61)
      {
        break;
      }

      while (1)
      {
        v29 = *&v4[v6];
        if ((v29 & 0xC000000000000001) != 0)
        {
          if (v29 < 0)
          {
            v30 = *&v4[v6];
          }

          v31 = *&v4[v6];

          v32 = sub_26D174584();
        }

        else
        {
          v32 = *(v29 + 16);
        }

        if (v32 > 1)
        {
          [v4 ignoreTouch:v23 forEvent:a2];
        }

        else
        {
          swift_beginAccess();
          v33 = v23;
          sub_26D168358(&v62, v33);
          swift_endAccess();
        }

        v12 = v24;
        v13 = v3;
        if (a1 < 0)
        {
          break;
        }

LABEL_11:
        v25 = v12;
        v24 = v12;
        if (!v13)
        {
          while (1)
          {
            v24 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v24 >= v21)
            {
              goto LABEL_26;
            }

            ++v25;
            if (*(v11 + 8 * v24))
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_50;
        }

LABEL_15:
        OUTLINED_FUNCTION_2_9();
        v3 = v27 & v26;
        v23 = *(*(a1 + 48) + ((v24 << 9) | (8 * v28)));
        if (!v23)
        {
          goto LABEL_26;
        }
      }
    }

LABEL_26:
    sub_26D168350();
    if ([v4 state])
    {
      v34 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer;
    }

    else
    {
      v48 = *&v4[v6];

      sub_26D166BBC(v49);
      OUTLINED_FUNCTION_3_6();

      v34 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer;
      if (v3 == 1 && !*&v4[OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer])
      {
        v52 = *&v4[v6];

        sub_26D166230(v53);
        OUTLINED_FUNCTION_3_6();

        v54 = [v4 view];
        [1 locationInView_];
        v56 = v55;
        v58 = v57;

        sub_26D166BDC(v56, v58);
        return;
      }
    }

    if (*&v4[v34])
    {
      v50 = *&v4[v6];

      sub_26D166BBC(v51);
      OUTLINED_FUNCTION_3_6();

      if (v3 < 2)
      {
        return;
      }

      sub_26D1670B8();
    }

    sub_26D166D28();
  }
}

uint64_t sub_26D166BBC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_26D174584();
  }

  else
  {
    return *(a1 + 16);
  }
}

void sub_26D166BDC(double a1, double a2)
{
  v5 = objc_opt_self();
  v6 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_minimumPressDuration;
  swift_beginAccess();
  v7 = *&v2[v6];
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  aBlock[4] = sub_26D16A560;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26D167ECC;
  aBlock[3] = &block_descriptor_2;
  v9 = _Block_copy(aBlock);
  v10 = v2;

  v11 = [v5 scheduledTimerWithTimeInterval:0 repeats:v9 block:v7];
  _Block_release(v9);
  v12 = *&v10[OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer];
  *&v10[OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer] = v11;
}

id sub_26D166D28()
{
  v1 = &v0[OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_locations];
  swift_beginAccess();
  v2 = v1[32];
  v3 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_touches;
  swift_beginAccess();
  v4 = *&v0[v3];

  v6 = sub_26D166BBC(v5);

  v7 = *&v0[v3];

  if (v6 != 1)
  {
    v16 = sub_26D166BBC(v8);

    if (v16 < 2)
    {
      *v1 = 0u;
      *(v1 + 1) = 0u;
      v1[32] = -1;
      return [v0 setState_];
    }

    v17 = [v0 view];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 traitCollection];

      v20 = [v19 layoutDirection];
      v21 = v20 == 1;
    }

    else
    {
      v21 = 0;
    }

    v22 = *&v0[v3];
    v23 = v0;

    v46 = sub_26D168068(v24);
    sub_26D168E38(&v46, v23, v21);

    v25 = v46;
    v26 = v46 & 0xC000000000000001;
    v27 = (v46 & 0xC000000000000001) == 0;
    if (v21)
    {
      sub_26D1601E0(1, v27, v46);
      if (v26)
      {
        v28 = MEMORY[0x26D6B38E0](1, v25);
      }

      else
      {
        v28 = *(v25 + 40);
      }

      v29 = v28;
      sub_26D1601E0(0, v26 == 0, v25);
      if (v26)
      {
        v30 = 0;
LABEL_18:
        v32 = MEMORY[0x26D6B38E0](v30, v25);
LABEL_22:
        v34 = v32;

        v35 = [v23 view];
        [v29 locationInView_];
        v37 = v36;
        v39 = v38;

        v40 = [v23 view];
        [v34 locationInView_];
        v42 = v41;
        v44 = v43;

        *v1 = v37;
        *(v1 + 1) = v39;
        *(v1 + 2) = v42;
        *(v1 + 3) = v44;
        v1[32] = 1;
        goto LABEL_23;
      }

      v33 = *(v25 + 32);
    }

    else
    {
      sub_26D1601E0(0, v27, v46);
      if (v26)
      {
        v31 = MEMORY[0x26D6B38E0](0, v25);
      }

      else
      {
        v31 = *(v25 + 32);
      }

      v29 = v31;
      sub_26D1601E0(1, v26 == 0, v25);
      if (v26)
      {
        v30 = 1;
        goto LABEL_18;
      }

      v33 = *(v25 + 40);
    }

    v32 = v33;
    goto LABEL_22;
  }

  v9 = sub_26D166230(v8);

  if (!v9)
  {
    return result;
  }

  v11 = [v0 view];
  [v9 locationInView_];
  v13 = v12;
  v15 = v14;

  *v1 = v13;
  *(v1 + 1) = v15;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0;
  v1[32] = 0;
LABEL_23:
  if (v2 == 255)
  {
    v45 = 1;
  }

  else
  {
    v45 = 2;
  }

  return [v0 setState_];
}

void sub_26D1670B8()
{
  v1 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer;
  v2 = *(v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

id TapDragGestureRecognizer.touchesMoved(_:with:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_touches;
  OUTLINED_FUNCTION_1_13();
  swift_beginAccess();
  v4 = *(v1 + v3);

  sub_26D167218(a1, v4);
  LOBYTE(a1) = v5;

  if ((a1 & 1) == 0 && !*(v1 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer))
  {
    return sub_26D166D28();
  }

  return result;
}

void sub_26D167218(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (!sub_26D174584())
    {
      return;
    }
  }

  else if (!*(a2 + 16))
  {
    return;
  }

  v5 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (!sub_26D174584())
    {
      return;
    }
  }

  else if (!*(a1 + 16))
  {
    return;
  }

  if (!v4)
  {
    v6 = *(v2 + 16);
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_13:
    v7 = *(a1 + 16);
    goto LABEL_14;
  }

  v6 = sub_26D174584();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_11:
  v7 = sub_26D174584();
LABEL_14:
  if (v6 >= v7)
  {
    v8 = a1;
  }

  else
  {
    v8 = v2;
  }

  if (v6 < v7)
  {
    v2 = a1;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    sub_26D174544();
    sub_26D1682B4();
    sub_26D1682F8();
    sub_26D174364();
    v8 = v33;
    v9 = v34;
    v10 = v35;
    v11 = v36;
    v12 = v37;
  }

  else
  {
    v13 = -1 << *(v8 + 32);
    v9 = v8 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v8 + 56);

    v11 = 0;
  }

  sub_26D1682B4();
  v29 = v9;
  v16 = (v10 + 64) >> 6;
  v17 = v2 & 0xC000000000000001;
  v30 = v8;
  while (1)
  {
    while (v8 < 0)
    {
      if (!sub_26D1745B4())
      {
LABEL_43:
        sub_26D168350();

        return;
      }

      swift_dynamicCast();
      v22 = v12;
      v20 = v32;
      v31 = v22;
      if (v17)
      {
        goto LABEL_33;
      }

LABEL_37:
      if (*(v2 + 16))
      {
        v23 = *(v2 + 40);
        v24 = sub_26D174494();
        v25 = ~(-1 << *(v2 + 32));
        while (1)
        {
          v26 = v24 & v25;
          if (((*(v2 + 56 + (((v24 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v25)) & 1) == 0)
          {
            break;
          }

          v27 = *(*(v2 + 48) + 8 * v26);
          v28 = sub_26D1744A4();

          v24 = v26 + 1;
          if (v28)
          {
            sub_26D168350();

            goto LABEL_45;
          }
        }
      }

      v9 = v29;
      v8 = v30;
      v17 = v2 & 0xC000000000000001;
      v12 = v31;
    }

    v18 = v12;
    if (!v12)
    {
      break;
    }

LABEL_32:
    v31 = (v18 - 1) & v18;
    v32 = *(*(v8 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v18)))));
    v20 = v32;
    if (!v17)
    {
      goto LABEL_37;
    }

LABEL_33:
    v21 = sub_26D1745C4();

    v12 = v31;
    if (v21)
    {
      sub_26D168350();
LABEL_45:

      return;
    }
  }

  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_43;
    }

    v18 = *(v9 + 8 * v11);
    ++v19;
    if (v18)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
}

void TapDragGestureRecognizer.touchesEnded(_:with:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_26D174544();
    sub_26D1682B4();
    sub_26D1682F8();
    sub_26D174364();
    v3 = v25;
    v4 = v26;
    v1 = v27;
    v5 = v28;
    v6 = v29;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v8 = *(a1 + 56);
    OUTLINED_FUNCTION_0_21();
    v6 = v9 & v10;

    v5 = 0;
  }

  v11 = (v1 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v12 = v5;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_9:
    OUTLINED_FUNCTION_2_9();
    v16 = v15 & v14;
    v18 = *(*(v3 + 48) + ((v13 << 9) | (8 * v17)));
    if (!v18)
    {
LABEL_15:
      sub_26D168350();
      if (*&v2[OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer] && (v20 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_touches, OUTLINED_FUNCTION_1_13(), swift_beginAccess(), v21 = *&v2[v20], v22 = , v23 = sub_26D1677EC(v22), , v23))
      {
        [v2 setState_];
      }

      else
      {
        sub_26D166D28();
      }

      return;
    }

    while (1)
    {
      swift_beginAccess();
      v19 = sub_26D169F88(v18);
      swift_endAccess();

      v5 = v13;
      v6 = v16;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (sub_26D1745B4())
      {
        sub_26D1682B4();
        swift_dynamicCast();
        v18 = v24;
        v13 = v5;
        v16 = v6;
        if (v24)
        {
          continue;
        }
      }

      goto LABEL_15;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_15;
    }

    ++v12;
    if (*(v4 + 8 * v13))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

BOOL sub_26D1677EC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_26D174584();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_26D167844(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  sub_26D1682B4();
  sub_26D1682F8();
  v8 = sub_26D174354();
  v9 = a4;
  v10 = a1;
  a5(v8);
}

Swift::Void __swiftcall TapDragGestureRecognizer.reset()()
{
  sub_26D1670B8();
  if (sub_26D14CE24(MEMORY[0x277D84F90]))
  {
    v1 = sub_26D168118(MEMORY[0x277D84F90]);
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  v2 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_touches;
  OUTLINED_FUNCTION_6_2();
  v3 = *(v0 + v2);
  *(v0 + v2) = v1;

  v4 = v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_locations;
  OUTLINED_FUNCTION_6_2();
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = -1;
}

id TapDragGestureRecognizer.__allocating_init(target:action:)(uint64_t *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = *(v7 + 64);
    v9 = MEMORY[0x28223BE20](v6, v6);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v11, v9);
    v12 = sub_26D1747D4();
    (*(v7 + 8))(v11, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v2) initWithTarget:v12 action:a2];
  swift_unknownObjectRelease();
  return v13;
}

id TapDragGestureRecognizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_26D167C94(void **a1, void **a2, _BYTE *a3, char a4)
{
  v6 = *a1;
  v7 = *a2;
  v8 = a3[OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_orientation];
  v9 = [a3 view];
  [v6 locationInView_];
  v11 = v10;
  v13 = v12;

  v14 = [a3 view];
  [v7 locationInView_];
  v16 = v15;
  v18 = v17;

  v19 = v11 < v16;
  if (a4)
  {
    v19 = v16 < v11;
  }

  if (v8)
  {
    return v13 < v18;
  }

  else
  {
    return v19;
  }
}

void sub_26D167D9C(double a1, double a2, uint64_t a3, char *a4)
{
  sub_26D1670B8();
  v7 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_touches;
  swift_beginAccess();
  v8 = *&a4[v7];

  v10 = sub_26D166230(v9);

  if (v10)
  {
    v11 = [a4 view];
    [v10 locationInView_];
    v13 = v12;

    v14 = vabdd_f64(a1, v13);
    v15 = [a4 view];
    [v10 locationInView_];
    v17 = v16;

    v18 = vabdd_f64(a2, v17);
    if (v14 <= 5.0 && v18 <= 5.0)
    {
      sub_26D166D28();
    }

    else
    {
      [a4 setState_];
    }
  }
}