uint64_t sub_22052FB6C()
{

  return swift_deallocObject();
}

uint64_t sub_22052FBA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22052FC10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22052FC78(uint64_t a1)
{
  v35 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader(0);
  v2 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v34 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v39 = MEMORY[0x277D84F90];
    sub_220530120(0, v10, 0);
    v11 = v39;
    v12 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v13 = *(v2 + 72);
    do
    {
      sub_22052FBA8(v12, v9, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
      sub_22052FBA8(v9, v5, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {

          sub_220488E64(0, &qword_28128C9B0, type metadata accessor for SectionHeaderViewLayoutAttributes);
          v16 = *(v15 + 48);
          v37 = type metadata accessor for SectionHeaderViewLayoutAttributes();
          v38 = sub_220489D84(qword_281283408, type metadata accessor for SectionHeaderViewLayoutAttributes);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
          sub_22052FC10(&v5[v16], boxed_opaque_existential_1, type metadata accessor for SectionHeaderViewLayoutAttributes);
        }

        else
        {
          sub_2205DD068(0, &qword_281293BD8, type metadata accessor for StockViewModel, type metadata accessor for StockTitleViewLayoutAttributes);
          v22 = *(v21 + 48);
          v37 = type metadata accessor for StockTitleViewLayoutAttributes();
          v38 = sub_220489D84(&qword_281285408, type metadata accessor for StockTitleViewLayoutAttributes);
          v23 = __swift_allocate_boxed_opaque_existential_1(v36);
          sub_22052FC10(&v5[v22], v23, type metadata accessor for StockTitleViewLayoutAttributes);
          sub_2205303D4(v5, type metadata accessor for StockViewModel);
        }
      }

      else
      {
        sub_220488E64(0, &unk_28128F160, type metadata accessor for ForYouTitleViewLayoutAttributes);
        v19 = *(v18 + 48);
        v37 = type metadata accessor for ForYouTitleViewLayoutAttributes();
        v38 = sub_220489D84(qword_281284EF0, type metadata accessor for ForYouTitleViewLayoutAttributes);
        v20 = __swift_allocate_boxed_opaque_existential_1(v36);
        sub_22052FC10(&v5[v19], v20, type metadata accessor for ForYouTitleViewLayoutAttributes);
        sub_220515C00(v5);
      }

      sub_2205303D4(v9, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
      v39 = v11;
      v25 = *(v11 + 16);
      v24 = *(v11 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_220530120((v24 > 1), v25 + 1, 1);
      }

      v26 = v37;
      v27 = v38;
      v28 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      v29 = MEMORY[0x28223BE20](v28, v28);
      v31 = &v34 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 16))(v31, v29);
      sub_220530434(v25, v31, &v39, v26, v27);
      __swift_destroy_boxed_opaque_existential_1(v36);
      v11 = v39;
      v12 += v13;
      --v10;
    }

    while (v10);
  }

  return v11;
}

void *sub_220530120(void *a1, int64_t a2, char a3)
{
  result = sub_220530158(a1, a2, a3, *v3, &qword_28127DFF0, &qword_281297220, MEMORY[0x277D6EAD0]);
  *v3 = result;
  return result;
}

void *sub_220530158(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_2205302C0(0, a5, a6, a7, MEMORY[0x277D84560]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2204446D4(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_2205302C0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2204446D4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_220530328(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ForYouTitleViewLayoutAttributes();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2205303D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220530434(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_220457328(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_220530500(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StockTitleViewLayoutAttributes();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_220530578(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2205307EC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_2204446D4(0, &qword_281297220);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_220530684(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_220530808(0, a5, a6, a7, MEMORY[0x277D84560]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2204446D4(0, a6);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void sub_220530808(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2204446D4(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_220530870()
{
  result = qword_281280CB0;
  if (!qword_281280CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281280CB0);
  }

  return result;
}

unint64_t sub_2205308C8()
{
  result = qword_281280CA8;
  if (!qword_281280CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281280CA8);
  }

  return result;
}

unint64_t sub_220530920()
{
  result = qword_281280CA0;
  if (!qword_281280CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281280CA0);
  }

  return result;
}

uint64_t sub_220530974@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6E758];
  v3 = sub_22088D61C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2205309F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_22088D83C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_220530A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_22088D83C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_220530B14@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6E750];
  v3 = sub_22088D61C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_220530B88()
{
  sub_2204889B0(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v42 - v7;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v42 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v42 - v15;
  sub_220488B20(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ForYouFeedLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052FBA8(v0, v26, type metadata accessor for ForYouFeedLayoutSectionDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_22052FC10(v26, v22, sub_220488B20);
        v37 = sub_22053101C(*&v22[*(v18 + 36)]);
        sub_2205303D4(v22, sub_220488B20);
        return v37;
      }

      sub_22048934C();
      v30 = v29;

      sub_22052FC10(v26, v8, sub_2204889B0);
      sub_22052FBA8(v8, v4, sub_2204889B0);
      v31 = (*(v19 + 48))(v4, 1, v18);
      v32 = sub_2204889B0;
      if (v31 == 1)
      {
        v33 = MEMORY[0x277D84F90];
      }

      else
      {
        v33 = *&v4[*(v18 + 36)];

        v32 = sub_220488B20;
      }

      sub_2205303D4(v4, v32);
      v39 = *(v30 + 64);
      v40 = sub_22053101C(v33);

      sub_2205303D4(v8, sub_2204889B0);
      v41 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.StockSectionFooter;
    }

    else
    {
      sub_22052FC10(v26, v16, sub_2204889B0);
      sub_22052FBA8(v16, v12, sub_2204889B0);
      v34 = (*(v19 + 48))(v12, 1, v18);
      v35 = sub_2204889B0;
      if (v34 == 1)
      {
        v36 = MEMORY[0x277D84F90];
      }

      else
      {
        v36 = *&v12[*(v18 + 36)];

        v35 = sub_220488B20;
      }

      sub_2205303D4(v12, v35);
      sub_2205DD068(0, &qword_281283710, sub_2204889B0, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader);
      v39 = *(v38 + 48);
      v40 = sub_22053101C(v36);

      sub_2205303D4(v16, sub_2204889B0);
      v41 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader;
    }

    sub_2205303D4(&v26[v39], v41);
    return v40;
  }

  return result;
}

uint64_t sub_22053101C(uint64_t a1)
{
  v26 = sub_22088F7AC();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.Decoration(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v25 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v23 - v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v28 = MEMORY[0x277D84F90];
    sub_22070C384(0, v14, 0);
    v15 = v28;
    v16 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v24 = *(v7 + 72);
    do
    {
      sub_22052FBA8(v16, v13, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Decoration);
      v17 = v25;
      sub_22052FBA8(v13, v25, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Decoration);
      v18 = v17;
      v19 = v26;
      (*(v2 + 32))(v5, v18, v26);
      sub_22088F78C();
      (*(v2 + 8))(v5, v19);
      sub_2205303D4(v13, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Decoration);
      v28 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22070C384((v20 > 1), v21 + 1, 1);
        v15 = v28;
      }

      *(v15 + 16) = v21 + 1;
      sub_220457328(&v27, v15 + 40 * v21 + 32);
      v16 += v24;
      --v14;
    }

    while (v14);
  }

  return v15;
}

uint64_t sub_2205312B8()
{
  v1 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FF294(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload >= 2)
    {
      sub_220503C2C(v4, type metadata accessor for ForYouFeedModel);
      return 1;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      return 0;
    }

LABEL_8:
    sub_220503C2C(v4, type metadata accessor for ForYouFeedModel);
    return 0;
  }

  if (EnumCaseMultiPayload != 3)
  {
    goto LABEL_8;
  }

  sub_220458918();
  v7 = *(v6 + 48);
  v8 = sub_22089030C();
  (*(*(v8 - 8) + 8))(&v4[v7], v8);
  return 0;
}

id sub_220531410(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    v6 = [result currentReachabilityStatus];

    if ((v6 & 0x10) != 0)
    {
      return a1;
    }

    else
    {
      return a2;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2205314B8()
{
  sub_220885ACC();
  sub_220888FBC();
  v0 = sub_220888D9C();
  sub_22088A69C();
  v1 = sub_220888E4C();

  return v1;
}

uint64_t sub_2205315A0(uint64_t a1, int a2)
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

uint64_t sub_2205315C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for StockChartModelFactoryProvider.Axis(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for StockChartModelFactoryProvider.Axis(uint64_t result, int a2, int a3)
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

uint64_t sub_2205316B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22089136C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_220531724()
{
  sub_22055F760();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2205317AC()
{
  sub_22055F760();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  (*(v3 + 8))(v0 + ((v4 + 64) & ~v4), v2);

  return swift_deallocObject();
}

uint64_t sub_220531880()
{

  return swift_deallocObject();
}

uint64_t sub_2205318BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22088516C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220531968(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22088516C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220531A0C@<X0>(uint64_t *a1@<X8>)
{
  sub_220884BFC();
  result = sub_220884BEC();
  *a1 = result;
  return result;
}

uint64_t sub_220531A3C()
{

  return swift_deallocObject();
}

uint64_t sub_220531A74(uint64_t a1, uint64_t a2)
{
  sub_22045343C(0, &qword_2812968D8, MEMORY[0x277D33478]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220531AFC(uint64_t a1, uint64_t a2)
{
  sub_22045343C(0, &qword_2812968D8, MEMORY[0x277D33478]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220531B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_22088D83C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_220531C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_22088D83C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_220531C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22088D83C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_220531D3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22088D83C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220531DFC()
{
  v1 = sub_22089030C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_220531EC0()
{
  v1 = sub_2208854FC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_220531F5C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220531F94()
{
  v1 = sub_2208854FC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_220532040()
{
  v1 = sub_2208854FC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_220569484(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v14 = *(*(v5 - 8) + 64);
  v8 = sub_22088665C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v11 = sub_22088676C();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  (*(v9 + 8))(v0 + ((v7 + v14 + v10) & ~v10), v8);

  return swift_deallocObject();
}

uint64_t sub_2205322D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22088C32C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22053239C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22088C32C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_220532454()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_22053248C()
{

  return swift_deallocObject();
}

uint64_t sub_2205324C4()
{
  v1 = sub_22088F17C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_22053259C()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_2205325E4()
{

  return swift_deallocObject();
}

uint64_t sub_220532624()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_22053265C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220532694()
{
  sub_22055DDDC();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_220532758()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220532794()
{
  v1 = type metadata accessor for WatchlistCreationRouteModel();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = sub_22088685C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  if (*(v0 + v2 + *(v1 + 20)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2205328D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220532910()
{

  return swift_deallocObject();
}

uint64_t sub_220532970()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2205329A8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2205329E0()
{

  return swift_deallocObject();
}

uint64_t sub_220532A18(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2208854FC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_22088543C();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_220532B20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2208854FC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_22088543C();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_220532C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22088C32C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_220532CF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22088C32C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_220532DB0()
{

  return swift_deallocObject();
}

uint64_t sub_220532DE8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_220532E24()
{
  sub_2204AD9C0(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;

  __swift_destroy_boxed_opaque_existential_1(v5 + 16);

  __swift_destroy_boxed_opaque_existential_1(v5 + 64);

  return swift_deallocObject();
}

uint64_t sub_220532F0C()
{

  return swift_deallocObject();
}

uint64_t sub_220532F44()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220532F7C()
{

  return swift_deallocObject();
}

uint64_t sub_220532FBC()
{

  return swift_deallocObject();
}

uint64_t sub_220532FF4()
{

  return swift_deallocObject();
}

uint64_t sub_220533034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22088665C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_2208854FC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_220533158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22088665C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_2208854FC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22053327C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2205332B4()
{

  return swift_deallocObject();
}

uint64_t sub_2205332EC()
{

  return swift_deallocObject();
}

uint64_t sub_220533324()
{

  return swift_deallocObject();
}

uint64_t sub_220533384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22088F39C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220533444(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22088F39C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220533500()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_22053353C()
{
  v1 = *(type metadata accessor for StocksActivity.Article(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = v0 + v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_2208876BC();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    if (EnumCaseMultiPayload != 1)
    {
      sub_220447128(0, &qword_281298A00, MEMORY[0x277D30268], MEMORY[0x277D2FF20]);
      v6 = *(v5 + 48);
      v7 = sub_220887C9C();
      (*(*(v7 - 8) + 8))(v3 + v6, v7);
    }

    sub_2204481D8();
    v9 = v3 + *(v8 + 64);
    if (*(v9 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v9);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_2205336CC()
{

  return swift_deallocObject();
}

uint64_t sub_22053372C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22088C32C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2205337E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22088C32C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

uint64_t sub_22053389C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220533908(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220533978()
{
  sub_2205A071C(0, &qword_281298480, MEMORY[0x277D686D0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_220533AF0()
{
  v1 = sub_22088A2FC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_220533B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22088582C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220533C24(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22088582C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220533CC8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_220885ACC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_22088F87C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = type metadata accessor for StockFeedContentConfig();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = type metadata accessor for StockFeedServiceContext();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v17 = *(a1 + a3[8]);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  else
  {
    v18 = sub_22088685C();
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[10];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_220533ECC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_220885ACC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_22088F87C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for StockFeedContentConfig();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  result = type metadata accessor for StockFeedServiceContext();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
  }

  else
  {
    v18 = sub_22088685C();
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + a4[10];

    return v19(v20, a2, a2, v18);
  }

  return result;
}

uint64_t sub_2205340D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_220887FAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[8]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    sub_22044831C(0, &qword_281298210, MEMORY[0x277D35078], MEMORY[0x277D83D88]);
    v14 = v13;
    v15 = *(*(v13 - 8) + 48);
    v16 = a1 + a3[10];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_220534228(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_220887FAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
  }

  else
  {
    sub_22044831C(0, &qword_281298210, MEMORY[0x277D35078], MEMORY[0x277D83D88]);
    v14 = v13;
    v15 = *(*(v13 - 8) + 56);
    v16 = a1 + a4[10];

    return v15(v16, a2, a2, v14);
  }

  return result;
}

uint64_t sub_220534380()
{

  return swift_deallocObject();
}

uint64_t sub_2205343B8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2205343F8()
{

  return swift_deallocObject();
}

uint64_t sub_220534430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220886A4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2205344DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_220886A4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22053458C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2205345E8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220534620(uint64_t a1, uint64_t a2)
{
  sub_2204961E0(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22053468C(uint64_t a1, uint64_t a2)
{
  sub_2204961E0(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2205346FC()
{
  sub_22059A860(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_22053473C()
{
  sub_22044792C(0, &qword_281298480, MEMORY[0x277D686D0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2205348B4()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_2205348FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22088685C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2205349A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22088685C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220534A4C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_220885D4C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for AttributionSource();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = sub_220885ACC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_220534BB8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_220885D4C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for AttributionSource();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = sub_220885ACC();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_220534D24()
{

  return swift_deallocObject();
}

uint64_t sub_220534D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for QuoteSummaryViewModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220534E18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for QuoteSummaryViewModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220534EBC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22088A1EC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_22088A2FC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_220534FE0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_22088A1EC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_22088A2FC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_220535104(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22088685C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_220885D4C();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = sub_220885ACC();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_13;
  }

  sub_22046EAA0(0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[11];
    goto LABEL_13;
  }

  v18 = sub_2208854FC();
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[15];

  return v19(v20, a2, v18);
}

uint64_t sub_22053530C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_22088685C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 24) = (a2 - 1);
    return result;
  }

  v13 = sub_220885D4C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_220885ACC();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_11;
  }

  sub_22046EAA0(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[11];
    goto LABEL_11;
  }

  v18 = sub_2208854FC();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[15];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_220535514()
{
  v1 = type metadata accessor for StockFeedPrewarmBlueprintModifier();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_22088685C();
  (*(*(v3 - 8) + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[5]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[6]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[7]);
  v4 = v1[8];
  v5 = sub_220885D4C();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  v6 = v1[9];
  v7 = sub_220885ACC();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);
  v8 = v1[11];
  v9 = sub_22088516C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v2 + v8, 1, v9))
  {
    (*(v10 + 8))(v2 + v8, v9);
  }

  v12 = v1[12];
  if (!v11(v2 + v12, 1, v9))
  {
    (*(v10 + 8))(v2 + v12, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[13]);
  swift_unknownObjectRelease();
  v13 = v1[15];
  v14 = sub_2208854FC();
  (*(*(v14 - 8) + 8))(v2 + v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[16]);

  return swift_deallocObject();
}

uint64_t sub_2205357C0()
{
  v1 = type metadata accessor for StockFeedPrewarmBlueprintModifier();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_22088685C();
  (*(*(v3 - 8) + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[5]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[6]);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[7]);
  v4 = v1[8];
  v5 = sub_220885D4C();
  (*(*(v5 - 8) + 8))(v2 + v4, v5);
  v6 = v1[9];
  v7 = sub_220885ACC();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);
  v8 = v1[11];
  v9 = sub_22088516C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v2 + v8, 1, v9))
  {
    (*(v10 + 8))(v2 + v8, v9);
  }

  v12 = v1[12];
  if (!v11(v2 + v12, 1, v9))
  {
    (*(v10 + 8))(v2 + v12, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + v1[13]);
  swift_unknownObjectRelease();
  v13 = v1[15];
  v14 = sub_2208854FC();
  (*(*(v14 - 8) + 8))(v2 + v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v2 + v1[16]);

  return swift_deallocObject();
}

uint64_t sub_220535A84()
{

  return swift_deallocObject();
}

uint64_t sub_220535AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_22089226C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_220535B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_22089226C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_220535BB4()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220535BEC()
{
  v1 = *(type metadata accessor for StockFeedViewerPage() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = sub_22088685C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_220535CC8()
{
  v1 = *(type metadata accessor for StockFeedViewerPage() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088685C();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_220535DCC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_220535E0C()
{
  v1 = sub_22088F17C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_220535EE0()
{

  return swift_deallocObject();
}

uint64_t sub_220535F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220886A4C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ManageWatchlistsContentMode(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_220536040(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_220886A4C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ManageWatchlistsContentMode(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_220536164(uint64_t a1, uint64_t a2)
{
  sub_22057B2D0();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2205361D0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_22057B2D0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_220536250(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088698C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2205362BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088698C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220536330()
{
  v1 = sub_22088685C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2205363BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220536428(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220536498()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2205364E8()
{
  sub_2205DC04C(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_220536674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22088685C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_220453C08(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2205367C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22088685C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_220453C08(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_22053691C()
{

  return swift_deallocObject();
}

uint64_t sub_22053695C()
{

  return swift_deallocObject();
}

uint64_t sub_22053699C()
{
  sub_22046D600(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_220536B28(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_220885D4C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for AttributionSource();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = sub_220885ACC();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_220536C94(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_220885D4C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for AttributionSource();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = sub_220885ACC();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_220536E00()
{

  return swift_deallocObject();
}

uint64_t sub_220536E40()
{

  return swift_deallocObject();
}

uint64_t sub_220536E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2205DF654();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_220536F44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2205DF654();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }
}

uint64_t sub_220536FFC()
{
  v1 = *(type metadata accessor for ManageWatchlistsContentMode(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_22057B2D0();
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3))
  {
    v4 = sub_22088685C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_220537120()
{
  v1 = sub_220889A6C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_22088990C();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_220537268()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2205372A0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2205372E0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_220537334()
{

  return swift_deallocObject();
}

uint64_t sub_22053736C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2205373A4()
{

  return swift_deallocObject();
}

uint64_t sub_2205373EC()
{
  v1 = sub_220885D4C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2205374CC()
{

  return swift_deallocObject();
}

uint64_t sub_220537504()
{
  v1 = sub_22088685C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2205375DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220537614()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220537650()
{
  v1 = type metadata accessor for StockFeedEarningsViewModel();
  v17 = *(*(v1 - 1) + 80);

  v2 = v0 + ((v17 + 24) & ~v17);
  v3 = sub_22088685C();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = v2 + v1[5];
  v4(v5, v3);
  v6 = type metadata accessor for StockEarningsModel();
  v7 = v6[5];
  v8 = sub_22088516C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v11 = v6[6];
  v12 = *(v9 + 48);
  if (!v12(v5 + v11, 1, v8))
  {
    v10(v5 + v11, v8);
  }

  v13 = v6[7];
  v14 = sub_22088543C();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  v10(v2 + v1[6], v8);
  v15 = v1[7];
  if (!v12(v2 + v15, 1, v8))
  {
    v10(v2 + v15, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_2205378C4()
{
  v1 = type metadata accessor for QuoteDetailViewModel();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  v4 = sub_22088676C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = v1[5];
  v7 = sub_2208855EC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v9 = v3 + v1[6];

  return swift_deallocObject();
}

uint64_t sub_220537AD0()
{

  return swift_deallocObject();
}

uint64_t sub_220537B0C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 <= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 3;
    if (v4 >= 3)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22047C3B8(0, &qword_281298FF0, MEMORY[0x277D698E0], MEMORY[0x277D83D88]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = &a1[*(a3 + 20)];

    return v12(v13, a2, v11);
  }
}

_BYTE *sub_220537BF0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    sub_22047C3B8(0, &qword_281298FF0, MEMORY[0x277D698E0], MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = &v5[*(a4 + 20)];

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_220537CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088685C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220537D40(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22088685C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_220537DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22045401C(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_22045401C(0, &qword_281299370, MEMORY[0x277D69178]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_220537EEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22045401C(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_22045401C(0, &qword_281299370, MEMORY[0x277D69178]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_220538020(uint64_t a1, uint64_t a2)
{
  sub_2205E9E2C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22053808C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_2205E9E2C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22053810C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StockFeedConfig();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for StockFeedKnobsConfig();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2205381FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for StockFeedConfig();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for StockFeedKnobsConfig();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2205382F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_220888A7C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220538364(uint64_t a1, uint64_t a2)
{
  v4 = sub_220888A7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2205383D4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_22053840C()
{

  return swift_deallocObject();
}

uint64_t sub_220538448()
{
  v1 = sub_22088A1DC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  sub_22060A908(0, &qword_27CF579E0, MEMORY[0x277D350F8]);
  v6 = (v4 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  (*(v2 + 8))(v0 + v3, v1);
  v7 = sub_22088A51C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_2205385F4()
{
  v1 = sub_22088A4EC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_22053867C()
{
  v1 = sub_22088516C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v2 + 64) + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_220538738()
{
  v1 = sub_22088A1DC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_22088A56C();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_2205388A0()
{

  return swift_deallocObject();
}

uint64_t sub_2205388E0()
{
  sub_22046B36C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 41) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2205389B4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2205389FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220886A4C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ManageWatchlistsContentMode(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_220538B20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_220886A4C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ManageWatchlistsContentMode(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_220538C44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088685C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220538CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088685C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220538D20()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_220538D68()
{
  sub_220617760(0, &qword_281298480, MEMORY[0x277D686D0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_220538EE8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220538F20()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_220538F68()
{
  sub_22061D1D0(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2205390C4()
{
  v1 = sub_2208854FC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_22053914C()
{

  return swift_deallocObject();
}

uint64_t sub_220539184()
{

  return swift_deallocObject();
}

uint64_t sub_2205391BC()
{

  return swift_deallocObject();
}

uint64_t sub_220539214()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_220539254(uint64_t a1, uint64_t a2)
{
  v4 = sub_220886A4C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2205392C0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_220886A4C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_220539340()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220539378()
{

  return swift_deallocObject();
}

uint64_t sub_2205393B0()
{

  return swift_deallocObject();
}

uint64_t sub_2205393F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22088685C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_220453C08(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_220539544(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22088685C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_220453C08(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 32);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_220539698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22044CF38(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_220539754(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22044CF38(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_220539810()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220539848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22045401C(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_22045401C(0, &qword_281299370, MEMORY[0x277D69178]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_220539990(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22045401C(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_22045401C(0, &qword_281299370, MEMORY[0x277D69178]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_220539AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220885D4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220539B80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_220885D4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220539C44()
{

  return swift_deallocObject();
}

uint64_t sub_220539C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ForYouSectionDescriptor();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220539D28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ForYouSectionDescriptor();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220539DCC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220539E08()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220539E40()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_220539E80()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220539EB8()
{

  return swift_deallocObject();
}

uint64_t sub_220539EF4()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_220539F54()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220539F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220539FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22053A068()
{
  sub_22061D1D0(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_22053A1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for StockViewModel();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22053A270(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for StockViewModel();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22053A314()
{
  sub_220447A48(0, &qword_281298480, MEMORY[0x277D686D0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_22053A494()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_22053A4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for QuoteViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_220454E8C(0, qword_281293F78, type metadata accessor for QuoteViewModel);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22053A5E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for QuoteViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_220454E8C(0, qword_281293F78, type metadata accessor for QuoteViewModel);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_22053A700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_220479F38(0, &qword_2812994E0, MEMORY[0x277CC9260]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22053A7CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_220479F38(0, &qword_2812994E0, MEMORY[0x277CC9260]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_22053A898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220885D4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22053A944(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_220885D4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22053AA04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_22053AA3C()
{
  v1 = sub_220886A4C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_22053AB2C()
{
  v1 = UIAccessibilityDarkerSystemColorsEnabled();
  v2 = 120;
  if (v1)
  {
    v2 = 112;
  }

  v3 = *(v0 + v2);

  return v3;
}

uint64_t sub_22053AB6C()
{
  v1 = (type metadata accessor for WatchlistCellViewModel(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[9];
  v4 = sub_220886A4C();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  v5 = v1[10];
  sub_22057B2D0();
  if (!(*(*(v6 - 8) + 48))(v0 + v2 + v5, 1, v6))
  {
    v7 = sub_22088685C();
    (*(*(v7 - 8) + 8))(v0 + v2 + v5, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_22053ACF4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_22053AD2C()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_22053AD64()
{

  return swift_deallocObject();
}

uint64_t sub_22053ADA4()
{
  sub_220447A9C(0, &qword_281298480, MEMORY[0x277D686D0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_22053AF1C@<X0>(void *a1@<X8>)
{
  result = sub_220885B0C();
  *a1 = v3;
  return result;
}

uint64_t sub_22053AF48(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088685C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22053AFB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088685C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22053B024()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_22053B06C()
{
  sub_22061D1D0(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_22053B1C8()
{
  sub_22055F760();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_22053B25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StockViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22053B31C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for StockViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22053B3D8()
{
  v1 = *(type metadata accessor for StockListStockModel(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = sub_22088685C();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = type metadata accessor for StockViewModel();
  v5 = v4[5];
  v6 = sub_22088676C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  v8 = v2 + v4[6];
  v9 = type metadata accessor for StockSparklineViewModel(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = sub_220890D8C();
    (*(*(v10 - 8) + 8))(v8, v10);
    v11 = *(v9 + 32);
    v12 = sub_22088665C();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  v13 = v2 + v4[7];

  v14 = type metadata accessor for PriceViewModel();
  v15 = v14[9];
  v16 = sub_2208857EC();
  (*(*(v16 - 8) + 8))(v13 + v15, v16);
  v17 = v14[10];
  v18 = sub_22088699C();
  (*(*(v18 - 8) + 8))(v13 + v17, v18);
  v19 = v14[11];
  v20 = sub_2208852DC();
  (*(*(v20 - 8) + 8))(v13 + v19, v20);
  v21 = v4[8];
  v22 = sub_220885D4C();
  (*(*(v22 - 8) + 8))(v2 + v21, v22);

  return swift_deallocObject();
}

uint64_t sub_22053B72C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockEarningsModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22053B798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockEarningsModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22053B808()
{

  return swift_deallocObject();
}

uint64_t sub_22053B840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_220479FF0(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22053B920(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    sub_220479FF0(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_22053BA3C()
{

  return swift_deallocObject();
}

uint64_t sub_22053BA88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsStockFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22053BAF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsStockFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22053BB64()
{
  v1 = sub_22088698C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_22053BBF0()
{
  v8 = sub_22088685C();
  v1 = *(v8 - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_220886A4C();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  (*(v1 + 8))(v0 + v2, v8);
  (*(v5 + 8))(v0 + v6, v4);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_22053BD8C()
{
  v1 = sub_22088685C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_220886A4C();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_22053BF34()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_22053BF6C()
{
  v1 = sub_22088685C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_220886A4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = (*(v6 + 64) + v7 + v8) & ~v7;

  (*(v2 + 8))(v0 + v3, v1);
  v10 = *(v6 + 8);
  v10(v0 + v8, v5);
  v10(v0 + v9, v5);

  return swift_deallocObject();
}

uint64_t sub_22053C0E0()
{
  v1 = sub_22088685C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_220886A4C();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_22053C240(uint64_t a1, uint64_t a2)
{
  sub_220495338();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22053C2AC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  sub_220495338();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22053C348()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_22053C380()
{

  return swift_deallocObject();
}

uint64_t sub_22053C3C0()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_22053C400()
{

  return swift_deallocObject();
}

uint64_t sub_22053C440(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22053C4AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22053C51C()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_22053C554()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_22053C58C()
{

  return swift_deallocObject();
}

uint64_t sub_22053C5C8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_22053C600()
{

  return swift_deallocObject();
}

uint64_t sub_22053C638()
{

  return swift_deallocObject();
}

uint64_t sub_22053C678()
{

  return swift_deallocObject();
}

uint64_t sub_22053C6CC()
{
  sub_220447AF0(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_22053C858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_22088C32C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22053C8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_22088C32C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22053C984()
{
  v1 = sub_220884E9C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_22053CA0C()
{

  return swift_deallocObject();
}

uint64_t sub_22053CA44()
{
  v1 = (type metadata accessor for StockChartDescriptor() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_220890E5C();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (((((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;

  v8 = v0 + v2;
  v9 = sub_22088665C();
  (*(*(v9 - 8) + 8))(v0 + v2, v9);

  v10 = v1[8];
  v11 = sub_2208854FC();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_22053CC40()
{
  v1 = (type metadata accessor for StockChartDescriptor() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_220890E5C();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);

  v7 = v0 + v2;
  v8 = sub_22088665C();
  (*(*(v8 - 8) + 8))(v0 + v2, v8);

  v9 = v1[8];
  v10 = sub_2208854FC();
  (*(*(v10 - 8) + 8))(v7 + v9, v10);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_22053CE64()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_22053CE9C()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_22053CEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220885D4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22053CF88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_220885D4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22053D02C()
{
  v1 = (type metadata accessor for ForYouFeedRefreshBlueprintModifier() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);

  __swift_destroy_boxed_opaque_existential_1(v2 + 64);
  v3 = v1[10];
  v4 = sub_220885D4C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_22053D148()
{

  return swift_deallocObject();
}

uint64_t sub_22053D180()
{

  return swift_deallocObject();
}

uint64_t sub_22053D1B8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_22053D1F0()
{

  return swift_deallocObject();
}

uint64_t sub_22053D230()
{
  v1 = sub_22088685C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_220889CFC();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_22053D378()
{
  v1 = sub_22088685C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  if (*(v0 + v4 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v4);
  }

  return swift_deallocObject();
}

uint64_t sub_22053D470()
{
  v1 = *(type metadata accessor for StockSearchMode(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = sub_220886A4C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_22053D5AC()
{
  v1 = *(type metadata accessor for StockSearchMode(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = sub_220886A4C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_22053D6C0()
{

  return swift_deallocObject();
}

uint64_t sub_22053D710()
{

  return swift_deallocObject();
}

uint64_t sub_22053D748()
{

  return swift_deallocObject();
}

uint64_t sub_22053D780()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_22053D7B8()
{

  return swift_deallocObject();
}

uint64_t sub_22053D7F8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_22088685C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_220454138(0, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_220454138(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        v17 = type metadata accessor for PriceViewModel();
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[7];
        }

        else
        {
          result = sub_220885D4C();
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[9]) = a2 + 2;
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[8];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22053DA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2206AA758(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22053DABC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2206AA758(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_22053DB60()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_22053DB98()
{

  return swift_deallocObject();
}

uint64_t sub_22053DBD8()
{

  return swift_deallocObject();
}

uint64_t sub_22053DC10()
{

  return swift_deallocObject();
}

uint64_t sub_22053DC74()
{
  v1 = sub_22088F17C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_22053DD50()
{
  v1 = sub_22088F17C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_22053DE1C()
{

  return swift_deallocObject();
}

uint64_t sub_22053DE5C()
{

  return swift_deallocObject();
}

uint64_t sub_22053DE9C()
{

  return swift_deallocObject();
}

uint64_t sub_22053DED4()
{
  v1 = sub_2208854FC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_22088831C();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_22053E01C()
{
  v1 = sub_22088685C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_22053E0A4()
{

  return swift_deallocObject();
}

uint64_t sub_22053E0E4()
{

  return swift_deallocObject();
}

uint64_t sub_22053E1B0()
{

  return swift_deallocObject();
}

uint64_t sub_22053E1E8()
{
  v1 = sub_22088A71C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_2208854AC();
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80) + 8) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_22053E36C()
{
  v1 = sub_2208854AC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_22053E464()
{
  v1 = sub_2208854AC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_220888C8C();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_22053E5D0()
{

  return swift_deallocObject();
}

uint64_t sub_22053E608()
{
  sub_22061D1D0(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_22053E764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220886A4C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AttributionSource();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22053E888(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_220886A4C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AttributionSource();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22053E9AC()
{

  return swift_deallocObject();
}

uint64_t sub_22053E9EC()
{
  sub_2206CE73C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_22053EA88()
{

  return swift_deallocObject();
}

uint64_t sub_22053EAC8()
{
  v1 = sub_22088685C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_22053EBA0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_22053EBE8()
{
  sub_2206DF978(0, &qword_281296C50, type metadata accessor for ForYouFeedServiceConfig, sub_220502768, MEMORY[0x277D31C68]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_22053ECBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2208857BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22053ED68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2208857BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22053EE0C()
{
  v1 = (type metadata accessor for StockListWatchlistChangeBlueprintModifier() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  sub_22045BD88(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = (v3 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v0 + v2;

  v9 = v1[7];
  v10 = sub_2208857BC();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v8 + v1[8]);
  __swift_destroy_boxed_opaque_existential_1(v8 + v1[9]);
  __swift_destroy_boxed_opaque_existential_1(v8 + v1[10]);
  __swift_destroy_boxed_opaque_existential_1(v8 + v1[11]);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_22053EFE4()
{

  return swift_deallocObject();
}

uint64_t sub_22053F01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220885D4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22053F0C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_220885D4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22053F16C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22053F1D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22053F248()
{

  return swift_deallocObject();
}

uint64_t sub_22053F298(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_22044D940(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_22044D940(0, &qword_281296B78, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_22053F41C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_22044D940(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_22044D940(0, &qword_281296B78, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_22053F5A0()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_22053F628()
{

  return swift_deallocObject();
}

uint64_t sub_22053F660()
{

  return swift_deallocObject();
}

uint64_t sub_22053F698()
{
  sub_22061D1D0(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_22053F824()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_22053F85C()
{

  return swift_deallocObject();
}

uint64_t sub_22053F89C()
{

  return swift_deallocObject();
}

uint64_t sub_22053F8D4()
{

  return swift_deallocObject();
}

uint64_t sub_22053F90C()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_22053F958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22088DA1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_22053FA18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22088DA1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22053FAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22089226C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22053FB90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22089226C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22053FCB8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_22053FCF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22089030C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22053FD5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22089030C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22053FDCC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_22053FE04()
{

  return swift_deallocObject();
}

uint64_t sub_22053FE3C()
{
  v1 = sub_22088F17C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_22053FF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2207009E8(0, &unk_2812990E0, MEMORY[0x277D697C0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_220885D4C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22054004C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_2207009E8(0, &unk_2812990E0, MEMORY[0x277D697C0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_220885D4C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2205401F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AttributionSource();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22054029C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AttributionSource();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220540340()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220540378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = sub_22088D83C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_2205403F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = sub_22088D83C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22054046C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_22047A10C(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22054054C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_22047A10C(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_220540620()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220540658()
{
  sub_22055DDDC();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_22054071C()
{

  return swift_deallocObject();
}

uint64_t sub_220540754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220885D4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220540800(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_220885D4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2205408A4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_2205408EC()
{

  return swift_deallocObject();
}

uint64_t sub_220540924()
{
  sub_22051D97C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2205409F0()
{
  sub_2204F1480();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_220540A78()
{

  return swift_deallocObject();
}

uint64_t sub_220540AB8()
{

  return swift_deallocObject();
}

uint64_t sub_220540B0C()
{

  return swift_deallocObject();
}

uint64_t sub_220540B44()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220540B84()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220540BEC()
{

  return swift_deallocObject();
}

uint64_t sub_220540C24()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_220540C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220540CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220540DCC()
{

  return swift_deallocObject();
}

uint64_t sub_220540E08()
{
  sub_22061D1D0(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_220540F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220885D4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220541010(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_220885D4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2205410B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220541120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedGroupKnobs();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220541190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for StockFeedQuoteData();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_22044D9A4(0, &qword_281299480, MEMORY[0x277CC9578]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2205412D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for StockFeedQuoteData();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_22044D9A4(0, &qword_281299480, MEMORY[0x277CC9578]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 28);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_220541410()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220541448()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_220541490()
{
  v19 = sub_22088698C();
  v1 = *(v19 - 8);
  v16 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v2 = *(v1 + 64);
  sub_2204F1480();
  v18 = v3;
  v4 = *(v3 - 8);
  v13 = (v16 + v2 + *(v4 + 80)) & ~*(v4 + 80);
  v5 = *(v4 + 64);
  sub_22051D97C();
  v17 = v6;
  v7 = *(v6 - 8);
  v14 = (v13 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v8 = (*(v7 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_220454720();
  v15 = v9;
  v10 = *(v9 - 8);
  v11 = (v8 + *(v10 + 80) + 8) & ~*(v10 + 80);
  (*(v1 + 8))(v0 + v16, v19);
  (*(v4 + 8))(v0 + v13, v18);
  (*(v7 + 8))(v0 + v14, v17);

  (*(v10 + 8))(v0 + v11, v15);

  return swift_deallocObject();
}

uint64_t sub_22054170C()
{
  v1 = sub_22088CE3C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_220889B9C();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_220541868()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2205418A0()
{
  sub_220516884(0, &qword_281297B30, MEMORY[0x277D6DA48]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_22089049C();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  (*(v3 + 8))(v0 + v4, v2);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_220541A0C()
{
  sub_220516884(0, &qword_281297B30, MEMORY[0x277D6DA48]);
  v13 = v1;
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v12 = sub_22088698C();
  v5 = *(v12 - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_22088FEFC();
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);

  (*(v2 + 8))(v0 + v3, v13);
  (*(v5 + 8))(v0 + v6, v12);
  (*(v9 + 8))(v0 + v10, v8);

  return swift_deallocObject();
}

uint64_t sub_220541C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22088582C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220541CB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22088582C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220541D54()
{
  v1 = type metadata accessor for CampaignRouteModel();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v13 = *(*(v1 - 1) + 64);
  sub_22055F760();
  v14 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;

  v7 = v1[5];
  v8 = sub_220887FAC();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  v9 = v1[10];
  v10 = sub_22088A47C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  MEMORY[0x223D8B910](v6 + v1[11]);
  (*(v4 + 8))(v0 + ((v2 + v13 + v5) & ~v5), v14);

  return swift_deallocObject();
}

uint64_t sub_220541FB8()
{

  return swift_deallocObject();
}

uint64_t sub_220541FF0()
{
  v1 = type metadata accessor for CampaignRouteModel();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[5];
  v4 = sub_220887FAC();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v1[10];
  v6 = sub_22088A47C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  MEMORY[0x223D8B910](v2 + v1[11]);

  return swift_deallocObject();
}

uint64_t sub_2205421AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220542218(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220542290()
{
  v1 = sub_22088780C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_220542388()
{
  sub_220751EEC(0, &qword_27CF594B8, MEMORY[0x277D6E3A0]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_220542460()
{
  sub_220751EEC(0, &qword_27CF594E0, MEMORY[0x277D6DA48]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  sub_2207521E0();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (v4 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_2205425D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 544);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_22088D83C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_220542684(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 544) = a2 + 1;
  }

  else
  {
    v7 = sub_22088D83C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220542724(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22088685C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  sub_2204541E0(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  sub_2204541E0(0, &unk_2812990E0, MEMORY[0x277D697C0]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = type metadata accessor for QuoteSummaryViewModel();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8]);
  if (v17 >= 2)
  {
    v18 = ((v17 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v18 = -2;
  }

  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_220542914(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_22088685C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_2204541E0(0, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_2204541E0(0, &unk_2812990E0, MEMORY[0x277D697C0]);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for QuoteSummaryViewModel();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = a2 + 2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_220542AE4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_220542B1C()
{

  return swift_deallocObject();
}

uint64_t sub_220542B54()
{
  v1 = sub_22088F17C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_220542C24(uint64_t a1, uint64_t a2, int *a3)
{
  sub_220447700(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_220447700(0, qword_281295308, type metadata accessor for StocksActivity.StockFeed.Series, MEMORY[0x277D83D88]);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v13 = *(a1 + a3[8] + 8);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v13 - 1;
    if (v14 < 0)
    {
      v14 = -1;
    }

    return (v14 + 1);
  }

  else
  {
    sub_220447700(0, qword_28128F390, type metadata accessor for ArticleUserInfoModel, MEMORY[0x277D83D88]);
    if (*(*(v15 - 8) + 84) == a2)
    {
      v7 = v15;
      v8 = *(v15 - 8);
      v9 = a3[9];
      goto LABEL_5;
    }

    sub_220447700(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    v17 = v16;
    v18 = *(*(v16 - 8) + 48);
    v19 = a1 + a3[10];

    return v18(v19, a2, v17);
  }
}

void sub_220542EAC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_220447700(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_5:
    v13 = *(v10 + 56);

    v13(a1 + v11, a2, a2, v9);
    return;
  }

  sub_220447700(0, qword_281295308, type metadata accessor for StocksActivity.StockFeed.Series, MEMORY[0x277D83D88]);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[8] + 8) = a2;
    return;
  }

  sub_220447700(0, qword_28128F390, type metadata accessor for ArticleUserInfoModel, MEMORY[0x277D83D88]);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_5;
  }

  sub_220447700(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v16 = v15;
  v17 = *(*(v15 - 8) + 56);
  v18 = a1 + a4[10];

  v17(v18, a2, a2, v16);
}

uint64_t sub_220543160()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_220543198()
{

  return swift_deallocObject();
}

uint64_t sub_22054327C()
{
  sub_22046B36C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_22045BE48(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (v5 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v3 + 8))(v0 + v4, v2);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_2205433F0()
{

  return swift_deallocObject();
}

uint64_t sub_220543438()
{

  return swift_deallocObject();
}

uint64_t sub_220543488()
{

  return swift_deallocObject();
}

uint64_t sub_2205434C0()
{

  return swift_deallocObject();
}

uint64_t sub_2205434F8()
{
  v1 = sub_22089030C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2205435BC()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_2205435F4()
{

  return swift_deallocObject();
}

uint64_t sub_220543644()
{
  v1 = *(type metadata accessor for ManageWatchlistsContentMode(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  sub_22055F760();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 80);
  sub_22057B2D0();
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
  {
    v9 = sub_22088685C();
    (*(*(v9 - 8) + 8))(v0 + v2, v9);
  }

  (*(v6 + 8))(v0 + ((v2 + v3 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_2205437E8()
{
  sub_22077DB20();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = sub_22089030C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_2205438FC()
{

  return swift_deallocObject();
}

uint64_t sub_220543954()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220543990()
{

  return swift_deallocObject();
}

uint64_t sub_2205439EC()
{

  return swift_deallocObject();
}

uint64_t sub_220543A94()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_220543AE0()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220543B18()
{

  return swift_deallocObject();
}

uint64_t sub_220543B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22088D61C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 48) + 416);
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_220543C34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22088D61C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 48) + 416) = a2 + 1;
  }

  return result;
}

uint64_t sub_220543CF0()
{
  sub_22047A344(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_220543E7C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220543EB4()
{
  v1 = sub_22088743C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_220543F78()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220543FB8()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_220543FF0()
{
  v1 = type metadata accessor for StockViewModel();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  swift_unownedRelease();
  v3 = v0 + v2;
  v4 = sub_22088685C();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v1[5];
  v6 = sub_22088676C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = v3 + v1[6];
  v9 = type metadata accessor for StockSparklineViewModel(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = sub_220890D8C();
    (*(*(v10 - 8) + 8))(v8, v10);
    v11 = *(v9 + 32);
    v12 = sub_22088665C();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  v13 = v3 + v1[7];

  v14 = type metadata accessor for PriceViewModel();
  v15 = v14[9];
  v16 = sub_2208857EC();
  (*(*(v16 - 8) + 8))(v13 + v15, v16);
  v17 = v14[10];
  v18 = sub_22088699C();
  (*(*(v18 - 8) + 8))(v13 + v17, v18);
  v19 = v14[11];
  v20 = sub_2208852DC();
  (*(*(v20 - 8) + 8))(v13 + v19, v20);
  v21 = v1[8];
  v22 = sub_220885D4C();
  (*(*(v22 - 8) + 8))(v3 + v21, v22);

  return swift_deallocObject();
}

uint64_t sub_22054434C()
{

  return swift_deallocObject();
}

uint64_t sub_220544384()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2205443CC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220544404()
{
  v12 = sub_220889ACC();
  v1 = *(v12 - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v11 = sub_22088959C();
  v4 = *(v11 - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = sub_2208895AC();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v1 + 8))(v0 + v2, v12);
  (*(v4 + 8))(v0 + v5, v11);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_220544624()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_22054465C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2205446C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220544738(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2205447A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220544814()
{
  sub_22061D1D0(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_220544970()
{

  return swift_deallocObject();
}

uint64_t sub_2205449BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220886A4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220544A68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_220886A4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220544B0C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220544B44()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220544B7C()
{

  return swift_deallocObject();
}

uint64_t sub_220544C3C()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_220544C88()
{
  v1 = *(type metadata accessor for StockListStockModel(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = v0 + v2;
  v4 = sub_22088685C();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = type metadata accessor for StockViewModel();
  v6 = v5[5];
  v7 = sub_22088676C();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  v9 = v3 + v5[6];
  v10 = type metadata accessor for StockSparklineViewModel(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = sub_220890D8C();
    (*(*(v11 - 8) + 8))(v9, v11);
    v12 = *(v10 + 32);
    v13 = sub_22088665C();
    (*(*(v13 - 8) + 8))(v9 + v12, v13);
  }

  v14 = v3 + v5[7];

  v15 = type metadata accessor for PriceViewModel();
  v16 = v15[9];
  v17 = sub_2208857EC();
  (*(*(v17 - 8) + 8))(v14 + v16, v17);
  v18 = v15[10];
  v19 = sub_22088699C();
  (*(*(v19 - 8) + 8))(v14 + v18, v19);
  v20 = v15[11];
  v21 = sub_2208852DC();
  (*(*(v21 - 8) + 8))(v14 + v20, v21);
  v22 = v5[8];
  v23 = sub_220885D4C();
  (*(*(v23 - 8) + 8))(v3 + v22, v23);

  return swift_deallocObject();
}

uint64_t sub_22054500C()
{
  v1 = *(type metadata accessor for StockListStockModel(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v3 = sub_22088685C();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = type metadata accessor for StockViewModel();
  v5 = v4[5];
  v6 = sub_22088676C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  v8 = v2 + v4[6];
  v9 = type metadata accessor for StockSparklineViewModel(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = sub_220890D8C();
    (*(*(v10 - 8) + 8))(v8, v10);
    v11 = *(v9 + 32);
    v12 = sub_22088665C();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  v13 = v2 + v4[7];

  v14 = type metadata accessor for PriceViewModel();
  v15 = v14[9];
  v16 = sub_2208857EC();
  (*(*(v16 - 8) + 8))(v13 + v15, v16);
  v17 = v14[10];
  v18 = sub_22088699C();
  (*(*(v18 - 8) + 8))(v13 + v17, v18);
  v19 = v14[11];
  v20 = sub_2208852DC();
  (*(*(v20 - 8) + 8))(v13 + v19, v20);
  v21 = v4[8];
  v22 = sub_220885D4C();
  (*(*(v22 - 8) + 8))(v2 + v21, v22);

  return swift_deallocObject();
}

uint64_t sub_220545374()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2205453AC()
{

  return swift_deallocObject();
}

uint64_t sub_2205453EC()
{
  v1 = *(type metadata accessor for StockListStockModel(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v29 = *(v1 + 64);
  sub_2207C121C(0, &qword_281297B38, MEMORY[0x277D6DA48]);
  v30 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);

  v6 = v0 + v2;
  v7 = sub_22088685C();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);
  v8 = type metadata accessor for StockViewModel();
  v9 = v8[5];
  v10 = sub_22088676C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v6 + v8[6];
  v13 = type metadata accessor for StockSparklineViewModel(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = sub_220890D8C();
    (*(*(v14 - 8) + 8))(v12, v14);
    v15 = *(v13 + 32);
    v16 = sub_22088665C();
    (*(*(v16 - 8) + 8))(v12 + v15, v16);
  }

  v17 = (v2 + v29 + v5) & ~v5;
  v18 = v6 + v8[7];

  v19 = type metadata accessor for PriceViewModel();
  v20 = v19[9];
  v21 = sub_2208857EC();
  (*(*(v21 - 8) + 8))(v18 + v20, v21);
  v22 = v19[10];
  v23 = sub_22088699C();
  (*(*(v23 - 8) + 8))(v18 + v22, v23);
  v24 = v19[11];
  v25 = sub_2208852DC();
  (*(*(v25 - 8) + 8))(v18 + v24, v25);
  v26 = v8[8];
  v27 = sub_220885D4C();
  (*(*(v27 - 8) + 8))(v6 + v26, v27);

  (*(v4 + 8))(v0 + v17, v30);

  return swift_deallocObject();
}

uint64_t sub_220545848()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_220545888()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_2205458D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220545910()
{

  return swift_deallocObject();
}

uint64_t sub_220545948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220886A4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2205459F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_220886A4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220545A98()
{

  return swift_deallocObject();
}

uint64_t sub_220545ADC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220886A1C();
  *a1 = result;
  return result;
}

uint64_t sub_220545B08()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220545CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22088685C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_220545D6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22088685C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220545E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220886A4C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_220885D4C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_220545F14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_220886A4C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_220885D4C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_220546010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220886A4C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_220885DFC();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_22054612C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_220886A4C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_220885DFC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_220546234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220886A4C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    sub_220447764(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_220546354(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_220886A4C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    sub_220447764(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_220546480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchlistCreationRouteModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2205464EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchlistCreationRouteModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22054655C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220885D4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220546608(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_220885D4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2205466AC()
{

  return swift_deallocObject();
}

uint64_t sub_2205466F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22088685C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for StockEarningsModel();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_22088516C();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  sub_22044DAC0(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[10] + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

void sub_2205468C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_22088685C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for StockEarningsModel();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_22088516C();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        sub_22044DAC0(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        if (*(*(v17 - 8) + 84) != a3)
        {
          *(a1 + a4[10] + 8) = (a2 - 1);
          return;
        }

        v10 = v17;
        v14 = *(v17 - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_220546A94()
{
  sub_22061D1D0(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_220546BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22089039C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220546C9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22089039C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220546D48()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220546D80()
{
  sub_220488214(0, &qword_281297660, MEMORY[0x277D6E3A0]);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_220546E24(uint64_t a1, uint64_t a2)
{
  sub_22045343C(0, &qword_2812968D8, MEMORY[0x277D33478]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220546EAC(uint64_t a1, uint64_t a2)
{
  sub_22045343C(0, &qword_2812968D8, MEMORY[0x277D33478]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220546F38()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220546F70()
{
  v1 = sub_2208854FC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_22054700C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22089030C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220547078(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22089030C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_2205470F8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220547140()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220547180()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2205471B8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220547204()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_220547240()
{

  return swift_deallocObject();
}

uint64_t sub_220547278()
{

  return swift_deallocObject();
}

uint64_t sub_2205472B8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2205472F4()
{

  return swift_deallocObject();
}

uint64_t sub_220547358()
{
  v19 = sub_22088698C();
  v1 = *(v19 - 8);
  v16 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v2 = *(v1 + 64);
  sub_22055CF9C(0);
  v18 = v3;
  v4 = *(v3 - 8);
  v13 = (v16 + v2 + *(v4 + 80)) & ~*(v4 + 80);
  v5 = *(v4 + 64);
  sub_22055D328();
  v17 = v6;
  v7 = *(v6 - 8);
  v14 = (v13 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v8 = (*(v7 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_220454720();
  v15 = v9;
  v10 = *(v9 - 8);
  v11 = (v8 + *(v10 + 80) + 8) & ~*(v10 + 80);
  (*(v1 + 8))(v0 + v16, v19);
  (*(v4 + 8))(v0 + v13, v18);
  (*(v7 + 8))(v0 + v14, v17);

  (*(v10 + 8))(v0 + v11, v15);

  return swift_deallocObject();
}

uint64_t sub_2205475D4()
{
  v1 = sub_22088CE3C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_220889B9C();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_220547730()
{
  v1 = type metadata accessor for StockEarningsModel();
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  sub_22081F878(0, &qword_281297B40, MEMORY[0x277D6DA48]);
  v17 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v18 = v0;
  v6 = v0 + ((v2 + 16) & ~v2);
  v7 = sub_22088685C();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v1[5];
  v9 = sub_22088516C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v6 + v8, v9);
  v12 = v1[6];
  if (!(*(v10 + 48))(v6 + v12, 1, v9))
  {
    v11(v6 + v12, v9);
  }

  v13 = v1[7];
  v14 = sub_22088543C();
  (*(*(v14 - 8) + 8))(v6 + v13, v14);
  (*(v4 + 8))(v18 + ((((v2 + 16) & ~v2) + v16 + v5) & ~v5), v17);

  return swift_deallocObject();
}

uint64_t sub_22054799C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2205479D4()
{
  sub_22081F878(0, &qword_281297B40, MEMORY[0x277D6DA48]);
  v13 = v1;
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v12 = sub_22088698C();
  v5 = *(v12 - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = sub_22088FEFC();
  v9 = *(v8 - 8);
  v10 = (v6 + v7 + *(v9 + 80)) & ~*(v9 + 80);

  (*(v2 + 8))(v0 + v3, v13);
  (*(v5 + 8))(v0 + v6, v12);
  (*(v9 + 8))(v0 + v10, v8);

  return swift_deallocObject();
}

uint64_t sub_220547BCC()
{
  v1 = sub_22088743C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_220547CA4@<X0>(void *a1@<X8>)
{
  result = Stock.accessibleSymbol.getter();
  *a1 = result;
  return result;
}

uint64_t sub_220547CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088685C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220547D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088685C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220547DB0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_220547DF0()
{
  v1 = sub_22089030C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_220547EB4()
{
  v1 = sub_22088EE8C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_220547F3C()
{
  v1 = *(type metadata accessor for StockSearchModel() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = sub_22088685C();
  (*(*(v4 - 8) + 8))(v2, v4);
  v5 = type metadata accessor for StockViewModel();
  v6 = v5[5];
  v7 = sub_22088676C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v2 + v6, 1, v7);
  if (EnumCaseMultiPayload == 1)
  {
    if (!v9)
    {
      (*(v8 + 8))(v2 + v6, v7);
    }

    v10 = v2 + v5[6];
    v11 = type metadata accessor for StockSparklineViewModel(0);
    if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      v12 = sub_220890D8C();
      (*(*(v12 - 8) + 8))(v10, v12);
      v13 = *(v11 + 32);
      v14 = sub_22088665C();
      (*(*(v14 - 8) + 8))(v10 + v13, v14);
    }

    v15 = v2 + v5[7];

    v16 = type metadata accessor for PriceViewModel();
    v17 = v16[9];
    v18 = sub_2208857EC();
    (*(*(v18 - 8) + 8))(v15 + v17, v18);
    v19 = v16[10];
    v20 = sub_22088699C();
    (*(*(v20 - 8) + 8))(v15 + v19, v20);
    v21 = v16[11];
    v22 = sub_2208852DC();
    (*(*(v22 - 8) + 8))(v15 + v21, v22);
    v23 = v5[8];
    v24 = sub_220885D4C();
    (*(*(v24 - 8) + 8))(v2 + v23, v24);
    sub_22049550C();
    v26 = (v25 + 48);
    v27 = sub_220886A4C();
  }

  else
  {
    if (!v9)
    {
      (*(v8 + 8))(v2 + v6, v7);
    }

    v28 = v2 + v5[6];
    v29 = type metadata accessor for StockSparklineViewModel(0);
    if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
    {
      v30 = sub_220890D8C();
      (*(*(v30 - 8) + 8))(v28, v30);
      v31 = *(v29 + 32);
      v32 = sub_22088665C();
      (*(*(v32 - 8) + 8))(v28 + v31, v32);
    }

    v33 = v2 + v5[7];

    v34 = type metadata accessor for PriceViewModel();
    v35 = v34[9];
    v36 = sub_2208857EC();
    (*(*(v36 - 8) + 8))(v33 + v35, v36);
    v37 = v34[10];
    v38 = sub_22088699C();
    (*(*(v38 - 8) + 8))(v33 + v37, v38);
    v39 = v34[11];
    v40 = sub_2208852DC();
    (*(*(v40 - 8) + 8))(v33 + v39, v40);
    v26 = v5 + 8;
    v27 = sub_220885D4C();
  }

  (*(*(v27 - 8) + 8))(v2 + *v26, v27);

  return swift_deallocObject();
}

uint64_t sub_2205484D8()
{
  sub_220447A9C(0, &qword_281298480, MEMORY[0x277D686D0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v3);
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_220548684()
{

  return swift_deallocObject();
}

uint64_t sub_2205486C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2204477C8(0, &qword_281299060, MEMORY[0x277D69810]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_2205487A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2204477C8(0, &qword_281299060, MEMORY[0x277D69810]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_220548884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220885D4C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_220548930(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_220885D4C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2205489D4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_220548A0C()
{

  return swift_deallocObject();
}

uint64_t sub_220548A44(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_22088685C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_22088516C();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      sub_22044DB88(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = sub_22088543C();
        if (*(*(v15 - 8) + 84) != a2)
        {
          v17 = *(a1 + a3[8]);
          if (v17 >= 2)
          {
            return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = *(v15 - 8);
        v13 = a3[7];
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_220548C20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_22088685C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_22088516C();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      sub_22044DB88(0, &qword_281299480, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_22088543C();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = a2 + 1;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_220548DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220548E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220548EC4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_220548F04()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_220548F3C()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220548F74()
{

  return swift_deallocObject();
}

uint64_t sub_220548FAC()
{
  sub_2208447BC(0, &qword_281298770, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2205490A8()
{
  sub_2208447BC(0, &qword_281298770, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2205491B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_22088665C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_220549230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_22088665C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_2205492AC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2205492E4()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_22054931C()
{
  v1 = sub_22088F17C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2205493F8()
{

  return swift_deallocObject();
}

uint64_t sub_220549434()
{

  return swift_deallocObject();
}

uint64_t sub_22054947C()
{

  return swift_deallocObject();
}

uint64_t sub_2205494B8()
{

  return swift_deallocObject();
}

uint64_t sub_220549508()
{

  return swift_deallocObject();
}

uint64_t sub_220549550()
{
  v1 = sub_2208857BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_220549628(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220549694(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220549704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22056BDC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2208854FC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_22088543C();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_220549844(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22056BDC0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_2208854FC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_22088543C();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_220549990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22056BDC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2208854FC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = sub_22088543C();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_220549AD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22056BDC0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_2208854FC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = sub_22088543C();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_220549C1C()
{
  v1 = sub_22088685C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 17) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_220549CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22044F09C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_220549DA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_22044F09C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_220549E5C()
{
  v1 = sub_220884E9C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_220549F40()
{
  v1 = sub_220887DAC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_22088789C();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_22054A090()
{
  v12 = sub_22088785C();
  v1 = *(v12 - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v11 = sub_220887DAC();
  v4 = *(v11 - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = sub_2208880EC();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v1 + 8))(v0 + v2, v12);
  (*(v4 + 8))(v0 + v5, v11);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_22054A26C()
{
  v16 = sub_22088785C();
  v1 = *(v16 - 8);
  v13 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v2 = *(v1 + 64);
  v15 = sub_220887DAC();
  v3 = *(v15 - 8);
  v11 = (v13 + v2 + *(v3 + 80)) & ~*(v3 + 80);
  v4 = *(v3 + 64);
  v14 = sub_220887D1C();
  v5 = *(v14 - 8);
  v6 = (v11 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v12 = sub_22088789C();
  v8 = *(v12 - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v1 + 8))(v0 + v13, v16);
  (*(v3 + 8))(v0 + v11, v15);
  (*(v5 + 8))(v0 + v6, v14);
  (*(v8 + 8))(v0 + v9, v12);

  return swift_deallocObject();
}

uint64_t sub_22054A4D8()
{
  v1 = sub_22088789C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_22054A560()
{
  v1 = sub_2208875BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_22088822C();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_22054A6BC()
{
  v12 = sub_22088822C();
  v1 = *(v12 - 8);
  v10 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v2 = (*(v1 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = sub_2208875BC();
  v3 = *(v11 - 8);
  v4 = (v2 + *(v3 + 80) + 8) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_22088916C();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v1 + 8))(v0 + v10, v12);

  (*(v3 + 8))(v0 + v4, v11);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_22054A8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22088C32C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_22054A97C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22088C32C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_22054AA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22088C32C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 80);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22054AAF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22088C32C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 80) = -a2;
  }

  return result;
}

uint64_t sub_22054ABB0()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_22054AC14()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_22054AC90()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_22054AD18()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_22054AD50()
{

  return swift_deallocObject();
}

uint64_t sub_22054AD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22054ADFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22054AE6C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_22054AEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ManageWatchlistsContentMode(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22054AF68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ManageWatchlistsContentMode(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22054B00C()
{
  v1 = sub_220885ACC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_22054B094()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_22054B0CC()
{
  v1 = sub_220885ACC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_22054B184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_220885D4C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_220885DFC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22054B2A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_220885D4C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_220885DFC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22054B3CC()
{
  v1 = (type metadata accessor for TickerWatchlistChangeBlueprintModifier() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  __swift_destroy_boxed_opaque_existential_1(v2 + 56);
  __swift_destroy_boxed_opaque_existential_1(v2 + 96);
  v3 = v1[10];
  v4 = sub_220885D4C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v1[12];
  v6 = sub_220885DFC();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_22054B51C()
{
  v1 = (type metadata accessor for TickerWatchlistChangeBlueprintModifier() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  sub_220881D14(0, &qword_281296F38, MEMORY[0x277D6EC60]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = (v3 + *(v6 + 80)) & ~*(v6 + 80);

  v8 = v0 + v2;

  __swift_destroy_boxed_opaque_existential_1(v8 + 16);
  __swift_destroy_boxed_opaque_existential_1(v8 + 56);
  __swift_destroy_boxed_opaque_existential_1(v8 + 96);
  v9 = v1[10];
  v10 = sub_220885D4C();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  v11 = v1[12];
  v12 = sub_220885DFC();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_22054B714()
{

  return swift_deallocObject();
}

uint64_t sub_22054B74C()
{
  v1 = (type metadata accessor for TickerWatchlistChangeBlueprintModifier() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  __swift_destroy_boxed_opaque_existential_1(v2 + 56);
  __swift_destroy_boxed_opaque_existential_1(v2 + 96);
  v3 = v1[10];
  v4 = sub_220885D4C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v1[12];
  v6 = sub_220885DFC();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_22054B8B8()
{

  return swift_deallocObject();
}

uint64_t sub_22054B8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22054B95C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088C32C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_22054BA4C()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

void _SUCrawlView(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v13 = 0;
  v6[2](v6, v5, 0, &v13);
  if (!v13)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___SUCrawlView_block_invoke_2;
    v9[3] = &unk_27844A2A8;
    v11 = v14;
    v12 = a2;
    v10 = v6;
    v7 = ___SUCrawlView_block_invoke_2(v9);
    v8 = _Block_copy(v7);
    (v7)[2](v7, v8, v5, &v13);
  }

  _Block_object_dispose(v14, 8);
}

void sub_22054BE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SUCrawlView(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __SUCrawlView_block_invoke;
  v7[3] = &unk_27844A2D0;
  v8 = v5;
  v6 = v5;
  _SUCrawlView(a1, a2, v7);
}

id SUCrawlViewAndCollect(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = objc_opt_new();
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __SUCrawlViewAndCollect_block_invoke;
  v15 = &unk_27844A2F8;
  v16 = v7;
  v17 = v5;
  v8 = v7;
  v9 = v5;
  SUCrawlView(v6, a2, &v12);

  v10 = [v8 copy];

  return v10;
}

void __SUCrawlViewAndCollect_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

id SUFirstViewPassing(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __SUFirstViewPassing_block_invoke;
  v10[3] = &unk_27844A320;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  SUCrawlView(v5, a2, v10);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void sub_22054C6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __SUFirstViewPassing_block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v8 = a2;
  v5 = (*(*(a1 + 32) + 16))();
  v6 = *(*(a1 + 40) + 8);
  v7 = v8;
  if ((v5 & 1) == 0)
  {
    v7 = *(v6 + 40);
  }

  objc_storeStrong((v6 + 40), v7);
  *a3 = *(*(*(a1 + 40) + 8) + 40) != 0;
}

BOOL SUViewContainsViewOfClass(void *a1, uint64_t a2, uint64_t a3)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __SUViewContainsViewOfClass_block_invoke;
  v6[3] = &__block_descriptor_40_e16_B16__0__UIView_8lu32l8;
  v6[4] = a3;
  v3 = SUFirstViewPassing(a1, a2, v6);
  v4 = v3 != 0;

  return v4;
}

void _SUCrawlViewController(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v13 = 0;
  v6[2](v6, v5, 0, &v13);
  if (!v13)
  {
    if (a2 == 2)
    {
      v7 = v11;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v8 = ___SUCrawlViewController_block_invoke_3;
    }

    else
    {
      if (a2 != 1)
      {
        v9 = 0;
        goto LABEL_8;
      }

      v7 = v12;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v8 = ___SUCrawlViewController_block_invoke_2;
    }

    v7[2] = v8;
    v7[3] = &unk_27844A368;
    v7[5] = v14;
    v7[4] = v6;
    v9 = _Block_copy(v7);

LABEL_8:
    v10 = _Block_copy(v9);
    (*(v9 + 2))(v9, v10, v5, &v13);
  }

  _Block_object_dispose(v14, 8);
}

void SUCrawlViewController(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __SUCrawlViewController_block_invoke;
  v7[3] = &unk_27844A390;
  v8 = v5;
  v6 = v5;
  _SUCrawlViewController(a1, a2, v7);
}