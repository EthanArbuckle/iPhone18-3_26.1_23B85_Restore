uint64_t sub_220C1F474(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5565746176697270 && a2 == 0xEF61746144726573;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6174614477656976 && a2 == 0xE800000000000000;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74614464656D6974 && a2 == 0xE900000000000061;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6174614465707974 && a2 == 0xE800000000000000;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4D79616C70736964 && a2 == 0xEF6174614465646FLL;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144)
            {

              return 6;
            }

            else
            {
              v12 = sub_220CA1154();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_220C1F6D0(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x5565746176697270;
      break;
    case 2:
      v3 = 2003134838;
      goto LABEL_5;
    case 3:
      result = 0x74614464656D6974;
      break;
    case 4:
      v3 = 1701869940;
LABEL_5:
      result = v3 | 0x6174614400000000;
      break;
    case 5:
      result = 0x4D79616C70736964;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C1F7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C1F474(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C1F7E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C1F6C8();
  *a1 = result;
  return result;
}

uint64_t sub_220C1F80C(uint64_t a1)
{
  v2 = sub_220C1FBA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C1F848(uint64_t a1)
{
  v2 = sub_220C1FBA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B908, &qword_220CA3728);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v30 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1FBA4();
  sub_220CA1254();
  LOBYTE(v31) = 0;
  sub_220CA0494();
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v14, v15);
  OUTLINED_FUNCTION_17();
  if (!v2)
  {
    v16 = type metadata accessor for WidgetExposureEvent.Model(0);
    v17 = (v3 + v16[5]);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v17 + 4);
    LOBYTE(v17) = *(v17 + 20);
    v31 = v18;
    v32 = v19;
    v33 = v20;
    v34 = v17;
    HIBYTE(v30) = 1;
    v21 = sub_220BFF788();

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_17();
    if (v21)
    {
      goto LABEL_4;
    }

    v22 = (v3 + v16[6]);
    v23 = *v22;
    v24 = v22[1];
    LOWORD(v22) = *(v22 + 8);
    v31 = v23;
    v32 = v24;
    LOWORD(v33) = v22;
    HIBYTE(v30) = 2;
    v25 = sub_220C04820();

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_17();
    if (v25)
    {
LABEL_4:
    }

    else
    {

      v27 = v16[7];
      LOBYTE(v31) = 3;
      sub_220CA04D4();
      OUTLINED_FUNCTION_5_0();
      sub_220C04F84(v28, v29);
      OUTLINED_FUNCTION_17();
      LOBYTE(v31) = *(v3 + v16[8]);
      HIBYTE(v30) = 4;
      sub_220C1FBF8();
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_17();
      LOBYTE(v31) = *(v3 + v16[9]);
      HIBYTE(v30) = 5;
      sub_220C1FC4C();
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_17();
      LOBYTE(v31) = *(v3 + v16[10]);
      HIBYTE(v30) = 6;
      sub_220C1FCA0();
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_17();
    }
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C1FBA4()
{
  result = qword_27CF7B910;
  if (!qword_27CF7B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B910);
  }

  return result;
}

unint64_t sub_220C1FBF8()
{
  result = qword_27CF7B918;
  if (!qword_27CF7B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B918);
  }

  return result;
}

unint64_t sub_220C1FC4C()
{
  result = qword_27CF7B920;
  if (!qword_27CF7B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B920);
  }

  return result;
}

unint64_t sub_220C1FCA0()
{
  result = qword_27CF7B928;
  if (!qword_27CF7B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B928);
  }

  return result;
}

uint64_t WidgetExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = sub_220CA04D4();
  v4 = OUTLINED_FUNCTION_3(v41);
  v38 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v10 = v9 - v8;
  v11 = sub_220CA0494();
  v12 = OUTLINED_FUNCTION_3(v11);
  v40 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v18 = v17 - v16;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B930, &qword_220CA3730);
  v19 = OUTLINED_FUNCTION_3(v39);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v43 = type metadata accessor for WidgetExposureEvent.Model(0);
  v22 = OUTLINED_FUNCTION_1(v43);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11();
  v42 = v26 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C1FBA4();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v44) = 0;
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v28, v29);
  sub_220CA1034();
  (*(v40 + 32))(v42, v18, v11);
  sub_220BFF730();
  OUTLINED_FUNCTION_15_1();
  v30 = v42 + v43[5];
  *v30 = v44;
  *(v30 + 8) = v45;
  *(v30 + 16) = v46;
  *(v30 + 20) = v47;
  sub_220C0449C();
  OUTLINED_FUNCTION_15_1();
  v31 = v42 + v43[6];
  *v31 = v44;
  *(v31 + 8) = v45;
  *(v31 + 16) = v46;
  OUTLINED_FUNCTION_5_0();
  sub_220C04F84(v32, v33);
  sub_220CA1034();
  (*(v38 + 32))(v42 + v43[7], v10, v41);
  sub_220C20298();
  OUTLINED_FUNCTION_7_0();
  *(v42 + v43[8]) = 3;
  sub_220C202EC();
  OUTLINED_FUNCTION_7_0();
  *(v42 + v43[9]) = 3;
  sub_220C20340();
  OUTLINED_FUNCTION_7_0();
  v34 = OUTLINED_FUNCTION_13_0();
  v35(v34, v39);
  *(v42 + v43[10]) = 3;
  sub_220C20394(v42, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C203F8(v42);
}

unint64_t sub_220C20298()
{
  result = qword_27CF7B938;
  if (!qword_27CF7B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B938);
  }

  return result;
}

unint64_t sub_220C202EC()
{
  result = qword_27CF7B940;
  if (!qword_27CF7B940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B940);
  }

  return result;
}

unint64_t sub_220C20340()
{
  result = qword_27CF7B948;
  if (!qword_27CF7B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B948);
  }

  return result;
}

uint64_t sub_220C20394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C203F8(uint64_t a1)
{
  v2 = type metadata accessor for WidgetExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C204BC()
{
  sub_220C04EB8();
  if (v0 <= 0x3F)
  {
    sub_220C206D0(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788);
    if (v1 <= 0x3F)
    {
      sub_220C206D0(319, &qword_2812D0DB8, sub_220C0449C, sub_220C04820);
      if (v2 <= 0x3F)
      {
        sub_220C05010();
        if (v3 <= 0x3F)
        {
          sub_220C206D0(319, &qword_27CF7B960, sub_220C20298, sub_220C1FBF8);
          if (v4 <= 0x3F)
          {
            sub_220C206D0(319, &qword_27CF7B968, sub_220C202EC, sub_220C1FC4C);
            if (v5 <= 0x3F)
            {
              sub_220C206D0(319, &qword_27CF7B970, sub_220C20340, sub_220C1FCA0);
              if (v6 <= 0x3F)
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

void sub_220C206D0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_220C20774()
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

uint64_t getEnumTagSinglePayload for DeviceOrientation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WidgetExposureEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C20994()
{
  result = qword_27CF7B988;
  if (!qword_27CF7B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B988);
  }

  return result;
}

unint64_t sub_220C209EC()
{
  result = qword_27CF7B990;
  if (!qword_27CF7B990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B990);
  }

  return result;
}

unint64_t sub_220C20A44()
{
  result = qword_27CF7B998;
  if (!qword_27CF7B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B998);
  }

  return result;
}

uint64_t sub_220C20B60()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_2812CF960);
  __swift_project_value_buffer(v0, qword_2812CF960);
  return sub_220CA0244();
}

uint64_t ComponentExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t ComponentExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t ComponentExposureEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ComponentExposureEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ComponentExposureEvent.timedData.setter()
{
  v0 = *(OUTLINED_FUNCTION_13_1() + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t ComponentExposureEvent.orientationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ComponentExposureEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ComponentExposureEvent.orientationData.setter()
{
  v0 = *(OUTLINED_FUNCTION_13_1() + 24);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t ComponentExposureEvent.locationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ComponentExposureEvent(v0) + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ComponentExposureEvent.locationData.setter()
{
  v0 = *(OUTLINED_FUNCTION_13_1() + 28);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t ComponentExposureEvent.hostViewData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ComponentExposureEvent(v0) + 32);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ComponentExposureEvent.hostViewData.setter()
{
  v0 = *(OUTLINED_FUNCTION_13_1() + 32);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t ComponentExposureEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ComponentExposureEvent(v0) + 36);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ComponentExposureEvent.privateUserData.setter()
{
  v0 = *(OUTLINED_FUNCTION_13_1() + 36);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t ComponentExposureEvent.componentData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ComponentExposureEvent(v0) + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A8, &qword_220CA39A0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ComponentExposureEvent.componentData.setter()
{
  v0 = *(OUTLINED_FUNCTION_13_1() + 40);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A8, &qword_220CA39A0);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t ComponentExposureEvent.componentPositionData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ComponentExposureEvent(v0) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B0, &qword_220CA39A8);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ComponentExposureEvent.componentPositionData.setter()
{
  v0 = *(OUTLINED_FUNCTION_13_1() + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B0, &qword_220CA39A8);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t ComponentExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0(v3);
  (*(v4 + 104))(a1, v2);
  v5 = type metadata accessor for ComponentExposureEvent(0);
  v6 = v5[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_16_0();
  v11(v10);
  v12 = v5[6];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0(v13);
  v15 = *(v14 + 104);
  v16 = OUTLINED_FUNCTION_16_0();
  v17(v16);
  v18 = v5[7];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0(v19);
  v21 = *(v20 + 104);
  v22 = OUTLINED_FUNCTION_16_0();
  v23(v22);
  v24 = v5[8];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0(v25);
  v27 = *(v26 + 104);
  v28 = OUTLINED_FUNCTION_16_0();
  v29(v28);
  v30 = v5[9];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0(v31);
  v33 = *(v32 + 104);
  v34 = OUTLINED_FUNCTION_16_0();
  v35(v34);
  v36 = v5[10];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A8, &qword_220CA39A0);
  OUTLINED_FUNCTION_0_0(v37);
  v39 = *(v38 + 104);
  v40 = OUTLINED_FUNCTION_16_0();
  v41(v40);
  v42 = v5[11];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B0, &qword_220CA39A8);
  OUTLINED_FUNCTION_0_0(v43);
  v45 = *(v44 + 104);

  return v45(a1 + v42, v2);
}

uint64_t ComponentExposureEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  v2 = sub_220CA0494();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t ComponentExposureEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ComponentExposureEvent.Model(v0) + 20);
  v2 = sub_220CA04D4();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ComponentExposureEvent.Model.orientationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ComponentExposureEvent.Model(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

__n128 ComponentExposureEvent.Model.locationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for ComponentExposureEvent.Model(v2) + 28));
  *v0 = result;
  return result;
}

uint64_t ComponentExposureEvent.Model.hostViewData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ComponentExposureEvent.Model(v2) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
}

uint64_t ComponentExposureEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ComponentExposureEvent.Model(v2) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t ComponentExposureEvent.Model.componentData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for ComponentExposureEvent.Model(v2);
  *v0 = *(v1 + *(result + 40));
  return result;
}

double ComponentExposureEvent.Model.componentPositionData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for ComponentExposureEvent.Model(v2) + 44));
  *v0 = result;
  return result;
}

uint64_t ComponentExposureEvent.Model.init(eventData:timedData:orientationData:locationData:hostViewData:privateUserData:componentData:componentPositionData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a3;
  v14 = *a4;
  v15 = a4[1];
  v16 = *a5;
  v17 = a5[1];
  v18 = *(a5 + 8);
  v32 = a6[1];
  v33 = *a6;
  v19 = *(a6 + 4);
  v20 = *(a6 + 20);
  v34 = *a7;
  v21 = sub_220CA0494();
  OUTLINED_FUNCTION_0_0(v21);
  v23 = *a8;
  (*(v22 + 32))(a9, a1);
  v24 = type metadata accessor for ComponentExposureEvent.Model(0);
  v25 = v24[5];
  v26 = sub_220CA04D4();
  OUTLINED_FUNCTION_0_0(v26);
  result = (*(v27 + 32))(a9 + v25, a2);
  *(a9 + v24[6]) = v13;
  v29 = (a9 + v24[7]);
  *v29 = v14;
  v29[1] = v15;
  v30 = a9 + v24[8];
  *v30 = v16;
  *(v30 + 8) = v17;
  *(v30 + 16) = v18;
  v31 = a9 + v24[9];
  *v31 = v33;
  *(v31 + 8) = v32;
  *(v31 + 16) = v19;
  *(v31 + 20) = v20;
  *(a9 + v24[10]) = v34;
  *(a9 + v24[11]) = v23;
  return result;
}

uint64_t sub_220C21AA0(uint64_t a1, uint64_t a2)
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

    else
    {
      v7 = a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7765695674736F68 && a2 == 0xEC00000061746144;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x5565746176697270 && a2 == 0xEF61746144726573;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E656E6F706D6F63 && a2 == 0xED00006174614474;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000015 && 0x8000000220CB4C90 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_220CA1154();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_220C21D54(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      v3 = 0x4464656D6974;
      goto LABEL_5;
    case 2:
      v3 = 0x746E6569726FLL;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    case 4:
      result = 0x7765695674736F68;
      break;
    case 5:
      result = 0x5565746176697270;
      break;
    case 6:
      result = 0x6E656E6F706D6F63;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C21E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C21AA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C21E90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C21D4C();
  *a1 = result;
  return result;
}

uint64_t sub_220C21EB8(uint64_t a1)
{
  v2 = sub_220C22284();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C21EF4(uint64_t a1)
{
  v2 = sub_220C22284();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ComponentExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9B8, &qword_220CA39B0);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v30 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C22284();
  sub_220CA1254();
  LOBYTE(v30) = 0;
  sub_220CA0494();
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v14, v15);
  OUTLINED_FUNCTION_17();
  if (!v2)
  {
    v16 = type metadata accessor for ComponentExposureEvent.Model(0);
    v17 = v16[5];
    LOBYTE(v30) = 1;
    sub_220CA04D4();
    OUTLINED_FUNCTION_5_0();
    sub_220C04F84(v18, v19);
    OUTLINED_FUNCTION_17();
    LOWORD(v30) = *(v3 + v16[6]);
    v33 = 2;
    sub_220BFE5BC();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17();
    v30 = *(v3 + v16[7]);
    v33 = 3;
    sub_220C05568();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17();
    v20 = (v3 + v16[8]);
    v21 = *v20;
    v22 = v20[1];
    LOWORD(v20) = *(v20 + 8);
    *&v30 = v21;
    *(&v30 + 1) = v22;
    LOWORD(v31) = v20;
    v33 = 4;
    v23 = sub_220C04820();

    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17();
    if (v23)
    {
    }

    else
    {

      v24 = (v3 + v16[9]);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v24 + 4);
      LOBYTE(v24) = *(v24 + 20);
      *&v30 = v25;
      *(&v30 + 1) = v26;
      v31 = v27;
      v32 = v24;
      v33 = 5;
      v28 = sub_220BFF788();

      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17();

      if (!v28)
      {
        LOBYTE(v30) = *(v3 + v16[10]);
        v33 = 6;
        sub_220C222D8();
        OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_17();
        *&v30 = *(v3 + v16[11]);
        v33 = 7;
        sub_220C2232C();
        OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_17();
      }
    }
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C22284()
{
  result = qword_27CF7B9C0;
  if (!qword_27CF7B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B9C0);
  }

  return result;
}

unint64_t sub_220C222D8()
{
  result = qword_2812D06D0;
  if (!qword_2812D06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D06D0);
  }

  return result;
}

unint64_t sub_220C2232C()
{
  result = qword_2812CFC08;
  if (!qword_2812CFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC08);
  }

  return result;
}

uint64_t ComponentExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_220CA04D4();
  v4 = OUTLINED_FUNCTION_3(v3);
  v55 = v5;
  v56 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v10 = v9 - v8;
  v11 = sub_220CA0494();
  v12 = OUTLINED_FUNCTION_3(v11);
  v57 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v18 = v17 - v16;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9C8, &qword_220CA39B8);
  v19 = OUTLINED_FUNCTION_3(v53);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v51 - v24;
  v58 = type metadata accessor for ComponentExposureEvent.Model(0);
  v26 = OUTLINED_FUNCTION_1(v58);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_11();
  v31 = v30 - v29;
  v33 = a1[3];
  v32 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_220C22284();
  v54 = v25;
  v34 = v59;
  sub_220CA1234();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v59 = v21;
  LOBYTE(v61) = 0;
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v35, v36);
  sub_220CA1034();
  (*(v57 + 32))(v31, v18);
  LOBYTE(v61) = 1;
  OUTLINED_FUNCTION_5_0();
  sub_220C04F84(v37, v38);
  v39 = v56;
  sub_220CA1034();
  v40 = v58;
  (*(v55 + 32))(v31 + v58[5], v10, v39);
  v64 = 2;
  sub_220BFE564();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  *(v31 + v40[6]) = v61;
  v64 = 3;
  sub_220C05514();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  *(v31 + v40[7]) = v61;
  v64 = 4;
  sub_220C0449C();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  v41 = *(&v61 + 1);
  v42 = v62;
  v43 = v31 + v40[8];
  *v43 = v61;
  *(v43 + 8) = v41;
  *(v43 + 16) = v42;
  v64 = 5;
  sub_220BFF730();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  v44 = *(&v61 + 1);
  v45 = v62;
  v46 = v63;
  v47 = v31 + v40[9];
  *v47 = v61;
  *(v47 + 8) = v44;
  *(v47 + 16) = v45;
  *(v47 + 20) = v46;
  v64 = 6;
  sub_220C22978();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  *(v31 + v40[10]) = v61;
  v64 = 7;
  sub_220C229CC();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  v48 = OUTLINED_FUNCTION_15_2();
  v49(v48);
  *(v31 + v40[11]) = v61;
  sub_220C22A20(v31, v52);
  __swift_destroy_boxed_opaque_existential_1(v60);
  return sub_220C22A84(v31);
}

unint64_t sub_220C22978()
{
  result = qword_2812D06C8;
  if (!qword_2812D06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D06C8);
  }

  return result;
}

unint64_t sub_220C229CC()
{
  result = qword_2812CFC00;
  if (!qword_2812CFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC00);
  }

  return result;
}

uint64_t sub_220C22A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C22A84(uint64_t a1)
{
  v2 = type metadata accessor for ComponentExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C22B48()
{
  sub_220C04EB8();
  if (v0 <= 0x3F)
  {
    sub_220C05010();
    if (v1 <= 0x3F)
    {
      sub_220C05158(319, &qword_2812D0E20, sub_220BFE564, sub_220BFE5BC);
      if (v2 <= 0x3F)
      {
        sub_220C05158(319, &qword_2812D0E38, sub_220C05514, sub_220C05568);
        if (v3 <= 0x3F)
        {
          sub_220C05158(319, &qword_2812D0DB8, sub_220C0449C, sub_220C04820);
          if (v4 <= 0x3F)
          {
            sub_220C05158(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788);
            if (v5 <= 0x3F)
            {
              sub_220C05158(319, &qword_2812D0E30, sub_220C22978, sub_220C222D8);
              if (v6 <= 0x3F)
              {
                sub_220C05158(319, &qword_2812D0DF8, sub_220C229CC, sub_220C2232C);
                if (v7 <= 0x3F)
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

uint64_t sub_220C22DD4()
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

uint64_t getEnumTagSinglePayload for ComponentExposureEvent.Model.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ComponentExposureEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C23004()
{
  result = qword_27CF7B9E0;
  if (!qword_27CF7B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B9E0);
  }

  return result;
}

unint64_t sub_220C2305C()
{
  result = qword_27CF7B9E8;
  if (!qword_27CF7B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B9E8);
  }

  return result;
}

unint64_t sub_220C230B4()
{
  result = qword_27CF7B9F0;
  if (!qword_27CF7B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7B9F0);
  }

  return result;
}

uint64_t sub_220C231D0()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7BA28);
  __swift_project_value_buffer(v0, qword_27CF7BA28);
  return sub_220CA0244();
}

uint64_t LocationExposureEvent.eventData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t LocationExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t LocationExposureEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for LocationExposureEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t LocationExposureEvent.timedData.setter()
{
  v0 = *(OUTLINED_FUNCTION_15_3() + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t LocationExposureEvent.orientationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for LocationExposureEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t LocationExposureEvent.orientationData.setter()
{
  v0 = *(OUTLINED_FUNCTION_15_3() + 24);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t LocationExposureEvent.locationListPositionData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for LocationExposureEvent(v0) + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA40, &unk_220CAE130);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t LocationExposureEvent.locationListPositionData.setter()
{
  v0 = *(OUTLINED_FUNCTION_15_3() + 28);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA40, &unk_220CAE130);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t LocationExposureEvent.temperatureScaleData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for LocationExposureEvent(v0) + 32);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t LocationExposureEvent.temperatureScaleData.setter()
{
  v0 = *(OUTLINED_FUNCTION_15_3() + 32);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t LocationExposureEvent.locationConditionData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for LocationExposureEvent(v0) + 36);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t LocationExposureEvent.locationConditionData.setter()
{
  v0 = *(OUTLINED_FUNCTION_15_3() + 36);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t LocationExposureEvent.locationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for LocationExposureEvent(v0) + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t LocationExposureEvent.locationData.setter()
{
  v0 = *(OUTLINED_FUNCTION_15_3() + 40);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t LocationExposureEvent.hostViewData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for LocationExposureEvent(v0) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t LocationExposureEvent.hostViewData.setter()
{
  v0 = *(OUTLINED_FUNCTION_15_3() + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t LocationExposureEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for LocationExposureEvent(v0) + 48);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t LocationExposureEvent.privateUserData.setter()
{
  v0 = *(OUTLINED_FUNCTION_15_3() + 48);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_14_0();

  return v5(v4);
}

uint64_t LocationExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_0_0(v3);
  (*(v4 + 104))(a1, v2);
  v5 = type metadata accessor for LocationExposureEvent(0);
  v6 = v5[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_0_0(v7);
  v9 = *(v8 + 104);
  v10 = OUTLINED_FUNCTION_16_0();
  v11(v10);
  v12 = v5[6];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F8, &unk_220CA3990);
  OUTLINED_FUNCTION_0_0(v13);
  v15 = *(v14 + 104);
  v16 = OUTLINED_FUNCTION_16_0();
  v17(v16);
  v18 = v5[7];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA40, &unk_220CAE130);
  OUTLINED_FUNCTION_0_0(v19);
  v21 = *(v20 + 104);
  v22 = OUTLINED_FUNCTION_16_0();
  v23(v22);
  v24 = v5[8];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B600, &qword_220CA1EA0);
  OUTLINED_FUNCTION_0_0(v25);
  v27 = *(v26 + 104);
  v28 = OUTLINED_FUNCTION_16_0();
  v29(v28);
  v30 = v5[9];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA48, &unk_220CAE140);
  OUTLINED_FUNCTION_0_0(v31);
  v33 = *(v32 + 104);
  v34 = OUTLINED_FUNCTION_16_0();
  v35(v34);
  v36 = v5[10];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_0_0(v37);
  v39 = *(v38 + 104);
  v40 = OUTLINED_FUNCTION_16_0();
  v41(v40);
  v42 = v5[11];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B8E8, &unk_220CA3700);
  OUTLINED_FUNCTION_0_0(v43);
  v45 = *(v44 + 104);
  v46 = OUTLINED_FUNCTION_16_0();
  v47(v46);
  v48 = v5[12];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_0_0(v49);
  v51 = *(v50 + 104);

  return v51(a1 + v48, v2);
}

uint64_t LocationExposureEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  v2 = sub_220CA0494();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = *(v4 + 16);

  return v5(v0, v1, v3);
}

uint64_t LocationExposureEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for LocationExposureEvent.Model(v0) + 20);
  v2 = sub_220CA04D4();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t LocationExposureEvent.Model.orientationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for LocationExposureEvent.Model(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t LocationExposureEvent.Model.locationListPositionData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for LocationExposureEvent.Model(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t LocationExposureEvent.Model.temperatureScaleData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = type metadata accessor for LocationExposureEvent.Model(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

double LocationExposureEvent.Model.locationConditionData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = v1 + *(type metadata accessor for LocationExposureEvent.Model(v2) + 36);
  v4 = *(v3 + 12);
  *v0 = *v3;
  result = *(v3 + 4);
  *(v0 + 4) = result;
  *(v0 + 12) = v4;
  return result;
}

__n128 LocationExposureEvent.Model.locationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for LocationExposureEvent.Model(v2) + 40));
  *v0 = result;
  return result;
}

uint64_t LocationExposureEvent.Model.hostViewData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for LocationExposureEvent.Model(v2) + 44));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v3;
}

uint64_t LocationExposureEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for LocationExposureEvent.Model(v2) + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t LocationExposureEvent.Model.init(eventData:timedData:orientationData:locationListPositionData:temperatureScaleData:locationConditionData:locationData:hostViewData:privateUserData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X2>, int *a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v14 = *a3;
  v15 = *a4;
  v16 = *a5;
  v17 = *a6;
  v18 = *(a6 + 3);
  v19 = *a7;
  v20 = a7[1];
  v21 = a8[1];
  v35 = *a8;
  v34 = *(a8 + 8);
  v38 = a10[1];
  v39 = *a10;
  v36 = *(a10 + 20);
  v37 = *(a10 + 4);
  v22 = sub_220CA0494();
  OUTLINED_FUNCTION_0_0(v22);
  v24 = *(a6 + 4);
  (*(v23 + 32))(a9, a1);
  v25 = type metadata accessor for LocationExposureEvent.Model(0);
  v26 = v25[5];
  v27 = sub_220CA04D4();
  OUTLINED_FUNCTION_0_0(v27);
  result = (*(v28 + 32))(a9 + v26, a2);
  *(a9 + v25[6]) = v14;
  *(a9 + v25[7]) = v15;
  *(a9 + v25[8]) = v16;
  v30 = a9 + v25[9];
  *v30 = v17;
  *(v30 + 4) = v24;
  *(v30 + 12) = v18;
  v31 = (a9 + v25[10]);
  *v31 = v19;
  v31[1] = v20;
  v32 = a9 + v25[11];
  *v32 = v35;
  *(v32 + 8) = v21;
  *(v32 + 16) = v34;
  v33 = a9 + v25[12];
  *v33 = v39;
  *(v33 + 8) = v38;
  *(v33 + 16) = v37;
  *(v33 + 20) = v36;
  return result;
}

uint64_t sub_220C242E4(uint64_t a1, uint64_t a2)
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

    else
    {
      v7 = a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x8000000220CB4CB0 == a2;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x8000000220CB4B90 == a2;
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
              v11 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000061746144;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7765695674736F68 && a2 == 0xEC00000061746144;
                if (v12 || (sub_220CA1154() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x5565746176697270 && a2 == 0xEF61746144726573)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_220CA1154();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_220C245E0(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      v3 = 0x4464656D6974;
      goto LABEL_5;
    case 2:
      v3 = 0x746E6569726FLL;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      result = 0x7765695674736F68;
      break;
    case 8:
      result = 0x5565746176697270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C24710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C242E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C24738@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C245D8();
  *a1 = result;
  return result;
}

uint64_t sub_220C24760(uint64_t a1)
{
  v2 = sub_220C24B68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C2479C(uint64_t a1)
{
  v2 = sub_220C24B68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA50, &qword_220CA3C28);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v31 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C24B68();
  sub_220CA1254();
  LOBYTE(v31) = 0;
  sub_220CA0494();
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v14, v15);
  OUTLINED_FUNCTION_17();
  if (!v2)
  {
    v16 = type metadata accessor for LocationExposureEvent.Model(0);
    v17 = v16[5];
    LOBYTE(v31) = 1;
    sub_220CA04D4();
    OUTLINED_FUNCTION_5_0();
    sub_220C04F84(v18, v19);
    OUTLINED_FUNCTION_17();
    LOWORD(v31) = *(v3 + v16[6]);
    v34 = 2;
    sub_220BFE5BC();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17();
    LODWORD(v31) = *(v3 + v16[7]);
    v34 = 3;
    sub_220C05418();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17();
    LOBYTE(v31) = *(v3 + v16[8]);
    v34 = 4;
    sub_220BFF604();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17();
    v20 = v3 + v16[9];
    v21 = *(v20 + 12);
    LOBYTE(v31) = *v20;
    *(&v31 + 4) = *(v20 + 4);
    HIDWORD(v31) = v21;
    v34 = 5;
    sub_220C054C0();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17();
    v31 = *(v3 + v16[10]);
    v34 = 6;
    sub_220C05568();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17();
    v22 = (v3 + v16[11]);
    v23 = *v22;
    v24 = v22[1];
    LOWORD(v22) = *(v22 + 8);
    *&v31 = v23;
    *(&v31 + 1) = v24;
    LOWORD(v32) = v22;
    v34 = 7;
    v25 = sub_220C04820();

    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_17();

    if (!v25)
    {
      v26 = (v3 + v16[12]);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v26 + 4);
      LOBYTE(v26) = *(v26 + 20);
      *&v31 = v27;
      *(&v31 + 1) = v28;
      v32 = v29;
      v33 = v26;
      v34 = 8;
      sub_220BFF788();

      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_17();
    }
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C24B68()
{
  result = qword_27CF7BA58;
  if (!qword_27CF7BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BA58);
  }

  return result;
}

uint64_t LocationExposureEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_220CA04D4();
  v4 = OUTLINED_FUNCTION_3(v3);
  v57 = v5;
  v58 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v10 = v9 - v8;
  v11 = sub_220CA0494();
  v12 = OUTLINED_FUNCTION_3(v11);
  v59 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v18 = v17 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BA60, &qword_220CA3C30);
  v19 = OUTLINED_FUNCTION_3(v55);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v53 - v24;
  v60 = type metadata accessor for LocationExposureEvent.Model(0);
  v26 = OUTLINED_FUNCTION_1(v60);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_11();
  v31 = v30 - v29;
  v33 = a1[3];
  v32 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_220C24B68();
  v56 = v25;
  v34 = v61;
  sub_220CA1234();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v61 = v21;
  LOBYTE(v63) = 0;
  OUTLINED_FUNCTION_7();
  sub_220C04F84(v35, v36);
  sub_220CA1034();
  (*(v59 + 32))(v31, v18, v11);
  LOBYTE(v63) = 1;
  OUTLINED_FUNCTION_5_0();
  sub_220C04F84(v37, v38);
  v39 = v58;
  sub_220CA1034();
  v40 = v60;
  (*(v57 + 32))(v31 + v60[5], v10, v39);
  v66 = 2;
  sub_220BFE564();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  *(v31 + v40[6]) = v63;
  v66 = 3;
  sub_220C053C4();
  OUTLINED_FUNCTION_2_1();
  sub_220CA1034();
  *(v31 + v40[7]) = v63;
  v66 = 4;
  sub_220BFF5AC();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_18();
  *(v31 + v40[8]) = v63;
  v66 = 5;
  sub_220C0546C();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_18();
  v41 = HIDWORD(v63);
  v42 = v31 + v40[9];
  *v42 = v63;
  *(v42 + 4) = *(&v63 + 4);
  *(v42 + 12) = v41;
  v66 = 6;
  sub_220C05514();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_18();
  *(v31 + v40[10]) = v63;
  v66 = 7;
  sub_220C0449C();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_18();
  v43 = *(&v63 + 1);
  v44 = v64;
  v45 = v31 + v60[11];
  *v45 = v63;
  *(v45 + 8) = v43;
  *(v45 + 16) = v44;
  v66 = 8;
  sub_220BFF730();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_18();
  v46 = OUTLINED_FUNCTION_11_3();
  v47(v46);
  v48 = *(&v63 + 1);
  v49 = v64;
  v50 = v65;
  v51 = v31 + v60[12];
  *v51 = v63;
  *(v51 + 8) = v48;
  *(v51 + 16) = v49;
  *(v51 + 20) = v50;
  sub_220C251EC(v31, v54);
  __swift_destroy_boxed_opaque_existential_1(v62);
  return sub_220C25250(v31);
}

uint64_t sub_220C251EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C25250(uint64_t a1)
{
  v2 = type metadata accessor for LocationExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C25314()
{
  sub_220C04EB8();
  if (v0 <= 0x3F)
  {
    sub_220C05010();
    if (v1 <= 0x3F)
    {
      sub_220C051D4(319, &qword_2812D0E20, sub_220BFE564, sub_220BFE5BC);
      if (v2 <= 0x3F)
      {
        sub_220C051D4(319, &qword_2812D0DE8, sub_220C053C4, sub_220C05418);
        if (v3 <= 0x3F)
        {
          sub_220C051D4(319, &qword_2812D0E00, sub_220BFF5AC, sub_220BFF604);
          if (v4 <= 0x3F)
          {
            sub_220C051D4(319, &qword_2812D0DF0, sub_220C0546C, sub_220C054C0);
            if (v5 <= 0x3F)
            {
              sub_220C051D4(319, &qword_2812D0E38, sub_220C05514, sub_220C05568);
              if (v6 <= 0x3F)
              {
                sub_220C051D4(319, &qword_2812D0DB8, sub_220C0449C, sub_220C04820);
                if (v7 <= 0x3F)
                {
                  sub_220C051D4(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788);
                  if (v8 <= 0x3F)
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

uint64_t sub_220C255F0()
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

_BYTE *storeEnumTagSinglePayload for LocationExposureEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C2579C()
{
  result = qword_27CF7BA88;
  if (!qword_27CF7BA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BA88);
  }

  return result;
}

unint64_t sub_220C257F4()
{
  result = qword_27CF7BA90;
  if (!qword_27CF7BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BA90);
  }

  return result;
}

unint64_t sub_220C2584C()
{
  result = qword_27CF7BA98;
  if (!qword_27CF7BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BA98);
  }

  return result;
}

uint64_t sub_220C25998(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x8000000220CB4CF0 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000031 && 0x8000000220CB4D10 == a2;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000030 && 0x8000000220CB4D50 == a2;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000002ALL && 0x8000000220CB4D90 == a2;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000029 && 0x8000000220CB4DC0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_220CA1154();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_220C25B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C25998(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C25B60(uint64_t a1)
{
  v2 = sub_220C05E00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C25B9C(uint64_t a1)
{
  v2 = sub_220C05E00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationSettingsData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BAA8, &qword_220CA3EB8);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C05E00();
  sub_220CA1234();
  if (!v2)
  {
    v26 = 0;
    OUTLINED_FUNCTION_0_6();
    v14 = sub_220CA1004();
    v25 = 1;
    OUTLINED_FUNCTION_0_6();
    v15 = sub_220CA0FB4();
    v24 = 2;
    OUTLINED_FUNCTION_0_6();
    v21 = sub_220CA0FB4();
    v23 = 3;
    OUTLINED_FUNCTION_0_6();
    v20 = sub_220CA0FB4();
    v22 = 4;
    OUTLINED_FUNCTION_0_6();
    v17 = sub_220CA0FB4();
    (*(v8 + 8))(v12, v5);
    *a2 = v14 & 1;
    a2[1] = v15;
    v18 = v20;
    a2[2] = v21;
    a2[3] = v18;
    a2[4] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for NotificationSettingsData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C25EC0()
{
  result = qword_27CF7BAB0;
  if (!qword_27CF7BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BAB0);
  }

  return result;
}

uint64_t sub_220C25FDC()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7BAE8);
  __swift_project_value_buffer(v0, qword_27CF7BAE8);
  return sub_220CA0244();
}

uint64_t PrecipitationNotificationMissedEvent.eventData.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();

  return v5(v4, v0);
}

uint64_t PrecipitationNotificationMissedEvent.eventData.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t PrecipitationNotificationMissedEvent.locationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for PrecipitationNotificationMissedEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_6_0();

  return v6(v5);
}

uint64_t PrecipitationNotificationMissedEvent.locationData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for PrecipitationNotificationMissedEvent(v2) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*PrecipitationNotificationMissedEvent.locationData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for PrecipitationNotificationMissedEvent(v0) + 20);
  return nullsub_1;
}

uint64_t PrecipitationNotificationMissedEvent.notificationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for PrecipitationNotificationMissedEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BB00, &qword_220CA40D0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_6_0();

  return v6(v5);
}

uint64_t PrecipitationNotificationMissedEvent.notificationData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for PrecipitationNotificationMissedEvent(v2) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BB00, &qword_220CA40D0);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*PrecipitationNotificationMissedEvent.notificationData.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  v1 = *(type metadata accessor for PrecipitationNotificationMissedEvent(v0) + 24);
  return nullsub_1;
}

uint64_t PrecipitationNotificationMissedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 104))(a1, v2);
  v5 = type metadata accessor for PrecipitationNotificationMissedEvent(0);
  v6 = *(v5 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1(v7);
  (*(v8 + 104))(a1 + v6, v2);
  v9 = *(v5 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BB00, &qword_220CA40D0);
  OUTLINED_FUNCTION_1(v10);
  v12 = *(v11 + 104);

  return v12(a1 + v9, v2);
}

uint64_t PrecipitationNotificationMissedEvent.Model.eventData.getter()
{
  OUTLINED_FUNCTION_6();
  v1 = sub_220CA0494();
  OUTLINED_FUNCTION_1(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_6_0();

  return v5(v4, v0);
}

__n128 PrecipitationNotificationMissedEvent.Model.locationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  result = *(v1 + *(type metadata accessor for PrecipitationNotificationMissedEvent.Model(v2) + 20));
  *v0 = result;
  return result;
}

uint64_t PrecipitationNotificationMissedEvent.Model.notificationData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = v1 + *(type metadata accessor for PrecipitationNotificationMissedEvent.Model(v2) + 24);
  v4 = *(v3 + 8);
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  *v0 = *v3;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 32) = v7;
  *(v0 + 40) = v8;
  *(v0 + 48) = v9;
}

uint64_t PrecipitationNotificationMissedEvent.Model.init(eventData:locationData:notificationData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v9 = *(a3 + 2);
  v10 = *(a3 + 2);
  v11 = *(a3 + 3);
  v12 = *(a3 + 8);
  v13 = *(a3 + 5);
  v14 = *(a3 + 6);
  v15 = sub_220CA0494();
  OUTLINED_FUNCTION_1(v15);
  (*(v16 + 32))(a4, a1);
  result = type metadata accessor for PrecipitationNotificationMissedEvent.Model(0);
  v18 = (a4 + *(result + 20));
  *v18 = v6;
  v18[1] = v7;
  v19 = a4 + *(result + 24);
  *v19 = v8;
  *(v19 + 8) = v9;
  *(v19 + 16) = v10;
  *(v19 + 24) = v11;
  *(v19 + 32) = v12;
  *(v19 + 40) = v13;
  *(v19 + 48) = v14;
  return result;
}

uint64_t sub_220C266D4(uint64_t a1, uint64_t a2)
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

    else if (a1 == 0xD000000000000010 && 0x8000000220CB4DF0 == a2)
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

uint64_t sub_220C267F8(char a1)
{
  if (!a1)
  {
    return 0x746144746E657665;
  }

  if (a1 == 1)
  {
    return 0x6E6F697461636F6CLL;
  }

  return 0xD000000000000010;
}

uint64_t sub_220C26868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C266D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C26890(uint64_t a1)
{
  v2 = sub_220C26B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C268CC(uint64_t a1)
{
  v2 = sub_220C26B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrecipitationNotificationMissedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BB08, &qword_220CA40D8);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v23 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C26B4C();
  sub_220CA1254();
  LOBYTE(v23) = 0;
  sub_220CA0494();
  sub_220C04FCC(&qword_2812D0D90);
  sub_220CA1104();
  if (!v2)
  {
    v14 = type metadata accessor for PrecipitationNotificationMissedEvent.Model(0);
    v23 = *(v3 + *(v14 + 20));
    v29 = 1;
    sub_220C05568();
    sub_220CA1104();
    v15 = v3 + *(v14 + 24);
    v16 = *(v15 + 8);
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    v19 = *(v15 + 32);
    v20 = *(v15 + 40);
    v21 = *(v15 + 48);
    LOBYTE(v23) = *v15;
    DWORD2(v23) = v16;
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v29 = 2;
    sub_220C26BA0();

    sub_220CA1104();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C26B4C()
{
  result = qword_27CF7BB10;
  if (!qword_27CF7BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB10);
  }

  return result;
}

unint64_t sub_220C26BA0()
{
  result = qword_27CF7BB18;
  if (!qword_27CF7BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB18);
  }

  return result;
}

uint64_t PrecipitationNotificationMissedEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v38 = sub_220CA0494();
  v4 = OUTLINED_FUNCTION_3(v38);
  v35 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BB20, &qword_220CA40E0);
  v11 = OUTLINED_FUNCTION_3(v10);
  v36 = v12;
  v37 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = type metadata accessor for PrecipitationNotificationMissedEvent.Model(0);
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C26B4C();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v35;
  LOBYTE(v39) = 0;
  sub_220C04FCC(&qword_2812D0D88);
  OUTLINED_FUNCTION_2_2();
  (*(v22 + 32))(v20, v9, v38);
  v45 = 1;
  sub_220C05514();
  OUTLINED_FUNCTION_2_2();
  *&v20[*(v15 + 20)] = v39;
  v45 = 2;
  sub_220C26F38();
  OUTLINED_FUNCTION_2_2();
  v23 = OUTLINED_FUNCTION_3_1();
  v24(v23);
  v25 = DWORD2(v39);
  v26 = v40;
  v27 = v41;
  v28 = v42;
  v29 = v43;
  v30 = v44;
  v31 = &v20[*(v15 + 24)];
  *v31 = v39;
  *(v31 + 2) = v25;
  *(v31 + 2) = v26;
  *(v31 + 3) = v27;
  *(v31 + 8) = v28;
  *(v31 + 5) = v29;
  *(v31 + 6) = v30;
  sub_220C26F8C(v20, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C26FF0(v20);
}

unint64_t sub_220C26F38()
{
  result = qword_27CF7BB28;
  if (!qword_27CF7BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB28);
  }

  return result;
}

uint64_t sub_220C26F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationNotificationMissedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C26FF0(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationNotificationMissedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C270B4()
{
  sub_220C04EB8();
  if (v0 <= 0x3F)
  {
    sub_220C271C0(319, &qword_2812D0E38, sub_220C05514, sub_220C05568);
    if (v1 <= 0x3F)
    {
      sub_220C271C0(319, &qword_27CF7BB40, sub_220C26F38, sub_220C26BA0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220C271C0(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_220C27264()
{
  result = sub_220CA0494();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationNotificationMissedEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C273C8()
{
  result = qword_27CF7BB58;
  if (!qword_27CF7BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB58);
  }

  return result;
}

unint64_t sub_220C27420()
{
  result = qword_27CF7BB60;
  if (!qword_27CF7BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB60);
  }

  return result;
}

unint64_t sub_220C27478()
{
  result = qword_27CF7BB68;
  if (!qword_27CF7BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB68);
  }

  return result;
}

uint64_t sub_220C27518(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x79616C7265766FLL && a2 == 0xE700000000000000)
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

uint64_t sub_220C275AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C27518(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C275D8(uint64_t a1)
{
  v2 = sub_220C27790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C27614(uint64_t a1)
{
  v2 = sub_220C27790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MapOverlayData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BB70, &qword_220CA4310);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14 - v9;
  v11 = *v1;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C27790();
  sub_220CA1254();
  v15 = v11;
  sub_220C277E4();
  sub_220CA1104();
  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_220C27790()
{
  result = qword_27CF7BB78;
  if (!qword_27CF7BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB78);
  }

  return result;
}

unint64_t sub_220C277E4()
{
  result = qword_27CF7BB80;
  if (!qword_27CF7BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB80);
  }

  return result;
}

uint64_t MapOverlayData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BB88, &qword_220CA4318);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C27790();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C27998();
    sub_220CA1034();
    (*(v8 + 8))(v12, v5);
    *a2 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C27998()
{
  result = qword_27CF7BB90;
  if (!qword_27CF7BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB90);
  }

  return result;
}

unint64_t sub_220C279F0()
{
  result = qword_27CF7BB98;
  if (!qword_27CF7BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BB98);
  }

  return result;
}

unint64_t sub_220C27A48()
{
  result = qword_27CF7BBA0;
  if (!qword_27CF7BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BBA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MapOverlayData(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for MapOverlayData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C27C58()
{
  result = qword_27CF7BBA8;
  if (!qword_27CF7BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BBA8);
  }

  return result;
}

unint64_t sub_220C27CB0()
{
  result = qword_27CF7BBB0;
  if (!qword_27CF7BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BBB0);
  }

  return result;
}

unint64_t sub_220C27D08()
{
  result = qword_27CF7BBB8;
  if (!qword_27CF7BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BBB8);
  }

  return result;
}

uint64_t sub_220C27D70(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return MEMORY[0x282200420]();
    }

    return 0;
  }

  return !a2;
}

uint64_t sub_220C27DB8()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 24));
  sub_220C289AC((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

void sub_220C27E0C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  if (!*a1)
  {
    if (qword_2812D1768 != -1)
    {
      swift_once();
    }

    v11 = sub_220CA0A84();
    __swift_project_value_buffer(v11, qword_2812D1770);
    v12 = sub_220CA0A64();
    v13 = sub_220CA0DA4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_220BF4000, v12, v13, "WidgetFlushManager starting flush", v14, 2u);
      MEMORY[0x223D95B30](v14, -1, -1);
    }

    v15 = sub_220C280D0();
    *a1 = v15;
    *a2 = v15;
    goto LABEL_13;
  }

  v5 = *a1;

  if (swift_task_isCancelled())
  {

    if (qword_2812D1768 != -1)
    {
      swift_once();
    }

    v6 = sub_220CA0A84();
    __swift_project_value_buffer(v6, qword_2812D1770);
    v7 = sub_220CA0A64();
    v8 = sub_220CA0D94();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_220BF4000, v7, v8, "WidgetFlushManager task was cancelled without going idle.", v9, 2u);
      MEMORY[0x223D95B30](v9, -1, -1);
    }

    v10 = sub_220C280D0();

    *a1 = v10;
    *a2 = v10;
LABEL_13:

    return;
  }

  if (qword_2812D1768 != -1)
  {
    swift_once();
  }

  v16 = sub_220CA0A84();
  __swift_project_value_buffer(v16, qword_2812D1770);
  v17 = sub_220CA0A64();
  v18 = sub_220CA0DA4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_220BF4000, v17, v18, "WidgetFlushManager already flushing", v19, 2u);
    MEMORY[0x223D95B30](v19, -1, -1);
  }

  *a2 = v4;
}

uint64_t sub_220C280D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BBC0, &qword_220CB2070);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  v5 = sub_220CA0D34();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  return sub_220C8A5C8(0, 0, v4, &unk_220CA4618, v6);
}

uint64_t sub_220C281B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_220C281D0, 0, 0);
}

uint64_t sub_220C281D0()
{
  OUTLINED_FUNCTION_1_3();
  v1 = *(MEMORY[0x277D85A10] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_220C282A4;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x282200830](v3, &unk_220CA4628);
}

void sub_220C282A4()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v3 = *(v2 + 32);
  v4 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_2_3();

    v6();
  }
}

uint64_t sub_220C283CC()
{
  OUTLINED_FUNCTION_1_3();
  v1 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_220C28468;

  return sub_220C4D8F8();
}

uint64_t sub_220C28468()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v2 = *(v1 + 24);
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_220C28554, 0, 0);
}

uint64_t sub_220C28554()
{
  if (qword_2812D1768 != -1)
  {
    swift_once();
  }

  v1 = sub_220CA0A84();
  __swift_project_value_buffer(v1, qword_2812D1770);
  v2 = sub_220CA0A64();
  v3 = sub_220CA0DA4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_220BF4000, v2, v3, "WidgetFlushManager finishing flush", v4, 2u);
    MEMORY[0x223D95B30](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  sub_220C28670();
  OUTLINED_FUNCTION_2_3();

  return v6();
}

void sub_220C28670()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  *(v1 + 16) = 0;

  os_unfair_lock_unlock((v1 + 24));
}

void sub_220C286B8()
{
  if (qword_2812D1768 != -1)
  {
    swift_once();
  }

  v0 = sub_220CA0A84();
  __swift_project_value_buffer(v0, qword_2812D1770);
  v1 = sub_220CA0A64();
  v2 = sub_220CA0DA4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_220BF4000, v1, v2, "WidgetFlushManager flush was cancelled", v3, 2u);
    MEMORY[0x223D95B30](v3, -1, -1);
  }

  sub_220C28670();
}

uint64_t sub_220C2879C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_220C2880C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_220C2885C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_220C288B0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_220C288C8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_220C289C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_220C28A7C;

  return sub_220C281B0(a1, v4, v5, v6);
}

uint64_t sub_220C28A7C()
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

uint64_t sub_220C28B5C()
{
  OUTLINED_FUNCTION_1_3();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_220C28A7C;

  return sub_220C283AC(v3, v0);
}

WeatherAnalytics::OtherConditionsFeedbackData __swiftcall OtherConditionsFeedbackData.init(rainbowsReport:lightningReport:fogReport:hailReport:smokeReport:hazeReport:)(Swift::Bool rainbowsReport, Swift::Bool lightningReport, Swift::Bool fogReport, Swift::Bool hailReport, Swift::Bool smokeReport, Swift::Bool hazeReport)
{
  *v6 = rainbowsReport;
  v6[1] = lightningReport;
  v6[2] = fogReport;
  v6[3] = hailReport;
  v6[4] = smokeReport;
  v6[5] = hazeReport;
  result.rainbowsReport = rainbowsReport;
  return result;
}

uint64_t sub_220C28D40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73776F626E696172 && a2 == 0xEE0074726F706552;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E696E746867696CLL && a2 == 0xEF74726F70655267;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F706552676F66 && a2 == 0xE900000000000074;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F7065526C696168 && a2 == 0xEA00000000007472;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x706552656B6F6D73 && a2 == 0xEB0000000074726FLL;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6F706552657A6168 && a2 == 0xEA00000000007472)
          {

            return 5;
          }

          else
          {
            v11 = sub_220CA1154();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_220C28F54(char a1)
{
  result = 0x73776F626E696172;
  switch(a1)
  {
    case 1:
      result = 0x6E696E746867696CLL;
      break;
    case 2:
      result = 0x726F706552676F66;
      break;
    case 3:
      v3 = 1818845544;
      goto LABEL_7;
    case 4:
      result = 0x706552656B6F6D73;
      break;
    case 5:
      v3 = 1702519144;
LABEL_7:
      result = v3 | 0x6F70655200000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C2902C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C28D40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C29054(uint64_t a1)
{
  v2 = sub_220C292BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C29090(uint64_t a1)
{
  v2 = sub_220C292BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OtherConditionsFeedbackData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BBC8, &qword_220CA4630);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v17 - v10;
  v12 = *v1;
  v13 = v1[1];
  v17[6] = v1[2];
  v17[7] = v13;
  v14 = v1[3];
  v17[4] = v1[4];
  v17[5] = v14;
  v17[3] = v1[5];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C292BC();
  sub_220CA1254();
  v23 = 0;
  sub_220CA10D4();
  if (!v2)
  {
    v22 = 1;
    OUTLINED_FUNCTION_1_4();
    v21 = 2;
    OUTLINED_FUNCTION_1_4();
    v20 = 3;
    OUTLINED_FUNCTION_1_4();
    v19 = 4;
    OUTLINED_FUNCTION_1_4();
    v18 = 5;
    OUTLINED_FUNCTION_1_4();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_220C292BC()
{
  result = qword_27CF7BBD0;
  if (!qword_27CF7BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BBD0);
  }

  return result;
}

uint64_t OtherConditionsFeedbackData.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BBD8, &qword_220CA4638);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C292BC();
  sub_220CA1234();
  if (!v2)
  {
    v32 = 0;
    v14 = OUTLINED_FUNCTION_0_7();
    v31 = 1;
    v15 = OUTLINED_FUNCTION_0_7();
    v30 = 2;
    v26 = OUTLINED_FUNCTION_0_7();
    v29 = 3;
    v25 = OUTLINED_FUNCTION_0_7();
    v28 = 4;
    v24 = OUTLINED_FUNCTION_0_7();
    v27 = 5;
    v17 = OUTLINED_FUNCTION_0_7();
    v22 = v15 & 1;
    v23 = v14 & 1;
    v26 &= 1u;
    v18 = v25 & 1;
    v19 = v24 & 1;
    (*(v8 + 8))(v12, v5);
    v20 = v22;
    *a2 = v23;
    a2[1] = v20;
    a2[2] = v26;
    a2[3] = v18;
    a2[4] = v19;
    a2[5] = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C29548()
{
  result = qword_27CF7BBE0;
  if (!qword_27CF7BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BBE0);
  }

  return result;
}

unint64_t sub_220C295A0()
{
  result = qword_27CF7BBE8;
  if (!qword_27CF7BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BBE8);
  }

  return result;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OtherConditionsFeedbackData(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[6])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
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

uint64_t storeEnumTagSinglePayload for OtherConditionsFeedbackData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OtherConditionsFeedbackData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C297B8()
{
  result = qword_27CF7BBF0;
  if (!qword_27CF7BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BBF0);
  }

  return result;
}

unint64_t sub_220C29810()
{
  result = qword_27CF7BBF8;
  if (!qword_27CF7BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BBF8);
  }

  return result;
}

unint64_t sub_220C29868()
{
  result = qword_27CF7BC00;
  if (!qword_27CF7BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BC00);
  }

  return result;
}

uint64_t MobileData.countryCode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileData.countryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MobileData.networkCode.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MobileData.networkCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

WeatherAnalytics::MobileData __swiftcall MobileData.init(countryCode:networkCode:)(Swift::String countryCode, Swift::String networkCode)
{
  *v2 = countryCode;
  v2[1] = networkCode;
  result.networkCode = networkCode;
  result.countryCode = countryCode;
  return result;
}

uint64_t sub_220C299E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436B726F7774656ELL && a2 == 0xEB0000000065646FLL)
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

uint64_t sub_220C29AB4(char a1)
{
  if (a1)
  {
    return 0x436B726F7774656ELL;
  }

  else
  {
    return 0x437972746E756F63;
  }
}

uint64_t sub_220C29AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C299E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C29B1C(uint64_t a1)
{
  v2 = sub_220C29D04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C29B58(uint64_t a1)
{
  v2 = sub_220C29D04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC08, &qword_220CA4850);
  v5 = OUTLINED_FUNCTION_3(v4);
  v17 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v16[1] = v1[3];
  v16[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C29D04();
  sub_220CA1254();
  v19 = 0;
  sub_220CA10C4();
  if (!v2)
  {
    v18 = 1;
    sub_220CA10C4();
  }

  return (*(v17 + 8))(v10, v4);
}

unint64_t sub_220C29D04()
{
  result = qword_2812D0868;
  if (!qword_2812D0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0868);
  }

  return result;
}

uint64_t MobileData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC10, &qword_220CA4858);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v22 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C29D04();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v14 = sub_220CA0FF4();
  v16 = v15;
  v24 = 1;
  v17 = sub_220CA0FF4();
  v19 = v18;
  v20 = *(v8 + 8);
  v23 = v17;
  v20(v12, v5);
  *a2 = v14;
  a2[1] = v16;
  a2[2] = v23;
  a2[3] = v19;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C29F50()
{
  result = qword_2812D0848;
  if (!qword_2812D0848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0848);
  }

  return result;
}

unint64_t sub_220C29FA8()
{
  result = qword_2812D0850;
  if (!qword_2812D0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0850);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MobileData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C2A11C()
{
  result = qword_27CF7BC18;
  if (!qword_27CF7BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BC18);
  }

  return result;
}

unint64_t sub_220C2A174()
{
  result = qword_2812D0858;
  if (!qword_2812D0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0858);
  }

  return result;
}

unint64_t sub_220C2A1CC()
{
  result = qword_2812D0860;
  if (!qword_2812D0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0860);
  }

  return result;
}

uint64_t *sub_220C2A220(uint64_t a1)
{
  v2 = v1;
  v264[1] = *MEMORY[0x277D85DE8];
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC20, &qword_220CA4AD0);
  v221 = *(v222 - 8);
  v4 = *(v221 + 64);
  MEMORY[0x28223BE20](v222);
  v220 = &v201 - v5;
  v227 = sub_220C9F6A4();
  v226 = *(v227 - 8);
  v6 = *(v226 + 64);
  MEMORY[0x28223BE20](v227);
  v225 = (&v201 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v233 = sub_220C9F804();
  v232 = *(v233 - 8);
  v8 = *(v232 + 64);
  MEMORY[0x28223BE20](v233);
  v231 = &v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_220CA0494();
  v240 = *(v253 - 8);
  v10 = *(v240 + 64);
  MEMORY[0x28223BE20](v253);
  v12 = &v201 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for AppSessionEndEvent.Model(0);
  v13 = *(*(v224 - 8) + 64);
  MEMORY[0x28223BE20](v224);
  v228 = &v201 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC28, &qword_220CA4AD8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v245 = &v201 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v254 = &v201 - v19;
  v249 = sub_220C9FE64();
  v230 = *(v249 - 8);
  v20 = *(v230 + 64);
  MEMORY[0x28223BE20](v249);
  v256 = &v201 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v238 = &v201 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v229 = &v201 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v252 = &v201 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v251 = &v201 - v31;
  MEMORY[0x28223BE20](v30);
  v235 = &v201 - v32;
  v33 = sub_220C9F7D4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v223 = &v201 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v242 = &v201 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v246 = &v201 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v250 = &v201 - v43;
  MEMORY[0x28223BE20](v42);
  v241 = &v201 - v44;
  v243 = type metadata accessor for WeatherSession();
  v45 = *(*(v243 - 8) + 64);
  MEMORY[0x28223BE20](v243);
  v244 = (&v201 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v261 = sub_220C9FE94();
  v247 = *(v261 - 8);
  v47 = *(v247 + 8);
  v48 = MEMORY[0x28223BE20](v261);
  v237 = &v201 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v260 = &v201 - v50;
  v257 = sub_220C9FEB4();
  v262 = *(v257 - 8);
  v51 = *(v262 + 64);
  v52 = MEMORY[0x28223BE20](v257);
  v236 = &v201 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v255 = &v201 - v55;
  MEMORY[0x28223BE20](v54);
  v248 = &v201 - v56;
  v57 = sub_220CA04E4();
  v258 = *(v57 - 8);
  v259 = v57;
  v58 = *(v258 + 64);
  MEMORY[0x28223BE20](v57);
  v60 = (&v201 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2812D1768 != -1)
  {
    swift_once();
  }

  v61 = sub_220CA0A84();
  v234 = __swift_project_value_buffer(v61, qword_2812D1770);
  v62 = sub_220CA0A64();
  v63 = sub_220CA0DA4();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_220BF4000, v62, v63, "FlushAnalyticsBatchesTask runs repair", v64, 2u);
    v65 = v64;
    v2 = v1;
    MEMORY[0x223D95B30](v65, -1, -1);
  }

  if (sub_220CA0394())
  {
    goto LABEL_8;
  }

  sub_220CA03E4();
  if (v66)
  {

LABEL_8:
    v67 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v217 = v2;
  v70 = sub_220CA0524();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  swift_allocObject();
  v73 = sub_220CA0514();
  *v60 = sub_220C2C120;
  v60[1] = 0;
  (*(v258 + 104))(v60, *MEMORY[0x277D6C9B0], v259);
  sub_220CA04F4();
  v74 = objc_opt_self();
  sub_220CA03D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC38, &qword_220CA4AE8);
  v75 = sub_220CA0CF4();

  v264[0] = 0;
  v67 = [v74 dataWithJSONObject:v75 options:0 error:v264];

  v76 = v264[0];
  if (v67)
  {
    v216 = v74;
    v77 = sub_220C9F764();
    v79 = v78;

    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC40, &qword_220CA4AF0);
    sub_220C2C948();
    v67 = v73;
    v81 = v217;
    sub_220CA0504();
    v217 = v81;
    if (v81)
    {
      sub_220C2CA44(v77, v79);
    }

    else
    {
      v211 = v33;
      v208 = v80;
      v214 = v77;
      v213 = v79;
      v215 = v73;
      v210 = v12;
      v83 = 0;
      v84 = v264[0];
      v85 = 0x8000000220CB4EB0;
      v86 = *(v264[0] + 2);
      v259 = (v262 + 16);
      v219 = (v247 + 8);
      v258 = v262 + 8;
      v87 = v257;
      v247 = v264[0];
      v218 = v86;
      v88 = v248;
      v89 = v260;
      while (1)
      {
        if (v86 == v83)
        {
          sub_220CA03A4();
          v95 = sub_220CA0BD4();

          v264[0] = 0;
          v67 = [v216 dataWithJSONObject:v95 options:0 error:v264];

          v96 = v264[0];
          if (!v67)
          {
            v101 = v96;

            sub_220C9F734();

            swift_willThrow();
            sub_220C2CA44(v214, v213);
            goto LABEL_14;
          }

          v204 = 0x8000000220CB4EB0;
          v97 = sub_220C9F764();
          v99 = v98;

          sub_220C2CC78(&qword_2812D0988, type metadata accessor for WeatherSession);
          v67 = v215;
          v100 = v217;
          sub_220CA0504();
          if (v100)
          {
            sub_220C2CA44(v97, v99);

            sub_220C2CA44(v214, v213);
            goto LABEL_14;
          }

          v201 = v97;
          v202 = v99;
          v217 = 0;
          v209 = v34;
          if (v218)
          {
            v102 = &v247[(*(v262 + 80) + 32) & ~*(v262 + 80)];
            v248 = *(v262 + 72);
            v207 = (v34 + 16);
            v206 = (v34 + 8);
            v205 = (v240 + 8);
            v260 = MEMORY[0x277D84F90];
            v230 += 8;
            v216 = *(v262 + 16);
            v212 = (v34 + 32);
            v103 = v218;
            v104 = v246;
            v105 = v257;
            v106 = v211;
            do
            {
              (v216)(v255, v102, v105);
              sub_220C9FE74();
              v107 = v254;
              sub_220C9FE54();
              v108 = v107;
              v109 = v253;
              if (__swift_getEnumTagSinglePayload(v107, 1, v253) == 1)
              {
                v110 = v252;
                __swift_storeEnumTagSinglePayload(v252, 1, 1, v106);
              }

              else
              {
                v111 = v107;
                v112 = v245;
                sub_220C2CA9C(v111, v245);
                sub_220CA0474();
                v108 = v254;
                v110 = v252;
                (*v207)(v252, v104, v106);
                __swift_storeEnumTagSinglePayload(v110, 0, 1, v106);
                (*v206)(v104, v106);
                (*v205)(v112, v109);
              }

              v113 = v251;
              sub_220C2CB7C(v108, &qword_27CF7BC28, &qword_220CA4AD8);
              (*v230)(v256, v249);
              sub_220C2CB0C(v110, v113);
              v105 = v257;
              (*v258)(v255, v257);
              if (__swift_getEnumTagSinglePayload(v113, 1, v106) == 1)
              {
                sub_220C2CB7C(v113, &qword_27CF7BC30, &qword_220CA4AE0);
              }

              else
              {
                v114 = *v212;
                (*v212)(v250, v113, v106);
                v115 = a1;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v260 = sub_220C71340(0, *(v260 + 16) + 1, 1, v260);
                }

                v117 = *(v260 + 16);
                v116 = *(v260 + 24);
                if (v117 >= v116 >> 1)
                {
                  v260 = sub_220C71340(v116 > 1, v117 + 1, 1, v260);
                }

                v118 = v260;
                *(v260 + 16) = v117 + 1;
                v114((v118 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v117), v250, v106);
                a1 = v115;
                v104 = v246;
                v105 = v257;
              }

              v102 = &v248[v102];
              --v103;
            }

            while (v103);
          }

          else
          {
            v260 = MEMORY[0x277D84F90];
            v106 = v211;
          }

          v119 = v235;
          sub_220CA03B4();
          if (__swift_getEnumTagSinglePayload(v119, 1, v106) == 1)
          {
            v120 = v229;
            sub_220C2C1DC(v260, v229);
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v120, 1, v106);
            v122 = v209;
            v123 = v242;
            v124 = v238;
            if (EnumTagSinglePayload == 1)
            {
              sub_220C9F7C4();
              if (__swift_getEnumTagSinglePayload(v120, 1, v106) != 1)
              {
                sub_220C2CB7C(v120, &qword_27CF7BC30, &qword_220CA4AE0);
              }
            }

            else
            {
              (*(v209 + 32))(v241, v120, v106);
            }

            v125 = v106;
            if (__swift_getEnumTagSinglePayload(v119, 1, v106) != 1)
            {
              sub_220C2CB7C(v119, &qword_27CF7BC30, &qword_220CA4AE0);
            }
          }

          else
          {
            v122 = v209;
            (*(v209 + 32))(v241, v119, v106);
            v123 = v242;
            v124 = v238;
            v125 = v106;
          }

          sub_220C2C448(v260, v124);

          v126 = __swift_getEnumTagSinglePayload(v124, 1, v125);
          v203 = a1;
          if (v126 == 1)
          {
            sub_220C9F7C4();
            v127 = v125;
            v128 = __swift_getEnumTagSinglePayload(v124, 1, v125);
            v129 = v237;
            if (v128 != 1)
            {
              sub_220C2CB7C(v124, &qword_27CF7BC30, &qword_220CA4AE0);
            }
          }

          else
          {
            v127 = v125;
            (*(v122 + 32))(v123, v124, v125);
            v129 = v237;
          }

          v130 = 0;
          v131 = v257;
          v132 = v236;
          do
          {
            v133 = v130;
            if (v218 == v130)
            {
              break;
            }

            if (v130 >= *(v247 + 2))
            {
              __break(1u);
            }

            (*(v262 + 16))(v132, &v247[((*(v262 + 80) + 32) & ~*(v262 + 80)) + *(v262 + 72) * v130], v131);
            sub_220C9FEA4();
            v134 = sub_220C9FE84();
            v136 = v135;
            (*v219)(v129, v261);
            if (v134 == 0xD000000000000014 && 0x8000000220CB4ED0 == v136)
            {

              (*v258)(v132, v131);
              break;
            }

            ++v130;
            v138 = sub_220CA1154();

            (*v258)(v132, v131);
          }

          while ((v138 & 1) == 0);
          v139 = v242;
          sub_220C9F774();
          v141 = v140;
          v142 = v247;
          if (v218 == v133 || (*(v247 + 2) != 1 ? (v143 = v140 < 1.0) : (v143 = 1), v143))
          {
            v147 = v127;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC48, &qword_220CA4AF8);
            v144 = swift_allocObject();
            *(v144 + 16) = xmmword_220CA4A60;
            *(v144 + 56) = v208;
            *(v144 + 64) = sub_220BF9A3C(&qword_2812CE7C0, &qword_27CF7BC40, &qword_220CA4AF0);
            v145 = MEMORY[0x277D839F8];
            *(v144 + 32) = v142;
            v146 = MEMORY[0x277D83A80];
            *(v144 + 96) = v145;
            *(v144 + 104) = v146;
            *(v144 + 72) = v141;
            MEMORY[0x223D949C0]("Expect an AppSessionStartEvent, multiple events and an session duration >= 1.0s when repairing", 94, 2, v144);
          }

          else
          {
            v147 = v127;
          }

          v148 = v209;
          if (sub_220CA03C4())
          {
            v149 = 3;
          }

          else
          {
            v149 = 4;
          }

          v150 = sub_220CA0A64();
          v151 = sub_220CA0DA4();
          v152 = os_log_type_enabled(v150, v151);
          LODWORD(v260) = v149;
          if (v152)
          {
            v153 = swift_slowAlloc();
            v154 = swift_slowAlloc();
            v264[0] = v154;
            *v153 = 136446466;
            v263 = v149;
            v155 = sub_220CA0C34();
            v157 = sub_220BFC484(v155, v156, v264);
            v139 = v242;

            *(v153 + 4) = v157;
            *(v153 + 12) = 2050;
            *(v153 + 14) = v141;
            _os_log_impl(&dword_220BF4000, v150, v151, "Repair session - endReason=%{public}s, duration=%{public}f", v153, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v154);
            MEMORY[0x223D95B30](v154, -1, -1);
            MEMORY[0x223D95B30](v153, -1, -1);
          }

          v158 = v233;
          v159 = v232;
          v160 = v231;
          sub_220C9F7F4();
          v161 = sub_220C9F7E4();
          v261 = v162;
          v262 = v161;
          (*(v159 + 8))(v160, v158);
          v259 = *(v148 + 16);
          v259(v246, v139, v147);
          v163 = v244;
          v164 = *v244;
          v165 = v244[1];
          v166 = v244[2];
          v167 = v244[3];

          v168 = v210;
          sub_220CA0484();
          v169 = v243;
          v67 = v239;
          v170 = v217;
          sub_220C2C6B4(*(v163 + *(v243 + 44)), v264);
          if (!v170)
          {
            v172 = LOBYTE(v264[0]);
            v173 = v169;
            v174 = BYTE1(v264[0]);
            sub_220C2C73C(*(v163 + *(v173 + 48)), &v263);
            v85 = 0;
            v175 = v172 | (v174 << 8);
            LODWORD(v262) = v263;
            v176 = v211;
            v177 = v163;
            v178 = v259;
            v259(v246, v241, v211);
            v178(v223, v242, v176);
            v179 = v224;
            v87 = v228;
            v180 = v228 + *(v224 + 32);
            sub_220CA04C4();
            v181 = v177 + *(v173 + 52);
            v182 = *v181;
            v183 = v181[4];
            (*(v240 + 32))(v87, v210, v253);
            *(v87 + v179[5]) = v175;
            *(v87 + v179[6]) = v262;
            *(v87 + v179[7]) = v260;
            v184 = v87 + v179[9];
            *(v184 + 4) = v183;
            *v184 = v182;
            v185 = sub_220C9F6E4();
            v186 = *(v185 + 48);
            v187 = *(v185 + 52);
            swift_allocObject();
            sub_220C9F6D4();
            v188 = v225;
            *v225 = sub_220C2C82C;
            v188[1] = 0;
            (*(v226 + 104))(v188, *MEMORY[0x277CC8770], v227);
            sub_220C9F6B4();
            sub_220C2CC78(&qword_2812CFFF0, type metadata accessor for AppSessionEndEvent.Model);
            sub_220C9F6C4();
            goto LABEL_84;
          }

          sub_220C2CA44(v214, v213);

          sub_220C2CA44(v201, v202);
          (*(v240 + 8))(v168, v253);
          v171 = *(v148 + 8);
          v171(v242, v147);
          v171(v241, v147);
          v189 = v163;
LABEL_82:
          sub_220C2CBD0(v189, type metadata accessor for WeatherSession);
          goto LABEL_9;
        }

        if (v83 >= v84[2])
        {
          break;
        }

        (*(v262 + 16))(v88, v84 + ((*(v262 + 80) + 32) & ~*(v262 + 80)) + *(v262 + 72) * v83, v87);
        sub_220C9FEA4();
        v90 = sub_220C9FE84();
        v92 = v91;
        (*v219)(v89, v261);
        if (v90 == 0xD000000000000012 && 0x8000000220CB4EB0 == v92)
        {

          (*v258)(v88, v87);
LABEL_28:

          sub_220C2CA44(v214, v213);

          v67 = MEMORY[0x277D84F90];
          goto LABEL_9;
        }

        ++v83;
        v94 = sub_220CA1154();

        (*v258)(v88, v87);
        v84 = v247;
        v86 = v218;
        if (v94)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_84:
      v190 = v241;
      v191 = objc_allocWithZone(sub_220CA0374());
      v192 = sub_220CA0384();
      v193 = v239;
      sub_220C2C7B8(v192);
      if (v85)
      {
        sub_220C2CA44(v214, v213);

        sub_220C2CA44(v201, v202);
        sub_220C2CBD0(v87, type metadata accessor for AppSessionEndEvent.Model);
        v194 = *(v209 + 8);
        v67 = v211;
        v194(v242, v211);
        v194(v190, v67);
        v189 = v244;
        goto LABEL_82;
      }

      sub_220CA03E4();
      v217 = 0;
      sub_220CA0394();
      type metadata accessor for AppSessionEndEvent(0);
      sub_220C2CC78(qword_2812CFF48, type metadata accessor for AppSessionEndEvent);
      v195 = v220;
      sub_220C9FF54();
      v196 = v193[3];
      sub_220CA01C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC50, &qword_220CA4B00);
      v67 = swift_allocObject();
      *(v67 + 1) = xmmword_220CA4A70;
      v197 = v222;
      v67[7] = v222;
      v67[8] = sub_220BF9A3C(&qword_2812D0E80, &qword_27CF7BC20, &qword_220CA4AD0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67 + 4);
      (*(v221 + 32))(boxed_opaque_existential_1, v195, v197);
      sub_220C2CA44(v214, v213);

      sub_220C2CA44(v201, v202);
      sub_220C2CBD0(v228, type metadata accessor for AppSessionEndEvent.Model);
      v199 = *(v209 + 8);
      v200 = v211;
      v199(v242, v211);
      v199(v241, v200);
      sub_220C2CBD0(v244, type metadata accessor for WeatherSession);
    }
  }

  else
  {
    v82 = v76;
    sub_220C9F734();

    swift_willThrow();
LABEL_14:
  }

LABEL_9:
  v68 = *MEMORY[0x277D85DE8];
  return v67;
}

uint64_t sub_220C2C120(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_220CA1224();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_220CA1174();
    __swift_destroy_boxed_opaque_existential_1(v4);
    return sub_220C9F784();
  }

  return result;
}

uint64_t sub_220C2C1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220C9F7D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v21 = *(a1 + 16);
  if (v21)
  {
    v20 = a2;
    v12 = *(v5 + 16);
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12(&v20 - v10, v13, v4);
    v14 = (v5 + 32);
    for (i = 1; v21 != i; ++i)
    {
      v12(v9, v13 + *(v5 + 72) * i, v4);
      sub_220C2CC78(&qword_2812D0F48, MEMORY[0x277CC9578]);
      v16 = sub_220CA0BF4();
      v17 = *(v5 + 8);
      if (v16)
      {
        v17(v11, v4);
        (*v14)(v11, v9, v4);
      }

      else
      {
        v17(v9, v4);
      }
    }

    v18 = v20;
    (*v14)(v20, v11, v4);
    return __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_220C2C448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220C9F7D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v21 = *(a1 + 16);
  if (v21)
  {
    v20 = a2;
    v12 = *(v5 + 16);
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12(&v20 - v10, v13, v4);
    v14 = (v5 + 32);
    for (i = 1; v21 != i; ++i)
    {
      v12(v9, v13 + *(v5 + 72) * i, v4);
      sub_220C2CC78(&qword_2812D0F48, MEMORY[0x277CC9578]);
      v16 = sub_220CA0BF4();
      v17 = *(v5 + 8);
      if (v16)
      {
        v17(v11, v4);
        (*v14)(v11, v9, v4);
      }

      else
      {
        v17(v9, v4);
      }
    }

    v18 = v20;
    (*v14)(v20, v11, v4);
    return __swift_storeEnumTagSinglePayload(v18, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_220C2C6B4@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  if ((result & 0xFF00) == 0x500)
  {
    sub_220C2CC24();
    swift_allocError();
    *v2 = 0xD000000000000027;
    v2[1] = 0x8000000220CB4FA0;
    return swift_willThrow();
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_220C2C73C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result == 4)
  {
    sub_220C2CC24();
    swift_allocError();
    *v2 = 0xD00000000000002CLL;
    v2[1] = 0x8000000220CB4F70;
    return swift_willThrow();
  }

  else
  {
    *a2 = result;
  }

  return result;
}

id sub_220C2C7B8(void *a1)
{
  if (a1)
  {
    return a1;
  }

  sub_220C2CC24();
  swift_allocError();
  *v2 = 0xD00000000000001CLL;
  v2[1] = 0x8000000220CB4F50;
  return swift_willThrow();
}

uint64_t sub_220C2C82C(uint64_t a1, void *a2)
{
  v2 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220CA1244();
  result = sub_220C9F794();
  v5 = v4 * 1000.0;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_220CA1184();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_220C2C948()
{
  result = qword_2812CE7C8;
  if (!qword_2812CE7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF7BC40, &qword_220CA4AF0);
    sub_220C2CC78(&qword_2812D0E88, MEMORY[0x277CEAC80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE7C8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_220C2CA44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_220C2CA9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC28, &qword_220CA4AD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C2CB0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C2CB7C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_220C2CBD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_220C2CC24()
{
  result = qword_2812D0CC8[0];
  if (!qword_2812D0CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812D0CC8);
  }

  return result;
}

uint64_t sub_220C2CC78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PrivateUserData.privateUserID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PrivateUserData.privateUserID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PrivateUserData.privateUserHashMod.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_220C2CDB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5565746176697270 && a2 == 0xED00004449726573;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000220CB4FD0 == a2)
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

uint64_t sub_220C2CE88(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x5565746176697270;
  }
}

uint64_t sub_220C2CED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C2CDB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C2CF00(uint64_t a1)
{
  v2 = sub_220C2D100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C2CF3C(uint64_t a1)
{
  v2 = sub_220C2D100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrivateUserData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC58, &qword_220CA4B70);
  v5 = OUTLINED_FUNCTION_3(v4);
  v16 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v15 = *(v1 + 4);
  v17 = *(v1 + 20);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C2D100();
  sub_220CA1254();
  v20 = 0;
  sub_220CA10C4();
  if (!v2)
  {
    v19 = 1;
    v18 = v17;
    sub_220CA10A4();
  }

  return (*(v16 + 8))(v10, v4);
}

unint64_t sub_220C2D100()
{
  result = qword_2812D03E0;
  if (!qword_2812D03E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D03E0);
  }

  return result;
}

uint64_t PrivateUserData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC60, &qword_220CA4B78);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C2D100();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_220CA0FF4();
  v12 = v11;
  v13 = sub_220CA0FD4();
  v14 = OUTLINED_FUNCTION_0_3();
  v15(v14);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 20) = BYTE4(v13) & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_220C2D344(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_220C2D384(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrivateUserData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C2D4A8()
{
  result = qword_27CF7BC68;
  if (!qword_27CF7BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BC68);
  }

  return result;
}

unint64_t sub_220C2D500()
{
  result = qword_2812D03D0;
  if (!qword_2812D03D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D03D0);
  }

  return result;
}

unint64_t sub_220C2D558()
{
  result = qword_2812D03D8;
  if (!qword_2812D03D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D03D8);
  }

  return result;
}

uint64_t WeatherSession.sessionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t WeatherSession.appSessionID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t WeatherSession.userData.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 40);
}

uint64_t WeatherSession.sessionData.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_7_2() + 28);

  return sub_220C2D6AC(v2, v0);
}

uint64_t type metadata accessor for WeatherSession()
{
  result = qword_2812D0978;
  if (!qword_2812D0978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220C2D6AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC70, &qword_220CA4D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WeatherSession.appData.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_7_2() + 32));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;

  return sub_220C2D764(v3, v4);
}

uint64_t sub_220C2D764(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t WeatherSession.deviceData.getter()
{
  v2 = OUTLINED_FUNCTION_7_2();
  v3 = OUTLINED_FUNCTION_4_5((v1 + *(v2 + 36)));
  *v0 = v3;
  v0[1] = v4;
  v0[2] = v5;
  v0[3] = v6;
  v0[4] = v7;
  v0[5] = v8;
  v0[6] = v9;

  return sub_220C2D7F4(v3, v4);
}

uint64_t sub_220C2D7F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t WeatherSession.debugData.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_7_2() + 40));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t WeatherSession.orientationData.getter()
{
  result = OUTLINED_FUNCTION_7_2();
  *v0 = *(v1 + *(result + 44));
  return result;
}

uint64_t WeatherSession.temperatureScaleData.getter()
{
  result = OUTLINED_FUNCTION_7_2();
  *v0 = *(v1 + *(result + 48));
  return result;
}

uint64_t WeatherSession.notificationSettingsData.getter()
{
  result = OUTLINED_FUNCTION_7_2();
  v3 = (v1 + *(result + 52));
  v4 = *v3;
  *(v0 + 4) = *(v3 + 4);
  *v0 = v4;
  return result;
}

uint64_t sub_220C2D914(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6973736553707061 && a2 == 0xEC00000044496E6FLL;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6174614472657375 && a2 == 0xE800000000000000;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x446E6F6973736573 && a2 == 0xEB00000000617461;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x61746144707061 && a2 == 0xE700000000000000;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6144656369766564 && a2 == 0xEA00000000006174;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7461446775626564 && a2 == 0xE900000000000061;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69;
                if (v12 || (sub_220CA1154() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x8000000220CB4B90 == a2;
                  if (v13 || (sub_220CA1154() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000018 && 0x8000000220CB4BB0 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_220CA1154();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

uint64_t sub_220C2DC4C(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x6973736553707061;
      break;
    case 2:
      result = 0x6174614472657375;
      break;
    case 3:
      result = 0x446E6F6973736573;
      break;
    case 4:
      result = 0x61746144707061;
      break;
    case 5:
      result = 0x6144656369766564;
      break;
    case 6:
      v3 = 0x446775626564;
      goto LABEL_10;
    case 7:
      v3 = 0x746E6569726FLL;
LABEL_10:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C2DD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C2D914(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C2DDBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C2DC44();
  *a1 = result;
  return result;
}

uint64_t sub_220C2DDE4(uint64_t a1)
{
  v2 = sub_220C2E244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C2DE20(uint64_t a1)
{
  v2 = sub_220C2E244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WeatherSession.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC78, &qword_220CA4D98);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v41 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C2E244();
  sub_220CA1254();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v41) = 0;
  OUTLINED_FUNCTION_1_1();
  sub_220CA10C4();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    LOBYTE(v41) = 1;
    OUTLINED_FUNCTION_1_1();
    sub_220CA1074();
    v41 = v3[4];
    v42 = *(v3 + 5);
    v47 = 2;
    v18 = sub_220BFF6B4();

    OUTLINED_FUNCTION_1_5();
    OUTLINED_FUNCTION_1_1();
    sub_220CA1094();
    if (v18)
    {
    }

    else
    {

      v19 = type metadata accessor for WeatherSession();
      v20 = v19[7];
      LOBYTE(v41) = 3;
      type metadata accessor for SessionData();
      sub_220BFF3DC(&qword_2812D1640);
      OUTLINED_FUNCTION_1_1();
      sub_220CA1094();
      v21 = (v3 + v19[8]);
      v22 = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v41 = *v21;
      *&v42 = v22;
      *(&v42 + 1) = v23;
      v43 = v24;
      v47 = 4;
      sub_220C2D764(v41, v22);
      sub_220BFDB88();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_1_1();
      sub_220CA1094();
      v25 = OUTLINED_FUNCTION_9_1();
      sub_220C2E298(v25, v26);
      v41 = OUTLINED_FUNCTION_4_5((v3 + v19[9]));
      *&v42 = v27;
      *(&v42 + 1) = v28;
      v43 = v29;
      v44 = v30;
      v45 = v31;
      v46 = v32;
      v47 = 5;
      sub_220C2D7F4(v41, v27);
      sub_220BFDC50();
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_1_1();
      sub_220CA1094();
      v33 = OUTLINED_FUNCTION_9_1();
      sub_220C2E2DC(v33, v34);
      v35 = (v3 + v19[10]);
      v36 = v35[1];
      v41 = *v35;
      *&v42 = v36;
      v47 = 6;
      v37 = sub_220BFCED0();

      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_1_1();
      sub_220CA1094();

      if (!v37)
      {
        LOWORD(v41) = *(v3 + v19[11]);
        v47 = 7;
        sub_220BFE5BC();
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_1_1();
        sub_220CA1094();
        LOBYTE(v41) = *(v3 + v19[12]);
        v47 = 8;
        sub_220BFF604();
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_1_1();
        sub_220CA1094();
        v38 = (v3 + v19[13]);
        v39 = *v38;
        BYTE4(v41) = *(v38 + 4);
        LODWORD(v41) = v39;
        v47 = 9;
        sub_220C04388();
        OUTLINED_FUNCTION_1_5();
        OUTLINED_FUNCTION_1_1();
        sub_220CA1094();
      }
    }
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_220C2E244()
{
  result = qword_2812D09A0;
  if (!qword_2812D09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D09A0);
  }

  return result;
}

uint64_t sub_220C2E298(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_220C2E2DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t WeatherSession.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC70, &qword_220CA4D90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v41 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC80, &qword_220CA4DA0);
  v9 = OUTLINED_FUNCTION_3(v42);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v41 - v14;
  v44 = type metadata accessor for WeatherSession();
  v16 = *(*(v44 - 1) + 64);
  MEMORY[0x28223BE20](v44);
  v43 = (&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v19 = __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_220C2E244();
  sub_220CA1234();
  if (!v2)
  {
    v41 = a2;
    LOBYTE(v45) = 0;
    v20 = sub_220CA0FF4();
    v27 = v43;
    *v43 = v20;
    v27[1] = v28;
    LOBYTE(v45) = 1;
    v27[2] = sub_220CA0FA4();
    v27[3] = v29;
    v49 = 2;
    sub_220BFF65C();
    OUTLINED_FUNCTION_0_8();
    v30 = v46;
    *(v27 + 2) = v45;
    v27[6] = v30;
    type metadata accessor for SessionData();
    LOBYTE(v45) = 3;
    sub_220BFF3DC(&qword_2812D1638);
    sub_220CA0FC4();
    v31 = v44;
    sub_220C2E9A8(v8, v27 + v44[7]);
    v49 = 4;
    sub_220BFDB30();
    OUTLINED_FUNCTION_0_8();
    v32 = (v27 + v31[8]);
    v33 = v46;
    *v32 = v45;
    v32[1] = v33;
    v49 = 5;
    sub_220BFDBF8();
    OUTLINED_FUNCTION_0_8();
    v34 = v48;
    v35 = v27 + v31[9];
    v36 = v46;
    *v35 = v45;
    *(v35 + 1) = v36;
    *(v35 + 2) = v47;
    *(v35 + 6) = v34;
    v49 = 6;
    sub_220BFCE78();
    OUTLINED_FUNCTION_0_8();
    *(v27 + v44[10]) = v45;
    v49 = 7;
    sub_220BFE564();
    OUTLINED_FUNCTION_0_8();
    *(v27 + v44[11]) = v45;
    v49 = 8;
    sub_220BFF5AC();
    OUTLINED_FUNCTION_0_8();
    *(v27 + v44[12]) = v45;
    v49 = 9;
    sub_220C04330();
    OUTLINED_FUNCTION_0_8();
    (*(v11 + 8))(v15, v42);
    v37 = v45;
    v38 = v43;
    v39 = v43 + v44[13];
    v39[4] = BYTE4(v45);
    *v39 = v37;
    sub_220C2EA18(v38, v41);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_220C2EA7C(v38);
  }

  OUTLINED_FUNCTION_6_2();
  v21 = v43;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (v18)
  {
    v23 = v21[5];

    if ((v11 & 1) == 0)
    {
LABEL_9:
      v22 = v44;
      if (v19)
      {
        goto LABEL_10;
      }

      return result;
    }
  }

  else if (!v11)
  {
    goto LABEL_9;
  }

  v22 = v44;
  result = sub_220C2E940(v21 + v44[7]);
  if (v19)
  {
LABEL_10:
    v24 = (v21 + v22[8]);
    v25 = v24[2];
    v26 = v24[3];
    return sub_220C2E298(*v24, v24[1]);
  }

  return result;
}

uint64_t sub_220C2E940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC70, &qword_220CA4D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220C2E9A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC70, &qword_220CA4D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C2EA18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherSession();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C2EA7C(uint64_t a1)
{
  v2 = type metadata accessor for WeatherSession();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C2EB30()
{
  sub_220BFE7B0(319, &qword_2812CE7D0);
  if (v0 <= 0x3F)
  {
    sub_220BFE7B0(319, &qword_2812CE828);
    if (v1 <= 0x3F)
    {
      sub_220C2ECE4();
      if (v2 <= 0x3F)
      {
        sub_220BFE7B0(319, &qword_2812CE830);
        if (v3 <= 0x3F)
        {
          sub_220BFE7B0(319, &qword_2812D0870);
          if (v4 <= 0x3F)
          {
            sub_220BFE7B0(319, &qword_2812CE7E8);
            if (v5 <= 0x3F)
            {
              sub_220BFE7B0(319, &qword_2812D03E8);
              if (v6 <= 0x3F)
              {
                sub_220BFE7B0(319, &qword_2812CFC28);
                if (v7 <= 0x3F)
                {
                  sub_220BFE7B0(319, &qword_2812CF648);
                  if (v8 <= 0x3F)
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

void sub_220C2ECE4()
{
  if (!qword_2812D07C8[0])
  {
    type metadata accessor for SessionData();
    v0 = sub_220CA0EE4();
    if (!v1)
    {
      atomic_store(v0, qword_2812D07C8);
    }
  }
}

uint64_t getEnumTagSinglePayload for WeatherSession.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WeatherSession.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C2EEA4()
{
  result = qword_27CF7BC88;
  if (!qword_27CF7BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BC88);
  }

  return result;
}

unint64_t sub_220C2EEFC()
{
  result = qword_2812D0990;
  if (!qword_2812D0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0990);
  }

  return result;
}

unint64_t sub_220C2EF54()
{
  result = qword_2812D0998;
  if (!qword_2812D0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0998);
  }

  return result;
}

uint64_t ProviderData.providerName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ProviderData.providerName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_220C2F080(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54746375646F7270 && a2 == 0xEB00000000657079;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xEC000000656D614ELL)
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

uint64_t sub_220C2F150(char a1)
{
  if (a1)
  {
    return 0x72656469766F7270;
  }

  else
  {
    return 0x54746375646F7270;
  }
}

uint64_t sub_220C2F1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C2F080(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C2F1C8(uint64_t a1)
{
  v2 = sub_220C2F3BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C2F204(uint64_t a1)
{
  v2 = sub_220C2F3BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProviderData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC90, &qword_220CA4F70);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v16 - v10;
  v12 = *v1;
  v13 = *(v1 + 1);
  v16[0] = *(v1 + 2);
  v16[1] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C2F3BC();
  sub_220CA1254();
  v19 = v12;
  v18 = 0;
  sub_220C2F410();
  sub_220CA1104();
  if (!v2)
  {
    v17 = 1;
    sub_220CA10C4();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_220C2F3BC()
{
  result = qword_2812D0730;
  if (!qword_2812D0730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0730);
  }

  return result;
}

unint64_t sub_220C2F410()
{
  result = qword_2812D0830;
  if (!qword_2812D0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0830);
  }

  return result;
}

uint64_t ProviderData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC98, &qword_220CA4F78);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C2F3BC();
  sub_220CA1234();
  if (!v2)
  {
    v21 = 0;
    sub_220C2F618();
    sub_220CA1034();
    v14 = v22;
    v20 = 1;
    v16 = sub_220CA0FF4();
    v18 = v17;
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    *(a2 + 8) = v16;
    *(a2 + 16) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C2F618()
{
  result = qword_27CF7BCA0;
  if (!qword_27CF7BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BCA0);
  }

  return result;
}

unint64_t sub_220C2F670()
{
  result = qword_27CF7BCA8;
  if (!qword_27CF7BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BCA8);
  }

  return result;
}

unint64_t sub_220C2F6C8()
{
  result = qword_2812D0718;
  if (!qword_2812D0718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0718);
  }

  return result;
}

uint64_t sub_220C2F74C(uint64_t a1, int a2)
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

uint64_t sub_220C2F78C(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ProviderData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C2F8BC()
{
  result = qword_27CF7BCB0;
  if (!qword_27CF7BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BCB0);
  }

  return result;
}

unint64_t sub_220C2F914()
{
  result = qword_2812D0720;
  if (!qword_2812D0720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0720);
  }

  return result;
}

unint64_t sub_220C2F96C()
{
  result = qword_2812D0728;
  if (!qword_2812D0728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0728);
  }

  return result;
}

WeatherAnalytics::CloudCover_optional __swiftcall CloudCover.init(rawValue:)(Swift::String rawValue)
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

unint64_t CloudCover.rawValue.getter()
{
  result = 0x64656C62616E65;
  switch(*v0)
  {
    case 1:
      v2 = 1953653104;
      goto LABEL_4;
    case 2:
      v2 = 1953722221;
LABEL_4:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
      break;
    case 3:
      result = 0x747361637265766FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C2FA90(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_220C3C934();
}

unint64_t sub_220C2FAA0()
{
  result = qword_27CF7BCB8;
  if (!qword_27CF7BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BCB8);
  }

  return result;
}

unint64_t sub_220C2FB18@<X0>(unint64_t *a1@<X8>)
{
  result = CloudCover.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudCover(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C2FCCC()
{
  result = qword_27CF7BCC0;
  if (!qword_27CF7BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BCC0);
  }

  return result;
}

WeatherAnalytics::DetailType_optional __swiftcall DetailType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t DetailType.rawValue.getter()
{
  result = 0x696C617551726961;
  switch(*v0)
  {
    case 1:
      result = 0x6B694C736C656566;
      break;
    case 2:
      result = 0x79746964696D7568;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
    case 0xC:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x6572757373657270;
      break;
    case 6:
      result = 0x53657369726E7573;
      break;
    case 7:
      result = 0x74617265706D6574;
      break;
    case 8:
      result = 0x7865646E497675;
      break;
    case 9:
      result = 0x696C696269736976;
      break;
    case 0xA:
      result = 1684957559;
      break;
    case 0xB:
      result = 0x736168506E6F6F6DLL;
      break;
    case 0xD:
      result = 0xD000000000000015;
      break;
    case 0xE:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_220C2FF18()
{
  result = qword_27CF7BCC8;
  if (!qword_27CF7BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BCC8);
  }

  return result;
}

unint64_t sub_220C2FF90@<X0>(unint64_t *a1@<X8>)
{
  result = DetailType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DetailType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DetailType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C301CC()
{
  result = qword_27CF7BCD0;
  if (!qword_27CF7BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BCD0);
  }

  return result;
}

WeatherAnalytics::ViewType_optional __swiftcall ViewType.init(rawValue:)(Swift::String rawValue)
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

uint64_t ViewType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 1953720684;
      break;
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = 7364973;
      break;
    case 4:
      result = 0x6C6961746564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C30300(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_220C3A354();
}

unint64_t sub_220C30310()
{
  result = qword_27CF7BCD8;
  if (!qword_27CF7BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BCD8);
  }

  return result;
}

uint64_t sub_220C30388@<X0>(uint64_t *a1@<X8>)
{
  result = ViewType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C3053C()
{
  result = qword_2812CE7F0;
  if (!qword_2812CE7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE7F0);
  }

  return result;
}

uint64_t sub_220C30658()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7BCF8);
  __swift_project_value_buffer(v0, qword_27CF7BCF8);
  return sub_220CA0244();
}

uint64_t ReverseGeocodingFailedEvent.data.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD10, &qword_220CA5520);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t ReverseGeocodingFailedEvent.data.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD10, &qword_220CA5520);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t ReverseGeocodingFailedEvent.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ReverseGeocodingFailedEvent(v0) + 20);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ReverseGeocodingFailedEvent.timedData.setter()
{
  v2 = *(OUTLINED_FUNCTION_8_2() + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t ReverseGeocodingFailedEvent.privateUserData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ReverseGeocodingFailedEvent(v0) + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ReverseGeocodingFailedEvent.privateUserData.setter()
{
  v2 = *(OUTLINED_FUNCTION_8_2() + 24);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t ReverseGeocodingFailedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD10, &qword_220CA5520);
  OUTLINED_FUNCTION_1(v3);
  (*(v4 + 104))(a1, v2);
  v5 = type metadata accessor for ReverseGeocodingFailedEvent(0);
  v6 = *(v5 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1(v7);
  (*(v8 + 104))(a1 + v6, v2);
  v9 = *(v5 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1(v10);
  v12 = *(v11 + 104);

  return v12(a1 + v9, v2);
}

uint64_t ReverseGeocodingFailedEvent.Model.data.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t ReverseGeocodingFailedEvent.Model.timedData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  v1 = *(type metadata accessor for ReverseGeocodingFailedEvent.Model(v0) + 20);
  v2 = sub_220CA04D4();
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_2();

  return v6(v5);
}

uint64_t ReverseGeocodingFailedEvent.Model.privateUserData.getter()
{
  v2 = OUTLINED_FUNCTION_6();
  v3 = (v1 + *(type metadata accessor for ReverseGeocodingFailedEvent.Model(v2) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *v0 = v5;
  *(v0 + 8) = v4;
  *(v0 + 16) = v6;
  *(v0 + 20) = v3;
}

uint64_t ReverseGeocodingFailedEvent.Model.init(data:timedData:privateUserData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
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
  v12 = type metadata accessor for ReverseGeocodingFailedEvent.Model(0);
  v13 = *(v12 + 20);
  v14 = sub_220CA04D4();
  OUTLINED_FUNCTION_1(v14);
  result = (*(v15 + 32))(a4 + v13, a2);
  v17 = a4 + *(v12 + 24);
  *v17 = v8;
  *(v17 + 8) = v9;
  *(v17 + 16) = v10;
  *(v17 + 20) = v11;
  return result;
}

uint64_t sub_220C30D00(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_220CA1154() & 1) != 0)
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

uint64_t sub_220C30E20(char a1)
{
  if (!a1)
  {
    return 1635017060;
  }

  if (a1 == 1)
  {
    return 0x74614464656D6974;
  }

  return 0x5565746176697270;
}

uint64_t sub_220C30E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C30D00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C30EB0(uint64_t a1)
{
  v2 = sub_220C31134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C30EEC(uint64_t a1)
{
  v2 = sub_220C31134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReverseGeocodingFailedEvent.Model.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD18, &qword_220CA5528);
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v23 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C31134();
  sub_220CA1254();
  v13 = v2[1];
  v14 = *(v2 + 16);
  v24 = *v2;
  v25 = v13;
  LOBYTE(v26) = v14;
  v28 = 0;
  v15 = sub_220C31188();

  OUTLINED_FUNCTION_3_3();

  if (!v15)
  {
    v16 = type metadata accessor for ReverseGeocodingFailedEvent.Model(0);
    v17 = *(v16 + 20);
    LOBYTE(v24) = 1;
    sub_220CA04D4();
    sub_220C315AC(&qword_2812D0D80);
    sub_220CA1104();
    v18 = (v2 + *(v16 + 24));
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

unint64_t sub_220C31134()
{
  result = qword_27CF7BD20;
  if (!qword_27CF7BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BD20);
  }

  return result;
}

unint64_t sub_220C31188()
{
  result = qword_2812CEC18;
  if (!qword_2812CEC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC18);
  }

  return result;
}

uint64_t ReverseGeocodingFailedEvent.Model.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_220CA04D4();
  v5 = OUTLINED_FUNCTION_3(v4);
  v36 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD28, &qword_220CA5530);
  v12 = OUTLINED_FUNCTION_3(v11);
  v37 = v13;
  v38 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = type metadata accessor for ReverseGeocodingFailedEvent.Model(0);
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v23 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_220C31134();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v24 = v21;
  v25 = v36;
  v44 = 0;
  sub_220C31558();
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
  (*(v25 + 32))(v24 + *(v16 + 20), v10, v4);
  v44 = 2;
  sub_220BFF730();
  OUTLINED_FUNCTION_4_6();
  sub_220CA1034();
  v28 = OUTLINED_FUNCTION_6_1();
  v29(v28, v38);
  v30 = v41;
  v31 = v42;
  v32 = v43;
  v33 = v24 + *(v16 + 24);
  *v33 = v40;
  *(v33 + 8) = v30;
  *(v33 + 16) = v31;
  *(v33 + 20) = v32;
  sub_220C315F0(v24, v35);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_220C31654(v24);
}

unint64_t sub_220C31558()
{
  result = qword_2812CEC10;
  if (!qword_2812CEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC10);
  }

  return result;
}

uint64_t sub_220C315AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_220CA04D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220C315F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReverseGeocodingFailedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C31654(uint64_t a1)
{
  v2 = type metadata accessor for ReverseGeocodingFailedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220C31718()
{
  sub_220C31824(319, &qword_2812D0E58, sub_220C31558, sub_220C31188);
  if (v0 <= 0x3F)
  {
    sub_220C05010();
    if (v1 <= 0x3F)
    {
      sub_220C31824(319, &qword_2812D0E18, sub_220BFF730, sub_220BFF788);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220C31824(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
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

uint64_t sub_220C318C8()
{
  result = sub_220CA04D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReverseGeocodingFailedEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C31A2C()
{
  result = qword_27CF7BD40;
  if (!qword_27CF7BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BD40);
  }

  return result;
}

unint64_t sub_220C31A84()
{
  result = qword_27CF7BD48;
  if (!qword_27CF7BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BD48);
  }

  return result;
}

unint64_t sub_220C31ADC()
{
  result = qword_27CF7BD50;
  if (!qword_27CF7BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BD50);
  }

  return result;
}

uint64_t NetworkOperationEventData.iterationIndex.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t NetworkOperationEventData.iterationIndex.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t NetworkOperationEventData.errorDescriptions.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t NetworkOperationEventData.bundleIdentifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t NetworkOperationEventData.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t NetworkOperationEventData.init(startTime:duration:iterationIndex:wasRacingRequest:errorDescriptions:cellularRadioAccessTechnology:bundleIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = *a7;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 25) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = v10;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  return result;
}

uint64_t sub_220C31D44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_220CA1154() & 1) != 0)
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
      v7 = a1 == 0x6F69746172657469 && a2 == 0xEE007865646E496ELL;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x8000000220CB4FF0 == a2;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x8000000220CB5010 == a2;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001DLL && 0x8000000220CB5030 == a2;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000010 && 0x8000000220CB5050 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_220CA1154();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_220C31F8C(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461727564;
      break;
    case 2:
      result = 0x6F69746172657469;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C32084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C31D44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C320AC(uint64_t a1)
{
  v2 = sub_220C323D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C320E8(uint64_t a1)
{
  v2 = sub_220C323D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkOperationEventData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD58, &qword_220CA5750);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v22 - v9;
  v12 = *v1;
  v11 = v1[1];
  v27 = v1[2];
  v28 = v11;
  LODWORD(v11) = *(v1 + 24);
  v25 = *(v1 + 25);
  v26 = v11;
  v24 = v1[4];
  v23 = *(v1 + 40);
  v14 = v1[6];
  v13 = v1[7];
  v15 = a1[3];
  v16 = a1[4];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v15);
  sub_220C323D8();
  sub_220CA1254();
  LOBYTE(v31) = 0;
  v20 = v29;
  sub_220CA1124();
  if (!v20)
  {
    v29 = v13;
    LOBYTE(v31) = 1;
    OUTLINED_FUNCTION_1_6();
    sub_220CA1124();
    LOBYTE(v31) = 2;
    OUTLINED_FUNCTION_1_6();
    sub_220CA10B4();
    LOBYTE(v31) = 3;
    OUTLINED_FUNCTION_1_6();
    sub_220CA1084();
    v31 = v24;
    v30 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD60, &qword_220CA5758);
    sub_220C32788(&qword_2812CE7A0);
    OUTLINED_FUNCTION_1_6();
    sub_220CA1094();
    LOBYTE(v31) = v23;
    v30 = 5;
    sub_220C01050();
    OUTLINED_FUNCTION_1_6();
    sub_220CA1104();
    LOBYTE(v31) = 6;
    OUTLINED_FUNCTION_1_6();
    sub_220CA10C4();
  }

  return (*(v6 + 8))(v10, v19);
}

unint64_t sub_220C323D8()
{
  result = qword_2812CF498;
  if (!qword_2812CF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF498);
  }

  return result;
}

uint64_t NetworkOperationEventData.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD68, &qword_220CA5760);
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v28 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C323D8();
  sub_220CA1234();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v38[0]) = 0;
    OUTLINED_FUNCTION_0_9();
    v14 = sub_220CA1054();
    LOBYTE(v38[0]) = 1;
    OUTLINED_FUNCTION_0_9();
    v15 = sub_220CA1054();
    LOBYTE(v38[0]) = 2;
    OUTLINED_FUNCTION_0_9();
    v33 = sub_220CA0FE4();
    v45 = v16 & 1;
    LOBYTE(v38[0]) = 3;
    OUTLINED_FUNCTION_0_9();
    v32 = sub_220CA0FB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BD60, &qword_220CA5758);
    LOBYTE(v34) = 4;
    sub_220C32788(&qword_27CF7BD70);
    sub_220CA0FC4();
    v31 = a2;
    v17 = v38[0];
    LOBYTE(v34) = 5;
    sub_220C327F4();
    sub_220CA1034();
    v30 = LOBYTE(v38[0]);
    v46 = 6;
    v18 = sub_220CA0FF4();
    v19 = v12;
    v21 = v20;
    (*(v8 + 8))(v19, v5);
    *&v34 = v14;
    *(&v34 + 1) = v15;
    *&v35 = v33;
    v29 = v45;
    BYTE8(v35) = v45;
    v22 = v32;
    BYTE9(v35) = v32;
    *&v36 = v17;
    v23 = v30;
    BYTE8(v36) = v30;
    *&v37 = v18;
    *(&v37 + 1) = v21;
    v24 = v37;
    v25 = v31;
    v31[2] = v36;
    v25[3] = v24;
    v26 = v35;
    *v25 = v34;
    v25[1] = v26;
    sub_220C32848(&v34, v38);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v38[0] = v14;
    v38[1] = v15;
    v38[2] = v33;
    v39 = v29;
    v40 = v22;
    v41 = v17;
    v42 = v23;
    v43 = v18;
    v44 = v21;
    return sub_220C32880(v38);
  }
}

uint64_t sub_220C32788(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF7BD60, &qword_220CA5758);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_220C327F4()
{
  result = qword_2812CF1A8[0];
  if (!qword_2812CF1A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812CF1A8);
  }

  return result;
}

unint64_t sub_220C328B4()
{
  result = qword_2812CF470;
  if (!qword_2812CF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF470);
  }

  return result;
}

unint64_t sub_220C3290C()
{
  result = qword_2812CF478;
  if (!qword_2812CF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF478);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_220C329A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_220C329E4(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for NetworkOperationEventData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C32B24()
{
  result = qword_27CF7BD78;
  if (!qword_27CF7BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BD78);
  }

  return result;
}

unint64_t sub_220C32B7C()
{
  result = qword_2812CF488;
  if (!qword_2812CF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF488);
  }

  return result;
}

unint64_t sub_220C32BD4()
{
  result = qword_2812CF490;
  if (!qword_2812CF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF490);
  }

  return result;
}

WeatherAnalytics::PrecipitationIntensity_optional __swiftcall PrecipitationIntensity.init(rawValue:)(Swift::String rawValue)
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

uint64_t PrecipitationIntensity.rawValue.getter()
{
  result = 0x64656C62616E65;
  switch(*v0)
  {
    case 1:
      result = 0x746867696CLL;
      break;
    case 2:
      result = 0x6574617265646F6DLL;
      break;
    case 3:
      result = 0x7976616568;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C32CFC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_220C3ACB0();
}

unint64_t sub_220C32D0C()
{
  result = qword_27CF7BD80;
  if (!qword_27CF7BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BD80);
  }

  return result;
}

uint64_t sub_220C32D84@<X0>(uint64_t *a1@<X8>)
{
  result = PrecipitationIntensity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationIntensity(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C32F38()
{
  result = qword_27CF7BD88;
  if (!qword_27CF7BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BD88);
  }

  return result;
}

uint64_t GeocodeTelemetry.__allocating_init(backend:clock:)(__int128 *a1, __int128 *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  GeocodeTelemetry.init(backend:clock:)(a1, a2);
  return v7;
}

Swift::Void __swiftcall GeocodeTelemetry.geocodeTaskWillBegin(for:)(CLLocation a1)
{
  OUTLINED_FUNCTION_16_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  v5 = OUTLINED_FUNCTION_14_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v40 - v8;
  v10 = sub_220C9F7D4();
  v11 = OUTLINED_FUNCTION_3(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_4();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - v20;
  v42 = v1[2];
  sub_220CA0574();
  v22 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
  sub_220C9FDD4();
  v40 = v13;
  v23 = *(v13 + 16);
  v23(v9, v21, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  swift_beginAccess();
  v24 = v3;
  sub_220C3331C(v9, v24);
  swift_endAccess();
  v41 = v18;
  v23(v18, v21, v10);
  v25 = v24;
  v26 = sub_220CA0A64();
  v27 = sub_220CA0D84();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v43 = v29;
    *v28 = 141558531;
    OUTLINED_FUNCTION_10_1();
    *(v28 + 4) = v30;
    *(v28 + 12) = 2081;
    v31 = [v25 description];
    v32 = sub_220CA0C24();
    v34 = v33;

    v35 = sub_220BFC484(v32, v34, &v43);

    *(v28 + 14) = v35;
    *(v28 + 22) = 2048;
    v36 = v41;
    sub_220C9F794();
    v38 = v37;
    v39 = *(v40 + 8);
    v39(v36, v10);
    *(v28 + 24) = v38;
    _os_log_impl(&dword_220BF4000, v26, v27, "Monitoring reverse-geocoding task. Location=%{private,mask.hash}s, Start Time=%f", v28, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  else
  {

    v39 = *(v40 + 8);
    v39(v41, v10);
  }

  sub_220CA0584();
  v39(v21, v10);
  OUTLINED_FUNCTION_15_4();
}

void sub_220C3331C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = sub_220C9F7D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v10) == 1)
  {
    sub_220C34D84(a1);
    sub_220C34E78(a2, v9);

    sub_220C34D84(v9);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v15 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_220C35008(v14, a2);

    *v3 = v17;
  }
}

void GeocodeTelemetry.geocodeTaskCompleted(for:reverseGeocodeSource:)()
{
  OUTLINED_FUNCTION_16_1();
  v121 = v2;
  v4 = v3;
  v5 = sub_220C9FCC4();
  v6 = OUTLINED_FUNCTION_3(v5);
  v124 = v7;
  v125 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_4();
  v12 = (v10 - v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v104 - v15;
  MEMORY[0x28223BE20](v14);
  v115 = &v104 - v17;
  v116 = type metadata accessor for GeocodeTaskCompletedEvent();
  v18 = OUTLINED_FUNCTION_1(v116);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v123 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  v24 = OUTLINED_FUNCTION_14_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v104 - v27;
  v29 = sub_220C9F7D4();
  v30 = OUTLINED_FUNCTION_3(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_4();
  v122 = v35 - v36;
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_3();
  v118 = v38;
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_3();
  v114 = v40;
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_13_2();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v104 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v104 - v46;
  v117 = v4;
  sub_220C33C4C(v4, v28);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_220C34D84(v28);
    goto LABEL_15;
  }

  v105 = v12;
  v119 = v16;
  v48 = v125;
  v49 = v32;
  v50 = *(v32 + 32);
  v107 = v32 + 32;
  v106 = v50;
  v50(v47, v28, v29);
  v51 = v124;
  v52 = v47;
  v54 = v0[11];
  v53 = v0[12];
  v113 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 8, v54);
  sub_220C9FDD4();
  v55 = v45;
  v56 = *(v49 + 16);
  v108 = v1;
  v112 = v52;
  v56(v1, v52, v29);
  v57 = v114;
  v120 = v55;
  v58 = v29;
  v56(v114, v55, v29);
  v59 = v115;
  v110 = *(v51 + 16);
  v111 = v51 + 16;
  v110(v115, v121, v48);
  v60 = (*(v51 + 88))(v59, v48);
  v61 = *MEMORY[0x277D7AB18];
  v109 = v49;
  if (v60 != v61)
  {
    v64 = v122;
    if (v60 != *MEMORY[0x277D7AB10])
    {
      if (v60 == *MEMORY[0x277D7AB20])
      {
        v62 = 2;
LABEL_10:
        v63 = v64;
        goto LABEL_11;
      }

      (*(v124 + 8))(v59, v125);
    }

    v62 = 1;
    goto LABEL_10;
  }

  v62 = 0;
  v63 = v122;
LABEL_11:
  v65 = v123;
  v66 = v106;
  v106(v123, v108, v58);
  v67 = v116;
  v68 = v57;
  v69 = v58;
  v66(v65 + *(v116 + 20), v68, v58);
  v71 = v117;
  v70 = v118;
  *(v65 + *(v67 + 24)) = v117;
  *(v65 + *(v67 + 28)) = v62;
  v72 = v112;
  v56(v70, v112, v69);
  v56(v63, v120, v69);
  v73 = v125;
  v110(v119, v121, v125);
  v74 = v71;
  v75 = v113;
  v76 = sub_220CA0A64();
  v77 = sub_220CA0D84();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v126[0] = v121;
    *v78 = 141559043;
    OUTLINED_FUNCTION_10_1();
    *(v78 + 4) = v79;
    *(v78 + 12) = 2081;
    v80 = [v74 description];
    v117 = v76;
    v81 = v80;
    v82 = sub_220CA0C24();
    v83 = v122;
    v84 = v82;
    v86 = v85;

    v87 = sub_220BFC484(v84, v86, v126);

    *(v78 + 14) = v87;
    *(v78 + 22) = 2048;
    sub_220C9F794();
    v89 = v88;
    v90 = *(v109 + 8);
    v91 = v70;
    v92 = v119;
    LODWORD(v116) = v77;
    v90(v91, v69);
    *(v78 + 24) = v89;
    *(v78 + 32) = 2048;
    v75 = v113;
    sub_220C9F794();
    v94 = v93;
    v90(v83, v69);
    *(v78 + 34) = v94;
    *(v78 + 42) = 2080;
    v110(v105, v92, v73);
    v95 = sub_220CA0C34();
    v97 = v96;
    (*(v124 + 8))(v92, v73);
    v98 = sub_220BFC484(v95, v97, v126);

    *(v78 + 44) = v98;
    v99 = v117;
    _os_log_impl(&dword_220BF4000, v117, v116, "Submitting reverse-geocoding task completed event. Location=%{private,mask.hash}s, Start Time=%f, End Time=%f, reverseGeocodeSource=%s", v78, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    v72 = v112;
    OUTLINED_FUNCTION_8();
  }

  else
  {

    (*(v124 + 8))(v119, v73);
    v90 = *(v109 + 8);
    v90(v122, v69);
    v90(v70, v69);
  }

  v100 = v75[6];
  v101 = v75[7];
  __swift_project_boxed_opaque_existential_1(v75 + 3, v100);
  v102 = v123;
  (*(v101 + 8))(v123, v100, v101);
  OUTLINED_FUNCTION_5_3();
  sub_220C34DEC(v102, v103);
  v90(v120, v69);
  v90(v72, v69);
LABEL_15:
  OUTLINED_FUNCTION_15_4();
}