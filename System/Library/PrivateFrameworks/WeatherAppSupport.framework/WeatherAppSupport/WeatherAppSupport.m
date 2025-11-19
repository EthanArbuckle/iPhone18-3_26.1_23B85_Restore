uint64_t Assembly.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95600, &qword_220DC29D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_220DC1CC0;
  type metadata accessor for ChartAssembly();
  v3 = OUTLINED_FUNCTION_0_4();
  *(v2 + 56) = v1;
  *(v2 + 64) = sub_220CD3254(&qword_280FA7700, type metadata accessor for ChartAssembly);
  *(v2 + 32) = v3;
  type metadata accessor for DetailsAssembly();
  v4 = OUTLINED_FUNCTION_0_4();
  *(v2 + 96) = v1;
  *(v2 + 104) = sub_220CD3254(qword_280FA7528, type metadata accessor for DetailsAssembly);
  *(v2 + 72) = v4;
  type metadata accessor for StringBuilderAssembly();
  v5 = OUTLINED_FUNCTION_0_4();
  *(v2 + 136) = v1;
  *(v2 + 144) = sub_220CD3254(&qword_280FA72F0, type metadata accessor for StringBuilderAssembly);
  *(v2 + 112) = v5;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t sub_220CD3254(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_0_6()
{

  return sub_220DBF240();
}

double OUTLINED_FUNCTION_0_8@<D0>(uint64_t a1@<X8>)
{
  result = *(a1 + 24);
  *v1 = *a1;
  *(v1 + 8) = *(a1 + 8);
  *(v1 + 24) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return sub_220DBF250();
}

double OUTLINED_FUNCTION_0_14()
{
  *(v1 - 240) = v0;
  v3 = *(v1 - 160);
  *(v1 - 224) = *(v1 - 176);
  *(v1 - 208) = v3;
  *(v1 - 192) = *(v1 - 144);

  return CurrentWeather.chartValue(for:units:)((v1 - 240), (v1 - 224));
}

uint64_t OUTLINED_FUNCTION_0_24@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_25()
{
  sub_220DA9DA4(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 56);
}

__n128 OUTLINED_FUNCTION_0_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __int128 a11, uint64_t a12)
{
  result = a10;
  *v12 = a10;
  *(v12 + 16) = a11;
  *(v12 + 32) = a12;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_30()
{

  return swift_allocError();
}

uint64_t sub_220CD36EC()
{
  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95540, &unk_220DC2890);
  OUTLINED_FUNCTION_0_13();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95548, &qword_220DC43E0);
  OUTLINED_FUNCTION_0_13();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A68, &qword_220DC43E8);
  OUTLINED_FUNCTION_0_13();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A70, &qword_220DC43F0);
  OUTLINED_FUNCTION_0_13();
}

uint64_t sub_220CD3830()
{
  v0 = sub_220DBF2B0();
  v1 = *(v0 - 8);
  v2 = v1[8];
  MEMORY[0x28223BE20]();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBF230();
  sub_220DC0400();
  OUTLINED_FUNCTION_0_3();
  sub_220DBF240();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95540, &unk_220DC2890);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95548, &qword_220DC43E0);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  sub_220DC0330();
  OUTLINED_FUNCTION_0_3();
  sub_220DBF240();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95550, &qword_220DC28A0);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95558, &qword_220DC28A8);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  v5 = *MEMORY[0x277D6CF10];
  v6 = v1[13];
  v6(v4, v5, v0);
  sub_220DBF1E0();

  v7 = v1[1];
  v7(v4, v0);
  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95560, &qword_220DC28B0);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  v6(v4, v5, v0);
  sub_220DBF1E0();

  v7(v4, v0);
  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95568, &qword_220DC28B8);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95570, &qword_220DC28C0);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95578, &qword_220DC28C8);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95580, &qword_220DC28D0);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95588, &qword_220DC28D8);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95590, &qword_220DC28E0);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95598, &qword_220DC28E8);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955A0, &qword_220DC28F0);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955A8, &qword_220DC28F8);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955B0, &qword_220DC2900);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955B8, &qword_220DC2908);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955C0, &qword_220DC2910);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955C8, &qword_220DC2918);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955D0, &qword_220DC2920);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955D8, &qword_220DC2928);
  OUTLINED_FUNCTION_0_3();
  sub_220DBF250();
}

uint64_t sub_220CD3F64()
{
  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95878, &qword_220DC3370);
  OUTLINED_FUNCTION_0_6();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95880, &qword_220DC3378);
  OUTLINED_FUNCTION_0_6();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95888, &qword_220DC3380);
  OUTLINED_FUNCTION_0_6();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95890, &qword_220DC3388);
  OUTLINED_FUNCTION_0_6();

  sub_220DBF230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95898, &unk_220DC3390);
  OUTLINED_FUNCTION_0_6();
}

uint64_t type metadata accessor for UVIndexComponentDescriptionContext()
{
  result = qword_280FA6A38;
  if (!qword_280FA6A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220CD411C()
{
  sub_220DBEAD0();
  if (v0 <= 0x3F)
  {
    sub_220CD41D0();
    if (v1 <= 0x3F)
    {
      sub_220CD431C();
      if (v2 <= 0x3F)
      {
        sub_220DBE740();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220CD41D0()
{
  if (!qword_280FA7730)
  {
    sub_220DBE830();
    v0 = MEMORY[0x277CE3158];
    sub_220CD42D4(&qword_280FA7770, MEMORY[0x277CE3158]);
    sub_220CD42D4(&qword_280FA7780, v0);
    sub_220CD42D4(&qword_280FA7778, v0);
    v1 = sub_220DBEFC0();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA7730);
    }
  }
}

uint64_t sub_220CD42D4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_220CD431C()
{
  if (!qword_280FA7718)
  {
    sub_220DBE960();
    v0 = MEMORY[0x277CE31A0];
    sub_220CD42D4(&qword_280FA7758, MEMORY[0x277CE31A0]);
    sub_220CD42D4(&qword_280FA7768, v0);
    sub_220CD42D4(&qword_280FA7760, v0);
    v1 = sub_220DBEFC0();
    if (!v2)
    {
      atomic_store(v1, &qword_280FA7718);
    }
  }
}

uint64_t type metadata accessor for PrecipitationComponentDescriptionContext()
{
  result = qword_280FA6858;
  if (!qword_280FA6858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220CD446C()
{
  sub_220DBEAD0();
  if (v0 <= 0x3F)
  {
    sub_220CD41D0();
    if (v1 <= 0x3F)
    {
      sub_220CD431C();
      if (v2 <= 0x3F)
      {
        sub_220DBE740();
        if (v3 <= 0x3F)
        {
          sub_220CD4540();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_220CD4540()
{
  if (!qword_280FA72F8)
  {
    v0 = sub_220DC0AE0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA72F8);
    }
  }
}

uint64_t IsSameDayCache.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955E8, &unk_220DC2EA0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_220DBF280();
  return v0;
}

uint64_t type metadata accessor for IsSameDayCache.StartOfDayKey()
{
  result = qword_280FA7628;
  if (!qword_280FA7628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220CD4650()
{
  result = sub_220DBE560();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220CD46CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_220CD475C()
{
  result = qword_280FA7038;
  if (!qword_280FA7038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7038);
  }

  return result;
}

uint64_t sub_220CD47D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  sub_220DBEAD0();
  sub_220CD5EAC();
  sub_220CD5F00();
  sub_220CD489C();
  sub_220CD48F0();
  sub_220CD5F54();
  return sub_220DC0360();
}

unint64_t sub_220CD489C()
{
  result = qword_280FA7328;
  if (!qword_280FA7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7328);
  }

  return result;
}

unint64_t sub_220CD48F0()
{
  result = qword_280FA7338[0];
  if (!qword_280FA7338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FA7338);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_7(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_220CE161C(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_1_16(unint64_t *a1)
{

  return sub_220CE161C(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_1_18(uint64_t a1)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);

  return sub_220D2D7A4(v2, v1, type metadata accessor for PrecipitationPlatterPrecipitationKind);
}

uint64_t OUTLINED_FUNCTION_1_24()
{
  v2 = *(*(v1 - 264) + 8);
  result = v0;
  v4 = *(v1 - 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_30()
{
  v1 = *(*(v0 - 288) + 8);
  result = *(v0 - 320);
  v3 = *(v0 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_33()
{
  v1 = *(*(v0 - 296) + 8);
  result = *(v0 - 168);
  v3 = *(v0 - 288);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_39()
{
  v4 = *v0;
  v5 = v0[1];
  v2 = v0[2];
  return v1;
}

uint64_t sub_220CD4DEC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220CD4E24()
{
  sub_220CD60C4(319, &qword_280FA6638, type metadata accessor for DetailChartDataElement);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v3 = type metadata accessor for DetailChartDataElement(319);
    if (v4 > 0x3F)
    {
      return v3;
    }

    v3 = sub_220DBF1D0();
    if (v5 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = sub_220DBE560();
      if (v6 <= 0x3F)
      {
        sub_220CD60C4(319, &qword_280FA6630, type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_220CD62EC();
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_220CD60C4(319, &qword_280FA6640, MEMORY[0x277CC9578]);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_220CD4FAC()
{
  sub_220DBE560();
  if (v0 <= 0x3F)
  {
    sub_220CD617C(319, &qword_280FA77C8);
    if (v1 <= 0x3F)
    {
      type metadata accessor for DetailChartDataElement.ValueLabel(319);
      if (v2 <= 0x3F)
      {
        sub_220CD617C(319, &qword_280FA6688);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220CD5094()
{
  sub_220CD511C();
  if (v0 <= 0x3F)
  {
    sub_220CD61E8();
    if (v1 <= 0x3F)
    {
      sub_220CD6210();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_220CD511C()
{
  if (!qword_280FA6650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95A48, &unk_220DC4100);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FA6650);
    }
  }
}

uint64_t sub_220CD5194(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_220DC0380();
}

uint64_t sub_220CD5204()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  sub_220DBEAD0();
  sub_220CD5288();
  sub_220CD52DC();

  return MEMORY[0x2821E36B8]();
}

unint64_t sub_220CD5288()
{
  result = qword_280FA7030;
  if (!qword_280FA7030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7030);
  }

  return result;
}

unint64_t sub_220CD52DC()
{
  result = qword_280FA7040;
  if (!qword_280FA7040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7040);
  }

  return result;
}

uint64_t sub_220CD5330()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95898, &unk_220DC3390);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_220DC0380();
}

uint64_t sub_220CD5398(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95548, &qword_220DC43E0);
  result = sub_220DBF200();
  if (!v18)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_220CD570C(&v17, v19);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_220DBF200();
  if (!v16)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_220CD570C(&v15, &v17);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_220DBF200();
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_220CD570C(&v13, &v15);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_220DBF200();
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_220CD570C(&v11, &v13);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_220DBF200();
  if (v10)
  {
    sub_220CD570C(&v9, &v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
    type metadata accessor for PrecipitationComponentDescriptionContext();
    sub_220CD57E0();
    sub_220CD5834();
    sub_220CD5888();
    sub_220CD58DC();
    sub_220CD5930();
    v8 = sub_220DC0360();
    sub_220CD5998(&v11);
    sub_220CD59EC(&v13);
    sub_220CD5A40(&v15);
    sub_220CD5A94(&v17);
    sub_220CD5AE8(v19);
    return v8;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_220CD565C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95540, &unk_220DC2890);
  result = sub_220DBF200();
  if (v7)
  {
    a2[3] = &type metadata for PrecipitationEventCalculator;
    a2[4] = &protocol witness table for PrecipitationEventCalculator;
    v5 = swift_allocObject();
    *a2 = v5;
    return sub_220CD570C(&v6, v5 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220CD570C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_220CD5724()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220CD575C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for PrecipitationCalculator;
  a1[4] = &protocol witness table for PrecipitationCalculator;
  type metadata accessor for IsSameDayCache();
  v2 = swift_allocObject();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF955E8, &unk_220DC2EA0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_220DBF280();
  *(v2 + 16) = result;
  *a1 = v2;
  return result;
}

unint64_t sub_220CD57E0()
{
  result = qword_280FA6E30;
  if (!qword_280FA6E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA6E30);
  }

  return result;
}

unint64_t sub_220CD5834()
{
  result = qword_280FA7708;
  if (!qword_280FA7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7708);
  }

  return result;
}

unint64_t sub_220CD5888()
{
  result = qword_280FA7028;
  if (!qword_280FA7028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7028);
  }

  return result;
}

unint64_t sub_220CD58DC()
{
  result = qword_280FA6CE0;
  if (!qword_280FA6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA6CE0);
  }

  return result;
}

unint64_t sub_220CD5930()
{
  result = qword_280FA6CE8[0];
  if (!qword_280FA6CE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FA6CE8);
  }

  return result;
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

uint64_t sub_220CD5B3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95540, &unk_220DC2890);
  result = sub_220DBF200();
  if (v8)
  {
    v5 = type metadata accessor for PrecipitationTotalHeroStringBuilder();
    v6 = swift_allocObject();
    result = sub_220CD570C(&v7, v6 + 16);
    a2[3] = v5;
    a2[4] = &off_283474388;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220CD5C34()
{
  sub_220DBEF70();
  type metadata accessor for UVIndexComponentDescriptionContext();
  sub_220CD5D08();
  sub_220CD5D5C();
  sub_220CD5DB0();
  sub_220CD5E04();
  sub_220CD5E58();
  sub_220CD475C();
  return sub_220DC0350();
}

unint64_t sub_220CD5D08()
{
  result = qword_280FA7488[0];
  if (!qword_280FA7488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FA7488);
  }

  return result;
}

unint64_t sub_220CD5D5C()
{
  result = qword_280FA7710;
  if (!qword_280FA7710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7710);
  }

  return result;
}

unint64_t sub_220CD5DB0()
{
  result = qword_280FA6ED8[0];
  if (!qword_280FA6ED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FA6ED8);
  }

  return result;
}

unint64_t sub_220CD5E04()
{
  result = qword_280FA6868[0];
  if (!qword_280FA6868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FA6868);
  }

  return result;
}

unint64_t sub_220CD5E58()
{
  result = qword_280FA7250;
  if (!qword_280FA7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7250);
  }

  return result;
}

unint64_t sub_220CD5EAC()
{
  result = qword_280FA73D8[0];
  if (!qword_280FA73D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FA73D8);
  }

  return result;
}

unint64_t sub_220CD5F00()
{
  result = qword_280FA7330;
  if (!qword_280FA7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7330);
  }

  return result;
}

unint64_t sub_220CD5F54()
{
  result = qword_280FA7048[0];
  if (!qword_280FA7048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280FA7048);
  }

  return result;
}

uint64_t sub_220CD5FD0()
{
  v0 = sub_220DBEAD0();
  v1 = sub_220CD6024();
  v2 = MEMORY[0x277D839F8];

  return MEMORY[0x2821E36A0](v1, v2, v0, &type metadata for HumidityDewPointRule, v1);
}

unint64_t sub_220CD6024()
{
  result = qword_280FA7320;
  if (!qword_280FA7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7320);
  }

  return result;
}

void sub_220CD60C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_220DC0770();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_220CD6118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_220CD617C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_220DC0AE0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_220CD61E8()
{
  result = qword_280FA6628;
  if (!qword_280FA6628)
  {
    result = MEMORY[0x277D839F8];
    atomic_store(MEMORY[0x277D839F8], &qword_280FA6628);
  }

  return result;
}

uint64_t sub_220CD6210()
{
  result = qword_280FA6648;
  if (!qword_280FA6648)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_280FA6648);
  }

  return result;
}

uint64_t sub_220CD6258()
{
  result = sub_220DBE560();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DetailChartDataElement(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_220CD62EC()
{
  if (!qword_280FA6E38[0])
  {
    v0 = sub_220DC0AE0();
    if (!v1)
    {
      atomic_store(v0, qword_280FA6E38);
    }
  }
}

uint64_t IsSameDayCache.startOfDay(_:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_4();
  v42 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = sub_220DBE740();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  IsSameDay = type metadata accessor for IsSameDayCache.StartOfDayKey();
  v21 = IsSameDay - 8;
  v22 = *(*(IsSameDay - 8) + 64);
  MEMORY[0x28223BE20](IsSameDay);
  OUTLINED_FUNCTION_4();
  v40 = v23 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = (&v39 - v26);
  v41 = a2;
  sub_220DBE6B0();
  v28 = sub_220DBE6F0();
  v30 = v29;
  (*(v15 + 8))(v19, v12);
  v31 = *(v21 + 28);
  v32 = sub_220DBE560();
  v33 = *(v32 - 8);
  v34 = *(v33 + 16);
  v34(v27 + v31, a1, v32);
  *v27 = v28;
  v27[1] = v30;
  v35 = *(v43 + 16);
  sub_220DBF290();
  if (__swift_getEnumTagSinglePayload(v11, 1, v32) == 1)
  {
    sub_220CD8040(v11);
    v36 = v44;
    sub_220DBE5F0();
    sub_220CD80A8(v27, v40);
    v37 = v42;
    v34(v42, v36, v32);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v32);
    sub_220DBF2A0();
    return sub_220CD6B34(v27);
  }

  else
  {
    sub_220CD6B34(v27);
    return (*(v33 + 32))(v44, v11, v32);
  }
}

uint64_t sub_220CD6660(uint64_t a1, uint64_t a2)
{
  sub_220DC0CE0();
  v4 = *v2;
  v5 = v2[1];
  sub_220DC0660();
  v6 = *(a2 + 20);
  sub_220DBE560();
  sub_220CD46CC(&qword_280FA77A0, MEMORY[0x277CC9578]);
  sub_220DC0560();
  return sub_220DC0D20();
}

uint64_t OUTLINED_FUNCTION_4_1()
{

  return sub_220DBE240();
}

uint64_t OUTLINED_FUNCTION_4_10()
{
  v3 = *(v0 + 16);
  result = v1;
  v5 = *(v2 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_15()
{

  return sub_220CE1D80(v0, type metadata accessor for PrecipitationTomorrowSentence);
}

uint64_t OUTLINED_FUNCTION_4_17()
{

  return sub_220CE1E88(v0, type metadata accessor for PrecipitationWithinOneDaySentence);
}

uint64_t OUTLINED_FUNCTION_4_18()
{

  return sub_220D6F900(v0, type metadata accessor for ChartKind);
}

uint64_t OUTLINED_FUNCTION_4_20()
{
  result = v0;
  v3 = *(v1 - 328);
  v4 = *(v1 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_22(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_4_23(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 - 152);

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_4_24@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t OUTLINED_FUNCTION_4_25(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x28211C5E0](v2 - 144, a2, a2);
}

uint64_t OUTLINED_FUNCTION_4_28@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;
  v4 = *(v2 + 16);
  return v3;
}

uint64_t sub_220CD6AB4(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_220DC0CA0() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for IsSameDayCache.StartOfDayKey() + 20);

  return sub_220DBE460();
}

uint64_t sub_220CD6B34(uint64_t a1)
{
  IsSameDay = type metadata accessor for IsSameDayCache.StartOfDayKey();
  (*(*(IsSameDay - 8) + 8))(a1, IsSameDay);
  return a1;
}

BOOL FeelsLikeNoDifferenceRule.isSatisfied(for:data:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (MEMORY[0x28223BE20])();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  sub_220DBE110();
  sub_220DBE050();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v7, v0);
  v11 = round(v9);
  sub_220DBE9B0();
  sub_220DBE110();
  v10(v7, v0);
  sub_220DBE050();
  v13 = v12;
  v10(v5, v0);
  return v11 - round(v13) == 0.0;
}

BOOL FeelsLikeDifferenceRule.isSatisfied(for:data:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  sub_220DBE110();
  sub_220DBE050();
  v12 = v11;
  v13 = *(v3 + 8);
  v13(v10, v0);
  v14 = round(v12);
  sub_220DBE9B0();
  sub_220DBE110();
  v13(v10, v0);
  sub_220DBE050();
  v16 = v15;
  v13(v8, v0);
  v17 = round(v16);
  return v14 > v17 || v14 < v17;
}

uint64_t FeelsLikeDifferenceRule.description(for:data:)(uint64_t a1, uint64_t a2)
{
  v38[1] = a2;
  v2 = sub_220DBE5C0();
  v3 = OUTLINED_FUNCTION_0(v2);
  v41 = v4;
  v42 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220DBE5E0();
  v10 = OUTLINED_FUNCTION_0(v9);
  v39 = v11;
  v40 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FA0, &unk_220DC17F0);
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v17);
  v24 = v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v38 - v25;
  v27 = objc_opt_self();
  v28 = [v27 fahrenheit];
  sub_220DBE130();

  sub_220DBE050();
  v30 = v29;
  v31 = *(v19 + 8);
  v31(v26, v16);
  sub_220DBE9B0();
  v32 = [v27 fahrenheit];
  sub_220DBE130();

  v31(v24, v16);
  sub_220DBE050();
  v34 = v33;
  v31(v26, v16);
  sub_220DBE580();
  sub_220DBE5D0();
  (*(v39 + 8))(v15, v40);
  v35 = sub_220DBE5A0();
  (*(v41 + 8))(v8, v42);
  if (v30 <= v34)
  {
    if (v35)
    {
      if (qword_280FA6600 == -1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v30 < 40.0)
      {
        OUTLINED_FUNCTION_19();
        if (!v36)
        {
          OUTLINED_FUNCTION_10();
        }

        goto LABEL_21;
      }

      OUTLINED_FUNCTION_19();
      if (v36)
      {
LABEL_21:
        OUTLINED_FUNCTION_2_0();
        return sub_220DBE240();
      }
    }

    OUTLINED_FUNCTION_10();
    goto LABEL_21;
  }

  if ((v35 & 1) == 0)
  {
    if (v30 >= 92.0)
    {
      OUTLINED_FUNCTION_19();
      if (!v36)
      {
        OUTLINED_FUNCTION_10();
      }
    }

    else
    {
      OUTLINED_FUNCTION_19();
      if (!v36)
      {
        OUTLINED_FUNCTION_10();
      }
    }

    goto LABEL_21;
  }

  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_10();
  }

  return sub_220DBE240();
}

uint64_t OUTLINED_FUNCTION_5_2()
{
  result = type metadata accessor for PrecipitationTotalStringAmount(0);
  v1 = *(result + 20);
  return result;
}

void OUTLINED_FUNCTION_5_10()
{
  v2 = *(v0 + 16) + 1;

  sub_220CE5648();
}

uint64_t OUTLINED_FUNCTION_5_15()
{
  result = v0;
  v3 = *(v1 - 336);
  v4 = *(v1 - 288);
  v5 = *(v1 - 312);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_17()
{
  v1 = *(v0 - 184);
  v2 = *(*(v0 - 192) + 8);
  return *(v0 - 232);
}

void OUTLINED_FUNCTION_5_19()
{
  v2 = (v0 + *(v1 + 24));
  *v2 = 0;
  v2[1] = 0;
  v3 = v0 + *(v1 + 28);
}

uint64_t OUTLINED_FUNCTION_5_22()
{
  v1 = *(*(v0 - 296) + 8);
  result = *(v0 - 272);
  v3 = *(v0 - 320);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_24@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_5_25()
{
  result = v0;
  v3 = *(v1 - 184);
  v4 = *(v1 - 376);
  v5 = *(v1 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_27()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_5_29()
{

  return type metadata accessor for ConditionDetailChartHeaderInput(0);
}

void OUTLINED_FUNCTION_5_32()
{
  v4 = (v0 + *(v1 + 28));
  *v4 = v2;
  v4[1] = v3;
  v5 = v0 + *(v1 + 32);
}

void *OUTLINED_FUNCTION_18_0(void *result)
{
  v2 = *(v1 - 264);
  *result = *(v1 - 400);
  result[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_7()
{
  v2 = *(v0 - 416);

  return sub_220DBE0B0();
}

uint64_t OUTLINED_FUNCTION_18_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_18_14@<X0>(__n128 *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(a2 - 256) = a1;
  a1[1] = a3;
  return *(v3 - 272);
}

uint64_t OUTLINED_FUNCTION_18_15()
{

  return sub_220DC0CA0();
}

uint64_t OUTLINED_FUNCTION_18_17()
{

  return sub_220DBF310();
}

uint64_t OUTLINED_FUNCTION_18_18()
{

  return sub_220DB7114(v0, v1);
}

id sub_220CD78F0()
{
  _s12BundleLookupCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280FA6608 = result;
  return result;
}

void OUTLINED_FUNCTION_2_1()
{
  v4 = (v3 + v0[6]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v3 + v0[7]);
  *v5 = v1;
  v5[1] = v2;
  v6 = (v3 + v0[8]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v3 + v0[11]);
  *v7 = 0;
  v7[1] = 0;
  *(v3 + v0[9]) = 0;
  v8 = v3 + v0[10];
}

__n128 *OUTLINED_FUNCTION_2_2(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = (result->n128_u64 + v2);
  v5 = *(v3 - 320);
  *v4 = *(v3 - 328);
  v4[1] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_4()
{
  v3 = *v1;
  v4 = *(v2 + 104);
  return v0;
}

uint64_t OUTLINED_FUNCTION_2_8()
{

  return sub_220D18B64(v0, type metadata accessor for PrecipitationTotalStringAmount);
}

uint64_t OUTLINED_FUNCTION_2_11(uint64_t a1)
{
  v4 = v2 + *(a1 + 48);

  return sub_220D18B04(v4, v1, type metadata accessor for PrecipitationTotalStringAmount);
}

uint64_t OUTLINED_FUNCTION_2_14(unint64_t *a1)
{

  return sub_220CE161C(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_2_16(uint64_t a1)
{
  v3 = *(v1 - 432);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
}

void OUTLINED_FUNCTION_2_17()
{
  v3 = (v0 + v1[8]);
  v4 = *(v2 - 128);
  *v3 = *(v2 - 160);
  v3[1] = v4;
  v5 = (v0 + v1[11]);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + v1[9]) = 0;
  v6 = v0 + v1[10];
}

uint64_t OUTLINED_FUNCTION_2_25()
{
  v1 = *(*(v0 - 456) + 104);
  result = *(v0 - 464);
  v3 = *(v0 - 120);
  return result;
}

void OUTLINED_FUNCTION_2_33(uint64_t a1@<X8>)
{
  *(v1 + a1) = v2;
  *(v1 + *(v3 + 32)) = v4;
  v5 = *(v3 + 36);
}

uint64_t OUTLINED_FUNCTION_2_34@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_36@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + 8) = a2;
  *(a1 + 24) = v3;
  return v2;
}

uint64_t sub_220CD7E14()
{
  result = type metadata accessor for PrecipitationTotalStringAmount.Format(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_220CD7E90()
{
  if (!qword_280FA77A8)
  {
    sub_220CD8184(255, &qword_280FA6618, 0x277CCAE20);
    v0 = sub_220DBE140();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA77A8);
    }
  }
}

void sub_220CD7EF8()
{
  sub_220CD7F80();
  if (v0 <= 0x3F)
  {
    sub_220CD7FC8();
    if (v1 <= 0x3F)
    {
      sub_220CD81C4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_220CD7F80()
{
  if (!qword_280FA77B0)
  {
    sub_220CD7E90();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA77B0);
    }
  }
}

void sub_220CD7FC8()
{
  if (!qword_280FA77C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95208, &unk_220DC1E40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FA77C0);
    }
  }
}

uint64_t sub_220CD8040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220CD80A8(uint64_t a1, uint64_t a2)
{
  IsSameDay = type metadata accessor for IsSameDayCache.StartOfDayKey();
  (*(*(IsSameDay - 8) + 16))(a2, a1, IsSameDay);
  return a2;
}

uint64_t SevereAlertComponentStringsBuilder.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_220DC0200();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_220DC01F0();
  *a1 = result;
  return result;
}

uint64_t sub_220CD8184(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_220CD81C4()
{
  if (!qword_280FA77B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95208, &unk_220DC1E40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FA77B8);
    }
  }
}

uint64_t sub_220CD8288()
{
  result = type metadata accessor for PrecipitationTotalStringAmount(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PrecipitationTotalHeroStringTimeframe(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_220CD831C()
{
  v0 = sub_220DBE560();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_220CD83AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v169 = a4;
  v167 = a3;
  v164 = a2;
  v170 = a5;
  v163 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v6 = OUTLINED_FUNCTION_6(v163);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_57();
  v149[4] = v11;
  v161 = type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext(0);
  v12 = OUTLINED_FUNCTION_6(v161);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_57();
  v151 = v17;
  v158 = type metadata accessor for PresentativePastHourRange(0);
  v18 = OUTLINED_FUNCTION_6(v158);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  v159 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_57();
  v165 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v25 = OUTLINED_FUNCTION_0(v24);
  v171 = v26;
  v172 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v34);
  v36 = v149 - v35;
  v37 = sub_220DBEE10();
  v38 = OUTLINED_FUNCTION_0(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9();
  v156 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_25_0();
  v155 = v45;
  MEMORY[0x28223BE20](v46);
  v48 = v149 - v47;
  v49 = sub_220DBE560();
  v50 = OUTLINED_FUNCTION_0(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  v55 = MEMORY[0x28223BE20](v50);
  v57 = v149 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v59 = v149 - v58;
  sub_220DBEA60();
  sub_220DBE480();
  v60 = *(v52 + 8);
  v61 = v57;
  v62 = v49;
  v169 = v52 + 8;
  v60(v61, v49);
  v63 = v60;
  v174 = 2;
  v166 = a1;
  sub_220DBEA50();
  sub_220DBEDD0();
  v66 = *(v40 + 8);
  v64 = v40 + 8;
  v65 = v66;
  v157 = v37;
  v66(v48, v37);
  v67 = v172;
  sub_220DBE050();
  v69 = v68;
  v71 = v171 + 8;
  v70 = *(v171 + 8);
  v160 = v36;
  v72 = v168;
  v162 = v70;
  (v70)(v36, v67);
  if (v69 > 0.0 && (sub_220CD9818(&v174, v72, v59, v166, v164) & 1) != 0)
  {
    v149[1] = v71;
    v149[3] = v63;
    v164 = v59;
    v167 = v62;
    v73 = v72[5];
    v74 = v72[6];
    v149[2] = __swift_project_boxed_opaque_existential_1(v72 + 2, v73);
    sub_220DBEA20();
    v75 = v155;
    sub_220DBEA30();
    v76 = v156;
    sub_220DBEA50();
    v77 = v165;
    (*(v74 + 40))(v48, v75, v76, v73, v74);
    v78 = v157;
    v65(v76, v157);
    v65(v75, v78);
    v65(v48, v78);
    v79 = v159;
    sub_220D5AC7C(v77, v159);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v81 = v172;
      v82 = v160;
      if (EnumCaseMultiPayload == 1)
      {
        v83 = OUTLINED_FUNCTION_1_28();
        v84 = v152;
        sub_220D5ACE0(v83, v152, v85);
        OUTLINED_FUNCTION_9_16();
        v87 = *(v86 + 20);
        v88 = *(v86 + 24);
        v173[1] = *(v84 + v88);
        OUTLINED_FUNCTION_18_9();
        v89 = OUTLINED_FUNCTION_13_11(&v178);
        v90(v89);
        v91 = *(v84 + v88);
        v92 = *(v171 + 16);
        v93 = OUTLINED_FUNCTION_16_13(&v175);
        v92(v93);
        (v92)(v82, v76, v81);
        OUTLINED_FUNCTION_11_11();
        if (v94)
        {
          v95 = 1;
        }

        else
        {
          v95 = 0;
        }

        v96 = (2 * v95);
        v97 = v170;
        if (v94)
        {
          OUTLINED_FUNCTION_10_15();
          sub_220CF8B70();
        }

        else
        {
          OUTLINED_FUNCTION_10_15();
          sub_220CDB1D4();
        }

        v124 = OUTLINED_FUNCTION_19_9(&v175);
        v125 = v162;
        v162(v124);
        *v65 = v96;
        v126 = *(v84 + v88);
        v127 = type metadata accessor for PrecipitationTotalHeroString(0);
        v128 = OUTLINED_FUNCTION_12_15(v127);
        OUTLINED_FUNCTION_15_10(v128, 2);
        v129 = v84 + v168;
        sub_220DBE050();
        v130 = &v178;
      }

      else
      {
        v112 = OUTLINED_FUNCTION_1_28();
        v84 = v153;
        sub_220D5ACE0(v112, v153, v113);
        OUTLINED_FUNCTION_9_16();
        v115 = *(v114 + 20);
        v116 = *(v114 + 24);
        v173[2] = *(v84 + v116);
        OUTLINED_FUNCTION_18_9();
        v117 = OUTLINED_FUNCTION_13_11(&v179);
        v118(v117);
        v119 = *(v84 + v116);
        v120 = *(v171 + 16);
        v121 = OUTLINED_FUNCTION_16_13(&v177);
        v120(v121);
        (v120)(v82, v76, v81);
        OUTLINED_FUNCTION_11_11();
        if (v122)
        {
          v123 = 1;
        }

        else
        {
          v123 = 0;
        }

        v96 = (2 * v123);
        v97 = v170;
        if (v122)
        {
          OUTLINED_FUNCTION_10_15();
          sub_220CF8B70();
        }

        else
        {
          OUTLINED_FUNCTION_10_15();
          sub_220CDB1D4();
        }

        v140 = OUTLINED_FUNCTION_19_9(&v177);
        v125 = v162;
        v162(v140);
        *v65 = v96;
        v126 = *(v84 + v116);
        v141 = type metadata accessor for PrecipitationTotalHeroString(0);
        v142 = OUTLINED_FUNCTION_12_15(v141);
        OUTLINED_FUNCTION_15_10(v142, 3);
        v129 = v84 + v168;
        sub_220DBE050();
        v130 = &v179;
      }

      v143 = OUTLINED_FUNCTION_19_9(v130);
      v125(v143);
      OUTLINED_FUNCTION_6_14();
      sub_220CDD864(v84, v144);
      OUTLINED_FUNCTION_7_17();
      v145 = OUTLINED_FUNCTION_14_15();
      v146(v145);
      v147 = OUTLINED_FUNCTION_0_18();
      result = sub_220D5ACE0(v147, v97, v148);
      v97[*(v96 + 20)] = v126;
    }

    else
    {
      v99 = OUTLINED_FUNCTION_1_28();
      v100 = v151;
      sub_220D5ACE0(v99, v151, v101);
      OUTLINED_FUNCTION_9_16();
      v103 = *(v102 + 20);
      v104 = *(v102 + 24);
      v173[0] = *(v100 + v104);
      v105 = v154;
      (*(v64 + 8))(v100, v100 + v103, v173, v79, v64);
      v106 = *(v100 + v104);
      v107 = v172;
      v108 = *(v171 + 16);
      v109 = v150;
      v108(v150, v105, v172);
      v108(v160, v109, v107);
      OUTLINED_FUNCTION_11_11();
      if (v110)
      {
        v111 = 1;
      }

      else
      {
        v111 = 0;
      }

      v96 = (2 * v111);
      if (v110)
      {
        OUTLINED_FUNCTION_10_15();
        sub_220CF8B70();
      }

      else
      {
        OUTLINED_FUNCTION_10_15();
        sub_220CDB1D4();
      }

      v97 = v170;
      v131 = v162;
      (v162)(v109, v107);
      *v65 = v96;
      LODWORD(v171) = *(v100 + v104);
      v132 = type metadata accessor for PrecipitationTotalHeroString(0);
      v133 = OUTLINED_FUNCTION_12_15(v132);
      OUTLINED_FUNCTION_15_10(v133, 1);
      v129 = v100 + v103;
      sub_220DBE050();
      v134 = OUTLINED_FUNCTION_19_9(&v176);
      v131(v134);
      OUTLINED_FUNCTION_6_14();
      sub_220CDD864(v100, v135);
      OUTLINED_FUNCTION_7_17();
      v136 = OUTLINED_FUNCTION_14_15();
      v137(v136);
      v138 = OUTLINED_FUNCTION_0_18();
      result = sub_220D5ACE0(v138, v97, v139);
      v97[*(v96 + 20)] = v171;
    }

    v97[*(v96 + 28)] = v129;
  }

  else
  {
    sub_220CDA608(v167, 0, v170);
    return v63(v59, v62);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return sub_220DBE020();
}

uint64_t OUTLINED_FUNCTION_25_3@<X0>(uint64_t a1@<X8>)
{

  return sub_220CDDBBC(v2 + a1, v1);
}

uint64_t OUTLINED_FUNCTION_25_4(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(v3, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return sub_220DBE020();
}

uint64_t OUTLINED_FUNCTION_25_9()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 216);
  v4 = *(v0 - 136);

  return sub_220DBE0B0();
}

uint64_t OUTLINED_FUNCTION_25_10()
{

  return sub_220DBE020();
}

uint64_t OUTLINED_FUNCTION_25_12()
{

  return sub_220DB7064(v1, v0);
}

uint64_t OUTLINED_FUNCTION_13_1@<X0>(uint64_t a1@<X8>)
{
  result = *(a1 - 256);
  v3 = *(v1 - 280);
  v4 = *(v1 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_3()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_5()
{
  v0 = type metadata accessor for PrecipitationTotalHeroStringTimeframe(0);
  v2 = *(v0 - 8);
  return v0 - 8;
}

uint64_t OUTLINED_FUNCTION_13_6(uint64_t a1)
{
  v4 = *(a1 + 48);
  v5 = *(v2 - 104);

  return sub_220D15FF4(v1, v5);
}

uint64_t OUTLINED_FUNCTION_13_12()
{
  result = v0;
  v3 = *(v1 - 128);
  return result;
}

void OUTLINED_FUNCTION_13_13()
{
  v2 = *(v0 + 104);
  *(v1 - 288) = v0 + 104;
  *(v1 - 280) = v2;
}

uint64_t OUTLINED_FUNCTION_13_15()
{
  v4 = *(v2 + 8);
  v5 = *v0;
  *(v3 - 160) = v0[1];
  *(v3 - 144) = v5;
  *(v3 - 176) = v0[2];
  return v1;
}

uint64_t OUTLINED_FUNCTION_13_18()
{

  return sub_220DBE050();
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return swift_once();
}

__n128 *OUTLINED_FUNCTION_6_9(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v4 = (result->n128_u64 + v2);
  v5 = *(v3 - 304);
  *v4 = *(v3 - 464);
  v4[1] = v5;
  return result;
}

void OUTLINED_FUNCTION_6_10()
{
  v2 = (v1 + v0[8]);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + v0[11]);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0[9];
}

size_t OUTLINED_FUNCTION_6_13()
{
  v2 = *(v0 + 16) + 1;

  return sub_220D563D8(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_6_15()
{
  v1 = *(*(v0 - 288) + 8);
  result = *(v0 - 352);
  v3 = *(v0 - 336);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_16()
{
  v1 = *(v0 - 168);
  v2 = *(*(v0 - 176) + 8);
  return *(v0 - 328);
}

uint64_t OUTLINED_FUNCTION_6_19@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_6_20@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_21()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_27@<X0>(char a1@<W8>)
{
  *v1 = a1;
  v4 = *(v3 + 8);
  return v2;
}

void *OUTLINED_FUNCTION_9_0(void *result)
{
  v2 = *(v1 - 200);
  *result = *(v1 - 312);
  result[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_3()
{

  return sub_220DC0580();
}

uint64_t OUTLINED_FUNCTION_9_7()
{
  *(v2 - 120) = v0;
  v3 = *v1;
  return *(v2 - 72);
}

uint64_t OUTLINED_FUNCTION_9_11()
{
  v1 = *(*(v0 - 296) + 8);
  result = *(v0 - 304);
  v3 = *(v0 - 264);
  return result;
}

void *OUTLINED_FUNCTION_9_16()
{
  v2 = v0[6];
  result = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v4 = *(v1 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_19(unint64_t *a1)
{

  return sub_220CE161C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_9_20(uint64_t a1)
{

  return sub_220CDA548(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_9_23()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_9_25()
{

  return sub_220DC0580();
}

void sub_220CD95D4()
{
  sub_220CD7E90();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_24_4()
{

  return sub_220DC06D0();
}

uint64_t OUTLINED_FUNCTION_24_5()
{
  v2 = *(v0 - 368);

  return sub_220DBF0D0();
}

uint64_t OUTLINED_FUNCTION_24_7()
{
}

unint64_t OUTLINED_FUNCTION_24_10()
{
  result = 0xD000000000000014;
  v2 = *(v0 - 656);
  return result;
}

void sub_220CD976C()
{
  if (!qword_280FA7020)
  {
    v0 = type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext(0);
    if (!v1)
    {
      atomic_store(v0, &qword_280FA7020);
    }
  }
}

void sub_220CD97B4()
{
  sub_220CD976C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_220CD9818(unsigned __int8 *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v39 = a5;
  v40 = a4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C18, qword_220DC5160);
  v8 = *(*(v38 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v38);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = sub_220DBE560();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  v24 = *a1;
  if (v24 != 2)
  {
    return v24 & 1;
  }

  v37 = v21;
  v25 = a2[5];
  v35 = a2[6];
  v36 = v25;
  v26 = __swift_project_boxed_opaque_existential_1(a2 + 2, v25);
  sub_220DBEA60();
  sub_220CD9B24();
  result = sub_220DC0590();
  if (result)
  {
    (*(v15 + 16))(v13, a3, v14);
    v28 = v38;
    v29 = *(v38 + 48);
    v40 = v26;
    v30 = *(v15 + 32);
    v30(&v13[v29], v18, v14);
    sub_220CD9B7C(v13, v11);
    v31 = *(v28 + 48);
    v30(v23, v11, v14);
    v34 = a1;
    v32 = *(v15 + 8);
    v32(&v11[v31], v14);
    sub_220CD9BEC(v13, v11);
    v30(&v23[*(v37 + 36)], &v11[*(v28 + 48)], v14);
    v32(v11, v14);
    LOBYTE(v24) = (*(v35 + 88))(v23, v39, v36);
    sub_220CDA5A0(v23);
    v33 = v34;
    swift_beginAccess();
    *v33 = v24 & 1;
    return v24 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_220CD9B24()
{
  result = qword_280FA7798;
  if (!qword_280FA7798)
  {
    sub_220DBE560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7798);
  }

  return result;
}

uint64_t sub_220CD9B7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C18, qword_220DC5160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220CD9BEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C18, qword_220DC5160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL PrecipitationCalculator.hasPrecipitationOccurred(within:hourlyForecast:)(uint64_t a1)
{
  v2 = *v1;
  v4[2] = a1;
  v4[3] = v2;
  return sub_220CD9CC0(sub_220CDA528, v4);
}

BOOL sub_220CD9CC0(uint64_t (*a1)(char *), uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v30 = sub_220DBE960();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959D8, &unk_220DC3B00);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  (*(v7 + 16))(v10, v2, v6);
  sub_220CDA008(&qword_280FA7728);
  sub_220DC06D0();
  v16 = *(v12 + 44);
  sub_220CDA008(&qword_280FA7720);
  v27 = (v3 + 16);
  v28 = (v3 + 8);
  do
  {
    sub_220DC08B0();
    v17 = v34[0];
    v33 = *&v15[v16];
    if (v33 == v34[0])
    {
      break;
    }

    v18 = sub_220DC08E0();
    v19 = v6;
    v20 = v29;
    v21 = v30;
    (*v27)(v29);
    v18(v34, 0);
    sub_220DC08C0();
    v22 = v35;
    v23 = v31(v20);
    v35 = v22;
    if (v22)
    {
      (*v28)(v20, v21);
      break;
    }

    v24 = v23;
    (*v28)(v20, v21);
    v6 = v19;
  }

  while ((v24 & 1) == 0);
  sub_220CDA548(v15, &qword_27CF959D8, &unk_220DC3B00);
  return v33 != v17;
}

uint64_t sub_220CDA008(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95270, &unk_220DC3AF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL sub_220CDA058()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v1 = *(v0 - 8);
  v43 = v0;
  v44 = v1;
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v40 = &v39 - v6;
  MEMORY[0x28223BE20](v5);
  v42 = &v39 - v7;
  v8 = sub_220DBEBA0();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v39 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = sub_220DBE560();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE8F0();
  sub_220CD9B24();
  v19 = sub_220DC0580();
  v20 = *(v15 + 8);
  v20(v18, v14);
  if (v19)
  {
    return 0;
  }

  sub_220DBE8F0();
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0) + 36);
  v22 = sub_220DC0580();
  v20(v18, v14);
  if (v22)
  {
    return 0;
  }

  sub_220DBE950();
  v23 = sub_220DBEB80();
  v24 = *(v45 + 8);
  v25 = v13;
  v26 = v46;
  v24(v25, v46);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

  v27 = v40;
  sub_220DBE8A0();
  v28 = v41;
  sub_220DBE880();
  v29 = v39;
  sub_220DBE950();
  WeatherCondition.dominantPrecipitation.getter(&v47);
  v24(v29, v26);
  v31 = v42;
  v30 = v43;
  switch(v47)
  {
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
      v32 = v44;
      v33 = *(v44 + 8);
      v33(v28, v43);
      (*(v32 + 32))(v31, v27, v30);
      break;
    case 2:
      v38 = v44;
      v33 = *(v44 + 8);
      v33(v27, v43);
      (*(v38 + 32))(v31, v28, v30);
      break;
    default:
      v37 = [objc_opt_self() centimeters];
      sub_220CDB190();
      sub_220DBE040();
      v33 = *(v44 + 8);
      v33(v28, v30);
      v33(v27, v30);
      break;
  }

  sub_220DBE050();
  v35 = v34;
  v33(v31, v30);
  return v35 > 0.0;
}

BOOL sub_220CDA528()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_220CDA058();
}

uint64_t sub_220CDA548(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_220CDA5A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C20, &qword_220DC5FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220CDA608@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v51 = a2;
  v55 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v6 = OUTLINED_FUNCTION_0(v5);
  v53 = v7;
  v54 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_57();
  v52 = v13;
  v14 = sub_220DBEE10();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[0] = type metadata accessor for PrecipitationTotalStringAmount(0);
  v22 = OUTLINED_FUNCTION_6(v50[0]);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v50[1] = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v3[5];
  v26 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v27);
  if ((*(v26 + 56))(a1, v27, v26))
  {
    v28 = v3[5];
    v29 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v28);
    (*(v29 + 16))(&v57, a1, v28, v29);
    v30 = v57;
    if (v51)
    {
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }

    if (v57 != 2)
    {
      v31 = 0;
    }

    v56 = v31;
    sub_220DBE7E0();
    PrecipitationTotalStringAmount.init(context:precipitationAmountByType:)();
    v32 = type metadata accessor for PrecipitationTotalHeroString(0);
    v33 = v32[6];
    v34 = v55;
    sub_220DBE810();
    v35 = sub_220DBE560();
    __swift_storeEnumTagSinglePayload(v34 + v33, 0, 3, v35);
    v36 = v52;
    sub_220DBE790();
    v37 = v54;
    sub_220DBE050();
    (*(v53 + 8))(v36, v37);
    v38 = OUTLINED_FUNCTION_0_18();
    result = sub_220D5ACE0(v38, v34, v39);
    *(v34 + v32[5]) = v30;
    *(v34 + v32[7]) = v36;
  }

  else
  {
    sub_220DBE7E0();
    sub_220DBEDD0();
    (*(v17 + 8))(v21, v14);
    v41 = v54;
    sub_220DBE030();
    v42 = v53;
    v43 = *(v53 + 8);
    v43(v12, v41);
    sub_220CDB190();
    v44 = v52;
    sub_220DBE040();
    (*(v42 + 16))(v12, v44, v41);
    v45 = v55;
    v46 = &v55[*(v50[0] + 20)];
    sub_220CDB1D4();
    v43(v44, v41);
    *v45 = 0;
    v47 = type metadata accessor for PrecipitationTotalHeroString(0);
    v48 = v47[6];
    sub_220DBE810();
    v49 = sub_220DBE560();
    result = __swift_storeEnumTagSinglePayload(&v45[v48], 0, 3, v49);
    v45[v47[5]] = 5;
    v45[v47[7]] = 0;
  }

  return result;
}

void PrecipitationCalculator.hasPrecipitation(in:)()
{
  OUTLINED_FUNCTION_28_3();
  v25 = sub_220DBEE10();
  v1 = OUTLINED_FUNCTION_0(v25);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16_24();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = sub_220DBEBA0();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  sub_220DBE820();
  v20 = sub_220DBEB80();
  v21 = *(v17 + 8);
  v22 = OUTLINED_FUNCTION_28();
  v23(v22);
  if (v20)
  {
    sub_220DBE7E0();
    sub_220DBEDD0();
    (*(v3 + 8))(v0, v25);
    sub_220DBE050();
    (*(v8 + 8))(v13, v6);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t OUTLINED_FUNCTION_28_4()
{
  v2 = *(*(v1 - 248) + 8);
  result = v0;
  v4 = *(v1 - 208);
  return result;
}

double OUTLINED_FUNCTION_28_6@<D0>(int a1@<W8>)
{
  if (a1)
  {
    return v1;
  }

  return result;
}

void *OUTLINED_FUNCTION_16_0(void *result)
{
  v2 = *(v1 - 336);
  *result = *(v1 - 488);
  result[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_16_6()
{
  *(v3 - 136) = v1;
  *(v3 - 128) = v2;
  v4 = *(v3 - 224);
  v5 = *(v3 - 216);
  *(v3 - 120) = v0;
  *(v3 - 112) = v4;
  v6 = *(v3 - 208);
  *(v3 - 104) = v5;
  *(v3 - 96) = v6;
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return sub_220DC08B0();
}

uint64_t OUTLINED_FUNCTION_16_8()
{
  result = v0;
  v3 = *(v1 - 168);
  v4 = *(v1 - 248);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_12(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return type metadata accessor for SunriseSunsetTableViewModelFactory();
}

uint64_t OUTLINED_FUNCTION_16_18()
{
  v1 = **(v0 - 568);
  result = *(v0 - 352);
  v3 = *(v0 - 472);
  return result;
}

void OUTLINED_FUNCTION_16_19()
{
  v1 = *(v0 - 272);
  *(v0 - 152) = *(v0 - 280);
  *(v0 - 144) = v1;
}

void OUTLINED_FUNCTION_16_20()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x223D98FB0);
}

uint64_t OUTLINED_FUNCTION_16_25()
{
}

uint64_t OUTLINED_FUNCTION_22_0()
{
}

uint64_t OUTLINED_FUNCTION_22_2()
{
  result = v0;
  v3 = *(v1 - 208);
  v4 = *(v1 - 304);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_22_5()
{
  result = v0;
  v3 = *(v1 - 144);
  v4 = *(v1 - 136);
  v5 = *(v1 - 120);
  return result;
}

__n128 OUTLINED_FUNCTION_22_13()
{
  v2 = (v0 + *(v1 + 48));
  v3 = *v2;
  return *(v2 + 1);
}

uint64_t OUTLINED_FUNCTION_22_14()
{
  v4 = v2 + *(v0 + 28);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_220DB70BC(v2, v1);
}

uint64_t OUTLINED_FUNCTION_22_16()
{

  return sub_220DC0280();
}

unint64_t sub_220CDB190()
{
  result = qword_280FA6618;
  if (!qword_280FA6618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FA6618);
  }

  return result;
}

void sub_220CDB1D4()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v33 = v2;
  v3 = sub_220DBE5E0();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = sub_220DC0460();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v32 - v22;
  sub_220DBF100();
  sub_220DBF0D0();
  sub_220DBE580();
  sub_220DBE0F0();

  (*(v6 + 8))(v11, v3);
  (*(v15 + 16))(v20, v23, v12);
  if ((*(v15 + 88))(v20, v12) != *MEMORY[0x277D7B450])
  {
    (*(v15 + 8))(v20, v12);
    goto LABEL_5;
  }

  (*(v15 + 96))(v20, v12);
  v24 = *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95250, &qword_220DC1FC8) + 48));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  OUTLINED_FUNCTION_6(v25);
  v27 = *(v26 + 8);
  v27(v20, v25);
  if (v24 != 1)
  {
LABEL_5:
    sub_220DC0410();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
    OUTLINED_FUNCTION_6(v30);
    (*(v31 + 8))(v1);
    (*(v15 + 8))(v23, v12);
    goto LABEL_6;
  }

  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95220, &qword_220DC1E58) + 48);
  v29 = v33;
  sub_220DC0420();
  v27(v1, v25);
  (*(v15 + 8))(v23, v12);
  *(v29 + v28) = 1;
LABEL_6:
  OUTLINED_FUNCTION_28_1();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_24();
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1)
{
  v4 = v1 + *(a1 + 20);
  v5 = *(v2 - 208);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
}

uint64_t OUTLINED_FUNCTION_15_7()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_10(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 160);

  return __swift_storeEnumTagSinglePayload(a1, a2, 3, v4);
}

uint64_t OUTLINED_FUNCTION_15_12()
{

  return sub_220DBE240();
}

uint64_t OUTLINED_FUNCTION_15_14@<X0>(uint64_t a1@<X8>)
{
  *(a1 - 256) = v1;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_15_16()
{

  return memcpy((v0 + 312), (v1 + 8), 0x59uLL);
}

uint64_t OUTLINED_FUNCTION_15_18(uint64_t result)
{
  v4[12] = v1;
  v4[13] = result;
  v4[8] = result;
  v4[9] = v3;
  v4[10] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_2()
{
  v2 = *(v0 - 224);
  v3 = *(v0 - 304);

  return sub_220DBE0B0();
}

uint64_t OUTLINED_FUNCTION_32_5()
{
  v2 = *(v0 - 264);
  v3 = *(v0 - 216);

  return sub_220DBE3E0();
}

uint64_t OUTLINED_FUNCTION_32_7(uint64_t a1)
{
  v3[17] = v2;
  v3[18] = a1;
  v3[14] = *(v4 - 192);
  v3[15] = v1;

  return sub_220DC05F0();
}

uint64_t OUTLINED_FUNCTION_27_3()
{
  *(v1 + v0) = v3;
  result = v1 + v2;
  v6 = *(v4 - 96);
  v7 = *(v4 - 88);
  v8 = *(v4 - 128);
  return result;
}

void OUTLINED_FUNCTION_17()
{

  JUMPOUT(0x223D98FB0);
}

uint64_t OUTLINED_FUNCTION_27_6()
{

  return sub_220DBE020();
}

void OUTLINED_FUNCTION_27_8()
{
  v2 = *(v0 - 256);
  v3 = *(v1 - 376);
  v4 = *(v1 - 672);
}

double OUTLINED_FUNCTION_27_9()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t PrecipitationCalculator.findUniquePrecipitation(currentWeather:dailyForecast:)@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v120 = a1;
  v107 = type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext(0);
  v4 = OUTLINED_FUNCTION_6(v107);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v106 = v8 - v7;
  OUTLINED_FUNCTION_6_1();
  v124 = sub_220DBEBA0();
  v9 = OUTLINED_FUNCTION_0(v124);
  v108 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  v123 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v14);
  v122 = &v90 - v15;
  OUTLINED_FUNCTION_6_1();
  v121 = sub_220DBE830();
  v16 = OUTLINED_FUNCTION_0(v121);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v24 = sub_220DBEE10();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v25);
  v32 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v90 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v90 - v36;
  v38 = type metadata accessor for PresentativePastHourRange(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  OUTLINED_FUNCTION_9();
  v105 = v40;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_14_22();
  sub_220DBEA20();
  sub_220DBEA30();
  sub_220DBEA50();
  v110 = v2;
  PrecipitationCalculator.findPresentativePastHourRange(pastHourAmounts:past6HourAmounts:past24HourAmounts:)(v2);
  v42 = *(v27 + 8);
  v42(v32, v24);
  v42(v35, v24);
  v42(v37, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
  v43 = sub_220DBEF90();
  v44 = *(v43 + 16);
  if (v44)
  {
    v104 = a2;
    v125 = MEMORY[0x277D84F90];
    sub_220CDD440(0, v44, 0);
    v45 = v125;
    v47 = *(v18 + 16);
    v46 = v18 + 16;
    v48 = (*(v46 + 64) + 32) & ~*(v46 + 64);
    v103 = v43;
    v49 = v43 + v48;
    v118 = *(v46 + 56);
    v119 = v47;
    v117 = (v46 - 8);
    v50 = (v108 + 32);
    v51 = (v108 + 88);
    v116 = *MEMORY[0x277CE32F8];
    v52 = *MEMORY[0x277CE3228];
    v114 = *MEMORY[0x277CE32F0];
    v115 = v52;
    v53 = *MEMORY[0x277CE3300];
    v112 = *MEMORY[0x277CE3270];
    v113 = v53;
    v111 = *MEMORY[0x277CE3240];
    v109 = *MEMORY[0x277CE3290];
    v54 = *MEMORY[0x277CE3308];
    v101 = *MEMORY[0x277CE3310];
    v102 = v54;
    v100 = *MEMORY[0x277CE3318];
    v99 = *MEMORY[0x277CE32A0];
    v98 = *MEMORY[0x277CE3280];
    v97 = *MEMORY[0x277CE32C0];
    v96 = *MEMORY[0x277CE32A8];
    v95 = *MEMORY[0x277CE3258];
    v94 = *MEMORY[0x277CE3238];
    v93 = *MEMORY[0x277CE3218];
    v92 = *MEMORY[0x277CE3260];
    v91 = *MEMORY[0x277CE3268];
    v90 = (v108 + 8);
    LODWORD(v108) = *MEMORY[0x277CE3320];
    v120 = v46;
    while (1)
    {
      v55 = v121;
      v119(v23, v49, v121);
      sub_220DBE820();
      (*v117)(v23, v55);
      v56 = *v50;
      v58 = v123;
      v57 = v124;
      v59 = OUTLINED_FUNCTION_17_1();
      v60(v59);
      v61 = (*v51)(v58, v57);
      v62 = v61 == v116 || v61 == v115;
      if (!v62)
      {
        if (v61 == v114)
        {
          goto LABEL_10;
        }

        if (v61 != v113)
        {
          if (v61 == v112 || v61 == v111)
          {
            goto LABEL_10;
          }

          if (v61 == v109)
          {
            goto LABEL_21;
          }

          if (v61 == v102)
          {
            goto LABEL_10;
          }

          if (v61 != v101)
          {
            OUTLINED_FUNCTION_12_2(&v129 + 4);
            if (v62 || v67 == v99 || v67 == v98)
            {
              goto LABEL_10;
            }

            OUTLINED_FUNCTION_12_2(&v128);
            if (v62)
            {
              v63 = 4;
              goto LABEL_11;
            }

            OUTLINED_FUNCTION_12_2(&v127 + 4);
            if (!v70)
            {
              OUTLINED_FUNCTION_12_2(&v127);
              if (v62)
              {
                goto LABEL_10;
              }

              OUTLINED_FUNCTION_12_2(&v126 + 4);
              if (!v62)
              {
                break;
              }
            }
          }
        }
      }

      v63 = 2;
LABEL_11:
      v125 = v45;
      v65 = *(v45 + 16);
      v64 = *(v45 + 24);
      if (v65 >= v64 >> 1)
      {
        OUTLINED_FUNCTION_17_16(v64);
        v45 = v125;
      }

      *(v45 + 16) = v65 + 1;
      *(v45 + v65 + 32) = v63;
      v49 += v118;
      if (!--v44)
      {

        a2 = v104;
        goto LABEL_48;
      }
    }

    OUTLINED_FUNCTION_12_2(&v126);
    if (!v62 && v71 != v92 && v71 != v91)
    {
      if (v71 == v108)
      {
        v63 = 1;
        goto LABEL_11;
      }

      (*v90)(v123, v124);
LABEL_21:
      v63 = 5;
      goto LABEL_11;
    }

LABEL_10:
    v63 = 3;
    goto LABEL_11;
  }

  v45 = MEMORY[0x277D84F90];
LABEL_48:
  v74 = *(v45 + 16);
  if (v74)
  {
    v75 = (v45 + 32);
    v76 = MEMORY[0x277D84F90];
    do
    {
      v78 = *v75++;
      v77 = v78;
      if (v78)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v125 = v76;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_220CDD440(0, *(v76 + 16) + 1, 1);
          v76 = v125;
        }

        v81 = *(v76 + 16);
        v80 = *(v76 + 24);
        if (v81 >= v80 >> 1)
        {
          OUTLINED_FUNCTION_17_16(v80);
          v76 = v125;
        }

        *(v76 + 16) = v81 + 1;
        *(v76 + v81 + 32) = v77;
      }

      --v74;
    }

    while (v74);
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
  }

  v82 = sub_220CDD464(v76);
  result = sub_220CDD7D0(v82);
  if ((v85 & 1) == 0)
  {
    if (*(v82 + 36) == v84)
    {
      if (result == 1 << *(v82 + 32))
      {
        sub_220CDD864(v110, type metadata accessor for PresentativePastHourRange);
      }

      else
      {
        sub_220CDD810(result, v84, v82, &v125);
        v86 = v125;
        v87 = v105;
        sub_220CDD014(v110, v105);
        OUTLINED_FUNCTION_7_28();
        v88 = v106;
        sub_220CDD014(v87, v106);
        LODWORD(v87) = *(v88 + *(v107 + 24));
        sub_220CDD864(v88, type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext);
        if (v86 == v87)
        {
          v89 = *(v82 + 16);

          if (v89 == 1)
          {
            goto LABEL_68;
          }

          goto LABEL_67;
        }
      }

LABEL_67:
      LOBYTE(v86) = 0;
LABEL_68:
      *a2 = v86;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PrecipitationCalculator.findPresentativePastHourRange(pastHourAmounts:past6HourAmounts:past24HourAmounts:)@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_11_0();
  v105 = type metadata accessor for PresentativePastHourRange.PresentativePastHourRangeContext(v2);
  v3 = OUTLINED_FUNCTION_6(v105);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v103 = v7 - v6;
  OUTLINED_FUNCTION_6_1();
  v108 = sub_220DBEC90();
  v8 = OUTLINED_FUNCTION_0(v108);
  v101 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9();
  v93 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_25_0();
  v92 = v14;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_25_0();
  v104 = v16;
  OUTLINED_FUNCTION_23();
  v18 = MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22_15(v18, v19, v20, v21, v22, v23, v24, v25, v91);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9();
  v95 = v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_25_0();
  v100 = v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25_0();
  v94 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_25_0();
  v99 = v38;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_25_0();
  v98 = v40;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_25_0();
  v96 = v42;
  OUTLINED_FUNCTION_23();
  v44 = MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_14_22();
  sub_220DBEDD0();
  v45 = objc_opt_self();
  v46 = [v45 centimeters];
  OUTLINED_FUNCTION_2_38();
  sub_220DBE130();

  v47 = *(v29 + 8);
  v48 = OUTLINED_FUNCTION_17_1();
  v47(v48);
  OUTLINED_FUNCTION_13_18();
  v50 = v49;
  v51 = OUTLINED_FUNCTION_28();
  v47(v51);
  sub_220DBEDD0();
  v52 = [v45 centimeters];
  OUTLINED_FUNCTION_2_38();
  sub_220DBE130();

  v53 = OUTLINED_FUNCTION_17_1();
  v47(v53);
  OUTLINED_FUNCTION_13_18();
  v55 = v54;
  v56 = OUTLINED_FUNCTION_28();
  v47(v56);
  sub_220DBEDD0();
  v57 = [v45 centimeters];
  OUTLINED_FUNCTION_2_38();
  sub_220DBE130();

  v58 = OUTLINED_FUNCTION_17_1();
  v47(v58);
  OUTLINED_FUNCTION_13_18();
  v60 = v59;
  v61 = OUTLINED_FUNCTION_28();
  v47(v61);
  if (v60 - v50 < v50)
  {
    v62 = v45;
    sub_220DBEDD0();
    sub_220DBEDC0();
    sub_220DBEC60();
    v107 = *(v101 + 8);
    v107(v97, v108);
    v63 = [v45 centimeters];
    OUTLINED_FUNCTION_2_38();
    sub_220DBE130();

    OUTLINED_FUNCTION_13_18();
    v64 = OUTLINED_FUNCTION_28();
    v47(v64);
    v65 = [v45 centimeters];
    OUTLINED_FUNCTION_2_38();
    sub_220DBE130();

    OUTLINED_FUNCTION_13_18();
    v67 = v66;
    v68 = OUTLINED_FUNCTION_28();
    v47(v68);
    (v47)(v98, v26);
    (v47)(v96, v26);
    OUTLINED_FUNCTION_18_19();
    if (v71 ^ v72 | v70)
    {
      v69 = 0;
    }

    if (v67 <= 0.0)
    {
      v73 = v69;
    }

    else
    {
      v73 = 2;
    }

LABEL_8:
    v74 = v103;
    sub_220DBEDD0();
    sub_220DBEDC0();
    OUTLINED_FUNCTION_15_17();
    sub_220DBEC60();
    v107(v104, v108);
    goto LABEL_23;
  }

  v75 = (v101 + 8);
  if (v60 - v55 < v55)
  {
    sub_220DBEDD0();
    sub_220DBEDC0();
    v62 = v94;
    sub_220DBEC60();
    v107 = *v75;
    (*v75)(v92, v108);
    v76 = [v45 centimeters];
    OUTLINED_FUNCTION_2_38();
    sub_220DBE130();

    OUTLINED_FUNCTION_13_18();
    v77 = OUTLINED_FUNCTION_28();
    v47(v77);
    v78 = [v45 centimeters];
    OUTLINED_FUNCTION_2_38();
    sub_220DBE130();

    OUTLINED_FUNCTION_13_18();
    v80 = v79;
    v81 = OUTLINED_FUNCTION_28();
    v47(v81);
    (v47)(v94, v26);
    (v47)(v99, v26);
    OUTLINED_FUNCTION_18_19();
    if (v71 ^ v72 | v70)
    {
      v82 = 0;
    }

    if (v80 <= 0.0)
    {
      v73 = v82;
    }

    else
    {
      v73 = 2;
    }

    goto LABEL_8;
  }

  sub_220DBEDD0();
  sub_220DBEDC0();
  v62 = v95;
  sub_220DBEC60();
  v102 = *v75;
  (*v75)(v93, v108);
  v83 = [v45 centimeters];
  OUTLINED_FUNCTION_2_38();
  sub_220DBE130();

  OUTLINED_FUNCTION_13_18();
  v84 = OUTLINED_FUNCTION_28();
  v47(v84);
  v85 = [v45 centimeters];
  OUTLINED_FUNCTION_2_38();
  sub_220DBE130();

  OUTLINED_FUNCTION_13_18();
  v87 = v86;
  v88 = OUTLINED_FUNCTION_28();
  v47(v88);
  (v47)(v95, v26);
  (v47)(v100, v26);
  OUTLINED_FUNCTION_18_19();
  if (v71 ^ v72 | v70)
  {
    v89 = 0;
  }

  if (v87 <= 0.0)
  {
    v73 = v89;
  }

  else
  {
    v73 = 2;
  }

  v74 = v103;
  sub_220DBEDD0();
  sub_220DBEDC0();
  OUTLINED_FUNCTION_15_17();
  sub_220DBEC60();
  v102(v104, v108);
LABEL_23:
  *(v74 + v62[6]) = v73;
  OUTLINED_FUNCTION_7_28();
  sub_220CDD014(v74, a1);
  type metadata accessor for PresentativePastHourRange(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_12_4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_220CE161C(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return sub_220DC0160();
}

uint64_t OUTLINED_FUNCTION_12_6()
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 3, v0);
}

uint64_t OUTLINED_FUNCTION_12_7(uint64_t a1)
{
  v5 = *(a1 + 48);
  v6 = *(v3 - 104);
  *v6 = v1;

  return sub_220D15FF4(v2, &v6[v5]);
}

uint64_t OUTLINED_FUNCTION_12_8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v5 - 128) = v3;
  *(v5 - 120) = v4;
  *(v5 - 144) = a1;
  *(v5 - 136) = a2;
  *(v5 - 160) = a3;
  return 0;
}

void OUTLINED_FUNCTION_12_9()
{
  v2 = (v1 + *(v0 + 24));
  *v2 = 0;
  v2[1] = 0;
  v3 = *(v0 + 28);
}

uint64_t OUTLINED_FUNCTION_12_10()
{
  result = *(v0 - 168);
  v2 = *(*(v0 - 176) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_11()
{
  result = v0;
  v3 = *(v1 - 420);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_14(uint64_t a1)
{
  v3 = (v2 + *(a1 + 40));
  result = *v3;
  v5 = v3[1];
  v6 = *(v1 + 16);
  return result;
}

void OUTLINED_FUNCTION_12_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_12_17()
{
  v1 = *(*(v0 - 328) + 8);
  result = *(v0 - 216);
  v3 = *(v0 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_22()
{
  v3 = *(v1 - 176);
  *(v1 - 136) = *(v1 - 184);
  *(v1 - 128) = v3;
  v4 = *(v1 - 192);
  v6 = *(v1 - 168);
  v5 = *(v1 - 160);
  *(v1 - 120) = *(v1 - 200);
  *(v1 - 112) = v6;
  *(v1 - 104) = v4;
  *(v1 - 96) = v5;

  return sub_220D96EB4(v0, (v1 - 136));
}

void OUTLINED_FUNCTION_12_25(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = *(v1 + 36);
}

uint64_t OUTLINED_FUNCTION_12_26(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v3 - 128) = v2;

  return VisibilityCondition.shortDescription.getter();
}

uint64_t OUTLINED_FUNCTION_21_9@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_220D7FCF0();
}

uint64_t OUTLINED_FUNCTION_21_12()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_21_14@<X0>(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = *v3;
  v5 = v3[1];
  return v1;
}

uint64_t OUTLINED_FUNCTION_21_15@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v10 = v2[4];
  v9 = v2[5];

  return sub_220CEF48C(v3, &a2 - a1);
}

uint64_t OUTLINED_FUNCTION_11_3()
{

  return swift_getTupleTypeMetadata3();
}

uint64_t OUTLINED_FUNCTION_11_7()
{
  result = v0;
  v3 = *(v1 - 152);
  return result;
}

void OUTLINED_FUNCTION_11_8(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

void OUTLINED_FUNCTION_11_10()
{
  v1 = *(v0 - 216);
  v2 = *(v0 - 264);
  v3 = *(v0 - 304);
}

uint64_t OUTLINED_FUNCTION_11_12()
{

  return sub_220D65BF8(v0, type metadata accessor for NextPrecipitation);
}

uint64_t OUTLINED_FUNCTION_11_13()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_17()
{
  v3 = *(v1 - 160);
  *(v1 - 104) = *(v1 - 192);
  *(v1 - 96) = v3;

  return sub_220D96EB4(v0, (v1 - 136));
}

uint64_t OUTLINED_FUNCTION_11_18()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_21()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_14_5(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 48));
  v5 = *(v2 + 32);
  return v3;
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return sub_220DC05F0();
}

uint64_t OUTLINED_FUNCTION_14_7()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_14_9()
{

  return sub_220DC08E0();
}

uint64_t OUTLINED_FUNCTION_14_13()
{
  *(v2 + v0) = v3;
  result = v2 + v1;
  v6 = *(v4 - 96);
  v7 = *(v4 - 88);
  v9 = *(v4 - 136);
  v8 = *(v4 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_15()
{
  result = *(v0 - 184);
  v2 = *(v0 - 144);
  v3 = *(v0 - 360);
  return result;
}

void OUTLINED_FUNCTION_14_16()
{
  v2 = *(v0 + 104);
  *(v1 - 328) = v0 + 104;
  *(v1 - 320) = v2;
}

void OUTLINED_FUNCTION_14_17()
{
  v1 = *(v0 - 176);
  *(v0 - 136) = *(v0 - 184);
  *(v0 - 128) = v1;
}

uint64_t OUTLINED_FUNCTION_14_19()
{
  v2 = *(v1 - 136);
  v3 = *(*(v1 - 144) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_14_20()
{

  return sub_220DBE010();
}

uint64_t OUTLINED_FUNCTION_14_21()
{
  v1 = *v0;
  if (*v0 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_220CDD014(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_11_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_6(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

void OUTLINED_FUNCTION_7_0(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_7_7()
{

  return sub_220D16918(v0, type metadata accessor for PrecipitationPlatterPrecipitationKind);
}

void OUTLINED_FUNCTION_7_10(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

size_t OUTLINED_FUNCTION_7_15@<X0>(unint64_t a1@<X8>)
{

  return sub_220D563D8(a1 > 1, v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_7_17()
{
  v2 = *(v0 - 176);

  return sub_220CDD864(v2, type metadata accessor for PresentativePastHourRange);
}

uint64_t OUTLINED_FUNCTION_7_19@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_7_21()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_7_24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[7] = a2;
  a1[8] = v2;
  a1[4] = v3;

  return sub_220DC05F0();
}

uint64_t OUTLINED_FUNCTION_7_25()
{

  return swift_once();
}

void OUTLINED_FUNCTION_7_26()
{
  v2 = (v0 + *(v1 + 28));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v1 + 36);
}

char *sub_220CDD34C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95288, &qword_220DC2178);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_220CDD440(char *a1, int64_t a2, char a3)
{
  result = sub_220CDD34C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_220CDD464(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_220CDD4FC();
  v4 = MEMORY[0x223D98400](v2, &type metadata for DominantPrecipitation, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_220CDD5A8(&v9, *(a1 + v6++));
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

unint64_t sub_220CDD4FC()
{
  result = qword_280FA7308;
  if (!qword_280FA7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7308);
  }

  return result;
}

unint64_t sub_220CDD554()
{
  result = qword_280FA7300;
  if (!qword_280FA7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7300);
  }

  return result;
}

BOOL sub_220CDD5A8(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_220DC0CE0();
  MEMORY[0x223D98920](a2);
  v7 = sub_220DC0D20();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v5 + 48) + v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  sub_220CDD698(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v14;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_220CDD698(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_220D12C5C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_220D13C18(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_220DC0CE0();
      MEMORY[0x223D98920](v5);
      result = sub_220DC0D20();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_220D135E8();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_220DC0CB0();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

uint64_t sub_220CDD7D0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_220DC0B30();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_220CDD810@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_220CDD864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t PrecipitationTotalHeroString.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PrecipitationTotalHeroString(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

_BYTE *storeEnumTagSinglePayload for DominantPrecipitation(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x220CDD9D4);
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

BOOL PrecipitationTotalHeroString.isDescriptionAllowedToShowNext24HourTotal.getter()
{
  v1 = OUTLINED_FUNCTION_13_5();
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v4 = *(OUTLINED_FUNCTION_20_3() + 24);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_25_3(v5);
  v6 = sub_220DBE560();
  v7 = OUTLINED_FUNCTION_19_4(v6) != 0;
  sub_220CDDDE8(v0);
  return v7;
}

void *OUTLINED_FUNCTION_20_0()
{
  result = (v0 + 2 * v1);
  v4 = *(v2 - 248);
  *result = *(v2 - 504);
  result[1] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_3()
{

  return type metadata accessor for PrecipitationTotalHeroString(0);
}

uint64_t OUTLINED_FUNCTION_17_0()
{
}

uint64_t OUTLINED_FUNCTION_20_6@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);

  return sub_220CDA548(v4, v1, v2);
}

uint64_t OUTLINED_FUNCTION_20_10(uint64_t a1)
{
  v1[4] = v2;
  v1[5] = v6;
  v1[12] = v5;
  v1[13] = a1;
  v1[8] = a1;
  v1[9] = v4;
  v1[10] = v3;
  *(v7 - 176) = *(v7 - 192);

  return VisibilityCondition.shortDescription.getter();
}

uint64_t sub_220CDDBBC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_11_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_0_2(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_220CDDC14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void *OUTLINED_FUNCTION_19_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[7] = a2;
  result[8] = v2;
  v4 = *(v3 - 160);
  result[4] = *(v3 - 248);
  result[5] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_19_1(uint64_t a1)
{
  v4 = *(v1 - 264);

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_19_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 392);

  return sub_220CE1ABC(v5, a2, a3);
}

uint64_t OUTLINED_FUNCTION_19_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 3, a1);
}

BOOL OUTLINED_FUNCTION_19_10(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_19_12()
{
  result = v0;
  v3 = *(v1 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_13()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_19_14()
{

  JUMPOUT(0x223D98FB0);
}

uint64_t OUTLINED_FUNCTION_19_15(uint64_t a1, uint64_t a2)
{
  v2[17] = v5;
  v2[18] = v4;
  v2[14] = a1;
  v2[15] = a2;
  v2[22] = v5;
  v2[23] = v4;
  v8 = *(v6 - 184);
  v2[19] = v3;
  v2[20] = v8;
  v9 = *(v6 - 200);

  return sub_220DC05F0();
}

uint64_t sub_220CDDDE8(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalHeroStringTimeframe(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PrecipitationComponentDescriptionContext.init(currentWeather:dailyForecast:hourlyForecast:timeZone:heroStringPrecipitationType:isAllowedToShowNext24HourTotal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = *a5;
  v14 = sub_220DBEAD0();
  OUTLINED_FUNCTION_6(v14);
  (*(v15 + 32))(a7, a1);
  v16 = type metadata accessor for PrecipitationComponentDescriptionContext();
  v17 = v16[5];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
  OUTLINED_FUNCTION_6(v18);
  (*(v19 + 32))(a7 + v17, a2);
  v20 = v16[6];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_6(v21);
  (*(v22 + 32))(a7 + v20, a3);
  *(a7 + v16[8]) = v13;
  v23 = v16[7];
  v24 = sub_220DBE740();
  OUTLINED_FUNCTION_6(v24);
  result = (*(v25 + 32))(a7 + v23, a4);
  *(a7 + v16[9]) = a6;
  return result;
}

BOOL PrecipitationWithinOneDayRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent();
  v5 = OUTLINED_FUNCTION_6(PrecipitationEvent);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = v2[3];
  v15 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v14);
  (*(v15 + 8))(a2, v14, v15);
  sub_220CE1D20(v13, v10, type metadata accessor for NextPrecipitationEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v17 = type metadata accessor for NextPrecipitationEvent;
    v18 = v10;
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A8, &qword_220DC4FE0);
    v20 = *(v19 + 48);
    sub_220CE1E88(v10 + *(v19 + 64), type metadata accessor for PrecipitationTotalStringAmount);
    v18 = v10 + v20;
    v17 = type metadata accessor for PrecipitationTotalStringAmount;
  }

  sub_220CE1E88(v18, v17);
  return EnumCaseMultiPayload == 0;
}

uint64_t type metadata accessor for NextPrecipitationEvent()
{
  result = qword_280FA70E8;
  if (!qword_280FA70E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220CDE164()
{
  if (!qword_280FA7310)
  {
    type metadata accessor for PrecipitationTotalStringAmount(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280FA7310);
    }
  }
}

void sub_220CDE1D4()
{
  sub_220CDE164();
  if (v0 <= 0x3F)
  {
    sub_220CDE248();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_220CDE248()
{
  if (!qword_280FA7318)
  {
    MEMORY[0x28223BE20](0);
    sub_220DBE560();
    type metadata accessor for PrecipitationTotalStringAmount(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_280FA7318);
    }
  }
}

uint64_t PrecipitationEventCalculator.nextEvent(from:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v161 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v141 = &v135 - v5;
  v154 = sub_220DBE830();
  v6 = OUTLINED_FUNCTION_0(v154);
  v143 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v138 = v11 - v10;
  v164 = sub_220DBEC90();
  v12 = OUTLINED_FUNCTION_0(v164);
  v169 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v147 = v17 - v16;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v18 = OUTLINED_FUNCTION_0(v155);
  v168 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  v160 = v22;
  v24 = MEMORY[0x28223BE20](v23);
  v159 = &v135 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v135 - v26;
  v167 = sub_220DBEE10();
  v28 = OUTLINED_FUNCTION_0(v167);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  v35 = v34 - v33;
  v157 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v36 = *(*(v157 - 8) + 64);
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_9();
  v165 = v37;
  MEMORY[0x28223BE20](v38);
  v170 = &v135 - v39;
  v151 = sub_220DBE560();
  v40 = OUTLINED_FUNCTION_0(v151);
  v150 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1();
  v166 = v45 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
  v47 = OUTLINED_FUNCTION_0(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v47);
  v53 = &v135 - v52;
  v54 = sub_220DBEAD0();
  v55 = OUTLINED_FUNCTION_0(v54);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_1();
  v60 = v59 - v58;
  v152 = v61;
  v62 = *(v61 + 16);
  v145 = a1;
  v153 = v63;
  v62(v60, a1);
  v64 = type metadata accessor for PrecipitationComponentDescriptionContext();
  v65 = v64[5];
  v146 = v64[6];
  v148 = v49;
  v66 = *(v49 + 16);
  v158 = v53;
  v149 = v46;
  v66(v53, a1 + v65, v46);
  sub_220DBEA60();
  v139 = v64;
  v144 = v64[7];
  sub_220DBEA40();
  sub_220DBEDD0();
  v156 = *(v30 + 8);
  v162 = v30 + 8;
  v156(v35, v167);
  v67 = v168;
  v68 = *(v168 + 16);
  v69 = v159;
  v70 = v155;
  v137 = v168 + 16;
  v136 = v68;
  v68(v159, v27, v155);
  v71 = v157;
  v72 = v170;
  v73 = &v170[*(v157 + 20)];
  sub_220CDB1D4();
  v74 = *(v67 + 8);
  v74(v27, v70);
  *v72 = 0;
  v163 = v60;
  v75 = v147;
  sub_220DBEA40();
  sub_220DBEDD0();
  sub_220DBEDC0();
  sub_220DBEC80();
  v76 = v160;
  sub_220DBEC70();
  v77 = v165;
  sub_220CDEE30(v69, v76, &v165[*(v71 + 20)]);
  v78 = *(v169 + 8);
  v79 = v75;
  v80 = v156;
  v169 += 8;
  v140 = v78;
  v78(v79, v164);
  v74(v27, v70);
  v81 = v35;
  v80(v35, v167);
  *v77 = 1;
  v82 = v145;
  Forecast<>.dominantPrecipitationTypeIfNotAmbiguous(from:hourCount:timeZone:)(v166, 24, &v145[v144], v83, v84, v85, v86, v87, v135, v136, v137, v138, v139, v140, v141, SHIDWORD(v141), v142, v143, v144, v145, v146);
  v88 = v172;
  PrecipitationTotalStringAmount.maxAmount.getter(v27);
  sub_220DBE050();
  v90 = v89;
  v91 = v27;
  v168 = v67 + 8;
  v146 = v74;
  v92 = (v74)(v27, v70);
  if (v90 > 0.0 && *(v82 + v139[9]) == 1)
  {
    v93 = OUTLINED_FUNCTION_1_33();
    v94(v93);
    OUTLINED_FUNCTION_8_0(&v174);
    v95(v158, v149);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A8, &qword_220DC4FE0);
    v97 = *(v96 + 48);
    v98 = v88;
    v99 = *(v96 + 64);
    v100 = v161;
    *v161 = v98;
    sub_220D15FF4(v170, &v100[v97]);
    sub_220D15FF4(v165, &v100[v99]);
    type metadata accessor for NextPrecipitationEvent();
  }

  else
  {
    MEMORY[0x28223BE20](v92);
    v101 = v142;
    *(&v135 - 2) = v163;
    *(&v135 - 1) = v101;
    v102 = v141;
    v103 = v158;
    sub_220CE108C();
    v104 = v154;
    if (__swift_getEnumTagSinglePayload(v102, 1, v154) == 1)
    {
      sub_220CE1C00(v165);
      sub_220CE1C00(v170);
      v105 = OUTLINED_FUNCTION_1_33();
      v106(v105);
      OUTLINED_FUNCTION_8_0(&v174);
      v107(v103, v149);
      sub_220CE1C5C(v102);
    }

    else
    {
      v108 = v138;
      (*(v143 + 32))(v138, v102, v104);
      v109 = v101[3];
      v110 = v101[4];
      __swift_project_boxed_opaque_existential_1(v101, v109);
      (*(v110 + 16))(&v171, v108, v109, v110);
      v111 = v171;
      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A0, &unk_220DC3050);
      v113 = v112[12];
      v114 = &v161[v112[16]];
      v145 = &v161[v112[20]];
      *v161 = v111;
      sub_220DBE810();
      sub_220DBE7E0();
      sub_220DBEDD0();
      sub_220DBEDC0();
      v115 = v159;
      v136(v159, v91, v155);
      v116 = v157;
      v117 = &v114[*(v157 + 20)];
      sub_220CDB1D4();
      v118 = OUTLINED_FUNCTION_5_25();
      v119(v118);
      v120 = OUTLINED_FUNCTION_4_20();
      v121(v120);
      v122 = v156;
      v156(v81, v167);
      *v114 = 0;
      sub_220DBE7E0();
      sub_220DBEDD0();
      sub_220DBEDC0();
      sub_220DBEC80();
      v123 = v160;
      sub_220DBEC70();
      v124 = v145;
      sub_220CDEE30(v115, v123, &v145[*(v116 + 20)]);
      v125 = OUTLINED_FUNCTION_5_25();
      v126(v125);
      v127 = OUTLINED_FUNCTION_4_20();
      v128(v127);
      v122(v81, v167);
      OUTLINED_FUNCTION_8_0(&v173);
      v129(v108, v154);
      sub_220CE1C00(v165);
      sub_220CE1C00(v170);
      v130 = OUTLINED_FUNCTION_1_33();
      v131(v130);
      OUTLINED_FUNCTION_8_0(&v174);
      v132(v158, v149);
      *v124 = 1;
    }

    type metadata accessor for NextPrecipitationEvent();
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_8_0(&v175);
  return v133(v163, v153);
}

uint64_t sub_220CDEE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a3;
  v9 = sub_220DC0C80();
  v10 = OUTLINED_FUNCTION_0(v9);
  v89 = v11;
  v90 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v88 = (v15 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v17 = OUTLINED_FUNCTION_0(v16);
  v92 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v91 = v21 - v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_1();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v77 - v26;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_25_0();
  v94 = v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_18_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_25_0();
  v95 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_31_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_11_1();
  sub_220DBF100();
  sub_220DBF0D0();
  v34 = sub_220DBF0B0();

  OUTLINED_FUNCTION_27_0();
  sub_220DBE130();
  OUTLINED_FUNCTION_27_0();
  sub_220DBE130();
  sub_220DBE050();
  if (v35 == 0.0)
  {

    v36 = v92;
    v37 = *(v92 + 8);
    v38 = OUTLINED_FUNCTION_36();
    v37(v38);
    (v37)(a1, v16);
    v39 = OUTLINED_FUNCTION_39();
    v37(v39);
    (*(v36 + 32))(v93, v3, v16);
    OUTLINED_FUNCTION_28_1();
  }

  else
  {
    v82 = v27;
    v83 = v4;
    v84 = a2;
    v85 = a1;
    v87 = v5;
    sub_220DBE060();
    sub_220DBE060();
    v40 = sub_220CD8184(0, &qword_280FA6618, 0x277CCAE20);
    OUTLINED_FUNCTION_17_3();
    v41 = sub_220DBE020();
    v86 = v3;
    v42 = v92;
    if (v41)
    {
      v43 = *MEMORY[0x277D84688];
      v44 = v89;
      v45 = v90;
      v79 = v34;
      v80 = v6;
      v78 = *(v89 + 104);
      v46 = v88;
      v78(v88, v43, v90);
      OUTLINED_FUNCTION_14_2();
      sub_220DBE070();
      v77 = *(v44 + 8);
      v77(v46, v45);
      v89 = v40;
      v81 = *(v42 + 8);
      v81(v95, v16);
      v47 = *(v42 + 32);
      (v47)(v95, v94, v16);
      v78(v46, *MEMORY[0x277D84680], v45);
      v34 = v79;
      OUTLINED_FUNCTION_14_2();
      sub_220DBE070();
      v48 = v46;
      v6 = v80;
      v49 = v45;
      v50 = v95;
      v77(v48, v49);
      v51 = OUTLINED_FUNCTION_14_2();
      (v81)(v51);
      OUTLINED_FUNCTION_26();
      v90 = v42 + 32;
      v88 = v47;
      v47();
      OUTLINED_FUNCTION_17_3();
      if (sub_220DBE020())
      {
        sub_220DBE050();
        v52 = v34;
        sub_220DBE040();
        v53 = v81;
        v81(v50, v16);
        OUTLINED_FUNCTION_26();
        v54 = v88;
        v88();
        sub_220DBE050();
        v55 = v52;
        sub_220DBE040();
        v56 = OUTLINED_FUNCTION_14_2();
        v53(v56);
        OUTLINED_FUNCTION_26();
        v54();
      }
    }

    sub_220DBE050();
    v57 = v83;
    if (v58 == 0.0)
    {
      sub_220DC0430();
      OUTLINED_FUNCTION_27_0();
      sub_220DBE130();
      OUTLINED_FUNCTION_17_3();
      v59 = sub_220DBE010();

      v62 = *(v42 + 8);
      v61 = v42 + 8;
      v60 = v62;
      v62(v84, v16);
      v62(v85, v16);
      v63 = OUTLINED_FUNCTION_39();
      (v62)(v63);
      v62(v95, v16);
      v64 = OUTLINED_FUNCTION_33_0();
      (v62)(v64);
      v62(v87, v16);
      v65 = v59 & 1;
      if (v65)
      {
        v66 = v6;
      }

      else
      {
        v66 = v57;
      }

      v60(v66, v16);
      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95220, &qword_220DC1E58) + 48);
      v68 = *(v61 + 24);
      v69 = v93;
      v70 = OUTLINED_FUNCTION_29_1();
      v71(v70);
      *(v69 + v67) = v65;
      OUTLINED_FUNCTION_28_1();
    }

    else
    {

      v72 = *(v42 + 8);
      v72(v84, v16);
      v72(v85, v16);
      v72(v86, v16);
      v72(v87, v16);
      v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50) + 48);
      v74 = *(v42 + 32);
      v75 = v93;
      v74(v93, v95, v16);
      v74(v75 + v73, v6, v16);
      OUTLINED_FUNCTION_28_1();
    }
  }

  return swift_storeEnumTagMultiPayload();
}

void *OUTLINED_FUNCTION_8_2(void *result)
{
  v2 = *(v1 - 200);
  *result = *(v1 - 312);
  result[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_3()
{
  result = *(v0 - 272);
  v2 = *(v0 - 316);
  v3 = *(v0 - 168);
  v4 = *(v0 - 288);
  v5 = *(v0 - 312);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_8()
{
  result = *(v0 - 160);
  v2 = *(v0 - 72);
  v3 = *(v0 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_10()
{
  result = v0;
  v3 = *(v1 - 432);
  v4 = *(v1 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_11()
{
  result = *(v0 - 168);
  v2 = *(*(v0 - 176) + 8);
  v3 = *(v0 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_16()
{

  return sub_220DBE6E0();
}

uint64_t OUTLINED_FUNCTION_8_17()
{
  v2 = *(v1 - 160);
  *(v1 - 128) = *(v1 - 144);
  *(v1 - 112) = v2;
  *(v1 - 96) = *(v1 - 176);
  return v0;
}

uint64_t OUTLINED_FUNCTION_8_19()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 288);
  return result;
}

void *OUTLINED_FUNCTION_10_0(void *result)
{
  v2 = *(v1 - 360);
  *result = *(v1 - 208);
  result[1] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_1()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

char *OUTLINED_FUNCTION_10_9(__n128 *a1, __n128 a2)
{
  *(v4 - 200) = a1;
  a1[1] = a2;
  v5 = *(v2 + 16);
  result = a1 + v3;
  v7 = *(v4 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_10_14()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_10_18()
{

  return sub_220DBE240();
}

uint64_t OUTLINED_FUNCTION_10_19(uint64_t a1)
{
  v3 = v1 + *(a1 + 32);

  return type metadata accessor for DetailChartDataElement.ValueLabel(0);
}

uint64_t OUTLINED_FUNCTION_10_20()
{
  v2 = *(v0 - 288);

  return sub_220DBE240();
}

uint64_t OUTLINED_FUNCTION_10_23()
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_10_24()
{
  v3 = v1 + *(v2 + 44);
  result = *(v0 + 216);
  v5 = *(v0 + 232);
  *v3 = result;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(v0 + 248);
  v6 = *(v2 + 56);
  return result;
}

void *OUTLINED_FUNCTION_35()
{
  result = (v0 + v2);
  *result = *(v3 - 400);
  result[1] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_0()
{
  result = v0;
  v3 = *(v1 - 192);
  v4 = *(v1 - 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_35_2()
{
  v3 = *(v1 + 8);
  *(v2 - 120) = v1 + 8;
  *(v2 - 352) = v3;
  return v0;
}

uint64_t OUTLINED_FUNCTION_35_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);
  v6 = *(v4 - 160);
  *(v4 - 136) = *(v4 - 168);
  *(v4 - 128) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_5()
{
  result = v0;
  v3 = *(v1 - 376);
  v4 = *(v1 - 144);
  return result;
}

void OUTLINED_FUNCTION_31_1()
{
  v2 = *(v0 - 112);

  JUMPOUT(0x223D98920);
}

void OUTLINED_FUNCTION_31_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(a1, 0, 1, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_31_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_31_5()
{

  return sub_220DBE240();
}

void OUTLINED_FUNCTION_31_7()
{
  v1 = *(v0 - 168);
  v2 = *(v0 - 280);
  v3 = *(v0 - 240);
}

uint64_t OUTLINED_FUNCTION_41()
{

  return sub_220DC0250();
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34_2(uint64_t result, uint64_t a2)
{
  *(v2 - 272) = result;
  *(v2 - 264) = a2;
  return result;
}

void Forecast<>.dominantPrecipitationTypeIfNotAmbiguous(from:hourCount:timeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_25();
  a20 = v21;
  a21 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v121 = sub_220DBEBA0();
  v29 = OUTLINED_FUNCTION_0(v121);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4();
  v120 = v34 - v35;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v36);
  v119 = &v88 - v37;
  v118 = sub_220DBE960();
  v38 = OUTLINED_FUNCTION_0(v118);
  v122 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_1();
  v44 = v43 - v42;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v48 = &v88 - v47;
  v49 = sub_220DBE560();
  v50 = OUTLINED_FUNCTION_0(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_1();
  v57 = v56 - v55;
  v58 = v26;
  v60 = v59;
  sub_220CE02DC(v58, v48);
  if (__swift_getEnumTagSinglePayload(v48, 1, v60) == 1)
  {
    sub_220CD8040(v48);
    if (qword_27CF94F48 != -1)
    {
      goto LABEL_61;
    }

    goto LABEL_3;
  }

  (*(v52 + 32))(v57, v48, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v65 = sub_220DBEF90();
  MEMORY[0x28223BE20](v65);
  *(&v88 - 2) = v57;
  *(&v88 - 1) = v24;
  v67 = sub_220CE0914(sub_220CE0BF8, (&v88 - 4), v66, MEMORY[0x277CE31A0], sub_220CE5648);
  v68 = v67;
  v117 = *(v67 + 16);
  if (!v117)
  {

    *v28 = 0;
    (*(v52 + 8))(v57, v60);
    goto LABEL_59;
  }

  v103 = v57;
  v104 = v60;
  v105 = v28;
  v69 = 0;
  v116 = v67 + ((*(v122 + 80) + 32) & ~*(v122 + 80));
  v115 = *MEMORY[0x277CE32F8];
  v114 = v122 + 16;
  v112 = (v31 + 32);
  v113 = v122 + 8;
  v111 = *MEMORY[0x277CE3228];
  v70 = (v31 + 88);
  v110 = *MEMORY[0x277CE32F0];
  v109 = *MEMORY[0x277CE3300];
  v108 = *MEMORY[0x277CE3270];
  v107 = *MEMORY[0x277CE3240];
  v106 = *MEMORY[0x277CE3290];
  v102 = *MEMORY[0x277CE3308];
  v101 = *MEMORY[0x277CE3310];
  v100 = *MEMORY[0x277CE3318];
  v99 = *MEMORY[0x277CE32A0];
  v98 = *MEMORY[0x277CE3280];
  v97 = *MEMORY[0x277CE32C0];
  v96 = *MEMORY[0x277CE32A8];
  v95 = *MEMORY[0x277CE3258];
  v94 = *MEMORY[0x277CE3238];
  v93 = *MEMORY[0x277CE3218];
  v92 = *MEMORY[0x277CE3260];
  v91 = *MEMORY[0x277CE3268];
  v89 = (v31 + 8);
  v28 = 6;
  v90 = *MEMORY[0x277CE3320];
  v71 = v52;
  while (v69 < *(v68 + 16))
  {
    v72 = v122;
    v73 = v118;
    (*(v122 + 16))(v44, v116 + *(v122 + 72) * v69, v118);
    v74 = v119;
    sub_220DBE950();
    (*(v72 + 8))(v44, v73);
    v76 = v120;
    v75 = v121;
    (*v112)(v120, v74, v121);
    v77 = (*v70)(v76, v75);
    v78 = v77 == v115 || v77 == v111;
    if (v78)
    {
LABEL_14:
      v79 = 2;
      goto LABEL_17;
    }

    if (v77 == v110)
    {
      goto LABEL_16;
    }

    if (v77 == v109)
    {
      goto LABEL_14;
    }

    if (v77 == v108 || v77 == v107)
    {
LABEL_16:
      v79 = 3;
      goto LABEL_17;
    }

    if (v77 == v106)
    {
      v79 = 5;
    }

    else
    {
      if (v77 == v102)
      {
        goto LABEL_16;
      }

      if (v77 == v101)
      {
        goto LABEL_14;
      }

      v81 = v77 == v100 || v77 == v99;
      if (v81 || v77 == v98)
      {
        goto LABEL_16;
      }

      if (v77 == v97)
      {
        v79 = 4;
      }

      else
      {
        OUTLINED_FUNCTION_12_2(&a19 + 4);
        if (v78)
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_12_2(&a19);
        if (v78)
        {
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_12_2(&a18 + 4);
        if (v78)
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_12_2(&a18);
        v84 = v78 || v83 == v92;
        if (v84 || v83 == v91)
        {
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_12_2(&a16);
        if (!v78)
        {
          (*v89)(v120, v121);
          goto LABEL_20;
        }

        v79 = 1;
      }
    }

LABEL_17:
    if (v28 == 6)
    {
      v28 = v79;
    }

    else if (v79 != v28)
    {

      v86 = 5;
LABEL_58:
      v87 = v104;
      *v105 = v86;
      (*(v71 + 8))(v103, v87);
      goto LABEL_59;
    }

LABEL_20:
    if (v117 == ++v69)
    {

      if (v28 == 6)
      {
        v86 = 5;
      }

      else
      {
        v86 = v28;
      }

      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_61:
  OUTLINED_FUNCTION_6_3();
LABEL_3:
  v61 = sub_220DBF410();
  __swift_project_value_buffer(v61, qword_27CF95F60);
  v62 = sub_220DBF3F0();
  v63 = sub_220DC0980();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_220CD1000, v62, v63, "Failed to find precipitation due to missing next hour", v64, 2u);
    MEMORY[0x223D98FB0](v64, -1, -1);
  }

  *v28 = 0;
LABEL_59:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_220CE02DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v18 = a1;
  v20 = a2;
  v21 = sub_220DBE1A0();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v21);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_220DBE6E0();
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v19);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952F8, &unk_220DC5420);
  v10 = sub_220DBE6C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_220DC1CE0;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v15, *MEMORY[0x277CC9988], v10);
  v16(v15 + v12, *MEMORY[0x277CC9998], v10);
  v16(v15 + 2 * v12, *MEMORY[0x277CC9968], v10);
  v16(v15 + 3 * v12, *MEMORY[0x277CC9980], v10);
  sub_220CE05C8(v14);
  sub_220DBE630();

  sub_220DBE180();
  sub_220DBE190();
  sub_220DBE660();
  (*(v2 + 8))(v5, v21);
  return (*(v6 + 8))(v9, v19);
}

uint64_t sub_220CE05C8(uint64_t a1)
{
  v2 = sub_220DBE6C0();
  v3 = OUTLINED_FUNCTION_0(v2);
  v38 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v42 = &v33 - v11;
  if (!*(a1 + 16))
  {
    v13 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF96558, &qword_220DC7AC8);
  result = sub_220DC0B60();
  v13 = result;
  v37 = *(a1 + 16);
  if (!v37)
  {
LABEL_15:

    return v13;
  }

  v14 = 0;
  v41 = result + 56;
  v15 = *(v38 + 80);
  v35 = a1;
  v36 = a1 + ((v15 + 32) & ~v15);
  v40 = v38 + 16;
  v16 = (v38 + 8);
  v34 = (v38 + 32);
  while (v14 < *(a1 + 16))
  {
    v17 = *(v38 + 72);
    v39 = v14 + 1;
    v18 = *(v38 + 16);
    v18(v42, v36 + v17 * v14, v2);
    v19 = *(v13 + 40);
    sub_220CE08D0(&qword_280FA7790);
    v20 = sub_220DC0550();
    v21 = ~(-1 << *(v13 + 32));
    while (1)
    {
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v41 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) == 0)
      {
        break;
      }

      v26 = v13;
      v18(v9, *(v13 + 48) + v22 * v17, v2);
      sub_220CE08D0(&qword_280FA7788);
      v27 = sub_220DC05B0();
      v28 = *v16;
      (*v16)(v9, v2);
      if (v27)
      {
        result = (v28)(v42, v2);
        v13 = v26;
        goto LABEL_12;
      }

      v20 = v22 + 1;
      v13 = v26;
    }

    v29 = v42;
    *(v41 + 8 * v23) = v25 | v24;
    result = (*v34)(*(v13 + 48) + v22 * v17, v29, v2);
    v30 = *(v13 + 16);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_17;
    }

    *(v13 + 16) = v32;
LABEL_12:
    v14 = v39;
    a1 = v35;
    if (v39 == v37)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_220CE08D0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_220DBE6C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220CE0914(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v34 = a5;
  v39 = a1;
  v40 = a2;
  v42 = a4(0);
  v7 = OUTLINED_FUNCTION_0(v42);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v36 = v12 - v13;
  OUTLINED_FUNCTION_23();
  result = MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  v18 = 0;
  v41 = *(a3 + 16);
  v38 = v9 + 16;
  v19 = (v9 + 8);
  v35 = (v9 + 32);
  v37 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v41 == v18)
    {

      return v37;
    }

    if (v18 >= *(a3 + 16))
    {
      break;
    }

    v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v21 = *(v9 + 72);
    v22 = a3;
    (*(v9 + 16))(v17, a3 + v20 + v21 * v18, v42);
    v23 = v39(v17);
    if (v5)
    {
      (*v19)(v17, v42);
      v30 = v37;

      return v30;
    }

    if (v23)
    {
      v33 = *v35;
      v33(v36, v17, v42);
      v24 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v24;
      if (isUniquelyReferenced_nonNull_native)
      {
        v26 = v24;
      }

      else
      {
        v34(0, *(v24 + 16) + 1, 1);
        v26 = v43;
      }

      a3 = v22;
      v28 = *(v26 + 16);
      v27 = *(v26 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v37 = v28 + 1;
        v32 = v28;
        v34(v27 > 1, v28 + 1, 1);
        v29 = v37;
        v28 = v32;
        a3 = v22;
        v26 = v43;
      }

      ++v18;
      *(v26 + 16) = v29;
      v37 = v26;
      result = (v33)(v26 + v20 + v28 * v21, v36, v42);
    }

    else
    {
      result = (*v19)(v17, v42);
      ++v18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_220CE0C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v4 = sub_220DBEBA0();
  v5 = OUTLINED_FUNCTION_0(v4);
  v37 = v6;
  v38 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v36 = v10 - v9;
  v39 = sub_220DBE6E0();
  v11 = OUTLINED_FUNCTION_0(v39);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = sub_220DBE560();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4();
  v27 = (v25 - v26);
  MEMORY[0x28223BE20](v28);
  v30 = &v36 - v29;
  v41 = a1;
  sub_220DBE8F0();
  LOBYTE(a1) = sub_220DBE430();
  v31 = *(v22 + 8);
  v31(v30, v19);
  if ((a1 & 1) == 0)
  {
    goto LABEL_3;
  }

  sub_220DBE8F0();
  sub_220DBE6A0();
  sub_220DBE3A0();
  (*(v13 + 8))(v18, v39);
  sub_220CD9B24();
  v32 = sub_220DC0580();
  v31(v27, v19);
  v31(v30, v19);
  if ((v32 & 1) == 0)
  {
    v34 = v36;
    sub_220DBE950();
    v33 = sub_220DBEB80();
    (*(v37 + 8))(v34, v38);
  }

  else
  {
LABEL_3:
    v33 = 0;
  }

  return v33 & 1;
}

uint64_t PrecipitationTotalStringAmount.maxAmount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_5_2();
  sub_220CE1028(v1 + v10, v9);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50) + 48);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
    v19 = *(v18 - 8);
    (*(v19 + 32))(a1, v9 + v17, v18);
    return (*(v19 + 8))(v9, v18);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
    OUTLINED_FUNCTION_6(v11);
    v13 = *(v12 + 32);
    v14 = OUTLINED_FUNCTION_27_0();
    return v15(v14);
  }
}

uint64_t sub_220CE1028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_220CE108C()
{
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_12_8(v4, v5, v6);
  v7 = sub_220DBE830();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_11(v11, v47);
  v13 = MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11_5(v13, v14, v15, v16, v17, v18, v19, v20, v48);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
  OUTLINED_FUNCTION_0(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_13_7();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A08, &qword_220DC3C88);
  OUTLINED_FUNCTION_18_6(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v28);
  v29 = OUTLINED_FUNCTION_4_10();
  v30(v29);
  OUTLINED_FUNCTION_1_16(&qword_280FA7740);
  OUTLINED_FUNCTION_24_4();
  v31 = *(v3 + 44);
  OUTLINED_FUNCTION_2_14(&qword_280FA7738);
  OUTLINED_FUNCTION_7_9();
  while (1)
  {
    OUTLINED_FUNCTION_16_7();
    OUTLINED_FUNCTION_19_6();
    if (v32)
    {
      sub_220CE1ABC(v2, &qword_27CF95A08, &qword_220DC3C88);
      OUTLINED_FUNCTION_20_4();
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_14_9();
    v33 = OUTLINED_FUNCTION_10_10();
    v34(v33);
    v35 = OUTLINED_FUNCTION_23_6();
    v0(v35);
    OUTLINED_FUNCTION_17_7();
    v36 = OUTLINED_FUNCTION_3_13();
    v7(v36);
    v37 = OUTLINED_FUNCTION_22_5();
    v39 = v38(v37);
    v0 = v1;
    if (v1)
    {
      v44 = OUTLINED_FUNCTION_21_4();
      v45(v44);
      sub_220CE1ABC(v2, &qword_27CF95A08, &qword_220DC3C88);
      goto LABEL_10;
    }

    if (v39)
    {
      break;
    }

    v40 = OUTLINED_FUNCTION_9_7();
    v41(v40);
  }

  sub_220CE1ABC(v2, &qword_27CF95A08, &qword_220DC3C88);
  v46 = OUTLINED_FUNCTION_8_8();
  v42 = (v7)(v46);
  v43 = 0;
LABEL_9:
  OUTLINED_FUNCTION_25_4(v42, v43);
LABEL_10:
  OUTLINED_FUNCTION_27_2();
}

uint64_t OUTLINED_FUNCTION_3_2()
{
  v2 = *(v0 - 184);

  return sub_220DBE240();
}

uint64_t OUTLINED_FUNCTION_3_6@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v2 + a1 + 8);
  v5 = (v1 + a1);
  v6 = *v5;
  v7 = v5[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_30_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_3_12()
{
  result = type metadata accessor for ChartLineStyle(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_14()
{
  v3 = *(v1 + 32);
  result = v0;
  v5 = *(v2 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_17()
{
  v1 = *(v0 - 200);
  v2 = *(*(v0 - 208) + 8);
  return *(v0 - 128);
}

uint64_t OUTLINED_FUNCTION_3_24()
{
  result = *(v0 - 256);
  v2 = *(v0 - 264);
  v3 = *(v0 - 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_28()
{
  v2 = *(v0 - 104);

  return sub_220DC0C40();
}

uint64_t OUTLINED_FUNCTION_3_30()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

uint64_t sub_220CE161C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1)
{

  return sub_220CE1ABC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_17_5(uint64_t result)
{
  v2[8] = result;
  v2[4] = v1;
  v2[5] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_7()
{

  return sub_220DC08C0();
}

uint64_t OUTLINED_FUNCTION_17_8(uint64_t result, uint64_t a2)
{
  *(v2 - 480) = result;
  *(v2 - 488) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_9()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_17_10(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  v3 = *v2;
  v4 = *(v2 + 8);
}

uint64_t OUTLINED_FUNCTION_17_11()
{
  *(v4 - 136) = v1;
  *(v4 - 128) = v0;
  v7 = *(v4 - 168);
  v6 = *(v4 - 160);
  *(v4 - 120) = *(v4 - 200);
  *(v4 - 112) = v7;
  *(v4 - 104) = v3;
  *(v4 - 96) = v6;

  return sub_220D96EB4(v2, (v4 - 136));
}

void OUTLINED_FUNCTION_17_12()
{
  *(v0 + 16) = v1;
  v3 = *(v2 - 424);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v3 + 72);
}

void OUTLINED_FUNCTION_17_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

char *OUTLINED_FUNCTION_17_16@<X0>(unint64_t a1@<X8>)
{

  return sub_220CDD440((a1 > 1), v1, 1);
}

unint64_t OUTLINED_FUNCTION_23_0(uint64_t a1, uint64_t a2)
{
  *(v2 - 136) = a1;
  *(v2 - 128) = a2;
  *(v2 - 152) = 0;
  *(v2 - 144) = 0xE000000000000000;

  return sub_220CEFF14();
}

uint64_t OUTLINED_FUNCTION_23_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = a2;

  return sub_220DC05F0();
}

uint64_t OUTLINED_FUNCTION_23_5()
{

  return sub_220DC0250();
}

uint64_t OUTLINED_FUNCTION_23_8(int *a1)
{
  v4 = a1[12];
  v5 = a1[16];
  v6 = a1[20];
  v7 = *(v2 - 112);

  return sub_220D15FF4(v1, v7);
}

uint64_t OUTLINED_FUNCTION_23_11()
{
  v1 = *(*(v0 - 168) + 8);
  result = *(v0 - 112);
  v3 = *(v0 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_13(uint64_t result)
{
  v3 = *(v2 + 32);
  v4 = v1 + *(result + 48);
  return result;
}

uint64_t sub_220CE1938(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_220DBE560();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - v11;
  sub_220DBE810();
  sub_220DBEA60();
  v13 = sub_220DBE430();
  v14 = *(v6 + 8);
  v14(v10, v5);
  v14(v12, v5);
  if (v13)
  {
    v15 = a3[3];
    v16 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v15);
    v17 = (*(v16 + 56))(a1, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_220CE1ABC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_26_1()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_26_6()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_26_7()
{
  v3 = *(v0 + 8);
  *(v2 - 128) = v0 + 8;
  *(v2 - 304) = v3;
  return v1;
}

uint64_t OUTLINED_FUNCTION_26_8()
{
  v6 = *(v3 - 168);
  v5 = *(v3 - 160);
  *(v3 - 120) = v0;
  *(v3 - 112) = v6;
  *(v3 - 104) = v2;
  *(v3 - 96) = v5;

  return sub_220D96EB4(v1, (v3 - 136));
}

uint64_t sub_220CE1C00(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalStringAmount(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220CE1C5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220CE1CC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_20();
  v8(v7);
  return a2;
}

uint64_t sub_220CE1D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220CE1D80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220CE1DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220CE1E30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_220CE1E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

BOOL PrecipitationNoPrecipitationRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent();
  v5 = *(*(PrecipitationEvent - 8) + 64);
  v6 = MEMORY[0x28223BE20](PrecipitationEvent);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = v2[3];
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v11);
  (*(v12 + 8))(a2, v11, v12);
  sub_220CE1FF0(v10, v8);
  v13 = swift_getEnumCaseMultiPayload() == 2;
  sub_220CE2054(v8);
  return v13;
}

uint64_t sub_220CE1FF0(uint64_t a1, uint64_t a2)
{
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent();
  (*(*(PrecipitationEvent - 8) + 32))(a2, a1, PrecipitationEvent);
  return a2;
}

uint64_t sub_220CE2054(uint64_t a1)
{
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent();
  (*(*(PrecipitationEvent - 8) + 8))(a1, PrecipitationEvent);
  return a1;
}

uint64_t PrecipitationNoPrecipitationRule.description(for:data:)()
{
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220DC17A0;
  v1 = MEMORY[0x277D83C10];
  *(v0 + 56) = MEMORY[0x277D83B88];
  *(v0 + 64) = v1;
  *(v0 + 32) = 10;
  v2 = sub_220DC05F0();

  return v2;
}

void PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v22;
  a20 = v23;
  v234 = v24;
  LODWORD(v247) = v25;
  v242 = v26;
  v253 = sub_220DC0300();
  v27 = OUTLINED_FUNCTION_0(v253);
  v244 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v243 = v32 - v31;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v33 = OUTLINED_FUNCTION_0(v251);
  v249 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4();
  v238 = v37 - v38;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_25_0();
  v250 = v40;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_25_0();
  v236 = v42;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v43);
  v235 = &v223 - v44;
  v240 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v45 = OUTLINED_FUNCTION_6(v240);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1();
  v241 = v49 - v48;
  v50 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95228, &unk_220DC1E60) - 8) + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v51);
  v53 = &v223 - v52;
  v245 = sub_220DC02F0();
  v54 = OUTLINED_FUNCTION_0(v245);
  v56 = v55;
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_1();
  v61 = v60 - v59;
  v239 = sub_220DC0960();
  v62 = OUTLINED_FUNCTION_0(v239);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_4();
  v226 = v67 - v68;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_25_0();
  v225 = v70;
  OUTLINED_FUNCTION_23();
  v72 = MEMORY[0x28223BE20](v71);
  v74 = &v223 - v73;
  MEMORY[0x28223BE20](v72);
  v76 = &v223 - v75;
  v77 = sub_220DC0950();
  v78 = OUTLINED_FUNCTION_0(v77);
  v252 = v79;
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_4();
  v224 = v82 - v83;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_25_0();
  v237 = v85;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_9_1();
  v88 = MEMORY[0x28223BE20](v87);
  v254 = &v223 - v89;
  v246 = v20;
  v92 = *(v64 + 104);
  v91 = v64 + 104;
  v90 = v92;
  if (*v20)
  {
    v93 = MEMORY[0x277D7B4C0];
  }

  else
  {
    v93 = MEMORY[0x277D7B4B8];
  }

  v94 = *v93;
  v95 = v91;
  v96 = v56 + 104;
  v97 = (v56 + 8);
  v98 = (v91 - 96);
  v248 = v88;
  v233 = v53;
  v232 = v61;
  v231 = v95;
  v230 = v96;
  v229 = v90;
  v99 = v239;
  if (v247)
  {
    v100 = v90(v76, v94);
    v101 = OUTLINED_FUNCTION_41_0(v100, *MEMORY[0x277D7B3E8]);
    v102 = v245;
    v227 = v103;
    v103(v101);
    v104 = sub_220DBE5E0();
    OUTLINED_FUNCTION_43(v104);
    v105 = v242;
    OUTLINED_FUNCTION_39();
    sub_220DC0280();
    sub_220CDA548(v53, &qword_27CF95228, &unk_220DC1E60);
    v228 = *v97;
    v228(v61, v102);
    v106 = *v98;
    (*v98)(v76, v99);
    v107 = v254;
    sub_220DC0940();
    (*(v252 + 8))(v21, v77);
    v108 = v105;
  }

  else
  {
    v109 = (v90)(v74, v94, v239);
    v110 = OUTLINED_FUNCTION_41_0(v109, *MEMORY[0x277D7B3E8]);
    v227 = v111;
    v111(v110);
    v112 = sub_220DBE5E0();
    OUTLINED_FUNCTION_43(v112);
    v113 = v254;
    v108 = v242;
    OUTLINED_FUNCTION_29_1();
    sub_220DC0280();
    sub_220CDA548(v53, &qword_27CF95228, &unk_220DC1E60);
    v114 = *v97;
    v115 = OUTLINED_FUNCTION_36();
    v228 = v116;
    (v116)(v115);
    v106 = *v98;
    (*v98)(v74, v99);
    v107 = v113;
  }

  v117 = v97;
  OUTLINED_FUNCTION_5_2();
  v119 = v241;
  sub_220CE1028(&v246[v118], v241);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v121 = v250;
  if (!EnumCaseMultiPayload)
  {
    v132 = v249;
    v133 = v235;
    v134 = v251;
    (*(v249 + 32))(v235, v119, v251);
    v136 = v243;
    v135 = v244;
    (*(v244 + 104))(v243, *MEMORY[0x277D7B408], v253);
    sub_220DBF100();
    sub_220DBF0D0();
    OUTLINED_FUNCTION_0_0();
    sub_220CE33B8(v137, v138);
    v139 = v248;
    v247 = sub_220DBE0B0();
    v140 = v252;
    OUTLINED_FUNCTION_40_0();

    (*(v135 + 8))(v136, v253);
    (*(v132 + 8))(v133, v134);
    (*(v140 + 8))(v107, v139);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v239 = v106;
    v240 = v117;
    v242 = v98;
    v141 = v119;
    v142 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50) + 48);
    v143 = v249;
    v144 = *(v249 + 32);
    v145 = v108;
    v146 = v251;
    v144(v121, v141, v251);
    v144(v238, v141 + v142, v146);
    v147 = sub_220DC0820();
    v148 = sub_220CF9528(v145, v147);

    if (v148)
    {
      v149 = v244;
      (*(v244 + 104))(v243, *MEMORY[0x277D7B408], v253);
      sub_220DBF100();
      sub_220DBF0D0();
      OUTLINED_FUNCTION_0_0();
      sub_220CE33B8(v150, v151);
      v152 = v254;
      v153 = v248;
      v247 = sub_220DBE0B0();
      OUTLINED_FUNCTION_40_0();

      v154 = *(v149 + 8);
      v155 = OUTLINED_FUNCTION_14_2();
      v156(v155);
      v157 = *(v143 + 8);
      v158 = OUTLINED_FUNCTION_38_0();
      v157(v158);
      (v157)(v250, v146);
      (*(v252 + 8))(v152, v153);
      goto LABEL_23;
    }

    sub_220DC0830();
    v169 = MEMORY[0x277D7B4B8];
    if (*v246)
    {
      v169 = MEMORY[0x277D7B4C0];
    }

    v170 = *v169;
    if (v247)
    {
      v171 = OUTLINED_FUNCTION_13_1(&a9);
      v172(v171);
      v173 = OUTLINED_FUNCTION_8_3();
      v174(v173);
      v175 = sub_220DBE5E0();
      OUTLINED_FUNCTION_19_1(v175);
      v176 = v224;
      OUTLINED_FUNCTION_30_2();

      sub_220CDA548(v121, &qword_27CF95228, &unk_220DC1E60);
      v177 = OUTLINED_FUNCTION_22_2();
      v178(v177);
      v179 = OUTLINED_FUNCTION_35_0();
      v180(v179);
      sub_220DC0940();
      (*(v252 + 8))(v176, v248);
      v181 = v253;
      if (qword_280FA6600 == -1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v193 = OUTLINED_FUNCTION_13_1(&a10);
      v194(v193);
      v195 = OUTLINED_FUNCTION_8_3();
      v196(v195);
      v197 = sub_220DBE5E0();
      OUTLINED_FUNCTION_19_1(v197);
      OUTLINED_FUNCTION_30_2();

      sub_220CDA548(v121, &qword_27CF95228, &unk_220DC1E60);
      v198 = OUTLINED_FUNCTION_22_2();
      v199(v198);
      v200 = OUTLINED_FUNCTION_35_0();
      v201(v200);
      v181 = v253;
      if (qword_280FA6600 == -1)
      {
LABEL_22:
        OUTLINED_FUNCTION_21_1();
        v202 = sub_220DBE240();
        v246 = v203;
        v247 = v202;
        v204 = v244;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
        v205 = swift_allocObject();
        *(v205 + 16) = xmmword_220DC17C0;
        LODWORD(v245) = *MEMORY[0x277D7B408];
        v244 = *(v204 + 104);
        v206 = v243;
        (v244)(v243);
        v242 = sub_220DBF100();
        sub_220DBF0D0();
        OUTLINED_FUNCTION_0_0();
        v241 = sub_220CE33B8(v207, v208);
        v209 = sub_220DBE0B0();
        v211 = v210;

        v212 = *(v204 + 8);
        v213 = OUTLINED_FUNCTION_38_0();
        v212(v213);
        *(v205 + 56) = MEMORY[0x277D837D0];
        v214 = sub_220CEFDB0();
        *(v205 + 64) = v214;
        *(v205 + 32) = v209;
        *(v205 + 40) = v211;
        (v244)(v206, v245, v181);
        sub_220DBF0D0();
        v215 = v251;
        v216 = v238;
        v217 = sub_220DBE0B0();
        v219 = v218;

        (v212)(v206, v253);
        *(v205 + 96) = MEMORY[0x277D837D0];
        *(v205 + 104) = v214;
        *(v205 + 72) = v217;
        *(v205 + 80) = v219;
        v247 = sub_220DC05F0();
        OUTLINED_FUNCTION_40_0();

        v220 = *(v252 + 8);
        v221 = v248;
        v220(v237, v248);
        v222 = *(v249 + 8);
        v222(v216, v215);
        v222(v250, v215);
        v220(v254, v221);
        goto LABEL_23;
      }
    }

    OUTLINED_FUNCTION_10();
    goto LABEL_22;
  }

  v122 = v249;
  v123 = v236;
  v124 = v251;
  (*(v249 + 32))(v236, v119, v251);
  sub_220DC0820();
  v125 = OUTLINED_FUNCTION_29_1();
  v127 = sub_220CF9528(v125, v126);

  if ((v127 & 1) != 0 || (v234 & 1) == 0)
  {
    v160 = v243;
    v159 = v244;
    (*(v244 + 104))(v243, *MEMORY[0x277D7B408], v253);
    sub_220DBF100();
    sub_220DBF0D0();
    OUTLINED_FUNCTION_0_0();
    sub_220CE33B8(v161, v162);
    v247 = sub_220DBE0B0();
    v163 = v123;
    v164 = v252;
    OUTLINED_FUNCTION_40_0();

    (*(v159 + 8))(v160, v253);
    (*(v122 + 8))(v163, v124);
    v165 = *(v164 + 8);
    v166 = OUTLINED_FUNCTION_32_0();
    v168(v166, v167);
  }

  else
  {
    v128 = sub_220DBE030();
    sub_220DC0930();

    sub_220CD8184(0, &qword_27CF95230, 0x277CCA8D8);
    v129 = sub_220DC0AA0();
    v130 = v123;
    v131 = v244;
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_15_1();
    v250 = sub_220DBE240();
    v246 = v182;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v183 = swift_allocObject();
    *(v183 + 16) = xmmword_220DC17A0;
    v184 = v243;
    v185 = v253;
    (*(v131 + 104))(v243, *MEMORY[0x277D7B408], v253);
    sub_220DBF100();
    sub_220DBF0D0();
    OUTLINED_FUNCTION_0_0();
    sub_220CE33B8(v186, v187);
    v188 = v248;
    v189 = v130;
    v190 = sub_220DBE0B0();
    v192 = v191;

    (*(v131 + 8))(v184, v185);
    *(v183 + 56) = MEMORY[0x277D837D0];
    *(v183 + 64) = sub_220CEFDB0();
    *(v183 + 32) = v190;
    *(v183 + 40) = v192;
    v247 = sub_220DC05F0();

    (*(v122 + 8))(v189, v251);
    (*(v252 + 8))(v254, v188);
  }

LABEL_23:
  OUTLINED_FUNCTION_24();
}

uint64_t OUTLINED_FUNCTION_41_0(uint64_t a1, int a2)
{
  v5 = *v3;
  result = v2;
  *(v4 - 316) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_41_1()
{
  result = 1;
  v2 = *(v0 - 280);
  return result;
}

uint64_t OUTLINED_FUNCTION_41_2(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 - 168);

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v4);
}

uint64_t sub_220CE33B8(unint64_t *a1, void (*a2)(uint64_t))
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

size_t OUTLINED_FUNCTION_39_1()
{

  return sub_220D563D8(v2 > 1, v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_39_2()
{
  result = v0;
  v3 = *(v1 - 336);
  v4 = *(v1 - 168);
  return result;
}

uint64_t OUTLINED_FUNCTION_39_3()
{
  result = v0;
  v3 = *(v1 - 200);
  v4 = *(v1 - 448);
  return result;
}

uint64_t PrecipitationTotalHeroString.shortSubtitle.getter()
{
  v2 = OUTLINED_FUNCTION_13_5();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v5 = OUTLINED_FUNCTION_20_3();
  v6 = *(v5 + 24);
  OUTLINED_FUNCTION_1_9();
  OUTLINED_FUNCTION_25_3(v7);
  v8 = sub_220DBE560();
  switch(OUTLINED_FUNCTION_19_4(v8))
  {
    case 1u:
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_11();
      sub_220DBE240();
      OUTLINED_FUNCTION_7_6();
      break;
    case 2u:
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_10_7();
      OUTLINED_FUNCTION_11();
      sub_220DBE240();
      OUTLINED_FUNCTION_6_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v10 = OUTLINED_FUNCTION_24_3();
      *(v10 + 16) = xmmword_220DC17A0;
      v11 = MEMORY[0x277D83C10];
      *(v10 + 56) = MEMORY[0x277D83B88];
      *(v10 + 64) = v11;
      v12 = 6;
      goto LABEL_12;
    case 3u:
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_10_7();
      OUTLINED_FUNCTION_11();
      sub_220DBE240();
      OUTLINED_FUNCTION_6_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v10 = OUTLINED_FUNCTION_24_3();
      *(v10 + 16) = xmmword_220DC17A0;
      v13 = MEMORY[0x277D83C10];
      *(v10 + 56) = MEMORY[0x277D83B88];
      *(v10 + 64) = v13;
      v12 = 24;
LABEL_12:
      v1 = OUTLINED_FUNCTION_23_4(v10, v12);

      break;
    default:
      if (*(v1 + *(v5 + 20)) == 2)
      {
        OUTLINED_FUNCTION_29();
        if (!v9)
        {
          OUTLINED_FUNCTION_10();
        }
      }

      else
      {
        OUTLINED_FUNCTION_29();
        if (!v9)
        {
          OUTLINED_FUNCTION_10();
        }
      }

      OUTLINED_FUNCTION_8_7();
      OUTLINED_FUNCTION_11();
      sub_220DBE240();
      OUTLINED_FUNCTION_7_6();
      sub_220CDDDE8(v0);
      break;
  }

  return v1;
}

uint64_t UVIndexComponentDescriptionContext.init(currentWeather:dailyForecast:hourlyForecast:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_220DBEAD0();
  OUTLINED_FUNCTION_6(v10);
  (*(v11 + 32))(a5, a1);
  v12 = type metadata accessor for UVIndexComponentDescriptionContext();
  v13 = v12[5];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
  OUTLINED_FUNCTION_6(v14);
  (*(v15 + 32))(a5 + v13, a2);
  v16 = v12[6];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_6(v17);
  (*(v18 + 32))(a5 + v16, a3);
  v19 = v12[7];
  v20 = sub_220DBE740();
  OUTLINED_FUNCTION_6(v20);
  v22 = *(v21 + 32);

  return v22(a5 + v19, a4);
}

uint64_t UVIndexNightRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = &v69 - v5;
  v6 = sub_220DBF070();
  v7 = OUTLINED_FUNCTION_0(v6);
  v77 = v8;
  v78 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_220DBE560();
  v14 = OUTLINED_FUNCTION_0(v13);
  v76 = v15;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v72 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v73 = &v69 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v74 = &v69 - v23;
  MEMORY[0x28223BE20](v22);
  v80 = &v69 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v69 - v27;
  v29 = sub_220DBE830();
  v30 = OUTLINED_FUNCTION_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  v36 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_220DBE6E0();
  v38 = OUTLINED_FUNCTION_0(v37);
  v81 = v39;
  v82 = v38;
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v38);
  v44 = &v69 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = &v69 - v45;
  v47 = type metadata accessor for UVIndexComponentDescriptionContext();
  v48 = a2 + *(v47 + 28);
  sub_220DBE600();
  v49 = *(v47 + 20);
  v83 = v46;
  v75 = a2;
  sub_220CE108C();
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    v50 = &qword_27CF95A10;
    v51 = "Z";
    v52 = v28;
LABEL_5:
    sub_220CE1ABC(v52, v50, v51);
    v54 = 0;
    v55 = v81;
    goto LABEL_17;
  }

  (*(v32 + 32))(v36, v28, v29);
  sub_220DBE800();
  v53 = v79;
  sub_220DBF020();
  (*(v77 + 8))(v12, v78);
  if (__swift_getEnumTagSinglePayload(v53, 1, v13) == 1)
  {
    (*(v32 + 8))(v36, v29);
    v50 = &qword_27CF951E0;
    v51 = &unk_220DC1D80;
    v52 = v53;
    goto LABEL_5;
  }

  v70 = v36;
  v77 = v32;
  v78 = v29;
  v56 = v76;
  (*(v76 + 32))(v80, v53, v13);
  v57 = v72;
  sub_220DBEA60();
  sub_220DBE6A0();
  v58 = v73;
  sub_220DBE390();
  v55 = v81;
  (*(v81 + 8))(v44, v82);
  v59 = *(v56 + 8);
  v59(v57, v13);
  v60 = v74;
  sub_220DBE5F0();
  v59(v58, v13);
  sub_220DBEA60();
  v61 = sub_220DBE430();
  v59(v58, v13);
  if (v61 & 1) != 0 && (sub_220DBEA60(), v62 = sub_220DBE440(), v59(v58, v13), (v62))
  {
    sub_220DBEF60();
    v63 = sub_220DBEF40();
    v65 = v64;
    if (v63 == sub_220DBEF40() && v65 == v66)
    {
      v54 = 1;
    }

    else
    {
      v54 = sub_220DC0CA0();
    }
  }

  else
  {
    v54 = 0;
  }

  v59(v60, v13);
  v59(v80, v13);
  (*(v77 + 8))(v70, v78);
LABEL_17:
  (*(v55 + 8))(v46, v82);
  return v54 & 1;
}

uint64_t sub_220CE3FA0()
{
  v0 = sub_220DBE560();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE810();
  v5 = sub_220DBE610();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t UVIndexNotLowNotIncreasingBeforeSunsetRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  v78[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v5 = OUTLINED_FUNCTION_0(v4);
  v79 = v6;
  v80 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v81 = v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  v88 = v78 - v15;
  v16 = sub_220DBF070();
  v17 = OUTLINED_FUNCTION_0(v16);
  v86 = v18;
  v87 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_12();
  v21 = sub_220DBE560();
  v22 = OUTLINED_FUNCTION_0(v21);
  v85 = v23;
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v22);
  v82 = v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v84 = v78 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
  OUTLINED_FUNCTION_18(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v32);
  v34 = v78 - v33;
  v35 = sub_220DBE830();
  v36 = OUTLINED_FUNCTION_0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1();
  v43 = v42 - v41;
  v44 = sub_220DBE6E0();
  v45 = OUTLINED_FUNCTION_0(v44);
  v89 = v46;
  v90 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1();
  v51 = v50 - v49;
  v52 = type metadata accessor for UVIndexComponentDescriptionContext();
  v53 = a2 + v52[7];
  sub_220DBE600();
  v54 = v52[5];
  v91 = v51;
  v83 = a2;
  sub_220CE108C();
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    v55 = &qword_27CF95A10;
    v56 = "Z";
    v57 = v34;
LABEL_5:
    sub_220CE1ABC(v57, v55, v56);
LABEL_6:
    LOBYTE(v59) = 0;
    goto LABEL_7;
  }

  (*(v38 + 32))(v43, v34, v35);
  sub_220DBE800();
  v58 = v88;
  sub_220DBF020();
  (*(v86 + 8))(v2, v87);
  if (__swift_getEnumTagSinglePayload(v58, 1, v21) == 1)
  {
    (*(v38 + 8))(v43, v35);
    v55 = &qword_27CF951E0;
    v56 = &unk_220DC1D80;
    v57 = v88;
    goto LABEL_5;
  }

  v86 = v43;
  v87 = v35;
  v61 = v84;
  v62 = v85;
  (*(v85 + 32))(v84, v88, v21);
  v64 = v82;
  v63 = v83;
  sub_220DBEA60();
  v65 = sub_220DBE440();
  v66 = v64;
  v67 = *(v62 + 8);
  v67(v66, v21);
  if ((v65 & 1) == 0)
  {
    v67(v61, v21);
    (*(v38 + 8))(v86, v87);
    goto LABEL_6;
  }

  v68 = v67;
  v69 = v61;
  v70 = (*(v79 + 16))(v81, v63 + v52[6], v80);
  MEMORY[0x28223BE20](v70);
  v78[-2] = v63;
  v59 = *(sub_220CE5008(sub_220D2B9E0, &v78[-4]) + 16);

  if (v59)
  {
    sub_220DBEF60();
    v71 = sub_220DBEF40();
    v73 = v72;
    v75 = v71 == sub_220DBEF40() && v73 == v74;
    v76 = v69;
    if (v75)
    {

      LOBYTE(v59) = 0;
    }

    else
    {
      v77 = sub_220DC0CA0();

      LOBYTE(v59) = v77 ^ 1;
    }
  }

  else
  {
    v76 = v69;
  }

  v68(v76, v21);
  (*(v38 + 8))(v86, v87);
LABEL_7:
  (*(v89 + 8))(v51, v90);
  return v59 & 1;
}

uint64_t sub_220CE46B8()
{
  v0 = sub_220DBE560();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE810();
  v5 = sub_220DBE610();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t UVIndexSteadyBeforeNoonRule.isSatisfied(for:data:)(char *a1, uint64_t a2)
{
  v48 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v4 = OUTLINED_FUNCTION_0(v3);
  v45 = v5;
  v46 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = &v44 - v8;
  v9 = sub_220DBE6E0();
  v10 = OUTLINED_FUNCTION_0(v9);
  v49 = v11;
  v50 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v44 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220DBE560();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v44 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v44 - v27;
  sub_220DBEA60();
  sub_220DBEA60();
  v29 = type metadata accessor for UVIndexComponentDescriptionContext();
  v30 = *(v29 + 28);
  sub_220DBE3D0();
  v31 = *(v18 + 8);
  v31(v23, v15);
  v32 = sub_220DBE440();
  v31(v26, v15);
  v31(v28, v15);
  if (v32)
  {
    v33 = v44;
    sub_220DBE600();
    v34 = (*(v45 + 16))(v47, a2 + *(v29 + 24), v46);
    MEMORY[0x28223BE20](v34);
    v35 = v48;
    *(&v44 - 2) = v33;
    *(&v44 - 1) = v35;
    v36 = *(sub_220CE5008(sub_220CE7828, (&v44 - 4)) + 16);

    if (v36)
    {
      v37 = 0;
    }

    else
    {
      sub_220DBEF60();
      v38 = sub_220DBEF40();
      v40 = v39;
      if (v38 == sub_220DBEF40() && v40 == v41)
      {
        v37 = 1;
      }

      else
      {
        v37 = sub_220DC0CA0();
      }
    }

    (*(v49 + 8))(v33, v50);
  }

  else
  {
    v37 = 0;
  }

  return v37 & 1;
}

uint64_t UVIndexSteadyBetweenNoonAndMidnightRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  v51[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v4 = OUTLINED_FUNCTION_0(v3);
  v52 = v5;
  v53 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v54 = v51 - v8;
  v59 = sub_220DBE6E0();
  v9 = OUTLINED_FUNCTION_0(v59);
  v57 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9();
  v55 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = v51 - v15;
  v17 = sub_220DBE560();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  v56 = v23;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v51 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v51 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = v51 - v31;
  sub_220DBEA60();
  sub_220DBEA60();
  v33 = type metadata accessor for UVIndexComponentDescriptionContext();
  v34 = *(v33 + 28);
  v60 = a2;
  v58 = v34;
  sub_220DBE3D0();
  v35 = *(v20 + 8);
  v35(v27, v17);
  LOBYTE(a2) = sub_220DBE430();
  v35(v30, v17);
  v35(v32, v17);
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  v51[0] = v33;
  sub_220DBEA60();
  v36 = v56;
  sub_220DBEA60();
  sub_220DBE6A0();
  sub_220DBE390();
  v37 = v16;
  v38 = v59;
  v57 = *(v57 + 8);
  (v57)(v37, v59);
  v35(v36, v17);
  sub_220DBE3E0();
  v35(v27, v17);
  v39 = sub_220DBE440();
  v35(v30, v17);
  v35(v32, v17);
  if (v39)
  {
    v40 = v60;
    v41 = v55;
    sub_220DBE600();
    v42 = (*(v52 + 16))(v54, v40 + *(v51[0] + 24), v53);
    MEMORY[0x28223BE20](v42);
    v51[-2] = v41;
    v51[-1] = v40;
    v43 = *(sub_220CE5008(sub_220CE5628, &v51[-4]) + 16);

    if (v43)
    {
      v44 = 0;
    }

    else
    {
      sub_220DBEF60();
      v45 = sub_220DBEF40();
      v47 = v46;
      if (v45 == sub_220DBEF40() && v47 == v48)
      {
        v44 = 1;
      }

      else
      {
        v44 = sub_220DC0CA0();
      }
    }

    (v57)(v41, v38);
  }

  else
  {
LABEL_5:
    v44 = 0;
  }

  return v44 & 1;
}

uint64_t sub_220CE5008(uint64_t (*a1)(char *), uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v45 = sub_220DBE960();
  v3 = OUTLINED_FUNCTION_0(v45);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v36 = (v8 - v9);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v10);
  v40 = &v34 - v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v12);
  v44 = &v34 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959D8, &unk_220DC3B00);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_1_15();
  sub_220CDA008(v19);
  sub_220DC06D0();
  v20 = *(v15 + 44);
  OUTLINED_FUNCTION_2_13();
  sub_220CDA008(v21);
  v43 = (v5 + 32);
  v35 = v5;
  v38 = (v5 + 8);
  v39 = (v5 + 16);
  v37 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_220DC08B0();
    if (*&v18[v20] == v46[0])
    {
      sub_220CE58C8(v18);
      return v37;
    }

    v22 = sub_220DC08E0();
    v23 = v40;
    v24 = v45;
    (*v39)(v40);
    v22(v46, 0);
    sub_220DC08C0();
    v25 = v44;
    v26 = *v43;
    (*v43)(v44, v23, v24);
    v27 = v41(v25);
    if (v2)
    {
      break;
    }

    if (v27)
    {
      v26(v36, v44, v45);
      v28 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_5_10();
        v28 = v47;
      }

      v30 = *(v28 + 16);
      if (v30 >= *(v28 + 24) >> 1)
      {
        sub_220CE5648();
        v28 = v47;
      }

      *(v28 + 16) = v30 + 1;
      v31 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v37 = v28;
      v26((v28 + v31 + *(v35 + 72) * v30), v36, v45);
    }

    else
    {
      (*v38)(v44, v45);
    }
  }

  (*v38)(v44, v45);
  sub_220CE58C8(v18);
  v32 = v37;

  return v32;
}

uint64_t sub_220CE538C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[1] = a3;
  v3 = sub_220DBEF70();
  v26[0] = *(v3 - 8);
  v4 = *(v26[0] + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220DBE560();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - v13;
  sub_220DBE8F0();
  v15 = sub_220DBE610();
  v16 = *(v8 + 8);
  v16(v14, v7);
  if ((v15 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_220DBE8F0();
  sub_220DBEA60();
  v17 = sub_220DBE430();
  v16(v12, v7);
  v16(v14, v7);
  if ((v17 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_220DBE910();
  sub_220DBEF60();
  (*(v26[0] + 8))(v6, v3);
  v18 = sub_220DBEF40();
  v20 = v19;
  if (v18 == sub_220DBEF40() && v20 == v21)
  {

LABEL_9:
    v24 = 0;
    return v24 & 1;
  }

  v23 = sub_220DC0CA0();

  v24 = v23 ^ 1;
  return v24 & 1;
}

void sub_220CE5648()
{
  v1 = *v0;
  OUTLINED_FUNCTION_7_2();
  sub_220CE5690();
  *v0 = v2;
}

void sub_220CE5690()
{
  OUTLINED_FUNCTION_25();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (v12)
  {
    OUTLINED_FUNCTION_9_2();
    if (v14 != v15)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_1();
    }
  }

  else
  {
    v13 = v1;
  }

  v16 = *(v9 + 16);
  if (v13 <= v16)
  {
    v17 = *(v9 + 16);
  }

  else
  {
    v17 = v13;
  }

  if (!v17)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v18 = *(*(v7(0) - 8) + 72);
  v19 = OUTLINED_FUNCTION_10_1();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v20 - v0 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v19[2] = v16;
  v19[3] = 2 * ((v20 - v0) / v18);
LABEL_18:
  v22 = *(*(v7(0) - 8) + 80);
  OUTLINED_FUNCTION_13_2();
  if (v11)
  {
    sub_220CE580C(v9 + v23, v16, v19 + v23, v5);
    *(v9 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_16_2();
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_220CE580C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_14_3();
  if (v8 && (result = (a4)(0), v5 + *(*(result - 8) + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_3_5();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_3_5();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_220CE58C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959D8, &unk_220DC3B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UVIndexIncreasingRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v61 = sub_220DBEF70();
  v4 = OUTLINED_FUNCTION_0(v61);
  v59 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_220DBE960();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959E0, &unk_220DC3C00) - 8) + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v21);
  v54 = &v54 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  OUTLINED_FUNCTION_0(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_13_7();
  v29 = sub_220DBE6E0();
  v30 = OUTLINED_FUNCTION_0(v29);
  v56 = v31;
  v57 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v36 = v35 - v34;
  v37 = type metadata accessor for UVIndexComponentDescriptionContext();
  v38 = a2 + *(v37 + 28);
  sub_220DBE600();
  (*(v25 + 16))(v2, a2 + *(v37 + 24), v23);
  v55 = v36;
  v63 = v36;
  result = sub_220CE5008(sub_220CE5E94, v62);
  v40 = v11;
  v41 = result;
  v42 = 0;
  v43 = *(result + 16);
  v60 = v14 + 16;
  v44 = (v59 + 8);
  while (1)
  {
    if (v43 == v42)
    {

      v45 = 1;
      v46 = v54;
      goto LABEL_8;
    }

    if (v42 >= *(v41 + 16))
    {
      break;
    }

    (*(v14 + 16))(v19, v41 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v42, v40);
    sub_220DBE910();
    sub_220DBEF60();
    (*v44)(v10, v61);
    if (sub_220DBEF20())
    {

      v46 = v54;
      (*(v14 + 32))(v54, v19, v40);
      v45 = 0;
LABEL_8:
      __swift_storeEnumTagSinglePayload(v46, v45, 1, v40);
      sub_220DBEF60();
      v47 = sub_220DBEF40();
      v49 = v48;
      if (v47 == sub_220DBEF40() && v49 == v50)
      {
      }

      else
      {
        v52 = sub_220DC0CA0();

        v53 = 0;
        if ((v52 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v53 = __swift_getEnumTagSinglePayload(v46, 1, v40) != 1;
LABEL_16:
      sub_220CE1ABC(v46, &qword_27CF959E0, &unk_220DC3C00);
      (*(v56 + 8))(v55, v57);
      return v53;
    }

    ++v42;
    result = (*(v14 + 8))(v19, v40);
  }

  __break(1u);
  return result;
}

uint64_t sub_220CE5DBC()
{
  v0 = sub_220DBE560();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  sub_220DBE8F0();
  v9 = sub_220DBE610();
  (*(v3 + 8))(v8, v0);
  return v9 & 1;
}

uint64_t UVIndexPolarEdgeCaseRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  v54[1] = a1;
  v62 = sub_220DBEF70();
  v3 = OUTLINED_FUNCTION_0(v62);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v61 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_220DBE960();
  v9 = OUTLINED_FUNCTION_0(v63);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v58 = (v14 - v15);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v16);
  v18 = v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF959D8, &unk_220DC3B00);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = v54 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  v31 = v54 - v30;
  v32 = type metadata accessor for UVIndexComponentDescriptionContext();
  (*(v27 + 16))(v31, a2 + *(v32 + 24), v24);
  OUTLINED_FUNCTION_1_15();
  sub_220CDA008(v33);
  sub_220DC06D0();
  v34 = *(v20 + 44);
  OUTLINED_FUNCTION_2_13();
  sub_220CDA008(v35);
  v36 = (v11 + 16);
  v37 = (v5 + 8);
  v60 = (v11 + 8);
  v55 = v11;
  v57 = (v11 + 32);
  v59 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_220DC08B0();
    if (*&v23[v34] == v64[0])
    {
      break;
    }

    v38 = sub_220DC08E0();
    (*v36)(v18);
    v38(v64, 0);
    sub_220DC08C0();
    v39 = v61;
    sub_220DBE910();
    sub_220DBEF60();
    (*v37)(v39, v62);
    v40 = sub_220DBEF40();
    v42 = v41;
    if (v40 == sub_220DBEF40() && v42 == v43)
    {

LABEL_10:
      v56 = *v57;
      v56(v58, v18, v63);
      v46 = v59;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v48 = *(v46 + 16);
        sub_220CE5648();
        v46 = v65;
      }

      v49 = *(v46 + 16);
      if (v49 >= *(v46 + 24) >> 1)
      {
        sub_220CE5648();
        v46 = v65;
      }

      *(v46 + 16) = v49 + 1;
      v50 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v59 = v46;
      v56(v46 + v50 + *(v55 + 72) * v49, v58, v63);
    }

    else
    {
      v45 = sub_220DC0CA0();

      if (v45)
      {
        goto LABEL_10;
      }

      (*v60)(v18, v63);
    }
  }

  sub_220CE58C8(v23);
  v51 = *(v59 + 16);

  if (v51)
  {
    v52 = 0;
  }

  else
  {
    sub_220DBEF60();
    v52 = sub_220DBEF20();
  }

  return v52 & 1;
}

uint64_t UVIndexPolarEdgeCaseRule.description(for:data:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_220DBE560();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v11 = (v9 - v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  sub_220DBEA60();
  sub_220DBEA60();
  v18 = a2 + *(type metadata accessor for UVIndexComponentDescriptionContext() + 28);
  sub_220DBE3D0();
  v19 = *(v6 + 8);
  v19(v11, v3);
  LOBYTE(a2) = sub_220DBE430();
  v19(v15, v3);
  v19(v17, v3);
  if (a2)
  {
    if (qword_280FA6600 == -1)
    {
      return sub_220DBE240();
    }

    goto LABEL_6;
  }

  if (qword_280FA6600 != -1)
  {
LABEL_6:
    OUTLINED_FUNCTION_10();
  }

  return sub_220DBE240();
}

uint64_t UVIndex.ExposureCategory.localizedString.getter(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      return sub_220DBE240();
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    case 3:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    case 4:
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_10;
    default:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_9;
      }

LABEL_15:
      OUTLINED_FUNCTION_0_12();
      swift_once();
LABEL_9:
      OUTLINED_FUNCTION_1_38();
LABEL_10:
      OUTLINED_FUNCTION_6_0();
      return sub_220DBE240();
  }
}

uint64_t VisibilityFogRule.isSatisfied(for:data:)()
{
  v0 = sub_220DBEBA0();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v25 - v17;
  v19 = [objc_opt_self() kilometers];
  sub_220DBE130();

  sub_220DBE050();
  v21 = v20;
  (*(v14 + 8))(v18, v11);
  if (v21 >= 2.0)
  {
    v22 = 0;
  }

  else
  {
    sub_220DBEAC0();
    (*(v3 + 104))(v8, *MEMORY[0x277CE32B8], v0);
    v22 = sub_220CE6A64(v10, v8);
    v23 = *(v3 + 8);
    v23(v8, v0);
    v23(v10, v0);
  }

  return v22 & 1;
}

uint64_t sub_220CE6AAC(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_220CE6B84(a4, a5);
  sub_220DC0710();
  sub_220DC0710();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_220DC0CA0();
  }

  return v8 & 1;
}

uint64_t sub_220CE6B84(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL VisibilityHazeRule.isSatisfied(for:data:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &v25 - v6;
  v8 = sub_220DBEBA0();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - v17;
  sub_220DBEAC0();
  (*(v11 + 104))(v16, *MEMORY[0x277CE3298], v8);
  sub_220CE6E40();
  v19 = sub_220DC05B0();
  v20 = *(v11 + 8);
  v20(v16, v8);
  v20(v18, v8);
  if (v19)
  {
    return 1;
  }

  v22 = [objc_opt_self() kilometers];
  sub_220DBE130();

  sub_220DBE050();
  v24 = v23;
  (*(v3 + 8))(v7, v0);
  return v24 > 2.0 && v24 < 10.0;
}

unint64_t sub_220CE6E40()
{
  result = qword_280FA7750;
  if (!qword_280FA7750)
  {
    sub_220DBEBA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7750);
  }

  return result;
}

uint64_t VisibilitySmokeRule.isSatisfied(for:data:)()
{
  v0 = sub_220DBEBA0();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v25 - v17;
  v19 = [objc_opt_self() kilometers];
  sub_220DBE130();

  sub_220DBE050();
  v21 = v20;
  (*(v14 + 8))(v18, v11);
  sub_220DBEAC0();
  (*(v3 + 104))(v8, *MEMORY[0x277CE32C8], v0);
  v22 = sub_220CE6A64(v10, v8);
  v23 = *(v3 + 8);
  v23(v8, v0);
  v23(v10, v0);
  return v22 & (v21 < 10.0);
}

uint64_t VisibilityDustRule.isSatisfied(for:data:)()
{
  v0 = sub_220DBEBA0();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v25 - v17;
  v19 = [objc_opt_self() kilometers];
  sub_220DBE130();

  sub_220DBE050();
  v21 = v20;
  (*(v14 + 8))(v18, v11);
  sub_220DBEAC0();
  (*(v3 + 104))(v8, *MEMORY[0x277CE3220], v0);
  v22 = sub_220CE6A64(v10, v8);
  v23 = *(v3 + 8);
  v23(v8, v0);
  v23(v10, v0);
  return v22 & (v21 < 10.0);
}

uint64_t VisibilityFallbackRule.description(for:data:)()
{
  static VisibilityCondition.condition(for:)(&v1);
  switch(v1)
  {
    case 1:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      return sub_220DBE240();
    case 2:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 3:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      return sub_220DBE240();
    case 4:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 5:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    default:
      if (qword_280FA6600 == -1)
      {
        goto LABEL_13;
      }

LABEL_15:
      OUTLINED_FUNCTION_0_12();
      swift_once();
LABEL_13:
      OUTLINED_FUNCTION_1_19();
      return sub_220DBE240();
  }
}

uint64_t static VisibilityCondition.condition(for:)@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  v7 = objc_opt_self();
  v8 = [v7 miles];
  sub_220DBE130();

  sub_220DBE050();
  v10 = v9;
  v11 = *(v3 + 8);
  result = v11(v6, v2);
  v13 = round(v10);
  if (v13 >= 10.0)
  {
    v14 = 0;
  }

  else if (v13 <= 6.2)
  {
    v15 = [v7 meters];
    sub_220DBE130();

    sub_220DBE050();
    v17 = v16;
    result = v11(v6, v2);
    if (v17 <= 50.0)
    {
      v14 = 5;
    }

    else if (v17 <= 200.0)
    {
      v14 = 4;
    }

    else if (v17 <= 1000.0)
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {
    v14 = 1;
  }

  *a1 = v14;
  return result;
}

_BYTE *sub_220CE7848(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_220CE7858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = a3;
  v3 = sub_220DBEF70();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220DBE560();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220DBE8F0();
  v13 = sub_220DBE610();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_220DBE910();
  sub_220DBEF60();
  (*(v4 + 8))(v7, v3);
  sub_220DBEF60();
  v14 = sub_220DBEF40();
  v16 = v15;
  if (v14 == sub_220DBEF40() && v16 == v17)
  {

LABEL_8:
    v20 = 0;
    return v20 & 1;
  }

  v19 = sub_220DC0CA0();

  v20 = v19 ^ 1;
  return v20 & 1;
}

uint64_t sub_220CE7A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220DBE560();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_220DBE740();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_220CE7B24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_220DBE560();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_220DBE740();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_220CE7BC8(uint64_t a1, int a2)
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

uint64_t sub_220CE7BE8(uint64_t result, int a2, int a3)
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

uint64_t sub_220CE7C2C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_220CE7CC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95030, &qword_220DC17E0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220CE7EF8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_220CE7F78(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220CE80A8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_220CE8124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OverviewTableRowViewModel();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 28));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_220CE81D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OverviewTableRowViewModel();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220CE8278(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95358, &qword_220DC2300);
  OUTLINED_FUNCTION_6(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220CE82D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95358, &qword_220DC2300);
  OUTLINED_FUNCTION_6(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_220CE8384()
{
  v1 = v0[2];

  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_220CE83D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_220DBF8A0();
  sub_220CFF458();
  return swift_getWitnessTable();
}

uint64_t sub_220CE8434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF953C8, &unk_220DC2440);
  v7 = OUTLINED_FUNCTION_5(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = type metadata accessor for OverviewTableRowViewModel();
  v12 = OUTLINED_FUNCTION_5(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 36));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_220CE852C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF953C8, &unk_220DC2440);
  v9 = OUTLINED_FUNCTION_5(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for OverviewTableRowViewModel();
    result = OUTLINED_FUNCTION_5(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_220CE8620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF953F8, &qword_220DC2520);
  OUTLINED_FUNCTION_6(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_220CE8680()
{
  OUTLINED_FUNCTION_6_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF953F8, &qword_220DC2520);
  OUTLINED_FUNCTION_0_2(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_20();
  v5(v4);
  return v0;
}

uint64_t sub_220CE874C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_220CE87E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220CE886C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_220CE88B4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_220CE88F4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[17];

  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  return MEMORY[0x2821FE8E8](v0, 184, 7);
}

uint64_t sub_220CE8A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220DBF1D0();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_220DBE560();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_220CE8AF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_220DBF1D0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_220DBE560();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_220CE8C98(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_220DBE560();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_220CE8D20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_220DBE560();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220CE8DA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  OUTLINED_FUNCTION_7_5();
  sub_220DC0AE0();
  OUTLINED_FUNCTION_11_3();
  OUTLINED_FUNCTION_12_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_6();
  sub_220DC0030();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF957B8, &qword_220DC3078);
  OUTLINED_FUNCTION_7_5();
  sub_220DBF8A0();
  OUTLINED_FUNCTION_7_5();
  sub_220DC0AE0();
  sub_220D13EA0();
  sub_220DC00C0();
  OUTLINED_FUNCTION_5_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_6();
  sub_220DBF7A0();
  OUTLINED_FUNCTION_1_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_6();
  sub_220DC0030();
  sub_220DBF8A0();
  OUTLINED_FUNCTION_6_6();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_12_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_6();
  sub_220DC0050();
  OUTLINED_FUNCTION_3_9();
  return swift_getWitnessTable();
}

uint64_t sub_220CE8F54()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_220CE8F94()
{
  v1 = sub_220DBF780();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 80) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 32);

  v9 = *(v0 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_220CE9074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_11_0();
  v7 = type metadata accessor for PrecipitationTotalStringAmount(v6);
  v8 = OUTLINED_FUNCTION_5(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = v3;
  }

  else
  {
    v12 = type metadata accessor for PrecipitationTotalHeroStringTimeframe(0);
    v13 = OUTLINED_FUNCTION_5(v12);
    if (*(v14 + 84) != a2)
    {
      v16 = *(v3 + *(a3 + 28));
      if (v16 >= 2)
      {
        return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v10 = v13;
    v11 = v3 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v11, a2, v10);
}

uint64_t sub_220CE916C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_11_0();
  v9 = type metadata accessor for PrecipitationTotalStringAmount(v8);
  v10 = OUTLINED_FUNCTION_5(v9);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = v4;
  }

  else
  {
    v14 = type metadata accessor for PrecipitationTotalHeroStringTimeframe(0);
    result = OUTLINED_FUNCTION_5(v14);
    if (*(v16 + 84) != a3)
    {
      *(v4 + *(a4 + 28)) = a2 + 1;
      return result;
    }

    v12 = result;
    v13 = v4 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v13, a2, a2, v12);
}

uint64_t sub_220CE9250(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_0();
  v4 = sub_220DBE560();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, a2, v4);
  if (EnumTagSinglePayload >= 4)
  {
    return EnumTagSinglePayload - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220CE9294(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_220DBE560();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_220CE935C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220CE93A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PrecipitationPlatterPrecipitationKind();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_220CE9510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_2_9();
  v7 = type metadata accessor for ChartLineStrokeStyle(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v9 = *(v3 + *(a3 + 28));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_220CE95B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChartLineStrokeStyle(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220CE9660(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_220DBEAD0();
  v7 = OUTLINED_FUNCTION_5(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
    v12 = OUTLINED_FUNCTION_5(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
      v16 = OUTLINED_FUNCTION_5(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v9 = sub_220DBE740();
        v14 = a3[7];
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220CE9790(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_220DBEAD0();
  v9 = OUTLINED_FUNCTION_5(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
    v14 = OUTLINED_FUNCTION_5(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95270, &unk_220DC3AF0);
      v18 = OUTLINED_FUNCTION_5(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v11 = sub_220DBE740();
        v16 = a4[7];
      }
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_220CE9908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationPlatterPrecipitationKind();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220CE9950(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PrecipitationPlatterPrecipitationKind();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_220CE9EB8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_220CE9FB8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_220CE9FF8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_220CEA030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220DBE560();
  v7 = OUTLINED_FUNCTION_5(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = sub_220DBE740();
  v12 = OUTLINED_FUNCTION_5(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_220CEA11C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_220DBE560();
  v9 = OUTLINED_FUNCTION_5(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_220DBE740();
    result = OUTLINED_FUNCTION_5(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_220CEA2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220DBF1D0();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_220DBE560();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_220CEA388(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_220DBF1D0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_220DBE560();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_220CEA498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220DBF370();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_220CEA548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_220DBF370();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220CEA6C4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_220CEA6FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_220DC04D0();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_220CEA784(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_220DC04D0();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_220CEA87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_0();
  v6 = sub_220DBEC20();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    if (a2 == 253)
    {
      v9 = *(v3 + *(a3 + 20) + 8);
      if (v9 > 2)
      {
        return (v9 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = sub_220DBE560();
    v8 = v3 + *(a3 + 24);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_220CEA944(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_11_0();
  result = sub_220DBEC20();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v4;
  }

  else
  {
    if (a3 == 253)
    {
      *(v4 + *(a4 + 20) + 8) = -a2;
      return result;
    }

    v9 = sub_220DBE560();
    v10 = v4 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_220CEAB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_220DBE560();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_220CEABB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_220DBE560();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_220CEAC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SunriseSunsetDetailChartViewModel(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_220CEAD04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_11_0();
  result = type metadata accessor for SunriseSunsetDetailChartViewModel(v8);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220CEAE2C(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_19(*a1);
  }

  v7 = type metadata accessor for DetailChartDataElement(0);
  v8 = OUTLINED_FUNCTION_5(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a3[5];
  }

  else
  {
    v12 = sub_220DBF1D0();
    v13 = OUTLINED_FUNCTION_5(v12);
    if (*(v14 + 84) == a2)
    {
      v10 = v13;
      v11 = a3[6];
    }

    else
    {
      v10 = sub_220DBE560();
      v11 = a3[10];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
}

void *sub_220CEAF28(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for DetailChartDataElement(0);
    v9 = OUTLINED_FUNCTION_5(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[5];
    }

    else
    {
      v13 = sub_220DBF1D0();
      v14 = OUTLINED_FUNCTION_5(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[6];
      }

      else
      {
        v11 = sub_220DBE560();
        v12 = a4[10];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_220CEB02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220DBE560();
  v7 = OUTLINED_FUNCTION_5(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    if (a2 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_7_19(*(a1 + *(a3 + 20) + 8));
    }

    v9 = type metadata accessor for DetailChartDataElement(0);
    v10 = a1 + *(a3 + 28);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_220CEB0F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_220DBE560();
  result = OUTLINED_FUNCTION_5(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v11 = type metadata accessor for DetailChartDataElement(0);
    v12 = a1 + *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_220CEB1BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_220DBE960();
  v7 = OUTLINED_FUNCTION_5(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_6:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
  v12 = OUTLINED_FUNCTION_5(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_5:
    v10 = a1 + v14;
    goto LABEL_6;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v17 = sub_220DBEAD0();
    v18 = OUTLINED_FUNCTION_5(v17);
    if (*(v19 + 84) == a2)
    {
      v9 = v18;
      v14 = a3[8];
    }

    else
    {
      v9 = sub_220DBE740();
      v14 = a3[9];
    }

    goto LABEL_5;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}