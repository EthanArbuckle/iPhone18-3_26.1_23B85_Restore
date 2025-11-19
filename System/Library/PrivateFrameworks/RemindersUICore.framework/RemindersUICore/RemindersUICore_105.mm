uint64_t TTRDateBucketSectionHeaderTitleFormatterBase.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_locale;
  v2 = sub_21DBF582C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_calendar;
  v4 = sub_21DBF5A2C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra, &qword_27CE58D68);

  return v0;
}

id sub_21DAC0B58()
{
  v0 = sub_21DBF5C4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_21DBF5C3C();
  v5 = sub_21DBF5C0C();
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone_];

  v6 = sub_21DBF574C();
  [v4 setLocale_];

  v7 = sub_21DBF594C();
  [v4 setCalendar_];

  return v4;
}

id sub_21DAC0CE8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = sub_21DAC0B58();
    v6 = sub_21DBFA12C();
    [v5 setLocalizedDateFormatFromTemplate_];

    [v5 setFormattingContext_];
    v7 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v8 = v3;
  return v4;
}

id sub_21DAC0DBC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = sub_21DAC0B58();
    [v7 setDateStyle_];
    [v7 setFormattingContext_];
    [v7 setDoesRelativeDateFormatting_];
    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

uint64_t sub_21DAC0E60()
{
  v0 = sub_21DAC0D9C();
  v1 = sub_21DBF55BC();
  v2 = [v0 stringFromDate_];

  v3 = sub_21DBFA16C();
  v5 = v4;

  v6 = sub_21DAC0DAC();
  v7 = sub_21DBF55BC();
  v8 = [v6 stringFromDate_];

  v9 = sub_21DBFA16C();
  v11 = v10;

  if (v3 == v9 && v5 == v11)
  {

LABEL_5:

    return 0;
  }

  v12 = sub_21DBFC64C();

  if (v12)
  {
    goto LABEL_5;
  }

  return v3;
}

id sub_21DAC0FD8(uint64_t *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v9 = sub_21DAC0B58();
    v10 = sub_21DBFA12C();
    [v9 *a4];

    v11 = *(v4 + v5);
    *(v4 + v5) = v9;
    v7 = v9;

    v6 = 0;
  }

  v12 = v6;
  return v7;
}

uint64_t sub_21DAC10B0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t TTRDateBucketSectionHeaderTitleFormatterBase.__allocating_init(locale:calendar:allowsRelativeDates:referenceDateForYearAndEra:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerRelativeDateFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateExcludingYearFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___headerEntireDateIncludingYearFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___relativeDateFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___absoluteDateFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___yearFormatter) = 0;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase____lazy_storage___monthFormatter) = 0;
  v9 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_locale;
  v10 = sub_21DBF582C();
  (*(*(v10 - 8) + 32))(v8 + v9, a1, v10);
  v11 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_calendar;
  v12 = sub_21DBF5A2C();
  (*(*(v12 - 8) + 32))(v8 + v11, a2, v12);
  *(v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_allowsRelativeDates) = a3;
  sub_21D46CA8C(a4, v8 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra);
  return v8;
}

uint64_t TTRDateBucketSectionHeaderTitleFormatterBase.monthHeaderTitleString(for:)(uint64_t a1)
{
  v3 = sub_21DBF5A0C();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v39 - v7;
  v9 = sub_21DBF563C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_referenceDateForYearAndEra, v8, &qword_27CE58D68);
  v13 = *(v10 + 48);
  v14 = v13(v8, 1, v9);
  v48 = v10;
  v49 = v9;
  v45 = v12;
  if (v14 == 1)
  {
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    if (v13(v8, 1, v9) != 1)
    {
      sub_21D0CF7E0(v8, &qword_27CE58D68);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  v15 = OBJC_IVAR____TtC15RemindersUICore44TTRDateBucketSectionHeaderTitleFormatterBase_calendar;
  v42 = *MEMORY[0x277CC9988];
  v17 = v46;
  v16 = v47;
  v18 = *(v46 + 104);
  v18(v5);
  v41 = v15;
  v43 = sub_21DBF5A1C();
  v19 = *(v17 + 8);
  v19(v5, v16);
  v40 = v19;
  (v18)(v5, *MEMORY[0x277CC9968], v16);
  v44 = sub_21DBF5A1C();
  v19(v5, v16);
  v20 = sub_21DAC0FB8();
  v39[1] = a1;
  v21 = sub_21DBF55BC();
  v22 = [v20 stringFromDate_];

  v23 = sub_21DBFA16C();
  v46 = v24;

  (v18)(v5, v42, v16);
  v25 = v45;
  v26 = sub_21DBF5A1C();
  v40(v5, v16);
  if (v43 != v26)
  {
    v29 = sub_21DAC0F9C();
    v30 = sub_21DBF55BC();
    v31 = [v29 stringFromDate_];

    v32 = sub_21DBFA16C();
    v34 = v33;

    if (v44 == 1)
    {
      v35 = _s15RemindersUICore21TTRLocalizableStringsO17DateBucketHeadersO5month_4yearS2S_SStFZ_0(v23, v46, v32, v34);
    }

    else
    {
      v35 = _s15RemindersUICore21TTRLocalizableStringsO17DateBucketHeadersO11restOfMonth_4yearS2S_SStFZ_0(v23, v46, v32, v34);
    }

    v23 = v35;

LABEL_15:
    v28 = v48;
    v27 = v49;

    goto LABEL_16;
  }

  if (v44 != 1)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_21DC08D00;
    *(v36 + 56) = MEMORY[0x277D837D0];
    *(v36 + 64) = sub_21D17A884();
    v37 = v46;
    *(v36 + 32) = v23;
    *(v36 + 40) = v37;
    v23 = sub_21DBFA17C();
    goto LABEL_15;
  }

  v28 = v48;
  v27 = v49;
LABEL_16:
  (*(v28 + 8))(v25, v27);
  return v23;
}

uint64_t TTRDateBucketSectionHeaderTitleFormatterBase.yearHeaderTitleString(for:)()
{
  v1 = sub_21DBF5A0C();
  v28 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF732C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF563C();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x223D3FAB0](v9);
  v29 = v0;
  v12 = sub_21DAC0F9C();
  v13 = sub_21DBF55BC();
  v14 = [v12 stringFromDate_];

  v15 = sub_21DBFA16C();
  v30 = v16;
  v31 = v15;

  sub_21DBF72EC();
  v17 = (*(v5 + 88))(v7, v4);
  if (v17 == *MEMORY[0x277D454D8])
  {
    v18 = v28;
    v19 = *(v28 + 104);
    v19(v3, *MEMORY[0x277CC9968], v1);
    v27 = sub_21DBF5A1C();
    v20 = *(v18 + 8);
    v20(v3, v1);
    v19(v3, *MEMORY[0x277CC9998], v1);
    v21 = sub_21DBF5A1C();
    v20(v3, v1);
    v23 = v30;
    v22 = v31;
    if (v27 != 1 || v21 != 1)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_21DC08D00;
      *(v24 + 56) = MEMORY[0x277D837D0];
      *(v24 + 64) = sub_21D17A884();
      *(v24 + 32) = v22;
      *(v24 + 40) = v23;
      v22 = sub_21DBFA17C();
    }

    goto LABEL_8;
  }

  v22 = v31;
  if (v17 == *MEMORY[0x277D454E0])
  {
LABEL_8:
    (*(v32 + 8))(v11, v33);
    return v22;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t sub_21DAC1CDC(uint64_t a1)
{
  sub_21D0D3954(a1, &v5, &qword_27CE5C690);
  if (!v6)
  {
    sub_21D0CF7E0(&v5, &qword_27CE5C690);
LABEL_9:
    v1 = 0;
    return v1 & 1;
  }

  sub_21D0CF2E8(&v5, v7);
  sub_21D0CEB98(v7, &v5);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
    goto LABEL_9;
  }

  if (v3 == 69 && v4 == 0xE100000000000000 || (sub_21DBFC64C() & 1) != 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v7);

    v1 = 1;
  }

  else
  {
    if (v3 == 99 && v4 == 0xE100000000000000)
    {

      v1 = 1;
    }

    else
    {
      v1 = sub_21DBFC64C();
    }

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return v1 & 1;
}

void sub_21DAC1E2C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5, uint64_t a6, uint64_t a7, int a8, void *a9)
{
  v37 = a8;
  v35[1] = a6;
  v36 = a7;
  v38 = a4;
  v13 = sub_21DBF4CAC();
  v14 = *(v13 - 8);
  *&v15 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a5 substringWithRange_];
  v19 = sub_21DBFA16C();
  v21 = v20;

  v39 = v19;
  v40 = v21;
  sub_21DBF4BBC();
  sub_21D176F0C();
  v22 = sub_21DBFBB3C();
  v24 = v23;
  (*(v14 + 8))(v17, v13);

  if (*(a1 + 16) || (v26 = v36, v27 = v37, v28 = a3 - 1, a3 <= 1))
  {

    goto LABEL_9;
  }

  v39 = v22;
  v40 = v24;
  MEMORY[0x28223BE20](v25);
  v35[-2] = &v39;
  v30 = sub_21D17B510(sub_21D8F91AC, &v35[-4], v29);

  if ((v30 & 1) == 0)
  {
    goto LABEL_9;
  }

  v31 = sub_21DBFA12C();
  [a5 replaceCharactersInRange:a2 withString:{a3, v31}];

  v32 = *(v26 + 8);
  v33 = __OFSUB__(v32, v28);
  v34 = v32 - v28;
  if (v33)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v26 + 8) = v34;
  if (v27)
  {
LABEL_9:
    *v38 = 1;
    return;
  }

  if (!__OFSUB__(*a9, v28))
  {
    *a9 -= v28;
    goto LABEL_9;
  }

LABEL_11:
  __break(1u);
}

uint64_t TTRDateBucketSectionHeaderTitleFormatterBase.__deallocating_deinit()
{
  TTRDateBucketSectionHeaderTitleFormatterBase.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRDateBucketSectionHeaderTitleFormatterBase()
{
  result = qword_280D0E480;
  if (!qword_280D0E480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21DAC2158()
{
  sub_21DBF582C();
  if (v0 <= 0x3F)
  {
    sub_21DBF5A2C();
    if (v1 <= 0x3F)
    {
      sub_21D4D5850();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t TTREditTodaySectionsViewModel.init(isPlaceholder:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = result;
  return result;
}

uint64_t TTREditTodaySectionsViewModel.CellViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBFB32C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTREditTodaySectionsViewModel.CellViewModel.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel(0) + 20));
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTREditTodaySectionsViewModel.CellViewModel.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel(0) + 24));
  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21DAC23E0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBFB32C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTREditTodaySectionsViewModel.OptimisticApply.isEmpty.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  sub_21DAC3574(v1, &v9 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21DAC3654(v4);
    v7 = 1;
  }

  else
  {
    v7 = sub_21DBF5EBC();
    (*(v6 + 8))(v4, v5);
  }

  return v7 & 1;
}

uint64_t TTREditTodaySectionsViewModel.OptimisticApply.init(cellOrdering:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);

  return sub_21DAC35E4(a1, a2);
}

uint64_t TTREditTodaySectionsViewModel.cellViewModels.getter()
{
  v1 = sub_21DBFB32C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v48 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v30 - v5;
  v7 = type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel(0);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  v11 = *(*v0 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v49 = MEMORY[0x277D84F90];
  sub_21D18F8E0(0, v11, 0);
  v13 = 0;
  v43 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v42 = v2 + 16;
  v12 = v49;
  v41 = v2 + 88;
  v40 = *MEMORY[0x277D45A18];
  v38 = *MEMORY[0x277D45A20];
  v32 = 0x800000021DC58960;
  v33 = "Sections UI for Today list";
  v31 = *MEMORY[0x277D45A28];
  v30[4] = "EMINDERS_DESCRIPTION";
  v30[5] = " UI for Today list";
  v30[3] = 0x800000021DC58A20;
  v30[2] = "Sections UI for Today list";
  v30[1] = 0x800000021DC588D0;
  v36 = 0x800000021DC58850;
  v37 = "name alert restore button";
  v39 = (v2 + 32);
  v44 = v11;
  v45 = v10;
  v34 = v6;
  v35 = v2;
  while (v13 < *(v10 + 16))
  {
    v14 = *(v2 + 16);
    v14(v6, v43 + *(v2 + 72) * v13, v1);
    v15 = v48;
    v14(v48, v6, v1);
    v16 = (*(v2 + 88))(v15, v1);
    if (v16 == v40)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

    if (v16 == v38)
    {
      if (qword_280D1BAA8 == -1)
      {
LABEL_9:
        v17 = sub_21DBF516C();
        v19 = v18;
        v20 = 0;
        v21 = 0;
        goto LABEL_14;
      }

LABEL_18:
      swift_once();
      goto LABEL_9;
    }

    if (v16 != v31)
    {
      goto LABEL_22;
    }

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v17 = sub_21DBF516C();
    v19 = v22;
    v20 = sub_21DBF516C();
    v21 = v23;
    v6 = v34;
    v2 = v35;
LABEL_14:
    (*v39)(v9, v6, v1);
    v24 = v47;
    v25 = &v9[*(v47 + 20)];
    *v25 = v17;
    v25[1] = v19;
    v26 = &v9[*(v24 + 24)];
    *v26 = v20;
    v26[1] = v21;
    v49 = v12;
    v28 = *(v12 + 16);
    v27 = *(v12 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_21D18F8E0(v27 > 1, v28 + 1, 1);
      v12 = v49;
    }

    ++v13;
    *(v12 + 16) = v28 + 1;
    sub_21DAC36BC(v9, v12 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v28);
    v10 = v45;
    if (v44 == v13)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_22:
  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t sub_21DAC2C68@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBFB32C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 16);
  v8(v7, v1, v3, v5);
  v9 = (*(v4 + 88))(v7, v3);
  if (v9 == *MEMORY[0x277D45A18])
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  if (v9 == *MEMORY[0x277D45A20])
  {
    if (qword_280D1BAA8 == -1)
    {
LABEL_6:
      v10 = sub_21DBF516C();
      v12 = v11;
      v13 = 0;
      v14 = 0;
LABEL_11:
      (v8)(a1, v1, v3);
      result = type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel(0);
      v18 = (a1 + *(result + 20));
      *v18 = v10;
      v18[1] = v12;
      v19 = (a1 + *(result + 24));
      *v19 = v13;
      v19[1] = v14;
      return result;
    }

LABEL_12:
    swift_once();
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x277D45A28])
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF516C();
    v12 = v15;
    v13 = sub_21DBF516C();
    v14 = v16;
    goto LABEL_11;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t TTREditTodaySectionsViewModel.init(itemIdentifiers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t TTREditTodaySectionsViewModel.optimisticApply(forMovingItemsAt:to:)@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v9 - v4;
  v9[1] = *v1;
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66348);
  sub_21DAC3778(&qword_27CE66350);
  sub_21DBFA0BC();
  sub_21DBFB32C();
  sub_21DAC3720();
  sub_21DBF5ECC();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340);
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v7(a1, 1, 1, v6);
  return sub_21DAC35E4(v5, a1);
}

uint64_t TTREditTodaySectionsViewModel.applying(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - v10;
  v12 = *v2;
  v13 = *(v2 + 8);
  sub_21DAC3574(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_21DBF8E0C();
    result = sub_21DAC3654(v7);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v16[1] = v12;
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66348);
    sub_21DBFB32C();
    sub_21DAC3778(&qword_27CE66360);
    sub_21DAC3720();
    v15 = sub_21DBFA45C();

    result = (*(v9 + 8))(v11, v8);
    v12 = v15;
  }

  *a2 = v12;
  *(a2 + 8) = v13;
  return result;
}

uint64_t sub_21DAC3450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBFB32C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t _s15RemindersUICore29TTREditTodaySectionsViewModelV04CellfG0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_21DBFB31C())
  {
    v4 = type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel(0);
    v5 = *(v4 + 20);
    v6 = *(a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v6 == *v8 && v7 == v8[1];
    if (v9 || (sub_21DBFC64C() & 1) != 0)
    {
      v10 = *(v4 + 24);
      v11 = (a1 + v10);
      v12 = *(a1 + v10 + 8);
      v13 = (a2 + v10);
      v14 = v13[1];
      if (v12)
      {
        if (v14)
        {
          v15 = *v11 == *v13 && v12 == v14;
          if (v15 || (sub_21DBFC64C() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v14)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_21DAC3574(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DAC35E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DAC3654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DAC36BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTREditTodaySectionsViewModel.CellViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DAC3720()
{
  result = qword_27CE66358;
  if (!qword_27CE66358)
  {
    sub_21DBFB32C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66358);
  }

  return result;
}

uint64_t sub_21DAC3778(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE66348);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTREditTodaySectionsViewModel.CellViewModel(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBFB32C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a3 + 24);
    v10 = (a1 + v8);
    v11 = (a2 + v8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = (a1 + v9);
    v14 = (a2 + v9);
    v15 = v14[1];
    *v13 = *v14;
    v13[1] = v15;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t destroy for TTREditTodaySectionsViewModel.CellViewModel(uint64_t a1)
{
  v2 = sub_21DBFB32C();
  (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t initializeWithCopy for TTREditTodaySectionsViewModel.CellViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBFB32C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = (a1 + v7);
  v10 = (a2 + v7);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = (a1 + v8);
  v13 = (a2 + v8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTREditTodaySectionsViewModel.CellViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBFB32C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];
  sub_21DBF8E0C();

  v10 = *(a3 + 24);
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  *v11 = *v12;
  v11[1] = v12[1];
  sub_21DBF8E0C();

  return a1;
}

uint64_t initializeWithTake for TTREditTodaySectionsViewModel.CellViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBFB32C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t assignWithTake for TTREditTodaySectionsViewModel.CellViewModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBFB32C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  *v8 = v11;
  v8[1] = v10;

  v12 = *(a3 + 24);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  v16 = *v14;
  v15 = v14[1];
  *v13 = v16;
  v13[1] = v15;

  return a1;
}

uint64_t sub_21DAC3C0C()
{
  result = sub_21DBFB32C();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTREditTodaySectionsViewModel.OptimisticApply(uint64_t *a1, uint64_t *a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for TTREditTodaySectionsViewModel.OptimisticApply(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340);
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *initializeWithCopy for TTREditTodaySectionsViewModel.OptimisticApply(void *a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *assignWithCopy for TTREditTodaySectionsViewModel.OptimisticApply(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 16))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 24))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338) - 8) + 64);

  return memcpy(a1, a2, v9);
}

void *initializeWithTake for TTREditTodaySectionsViewModel.OptimisticApply(void *a1, const void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a2, 1, v4))
  {
    v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338) - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    (*(v5 + 32))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }
}

void *assignWithTake for TTREditTodaySectionsViewModel.OptimisticApply(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66340);
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(a1, 1, v4);
  v8 = v6(a2, 1, v4);
  if (v7)
  {
    if (!v8)
    {
      (*(v5 + 32))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
      return a1;
    }
  }

  else
  {
    if (!v8)
    {
      (*(v5 + 40))(a1, a2, v4);
      return a1;
    }

    (*(v5 + 8))(a1, v4);
  }

  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE66338) - 8) + 64);

  return memcpy(a1, a2, v9);
}

void sub_21DAC4530()
{
  sub_21DAC45BC();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21DAC45BC()
{
  if (!qword_27CE66388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE66340);
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE66388);
    }
  }
}

uint64_t TTRReminderDetailEditingSession.__allocating_init(item:acquirerName:interactor:sharedPropertiesWrapper:setNeedsDisplayHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  sub_21DBF56AC();
  sub_21D24BDFC(a1, v16 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_item);
  v17 = (v16 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_acquirerName);
  *v17 = a2;
  v17[1] = a3;
  v18 = (v16 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor);
  *v18 = a4;
  v18[1] = a5;
  *(v16 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper) = a6;
  v19 = (v16 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  *v19 = a7;
  v19[1] = a8;
  return v16;
}

uint64_t TTRReminderDetailEditingSession.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_id;
  v4 = sub_21DBF56BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRReminderDetailEditingSession.acquirerName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_acquirerName);
  sub_21DBF8E0C();
  return v1;
}

id TTRReminderDetailEditingSession.pendingMoveTargetList.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 64))(&v11, ObjectType, v1);
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  if (v12 == 255)
  {
    sub_21D157864(v11, 255);
    sub_21D575DF4(v5, v6, v7, v8);
    return 0;
  }

  v9 = v11;
  sub_21D157864(v3, v4);
  sub_21D575DF4(v5, v6, v7, v8);
  if (v4)
  {
    sub_21D157864(v3, v4);
    return 0;
  }

  return v3;
}

void sub_21DAC48B0(void **a1, void *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
    ObjectType = swift_getObjectType();
    v7 = v2;
    v8 = 0;
    v5 = *(v3 + 104);
    v6 = v2;
    v5(&v7, ObjectType, v3);
  }
}

void TTRReminderDetailEditingSession.pendingMoveTargetList.setter(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
    ObjectType = swift_getObjectType();
    v7 = a1;
    v8 = 0;
    v5 = *(v3 + 104);
    v6 = a1;
    v5(&v7, ObjectType, v3);
  }
}

void (*TTRReminderDetailEditingSession.pendingMoveTargetList.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
  a1[1] = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor);
  a1[2] = v3;
  a1[3] = swift_getObjectType();
  (*(v3 + 64))(&v12);
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  if (v13 == 255)
  {
    sub_21D157864(v12, 255);
    sub_21D575DF4(v6, v7, v8, v9);
    goto LABEL_5;
  }

  v10 = v12;
  sub_21D157864(v4, v5);
  sub_21D575DF4(v6, v7, v8, v9);
  if (v5)
  {
    sub_21D157864(v4, v5);
LABEL_5:
    v4 = 0;
  }

  *a1 = v4;
  return sub_21DAC4AF0;
}

void sub_21DAC4AF0(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    if (v2)
    {
      v4 = *(a1 + 16);
      v3 = *(a1 + 24);
      v12 = *a1;
      v13 = 0;
      v5 = *(v4 + 104);
      v11 = v2;
      v5(&v12, v3, v4);

      v6 = v11;
    }

    else
    {
      v6 = 0;
    }
  }

  else if (v2)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v12 = *a1;
    v13 = 0;
    v9 = *(v8 + 104);
    v10 = v2;
    v9(&v12, v7, v8);
  }
}

unint64_t TTRReminderDetailEditingSession.reminder.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 16))(ObjectType, v3);
  result = sub_21D306CD8();
  a1[3] = result;
  a1[4] = &protocol witness table for REMReminderChangeItem;
  *a1 = v5;
  return result;
}

uint64_t TTRReminderDetailEditingSession.reminderChangeItem.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t TTRReminderDetailEditingSession.attributeEditor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1);
}

uint64_t TTRReminderDetailEditingSession.sharedProperties.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper);
  swift_beginAccess();
  *a1 = *(v3 + 16);
  return sub_21DBF8E0C();
}

uint64_t sub_21DAC4D68(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper);
  swift_beginAccess();
  *(v3 + 16) = v2;
  sub_21DBF8E0C();
}

uint64_t TTRReminderDetailEditingSession.sharedProperties.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper);
  swift_beginAccess();
  *(v3 + 16) = v2;
}

void (*TTRReminderDetailEditingSession.sharedProperties.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper);
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 16);
  sub_21DBF8E0C();
  return sub_21D6547D8;
}

uint64_t TTRReminderDetailEditingSession.init(item:acquirerName:interactor:sharedPropertiesWrapper:setNeedsDisplayHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_21DBF56AC();
  sub_21D24BDFC(a1, v8 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_item);
  v17 = (v8 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_acquirerName);
  *v17 = a2;
  v17[1] = a3;
  v18 = (v8 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor);
  *v18 = a4;
  v18[1] = a5;
  *(v8 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper) = a6;
  v19 = (v8 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  *v19 = a7;
  v19[1] = a8;
  return v8;
}

Swift::Void __swiftcall TTRReminderDetailEditingSession.setNeedsDisplay(_:)(RemindersUICore::TTRRemindersListEditingSessionDisplayTargets a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  v3 = *a1.rawValue;
  v2(&v3);
}

Swift::Void __swiftcall TTRReminderDetailEditingSession.finish(options:)(RemindersUICore::TTRRemindersListEditingSessionFinishingOption options)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  v3 = 1;
  v2(&v3);
}

uint64_t TTRReminderDetailEditingSession.finishAndForceSave()(_BYTE *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  v5 = 1;
  v3(&v5);
  *a1 = 0;
  return 0;
}

uint64_t TTRReminderDetailEditingSession.finishAndForceSaveAsync()(_BYTE *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  v5 = 1;
  v3(&v5);
  *a1 = 0;
  return 0;
}

uint64_t TTRReminderDetailEditingSession.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_id;
  v2 = sub_21DBF56BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21D24B040(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_item);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t TTRReminderDetailEditingSession.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_id;
  v2 = sub_21DBF56BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21D24B040(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_item);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21DAC5270@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_id;
  v4 = sub_21DBF56BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21DAC52FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_acquirerName);
  sub_21DBF8E0C();
  return v1;
}

unint64_t sub_21DAC5338@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 16))(ObjectType, v3);
  result = sub_21D306CD8();
  a1[3] = result;
  a1[4] = &protocol witness table for REMReminderChangeItem;
  *a1 = v5;
  return result;
}

uint64_t sub_21DAC53AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

void sub_21DAC53FC(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
    ObjectType = swift_getObjectType();
    v7 = a1;
    v8 = 0;
    v5 = *(v3 + 104);
    v6 = a1;
    v5(&v7, ObjectType, v3);
  }
}

void (*sub_21DAC5494(void *a1))(void *)
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
  v2[4] = TTRReminderDetailEditingSession.pendingMoveTargetList.modify(v2);
  return sub_21D4C30A8;
}

uint64_t sub_21DAC5504()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1);
}

uint64_t sub_21DAC5560@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper);
  swift_beginAccess();
  *a1 = *(v3 + 16);
  return sub_21DBF8E0C();
}

uint64_t sub_21DAC55B4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper);
  swift_beginAccess();
  *(v3 + 16) = v2;
}

void (*sub_21DAC5608(uint64_t **a1))(void *)
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
  v2[4] = TTRReminderDetailEditingSession.sharedProperties.modify(v2);
  return sub_21D4C3D30;
}

uint64_t sub_21DAC5678(uint64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_21DAC56C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  v3 = 1;
  return v1(&v3);
}

uint64_t sub_21DAC5708(_BYTE *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  v5 = 1;
  v3(&v5);
  *a1 = 0;
  return 0;
}

uint64_t sub_21DAC575C(_BYTE *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  v5 = 1;
  v3(&v5);
  *a1 = 0;
  return 0;
}

uint64_t type metadata accessor for TTRReminderDetailEditingSession()
{
  result = qword_27CE663A8;
  if (!qword_27CE663A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DAC5808()
{
  result = sub_21DBF56BC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListViewModel.Item(319);
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

uint64_t sub_21DAC5928()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE663B8);
  v1 = __swift_project_value_buffer(v0, qword_27CE663B8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRTreeDiffResult.ParentAndPatch.parent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBFBA8C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRTreeDiffResult.ParentAndPatch.init(parent:patch:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21DBFBA8C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for TTRTreeDiffResult.ParentAndPatch();
  *(a3 + *(result + 28)) = a2;
  return result;
}

uint64_t TTRTreeDiffResult.isEmpty.getter()
{
  type metadata accessor for TTRTreeDiffResult.ParentAndPatch();
  sub_21DBFA74C();
  swift_getWitnessTable();
  return sub_21DBFACFC() & 1;
}

uint64_t TTRTreeDiffResult.containsInsertions.getter(uint64_t a1)
{
  TTRTreeDiffResult.insertedElements.getter(a1);
  sub_21DBFBE5C();
  swift_getWitnessTable();
  v1 = sub_21DBFA58C();

  return v1 & 1;
}

uint64_t sub_21DAC5C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21DBF5F9C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  (*(v7 + 16))(&v20 - v9, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277D44D80])
  {
    (*(v7 + 96))(v10, v6);
    v12 = *(swift_getTupleTypeMetadata2() + 48);
    v13 = *(a2 - 8);
    (*(v13 + 32))(a3, &v10[v12], a2);
    return (*(v13 + 56))(a3, 0, 1, a2);
  }

  if (v11 == *MEMORY[0x277D44D78])
  {
    v15 = *(a2 - 8);
  }

  else if (v11 == *MEMORY[0x277D44D68])
  {
    (*(v7 + 96))(v10, v6);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v15 = *(a2 - 8);
    (*(v15 + 8))(&v10[*(TupleTypeMetadata3 + 64)], a2);
  }

  else
  {
    if (v11 != *MEMORY[0x277D44D70])
    {
      result = sub_21DBFC63C();
      __break(1u);
      return result;
    }

    (*(v7 + 96))(v10, v6);
    v17 = swift_getTupleTypeMetadata3();
    v18 = *(v17 + 48);
    v15 = *(a2 - 8);
    v19 = *(v15 + 8);
    v19(&v10[*(v17 + 64)], a2);
    v19(&v10[v18], a2);
  }

  return (*(v15 + 56))(a3, 1, 1, a2);
}

uint64_t sub_21DAC5FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_allocObject();
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  sub_21DBFBE3C();
  sub_21DBF8E0C();

  swift_getWitnessTable();

  return sub_21DBFBE7C();
}

uint64_t sub_21DAC60A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  *(v5 + 16) = v6;
  v7 = sub_21DAC5FA8(a3, v5, a1, v6);

  return v7;
}

uint64_t sub_21DAC611C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21DBF5F9C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  (*(v7 + 16))(&v20 - v9, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277D44D80])
  {
    (*(v7 + 96))(v10, v6);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v13 = *(a2 - 8);
    v14 = *(TupleTypeMetadata2 + 48);
LABEL_3:
    (*(v13 + 8))(&v10[v14], a2);
    return (*(v13 + 56))(a3, 1, 1, a2);
  }

  if (v11 == *MEMORY[0x277D44D78])
  {
    v13 = *(a2 - 8);
    return (*(v13 + 56))(a3, 1, 1, a2);
  }

  if (v11 == *MEMORY[0x277D44D68])
  {
    (*(v7 + 96))(v10, v6);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v13 = *(a2 - 8);
    v14 = *(TupleTypeMetadata3 + 64);
    goto LABEL_3;
  }

  if (v11 == *MEMORY[0x277D44D70])
  {
    (*(v7 + 96))(v10, v6);
    v17 = swift_getTupleTypeMetadata3();
    v18 = *(v17 + 64);
    v19 = *(a2 - 8);
    (*(v19 + 32))(a3, &v10[*(v17 + 48)], a2);
    (*(v19 + 56))(a3, 0, 1, a2);
    return (*(v19 + 8))(&v10[v18], a2);
  }

  else
  {
    result = sub_21DBFC63C();
    __break(1u);
  }

  return result;
}

uint64_t TTRTreeDiffResult.init(forInserting:at:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v47 = a3;
  v48 = a5;
  v8 = sub_21DBFBA8C();
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v9;
  v10 = sub_21DBFA74C();
  v11 = sub_21DBF5B9C();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_21DAC68F8();
  v50 = v10;
  v51 = v11;
  v44 = v11;
  v52 = WitnessTable;
  v53 = v13;
  v14 = sub_21DBFBF5C();
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  v18 = sub_21DBFA6DC();
  v49 = a2;
  if (v18 != sub_21DBF5AAC())
  {
    if (qword_27CE570D8 != -1)
    {
      swift_once();
    }

    v19 = sub_21DBF84BC();
    __swift_project_value_buffer(v19, qword_27CE663B8);
    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAECC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v42 = a1;
      v23 = v22;
      *v22 = 0;
      _os_log_impl(&dword_21D0C9000, v20, v21, "items and indexes are of different lengths", v22, 2u);
      v24 = v23;
      a1 = v42;
      MEMORY[0x223D46520](v24, -1, -1);
    }
  }

  v50 = a1;
  v25 = v44;
  sub_21DBFC6EC();

  MEMORY[0x28223BE20](v26);
  *(&v41 - 2) = a4;
  MEMORY[0x28223BE20](v27);
  *(&v41 - 4) = a4;
  *(&v41 - 3) = sub_21DAC6A34;
  *(&v41 - 2) = v28;
  v29 = sub_21DBF5F9C();
  v30 = swift_getWitnessTable();
  v32 = sub_21D110EC8(sub_21DAC6A3C, (&v41 - 6), v14, v29, MEMORY[0x277D84A98], v30, MEMORY[0x277D84AC0], v31);
  (*(v15 + 8))(v17, v14);
  type metadata accessor for TTRTreeDiffResult.ParentAndPatch();
  sub_21DBFC5CC();
  swift_allocObject();
  v33 = sub_21DBFA60C();
  v35 = v34;
  v37 = v45;
  v36 = v46;
  v38 = v43;
  v39 = v47;
  (*(v45 + 16))(v43, v47, v46);
  TTRTreeDiffResult.ParentAndPatch.init(parent:patch:)(v38, v32, v35);
  sub_21D23C8B4();
  (*(v37 + 8))(v39, v36);
  result = (*(*(v25 - 8) + 8))(v49, v25);
  *v48 = v33;
  return result;
}

unint64_t sub_21DAC68F8()
{
  result = qword_280D1B830;
  if (!qword_280D1B830)
  {
    sub_21DBF5B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D1B830);
  }

  return result;
}

uint64_t sub_21DAC6950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  *a4 = a2;
  (*(*(a3 - 8) + 16))(&a4[v8], a1, a3);
  v9 = *MEMORY[0x277D44D80];
  v10 = sub_21DBF5F9C();
  v11 = *(*(v10 - 8) + 104);

  return v11(a4, v9, v10);
}

uint64_t sub_21DAC6A3C(uint64_t a1)
{
  v3 = *(v1 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
}

uint64_t TTRTreeDiffResult.init(forDeletingItemsAt:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v27 = a2;
  v28 = a4;
  v25 = a1;
  v26 = sub_21DBFBA8C();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA88);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = sub_21DBF5B9C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  v30 = a3;
  v14 = sub_21DBF5F9C();
  v15 = sub_21D0D0F1C(&qword_280D0C168, &qword_27CE5EA88);
  v24 = sub_21D0E5014(sub_21DAC93F0, v29, v9, v14, MEMORY[0x277D84A98], v15, MEMORY[0x277D84AC0], v16);
  sub_21DAC9474(v11);
  type metadata accessor for TTRTreeDiffResult.ParentAndPatch();
  sub_21DBFC5CC();
  swift_allocObject();
  v17 = sub_21DBFA60C();
  v19 = v18;
  v20 = v26;
  v21 = v27;
  (*(v6 + 16))(v8, v27, v26);
  TTRTreeDiffResult.ParentAndPatch.init(parent:patch:)(v8, v24, v19);
  sub_21D23C8B4();
  (*(v6 + 8))(v21, v20);
  result = (*(v13 + 8))(v25, v12);
  *v28 = v17;
  return result;
}

uint64_t TTRTreeDiffResult.appending(_:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TTRTreeDiffResult.ParentAndPatch();
  result = sub_21DBFA66C();
  *a1 = result;
  return result;
}

uint64_t TTRTreeDiffResult.mapElement<A>(transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v13[7] = *v5;
  v13[2] = *(a3 + 16);
  v13[3] = a4;
  v13[4] = a1;
  v13[5] = a2;
  type metadata accessor for TTRTreeDiffResult.ParentAndPatch();
  v7 = sub_21DBFA74C();
  v8 = type metadata accessor for TTRTreeDiffResult.ParentAndPatch();
  sub_21DBF8E0C();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_21D0E5014(sub_21DAC94DC, v13, v7, v8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

  *a5 = v11;
  return result;
}

uint64_t sub_21DAC6EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a6;
  v27 = sub_21DBFBA8C();
  v12 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v35 = a4;
  v36 = a5;
  v37 = a2;
  v38 = a3;
  sub_21DBFBA8C();
  sub_21D10AA90(sub_21DACA098, v34, MEMORY[0x277D84A98], a5, v18, v17);
  v26 = v6;
  v39 = *(a1 + *(type metadata accessor for TTRTreeDiffResult.ParentAndPatch() + 28));
  v30 = a4;
  v31 = a5;
  v32 = a2;
  v33 = a3;
  sub_21DBF5F9C();
  v19 = sub_21DBFA74C();
  v20 = sub_21DBF5F9C();
  sub_21DBF8E0C();
  WitnessTable = swift_getWitnessTable();
  v23 = sub_21D0E5014(sub_21DACA110, v29, v19, v20, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v22);

  (*(v12 + 32))(v14, v17, v27);
  return TTRTreeDiffResult.ParentAndPatch.init(parent:patch:)(v14, v23, v28);
}

uint64_t sub_21DAC7140@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v42 = a1;
  v43 = a4;
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, v21, v18);
  v22 = (*(v16 + 88))(v20, a3);
  v23 = v22;
  if (v22 == *MEMORY[0x277D44D80])
  {
    (*(v16 + 96))(v20, a3);
    v24 = *v20;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(v9 + 32))(v14, &v20[*(TupleTypeMetadata2 + 48)], v8);
    swift_getTupleTypeMetadata2();
    *a5 = v24;
    v42(v14);
    (*(v9 + 8))(v14, v8);
    v26 = a5;
LABEL_9:
    v36 = sub_21DBF5F9C();
    return (*(*(v36 - 8) + 104))(v26, v23, v36);
  }

  v40 = a2;
  v41 = a5;
  if (v22 == *MEMORY[0x277D44D78])
  {
    (*(v16 + 96))(v20, a3);
    v26 = v41;
    *v41 = *v20;
    goto LABEL_9;
  }

  if (v22 == *MEMORY[0x277D44D68])
  {
    (*(v16 + 96))(v20, a3);
    v27 = *v20;
    v28 = *(v20 + 1);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    (*(v9 + 32))(v14, &v20[*(TupleTypeMetadata3 + 64)], v8);
    swift_getTupleTypeMetadata3();
    v26 = v41;
    v30 = v42;
    *v41 = v27;
    v26[1] = v28;
    v30(v14);
    (*(v9 + 8))(v14, v8);
    goto LABEL_9;
  }

  if (v22 == *MEMORY[0x277D44D70])
  {
    (*(v16 + 96))(v20, a3);
    v39 = *v20;
    v31 = swift_getTupleTypeMetadata3();
    v32 = *(v31 + 64);
    v33 = *(v9 + 32);
    v33(v14, &v20[*(v31 + 48)], v8);
    v33(v11, &v20[v32], v8);
    swift_getTupleTypeMetadata3();
    v26 = v41;
    *v41 = v39;
    v34 = v42;
    v42(v14);
    v34(v11);
    v35 = *(v9 + 8);
    v35(v11, v8);
    v35(v14, v8);
    goto LABEL_9;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t TTRTreeDiffResult.shortSummary.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v137 = sub_21DBFBA8C();
  v3 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v136 = &v96 - v4;
  v5 = sub_21DBF5F9C();
  v138 = *(v5 - 8);
  v139 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v96 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v96 - v12;
  v97 = v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v96 - v16;
  v142 = v2;
  v18 = type metadata accessor for TTRTreeDiffResult.ParentAndPatch();
  v103 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v140 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v19;
  MEMORY[0x28223BE20](v20);
  v109 = &v96 - v21;
  v22 = *v1;
  v146 = *v1;
  if (TTRTreeDiffResult.isEmpty.getter())
  {
    return 0x61647075206F6E28;
  }

  sub_21DBF8E0C();
  v24 = v22;
  if (!sub_21DBFA6DC())
  {

    v106 = 0;
    v107 = 0;
    v121 = 0;
    v116 = 0;
    v74 = 0;
    v76 = 0;
    v75 = 0;
    v77 = 0;
    goto LABEL_49;
  }

  v106 = 0;
  v107 = 0;
  v120 = 0;
  v121 = 0;
  v115 = 0;
  v116 = 0;
  v104 = 0;
  v105 = 0;
  v112 = 0;
  v113 = 0;
  v122 = 0;
  v123 = 0;
  v117 = 0;
  v118 = 0;
  v110 = 0;
  v111 = 0;
  v25 = 0;
  v101 = (v103 + 32);
  v102 = (v103 + 16);
  *&v144 = v138 + 16;
  v134 = (v3 + 16);
  v135 = (v138 + 32);
  v133 = v142 - 8;
  v132 = *MEMORY[0x277D44D80];
  v130 = (v138 + 88);
  v131 = (v3 + 8);
  v124 = *MEMORY[0x277D44D78];
  v119 = *MEMORY[0x277D44D68];
  v114 = *MEMORY[0x277D44D70];
  v128 = v17;
  v129 = (v138 + 8);
  v126 = v13;
  v127 = (v138 + 96);
  v98 = (v103 + 8);
  v99 = v24;
  v125 = v10;
  v100 = v18;
  while (1)
  {
    v27 = sub_21DBFA6AC();
    sub_21DBFA61C();
    if (v27)
    {
      (*(v103 + 16))(v109, v24 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v25, v18);
      v28 = __OFADD__(v25, 1);
      v29 = v25 + 1;
      if (v28)
      {
        break;
      }

      goto LABEL_8;
    }

    v72 = v25;
    v73 = sub_21DBFBF7C();
    if (v96 != 8)
    {
LABEL_73:
      __break(1u);
LABEL_74:
      result = sub_21DBFC63C();
      __break(1u);
      return result;
    }

    v146 = v73;
    (*v102)(v109, &v146, v18);
    swift_unknownObjectRelease();
    v29 = v25 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

LABEL_8:
    v108 = v29;
    v30 = v140;
    (*v101)(v140, v109, v18);
    v31 = *&v30[*(v18 + 28)];
    sub_21DBF8E0C();
    v32 = v139;
    if (sub_21DBFA6DC())
    {
      v33 = 0;
      do
      {
        v39 = sub_21DBFA6AC();
        sub_21DBFA61C();
        if (v39)
        {
          v40 = *(v138 + 16);
          v40(v17, v31 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v33, v32);
          v41 = (v33 + 1);
          if (__OFADD__(v33, 1))
          {
            goto LABEL_61;
          }
        }

        else
        {
          v71 = sub_21DBFBF7C();
          if (v97 != 8)
          {
            __break(1u);
            goto LABEL_73;
          }

          v146 = v71;
          v40 = *v144;
          (*v144)(v17, &v146, v32);
          swift_unknownObjectRelease();
          v41 = (v33 + 1);
          if (__OFADD__(v33, 1))
          {
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }
        }

        v143 = v41;
        v42 = v31;
        (*v135)(v13, v17, v32);
        v31 = v13;
        v43 = v136;
        v44 = v137;
        (*v134)(v136, v140, v137);
        v141 = *(v142 - 8);
        v45 = (*(v141 + 48))(v43, 1);
        (*v131)(v43, v44);
        if (v45 == 1)
        {
          v45 = v125;
          v40(v125, v31, v32);
          v46 = (*v130)(v45, v32);
          v13 = v31;
          if (v46 == v132)
          {
            (*v129)(v31, v32);
            (*v127)(v45, v32);
            v34 = v122 + 1;
            if (__OFADD__(v122, 1))
            {
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
              goto LABEL_71;
            }

            v31 = v42;
            v47 = v142;
            v48 = v122 + 1;
            TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
            v50 = v47;
            v13 = v126;
            (*(v141 + 8))(v45 + *(TupleTypeMetadata2 + 48), v50);
            v121 = v48;
            v122 = v48;
            goto LABEL_12;
          }

          v31 = v42;
          if (v46 != v124)
          {
            v32 = v139;
            if (v46 == v119)
            {
              (*v129)(v13, v139);
              (*v127)(v45, v32);
              v34 = v111 + 1;
              if (__OFADD__(v111, 1))
              {
                goto LABEL_70;
              }

              v55 = v142;
              v56 = v111 + 1;
              TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
              v58 = v55;
              v13 = v126;
              (*(v141 + 8))(v45 + *(TupleTypeMetadata3 + 64), v58);
              v106 = v56;
              v111 = v56;
            }

            else
            {
              if (v46 != v114)
              {
                goto LABEL_74;
              }

              (*v129)(v13, v139);
              (*v127)(v45, v32);
              v34 = v110 + 1;
              if (__OFADD__(v110, 1))
              {
                goto LABEL_69;
              }

              v65 = v142;
              v66 = v110 + 1;
              v67 = swift_getTupleTypeMetadata3();
              v68 = *(v67 + 48);
              v69 = *(v141 + 8);
              v69(&v125[*(v67 + 64)], v65);
              v70 = v65;
              v13 = v126;
              v69(&v125[v68], v70);
              v107 = v66;
              v110 = v66;
            }

            goto LABEL_12;
          }

          v32 = v139;
          (*v129)(v13, v139);
          v34 = v117 + 1;
          if (__OFADD__(v117, 1))
          {
            goto LABEL_65;
          }

          v116 = ++v117;
        }

        else
        {
          v40(v7, v31, v32);
          v51 = (*v130)(v7, v32);
          v13 = v31;
          if (v51 == v132)
          {
            (*v129)(v31, v32);
            (*v127)(v7, v32);
            v34 = v123;
            v32 = v123 + 1;
            if (__OFADD__(v123, 1))
            {
              goto LABEL_64;
            }

            v31 = v42;
            v52 = v142;
            v53 = swift_getTupleTypeMetadata2();
            v54 = v52;
            v13 = v126;
            (*(v141 + 8))(v7 + *(v53 + 48), v54);
            v120 = v32;
            v123 = v32;
LABEL_12:
            v32 = v139;
            goto LABEL_13;
          }

          v31 = v42;
          if (v51 != v124)
          {
            if (v51 == v119)
            {
              (*v129)(v13, v32);
              (*v127)(v7, v32);
              v34 = v113;
              v32 = v113 + 1;
              if (__OFADD__(v113, 1))
              {
                goto LABEL_68;
              }

              v35 = v142;
              v36 = swift_getTupleTypeMetadata3();
              v37 = v35;
              v13 = v126;
              (*(v141 + 8))(v7 + *(v36 + 64), v37);
              v104 = v32;
              v113 = v32;
            }

            else
            {
              if (v51 != v114)
              {
                goto LABEL_74;
              }

              (*v129)(v13, v32);
              (*v127)(v7, v32);
              v34 = v112 + 1;
              if (__OFADD__(v112, 1))
              {
                goto LABEL_67;
              }

              v59 = v112 + 1;
              v60 = v142;
              v61 = swift_getTupleTypeMetadata3();
              v62 = *(v61 + 48);
              v63 = *(v141 + 8);
              v63(v7 + *(v61 + 64), v60);
              v64 = v60;
              v13 = v126;
              v63(v7 + v62, v64);
              v105 = v59;
              v112 = v59;
            }

            goto LABEL_12;
          }

          (*v129)(v13, v32);
          v34 = v118 + 1;
          if (__OFADD__(v118, 1))
          {
            goto LABEL_66;
          }

          v115 = ++v118;
        }

LABEL_13:
        v38 = sub_21DBFA6DC();
        ++v33;
        v17 = v128;
      }

      while (v143 != v38);
    }

    v18 = v100;
    (*v98)(v140, v100);
    v24 = v99;
    v26 = sub_21DBFA6DC();
    v25 = v108;
    if (v108 == v26)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_47:

  v75 = v104;
  v74 = v105;
  v76 = v120;
  v77 = v115;
LABEL_49:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE663D0);
  inited = swift_initStackObject();
  v144 = xmmword_21DC0AFB0;
  *(inited + 16) = xmmword_21DC0AFB0;
  *(inited + 32) = 68;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = v77;
  *(inited + 56) = 77;
  *(inited + 64) = 0xE100000000000000;
  *(inited + 72) = v75;
  *(inited + 80) = 73;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = v76;
  *(inited + 104) = 82;
  *(inited + 112) = 0xE100000000000000;
  *(inited + 120) = v74;
  v79 = swift_initStackObject();
  *(v79 + 32) = 68;
  *(v79 + 16) = v144;
  v80 = v116;
  *(v79 + 40) = 0xE100000000000000;
  *(v79 + 48) = v80;
  *(v79 + 56) = 77;
  *(v79 + 64) = 0xE100000000000000;
  *(v79 + 72) = v106;
  *(v79 + 80) = 73;
  v81 = v121;
  *(v79 + 88) = 0xE100000000000000;
  *(v79 + 96) = v81;
  *(v79 + 104) = 82;
  *(v79 + 112) = 0xE100000000000000;
  *(v79 + 120) = v107;
  v31 = sub_21DAC8670(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE663D8);
  swift_arrayDestroy();
  v82 = sub_21DAC8670(v79);
  swift_setDeallocating();
  swift_arrayDestroy();
  if (*(v82 + 16))
  {
    v146 = 0x3A6E6F6974636573;
    v147 = 0xEA00000000007B20;
    v145 = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
    v83 = sub_21DBFA07C();
    v85 = v84;

    MEMORY[0x223D42AA0](v83, v85);

    MEMORY[0x223D42AA0](125, 0xE100000000000000);
    v13 = v146;
    v45 = v147;
    v33 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v7 = *(v33 + 16);
    v34 = *(v33 + 24);
    v32 = v7 + 1;
    if (v7 >= v34 >> 1)
    {
LABEL_71:
      v33 = sub_21D210A84((v34 > 1), v32, 1, v33);
    }

    *(v33 + 16) = v32;
    v86 = (v33 + 16 * v7);
    *(v86 + 4) = v13;
    *(v86 + 5) = v45;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  v13 = 0x61647075206F6E28;
  if (*(v31 + 16))
  {
    v146 = 0x7B203A776F72;
    v147 = 0xE600000000000000;
    v145 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
    v87 = sub_21DBFA07C();
    v89 = v88;

    MEMORY[0x223D42AA0](v87, v89);

    MEMORY[0x223D42AA0](125, 0xE100000000000000);
    v90 = v146;
    v91 = v147;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_21D210A84(0, *(v33 + 16) + 1, 1, v33);
    }

    v93 = *(v33 + 16);
    v92 = *(v33 + 24);
    if (v93 >= v92 >> 1)
    {
      v33 = sub_21D210A84((v92 > 1), v93 + 1, 1, v33);
    }

    *(v33 + 16) = v93 + 1;
    v94 = (v33 + 16 * v93);
    *(v94 + 4) = v90;
    *(v94 + 5) = v91;
LABEL_60:
    v146 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
    sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
    v95 = sub_21DBFA07C();

    return v95;
  }

  else
  {

    if (*(v33 + 16))
    {
      goto LABEL_60;
    }

LABEL_62:

    return v13;
  }
}

uint64_t sub_21DAC8670(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = MEMORY[0x277D84F90];
  v4 = result + 48;
  v5 = MEMORY[0x277D83B88];
  v6 = MEMORY[0x277D83BF8];
LABEL_2:
  v7 = (v4 + 24 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v3;
    }

    if (v1 >= v2)
    {
      break;
    }

    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v9 = *v7;
    v7 += 3;
    ++v1;
    if (v9 >= 1)
    {
      v16 = *(v7 - 5);
      v17 = *(v7 - 4);
      swift_bridgeObjectRetain_n();
      MEMORY[0x223D42AA0](8250, 0xE200000000000000);
      v10 = v6;
      v11 = sub_21DBFC5BC();
      MEMORY[0x223D42AA0](v11);

      result = swift_isUniquelyReferenced_nonNull_native();
      v12 = v5;
      if ((result & 1) == 0)
      {
        result = sub_21D210A84(0, *(v3 + 16) + 1, 1, v3);
        v3 = result;
      }

      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_21D210A84((v13 > 1), v14 + 1, 1, v3);
        v3 = result;
      }

      *(v3 + 16) = v14 + 1;
      v15 = v3 + 16 * v14;
      *(v15 + 32) = v16;
      *(v15 + 40) = v17;
      v1 = v8;
      v5 = v12;
      v6 = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_21DAC87F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = v12;
  v14[5] = a1;
  v14[6] = v13;
  v14[7] = a2;
  v14[8] = a3;
  sub_21DBF8E0C();

  result = sub_21DBFBE4C();
  *a6 = result;
  return result;
}

uint64_t sub_21DAC88D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v47 = a5;
  v48 = a4;
  v37 = a7;
  v49 = a6;
  v46 = sub_21DBFBA8C();
  v10 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v12 = &v36 - v11;
  v13 = sub_21DBF5F9C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  v17 = type metadata accessor for TTRTreeDiffResult.ParentAndPatch();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v41 = &v36 - v19;
  v43 = a2;
  v42 = v20;
  v21 = sub_21DBFA6DC();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v40 = a1;
  v22 = *(a1 + 16);
  v39 = v21;
  if (v22 < v21)
  {
    v38 = (v18 + 8);
    v45 = v49 - 8;
    while (2)
    {
      v23 = v41;
      v24 = v42;
      sub_21DBFA78C();
      v44 = *v38;
      sub_21DBF8E0C();
      v44(v23, v24);
      v25 = sub_21DBFA6DC();
      swift_beginAccess();
      swift_beginAccess();
      while (*(a3 + 16) < v25)
      {
        result = sub_21DBFA78C();
        v27 = *(a3 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          goto LABEL_14;
        }

        *(a3 + 16) = v29;
        v48(v16);
        (*(v14 + 8))(v16, v13);
        v30 = *(v49 - 8);
        if ((*(v30 + 48))(v12, 1) != 1)
        {

          v34 = v37;
          v35 = v49;
          (*(v30 + 32))(v37, v12, v49);
          return (*(v30 + 56))(v34, 0, 1, v35);
        }

        (*(v10 + 8))(v12, v46);
      }

      v31 = v40;
      v32 = *(v40 + 16);
      v28 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v28)
      {
LABEL_14:
        __break(1u);
        return result;
      }

      *(v40 + 16) = v33;
      *(a3 + 16) = 0;
      if (*(v31 + 16) < v39)
      {
        continue;
      }

      break;
    }
  }

  return (*(*(v49 - 8) + 56))(v37, 1, 1);
}

uint64_t TTRTreeDiffResult.ParentAndPatch.debugDescription.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  v12 = 0;
  v13 = 0xE000000000000000;
  v14 = v2;
  v11 = *(a1 + 16);
  sub_21DBF5F9C();
  sub_21DBFA74C();
  sub_21DBF8E0C();
  swift_getWitnessTable();
  v3 = MEMORY[0x277D837D0];
  sub_21DBFA53C();

  v5 = v15;
  v4 = v16;
  v10[2] = v11;
  sub_21DBFBA8C();
  sub_21D10AA90(sub_21DAC951C, v10, MEMORY[0x277D84A98], v3, v6, &v15);
  if (v16)
  {
    v7 = v15;
  }

  else
  {
    v7 = 7104878;
  }

  if (v16)
  {
    v8 = v16;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  v15 = 40;
  v16 = 0xE100000000000000;
  MEMORY[0x223D42AA0](v7, v8);

  MEMORY[0x223D42AA0](8236, 0xE200000000000000);
  MEMORY[0x223D42AA0](v5, v4);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return v15;
}

uint64_t sub_21DAC8F0C()
{
  sub_21DBF5F9C();
  v0 = sub_21DBF5F8C();
  MEMORY[0x223D42AA0](v0);
}

uint64_t static TTRTreeDiffResult.ParentAndPatch<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBFBA8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v34 = &v29 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = &v29 - v14;
  v17 = *(v16 + 48);
  v35 = v10;
  v18 = *(v10 + 16);
  v31 = a1;
  v18(&v29 - v14, a1, v9, v13);
  v32 = a2;
  (v18)(&v15[v17], a2, v9);
  v36 = v7;
  v19 = *(v7 + 48);
  if (v19(v15, 1, a3) == 1)
  {
    if (v19(&v15[v17], 1, a3) == 1)
    {
      (*(v35 + 8))(v15, v9);
      v20 = v37;
LABEL_9:
      type metadata accessor for TTRTreeDiffResult.ParentAndPatch();
      sub_21DBF5F9C();
      v38 = v20;
      swift_getWitnessTable();
      v22 = sub_21DBFA75C();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  v21 = v34;
  (v18)(v34, v15, v9);
  if (v19(&v15[v17], 1, a3) == 1)
  {
    (*(v36 + 8))(v21, a3);
LABEL_6:
    (*(v33 + 8))(v15, TupleTypeMetadata2);
    goto LABEL_7;
  }

  v23 = v36;
  v24 = &v15[v17];
  v25 = v30;
  (*(v36 + 32))(v30, v24, a3);
  v20 = v37;
  v26 = sub_21DBFA10C();
  v27 = *(v23 + 8);
  v27(v25, a3);
  v27(v21, a3);
  (*(v35 + 8))(v15, v9);
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t static TTRTreeDiffResult<A>.== infix(_:_:)()
{
  type metadata accessor for TTRTreeDiffResult.ParentAndPatch();
  swift_getWitnessTable();
  return sub_21DBFA75C() & 1;
}

uint64_t sub_21DAC93F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  v3 = *MEMORY[0x277D44D78];
  v4 = sub_21DBF5F9C();
  return (*(*(v4 - 8) + 104))(a2, v3, v4);
}

uint64_t sub_21DAC9474(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DAC951C@<X0>(void *a1@<X8>)
{
  result = sub_21DBFC5EC();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_21DAC9570()
{
  result = sub_21DBFBA8C();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_21DAC960C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = *(v6 + 80);
  if ((v8 & 0x1000F8) != 0 || ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));
  }

  else
  {
    if ((*(v6 + 48))(a2, 1, v5))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t sub_21DAC977C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1, v3))
  {
    (*(v4 + 8))(a1, v3);
  }
}

void *sub_21DAC9854(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    v7 = *(v6 + 84);
    v8 = *(v6 + 64);
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    memcpy(a1, a2, v9);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    v11 = *(v6 + 56);
    v10 = v6 + 56;
    v11(a1, 0, 1, v5);
    v7 = *(v10 + 28);
    v8 = *(v10 + 8);
  }

  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = v8 + 1;
  }

  *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_21DBF8E0C();
  return a1;
}

void *sub_21DAC997C(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 24))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  *((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_21DBF8E0C();

  return a1;
}

void *sub_21DAC9B30(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 40))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  *((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_21DAC9CDC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_33:
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      v18 = (*(v4 + 48))(a1, v5);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

void sub_21DAC9E4C(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (!v6)
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  if (!v6)
  {
    ++v9;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 > v8)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      v17 = a1;
      bzero(a1, v10);
      a1 = v17;
      *v17 = v16;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v15;
      }

      else
      {
        *(a1 + v10) = v15;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v10) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
    goto LABEL_39;
  }

  *(a1 + v10) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v7 < 0x7FFFFFFF)
  {
    v22 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = a2 - 1;
    }

    *v22 = v23;
  }

  else if (v7 >= a2)
  {
    v24 = *(v5 + 56);

    v24();
  }

  else
  {
    if (v9 <= 3)
    {
      v18 = ~(-1 << (8 * v9));
    }

    else
    {
      v18 = -1;
    }

    if (v9)
    {
      v19 = v18 & (~v7 + a2);
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      v21 = a1;
      bzero(a1, v9);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          *v21 = v19;
          *(v21 + 2) = BYTE2(v19);
        }

        else
        {
          *v21 = v19;
        }
      }

      else if (v20 == 1)
      {
        *v21 = v19;
      }

      else
      {
        *v21 = v19;
      }
    }
  }
}

uint64_t sub_21DACA098@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  (*(v1 + 32))();
  return (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
}

uint64_t sub_21DACA110@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = sub_21DBF5F9C();
  return sub_21DAC7140(v5, v4, v6, v3, a1);
}

Swift::Void __swiftcall TTRITipKitSignal.donate(signalContext:)(Swift::String_optional signalContext)
{
  object = signalContext.value._object;
  v3 = *v1;
  v4 = *MEMORY[0x277D44908];
  sub_21DBFA16C();
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](46, 0xE100000000000000);

  if (v3 > 3)
  {
    v11 = 0xEF73676174687361;
    v12 = 0x482E646574696465;
    if (v3 != 6)
    {
      v12 = 0x522E646574696465;
      v11 = 0xEF7265646E696D65;
    }

    v13 = 0x800000021DC43B90;
    v14 = 0xD00000000000001ELL;
    if (v3 != 4)
    {
      v14 = 0xD000000000000016;
      v13 = 0x800000021DC43BB0;
    }

    if (v3 <= 5)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v3 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0xD000000000000014;
    v6 = 0x800000021DC43B50;
    if (v3 != 2)
    {
      v5 = 0xD00000000000001ALL;
      v6 = 0x800000021DC43B70;
    }

    v7 = 0xD000000000000014;
    v8 = 0x800000021DC43B10;
    if (v3)
    {
      v7 = 0xD000000000000013;
      v8 = 0x800000021DC43B30;
    }

    if (v3 <= 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    if (v3 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }
  }

  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](v9, v10);

  v15 = v4;
  v16 = sub_21DBFA12C();

  if (object)
  {
    v17 = sub_21DBFA12C();
  }

  else
  {
    v17 = 0;
  }

  v18 = [objc_allocWithZone(MEMORY[0x277CF1938]) initWithIdentifier:v16 bundleID:v15 context:v17];

  v19 = [objc_opt_self() discoverabilitySignal];
  v20 = [v19 source];
  [v20 sendEvent_];
}

uint64_t TTRITipKitSignal.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x482E646574696465;
    if (v1 != 6)
    {
      v5 = 0x522E646574696465;
    }

    v6 = 0xD00000000000001ELL;
    if (v1 != 4)
    {
      v6 = 0xD000000000000016;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 != 2)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD000000000000014;
    if (*v0)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

RemindersUICore::TTRITipKitSignal_optional __swiftcall TTRITipKitSignal.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DBFC45C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_21DACA604(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v9 = 0xEF73676174687361;
    v10 = 0x482E646574696465;
    if (v2 != 6)
    {
      v10 = 0x522E646574696465;
      v9 = 0xEF7265646E696D65;
    }

    v11 = 0x800000021DC43B90;
    v12 = 0xD00000000000001ELL;
    if (v2 != 4)
    {
      v12 = 0xD000000000000016;
      v11 = 0x800000021DC43BB0;
    }

    if (*v1 <= 5u)
    {
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    if (*v1 <= 5u)
    {
      v9 = v11;
    }

    *a1 = v13;
    a1[1] = v9;
  }

  else
  {
    v3 = 0xD000000000000014;
    v4 = 0x800000021DC43B50;
    if (v2 != 2)
    {
      v3 = 0xD00000000000001ALL;
      v4 = 0x800000021DC43B70;
    }

    v5 = 0xD000000000000014;
    v6 = 0x800000021DC43B10;
    if (*v1)
    {
      v5 = 0xD000000000000013;
      v6 = 0x800000021DC43B30;
    }

    if (*v1 <= 1u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    if (*v1 <= 1u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    *a1 = v7;
    a1[1] = v8;
  }
}

unint64_t sub_21DACA968()
{
  result = qword_27CE663E0;
  if (!qword_27CE663E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE663E0);
  }

  return result;
}

Swift::Void __swiftcall TTRIExpandingTextView.forceContentOffset(_:)(CGPoint a1)
{
  y = a1.y;
  x = a1.x;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TTRIExpandingTextView();
  objc_msgSendSuper2(&v4, sel_setContentOffset_, x, y);
}

uint64_t sub_21DACAB4C()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins;
  swift_beginAccess();
  return *v1;
}

id sub_21DACAB98(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  v6 = &v2[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins];
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

    return [v2 invalidateIntrinsicContentSize];
  }

  if (v8 != a1)
  {
    LOBYTE(v9) = 1;
  }

  if (v9)
  {
    return [v2 invalidateIntrinsicContentSize];
  }

  return result;
}

void (*sub_21DACAC30(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_21DACACD0;
}

void sub_21DACACD0(id **a1)
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

  [v1[5] invalidateIntrinsicContentSize];
LABEL_9:

  free(v1);
}

id sub_21DACAD50()
{
  result = [v0 font];
  v2 = result;
  if (result)
  {
    [result ascender];
    [v2 descender];
    v3 = [v0 traitCollection];
    [v3 displayScale];

    UIRoundToScale();
    v5 = v4;
    UICeilToScale();

    return v5;
  }

  return result;
}

void sub_21DACAE40()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins];
  swift_beginAccess();
  if ((v2[8] & 1) == 0 && (v0[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_isForUseInNUIContainerView] & 1) == 0)
  {
    if (qword_27CE570E0 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_27CE663E8);
    v4 = sub_21DBF84AC();
    v5 = sub_21DBFAECC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21D0C9000, v4, v5, "maxLineHeightFactor requires isForUseInNUIContainerView == true", v6, 2u);
      MEMORY[0x223D46520](v6, -1, -1);
    }
  }

  [v1 setScrollEnabled_];
  sub_21DACB010();
  [v1 setShowsVerticalScrollIndicator_];
  [v1 setShowsHorizontalScrollIndicator_];
  [v1 setTextContainerInset_];
  v7 = [v1 textContainer];
  [v7 setLineFragmentPadding_];
}

id sub_21DACB010()
{
  v1 = v0;
  result = [v0 isScrollEnabled];
  if (result && v0[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_isForUseInNUIContainerView] == 1)
  {
    v3 = OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_textStorageObserver;
    if (!*&v0[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_textStorageObserver])
    {
      v4 = [objc_opt_self() defaultCenter];
      v5 = *MEMORY[0x277D741D8];
      v6 = [v1 textStorage];
      v29[3] = sub_21DACC354();
      v29[0] = v6;
      v7 = [objc_opt_self() mainQueue];
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_21D0DB414(v29, aBlock);
      v9 = v26;
      if (v26)
      {
        v10 = __swift_project_boxed_opaque_existential_1(aBlock, v26);
        v24[1] = v24;
        v11 = v7;
        v12 = v5;
        v13 = *(v9 - 1);
        v14 = MEMORY[0x28223BE20](v10);
        v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v13 + 16))(v16, v14);

        v17 = sub_21DBFC62C();
        (*(v13 + 8))(v16, v9);
        v5 = v12;
        v7 = v11;
        __swift_destroy_boxed_opaque_existential_0(aBlock);
      }

      else
      {

        v17 = 0;
      }

      v27 = sub_21DACC3A0;
      v28 = v8;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0EE46C;
      v26 = &block_descriptor_146;
      v18 = _Block_copy(aBlock);

      v19 = [v4 addObserverForName:v5 object:v17 queue:v7 usingBlock:v18];
      _Block_release(v18);
      swift_unknownObjectRelease();
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      *(v22 + 24) = v21;
      sub_21DBF902C();
      swift_allocObject();
      v23 = sub_21DBF903C();

      swift_unknownObjectRelease();
      sub_21D1A8418(v29);
      *&v1[v3] = v23;
    }
  }

  else
  {
    *&v0[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_textStorageObserver] = 0;
  }

  return result;
}

id TTRIExpandingTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:textContainer:)(char a1, uint64_t a2, char a3, void *a4)
{
  v8 = &v4[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins];
  *v8 = 0;
  v8[8] = 1;
  *&v4[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_textStorageObserver] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_isForUseInNUIContainerView] = a1;
  swift_beginAccess();
  *v8 = a2;
  v8[8] = a3 & 1;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for TTRIExpandingTextView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_textContainer_, a4, 0.0, 0.0, 0.0, 0.0);
  sub_21DACAE40();

  return v9;
}

uint64_t sub_21DACB4E0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE663E8);
  v1 = __swift_project_value_buffer(v0, qword_27CE663E8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRIExpandingTextView.__allocating_init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:textContainer:)(char a1, uint64_t a2, char a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins];
  *v10 = 0;
  v10[8] = 1;
  *&v9[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_textStorageObserver] = 0;
  v9[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_isForUseInNUIContainerView] = a1;
  swift_beginAccess();
  *v10 = a2;
  v10[8] = a3 & 1;
  v13.receiver = v9;
  v13.super_class = v4;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_textContainer_, a4, 0.0, 0.0, 0.0, 0.0);
  sub_21DACAE40();

  return v11;
}

id TTRIExpandingTextView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRIExpandingTextView.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins];
  *v3 = 0;
  v3[8] = 1;
  *&v1[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_textStorageObserver] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_isForUseInNUIContainerView] = 0;
  swift_beginAccess();
  *v3 = 0;
  v3[8] = 1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TTRIExpandingTextView();
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    sub_21DACAE40();
  }

  return v5;
}

void sub_21DACBA94()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong invalidateIntrinsicContentSize];
  }
}

id TTRIExpandingTextView.__allocating_init(frame:textContainer:)(void *a1, double a2, double a3, double a4, double a5)
{
  v7 = [objc_allocWithZone(v5) initWithFrame:a1 textContainer:{a2, a3, a4, a5}];

  return v7;
}

id TTRIExpandingTextView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIExpandingTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TTRIExpandingTextView.contentSize.setter(double a1, double a2)
{
  [v2 contentSize];
  v6 = v5;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for TTRIExpandingTextView();
  objc_msgSendSuper2(&v11, sel_setContentSize_, a1, a2);
  if ((*(v2 + OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_isForUseInNUIContainerView) & 1) == 0)
  {
    v7 = [v2 font];
    if (v7)
    {
      v8 = v7;
      [v7 lineHeight];
      v10 = v9;

      if (v10 < vabdd_f64(v6, a2))
      {
        [v2 invalidateIntrinsicContentSize];
      }
    }
  }
}

id sub_21DACBD5C(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for TTRIExpandingTextView();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_21DACBDA8(SEL *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TTRIExpandingTextView();
  return objc_msgSendSuper2(&v4, *a1);
}

id TTRIExpandingTextView.contentOffset.setter(double a1, double a2)
{
  result = [v2 isScrollEnabled];
  if (result)
  {
    v6.receiver = v2;
    v6.super_class = type metadata accessor for TTRIExpandingTextView();
    return objc_msgSendSuper2(&v6, sel_setContentOffset_, a1, a2);
  }

  return result;
}

CGSize __swiftcall TTRIExpandingTextView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v4 = type metadata accessor for TTRIExpandingTextView();
  v24.receiver = v1;
  v24.super_class = v4;
  objc_msgSendSuper2(&v24, sel_sizeThatFits_, width, height);
  if (v5 > width)
  {
    v23.receiver = v1;
    v23.super_class = v4;
    objc_msgSendSuper2(&v23, sel_sizeThatFits_, width + -5.0, height);
  }

  v7 = v5;
  v8 = v6;
  v9 = &v1[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins];
  swift_beginAccess();
  if ((v9[8] & 1) == 0)
  {
    v10 = *v9;
    v11 = [v1 font];
    if (v11)
    {
      v12 = v11;
      [v11 lineHeight];
      v14 = v13;
      [v12 leading];
      v16 = v14 + v15;
      v17 = [v1 isScrollEnabled];

      v18 = 0.6;
      if (!v17)
      {
        v18 = 0.0;
      }

      v19 = v16 * (v18 + v10);
      if (v19 >= v8)
      {
        v19 = v8;
      }

      v8 = v16;
      if (fabs(v19) >= 0.0000000149011612)
      {
        v8 = v19;
      }
    }
  }

  v20 = ceil(v8);
  v21 = v7;
  result.height = v20;
  result.width = v21;
  return result;
}

Swift::Bool __swiftcall TTRIExpandingTextView.accessibilityActivate()()
{
  v1 = [v0 canBecomeFirstResponder];
  if (v1)
  {
    v2 = v1;
    [v0 becomeFirstResponder];
    LOBYTE(v1) = v2;
  }

  return v1;
}

unint64_t TTRIExpandingTextView.accessibilityTraits.getter()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TTRIExpandingTextView();
  v1 = objc_msgSendSuper2(&v5, sel_accessibilityTraits);
  v2 = [objc_opt_self() textArea];
  v3 = -1;
  if ((v2 & v1) != 0)
  {
    v3 = ~v2;
  }

  return v3 & v1;
}

unint64_t sub_21DACC354()
{
  result = qword_280D0C318;
  if (!qword_280D0C318)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D0C318);
  }

  return result;
}

void TTRTemplateSharingViewModel.init(forPublicLinkManagementWithConfiguration:contentAttributes:)(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = [a1 shouldIncludeHashtags];
  v7 = [a1 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval];
  v8 = [a1 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle];

  *a3 = 1;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 17) = v7;
  *(a3 + 18) = v8;
}

RemindersUICore::TTRTemplateSharingViewModel __swiftcall TTRTemplateSharingViewModel.init(forPublicLinkCreationWithContentAttributes:)(RemindersUICore::TTRTemplateSharingTemplateContentAttributes forPublicLinkCreationWithContentAttributes)
{
  v2 = *forPublicLinkCreationWithContentAttributes.rawValue;
  *v1 = 0;
  *(v1 + 8) = v2;
  *(v1 + 16) = 256;
  *(v1 + 18) = 0;
  result.purpose = forPublicLinkCreationWithContentAttributes.rawValue;
  *result.gap1 = *(&forPublicLinkCreationWithContentAttributes.rawValue + 1);
  *&result.gap1[4] = *(&forPublicLinkCreationWithContentAttributes.rawValue + 5);
  result.gap1[6] = HIBYTE(forPublicLinkCreationWithContentAttributes.rawValue);
  return result;
}

uint64_t TTRTemplateSharingViewModel.Purpose.viewTitle.getter()
{
  if (*v0)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t TTRTemplateSharingViewModel.Purpose.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

RemindersUICore::TTRTemplateSharingViewModel __swiftcall TTRTemplateSharingViewModel.init(purpose:contentAttributes:includesTags:includesDateAndTime:includesLocations:)(RemindersUICore::TTRTemplateSharingViewModel::Purpose purpose, RemindersUICore::TTRTemplateSharingTemplateContentAttributes contentAttributes, Swift::Bool includesTags, Swift::Bool includesDateAndTime, Swift::Bool includesLocations)
{
  v6 = *contentAttributes.rawValue;
  *v5 = *purpose;
  *(v5 + 8) = v6;
  *(v5 + 16) = includesTags;
  *(v5 + 17) = includesDateAndTime;
  *(v5 + 18) = includesLocations;
  result.contentAttributes = contentAttributes;
  result.includesTags = includesTags;
  result.purpose = purpose;
  return result;
}

RemindersUICore::TTRTemplateSharingViewModel __swiftcall TTRTemplateSharingViewModel.init()()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 15) = 0;
  return result;
}

id TTRTemplateSharingViewModel.makePublicLinkConfiguration()()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[18];
  v4 = objc_allocWithZone(MEMORY[0x277D448B0]);

  return [v4 initWithShouldIncludeHashtags:v1 shouldIncludeAlarmTriggersBasedOnDateOrTimeInterval:v2 shouldIncludeAlarmTriggersBasedOnLocationOrVehicle:v3];
}

uint64_t TTRTemplateSharingViewModel.localizedMessageForIncludePropertiesAlert.getter()
{
  if (v0[17] == 1)
  {
    if (v0[16])
    {
      if (v0[18])
      {
        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      else if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (v0[18])
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

LABEL_23:
    swift_once();
    return sub_21DBF516C();
  }

  if (v0[16])
  {
    if (v0[18])
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_23;
  }

  if (v0[18])
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_23;
  }

  return 0;
}

uint64_t TTRTemplateSharingAction.description.getter()
{
  v1 = 0x4C20657461657243;
  v2 = 0x6E694C20646E6553;
  if (*v0 != 2)
  {
    v2 = 0x61685320706F7453;
  }

  if (*v0)
  {
    v1 = 0x4C20657461647055;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t TTRTemplateSharingAction.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21DACCD4C()
{
  v1 = 0x4C20657461657243;
  v2 = 0x6E694C20646E6553;
  if (*v0 != 2)
  {
    v2 = 0x61685320706F7453;
  }

  if (*v0)
  {
    v1 = 0x4C20657461647055;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t _s15RemindersUICore27TTRTemplateSharingViewModelV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  v3 = *a1 == *a2 && *(a1 + 1) == *(a2 + 1);
  if (v3 && ((a1[16] ^ a2[16]) & 1) == 0 && ((a1[17] ^ a2[17]) & 1) == 0)
  {
    v2 = a2[18] ^ a1[18] ^ 1;
  }

  return v2 & 1;
}

unint64_t sub_21DACCE34()
{
  result = qword_27CE66418;
  if (!qword_27CE66418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66418);
  }

  return result;
}

unint64_t sub_21DACCE8C()
{
  result = qword_27CE66420;
  if (!qword_27CE66420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66420);
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TTRTemplateSharingViewModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[19])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRTemplateSharingViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 TTRAssigneeCandidateData.init(id:contact:contactInfo:isMe:avatarImage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  v6 = *(a3 + 48);
  *(a6 + 48) = *(a3 + 32);
  *(a6 + 64) = v6;
  *(a6 + 80) = *(a3 + 64);
  result = *(a3 + 16);
  *(a6 + 16) = *a3;
  *(a6 + 32) = result;
  *(a6 + 96) = a4;
  *(a6 + 104) = a5;
  return result;
}

uint64_t TTRAssigneeCandidateData.displayDescription.getter()
{
  if (*(v0 + 96) == 1)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    return sub_21DBF516C();
  }

  if (*(v0 + 40))
  {
    v2 = *(v0 + 32);
LABEL_9:
    sub_21DBF8E0C();
    return v2;
  }

  if (*(v0 + 24))
  {
    v2 = *(v0 + 16);
    sub_21DBF8E0C();
    goto LABEL_9;
  }

  if (*(v0 + 72))
  {
    v3 = *(v0 + 64);
LABEL_14:
    sub_21DBF8E0C();
    return v3;
  }

  if (*(v0 + 88))
  {
    v3 = *(v0 + 80);
    goto LABEL_14;
  }

  v4 = qword_280D1BAA8;
  sub_21DBF8E0C();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF516C();

  swift_bridgeObjectRelease_n();
  return v5;
}

void *TTRAssigneeCandidate.id.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = v1;
  }

  return v1;
}

uint64_t sub_21DACD200(uint64_t a1, uint64_t a2)
{
  if (!*a2)
  {
    goto LABEL_6;
  }

  if (!*a1 || (v2 = *(a2 + 96), v3 = *(a1 + 96), v4 = *(a1 + 56), *&v15[32] = *(a1 + 40), *&v15[48] = v4, *&v15[64] = *(a1 + 72), *&v15[80] = *(a1 + 88), v5 = *(a1 + 24), *v15 = *(a1 + 8), *&v15[16] = v5, (v2 & 1) != 0))
  {
    v6 = 0;
    return v6 & 1;
  }

  if (v3)
  {
LABEL_6:
    v6 = 1;
    return v6 & 1;
  }

  v8 = *(a2 + 64);
  v14[9] = *(a2 + 48);
  v14[10] = v8;
  v14[11] = *(a2 + 80);
  v9 = *(a2 + 32);
  v14[7] = *(a2 + 16);
  v14[8] = v9;
  sub_21D1D9A84(a2, v14);
  sub_21D1D9A84(a1, v14);
  v12 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
  v14[2] = *&v15[40];
  v14[3] = *&v15[56];
  v14[4] = *&v15[72];
  v14[0] = *&v15[8];
  v14[1] = *&v15[24];
  v13 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
  if (v12._countAndFlagsBits != v13._countAndFlagsBits || (v6 = 0, v12._object != v13._object))
  {
    v6 = sub_21DBFC64C();
  }

  sub_21D1D9AE0(a1);
  sub_21D1D9AE0(a2);

  return v6 & 1;
}

uint64_t static TTRAssignment.assignmentString(isAssignedToMe:isAssignedByMe:assigneeDescription:originatorDescription:)(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (a2)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }

      goto LABEL_14;
    }

    if (!a6)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }

LABEL_14:
      swift_once();
      return sub_21DBF516C();
    }

    v12 = qword_280D1BAA8;
    sub_21DBF8E0C();
    if (v12 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC08D00;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_21D17A884();
    *(v14 + 32) = a5;
    *(v14 + 40) = a6;
    v15 = sub_21DBFA17C();

    return v15;
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21DC08D00;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_21D17A884();
    *(v8 + 32) = a3;
    *(v8 + 40) = a4;
    sub_21DBF8E0C();
    v9 = sub_21DBFA17C();

    return v9;
  }
}

uint64_t sub_21DACD710(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return v2 & 1;
  }

  if (!*a2)
  {
    LOBYTE(v2) = 1;
    return v2 & 1;
  }

  v3 = *(a1 + 96);
  v4 = *(a2 + 96);
  v5 = *(a2 + 56);
  *&v17[32] = *(a2 + 40);
  *&v17[48] = v5;
  *&v17[64] = *(a2 + 72);
  *&v17[80] = *(a2 + 88);
  v6 = *(a2 + 24);
  *v17 = *(a2 + 8);
  *&v17[16] = v6;
  if (v3)
  {
    v7 = 1;
  }

  else if (v4)
  {
    v7 = 0;
  }

  else
  {
    v9 = *(a1 + 64);
    v16[9] = *(a1 + 48);
    v16[10] = v9;
    v16[11] = *(a1 + 80);
    v10 = *(a1 + 32);
    v16[7] = *(a1 + 16);
    v16[8] = v10;
    sub_21D1D9A84(a1, v16);
    sub_21D1D9A84(a2, v16);
    v13 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
    v16[2] = *&v17[40];
    v16[3] = *&v17[56];
    v16[4] = *&v17[72];
    v16[0] = *&v17[8];
    v16[1] = *&v17[24];
    v14 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
    if (v13._countAndFlagsBits == v14._countAndFlagsBits && v13._object == v14._object)
    {

      sub_21D1D9AE0(a2);
      sub_21D1D9AE0(a1);

      v7 = 1;
    }

    else
    {
      v15 = sub_21DBFC64C();

      sub_21D1D9AE0(a2);
      sub_21D1D9AE0(a1);

      v7 = v15 ^ 1;
    }
  }

  return v7 & 1;
}

uint64_t sub_21DACD8B0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return v2 & 1;
  }

  if (!*a1)
  {
    LOBYTE(v2) = 1;
    return v2 & 1;
  }

  v3 = *(a2 + 96);
  v4 = *(a1 + 96);
  v5 = *(a1 + 56);
  *&v17[32] = *(a1 + 40);
  *&v17[48] = v5;
  *&v17[64] = *(a1 + 72);
  *&v17[80] = *(a1 + 88);
  v6 = *(a1 + 24);
  *v17 = *(a1 + 8);
  *&v17[16] = v6;
  if (v3)
  {
    v7 = 1;
  }

  else if (v4)
  {
    v7 = 0;
  }

  else
  {
    v9 = *(a2 + 64);
    v16[9] = *(a2 + 48);
    v16[10] = v9;
    v16[11] = *(a2 + 80);
    v10 = *(a2 + 32);
    v16[7] = *(a2 + 16);
    v16[8] = v10;
    sub_21D1D9A84(a2, v16);
    sub_21D1D9A84(a1, v16);
    v13 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
    v16[2] = *&v17[40];
    v16[3] = *&v17[56];
    v16[4] = *&v17[72];
    v16[0] = *&v17[8];
    v16[1] = *&v17[24];
    v14 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
    if (v13._countAndFlagsBits == v14._countAndFlagsBits && v13._object == v14._object)
    {

      sub_21D1D9AE0(a1);
      sub_21D1D9AE0(a2);

      v7 = 1;
    }

    else
    {
      v15 = sub_21DBFC64C();

      sub_21D1D9AE0(a1);
      sub_21D1D9AE0(a2);

      v7 = v15 ^ 1;
    }
  }

  return v7 & 1;
}

__n128 TTRAssignment.init(assignee:originator:)@<Q0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[5];
  *(a3 + 64) = a1[4];
  *(a3 + 80) = v3;
  v4 = a1[6];
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v5;
  v6 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v6;
  v7 = *a2;
  v8 = a2[2];
  v9 = a2[3];
  *(a3 + 128) = a2[1];
  *(a3 + 144) = v8;
  *(a3 + 96) = v4;
  *(a3 + 112) = v7;
  result = a2[4];
  v11 = a2[6];
  *(a3 + 192) = a2[5];
  *(a3 + 208) = v11;
  *(a3 + 160) = v9;
  *(a3 + 176) = result;
  return result;
}

Swift::Void __swiftcall TTRAssigneeCandidateData.setLoadedContact(_:)(CNContact a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v5 = a1.super.isa;

  v6 = *(v2 + 32);
  v7 = *(v2 + 64);
  v16 = *(v2 + 48);
  v17 = v7;
  v8 = *(v2 + 64);
  v18 = *(v2 + 80);
  v9 = *(v2 + 32);
  v15[0] = *(v2 + 16);
  v10 = v15[0];
  v15[1] = v9;
  v23 = v16;
  v24 = v8;
  v25 = *(v2 + 80);
  *(v2 + 8) = a1;
  v21 = v10;
  v22 = v6;
  sub_21D1D9B34(v15, &v20);
  TTRParticipantModel.updatingNames(with:)(&v20, v5);
  v19[2] = v23;
  v19[3] = v24;
  v19[4] = v25;
  v19[0] = v21;
  v19[1] = v22;
  sub_21D1D9B90(v19);
  v11 = *(v2 + 64);
  v23 = *(v2 + 48);
  v24 = v11;
  v25 = *(v2 + 80);
  v12 = *(v2 + 32);
  v21 = *(v2 + 16);
  v22 = v12;
  sub_21D1D9B90(&v21);
  emailAddress = v20.emailAddress;
  *(v2 + 48) = v20.lastName;
  *(v2 + 64) = emailAddress;
  *(v2 + 80) = v20.phoneNumber;
  firstName = v20.firstName;
  *(v2 + 16) = v20.displayName;
  *(v2 + 32) = firstName;
}

Swift::Void __swiftcall TTRAssigneeCandidateData.setUnknownContact()()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 64);
  v12 = *(v0 + 48);
  v13 = v2;
  v3 = *(v0 + 64);
  v14 = *(v0 + 80);
  v4 = *(v0 + 32);
  v11[0] = *(v0 + 16);
  v11[1] = v4;
  v8 = v12;
  v9 = v3;
  v10 = *(v0 + 80);
  v6 = v11[0];
  v7 = v1;
  sub_21D1D9B34(v11, v15);
  v5 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&v6);
  v15[2] = v8;
  v15[3] = v9;
  v15[4] = v10;
  v15[0] = v6;
  v15[1] = v7;
  sub_21D1D9B90(v15);

  *(v0 + 8) = v5;
}

uint64_t TTRAssignment.assignee.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14 = v3;
  v15 = v1[6];
  v4 = v15;
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_21D1D9C94(v10, &v9);
}

__n128 TTRAssignment.assignee.setter(uint64_t a1)
{
  v3 = v1[5];
  v9[4] = v1[4];
  v9[5] = v3;
  v9[6] = v1[6];
  v4 = v1[1];
  v9[0] = *v1;
  v9[1] = v4;
  v5 = v1[3];
  v9[2] = v1[2];
  v9[3] = v5;
  sub_21D30DA04(v9);
  v6 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v6;
  v1[6] = *(a1 + 96);
  v7 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v7;
  result = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = result;
  return result;
}

uint64_t TTRAssignment.originator.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[12];
  v13 = v1[11];
  v2 = v13;
  v14 = v3;
  v15 = v1[13];
  v4 = v15;
  v5 = v1[8];
  v10[0] = v1[7];
  v10[1] = v5;
  v6 = v1[10];
  v11 = v1[9];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  return sub_21DACEFE8(v10, &v9);
}

uint64_t TTRAssignment.isSelfAssigned.getter()
{
  if (*(v0 + 96) != 1)
  {
    return 0;
  }

  v1 = *(v0 + 112);
  if (v1)
  {
    LOBYTE(v1) = *(v0 + 208);
  }

  return v1 & 1;
}

uint64_t TTRAssignment.originatorString.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 160);
  v18[1] = *(v0 + 144);
  v18[2] = v2;
  v3 = *(v0 + 192);
  v18[3] = *(v0 + 176);
  v18[4] = v3;
  v4 = *(v0 + 128);
  v17 = *(v0 + 112);
  v18[0] = v4;
  v5 = *(v0 + 208);
  *v20 = *(v0 + 209);
  *&v20[7] = *(v0 + 216);
  v19 = v5;
  if (v17)
  {
    v13 = *(v0 + 160);
    v14 = *(v0 + 176);
    v15 = *(v0 + 192);
    v11 = *(v0 + 128);
    v12 = *(v0 + 144);
    sub_21D1D9B34(v18, v16);
    v6 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(1);
    countAndFlagsBits = v6._countAndFlagsBits;
    object = v6._object;
    v16[2] = v13;
    v16[3] = v14;
    v16[4] = v15;
    v16[0] = v11;
    v16[1] = v12;
    sub_21D1D9B90(v16);
  }

  else
  {
    v5 = 0;
    countAndFlagsBits = 0;
    object = 0;
  }

  v9 = sub_21DACF058(v1, v5 & 1, countAndFlagsBits, object);

  return v9;
}

uint64_t TTRAssignment.assignmentString.getter()
{
  v1 = *(v0 + 64);
  v32 = *(v0 + 48);
  v33 = v1;
  v34 = *(v0 + 80);
  v2 = *(v0 + 32);
  v30 = *(v0 + 16);
  v31 = v2;
  v3 = *(v0 + 96);
  v4 = *(v0 + 112);
  v36[2] = *(v0 + 152);
  v36[3] = *(v0 + 168);
  v36[4] = *(v0 + 184);
  v5 = *(v0 + 200);
  v36[0] = *(v0 + 120);
  v36[1] = *(v0 + 136);
  *&v39[7] = *(v0 + 216);
  *v39 = *(v0 + 209);
  v6 = *(v0 + 208);
  v37 = v5;
  v35 = v4;
  v38 = v6;
  if (v4)
  {
    v19 = *(v0 + 160);
    v21 = *(v0 + 176);
    v23 = *(v0 + 192);
    v15 = *(v0 + 128);
    v17 = *(v0 + 144);
    sub_21D1D9B34(v36 + 8, &v25);
    v7 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(1);
    countAndFlagsBits = v7._countAndFlagsBits;
    object = v7._object;
    v27 = v19;
    v28 = v21;
    v29 = v23;
    v25 = v15;
    v26 = v17;
    sub_21D1D9B90(&v25);
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  v20 = v32;
  v22 = v33;
  v24 = v34;
  v16 = v30;
  v18 = v31;
  sub_21D1D9B34(&v30, &v25);
  v10 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(1);
  v27 = v20;
  v28 = v22;
  v29 = v24;
  v25 = v16;
  v26 = v18;
  sub_21D1D9B90(&v25);
  if (v4)
  {
    if (v3)
    {

      if (v6)
      {

        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }

LABEL_21:
        swift_once();
        return sub_21DBF516C();
      }

      goto LABEL_11;
    }

LABEL_15:

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC08D00;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_21D17A884();
    *(v14 + 32) = v10;
    v13 = sub_21DBFA17C();

    return v13;
  }

  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_11:
  if (!object)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_21;
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DC08D00;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_21D17A884();
  *(v12 + 32) = countAndFlagsBits;
  *(v12 + 40) = object;
  v13 = sub_21DBFA17C();

  return v13;
}

void *TTRAssigneeCandidateData.contact.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t TTRAssigneeCandidateData.contactInfo.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10 = v2;
  v11 = v1[5];
  v3 = v11;
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_21D1D9B34(v8, &v7);
}

void *TTRAssigneeCandidateData.avatarImage.getter()
{
  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

uint64_t sub_21DACE458(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_21DACD8B0(v13, v14) & 1;
}

uint64_t sub_21DACE4C0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_21DACD710(v13, v14) & 1;
}

uint64_t sub_21DACE528(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_21DACD200(v13, v14) & 1;
}

id sub_21DACE590@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (v3)
  {
    result = v3;
  }

  *a1 = v3;
  return result;
}

uint64_t _s15RemindersUICore24TTRAssigneeCandidateDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 64);
  v38 = *(a1 + 48);
  v39 = v3;
  v4 = *(a1 + 80);
  v5 = *(a1 + 32);
  v36 = *(a1 + 16);
  v37 = v5;
  v6 = *(a1 + 96);
  v7 = *(a1 + 104);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 80);
  v44 = *(a2 + 64);
  v45 = v11;
  v12 = *(a2 + 48);
  v42 = v10;
  v43 = v12;
  v40 = v4;
  v41 = v9;
  v13 = *(a2 + 96);
  v14 = *(a2 + 104);
  sub_21D0D8CF0(0, &qword_280D17680);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (!v8)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D0C1A0);
    v15 = v8;
    v16 = v2;
    v17 = sub_21DBFB63C();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v31 = v38;
  v32 = v39;
  v33 = v40;
  v29 = v36;
  v30 = v37;
  v26 = v43;
  v27 = v44;
  v28 = v45;
  v24 = v41;
  v25 = v42;
  v18 = _s15RemindersUICore19TTRParticipantModelV2eeoiySbAC_ACtFZ_0(&v29, &v24);
  v34[2] = v26;
  v34[3] = v27;
  v34[4] = v28;
  v34[0] = v24;
  v34[1] = v25;
  sub_21D1D9B34(&v36, v23);
  sub_21D1D9B34(&v41, v23);
  sub_21D1D9B90(v34);
  v35[2] = v31;
  v35[3] = v32;
  v35[4] = v33;
  v35[0] = v29;
  v35[1] = v30;
  sub_21D1D9B90(v35);
  if ((v18 & 1) == 0 || v6 != v13)
  {
    return 0;
  }

  if (v7)
  {
    if (v14)
    {
      sub_21D0D8CF0(0, &qword_280D17688);
      v20 = v14;
      v21 = v7;
      v22 = sub_21DBFB63C();

      if (v22)
      {
        return 1;
      }
    }
  }

  else if (!v14)
  {
    return 1;
  }

  return 0;
}

uint64_t _s15RemindersUICore13TTRAssignmentV2eeoiySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v70 = a1[4];
  v71 = v3;
  v4 = a1[5];
  v72 = a1[6];
  v5 = a1[1];
  v67[0] = *a1;
  v67[1] = v5;
  v6 = a1[3];
  v7 = *a1;
  v8 = a1[1];
  v68 = a1[2];
  v69 = v6;
  v9 = a1[8];
  v10 = a1[9];
  v11 = a1[6];
  *v73 = a1[7];
  *&v73[16] = v9;
  v12 = a1[10];
  v13 = a1[11];
  v14 = a1[12];
  *&v73[96] = a1[13];
  *&v73[80] = v14;
  *&v73[64] = v13;
  *&v73[32] = v10;
  *&v73[48] = v12;
  v15 = *a2;
  v74[1] = a2[1];
  v74[0] = v15;
  v16 = a2[5];
  v79 = a2[6];
  v18 = a2[3];
  v17 = a2[4];
  v19 = v17;
  v78 = a2[5];
  v77 = v17;
  v20 = a2[3];
  v21 = *a2;
  v22 = a2[1];
  v75 = a2[2];
  v76 = v20;
  v23 = a2[9];
  v25 = a2[6];
  v24 = a2[7];
  *&v80[16] = a2[8];
  *v80 = v24;
  v26 = a2[12];
  *&v80[96] = a2[13];
  v27 = a2[10];
  v28 = a2[11];
  *&v80[80] = v26;
  *&v80[64] = v28;
  *&v80[32] = v23;
  *&v80[48] = v27;
  *&v37[64] = v70;
  *&v37[80] = v4;
  *&v37[96] = v11;
  *v37 = v7;
  *&v37[16] = v8;
  *&v37[32] = v68;
  *&v37[48] = v2;
  v64 = v19;
  v65 = v16;
  v66 = v25;
  v60 = v21;
  v61 = v22;
  v62 = v75;
  v63 = v18;
  sub_21D1D9C94(v67, v82);
  sub_21D1D9C94(v74, v82);
  v29 = _s15RemindersUICore24TTRAssigneeCandidateDataV2eeoiySbAC_ACtFZ_0(v37, &v60);
  v81[4] = v64;
  v81[5] = v65;
  v81[6] = v66;
  v81[0] = v60;
  v81[1] = v61;
  v81[3] = v63;
  v81[2] = v62;
  sub_21D30DA04(v81);
  v82[4] = *&v37[64];
  v82[5] = *&v37[80];
  v82[6] = *&v37[96];
  v82[0] = *v37;
  v82[1] = *&v37[16];
  v82[2] = *&v37[32];
  v82[3] = *&v37[48];
  sub_21D30DA04(v82);
  if ((v29 & 1) == 0)
  {
    v32 = 0;
    return v32 & 1;
  }

  v57 = *&v73[72];
  v58 = *&v73[88];
  v30 = *v73;
  v59 = *&v73[104];
  v53 = *&v73[8];
  v54 = *&v73[24];
  v55 = *&v73[40];
  v56 = *&v73[56];
  v31 = *v80;
  v52 = *&v80[104];
  v50 = *&v80[72];
  v51 = *&v80[88];
  v48 = *&v80[40];
  v49 = *&v80[56];
  v46 = *&v80[8];
  v47 = *&v80[24];
  if (!*v73)
  {
    if (!*v80)
    {
      *&v37[56] = *&v73[56];
      *&v37[72] = *&v73[72];
      *&v37[88] = *&v73[88];
      *&v37[8] = *&v73[8];
      *&v37[24] = *&v73[24];
      *v37 = 0;
      *&v37[104] = *&v73[104];
      *&v37[40] = *&v73[40];
      sub_21DACEFE8(v73, &v60);
      sub_21DACEFE8(v80, &v60);
      sub_21D0CF7E0(v37, &qword_27CE5FF78);
      v32 = 1;
      return v32 & 1;
    }

    sub_21DACEFE8(v73, v37);
    sub_21DACEFE8(v80, v37);
    goto LABEL_9;
  }

  *&v37[8] = *&v73[8];
  *&v37[24] = *&v73[24];
  *&v37[40] = *&v73[40];
  *v37 = *v73;
  *&v37[104] = *&v73[104];
  *&v37[88] = *&v73[88];
  *&v37[72] = *&v73[72];
  *&v37[56] = *&v73[56];
  v60 = *v37;
  v61 = *&v37[16];
  v65 = *&v37[80];
  v66 = *&v37[96];
  v63 = *&v37[48];
  v64 = *&v37[64];
  v62 = *&v37[32];
  if (!*v80)
  {
    *&v36[64] = *&v37[64];
    *&v36[80] = *&v37[80];
    *&v36[96] = *&v37[96];
    *v36 = *v37;
    *&v36[16] = *&v37[16];
    *&v36[32] = *&v37[32];
    *&v36[48] = *&v37[48];
    sub_21DACEFE8(v73, v35);
    sub_21DACEFE8(v80, v35);
    sub_21DACEFE8(v37, v35);
    sub_21D30DA04(v36);
LABEL_9:
    *&v37[56] = v56;
    *&v37[72] = v57;
    *&v37[88] = v58;
    *v37 = v30;
    *&v37[104] = v59;
    v38 = v31;
    *&v37[8] = v53;
    *&v37[24] = v54;
    *&v37[40] = v55;
    v41 = v48;
    v40 = v47;
    v39 = v46;
    v45 = v52;
    v44 = v51;
    v43 = v50;
    v42 = v49;
    sub_21D0CF7E0(v37, &qword_27CE66438);
    v32 = 0;
    return v32 & 1;
  }

  *&v36[56] = *&v80[56];
  *&v36[72] = *&v80[72];
  *&v36[88] = *&v80[88];
  *&v36[8] = *&v80[8];
  *&v36[24] = *&v80[24];
  *&v36[40] = *&v80[40];
  *&v36[104] = *&v80[104];
  *v36 = *v80;
  sub_21DACEFE8(v73, v35);
  sub_21DACEFE8(v80, v35);
  sub_21DACEFE8(v37, v35);
  v32 = _s15RemindersUICore24TTRAssigneeCandidateDataV2eeoiySbAC_ACtFZ_0(&v60, v36);
  v34[4] = *&v36[64];
  v34[5] = *&v36[80];
  v34[6] = *&v36[96];
  v34[0] = *v36;
  v34[1] = *&v36[16];
  v34[2] = *&v36[32];
  v34[3] = *&v36[48];
  sub_21D30DA04(v34);
  v35[4] = v64;
  v35[5] = v65;
  v35[6] = v66;
  v35[0] = v60;
  v35[1] = v61;
  v35[2] = v62;
  v35[3] = v63;
  sub_21D30DA04(v35);
  *&v36[56] = v56;
  *&v36[72] = v57;
  *&v36[88] = v58;
  *&v36[8] = v53;
  *&v36[24] = v54;
  *v36 = v30;
  *&v36[104] = v59;
  *&v36[40] = v55;
  sub_21D0CF7E0(v36, &qword_27CE5FF78);
  return v32 & 1;
}

uint64_t _s15RemindersUICore20TTRAssigneeCandidateO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v39 = a1[4];
  v40 = v3;
  v4 = a1[5];
  v41 = a1[6];
  v5 = a1[1];
  v36[0] = *a1;
  v36[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v37 = a1[2];
  v38 = v6;
  v9 = a2[1];
  v42[0] = *a2;
  v42[1] = v9;
  v10 = a2[5];
  v47 = a2[6];
  v11 = a2[3];
  v12 = a2[5];
  v45 = a2[4];
  v46 = v12;
  v13 = a2[3];
  v14 = *a2;
  v15 = a2[1];
  v43 = a2[2];
  v44 = v13;
  v48[0] = v8;
  v48[1] = v7;
  v48[4] = v39;
  v48[5] = v4;
  v48[2] = v37;
  v48[3] = v2;
  v48[8] = v15;
  v48[9] = v43;
  v48[6] = a1[6];
  v48[7] = v14;
  v16 = a2[6];
  v48[12] = v10;
  v48[13] = v16;
  v48[10] = v11;
  v48[11] = v45;
  if (!*&v36[0])
  {
    if (!*&v42[0])
    {
      sub_21D0CF7E0(v48, &qword_27CE593A0);
      v17 = 1;
      return v17 & 1;
    }

    goto LABEL_5;
  }

  if (!*&v42[0])
  {
LABEL_5:
    sub_21D1D9A84(v42, &v28);
    sub_21D1D9A84(v36, &v28);
    sub_21D0CF7E0(v48, &qword_27CE593A0);
    v17 = 0;
    return v17 & 1;
  }

  v32 = *(a1 + 56);
  v33 = *(a1 + 72);
  v34 = *(a1 + 88);
  v35 = *(a1 + 13);
  v29 = *(a1 + 8);
  v30 = *(a1 + 24);
  v31 = *(a1 + 40);
  v20 = *&v42[0];
  v24 = *(a2 + 56);
  v25 = *(a2 + 72);
  v26 = *(a2 + 88);
  v27 = *(a2 + 13);
  v28 = *&v36[0];
  v21 = *(a2 + 8);
  v22 = *(a2 + 24);
  v23 = *(a2 + 40);
  sub_21D1D9A84(v42, v19);
  sub_21D1D9A84(v36, v19);
  sub_21D1D9A84(v42, v19);
  sub_21D1D9A84(v36, v19);
  v17 = _s15RemindersUICore24TTRAssigneeCandidateDataV2eeoiySbAC_ACtFZ_0(&v28, &v20);
  sub_21D0CF7E0(v48, &qword_27CE593A0);
  sub_21D1D9AE0(v42);
  sub_21D1D9AE0(v36);
  return v17 & 1;
}

uint64_t _s15RemindersUICore20TTRAssigneeCandidateO1loiySbAC_ACtFZ_0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v20[4] = a1[4];
  v20[5] = v2;
  v21 = a1[6];
  v3 = a1[1];
  v20[0] = *a1;
  v20[1] = v3;
  v4 = a1[3];
  v20[2] = a1[2];
  v20[3] = v4;
  v5 = a2[1];
  v22[0] = *a2;
  v22[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[6];
  v22[5] = a2[5];
  v23 = v8;
  v9 = a2[4];
  v22[3] = v7;
  v22[4] = v9;
  v22[2] = v6;
  if (*&v20[0])
  {
    v10 = ((*&v22[0] == 0) | v21) ^ 1;
    if (!((*&v22[0] == 0) | v21 & 1) && (v23 & 1) == 0)
    {
      v11 = a1[4];
      v19[9] = a1[3];
      v19[10] = v11;
      v19[11] = a1[5];
      v12 = a1[2];
      v19[7] = a1[1];
      v19[8] = v12;
      sub_21D1D9A84(v22, v19);
      sub_21D1D9A84(v20, v19);
      v14 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
      v15 = a2[4];
      v19[2] = a2[3];
      v19[3] = v15;
      v19[4] = a2[5];
      v16 = a2[2];
      v19[0] = a2[1];
      v19[1] = v16;
      v17 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
      if (v14._countAndFlagsBits != v17._countAndFlagsBits || (v10 = 0, v14._object != v17._object))
      {
        v10 = sub_21DBFC64C();
      }

      sub_21D1D9AE0(v22);
      sub_21D1D9AE0(v20);
    }
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

uint64_t sub_21DACEFE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FF78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DACF058(char a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_12;
  }

  if (!a4)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

LABEL_12:
    swift_once();
    return sub_21DBF516C();
  }

  v6 = qword_280D1BAA8;
  sub_21DBF8E0C();
  if (v6 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21DC08D00;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_21D17A884();
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  v9 = sub_21DBFA17C();

  return v9;
}

unint64_t sub_21DACF2E4()
{
  result = qword_27CE66428;
  if (!qword_27CE66428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66428);
  }

  return result;
}

unint64_t sub_21DACF33C()
{
  result = qword_27CE66430;
  if (!qword_27CE66430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE60EE0);
    sub_21D183A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66430);
  }

  return result;
}

void destroy for TTRAssignment(uint64_t a1)
{

  v2 = *(a1 + 112);
  if (v2)
  {

    v3 = *(a1 + 216);
  }
}

uint64_t initializeWithCopy for TTRAssignment(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;
  v8 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v8;
  v9 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v9;
  v10 = (a2 + 112);
  v35 = *(a2 + 112);
  v11 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v11;
  *(a1 + 96) = *(a2 + 96);
  v12 = *(a2 + 104);
  *(a1 + 104) = v12;
  v13 = v4;
  v14 = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v15 = v12;
  if (v35)
  {
    v17 = *(a2 + 120);
    v16 = *(a2 + 128);
    *(a1 + 112) = v35;
    *(a1 + 120) = v17;
    v19 = *(a2 + 136);
    v18 = *(a2 + 144);
    *(a1 + 128) = v16;
    *(a1 + 136) = v19;
    v21 = *(a2 + 152);
    v20 = *(a2 + 160);
    *(a1 + 144) = v18;
    *(a1 + 152) = v21;
    v23 = *(a2 + 168);
    v22 = *(a2 + 176);
    *(a1 + 160) = v20;
    *(a1 + 168) = v23;
    v25 = *(a2 + 184);
    v24 = *(a2 + 192);
    *(a1 + 176) = v22;
    *(a1 + 184) = v25;
    v26 = *(a2 + 200);
    *(a1 + 192) = v24;
    *(a1 + 200) = v26;
    *(a1 + 208) = *(a2 + 208);
    v27 = *(a2 + 216);
    *(a1 + 216) = v27;
    v28 = v35;
    v29 = v17;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v30 = v27;
  }

  else
  {
    v31 = v10[5];
    *(a1 + 176) = v10[4];
    *(a1 + 192) = v31;
    *(a1 + 208) = v10[6];
    v32 = v10[1];
    *(a1 + 112) = *v10;
    *(a1 + 128) = v32;
    v33 = v10[3];
    *(a1 + 144) = v10[2];
    *(a1 + 160) = v33;
  }

  return a1;
}

uint64_t assignWithCopy for TTRAssignment(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  sub_21DBF8E0C();

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  sub_21DBF8E0C();

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  sub_21DBF8E0C();

  *(a1 + 96) = *(a2 + 96);
  v10 = *(a1 + 104);
  v11 = *(a2 + 104);
  *(a1 + 104) = v11;
  v12 = v11;

  v13 = (a1 + 112);
  v14 = *(a1 + 112);
  v16 = (a2 + 112);
  v15 = *(a2 + 112);
  if (v14)
  {
    if (v15)
    {
      *(a1 + 112) = v15;
      v17 = v15;

      v18 = *(a1 + 120);
      v19 = *(a2 + 120);
      *(a1 + 120) = v19;
      v20 = v19;

      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      sub_21DBF8E0C();

      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      sub_21DBF8E0C();

      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      sub_21DBF8E0C();

      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      sub_21DBF8E0C();

      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      sub_21DBF8E0C();

      *(a1 + 208) = *(a2 + 208);
      v21 = *(a1 + 216);
      v22 = *(a2 + 216);
      *(a1 + 216) = v22;
      v23 = v22;
    }

    else
    {
      sub_21D30DA04(a1 + 112);
      v30 = *(a2 + 128);
      v29 = *(a2 + 144);
      *v13 = *v16;
      *(a1 + 128) = v30;
      *(a1 + 144) = v29;
      v31 = *(a2 + 208);
      v33 = *(a2 + 160);
      v32 = *(a2 + 176);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v31;
      *(a1 + 160) = v33;
      *(a1 + 176) = v32;
    }
  }

  else if (v15)
  {
    *(a1 + 112) = v15;
    v24 = *(a2 + 120);
    *(a1 + 120) = v24;
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    v25 = *(a2 + 216);
    *(a1 + 216) = v25;
    v26 = v15;
    v27 = v24;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v28 = v25;
  }

  else
  {
    v34 = *v16;
    v35 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v35;
    *v13 = v34;
    v36 = *(a2 + 160);
    v37 = *(a2 + 176);
    v38 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v38;
    *(a1 + 160) = v36;
    *(a1 + 176) = v37;
  }

  return a1;
}

uint64_t assignWithTake for TTRAssignment(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;

  v8 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v8;

  v9 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v9;

  v10 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v10;

  *(a1 + 96) = *(a2 + 96);
  v11 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);

  v12 = *(a1 + 112);
  v13 = *(a2 + 112);
  if (!v12)
  {
    goto LABEL_5;
  }

  if (!v13)
  {
    sub_21D30DA04(a1 + 112);
LABEL_5:
    v21 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v21;
    *(a1 + 208) = *(a2 + 208);
    v22 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v22;
    v23 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v23;
    return a1;
  }

  *(a1 + 112) = v13;

  v14 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  v15 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v15;

  v16 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v16;

  v17 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v17;

  v18 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v18;

  v19 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v19;

  *(a1 + 208) = *(a2 + 208);
  v20 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 216);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAssignment(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t storeEnumTagSinglePayload for TTRAssignment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for TTRAssigneeCandidateData(uint64_t a1)
{

  v2 = *(a1 + 104);
}

uint64_t initializeWithCopy for TTRAssigneeCandidateData(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;
  v8 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v8;
  v9 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v9;
  *(a1 + 96) = *(a2 + 96);
  v10 = *(a2 + 104);
  *(a1 + 104) = v10;
  v11 = v3;
  v12 = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v13 = v10;
  return a1;
}

uint64_t assignWithCopy for TTRAssigneeCandidateData(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  sub_21DBF8E0C();

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  sub_21DBF8E0C();

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  sub_21DBF8E0C();

  *(a1 + 96) = *(a2 + 96);
  v10 = *(a1 + 104);
  v11 = *(a2 + 104);
  *(a1 + 104) = v11;
  v12 = v11;

  return a1;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t assignWithTake for TTRAssigneeCandidateData(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;

  v8 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v8;

  v9 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v9;

  *(a1 + 96) = *(a2 + 96);
  v10 = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAssigneeCandidateData(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for TTRAssigneeCandidateData(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for TTRAssigneeCandidate(uint64_t a1)
{
  if (*a1 >= 0xFFFFFFFFuLL)
  {

    v3 = *(a1 + 104);
  }
}

__n128 initializeWithCopy for TTRAssigneeCandidate(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 < 0xFFFFFFFFuLL)
  {
    v19 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v19;
    *(a1 + 96) = *(a2 + 96);
    v20 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v20;
    result = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = result;
  }

  else
  {
    v4 = *(a2 + 8);
    v3 = *(a2 + 16);
    *a1 = v2;
    *(a1 + 8) = v4;
    v6 = *(a2 + 24);
    v5 = *(a2 + 32);
    *(a1 + 16) = v3;
    *(a1 + 24) = v6;
    v8 = *(a2 + 40);
    v7 = *(a2 + 48);
    *(a1 + 32) = v5;
    *(a1 + 40) = v8;
    v10 = *(a2 + 56);
    v9 = *(a2 + 64);
    *(a1 + 48) = v7;
    *(a1 + 56) = v10;
    v12 = *(a2 + 72);
    v11 = *(a2 + 80);
    *(a1 + 64) = v9;
    *(a1 + 72) = v12;
    v13 = *(a2 + 88);
    *(a1 + 80) = v11;
    *(a1 + 88) = v13;
    *(a1 + 96) = *(a2 + 96);
    v14 = *(a2 + 104);
    *(a1 + 104) = v14;
    v15 = v2;
    v16 = v4;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v17 = v14;
  }

  return result;
}

uint64_t assignWithCopy for TTRAssigneeCandidate(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v5 >= 0xFFFFFFFF)
    {
      *a1 = v5;
      v13 = *(a2 + 1);
      *(a1 + 8) = v13;
      *(a1 + 16) = *(a2 + 2);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 32) = *(a2 + 4);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 56) = *(a2 + 7);
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 72) = *(a2 + 9);
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 88) = *(a2 + 11);
      *(a1 + 96) = *(a2 + 96);
      v14 = *(a2 + 13);
      *(a1 + 104) = v14;
      v15 = v5;
      v16 = v13;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v17 = v14;
      return a1;
    }

LABEL_7:
    v18 = *a2;
    v19 = a2[2];
    *(a1 + 16) = a2[1];
    *(a1 + 32) = v19;
    *a1 = v18;
    v20 = a2[3];
    v21 = a2[4];
    v22 = a2[6];
    *(a1 + 80) = a2[5];
    *(a1 + 96) = v22;
    *(a1 + 48) = v20;
    *(a1 + 64) = v21;
    return a1;
  }

  if (v5 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = v5;
  v6 = v5;

  v7 = *(a1 + 8);
  v8 = *(a2 + 1);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 2);
  *(a1 + 24) = *(a2 + 3);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = *(a2 + 5);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 6);
  *(a1 + 56) = *(a2 + 7);
  sub_21DBF8E0C();

  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = *(a2 + 9);
  sub_21DBF8E0C();

  *(a1 + 80) = *(a2 + 10);
  *(a1 + 88) = *(a2 + 11);
  sub_21DBF8E0C();

  *(a1 + 96) = *(a2 + 96);
  v10 = *(a1 + 104);
  v11 = *(a2 + 13);
  *(a1 + 104) = v11;
  v12 = v11;

  return a1;
}

uint64_t assignWithTake for TTRAssigneeCandidate(uint64_t result, uint64_t a2)
{
  v3 = *result;
  if (*result < 0xFFFFFFFFuLL)
  {
    v12 = *(a2 + 80);
    *(result + 64) = *(a2 + 64);
    *(result + 80) = v12;
    *(result + 96) = *(a2 + 96);
    v13 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v13;
    v14 = *(a2 + 48);
    *(result + 32) = *(a2 + 32);
    *(result + 48) = v14;
  }

  else
  {
    if (*a2 < 0xFFFFFFFFuLL)
    {
      v4 = result;

      v15 = *(a2 + 80);
      *(v4 + 64) = *(a2 + 64);
      *(v4 + 80) = v15;
      *(v4 + 96) = *(a2 + 96);
      v16 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v16;
      v17 = *(a2 + 48);
      *(v4 + 32) = *(a2 + 32);
      *(v4 + 48) = v17;
    }

    else
    {
      *result = *a2;
      v4 = result;

      v5 = *(v4 + 8);
      *(v4 + 8) = *(a2 + 8);

      v6 = *(a2 + 24);
      *(v4 + 16) = *(a2 + 16);
      *(v4 + 24) = v6;

      v7 = *(a2 + 40);
      *(v4 + 32) = *(a2 + 32);
      *(v4 + 40) = v7;

      v8 = *(a2 + 56);
      *(v4 + 48) = *(a2 + 48);
      *(v4 + 56) = v8;

      v9 = *(a2 + 72);
      *(v4 + 64) = *(a2 + 64);
      *(v4 + 72) = v9;

      v10 = *(a2 + 88);
      *(v4 + 80) = *(a2 + 80);
      *(v4 + 88) = v10;

      *(v4 + 96) = *(a2 + 96);
      v11 = *(v4 + 104);
      *(v4 + 104) = *(a2 + 104);
    }

    return v4;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRAssigneeCandidate(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for TTRAssigneeCandidate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21DAD04A8(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

uint64_t TTRAssert(condition:_:file:line:)(uint64_t (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_21DBF54CC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a1(v13);
  if ((result & 1) == 0)
  {
    sub_21DAD06D8();
    v28 = sub_21DBFBA4C();
    v27[1] = sub_21DBFAEBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v17 = a3;
    v18 = a7;
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_21DC08D10;
    sub_21DBF53AC();
    v20 = sub_21DBF53BC();
    v22 = v21;
    (*(v12 + 8))(v15, v11);
    v23 = MEMORY[0x277D837D0];
    *(v19 + 56) = MEMORY[0x277D837D0];
    v24 = sub_21D17A884();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v25 = MEMORY[0x277D83C10];
    *(v19 + 96) = MEMORY[0x277D83B88];
    *(v19 + 104) = v25;
    *(v19 + 64) = v24;
    *(v19 + 72) = v18;
    *(v19 + 136) = v23;
    *(v19 + 144) = v24;
    *(v19 + 112) = v17;
    *(v19 + 120) = a4;
    sub_21DBF8E0C();
    v26 = v28;
    sub_21DBF845C();
  }

  return result;
}

unint64_t sub_21DAD06D8()
{
  result = qword_27CE66440;
  if (!qword_27CE66440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE66440);
  }

  return result;
}

Swift::Void __swiftcall TTRAssertFailure(_:file:line:)(Swift::String _, Swift::String file, Swift::Int line)
{
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DAD06D8();
  v8 = sub_21DBFBA4C();
  sub_21DBFAEBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D20;
  sub_21DBF53AC();
  v10 = sub_21DBF53BC();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  *(v9 + 56) = MEMORY[0x277D837D0];
  v13 = sub_21D17A884();
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v14 = MEMORY[0x277D83C10];
  *(v9 + 96) = MEMORY[0x277D83B88];
  *(v9 + 104) = v14;
  *(v9 + 64) = v13;
  *(v9 + 72) = line;
  sub_21DBF845C();
}

Swift::Void __swiftcall TTRAssertIsMainThread(_:file:line:)(Swift::String _, Swift::String file, Swift::Int line)
{
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([objc_opt_self() isMainThread] & 1) == 0)
  {
    sub_21DAD06D8();
    v8 = sub_21DBFBA4C();
    sub_21DBFAEBC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21DC08D20;
    sub_21DBF53AC();
    v10 = sub_21DBF53BC();
    v12 = v11;
    (*(v5 + 8))(v7, v4);
    *(v9 + 56) = MEMORY[0x277D837D0];
    v13 = sub_21D17A884();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    v14 = MEMORY[0x277D83C10];
    *(v9 + 96) = MEMORY[0x277D83B88];
    *(v9 + 104) = v14;
    *(v9 + 64) = v13;
    *(v9 + 72) = line;
    sub_21DBF845C();
  }
}

uint64_t TTRHashtag.init(name:type:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t TTRHashtag.id.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t static TTRHashtag.< infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_21DBFC64C();
  }
}

BOOL static TTRHashtag.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_21DBFC64C();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t TTRHashtag.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_21DBFA27C();
  return MEMORY[0x223D44FA0](v1);
}

uint64_t TTRHashtag.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_21DBFC7DC();
  sub_21DBFA27C();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

BOOL sub_21DAD0C08(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_21DBFC64C();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_21DAD0C64()
{
  v1 = *(v0 + 16);
  sub_21DBFC7DC();
  sub_21DBFA27C();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21DAD0CC8()
{
  v1 = *(v0 + 16);
  sub_21DBFA27C();
  return MEMORY[0x223D44FA0](v1);
}

uint64_t sub_21DAD0D00()
{
  v1 = *(v0 + 16);
  sub_21DBFC7DC();
  sub_21DBFA27C();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21DAD0D60(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_21DBFC64C();
  }
}

uint64_t sub_21DAD0D90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (sub_21DBFC64C() ^ 1) & 1;
  }
}

uint64_t sub_21DAD0DD8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return (sub_21DBFC64C() ^ 1) & 1;
  }
}

uint64_t sub_21DAD0E2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return sub_21DBFC64C();
  }
}

uint64_t sub_21DAD0E50@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_21DBF8E0C();
}

unint64_t sub_21DAD0E5C()
{
  result = qword_27CE66448;
  if (!qword_27CE66448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE66448);
  }

  return result;
}

void *sub_21DAD0EB0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRHashtag(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  return a1;
}

void *assignWithTake for TTRHashtag(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = a2[2];
  return a1;
}

uint64_t TTRIHashtagCollectionCell.allTagsButtonState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView) + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  v8[0] = v5;
  v8[1] = v6;
  sub_21D8EFAE8(v8);
}

id TTRIHashtagCollectionCell.addTagButtonState.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_addTagButtonState;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v7 = v5;
  return sub_21D8EFE60(&v7);
}

uint64_t TTRIHashtagCollectionCell.hashtagLabels.setter(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = a1;
  sub_21D8F0118(v5);
}

uint64_t TTRIHashtagCollectionCell.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRIHashtagCollectionCell.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
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

uint64_t TTRIHashtagCollectionCell.isEnabled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v2 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_isEnabled;
  swift_beginAccess();
  return *(v1 + v2);
}

id TTRIHashtagCollectionCell.isEnabled.setter(char a1)
{
  v3 = a1 & 1;
  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v5 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_isEnabled;
  result = swift_beginAccess();
  v7 = v4[v5];
  v4[v5] = a1;
  if (v7 != v3)
  {
    v8 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags;
    v9 = *&v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags];
    *&v4[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_updateFlags] = v9 | 4;
    if ((v9 | 4) != v9)
    {
      result = [v4 setNeedsLayout];
      if (v4[v8])
      {
        return [v4 invalidateIntrinsicContentSize];
      }
    }
  }

  return result;
}

void (*TTRIHashtagCollectionCell.isEnabled.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v6 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_isEnabled;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + v6);
  return sub_21DAD14A0;
}

void sub_21DAD14A0(uint64_t a1)
{
  v1 = *a1;
  TTRIHashtagCollectionCell.isEnabled.setter(*(*a1 + 32));

  free(v1);
}

uint64_t TTRIHashtagCollectionCell.allTagsButtonState.getter@<X0>(void *a1@<X8>)
{
  v3 = (*(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView) + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
  return sub_21DBF8E0C();
}

uint64_t sub_21DAD1544@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*(*a1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView) + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_21DBF8E0C();
}

uint64_t sub_21DAD15AC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*(*a2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView) + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
  sub_21DBF8E0C();
  v8[0] = v6;
  v8[1] = v5;
  sub_21D8EFAE8(v8);
}

void (*TTRIHashtagCollectionCell.allTagsButtonState.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v6 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allTagsButtonState;
  *(v3 + 40) = v5;
  *(v3 + 48) = v6;
  v7 = (v5 + v6);
  swift_beginAccess();
  v8 = v7[1];
  *(v4 + 24) = *v7;
  *(v4 + 32) = v8;
  sub_21DBF8E0C();
  return sub_21D8EFC6C;
}

id sub_21DAD16F8(char *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_addTagButtonState;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v7 = v5;
  return sub_21D8EFE60(&v7);
}

void (*TTRIHashtagCollectionCell.addTagButtonState.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  *a1 = v3;
  v6 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_addTagButtonState;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  swift_beginAccess();
  *(v4 + 40) = *(v5 + v6);
  return sub_21D8EFF90;
}

uint64_t sub_21DAD1868(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_21DBF8E0C();
  sub_21D8F0118(v5);
}

void (*TTRIHashtagCollectionCell.hashtagLabels.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  *a1 = v3;
  v6 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_hashtagLabels;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + v6);
  sub_21DBF8E0C();
  return sub_21D8F0254;
}

uint64_t TTRIHashtagCollectionCell.selection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_internalSelection;
  swift_beginAccess();
  v5 = sub_21DBF6C1C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t TTRIHashtagCollectionCell.allowsEmptySelection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v2 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsEmptySelection;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_21DAD1A88(char a1, uint64_t *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v5 = *a2;
  result = swift_beginAccess();
  *(v4 + v5) = a1;
  return result;
}

uint64_t (*TTRIHashtagCollectionCell.allowsEmptySelection.modify(uint64_t *a1))()
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
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  *a1 = v3;
  v6 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsEmptySelection;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  swift_beginAccess();
  *(v4 + 40) = *(v5 + v6);
  return sub_21DAD1B84;
}

uint64_t TTRIHashtagCollectionCell.allowsExcludedSelection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v2 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsExcludedSelection;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t (*TTRIHashtagCollectionCell.allowsExcludedSelection.modify(uint64_t *a1))()
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
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  *a1 = v3;
  v6 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_allowsExcludedSelection;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  swift_beginAccess();
  *(v4 + 40) = *(v5 + v6);
  return sub_21DAD3110;
}

void sub_21DAD1C80(uint64_t *a1)
{
  v1 = *a1;
  *(*(v1 + 24) + *(v1 + 32)) = *(v1 + 40);
  free(v1);
}

uint64_t sub_21DAD1CA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v5 = *a1;
  result = swift_beginAccess();
  *a2 = *(v4 + v5);
  return result;
}

id TTRIHashtagCollectionCell.hashtagFocusStyle.setter(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusStyle;
  result = swift_beginAccess();
  v6 = v3[v4];
  v3[v4] = v2;
  if (v6 != v2)
  {
    return [v3 setNeedsFocusUpdate];
  }

  return result;
}

void (*TTRIHashtagCollectionCell.hashtagFocusStyle.modify(uint64_t *a1))(id **a1)
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
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  *a1 = v3;
  v6 = OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_focusStyle;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  swift_beginAccess();
  *(v4 + 40) = *(v5 + v6);
  return sub_21D8F1464;
}

uint64_t TTRIHashtagCollectionCell.maxRowCount.getter()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView) + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (v1)
  {
    v2 = v1 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount;
    swift_beginAccess();
    return *v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21DAD1E8C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(*result + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView) + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (v3)
  {
    v4 = v3 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount;
    result = swift_beginAccess();
    v5 = *(v4 + 8);
    *a2 = *v4;
    *(a2 + 8) = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*TTRIHashtagCollectionCell.maxRowCount.modify(void (**a1)(uint64_t a1)))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  v4 = result;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  *a1 = result;
  *(result + 5) = v5;
  v6 = *(v5 + OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_wrappingContainer);
  if (v6)
  {
    v7 = v6 + OBJC_IVAR____TtC15RemindersUICore24TTRContainerWrappingView_maxRowCount;
    swift_beginAccess();
    v8 = *(v7 + 8);
    *(v4 + 3) = *v7;
    *(v4 + 32) = v8;
    return sub_21D8F1074;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21DAD2004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = [objc_allocWithZone(type metadata accessor for TTRIHashtagWrappingCollectionView()) initWithFrame_];
  [v8 setLayoutMargins_];
  *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView] = v8;
  v9 = v8;
  if (a3)
  {
    v10 = sub_21DBFA12C();
  }

  else
  {
    v10 = 0;
  }

  v22.receiver = v4;
  v22.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v22, sel_initWithStyle_reuseIdentifier_, a1, v10);

  v12 = &v8[OBJC_IVAR____TtC15RemindersUICore33TTRIHashtagWrappingCollectionView_delegate];
  swift_beginAccess();
  *(v12 + 1) = &protocol witness table for TTRIHashtagCollectionCell;
  swift_unknownObjectWeakAssign();
  v13 = v11;
  v14 = [v13 containerView];
  [v14 setLayoutMarginsRelativeArrangement_];
  [v14 setPreservesSuperviewLayoutMargins_];
  v15 = v14;
  [v15 setHorizontalAlignment_];
  [v15 setVerticalAlignment_];

  [v15 setDebugBoundingBoxesEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21DC09CF0;
  *(v16 + 32) = v8;
  sub_21D114EC8();
  v17 = sub_21DBFA5DC();

  [v15 setArrangedSubviews_];

  v18 = sub_21D507728();
  v19 = *(v18 + 24);
  *(v18 + 24) = sub_21DAD22EC;
  *(v18 + 32) = 0;
  sub_21D0D0E88(v19);
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong setNeedsInvalidation_];

  [v13 setSelectionStyle_];
  [v13 setSeparatorInset_];

  return v13;
}

double sub_21DAD22EC@<D0>(_OWORD *a1@<X8>)
{
  *&result = 10;
  *a1 = xmmword_21DC3C250;
  return result;
}

id TTRIHashtagCollectionCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TTRIHashtagCollectionCell.hashtagWrappingCollectionView(_:selectionDidChange:)(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v2, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIHashtagCollectionCell.hashtagWrappingCollectionView(_:layoutResultDidChange:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9[0] = v3;
    v9[1] = v4;
    (*(v7 + 16))(v2, v9, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIHashtagCollectionCell.hashtagWrappingCollectionView(_:canHandle:)(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 24))(v2, a2, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t TTRIHashtagCollectionCell.hashtagWrappingCollectionView(_:dropSession:canDropOnHashtagLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 32))(v4, a2, a3, a4, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t TTRIHashtagCollectionCell.hashtagWrappingCollectionView(_:dropSession:performDropOnHashtagLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(v4, a2, a3, a4, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIHashtagCollectionCell.hashtagWrappingCollectionView(_:contextMenuConfigurationForHashtagLabel:popoverAnchor:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = v4 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v9 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v11 = a4[1];
  v14[0] = *a4;
  v14[1] = v11;
  v15[0] = a4[2];
  *(v15 + 9) = *(a4 + 41);
  v12 = (*(v9 + 48))(v4, a2, a3, v14, ObjectType, v9);
  swift_unknownObjectRelease();
  return v12;
}

uint64_t TTRIHashtagCollectionCell.hashtagWrappingCollectionViewRequestAddTag(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 56))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIHashtagCollectionCell.hashtagWrappingCollectionView(_:accessibilityActionsForHashtagLabel:popoverAnchor:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = v4 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v9 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v11 = a4[1];
  v14[0] = *a4;
  v14[1] = v11;
  v15[0] = a4[2];
  *(v15 + 9) = *(a4 + 41);
  v12 = (*(v9 + 64))(v4, a2, a3, v14, ObjectType, v9);
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_21DAD29E4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v2, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21DAD2A7C()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 56))(v0, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21DAD2B0C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9[0] = v3;
    v9[1] = v4;
    (*(v7 + 16))(v2, v9, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21DAD2BB0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 24))(v2, a2, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_21DAD2C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 32))(v4, a2, a3, a4, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_21DAD2D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(v4, a2, a3, a4, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21DAD2DC8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = v4 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v9 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v11 = a4[1];
  v14[0] = *a4;
  v14[1] = v11;
  v15[0] = a4[2];
  *(v15 + 9) = *(a4 + 41);
  v12 = (*(v9 + 48))(v4, a2, a3, v14, ObjectType, v9);
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_21DAD2EA0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = v4 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v9 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  v11 = a4[1];
  v14[0] = *a4;
  v14[1] = v11;
  v15[0] = a4[2];
  *(v15 + 9) = *(a4 + 41);
  v12 = (*(v9 + 64))(v4, a2, a3, v14, ObjectType, v9);
  swift_unknownObjectRelease();
  return v12;
}

uint64_t keypath_set_12Tm(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_get_3Tm_0@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *(*a1 + OBJC_IVAR____TtC15RemindersUICore25TTRIHashtagCollectionCell_collectionView);
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t UIDropOperation.debugHUDInfo.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 1702260557;
      }

      return 4144959;
    }

    return 2037411651;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6564646962726F46;
      }

      return 4144959;
    }

    return 0x6C65636E6143;
  }
}

uint64_t UICollectionViewDropIntent.debugHUDInfo.getter(unint64_t a1)
{
  if (a1 > 2)
  {
    return 1061109567;
  }

  else
  {
    return *&aUnsp_0[8 * a1];
  }
}

uint64_t UICollectionViewDropProposal.debugHUDInfo.getter()
{
  v1 = [v0 operation];
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        v2 = 0xE400000000000000;
        v3 = 1702260557;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v2 = 0xE400000000000000;
    v3 = 2037411651;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 0xE90000000000006ELL;
        v3 = 0x6564646962726F46;
        goto LABEL_11;
      }

LABEL_8:
      v2 = 0xE300000000000000;
      v3 = 4144959;
      goto LABEL_11;
    }

    v2 = 0xE600000000000000;
    v3 = 0x6C65636E6143;
  }

LABEL_11:
  MEMORY[0x223D42AA0](v3, v2);

  MEMORY[0x223D42AA0](8236, 0xE200000000000000);
  v4 = [v0 intent];
  if (v4 > 2)
  {
    v5 = 1061109567;
  }

  else
  {
    v5 = *&aUnsp_0[8 * v4];
  }

  MEMORY[0x223D42AA0](v5, 0xE400000000000000);

  return 0;
}

id TTRISizedToFitImageView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRISizedToFitImageView.image.getter()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, sel_image);

  return v1;
}

void TTRISizedToFitImageView.image.setter(void *a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_setImage_, a1);
  sub_21DAD34C4();
}

void sub_21DAD34C4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC15RemindersUICore23TTRISizedToFitImageView_aspectRatioConstraint;
  v4 = *&v1[OBJC_IVAR____TtC15RemindersUICore23TTRISizedToFitImageView_aspectRatioConstraint];
  if (v4)
  {
    [v4 setActive_];
  }

  v22.receiver = v1;
  v22.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v22, sel_image);
  if (v5)
  {
    v6 = v5;
    [v5 size];
    v8 = v7;
    [v6 size];
    if (v8 > 0.0)
    {
      v10 = v9 / v8;
      if (v10 > 0.0)
      {
        v11 = [v1 heightAnchor];
        v12 = [v1 widthAnchor];
        v13 = [v11 constraintEqualToAnchor:v12 multiplier:v10];

        v14 = *&v1[v3];
        *&v1[v3] = v13;

        v15 = *&v1[v3];
        if (v15)
        {
          type metadata accessor for UILayoutPriority(0);
          v16 = v15;
          [v16 priority];
          v21 = v17;
          sub_21D367748();
          sub_21DBF84FC();
          LODWORD(v18) = v21;
          [v16 setPriority_];

          v19 = *&v1[v3];
          if (v19)
          {
            v20 = v19;
            [v20 setActive_];
          }
        }
      }
    }
  }
}

void (*TTRISizedToFitImageView.image.modify(uint64_t *a1))(objc_super **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  ObjectType = swift_getObjectType();
  v4[4].receiver = ObjectType;
  v4->receiver = v1;
  v4->super_class = ObjectType;
  v4[3].receiver = [(objc_super *)v4 image];
  return sub_21DAD371C;
}

void sub_21DAD371C(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver = (*a1)[3].receiver;
  super_class = (*a1)[3].super_class;
  v4 = (*a1)[4].receiver;
  if (a2)
  {
    v2[1].receiver = super_class;
    v2[1].super_class = v4;
    objc_msgSendSuper2(v2 + 1, sel_setImage_, receiver);
  }

  else
  {
    v2[2].receiver = super_class;
    v2[2].super_class = v4;
    objc_msgSendSuper2(v2 + 2, sel_setImage_, receiver);

    sub_21DAD34C4();
  }

  free(v2);
}

id TTRISizedToFitImageView.__allocating_init(image:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithImage_];

  return v3;
}

id TTRISizedToFitImageView.init(image:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore23TTRISizedToFitImageView_aspectRatioConstraint] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithImage_, a1);
  [v4 setContentMode_];
  sub_21DAD34C4();

  return v4;
}

id TTRISizedToFitImageView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC15RemindersUICore23TTRISizedToFitImageView_aspectRatioConstraint] = 0;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  [v10 setContentMode_];
  sub_21DAD34C4();

  return v10;
}

id TTRISizedToFitImageView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRISizedToFitImageView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore23TTRISizedToFitImageView_aspectRatioConstraint] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [v6 setContentMode_];
    sub_21DAD34C4();
  }

  return v5;
}

id TTRISizedToFitImageView.__allocating_init(image:highlightedImage:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithImage:a1 highlightedImage:a2];

  return v5;
}

id TTRISizedToFitImageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TTRBoardEditableColumnHeaderViewModel.editableSectionNameViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRBoardEditableColumnHeaderViewModel() + 20);

  return sub_21DAD3D24(v3, a1);
}

uint64_t type metadata accessor for TTRBoardEditableColumnHeaderViewModel()
{
  result = qword_27CE66468;
  if (!qword_27CE66468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DAD3D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TTRBoardEditableColumnHeaderViewModel.editableSectionNameViewModel.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTRBoardEditableColumnHeaderViewModel() + 20);

  return sub_21DAD3DCC(a1, v3);
}

uint64_t sub_21DAD3DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TTRBoardEditableColumnHeaderViewModel.init(isUserInteractionEnabled:editableSectionNameViewModel:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v4 = &a3[*(type metadata accessor for TTRBoardEditableColumnHeaderViewModel() + 20)];

  return sub_21DAD3EC4(a2, v4);
}

uint64_t sub_21DAD3EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static TTRBoardEditableColumnHeaderViewModel.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v6 = *(type metadata accessor for TTRBoardEditableColumnHeaderViewModel() + 20);

  return _s15RemindersUICore44TTRRemindersListEditableSectionNameViewModelV2eeoiySbAC_ACtFZ_0(&a1[v6], &a2[v6]);
}

uint64_t sub_21DAD3F88(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return _s15RemindersUICore44TTRRemindersListEditableSectionNameViewModelV2eeoiySbAC_ACtFZ_0(&a1[*(a3 + 20)], &a2[*(a3 + 20)]);
  }

  else
  {
    return 0;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRBoardEditableColumnHeaderViewModel(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + ((v4 + 16) & ~v4));

    return v3;
  }

  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v25 = *v7;
        *v6 = *v7;
        v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = *(v17 - 8);
        v26 = *(v18 + 48);
        v27 = v25;
        if (v26(v7 + v16, 1, v17))
        {
          goto LABEL_28;
        }

        v39 = swift_getEnumCaseMultiPayload();
        if (v39 > 4)
        {
          if (v39 <= 7)
          {
            if (v39 == 5 || v39 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v39 != 8 && v39 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v39 > 2)
        {
          goto LABEL_114;
        }

        if (v39 == 1)
        {
          goto LABEL_113;
        }

        if (v39 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v15 = *v7;
        *v6 = *v7;
        v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v18 = *(v17 - 8);
        v19 = *(v18 + 48);
        v20 = v15;
        if (v19(v7 + v16, 1, v17))
        {
          goto LABEL_28;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 > 4)
        {
          if (v38 <= 7)
          {
            if (v38 == 5 || v38 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v38 > 2)
        {
          goto LABEL_114;
        }

        if (v38 == 1)
        {
          goto LABEL_113;
        }

        if (v38 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v14 = swift_getEnumCaseMultiPayload();
      v128 = v3;
      if (v14 <= 4)
      {
        if (v14 > 2)
        {
LABEL_65:
          v51 = sub_21DBF563C();
          (*(*(v51 - 8) + 16))(v6, v7, v51);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v52 = *v7;
        *v6 = *v7;
        v53 = v52;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v14 > 7)
      {
        if (v14 == 8 || v14 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v14 == 5 || v14 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(v6, v7, *(*(v13 - 8) + 64));
LABEL_92:
      v57 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v58 = v57[5];
      v59 = v6 + v58;
      v60 = v7 + v58;
      v61 = *(v7 + v58 + 8);
      if (v61)
      {
        v123 = v7;
        v126 = v6;
        *v59 = *v60;
        *(v59 + 1) = v61;
        v62 = *(v60 + 2);
        v63 = *(v60 + 3);
        v64 = *(v60 + 4);
        v65 = *(v60 + 5);
        v66 = *(v60 + 6);
        v67 = *(v60 + 7);
        v68 = v60[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v62, v63, v64, v65, v66, v67, v68);
        *(v59 + 2) = v62;
        *(v59 + 3) = v63;
        *(v59 + 4) = v64;
        *(v59 + 5) = v65;
        *(v59 + 6) = v66;
        *(v59 + 7) = v67;
        v59[64] = v68;
        *(v59 + 65) = *(v60 + 65);
        v69 = v60[120];
        if (v69 == 255)
        {
          *(v59 + 72) = *(v60 + 72);
          *(v59 + 88) = *(v60 + 88);
          *(v59 + 104) = *(v60 + 104);
          v59[120] = v60[120];
        }

        else
        {
          v70 = *(v60 + 9);
          v71 = *(v60 + 10);
          v72 = *(v60 + 11);
          v73 = *(v60 + 12);
          v74 = *(v60 + 13);
          v75 = *(v60 + 14);
          v76 = v69 & 1;
          sub_21D0FB960(v70, v71, v72, v73, v74, v75, v69 & 1);
          *(v59 + 9) = v70;
          *(v59 + 10) = v71;
          *(v59 + 11) = v72;
          *(v59 + 12) = v73;
          *(v59 + 13) = v74;
          *(v59 + 14) = v75;
          v59[120] = v76;
        }

        v3 = v128;
        v59[121] = v60[121];
        v7 = v123;
        v6 = v126;
        goto LABEL_98;
      }

LABEL_95:
      v77 = *(v60 + 5);
      *(v59 + 4) = *(v60 + 4);
      *(v59 + 5) = v77;
      *(v59 + 6) = *(v60 + 6);
      *(v59 + 106) = *(v60 + 106);
      v78 = *(v60 + 1);
      *v59 = *v60;
      *(v59 + 1) = v78;
      v79 = *(v60 + 3);
      *(v59 + 2) = *(v60 + 2);
      *(v59 + 3) = v79;
LABEL_98:
      *(v6 + v57[6]) = *(v7 + v57[6]);
      *(v6 + v57[7]) = *(v7 + v57[7]);
      *(v6 + v57[8]) = *(v7 + v57[8]);
      *(v6 + v57[9]) = *(v7 + v57[9]);
      *(v6 + v57[10]) = *(v7 + v57[10]);
      v80 = v57[11];
      v81 = *(v7 + v80);
      *(v6 + v80) = v81;
      v82 = v81;
      goto LABEL_129;
    }

    v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v24 = swift_getEnumCaseMultiPayload();
    v129 = v3;
    if (v24 <= 4)
    {
      if (v24 > 2)
      {
LABEL_69:
        v54 = sub_21DBF563C();
        (*(*(v54 - 8) + 16))(v6, v7, v54);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v24 != 1)
      {
        if (v24 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v55 = *v7;
      *v6 = *v7;
      v56 = v55;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v24 > 7)
    {
      if (v24 == 8 || v24 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v24 == 5 || v24 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(v6, v7, *(*(v23 - 8) + 64));
LABEL_100:
    v57 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v83 = v57[5];
    v59 = v6 + v83;
    v60 = v7 + v83;
    v84 = *(v7 + v83 + 8);
    if (v84)
    {
      v124 = v7;
      v127 = v6;
      *v59 = *v60;
      *(v59 + 1) = v84;
      v85 = *(v60 + 2);
      v86 = *(v60 + 3);
      v87 = *(v60 + 4);
      v88 = *(v60 + 5);
      v90 = *(v60 + 6);
      v89 = *(v60 + 7);
      v91 = v60[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v85, v86, v87, v88, v90, v89, v91);
      *(v59 + 2) = v85;
      *(v59 + 3) = v86;
      *(v59 + 4) = v87;
      *(v59 + 5) = v88;
      *(v59 + 6) = v90;
      *(v59 + 7) = v89;
      v59[64] = v91;
      *(v59 + 65) = *(v60 + 65);
      v92 = v60[120];
      if (v92 == 255)
      {
        *(v59 + 72) = *(v60 + 72);
        *(v59 + 88) = *(v60 + 88);
        *(v59 + 104) = *(v60 + 104);
        v59[120] = v60[120];
      }

      else
      {
        v93 = *(v60 + 9);
        v94 = *(v60 + 10);
        v95 = *(v60 + 11);
        v96 = *(v60 + 12);
        v97 = *(v60 + 13);
        v98 = *(v60 + 14);
        v99 = v92 & 1;
        sub_21D0FB960(v93, v94, v95, v96, v97, v98, v92 & 1);
        *(v59 + 9) = v93;
        *(v59 + 10) = v94;
        *(v59 + 11) = v95;
        *(v59 + 12) = v96;
        *(v59 + 13) = v97;
        *(v59 + 14) = v98;
        v59[120] = v99;
      }

      v3 = v129;
      v59[121] = v60[121];
      v7 = v124;
      v6 = v127;
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *v6 = *v7;
      *(v6 + 8) = *(v7 + 8);
      *(v6 + 9) = *(v7 + 9);
      v21 = v7[2];
      v6[2] = v21;
      v22 = v21;
      goto LABEL_129;
    }

    v32 = *v7;
    *v6 = *v7;
    v16 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v17 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v18 = *(v17 - 8);
    v33 = *(v18 + 48);
    v34 = v32;
    if (v33(v7 + v16, 1, v17))
    {
LABEL_28:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v6 + v16, v7 + v16, *(*(v28 - 8) + 64));
      goto LABEL_129;
    }

    v48 = swift_getEnumCaseMultiPayload();
    if (v48 > 4)
    {
      if (v48 <= 7)
      {
        if (v48 == 5 || v48 == 6)
        {
          goto LABEL_114;
        }

        goto LABEL_127;
      }

      if (v48 != 8 && v48 != 9)
      {
        goto LABEL_127;
      }

LABEL_113:
      v100 = *(v7 + v16);
      *(v6 + v16) = v100;
      v101 = v100;
      swift_storeEnumTagMultiPayload();
LABEL_128:
      (*(v18 + 56))(v6 + v16, 0, 1, v17);
      goto LABEL_129;
    }

    if (v48 <= 2)
    {
      if (v48 != 1)
      {
        if (v48 == 2)
        {
          goto LABEL_114;
        }

LABEL_127:
        memcpy(v6 + v16, v7 + v16, *(v18 + 64));
        goto LABEL_128;
      }

      goto LABEL_113;
    }

LABEL_114:
    v102 = sub_21DBF563C();
    (*(*(v102 - 8) + 16))(v6 + v16, v7 + v16, v102);
    swift_storeEnumTagMultiPayload();
    goto LABEL_128;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v29 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v7, 1, v29))
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(v6, v7, *(*(v31 - 8) + 64));
      }

      else
      {
        *v6 = *v7;
        v40 = *(v29 + 20);
        v41 = sub_21DBF6C1C();
        v125 = *(*(v41 - 8) + 16);
        sub_21DBF8E0C();
        v125(v6 + v40, v7 + v40, v41);
        (*(v30 + 56))(v6, 0, 1, v29);
      }

      v42 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v43 = (v6 + v42);
      v44 = (v7 + v42);
      v45 = v44[1];
      if (v45)
      {
        *v43 = *v44;
        v43[1] = v45;
        v46 = v44[2];
        v43[2] = v46;
        sub_21DBF8E0C();
        v47 = v46;
      }

      else
      {
        *v43 = *v44;
        v43[2] = v44[2];
      }

      goto LABEL_129;
    case 7:
      v35 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v7, 1, v35))
      {
        v37 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(v6, v7, *(*(v37 - 8) + 64));
      }

      else
      {
        v49 = sub_21DBF563C();
        (*(*(v49 - 8) + 16))(v6, v7, v49);
        *(v6 + *(v35 + 20)) = *(v7 + *(v35 + 20));
        (*(v36 + 56))(v6, 0, 1, v35);
      }

      v50 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(v6 + *(v50 + 20)) = *(v7 + *(v50 + 20));
      goto LABEL_129;
    case 8:
      *v6 = *v7;
      v10 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v11 = sub_21DBF8D7C();
      (*(*(v11 - 8) + 16))(v6 + v10, v7 + v10, v11);
LABEL_129:
      swift_storeEnumTagMultiPayload();
      goto LABEL_130;
  }

LABEL_35:
  memcpy(v6, v7, *(*(v8 - 8) + 64));
LABEL_130:
  v103 = *(type metadata accessor for TTRRemindersListEditableSectionNameViewModel() + 20);
  v104 = v6 + v103;
  v105 = v7 + v103;
  v106 = *(v105 + 1);
  *v104 = *v105;
  *(v104 + 1) = v106;
  v107 = *(v105 + 2);
  v108 = *(v105 + 3);
  v109 = *(v105 + 4);
  v110 = *(v105 + 5);
  v111 = *(v105 + 6);
  v112 = *(v105 + 7);
  v113 = v105[64];
  sub_21DBF8E0C();
  sub_21D2A7DB4(v107, v108, v109, v110, v111, v112, v113);
  *(v104 + 2) = v107;
  *(v104 + 3) = v108;
  *(v104 + 4) = v109;
  *(v104 + 5) = v110;
  *(v104 + 6) = v111;
  *(v104 + 7) = v112;
  v104[64] = v113;
  *(v104 + 65) = *(v105 + 65);
  v114 = v105[120];
  if (v114 == 255)
  {
    *(v104 + 72) = *(v105 + 72);
    *(v104 + 88) = *(v105 + 88);
    *(v104 + 104) = *(v105 + 104);
    v104[120] = v105[120];
  }

  else
  {
    v115 = *(v105 + 9);
    v116 = *(v105 + 10);
    v117 = *(v105 + 11);
    v118 = *(v105 + 12);
    v119 = *(v105 + 13);
    v120 = *(v105 + 14);
    v121 = v114 & 1;
    sub_21D0FB960(v115, v116, v117, v118, v119, v120, v114 & 1);
    *(v104 + 9) = v115;
    *(v104 + 10) = v116;
    *(v104 + 11) = v117;
    *(v104 + 12) = v118;
    *(v104 + 13) = v119;
    *(v104 + 14) = v120;
    v104[120] = v121;
  }

  v104[121] = v105[121];
  return v3;
}

void destroy for TTRBoardEditableColumnHeaderViewModel(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + *(a2 + 20));
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      switch(EnumCaseMultiPayload)
      {
        case 6:
          v10 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          if (!(*(*(v10 - 8) + 48))(v2, 1, v10))
          {

            v11 = *(v10 + 20);
            v12 = sub_21DBF6C1C();
            (*(*(v12 - 8) + 8))(v2 + v11, v12);
          }

          v13 = (v2 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
          if (v13[1])
          {
          }

          break;
        case 7:
          v14 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          if (!(*(*(v14 - 8) + 48))(v2, 1, v14))
          {
            v15 = sub_21DBF563C();
            (*(*(v15 - 8) + 8))(v2, v15);
          }

          break;
        case 8:
          v4 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v5 = sub_21DBF8D7C();
          (*(*(v5 - 8) + 8))(v2 + v4, v5);
          break;
      }

      goto LABEL_46;
    }

    if (EnumCaseMultiPayload != 4)
    {

      goto LABEL_46;
    }

LABEL_17:

    v7 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v8 - 8) + 48))(v2 + v7, 1, v8))
    {
      goto LABEL_46;
    }

    v9 = swift_getEnumCaseMultiPayload();
    if (v9 > 4)
    {
      if (v9 <= 7)
      {
        if (v9 != 5 && v9 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v20 = sub_21DBF563C();
        (*(*(v20 - 8) + 8))(v2 + v7, v20);
        goto LABEL_46;
      }

      if (v9 != 8 && v9 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v9 > 2)
      {
        goto LABEL_45;
      }

      if (v9 != 1)
      {
        if (v9 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_46;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v6 = swift_getEnumCaseMultiPayload();
  if (v6 > 4)
  {
    if (v6 <= 7)
    {
      if (v6 != 5 && v6 != 6)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if (v6 != 8 && v6 != 9)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v6 > 2)
  {
LABEL_37:
    v16 = sub_21DBF563C();
    (*(*(v16 - 8) + 8))(v2, v16);
    goto LABEL_41;
  }

  if (v6 == 1)
  {
LABEL_40:

    goto LABEL_41;
  }

  if (v6 == 2)
  {
    goto LABEL_37;
  }

LABEL_41:
  v17 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v18 = v2 + *(v17 + 20);
  if (*(v18 + 1))
  {

    sub_21D179EF0(*(v18 + 2), *(v18 + 3), *(v18 + 4), *(v18 + 5), *(v18 + 6), *(v18 + 7), v18[64]);
    v19 = v18[120];
    if (v19 != 255)
    {
      sub_21D1078C0(*(v18 + 9), *(v18 + 10), *(v18 + 11), *(v18 + 12), *(v18 + 13), *(v18 + 14), v19 & 1);
    }
  }

LABEL_46:
  v21 = v2 + *(type metadata accessor for TTRRemindersListEditableSectionNameViewModel() + 20);

  sub_21D179EF0(*(v21 + 2), *(v21 + 3), *(v21 + 4), *(v21 + 5), *(v21 + 6), *(v21 + 7), v21[64]);
  v22 = v21[120];
  if (v22 != 255)
  {
    v23 = *(v21 + 9);
    v24 = *(v21 + 10);
    v25 = *(v21 + 11);
    v26 = *(v21 + 12);
    v27 = *(v21 + 13);
    v28 = *(v21 + 14);

    sub_21D1078C0(v23, v24, v25, v26, v27, v28, v22 & 1);
  }
}

_BYTE *initializeWithCopy for TTRBoardEditableColumnHeaderViewModel(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = &a1[v4];
  v6 = &a2[v4];
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v23 = *v6;
        *v5 = *v6;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v24 = *(v16 + 48);
        v25 = v23;
        if (v24(v6 + v14, 1, v15))
        {
          goto LABEL_26;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v37 > 2)
        {
          goto LABEL_112;
        }

        if (v37 == 1)
        {
          goto LABEL_111;
        }

        if (v37 != 2)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v13 = *v6;
        *v5 = *v6;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        v17 = *(v16 + 48);
        v18 = v13;
        if (v17(v6 + v14, 1, v15))
        {
          goto LABEL_26;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v36 > 2)
        {
          goto LABEL_112;
        }

        if (v36 == 1)
        {
          goto LABEL_111;
        }

        if (v36 != 2)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_112;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v11 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v12 = swift_getEnumCaseMultiPayload();
      v126 = v3;
      if (v12 <= 4)
      {
        if (v12 > 2)
        {
LABEL_63:
          v49 = sub_21DBF563C();
          (*(*(v49 - 8) + 16))(v5, v6, v49);
          swift_storeEnumTagMultiPayload();
          goto LABEL_90;
        }

        if (v12 != 1)
        {
          if (v12 == 2)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

LABEL_66:
        v50 = *v6;
        *v5 = *v6;
        v51 = v50;
        swift_storeEnumTagMultiPayload();
        goto LABEL_90;
      }

      if (v12 > 7)
      {
        if (v12 == 8 || v12 == 9)
        {
          goto LABEL_66;
        }
      }

      else if (v12 == 5 || v12 == 6)
      {
        goto LABEL_63;
      }

LABEL_89:
      memcpy(v5, v6, *(*(v11 - 8) + 64));
LABEL_90:
      v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v56 = v55[5];
      v57 = v5 + v56;
      v58 = v6 + v56;
      v59 = *(v6 + v56 + 8);
      if (v59)
      {
        v121 = v6;
        v124 = v5;
        *v57 = *v58;
        *(v57 + 1) = v59;
        v60 = *(v58 + 2);
        v61 = *(v58 + 3);
        v62 = *(v58 + 4);
        v63 = *(v58 + 5);
        v64 = *(v58 + 6);
        v65 = *(v58 + 7);
        v66 = v58[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v60, v61, v62, v63, v64, v65, v66);
        *(v57 + 2) = v60;
        *(v57 + 3) = v61;
        *(v57 + 4) = v62;
        *(v57 + 5) = v63;
        *(v57 + 6) = v64;
        *(v57 + 7) = v65;
        v57[64] = v66;
        *(v57 + 65) = *(v58 + 65);
        v67 = v58[120];
        if (v67 == 255)
        {
          *(v57 + 72) = *(v58 + 72);
          *(v57 + 88) = *(v58 + 88);
          *(v57 + 104) = *(v58 + 104);
          v57[120] = v58[120];
        }

        else
        {
          v68 = *(v58 + 9);
          v69 = *(v58 + 10);
          v70 = *(v58 + 11);
          v71 = *(v58 + 12);
          v72 = *(v58 + 13);
          v73 = *(v58 + 14);
          v74 = v67 & 1;
          sub_21D0FB960(v68, v69, v70, v71, v72, v73, v67 & 1);
          *(v57 + 9) = v68;
          *(v57 + 10) = v69;
          *(v57 + 11) = v70;
          *(v57 + 12) = v71;
          *(v57 + 13) = v72;
          *(v57 + 14) = v73;
          v57[120] = v74;
        }

        v3 = v126;
        v57[121] = v58[121];
        v6 = v121;
        v5 = v124;
        goto LABEL_96;
      }

LABEL_93:
      v75 = *(v58 + 5);
      *(v57 + 4) = *(v58 + 4);
      *(v57 + 5) = v75;
      *(v57 + 6) = *(v58 + 6);
      *(v57 + 106) = *(v58 + 106);
      v76 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v76;
      v77 = *(v58 + 3);
      *(v57 + 2) = *(v58 + 2);
      *(v57 + 3) = v77;
LABEL_96:
      *(v5 + v55[6]) = *(v6 + v55[6]);
      *(v5 + v55[7]) = *(v6 + v55[7]);
      *(v5 + v55[8]) = *(v6 + v55[8]);
      *(v5 + v55[9]) = *(v6 + v55[9]);
      *(v5 + v55[10]) = *(v6 + v55[10]);
      v78 = v55[11];
      v79 = *(v6 + v78);
      *(v5 + v78) = v79;
      v80 = v79;
      goto LABEL_127;
    }

    v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v22 = swift_getEnumCaseMultiPayload();
    v127 = v3;
    if (v22 <= 4)
    {
      if (v22 > 2)
      {
LABEL_67:
        v52 = sub_21DBF563C();
        (*(*(v52 - 8) + 16))(v5, v6, v52);
        swift_storeEnumTagMultiPayload();
        goto LABEL_98;
      }

      if (v22 != 1)
      {
        if (v22 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

LABEL_70:
      v53 = *v6;
      *v5 = *v6;
      v54 = v53;
      swift_storeEnumTagMultiPayload();
      goto LABEL_98;
    }

    if (v22 > 7)
    {
      if (v22 == 8 || v22 == 9)
      {
        goto LABEL_70;
      }
    }

    else if (v22 == 5 || v22 == 6)
    {
      goto LABEL_67;
    }

LABEL_97:
    memcpy(v5, v6, *(*(v21 - 8) + 64));
LABEL_98:
    v55 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v81 = v55[5];
    v57 = v5 + v81;
    v58 = v6 + v81;
    v82 = *(v6 + v81 + 8);
    if (v82)
    {
      v122 = v6;
      v125 = v5;
      *v57 = *v58;
      *(v57 + 1) = v82;
      v83 = *(v58 + 2);
      v84 = *(v58 + 3);
      v85 = *(v58 + 4);
      v86 = *(v58 + 5);
      v88 = *(v58 + 6);
      v87 = *(v58 + 7);
      v89 = v58[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v83, v84, v85, v86, v88, v87, v89);
      *(v57 + 2) = v83;
      *(v57 + 3) = v84;
      *(v57 + 4) = v85;
      *(v57 + 5) = v86;
      *(v57 + 6) = v88;
      *(v57 + 7) = v87;
      v57[64] = v89;
      *(v57 + 65) = *(v58 + 65);
      v90 = v58[120];
      if (v90 == 255)
      {
        *(v57 + 72) = *(v58 + 72);
        *(v57 + 88) = *(v58 + 88);
        *(v57 + 104) = *(v58 + 104);
        v57[120] = v58[120];
      }

      else
      {
        v91 = *(v58 + 9);
        v92 = *(v58 + 10);
        v93 = *(v58 + 11);
        v94 = *(v58 + 12);
        v95 = *(v58 + 13);
        v96 = *(v58 + 14);
        v97 = v90 & 1;
        sub_21D0FB960(v91, v92, v93, v94, v95, v96, v90 & 1);
        *(v57 + 9) = v91;
        *(v57 + 10) = v92;
        *(v57 + 11) = v93;
        *(v57 + 12) = v94;
        *(v57 + 13) = v95;
        *(v57 + 14) = v96;
        v57[120] = v97;
      }

      v3 = v127;
      v57[121] = v58[121];
      v6 = v122;
      v5 = v125;
      goto LABEL_96;
    }

    goto LABEL_93;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *v5 = *v6;
      *(v5 + 8) = *(v6 + 8);
      *(v5 + 9) = *(v6 + 9);
      v19 = v6[2];
      v5[2] = v19;
      v20 = v19;
      goto LABEL_127;
    }

    v30 = *v6;
    *v5 = *v6;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    v31 = *(v16 + 48);
    v32 = v30;
    if (v31(v6 + v14, 1, v15))
    {
LABEL_26:
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(v5 + v14, v6 + v14, *(*(v26 - 8) + 64));
      goto LABEL_127;
    }

    v46 = swift_getEnumCaseMultiPayload();
    if (v46 > 4)
    {
      if (v46 <= 7)
      {
        if (v46 == 5 || v46 == 6)
        {
          goto LABEL_112;
        }

        goto LABEL_125;
      }

      if (v46 != 8 && v46 != 9)
      {
        goto LABEL_125;
      }

LABEL_111:
      v98 = *(v6 + v14);
      *(v5 + v14) = v98;
      v99 = v98;
      swift_storeEnumTagMultiPayload();
LABEL_126:
      (*(v16 + 56))(v5 + v14, 0, 1, v15);
      goto LABEL_127;
    }

    if (v46 <= 2)
    {
      if (v46 != 1)
      {
        if (v46 == 2)
        {
          goto LABEL_112;
        }

LABEL_125:
        memcpy(v5 + v14, v6 + v14, *(v16 + 64));
        goto LABEL_126;
      }

      goto LABEL_111;
    }

LABEL_112:
    v100 = sub_21DBF563C();
    (*(*(v100 - 8) + 16))(v5 + v14, v6 + v14, v100);
    swift_storeEnumTagMultiPayload();
    goto LABEL_126;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v27 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v6, 1, v27))
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
      memcpy(v5, v6, *(*(v29 - 8) + 64));
    }

    else
    {
      *v5 = *v6;
      v38 = *(v27 + 20);
      v39 = sub_21DBF6C1C();
      v123 = *(*(v39 - 8) + 16);
      sub_21DBF8E0C();
      v123(v5 + v38, v6 + v38, v39);
      (*(v28 + 56))(v5, 0, 1, v27);
    }

    v40 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
    v41 = (v5 + v40);
    v42 = (v6 + v40);
    v43 = v42[1];
    if (v43)
    {
      *v41 = *v42;
      v41[1] = v43;
      v44 = v42[2];
      v41[2] = v44;
      sub_21DBF8E0C();
      v45 = v44;
    }

    else
    {
      *v41 = *v42;
      v41[2] = v42[2];
    }

    goto LABEL_127;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v33 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v6, 1, v33))
    {
      v35 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
      memcpy(v5, v6, *(*(v35 - 8) + 64));
    }

    else
    {
      v47 = sub_21DBF563C();
      (*(*(v47 - 8) + 16))(v5, v6, v47);
      *(v5 + *(v33 + 20)) = *(v6 + *(v33 + 20));
      (*(v34 + 56))(v5, 0, 1, v33);
    }

    v48 = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(v5 + *(v48 + 20)) = *(v6 + *(v48 + 20));
    goto LABEL_127;
  }

  if (EnumCaseMultiPayload != 8)
  {
LABEL_33:
    memcpy(v5, v6, *(*(v7 - 8) + 64));
    goto LABEL_128;
  }

  *v5 = *v6;
  v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
  v10 = sub_21DBF8D7C();
  (*(*(v10 - 8) + 16))(v5 + v9, v6 + v9, v10);
LABEL_127:
  swift_storeEnumTagMultiPayload();
LABEL_128:
  v101 = *(type metadata accessor for TTRRemindersListEditableSectionNameViewModel() + 20);
  v102 = v5 + v101;
  v103 = v6 + v101;
  v104 = *(v103 + 1);
  *v102 = *v103;
  *(v102 + 1) = v104;
  v105 = *(v103 + 2);
  v106 = *(v103 + 3);
  v107 = *(v103 + 4);
  v108 = *(v103 + 5);
  v109 = *(v103 + 6);
  v110 = *(v103 + 7);
  v111 = v103[64];
  sub_21DBF8E0C();
  sub_21D2A7DB4(v105, v106, v107, v108, v109, v110, v111);
  *(v102 + 2) = v105;
  *(v102 + 3) = v106;
  *(v102 + 4) = v107;
  *(v102 + 5) = v108;
  *(v102 + 6) = v109;
  *(v102 + 7) = v110;
  v102[64] = v111;
  *(v102 + 65) = *(v103 + 65);
  v112 = v103[120];
  if (v112 == 255)
  {
    *(v102 + 72) = *(v103 + 72);
    *(v102 + 88) = *(v103 + 88);
    *(v102 + 104) = *(v103 + 104);
    v102[120] = v103[120];
  }

  else
  {
    v113 = *(v103 + 9);
    v114 = *(v103 + 10);
    v115 = *(v103 + 11);
    v116 = *(v103 + 12);
    v117 = *(v103 + 13);
    v118 = *(v103 + 14);
    v119 = v112 & 1;
    sub_21D0FB960(v113, v114, v115, v116, v117, v118, v112 & 1);
    *(v102 + 9) = v113;
    *(v102 + 10) = v114;
    *(v102 + 11) = v115;
    *(v102 + 12) = v116;
    *(v102 + 13) = v117;
    *(v102 + 14) = v118;
    v102[120] = v119;
  }

  v102[121] = v103[121];
  return v3;
}