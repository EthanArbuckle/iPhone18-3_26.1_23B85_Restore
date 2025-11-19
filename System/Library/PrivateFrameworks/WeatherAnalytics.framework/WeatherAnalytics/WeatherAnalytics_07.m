_BYTE *storeEnumTagSinglePayload for WidgetFamily(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C820FC()
{
  result = qword_27CF7D458;
  if (!qword_27CF7D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D458);
  }

  return result;
}

WeatherAnalytics::StartMethod __swiftcall StartMethod.init(referringApplication:)(Swift::String referringApplication)
{
  v2 = v1;
  if (OUTLINED_FUNCTION_0_24())
  {

    v4 = 2;
  }

  else if (sub_220CA0C94())
  {

    v4 = 1;
  }

  else if (OUTLINED_FUNCTION_0_24())
  {

    v4 = 3;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_0_24();

    if (v5)
    {
      v4 = 5;
    }

    else
    {
      v4 = 0;
    }
  }

  *v2 = v4;
  return result;
}

WeatherAnalytics::ProviderDataOrigination_optional __swiftcall ProviderDataOrigination.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_220C822D4()
{
  result = qword_27CF7D460;
  if (!qword_27CF7D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D460);
  }

  return result;
}

uint64_t sub_220C8234C@<X0>(uint64_t *a1@<X8>)
{
  result = ProviderDataOrigination.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ProviderDataOrigination(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C82504()
{
  result = qword_2812CF748;
  if (!qword_2812CF748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF748);
  }

  return result;
}

uint64_t sub_220C82620()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7D498);
  __swift_project_value_buffer(v0, qword_27CF7D498);
  return sub_220CA0244();
}

uint64_t WidgetRefreshEvent.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D4B0, &qword_220CB0810);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t WidgetRefreshEvent.data.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D4B0, &qword_220CB0810);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t WidgetRefreshEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for WidgetRefreshEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t WidgetRefreshEvent.timedData.setter()
{
  v2 = *(OUTLINED_FUNCTION_8_13() + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t WidgetRefreshEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for WidgetRefreshEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t WidgetRefreshEvent.privateUserData.setter()
{
  v2 = *(OUTLINED_FUNCTION_8_13() + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t WidgetRefreshEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D4B0, &qword_220CB0810);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 104))(a1, v2);
  refreshed = type metadata accessor for WidgetRefreshEvent(0);
  v6 = *(refreshed + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v7);
  (*(v8 + 104))(a1 + v6, v2);
  v9 = *(refreshed + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v10);
  v12 = *(v11 + 104);

  return v12(a1 + v9, v2);
}

uint64_t WidgetRefreshEvent.Model.data.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t WidgetRefreshEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for WidgetRefreshEvent.Model(v0) + 20);
  v2 = sub_220CA04D4();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t WidgetRefreshEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for WidgetRefreshEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t WidgetRefreshEvent.Model.init(data:timedData:privateUserData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *a3;
  v9 = a3[1];
  v10 = *(a3 + 4);
  v11 = *(a3 + 20);
  *a4 = *a1;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  refreshed = type metadata accessor for WidgetRefreshEvent.Model(0);
  v13 = *(refreshed + 20);
  v14 = sub_220CA04D4();
  OUTLINED_FUNCTION_1(v14);
  result = (*(v15 + 32))(a4 + v13, a2);
  v17 = a4 + *(refreshed + 24);
  *v17 = v8;
  *(v17 + 8) = v9;
  *(v17 + 16) = v10;
  *(v17 + 20) = v11;
  return result;
}

uint64_t sub_220C82CC8(uint64_t a1)
{
  v2 = sub_220C82F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C82D04(uint64_t a1)
{
  v2 = sub_220C82F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetRefreshEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D4B8, &qword_220CB0818);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v23 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C82F4C();
  sub_220CA1254();
  v13 = v2[1];
  v14 = *(v2 + 16);
  v24 = *v2;
  v25 = v13;
  LOBYTE(v26) = v14;
  v28 = 0;
  v15 = sub_220C82FA0();

  OUTLINED_FUNCTION_3_3();

  if (!v15)
  {
    refreshed = type metadata accessor for WidgetRefreshEvent.Model(0);
    v17 = *(refreshed + 20);
    LOBYTE(v24) = 1;
    sub_220CA04D4();
    sub_220C315AC(&qword_2812D0D80);
    sub_220CA1104();
    v18 = (v2 + *(refreshed + 24));
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v18 + 4);
    LOBYTE(v18) = *(v18 + 20);
    v24 = v19;
    v25 = v20;
    v26 = v21;
    v27 = v18;
    v28 = 2;
    sub_220BFF788();

    OUTLINED_FUNCTION_3_3();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_220C82F4C()
{
  result = qword_27CF7D4C0;
  if (!qword_27CF7D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D4C0);
  }

  return result;
}

unint64_t sub_220C82FA0()
{
  result = qword_27CF7D4C8;
  if (!qword_27CF7D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D4C8);
  }

  return result;
}

uint64_t WidgetRefreshEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_220CA04D4();
  v5 = OUTLINED_FUNCTION_3(v4);
  v36 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D4D0, &qword_220CB0820);
  v12 = OUTLINED_FUNCTION_3(v11);
  v37 = v13;
  v38 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  refreshed = type metadata accessor for WidgetRefreshEvent.Model(0);
  v17 = OUTLINED_FUNCTION_1(refreshed);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v23 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_220C82F4C();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v24 = v21;
  v25 = v36;
  v44 = 0;
  sub_220C83370();
  OUTLINED_FUNCTION_4_6();
  sub_220CA1034();
  v26 = v41;
  v27 = v42;
  *v24 = v40;
  *(v24 + 8) = v26;
  *(v24 + 16) = v27;
  LOBYTE(v40) = 1;
  sub_220C315AC(&qword_2812D0D78);
  sub_220CA1034();
  (*(v25 + 32))(v24 + *(refreshed + 20), v10, v4);
  v44 = 2;
  sub_220BFF730();
  OUTLINED_FUNCTION_4_6();
  sub_220CA1034();
  v28 = OUTLINED_FUNCTION_6_1();
  v29(v28, v38);
  v30 = v41;
  v31 = v42;
  v32 = v43;
  v33 = v24 + *(refreshed + 24);
  *v33 = v40;
  *(v33 + 8) = v30;
  *(v33 + 16) = v31;
  *(v33 + 20) = v32;
  sub_220C833C4(v24, v35);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_220C83428(v24);
}

unint64_t sub_220C83370()
{
  result = qword_27CF7D4D8;
  if (!qword_27CF7D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D4D8);
  }

  return result;
}

uint64_t sub_220C833C4(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for WidgetRefreshEvent.Model(0);
  (*(*(refreshed - 8) + 16))(a2, a1, refreshed);
  return a2;
}

uint64_t sub_220C83428(uint64_t a1)
{
  refreshed = type metadata accessor for WidgetRefreshEvent.Model(0);
  (*(*(refreshed - 8) + 8))(a1, refreshed);
  return a1;
}

void sub_220C834EC()
{
  sub_220C835F8(319, &qword_27CF7D4F0, sub_220C83370, sub_220C82FA0);
  if (v0 <= 0x3F)
  {
    sub_220C05010();
    if (v1 <= 0x3F)
    {
      sub_220C835F8(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220C835F8(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_220CA0044();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_220C8369C()
{
  result = sub_220CA04D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetRefreshEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C83800()
{
  result = qword_27CF7D508;
  if (!qword_27CF7D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D508);
  }

  return result;
}

unint64_t sub_220C83858()
{
  result = qword_27CF7D510;
  if (!qword_27CF7D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D510);
  }

  return result;
}

unint64_t sub_220C838B0()
{
  result = qword_27CF7D518;
  if (!qword_27CF7D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D518);
  }

  return result;
}

uint64_t WidgetData.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WidgetData.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_220C839DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796C696D6166 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C83AA0(char a1)
{
  if (a1)
  {
    return 0x796C696D6166;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_220C83AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C839DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C83AFC(uint64_t a1)
{
  v2 = sub_220C83CFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C83B38(uint64_t a1)
{
  v2 = sub_220C83CFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D520, &qword_220CB0A30);
  v5 = OUTLINED_FUNCTION_3(v4);
  v16 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v17 = *(v1 + 16);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C83CFC();
  sub_220CA1254();
  v20 = 0;
  sub_220CA10C4();
  if (!v2)
  {
    v19 = v17;
    v18 = 1;
    sub_220C83D50();
    sub_220CA1104();
  }

  return (*(v16 + 8))(v10, v4);
}

unint64_t sub_220C83CFC()
{
  result = qword_27CF7D528;
  if (!qword_27CF7D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D528);
  }

  return result;
}

unint64_t sub_220C83D50()
{
  result = qword_27CF7D530;
  if (!qword_27CF7D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D530);
  }

  return result;
}

uint64_t WidgetData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D538, &qword_220CB0A38);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C83CFC();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_220CA0FF4();
  v12 = v11;
  sub_220C83F74();
  sub_220CA1034();
  v13 = OUTLINED_FUNCTION_0_3();
  v14(v13);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C83F74()
{
  result = qword_27CF7D540;
  if (!qword_27CF7D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D540);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C840F0()
{
  result = qword_27CF7D548;
  if (!qword_27CF7D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D548);
  }

  return result;
}

unint64_t sub_220C84148()
{
  result = qword_27CF7D550;
  if (!qword_27CF7D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D550);
  }

  return result;
}

unint64_t sub_220C841A0()
{
  result = qword_27CF7D558;
  if (!qword_27CF7D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D558);
  }

  return result;
}

uint64_t sub_220C84240(uint64_t a1)
{
  v2 = sub_220C843F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C8427C(uint64_t a1)
{
  v2 = sub_220C843F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DetailViewData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D560, &qword_220CB0C40);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C843F8();
  sub_220CA1254();
  v15 = v11;
  sub_220C8444C();
  sub_220CA1104();
  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_220C843F8()
{
  result = qword_27CF7D568;
  if (!qword_27CF7D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D568);
  }

  return result;
}

unint64_t sub_220C8444C()
{
  result = qword_27CF7D570;
  if (!qword_27CF7D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D570);
  }

  return result;
}

uint64_t DetailViewData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D578, &qword_220CB0C48);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C843F8();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C84600();
    sub_220CA1034();
    (*(v8 + 8))(v12, v5);
    *a2 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C84600()
{
  result = qword_27CF7D580;
  if (!qword_27CF7D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D580);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DetailViewData(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DetailViewData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C84818()
{
  result = qword_27CF7D588;
  if (!qword_27CF7D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D588);
  }

  return result;
}

unint64_t sub_220C84870()
{
  result = qword_27CF7D590;
  if (!qword_27CF7D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D590);
  }

  return result;
}

unint64_t sub_220C848C8()
{
  result = qword_27CF7D598;
  if (!qword_27CF7D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D598);
  }

  return result;
}

uint64_t sub_220C849E4()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7D5B8);
  __swift_project_value_buffer(v0, qword_27CF7D5B8);
  return sub_220CA0244();
}

uint64_t NetworkOperationFailedEvent.networkOperationFailedEventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D5D0, &unk_220CB0E50);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t NetworkOperationFailedEvent.networkOperationFailedEventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D5D0, &unk_220CB0E50);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t NetworkOperationFailedEvent.privateUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NetworkOperationFailedEvent() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for NetworkOperationFailedEvent()
{
  result = qword_2812CF2F8;
  if (!qword_2812CF2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NetworkOperationFailedEvent.privateUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NetworkOperationFailedEvent() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t NetworkOperationFailedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D5D0, &unk_220CB0E50);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 104))(a1, v2);
  v5 = *(type metadata accessor for NetworkOperationFailedEvent() + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 104);

  return v8(a1 + v5, v2);
}

uint64_t NetworkOperationFailedEvent.Model.networkOperationFailedEventData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
}

uint64_t NetworkOperationFailedEvent.Model.privateUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 60);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
}

__n128 NetworkOperationFailedEvent.Model.init(networkOperationFailedEventData:privateUserData:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u64[0];
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u64[1] = v4;
  a3[2].n128_u64[0] = v5;
  a3[2].n128_u64[1] = v6;
  a3[3].n128_u64[0] = v7;
  a3[3].n128_u32[2] = v8;
  a3[3].n128_u8[12] = v9;
  return result;
}

uint64_t sub_220C84E60(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001FLL && 0x8000000220CB61D0 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5565746176697270 && a2 == 0xEF61746144726573)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C84F38(char a1)
{
  if (a1)
  {
    return 0x5565746176697270;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t sub_220C84F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C84E60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C84FB0(uint64_t a1)
{
  v2 = sub_220C85234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C84FEC(uint64_t a1)
{
  v2 = sub_220C85234();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkOperationFailedEvent.Model.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D5D8, &qword_220CB0E60);
  v4 = OUTLINED_FUNCTION_3(v3);
  v25 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v18 - v8;
  v11 = *v1;
  v10 = v1[1];
  v32 = *(v1 + 16);
  v12 = v1[3];
  v13 = v1[4];
  v14 = v1[6];
  v21 = v1[5];
  v22 = v14;
  v23 = v12;
  LODWORD(v12) = *(v1 + 14);
  v19 = *(v1 + 60);
  v20 = v12;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C85234();

  sub_220CA1254();
  v26 = v11;
  v27 = v10;
  LOBYTE(v28) = v32;
  v30 = v23;
  v31 = v13;
  v33 = 0;
  sub_220C85288();
  v16 = v24;
  sub_220CA1104();

  if (!v16)
  {
    v26 = v21;
    v27 = v22;
    v28 = v20;
    v29 = v19;
    v33 = 1;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v25 + 8))(v9, v3);
}

unint64_t sub_220C85234()
{
  result = qword_27CF7D5E0;
  if (!qword_27CF7D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D5E0);
  }

  return result;
}

unint64_t sub_220C85288()
{
  result = qword_2812CEC48;
  if (!qword_2812CEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC48);
  }

  return result;
}

uint64_t NetworkOperationFailedEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D5E8, &qword_220CB0E68);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C85234();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_220C85558();
  OUTLINED_FUNCTION_3_18();
  v10 = v28;
  v40 = v29;
  v11 = v31;
  v23 = v30;
  v24 = *(&v28 + 1);
  v42 = 1;
  sub_220BFF730();
  OUTLINED_FUNCTION_3_18();
  v12 = OUTLINED_FUNCTION_0_3();
  v13(v12);
  v22 = v36;
  v21 = v37;
  v20 = v38;
  v14 = v39;
  v41 = v39;
  v25 = v28;
  v15 = v29;
  LOBYTE(v26) = v29;
  *(&v26 + 1) = v30;
  *v27 = v31;
  *&v27[8] = v36;
  *&v27[16] = v37;
  *&v27[24] = v38;
  v27[28] = v39;
  v16 = v28;
  v17 = v26;
  v18 = *v27;
  *(a2 + 45) = *&v27[13];
  a2[1] = v17;
  a2[2] = v18;
  *a2 = v16;
  sub_220C855AC(&v25, &v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v28 = v10;
  *(&v28 + 1) = v24;
  v29 = v15;
  v30 = v23;
  v31 = v11;
  v32 = v22;
  v33 = v21;
  v34 = v20;
  v35 = v14;
  return sub_220C855E4(&v28);
}

unint64_t sub_220C85558()
{
  result = qword_2812CEC40;
  if (!qword_2812CEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC40);
  }

  return result;
}

void sub_220C8567C()
{
  sub_220C85770(319, &qword_2812D0E60, sub_220C85558, sub_220C85288);
  if (v0 <= 0x3F)
  {
    sub_220C85770(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220C85770(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_220CA0044();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

__n128 __swift_memcpy61_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_220C85808(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 61))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_220C85848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 61) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 61) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NetworkOperationFailedEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C8598C()
{
  result = qword_27CF7D5F0;
  if (!qword_27CF7D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D5F0);
  }

  return result;
}

unint64_t sub_220C859E4()
{
  result = qword_27CF7D5F8;
  if (!qword_27CF7D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D5F8);
  }

  return result;
}

unint64_t sub_220C85A3C()
{
  result = qword_27CF7D600;
  if (!qword_27CF7D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D600);
  }

  return result;
}

uint64_t sub_220C85A90()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 97, 7);
}

_BYTE *LocationConditionData.init(locationCondition:temperature:temperatureHigh:temperatureLow:)@<X0>(_BYTE *result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 4) = a2;
  *(a5 + 8) = a3;
  *(a5 + 12) = a4;
  return result;
}

uint64_t sub_220C85BB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000220CB6260 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74617265706D6574 && a2 == 0xEF68676948657275;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x74617265706D6574 && a2 == 0xEE00776F4C657275)
      {

        return 3;
      }

      else
      {
        v9 = sub_220CA1154();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_220C85D1C(char a1)
{
  result = 0x74617265706D6574;
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
      return result;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_220C85DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C85BB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C85DD4(uint64_t a1)
{
  v2 = sub_220C86004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C85E10(uint64_t a1)
{
  v2 = sub_220C86004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationConditionData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D608, &qword_220CB1150);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v16 - v10;
  v12 = *v1;
  v13 = *(v1 + 1);
  v16[2] = *(v1 + 2);
  v16[3] = v13;
  v16[1] = *(v1 + 3);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C86004();
  sub_220CA1254();
  v21 = v12;
  v20 = 0;
  sub_220C86058();
  OUTLINED_FUNCTION_1_2();
  sub_220CA1104();
  if (!v2)
  {
    v19 = 1;
    OUTLINED_FUNCTION_1_2();
    sub_220CA1114();
    v18 = 2;
    OUTLINED_FUNCTION_1_2();
    sub_220CA1114();
    v17 = 3;
    OUTLINED_FUNCTION_1_2();
    sub_220CA1114();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_220C86004()
{
  result = qword_27CF7D610;
  if (!qword_27CF7D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D610);
  }

  return result;
}

unint64_t sub_220C86058()
{
  result = qword_27CF7D618;
  if (!qword_27CF7D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D618);
  }

  return result;
}

uint64_t LocationConditionData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D620, &qword_220CB1158);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C86004();
  sub_220CA1234();
  if (!v2)
  {
    v24 = 0;
    sub_220C86294();
    sub_220CA1034();
    v14 = v25;
    v23 = 1;
    v15 = OUTLINED_FUNCTION_1_27();
    v22 = 2;
    v20 = OUTLINED_FUNCTION_1_27();
    v21 = 3;
    v17 = OUTLINED_FUNCTION_1_27();
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    v18 = v20;
    *(a2 + 4) = v15;
    *(a2 + 8) = v18;
    *(a2 + 12) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C86294()
{
  result = qword_27CF7D628;
  if (!qword_27CF7D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D628);
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LocationConditionData(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD6 && a1[16])
    {
      v2 = *a1 + 213;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 0x2B;
      v2 = v3 - 43;
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

uint64_t storeEnumTagSinglePayload for LocationConditionData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD5)
  {
    *result = a2 - 214;
    *(result + 8) = 0;
    if (a3 >= 0xD6)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD6)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 42;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationConditionData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C86498()
{
  result = qword_27CF7D630;
  if (!qword_27CF7D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D630);
  }

  return result;
}

unint64_t sub_220C864F0()
{
  result = qword_27CF7D638;
  if (!qword_27CF7D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D638);
  }

  return result;
}

unint64_t sub_220C86548()
{
  result = qword_27CF7D640;
  if (!qword_27CF7D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D640);
  }

  return result;
}

uint64_t sub_220C8659C(char a1)
{
  v3 = *(v1 + 16);
  v4 = sub_220C86638(a1);
  v5 = sub_220C93274(a1);
  MEMORY[0x223D94FE0](v5);

  v6 = sub_220BFBE64(v4, 0x20746567646957, 0xE700000000000000);

  return v6 & 1;
}

uint64_t sub_220C8664C()
{
  v1 = *(v0 + 16);
  v2 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  return sub_220C9FBD4();
}

WeatherAnalytics::CoarseLocationStatus_optional __swiftcall CoarseLocationStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CoarseLocationStatus.rawValue.getter()
{
  v1 = 0x657372616F63;
  if (*v0 != 1)
  {
    v1 = 0x65736963657270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_220C867E4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_220C3AEC4();
}

unint64_t sub_220C867F4()
{
  result = qword_27CF7D648;
  if (!qword_27CF7D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D648);
  }

  return result;
}

uint64_t sub_220C8686C@<X0>(uint64_t *a1@<X8>)
{
  result = CoarseLocationStatus.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CoarseLocationStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C86A10()
{
  result = qword_2812CFC98;
  if (!qword_2812CFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC98);
  }

  return result;
}

WeatherAnalytics::DeviceOrientation_optional __swiftcall DeviceOrientation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_220C86AC0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_220C3B1B4();
}

unint64_t sub_220C86AD0()
{
  result = qword_27CF7D650;
  if (!qword_27CF7D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D650);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceOrientation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_220C86D3C()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7D670);
  __swift_project_value_buffer(v0, qword_27CF7D670);
  return sub_220CA0244();
}

uint64_t NetworkOperationEvent.networkEventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D688, &unk_220CB1780);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t NetworkOperationEvent.networkEventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D688, &unk_220CB1780);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t NetworkOperationEvent.privateUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NetworkOperationEvent() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t type metadata accessor for NetworkOperationEvent()
{
  result = qword_2812CFBB0;
  if (!qword_2812CFBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NetworkOperationEvent.privateUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NetworkOperationEvent() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t NetworkOperationEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D688, &unk_220CB1780);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 104))(a1, v2);
  v5 = *(type metadata accessor for NetworkOperationEvent() + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v6);
  v8 = *(v7 + 104);

  return v8(a1 + v5, v2);
}

uint64_t NetworkOperationEvent.Model.networkEventData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_220C32848(v7, &v6);
}

uint64_t NetworkOperationEvent.Model.privateUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 84);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
}

__n128 NetworkOperationEvent.Model.init(networkEventData:privateUserData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 4);
  v6 = *(a2 + 20);
  v7 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v9;
  *(a3 + 64) = v3;
  *(a3 + 72) = v4;
  *(a3 + 80) = v5;
  *(a3 + 84) = v6;
  return result;
}

uint64_t sub_220C871A0(uint64_t a1)
{
  v2 = sub_220C87450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C871DC(uint64_t a1)
{
  v2 = sub_220C87450();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkOperationEvent.Model.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D690, &qword_220CB1790);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v17 - v10;
  v12 = v1[1];
  v27 = *v1;
  v28 = v12;
  v13 = v1[3];
  v29 = v1[2];
  v30 = v13;
  v14 = *(v1 + 9);
  v19 = *(v1 + 8);
  v31 = v14;
  v18 = *(v1 + 20);
  v17 = *(v1 + 84);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C32848(&v27, v26);
  sub_220C87450();
  sub_220CA1254();
  v26[0] = v27;
  v26[1] = v28;
  v26[2] = v29;
  v26[3] = v30;
  v25 = 0;
  sub_220C3290C();
  sub_220CA1104();
  OUTLINED_FUNCTION_1_28();
  if (!v2)
  {
    v21 = v19;
    v22 = v31;
    v23 = v18;
    v24 = v17;
    v20 = 1;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_220C87450()
{
  result = qword_27CF7D698;
  if (!qword_27CF7D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D698);
  }

  return result;
}

uint64_t NetworkOperationEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D6A0, &qword_220CB1798);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C87450();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  sub_220C328B4();
  OUTLINED_FUNCTION_3_10();
  v29 = v24;
  v30 = v25;
  v31 = v26;
  v32 = v27;
  v19 = 1;
  sub_220BFF730();
  OUTLINED_FUNCTION_3_10();
  v9 = OUTLINED_FUNCTION_1_15();
  v10(v9);
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v28 = v22;
  v15[0] = v24;
  v15[1] = v25;
  v15[2] = v26;
  v15[3] = v27;
  v15[4] = v20;
  LODWORD(v15[5]) = v21;
  BYTE4(v15[5]) = v22;
  memcpy(v33, v15, 0x55uLL);
  sub_220C876DC(v15, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  OUTLINED_FUNCTION_3_19();
  v16[4] = v11;
  v17 = v12;
  v18 = v13;
  return sub_220C87714(v16);
}

void sub_220C877AC()
{
  sub_220C878A0(319, &qword_2812D0E70, sub_220C328B4, sub_220C3290C);
  if (v0 <= 0x3F)
  {
    sub_220C878A0(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220C878A0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_220CA0044();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_220C87924(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 85))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_220C87964(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 85) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 85) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NetworkOperationEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C87AB0()
{
  result = qword_27CF7D6A8;
  if (!qword_27CF7D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D6A8);
  }

  return result;
}

unint64_t sub_220C87B08()
{
  result = qword_27CF7D6B0;
  if (!qword_27CF7D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D6B0);
  }

  return result;
}

unint64_t sub_220C87B60()
{
  result = qword_27CF7D6B8;
  if (!qword_27CF7D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D6B8);
  }

  return result;
}

uint64_t sub_220C87C7C()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7D6F0);
  __swift_project_value_buffer(v0, qword_27CF7D6F0);
  return sub_220CA0244();
}

uint64_t ReportWeatherExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t ReportWeatherExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t ReportWeatherExposureEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ReportWeatherExposureEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ReportWeatherExposureEvent.timedData.setter()
{
  v2 = *(OUTLINED_FUNCTION_12_6() + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t ReportWeatherExposureEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ReportWeatherExposureEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ReportWeatherExposureEvent.privateUserData.setter()
{
  v2 = *(OUTLINED_FUNCTION_12_6() + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t ReportWeatherExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0(v3);
  (*(v4 + 104))(a1, v2);
  v5 = type metadata accessor for ReportWeatherExposureEvent(0);
  v6 = *(v5 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0(v7);
  (*(v8 + 104))(a1 + v6, v2);
  v9 = *(v5 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0(v10);
  v12 = *(v11 + 104);

  return v12(a1 + v9, v2);
}

uint64_t ReportWeatherExposureEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  v2 = sub_220CA0494();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t ReportWeatherExposureEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ReportWeatherExposureEvent.Model(v0) + 20);
  v2 = sub_220CA04D4();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ReportWeatherExposureEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ReportWeatherExposureEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t ReportWeatherExposureEvent.Model.init(eventData:timedData:privateUserData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 4);
  v10 = *(a3 + 20);
  v11 = sub_220CA0494();
  OUTLINED_FUNCTION_0_0(v11);
  (*(v12 + 32))(a4, a1);
  v13 = type metadata accessor for ReportWeatherExposureEvent.Model(0);
  v14 = *(v13 + 20);
  v15 = sub_220CA04D4();
  OUTLINED_FUNCTION_0_0(v15);
  result = (*(v16 + 32))(a4 + v14, a2);
  v18 = a4 + *(v13 + 24);
  *v18 = v7;
  *(v18 + 8) = v8;
  *(v18 + 16) = v9;
  *(v18 + 20) = v10;
  return result;
}

uint64_t sub_220C88378(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74614464656D6974 && a2 == 0xE900000000000061;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x5565746176697270 && a2 == 0xEF61746144726573)
    {

      return 2;
    }

    else
    {
      v8 = sub_220CA1154();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_220C884A0(char a1)
{
  if (!a1)
  {
    return 0x746144746E657665;
  }

  if (a1 == 1)
  {
    return 0x74614464656D6974;
  }

  return 0x5565746176697270;
}

uint64_t sub_220C8850C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C88378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C88534(uint64_t a1)
{
  v2 = sub_220C887D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C88570(uint64_t a1)
{
  v2 = sub_220C887D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReportWeatherExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D708, &qword_220CB19D8);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v25[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C887D0();
  sub_220CA1254();
  LOBYTE(v26) = 0;
  sub_220CA0494();
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v14, v15);
  OUTLINED_FUNCTION_16();
  if (!v2)
  {
    v16 = type metadata accessor for ReportWeatherExposureEvent.Model(0);
    v17 = *(v16 + 20);
    LOBYTE(v26) = 1;
    sub_220CA04D4();
    OUTLINED_FUNCTION_5_0();
    sub_220C04F84(v18, v19);
    OUTLINED_FUNCTION_16();
    v20 = (v3 + *(v16 + 24));
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v20 + 4);
    LOBYTE(v20) = *(v20 + 20);
    v26 = v21;
    v27 = v22;
    v28 = v23;
    v29 = v20;
    v25[7] = 2;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C887D0()
{
  result = qword_27CF7D710;
  if (!qword_27CF7D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D710);
  }

  return result;
}

uint64_t ReportWeatherExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220CA04D4();
  v5 = OUTLINED_FUNCTION_3(v4);
  v39 = v6;
  v40 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v11 = v10 - v9;
  v43 = sub_220CA0494();
  v12 = OUTLINED_FUNCTION_3(v43);
  v38 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v41 = v17 - v16;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D718, &qword_220CB19E0);
  v18 = OUTLINED_FUNCTION_3(v42);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = type metadata accessor for ReportWeatherExposureEvent.Model(0);
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11();
  v27 = v26 - v25;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C887D0();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_7();
  sub_220C04F84(v29, v30);
  sub_220CA1034();
  (*(v38 + 32))(v27, v41, v43);
  LOBYTE(v44) = 1;
  OUTLINED_FUNCTION_5_0();
  sub_220C04F84(v31, v32);
  sub_220CA1034();
  (*(v39 + 32))(v27 + *(v21 + 20), v11, v40);
  sub_220BFF730();
  sub_220CA1034();
  v33 = OUTLINED_FUNCTION_7_14();
  v34(v33);
  v35 = v27 + *(v21 + 24);
  *v35 = v44;
  *(v35 + 8) = v45;
  *(v35 + 16) = v46;
  *(v35 + 20) = v47;
  sub_220C88C78(v27, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C88CDC(v27);
}

uint64_t sub_220C88C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportWeatherExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C88CDC(uint64_t a1)
{
  v2 = type metadata accessor for ReportWeatherExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C88DA0()
{
  sub_220C04EB8();
  if (v0 <= 0x3F)
  {
    sub_220C05010();
    if (v1 <= 0x3F)
    {
      sub_220C43144();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_220C88E64()
{
  result = sub_220CA0494();
  if (v1 <= 0x3F)
  {
    result = sub_220CA04D4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReportWeatherExposureEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C88FD0()
{
  result = qword_27CF7D740;
  if (!qword_27CF7D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D740);
  }

  return result;
}

unint64_t sub_220C89028()
{
  result = qword_27CF7D748;
  if (!qword_27CF7D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D748);
  }

  return result;
}

unint64_t sub_220C89080()
{
  result = qword_27CF7D750;
  if (!qword_27CF7D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D750);
  }

  return result;
}

uint64_t NetworkOperationFailedEventData.errorDescriptions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t NetworkOperationFailedEventData.bundleIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t NetworkOperationFailedEventData.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t NetworkOperationFailedEventData.init(errorDescriptions:duration:cellularRadioAccessTechnology:bundleIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a3;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = v6;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_220C89234(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000220CB5010 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001DLL && 0x8000000220CB5030 == a2;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x8000000220CB5050 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_220CA1154();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_220C89398(char a1)
{
  result = 0x6E6F697461727564;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_220C8943C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C89234(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C89464(uint64_t a1)
{
  v2 = sub_220C89710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C894A0(uint64_t a1)
{
  v2 = sub_220C89710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkOperationFailedEventData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D758, &unk_220CB1C10);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v17 - v9;
  v11 = *v1;
  v19 = v1[1];
  v18 = *(v1 + 16);
  v12 = v1[3];
  v17[1] = v1[4];
  v17[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_220C89710();

  sub_220CA1254();
  v25 = v11;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD60, &qword_220CA5758);
  sub_220C32788(&qword_2812CE7A0);
  OUTLINED_FUNCTION_1_29();
  sub_220CA1094();

  if (!v14)
  {
    v15 = v18;
    v23 = 1;
    OUTLINED_FUNCTION_1_29();
    sub_220CA1124();
    v22 = v15;
    v21 = 2;
    sub_220C01050();
    OUTLINED_FUNCTION_1_29();
    sub_220CA1104();
    v20 = 3;
    OUTLINED_FUNCTION_1_29();
    sub_220CA10C4();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_220C89710()
{
  result = qword_2812CEC68[0];
  if (!qword_2812CEC68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812CEC68);
  }

  return result;
}

uint64_t NetworkOperationFailedEventData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D760, &qword_220CB1C20);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C89710();
  sub_220CA1234();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD60, &qword_220CA5758);
    v28 = 0;
    sub_220C32788(&qword_27CF7BD70);
    OUTLINED_FUNCTION_2_21();
    sub_220CA0FC4();
    v15 = v29;
    v27 = 1;
    OUTLINED_FUNCTION_2_21();
    v16 = sub_220CA1054();
    v25 = 2;
    sub_220C327F4();
    OUTLINED_FUNCTION_2_21();
    sub_220CA1034();
    v23 = v26;
    v24 = 3;
    OUTLINED_FUNCTION_2_21();
    v17 = sub_220CA0FF4();
    v19 = v18;
    v20 = *(v8 + 8);
    v22 = v17;
    v20(v12, v5);
    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v23;
    *(a2 + 24) = v22;
    *(a2 + 32) = v19;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_220C89A3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_220C89A7C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for NetworkOperationFailedEventData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C89BB4()
{
  result = qword_27CF7D768;
  if (!qword_27CF7D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D768);
  }

  return result;
}

unint64_t sub_220C89C0C()
{
  result = qword_2812CEC58;
  if (!qword_2812CEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC58);
  }

  return result;
}

unint64_t sub_220C89C64()
{
  result = qword_2812CEC60;
  if (!qword_2812CEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC60);
  }

  return result;
}

uint64_t MapStallStatisticsData.activeTaskCount.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t MapStallStatisticsData.activeTaskCount.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t MapStallStatisticsData.init(activeTaskCount:tasksStalled:avgTimeTaskStalled:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t sub_220C89D70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6154657669746361 && a2 == 0xEF746E756F436B73;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x617453736B736174 && a2 == 0xEC00000064656C6CLL;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x8000000220CB62F0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_220CA1154();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_220C89E94(char a1)
{
  if (!a1)
  {
    return 0x6154657669746361;
  }

  if (a1 == 1)
  {
    return 0x617453736B736174;
  }

  return 0xD000000000000012;
}

uint64_t sub_220C89F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C89D70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C89F34(uint64_t a1)
{
  v2 = sub_220C8A144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C89F70(uint64_t a1)
{
  v2 = sub_220C8A144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MapStallStatisticsData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D770, &qword_220CB1E50);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v18 - v10;
  v12 = *v1;
  v13 = *(v1 + 8);
  v14 = v1[2];
  v18[1] = v1[3];
  v18[2] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C8A144();
  sub_220CA1254();
  v21 = 0;
  v16 = v18[3];
  sub_220CA10B4();
  if (!v16)
  {
    v20 = 1;
    sub_220CA1124();
    v19 = 2;
    sub_220CA1124();
  }

  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_220C8A144()
{
  result = qword_27CF7D778;
  if (!qword_27CF7D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D778);
  }

  return result;
}

uint64_t MapStallStatisticsData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D780, &qword_220CB1E58);
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v20 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C8A144();
  sub_220CA1234();
  if (!v2)
  {
    v24 = 0;
    OUTLINED_FUNCTION_0_26();
    v15 = sub_220CA0FE4();
    v17 = v16;
    v23 = 1;
    OUTLINED_FUNCTION_0_26();
    v21 = sub_220CA1054();
    v22 = 2;
    OUTLINED_FUNCTION_0_26();
    v19 = sub_220CA1054();
    (*(v9 + 8))(v13, v3);
    *a2 = v15;
    *(a2 + 8) = v17 & 1;
    *(a2 + 16) = v21;
    *(a2 + 24) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_220C8A388(uint64_t a1, int a2)
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

uint64_t sub_220C8A3A8(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for MapStallStatisticsData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C8A4C4()
{
  result = qword_27CF7D788;
  if (!qword_27CF7D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D788);
  }

  return result;
}

unint64_t sub_220C8A51C()
{
  result = qword_27CF7D790;
  if (!qword_27CF7D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D790);
  }

  return result;
}

unint64_t sub_220C8A574()
{
  result = qword_27CF7D798;
  if (!qword_27CF7D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D798);
  }

  return result;
}

uint64_t sub_220C8A5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BBC0, &qword_220CB2070);
  OUTLINED_FUNCTION_14_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v12);
  v14 = v28 - v13;
  sub_220C8E43C(a3, v28 - v13, &qword_27CF7BBC0, &qword_220CB2070);
  v15 = sub_220CA0D34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v15);

  if (EnumTagSinglePayload == 1)
  {
    sub_220C71714(v14, &qword_27CF7BBC0, &qword_220CB2070);
  }

  else
  {
    sub_220CA0D24();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_220CA0D04();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_220CA0C44() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_220C71714(a3, &qword_27CF7BBC0, &qword_220CB2070);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_220C71714(a3, &qword_27CF7BBC0, &qword_220CB2070);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_220C8A8A4()
{
  type metadata accessor for WidgetTimelineTelemetryManager.SerialActor();
  swift_allocObject();
  result = sub_220C8A940();
  qword_2812CEF18 = result;
  return result;
}

uint64_t sub_220C8A908()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_220C8A940()
{
  v12 = sub_220CA0DD4();
  v0 = *(v12 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v12);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_220CA0E64();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_220CA0B94();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v11 = sub_220BF9260(0, &qword_2812CE748, 0x277D85C90);
  sub_220CA0B64();
  v14 = MEMORY[0x277D84F90];
  sub_220C8E5EC(&qword_2812CE750, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D7A8, &unk_220CB2290);
  sub_220BF8A20(&qword_2812CE790, &qword_27CF7D7A8, &unk_220CB2290);
  sub_220CA0F14();
  (*(v0 + 104))(v3, *MEMORY[0x277D85268], v12);
  v8 = sub_220CA0E74();
  v9 = v13;
  *(v13 + 16) = v8;
  return v9;
}

uint64_t sub_220C8ABAC()
{
  if (qword_2812CEF10 != -1)
  {
    swift_once();
  }
}

uint64_t sub_220C8AC08(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WidgetTimelineTelemetryManager.SerialActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t WidgetTimelineTelemetryManager.__allocating_init(flushManager:coordinator:)(uint64_t a1, uint64_t *a2)
{
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_34();
  WidgetTimelineTelemetryManager.init(flushManager:coordinator:)(v4, a2);
  return v2;
}

uint64_t WidgetTimelineTelemetryManager.init(flushManager:coordinator:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_220BF92A0(a1, v12);
  sub_220BF92A0(a2, v11);
  v6 = type metadata accessor for WidgetTimelineTelemetryManager.Actor();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  sub_220C8B56C(v12, v11, 10.0);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *(v3 + 16) = v9;
  return v3;
}

uint64_t type metadata accessor for WidgetTimelineTelemetryManager.Actor()
{
  result = qword_2812CEE40;
  if (!qword_2812CEE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall WidgetTimelineTelemetryManager.start()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BBC0, &qword_220CB2070);
  OUTLINED_FUNCTION_14_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = sub_220CA0D34();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = qword_2812CEF10;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_16_7();
  }

  v9 = qword_2812CEF18;
  OUTLINED_FUNCTION_12_7();
  v12 = sub_220C8E5EC(v10, v11);
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v12;
  v13[4] = v0;

  sub_220C8A5C8(0, 0, v6, &unk_220CB2080, v13);
}

uint64_t sub_220C8AEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_2812CEF10 != -1)
  {
    swift_once();
  }

  type metadata accessor for WidgetTimelineTelemetryManager.SerialActor();
  sub_220C8E5EC(&qword_2812CEF08, type metadata accessor for WidgetTimelineTelemetryManager.SerialActor);
  v6 = sub_220CA0D04();

  return MEMORY[0x2822009F8](sub_220C8AF94, v6, v5);
}

uint64_t sub_220C8AF94()
{
  OUTLINED_FUNCTION_1_3();
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_220C8B024;

  return sub_220C8BA94();
}

uint64_t sub_220C8B024()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  OUTLINED_FUNCTION_2_3();

  return v5();
}

uint64_t WidgetTimelineTelemetryManager.finish(_:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BBC0, &qword_220CB2070);
  OUTLINED_FUNCTION_14_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = sub_220CA0D34();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);

  sub_220C02FC8(a1);
  if (qword_2812CEF10 != -1)
  {
    OUTLINED_FUNCTION_16_7();
  }

  v12 = qword_2812CEF18;
  OUTLINED_FUNCTION_12_7();
  v15 = sub_220C8E5EC(v13, v14);
  v16 = swift_allocObject();
  v16[2] = v12;
  v16[3] = v15;
  v16[4] = v2;
  v16[5] = a1;
  v16[6] = a2;

  sub_220C8A5C8(0, 0, v10, &unk_220CB2090, v16);
}

uint64_t sub_220C8B260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (qword_2812CEF10 != -1)
  {
    swift_once();
  }

  type metadata accessor for WidgetTimelineTelemetryManager.SerialActor();
  sub_220C8E5EC(&qword_2812CEF08, type metadata accessor for WidgetTimelineTelemetryManager.SerialActor);
  v8 = sub_220CA0D04();

  return MEMORY[0x2822009F8](sub_220C8B354, v8, v7);
}

uint64_t sub_220C8B354()
{
  OUTLINED_FUNCTION_1_3();
  v1 = *(v0[2] + 16);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_220C8B3EC;
  v4 = v0[3];
  v3 = v0[4];

  return sub_220C8C07C();
}

uint64_t sub_220C8B3EC()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  OUTLINED_FUNCTION_2_3();

  return v5();
}

uint64_t WidgetTimelineTelemetryManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t WidgetTimelineTelemetryManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_220C8B56C(__int128 *a1, __int128 *a2, double a3)
{
  v4 = v3;
  v6 = sub_220CA0DD4();
  v7 = OUTLINED_FUNCTION_3(v6);
  v37 = v8;
  v38 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11();
  v36 = v12 - v11;
  v13 = sub_220CA0DC4();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11();
  v17 = sub_220CA0B94();
  v18 = OUTLINED_FUNCTION_14_1(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v21 = sub_220C9F804();
  v22 = OUTLINED_FUNCTION_3(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11();
  v29 = v28 - v27;
  swift_defaultActor_initialize();
  sub_220C9F7F4();
  v30 = sub_220C9F7E4();
  v32 = v31;
  (*(v24 + 8))(v29, v21);
  *(v4 + 112) = v30;
  *(v4 + 120) = v32;
  sub_220BF9260(0, &qword_2812D1740, 0x277D85C78);
  sub_220CA0B74();
  sub_220C8E5EC(&qword_2812D0F58, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7CCD0, &qword_220CACAE0);
  sub_220BF8A20(&qword_2812D0F80, &qword_27CF7CCD0, &qword_220CACAE0);
  sub_220CA0F14();
  (*(v37 + 104))(v36, *MEMORY[0x277D85260], v38);
  *(v4 + 216) = sub_220CA0E04();
  v33 = OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_startTime;
  v34 = sub_220C9F7D4();
  __swift_storeEnumTagSinglePayload(v4 + v33, 1, 1, v34);
  *(v4 + OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_task) = 0;
  sub_220BF9210(a1, v4 + 128);
  sub_220BF9210(a2, v4 + 168);
  *(v4 + 208) = a3;
  return v4;
}

uint64_t sub_220C8B8C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_18_3(v4);
  *v5 = v6;
  v5[1] = sub_220C28A7C;
  v7 = OUTLINED_FUNCTION_17_5();

  return sub_220C8AEA4(v7, v8, v2, v3);
}

uint64_t sub_220C8B968()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_18_3(v6);
  *v7 = v8;
  v7[1] = sub_220C8E634;
  v9 = OUTLINED_FUNCTION_17_5();

  return sub_220C8B260(v9, v10, v2, v3, v4, v5);
}

uint64_t sub_220C8BA94()
{
  OUTLINED_FUNCTION_1_3();
  v1[10] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  OUTLINED_FUNCTION_14_1(v2);
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_220C8BB2C()
{
  v19 = v0;
  if (qword_2812D1768 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v1 = v0[10];
  v2 = sub_220CA0A84();
  v0[13] = __swift_project_value_buffer(v2, qword_2812D1770);

  v3 = sub_220CA0A64();
  sub_220CA0DA4();
  OUTLINED_FUNCTION_30();
  if (OUTLINED_FUNCTION_26_0())
  {
    v4 = v0[10];
    OUTLINED_FUNCTION_25_0();
    v18 = OUTLINED_FUNCTION_7_15();
    *v1 = 136446210;
    *(v1 + 4) = sub_220BFC484(*(v4 + 112), *(v4 + 120), &v18);
    OUTLINED_FUNCTION_2_22();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    OUTLINED_FUNCTION_0_27();
    OUTLINED_FUNCTION_8_14();
  }

  v10 = v0[10];
  v11 = v10[25];
  __swift_project_boxed_opaque_existential_1(v10 + 21, v10[24]);
  v16 = (OUTLINED_FUNCTION_34() + 8);
  v17 = (*v16 + **v16);
  v12 = (*v16)[1];
  v13 = swift_task_alloc();
  v0[14] = v13;
  *v13 = v0;
  v14 = OUTLINED_FUNCTION_33(v13);

  return v17(v14);
}

uint64_t sub_220C8BD04()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_10_10();
  *v2 = v1;
  *(v1 + 72) = v3;
  *(v1 + 64) = v0;
  v5 = *(v4 + 112);
  v6 = *(v4 + 80);
  v7 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_220C8BE00()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_startTime;
  swift_beginAccess();
  sub_220C8E43C(v2 + v3, v1, &qword_27CF7BC30, &qword_220CA4AE0);
  v4 = sub_220C9F7D4();
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) != 1)
  {
    v26 = *(v0 + 104);
    v4 = *(v0 + 80);
    sub_220C71714(*(v0 + 96), &qword_27CF7BC30, &qword_220CA4AE0);

    v9 = sub_220CA0A64();
    sub_220CA0DA4();
    OUTLINED_FUNCTION_30();
    if (OUTLINED_FUNCTION_26_0())
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v5 = *(v0 + 72);
  v6 = *(v0 + 104);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  sub_220C71714(*(v0 + 96), &qword_27CF7BC30, &qword_220CA4AE0);
  sub_220C9F7B4();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v4);
  swift_beginAccess();
  sub_220C8E3CC(v7, v2 + v3);
  swift_endAccess();

  v9 = sub_220CA0A64();
  sub_220CA0DA4();
  OUTLINED_FUNCTION_40();
  v10 = OUTLINED_FUNCTION_26_0();
  if (v5 != 1)
  {
    if (v10)
    {
LABEL_9:
      v27 = *(v0 + 80);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_7_15();
      OUTLINED_FUNCTION_15_8();
      *(v4 + 4) = OUTLINED_FUNCTION_9_10(4.8751e-34, v28, v29, v30, v31, v32, v33, v34, v35, v45);
      OUTLINED_FUNCTION_2_22();
      _os_log_impl(v36, v37, v38, v39, v40, 0xCu);
      OUTLINED_FUNCTION_0_27();
      OUTLINED_FUNCTION_8_14();
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v10)
  {
    v11 = *(v0 + 80);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_7_15();
    OUTLINED_FUNCTION_15_8();
    *(v4 + 4) = OUTLINED_FUNCTION_9_10(4.8751e-34, v12, v13, v14, v15, v16, v17, v18, v19, v45);
    OUTLINED_FUNCTION_2_22();
    _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    OUTLINED_FUNCTION_0_27();
    OUTLINED_FUNCTION_8_14();
  }

  v25 = *(v0 + 80);
  sub_220C8CBBC();
LABEL_11:
  v42 = *(v0 + 88);
  v41 = *(v0 + 96);

  OUTLINED_FUNCTION_2_3();

  return v43();
}

uint64_t sub_220C8C07C()
{
  OUTLINED_FUNCTION_1_3();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_220C9F7D4();
  v1[5] = v4;
  OUTLINED_FUNCTION_14(v4);
  v1[6] = v5;
  v7 = *(v6 + 64);
  v1[7] = OUTLINED_FUNCTION_31();
  v8 = OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_220C8C124()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 32);
  v2 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v1[24]);
  v7 = (OUTLINED_FUNCTION_34() + 16);
  v8 = (*v7 + **v7);
  v3 = (*v7)[1];
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_33(v4);

  return v8(v5);
}

uint64_t sub_220C8C238()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_10_10();
  *v2 = v1;
  v4 = *(v3 + 64);
  v5 = *(v3 + 32);
  v6 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  *(v9 + 112) = v8;

  v10 = OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_220C8C334()
{
  OUTLINED_FUNCTION_23();
  if (qword_2812D1768 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v1 = v0[4];
  v2 = sub_220CA0A84();
  v0[9] = __swift_project_value_buffer(v2, qword_2812D1770);

  v3 = sub_220CA0A64();
  sub_220CA0DA4();
  OUTLINED_FUNCTION_30();
  if (OUTLINED_FUNCTION_26_0())
  {
    OUTLINED_FUNCTION_13_7();
    OUTLINED_FUNCTION_7_15();
    OUTLINED_FUNCTION_15_8();
    *(v1 + 4) = OUTLINED_FUNCTION_9_10(4.8751e-34, v4, v5, v6, v7, v8, v9, v10, v11, v21);
    OUTLINED_FUNCTION_2_22();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    OUTLINED_FUNCTION_0_27();
    OUTLINED_FUNCTION_8_14();
  }

  v17 = v0[7];
  sub_220C9F7B4();
  v18 = swift_task_alloc();
  v0[10] = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_28_0(v18);
  OUTLINED_FUNCTION_41();

  return sub_220C8CCE8();
}

uint64_t sub_220C8C470()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_3_2();
  v2 = v1;
  OUTLINED_FUNCTION_10_10();
  *v3 = v2;
  v5 = v4[10];
  v6 = v4[7];
  v7 = v4[6];
  v8 = v4[5];
  v9 = v4[4];
  v10 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v11 = v10;
  *(v2 + 113) = v12;

  v13 = *(v7 + 8);
  *(v2 + 88) = v13;
  *(v2 + 96) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v6, v8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_220C8C5E0()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 113);
  v2 = *(v0 + 72);
  v3 = *(v0 + 32);

  v4 = sub_220CA0A64();
  sub_220CA0DA4();
  OUTLINED_FUNCTION_30();
  v5 = OUTLINED_FUNCTION_26_0();
  if (v1 != 1)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

LABEL_13:
    OUTLINED_FUNCTION_13_7();
    OUTLINED_FUNCTION_7_15();
    OUTLINED_FUNCTION_15_8();
    *(v3 + 4) = OUTLINED_FUNCTION_9_10(4.8751e-34, v40, v41, v42, v43, v44, v45, v46, v47, v57);
    OUTLINED_FUNCTION_2_22();
    _os_log_impl(v48, v49, v50, v51, v52, 0xCu);
    OUTLINED_FUNCTION_0_27();
    OUTLINED_FUNCTION_8_14();
LABEL_14:

    v53 = *(v0 + 56);
    v54 = *(v0 + 24);
    sub_220C8CAC4(*(v0 + 32), *(v0 + 16));

    OUTLINED_FUNCTION_2_3();
    OUTLINED_FUNCTION_41();

    __asm { BRAA            X1, X16 }
  }

  if (v5)
  {
    OUTLINED_FUNCTION_13_7();
    OUTLINED_FUNCTION_7_15();
    OUTLINED_FUNCTION_15_8();
    *(v3 + 4) = OUTLINED_FUNCTION_9_10(4.8751e-34, v6, v7, v8, v9, v10, v11, v12, v13, v57);
    OUTLINED_FUNCTION_2_22();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    OUTLINED_FUNCTION_0_27();
    OUTLINED_FUNCTION_8_14();
  }

  v19 = *(v0 + 72);
  v20 = *(v0 + 112);
  v3 = *(v0 + 32);

  v4 = sub_220CA0A64();
  sub_220CA0DA4();
  OUTLINED_FUNCTION_30();
  v21 = OUTLINED_FUNCTION_26_0();
  if (v20 != 1)
  {
    if (!v21)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v21)
  {
    OUTLINED_FUNCTION_13_7();
    OUTLINED_FUNCTION_7_15();
    OUTLINED_FUNCTION_15_8();
    *(v3 + 4) = OUTLINED_FUNCTION_9_10(4.8751e-34, v22, v23, v24, v25, v26, v27, v28, v29, v57);
    OUTLINED_FUNCTION_2_22();
    _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
    OUTLINED_FUNCTION_0_27();
    OUTLINED_FUNCTION_8_14();
  }

  v35 = *(v0 + 56);
  v36 = *(v0 + 32);
  sub_220C8CBBC();
  sub_220C9F7B4();
  v37 = swift_task_alloc();
  *(v0 + 104) = v37;
  *v37 = v0;
  OUTLINED_FUNCTION_28_0(v37);
  OUTLINED_FUNCTION_41();

  return sub_220C8CCE8();
}

uint64_t sub_220C8C838()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_10_10();
  *v2 = v1;
  v4 = v3[13];
  v5 = v3[12];
  v6 = v3[11];
  v7 = v3[7];
  v8 = v3[5];
  v9 = v3[4];
  v10 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v11 = v10;
  *(v13 + 114) = v12;

  v6(v7, v8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_220C8C9A4()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 114);
  v2 = *(v0 + 72);
  v3 = *(v0 + 32);

  v4 = sub_220CA0A64();
  sub_220CA0DA4();
  OUTLINED_FUNCTION_30();
  v5 = OUTLINED_FUNCTION_26_0();
  if (v1 == 1)
  {
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else if (!v5)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_7_15();
  OUTLINED_FUNCTION_15_8();
  *(v3 + 4) = OUTLINED_FUNCTION_9_10(4.8751e-34, v6, v7, v8, v9, v10, v11, v12, v13, v23);
  OUTLINED_FUNCTION_2_22();
  _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
  OUTLINED_FUNCTION_0_27();
  OUTLINED_FUNCTION_8_14();
LABEL_6:

  v19 = *(v0 + 56);
  v20 = *(v0 + 24);
  sub_220C8CAC4(*(v0 + 32), *(v0 + 16));

  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_41();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_220C8CAC4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_220C9F7D4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_startTime;
  swift_beginAccess();
  sub_220C8E3CC(v7, a1 + v9);
  swift_endAccess();
  v10 = *(a1 + OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_task);
  *(a1 + OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_task) = 0;

  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_220C8CBBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  OUTLINED_FUNCTION_14_1(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_8_12();
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_startTime;
  swift_beginAccess();
  sub_220C8E43C(v0 + v7, v6, &qword_27CF7BC30, &qword_220CA4AE0);
  v8 = sub_220C9F7D4();
  LODWORD(v7) = __swift_getEnumTagSinglePayload(v6, 1, v8);
  result = sub_220C71714(v6, &qword_27CF7BC30, &qword_220CA4AE0);
  if (v7 != 1)
  {
    v10 = v0[20];
    __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
    v11 = *(v10 + 8);
    v12 = OUTLINED_FUNCTION_34();
    v14 = v13(v12, v10);
    v15 = *(v0 + OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_task);
    *(v0 + OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_task) = v14;
  }

  return result;
}

uint64_t sub_220C8CCE8()
{
  OUTLINED_FUNCTION_1_3();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_220CA0B54();
  v1[14] = v3;
  OUTLINED_FUNCTION_14(v3);
  v1[15] = v4;
  v6 = *(v5 + 64);
  v1[16] = OUTLINED_FUNCTION_31();
  v7 = sub_220CA0B94();
  v1[17] = v7;
  OUTLINED_FUNCTION_14(v7);
  v1[18] = v8;
  v10 = *(v9 + 64);
  v1[19] = OUTLINED_FUNCTION_31();
  v11 = sub_220CA0B44();
  v1[20] = v11;
  OUTLINED_FUNCTION_14(v11);
  v1[21] = v12;
  v14 = *(v13 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v15 = sub_220CA0BB4();
  v1[24] = v15;
  OUTLINED_FUNCTION_14(v15);
  v1[25] = v16;
  v18 = *(v17 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v19 = sub_220CA0E14();
  v1[28] = v19;
  OUTLINED_FUNCTION_14(v19);
  v1[29] = v20;
  v22 = *(v21 + 64);
  v1[30] = OUTLINED_FUNCTION_31();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  OUTLINED_FUNCTION_14_1(v23);
  v25 = *(v24 + 64);
  v1[31] = OUTLINED_FUNCTION_31();
  v26 = sub_220C9F7D4();
  v1[32] = v26;
  OUTLINED_FUNCTION_14(v26);
  v1[33] = v27;
  v29 = *(v28 + 64);
  v1[34] = OUTLINED_FUNCTION_31();
  v30 = OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_220C8CF5C()
{
  v100 = v0;
  if (qword_2812D1768 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v1 = *(v0 + 13);
  v2 = sub_220CA0A84();
  v3 = __swift_project_value_buffer(v2, qword_2812D1770);
  *(v0 + 35) = v3;

  v4 = sub_220CA0A64();
  sub_220CA0DA4();
  OUTLINED_FUNCTION_40();
  if (OUTLINED_FUNCTION_26_0())
  {
    v5 = *(v0 + 13);
    v6 = OUTLINED_FUNCTION_25_0();
    v7 = OUTLINED_FUNCTION_24_0();
    v99 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_220BFC484(*(v5 + 112), *(v5 + 120), &v99);
    OUTLINED_FUNCTION_35();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_6_13();
  }

  v13 = *(v0 + 31);
  v14 = *(v0 + 32);
  v15 = *(v0 + 13);
  v16 = OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_startTime;
  swift_beginAccess();
  sub_220C8E43C(v15 + v16, v13, &qword_27CF7BC30, &qword_220CA4AE0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_220C71714(*(v0 + 31), &qword_27CF7BC30, &qword_220CA4AE0);
LABEL_20:
    v62 = *(v0 + 13);

    v63 = sub_220CA0A64();
    sub_220CA0DA4();
    OUTLINED_FUNCTION_40();
    if (OUTLINED_FUNCTION_26_0())
    {
      v64 = *(v0 + 13);
      OUTLINED_FUNCTION_25_0();
      v99 = OUTLINED_FUNCTION_7_15();
      *v3 = 136446210;
      *(v3 + 4) = sub_220BFC484(*(v64 + 112), *(v64 + 120), &v99);
      OUTLINED_FUNCTION_2_22();
      _os_log_impl(v65, v66, v67, v68, v69, 0xCu);
      OUTLINED_FUNCTION_0_27();
      OUTLINED_FUNCTION_8_14();
    }

    v70 = 1;
    goto LABEL_23;
  }

  v17 = *(v0 + 13);
  (*(*(v0 + 33) + 32))(*(v0 + 34), *(v0 + 31), *(v0 + 32));
  v18 = *(v17 + OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_task);
  *(v0 + 36) = v18;
  v19 = *(v0 + 34);
  if (!v18)
  {
    (*(*(v0 + 33) + 8))(*(v0 + 34), *(v0 + 32));
    goto LABEL_20;
  }

  v20 = *(v0 + 12);
  v21 = *(v0 + 13);

  sub_220C9F774();
  v0[37] = v22;
  v23 = *(v21 + 208);
  v0[38] = v23;
  v24 = v23 - v22;
  if (v23 - v22 > 0.0)
  {
    v25 = *(v0 + 29);
    v26 = *(v0 + 30);
    v27 = *(v0 + 28);
    v28 = *(v0 + 13);
    v97 = v28[14];
    v98 = v18;
    *(v0 + 39) = v97;
    v96 = v28[15];
    *(v0 + 40) = v96;
    sub_220BF9260(0, &qword_2812CE760, 0x277D85CA0);
    v94 = v28[27];
    *(v0 + 11) = MEMORY[0x277D84F90];
    sub_220C8E5EC(&qword_2812CE768, MEMORY[0x277D85278]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D7A0, &unk_220CB2268);
    sub_220BF8A20(&qword_2812CE798, &qword_27CF7D7A0, &unk_220CB2268);
    sub_220CA0F14();
    *(v0 + 41) = sub_220CA0E24();
    (*(v25 + 8))(v26, v27);

    v29 = sub_220CA0A64();
    sub_220CA0DA4();
    OUTLINED_FUNCTION_40();
    if (OUTLINED_FUNCTION_26_0())
    {
      v30 = swift_slowAlloc();
      v31 = OUTLINED_FUNCTION_24_0();
      v99 = v31;
      OUTLINED_FUNCTION_32(3.8521e-34);
      *(v30 + 14) = sub_220BFC484(v97, v96, &v99);
      OUTLINED_FUNCTION_35();
      _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6_13();
    }

    v37 = *(v0 + 26);
    ObjectType = swift_getObjectType();
    *(v0 + 42) = ObjectType;
    sub_220CA0BA4();
    v39 = v24 * 1000.0;
    if (COERCE_UNSIGNED_INT64(v24 * 1000.0) >> 52 > 0x7FE)
    {
      __break(1u);
    }

    else if (v39 > -9.22337204e18)
    {
      v95 = ObjectType;
      if (v39 < 9.22337204e18)
      {
        v41 = *(v0 + 26);
        v40 = *(v0 + 27);
        v42 = *(v0 + 24);
        v43 = *(v0 + 25);
        v44 = *(v0 + 23);
        v87 = *(v0 + 22);
        v46 = *(v0 + 20);
        v45 = *(v0 + 21);
        v47 = *(v0 + 18);
        v92 = v47;
        v93 = *(v0 + 17);
        v88 = *(v0 + 19);
        v89 = *(v0 + 16);
        v90 = *(v0 + 15);
        v91 = *(v0 + 14);
        *v44 = v39;
        (*(v45 + 104))(v44, *MEMORY[0x277D85178], v46);
        MEMORY[0x223D94F40](v41, v44);
        v48 = *(v45 + 8);
        v49 = OUTLINED_FUNCTION_37();
        v48(v49);
        v86 = *(v43 + 8);
        v86(v41, v42);
        sub_220C8DC40(v44);
        sub_220C8DCB4(v87);
        MEMORY[0x223D95200](v40, v44, v87, v95);
        (v48)(v87, v46);
        v50 = OUTLINED_FUNCTION_37();
        v48(v50);
        v86(v40, v42);
        v51 = swift_allocObject();
        *(v51 + 16) = v24;
        *(v51 + 24) = v97;
        *(v51 + 32) = v96;
        *(v51 + 40) = v98;
        *(v0 + 6) = sub_220C8E3BC;
        *(v0 + 7) = v51;
        *(v0 + 2) = MEMORY[0x277D85DD0];
        *(v0 + 3) = 1107296256;
        *(v0 + 4) = sub_220C01EFC;
        *(v0 + 5) = &block_descriptor_3;
        v52 = _Block_copy(v0 + 2);

        sub_220CA0B64();
        sub_220C8DEC8();
        sub_220CA0E34();
        _Block_release(v52);
        (*(v90 + 8))(v89, v91);
        (*(v92 + 8))(v88, v93);
        v53 = *(v0 + 7);

        sub_220CA0E54();

        v54 = sub_220CA0A64();
        sub_220CA0DA4();

        if (OUTLINED_FUNCTION_26_0())
        {
          swift_slowAlloc();
          v99 = OUTLINED_FUNCTION_7_15();
          *v95 = 134218242;
          *(v95 + 4) = v24;
          *(v95 + 12) = 2082;
          *(v95 + 14) = sub_220BFC484(v97, v96, &v99);
          OUTLINED_FUNCTION_2_22();
          _os_log_impl(v55, v56, v57, v58, v59, 0x16u);
          OUTLINED_FUNCTION_0_27();
          OUTLINED_FUNCTION_8_14();
        }

        v60 = *(MEMORY[0x277D857E0] + 4);
        v61 = swift_task_alloc();
        *(v0 + 43) = v61;
        *v61 = v0;
        v61[1] = sub_220C8D8A8;

        return MEMORY[0x282200460]();
      }

LABEL_32:
      __break(1u);
      return MEMORY[0x282200460]();
    }

    __break(1u);
    goto LABEL_32;
  }

  v76 = *(v0 + 13);

  v77 = sub_220CA0A64();
  v78 = sub_220CA0DA4();

  v79 = os_log_type_enabled(v77, v78);
  v81 = *(v0 + 33);
  v80 = *(v0 + 34);
  v82 = *(v0 + 32);
  if (v79)
  {
    v83 = *(v0 + 13);
    v84 = OUTLINED_FUNCTION_25_0();
    v99 = OUTLINED_FUNCTION_24_0();
    v85 = v99;
    *v84 = 136446210;
    *(v84 + 4) = sub_220BFC484(*(v83 + 112), *(v83 + 120), &v99);
    _os_log_impl(&dword_220BF4000, v77, v78, "No time left to wait on the flush - %{public}s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v85);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  else
  {
  }

  (*(v81 + 8))(v80, v82);
  v70 = 0;
LABEL_23:
  v71 = *(v0 + 34);
  v73 = *(v0 + 30);
  v72 = *(v0 + 31);
  OUTLINED_FUNCTION_39();

  v74 = *(v0 + 1);

  return v74(v70);
}

uint64_t sub_220C8D8A8()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v2 = *(v1 + 344);
  v3 = *(v1 + 104);
  v4 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_5_14();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_220C8D9A0()
{
  v2 = v0[36];
  isCancelled = swift_task_isCancelled();
  if (isCancelled)
  {
    v4 = v0[40];
    v5 = v0[35];

    v6 = sub_220CA0A64();
    v7 = sub_220CA0DA4();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[41];
    if (v8)
    {
      v11 = v0[39];
      v10 = v0[40];
      v13 = v0[37];
      v12 = v0[38];
      OUTLINED_FUNCTION_29_0();
      v14 = swift_slowAlloc();
      v15 = OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_32(3.8521e-34);
      v16 = OUTLINED_FUNCTION_37();
      *(v14 + 14) = sub_220BFC484(v16, v17, v18);
      OUTLINED_FUNCTION_35();
      v24 = 22;
LABEL_6:
      _os_log_impl(v19, v20, v21, v22, v23, v24);
      __swift_destroy_boxed_opaque_existential_1(v15);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6_13();

      swift_unknownObjectRelease();

      (*(v1 + 8))();
      goto LABEL_8;
    }
  }

  else
  {
    v26 = v0[41];
    v25 = v0[42];
    v27 = v0[40];
    v28 = v0[35];
    sub_220CA0E44();

    v6 = sub_220CA0A64();
    v29 = sub_220CA0DA4();

    v30 = os_log_type_enabled(v6, v29);
    v31 = v0[41];
    if (v30)
    {
      v33 = v0[39];
      v32 = v0[40];
      OUTLINED_FUNCTION_29_0();
      v34 = OUTLINED_FUNCTION_25_0();
      v15 = OUTLINED_FUNCTION_24_0();
      *v34 = 136446210;
      v35 = OUTLINED_FUNCTION_37();
      *(v34 + 4) = sub_220BFC484(v35, v36, v37);
      OUTLINED_FUNCTION_35();
      v24 = 12;
      goto LABEL_6;
    }
  }

  v38 = v0[36];
  v40 = v0[33];
  v39 = v0[34];
  v41 = v0[32];
  swift_unknownObjectRelease();

  (*(v40 + 8))(v39, v41);
LABEL_8:
  v42 = v0[34];
  v44 = v0[30];
  v43 = v0[31];
  OUTLINED_FUNCTION_39();

  v45 = v0[1];

  return v45((isCancelled & 1) == 0);
}

uint64_t sub_220C8DC40@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85180];
  v3 = sub_220CA0B44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_220C8DCB4@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_220CA0B44();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_220C8DD2C(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  if (qword_2812D1768 != -1)
  {
    swift_once();
  }

  v8 = sub_220CA0A84();
  __swift_project_value_buffer(v8, qword_2812D1770);

  v9 = sub_220CA0A64();
  v10 = sub_220CA0D94();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 134218242;
    *(v11 + 4) = a4;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_220BFC484(a1, a2, &v17);
    _os_log_impl(&dword_220BF4000, v9, v10, "Timer is cancelling the task after waiting %fs - %{public}s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x223D95B30](v12, -1, -1);
    MEMORY[0x223D95B30](v11, -1, -1);
  }

  v13 = MEMORY[0x277D84A98];
  v14 = MEMORY[0x277D84AC0];
  v15 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200438](a3, v15, v13, v14);
}

uint64_t sub_220C8DEC8()
{
  sub_220CA0B54();
  sub_220C8E5EC(&qword_2812D1760, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF30, &qword_220CA6BB0);
  sub_220BF8A20(&qword_2812D1748, &qword_27CF7BF30, &qword_220CA6BB0);
  return sub_220CA0F14();
}

uint64_t sub_220C8DFA0()
{
  v1 = *(v0 + 120);

  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  __swift_destroy_boxed_opaque_existential_1((v0 + 168));

  sub_220C71714(v0 + OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_startTime, &qword_27CF7BC30, &qword_220CA4AE0);
  v2 = *(v0 + OBJC_IVAR____TtCC16WeatherAnalytics30WidgetTimelineTelemetryManager5Actor_task);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_220C8E010()
{
  sub_220C8DFA0();

  return MEMORY[0x282200960](v0);
}

void sub_220C8E044()
{
  sub_220C8E118();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_220C8E118()
{
  if (!qword_2812D0F40)
  {
    sub_220C9F7D4();
    v0 = sub_220CA0EE4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812D0F40);
    }
  }
}

uint64_t sub_220C8E1E0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_220C8E2D8;

  return v7(a1);
}

uint64_t sub_220C8E2D8()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  OUTLINED_FUNCTION_2_3();

  return v5();
}

uint64_t sub_220C8E3CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C8E43C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220C8E49C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_18_3(v3);
  *v4 = v5;
  v4[1] = sub_220C8E634;
  v6 = OUTLINED_FUNCTION_17_5();

  return v7(v6);
}

uint64_t sub_220C8E544()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_18_3(v3);
  *v4 = v5;
  v4[1] = sub_220C28A7C;
  v6 = OUTLINED_FUNCTION_17_5();

  return v7(v6);
}

uint64_t sub_220C8E5EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_24_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_26_0()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_28_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 56);
}

void OUTLINED_FUNCTION_29_0()
{
  v1 = v0[33];
  v4 = v0[34];
  v2 = v0[36];
  v3 = v0[32];
}

uint64_t OUTLINED_FUNCTION_30()
{
}

uint64_t OUTLINED_FUNCTION_31()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_32(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2082;
}

uint64_t OUTLINED_FUNCTION_39()
{
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[19];
  v7 = v0[16];
}

uint64_t OUTLINED_FUNCTION_40()
{
}

uint64_t WidgetRefreshEventData.widget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t WidgetRefreshEventData.widget.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(v1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t sub_220C8E804(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746567646977 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C8E890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C8E804(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C8E8BC(uint64_t a1)
{
  v2 = sub_220C8EA9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C8E8F8(uint64_t a1)
{
  v2 = sub_220C8EA9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetRefreshEventData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D7B0, &qword_220CB22A0);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  HIDWORD(v15) = *(v1 + 16);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C8EA9C();

  sub_220CA1254();
  v16 = v11;
  v17 = v12;
  v18 = BYTE4(v15);
  sub_220C4674C();
  sub_220CA1104();

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_220C8EA9C()
{
  result = qword_27CF7D7B8;
  if (!qword_27CF7D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D7B8);
  }

  return result;
}

uint64_t WidgetRefreshEventData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D7C0, &qword_220CB22A8);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C8EA9C();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C469B8();
    sub_220CA1034();
    (*(v8 + 8))(v12, v5);
    v14 = v17[2];
    v15 = v18;
    *a2 = v17[1];
    *(a2 + 8) = v14;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for WidgetRefreshEventData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C8ED54()
{
  result = qword_27CF7D7C8;
  if (!qword_27CF7D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D7C8);
  }

  return result;
}

unint64_t sub_220C8EDAC()
{
  result = qword_27CF7D7D0;
  if (!qword_27CF7D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D7D0);
  }

  return result;
}

unint64_t sub_220C8EE04()
{
  result = qword_27CF7D7D8;
  if (!qword_27CF7D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D7D8);
  }

  return result;
}

uint64_t dispatch thunk of WidgetAnalyticsCoordinatorType.enter()()
{
  OUTLINED_FUNCTION_23();
  v2 = *(v1 + 8);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_7_16(v4);

  return v6(v5);
}

uint64_t sub_220C8EF5C()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_6_14();
  v3 = *(v2 + 16);
  v4 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  OUTLINED_FUNCTION_4_18();

  return v6(v0);
}

uint64_t dispatch thunk of WidgetAnalyticsCoordinatorType.leave()()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_3_20(v1);
  v9 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_7_16(v5);

  return v7(v6);
}

void *sub_220C8F138(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for WidgetAnalyticsCoordinator.Actor();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = 0;
  v3[3] = a2;
  v3[4] = v6;
  v3[2] = a1;
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = a2 + 32;

    do
    {
      sub_220BF92A0(v8, v12);
      v9 = v13;
      v10 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v10 + 8))(v9, v10);
      __swift_destroy_boxed_opaque_existential_1(v12);
      v8 += 40;
      --v7;
    }

    while (v7);
  }

  else
  {
  }

  return v3;
}

uint64_t sub_220C8F250()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_0_28(sub_220C8F270, v1);
}

uint64_t sub_220C8F270()
{
  OUTLINED_FUNCTION_1_3();
  v1 = *(v0 + 24);
  sub_220C8F608();
  OUTLINED_FUNCTION_4_18();
  v4 = v3 & 1;

  return v2(v4);
}

uint64_t sub_220C8F2E8()
{
  OUTLINED_FUNCTION_1_3();
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_220C8F37C;

  return sub_220C8F628(v2);
}

uint64_t sub_220C8F37C()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_6_14();
  v3 = *(v2 + 24);
  v4 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  OUTLINED_FUNCTION_4_18();

  return v6(v0);
}

void *sub_220C8F460()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_220C8F490()
{
  sub_220C8F460();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_220C8F4E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_220C8EF5C;

  return sub_220C8F234();
}

uint64_t sub_220C8F578()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_220C8FA38;

  return sub_220C8F2CC();
}

BOOL sub_220C8F608()
{
  v1 = *(v0 + 112);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    result = v1 == 0;
    *(v0 + 112) = v1 + 1;
  }

  return result;
}

uint64_t sub_220C8F628(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_220C8F648, v1, 0);
}

uint64_t sub_220C8F648()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[3];
  v2 = *(v1 + 112);
  v3 = v2 == 1;
  v4 = v2 < 1;
  v5 = v2 - 1;
  if (!v4 && (*(v1 + 112) = v5, v3) && (v8 = v0[2], v9 = v8[2], (v0[4] = v9) != 0))
  {
    v0[5] = 0;
    v10 = v8[8];
    __swift_project_boxed_opaque_existential_1(v8 + 4, v8[7]);
    OUTLINED_FUNCTION_3_20(v10);
    v17 = v11 + *v11;
    v13 = *(v12 + 4);
    v14 = swift_task_alloc();
    v0[6] = v14;
    *v14 = v0;
    v15 = OUTLINED_FUNCTION_1_30(v14);

    return v16(v15);
  }

  else
  {
    OUTLINED_FUNCTION_4_18();

    return v6();
  }
}

uint64_t sub_220C8F79C()
{
  OUTLINED_FUNCTION_1_3();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_220C8F8A0, v2, 0);
}

uint64_t sub_220C8F8A0()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[5] + 1;
  if (v1 == v0[4])
  {
    OUTLINED_FUNCTION_4_18();
    v3 = 1;
  }

  else
  {
    v0[5] = v1;
    v4 = (v0[2] + 40 * v1);
    v5 = v4[8];
    __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
    OUTLINED_FUNCTION_3_20(v5);
    v11 = v6 + *v6;
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v3 = OUTLINED_FUNCTION_1_30();
  }

  return v2(v3);
}

uint64_t sub_220C8F9E0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_220C8FA3C()
{
  v0 = sub_220C9FF64();
  __swift_allocate_value_buffer(v0, qword_27CF7D7E0);
  v1 = __swift_project_value_buffer(v0, qword_27CF7D7E0);
  *v1 = 0xD000000000000020;
  *(v1 + 8) = 0x8000000220CB6680;
  *(v1 + 16) = 4;
  *(v1 + 24) = 0;
  v2 = *MEMORY[0x277CEACB0];
  v3 = *(*(v0 - 8) + 104);

  return v3();
}

uint64_t sub_220C8FB2C()
{
  v0 = sub_220CA01B4();
  __swift_allocate_value_buffer(v0, qword_27CF7D7F8);
  v1 = __swift_project_value_buffer(v0, qword_27CF7D7F8);
  v2 = *MEMORY[0x277CEADB8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_220C8FBEC()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7D810);
  __swift_project_value_buffer(v0, qword_27CF7D810);
  return sub_220CA0244();
}

uint64_t ReportWeatherEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t ReportWeatherEvent.eventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t ReportWeatherEvent.locationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ReportWeatherEvent.locationData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_14_0();

  return v6(v5);
}

uint64_t ReportWeatherEvent.locationData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 20);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.feedbackUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ReportWeatherEvent.feedbackUserData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_14_0();

  return v6(v5);
}

uint64_t ReportWeatherEvent.feedbackUserData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 24);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.conditionsFeedbackData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D828, &qword_220CB2598);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ReportWeatherEvent.conditionsFeedbackData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D828, &qword_220CB2598);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_14_0();

  return v6(v5);
}

uint64_t ReportWeatherEvent.conditionsFeedbackData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 28);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.temperatureFeedbackData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 32);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D830, &unk_220CB25A0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ReportWeatherEvent.temperatureFeedbackData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 32);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D830, &unk_220CB25A0);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_14_0();

  return v6(v5);
}

uint64_t ReportWeatherEvent.temperatureFeedbackData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 32);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.locationConditionData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 36);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ReportWeatherEvent.locationConditionData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 36);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_14_0();

  return v6(v5);
}

uint64_t ReportWeatherEvent.locationConditionData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 36);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.forecastAgeData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D838, &qword_220CB25B0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ReportWeatherEvent.forecastAgeData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D838, &qword_220CB25B0);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_14_0();

  return v6(v5);
}

uint64_t ReportWeatherEvent.forecastAgeData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 40);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.windFeedbackData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D840, &qword_220CB25B8);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ReportWeatherEvent.windFeedbackData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D840, &qword_220CB25B8);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_14_0();

  return v6(v5);
}

uint64_t ReportWeatherEvent.windFeedbackData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 44);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.aqiFeedbackData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D848, &qword_220CB25C0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ReportWeatherEvent.aqiFeedbackData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D848, &qword_220CB25C0);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_14_0();

  return v6(v5);
}

uint64_t ReportWeatherEvent.aqiFeedbackData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 48);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.otherConditionsFeedbackData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 52);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D850, &qword_220CB25C8);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ReportWeatherEvent.otherConditionsFeedbackData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 52);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D850, &qword_220CB25C8);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_14_0();

  return v6(v5);
}

uint64_t ReportWeatherEvent.otherConditionsFeedbackData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 52);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.descriptionFeedbackData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D858, &qword_220CB25D0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ReportWeatherEvent.descriptionFeedbackData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D858, &qword_220CB25D0);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_14_0();

  return v6(v5);
}

uint64_t ReportWeatherEvent.descriptionFeedbackData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 56);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.weatherJSONData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 60);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D860, &qword_220CB25D8);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ReportWeatherEvent.weatherJSONData.setter()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 60);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D860, &qword_220CB25D8);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_14_0();

  return v6(v5);
}

uint64_t ReportWeatherEvent.weatherJSONData.modify()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for ReportWeatherEvent(v0) + 60);
  return OUTLINED_FUNCTION_13();
}

uint64_t ReportWeatherEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0(v3);
  (*(v4 + 104))(a1, v2);
  v5 = type metadata accessor for ReportWeatherEvent(0);
  v6 = v5[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_16_0();
  v11(v10);
  v12 = v5[6];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0(v13);
  v15 = *(v14 + 104);
  v16 = OUTLINED_FUNCTION_16_0();
  v17(v16);
  v18 = v5[7];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D828, &qword_220CB2598);
  OUTLINED_FUNCTION_0_0(v19);
  v21 = *(v20 + 104);
  v22 = OUTLINED_FUNCTION_16_0();
  v23(v22);
  v24 = v5[8];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D830, &unk_220CB25A0);
  OUTLINED_FUNCTION_0_0(v25);
  v27 = *(v26 + 104);
  v28 = OUTLINED_FUNCTION_16_0();
  v29(v28);
  v30 = v5[9];
  v31 = *MEMORY[0x277CEACF0];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
  OUTLINED_FUNCTION_0_0(v32);
  v34 = *(v33 + 104);
  v35 = OUTLINED_FUNCTION_15_9();
  v36(v35);
  v37 = v5[10];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D838, &qword_220CB25B0);
  OUTLINED_FUNCTION_0_0(v38);
  v40 = *(v39 + 104);
  v41 = OUTLINED_FUNCTION_15_9();
  v42(v41);
  v43 = v5[11];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D840, &qword_220CB25B8);
  OUTLINED_FUNCTION_0_0(v44);
  (*(v45 + 104))(a1 + v43, v2);
  v46 = v5[12];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D848, &qword_220CB25C0);
  OUTLINED_FUNCTION_0_0(v47);
  v49 = *(v48 + 104);
  v50 = OUTLINED_FUNCTION_15_9();
  v51(v50);
  v52 = v5[13];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D850, &qword_220CB25C8);
  OUTLINED_FUNCTION_0_0(v53);
  v55 = *(v54 + 104);
  v56 = OUTLINED_FUNCTION_15_9();
  v57(v56);
  v58 = v5[14];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D858, &qword_220CB25D0);
  OUTLINED_FUNCTION_0_0(v59);
  v61 = *(v60 + 104);
  v62 = OUTLINED_FUNCTION_15_9();
  v63(v62);
  v64 = v5[15];
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D860, &qword_220CB25D8);
  OUTLINED_FUNCTION_0_0(v65);
  v67 = *(v66 + 104);

  return v67(a1 + v64, v2);
}

uint64_t ReportWeatherEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  v2 = sub_220CA0494();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

__n128 ReportWeatherEvent.Model.locationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for ReportWeatherEvent.Model(v2) + 20));
  *v0 = result;
  return result;
}

uint64_t ReportWeatherEvent.Model.feedbackUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ReportWeatherEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t ReportWeatherEvent.Model.conditionsFeedbackData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ReportWeatherEvent.Model(v2);
  v4 = v1 + *(result + 28);
  *v0 = *v4;
  *(v0 + 1) = *(v4 + 1);
  return result;
}

uint64_t ReportWeatherEvent.Model.temperatureFeedbackData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ReportWeatherEvent.Model(v2);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  LODWORD(v4) = *(v4 + 1);
  *v0 = v5;
  *(v0 + 4) = v4;
  return result;
}

__n128 ReportWeatherEvent.Model.locationConditionData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for ReportWeatherEvent.Model(v2) + 36));
  *v0 = result;
  return result;
}

uint64_t ReportWeatherEvent.Model.forecastAgeData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ReportWeatherEvent.Model(v2);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *v0 = v5;
  *(v0 + 4) = v4;
  return result;
}

double ReportWeatherEvent.Model.windFeedbackData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = v1 + *(type metadata accessor for ReportWeatherEvent.Model(v2) + 44);
  v4 = *(v3 + 12);
  *v0 = *v3;
  result = *(v3 + 4);
  *(v0 + 4) = result;
  *(v0 + 12) = v4;
  return result;
}

uint64_t ReportWeatherEvent.Model.aqiFeedbackData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = v1 + *(type metadata accessor for ReportWeatherEvent.Model(v2) + 48);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = *(v3 + 32);
  *v0 = *v3;
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  *(v0 + 32) = v6;
}

uint64_t ReportWeatherEvent.Model.otherConditionsFeedbackData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ReportWeatherEvent.Model(v2);
  v4 = (v1 + *(result + 52));
  v5 = *v4;
  *(v0 + 4) = *(v4 + 2);
  *v0 = v5;
  return result;
}

uint64_t ReportWeatherEvent.Model.descriptionFeedbackData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ReportWeatherEvent.Model(v2);
  *v0 = *(v1 + *(result + 56));
  return result;
}

uint64_t ReportWeatherEvent.Model.weatherJSONData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ReportWeatherEvent.Model(v2) + 60));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

__n128 ReportWeatherEvent.Model.init(eventData:locationData:feedbackUserData:conditionsFeedbackData:temperatureFeedbackData:locationConditionData:forecastAgeData:windFeedbackData:aqiFeedbackData:otherConditionsFeedbackData:descriptionFeedbackData:weatherJSONData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, int *a7@<X6>, _BYTE *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, int *a11, uint64_t *a12, uint64_t *a13)
{
  v13 = a8;
  v17 = *a2;
  v18 = a2[1];
  v19 = *a3;
  v20 = a3[1];
  v21 = *(a3 + 4);
  v22 = *(a3 + 20);
  v23 = *a4;
  v42 = *a5;
  v41 = *(a5 + 1);
  v44 = *a6;
  v43 = a6[1];
  v46 = *a7;
  v45 = *(a7 + 4);
  v47 = *a8;
  v48 = a8[12];
  v49 = *(a10 + 32);
  v50 = *(a11 + 2);
  v51 = *a12;
  v53 = *a13;
  v54 = *a11;
  v52 = a13[1];
  v24 = sub_220CA0494();
  OUTLINED_FUNCTION_0_0(v24);
  v39 = *(a10 + 16);
  v40 = *a10;
  v26 = *(v13 + 4);
  LODWORD(v13) = *(a4 + 1);
  (*(v25 + 32))(a9, a1);
  v27 = type metadata accessor for ReportWeatherEvent.Model(0);
  v28 = (a9 + v27[5]);
  *v28 = v17;
  v28[1] = v18;
  v29 = a9 + v27[6];
  *v29 = v19;
  *(v29 + 8) = v20;
  *(v29 + 16) = v21;
  *(v29 + 20) = v22;
  v30 = a9 + v27[7];
  *v30 = v23;
  *(v30 + 1) = v13;
  v31 = a9 + v27[8];
  *v31 = v42;
  *(v31 + 4) = v41;
  v32 = (a9 + v27[9]);
  *v32 = v44;
  v32[1] = v43;
  v33 = a9 + v27[10];
  *v33 = v46;
  *(v33 + 4) = v45;
  v34 = a9 + v27[11];
  *v34 = v47;
  *(v34 + 4) = v26;
  *(v34 + 12) = v48;
  v35 = a9 + v27[12];
  result = v40;
  *v35 = v40;
  *(v35 + 16) = v39;
  *(v35 + 32) = v49;
  v37 = a9 + v27[13];
  *(v37 + 4) = v50;
  *v37 = v54;
  *(a9 + v27[14]) = v51;
  v38 = (a9 + v27[15]);
  *v38 = v53;
  v38[1] = v52;
  return result;
}

uint64_t sub_220C9129C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000220CB65C0 == a2;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x8000000220CB65E0 == a2;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x8000000220CB6600 == a2;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x8000000220CB4CD0 == a2;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7473616365726F66 && a2 == 0xEF61746144656741;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x8000000220CB6620 == a2;
                if (v12 || (sub_220CA1154() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6264656546697161 && a2 == 0xEF617461446B6361;
                  if (v13 || (sub_220CA1154() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001BLL && 0x8000000220CB6640 == a2;
                    if (v14 || (sub_220CA1154() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000017 && 0x8000000220CB6660 == a2;
                      if (v15 || (sub_220CA1154() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x4A72656874616577 && a2 == 0xEF617461444E4F53)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_220CA1154();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_220C91660(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461636F6CLL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 10:
      result = 0xD000000000000017;
      break;
    case 5:
      v3 = 5;
      goto LABEL_10;
    case 6:
      result = 0x7473616365726F66;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6264656546697161;
      break;
    case 9:
      v3 = 11;
LABEL_10:
      result = v3 | 0xD000000000000010;
      break;
    case 11:
      result = 0x4A72656874616577;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C917EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C9129C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C91814@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C91658();
  *a1 = result;
  return result;
}

uint64_t sub_220C9183C(uint64_t a1)
{
  v2 = sub_220C91D24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C91878(uint64_t a1)
{
  v2 = sub_220C91D24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReportWeatherEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D868, &qword_220CB25E0);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v37 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C91D24();
  sub_220CA1254();
  LOBYTE(v37) = 0;
  sub_220CA0494();
  sub_220C04FCC(&qword_2812D0D90);
  OUTLINED_FUNCTION_1_1();
  sub_220CA1104();
  if (!v2)
  {
    v14 = type metadata accessor for ReportWeatherEvent.Model(0);
    v37 = *(v3 + v14[5]);
    v41 = 1;
    sub_220C05568();
    OUTLINED_FUNCTION_2_23();
    sub_220CA1104();
    v15 = (v3 + v14[6]);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v15 + 4);
    LOBYTE(v15) = *(v15 + 20);
    *&v37 = v16;
    *(&v37 + 1) = v17;
    LODWORD(v38) = v18;
    BYTE4(v38) = v15;
    v41 = 2;
    v19 = sub_220BFF788();

    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_1_1();
    sub_220CA1104();
    if (!v19)
    {

      v20 = v3 + v14[7];
      LOBYTE(v37) = *v20;
      *(&v37 + 1) = *(v20 + 1);
      v41 = 3;
      sub_220C18EA4();
      OUTLINED_FUNCTION_2_23();
      sub_220CA1104();
      v21 = (v3 + v14[8]);
      v22 = *v21;
      LODWORD(v21) = *(v21 + 1);
      LOBYTE(v37) = v22;
      DWORD1(v37) = v21;
      v41 = 4;
      sub_220C65974();
      OUTLINED_FUNCTION_2_23();
      sub_220CA1104();
      v37 = *(v3 + v14[9]);
      v41 = 5;
      sub_220C054C0();
      OUTLINED_FUNCTION_2_23();
      sub_220CA1094();
      v23 = (v3 + v14[10]);
      v24 = *v23;
      LOBYTE(v23) = *(v23 + 4);
      LODWORD(v37) = v24;
      BYTE4(v37) = v23;
      v41 = 6;
      sub_220C91D78();
      OUTLINED_FUNCTION_2_23();
      sub_220CA1094();
      v25 = v3 + v14[11];
      v26 = *(v25 + 12);
      LOBYTE(v37) = *v25;
      *(&v37 + 4) = *(v25 + 4);
      BYTE12(v37) = v26;
      v41 = 7;
      sub_220C68AC0();
      OUTLINED_FUNCTION_2_23();
      sub_220CA1104();
      v28 = (v3 + v14[12]);
      v29 = *(v28 + 2);
      v30 = *(v28 + 3);
      v31 = *(v28 + 32);
      v37 = *v28;
      v38 = v29;
      v39 = v30;
      v40 = v31;
      v41 = 8;
      v32 = sub_220C663E4();

      OUTLINED_FUNCTION_3_13();
      OUTLINED_FUNCTION_1_1();
      sub_220CA1094();
      if (!v32)
      {

        v33 = (v3 + v14[13]);
        v34 = *v33;
        WORD2(v37) = *(v33 + 2);
        LODWORD(v37) = v34;
        v41 = 9;
        sub_220C295A0();
        OUTLINED_FUNCTION_2_23();
        sub_220CA1094();
        *&v37 = *(v3 + v14[14]);
        v41 = 10;
        sub_220C5FCE8();
        OUTLINED_FUNCTION_2_23();
        sub_220CA1094();
        v35 = (v3 + v14[15]);
        v36 = v35[1];
        *&v37 = *v35;
        *(&v37 + 1) = v36;
        v41 = 11;
        sub_220C1434C();

        OUTLINED_FUNCTION_3_13();
        OUTLINED_FUNCTION_1_1();
        sub_220CA1104();
      }
    }
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C91D24()
{
  result = qword_27CF7D870;
  if (!qword_27CF7D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D870);
  }

  return result;
}

unint64_t sub_220C91D78()
{
  result = qword_27CF7D878;
  if (!qword_27CF7D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D878);
  }

  return result;
}

uint64_t ReportWeatherEvent.Model.init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_6();
  v4 = sub_220CA0494();
  v5 = OUTLINED_FUNCTION_3(v4);
  v50 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D880, &qword_220CB25E8);
  v11 = OUTLINED_FUNCTION_3(v49);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v51 = type metadata accessor for ReportWeatherEvent.Model(0);
  v16 = OUTLINED_FUNCTION_1(v51);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v52 = a1;
  v53 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C91D24();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v47 = v1;
  v48 = v13;
  LOBYTE(v54) = 0;
  sub_220C04FCC(&qword_2812D0D88);
  sub_220CA1034();
  v21 = v4;
  v22 = v53;
  (*(v50 + 32))(v53, v10, v21);
  v57 = 1;
  sub_220C05514();
  OUTLINED_FUNCTION_0_29();
  sub_220CA1034();
  v23 = v51;
  *&v22[v51[5]] = v54;
  v57 = 2;
  sub_220BFF730();
  OUTLINED_FUNCTION_0_29();
  sub_220CA1034();
  v24 = *(&v54 + 1);
  v25 = v55;
  v26 = BYTE4(v55);
  v27 = &v22[v23[6]];
  *v27 = v54;
  *(v27 + 1) = v24;
  *(v27 + 4) = v25;
  v27[20] = v26;
  v57 = 3;
  sub_220C18E4C();
  OUTLINED_FUNCTION_0_29();
  sub_220CA1034();
  v28 = &v22[v23[7]];
  *v28 = v54;
  *(v28 + 1) = *(&v54 + 1);
  v57 = 4;
  sub_220C6591C();
  OUTLINED_FUNCTION_0_29();
  sub_220CA1034();
  v29 = DWORD1(v54);
  v30 = &v22[v23[8]];
  *v30 = v54;
  *(v30 + 1) = v29;
  v57 = 5;
  sub_220C0546C();
  OUTLINED_FUNCTION_0_29();
  sub_220CA0FC4();
  *&v22[v23[9]] = v54;
  v57 = 6;
  sub_220C9243C();
  OUTLINED_FUNCTION_0_29();
  sub_220CA0FC4();
  v31 = BYTE4(v54);
  v32 = &v22[v23[10]];
  *v32 = v54;
  v32[4] = v31;
  v57 = 7;
  sub_220C68A68();
  OUTLINED_FUNCTION_0_29();
  sub_220CA1034();
  v33 = BYTE12(v54);
  v34 = &v22[v51[11]];
  *v34 = v54;
  *(v34 + 4) = *(&v54 + 4);
  v34[12] = v33;
  v57 = 8;
  sub_220C6638C();
  OUTLINED_FUNCTION_0_29();
  sub_220CA0FC4();
  v35 = v56;
  v36 = &v22[v51[12]];
  v37 = v55;
  *v36 = v54;
  *(v36 + 1) = v37;
  v36[32] = v35;
  v57 = 9;
  sub_220C29548();
  OUTLINED_FUNCTION_0_29();
  sub_220CA0FC4();
  v38 = v54;
  v39 = &v53[v51[13]];
  *(v39 + 2) = WORD2(v54);
  *v39 = v38;
  v57 = 10;
  sub_220C5FC90();
  OUTLINED_FUNCTION_13_8();
  sub_220CA0FC4();
  *&v53[v51[14]] = v54;
  v57 = 11;
  sub_220C142F4();
  OUTLINED_FUNCTION_13_8();
  sub_220CA1034();
  v40 = OUTLINED_FUNCTION_17_6();
  v41(v40);
  v42 = *(&v54 + 1);
  v43 = v53;
  v44 = &v53[v51[15]];
  *v44 = v54;
  *(v44 + 1) = v42;
  sub_220C92490(v43, v47);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return sub_220C924F4(v43);
}

unint64_t sub_220C9243C()
{
  result = qword_27CF7D888;
  if (!qword_27CF7D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D888);
  }

  return result;
}

uint64_t sub_220C92490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportWeatherEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C924F4(uint64_t a1)
{
  v2 = type metadata accessor for ReportWeatherEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C925B8()
{
  sub_220C04EB8();
  if (v0 <= 0x3F)
  {
    sub_220C92994(319, &qword_2812D0E38, sub_220C05514, sub_220C05568);
    if (v1 <= 0x3F)
    {
      sub_220C92994(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788);
      if (v2 <= 0x3F)
      {
        sub_220C92994(319, &qword_27CF7D8A0, sub_220C18E4C, sub_220C18EA4);
        if (v3 <= 0x3F)
        {
          sub_220C92994(319, &qword_27CF7D8A8, sub_220C6591C, sub_220C65974);
          if (v4 <= 0x3F)
          {
            sub_220C92994(319, &qword_2812D0DF0, sub_220C0546C, sub_220C054C0);
            if (v5 <= 0x3F)
            {
              sub_220C92994(319, &qword_27CF7D8B0, sub_220C9243C, sub_220C91D78);
              if (v6 <= 0x3F)
              {
                sub_220C92994(319, &qword_27CF7D8B8, sub_220C68A68, sub_220C68AC0);
                if (v7 <= 0x3F)
                {
                  sub_220C92994(319, &qword_27CF7D8C0, sub_220C6638C, sub_220C663E4);
                  if (v8 <= 0x3F)
                  {
                    sub_220C92994(319, &qword_27CF7D8C8, sub_220C29548, sub_220C295A0);
                    if (v9 <= 0x3F)
                    {
                      sub_220C92994(319, &qword_27CF7D8D0, sub_220C5FC90, sub_220C5FCE8);
                      if (v10 <= 0x3F)
                      {
                        sub_220C92994(319, &qword_27CF7D8D8, sub_220C142F4, sub_220C1434C);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_220C92994(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_220CA0044();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_220C92A38()
{
  sub_220CA0494();
  if (v0 <= 0x3F)
  {
    sub_220BFE7B0(319, &qword_27CF7D030);
    if (v1 <= 0x3F)
    {
      sub_220BFE7B0(319, &qword_27CF7D8F0);
      if (v2 <= 0x3F)
      {
        sub_220BFE7B0(319, &qword_27CF7D8F8);
        if (v3 <= 0x3F)
        {
          sub_220BFE7B0(319, &qword_27CF7D900);
          if (v4 <= 0x3F)
          {
            sub_220BFE7B0(319, &qword_27CF7D908);
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

uint64_t getEnumTagSinglePayload for ReportWeatherEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ReportWeatherEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C92D10()
{
  result = qword_27CF7D910;
  if (!qword_27CF7D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D910);
  }

  return result;
}

unint64_t sub_220C92D68()
{
  result = qword_27CF7D918;
  if (!qword_27CF7D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D918);
  }

  return result;
}

unint64_t sub_220C92DC0()
{
  result = qword_27CF7D920;
  if (!qword_27CF7D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D920);
  }

  return result;
}

uint64_t sub_220C92E60(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000220CB66B0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C92EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C92E60(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C92F0C(uint64_t a1)
{
  v2 = sub_220C01674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C92F48(uint64_t a1)
{
  v2 = sub_220C01674();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TemperatureScaleData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D930, &qword_220CB2898);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C01674();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C930E4();
    sub_220CA1034();
    (*(v8 + 8))(v12, v5);
    *a2 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C930E4()
{
  result = qword_2812D01A8;
  if (!qword_2812D01A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D01A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemperatureScaleData(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C93220()
{
  result = qword_27CF7D938;
  if (!qword_27CF7D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D938);
  }

  return result;
}

unint64_t sub_220C93274(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x6E69646F636F6567;
      break;
    case 2:
      result = 0x6B726F7774656ELL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6552746567646977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t WidgetAssembly.load(in:)()
{
  v0 = sub_220CA0704();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220CA0654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D150, &qword_220CAF6B0);
  OUTLINED_FUNCTION_0_22();
  sub_220CA06A4();

  sub_220CA0654();
  sub_220CA0074();
  OUTLINED_FUNCTION_0_22();
  sub_220CA06A4();

  v5 = v1[13];
  v5(v4, *MEMORY[0x277D6CF08], v0);
  sub_220CA0554();

  v6 = v1[1];
  v6(v4, v0);
  sub_220CA0654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D3F8, &qword_220CB2B40);
  OUTLINED_FUNCTION_0_22();
  sub_220CA06B4();

  sub_220CA0654();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D940, &qword_220CB2B48);
  OUTLINED_FUNCTION_0_22();
  sub_220CA06B4();

  v5(v4, *MEMORY[0x277D6CF10], v0);
  sub_220CA0554();

  v6(v4, v0);
  sub_220CA0664();
  sub_220CA0694();
}

uint64_t sub_220C935CC(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D198, &unk_220CB2BC0);
  result = sub_220CA0624();
  if (v5)
  {
    type metadata accessor for WidgetDynamicEndpoint();
    v3 = swift_allocObject();
    *(v3 + 16) = 7;
    sub_220C59B10(&v4, v3 + 24);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220C9366C()
{
  v0 = sub_220C9FEF4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_220C93E14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D1A8, &unk_220CAF700);
  sub_220C93E6C();
  sub_220CA0F14();
  v2 = sub_220CA0074();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_220CA0064();
}

uint64_t sub_220C93754@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D198, &unk_220CB2BC0);
  result = sub_220CA0624();
  if (v12)
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D170, &unk_220CAF6D0);
    result = sub_220CA0624();
    if (v10)
    {
      v7 = type metadata accessor for WidgetTelemetryPrivacySampler();
      v8 = swift_allocObject();
      type metadata accessor for AppConfigTelemetryPrivacySampler();
      swift_allocObject();
      result = sub_220BFA138(&v11, &v9);
      *(v8 + 16) = result;
      a2[3] = v7;
      a2[4] = &off_28346CD90;
      *a2 = v8;
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

uint64_t sub_220C93870@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D950, &unk_220CB2BA8);
  result = sub_220CA0624();
  v5 = v26;
  if (v26)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    v7 = *(*(v5 - 8) + 64);
    v8 = MEMORY[0x28223BE20](v6);
    v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    v13 = type metadata accessor for AppAnalyticsFlushManager();
    v24[3] = v13;
    v24[4] = &off_283468FD0;
    v24[0] = v12;
    v14 = type metadata accessor for WidgetFlushManager();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v24, v13);
    v17 = *(*(v13 - 8) + 64);
    v18 = MEMORY[0x28223BE20](v16);
    v20 = (v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v20;
    v15[5] = v13;
    v15[6] = &off_283468FD0;
    v15[2] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D958, &qword_220CB2BB8);
    v23 = swift_allocObject();
    *(v23 + 24) = 0;
    *(v23 + 16) = 0;
    v15[7] = v23;
    __swift_destroy_boxed_opaque_existential_1(v24);
    result = __swift_destroy_boxed_opaque_existential_1(v25);
    a2[3] = v14;
    a2[4] = &off_283466F38;
    *a2 = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220C93AC0()
{
  v0 = sub_220CA0704();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D948, &qword_220CB2BA0);
  sub_220CA06B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D950, &unk_220CB2BA8);
  sub_220CA06B4();
  (*(v1 + 104))(v4, *MEMORY[0x277D6CF10], v0);
  sub_220CA0554();

  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D170, &unk_220CAF6D0);
  sub_220CA06B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D168, &qword_220CB04E0);
  sub_220CA06B4();
}

uint64_t sub_220C93CC8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_220C9FAC4();
  v3 = MEMORY[0x277D7AA38];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_220C9FAB4();
}

uint64_t sub_220C93D0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C9FF44();
  result = sub_220CA0614();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for AppAnalyticsFlushManager();
    result = swift_allocObject();
    *(result + 16) = v5;
    a2[3] = v6;
    a2[4] = &off_283468FD0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_220C93E14()
{
  result = qword_2812D1A20;
  if (!qword_2812D1A20)
  {
    sub_220C9FEF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1A20);
  }

  return result;
}

unint64_t sub_220C93E6C()
{
  result = qword_2812D1758;
  if (!qword_2812D1758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF7D1A8, &unk_220CAF700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1758);
  }

  return result;
}

WeatherAnalytics::DisplayModeType_optional __swiftcall DisplayModeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DisplayModeType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0x6F775479426F7774;
      break;
    case 2:
      v2 = 1114601332;
      goto LABEL_5;
    case 3:
      result = 0x6F46794272756F66;
      break;
    case 4:
      v2 = 1115187571;
LABEL_5:
      result = v2 | 0x756F467900000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C93FC0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_220C3B858();
}

unint64_t sub_220C93FD0()
{
  result = qword_27CF7D960;
  if (!qword_27CF7D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D960);
  }

  return result;
}

uint64_t sub_220C94048@<X0>(uint64_t *a1@<X8>)
{
  result = DisplayModeType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DisplayModeType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C941FC()
{
  result = qword_27CF7D968;
  if (!qword_27CF7D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D968);
  }

  return result;
}

uint64_t sub_220C94250(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned __int8 *a4)
{
  v63 = a1;
  v64 = a4;
  v68 = a2;
  v5 = sub_220CA0A24();
  v6 = OUTLINED_FUNCTION_14(v5);
  v59 = v7;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D970, &qword_220CB2D58);
  v14 = OUTLINED_FUNCTION_14(v13);
  v58 = v15;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v61 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  v21 = sub_220CA09D4();
  v22 = OUTLINED_FUNCTION_14(v21);
  v57 = v23;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v22);
  v27 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v57 - v28;
  v30 = sub_220CA08C4();
  v31 = OUTLINED_FUNCTION_1(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v57 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a3[1];
  v65 = *a3;
  v67 = v36;
  v66 = *(a3 + 4);
  v37 = *(a3 + 20);
  LODWORD(v64) = *v64;
  LODWORD(v62) = *(v62 + 16);
  sub_220C9558C(v63, v35, MEMORY[0x277D7AFD8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = MEMORY[0x277D7B0C8];
    sub_220C954BC(v35, v12, MEMORY[0x277D7B0C8]);
    v39 = v60;
    sub_220C9558C(v12, v60, MEMORY[0x277D7B0C8]);
    v40 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v41 = swift_allocObject();
    sub_220C954BC(v39, v41 + v40, v38);
    *(v41 + v40 + v9) = v64;
    v42 = v41 + ((v40 + v9) & 0xFFFFFFFFFFFFFFF8);
    v43 = v67;
    *(v42 + 8) = v65;
    *(v42 + 16) = v43;
    *(v42 + 24) = v66;
    *(v42 + 28) = v37;

    sub_220CA0444();

    v44 = v12;
    v45 = v38;
  }

  else
  {
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF28, &qword_220CB2D60) + 48);
    v47 = MEMORY[0x277D7B0A0];
    sub_220C954BC(v35, v29, MEMORY[0x277D7B0A0]);
    sub_220C9551C(&v35[v46], v20);
    sub_220C9558C(v29, v27, MEMORY[0x277D7B0A0]);
    LODWORD(v63) = v37;
    v48 = v61;
    sub_220C955EC(v20, v61);
    v49 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v50 = v49 + v25;
    v51 = (*(v58 + 80) + v49 + v25 + 2) & ~*(v58 + 80);
    v52 = swift_allocObject();
    sub_220C954BC(v27, v52 + v49, v47);
    v53 = (v52 + v50);
    *v53 = v64;
    v53[1] = v62;
    sub_220C9551C(v48, v52 + v51);
    v54 = v52 + ((v17 + v51 + 7) & 0xFFFFFFFFFFFFFFF8);
    v55 = v67;
    *v54 = v65;
    *(v54 + 8) = v55;
    *(v54 + 16) = v66;
    *(v54 + 20) = v63;

    sub_220CA0444();

    sub_220C71714(v20, &qword_27CF7D970, &qword_220CB2D58);
    v44 = v29;
    v45 = v47;
  }

  return sub_220C95788(v44, v45);
}

uint64_t sub_220C94744(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(&v66 + 1) = a7;
  v67 = a8;
  *&v66 = a6;
  LODWORD(v65) = a3;
  v68 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D970, &qword_220CB2D58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v17 = sub_220C9F7D4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220CA09C4();
  sub_220C9F794();
  v23 = v22;
  (*(v18 + 8))(v21, v17);
  *&v64 = sub_220C563A8(v23);
  sub_220CA08F4();
  v63 = sub_220C563A8(v24);
  sub_220CA0934();
  v62 = sub_220C563A8(v25);
  sub_220CA0944();
  v61 = sub_220C563A8(v26);
  sub_220CA0954();
  v60 = sub_220C563A8(v27);
  sub_220CA0914();
  v59 = sub_220C563A8(v28);
  v58 = sub_220CA0904();
  v57 = sub_220CA0924();
  v56 = sub_220CA09B4();
  sub_220C6FBA0(v72);
  v55 = v72[0];
  v54 = sub_220CA0964();
  v29 = [objc_opt_self() mainBundle];
  v30 = sub_220BFAF38(v29);
  v32 = v31;
  sub_220C6FCE4(&v71);
  v53 = v71;
  if (a4)
  {
    v33 = sub_220CA09A4();
    v51 = v34;
    v52 = v33;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v35 = a5;
  sub_220C955EC(a5, v16);
  v36 = sub_220CA0994();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v36);
  if (EnumTagSinglePayload == 1)
  {
    sub_220C71714(v16, &qword_27CF7D970, &qword_220CB2D58);
    v38 = 0;
  }

  else
  {
    v38 = sub_220CA0974();
    (*(*(v36 - 8) + 8))(v16, v36);
  }

  sub_220C955EC(v35, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v36) == 1)
  {
    sub_220C71714(v14, &qword_27CF7D970, &qword_220CB2D58);
    v39 = 2;
  }

  else
  {
    v40 = sub_220CA0984();
    (*(*(v36 - 8) + 8))(v14, v36);
    v39 = v40 & 1;
  }

  if (v32)
  {
    v41 = v32;
  }

  else
  {
    v41 = 0x8000000220CB5570;
  }

  if (!v32)
  {
    v30 = 0xD000000000000011;
  }

  v42 = v54 & 1;
  v73 = 0;

  v72[1] = EnumTagSinglePayload == 1;
  *&v69[0] = v64;
  *(&v69[0] + 1) = v63;
  *&v69[1] = v62;
  *(&v69[1] + 1) = v61;
  *&v69[2] = v60;
  *(&v69[2] + 1) = v59;
  LOBYTE(v69[3]) = v73;
  *(&v69[3] + 1) = v58;
  *&v69[4] = v57;
  *(&v69[4] + 1) = v56;
  LOBYTE(v69[5]) = v55;
  BYTE1(v69[5]) = v65;
  BYTE2(v69[5]) = v42;
  *(&v69[5] + 1) = v30;
  *&v69[6] = v41;
  *(&v69[6] + 1) = v53;
  *&v69[7] = v52;
  *(&v69[7] + 1) = v51;
  *&v69[8] = v38;
  BYTE8(v69[8]) = EnumTagSinglePayload == 1;
  BYTE9(v69[8]) = v39;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
  v43 = sub_220CA0054();
  v44 = *(v43 - 8);
  v45 = *(v44 + 72);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v47 = swift_allocObject();
  v64 = xmmword_220CA4A70;
  *(v47 + 16) = xmmword_220CA4A70;
  v48 = *(v44 + 104);
  v48(v47 + v46, *MEMORY[0x277CEAD18], v43);
  v63 = "allowRecordingCDNServer";
  sub_220C957E0();
  sub_220C9FFC4();

  memcpy(v70, v69, 0x8AuLL);
  sub_220C41464(v70);
  v69[0] = v66;
  LODWORD(v69[1]) = v67;
  BYTE4(v69[1]) = BYTE4(v67) & 1;
  v49 = swift_allocObject();
  *(v49 + 16) = v64;
  v48(v49 + v46, *MEMORY[0x277CEAD10], v43);
  sub_220C39228();
  sub_220C9FFC4();

  type metadata accessor for TelemetryEvent();
  sub_220C958DC(&qword_2812D0540, type metadata accessor for TelemetryEvent);
  memset(v69, 0, 32);
  sub_220C9FFD4();
  return sub_220C71714(v69, &qword_27CF7D978, &qword_220CB2D68);
}

uint64_t sub_220C94D8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a4;
  v10 = sub_220C9F804();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220CA0A24();
  if (*(a2 + *(v15 + 24) + 9))
  {
    v16 = sub_220CA0A14();
    v17 = sub_220C563A8(*(a2 + *(v15 + 20)));
    v18 = [objc_opt_self() mainBundle];
    v19 = sub_220BFAF38(v18);
    v21 = 0x8000000220CB5570;
    v22 = 0xD000000000000011;
    if (v20)
    {
      v22 = v19;
      v21 = v20;
    }

    *&v57 = v16;
    *(&v57 + 1) = v17;
    LOBYTE(v58) = a3;
    *(&v58 + 1) = v22;
    *&v59 = v21;
    sub_220C95834();
    sub_220C9FFC4();

    *&v57 = v52;
    *(&v57 + 1) = a5;
    LODWORD(v58) = a6;
    BYTE4(v58) = BYTE4(a6) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
    v23 = sub_220CA0054();
    v24 = *(v23 - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_220CA4A70;
    (*(v24 + 104))(v27 + v26, *MEMORY[0x277CEAD10], v23);
    sub_220C39228();
    sub_220C9FFC4();

    sub_220C9F7F4();
    sub_220C9F7E4();
    (*(v11 + 8))(v14, v10);
    sub_220C9FF74();

    type metadata accessor for NetworkOperationFailedEvent();
    sub_220C958DC(&qword_2812CF308, type metadata accessor for NetworkOperationFailedEvent);
    v57 = 0u;
    v58 = 0u;
    sub_220C9FFD4();
    sub_220C71714(&v57, &qword_27CF7D978, &qword_220CB2D68);
    return sub_220C9FF84();
  }

  else
  {
    sub_220C9F794();
    v30 = sub_220C563A8(v29);
    v31 = sub_220C563A8(*(a2 + *(v15 + 20)));
    v32 = sub_220CA09F4();
    v34 = v33;
    v35 = sub_220CA0A04();
    v36 = sub_220CA0A14();
    v37 = [objc_opt_self() mainBundle];
    v38 = sub_220BFAF38(v37);
    v61 = v34 & 1;
    *&v53 = v30;
    *(&v53 + 1) = v31;
    v40 = 0x8000000220CB5570;
    *&v54 = v32;
    BYTE8(v54) = v34 & 1;
    if (v39)
    {
      v41 = v38;
    }

    else
    {
      v41 = 0xD000000000000011;
    }

    if (v39)
    {
      v40 = v39;
    }

    BYTE9(v54) = v35;
    *&v55 = v36;
    BYTE8(v55) = a3;
    *&v56 = v41;
    *(&v56 + 1) = v40;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
    v42 = sub_220CA0054();
    v43 = *(v42 - 8);
    v44 = *(v43 + 72);
    v50 = a5;
    v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v46 = swift_allocObject();
    v49 = xmmword_220CA4A70;
    *(v46 + 16) = xmmword_220CA4A70;
    v47 = *(v43 + 104);
    v47(v46 + v45, *MEMORY[0x277CEAD18], v42);
    sub_220C95888();
    sub_220C9FFC4();

    v57 = v53;
    v58 = v54;
    v59 = v55;
    v60 = v56;
    sub_220C32880(&v57);
    *&v53 = v52;
    *(&v53 + 1) = v50;
    LODWORD(v54) = a6;
    BYTE4(v54) = BYTE4(a6) & 1;
    v48 = swift_allocObject();
    *(v48 + 16) = v49;
    v47(v48 + v45, *MEMORY[0x277CEAD10], v42);
    sub_220C39228();
    sub_220C9FFC4();

    type metadata accessor for NetworkOperationEvent();
    sub_220C958DC(&qword_2812CFBC0, type metadata accessor for NetworkOperationEvent);
    v53 = 0u;
    v54 = 0u;
    sub_220C9FFD4();
    return sub_220C71714(&v53, &qword_27CF7D978, &qword_220CB2D68);
  }
}

uint64_t sub_220C95408(uint64_t a1)
{
  v3 = sub_220CA0A24();
  OUTLINED_FUNCTION_14(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = v1 + (v9 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  v14 = *(v10 + 28);
  v15 = *(v1 + v9);

  return sub_220C94D8C(a1, v1 + v8, v15, v11, v12, v13 | (v14 << 32));
}

uint64_t sub_220C954BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220C9551C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D970, &qword_220CB2D58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C9558C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220C955EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D970, &qword_220CB2D58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C9565C(uint64_t a1)
{
  v3 = sub_220CA09D4();
  OUTLINED_FUNCTION_14(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D970, &qword_220CB2D58);
  OUTLINED_FUNCTION_14(v8);
  v10 = v9;
  v12 = v11;
  v13 = (v7 + *(v10 + 80) + 2) & ~*(v10 + 80);
  v14 = *(v1 + v7 + 1);
  v15 = v1 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = *(v15 + 16);
  v19 = *(v15 + 20);
  v20 = *(v1 + v7);

  return sub_220C94744(a1, v1 + v5, v20, v14, v1 + v13, v16, v17, v18 | (v19 << 32));
}

uint64_t sub_220C95788(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_220C957E0()
{
  result = qword_2812D0208;
  if (!qword_2812D0208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0208);
  }

  return result;
}

unint64_t sub_220C95834()
{
  result = qword_2812CEC50;
  if (!qword_2812CEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC50);
  }

  return result;
}

unint64_t sub_220C95888()
{
  result = qword_2812CF480;
  if (!qword_2812CF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF480);
  }

  return result;
}

uint64_t sub_220C958DC(unint64_t *a1, void (*a2)(uint64_t))
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

WeatherAnalytics::CurrentLocationUpdateFailureReason_optional __swiftcall CurrentLocationUpdateFailureReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t CurrentLocationUpdateFailureReason.rawValue.getter()
{
  result = 0x74754F656D6974;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x73696D7265506F6ELL;
      break;
    case 3:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C95A08(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_220C3A53C();
}

unint64_t sub_220C95A18()
{
  result = qword_27CF7D980;
  if (!qword_27CF7D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D980);
  }

  return result;
}

unint64_t sub_220C95A90@<X0>(unint64_t *a1@<X8>)
{
  result = CurrentLocationUpdateFailureReason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CurrentLocationUpdateFailureReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C95C44()
{
  result = qword_27CF7D988;
  if (!qword_27CF7D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D988);
  }

  return result;
}

uint64_t sub_220C95D60()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7D9A8);
  __swift_project_value_buffer(v0, qword_27CF7D9A8);
  return sub_220CA0244();
}

uint64_t WeatherDataLoadEvent.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D9C0, &qword_220CB2EB0);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t WeatherDataLoadEvent.data.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D9C0, &qword_220CB2EB0);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t WeatherDataLoadEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for WeatherDataLoadEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t WeatherDataLoadEvent.timedData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for WeatherDataLoadEvent(v2) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*WeatherDataLoadEvent.timedData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for WeatherDataLoadEvent(v0) + 20);
  return nullsub_1;
}

uint64_t WeatherDataLoadEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for WeatherDataLoadEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t WeatherDataLoadEvent.privateUserData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for WeatherDataLoadEvent(v2) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*WeatherDataLoadEvent.privateUserData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for WeatherDataLoadEvent(v0) + 24);
  return nullsub_1;
}

uint64_t WeatherDataLoadEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D9C0, &qword_220CB2EB0);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 104))(a1, v2);
  Event = type metadata accessor for WeatherDataLoadEvent(0);
  v6 = *(Event + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v7);
  (*(v8 + 104))(a1 + v6, v2);
  v9 = *(Event + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v10);
  v12 = *(v11 + 104);

  return v12(a1 + v9, v2);
}

void WeatherDataLoadEvent.Model.data.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t WeatherDataLoadEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for WeatherDataLoadEvent.Model(v0) + 20);
  v2 = sub_220CA04D4();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t WeatherDataLoadEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for WeatherDataLoadEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t WeatherDataLoadEvent.Model.init(data:timedData:privateUserData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a1[1];
  v7 = *a3;
  v8 = a3[1];
  v9 = *(a3 + 4);
  v10 = *(a3 + 20);
  *a4 = *a1;
  a4[1] = v6;
  v11 = type metadata accessor for WeatherDataLoadEvent.Model(0);
  v12 = *(v11 + 20);
  v13 = sub_220CA04D4();
  OUTLINED_FUNCTION_1(v13);
  result = (*(v14 + 32))(&a4[v12], a2);
  v16 = &a4[*(v11 + 24)];
  *v16 = v7;
  *(v16 + 1) = v8;
  *(v16 + 4) = v9;
  v16[20] = v10;
  return result;
}

uint64_t sub_220C96418(uint64_t a1)
{
  v2 = sub_220C966B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C96454(uint64_t a1)
{
  v2 = sub_220C966B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WeatherDataLoadEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D9C8, &qword_220CB2EB8);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v22 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C966B8();
  sub_220CA1254();
  v14 = v3[1];
  LOBYTE(v23) = *v3;
  BYTE1(v23) = v14;
  v27 = 0;
  sub_220C62B2C();
  sub_220CA1104();
  if (!v2)
  {
    v15 = type metadata accessor for WeatherDataLoadEvent.Model(0);
    v16 = *(v15 + 20);
    LOBYTE(v23) = 1;
    sub_220CA04D4();
    sub_220C315AC(&qword_2812D0D80);
    sub_220CA1104();
    v17 = &v3[*(v15 + 24)];
    v18 = *v17;
    v19 = *(v17 + 1);
    v20 = *(v17 + 4);
    LOBYTE(v17) = v17[20];
    v23 = v18;
    v24 = v19;
    v25 = v20;
    v26 = v17;
    v27 = 2;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C966B8()
{
  result = qword_27CF7D9D0;
  if (!qword_27CF7D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D9D0);
  }

  return result;
}

uint64_t WeatherDataLoadEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v39 = sub_220CA04D4();
  v3 = OUTLINED_FUNCTION_3(v39);
  v37 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7D9D8, &qword_220CB2EC0);
  v9 = OUTLINED_FUNCTION_3(v40);
  v38 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = type metadata accessor for WeatherDataLoadEvent.Model(0);
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C966B8();
  v20 = v41;
  sub_220CA1234();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = a1;
  v21 = v39;
  v46 = 0;
  sub_220C62AD4();
  sub_220CA1034();
  v22 = BYTE1(v42);
  *v18 = v42;
  v35 = v18;
  v18[1] = v22;
  LOBYTE(v42) = 1;
  sub_220C315AC(&qword_2812D0D78);
  v23 = v8;
  sub_220CA1034();
  v24 = *(v37 + 32);
  v25 = v35;
  v34 = *(v13 + 20);
  v24(&v35[v34], v23, v21);
  v46 = 2;
  sub_220BFF730();
  sub_220CA1034();
  v26 = OUTLINED_FUNCTION_3_21();
  v27(v26);
  v28 = v43;
  v29 = v44;
  v30 = v45;
  v31 = v25 + *(v13 + 24);
  *v31 = v42;
  *(v31 + 8) = v28;
  *(v31 + 16) = v29;
  *(v31 + 20) = v30;
  sub_220C96A88(v25, v36);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_220C96AEC(v25);
}

uint64_t sub_220C96A88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataLoadEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C96AEC(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataLoadEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C96BB0()
{
  sub_220C96CBC(319, &qword_2812D0E40, sub_220C62AD4, sub_220C62B2C);
  if (v0 <= 0x3F)
  {
    sub_220C05010();
    if (v1 <= 0x3F)
    {
      sub_220C96CBC(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220C96CBC(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_220CA0044();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_220C96D60()
{
  result = sub_220CA04D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherDataLoadEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C96EC4()
{
  result = qword_27CF7D9F0;
  if (!qword_27CF7D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7D9F0);
  }

  return result;
}