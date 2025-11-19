uint64_t DisambiguationView.init(title:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 24);
  *a4 = *result;
  *(a4 + 8) = v4;
  *(a4 + 16) = v5;
  *(a4 + 24) = v6;
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  return result;
}

uint64_t DisambiguationView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v4 = *(a1 + 16);
  v19[0] = sub_26A55841C();
  v5 = *(a1 + 24);
  *&v21 = &type metadata for DisambiguationTitle;
  *(&v21 + 1) = v4;
  *&v22 = v19[0];
  *(&v22 + 1) = v5;
  v6 = type metadata accessor for DisambiguationStandardView();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = v19 - v11;
  v13 = v2[1];
  v21 = *v2;
  v22 = v13;
  v23 = v2[2];
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v5;
  v15 = v2[1];
  *(v14 + 32) = *v2;
  *(v14 + 48) = v15;
  *(v14 + 64) = v2[2];
  v16 = v23;
  (*(*(a1 - 8) + 16))(v20, &v21, a1);

  DisambiguationStandardView.init(header:content:)(sub_26A644EFC, v14, v16, *(&v16 + 1), &type metadata for DisambiguationTitle, v4, v19[0], v5, v9);
  OUTLINED_FUNCTION_0_55();
  swift_getWitnessTable();
  sub_26A80757C(v9);
  v17 = *(v7 + 8);
  v17(v9, v6);
  sub_26A80757C(v12);
  return (v17)(v12, v6);
}

uint64_t sub_26A644EC8@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  *a2 = v5[0];
  a2[1] = v2;
  return sub_26A645030(v5, &v4);
}

uint64_t sub_26A644F50()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26A644F8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26A644FCC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_26A6450A4()
{
  type metadata accessor for RemoteAssetManager();
  v0 = swift_allocObject();
  result = sub_26A64517C();
  qword_2815889B8 = v0;
  return result;
}

uint64_t sub_26A6450E0()
{

  sub_26A83131C();
}

uint64_t sub_26A645120()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26A64517C()
{
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1AD0);
  swift_allocObject();
  *(v0 + 112) = sub_26A83163C(0, 1, sub_26A69396C, 0, 3600.0);
  return v0;
}

uint64_t RFComponentShown.componentName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SnippetUI16RFComponentShown_componentName);

  return v1;
}

id RFComponentShown.init(componentName:componentType:componentIndex:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char a5)
{
  v10 = *a3;
  v11 = &v5[OBJC_IVAR____TtC9SnippetUI16RFComponentShown_instrumentationClient];
  v12 = type metadata accessor for StandardSELFInstrumentationClient();
  v13 = swift_allocObject();
  v11[3] = v12;
  v11[4] = &off_287B17ED8;
  *v11 = v13;
  v14 = &v5[OBJC_IVAR____TtC9SnippetUI16RFComponentShown_componentName];
  *v14 = a1;
  v14[1] = a2;
  v5[OBJC_IVAR____TtC9SnippetUI16RFComponentShown_componentType] = v10;
  v15 = &v5[OBJC_IVAR____TtC9SnippetUI16RFComponentShown_componentIndex];
  *v15 = a4;
  v15[8] = a5 & 1;
  v17.receiver = v5;
  v17.super_class = type metadata accessor for RFComponentShown();
  return objc_msgSendSuper2(&v17, sel_init);
}

id RFComponentShown.init(componentName:componentType:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = &v3[OBJC_IVAR____TtC9SnippetUI16RFComponentShown_instrumentationClient];
  v8 = type metadata accessor for StandardSELFInstrumentationClient();
  v9 = swift_allocObject();
  v7[3] = v8;
  v7[4] = &off_287B17ED8;
  *v7 = v9;
  v10 = &v3[OBJC_IVAR____TtC9SnippetUI16RFComponentShown_componentName];
  *v10 = a1;
  v10[1] = a2;
  v3[OBJC_IVAR____TtC9SnippetUI16RFComponentShown_componentType] = v6;
  v11 = &v3[OBJC_IVAR____TtC9SnippetUI16RFComponentShown_componentIndex];
  *v11 = 0;
  v11[8] = 1;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for RFComponentShown();
  return objc_msgSendSuper2(&v13, sel_init);
}

void sub_26A6454C8(uint64_t a1)
{
  v3 = sub_26A6458A8();
  KeyPath = swift_getKeyPath();
  v5 = sub_26A522AEC(v3, KeyPath, a1);

  if (v5)
  {
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SnippetUI16RFComponentShown_instrumentationClient), *(v1 + OBJC_IVAR____TtC9SnippetUI16RFComponentShown_instrumentationClient + 24));
    sub_26A58733C(v5);
  }
}

id sub_26A645580@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 componentShown];
  *a2 = result;
  return result;
}

void sub_26A6456A4(uint64_t a1, uint64_t a2)
{
  v5 = sub_26A6458A8();
  KeyPath = swift_getKeyPath();
  v7 = sub_26A522E4C(v5, KeyPath, a1, a2);

  if (v7)
  {
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SnippetUI16RFComponentShown_instrumentationClient), *(v2 + OBJC_IVAR____TtC9SnippetUI16RFComponentShown_instrumentationClient + 24));
    sub_26A58733C(v7);
  }
}

void *sub_26A6458A8()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D5A338]) init];
  v3 = v2;
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9SnippetUI16RFComponentShown_componentName + 8);
    v5 = v2;
    if (v4)
    {
      v4 = sub_26A851788();
    }

    [v3 setComponentName_];

    if (*(v1 + OBJC_IVAR____TtC9SnippetUI16RFComponentShown_componentType) == 74)
    {
      v6 = 0;
    }

    else
    {
      v6 = sub_26A4EB268();
    }

    [v3 setComponent_];
    if (*(v1 + OBJC_IVAR____TtC9SnippetUI16RFComponentShown_componentIndex + 8))
    {
      v7 = v3;
      v8 = 0;
    }

    else
    {
      v9 = v3;
      sub_26A852568();
      v8 = sub_26A851788();
    }

    [v3 setComponentIndex_];
  }

  return v3;
}

id RFComponentShown.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RFComponentShown.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RFComponentShown();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26A6463CC()
{
  sub_26A852248();
  MEMORY[0x26D663B00](0xD000000000000028, 0x800000026A88DBB0);
  v0 = sub_26A852778();
  MEMORY[0x26D663B00](v0);

  MEMORY[0x26D663B00](0xD000000000000016, 0x800000026A88DC00);
  return 0;
}

id sub_26A646478()
{
  sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_17_17();
  v2 = [objc_allocWithZone(MEMORY[0x277D5A800]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277D5A808]) init];
  if (v3)
  {
    sub_26A646DC4();
    v4 = OUTLINED_FUNCTION_16_17();
    v5(v4);
    v6 = v3;
    v7 = sub_26A7F5CA4(v0);
    v8 = sub_26A646E08(v7);
    v10 = 0;
    if (v9 >> 60 != 15)
    {
      v11 = v8;
      v12 = v9;
      v10 = sub_26A84ABC8();
      sub_26A54D2B8(v11, v12);
    }

    [v6 setTurnID_];
  }

  v13 = v2;
  [v13 setEventMetadata_];

  return v2;
}

uint64_t sub_26A6468C0()
{
  sub_26A852248();
  MEMORY[0x26D663B00](0xD000000000000028, 0x800000026A88DBB0);
  v0 = sub_26A852778();
  MEMORY[0x26D663B00](v0);

  MEMORY[0x26D663B00](0xD000000000000015, 0x800000026A88DC20);
  return 0;
}

uint64_t sub_26A646BAC()
{
  sub_26A852248();
  MEMORY[0x26D663B00](0xD000000000000028, 0x800000026A88DBB0);
  v0 = sub_26A852778();
  MEMORY[0x26D663B00](v0);

  MEMORY[0x26D663B00](0xD000000000000016, 0x800000026A88DBE0);
  return 0;
}

id sub_26A646C58()
{
  sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_17_17();
  v2 = [objc_allocWithZone(MEMORY[0x277D5A320]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277D5A340]) init];
  if (v3)
  {
    sub_26A646DC4();
    v4 = OUTLINED_FUNCTION_16_17();
    v5(v4);
    v6 = v3;
    v7 = sub_26A7F5CA4(v0);
    [v6 setRfId_];
  }

  v8 = v2;
  [v8 setEventMetadata_];

  return v2;
}

unint64_t sub_26A646DC4()
{
  result = qword_2803B1AF8;
  if (!qword_2803B1AF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803B1AF8);
  }

  return result;
}

uint64_t sub_26A646E08(void *a1)
{
  v2 = [a1 value];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26A84ABF8();

  return v3;
}

uint64_t sub_26A646E78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC1D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_33()
{

  return swift_setAtWritableKeyPath();
}

uint64_t OUTLINED_FUNCTION_13_24()
{

  return sub_26A852068();
}

uint64_t OUTLINED_FUNCTION_20_17()
{
}

uint64_t OUTLINED_FUNCTION_21_17(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_26A851E98();
}

uint64_t OUTLINED_FUNCTION_22_19()
{

  return swift_allocObject();
}

double sub_26A64707C()
{
  OUTLINED_FUNCTION_0_56();
  v8 = (v7 + 64);
  if (!v5)
  {
    return *(v1 + 32);
  }

  while (1)
  {
    v10 = *(v8 - 1);
    v9 = *v8;
    v12 = *(v8 - 3);
    v11 = *(v8 - 2);
    v15[0] = *(v8 - 4);
    *&v15[1] = v12;
    v15[2] = v11;
    v15[3] = v10;
    v15[4] = v9;

    sub_26A647FF8(v15, v4, v3, v2, v0 & v6);
    if (v13)
    {
      break;
    }

    v8 += 5;
    if (!--v5)
    {
      return *(v1 + 32);
    }
  }

  return v12;
}

uint64_t sub_26A647150@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a5;
  v35 = a4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF0);
  OUTLINED_FUNCTION_2_34();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v31 = &v29 - v15;
  v16 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_41();
  v30 = v18 - v17;
  v19 = 0;
  v33 = v5;
  v20 = *(v5 + 24);
  v21 = *(v20 + 16);
  while (1)
  {
    if (v21 == v19)
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
      return sub_26A648BE0(v33 + *(v23 + 36), v34);
    }

    if (v19 >= *(v20 + 16))
    {
      break;
    }

    sub_26A648B00(v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v19, v13);
    sub_26A64857C(v13, a1, a2, a3, v35 & 0x1010101010101);
    if (v22)
    {
      v25 = v13;
      v26 = v31;
      sub_26A648B70(v25, v31);

      v27 = v26 + *(v32 + 48);
      v28 = v30;
      sub_26A5EA2E4(v27, v30);
      return sub_26A5EA2E4(v28, v34);
    }

    sub_26A4E2544(v13, &qword_2803ACCF0);
    ++v19;
  }

  __break(1u);

  result = sub_26A4E2544(v13, &qword_2803ACCF0);
  __break(1u);
  return result;
}

double sub_26A6473A8()
{
  OUTLINED_FUNCTION_0_56();
  v8 = (v7 + 40);
  if (!v5)
  {
    return *(v1 + 32);
  }

  while (1)
  {
    v9 = *v8;

    sub_26A648C44(v10, v4, v3, v2, v0 & v6);
    if (v11)
    {
      break;
    }

    v8 += 2;
    if (!--v5)
    {
      return *(v1 + 32);
    }
  }

  return v9;
}

uint64_t ImageStyleAppearanceResolver.value(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = *(v2 + 16);
  v26 = *v2;
  v27 = v7;
  v8 = *(v2 + 24);
  v9 = *(v2 + 25);
  v10 = *(v2 + 26);
  v11 = *(v2 + 27);
  v12 = *(v2 + 28);
  v13 = *(v2 + 29);
  v14 = *(v2 + 30);
  v15 = *(v2 + 8);
  sub_26A77F8A4(a1, v6);
  v16 = 256;
  if ((v9 & 1) == 0)
  {
    v16 = 0;
  }

  v17 = v16 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v18 = 0x10000;
  if ((v10 & 1) == 0)
  {
    v18 = 0;
  }

  v19 = 0x1000000;
  if ((v11 & 1) == 0)
  {
    v19 = 0;
  }

  v20 = v17 | v18 | v19;
  v21 = 0x100000000;
  if ((v12 & 1) == 0)
  {
    v21 = 0;
  }

  v22 = 0x10000000000;
  if ((v13 & 1) == 0)
  {
    v22 = 0;
  }

  v23 = 0x1000000000000;
  if ((v14 & 1) == 0)
  {
    v23 = 0;
  }

  sub_26A647150(v26, v15, v27, v20 | v21 | v22 | v23, v28);
  return sub_26A4E2544(v6, &unk_2803ABFF0);
}

uint64_t sub_26A6475B0(uint64_t a1)
{
  OUTLINED_FUNCTION_2_34();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v32 = *(v8 + 16);
  OUTLINED_FUNCTION_2_34();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v14 = v13 - v12;
  (*(v3 + 16))(v7);
  v34 = *(v7 + 160);
  v36 = *(v7 + 176);
  v15 = *(v7 + 184);
  v16 = *(v7 + 185);
  v17 = *(v7 + 186);
  v18 = *(v7 + 187);
  v19 = *(v7 + 188);
  v30 = *(v7 + 189);
  v31 = *(v7 + 190);
  v33 = *(v7 + 168);
  (*(v3 + 8))(v7, a1);
  v20 = type metadata accessor for EnvironmentDependent();
  v21 = 256;
  if ((v16 & 1) == 0)
  {
    v21 = 0;
  }

  v22 = v21 & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
  v23 = 0x10000;
  if ((v17 & 1) == 0)
  {
    v23 = 0;
  }

  v24 = 0x1000000;
  if ((v18 & 1) == 0)
  {
    v24 = 0;
  }

  v25 = v22 | v23 | v24;
  v26 = 0x100000000;
  if ((v19 & 1) == 0)
  {
    v26 = 0;
  }

  v27 = 0x10000000000;
  if ((v30 & 1) == 0)
  {
    v27 = 0;
  }

  v28 = 0x1000000000000;
  if ((v31 & 1) == 0)
  {
    v28 = 0;
  }

  sub_26A6AE718(v34, v33, v36, v25 | v26 | v27 | v28, v20, v14);
  return (*(v10 + 40))(v35 + *(a1 + 28), v14, v32);
}

__n128 EnvironmentImageStyle.wrappedValue.getter@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 192);
  result = *(v1 + 207);
  *(a1 + 15) = result;
  return result;
}

uint64_t EnvironmentImageStyle.init()@<X0>(uint64_t a1@<X8>)
{
  sub_26A6AEE74(v7);
  result = memcpy(a1, v7, 0xBFuLL);
  if (qword_28157F7C0 != -1)
  {
    result = swift_once();
  }

  v3 = qword_2815889C0;
  if (qword_2803A8B88 != -1)
  {
    result = swift_once();
  }

  v4 = byte_2803D1D8A;
  if (qword_28157FAE8 != -1)
  {
    result = swift_once();
  }

  v5 = byte_2815889D0;
  if (qword_2803A8B80 != -1)
  {
    result = swift_once();
  }

  v6 = byte_2803D1D89;
  *(a1 + 192) = v3;
  *(a1 + 200) = v4;
  *(a1 + 208) = 1;
  *(a1 + 216) = v5;
  *(a1 + 217) = 0;
  *(a1 + 218) = v6;
  *(a1 + 219) = 0;
  return result;
}

uint64_t sub_26A647960(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 223))
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

uint64_t sub_26A6479A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
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
    *(result + 222) = 0;
    *(result + 220) = 0;
    *(result + 216) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 223) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 223) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy31_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_26A647A48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 31))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_26A647A94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 30) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 31) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 31) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26A647AF4()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v0 = type metadata accessor for EnvironmentDependent();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_26A647B9C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = *(v5 + 64);
  if (v6 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v7 | 7;
  v11 = (v7 | 7) + v8;
  v12 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_23;
  }

  v13 = v8 - ((-33 - v7) | v7) - ((((-192 - v7) | v7) - v11) | v10) - 2;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v17 < 2)
    {
LABEL_23:
      v19 = (a1 + v7 + 191) & ~v7;
      if (v6 >= 0x7FFFFFFF)
      {
        return __swift_getEnumTagSinglePayload(v19, v6, v4);
      }

      v20 = *((v11 + v19) & ~v10);
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_23;
  }

LABEL_15:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    switch(v13)
    {
      case 2:
        LODWORD(v13) = *a1;
        break;
      case 3:
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v13) = *a1;
        break;
      default:
        LODWORD(v13) = *a1;
        break;
    }
  }

  return v9 + (v13 | v18) + 1;
}

void sub_26A647D58(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64);
  v12 = (v10 | 7) + v11;
  v13 = v11 - ((-33 - v10) | v10) - ((((-192 - v10) | v10) - v12) | v10 | 7) - 2;
  v14 = 8 * v13;
  v15 = a3 >= v9;
  v16 = a3 - v9;
  if (v16 != 0 && v15)
  {
    if (v13 <= 3)
    {
      v20 = ((v16 + ~(-1 << v14)) >> v14) + 1;
      if (HIWORD(v20))
      {
        v17 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v17 = v21;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v9 >= a2)
  {
    switch(v17)
    {
      case 1:
        a1[v13] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v13] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v13] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          v23 = &a1[v10 + 191] & ~v10;
          if (v8 < 0x7FFFFFFF)
          {
            v24 = ((v12 + v23) & ~(v10 | 7));
            if ((a2 & 0x80000000) != 0)
            {
              v25 = a2 & 0x7FFFFFFF;
              v24[1] = 0;
            }

            else
            {
              v25 = (a2 - 1);
            }

            *v24 = v25;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v23, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v9 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> v14) + 1;
      if (v13)
      {
        v22 = v18 & ~(-1 << v14);
        bzero(a1, v13);
        if (v13 == 3)
        {
          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        else if (v13 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
    }

    switch(v17)
    {
      case 1:
        a1[v13] = v19;
        break;
      case 2:
        *&a1[v13] = v19;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v13] = v19;
        break;
      default:
        return;
    }
  }
}

void sub_26A647FF8(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v5 = *a1;
  v6 = *a1 + 56;
  v7 = 1 << *(*a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(*a1 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = 2.0;
  v13 = 3.0;
LABEL_5:
  while (2)
  {
    if (v9)
    {
      goto LABEL_10;
    }

    do
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return;
      }

      if (v14 >= v10)
      {
        goto LABEL_75;
      }

      v9 = *(v6 + 8 * v14);
      ++v11;
    }

    while (!v9);
    v11 = v14;
LABEL_10:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = *(v5 + 48) + ((v11 << 10) | (16 * v15));
    v17 = *v16;
    v18 = *(v16 + 8);
    switch(*(v16 + 8))
    {
      case 0:
        if (!*(v17 + 16))
        {
          goto LABEL_40;
        }

        sub_26A8526B8();
        MEMORY[0x26D664930](a2);
        v19 = sub_26A8526F8();
        v20 = ~(-1 << *(v17 + 32));
        while (1)
        {
          v21 = v19 & v20;
          if (((*(v17 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
          {
            break;
          }

          v19 = v21 + 1;
          if (*(*(v17 + 48) + 8 * v21) == a2)
          {
            goto LABEL_5;
          }
        }

LABEL_40:
        sub_26A4E324C(v17, 0);
        goto LABEL_55;
      case 1:
        v24 = 0xE900000000000074;
        v25 = 0x6867696C746F7053;
        v26 = 0x6867696C746F7053;
        v27 = 0xE900000000000074;
        switch(*v16)
        {
          case 1u:
            v27 = 0xE400000000000000;
            v26 = 1769105747;
            break;
          case 2u:
            v26 = 0xD000000000000010;
            v27 = 0x800000026A88A230;
            break;
          case 3u:
            v26 = 0x6153656C69626F4DLL;
            v27 = 0xEC00000069726166;
            break;
          default:
            break;
        }

        switch(a3)
        {
          case 1:
            v24 = 0xE400000000000000;
            v25 = 1769105747;
            break;
          case 2:
            v25 = 0xD000000000000010;
            v24 = 0x800000026A88A230;
            break;
          case 3:
            v25 = 0x6153656C69626F4DLL;
            v24 = 0xEC00000069726166;
            break;
          default:
            break;
        }

        if (v26 == v25 && v27 == v24)
        {
        }

        else
        {
          v45 = sub_26A852598();

          if ((v45 & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        continue;
      case 2:
        if (v17 != a4)
        {
          goto LABEL_55;
        }

        continue;
      case 3:
        if (sub_26A84BBC8() & 1) != (v17 & 1) || ((sub_26A84BBC8() ^ a5))
        {
          goto LABEL_55;
        }

        continue;
      case 4:
        sub_26A4E324C(v17, 4);
        if (((a5 >> 8) & 1 ^ v17))
        {
          goto LABEL_55;
        }

        continue;
      case 5:
        v23 = *v16 & 1;
        sub_26A4E324C(*v16, 5);
        if (_UISolariumEnabled() != v23 || ((a5 >> 16) & 1) != _UISolariumEnabled())
        {
          goto LABEL_55;
        }

        continue;
      case 7:
        if (v17)
        {
          v28 = 375.0;
        }

        else
        {
          v28 = 414.0;
        }

        v29 = [objc_opt_self() mainScreen];
        [v29 _referenceBounds];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;

        v50.origin.x = v31;
        v50.origin.y = v33;
        v12 = 2.0;
        v50.size.width = v35;
        v13 = 3.0;
        v50.size.height = v37;
        if (v28 > CGRectGetWidth(v50))
        {
          goto LABEL_55;
        }

        continue;
      case 0xB:
        v22 = (a5 >> 40) & 1;
        goto LABEL_31;
      default:
        sub_26A4E324C(*v16, *(v16 + 8));
        if (v18 != 8)
        {
          if (v18 == 10)
          {
            if ((BYTE4(a5) & 1) != (v17 & 1))
            {
              goto LABEL_55;
            }
          }

          else
          {
            if (v18 != 9)
            {
              goto LABEL_55;
            }

            v22 = (a5 >> 24) & 1;
LABEL_31:
            if ((v22 ^ v17))
            {
LABEL_55:
              v38 = 3;
              goto LABEL_56;
            }
          }

          continue;
        }

        v38 = v17;
LABEL_56:
        v40 = [objc_opt_self() mainScreen];
        [v40 scale];
        v42 = v41;

        if (v42 == 1.0)
        {
          v43 = 0;
        }

        else if (v42 == v12)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2;
        }

        v44 = 1.0;
        switch(v38)
        {
          case 1:
            v44 = 2.0;
            goto LABEL_63;
          case 2:
            v44 = 3.0;
            if (!v43)
            {
              goto LABEL_68;
            }

            goto LABEL_64;
          case 3:
            goto LABEL_69;
          default:
LABEL_63:
            if (!v43)
            {
LABEL_68:
              if (v44 != 1.0)
              {
                goto LABEL_69;
              }

              goto LABEL_66;
            }

LABEL_64:
            if (v43 != 1)
            {
              if (v44 != v13)
              {
                goto LABEL_69;
              }

LABEL_66:
              sub_26A587EE4(v17, v18);
              continue;
            }

            if (v44 == v12)
            {
              goto LABEL_66;
            }

LABEL_69:
            if (v18 == 6)
            {
              if ((HIWORD(a5) & 1 ^ v17))
              {
                goto LABEL_75;
              }

              continue;
            }

            sub_26A587EE4(v17, v18);
LABEL_75:

            return;
        }
    }
  }
}

void sub_26A64857C(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v5 = *a1;
  v6 = *a1 + 56;
  v7 = 1 << *(*a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(*a1 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = 2.0;
  v13 = 3.0;
LABEL_5:
  while (2)
  {
    if (v9)
    {
      goto LABEL_10;
    }

    do
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return;
      }

      if (v14 >= v10)
      {
        goto LABEL_75;
      }

      v9 = *(v6 + 8 * v14);
      ++v11;
    }

    while (!v9);
    v11 = v14;
LABEL_10:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = *(v5 + 48) + ((v11 << 10) | (16 * v15));
    v17 = *v16;
    v18 = *(v16 + 8);
    switch(*(v16 + 8))
    {
      case 0:
        if (!*(v17 + 16))
        {
          goto LABEL_40;
        }

        sub_26A8526B8();
        MEMORY[0x26D664930](a2);
        v19 = sub_26A8526F8();
        v20 = ~(-1 << *(v17 + 32));
        while (1)
        {
          v21 = v19 & v20;
          if (((*(v17 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
          {
            break;
          }

          v19 = v21 + 1;
          if (*(*(v17 + 48) + 8 * v21) == a2)
          {
            goto LABEL_5;
          }
        }

LABEL_40:
        sub_26A4E324C(v17, 0);
        goto LABEL_55;
      case 1:
        v24 = 0xE900000000000074;
        v25 = 0x6867696C746F7053;
        v26 = 0x6867696C746F7053;
        v27 = 0xE900000000000074;
        switch(*v16)
        {
          case 1u:
            v27 = 0xE400000000000000;
            v26 = 1769105747;
            break;
          case 2u:
            v26 = 0xD000000000000010;
            v27 = 0x800000026A88A230;
            break;
          case 3u:
            v26 = 0x6153656C69626F4DLL;
            v27 = 0xEC00000069726166;
            break;
          default:
            break;
        }

        switch(a3)
        {
          case 1:
            v24 = 0xE400000000000000;
            v25 = 1769105747;
            break;
          case 2:
            v25 = 0xD000000000000010;
            v24 = 0x800000026A88A230;
            break;
          case 3:
            v25 = 0x6153656C69626F4DLL;
            v24 = 0xEC00000069726166;
            break;
          default:
            break;
        }

        if (v26 == v25 && v27 == v24)
        {
        }

        else
        {
          v45 = sub_26A852598();

          if ((v45 & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        continue;
      case 2:
        if (v17 != a4)
        {
          goto LABEL_55;
        }

        continue;
      case 3:
        if (sub_26A84BBC8() & 1) != (v17 & 1) || ((sub_26A84BBC8() ^ a5))
        {
          goto LABEL_55;
        }

        continue;
      case 4:
        sub_26A4E324C(v17, 4);
        if (((a5 >> 8) & 1 ^ v17))
        {
          goto LABEL_55;
        }

        continue;
      case 5:
        v23 = *v16 & 1;
        sub_26A4E324C(*v16, 5);
        if (_UISolariumEnabled() != v23 || ((a5 >> 16) & 1) != _UISolariumEnabled())
        {
          goto LABEL_55;
        }

        continue;
      case 7:
        if (v17)
        {
          v28 = 375.0;
        }

        else
        {
          v28 = 414.0;
        }

        v29 = [objc_opt_self() mainScreen];
        [v29 _referenceBounds];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;

        v50.origin.x = v31;
        v50.origin.y = v33;
        v12 = 2.0;
        v50.size.width = v35;
        v13 = 3.0;
        v50.size.height = v37;
        if (v28 > CGRectGetWidth(v50))
        {
          goto LABEL_55;
        }

        continue;
      case 0xB:
        v22 = (a5 >> 40) & 1;
        goto LABEL_31;
      default:
        sub_26A4E324C(*v16, *(v16 + 8));
        if (v18 != 8)
        {
          if (v18 == 10)
          {
            if ((BYTE4(a5) & 1) != (v17 & 1))
            {
              goto LABEL_55;
            }
          }

          else
          {
            if (v18 != 9)
            {
              goto LABEL_55;
            }

            v22 = (a5 >> 24) & 1;
LABEL_31:
            if ((v22 ^ v17))
            {
LABEL_55:
              v38 = 3;
              goto LABEL_56;
            }
          }

          continue;
        }

        v38 = v17;
LABEL_56:
        v40 = [objc_opt_self() mainScreen];
        [v40 scale];
        v42 = v41;

        if (v42 == 1.0)
        {
          v43 = 0;
        }

        else if (v42 == v12)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2;
        }

        v44 = 1.0;
        switch(v38)
        {
          case 1:
            v44 = 2.0;
            goto LABEL_63;
          case 2:
            v44 = 3.0;
            if (!v43)
            {
              goto LABEL_68;
            }

            goto LABEL_64;
          case 3:
            goto LABEL_69;
          default:
LABEL_63:
            if (!v43)
            {
LABEL_68:
              if (v44 != 1.0)
              {
                goto LABEL_69;
              }

              goto LABEL_66;
            }

LABEL_64:
            if (v43 != 1)
            {
              if (v44 != v13)
              {
                goto LABEL_69;
              }

LABEL_66:
              sub_26A587EE4(v17, v18);
              continue;
            }

            if (v44 == v12)
            {
              goto LABEL_66;
            }

LABEL_69:
            if (v18 == 6)
            {
              if ((HIWORD(a5) & 1 ^ v17))
              {
                goto LABEL_75;
              }

              continue;
            }

            sub_26A587EE4(v17, v18);
LABEL_75:

            return;
        }
    }
  }
}

uint64_t sub_26A648B00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A648B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A648BE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageStyleAppearance();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26A648C44(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = 2.0;
  v13 = 3.0;
LABEL_5:
  while (2)
  {
    if (v9)
    {
      goto LABEL_10;
    }

    do
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return;
      }

      if (v14 >= v10)
      {
        goto LABEL_75;
      }

      v9 = *(v6 + 8 * v14);
      ++v11;
    }

    while (!v9);
    v11 = v14;
LABEL_10:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = *(a1 + 48) + ((v11 << 10) | (16 * v15));
    v17 = *v16;
    v18 = *(v16 + 8);
    switch(*(v16 + 8))
    {
      case 0:
        if (!*(v17 + 16))
        {
          goto LABEL_40;
        }

        sub_26A8526B8();
        MEMORY[0x26D664930](a2);
        v19 = sub_26A8526F8();
        v20 = ~(-1 << *(v17 + 32));
        while (1)
        {
          v21 = v19 & v20;
          if (((*(v17 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
          {
            break;
          }

          v19 = v21 + 1;
          if (*(*(v17 + 48) + 8 * v21) == a2)
          {
            goto LABEL_5;
          }
        }

LABEL_40:
        sub_26A4E324C(v17, 0);
        goto LABEL_55;
      case 1:
        v24 = 0xE900000000000074;
        v25 = 0x6867696C746F7053;
        v26 = 0x6867696C746F7053;
        v27 = 0xE900000000000074;
        switch(*v16)
        {
          case 1u:
            v27 = 0xE400000000000000;
            v26 = 1769105747;
            break;
          case 2u:
            v26 = 0xD000000000000010;
            v27 = 0x800000026A88A230;
            break;
          case 3u:
            v26 = 0x6153656C69626F4DLL;
            v27 = 0xEC00000069726166;
            break;
          default:
            break;
        }

        switch(a3)
        {
          case 1:
            v24 = 0xE400000000000000;
            v25 = 1769105747;
            break;
          case 2:
            v25 = 0xD000000000000010;
            v24 = 0x800000026A88A230;
            break;
          case 3:
            v25 = 0x6153656C69626F4DLL;
            v24 = 0xEC00000069726166;
            break;
          default:
            break;
        }

        if (v26 == v25 && v27 == v24)
        {
        }

        else
        {
          v45 = sub_26A852598();

          if ((v45 & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        continue;
      case 2:
        if (v17 != a4)
        {
          goto LABEL_55;
        }

        continue;
      case 3:
        if (sub_26A84BBC8() & 1) != (v17 & 1) || ((sub_26A84BBC8() ^ a5))
        {
          goto LABEL_55;
        }

        continue;
      case 4:
        sub_26A4E324C(v17, 4);
        if (((a5 >> 8) & 1 ^ v17))
        {
          goto LABEL_55;
        }

        continue;
      case 5:
        v23 = *v16 & 1;
        sub_26A4E324C(*v16, 5);
        if (_UISolariumEnabled() != v23 || ((a5 >> 16) & 1) != _UISolariumEnabled())
        {
          goto LABEL_55;
        }

        continue;
      case 7:
        if (v17)
        {
          v28 = 375.0;
        }

        else
        {
          v28 = 414.0;
        }

        v29 = [objc_opt_self() mainScreen];
        [v29 _referenceBounds];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;

        v50.origin.x = v31;
        v50.origin.y = v33;
        v12 = 2.0;
        v50.size.width = v35;
        v13 = 3.0;
        v50.size.height = v37;
        if (v28 > CGRectGetWidth(v50))
        {
          goto LABEL_55;
        }

        continue;
      case 0xB:
        v22 = (a5 >> 40) & 1;
        goto LABEL_31;
      default:
        sub_26A4E324C(*v16, *(v16 + 8));
        if (v18 != 8)
        {
          if (v18 == 10)
          {
            if ((BYTE4(a5) & 1) != (v17 & 1))
            {
              goto LABEL_55;
            }
          }

          else
          {
            if (v18 != 9)
            {
              goto LABEL_55;
            }

            v22 = (a5 >> 24) & 1;
LABEL_31:
            if ((v22 ^ v17))
            {
LABEL_55:
              v38 = 3;
              goto LABEL_56;
            }
          }

          continue;
        }

        v38 = v17;
LABEL_56:
        v40 = [objc_opt_self() mainScreen];
        [v40 scale];
        v42 = v41;

        if (v42 == 1.0)
        {
          v43 = 0;
        }

        else if (v42 == v12)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2;
        }

        v44 = 1.0;
        switch(v38)
        {
          case 1:
            v44 = 2.0;
            goto LABEL_63;
          case 2:
            v44 = 3.0;
            if (!v43)
            {
              goto LABEL_68;
            }

            goto LABEL_64;
          case 3:
            goto LABEL_69;
          default:
LABEL_63:
            if (!v43)
            {
LABEL_68:
              if (v44 != 1.0)
              {
                goto LABEL_69;
              }

              goto LABEL_66;
            }

LABEL_64:
            if (v43 != 1)
            {
              if (v44 != v13)
              {
                goto LABEL_69;
              }

LABEL_66:
              sub_26A587EE4(v17, v18);
              continue;
            }

            if (v44 == v12)
            {
              goto LABEL_66;
            }

LABEL_69:
            if (v18 == 6)
            {
              if ((HIWORD(a5) & 1 ^ v17))
              {
                goto LABEL_75;
              }

              continue;
            }

            sub_26A587EE4(v17, v18);
LABEL_75:

            return;
        }
    }
  }
}

uint64_t sub_26A649220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A851448();
  v6 = v5;
  sub_26A55FAD8();
  if (sub_26A551A34(0))
  {
    v7 = sub_26A84FA78();
    v16[0] = 1;
    sub_26A64943C(__src);
    memcpy(__dst, __src, 0x151uLL);
    memcpy(v13, __src, 0x151uLL);
    sub_26A4EA070(__dst, v15, &qword_2803B1B18);
    sub_26A4E2544(v13, &qword_2803B1B18);
    memcpy(&v11[7], __dst, 0x151uLL);
    __src[0] = v7;
    __src[1] = 0;
    LOBYTE(__src[2]) = v16[0];
    memcpy(&__src[2] + 1, v11, 0x158uLL);
    nullsub_1(__src);
    memcpy(v16, __src, 0x169uLL);
  }

  else
  {
    sub_26A649CC8(v16);
  }

  memcpy(v15, v16, 0x169uLL);
  memcpy(v13, v15, 0x170uLL);
  v13[46] = v4;
  v13[47] = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1B00);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1B08);
  memcpy((a2 + *(v9 + 36)), v13, 0x180uLL);
  memcpy(__src, v15, 0x170uLL);
  __src[46] = v4;
  __src[47] = v6;
  sub_26A4EA070(v13, __dst, &qword_2803B1B10);
  return sub_26A4E2544(__src, &qword_2803B1B10);
}

uint64_t sub_26A64943C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84FBF8();
  v13[0] = 1;
  sub_26A649608(__src);
  memcpy(__dst, __src, 0xF9uLL);
  memcpy(v17, __src, 0xF9uLL);
  sub_26A4EA070(__dst, v18, &qword_2803B1B20);
  sub_26A4E2544(v17, &qword_2803B1B20);
  memcpy(&v15[7], __dst, 0xF9uLL);
  v3 = sub_26A850248();
  sub_26A84ED48();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v14[328] = 1;
  v18[0] = v2;
  v18[1] = 0;
  LOBYTE(v18[2]) = 1;
  memcpy(&v18[2] + 1, v15, 0x100uLL);
  LOBYTE(v18[35]) = v3;
  v18[36] = v5;
  v18[37] = v7;
  v18[38] = v9;
  v18[39] = v11;
  LOBYTE(v18[40]) = 0;
  memcpy(&v14[7], v18, 0x141uLL);
  *a1 = 0;
  *(a1 + 8) = 1;
  memcpy((a1 + 9), v14, 0x148uLL);
  __src[0] = v2;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  memcpy(&__src[2] + 1, v15, 0x100uLL);
  v20 = v3;
  v21 = v5;
  v22 = v7;
  v23 = v9;
  v24 = v11;
  v25 = 0;
  sub_26A4EA070(v18, v13, &qword_2803B1B28);
  return sub_26A4E2544(__src, &qword_2803B1B28);
}

uint64_t sub_26A649608@<X0>(void *a1@<X8>)
{
  v59 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v55 - v2;
  v4 = sub_26A84FB58();
  MEMORY[0x28223BE20](v4 - 8);
  sub_26A84FB48();
  sub_26A84FB38();
  sub_26A850F08();
  v5 = *MEMORY[0x277CE1020];
  v6 = sub_26A850F68();
  (*(*(v6 - 8) + 104))(v3, v5, v6);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v6);
  sub_26A850F38();

  sub_26A4E2544(v3, &qword_2803AC918);
  sub_26A84FB18();

  sub_26A84FB38();
  sub_26A84FB78();
  v7 = sub_26A850878();
  v9 = v8;
  LOBYTE(v3) = v10;
  sub_26A850E58();
  v60 = sub_26A8506A8();
  v57 = v11;
  v58 = v12;
  v56 = v13;

  sub_26A4EC448(v7, v9, v3 & 1);

  sub_26A84FB48();
  sub_26A84FB38();
  sub_26A84FB08();
  sub_26A84FB38();
  sub_26A84FB68();
  v14 = sub_26A850878();
  v16 = v15;
  LOBYTE(v3) = v17;
  v18 = sub_26A850718();
  v20 = v19;
  v22 = v21;
  sub_26A4EC448(v14, v16, v3 & 1);

  sub_26A84FB08();
  sub_26A4EC448(v18, v20, v22 & 1);

  sub_26A84FB38();
  sub_26A84FB78();
  v23 = sub_26A850878();
  v25 = v24;
  LOBYTE(v16) = v26;
  sub_26A850498();
  v27 = sub_26A850738();
  v29 = v28;
  LOBYTE(v6) = v30;

  sub_26A4EC448(v23, v25, v16 & 1);

  LODWORD(v64[0]) = sub_26A84FED8();
  v31 = sub_26A8506B8();
  v33 = v32;
  LOBYTE(v25) = v34;
  v36 = v35;
  sub_26A4EC448(v27, v29, v6 & 1);

  sub_26A851468();
  sub_26A84F628();
  LOBYTE(v27) = v25 & 1;
  v84 = v25 & 1;
  LOBYTE(v25) = sub_26A850238();
  sub_26A84ED48();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v85 = 0;
  LOBYTE(v29) = sub_26A8502A8();
  sub_26A84ED48();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v87 = 0;
  v61[240] = 1;
  v63[0] = v31;
  v63[1] = v33;
  LOBYTE(v63[2]) = v27;
  *(&v63[2] + 1) = *v83;
  HIDWORD(v63[2]) = *&v83[3];
  v63[3] = v36;
  memcpy(&v63[4], v62, 0x70uLL);
  LOBYTE(v63[18]) = v25;
  *(&v63[18] + 1) = *v86;
  HIDWORD(v63[18]) = *&v86[3];
  v63[19] = v38;
  v63[20] = v40;
  v63[21] = v42;
  v63[22] = v44;
  LOBYTE(v63[23]) = 0;
  *(&v63[23] + 1) = v89[0];
  HIDWORD(v63[23]) = *(v89 + 3);
  LOBYTE(v63[24]) = v29;
  *(&v63[24] + 1) = *v88;
  HIDWORD(v63[24]) = *&v88[3];
  v63[25] = v46;
  v63[26] = v48;
  v63[27] = v50;
  v63[28] = v52;
  LOBYTE(v63[29]) = 0;
  memcpy(&v61[7], v63, 0xE9uLL);
  v53 = v59;
  *v59 = 0;
  *(v53 + 8) = 1;
  memcpy(v53 + 9, v61, 0xF0uLL);
  sub_26A4EA070(v63, v64, &qword_2803B1B30);
  sub_26A4EC448(v60, v57, v56 & 1);

  v64[0] = v31;
  v64[1] = v33;
  v65 = v27;
  *v66 = *v83;
  *&v66[3] = *&v83[3];
  v67 = v36;
  memcpy(v68, v62, 0x70uLL);
  v68[112] = v25;
  *v69 = *v86;
  *&v69[3] = *&v86[3];
  v70 = v38;
  v71 = v40;
  v72 = v42;
  v73 = v44;
  v74 = 0;
  *v75 = v89[0];
  *&v75[3] = *(v89 + 3);
  v76 = v29;
  *v77 = *v88;
  *&v77[3] = *&v88[3];
  v78 = v46;
  v79 = v48;
  v80 = v50;
  v81 = v52;
  v82 = 0;
  return sub_26A4E2544(v64, &qword_2803B1B30);
}

unint64_t sub_26A649CD0()
{
  result = qword_2803B1B38;
  if (!qword_2803B1B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1B08);
    sub_26A4DBCC8(&qword_28157FBB8, &qword_2803B1B00);
    sub_26A4DBCC8(&qword_2803B1B40, &qword_2803B1B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1B38);
  }

  return result;
}

uint64_t ReferenceRichView.init(text1:text2:thumbnail:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_26A50429C(a1, v11);
  OUTLINED_FUNCTION_12_29(a2, v10);
  OUTLINED_FUNCTION_12_29(a3, v9);
  ReferenceRichView.init(text1:text2:thumbnail:addTint:)(v11, v10, v9, 0, a4);
  OUTLINED_FUNCTION_27_4(a3);
  OUTLINED_FUNCTION_27_4(a2);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A649E58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_26A4DBD68(v2, &v13 - v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v10, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26A64A038@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ReferenceRichView();
  sub_26A4DBD68(v1 + *(v10 + 20), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26A64A240()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for ReferenceRichView() + 24);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t ReferenceRichView.init(text1:text2:thumbnail:addTint:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for ReferenceRichView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = (v9 - v8);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v11 = v6[5];
  *(v10 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v12 = v10 + v6[6];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = v10 + v6[7];
  if (qword_2803A8C60 != -1)
  {
    swift_once();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE40);
  v15 = __swift_project_value_buffer(v14, qword_2803D1E30);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48);
  v17 = &v13[*(v16 + 32)];
  sub_26A4DBD68(v15, v17, &qword_2803ADE40);
  sub_26A6AEE74(__src);
  memcpy(v13, __src, 0xBFuLL);
  sub_26A580C48(v17 + *(v14 + 36), &v13[*(v16 + 28)]);
  sub_26A851048();
  OUTLINED_FUNCTION_4_45();
  v39 = 0;
  sub_26A851048();
  OUTLINED_FUNCTION_4_45();
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  *(v10 + v6[10]) = (*(v19 + 8))(v18, v19);
  sub_26A4DBD68(a2, v37, &qword_2803A91B8);
  if (v38)
  {
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v20 = OUTLINED_FUNCTION_7_43();
    v22 = v21(v20);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_26A4DBD10(v37, &qword_2803A91B8);
    v22 = 0;
  }

  *(v10 + v6[11]) = v22;
  sub_26A4DBD68(a3, v37, &qword_2803A91B8);
  if (v38)
  {
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v23 = OUTLINED_FUNCTION_7_43();
    v25 = v24(v23);
    OUTLINED_FUNCTION_11_5(a3);
    OUTLINED_FUNCTION_11_5(a2);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    OUTLINED_FUNCTION_111();
    sub_26A4DBD10(v26, v27);
    OUTLINED_FUNCTION_111();
    sub_26A4DBD10(v28, v29);
    OUTLINED_FUNCTION_111();
    sub_26A4DBD10(v30, v31);
    v25 = 0;
  }

  *(v10 + v6[12]) = v25;
  *(v10 + v6[13]) = a4 & 1;
  sub_26A64C0A0(v10, a5);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for ReferenceRichView()
{
  result = qword_2803B1B68;
  if (!qword_2803B1B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReferenceRichView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  sub_26A649E58(&v18[-v9]);
  v20 = 0u;
  v21 = 0u;
  v22 = 1;
  sub_26A64A240();
  sub_26A64A038(v6);
  v10 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  v19 = v1;
  sub_26A4CAB58();
  v11 = *(v1 + *(type metadata accessor for ReferenceRichView() + 52));
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1B48) + 36)) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_26A68CE74;
  *(v12 + 24) = 0;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1B50) + 36);
  *(v13 + 16) = swift_getKeyPath();
  *(v13 + 24) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v15 = *(v14 + 40);
  *(v13 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v16 = v13 + *(v14 + 44);
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *v13 = sub_26A4D1F7C;
  *(v13 + 8) = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1B58);
  *(a1 + *(result + 36)) = 35;
  return result;
}

uint64_t sub_26A64AA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9CE0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9CD0);
  MEMORY[0x28223BE20](v30);
  v31 = &v29 - v6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9CC0);
  MEMORY[0x28223BE20](v34);
  v8 = &v29 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1B98);
  MEMORY[0x28223BE20](v32);
  v10 = &v29 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9CB0);
  MEMORY[0x28223BE20](v33);
  v12 = &v29 - v11;
  v13 = sub_26A84F3A8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  sub_26A64A038(v16);
  v18 = sub_26A84F388();
  (*(v14 + 8))(v16, v13);
  v19 = sub_26A84FA78();
  v20 = v19;
  if (v18)
  {
    *v12 = v19;
    *(v12 + 1) = 0;
    v12[16] = 1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1BA8);
    sub_26A64B3C8(v17, &v12[*(v21 + 44)]);
    v22 = &qword_2803A9CB0;
    sub_26A4DBD68(v12, v10, &qword_2803A9CB0);
    swift_storeEnumTagMultiPayload();
    sub_26A4DBCC8(&qword_2803A9CA8, &qword_2803A9CB0);
    sub_26A4D5928();
    sub_26A84FDF8();
    v23 = v12;
  }

  else
  {
    v24 = v17 + *(type metadata accessor for ReferenceRichView() + 28);
    v25 = *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48) + 28) + 8);
    *v5 = v20;
    *(v5 + 1) = v25;
    v5[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1BA0);
    sub_26A64AF40(v17, &v5[*(v26 + 44)]);
    sub_26A851458();
    sub_26A84F628();
    v27 = v31;
    sub_26A4DBDB4(v5, v31, &qword_2803A9CE0);
    memcpy((v27 + *(v30 + 36)), __src, 0x70uLL);
    sub_26A4DBDB4(v27, v8, &qword_2803A9CD0);
    *&v8[*(v34 + 36)] = 256;
    v22 = &qword_2803A9CC0;
    sub_26A4DBD68(v8, v10, &qword_2803A9CC0);
    swift_storeEnumTagMultiPayload();
    sub_26A4DBCC8(&qword_2803A9CA8, &qword_2803A9CB0);
    sub_26A4D5928();
    sub_26A84FDF8();
    v23 = v8;
  }

  return sub_26A4DBD10(v23, v22);
}

uint64_t sub_26A64AF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84B1D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v40 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD620);
  MEMORY[0x28223BE20](v11 - 8);
  v44 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v16);
  v43 = &v40 - v17;
  v18 = type metadata accessor for ReferenceRichView();
  v42 = *(a1 + *(v18 + 48));
  if (v42)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D62B20], v4);
    KeyPath = swift_getKeyPath();
    v19 = (v10 + *(v8 + 36));
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440);
    v21 = v5;
    v22 = v18;
    v23 = a1;
    v24 = a2;
    v25 = *(v20 + 28);
    (*(v21 + 32))(v19 + v25, v7, v4);
    v26 = v19 + v25;
    a2 = v24;
    a1 = v23;
    v18 = v22;
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v4);
    *v19 = KeyPath;
    *v10 = v42;
    v27 = swift_getKeyPath();
    sub_26A4DBDB4(v10, v15, &qword_2803AAFA0);
    v28 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB308) + 36)];
    *v28 = v27;
    v28[8] = 0;
    v29 = swift_getKeyPath();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0);
    v31 = &v15[*(v30 + 36)];
    *v31 = v29;
    v31[8] = 1;
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v30);
  }

  else
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v32);
  }

  v33 = v43;
  sub_26A4DBDB4(v15, v43, &qword_2803AD620);

  v34 = sub_26A84FC08();
  v35 = a1 + *(v18 + 28);
  v36 = *(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE48) + 28));
  v46[0] = v34;
  v46[1] = v36;
  v47 = 0;
  sub_26A64B758(a1, &v48);
  v37 = v44;
  sub_26A4DBD68(v33, v44, &qword_2803AD620);
  sub_26A4DBD68(v46, v45, &qword_2803AEA30);
  sub_26A4DBD68(v37, a2, &qword_2803AD620);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1BB8);
  sub_26A4DBD68(v45, a2 + *(v38 + 48), &qword_2803AEA30);
  sub_26A4DBD10(v46, &qword_2803AEA30);
  sub_26A4DBD10(v33, &qword_2803AD620);
  sub_26A4DBD10(v45, &qword_2803AEA30);
  return sub_26A4DBD10(v37, &qword_2803AD620);
}

uint64_t sub_26A64B3C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84B1D8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAF98);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v36 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v40[0] = sub_26A84FC08();
  v40[1] = 0;
  v41 = 1;
  sub_26A64B758(a1, &v42);
  v17 = *(a1 + *(type metadata accessor for ReferenceRichView() + 48));
  if (v17)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D62BD0], v4);
    KeyPath = swift_getKeyPath();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
    v19 = *(v18 + 36);
    v38 = v17;
    v20 = v16;
    v21 = v7;
    v22 = (v13 + v19);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440);
    v24 = v5;
    v25 = v10;
    v26 = a2;
    v27 = *(v23 + 28);
    v28 = v21;
    v16 = v20;
    v29 = v38;
    (*(v24 + 32))(v22 + v27, v28, v4);
    v30 = v22 + v27;
    a2 = v26;
    v10 = v25;
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v4);
    *v22 = KeyPath;
    *v13 = v29;
    v31 = v13;
    v32 = 0;
    v33 = v18;
  }

  else
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
    v31 = v13;
    v32 = 1;
  }

  __swift_storeEnumTagSinglePayload(v31, v32, 1, v33);
  sub_26A4DBDB4(v13, v16, &qword_2803AAF98);
  sub_26A4DBD68(v40, v39, &qword_2803AEA30);
  sub_26A4DBD68(v16, v10, &qword_2803AAF98);
  sub_26A4DBD68(v39, a2, &qword_2803AEA30);
  *(a2 + 616) = 0;
  *(a2 + 624) = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1BB0);
  sub_26A4DBD68(v10, a2 + *(v34 + 64), &qword_2803AAF98);

  sub_26A4DBD10(v16, &qword_2803AAF98);
  sub_26A4DBD10(v40, &qword_2803AEA30);
  sub_26A4DBD10(v10, &qword_2803AAF98);
  return sub_26A4DBD10(v39, &qword_2803AEA30);
}

uint64_t sub_26A64B758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ReferenceRichView();
  v5 = *(a1 + *(v4 + 40));
  if (qword_2803A9038 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D2800, v14, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v13, __src, sizeof(v13));
  v14[11] = 0;
  v14[10] = sub_26A80A810;
  v12 = v5;
  v6 = *(a1 + *(v4 + 44));
  if (v6)
  {
    v7 = qword_28157E6A0;

    if (v7 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2815887F8, &v10[25], &qword_2803AA880);
    sub_26A6AEE74(v16);
    memcpy(&v10[1], v16, 0xBFuLL);
    v10[36] = 0;
    v10[35] = sub_26A80A810;
    v10[0] = v6;
  }

  else
  {
    bzero(v10, 0x128uLL);
  }

  memcpy(__dst, v10, sizeof(__dst));
  sub_26A4DBD68(&v12, v10, &qword_2803A99A0);
  OUTLINED_FUNCTION_12_29(__dst, v9);
  sub_26A4DBD68(v10, a2, &qword_2803A99A0);
  OUTLINED_FUNCTION_12_29(v9, a2 + 296);

  OUTLINED_FUNCTION_27_4(__dst);
  OUTLINED_FUNCTION_11_5(&v12);
  OUTLINED_FUNCTION_27_4(v9);
  return OUTLINED_FUNCTION_11_5(v10);
}

uint64_t sub_26A64B988()
{
  v72 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v66 = v0;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v65 = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19();
  v70 = v6;
  MEMORY[0x28223BE20](v7);
  v68 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  OUTLINED_FUNCTION_79(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  OUTLINED_FUNCTION_79(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  v16 = &v65 - v15;
  v17 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  v23 = v22 - v21;
  v24 = type metadata accessor for ReferenceRichView();
  v25 = OUTLINED_FUNCTION_79(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_41();
  v73 = v27 - v26;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC48);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v28);
  v30 = &v65 - v29;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAC50);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19();
  v69 = v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v65 - v34;
  sub_26A84BA38();
  v36 = TextProperty.asAnyView()();
  v37 = *(v19 + 8);
  v37(v23, v17);
  v79[3] = MEMORY[0x277CE11C8];
  v79[4] = &protocol witness table for AnyView;
  v79[0] = v36;
  sub_26A84BA48();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_26A4DBD10(v16, &qword_2803AA838);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v78[1] = 0;
    v78[2] = 0;
  }

  else
  {
    v38 = TextProperty.asAnyView()();
    v37(v16, v17);
    v40 = &protocol witness table for AnyView;
    v39 = MEMORY[0x277CE11C8];
  }

  v78[0] = v38;
  v78[3] = v39;
  v78[4] = v40;
  sub_26A84BA68();
  v41 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v12, 1, v41) == 1)
  {
    sub_26A4DBD10(v12, &qword_2803AAD50);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v77[1] = 0;
    v77[2] = 0;
  }

  else
  {
    v42 = VisualProperty.asAnyView()();
    (*(*(v41 - 8) + 8))(v12, v41);
    v44 = &protocol witness table for AnyView;
    v43 = MEMORY[0x277CE11C8];
  }

  v77[0] = v42;
  v77[3] = v43;
  v77[4] = v44;
  sub_26A50429C(v79, v76);
  sub_26A4DBD68(v78, v75, &qword_2803A91B8);
  sub_26A4DBD68(v77, v74, &qword_2803A91B8);
  ReferenceRichView.init(text1:text2:thumbnail:addTint:)(v76, v75, v74, 0, v73);
  OUTLINED_FUNCTION_111();
  sub_26A4DBD10(v45, v46);
  OUTLINED_FUNCTION_111();
  sub_26A4DBD10(v47, v48);
  __swift_destroy_boxed_opaque_existential_1(v79);
  v49 = v68;
  sub_26A84BA58();
  v50 = v70;
  sub_26A4DBDB4(v49, v70, &qword_2803B3800);
  v51 = v72;
  if (__swift_getEnumTagSinglePayload(v50, 1, v72) == 1)
  {
    sub_26A4DBD10(v50, &qword_2803B3800);
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_36();
    v53 = &v30[v52];
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v55 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v53 + v54, 1, 1, v55);
    *v53 = v50;
  }

  else
  {
    v56 = *(v66 + 32);
    v57 = v65;
    OUTLINED_FUNCTION_111();
    v56();
    swift_getKeyPath();
    OUTLINED_FUNCTION_9_36();
    v59 = &v30[v58];
    v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    (v56)(v59 + v60, v57, v51);
    v61 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v59 + v60, 0, 1, v61);
    *v59 = v50;
  }

  sub_26A64C0A0(v73, v30);
  v62 = sub_26A84BA18();
  sub_26A4DCA34(v62);

  sub_26A4DBD10(v30, &qword_2803AAC48);
  sub_26A4DBD68(v35, v69, &qword_2803AAC50);
  sub_26A64C62C();
  v63 = sub_26A851248();
  sub_26A4DBD10(v35, &qword_2803AAC50);
  return v63;
}

uint64_t sub_26A64C0A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReferenceRichView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A64C128(uint64_t a1)
{
  result = sub_26A64C858(&qword_2803B1B60, MEMORY[0x277D62E80]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A64C1A8()
{
  sub_26A4D27F4();
  if (v0 <= 0x3F)
  {
    sub_26A64C37C(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26A64C37C(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A64C37C(319, &qword_2803ADE78, type metadata accessor for ReferenceConstants, type metadata accessor for EnvironmentConstant);
        if (v3 <= 0x3F)
        {
          sub_26A64C3E0(319, &qword_2803AB798, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_26A64C3E0(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26A64C37C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26A64C3E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26A64C430()
{
  result = qword_2803B1B78;
  if (!qword_2803B1B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1B58);
    sub_26A64C4BC();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1B78);
  }

  return result;
}

unint64_t sub_26A64C4BC()
{
  result = qword_2803B1B80;
  if (!qword_2803B1B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1B50);
    sub_26A64C574();
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1B80);
  }

  return result;
}

unint64_t sub_26A64C574()
{
  result = qword_2803B1B88;
  if (!qword_2803B1B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1B48);
    sub_26A4DBCC8(&qword_2803B1B90, &qword_2803A9C98);
    sub_26A5D1AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1B88);
  }

  return result;
}

unint64_t sub_26A64C62C()
{
  result = qword_2803B1BC0;
  if (!qword_2803B1BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC50);
    sub_26A64C6E4();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1BC0);
  }

  return result;
}

unint64_t sub_26A64C6E4()
{
  result = qword_2803B1BC8;
  if (!qword_2803B1BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC40);
    sub_26A64C770();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1BC8);
  }

  return result;
}

unint64_t sub_26A64C770()
{
  result = qword_2803B1BD0;
  if (!qword_2803B1BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAC48);
    sub_26A64C858(&qword_2803B1BD8, type metadata accessor for ReferenceRichView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1BD0);
  }

  return result;
}

uint64_t sub_26A64C858(unint64_t *a1, void (*a2)(uint64_t))
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

double OUTLINED_FUNCTION_4_45()
{
  result = *(v1 - 328);
  v3 = *(v1 - 320);
  *v0 = result;
  *(v0 + 8) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_29(uint64_t a1, uint64_t a2)
{

  return sub_26A4DBD68(a1, a2, v2);
}

id sub_26A64C9E4(void *a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v4)
  {
    sub_26A851788();
    OUTLINED_FUNCTION_5_42();
  }

  else
  {
    a1 = 0;
  }

  return a1;
}

id RFPatternExecuted.__allocating_init(patternId:patternType:responseMode:)()
{
  OUTLINED_FUNCTION_2_55();
  v1 = objc_allocWithZone(v0);
  return RFPatternExecuted.init(patternId:patternType:responseMode:)();
}

id RFPatternExecuted.init(patternId:patternType:responseMode:)()
{
  OUTLINED_FUNCTION_2_55();
  v7 = &v1[OBJC_IVAR____TtC9SnippetUI17RFPatternExecuted_instrumentationClient];
  v8 = type metadata accessor for StandardSELFInstrumentationClient();
  v9 = swift_allocObject();
  v7[3] = v8;
  v7[4] = &off_287B17ED8;
  *v7 = v9;
  v10 = &v1[OBJC_IVAR____TtC9SnippetUI17RFPatternExecuted_patternId];
  *v10 = v6;
  *(v10 + 1) = v5;
  v11 = &v1[OBJC_IVAR____TtC9SnippetUI17RFPatternExecuted_patternType];
  *v11 = v4;
  *(v11 + 1) = v3;
  v12 = &v1[OBJC_IVAR____TtC9SnippetUI17RFPatternExecuted_responseViewId];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v1[OBJC_IVAR____TtC9SnippetUI17RFPatternExecuted_responseMode];
  *v13 = v2;
  *(v13 + 1) = v0;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for RFPatternExecuted();
  return objc_msgSendSuper2(&v15, sel_init);
}

id RFPatternExecuted.__allocating_init(patternId:patternType:responseViewId:responseMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_1_54();
  v17 = objc_allocWithZone(v8);
  return RFPatternExecuted.init(patternId:patternType:responseViewId:responseMode:)(v15, v14, v13, v12, v11, v10, v9, a8);
}

id RFPatternExecuted.init(patternId:patternType:responseViewId:responseMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_1_54();
  v16 = &v8[OBJC_IVAR____TtC9SnippetUI17RFPatternExecuted_instrumentationClient];
  v17 = type metadata accessor for StandardSELFInstrumentationClient();
  v18 = swift_allocObject();
  v16[3] = v17;
  v16[4] = &off_287B17ED8;
  *v16 = v18;
  v19 = &v8[OBJC_IVAR____TtC9SnippetUI17RFPatternExecuted_patternId];
  *v19 = v15;
  *(v19 + 1) = v14;
  v20 = &v8[OBJC_IVAR____TtC9SnippetUI17RFPatternExecuted_patternType];
  *v20 = v13;
  *(v20 + 1) = v12;
  v21 = &v8[OBJC_IVAR____TtC9SnippetUI17RFPatternExecuted_responseViewId];
  *v21 = v11;
  *(v21 + 1) = v10;
  v22 = &v8[OBJC_IVAR____TtC9SnippetUI17RFPatternExecuted_responseMode];
  *v22 = v9;
  *(v22 + 1) = a8;
  v25.receiver = v8;
  v25.super_class = type metadata accessor for RFPatternExecuted();
  return objc_msgSendSuper2(&v25, sel_init);
}

void sub_26A64CEA8(uint64_t a1)
{
  v3 = sub_26A64D288();
  KeyPath = swift_getKeyPath();
  v5 = sub_26A522B04(v3, KeyPath, a1);

  if (v5)
  {
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SnippetUI17RFPatternExecuted_instrumentationClient), *(v1 + OBJC_IVAR____TtC9SnippetUI17RFPatternExecuted_instrumentationClient + 24));
    sub_26A58733C(v5);
  }
}

id sub_26A64CF60@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 patternExecuted];
  *a2 = result;
  return result;
}

void sub_26A64D084(uint64_t a1, uint64_t a2)
{
  v5 = sub_26A64D288();
  KeyPath = swift_getKeyPath();
  v7 = sub_26A522E64(v5, KeyPath, a1, a2);

  if (v7)
  {
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SnippetUI17RFPatternExecuted_instrumentationClient), *(v2 + OBJC_IVAR____TtC9SnippetUI17RFPatternExecuted_instrumentationClient + 24));
    sub_26A58733C(v7);
  }
}

void *sub_26A64D288()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D5A370]) init];
  v2 = v1;
  if (v1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9SnippetUI17RFPatternExecuted_patternId + 8);
    v4 = v1;
    if (v3)
    {
      v3 = sub_26A851788();
    }

    [v2 setPatternId_];

    v5 = *(v0 + OBJC_IVAR____TtC9SnippetUI17RFPatternExecuted_responseViewId + 8);
    v6 = v2;
    if (v5)
    {
      v5 = sub_26A851788();
    }

    [v2 setResponseViewId_];

    v7 = v2;

    v8 = sub_26A64D41C();
    if (v8 == 17)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_26A64D470(v8);
    }

    [v7 setPattern_];

    v10 = v7;
    [v10 setMode_];
  }

  return v2;
}

uint64_t sub_26A64D41C()
{
  v0 = sub_26A8525C8();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26A64D484()
{
  if (!*(v0 + OBJC_IVAR____TtC9SnippetUI17RFPatternExecuted_responseMode + 8))
  {
    return 0;
  }

  v30 = sub_26A8517B8();
  sub_26A53ACC8();

  OUTLINED_FUNCTION_0_57(v1, MEMORY[0x277D837D0], v2, v3, v4, v5, v6, v7, v30);
  OUTLINED_FUNCTION_5_42();

  if (v0)
  {
    sub_26A8517B8();
    v8 = OUTLINED_FUNCTION_4_46();
    OUTLINED_FUNCTION_0_57(v8, MEMORY[0x277D837D0], v9, v10, v11, v12, v13, v14, v31);
    OUTLINED_FUNCTION_5_42();

    sub_26A8517B8();
    v15 = OUTLINED_FUNCTION_4_46();
    OUTLINED_FUNCTION_0_57(v15, MEMORY[0x277D837D0], v16, v17, v18, v19, v20, v21, v32);
    OUTLINED_FUNCTION_5_42();

    sub_26A8517B8();
    v22 = OUTLINED_FUNCTION_4_46();
    OUTLINED_FUNCTION_0_57(v22, MEMORY[0x277D837D0], v23, v24, v25, v26, v27, v28, v33);
    OUTLINED_FUNCTION_5_42();

    return 0;
  }

  return 1;
}

id RFPatternExecuted.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RFPatternExecuted.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RFPatternExecuted();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return MEMORY[0x28211F310](&a9, a2, a2, v9, v9);
}

uint64_t OUTLINED_FUNCTION_3_52()
{
}

uint64_t OUTLINED_FUNCTION_4_46()
{
}

uint64_t OUTLINED_FUNCTION_5_42()
{
}

uint64_t View.ambientDrawable(renderWithDrawingGroup:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v9 = swift_getKeyPath();
  v10 = 0;
  v11 = a1;
  MEMORY[0x26D662ED0](&KeyPath, a2, &type metadata for AmbientModifier, a3);
}

uint64_t sub_26A64D8A8()
{
  OUTLINED_FUNCTION_6_8();
  result = EnvironmentValues.isInAmbient.getter();
  *v0 = result & 1;
  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_26A64D960(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 26))
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

uint64_t sub_26A64D9A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_26A64DA14(uint64_t a1, char a2)
{
  v4 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  if ((a2 & 1) == 0)
  {

    sub_26A851EA8();
    v11 = sub_26A8501F8();
    OUTLINED_FUNCTION_7_44();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(a1, 0);
    (*(v6 + 8))(v10, v4);
    LOBYTE(a1) = v13;
  }

  return a1 & 1;
}

double sub_26A64DB34(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  if (a4)
  {
    return *&a3;
  }

  sub_26A851EA8();
  v14 = sub_26A8501F8();
  OUTLINED_FUNCTION_7_44();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(a3, 0);
  (*(v8 + 8))(v12, v6);
  return v15;
}

uint64_t sub_26A64DC58@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v48 = a5;
  v49 = a4;
  v51 = a1;
  v54 = a6;
  sub_26A84FA98();
  OUTLINED_FUNCTION_15();
  v45 = v9;
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C08);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C10);
  OUTLINED_FUNCTION_15();
  v47 = v18;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v19);
  v50 = &v44 - v20;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C18);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  v23 = &v44 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C20);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v24);
  v26 = &v44 - v25;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C28);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v27);
  v29 = &v44 - v28;
  if ((sub_26A64DA14(a2, a3 & 1) & 1) != 0 && (v30 = [objc_opt_self() saeAvailable], !v30))
  {
    if ((v48 & 0x100) != 0)
    {
      v38 = sub_26A64DB34(v30, v31, v49, v48 & 1);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C30);
      OUTLINED_FUNCTION_46();
      (*(v39 + 16))(v16, v51);
      *&v16[*(v13 + 36)] = v38;
      v41 = v45;
      v40 = v46;
      (*(v45 + 104))(v12, *MEMORY[0x277CE00F0], v46);
      v51 = sub_26A64E260();
      sub_26A850A18();
      (*(v41 + 8))(v12, v40);
      sub_26A64E480(v16);
      v42 = v47;
      v43 = v50;
      (*(v47 + 16))(v26, v50, v17);
      swift_storeEnumTagMultiPayload();
      sub_26A64E1FC();
      v55 = v13;
      v56 = v51;
      OUTLINED_FUNCTION_2_56();
      sub_26A84FDF8();
      sub_26A4A6664(v29, v23);
      swift_storeEnumTagMultiPayload();
      sub_26A64E340();
      OUTLINED_FUNCTION_3_53();
      sub_26A84FDF8();
      sub_26A4A66CC(v29);
      return (*(v42 + 8))(v43, v17);
    }

    else
    {
      v36 = sub_26A64DB34(v30, v31, v49, v48 & 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C30);
      OUTLINED_FUNCTION_46();
      (*(v37 + 16))(v16, v51);
      *&v16[*(v13 + 36)] = v36;
      sub_26A64E410(v16, v23);
      swift_storeEnumTagMultiPayload();
      sub_26A64E340();
      sub_26A64E260();
      OUTLINED_FUNCTION_3_53();
      sub_26A84FDF8();
      return sub_26A64E480(v16);
    }
  }

  else
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C30);
    OUTLINED_FUNCTION_46();
    (*(v33 + 16))(v26, v51, v32);
    swift_storeEnumTagMultiPayload();
    sub_26A64E1FC();
    v34 = sub_26A64E260();
    v55 = v13;
    v56 = v34;
    OUTLINED_FUNCTION_2_56();
    sub_26A84FDF8();
    sub_26A4A6664(v29, v23);
    swift_storeEnumTagMultiPayload();
    sub_26A64E340();
    OUTLINED_FUNCTION_3_53();
    sub_26A84FDF8();
    return sub_26A4A66CC(v29);
  }
}

uint64_t sub_26A64E1C8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_26A64DC58(a1, *v2, *(v2 + 8), *(v2 + 16), v3 | *(v2 + 24), a2);
}

unint64_t sub_26A64E1FC()
{
  result = qword_28157FBC8;
  if (!qword_28157FBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FBC8);
  }

  return result;
}

unint64_t sub_26A64E260()
{
  result = qword_28157FE20;
  if (!qword_28157FE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1C08);
    sub_26A64E1FC();
    sub_26A64E2EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FE20);
  }

  return result;
}

unint64_t sub_26A64E2EC()
{
  result = qword_28157FC20;
  if (!qword_28157FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FC20);
  }

  return result;
}

unint64_t sub_26A64E340()
{
  result = qword_28157FC50;
  if (!qword_28157FC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1C28);
    sub_26A64E1FC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1C08);
    sub_26A64E260();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FC50);
  }

  return result;
}

uint64_t sub_26A64E410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A64E480(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A64E4E8()
{
  result = qword_28157FC38;
  if (!qword_28157FC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1C38);
    sub_26A64E340();
    sub_26A64E260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FC38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_56()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_7_44()
{

  return sub_26A84EA78();
}

uint64_t sub_26A64E5D4()
{
  v22[10] = *MEMORY[0x277D85DE8];
  v1 = sub_26A84A9C8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A64E83C();
  (*(v2 + 16))(v4, v0, v1);
  v5 = sub_26A851F68();
  v6 = [v5 length];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C48);
  inited = swift_initStackObject();
  v8 = MEMORY[0x277D74090];
  *(inited + 16) = xmmword_26A8570D0;
  v9 = *v8;
  *(inited + 32) = *v8;
  v10 = *MEMORY[0x277D74128];
  type metadata accessor for DocumentType();
  *(inited + 64) = v11;
  *(inited + 40) = v10;
  type metadata accessor for DocumentAttributeKey();
  sub_26A64E880();
  v12 = v9;
  v13 = v10;
  sub_26A8516A8();
  v14 = sub_26A851688();

  v22[0] = 0;
  v15 = [v5 dataFromRange:0 documentAttributes:v6 error:{v14, v22}];

  v16 = v22[0];
  if (v15)
  {
    v17 = sub_26A84ABF8();
  }

  else
  {
    v18 = v16;
    v19 = sub_26A84AAE8();

    swift_willThrow();
    return 0;
  }

  return v17;
}

unint64_t sub_26A64E83C()
{
  result = qword_2803B1C40;
  if (!qword_2803B1C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803B1C40);
  }

  return result;
}

unint64_t sub_26A64E880()
{
  result = qword_2803AA538;
  if (!qword_2803AA538)
  {
    type metadata accessor for DocumentAttributeKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA538);
  }

  return result;
}

uint64_t sub_26A64E8D8()
{
  v1 = [v0 model];
  sub_26A8517B8();

  sub_26A53ACC8();
  LOBYTE(v1) = sub_26A8520E8();

  return v1 & 1;
}

uint64_t sub_26A64E984@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9D8);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_6_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v78 - v9;
  v84 = sub_26A84B258();
  OUTLINED_FUNCTION_15();
  v82 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  v81 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v83 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1C50);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_6_0();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v78 - v22;
  v24 = sub_26A84B718();
  OUTLINED_FUNCTION_15();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_0();
  v85 = (v28 - v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v78 - v31;
  v33 = [v1 image];
  if (!v33)
  {
    __swift_storeEnumTagSinglePayload(v23, 1, 1, v24);
    goto LABEL_7;
  }

  v34 = v33;
  sub_26A7DC3D0();

  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
LABEL_7:
    v20 = v23;
    goto LABEL_10;
  }

  v79 = v7;
  v80 = a1;
  v35 = *(v26 + 32);
  v35(v32, v23, v24);
  v36 = [v2 badge];
  if (!v36)
  {
    v40 = OUTLINED_FUNCTION_116();
    v41(v40);
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v24);
    goto LABEL_9;
  }

  v37 = v36;
  sub_26A7DC3D0();

  if (__swift_getEnumTagSinglePayload(v20, 1, v24) == 1)
  {
    v38 = OUTLINED_FUNCTION_116();
    v39(v38);
LABEL_9:
    a1 = v80;
LABEL_10:
    sub_26A4E2544(v20, &unk_2803B1C50);
    v42 = [v2 image];
    if (v42)
    {

      sub_26A851E98();
      LOBYTE(v76) = 2;
      OUTLINED_FUNCTION_1_55();
      sub_26A7A8230(v43, v44, v45, v46, v47, 18, v48, 16, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
    }

    else
    {
      sub_26A851E98();
      LOBYTE(v76) = 2;
      OUTLINED_FUNCTION_1_55();
      sub_26A7A805C(v49, v50, v51, v52, v53, 16, v54, 16, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
    }

    return __swift_storeEnumTagSinglePayload(a1, v23, 1, v24);
  }

  v56 = v85;
  v35(v85, v20, v24);
  v23 = sub_26A84B2D8();
  sub_26A7DBBF8(v23, v10);

  v57 = v84;
  if (__swift_getEnumTagSinglePayload(v10, 1, v84) == 1)
  {
    v58 = v10;
    a1 = v80;
    v59 = v26;
  }

  else
  {
    v60 = v82;
    v78 = *(v82 + 32);
    v78(v83, v10, v57);
    v23 = sub_26A84B2D8();
    v61 = v79;
    sub_26A7DBBF8(v23, v79);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v57);
    a1 = v80;
    v59 = v26;
    if (EnumTagSinglePayload != 1)
    {
      v71 = v81;
      v78(v81, v61, v57);
      v72 = v83;
      sub_26A84B198();
      v73 = *(v60 + 8);
      v73(v71, v57);
      v73(v72, v57);
      v74 = *(v59 + 8);
      v74(v85, v24);
      v75 = OUTLINED_FUNCTION_116();
      (v74)(v75);
      v23 = 0;
      return __swift_storeEnumTagSinglePayload(a1, v23, 1, v24);
    }

    (*(v60 + 8))(v83, v57);
    v58 = v61;
    v56 = v85;
  }

  sub_26A4E2544(v58, &qword_2803AB9D8);
  sub_26A851E98();
  LOBYTE(v76) = 2;
  OUTLINED_FUNCTION_1_55();
  sub_26A7A7E00(v63, v64, v65, v66, v67, 24, v68, 16, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  v69 = *(v59 + 8);
  v69(v56, v24);
  v70 = OUTLINED_FUNCTION_116();
  (v69)(v70);
  return __swift_storeEnumTagSinglePayload(a1, v23, 1, v24);
}

uint64_t sub_26A64EF68()
{
  result = sub_26A8516A8();
  qword_2803D1E48 = result;
  return result;
}

uint64_t static VisualResponseProvider.setPatternId(_:forViewId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2803A8C70 != -1)
  {
    OUTLINED_FUNCTION_30_11();
  }

  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v9 = qword_2803D1E48;
  sub_26A655634(a1, a2, a3, a4);
  qword_2803D1E48 = v9;
  return swift_endAccess();
}

void static VisualResponseProvider.preWarm(using:)()
{
  OUTLINED_FUNCTION_28_0();
  v41 = v0;
  sub_26A851618();
  OUTLINED_FUNCTION_15();
  v46 = v2;
  v47 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  v45 = v4 - v3;
  OUTLINED_FUNCTION_25_2();
  sub_26A851648();
  OUTLINED_FUNCTION_15();
  v43 = v6;
  v44 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  v42 = v8 - v7;
  OUTLINED_FUNCTION_25_2();
  v39 = sub_26A851628();
  OUTLINED_FUNCTION_15();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v14 = v13 - v12;
  v40 = sub_26A84EAA8();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v20 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_27_1();
  v23 = v22;
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  v24 = qword_2815801F0;
  sub_26A84EA98();
  sub_26A851F88();
  sub_26A84EA88();
  sub_26A4EC5B0(0, &qword_28157D830);
  v25 = v39;
  (*(v10 + 104))(v14, *MEMORY[0x277D851C0], v39);
  v26 = sub_26A851F58();
  (*(v10 + 8))(v14, v25);
  v27 = v40;
  (*(v16 + 16))(&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v40);
  v28 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v29 = swift_allocObject();
  v30 = v41;
  *(v29 + 16) = v41;
  (*(v16 + 32))(v29 + v28, v20, v27);
  v49[4] = sub_26A655788;
  v49[5] = v29;
  OUTLINED_FUNCTION_22_20();
  OUTLINED_FUNCTION_21_18(COERCE_DOUBLE(1107296256));
  v49[2] = v31;
  v49[3] = &block_descriptor_3;
  v32 = _Block_copy(v49);
  v33 = v30;
  v34 = v42;
  sub_26A851638();
  v48 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_26_10();
  sub_26A656FDC(v35, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1C60);
  sub_26A655800();
  v37 = v45;
  v38 = v47;
  sub_26A852118();
  MEMORY[0x26D6641A0](0, v34, v37, v32);
  _Block_release(v32);

  (*(v46 + 8))(v37, v38);
  (*(v43 + 8))(v34, v44);
  (*(v16 + 8))(v23, v27);

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A64F5DC(void *a1, uint64_t a2)
{
  v34 = a2;
  v36 = a1;
  v2 = sub_26A851618();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v38 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_26A851648();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_26A84EAA8();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v33);
  v7 = sub_26A84E408();
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFBE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26A8570D0;
  v47 = MEMORY[0x277D837D0];
  v48 = MEMORY[0x277D63858];
  v44 = 2434083;
  v45 = 0xE300000000000000;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v11 = sub_26A84CA48();
  v50 = 0u;
  v51 = 0u;
  v52 = 0;
  v12 = MEMORY[0x277D633D0];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  __swift_allocate_boxed_opaque_existential_1((v10 + 32));
  sub_26A84C9C8();
  sub_26A84E418();
  sub_26A656FDC(&qword_2803AFD98, MEMORY[0x277D637F0]);
  v43 = v7;
  v13 = sub_26A84BE38();
  v15 = v14;
  v16 = v13;
  sub_26A4EC5B0(0, &qword_28157D830);
  v32 = sub_26A851F28();
  v17 = v33;
  (*(v5 + 16))(&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v33);
  v18 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v16;
  *(v19 + 3) = v15;
  v20 = v5;
  v21 = v16;
  v22 = v36;
  *(v19 + 4) = v36;
  (*(v20 + 32))(&v19[v18], &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v48 = sub_26A65738C;
  v49 = v19;
  v44 = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_26A4F8A68;
  v47 = &block_descriptor_60;
  v23 = _Block_copy(&v44);
  v24 = v21;
  sub_26A54D260(v21, v15);
  v25 = v22;

  v26 = v35;
  sub_26A851638();
  v44 = MEMORY[0x277D84F90];
  sub_26A656FDC(&qword_2803B60D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1C60);
  sub_26A655800();
  v27 = v38;
  v28 = v41;
  sub_26A852118();
  v29 = v32;
  MEMORY[0x26D6641A0](0, v26, v27, v23);
  _Block_release(v23);

  sub_26A513D40(v24, v15);
  (*(v40 + 8))(v27, v28);
  (*(v37 + 8))(v26, v39);
  return (*(v42 + 8))(v9, v43);
}

void sub_26A64FBA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_allocWithZone(type metadata accessor for VisualResponseProvider()) init];
  VisualResponseProvider.view(for:mode:overload:)();
  v6 = v5;

  if (v6)
  {
    [v6 setHidden_];
    [a3 addSubview_];
    [v6 removeFromSuperview];
    sub_26A851F78();
    if (qword_2815801E8 != -1)
    {
      swift_once();
    }

    sub_26A84EA88();
  }
}

id VisualResponseProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void VisualResponseProvider.view(for:mode:overload:)()
{
  OUTLINED_FUNCTION_28_0();
  v24 = v0;
  v25 = v1;
  v3 = v2;
  v4 = type metadata accessor for ResponseView();
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v27 = sub_26A84EAA8();
  OUTLINED_FUNCTION_15();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  v19 = v18 - v17;
  v20 = off_2803B7E30;
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  qword_2815801F0;
  sub_26A84EA98();
  sub_26A851F88();
  v26 = v20;
  sub_26A84EA88();
  v21 = VisualResponseProvider.responseView(for:mode:)(v10, v3, v24, v25);
  OUTLINED_FUNCTION_27_10();
  sub_26A6573F0();
  v22 = objc_allocWithZone(type metadata accessor for VisualResponseView());
  sub_26A6570B8();
  sub_26A6567EC(v7, v21, v22);
  sub_26A656ED8(v13, type metadata accessor for ResponseView);
  sub_26A851F78();
  sub_26A84EA88();
  (*(v15 + 8))(v19, v27);
  OUTLINED_FUNCTION_27_0();
}

void VisualResponseProvider.viewController(for:mode:)()
{
  v0 = sub_26A851EA8();
  LOBYTE(v1) = 2;
  j__OUTLINED_FUNCTION_85_2(v0, 0, "SnippetUI/VisualResponseProvider.swift", 38, 2, 90, "viewController(for:mode:)", 25, v1);
  OUTLINED_FUNCTION_14_26();
  __break(1u);
}

void VisualResponseProvider.viewController(for:bundleName:mode:)()
{
  v0 = sub_26A851EA8();
  LOBYTE(v1) = 2;
  j__OUTLINED_FUNCTION_85_2(v0, 0, "SnippetUI/VisualResponseProvider.swift", 38, 2, 115, "viewController(for:bundleName:mode:)", 36, v1);
  OUTLINED_FUNCTION_14_26();
  __break(1u);
}

void (*VisualResponseProvider.responseView(for:mode:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4))(char *, uint64_t)
{
  v79 = a3;
  v76 = a4;
  v78 = a2;
  v74 = a1;
  v4 = sub_26A84E408();
  OUTLINED_FUNCTION_15();
  v77 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v83 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27_1();
  v84 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_27_1();
  v82 = v12;
  OUTLINED_FUNCTION_25_2();
  v86 = sub_26A84EAA8();
  OUTLINED_FUNCTION_15();
  v87 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v66 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C70);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19();
  v72 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_27_1();
  v73 = v23;
  v24 = off_2803B7E48;
  v25 = unk_2803B7E50;
  v85 = byte_2803B7E58;
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  v26 = qword_2815801F0;
  sub_26A84EA98();
  sub_26A851F88();
  OUTLINED_FUNCTION_55_2();
  sub_26A84EA88();
  v70 = v25;
  v71 = v24;
  v81 = v19;
  sub_26A84EA98();
  sub_26A851F88();
  OUTLINED_FUNCTION_55_2();
  sub_26A84EA88();
  sub_26A54D260(v78, v79);
  OUTLINED_FUNCTION_23_15();
  sub_26A656FDC(v27, v28);
  v29 = v80;
  sub_26A84BE48();
  v80 = v29;
  if (v29)
  {
    v30 = *(v87 + 8);
    v31 = v86;
    v30(v16, v86);
    v30(v81, v31);
  }

  else
  {
    sub_26A851F78();
    OUTLINED_FUNCTION_55_2();
    sub_26A84EA88();
    v32 = *(v87 + 8);
    v87 += 8;
    v79 = v32;
    v32(v16, v86);
    v33 = v77;
    v78 = *(v77 + 32);
    v34 = v82;
    v35 = v4;
    (v78)(v82, v84, v4);
    v84 = type metadata accessor for Context();
    v36 = objc_allocWithZone(v84);
    v37 = Context.init(idiom:)(0, 1);
    v38 = *(v33 + 16);
    v38(v83, v34, v35);
    v69 = v38;
    v39 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v76;
    *(v40 + 24) = v37;
    v41 = v40 + v39;
    v42 = v83;
    (v78)(v41, v83, v35);
    v68 = v37;
    sub_26A7A5E74(sub_26A656AE0, v40);

    v78 = *(v75 + 48);
    v67 = v35;
    v38(v42, v82, v35);
    v43 = type metadata accessor for ResponseView();
    v44 = v72;
    v45 = (v72 + v43[7]);
    type metadata accessor for Form();
    swift_allocObject();
    v68 = v68;
    Form.init()();
    OUTLINED_FUNCTION_25_17();
    sub_26A656FDC(v46, v47);
    *v45 = sub_26A84F258();
    v45[1] = v48;
    v49 = v44 + v43[8];
    *v49 = sub_26A84ED88() & 1;
    *(v49 + 8) = v50;
    *(v49 + 16) = v51 & 1;
    v52 = v83;
    v69(v44, v83, v35);
    *(v44 + v43[5]) = v76;
    v53 = (v44 + v43[6]);
    OUTLINED_FUNCTION_24_18();
    sub_26A656FDC(v54, v55);
    v56 = v68;
    v57 = sub_26A84F258();
    v59 = v58;
    v60 = *(v77 + 8);
    v61 = v52;
    v62 = v67;
    v60(v61, v67);
    v60(v82, v62);
    *v53 = v57;
    v53[1] = v59;
    *(v44 + v78) = v56;
    sub_26A851F78();
    v63 = v81;
    sub_26A84EA88();
    v79(v63, v86);
    v64 = v73;
    sub_26A4D7EA8();
    v30 = *(v64 + *(v75 + 48));
    OUTLINED_FUNCTION_27_10();
    sub_26A6573F0();
  }

  return v30;
}

void VisualResponseProvider.view(for:bundleName:mode:)()
{
  OUTLINED_FUNCTION_28_0();
  v0 = sub_26A84EAA8();
  OUTLINED_FUNCTION_15();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v6 = v5 - v4;
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  qword_2815801F0;
  sub_26A84EA98();
  sub_26A851F88();
  OUTLINED_FUNCTION_57_1();
  VisualResponseProvider.pluginView(for:bundleName:mode:)();
  v8 = v7;
  v9 = objc_allocWithZone(type metadata accessor for VisualResponseView());
  sub_26A656AF8(&v10, v8, v9);
  sub_26A851F78();
  OUTLINED_FUNCTION_57_1();
  (*(v2 + 8))(v6, v0);
  OUTLINED_FUNCTION_27_0();
}

void VisualResponseProvider.pluginView(for:bundleName:mode:)()
{
  OUTLINED_FUNCTION_28_0();
  v27 = v0;
  v28 = v1;
  v26 = v2;
  v4 = v3;
  v6 = v5;
  v31 = v7;
  sub_26A84EAA8();
  OUTLINED_FUNCTION_15();
  v29 = v9;
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  if (qword_2815801E8 != -1)
  {
    OUTLINED_FUNCTION_4_47();
    swift_once();
  }

  qword_2815801F0;
  sub_26A84EA98();
  sub_26A851F88();
  sub_26A84EA88();
  v13 = objc_allocWithZone(type metadata accessor for Context());
  v14 = Context.init(idiom:)(0, 1);
  type metadata accessor for Form();
  swift_allocObject();
  v15 = v14;
  Form.init()();
  OUTLINED_FUNCTION_25_17();
  sub_26A656FDC(v16, v17);
  v18 = sub_26A84F258();
  v20 = v19;
  sub_26A54D260(v6, v4);
  OUTLINED_FUNCTION_24_18();
  sub_26A656FDC(v21, v22);

  v23 = sub_26A84F258();
  v33[0] = v6;
  v33[1] = v4;
  v33[2] = v26;
  v33[3] = v27;
  v33[4] = v28;
  v33[5] = v23;
  v33[6] = v24;
  v33[7] = v18;
  v33[8] = v20;
  v33[9] = 0xD000000000000023;
  v33[10] = 0x800000026A88B1A0;
  v25 = swift_allocObject();
  v25[2] = v28;
  v25[3] = v15;
  memcpy(v25 + 4, v33, 0x58uLL);
  v15;
  sub_26A54F284(v33, v32);
  sub_26A7A5E74(sub_26A656EBC, v25);

  memcpy(v32, v33, 0x58uLL);
  sub_26A851F78();
  sub_26A84EA88();
  (*(v29 + 8))(v12, v30);
  memcpy(v34, v32, sizeof(v34));
  memcpy(v31, v34, 0x58uLL);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A650F78(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_26A54F284(a3, v9);
  v6 = sub_26A851E78();
  LOBYTE(v8) = 2;
  return sub_26A7C076C(v6, 0, "SnippetUI/VisualResponseProvider.swift", 38, 2, 195, "pluginView(for:bundleName:mode:)", 32, v8, a1, v5, a3);
}

void VisualResponseProvider.viewController(for:mode:completion:)()
{
  v0 = sub_26A851EA8();
  LOBYTE(v1) = 2;
  j__OUTLINED_FUNCTION_85_2(v0, 0, "SnippetUI/VisualResponseProvider.swift", 38, 2, 205, "viewController(for:mode:completion:)", 36, v1);
  OUTLINED_FUNCTION_14_26();
  __break(1u);
}

void VisualResponseProvider.responseView(for:mode:completion:)()
{
  OUTLINED_FUNCTION_28_0();
  v33 = v0;
  v34 = v1;
  v31 = v2;
  v32 = v3;
  v5 = v4;
  sub_26A851618();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v9 = v8 - v7;
  v35 = sub_26A851648();
  OUTLINED_FUNCTION_15();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41();
  v15 = v14 - v13;
  v16 = sub_26A851628();
  OUTLINED_FUNCTION_15();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v22 = v21 - v20;
  sub_26A4EC5B0(0, &qword_28157D830);
  (*(v18 + 104))(v22, *MEMORY[0x277D851C0], v16);
  v23 = sub_26A851F58();
  (*(v18 + 8))(v22, v16);
  v24 = swift_allocObject();
  v24[2] = v5;
  v24[3] = v31;
  v24[4] = v32;
  v24[5] = v33;
  v24[6] = v34;
  v36[4] = sub_26A656EC8;
  v36[5] = v24;
  OUTLINED_FUNCTION_22_20();
  OUTLINED_FUNCTION_21_18(COERCE_DOUBLE(1107296256));
  v36[2] = v25;
  v36[3] = &block_descriptor_12;
  v26 = _Block_copy(v36);
  sub_26A54D260(v5, v31);

  sub_26A851638();
  OUTLINED_FUNCTION_26_10();
  sub_26A656FDC(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1C60);
  sub_26A655800();
  sub_26A852118();
  MEMORY[0x26D6641A0](0, v15, v9, v26);
  _Block_release(v26);

  v29 = OUTLINED_FUNCTION_49_4();
  v30(v29);
  (*(v11 + 8))(v15, v35);

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6513E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a3;
  v21 = a4;
  v19 = a2;
  v7 = sub_26A851618();
  v17 = *(v7 - 8);
  v18 = v7;
  MEMORY[0x28223BE20](v7);
  v15[2] = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26A851648();
  v15[1] = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v9 = sub_26A84EAA8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2815801E8 != -1)
  {
    swift_once();
  }

  v13 = qword_2815801F0;
  sub_26A84EA98();
  sub_26A851F88();
  sub_26A84EA88();
  sub_26A651848(a1, v19, v20, v21, a5);
  sub_26A851F78();
  sub_26A84EA88();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_26A651848(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a2;
  v42 = a5;
  v39 = a3;
  v40 = a4;
  v6 = sub_26A851618();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v45 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_26A851648();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_26A84EAA8();
  v9 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_26A84E408();
  v41 = *(v54 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v54);
  v38 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v37 - v14;
  MEMORY[0x28223BE20](v16);
  v49 = v37 - v17;
  v18 = off_2803B7E18;
  if (qword_2815801E8 != -1)
  {
    swift_once();
  }

  v19 = qword_2815801F0;
  sub_26A84EA98();
  sub_26A851F88();
  sub_26A84EA88();
  v37[1] = v18;
  sub_26A54D260(a1, v51);
  sub_26A656FDC(&qword_2803AFD98, MEMORY[0x277D637F0]);
  v20 = v52;
  sub_26A84BE48();
  if (v20)
  {
    return (*(v9 + 8))(v11, v50);
  }

  sub_26A851F78();
  sub_26A84EA88();
  (*(v9 + 8))(v11, v50);
  v22 = v41;
  v23 = *(v41 + 32);
  v24 = v49;
  v25 = v15;
  v26 = v54;
  v23(v49, v25, v54);
  sub_26A4EC5B0(0, &qword_28157D830);
  v52 = 0;
  v27 = sub_26A851F28();
  v28 = v38;
  (*(v22 + 16))(v38, v24, v26);
  v29 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v39;
  v23((v30 + v29), v28, v26);
  v31 = (v30 + ((v12 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  v32 = v42;
  *v31 = v40;
  v31[1] = v32;
  aBlock[4] = sub_26A657174;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26A4F8A68;
  aBlock[3] = &block_descriptor_35;
  v33 = _Block_copy(aBlock);

  v34 = v43;
  sub_26A851638();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26A656FDC(&qword_2803B60D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1C60);
  sub_26A655800();
  v35 = v45;
  v36 = v48;
  sub_26A852118();
  MEMORY[0x26D6641A0](0, v34, v35, v33);
  _Block_release(v33);

  (*(v47 + 8))(v35, v36);
  (*(v44 + 8))(v34, v46);
  return (*(v22 + 8))(v49, v26);
}

uint64_t sub_26A651E78(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v40 = a4;
  v41 = a3;
  v35 = a2;
  v42 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1DA0);
  MEMORY[0x28223BE20](v39);
  v38 = &v35 - v5;
  v6 = type metadata accessor for ResponseView();
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26A84E408();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for Context();
  v14 = objc_allocWithZone(v37);
  v15 = Context.init(idiom:)(0, 1);
  v16 = *(v11 + 16);
  v16(v13, a2, v10);
  v17 = v16;
  v36 = v16;
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v42;
  *(v19 + 24) = v15;
  (*(v11 + 32))(v19 + v18, v13, v10);
  v20 = v15;
  sub_26A7A5E74(sub_26A657208, v19);

  v17(v13, v35, v10);
  v21 = &v9[v7[9]];
  type metadata accessor for Form();
  swift_allocObject();
  v22 = v20;
  Form.init()();
  sub_26A656FDC(&qword_28157DB60, type metadata accessor for Form);
  *v21 = sub_26A84F258();
  v21[1] = v23;
  v24 = &v9[v7[10]];
  *v24 = sub_26A84ED88() & 1;
  *(v24 + 1) = v25;
  v24[16] = v26 & 1;
  v36(v9, v13, v10);
  *&v9[v7[7]] = v42;
  v27 = &v9[v7[8]];
  sub_26A656FDC(&qword_28157D9E0, type metadata accessor for Context);
  v28 = sub_26A84F258();
  v30 = v29;
  (*(v11 + 8))(v13, v10);
  *v27 = v28;
  v27[1] = v30;
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1DA8) + 48);
  v32 = v38;
  sub_26A6570B8();
  *(v32 + v31) = v22;
  swift_storeEnumTagMultiPayload();
  v33 = v22;
  v41(v32);

  sub_26A4DBD10(v32, &qword_2803B1DA0);
  return sub_26A656ED8(v9, type metadata accessor for ResponseView);
}

uint64_t sub_26A652418(uint64_t a1, uint64_t a2)
{
  sub_26A852248();
  MEMORY[0x26D663B00](0xD000000000000017, 0x800000026A88DFD0);
  sub_26A54E058(a1);
  MEMORY[0x26D663B00](0x3A6D6F696469202CLL, 0xE900000000000020);
  v4 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
  swift_beginAccess();
  v5 = VRXIdiom.description.getter(*(a2 + v4));
  MEMORY[0x26D663B00](v5);

  MEMORY[0x26D663B00](0x6E6F70736572202CLL, 0xEC000000203A6573);
  v6 = sub_26A84E3B8();
  MEMORY[0x26D663B00](v6);

  return 0;
}

uint64_t sub_26A65253C(void (*a1)(char *), uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1DA0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  *(&v10 - v6) = a3;
  swift_storeEnumTagMultiPayload();
  v8 = a3;
  a1(v7);
  return sub_26A4DBD10(v7, &qword_2803B1DA0);
}

uint64_t VisualResponseProvider.isCardSectionSupported(cardSection:)(void *a1)
{
  v1 = qword_2803A8A68;
  v2 = a1;
  if (v1 != -1)
  {
    OUTLINED_FUNCTION_1_56();
  }

  if (*(qword_2803D1A08 + 16))
  {
    ObjectType = swift_getObjectType();
    sub_26A5484D4(ObjectType);
    v5 = v4;
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t static VisualResponseProvider.view(for:context:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE150);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26A8571A0;
  *(v2 + 32) = a1;
  v3 = a1;
  v4 = OUTLINED_FUNCTION_49_4();
  _s9SnippetUI22VisualResponseProviderC4view3for7contextQrSaySo13SFCardSectionCG_AA7ContextCtFZ_0(v4, v5, v6);
}

Swift::Void __swiftcall VisualResponseProvider.reset()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC090);
  OUTLINED_FUNCTION_79(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11_32();
  sub_26A851E88();
  OUTLINED_FUNCTION_1_12();
  sub_26A7C0EE4(v3, 1, "SnippetUI/VisualResponseProvider.swift", 38, 2, 346, "reset()", 7, v9);
  if (qword_2803A8B50 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_42_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C78);
  sub_26A8516C8();
  swift_endAccess();
  if (qword_2803A8B58 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_42_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C80);
  sub_26A8516C8();
  swift_endAccess();
  if (qword_2803A8C70 != -1)
  {
    OUTLINED_FUNCTION_30_11();
  }

  OUTLINED_FUNCTION_42_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C88);
  sub_26A8516C8();
  swift_endAccess();
  sub_26A851C18();
  v4 = OUTLINED_FUNCTION_10_34();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_26A601D48(0, 0, v0, &unk_26A86E688, v8);
}

uint64_t sub_26A65346C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26A6534F8;

  return sub_26A8313B8();
}

uint64_t sub_26A6534F8()
{
  OUTLINED_FUNCTION_1_10();
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_26A6535E8, 0, 0);
}

uint64_t sub_26A6535E8()
{
  OUTLINED_FUNCTION_1_10();
  if (qword_28157F8F8 != -1)
  {
    swift_once();
  }

  *(v0 + 24) = qword_2815889C8;

  v1 = OUTLINED_FUNCTION_211();

  return MEMORY[0x2822009F8](v1, v2, 0);
}

uint64_t sub_26A653688()
{
  OUTLINED_FUNCTION_1_10();
  sub_26A61A6E0();

  type metadata accessor for ImageSourceModelLoaderCache();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_26A65372C;

  return sub_26A725BC8();
}

uint64_t sub_26A65372C()
{
  OUTLINED_FUNCTION_1_10();
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_26A65381C, 0, 0);
}

uint64_t sub_26A65381C()
{
  OUTLINED_FUNCTION_1_10();
  if (qword_28157EA98 != -1)
  {
    swift_once();
  }

  v1 = qword_2815889B8;
  *(v0 + 40) = qword_2815889B8;

  return MEMORY[0x2822009F8](sub_26A6538B0, v1, 0);
}

uint64_t sub_26A6538B0()
{
  OUTLINED_FUNCTION_1_10();
  sub_26A6450E0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static VisualResponseProvider.transform(model:mode:currentIdiom:)(uint64_t a1, unint64_t a2, void (*a3)(void, void, void), uint64_t a4)
{
  v144 = a4;
  v150 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1C90);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27_1();
  v158 = v9;
  OUTLINED_FUNCTION_25_2();
  v163 = sub_26A84BD98();
  OUTLINED_FUNCTION_15();
  v151 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v12);
  v14 = v116 - v13;
  v136 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v152 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  v135 = v18 - v17;
  OUTLINED_FUNCTION_25_2();
  v19 = sub_26A84BD58();
  OUTLINED_FUNCTION_15();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_41();
  v25 = v24 - v23;
  sub_26A84E388();
  OUTLINED_FUNCTION_15();
  v154 = v27;
  v155 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_27_1();
  v153 = v31;
  OUTLINED_FUNCTION_25_2();
  v32 = sub_26A84E408();
  OUTLINED_FUNCTION_15();
  v128 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v35);
  v37 = v116 - v36;
  sub_26A54D260(a1, a2);
  OUTLINED_FUNCTION_23_15();
  v40 = sub_26A656FDC(v38, v39);
  v41 = v157;
  sub_26A84BE48();
  if (!v41)
  {
    v116[1] = v40;
    v126 = 0;
    v118 = v32;
    v117 = v37;
    v42 = sub_26A84E3F8();
    v43 = 0;
    v149 = *(v42 + 16);
    v44 = v154;
    v156 = v154 + 16;
    v134 = *MEMORY[0x277D62F90];
    v147 = v21 + 104;
    v146 = *MEMORY[0x277D62F98];
    v145 = v21 + 8;
    v125 = *MEMORY[0x277D629E8];
    v133 = v152 + 104;
    v124 = *MEMORY[0x277D62A00];
    v123 = *MEMORY[0x277D62A20];
    v122 = *MEMORY[0x277D629F0];
    v132 = v152 + 8;
    v137 = (v154 + 32);
    v121 = *MEMORY[0x277D629F8];
    v152 = v154 + 8;
    v120 = *MEMORY[0x277D62A10];
    v131 = v144 - 1;
    v119 = *MEMORY[0x277D62A08];
    v141 = MEMORY[0x277D84F90];
    v130 = *MEMORY[0x277D62A18];
    v45 = v155;
    v148 = v42;
    while (1)
    {
      v46 = v151;
      v47 = v153;
LABEL_4:
      if (v43 == v149)
      {
        break;
      }

      v48 = *(v42 + 16);
      if (v43 >= v48)
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        *&v159 = v48;
        result = sub_26A8525E8();
        __break(1u);
        return result;
      }

      OUTLINED_FUNCTION_63_2();
      v144 = v49;
      v51 = *(v44 + 72);
      v157 = v52;
      v143 = v51;
      (*(v44 + 16))(v47, v50 + v49 + v51 * v52, v45);
      v53 = sub_26A84E368();
      type metadata accessor for VRXMode();
      v48 = v150;
      if (v150 > 1)
      {
        goto LABEL_56;
      }

      ++v157;
      OUTLINED_FUNCTION_33_1();
      v54(v25);
      v55 = 0;
      v56 = *(v53 + 16);
      do
      {
        if (v56 == v55)
        {

          OUTLINED_FUNCTION_33_1();
          v62(v25, v19);
          v45 = v155;
LABEL_13:
          v46 = v151;
          OUTLINED_FUNCTION_33_1();
          v47 = v153;
          v66(v153, v45);
          v44 = v154;
          v42 = v148;
          v43 = v157;
          goto LABEL_4;
        }

        v57 = v55 + 1;
        sub_26A656FDC(&qword_2803B1C98, MEMORY[0x277D62FA0]);
        v58 = sub_26A851758();
        v55 = v57;
      }

      while ((v58 & 1) == 0);

      OUTLINED_FUNCTION_33_1();
      v59(v25, v19);
      v45 = v155;
      v60 = v136;
      v61 = v135;
      switch(v131)
      {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
          break;
        default:
          sub_26A851E98();
          OUTLINED_FUNCTION_1_12();
          sub_26A7A6570(v67, 1, "SnippetUI/Context.swift", 23, 2, 635, "idiom", 5, v116[0]);
          v45 = v155;
          v60 = v136;
          v61 = v135;
          break;
      }

      OUTLINED_FUNCTION_33_1();
      v63(v61);
      v64 = sub_26A84E378();
      OUTLINED_FUNCTION_33_1();
      v65(v61, v60);
      if ((v64 & 1) == 0)
      {
        goto LABEL_13;
      }

      v68 = *v137;
      (*v137)(v129, v153, v45);
      v69 = v141;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v161[0] = v69;
      v116[0] = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26A7DCDEC();
        v69 = *&v161[0];
      }

      v71 = *(v69 + 16);
      v44 = v154;
      if (v71 >= *(v69 + 24) >> 1)
      {
        sub_26A7DCDEC();
        v44 = v154;
        v69 = *&v161[0];
      }

      *(v69 + 16) = v71 + 1;
      v141 = v69;
      v72 = v69 + v144 + v71 * v143;
      v45 = v155;
      (v116[0])(v72, v129, v155);
      v42 = v148;
      v43 = v157;
    }

    v149 = *(v141 + 16);
    if (v149)
    {
      v73 = 0;
      OUTLINED_FUNCTION_63_2();
      v147 = v75;
      v148 = v74 + v75;
      v76 = (v46 + 8);
      v32 = MEMORY[0x277D84F90];
      v77 = v142;
      while (1)
      {
        v48 = *(v74 + 16);
        if (v73 >= v48)
        {
          goto LABEL_55;
        }

        v157 = v32;
        v78 = *(v44 + 72);
        v153 = v73;
        v151 = v78;
        v150 = *(v44 + 16);
        v150(v77, v148 + v78 * v73, v45);
        v79 = sub_26A84E358();
        v80 = v79;
        v81 = *(v79 + 16);
        if (v81)
        {
          v82 = 0;
          v83 = v79 + 32;
          while (1)
          {
            v48 = *(v80 + 16);
            if (v82 >= v48)
            {
              break;
            }

            sub_26A50429C(v83, &v159);
            __swift_project_boxed_opaque_existential_1(&v159, v160);
            v84 = v158;
            sub_26A84E4E8();
            sub_26A84BD88();
            (*v76)(v14, v163);
            v85 = sub_26A84BD78();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v84, 1, v85);
            sub_26A4DBD10(v84, &qword_2803B1C90);
            if (EnumTagSinglePayload != 1)
            {

              sub_26A4C2314(&v159, v161);
              goto LABEL_30;
            }

            ++v82;
            __swift_destroy_boxed_opaque_existential_1(&v159);
            v83 += 40;
            if (v81 == v82)
            {
              goto LABEL_28;
            }
          }

          __break(1u);
          goto LABEL_54;
        }

LABEL_28:

        v162 = 0;
        memset(v161, 0, sizeof(v161));
LABEL_30:
        sub_26A657024(v161, &v159);
        v87 = v139;
        v45 = v155;
        v77 = v142;
        if (v160)
        {
          __swift_project_boxed_opaque_existential_1(&v159, v160);
          OUTLINED_FUNCTION_49_4();
          sub_26A84E4E8();
          v88 = v140;
          sub_26A84BD88();
          (*v76)(v87, v163);
          sub_26A4DBD10(v88, &qword_2803B1C90);
          __swift_destroy_boxed_opaque_existential_1(&v159);
        }

        else
        {
          sub_26A4DBD10(&v159, &qword_2803B1CA0);
          sub_26A84BD78();
          v89 = v140;
          v90 = OUTLINED_FUNCTION_10_34();
          __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
          sub_26A4DBD10(v89, &qword_2803B1C90);
        }

        v150(v138, v77, v45);
        v32 = v157;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7A268C();
          v32 = v98;
        }

        v94 = *(v32 + 16);
        if (v94 >= *(v32 + 24) >> 1)
        {
          sub_26A7A268C();
          v32 = v99;
        }

        v95 = v153 + 1;
        sub_26A4DBD10(v161, &qword_2803B1CA0);
        OUTLINED_FUNCTION_33_1();
        v96(v77, v45);
        *(v32 + 16) = v94 + 1;
        OUTLINED_FUNCTION_33_1();
        v73 = v95;
        v97();
        v44 = v154;
        v74 = v141;
        if (v95 == v149)
        {

          goto LABEL_40;
        }
      }
    }

    v32 = MEMORY[0x277D84F90];
LABEL_40:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1CA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26A8570F0;
    *(inited + 32) = 0;
    v101 = v118;
    v102 = v128;
    v103 = v117;
    v104 = v127;
    if (*(v32 + 16))
    {
      sub_26A84E3C8();
      v105 = v126;
      v106 = sub_26A84BE38();
      v126 = v105;
      if (v105)
      {
        v108 = *(v102 + 8);
        v108(v104, v101);
        v108(v103, v101);

        *(inited + 16) = 0;
        swift_setDeallocating();
        sub_26A7A0CE4();
        return v32;
      }

      v110 = v106;
      v111 = v107;
      sub_26A4EC5B0(0, &unk_2803B1CB0);
      (*(v102 + 8))(v104, v101);
      v109 = sub_26A6549D8(v110, v111, 1);
    }

    else
    {
      v109 = 0;
    }

    v112 = 0;
    *(inited + 40) = v109;
    v32 = MEMORY[0x277D84F90];
    *&v161[0] = MEMORY[0x277D84F90];
    while (v112 != 2)
    {
      v113 = *(inited + 8 * v112++ + 32);
      if (v113)
      {
        v114 = v113;
        MEMORY[0x26D663CE0]();
        if (*((*&v161[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v161[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26A851B08();
        }

        sub_26A851B28();
        v32 = *&v161[0];
      }
    }

    swift_setDeallocating();
    sub_26A7A0CE4();
    (*(v102 + 8))(v103, v101);
  }

  return v32;
}

id sub_26A6549D8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_26A84ABC8();
  v8 = [v6 initWithModel:v7 responseType:a3];

  sub_26A513D40(a1, a2);
  return v8;
}

id VisualResponseProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VisualResponseProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26A654AF8(uint64_t a1, double a2)
{
  sub_26A5484D4(a1);
  OUTLINED_FUNCTION_5_43();
  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC670);
  result = OUTLINED_FUNCTION_43_6();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_26A5484D4(a1);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_11:
    result = sub_26A852618();
    __break(1u);
    return result;
  }

  v8 = result;
LABEL_5:
  v12 = *v2;
  if (v9)
  {
    *(v12[7] + 8 * v8) = a2;
  }

  else
  {

    return sub_26A655F94(v8, a1, v12, a2);
  }

  return result;
}

uint64_t sub_26A654BE8()
{
  OUTLINED_FUNCTION_66_2();
  v5 = OUTLINED_FUNCTION_8_43(v3, v4);
  sub_26A5484D4(v5);
  OUTLINED_FUNCTION_5_43();
  if (v8)
  {
    __break(1u);
LABEL_14:
    result = sub_26A852618();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1CE0);
  OUTLINED_FUNCTION_19_18();
  if (sub_26A8523E8())
  {
    sub_26A5484D4(v2);
    OUTLINED_FUNCTION_53_4();
    if (!v12)
    {
      goto LABEL_14;
    }

    v9 = v11;
  }

  if (v10)
  {
    *(*(*v1 + 56) + 8 * v9) = v0;
    OUTLINED_FUNCTION_61_2();
  }

  else
  {
    OUTLINED_FUNCTION_59_2();
    OUTLINED_FUNCTION_61_2();

    return sub_26A655FD8(v15, v16, v17, v18);
  }
}

unint64_t sub_26A654CD0(uint64_t a1, double a2, double a3)
{
  sub_26A5484D4(a1);
  OUTLINED_FUNCTION_5_43();
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1CD0);
  result = OUTLINED_FUNCTION_43_6();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_26A5484D4(a1);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_26A852618();
    __break(1u);
    return result;
  }

  v10 = result;
LABEL_5:
  v14 = *v3;
  if (v11)
  {
    v15 = (v14[7] + 16 * v10);
    *v15 = a2;
    v15[1] = a3;
  }

  else
  {

    return sub_26A65601C(v10, a1, v14, a2, a3);
  }

  return result;
}

uint64_t sub_26A654DCC()
{
  OUTLINED_FUNCTION_66_2();
  v3 = OUTLINED_FUNCTION_8_43(v1, v2);
  sub_26A548580(v3);
  OUTLINED_FUNCTION_5_43();
  if (v5)
  {
    __break(1u);
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
    result = sub_26A852618();
    __break(1u);
    return result;
  }

  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D78);
  OUTLINED_FUNCTION_19_18();
  if (sub_26A8523E8())
  {
    sub_26A548580(v0);
    OUTLINED_FUNCTION_17_18();
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (v6)
  {
    OUTLINED_FUNCTION_61_2();

    return sub_26A65710C(v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_59_2();
    sub_26A656064(v12, v13, v14, v15);
    OUTLINED_FUNCTION_61_2();
  }
}

void sub_26A654EF8()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_20_18();
  sub_26A84A778();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_29_13();
  sub_26A548694();
  OUTLINED_FUNCTION_5_43();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_26A852618();
    __break(1u);
    return;
  }

  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D60);
  if (OUTLINED_FUNCTION_18_17())
  {
    OUTLINED_FUNCTION_58_3();
    sub_26A548694();
    OUTLINED_FUNCTION_52_4();
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  if (v3)
  {
    OUTLINED_FUNCTION_62_2();
    OUTLINED_FUNCTION_27_0();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_31_13();
    v7(v6);
    v8 = OUTLINED_FUNCTION_33_8();
    sub_26A6560BC(v8, v9, v10, v11);
    OUTLINED_FUNCTION_27_0();
  }
}

uint64_t sub_26A655050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t))
{
  v12 = OUTLINED_FUNCTION_28_6(a1, a2);
  sub_26A548510(v12, v13);
  OUTLINED_FUNCTION_5_43();
  if (v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  if ((OUTLINED_FUNCTION_65_2() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = sub_26A548510(a2, a3);
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_26A852618();
    __break(1u);
    return result;
  }

  v17 = v19;
LABEL_5:
  v21 = *v7;
  if (v18)
  {
    v22 = *(v21 + 56) + 40 * v17;
    __swift_destroy_boxed_opaque_existential_1(v22);

    return a7(a1, v22);
  }

  else
  {
    sub_26A656174(v17, a2, a3, a1, v21);
  }
}

void sub_26A6551A4()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_20_18();
  sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_29_13();
  sub_26A5485E4();
  OUTLINED_FUNCTION_5_43();
  if (v2)
  {
    __break(1u);
LABEL_11:
    sub_26A852618();
    __break(1u);
    return;
  }

  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D68);
  if (OUTLINED_FUNCTION_18_17())
  {
    OUTLINED_FUNCTION_58_3();
    sub_26A5485E4();
    OUTLINED_FUNCTION_52_4();
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  if (v3)
  {
    OUTLINED_FUNCTION_62_2();
    OUTLINED_FUNCTION_27_0();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_31_13();
    v7(v6);
    v8 = OUTLINED_FUNCTION_33_8();
    sub_26A6561D8(v8, v9, v10, v11);
    OUTLINED_FUNCTION_27_0();
  }
}

void sub_26A6552D0()
{
  OUTLINED_FUNCTION_66_2();
  v2 = OUTLINED_FUNCTION_8_43(v0, v1);
  sub_26A5484D4(v2);
  OUTLINED_FUNCTION_5_43();
  if (v4)
  {
    __break(1u);
LABEL_11:
    sub_26A852618();
    __break(1u);
    return;
  }

  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D70);
  OUTLINED_FUNCTION_19_18();
  if (sub_26A8523E8())
  {
    v6 = OUTLINED_FUNCTION_58_3();
    sub_26A5484D4(v6);
    OUTLINED_FUNCTION_17_18();
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  if (v5)
  {
    v8 = type metadata accessor for TableRowViewModel();
    OUTLINED_FUNCTION_79(v8);
    sub_26A657444();
    OUTLINED_FUNCTION_61_2();
  }

  else
  {
    OUTLINED_FUNCTION_59_2();
    OUTLINED_FUNCTION_61_2();

    sub_26A656290(v9, v10, v11, v12);
  }
}

void sub_26A6553D4()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_20_18();
  sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_29_13();
  sub_26A5485E4();
  OUTLINED_FUNCTION_5_43();
  if (v2)
  {
    __break(1u);
LABEL_10:
    sub_26A852618();
    __break(1u);
    return;
  }

  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFEC8);
  if (OUTLINED_FUNCTION_18_17())
  {
    OUTLINED_FUNCTION_58_3();
    sub_26A5485E4();
    OUTLINED_FUNCTION_52_4();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v3)
  {
    v5 = type metadata accessor for TableManager.CardSectionTableDefinition(0);
    OUTLINED_FUNCTION_79(v5);
    sub_26A657444();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_31_13();
    v7(v6);
    v8 = OUTLINED_FUNCTION_33_8();
    sub_26A656338(v8, v9, v10, v11);
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A655518()
{
  OUTLINED_FUNCTION_66_2();
  v2 = OUTLINED_FUNCTION_8_43(v0, v1);
  sub_26A5484D4(v2);
  OUTLINED_FUNCTION_5_43();
  if (v4)
  {
    __break(1u);
LABEL_13:
    result = sub_26A852618();
    __break(1u);
    return result;
  }

  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD280);
  OUTLINED_FUNCTION_19_18();
  if (sub_26A8523E8())
  {
    v6 = OUTLINED_FUNCTION_58_3();
    sub_26A5484D4(v6);
    OUTLINED_FUNCTION_17_18();
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (v5)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1DE0);
    OUTLINED_FUNCTION_79(v8);
    OUTLINED_FUNCTION_61_2();

    return sub_26A657498(v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_59_2();
    OUTLINED_FUNCTION_61_2();

    return sub_26A65640C(v13, v14, v15, v16);
  }
}

uint64_t sub_26A655634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26A548510(a3, a4);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1DC0);
  if ((sub_26A8523E8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_26A548510(a3, a4);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_26A852618();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v5;
  if (v14)
  {
    v18 = (v17[7] + 16 * v13);
    *v18 = a1;
    v18[1] = a2;
  }

  else
  {
    sub_26A6564C4(v13, a3, a4, a1, a2, v17);
  }
}

uint64_t sub_26A655788()
{
  v1 = sub_26A84EAA8();
  OUTLINED_FUNCTION_79(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_26A64F5DC(v3, v4);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26A655800()
{
  result = qword_2803B60E0;
  if (!qword_2803B60E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803B1C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B60E0);
  }

  return result;
}

unint64_t sub_26A655864()
{
  OUTLINED_FUNCTION_66_2();
  v5 = OUTLINED_FUNCTION_8_43(v3, v4);
  sub_26A5484D4(v5);
  OUTLINED_FUNCTION_5_43();
  if (v8)
  {
    __break(1u);
LABEL_14:
    result = sub_26A852618();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D88);
  OUTLINED_FUNCTION_19_18();
  if (sub_26A8523E8())
  {
    sub_26A5484D4(v2);
    OUTLINED_FUNCTION_53_4();
    if (!v12)
    {
      goto LABEL_14;
    }

    v9 = v11;
  }

  if (v10)
  {
    *(*(*v1 + 56) + 8 * v9) = v0;
    OUTLINED_FUNCTION_61_2();
  }

  else
  {
    OUTLINED_FUNCTION_59_2();
    OUTLINED_FUNCTION_61_2();

    return sub_26A656510(v15, v16, v17, v18);
  }
}

uint64_t sub_26A65594C()
{
  OUTLINED_FUNCTION_66_2();
  v2 = v1;
  v4 = OUTLINED_FUNCTION_28_6(v1, v3);
  sub_26A548510(v4, v5);
  OUTLINED_FUNCTION_5_43();
  if (v8)
  {
    __break(1u);
LABEL_14:
    result = sub_26A852618();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1D90);
  if (OUTLINED_FUNCTION_18_17())
  {
    v11 = OUTLINED_FUNCTION_49_4();
    sub_26A548510(v11, v12);
    OUTLINED_FUNCTION_17_18();
    if (!v14)
    {
      goto LABEL_14;
    }

    v9 = v13;
  }

  if (v10)
  {
    *(*(*v0 + 56) + 8 * v9) = v2;
    OUTLINED_FUNCTION_61_2();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_64_2();
    sub_26A656554(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_61_2();
  }
}

void sub_26A655A44(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = OUTLINED_FUNCTION_28_6(a1, a2);
  sub_26A5484D4(v10);
  OUTLINED_FUNCTION_5_43();
  if (v13)
  {
    __break(1u);
LABEL_10:
    sub_26A852618();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1CE8);
  if (OUTLINED_FUNCTION_43_6())
  {
    sub_26A5484D4(a2);
    OUTLINED_FUNCTION_53_4();
    if (!v17)
    {
      goto LABEL_10;
    }

    v14 = v16;
  }

  if (v15)
  {
    v18 = *(*v2 + 56) + 48 * v14;
    *v18 = v5;
    *(v18 + 8) = v4;
    *(v18 + 16) = v6;
    *(v18 + 24) = v7;
    *(v18 + 32) = v8;
    *(v18 + 40) = v9;
  }

  else
  {
    v19 = OUTLINED_FUNCTION_49_4();
    sub_26A65659C(v19, v20, v21, v22);
  }
}

void sub_26A655B5C()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v26 = v3;
  v27 = v4;
  v6 = v5;
  v8 = v7;
  type metadata accessor for LoadableText.Source(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  sub_26A548888(v2);
  OUTLINED_FUNCTION_5_43();
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1CF8);
  if ((sub_26A8523E8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_26A548888(v2);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    sub_26A852618();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v0;
  if (v17)
  {
    v21 = *(v20 + 56) + 32 * v16;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    *v21 = v8;
    *(v21 + 8) = v26;
    *(v21 + 16) = v6 & 1;
    *(v21 + 24) = v27;
    sub_26A4EC448(v22, v23, v24);
    OUTLINED_FUNCTION_27_0();
  }

  else
  {
    sub_26A6570B8();
    sub_26A65660C(v16, v12, v8, v26, v6 & 1, v27, v20);
    OUTLINED_FUNCTION_27_0();
  }
}

uint64_t sub_26A655D10()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v4 = v3;
  v6 = OUTLINED_FUNCTION_28_6(v3, v5);
  sub_26A548510(v6, v7);
  OUTLINED_FUNCTION_5_43();
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = sub_26A852618();
    __break(1u);
    return result;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  if (OUTLINED_FUNCTION_18_17())
  {
    v13 = OUTLINED_FUNCTION_49_4();
    sub_26A548510(v13, v14);
    OUTLINED_FUNCTION_17_18();
    if (!v16)
    {
      goto LABEL_14;
    }

    v11 = v15;
  }

  if (v12)
  {
    *(*(*v0 + 56) + 8 * v11) = v4;
    OUTLINED_FUNCTION_27_0();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_64_2();
    sub_26A6566E4(v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_27_0();
  }
}

void sub_26A655E08()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v23 = v3;
  v5 = v4;
  v6 = sub_26A84E2D8();
  OUTLINED_FUNCTION_15();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  sub_26A5488EC();
  OUTLINED_FUNCTION_5_43();
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1CC8);
  if ((OUTLINED_FUNCTION_65_2() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_26A5488EC();
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    sub_26A852618();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v0;
  if (v17)
  {
    v21 = (v20[7] + 16 * v16);
    *v21 = v5;
    v21[1] = v23;
    OUTLINED_FUNCTION_27_0();
  }

  else
  {
    (*(v8 + 16))(v12, v2, v6);
    sub_26A65672C(v16, v12, v5, v23, v20);
    OUTLINED_FUNCTION_27_0();
  }
}

unint64_t sub_26A655F94(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

uint64_t sub_26A655FD8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_38_6(a1, a4 + 8 * (a1 >> 6));
  *(v5[6] + 8 * result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

unint64_t sub_26A65601C(unint64_t result, uint64_t a2, void *a3, double a4, double a5)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  v5 = (a3[7] + 16 * result);
  *v5 = a4;
  v5[1] = a5;
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

unint64_t sub_26A656064(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + 48 * result);
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v4[2] = a3[2];
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_26A6560BC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26A84A778();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_26A656174(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_38_6(a1, a5 + 8 * (a1 >> 6));
  v8 = (*(v7 + 48) + 16 * v6);
  *v8 = v9;
  v8[1] = v10;
  result = v12(v11, *(v7 + 56) + 40 * v6);
  v14 = *(a5 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v16;
  }

  return result;
}

uint64_t sub_26A6561D8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26A84ACC8();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_26A656290(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  *(*(a4 + 48) + 8 * a1) = a2;
  type metadata accessor for TableRowViewModel();
  result = sub_26A6573F0();
  v6 = *(a4 + 16);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v8;
  }

  return result;
}

uint64_t sub_26A656338(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_38_6(a1, a4 + 8 * (a1 >> 6));
  v8 = *(v7 + 48);
  sub_26A84ACC8();
  OUTLINED_FUNCTION_46();
  (*(v9 + 32))(v8 + *(v9 + 72) * a1, a2);
  v10 = type metadata accessor for TableManager.CardSectionTableDefinition(0);
  OUTLINED_FUNCTION_79(v10);
  result = sub_26A6573F0();
  v12 = *(a4 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }

  return result;
}

uint64_t sub_26A65640C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  *(*(a4 + 48) + 8 * a1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1DE0);
  result = sub_26A4D7EA8();
  v6 = *(a4 + 16);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v8;
  }

  return result;
}

unint64_t sub_26A6564C4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

unint64_t sub_26A656510(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

unint64_t sub_26A656554(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_26A65659C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(a3 + 32);
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v7 = *(a3 + 40);
  v8 = a4[7] + 48 * result;
  *v8 = *a3;
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

uint64_t sub_26A65660C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(a7 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  type metadata accessor for LoadableText.Source(0);
  result = sub_26A6573F0();
  v14 = *(a7 + 56) + 32 * a1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = a5 & 1;
  *(v14 + 24) = a6;
  v15 = *(a7 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a7 + 16) = v17;
  }

  return result;
}

uint64_t sub_26A6566E4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = OUTLINED_FUNCTION_38_6(a1, a5 + 8 * (a1 >> 6));
  v7 = (v6[6] + 16 * result);
  *v7 = v8;
  v7[1] = v9;
  *(v6[7] + 8 * result) = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

uint64_t sub_26A65672C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_26A84E2D8();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

char *sub_26A6567EC(uint64_t a1, void *a2, char *a3)
{
  v5 = sub_26A850148();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for AnyRootView(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ResponseView();
  v28 = &protocol witness table for ResponseView;
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_26A6573F0();
  __swift_project_boxed_opaque_existential_1(v26, v27);
  ResponseView.asAnyRootView()(v8);
  sub_26A6573F0();
  *&a3[OBJC_IVAR____TtC9SnippetUI18VisualResponseView_context] = a2;
  v9 = a2;
  ResponseView.asAnyRootView()(v8);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1DB0));
  v12 = v9;
  v13 = sub_26A6F2478(v8, sub_26A65751C, v10);
  v14 = OBJC_IVAR____TtC9SnippetUI18VisualResponseView_hostingViewController;
  *&a3[OBJC_IVAR____TtC9SnippetUI18VisualResponseView_hostingViewController] = v13;
  v15 = v13;
  sub_26A850138();
  sub_26A84FCC8();

  result = [*&a3[v14] view];
  if (result)
  {
    v17 = result;
    v18 = [objc_opt_self() clearColor];
    [v17 setBackgroundColor_];

    v19 = type metadata accessor for VisualResponseView();
    v25.receiver = a3;
    v25.super_class = v19;
    v20 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v21 = *&v20[OBJC_IVAR____TtC9SnippetUI18VisualResponseView_hostingViewController];
    v22 = v20;
    result = [v21 view];
    if (result)
    {
      v23 = result;
      [v22 addSubview_];

      __swift_destroy_boxed_opaque_existential_1(v26);
      return v22;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_26A656AF8(const void *a1, void *a2, char *a3)
{
  v6 = sub_26A850148();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for AnyRootView.ContentType(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AnyRootView(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[3] = &type metadata for PluginView;
  v32[4] = &protocol witness table for PluginView;
  v13 = swift_allocObject();
  v32[0] = v13;
  memcpy((v13 + 16), a1, 0x58uLL);
  v14 = __swift_project_boxed_opaque_existential_1(v32, &type metadata for PluginView);
  memcpy(v33, (v13 + 16), sizeof(v33));
  memcpy(v9, (v13 + 16), 0x58uLL);
  swift_storeEnumTagMultiPayload();
  sub_26A54F284(v33, __dst);
  sub_26A6A7914(v9, v12);
  sub_26A6573F0();
  *&a3[OBJC_IVAR____TtC9SnippetUI18VisualResponseView_context] = a2;
  memcpy(__dst, v14, 0x58uLL);
  memmove(v9, v14, 0x58uLL);
  swift_storeEnumTagMultiPayload();
  v15 = a2;
  sub_26A54F284(__dst, &v31);
  sub_26A6A7914(v9, v12);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1DB0));
  v17 = v15;
  v18 = sub_26A6F2478(v12, sub_26A58B888, v16);
  v19 = OBJC_IVAR____TtC9SnippetUI18VisualResponseView_hostingViewController;
  *&a3[OBJC_IVAR____TtC9SnippetUI18VisualResponseView_hostingViewController] = v18;
  v20 = v18;
  sub_26A850138();
  sub_26A84FCC8();

  result = [*&a3[v19] view];
  if (result)
  {
    v22 = result;
    v23 = [objc_opt_self() clearColor];
    [v22 setBackgroundColor_];

    v24 = type metadata accessor for VisualResponseView();
    v30.receiver = a3;
    v30.super_class = v24;
    v25 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v26 = *&v25[OBJC_IVAR____TtC9SnippetUI18VisualResponseView_hostingViewController];
    v27 = v25;
    result = [v26 view];
    if (result)
    {
      v28 = result;
      [v27 addSubview_];

      __swift_destroy_boxed_opaque_existential_1(v32);
      return v27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26A656ED8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A656F30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26A5362C8;

  return sub_26A65346C();
}

uint64_t sub_26A656FDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A657024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6570B8()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A657174()
{
  v1 = *(sub_26A84E408() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_26A651E78(v3, v0 + v2, v5, v6);
}

uint64_t sub_26A657220(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = sub_26A84E408();
  OUTLINED_FUNCTION_79(v2);
  OUTLINED_FUNCTION_63_2();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return a1(v4, v5, v1 + v3);
}

uint64_t objectdestroy_2Tm()
{
  sub_26A84E408();
  OUTLINED_FUNCTION_15();

  v1 = OUTLINED_FUNCTION_56_2();
  v2(v1);
  OUTLINED_FUNCTION_54_4();

  return swift_deallocObject();
}

uint64_t sub_26A65733C()
{
  v1 = sub_26A84E408();
  OUTLINED_FUNCTION_79(v1);
  OUTLINED_FUNCTION_63_2();
  return sub_26A652418(*(v0 + 16), *(v0 + 24));
}

void sub_26A65738C()
{
  v1 = sub_26A84EAA8();
  OUTLINED_FUNCTION_79(v1);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];

  sub_26A64FBA8(v2, v3, v4);
}

uint64_t sub_26A6573F0()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A657444()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A657498(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1DE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_56()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_37(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  return sub_26A7B2484(a1, 1, a3, 38, 2, 250, a7, 15, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t OUTLINED_FUNCTION_14_26()
{

  return sub_26A852418();
}

uint64_t OUTLINED_FUNCTION_18_17()
{

  return sub_26A8523E8();
}

uint64_t OUTLINED_FUNCTION_30_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42_8()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_43_6()
{

  return sub_26A8523E8();
}

uint64_t OUTLINED_FUNCTION_57_1()
{

  return sub_26A84EA88();
}

uint64_t OUTLINED_FUNCTION_60_2()
{

  return sub_26A6573F0();
}

uint64_t OUTLINED_FUNCTION_62_2()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_65_2()
{

  return sub_26A8523E8();
}

BOOL sub_26A65797C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  return 0;
}

void sub_26A657A04(uint64_t a1, uint64_t a2, int a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1DF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v37 = type metadata accessor for TableCell();
  MEMORY[0x28223BE20](v37);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 0;
  sub_26A657CD8(&v38, a1);
  v15 = 0;
  v17 = v16 + 0.0;
  v36 = a1 + 32;
  v18 = MEMORY[0x277D84F90];
  v35 = a3;
  v33 = v12;
  v34 = a2;
  while (1)
  {
    sub_26A83D5B4(v15, a2, v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v37) == 1)
    {
      sub_26A657E14(v12);
      return;
    }

    sub_26A625DE4(v12, v14);
    if (v38 < 0 || v38 >= *(a1 + 16))
    {
      sub_26A657E7C(v14);
      return;
    }

    v19 = v36 + 72 * v38;
    v20 = *(v19 + 17);
    v21 = *(v19 + 24);
    v22 = *(v19 + 32);
    v23 = *&v14[v37[7]];
    sub_26A657ED8(&v38, *&v14[v37[6]], v23, a1);
    v25 = v24;
    if ((a3 & 1) == 0 && v14[v37[8]] != 3)
    {
      v20 = v14[v37[8]];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A7A2764();
      v18 = v31;
    }

    v26 = *(v18 + 16);
    if (v26 >= *(v18 + 24) >> 1)
    {
      sub_26A7A2764();
      v18 = v32;
    }

    *(v18 + 16) = v26 + 1;
    v27 = v18 + 56 * v26;
    *(v27 + 32) = v25 + a4;
    *(v27 + 40) = v20;
    *(v27 + 48) = v21;
    *(v27 + 56) = v22;
    *(v27 + 64) = v23;
    *(v27 + 72) = v15;
    *(v27 + 80) = v17;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    v28 = v17 + v25 + a4 + a5 - a4;
    LOBYTE(a3) = v35;
    a2 = v34;
    sub_26A657CD8(&v38, a1);
    v30 = v29;
    sub_26A657E7C(v14);
    v17 = v28 + v30;
    ++v15;
    v12 = v33;
  }

  __break(1u);
}

void *sub_26A657CD8(void *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(a2 + 16);
  if (v4 < *result)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v5 = result;
  sub_26A8496F8(*result, v4, a2);
  v8 = v7;
  result = v6;
  v10 = v9 >> 1;
  v11 = 72 * v6 + 32;
  for (i = v6; v10 != i; ++i)
  {
    if (i >= v10)
    {
      __break(1u);
      goto LABEL_17;
    }

    if ((*(v8 + v11) & 1) == 0)
    {
      v10 = i;
      break;
    }

    v11 += 72;
  }

  if (v10 < v6)
  {
    goto LABEL_18;
  }

  sub_26A796B98(v6);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = swift_unknownObjectRelease();
  v19 = v18 >> 1;
  v20 = (v18 >> 1) - v16;
  if (__OFSUB__(v18 >> 1, v16))
  {
    goto LABEL_19;
  }

  v23 = __OFADD__(v3, v20);
  v21 = v3 + v20;
  if (v23)
  {
    goto LABEL_20;
  }

  *v5 = v21;
  v22 = 0.0;
  v23 = __OFSUB__(v19, v16);
  v24 = v19 - v16;
  if (v24)
  {
    if ((v24 < 0) ^ v23 | (v24 == 0))
    {
      goto LABEL_21;
    }

    v25 = (v14 + 72 * v16);
    do
    {
      v26 = *v25;
      v25 += 9;
      v22 = v22 + v26;
      --v24;
    }

    while (v24);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_26A657E14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A657E7C(uint64_t a1)
{
  v2 = type metadata accessor for TableCell();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_26A657ED8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *result;
  v6 = *(a4 + 16);
  if (v6 < *result)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v8 = result;
  sub_26A8496F8(*result, v6, a4);
  result = v10;
  if (v10 != v11 >> 1)
  {
    v12 = v11 >> 1;
    v13 = a2 + a3;
    v14 = __OFADD__(a2, a3);
    v15 = (v9 + 72 * v10 + 32);
    v16 = -1;
    v17 = v10;
    do
    {
      if (v17 >= v12)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (*v15)
      {
        if (__OFADD__(v16, 1))
        {
          goto LABEL_48;
        }

        if (v14)
        {
          goto LABEL_50;
        }

        if (v16 + 1 >= v13)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v14)
        {
          goto LABEL_49;
        }

        v16 = *(v15 - 1);
        if (v16 >= v13)
        {
          goto LABEL_17;
        }
      }

      ++v17;
      v15 += 72;
    }

    while (v12 != v17);
    v17 = v11 >> 1;
LABEL_17:
    if (v17 < v10)
    {
      goto LABEL_52;
    }
  }

  sub_26A796B98(v10);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = swift_unknownObjectRelease();
  v24 = v23 >> 1;
  v25 = (v23 >> 1) - v21;
  if (__OFSUB__(v23 >> 1, v21))
  {
    goto LABEL_53;
  }

  v26 = __OFADD__(v5, v25);
  v27 = v5 + v25;
  if (v26)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return result;
  }

  *v8 = v27;
  v28 = (v19 + 32 + 72 * v21);
  for (i = v21; v24 != i; ++i)
  {
    if (i >= v24)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if ((*v28 & 1) == 0)
    {
      v30 = 0;
LABEL_27:
      v26 = __OFADD__(v30++, 1);
      if (!v26)
      {
        while (1)
        {
          v31 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_45;
          }

          if (v31 == v24)
          {
            result = swift_getKeyPath();
            goto LABEL_38;
          }

          if (v31 < v21 || v31 >= v24)
          {
            goto LABEL_46;
          }

          ++i;
          if ((*(v19 + 32 + 72 * v31) & 1) == 0)
          {
            i = v31;
            goto LABEL_27;
          }
        }
      }

      goto LABEL_56;
    }

    v28 += 72;
  }

  result = swift_getKeyPath();
  v30 = 0;
LABEL_38:
  v33 = 0.0;
  if (v24 != v21)
  {
    v34 = v24 - v21;
    if (v24 <= v21)
    {
      goto LABEL_57;
    }

    v35 = (v19 + 72 * v21);
    do
    {
      v36 = *v35;
      v35 += 9;
      v33 = v33 + v36;
      --v34;
    }

    while (v34);
  }

  swift_unknownObjectRelease();

  if (__OFSUB__(v30, 1))
  {
    goto LABEL_55;
  }

  return result;
}

uint64_t sub_26A658144(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 56))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 3;
      v2 = v3 - 3;
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

uint64_t sub_26A658180(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_26A6581E0()
{
  v0 = sub_26A84BBF8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  sub_26A5D4814();
  sub_26A84F118();
  v7 = *(v1 + 104);
  v7(v3, *MEMORY[0x277D62F28], v0);
  v8 = sub_26A84BBD8();
  v9 = *(v1 + 8);
  v9(v3, v0);
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v7(v3, *MEMORY[0x277D62F58], v0);
    v10 = sub_26A84BBD8();
    v9(v3, v0);
  }

  v9(v6, v0);
  return v10 & 1;
}

uint64_t sub_26A658394()
{
  v0 = sub_26A84BBF8();
  __swift_allocate_value_buffer(v0, qword_2803B1DF8);
  v1 = __swift_project_value_buffer(v0, qword_2803B1DF8);
  v2 = *MEMORY[0x277D62F38];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_26A65841C@<X0>(uint64_t a1@<X8>)
{
  if (qword_2803A8C78 != -1)
  {
    swift_once();
  }

  v2 = sub_26A84BBF8();
  v3 = __swift_project_value_buffer(v2, qword_2803B1DF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_26A6584C4()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *(v0 + 288);
  if ((*(v0 + 296) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v8, 0);
    (*(v3 + 8))(v7, v1);
    return v11;
  }

  return v8;
}

uint64_t sub_26A6585F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SummaryItemPairV2View(0);
  sub_26A4DBD68(v1 + *(v10 + 24), v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A6587DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SummaryItemPairV2View(0);
  sub_26A4DBD68(v1 + *(v10 + 28), v9, &qword_2803A91A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void SummaryItemPairV2View.init(text1:text2:text3:text4:text5:text6:text7:text8:thumbnail1:thumbnail2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22)
{
  OUTLINED_FUNCTION_28_0();
  v77 = v23;
  v78 = v22;
  v79 = v25;
  v80 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v76 = v34;
  v35 = type metadata accessor for SummaryItemPairV2View(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_41();
  v39 = v38 - v37;
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v84[0] = xmmword_281588758[0];
  v84[1] = unk_281588768;
  v84[2] = xmmword_281588778;
  v84[3] = unk_281588788;
  v85 = xmmword_281588758[0];
  v86 = unk_281588768;
  v87 = xmmword_281588778;
  v88 = unk_281588788;
  v74 = xmmword_281588778;
  v72 = unk_281588788;
  sub_26A4DBD68(v84, v89, &qword_2803A91B0);
  sub_26A6AEE74(v89);
  memcpy(v39, v89, 0xC0uLL);
  *(v39 + 192) = v74;
  *(v39 + 208) = v72;
  v40 = v86;
  *(v39 + 224) = v85;
  *(v39 + 240) = v40;
  v41 = v88;
  *(v39 + 256) = v87;
  *(v39 + 272) = v41;
  *(v39 + 288) = swift_getKeyPath();
  *(v39 + 296) = 0;
  v42 = v35[6];
  *(v39 + v42) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v43 = v35[7];
  *(v39 + v43) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v44 = v33[3];
  v45 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v44);
  OUTLINED_FUNCTION_161();
  *(v39 + v35[8]) = v46(v44, v45);
  sub_26A4DBD68(v31, v81, &qword_2803A91B8);
  if (v82)
  {
    v47 = OUTLINED_FUNCTION_2_57();
    v48(v47);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    sub_26A4DBD10(v81, &qword_2803A91B8);
    v43 = 0;
  }

  *(v39 + v35[9]) = v43;
  sub_26A4DBD68(v29, v81, &qword_2803A91B8);
  if (v82)
  {
    v49 = OUTLINED_FUNCTION_2_57();
    v50(v49);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    sub_26A4DBD10(v81, &qword_2803A91B8);
    v43 = 0;
  }

  *(v39 + v35[10]) = v43;
  sub_26A4DBD68(v27, v81, &qword_2803A91B8);
  if (v82)
  {
    v51 = OUTLINED_FUNCTION_2_57();
    v52(v51);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    sub_26A4DBD10(v81, &qword_2803A91B8);
    v43 = 0;
  }

  *(v39 + v35[11]) = v43;
  sub_26A4DBD68(v80, v81, &qword_2803A91B8);
  if (v82)
  {
    v53 = OUTLINED_FUNCTION_2_57();
    v54(v53);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    sub_26A4DBD10(v81, &qword_2803A91B8);
    v43 = 0;
  }

  v75 = v33;
  *(v39 + v35[12]) = v43;
  sub_26A4DBD68(v79, v81, &qword_2803A91B8);
  v73 = v29;
  v55 = v27;
  if (v82)
  {
    v56 = OUTLINED_FUNCTION_2_57();
    v57(v56);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    sub_26A4DBD10(v81, &qword_2803A91B8);
    v43 = 0;
  }

  v58 = v31;
  *(v39 + v35[13]) = v43;
  sub_26A4DBD68(v78, v81, &qword_2803A91B8);
  v59 = v82;
  if (v82)
  {
    v60 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    OUTLINED_FUNCTION_161();
    v61(v59, v60);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    sub_26A4DBD10(v81, &qword_2803A91B8);
    v43 = 0;
  }

  *(v39 + v35[14]) = v43;
  sub_26A4DBD68(v77, v81, &qword_2803A91B8);
  v62 = v82;
  if (v82)
  {
    v63 = v83;
    __swift_project_boxed_opaque_existential_1(v81, v82);
    OUTLINED_FUNCTION_161();
    v64(v62, v63);
    OUTLINED_FUNCTION_226();
  }

  else
  {
    sub_26A4DBD10(v81, &qword_2803A91B8);
    v43 = 0;
  }

  *(v39 + v35[15]) = v43;
  v65 = a21[3];
  v66 = a21[4];
  __swift_project_boxed_opaque_existential_1(a21, v65);
  OUTLINED_FUNCTION_161();
  *(v39 + v35[16]) = v67(v65, v66);
  v68 = a22[3];
  v69 = a22[4];
  __swift_project_boxed_opaque_existential_1(a22, v68);
  OUTLINED_FUNCTION_161();
  v71 = v70(v68, v69);
  OUTLINED_FUNCTION_16_18(v77);
  OUTLINED_FUNCTION_16_18(v78);
  OUTLINED_FUNCTION_16_18(v79);
  OUTLINED_FUNCTION_16_18(v80);
  OUTLINED_FUNCTION_16_18(v55);
  OUTLINED_FUNCTION_16_18(v73);
  OUTLINED_FUNCTION_16_18(v58);
  *(v39 + v35[17]) = v71;
  sub_26A65C524(v39, v76);
  __swift_destroy_boxed_opaque_existential_1(a22);
  __swift_destroy_boxed_opaque_existential_1(a21);
  __swift_destroy_boxed_opaque_existential_1(v75);
  OUTLINED_FUNCTION_27_0();
}

void SummaryItemPairV2View.init(text1:text2:text3:text4:text5:text6:text7:thumbnail1:thumbnail2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_28_0();
  v67 = v21;
  v70 = v23;
  v71 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v68 = type metadata accessor for SummaryItemPairV2View(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_41();
  v39 = v38 - v37;
  v69 = v35;
  sub_26A50429C(v35, v84);
  OUTLINED_FUNCTION_20_19(v33, v83);
  OUTLINED_FUNCTION_20_19(v31, v82);
  OUTLINED_FUNCTION_20_19(v29, v81);
  OUTLINED_FUNCTION_20_19(v27, v80);
  OUTLINED_FUNCTION_20_19(v25, v79);
  OUTLINED_FUNCTION_20_19(v71, v78);
  v77 = 0;
  memset(v76, 0, sizeof(v76));
  sub_26A50429C(v67, v75);
  sub_26A50429C(a21, v74);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v85[0] = xmmword_281588758[0];
  v85[1] = unk_281588768;
  v85[2] = xmmword_281588778;
  v85[3] = unk_281588788;
  v86 = xmmword_281588758[0];
  v87 = unk_281588768;
  v88 = xmmword_281588778;
  v89 = unk_281588788;
  v65 = unk_281588788;
  v66 = xmmword_281588778;
  sub_26A4DBD68(v85, v90, &qword_2803A91B0);
  sub_26A6AEE74(v90);
  memcpy(v39, v90, 0xC0uLL);
  *(v39 + 192) = v66;
  *(v39 + 208) = v65;
  v40 = v87;
  *(v39 + 224) = v86;
  *(v39 + 240) = v40;
  v41 = v89;
  *(v39 + 256) = v88;
  *(v39 + 272) = v41;
  *(v39 + 288) = swift_getKeyPath();
  *(v39 + 296) = 0;
  v42 = v68[6];
  *(v39 + v42) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  OUTLINED_FUNCTION_25_3();
  v43 = v68[7];
  *(v39 + v43) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_25_3();
  v44 = OUTLINED_FUNCTION_1_57(v84);
  *(v39 + v68[8]) = v45(v44);
  sub_26A4DBD68(v83, v72, &qword_2803A91B8);
  if (v73)
  {
    v46 = OUTLINED_FUNCTION_1_57(v72);
    v47(v46);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A4DBD10(v72, &qword_2803A91B8);
    v43 = 0;
  }

  *(v39 + v68[9]) = v43;
  sub_26A4DBD68(v82, v72, &qword_2803A91B8);
  if (v73)
  {
    v48 = OUTLINED_FUNCTION_1_57(v72);
    v49(v48);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A4DBD10(v72, &qword_2803A91B8);
    v43 = 0;
  }

  *(v39 + v68[10]) = v43;
  sub_26A4DBD68(v81, v72, &qword_2803A91B8);
  if (v73)
  {
    v50 = OUTLINED_FUNCTION_1_57(v72);
    v51(v50);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A4DBD10(v72, &qword_2803A91B8);
    v43 = 0;
  }

  *(v39 + v68[11]) = v43;
  sub_26A4DBD68(v80, v72, &qword_2803A91B8);
  if (v73)
  {
    v52 = OUTLINED_FUNCTION_1_57(v72);
    v53(v52);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A4DBD10(v72, &qword_2803A91B8);
    v43 = 0;
  }

  *(v39 + v68[12]) = v43;
  sub_26A4DBD68(v79, v72, &qword_2803A91B8);
  if (v73)
  {
    v54 = OUTLINED_FUNCTION_1_57(v72);
    v55(v54);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A4DBD10(v72, &qword_2803A91B8);
    v43 = 0;
  }

  *(v39 + v68[13]) = v43;
  sub_26A4DBD68(v78, v72, &qword_2803A91B8);
  if (v73)
  {
    v56 = OUTLINED_FUNCTION_1_57(v72);
    v57(v56);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A4DBD10(v72, &qword_2803A91B8);
    v43 = 0;
  }

  *(v39 + v68[14]) = v43;
  sub_26A4DBD68(v76, v72, &qword_2803A91B8);
  if (v73)
  {
    v58 = OUTLINED_FUNCTION_1_57(v72);
    v59(v58);
    OUTLINED_FUNCTION_23_8();
  }

  else
  {
    sub_26A4DBD10(v72, &qword_2803A91B8);
    v43 = 0;
  }

  *(v39 + v68[15]) = v43;
  v60 = OUTLINED_FUNCTION_1_57(v75);
  *(v39 + v68[16]) = v61(v60);
  v62 = OUTLINED_FUNCTION_1_57(v74);
  v64 = v63(v62);
  __swift_destroy_boxed_opaque_existential_1(a21);
  __swift_destroy_boxed_opaque_existential_1(v67);
  OUTLINED_FUNCTION_10_35(v71);
  OUTLINED_FUNCTION_10_35(v25);
  OUTLINED_FUNCTION_10_35(v27);
  OUTLINED_FUNCTION_10_35(v29);
  OUTLINED_FUNCTION_10_35(v31);
  OUTLINED_FUNCTION_10_35(v33);
  __swift_destroy_boxed_opaque_existential_1(v69);
  OUTLINED_FUNCTION_10_35(v76);
  OUTLINED_FUNCTION_10_35(v78);
  OUTLINED_FUNCTION_10_35(v79);
  OUTLINED_FUNCTION_10_35(v80);
  OUTLINED_FUNCTION_10_35(v81);
  OUTLINED_FUNCTION_10_35(v82);
  OUTLINED_FUNCTION_10_35(v83);
  *(v39 + v68[17]) = v64;
  sub_26A65C524(v39, v70);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v75);
  __swift_destroy_boxed_opaque_existential_1(v84);
  OUTLINED_FUNCTION_27_0();
}

void SummaryItemPairV2View.init(text1:text2:text3:thumbnail1:thumbnail2:)()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v44 = v10;
  v11 = type metadata accessor for SummaryItemPairV2View(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41();
  v15 = v14 - v13;
  v43 = v9;
  sub_26A50429C(v9, v61);
  sub_26A4DBD68(v7, v60, &qword_2803A91B8);
  sub_26A4DBD68(v5, v59, &qword_2803A91B8);
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  sub_26A50429C(v3, v48);
  sub_26A50429C(v1, v47);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v62[0] = xmmword_281588758[0];
  v62[1] = unk_281588768;
  v62[2] = xmmword_281588778;
  v62[3] = unk_281588788;
  v63 = xmmword_281588758[0];
  v64 = unk_281588768;
  v65 = xmmword_281588778;
  v66 = unk_281588788;
  v41 = unk_281588788;
  v42 = xmmword_281588778;
  sub_26A4DBD68(v62, v67, &qword_2803A91B0);
  sub_26A6AEE74(v67);
  memcpy(v15, v67, 0xC0uLL);
  *(v15 + 192) = v42;
  *(v15 + 208) = v41;
  v16 = v64;
  *(v15 + 224) = v63;
  *(v15 + 240) = v16;
  v17 = v66;
  *(v15 + 256) = v65;
  *(v15 + 272) = v17;
  *(v15 + 288) = swift_getKeyPath();
  *(v15 + 296) = 0;
  v18 = v11[6];
  *(v15 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  OUTLINED_FUNCTION_25_3();
  v19 = v11[7];
  *(v15 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  OUTLINED_FUNCTION_25_3();
  v20 = OUTLINED_FUNCTION_3_9(v61);
  *(v15 + v11[8]) = v21(v20);
  sub_26A4DBD68(v60, v45, &qword_2803A91B8);
  if (v46)
  {
    v22 = OUTLINED_FUNCTION_3_9(v45);
    v23(v22);
    OUTLINED_FUNCTION_17_19();
  }

  else
  {
    sub_26A4DBD10(v45, &qword_2803A91B8);
    v19 = 0;
  }

  *(v15 + v11[9]) = v19;
  sub_26A4DBD68(v59, v45, &qword_2803A91B8);
  if (v46)
  {
    v24 = OUTLINED_FUNCTION_3_9(v45);
    v25(v24);
    OUTLINED_FUNCTION_17_19();
  }

  else
  {
    sub_26A4DBD10(v45, &qword_2803A91B8);
    v19 = 0;
  }

  *(v15 + v11[10]) = v19;
  sub_26A4DBD68(v57, v45, &qword_2803A91B8);
  if (v46)
  {
    v26 = OUTLINED_FUNCTION_3_9(v45);
    v27(v26);
    OUTLINED_FUNCTION_17_19();
  }

  else
  {
    sub_26A4DBD10(v45, &qword_2803A91B8);
    v19 = 0;
  }

  *(v15 + v11[11]) = v19;
  sub_26A4DBD68(v55, v45, &qword_2803A91B8);
  if (v46)
  {
    v28 = OUTLINED_FUNCTION_3_9(v45);
    v29(v28);
    OUTLINED_FUNCTION_17_19();
  }

  else
  {
    sub_26A4DBD10(v45, &qword_2803A91B8);
    v19 = 0;
  }

  *(v15 + v11[12]) = v19;
  sub_26A4DBD68(v53, v45, &qword_2803A91B8);
  if (v46)
  {
    v30 = OUTLINED_FUNCTION_3_9(v45);
    v31(v30);
    OUTLINED_FUNCTION_17_19();
  }

  else
  {
    sub_26A4DBD10(v45, &qword_2803A91B8);
    v19 = 0;
  }

  *(v15 + v11[13]) = v19;
  sub_26A4DBD68(v51, v45, &qword_2803A91B8);
  if (v46)
  {
    v32 = OUTLINED_FUNCTION_3_9(v45);
    v33(v32);
    OUTLINED_FUNCTION_17_19();
  }

  else
  {
    sub_26A4DBD10(v45, &qword_2803A91B8);
    v19 = 0;
  }

  *(v15 + v11[14]) = v19;
  sub_26A4DBD68(v49, v45, &qword_2803A91B8);
  if (v46)
  {
    v34 = OUTLINED_FUNCTION_3_9(v45);
    v35(v34);
    OUTLINED_FUNCTION_17_19();
  }

  else
  {
    sub_26A4DBD10(v45, &qword_2803A91B8);
    v19 = 0;
  }

  *(v15 + v11[15]) = v19;
  v36 = OUTLINED_FUNCTION_3_9(v48);
  *(v15 + v11[16]) = v37(v36);
  v38 = OUTLINED_FUNCTION_3_9(v47);
  v40 = v39(v38);
  __swift_destroy_boxed_opaque_existential_1(v1);
  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_14_27(v5);
  OUTLINED_FUNCTION_14_27(v7);
  __swift_destroy_boxed_opaque_existential_1(v43);
  OUTLINED_FUNCTION_14_27(v49);
  OUTLINED_FUNCTION_14_27(v51);
  OUTLINED_FUNCTION_14_27(v53);
  OUTLINED_FUNCTION_14_27(v55);
  OUTLINED_FUNCTION_14_27(v57);
  OUTLINED_FUNCTION_14_27(v59);
  OUTLINED_FUNCTION_14_27(v60);
  *(v15 + v11[17]) = v40;
  sub_26A65C524(v15, v44);
  __swift_destroy_boxed_opaque_existential_1(v47);
  __swift_destroy_boxed_opaque_existential_1(v48);
  __swift_destroy_boxed_opaque_existential_1(v61);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A659BE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A6584C4();
  result = sub_26A61B05C(v3, &unk_287B13090);
  v5 = 0uLL;
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_2803A8BF0 != -1)
  {
    result = swift_once();
    v5 = 0uLL;
  }

  if (byte_2803B0440 == 1)
  {
    v6 = 0;
    v5 = vaddq_f64(v1[12], xmmword_26A860600);
    v7 = vaddq_f64(v1[13], xmmword_26A860600);
  }

  else
  {
LABEL_6:
    v6 = 1;
    v7 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 16) = v7;
  *(a1 + 32) = v6;
  return result;
}

uint64_t SummaryItemPairV2View.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  v4 = OUTLINED_FUNCTION_79(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  sub_26A6585F4(&v17[-v9]);
  sub_26A659BE8(v19);
  sub_26A6584C4();
  sub_26A6587DC(v6);
  v10 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  v18 = v1;
  sub_26A4CABC8();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_26A68CCBC;
  *(v11 + 24) = 0;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1E58) + 36);
  *(v12 + 16) = swift_getKeyPath();
  *(v12 + 24) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v14 = *(v13 + 40);
  *(v12 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v15 = v12 + *(v13 + 44);
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *v12 = sub_26A4D1F7C;
  *(v12 + 8) = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1E60);
  *(a1 + *(result + 36)) = 38;
  return result;
}

uint64_t sub_26A659ED8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9C60);
  MEMORY[0x28223BE20](v2);
  v4 = &__src[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1E98);
  MEMORY[0x28223BE20](v5);
  v7 = &__src[-1] - v6;
  v8 = sub_26A84F3A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &__src[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A6587DC(v11);
  v12 = sub_26A84F388();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_26A65A194(__src);
    memcpy(v7, __src, 0x68uLL);
    swift_storeEnumTagMultiPayload();
    sub_26A4D5738();
    sub_26A4D578C();
    return sub_26A84FDF8();
  }

  else
  {
    *v4 = sub_26A84FBF8();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1EA0);
    sub_26A65ADA4(a1, &v4[*(v14 + 44)]);
    KeyPath = swift_getKeyPath();
    v16 = &v4[*(v2 + 36)];
    *v16 = KeyPath;
    v16[8] = 1;
    sub_26A4DBD68(v4, v7, &qword_2803A9C60);
    swift_storeEnumTagMultiPayload();
    sub_26A4D5738();
    sub_26A4D578C();
    sub_26A84FDF8();
    return sub_26A4DBD10(v4, &qword_2803A9C60);
  }
}

uint64_t sub_26A65A194@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SummaryItemPairV2View(0);
  v3 = *(v1 + v2[8]);
  v88[3] = MEMORY[0x277CE11C8];
  v88[4] = &protocol witness table for AnyView;
  v88[0] = v3;
  v4 = *(v1 + v2[9]);
  v65 = v4;
  if (v4)
  {
    v4 = &protocol witness table for AnyView;
    v5 = MEMORY[0x277CE11C8];
    v6 = v65;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v87[1] = 0;
    v87[2] = 0;
  }

  v87[0] = v6;
  v87[3] = v5;
  v87[4] = v4;
  if (*(v1 + v2[10]))
  {
    v7 = &protocol witness table for AnyView;
    v8 = MEMORY[0x277CE11C8];
    v9 = *(v1 + v2[10]);
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v86[1] = 0;
    v86[2] = 0;
  }

  v86[0] = v9;
  v86[3] = v8;
  v86[4] = v7;
  v10 = v2[11];
  if (*(v1 + v10))
  {
    v11 = &protocol witness table for AnyView;
    v12 = MEMORY[0x277CE11C8];
    v13 = *(v1 + v10);
  }

  else
  {
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v85[1] = 0;
    v85[2] = 0;
  }

  v85[0] = v13;
  v85[3] = v12;
  v85[4] = v11;
  if (*(v1 + v2[12]))
  {
    v14 = &protocol witness table for AnyView;
    v15 = MEMORY[0x277CE11C8];
    v16 = *(v1 + v2[12]);
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v84[1] = 0;
    v84[2] = 0;
  }

  v83[4] = &protocol witness table for AnyView;
  v84[0] = v16;
  v84[3] = v15;
  v84[4] = v14;
  v17 = v2[17];
  v18 = *(v1 + v2[16]);
  v83[3] = MEMORY[0x277CE11C8];
  v82[4] = &protocol witness table for AnyView;
  v83[0] = v18;
  v19 = *(v1 + v17);
  v82[3] = MEMORY[0x277CE11C8];
  v81 = 0;
  v82[0] = v19;
  memset(v80, 0, sizeof(v80));
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  v77 = 0;
  memset(v76, 0, sizeof(v76));
  v75 = 0;
  memset(v74, 0, sizeof(v74));
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  sub_26A4DBD68(v88, v67, &qword_2803A91B8);
  v20 = v68;
  if (v68)
  {
    v21 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v22 = *(v21 + 8);

    v23 = v22(v20, v21);
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {

    sub_26A4DBD10(v67, &qword_2803A91B8);
    v23 = 0;
  }

  sub_26A4DBD68(v87, v67, &qword_2803A91B8);
  v24 = v68;
  if (v68)
  {
    v25 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v26 = (*(v25 + 8))(v24, v25);
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_26A4DBD10(v67, &qword_2803A91B8);
    v26 = 0;
  }

  sub_26A4DBD68(v86, v67, &qword_2803A91B8);
  v27 = v68;
  if (v68)
  {
    v28 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v29 = (*(v28 + 8))(v27, v28);
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_26A4DBD10(v67, &qword_2803A91B8);
    v29 = 0;
  }

  sub_26A4DBD68(v85, v67, &qword_2803A91B8);
  v30 = v68;
  if (v68)
  {
    v31 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v32 = (*(v31 + 8))(v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_26A4DBD10(v67, &qword_2803A91B8);
    v32 = 0;
  }

  sub_26A4DBD68(v84, v67, &qword_2803A91B8);
  v33 = v68;
  if (v68)
  {
    v34 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v66 = (*(v34 + 8))(v33, v34);
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_26A4DBD10(v67, &qword_2803A91B8);
    v66 = 0;
  }

  sub_26A4DBD68(v83, v67, &qword_2803A91B8);
  v35 = v68;
  if (v68)
  {
    v36 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v64 = (*(v36 + 8))(v35, v36);
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_26A4DBD10(v67, &qword_2803A91B8);
    v64 = 0;
  }

  sub_26A4DBD68(v82, v67, &qword_2803A91B8);
  v37 = v68;
  if (v68)
  {
    v38 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v62 = (*(v38 + 8))(v37, v38);
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_26A4DBD10(v67, &qword_2803A91B8);
    v62 = 0;
  }

  sub_26A4DBD68(v80, v67, &qword_2803A91B8);
  v39 = v68;
  if (v68)
  {
    v40 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v61 = (*(v40 + 8))(v39, v40);
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_26A4DBD10(v67, &qword_2803A91B8);
    v61 = 0;
  }

  sub_26A4DBD68(v78, v67, &qword_2803A91B8);
  v41 = v68;
  if (v68)
  {
    v42 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v41 = (*(v42 + 8))(v41, v42);
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_26A4DBD10(v67, &qword_2803A91B8);
  }

  sub_26A4DBD68(v76, v67, &qword_2803A91B8);
  v43 = v68;
  if (v68)
  {
    v44 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v43 = (*(v44 + 8))(v43, v44);
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_26A4DBD10(v67, &qword_2803A91B8);
  }

  sub_26A4DBD68(v74, v67, &qword_2803A91B8);
  v45 = v68;
  if (v68)
  {
    v46 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v45 = (*(v46 + 8))(v45, v46);
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_26A4DBD10(v67, &qword_2803A91B8);
  }

  sub_26A4DBD68(v72, v67, &qword_2803A91B8);
  v47 = v68;
  if (v68)
  {
    v48 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v47 = (*(v48 + 8))(v47, v48);
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_26A4DBD10(v67, &qword_2803A91B8);
  }

  sub_26A4DBD68(v70, v67, &qword_2803A91B8);
  v49 = v68;
  if (v68)
  {
    v60 = v47;
    v50 = v45;
    v51 = v43;
    v52 = v41;
    v53 = v32;
    v54 = v29;
    v55 = v23;
    v56 = v26;
    v57 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v58 = (*(v57 + 8))(v49, v57);
    sub_26A4DBD10(v70, &qword_2803A91B8);
    sub_26A4DBD10(v72, &qword_2803A91B8);
    sub_26A4DBD10(v74, &qword_2803A91B8);
    sub_26A4DBD10(v76, &qword_2803A91B8);
    sub_26A4DBD10(v78, &qword_2803A91B8);
    sub_26A4DBD10(v80, &qword_2803A91B8);
    sub_26A4DBD10(v82, &qword_2803A91B8);
    sub_26A4DBD10(v83, &qword_2803A91B8);
    sub_26A4DBD10(v84, &qword_2803A91B8);
    sub_26A4DBD10(v85, &qword_2803A91B8);
    sub_26A4DBD10(v86, &qword_2803A91B8);
    sub_26A4DBD10(v87, &qword_2803A91B8);
    v26 = v56;
    v23 = v55;
    v29 = v54;
    v32 = v53;
    v41 = v52;
    v43 = v51;
    v45 = v50;
    v47 = v60;
    sub_26A4DBD10(v88, &qword_2803A91B8);
    result = __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_26A4DBD10(v70, &qword_2803A91B8);
    sub_26A4DBD10(v72, &qword_2803A91B8);
    sub_26A4DBD10(v74, &qword_2803A91B8);
    sub_26A4DBD10(v76, &qword_2803A91B8);
    sub_26A4DBD10(v78, &qword_2803A91B8);
    sub_26A4DBD10(v80, &qword_2803A91B8);
    sub_26A4DBD10(v82, &qword_2803A91B8);
    sub_26A4DBD10(v83, &qword_2803A91B8);
    sub_26A4DBD10(v84, &qword_2803A91B8);
    sub_26A4DBD10(v85, &qword_2803A91B8);
    sub_26A4DBD10(v86, &qword_2803A91B8);
    sub_26A4DBD10(v87, &qword_2803A91B8);
    sub_26A4DBD10(v88, &qword_2803A91B8);
    result = sub_26A4DBD10(v67, &qword_2803A91B8);
    v58 = 0;
  }

  *a1 = v23;
  a1[1] = v26;
  a1[2] = v29;
  a1[3] = v32;
  a1[4] = v66;
  a1[5] = v64;
  a1[6] = v62;
  a1[7] = v61;
  a1[8] = v41;
  a1[9] = v43;
  a1[10] = v45;
  a1[11] = v47;
  a1[12] = v58;
  return result;
}

uint64_t sub_26A65AC4C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 288);
  if ((*(v0 + 296) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v5, v1);
    v6 = v9[1];
  }

  return sub_26A5A001C(v6, v3);
}

uint64_t sub_26A65ADA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SummaryItemPairV2View.Constants(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1EA8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11 - 8];
  v13 = sub_26A84FA78();
  sub_26A65AC4C();
  v14 = *v6;
  sub_26A65C924(v6);
  *v12 = v13;
  *(v12 + 1) = v14;
  v12[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1EB0);
  sub_26A65B010(a1, &v12[*(v15 + 44)]);
  sub_26A65B95C(v22);
  sub_26A65BA6C(v21);
  sub_26A4DBD68(v12, v9, &qword_2803B1EA8);
  sub_26A4DBD68(v22, v20, &qword_2803AC518);
  sub_26A4DBD68(v21, v19, &qword_2803AC518);
  sub_26A4DBD68(v9, a2, &qword_2803B1EA8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1EB8);
  sub_26A4DBD68(v20, a2 + *(v16 + 48), &qword_2803AC518);
  sub_26A4DBD68(v19, a2 + *(v16 + 64), &qword_2803AC518);
  sub_26A4DBD10(v21, &qword_2803AC518);
  sub_26A4DBD10(v22, &qword_2803AC518);
  sub_26A4DBD10(v12, &qword_2803B1EA8);
  sub_26A4DBD10(v19, &qword_2803AC518);
  sub_26A4DBD10(v20, &qword_2803AC518);
  return sub_26A4DBD10(v9, &qword_2803B1EA8);
}

uint64_t sub_26A65B010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB2E0) - 8;
  MEMORY[0x28223BE20](v63);
  v60 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v59 = &v47 - v5;
  v6 = type metadata accessor for SummaryItemPairV2View.Constants(0) - 8;
  v57 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1EC0) - 8;
  MEMORY[0x28223BE20](v50);
  v62 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v47 - v11);
  v58 = type metadata accessor for SummaryItemPairV2View(0);
  v13 = *(v58 + 64);
  v48 = a1;
  v14 = *(a1 + v13);
  sub_26A65AC4C();
  v15 = *(v6 + 28);
  KeyPath = swift_getKeyPath();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
  v17 = (v12 + *(v56 + 36));
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440);
  v18 = *(v55 + 28);
  v19 = sub_26A84B1D8();
  v20 = *(v19 - 8);
  v53 = *(v20 + 16);
  v54 = v20 + 16;
  v53(v17 + v18, &v8[v15], v19);
  __swift_storeEnumTagSinglePayload(v17 + v18, 0, 1, v19);
  *v17 = KeyPath;
  v49 = v12;
  *v12 = v14;
  v21 = *(v20 + 8);
  v51 = v20 + 8;
  v52 = v21;

  v22 = v8;
  v21(&v8[v15], v19);
  v23 = swift_getKeyPath();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB308);
  v25 = v12 + *(v24 + 36);
  *v25 = v23;
  v25[8] = 1;
  v26 = swift_getKeyPath();
  v27 = v12 + *(v63 + 44);
  *v27 = v26;
  v27[8] = 0;
  v28 = sub_26A84FBD8();
  v29 = (v12 + *(v50 + 44));
  *v29 = v28;
  v29[1] = sub_26A48F9E4;
  v29[2] = 0;
  v65[0] = sub_26A84FBF8();
  v65[1] = 0;
  LOBYTE(v65[2]) = 1;
  v30 = v48;
  sub_26A65B5F4(v48, &v65[3]);
  sub_26A851448();
  sub_26A84F628();
  memcpy(v64, v65, 0x390uLL);
  memcpy(v65, v64, 0x400uLL);
  v31 = *(v30 + *(v58 + 68));
  sub_26A65AC4C();
  v32 = *(v57 + 28);
  v33 = swift_getKeyPath();
  v34 = v59;
  v35 = &v59[*(v56 + 36)];
  v36 = *(v55 + 28);
  v53(v35 + v36, &v22[v32], v19);
  __swift_storeEnumTagSinglePayload(v35 + v36, 0, 1, v19);
  *v35 = v33;
  *v34 = v31;

  v52(&v22[v32], v19);
  v37 = swift_getKeyPath();
  v38 = v34 + *(v24 + 36);
  *v38 = v37;
  v38[8] = 1;
  v39 = swift_getKeyPath();
  v40 = v62;
  v41 = v34 + *(v63 + 44);
  *v41 = v39;
  v41[8] = 0;
  v42 = v49;
  sub_26A4DBD68(v49, v40, &qword_2803B1EC0);
  sub_26A4DBD68(v65, v64, &qword_2803B1EC8);
  v43 = v60;
  sub_26A4DBD68(v34, v60, &qword_2803AB2E0);
  v44 = v61;
  sub_26A4DBD68(v40, v61, &qword_2803B1EC0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1ED0);
  sub_26A4DBD68(v64, v44 + *(v45 + 48), &qword_2803B1EC8);
  sub_26A4DBD68(v43, v44 + *(v45 + 64), &qword_2803AB2E0);
  sub_26A4DBD10(v34, &qword_2803AB2E0);
  sub_26A4DBD10(v65, &qword_2803B1EC8);
  sub_26A4DBD10(v42, &qword_2803B1EC0);
  sub_26A4DBD10(v43, &qword_2803AB2E0);
  sub_26A4DBD10(v64, &qword_2803B1EC8);
  return sub_26A4DBD10(v62, &qword_2803B1EC0);
}

uint64_t sub_26A65B5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SummaryItemPairV2View(0);
  v5 = *(a1 + v4[8]);
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2815888E8, v18, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v17, __src, sizeof(v17));
  v18[11] = 0;
  v18[10] = sub_26A80A810;
  v16 = v5;
  v6 = *(a1 + v4[9]);
  if (v6)
  {
    v7 = qword_28157E6B0;

    if (v7 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_281588898, &v14[25], &qword_2803AA880);
    sub_26A6AEE74(v20);
    memcpy(&v14[1], v20, 0xBFuLL);
    v14[36] = 0;
    v14[35] = sub_26A80A810;
    v14[0] = v6;
  }

  else
  {
    bzero(v14, 0x128uLL);
  }

  memcpy(__dst, v14, sizeof(__dst));
  v8 = *(a1 + v4[10]);
  if (v8)
  {
    v9 = qword_28157E6A8;

    if (v9 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_281588848, &v13[25], &qword_2803AA880);
    sub_26A6AEE74(v21);
    memcpy(&v13[1], v21, 0xBFuLL);
    v13[36] = 0;
    v13[35] = sub_26A80A810;
    v13[0] = v8;
  }

  else
  {
    bzero(v13, 0x128uLL);
  }

  memcpy(v14, v13, sizeof(v14));
  sub_26A4DBD68(&v16, v13, &qword_2803A99A0);
  sub_26A4DBD68(__dst, v12, &qword_2803AA888);
  sub_26A4DBD68(v14, v11, &qword_2803AA888);
  sub_26A4DBD68(v13, a2, &qword_2803A99A0);
  sub_26A4DBD68(v12, a2 + 296, &qword_2803AA888);
  sub_26A4DBD68(v11, a2 + 592, &qword_2803AA888);

  sub_26A4DBD10(v14, &qword_2803AA888);
  sub_26A4DBD10(__dst, &qword_2803AA888);
  sub_26A4DBD10(&v16, &qword_2803A99A0);
  sub_26A4DBD10(v11, &qword_2803AA888);
  sub_26A4DBD10(v12, &qword_2803AA888);
  return sub_26A4DBD10(v13, &qword_2803A99A0);
}

void sub_26A65B95C(uint64_t a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for SummaryItemPairV2View(0) + 44)))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = qword_2803A9028;

    if (v3 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2803D27B0, a1 + 240, &qword_2803AA880);
    sub_26A6AEE74(v4);
    memcpy((a1 + 48), v4, 0xBFuLL);
    OUTLINED_FUNCTION_16_3();
  }

  else
  {

    bzero(a1, 0x150uLL);
  }
}

void sub_26A65BA6C(uint64_t a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for SummaryItemPairV2View(0) + 48)))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = qword_28157E6A0;

    if (v3 != -1)
    {
      swift_once();
    }

    sub_26A4DBD68(&unk_2815887F8, a1 + 240, &qword_2803AA880);
    sub_26A6AEE74(v4);
    memcpy((a1 + 48), v4, 0xBFuLL);
    OUTLINED_FUNCTION_16_3();
  }

  else
  {

    bzero(a1, 0x150uLL);
  }
}

uint64_t sub_26A65BBA8(double a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v7 = type metadata accessor for SummaryItemPairV2View.Constants(0);
  __swift_allocate_value_buffer(v7, a3);
  v8 = __swift_project_value_buffer(v7, a3);
  v9 = *(v7 + 20);
  v10 = *a4;
  sub_26A84B1D8();
  OUTLINED_FUNCTION_46();
  result = (*(v11 + 104))(v8 + v9, v10);
  *v8 = a1;
  return result;
}

uint64_t sub_26A65BC58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_2803A8C80 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(a1, qword_2803B1E10);

  return sub_26A65CC98(v4, a2);
}

uint64_t sub_26A65BD40@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(a1, a3);
  return sub_26A65CC98(v7, a4);
}

void sub_26A65BDAC()
{
  OUTLINED_FUNCTION_28_0();
  v82 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v72 = v0;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v3 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v80 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_0(&v71 - v9);
  v75 = sub_26A84BD28();
  OUTLINED_FUNCTION_15();
  v74 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  v16 = OUTLINED_FUNCTION_79(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  v23 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_41();
  v29 = v28 - v27;
  v30 = type metadata accessor for SummaryItemPairV2View(0);
  v31 = OUTLINED_FUNCTION_79(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v33 - v32);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAAE0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v34);
  v36 = &v71 - v35;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAAE8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_0();
  v79 = v38 - v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10_0(&v71 - v41);
  sub_26A84C658();
  v42 = TextProperty.asAnyView()();
  v43 = *(v25 + 8);
  v43(v29, v23);
  v100 = MEMORY[0x277CE11C8];
  v101 = &protocol witness table for AnyView;
  v99 = v42;
  sub_26A84C668();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_26A4DBD10(v22, &qword_2803AA838);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v95 = 0;
    v96 = 0;
  }

  else
  {
    v44 = TextProperty.asAnyView()();
    v43(v22, v23);
    v46 = &protocol witness table for AnyView;
    v45 = MEMORY[0x277CE11C8];
  }

  v94 = v44;
  v97 = v45;
  v98 = v46;
  sub_26A84C678();
  if (__swift_getEnumTagSinglePayload(v19, 1, v23) == 1)
  {
    sub_26A4DBD10(v19, &qword_2803AA838);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v90 = 0;
    v91 = 0;
  }

  else
  {
    v47 = TextProperty.asAnyView()();
    v43(v19, v23);
    v49 = &protocol witness table for AnyView;
    v48 = MEMORY[0x277CE11C8];
  }

  v89 = v47;
  v92 = v48;
  v93 = v49;
  sub_26A84C608();
  v50 = VisualProperty.asAnyView()();
  v51 = *(v74 + 8);
  v52 = v75;
  v51(v14, v75);
  v88 = &protocol witness table for AnyView;
  v53 = MEMORY[0x277CE11C8];
  v87 = MEMORY[0x277CE11C8];
  v86 = v50;
  sub_26A84C618();
  v54 = VisualProperty.asAnyView()();
  v51(v14, v52);
  v85 = &protocol witness table for AnyView;
  v84 = v53;
  v83 = v54;
  v55 = v77;
  SummaryItemPairV2View.init(text1:text2:text3:thumbnail1:thumbnail2:)();
  v56 = v76;
  sub_26A84C688();
  v57 = v80;
  sub_26A4DBDB4(v56, v80, &qword_2803B3800);
  v58 = v82;
  if (__swift_getEnumTagSinglePayload(v57, 1, v82) == 1)
  {
    sub_26A4DBD10(v57, &qword_2803B3800);
    swift_getKeyPath();
    OUTLINED_FUNCTION_22_21();
    v60 = &v36[v59];
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v62 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v60 + v61, 1, 1, v62);
    *v60 = v57;
  }

  else
  {
    v63 = *(v72 + 32);
    v64 = v71;
    v63(v71, v57, v58);
    swift_getKeyPath();
    OUTLINED_FUNCTION_22_21();
    v66 = &v36[v65];
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v63(v66 + v67, v64, v58);
    v68 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v66 + v67, 0, 1, v68);
    *v66 = v57;
  }

  sub_26A65C524(v55, v36);
  v69 = sub_26A84C628();
  v70 = v78;
  sub_26A4DD344(v69);

  sub_26A4DBD10(v36, &qword_2803AAAE0);
  sub_26A84C638();

  sub_26A4DBD68(v70, v79, &qword_2803AAAE8);
  sub_26A65C980();
  sub_26A851248();
  sub_26A4DBD10(v70, &qword_2803AAAE8);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A65C524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemPairV2View(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A65C5AC(uint64_t a1)
{
  result = sub_26A65CBAC(&qword_2803B1E68, MEMORY[0x277D63320]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A65C62C()
{
  sub_26A4DB840(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
    if (v1 <= 0x3F)
    {
      sub_26A4D27F4();
      if (v2 <= 0x3F)
      {
        sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
        if (v3 <= 0x3F)
        {
          sub_26A4DB840(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_26A65C794()
{
  result = qword_2803B1E80;
  if (!qword_2803B1E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1E60);
    sub_26A65C820();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1E80);
  }

  return result;
}

unint64_t sub_26A65C820()
{
  result = qword_2803B1E88;
  if (!qword_2803B1E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B1E58);
    sub_26A4DBCC8(&qword_2803B1E90, &qword_2803A9C40);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1E88);
  }

  return result;
}

uint64_t sub_26A65C924(uint64_t a1)
{
  v2 = type metadata accessor for SummaryItemPairV2View.Constants(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A65C980()
{
  result = qword_2803B1ED8;
  if (!qword_2803B1ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAAE8);
    sub_26A65CA38();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1ED8);
  }

  return result;
}

unint64_t sub_26A65CA38()
{
  result = qword_2803B1EE0;
  if (!qword_2803B1EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAAD8);
    sub_26A65CAC4();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1EE0);
  }

  return result;
}

unint64_t sub_26A65CAC4()
{
  result = qword_2803B1EE8;
  if (!qword_2803B1EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAAE0);
    sub_26A65CBAC(&qword_2803B1EF0, type metadata accessor for SummaryItemPairV2View);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B1EE8);
  }

  return result;
}

uint64_t sub_26A65CBAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A65CC1C()
{
  result = sub_26A84B1D8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A65CC98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryItemPairV2View.Constants(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_10_35(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1);
}

uint64_t OUTLINED_FUNCTION_14_27(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1);
}

uint64_t OUTLINED_FUNCTION_16_18(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1);
}

uint64_t OUTLINED_FUNCTION_17_19()
{

  return __swift_destroy_boxed_opaque_existential_1(v0 + 56);
}

uint64_t OUTLINED_FUNCTION_20_19(uint64_t a1, uint64_t a2)
{

  return sub_26A4DBD68(a1, a2, v2);
}

uint64_t sub_26A65CE60()
{
  v0 = *aUrllink_0;

  return v0;
}

uint64_t sub_26A65CE98(char a1)
{
  if (a1)
  {
    return 0x6574616C706D6574;
  }

  else
  {
    return 0x6C616E696769726FLL;
  }
}

uint64_t sub_26A65CED4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A65D908();
  *a1 = result;
  return result;
}

uint64_t sub_26A65CF0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A65CE98(*v1);
  *a1 = result;
  a1[1] = 0xE800000000000000;
  return result;
}

uint64_t sub_26A65D124()
{
  v0 = *aRendermode_0;

  return v0;
}

uint64_t sub_26A65D1BC()
{
  v0 = *aImageurl_0;

  return v0;
}

uint64_t sub_26A65D254()
{
  v0 = *aBundleid_1;

  return v0;
}

uint64_t sub_26A65D2EC()
{
  v0 = *aName_1;

  return v0;
}

uint64_t sub_26A65D384()
{
  v0 = *aSymbol_4;

  return v0;
}

uint64_t sub_26A65D3BC()
{
  v0 = sub_26A8524B8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26A65D408(char a1)
{
  if (!a1)
  {
    return 0x7A69736168706D65;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x6874656B69727473;
}

uint64_t sub_26A65D480@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A65D3BC();
  *a1 = result;
  return result;
}

uint64_t sub_26A65D4B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A65D408(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26A65D6C4()
{
  v0 = *aTextstyle_0;

  return v0;
}

uint64_t sub_26A65D6FC(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1F98);
  OUTLINED_FUNCTION_79(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1FA0);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1FA8);
  OUTLINED_FUNCTION_79(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1FB0);
  OUTLINED_FUNCTION_79(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  if (a1)
  {
    sub_26A8505F8();
    v18 = sub_26A850608();
    v19 = 0;
  }

  else
  {
    v18 = sub_26A850608();
    v19 = 1;
  }

  __swift_storeEnumTagSinglePayload(v17, v19, 1, v18);
  v20 = sub_26A850618();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v20);
  v21 = sub_26A850648();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v21);
  v22 = sub_26A8505E8();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v22);
  return sub_26A850658();
}

uint64_t sub_26A65D908()
{
  v0 = sub_26A8524B8();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26A65D958(char a1)
{
  if (a1)
  {
    return 0x656772616CLL;
  }

  else
  {
    return 0x6369736162;
  }
}

uint64_t sub_26A65D98C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A65D908();
  *a1 = result;
  return result;
}

uint64_t sub_26A65D9C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26A65D958(*v1);
  *a1 = result;
  a1[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_26A65DBDC()
{
  v0 = *aEncapsulation_0;

  return v0;
}

uint64_t sub_26A65DC74()
{
  v0 = *aAppbundleid_3;

  return v0;
}

uint64_t sub_26A65DCB4()
{
  sub_26A65E9C0(&qword_2803B20C8);

  return sub_26A84A868();
}