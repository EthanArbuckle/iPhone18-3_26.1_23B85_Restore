uint64_t sub_1B9481008(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3188(&qword_1EBACEAA8, type metadata accessor for Searchfoundation_Color);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9481088(uint64_t a1)
{
  v2 = sub_1B8CD3188(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94810F8()
{
  sub_1B8CD3188(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);

  return sub_1B964C5D0();
}

uint64_t sub_1B9481284(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3188(&qword_1EBACEAA0, type metadata accessor for Searchfoundation_CalendarColor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9481304(uint64_t a1)
{
  v2 = sub_1B8CD3188(&qword_1EBACEA20, type metadata accessor for Searchfoundation_CalendarColor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9481374()
{
  sub_1B8CD3188(&qword_1EBACEA20, type metadata accessor for Searchfoundation_CalendarColor);

  return sub_1B964C5D0();
}

uint64_t sub_1B948148C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_614();
  v8 = *v5;
  v9 = v5[1];
  OUTLINED_FUNCTION_1();
  if (!v10 || (result = sub_1B964C700(), !v4))
  {
    v12 = v6 + *(a4(0) + 20);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B94815AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3188(&qword_1EBACEA98, type metadata accessor for Searchfoundation_AppColor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B948162C(uint64_t a1)
{
  v2 = sub_1B8CD3188(&qword_1EBACEA38, type metadata accessor for Searchfoundation_AppColor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B948169C()
{
  sub_1B8CD3188(&qword_1EBACEA38, type metadata accessor for Searchfoundation_AppColor);

  return sub_1B964C5D0();
}

uint64_t Searchfoundation_ImageDerivedColor.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B94817BC();
    }
  }

  return result;
}

uint64_t sub_1B94817BC()
{
  v0 = *(type metadata accessor for Searchfoundation_ImageDerivedColor(0) + 20);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3188(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  return sub_1B964C580();
}

uint64_t Searchfoundation_ImageDerivedColor.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for Searchfoundation_Image(0);
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v15 = *(type metadata accessor for Searchfoundation_ImageDerivedColor(0) + 20);
  v18 = v3;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    OUTLINED_FUNCTION_6_36();
    sub_1B947C474();
    sub_1B8CD3188(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
    sub_1B964C740();
    OUTLINED_FUNCTION_30_28();
    result = sub_1B947C524();
    if (v4)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

uint64_t sub_1B9481AE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3188(&qword_1EBACEA90, type metadata accessor for Searchfoundation_ImageDerivedColor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9481B64(uint64_t a1)
{
  v2 = sub_1B8CD3188(&qword_1EBACEA50, type metadata accessor for Searchfoundation_ImageDerivedColor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9481BD4()
{
  sub_1B8CD3188(&qword_1EBACEA50, type metadata accessor for Searchfoundation_ImageDerivedColor);

  return sub_1B964C5D0();
}

uint64_t sub_1B9481C6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACE960);
  __swift_project_value_buffer(v0, qword_1EBACE960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "colors";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gradientType";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_GradientColor.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9481F5C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9481EBC();
    }
  }

  return result;
}

uint64_t sub_1B9481EBC()
{
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3188(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  return sub_1B964C570();
}

uint64_t Searchfoundation_GradientColor.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Searchfoundation_Color(0), sub_1B8CD3188(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(v2 + 8) || (v5 = *(v2 + 8), v6 = *(v2 + 16), sub_1B9482EB4(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      v4 = v2 + *(type metadata accessor for Searchfoundation_GradientColor(0) + 24);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t sub_1B9482178(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3188(&qword_1EBACEA88, type metadata accessor for Searchfoundation_GradientColor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94821F8(uint64_t a1)
{
  v2 = sub_1B8CD3188(&qword_1EBACEA68, type metadata accessor for Searchfoundation_GradientColor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9482268()
{
  sub_1B8CD3188(&qword_1EBACEA68, type metadata accessor for Searchfoundation_GradientColor);

  return sub_1B964C5D0();
}

uint64_t sub_1B9482300()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5238);
  __swift_project_value_buffer(v0, qword_1EBAB5238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "condition";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "location";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "date";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "cloudCover";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "cloudCoverLowAltPct";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "cloudCoverMidAltPct";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "cloudCoverHighAltPct";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Searchfoundation_WeatherColor.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B94826D8();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B948278C();
        break;
      case 4:
      case 5:
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B94826D8()
{
  v0 = *(type metadata accessor for Searchfoundation_WeatherColor(0) + 40);
  type metadata accessor for Searchfoundation_LatLng(0);
  sub_1B8CD3188(&qword_1ED9D3070, type metadata accessor for Searchfoundation_LatLng);
  return sub_1B964C580();
}

uint64_t sub_1B948278C()
{
  v0 = *(type metadata accessor for Searchfoundation_WeatherColor(0) + 44);
  type metadata accessor for Searchfoundation_Date(0);
  sub_1B8CD3188(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
  return sub_1B964C580();
}

uint64_t Searchfoundation_WeatherColor.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v30 - v6;
  v31 = type metadata accessor for Searchfoundation_Date(0);
  v8 = OUTLINED_FUNCTION_59_1(v31);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  v30[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v30 - v16;
  v18 = type metadata accessor for Searchfoundation_LatLng(0);
  v19 = OUTLINED_FUNCTION_59_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v22 = *v0;
  v23 = *(v0 + 1);
  OUTLINED_FUNCTION_1();
  if (!v24 || (result = sub_1B964C700(), !v1))
  {
    v30[0] = type metadata accessor for Searchfoundation_WeatherColor(0);
    v26 = *(v30[0] + 40);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
    {
      sub_1B8D9207C(v17, &qword_1EBACAFA0, &unk_1B96CB440);
    }

    else
    {
      OUTLINED_FUNCTION_4_49();
      sub_1B947C474();
      sub_1B8CD3188(&qword_1ED9D3070, type metadata accessor for Searchfoundation_LatLng);
      sub_1B964C740();
      OUTLINED_FUNCTION_5_38();
      result = sub_1B947C524();
      if (v1)
      {
        return result;
      }
    }

    v27 = v30[0];
    v28 = *(v30[0] + 44);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v7, 1, v31) == 1)
    {
      sub_1B8D9207C(v7, &qword_1EBAB8E30, &qword_1B964D630);
    }

    else
    {
      OUTLINED_FUNCTION_3_61();
      sub_1B947C474();
      sub_1B8CD3188(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);
      sub_1B964C740();
      OUTLINED_FUNCTION_28_21();
      result = sub_1B947C524();
      if (v1)
      {
        return result;
      }
    }

    if (v0[2] == 0.0 || (result = OUTLINED_FUNCTION_93_9(), !v1))
    {
      if (v0[3] == 0.0 || (result = OUTLINED_FUNCTION_93_9(), !v1))
      {
        if (v0[4] == 0.0 || (result = OUTLINED_FUNCTION_93_9(), !v1))
        {
          if (v0[5] == 0.0 || (result = OUTLINED_FUNCTION_93_9(), !v1))
          {
            v29 = v0 + *(v27 + 36);
            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B9482C64(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD3188(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9482D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3188(&qword_1EBACEA80, type metadata accessor for Searchfoundation_WeatherColor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9482DC4(uint64_t a1)
{
  v2 = sub_1B8CD3188(&qword_1ED9CC3A8, type metadata accessor for Searchfoundation_WeatherColor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9482E34()
{
  sub_1B8CD3188(&qword_1ED9CC3A8, type metadata accessor for Searchfoundation_WeatherColor);

  return sub_1B964C5D0();
}

unint64_t sub_1B9482EB4()
{
  result = qword_1EBACE9A8;
  if (!qword_1EBACE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACE9A8);
  }

  return result;
}

unint64_t sub_1B9482F0C()
{
  result = qword_1EBACE9C0;
  if (!qword_1EBACE9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACE9C0);
  }

  return result;
}

unint64_t sub_1B9482F64()
{
  result = qword_1EBACE9C8;
  if (!qword_1EBACE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACE9C8);
  }

  return result;
}

unint64_t sub_1B9482FBC()
{
  result = qword_1EBACE9D0;
  if (!qword_1EBACE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACE9D0);
  }

  return result;
}

unint64_t sub_1B9483044()
{
  result = qword_1EBACE9E8;
  if (!qword_1EBACE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACE9E8);
  }

  return result;
}

unint64_t sub_1B948309C()
{
  result = qword_1EBACE9F0;
  if (!qword_1EBACE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACE9F0);
  }

  return result;
}

unint64_t sub_1B94830F4()
{
  result = qword_1EBACE9F8;
  if (!qword_1EBACE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACE9F8);
  }

  return result;
}

uint64_t sub_1B9483880()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_Color._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B9483904()
{
  result = type metadata accessor for Searchfoundation_CalendarColor(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_AppColor(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Searchfoundation_ImageDerivedColor(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Searchfoundation_GradientColor(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Searchfoundation_WeatherColor(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void __swift_store_extra_inhabitant_index_61Tm()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_1B9483A9C()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9483C34(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9483B78()
{
  sub_1B9483C34(319, &qword_1ED9C8FA0, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B9483C34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9483CC0()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9483C34(319, &qword_1ED9F9720, type metadata accessor for Searchfoundation_LatLng, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B9483C34(319, &qword_1ED9F9798, type metadata accessor for Searchfoundation_Date, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9483DE8()
{
  sub_1B9483C34(319, &qword_1ED9F8FC0, type metadata accessor for Searchfoundation_GraphicalFloat, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B9483C34(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B9483C34(319, &qword_1ED9E5908, type metadata accessor for Searchfoundation_Color.OneOf_Value, MEMORY[0x1E69E6720]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1B9483F8C()
{
  result = qword_1EBACEAB0;
  if (!qword_1EBACEAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACEAB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_26()
{
  result = type metadata accessor for Searchfoundation_Color(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_21_24()
{
  result = type metadata accessor for Searchfoundation_Color(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_32_20(uint64_t a1)
{
  result = type metadata accessor for Searchfoundation_Color(a1);
  v3 = *(v1 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_41_21()
{
  v0 = type metadata accessor for Searchfoundation_Color._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_84_9()
{
  *v0 = 0;
  v3 = v0 + *(v1 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_93_9()
{

  return sub_1B964C6F0();
}

uint64_t OUTLINED_FUNCTION_108_8(uint64_t a1)
{
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v3 = v1 + *(a1 + 36);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_113_11()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_119_6@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v2 = v1 + *(type metadata accessor for Searchfoundation_GradientColor(0) + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_126_4()
{

  return type metadata accessor for Searchfoundation_Color(0);
}

uint64_t sub_1B94843F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9485B48();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_CoreSpotlightResultQueryRecency.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B94844E0@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_CoreSpotlightResultQueryRecency.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9484548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9485B9C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_EmbeddingStatusType.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B9484638@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_EmbeddingStatusType.allCases.getter();
  *a1 = result;
  return result;
}

void Searchfoundation_CoreSpotlightRankingSignals.resultQueryRecency.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_CoreSpotlightRankingSignals.resultQueryRecency.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

void Searchfoundation_CoreSpotlightRankingSignals.embeddingStatus.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Searchfoundation_CoreSpotlightRankingSignals.embeddingStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_CoreSpotlightRankingSignals.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals() + 80);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals()
{
  result = qword_1EBACEBC0;
  if (!qword_1EBACEBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_CoreSpotlightRankingSignals.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals() + 80);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Searchfoundation_CoreSpotlightRankingSignals.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 1;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 76) = 0;
  v1 = a1 + *(type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals() + 80);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9484B7C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEAF8);
  __swift_project_value_buffer(v0, qword_1EBACEAF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B964EE80;
  v4 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v4 = "CoreSpotlightResultQueryRecencyUnknown";
  *(v4 + 8) = 38;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v24 + v3 + v2 + v1[14];
  *(v24 + v3 + v2) = 1;
  *v8 = "CoreSpotlightResultQueryRecencyLastDay";
  *(v8 + 8) = 38;
  *(v8 + 16) = 2;
  v7();
  v9 = (v24 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "CoreSpotlightResultQueryRecencyLast3Days";
  *(v10 + 1) = 40;
  v10[16] = 2;
  v7();
  v11 = (v24 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CoreSpotlightResultQueryRecencyLastWeek";
  *(v12 + 1) = 39;
  v12[16] = 2;
  v7();
  v13 = (v24 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CoreSpotlightResultQueryRecencyLastMonth";
  *(v14 + 1) = 40;
  v14[16] = 2;
  v7();
  v15 = (v24 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "CoreSpotlightResultQueryRecencyLast3Months";
  *(v16 + 1) = 42;
  v16[16] = 2;
  v7();
  v17 = (v24 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "CoreSpotlightResultQueryRecencyLastYear";
  *(v18 + 1) = 39;
  v18[16] = 2;
  v7();
  v19 = (v24 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "CoreSpotlightResultQueryRecencyLast18Months";
  *(v20 + 1) = 43;
  v20[16] = 2;
  v7();
  v21 = (v24 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "CoreSpotlightResultQueryRecencyBefore18Months";
  *(v22 + 1) = 45;
  v22[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B9484F10()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEB10);
  __swift_project_value_buffer(v0, qword_1EBACEB10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "EmbeddingStatusTypeNoEmbedding";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "EmbeddingStatusTypeNonPurgeableEmbedding";
  *(v10 + 1) = 40;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EmbeddingStatusTypePurgeableEmbedding";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9485158()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEB28);
  __swift_project_value_buffer(v0, qword_1EBACEB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B96594C0;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "topicalityScore";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "freshness";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "engagementScore";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "predictedLikelihoodOfEngagement";
  *(v13 + 1) = 31;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "wasNominatedAsTopHit";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sodiumL2Score";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "isExactMatchOfLaunchString";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "wasEngagedInSpotlight";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "resultQueryRecency";
  *(v23 + 1) = 18;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "pommesL2Score";
  *(v25 + 1) = 13;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "isSemanticMatch";
  *(v27 + 1) = 15;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "semanticScore";
  *(v29 + 1) = 13;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "isSyntacticMatch";
  *(v31 + 1) = 16;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "syntacticScore";
  *(v33 + 1) = 14;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "embeddingStatus";
  *(v35 + 1) = 15;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "itemAgeInDays";
  *(v37 + 1) = 13;
  v37[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Searchfoundation_CoreSpotlightRankingSignals.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 6:
      case 10:
      case 12:
      case 14:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 5:
      case 7:
      case 8:
      case 11:
      case 13:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 9:
        OUTLINED_FUNCTION_288();
        sub_1B94857C8();
        break;
      case 15:
        OUTLINED_FUNCTION_288();
        sub_1B9485830();
        break;
      case 16:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_CoreSpotlightRankingSignals.traverse<A>(visitor:)()
{
  if (*v0 == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
  {
    if (*(v0 + 4) == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
    {
      if (*(v0 + 8) == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
      {
        if (*(v0 + 12) == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
        {
          if (*(v0 + 16) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
          {
            if (*(v0 + 20) == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
            {
              if (*(v0 + 24) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
              {
                if (*(v0 + 25) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
                {
                  if (!*(v0 + 32) || (v4 = *(v0 + 32), v6 = *(v0 + 40), sub_1B9485B48(), result = OUTLINED_FUNCTION_3_31(), !v1))
                  {
                    if (*(v0 + 44) == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
                    {
                      if (*(v0 + 48) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
                      {
                        if (*(v0 + 52) == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
                        {
                          if (*(v0 + 56) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
                          {
                            if (*(v0 + 60) == 0.0 || (result = OUTLINED_FUNCTION_23_3(), !v1))
                            {
                              if (!*(v0 + 64) || (v5 = *(v0 + 64), v7 = *(v0 + 72), sub_1B9485B9C(), result = OUTLINED_FUNCTION_3_31(), !v1))
                              {
                                if (!*(v0 + 76) || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
                                {
                                  v3 = v0 + *(type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals() + 80);
                                  OUTLINED_FUNCTION_12();
                                  return sub_1B964C290();
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
      }
    }
  }

  return result;
}

unint64_t sub_1B9485B48()
{
  result = qword_1EBACEB40;
  if (!qword_1EBACEB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACEB40);
  }

  return result;
}

unint64_t sub_1B9485B9C()
{
  result = qword_1EBACEB48;
  if (!qword_1EBACEB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACEB48);
  }

  return result;
}

uint64_t static Searchfoundation_CoreSpotlightRankingSignals.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 25) != *(a2 + 25))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  if (!sub_1B8D92198(*(a1 + 32), *(a1 + 40), *(a2 + 32)))
  {
    return 0;
  }

  if (*(a1 + 44) != *(a2 + 44))
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  if (*(a1 + 52) != *(a2 + 52))
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  if (*(a1 + 60) != *(a2 + 60))
  {
    return 0;
  }

  v5 = *(a2 + 72);
  if (!sub_1B8D92198(*(a1 + 64), *(a1 + 72), *(a2 + 64)) || *(a1 + 76) != *(a2 + 76))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals() + 80);
  sub_1B964C2B0();
  sub_1B8CD31D0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Searchfoundation_CoreSpotlightRankingSignals.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals();
  sub_1B8CD31D0(&qword_1EBACEB50, type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9485E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD31D0(&qword_1EBACEBD0, type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9485F00(uint64_t a1)
{
  v2 = sub_1B8CD31D0(&qword_1EBACEBB0, type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9485F70()
{
  sub_1B8CD31D0(&qword_1EBACEBB0, type metadata accessor for Searchfoundation_CoreSpotlightRankingSignals);

  return sub_1B964C5D0();
}

unint64_t sub_1B9485FF0()
{
  result = qword_1EBACEB58;
  if (!qword_1EBACEB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACEB58);
  }

  return result;
}

unint64_t sub_1B9486048()
{
  result = qword_1EBACEB60;
  if (!qword_1EBACEB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACEB60);
  }

  return result;
}

unint64_t sub_1B94860A0()
{
  result = qword_1EBACEB68;
  if (!qword_1EBACEB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACEB68);
  }

  return result;
}

unint64_t sub_1B9486128()
{
  result = qword_1EBACEB80;
  if (!qword_1EBACEB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACEB80);
  }

  return result;
}

unint64_t sub_1B9486180()
{
  result = qword_1EBACEB88;
  if (!qword_1EBACEB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACEB88);
  }

  return result;
}

unint64_t sub_1B94861D8()
{
  result = qword_1EBACEB90;
  if (!qword_1EBACEB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACEB90);
  }

  return result;
}

uint64_t sub_1B94863C8()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Searchfoundation_Date.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Searchfoundation_Date(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_TimeZone.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Searchfoundation_TimeZone(0) + 20);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_TimeZone.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Searchfoundation_TimeZone.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1B9486694@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_59_1(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1B9486728(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t Searchfoundation_Date.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B964C510();
    }
  }

  return result;
}

uint64_t Searchfoundation_Date.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v1 == 0.0 || (result = sub_1B964C6F0(), !v0))
  {
    v2 = type metadata accessor for Searchfoundation_Date(0);
    return OUTLINED_FUNCTION_2_7(v2);
  }

  return result;
}

uint64_t static Searchfoundation_Date.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Searchfoundation_Date(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_87();
  sub_1B8CD3218(v3, v4);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9486A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3218(&qword_1EBACEC20, type metadata accessor for Searchfoundation_Date);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9486AB8(uint64_t a1)
{
  v2 = sub_1B8CD3218(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9486B28()
{
  sub_1B8CD3218(qword_1ED9CD460, type metadata accessor for Searchfoundation_Date);

  return sub_1B964C5D0();
}

uint64_t sub_1B9486BDC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B964D050;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v14 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1(v14);
  (*(v15 + 104))(v12, v13);
  return sub_1B964C760();
}

uint64_t Searchfoundation_TimeZone.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Searchfoundation_TimeZone.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v2 = *v1;
  v3 = v1[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1B964C700(), !v0))
  {
    v6 = type metadata accessor for Searchfoundation_TimeZone(0);
    return OUTLINED_FUNCTION_2_7(v6);
  }

  return result;
}

uint64_t static Searchfoundation_TimeZone.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Searchfoundation_TimeZone(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_87();
  sub_1B8CD3218(v4, v5);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B9486F1C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD3218(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9487000(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3218(&qword_1EBACEC18, type metadata accessor for Searchfoundation_TimeZone);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9487080(uint64_t a1)
{
  v2 = sub_1B8CD3218(&qword_1EBACCA00, type metadata accessor for Searchfoundation_TimeZone);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94870F0()
{
  sub_1B8CD3218(&qword_1EBACCA00, type metadata accessor for Searchfoundation_TimeZone);

  return sub_1B964C5D0();
}

uint64_t Searchfoundation_DescriptionCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Searchfoundation_DescriptionCardSection(0) + 20);
  if (qword_1EBAB8390 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBACEC40;
}

uint64_t Searchfoundation_DescriptionCardSection.punchoutOptions.getter()
{
  OUTLINED_FUNCTION_5_39();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 16);
}

uint64_t sub_1B94874FC(uint64_t *a1)
{
  v1 = *a1;

  return Searchfoundation_DescriptionCardSection.punchoutOptions.setter(v2);
}

uint64_t Searchfoundation_DescriptionCardSection.punchoutOptions.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_41_22();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B948B190(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 16);
  *(v5 + 16) = a1;
}

uint64_t Searchfoundation_DescriptionCardSection.punchoutOptions.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_5_39();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v4 + 16);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9487604(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 48);
  if (v4)
  {
    v5 = *(v1 + 56);

    Searchfoundation_DescriptionCardSection.punchoutOptions.setter(v6);
    v7 = *(v1 + 48);
  }

  else
  {
    v8 = *(v1 + 64);
    v9 = *(v1 + 56);
    v10 = *(v9 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v1 + 64);
      v14 = *(v1 + 56);
      OUTLINED_FUNCTION_7_40();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B948B190(v15);
      *(v14 + v13) = v12;
    }

    OUTLINED_FUNCTION_59_3();
    v16 = *(v12 + 16);
    *(v12 + 16) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_DescriptionCardSection.punchoutPickerTitle.getter()
{
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

void sub_1B94876F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_DescriptionCardSection.punchoutPickerTitle.setter();
}

void Searchfoundation_DescriptionCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_16_29();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B948B190(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 32);
  *(v5 + 24) = v2;
  *(v5 + 32) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_DescriptionCardSection.punchoutPickerTitle.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_74(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 32);
  *(v1 + 48) = *(v5 + 24);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B94877FC(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_DescriptionCardSection.punchoutPickerTitle.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_7_40();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B948B190(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 32);
    *(v9 + 24) = v4;
    *(v9 + 32) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_DescriptionCardSection.punchoutPickerDismissText.getter()
{
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_432();
}

void sub_1B94878D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_DescriptionCardSection.punchoutPickerDismissText.setter();
}

void Searchfoundation_DescriptionCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_16_29();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B948B190(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 48);
  *(v5 + 40) = v2;
  *(v5 + 48) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_DescriptionCardSection.punchoutPickerDismissText.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_74(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 48);
  *(v1 + 48) = *(v5 + 40);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B94879DC(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_DescriptionCardSection.punchoutPickerDismissText.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_7_40();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B948B190(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 48);
    *(v9 + 40) = v4;
    *(v9 + 48) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_DescriptionCardSection.canBeHidden.getter()
{
  OUTLINED_FUNCTION_5_39();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 56);
}

uint64_t Searchfoundation_DescriptionCardSection.canBeHidden.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_41_22();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B948B190(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 56) = a1 & 1;
  return result;
}

uint64_t Searchfoundation_DescriptionCardSection.canBeHidden.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_62(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9487B68(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_7_40();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B948B190(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 56) = v3;

  free(v1);
}

uint64_t Searchfoundation_DescriptionCardSection.hasTopPadding_p.getter()
{
  OUTLINED_FUNCTION_5_39();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 57);
}

uint64_t Searchfoundation_DescriptionCardSection.hasTopPadding_p.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_41_22();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B948B190(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 57) = a1 & 1;
  return result;
}

uint64_t Searchfoundation_DescriptionCardSection.hasTopPadding_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_62(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 57);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9487CE0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_7_40();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B948B190(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 57) = v3;

  free(v1);
}

uint64_t Searchfoundation_DescriptionCardSection.hasBottomPadding_p.getter()
{
  OUTLINED_FUNCTION_5_39();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 58);
}

uint64_t Searchfoundation_DescriptionCardSection.hasBottomPadding_p.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_41_22();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B948B190(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 58) = a1 & 1;
  return result;
}

uint64_t Searchfoundation_DescriptionCardSection.hasBottomPadding_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_62(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 58);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9487E58(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_7_40();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B948B190(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 58) = v3;

  free(v1);
}

uint64_t Searchfoundation_DescriptionCardSection.type.getter()
{
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9487F18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_DescriptionCardSection.type.setter();
}

void Searchfoundation_DescriptionCardSection.type.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_16_29();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B948B190(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 72);
  *(v5 + 64) = v2;
  *(v5 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_DescriptionCardSection.type.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_74(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 72);
  *(v1 + 48) = *(v5 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9488024(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_DescriptionCardSection.type.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_7_40();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B948B190(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 72);
    *(v9 + 64) = v4;
    *(v9 + 72) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_DescriptionCardSection.separatorStyle.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_4_50();
  result = OUTLINED_FUNCTION_10_4();
  v4 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v4;
  return result;
}

void Searchfoundation_DescriptionCardSection.separatorStyle.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_16_29();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B948B190(v8);
    *(v2 + v1) = v7;
  }

  OUTLINED_FUNCTION_9_3();
  *(v7 + 80) = v4;
  *(v7 + 88) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_DescriptionCardSection.separatorStyle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_5_39();
  OUTLINED_FUNCTION_222_1(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 88);
  *(v1 + 72) = *(v0 + 80);
  *(v1 + 80) = v4;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94881D8()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_238(v1);
  v3 = *(v2 + 72);
  v4 = *(v0 + 84);
  v5 = *(v0 + 88);
  v6 = *(v0 + 80);
  v7 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v0 + 84);
    v11 = *(v0 + 88);
    OUTLINED_FUNCTION_7_40();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = sub_1B948B190(v12);
    OUTLINED_FUNCTION_73_2(v13);
  }

  OUTLINED_FUNCTION_11_4();
  *(v9 + 80) = v3;
  *(v9 + 88) = v6;
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Searchfoundation_DescriptionCardSection.backgroundColor.getter@<X0>(int a1@<W8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = *(v8 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v7, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_39();
    return OUTLINED_FUNCTION_78_8();
  }

  return result;
}

uint64_t Searchfoundation_DescriptionCardSection.backgroundColor.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_16_29();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B948B190(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_8_39();
  OUTLINED_FUNCTION_65_10();
  v10 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_DescriptionCardSection.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Color(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v8 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    *&v12[v14] = qword_1ED9CD1C8;
    v15 = OUTLINED_FUNCTION_50_1();

    if (v15 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_39();
    OUTLINED_FUNCTION_66_8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B9488648(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_DescriptionCardSection.title.setter();
}

uint64_t Searchfoundation_DescriptionCardSection.title.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_74(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B9488728(void *a1)
{
  OUTLINED_FUNCTION_5_39();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_521();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

void sub_1B9488780(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_DescriptionCardSection.subtitle.setter();
}

void sub_1B94887CC()
{
  OUTLINED_FUNCTION_193_0();
  v4 = v3;
  v5 = v1;
  OUTLINED_FUNCTION_16();
  v6 = *(type metadata accessor for Searchfoundation_DescriptionCardSection(0) + 20);
  v7 = *(v1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v10 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B948B190(v10);
    *(v5 + v6) = v9;
  }

  v11 = (v9 + *v4);
  OUTLINED_FUNCTION_18();
  v12 = v11[1];
  *v11 = v2;
  v11[1] = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_DescriptionCardSection.subtitle.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_74(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_DescriptionCardSection.descriptionText.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_Text();
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    v10 = a1 + *(v8 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v7, &qword_1EBAB8E40, &unk_1B964D640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_36();
    return OUTLINED_FUNCTION_78_8();
  }

  return result;
}

uint64_t sub_1B94889D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B948F92C();
  return a7(v13);
}

uint64_t Searchfoundation_DescriptionCardSection.descriptionText.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_16_29();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B948B190(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_65_10();
  v10 = type metadata accessor for Searchfoundation_Text();
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_DescriptionCardSection.descriptionText.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_71(v6);
  v7 = type metadata accessor for Searchfoundation_Text();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    *(v11 + 4) = 0;
    v13 = v11 + *(v7 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E40, &unk_1B964D640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_36();
    OUTLINED_FUNCTION_66_8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

BOOL sub_1B9488CBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  OUTLINED_FUNCTION_4_50();
  v16 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v17 = a4(0);
  v18 = __swift_getEnumTagSinglePayload(v15, 1, v17) != 1;
  sub_1B8D9207C(v15, v5, v4);
  return v18;
}

void sub_1B9488DC0()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_16();
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = *(type metadata accessor for Searchfoundation_DescriptionCardSection(0) + 20);
  v15 = *(v0 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v0 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v18 = OUTLINED_FUNCTION_40_0();
    *(v5 + v14) = sub_1B948B190(v18);
  }

  v19 = v4(0);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v19);
  v20 = *v2;
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

void sub_1B9488EC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_DescriptionCardSection.expandText.setter();
}

uint64_t Searchfoundation_DescriptionCardSection.expandText.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_74(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_DescriptionCardSection.image.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_16_29();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B948B190(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_88();
  OUTLINED_FUNCTION_65_10();
  v10 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_DescriptionCardSection.image.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v8 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    *&v12[v14] = qword_1EBAB5608;
    v15 = OUTLINED_FUNCTION_50_1();

    if (v15 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_88();
    OUTLINED_FUNCTION_66_8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_DescriptionCardSection.titleNoWrap.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_62(v3);
  OUTLINED_FUNCTION_102_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_DescriptionCardSection.titleWeight.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_62(v3);
  OUTLINED_FUNCTION_222_1(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B9489378(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_50();
  v3 = *a1;
  OUTLINED_FUNCTION_10_4();
  return *(v1 + v3);
}

void sub_1B94893C0()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_16_29();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B948B190(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  *(v7 + v3) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_DescriptionCardSection.descriptionSize.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_62(v3);
  OUTLINED_FUNCTION_222_1(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9489494()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_238(v3);
  v5 = *(v4 + 80);
  v6 = *(v0 + 84);
  v7 = *(v0 + 72);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v0 + 84);
    v12 = *(v0 + 72);
    OUTLINED_FUNCTION_7_40();
    v13 = OUTLINED_FUNCTION_40_0();
    v14 = sub_1B948B190(v13);
    OUTLINED_FUNCTION_73_2(v14);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_11_4();
  *(v10 + v2) = v5;
  OUTLINED_FUNCTION_242();

  free(v15);
}

uint64_t Searchfoundation_DescriptionCardSection.descriptionWeight.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_62(v3);
  OUTLINED_FUNCTION_222_1(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B94895C8(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_50();
  v3 = *a1;
  OUTLINED_FUNCTION_10_4();
  return *(v1 + v3);
}

void sub_1B9489610()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_16_29();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B948B190(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  *(v7 + v3) = v5 & 1;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_DescriptionCardSection.descriptionExpand.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_62(v3);
  OUTLINED_FUNCTION_102_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94896E8()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 84);
  v7 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + 80);
    v11 = *(v3 + 72);
    OUTLINED_FUNCTION_7_40();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = sub_1B948B190(v12);
    OUTLINED_FUNCTION_73_2(v13);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_11_4();
  *(v9 + v1) = v6;
  OUTLINED_FUNCTION_242();

  free(v14);
}

uint64_t Searchfoundation_DescriptionCardSection.imageAlign.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_5_39();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B9489824@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_5_39();
  v6 = *(v2 + v5) + *a1;
  result = OUTLINED_FUNCTION_521();
  v8 = *(v6 + 8);
  *a2 = *v6;
  *(a2 + 8) = v8;
  return result;
}

void *sub_1B9489884@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1B94898CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

void sub_1B948991C()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v1;
  v3 = v0;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(type metadata accessor for Searchfoundation_DescriptionCardSection(0) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B948B190(v11);
    *(v3 + v7) = v10;
  }

  v12 = v10 + *v2;
  OUTLINED_FUNCTION_18();
  *v12 = v5;
  *(v12 + 8) = v6;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_DescriptionCardSection.textAlign.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_5_39();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9489A20()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_238(v3);
  v5 = *(v4 + 72);
  v6 = *(v0 + 84);
  v7 = *(v0 + 88);
  v8 = *(v0 + 80);
  v9 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v0 + 84);
    v13 = *(v0 + 88);
    OUTLINED_FUNCTION_7_40();
    v14 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B948B190(v14);
    *(v13 + v12) = v11;
  }

  v15 = v11 + *v2;
  OUTLINED_FUNCTION_18();
  *v15 = v5;
  *(v15 + 8) = v8;
  OUTLINED_FUNCTION_242();

  free(v16);
}

void sub_1B9489AE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_DescriptionCardSection.attributionText.setter();
}

uint64_t Searchfoundation_DescriptionCardSection.attributionText.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_74(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B9489BB4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v3);
  if (v6)
  {
    v7 = v5;
    OUTLINED_FUNCTION_191();
    v8 = OUTLINED_FUNCTION_461();
    v7(v8);
    v9 = *(v0 + 56);
  }

  else
  {
    v10 = v4;
    v11 = *(v0 + 72);
    v12 = *(v0 + 64);
    v13 = *(v12 + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = *(v0 + 72);
      v17 = *(v0 + 64);
      OUTLINED_FUNCTION_7_40();
      v18 = OUTLINED_FUNCTION_40_0();
      v19 = sub_1B948B190(v18);
      OUTLINED_FUNCTION_73_2(v19);
    }

    v20 = (v15 + *v10);
    OUTLINED_FUNCTION_18();
    v21 = v20[1];
    *v20 = v2;
    v20[1] = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v22);
}

uint64_t Searchfoundation_DescriptionCardSection.attributionURL.getter@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    v10 = a1 + *(v8 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v7, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_31();
    return OUTLINED_FUNCTION_78_8();
  }

  return result;
}

uint64_t Searchfoundation_DescriptionCardSection.attributionURL.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_16_29();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B948B190(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_31();
  OUTLINED_FUNCTION_65_10();
  v10 = type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_DescriptionCardSection.attributionURL.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_71(v6);
  v7 = type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v13 = v11 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_31();
    OUTLINED_FUNCTION_66_8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9489FE4@<X0>(int a1@<W8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_9_2();
  if (!v9)
  {
    return OUTLINED_FUNCTION_78_8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v10 = *(v8 + 20);
  if (qword_1EBAB5600 != -1)
  {
    OUTLINED_FUNCTION_150_5();
  }

  result = OUTLINED_FUNCTION_59_0();
  if (a1 != 1)
  {
    return sub_1B8D9207C(v7, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  return result;
}

uint64_t Searchfoundation_DescriptionCardSection.attributionGlyph.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_16_29();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B948B190(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_88();
  OUTLINED_FUNCTION_65_10();
  v10 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_DescriptionCardSection.attributionGlyph.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_4_50();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v8 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    *&v12[v14] = qword_1EBAB5608;
    v15 = OUTLINED_FUNCTION_50_1();

    if (v15 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_88();
    OUTLINED_FUNCTION_66_8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B948A364()
{
  OUTLINED_FUNCTION_243();
  v3 = v1;
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 24);
  v7 = *(*v0 + 32);
  if (v8)
  {
    v9 = v2;
    v10 = *(*v0 + 48);
    sub_1B948F92C();
    v3(v4);
    sub_1B948F984(v5, v9);
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v5);
  free(v4);
  free(v7);
  OUTLINED_FUNCTION_242();

  free(v11);
}

uint64_t Searchfoundation_DescriptionCardSection.richDescriptions.getter()
{
  OUTLINED_FUNCTION_5_39();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions;
  OUTLINED_FUNCTION_10_4();
  v4 = *(v2 + v3);
}

uint64_t sub_1B948A4B0(uint64_t *a1)
{
  v1 = *a1;

  return Searchfoundation_DescriptionCardSection.richDescriptions.setter(v2);
}

uint64_t Searchfoundation_DescriptionCardSection.richDescriptions.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_41_22();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_40();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B948B190(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  v8 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions;
  OUTLINED_FUNCTION_9_3();
  v9 = *(v5 + v8);
  *(v5 + v8) = a1;
}

uint64_t Searchfoundation_DescriptionCardSection.richDescriptions.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_5_39();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B948A5C8(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 48);
  if (v4)
  {
    v5 = *(v1 + 56);

    Searchfoundation_DescriptionCardSection.richDescriptions.setter(v6);
    v7 = *(v1 + 48);
  }

  else
  {
    v8 = *(v1 + 64);
    v9 = *(v1 + 56);
    v10 = *(v9 + v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v1 + 64);
      v14 = *(v1 + 56);
      OUTLINED_FUNCTION_7_40();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B948B190(v15);
      *(v14 + v13) = v12;
    }

    v16 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions;
    OUTLINED_FUNCTION_59_3();
    v17 = *(v12 + v16);
    *(v12 + v16) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_DescriptionCardSection.unknownFields.getter()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Searchfoundation_DescriptionCardSection.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1B964C2B0();
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t sub_1B948A774()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEC28);
  __swift_project_value_buffer(v0, qword_1EBACEC28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1B966D600;
  v4 = v56 + v3 + v1[14];
  *(v56 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v56 + v3 + v2 + v1[14];
  *(v56 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v56 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v56 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v56 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v56 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v56 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v56 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v56 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v56 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "title";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v56 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "subtitle";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v56 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 101;
  *v28 = "descriptionText";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v7();
  v29 = (v56 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 102;
  *v30 = "expandText";
  *(v30 + 1) = 10;
  v30[16] = 2;
  v7();
  v31 = (v56 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 103;
  *v32 = "image";
  *(v32 + 1) = 5;
  v32[16] = 2;
  v7();
  v33 = (v56 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 104;
  *v34 = "titleNoWrap";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v7();
  v35 = (v56 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 105;
  *v36 = "titleWeight";
  *(v36 + 1) = 11;
  v36[16] = 2;
  v7();
  v37 = (v56 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 106;
  *v38 = "descriptionSize";
  *(v38 + 1) = 15;
  v38[16] = 2;
  v7();
  v39 = (v56 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 107;
  *v40 = "descriptionWeight";
  *(v40 + 1) = 17;
  v40[16] = 2;
  v7();
  v41 = (v56 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 108;
  *v42 = "descriptionExpand";
  *(v42 + 1) = 17;
  v42[16] = 2;
  v7();
  v43 = (v56 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 109;
  *v44 = "imageAlign";
  *(v44 + 1) = 10;
  v44[16] = 2;
  v7();
  v45 = (v56 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 110;
  *v46 = "textAlign";
  *(v46 + 1) = 9;
  v46[16] = 2;
  v7();
  v47 = (v56 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 111;
  *v48 = "attributionText";
  *(v48 + 1) = 15;
  v48[16] = 2;
  v7();
  v49 = (v56 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 112;
  *v50 = "attributionURL";
  *(v50 + 1) = 14;
  v50[16] = 2;
  v7();
  v51 = (v56 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 113;
  *v52 = "attributionGlyph";
  *(v52 + 1) = 16;
  v52[16] = 2;
  v7();
  v53 = (v56 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 114;
  *v54 = "richDescriptions";
  *(v54 + 1) = 16;
  v54[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_DescriptionCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8388 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACEC28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B948AF80()
{
  OUTLINED_FUNCTION_7_40();
  result = sub_1B948AFD0();
  qword_1EBACEC40 = result;
  return result;
}

uint64_t sub_1B948AFD0()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v2 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__backgroundColor;
  v3 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__title);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__subtitle);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionText;
  v7 = type metadata accessor for Searchfoundation_Text();
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__expandText);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__image;
  v10 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand) = 0;
  v11 = v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__imageAlign;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__textAlign;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionText);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionURL;
  v15 = type metadata accessor for Searchfoundation_URL();
  __swift_storeEnumTagSinglePayload(v0 + v14, 1, 1, v15);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionGlyph, 1, 1, v10);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions) = v1;
  return v0;
}

uint64_t sub_1B948B190(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v106 = &v83 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v100 = &v83 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v94 = &v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v88 = &v83 - v14;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  v83 = (v1 + 58);
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  v84 = (v1 + 64);
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v85 = (v1 + 80);
  *(v1 + 88) = 1;
  v15 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__backgroundColor;
  v86 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__backgroundColor;
  v16 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v17 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__title);
  v87 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__title);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__subtitle);
  v89 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__subtitle);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionText;
  v90 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionText;
  v20 = type metadata accessor for Searchfoundation_Text();
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v21 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__expandText);
  v91 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__expandText);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__image;
  v92 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__image;
  v23 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v1 + v22, 1, 1, v23);
  v93 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap) = 0;
  v95 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight) = 0;
  v96 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize) = 0;
  v97 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight) = 0;
  v98 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand) = 0;
  v24 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__imageAlign;
  v99 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__imageAlign;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__textAlign;
  v101 = v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__textAlign;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionText);
  v102 = (v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionText);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v27 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionURL;
  v103 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionURL;
  v28 = type metadata accessor for Searchfoundation_URL();
  __swift_storeEnumTagSinglePayload(v1 + v27, 1, 1, v28);
  v104 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionGlyph;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionGlyph, 1, 1, v23);
  v105 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions) = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v29 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v29;
  swift_beginAccess();
  v31 = *(a1 + 24);
  v30 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v31;
  *(v1 + 32) = v30;

  swift_beginAccess();
  v33 = *(a1 + 40);
  v32 = *(a1 + 48);
  swift_beginAccess();
  v34 = *(v1 + 48);
  *(v1 + 40) = v33;
  *(v1 + 48) = v32;

  swift_beginAccess();
  LOBYTE(v32) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v32;
  swift_beginAccess();
  LOBYTE(v32) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v32;
  swift_beginAccess();
  LOBYTE(v32) = *(a1 + 58);
  v35 = v83;
  swift_beginAccess();
  *v35 = v32;
  swift_beginAccess();
  v37 = *(a1 + 64);
  v36 = *(a1 + 72);
  v38 = v84;
  swift_beginAccess();
  v39 = *(v1 + 72);
  *v38 = v37;
  *(v1 + 72) = v36;

  swift_beginAccess();
  v40 = *(a1 + 80);
  LOBYTE(v39) = *(a1 + 88);
  v41 = v85;
  swift_beginAccess();
  *v41 = v40;
  *(v1 + 88) = v39;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v42 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__title);
  swift_beginAccess();
  v44 = *v42;
  v43 = v42[1];
  v45 = v87;
  swift_beginAccess();
  v46 = v45[1];
  *v45 = v44;
  v45[1] = v43;

  v47 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__subtitle);
  swift_beginAccess();
  v49 = *v47;
  v48 = v47[1];
  v50 = v89;
  swift_beginAccess();
  v51 = v50[1];
  *v50 = v49;
  v50[1] = v48;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v52 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__expandText);
  swift_beginAccess();
  v54 = *v52;
  v53 = v52[1];
  v55 = v91;
  swift_beginAccess();
  v56 = v55[1];
  *v55 = v54;
  v55[1] = v53;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v57 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap;
  swift_beginAccess();
  LOBYTE(v57) = *(a1 + v57);
  v58 = v93;
  swift_beginAccess();
  *(v1 + v58) = v57;
  v59 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight;
  swift_beginAccess();
  LODWORD(v59) = *(a1 + v59);
  v60 = v95;
  swift_beginAccess();
  *(v1 + v60) = v59;
  v61 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize;
  swift_beginAccess();
  LODWORD(v61) = *(a1 + v61);
  v62 = v96;
  swift_beginAccess();
  *(v1 + v62) = v61;
  v63 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight;
  swift_beginAccess();
  LODWORD(v63) = *(a1 + v63);
  v64 = v97;
  swift_beginAccess();
  *(v1 + v64) = v63;
  v65 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand;
  swift_beginAccess();
  LOBYTE(v65) = *(a1 + v65);
  v66 = v98;
  swift_beginAccess();
  *(v1 + v66) = v65;
  v67 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__imageAlign);
  swift_beginAccess();
  v68 = *v67;
  LOBYTE(v67) = *(v67 + 8);
  v69 = v99;
  swift_beginAccess();
  *v69 = v68;
  *(v69 + 8) = v67;
  v70 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__textAlign);
  swift_beginAccess();
  v71 = *v70;
  LOBYTE(v70) = *(v70 + 8);
  v72 = v101;
  swift_beginAccess();
  *v72 = v71;
  *(v72 + 8) = v70;
  v73 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionText);
  swift_beginAccess();
  v75 = *v73;
  v74 = v73[1];
  v76 = v102;
  swift_beginAccess();
  v77 = v76[1];
  *v76 = v75;
  v76[1] = v74;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v78 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions;
  swift_beginAccess();
  v79 = *(a1 + v78);

  v80 = v105;
  swift_beginAccess();
  v81 = *(v1 + v80);
  *(v1 + v80) = v79;

  return v1;
}

void *sub_1B948BCB0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__title + 8);

  v6 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__subtitle + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionText, &qword_1EBAB8E40, &unk_1B964D640);
  v7 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__expandText + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__image, &qword_1EBAB8EA8, &unk_1B96B77D0);
  v8 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionText + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionURL, &qword_1EBAB8E20, &unk_1B964D620);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionGlyph, &qword_1EBAB8EA8, &unk_1B96B77D0);
  v9 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions);

  return v0;
}

uint64_t sub_1B948BDF8()
{
  v0 = sub_1B948BCB0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_DescriptionCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Searchfoundation_DescriptionCardSection(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Searchfoundation_DescriptionCardSection._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B948B190(v15);
    *(v4 + v8) = v11;
  }

  return sub_1B948BEEC(v11, a1, a2, a3);
}

uint64_t sub_1B948BEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 'e':
        sub_1B948C480();
        continue;
      case 'f':
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__expandText;
        goto LABEL_33;
      case 'g':
        sub_1B948C55C();
        continue;
      case 'h':
        v27 = a2;
        v28 = a1;
        v29 = a3;
        v30 = a4;
        v31 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap;
        goto LABEL_21;
      case 'i':
        v16 = a2;
        v17 = a1;
        v18 = a3;
        v19 = a4;
        v20 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight;
        goto LABEL_30;
      case 'j':
        v16 = a2;
        v17 = a1;
        v18 = a3;
        v19 = a4;
        v20 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize;
        goto LABEL_30;
      case 'k':
        v16 = a2;
        v17 = a1;
        v18 = a3;
        v19 = a4;
        v20 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight;
LABEL_30:
        sub_1B8EC15CC(v16, v17, v18, v19, v20);
        continue;
      case 'l':
        v27 = a2;
        v28 = a1;
        v29 = a3;
        v30 = a4;
        v31 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand;
LABEL_21:
        sub_1B8EC19CC(v27, v28, v29, v30, v31);
        continue;
      case 'm':
        v21 = sub_1B92CDA04;
        v22 = a2;
        v23 = a1;
        v24 = a3;
        v25 = a4;
        v26 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__imageAlign;
        goto LABEL_35;
      case 'n':
        v21 = sub_1B94634AC;
        v22 = a2;
        v23 = a1;
        v24 = a3;
        v25 = a4;
        v26 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__textAlign;
LABEL_35:
        sub_1B948C638(v22, v23, v24, v25, v26, v21);
        break;
      case 'o':
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionText;
LABEL_33:
        sub_1B8EC1A14(v11, v12, v13, v14, v15);
        break;
      case 'p':
        sub_1B948C6D8();
        break;
      case 'q':
        sub_1B948C7B4();
        break;
      case 'r':
        sub_1B948C890();
        break;
      default:
        switch(result)
        {
          case 1:
            sub_1B948C2D8();
            break;
          case 2:
            sub_1B8FD77E8();
            break;
          case 3:
            sub_1B8FD786C();
            break;
          case 4:
            sub_1B92D3D10();
            break;
          case 5:
            sub_1B92D3D94();
            break;
          case 6:
            sub_1B92D3E18();
            break;
          case 7:
            sub_1B8E16ACC();
            break;
          case 8:
            sub_1B92D3E9C();
            break;
          case 9:
            sub_1B948C3A4();
            break;
          default:
            if (result == 51)
            {
              v11 = a2;
              v12 = a1;
              v13 = a3;
              v14 = a4;
              v15 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__title;
              goto LABEL_33;
            }

            if (result == 52)
            {
              v11 = a2;
              v12 = a1;
              v13 = a3;
              v14 = a4;
              v15 = &OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__subtitle;
              goto LABEL_33;
            }

            break;
        }

        break;
    }
  }
}

uint64_t sub_1B948C2D8()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B8CD3260(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B948C3A4()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3260(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B948C480()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Text();
  sub_1B8CD3260(&qword_1ED9D3090, type metadata accessor for Searchfoundation_Text);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B948C55C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3260(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B948C638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v7 = *a5;
  v8 = swift_beginAccess();
  a6(v8);
  sub_1B964C420();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B948C6D8()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_URL();
  sub_1B8CD3260(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B948C7B4()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3260(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B948C890()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD3260(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t Searchfoundation_DescriptionCardSection.traverse<A>(visitor:)(uint64_t a1)
{
  v4 = type metadata accessor for Searchfoundation_DescriptionCardSection(0);
  result = sub_1B948C9D8(*(v1 + *(v4 + 20)), a1);
  if (!v2)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B948C9D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v88 = &v82 - v8;
  v87 = type metadata accessor for Searchfoundation_URL();
  v9 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v86 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v90 = &v82 - v15;
  v16 = type metadata accessor for Searchfoundation_Image(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v82 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v92 = &v82 - v24;
  v93 = type metadata accessor for Searchfoundation_Text();
  v25 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v95 = &v82 - v29;
  v102 = type metadata accessor for Searchfoundation_Color(0);
  v30 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v94 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    v84 = a1;
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B8CD3260(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);

    sub_1B964C730();
    v3 = v2;
    if (v2)
    {
    }

    a1 = v84;
  }

  swift_beginAccess();
  v32 = *(a1 + 32);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    v34 = *(a1 + 32);

    sub_1B964C700();
    if (!v3)
    {

      goto LABEL_9;
    }
  }

LABEL_9:
  swift_beginAccess();
  v35 = *(a1 + 48);
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    v37 = *(a1 + 48);

    sub_1B964C700();
    if (v3)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 56) == 1)
  {
    result = sub_1B964C670();
    if (v3)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 57) == 1)
  {
    result = sub_1B964C670();
    if (v3)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 58) == 1)
  {
    result = sub_1B964C670();
    if (v3)
    {
      return result;
    }
  }

  swift_beginAccess();
  v39 = *(a1 + 72);
  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    v41 = *(a1 + 72);

    sub_1B964C700();
    if (v3)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 80))
  {
    v42 = *(a1 + 88);
    v100 = *(a1 + 80);
    v101 = v42;
    sub_1B92C8A2C();
    result = sub_1B964C680();
    if (v3)
    {
      return result;
    }
  }

  v83 = a2;
  swift_beginAccess();
  v43 = v95;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v43, 1, v102) == 1)
  {
    sub_1B8D9207C(v43, &qword_1EBACB050, &unk_1B96B7BD0);
  }

  else
  {
    v44 = v94;
    sub_1B948F8D4();
    sub_1B8CD3260(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
    sub_1B964C740();
    if (v3)
    {
      v45 = type metadata accessor for Searchfoundation_Color;
      return sub_1B948F984(v44, v45);
    }

    sub_1B948F984(v44, type metadata accessor for Searchfoundation_Color);
  }

  v46 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__title);
  swift_beginAccess();
  v47 = *v46;
  v48 = v46[1];
  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = v47 & 0xFFFFFFFFFFFFLL;
  }

  v50 = v83;
  if (v49)
  {

    sub_1B964C700();
    if (v3)
    {
    }
  }

  v51 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__subtitle);
  swift_beginAccess();
  v52 = *v51;
  v53 = v51[1];
  v54 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v54 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {

    sub_1B964C700();
    if (v3)
    {
    }
  }

  v83 = v50;
  swift_beginAccess();
  v55 = v92;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v55, 1, v93) == 1)
  {
    sub_1B8D9207C(v55, &qword_1EBAB8E40, &unk_1B964D640);
    v56 = v83;
  }

  else
  {
    v44 = v91;
    sub_1B948F8D4();
    sub_1B8CD3260(&qword_1ED9D3090, type metadata accessor for Searchfoundation_Text);
    v56 = v83;
    sub_1B964C740();
    if (v3)
    {
      v45 = type metadata accessor for Searchfoundation_Text;
      return sub_1B948F984(v44, v45);
    }

    sub_1B948F984(v44, type metadata accessor for Searchfoundation_Text);
  }

  v57 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__expandText);
  swift_beginAccess();
  v58 = *v57;
  v59 = v57[1];
  v60 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v60 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (v60)
  {

    sub_1B964C700();
    if (v3)
    {
    }
  }

  swift_beginAccess();
  v61 = v90;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v61, 1, v16) != 1)
  {
    v44 = v89;
    sub_1B948F8D4();
    sub_1B8CD3260(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
    sub_1B964C740();
    if (!v3)
    {
      sub_1B948F984(v44, type metadata accessor for Searchfoundation_Image);
      goto LABEL_60;
    }

    v45 = type metadata accessor for Searchfoundation_Image;
    return sub_1B948F984(v44, v45);
  }

  sub_1B8D9207C(v61, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_60:
  v62 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap;
  swift_beginAccess();
  if (*(a1 + v62) != 1 || (result = sub_1B964C670(), !v3))
  {
    v63 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight;
    swift_beginAccess();
    if (!*(a1 + v63) || (result = sub_1B964C6C0(), !v3))
    {
      v64 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize;
      swift_beginAccess();
      if (!*(a1 + v64) || (result = sub_1B964C6C0(), !v3))
      {
        v65 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight;
        swift_beginAccess();
        if (!*(a1 + v65) || (result = sub_1B964C6C0(), !v3))
        {
          v66 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand;
          swift_beginAccess();
          if (*(a1 + v66) != 1 || (result = sub_1B964C670(), !v3))
          {
            v67 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__imageAlign);
            swift_beginAccess();
            v68 = *v67;
            v83 = v56;
            if (!v68 || (v69 = *(v67 + 8), v98 = v68, v99 = v69, sub_1B92CDA04(), result = sub_1B964C680(), !v3))
            {
              v95 = v20;
              v102 = v16;
              v70 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__textAlign[0]);
              swift_beginAccess();
              if (!*v70 || (v71 = *(v70 + 8), v96 = *v70, v97 = v71, sub_1B94634AC(), result = sub_1B964C680(), !v3))
              {
                v84 = a1;
                v72 = (a1 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionText);
                swift_beginAccess();
                v73 = *v72;
                v74 = v72[1];
                v75 = HIBYTE(v74) & 0xF;
                if ((v74 & 0x2000000000000000) == 0)
                {
                  v75 = v73 & 0xFFFFFFFFFFFFLL;
                }

                if (!v75 || (, sub_1B964C700(), result = , !v3))
                {
                  swift_beginAccess();
                  v76 = v88;
                  sub_1B8D92024();
                  if (__swift_getEnumTagSinglePayload(v76, 1, v87) == 1)
                  {
                    sub_1B8D9207C(v88, &qword_1EBAB8E20, &unk_1B964D620);
                  }

                  else
                  {
                    v77 = v85;
                    sub_1B948F8D4();
                    sub_1B8CD3260(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL);
                    sub_1B964C740();
                    result = sub_1B948F984(v77, type metadata accessor for Searchfoundation_URL);
                    if (v3)
                    {
                      return result;
                    }
                  }

                  swift_beginAccess();
                  v78 = v86;
                  sub_1B8D92024();
                  if (__swift_getEnumTagSinglePayload(v78, 1, v102) == 1)
                  {
                    sub_1B8D9207C(v86, &qword_1EBAB8EA8, &unk_1B96B77D0);
                  }

                  else
                  {
                    v79 = v95;
                    sub_1B948F8D4();
                    sub_1B8CD3260(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
                    sub_1B964C740();
                    result = sub_1B948F984(v79, type metadata accessor for Searchfoundation_Image);
                    if (v3)
                    {
                      return result;
                    }
                  }

                  v80 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions;
                  v81 = v84;
                  result = swift_beginAccess();
                  if (*(*(v81 + v80) + 16))
                  {
                    type metadata accessor for Searchfoundation_RichText();
                    sub_1B8CD3260(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);

                    sub_1B964C730();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_DescriptionCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_5_39();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1B948DB34(v3, v4);

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3260(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B948DB34(uint64_t a1, uint64_t a2)
{
  v196 = type metadata accessor for Searchfoundation_URL();
  v4 = *(*(v196 - 8) + 64);
  MEMORY[0x1EEE9AC00](v196);
  v189 = (&v185 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E28, &unk_1B96B7BB0);
  v6 = *(*(v192 - 8) + 64);
  MEMORY[0x1EEE9AC00](v192);
  v197 = &v185 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v193 = (&v185 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v195 = &v185 - v12;
  v202 = type metadata accessor for Searchfoundation_Image(0);
  v13 = *(*(v202 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v202);
  v188 = &v185 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v198 = &v185 - v16;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  v17 = *(*(v201 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v201);
  v194 = &v185 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v200 = &v185 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v190 = &v185 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v191 = &v185 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v199 = &v185 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v209 = &v185 - v29;
  v206 = type metadata accessor for Searchfoundation_Text();
  v30 = *(*(v206 - 8) + 64);
  MEMORY[0x1EEE9AC00](v206);
  v203 = &v185 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E48, &unk_1B96CCC40);
  v32 = *(*(v205 - 8) + 64);
  MEMORY[0x1EEE9AC00](v205);
  v207 = &v185 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v204 = &v185 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v210 = &v185 - v38;
  v39 = type metadata accessor for Searchfoundation_Color(0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v208 = &v185 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v211 = &v185 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45 - 8);
  v49 = &v185 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v185 - v50;
  swift_beginAccess();
  v52 = *(a1 + 16);
  swift_beginAccess();
  v53 = *(a2 + 16);

  sub_1B8D67B1C();
  v55 = v54;

  if ((v55 & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v57 = *(a1 + 24);
  v56 = *(a1 + 32);
  swift_beginAccess();
  v58 = v57 == *(a2 + 24) && v56 == *(a2 + 32);
  if (!v58 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v59 = *(a1 + 40);
  v60 = *(a1 + 48);
  swift_beginAccess();
  v61 = v59 == *(a2 + 40) && v60 == *(a2 + 48);
  if (!v61 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v62 = *(a1 + 56);
  swift_beginAccess();
  if (v62 != *(a2 + 56))
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v63 = *(a1 + 57);
  swift_beginAccess();
  if (v63 != *(a2 + 57))
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v64 = *(a1 + 58);
  swift_beginAccess();
  if (v64 != *(a2 + 58))
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v65 = *(a1 + 64);
  v66 = *(a1 + 72);
  swift_beginAccess();
  v67 = v65 == *(a2 + 64) && v66 == *(a2 + 72);
  if (!v67 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v68 = *(a1 + 80);
  v69 = *(a1 + 88);
  swift_beginAccess();
  v70 = *(a2 + 88);
  if (!sub_1B8D92198(v68, v69, *(a2 + 80)))
  {
    goto LABEL_24;
  }

  v187 = a2;
  swift_beginAccess();
  v186 = a1;
  sub_1B8D92024();
  swift_beginAccess();
  v71 = *(v42 + 48);
  v72 = v211;
  sub_1B8D92024();
  v73 = v187;
  v74 = v72;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v72, 1, v39) == 1)
  {
    sub_1B8D9207C(v51, &qword_1EBACB050, &unk_1B96B7BD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72 + v71, 1, v39);
    v76 = v209;
    v77 = v210;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v74, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_34;
    }

LABEL_28:
    v81 = &qword_1EBACB058;
    v82 = &unk_1B96CA9D0;
    v83 = v74;
LABEL_29:
    sub_1B8D9207C(v83, v81, v82);
    goto LABEL_24;
  }

  sub_1B8D92024();
  v80 = __swift_getEnumTagSinglePayload(v72 + v71, 1, v39);
  v77 = v210;
  if (v80 == 1)
  {
    sub_1B8D9207C(v51, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B948F984(v49, type metadata accessor for Searchfoundation_Color);
    goto LABEL_28;
  }

  v84 = v208;
  sub_1B948F8D4();
  v85 = *(v39 + 20);
  if (*&v49[v85] != *(v84 + v85))
  {
    v86 = *&v49[v85];

    sub_1B947FDE4();
    v88 = v87;

    if ((v88 & 1) == 0)
    {
      sub_1B948F984(v84, type metadata accessor for Searchfoundation_Color);
      sub_1B8D9207C(v51, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B948F984(v49, type metadata accessor for Searchfoundation_Color);
      v83 = v211;
      v81 = &qword_1EBACB050;
      v82 = &unk_1B96B7BD0;
      goto LABEL_29;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3260(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v89 = sub_1B964C850();
  sub_1B948F984(v84, type metadata accessor for Searchfoundation_Color);
  sub_1B8D9207C(v51, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B948F984(v49, type metadata accessor for Searchfoundation_Color);
  sub_1B8D9207C(v211, &qword_1EBACB050, &unk_1B96B7BD0);
  v76 = v209;
  if ((v89 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_34:
  v90 = (v186 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__title);
  swift_beginAccess();
  v91 = *v90;
  v92 = v90[1];
  v93 = (v73 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__title);
  swift_beginAccess();
  v94 = v91 == *v93 && v92 == v93[1];
  if (!v94 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  v95 = (v186 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__subtitle);
  swift_beginAccess();
  v96 = *v95;
  v97 = v95[1];
  v98 = (v73 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__subtitle);
  swift_beginAccess();
  v99 = v96 == *v98 && v97 == v98[1];
  if (!v99 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v100 = *(v205 + 48);
  v101 = v207;
  sub_1B8D92024();
  sub_1B8D92024();
  v102 = v206;
  if (__swift_getEnumTagSinglePayload(v101, 1, v206) == 1)
  {
    sub_1B8D9207C(v77, &qword_1EBAB8E40, &unk_1B964D640);
    if (__swift_getEnumTagSinglePayload(v101 + v100, 1, v102) == 1)
    {
      sub_1B8D9207C(v101, &qword_1EBAB8E40, &unk_1B964D640);
      goto LABEL_47;
    }

LABEL_57:
    v81 = &qword_1EBAB8E48;
    v82 = &unk_1B96CCC40;
LABEL_58:
    v83 = v101;
    goto LABEL_29;
  }

  v110 = v204;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v101 + v100, 1, v102) == 1)
  {
    sub_1B8D9207C(v77, &qword_1EBAB8E40, &unk_1B964D640);
    sub_1B948F984(v110, type metadata accessor for Searchfoundation_Text);
    goto LABEL_57;
  }

  v111 = v203;
  sub_1B948F8D4();
  v112 = *v110 == *v111 && *(v110 + 8) == *(v111 + 8);
  if (!v112 && (sub_1B964C9F0() & 1) == 0 || *(v110 + 16) != *(v111 + 16))
  {
    sub_1B8D9207C(v77, &qword_1EBAB8E40, &unk_1B964D640);
    sub_1B948F984(v111, type metadata accessor for Searchfoundation_Text);
    sub_1B948F984(v110, type metadata accessor for Searchfoundation_Text);
    v83 = v101;
    v81 = &qword_1EBAB8E40;
    v82 = &unk_1B964D640;
    goto LABEL_29;
  }

  v113 = *(v102 + 24);
  sub_1B964C2B0();
  v114 = v77;
  v115 = v110;
  sub_1B8CD3260(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v116 = sub_1B964C850();
  sub_1B8D9207C(v114, &qword_1EBAB8E40, &unk_1B964D640);
  sub_1B948F984(v111, type metadata accessor for Searchfoundation_Text);
  sub_1B948F984(v115, type metadata accessor for Searchfoundation_Text);
  sub_1B8D9207C(v101, &qword_1EBAB8E40, &unk_1B964D640);
  if ((v116 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_47:
  v103 = (v186 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__expandText);
  swift_beginAccess();
  v104 = *v103;
  v105 = v103[1];
  v106 = (v73 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__expandText);
  swift_beginAccess();
  v107 = v104 == *v106 && v105 == v106[1];
  if (!v107 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v101 = v200;
  v108 = *(v201 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v109 = v202;
  if (__swift_getEnumTagSinglePayload(v101, 1, v202) == 1)
  {
    sub_1B8D9207C(v76, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v101 + v108, 1, v109) == 1)
    {
      sub_1B8D9207C(v101, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_75;
    }

    goto LABEL_71;
  }

  v117 = v199;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v101 + v108, 1, v109) == 1)
  {
    sub_1B8D9207C(v76, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B948F984(v117, type metadata accessor for Searchfoundation_Image);
LABEL_71:
    v81 = &qword_1EBAB8EB0;
    v82 = &qword_1B964D6B0;
    goto LABEL_58;
  }

  v118 = v198;
  sub_1B948F8D4();
  if (*(v117 + *(v109 + 20)) != *(v118 + *(v109 + 20)))
  {

    sub_1B94C6890();
    v120 = v119;

    if ((v120 & 1) == 0)
    {
      sub_1B948F984(v118, type metadata accessor for Searchfoundation_Image);
      sub_1B8D9207C(v209, &qword_1EBAB8EA8, &unk_1B96B77D0);
      sub_1B948F984(v199, type metadata accessor for Searchfoundation_Image);
      v83 = v101;
      v81 = &qword_1EBAB8EA8;
      v82 = &unk_1B96B77D0;
      goto LABEL_29;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3260(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v121 = v199;
  v122 = sub_1B964C850();
  sub_1B948F984(v118, type metadata accessor for Searchfoundation_Image);
  sub_1B8D9207C(v209, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B948F984(v121, type metadata accessor for Searchfoundation_Image);
  sub_1B8D9207C(v101, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if ((v122 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_75:
  v123 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap;
  v124 = v186;
  swift_beginAccess();
  LODWORD(v123) = *(v124 + v123);
  v125 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleNoWrap;
  swift_beginAccess();
  if (v123 != *(v73 + v125))
  {
    goto LABEL_24;
  }

  v126 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight;
  swift_beginAccess();
  LODWORD(v126) = *(v124 + v126);
  v127 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__titleWeight;
  swift_beginAccess();
  if (v126 != *(v73 + v127))
  {
    goto LABEL_24;
  }

  v128 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize;
  swift_beginAccess();
  LODWORD(v128) = *(v124 + v128);
  v129 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionSize;
  swift_beginAccess();
  if (v128 != *(v73 + v129))
  {
    goto LABEL_24;
  }

  v130 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight;
  v131 = v186;
  swift_beginAccess();
  LODWORD(v130) = *(v131 + v130);
  v132 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionWeight;
  v133 = v187;
  swift_beginAccess();
  if (v130 != *(v133 + v132))
  {
    goto LABEL_24;
  }

  v134 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand;
  v135 = v186;
  swift_beginAccess();
  LODWORD(v134) = *(v135 + v134);
  v136 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__descriptionExpand;
  v137 = v187;
  swift_beginAccess();
  if (v134 != *(v137 + v136))
  {
    goto LABEL_24;
  }

  v138 = v186 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__imageAlign;
  swift_beginAccess();
  v139 = *v138;
  v140 = *(v138 + 8);
  v141 = v187 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__imageAlign;
  swift_beginAccess();
  v142 = *(v141 + 8);
  if (!sub_1B8D92198(v139, v140, *v141))
  {
    goto LABEL_24;
  }

  v143 = v186 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__textAlign[0];
  swift_beginAccess();
  v144 = *v143;
  v145 = *(v143 + 8);
  v146 = v187 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__textAlign[0];
  swift_beginAccess();
  v147 = *(v146 + 8);
  if (!sub_1B8D92198(v144, v145, *v146))
  {
    goto LABEL_24;
  }

  v148 = (v186 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionText);
  swift_beginAccess();
  v149 = *v148;
  v150 = v148[1];
  v151 = (v187 + OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__attributionText);
  swift_beginAccess();
  v152 = v149 == *v151 && v150 == v151[1];
  if (!v152 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v153 = *(v192 + 48);
  v154 = v197;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v154, 1, v196) == 1)
  {
    sub_1B8D9207C(v195, &qword_1EBAB8E20, &unk_1B964D620);
    if (__swift_getEnumTagSinglePayload(v197 + v153, 1, v196) == 1)
    {
      sub_1B8D9207C(v197, &qword_1EBAB8E20, &unk_1B964D620);
      goto LABEL_101;
    }

LABEL_94:
    v156 = &qword_1EBAB8E28;
    v157 = &unk_1B96B7BB0;
    v158 = v197;
LABEL_114:
    sub_1B8D9207C(v158, v156, v157);
    goto LABEL_24;
  }

  v155 = v197;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v155 + v153, 1, v196) == 1)
  {
    sub_1B8D9207C(v195, &qword_1EBAB8E20, &unk_1B964D620);
    sub_1B948F984(v193, type metadata accessor for Searchfoundation_URL);
    goto LABEL_94;
  }

  v159 = v189;
  sub_1B948F8D4();
  v160 = *v193 == *v159 && v193[1] == v159[1];
  if (!v160 && (sub_1B964C9F0() & 1) == 0)
  {
    sub_1B948F984(v189, type metadata accessor for Searchfoundation_URL);
    v183 = &qword_1EBAB8E20;
    v184 = &unk_1B964D620;
    sub_1B8D9207C(v195, &qword_1EBAB8E20, &unk_1B964D620);
    sub_1B948F984(v193, type metadata accessor for Searchfoundation_URL);
    v158 = v197;
LABEL_113:
    v156 = v183;
    v157 = v184;
    goto LABEL_114;
  }

  v161 = *(v196 + 20);
  sub_1B964C2B0();
  sub_1B8CD3260(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v162 = v193;
  v163 = v189;
  v164 = sub_1B964C850();
  sub_1B948F984(v163, type metadata accessor for Searchfoundation_URL);
  sub_1B8D9207C(v195, &qword_1EBAB8E20, &unk_1B964D620);
  sub_1B948F984(v162, type metadata accessor for Searchfoundation_URL);
  sub_1B8D9207C(v197, &qword_1EBAB8E20, &unk_1B964D620);
  if ((v164 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_101:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v165 = *(v201 + 48);
  v166 = v194;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v166, 1, v202) == 1)
  {
    sub_1B8D9207C(v191, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v194 + v165, 1, v202) == 1)
    {
      sub_1B8D9207C(v194, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_110:
      v176 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions;
      v177 = v186;
      swift_beginAccess();
      v178 = *(v177 + v176);
      v179 = OBJC_IVAR____TtCV10PegasusAPI39Searchfoundation_DescriptionCardSectionP33_1F3ABF0CDAA04E03791C6B1B12F54FC613_StorageClass__richDescriptions;
      v180 = v187;
      swift_beginAccess();
      v181 = *(v180 + v179);

      sub_1B8D912C0();
      v78 = v182;

      return v78 & 1;
    }

    goto LABEL_106;
  }

  v167 = v194;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v167 + v165, 1, v202) == 1)
  {
    sub_1B8D9207C(v191, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B948F984(v190, type metadata accessor for Searchfoundation_Image);
LABEL_106:
    v156 = &qword_1EBAB8EB0;
    v157 = &qword_1B964D6B0;
    v158 = v194;
    goto LABEL_114;
  }

  v168 = v188;
  sub_1B948F8D4();
  v169 = *(v202 + 20);
  if (*(v190 + v169) != *(v168 + v169))
  {
    v170 = *(v190 + v169);

    sub_1B94C6890();
    v172 = v171;

    if ((v172 & 1) == 0)
    {
      sub_1B948F984(v188, type metadata accessor for Searchfoundation_Image);
      v183 = &qword_1EBAB8EA8;
      v184 = &unk_1B96B77D0;
      sub_1B8D9207C(v191, &qword_1EBAB8EA8, &unk_1B96B77D0);
      sub_1B948F984(v190, type metadata accessor for Searchfoundation_Image);
      v158 = v194;
      goto LABEL_113;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3260(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v173 = v190;
  v174 = v188;
  v175 = sub_1B964C850();
  sub_1B948F984(v174, type metadata accessor for Searchfoundation_Image);
  sub_1B8D9207C(v191, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B948F984(v173, type metadata accessor for Searchfoundation_Image);
  sub_1B8D9207C(v194, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if (v175)
  {
    goto LABEL_110;
  }

LABEL_24:

  v78 = 0;
  return v78 & 1;
}

uint64_t Searchfoundation_DescriptionCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_DescriptionCardSection(0);
  sub_1B8CD3260(&qword_1EBACEC48, type metadata accessor for Searchfoundation_DescriptionCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B948F764(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3260(&qword_1EBACEC60, type metadata accessor for Searchfoundation_DescriptionCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B948F7E4(uint64_t a1)
{
  v2 = sub_1B8CD3260(&qword_1EBACE780, type metadata accessor for Searchfoundation_DescriptionCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B948F854()
{
  sub_1B8CD3260(&qword_1EBACE780, type metadata accessor for Searchfoundation_DescriptionCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B948F8D4()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B948F92C()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B948F984(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1B948FB24()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_DescriptionCardSection._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B948FBB0()
{
  sub_1B948FDD4(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color);
  if (v1 <= 0x3F)
  {
    v9 = *(v0 - 8) + 64;
    sub_1B948FDD4(319, &qword_1ED9F31F0, type metadata accessor for Searchfoundation_Text);
    if (v3 <= 0x3F)
    {
      v10 = *(v2 - 8) + 64;
      sub_1B948FDD4(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image);
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        sub_1B948FDD4(319, &qword_1ED9F97C8, type metadata accessor for Searchfoundation_URL);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B948FDD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_74(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Searchfoundation_DescriptionCardSection(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_62(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Searchfoundation_DescriptionCardSection(0);
  v4 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_50()
{
  result = type metadata accessor for Searchfoundation_DescriptionCardSection(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_5_39()
{
  result = type metadata accessor for Searchfoundation_DescriptionCardSection(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_40()
{
  v0 = type metadata accessor for Searchfoundation_DescriptionCardSection._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_16_29()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_DescriptionCardSection(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_41_22()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_DescriptionCardSection(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_65_10()
{

  return sub_1B948F8D4();
}

uint64_t OUTLINED_FUNCTION_66_8()
{

  return sub_1B948F8D4();
}

uint64_t OUTLINED_FUNCTION_78_8()
{

  return sub_1B948F8D4();
}

uint64_t Searchfoundation_DynamicURLImageResource.pixelWidth.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_17_27(*(v7 + 32));
  v8 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_9_2();
  if (!v9)
  {
    return sub_1B94901B8(v1, a1);
  }

  *a1 = 0;
  v10 = a1 + *(v8 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = OUTLINED_FUNCTION_9_2();
  if (!v9)
  {
    return sub_1B8D9207C(v1, &qword_1EBACAF98, &qword_1B96B98A0);
  }

  return result;
}

uint64_t type metadata accessor for Searchfoundation_DynamicURLImageResource()
{
  result = qword_1EBACECA8;
  if (!qword_1EBACECA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9490148(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B94901B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Searchfoundation_DynamicURLImageResource.pixelWidth.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_30() + 32);
  sub_1B8D9207C(v1 + v2, &qword_1EBACAF98, &qword_1B96B98A0);
  sub_1B94901B8(v0, v1 + v2);
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t (*Searchfoundation_DynamicURLImageResource.pixelWidth.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_DynamicURLImageResource() + 32);
  *(v3 + 10) = v11;
  sub_1B9490148(v1 + v11, v6);
  OUTLINED_FUNCTION_17_5();
  if (v12)
  {
    *v10 = 0;
    v13 = v10 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_5();
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBACAF98, &qword_1B96B98A0);
    }
  }

  else
  {
    sub_1B94901B8(v6, v10);
  }

  return sub_1B94903C8;
}

uint64_t sub_1B94903CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9490430(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Searchfoundation_DynamicURLImageResource.hasPixelWidth.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_17_27(*(v5 + 32));
  v6 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_11(v6);
  return v0;
}

Swift::Void __swiftcall Searchfoundation_DynamicURLImageResource.clearPixelWidth()()
{
  v1 = type metadata accessor for Searchfoundation_DynamicURLImageResource();
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBACAF98, &qword_1B96B98A0);
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_DynamicURLImageResource.pixelHeight.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_17_27(*(v7 + 36));
  v8 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_9_2();
  if (!v9)
  {
    return sub_1B94901B8(v1, a1);
  }

  *a1 = 0;
  v10 = a1 + *(v8 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = OUTLINED_FUNCTION_9_2();
  if (!v9)
  {
    return sub_1B8D9207C(v1, &qword_1EBACAF98, &qword_1B96B98A0);
  }

  return result;
}

uint64_t sub_1B9490630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v8 = OUTLINED_FUNCTION_183(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B94903CC(a1, v12);
  return a5(v12);
}

uint64_t Searchfoundation_DynamicURLImageResource.pixelHeight.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_30() + 36);
  sub_1B8D9207C(v1 + v2, &qword_1EBACAF98, &qword_1B96B98A0);
  sub_1B94901B8(v0, v1 + v2);
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t (*Searchfoundation_DynamicURLImageResource.pixelHeight.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_DynamicURLImageResource() + 36);
  *(v3 + 10) = v11;
  sub_1B9490148(v1 + v11, v6);
  OUTLINED_FUNCTION_17_5();
  if (v12)
  {
    *v10 = 0;
    v13 = v10 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_5();
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBACAF98, &qword_1B96B98A0);
    }
  }

  else
  {
    sub_1B94901B8(v6, v10);
  }

  return sub_1B94920B4;
}

void sub_1B9490868(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_1B94903CC((*a1)[4], v4);
    sub_1B8D9207C(v8 + v3, &qword_1EBACAF98, &qword_1B96B98A0);
    sub_1B94901B8(v4, v8 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B9490430(v5);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBACAF98, &qword_1B96B98A0);
    sub_1B94901B8(v5, v8 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t Searchfoundation_DynamicURLImageResource.hasPixelHeight.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_7_41();
  OUTLINED_FUNCTION_17_27(*(v5 + 36));
  v6 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_11(v6);
  return v0;
}

Swift::Void __swiftcall Searchfoundation_DynamicURLImageResource.clearPixelHeight()()
{
  v1 = type metadata accessor for Searchfoundation_DynamicURLImageResource();
  sub_1B8D9207C(v0 + *(v1 + 36), &qword_1EBACAF98, &qword_1B96B98A0);
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_DynamicURLImageResource.formatURL.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Searchfoundation_DynamicURLImageResource.formatURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Searchfoundation_DynamicURLImageResource.imageOptions.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Searchfoundation_DynamicURLImageResource.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_DynamicURLImageResource() + 28);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_DynamicURLImageResource.unknownFields.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_30() + 28);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t Searchfoundation_DynamicURLImageResource.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Searchfoundation_DynamicURLImageResource();
  v3 = a1 + v2[7];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[8];
  v5 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
  v6 = a1 + v2[9];

  return __swift_storeEnumTagSinglePayload(v6, 1, 1, v5);
}

uint64_t sub_1B9490D10()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEC68);
  __swift_project_value_buffer(v0, qword_1EBACEC68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "pixelWidth";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pixelHeight";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "formatURL";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "supportsResizing";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "imageOptions";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_DynamicURLImageResource._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB8398 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACEC68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_DynamicURLImageResource.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B949110C();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B94911C0();
        break;
      case 3:
        sub_1B964C530();
        break;
      case 4:
        sub_1B964C400();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B9491274();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B949110C()
{
  v0 = *(type metadata accessor for Searchfoundation_DynamicURLImageResource() + 32);
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  sub_1B949206C(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat);
  return sub_1B964C580();
}

uint64_t sub_1B94911C0()
{
  v0 = *(type metadata accessor for Searchfoundation_DynamicURLImageResource() + 36);
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  sub_1B949206C(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat);
  return sub_1B964C580();
}

uint64_t sub_1B9491274()
{
  type metadata accessor for Searchfoundation_ImageOption();
  sub_1B949206C(&qword_1EBACEC80, type metadata accessor for Searchfoundation_ImageOption);
  return sub_1B964C570();
}

uint64_t Searchfoundation_DynamicURLImageResource.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v35[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  v7 = OUTLINED_FUNCTION_183(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_66();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - v14;
  v16 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v17 = OUTLINED_FUNCTION_59_1(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_66();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v35 - v24;
  v35[0] = type metadata accessor for Searchfoundation_DynamicURLImageResource();
  v26 = *(v35[0] + 32);
  v36 = v5;
  sub_1B9490148(v5 + v26, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACAF98, &qword_1B96B98A0);
  }

  else
  {
    sub_1B94901B8(v15, v25);
    OUTLINED_FUNCTION_4_51();
    sub_1B949206C(v27, v28);
    OUTLINED_FUNCTION_153_1();
    sub_1B964C740();
    result = sub_1B9490430(v25);
    if (v4)
    {
      return result;
    }
  }

  sub_1B9490148(v36 + *(v35[0] + 36), v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v16) == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBACAF98, &qword_1B96B98A0);
  }

  else
  {
    sub_1B94901B8(v12, v22);
    OUTLINED_FUNCTION_4_51();
    sub_1B949206C(v30, v31);
    OUTLINED_FUNCTION_153_1();
    sub_1B964C740();
    result = sub_1B9490430(v22);
    if (v4)
    {
      return result;
    }
  }

  v32 = *(v36 + 8);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = *v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33 || (OUTLINED_FUNCTION_153_1(), result = sub_1B964C700(), !v4))
  {
    if (*(v36 + 16) != 1 || (OUTLINED_FUNCTION_153_1(), result = sub_1B964C670(), !v4))
    {
      if (!*(*(v36 + 24) + 16) || (type metadata accessor for Searchfoundation_ImageOption(), sub_1B949206C(&qword_1EBACEC80, type metadata accessor for Searchfoundation_ImageOption), OUTLINED_FUNCTION_153_1(), result = sub_1B964C730(), !v4))
      {
        v34 = v36 + *(v35[0] + 28);
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_DynamicURLImageResource.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_66();
  v61 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v61 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_66();
  v62 = (v17 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v61 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB020, &unk_1B96B7BC0);
  v23 = OUTLINED_FUNCTION_59_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_66();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v61 - v30;
  v63 = type metadata accessor for Searchfoundation_DynamicURLImageResource();
  v64 = a1;
  v32 = *(v63 + 32);
  v33 = *(v22 + 48);
  sub_1B9490148(a1 + v32, v31);
  sub_1B9490148(a2 + v32, &v31[v33]);
  OUTLINED_FUNCTION_99_0(v31);
  if (v34)
  {
    OUTLINED_FUNCTION_99_0(&v31[v33]);
    if (v34)
    {
      sub_1B8D9207C(v31, &qword_1EBACAF98, &qword_1B96B98A0);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1B9490148(v31, v21);
  OUTLINED_FUNCTION_99_0(&v31[v33]);
  if (v34)
  {
    sub_1B9490430(v21);
LABEL_9:
    v35 = &qword_1EBACB020;
    v36 = &unk_1B96B7BC0;
LABEL_10:
    v37 = v31;
LABEL_23:
    sub_1B8D9207C(v37, v35, v36);
    goto LABEL_24;
  }

  sub_1B94901B8(&v31[v33], v12);
  if (*v21 != *v12)
  {
    sub_1B9490430(v12);
    sub_1B9490430(v21);
    v35 = &qword_1EBACAF98;
    v36 = &qword_1B96B98A0;
    goto LABEL_10;
  }

  v38 = *(v4 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_89();
  sub_1B949206C(v39, v40);
  v41 = sub_1B964C850();
  sub_1B9490430(v12);
  sub_1B9490430(v21);
  sub_1B8D9207C(v31, &qword_1EBACAF98, &qword_1B96B98A0);
  if ((v41 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_13:
  v43 = v63;
  v42 = v64;
  v44 = *(v63 + 36);
  v45 = *(v22 + 48);
  sub_1B9490148(v64 + v44, v28);
  sub_1B9490148(a2 + v44, v28 + v45);
  OUTLINED_FUNCTION_99_0(v28);
  if (!v34)
  {
    v46 = v62;
    sub_1B9490148(v28, v62);
    OUTLINED_FUNCTION_99_0(v28 + v45);
    if (!v47)
    {
      v50 = v61;
      sub_1B94901B8(v28 + v45, v61);
      if (*v46 == *v50)
      {
        v51 = *(v4 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_89();
        sub_1B949206C(v52, v53);
        LOBYTE(v51) = sub_1B964C850();
        sub_1B9490430(v50);
        sub_1B9490430(v46);
        sub_1B8D9207C(v28, &qword_1EBACAF98, &qword_1B96B98A0);
        if ((v51 & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_29;
      }

      sub_1B9490430(v50);
      sub_1B9490430(v46);
      v35 = &qword_1EBACAF98;
      v36 = &qword_1B96B98A0;
      goto LABEL_22;
    }

    sub_1B9490430(v46);
LABEL_21:
    v35 = &qword_1EBACB020;
    v36 = &unk_1B96B7BC0;
LABEL_22:
    v37 = v28;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_99_0(v28 + v45);
  if (!v34)
  {
    goto LABEL_21;
  }

  sub_1B8D9207C(v28, &qword_1EBACAF98, &qword_1B96B98A0);
LABEL_29:
  v54 = *v42 == *a2 && *(v42 + 8) == *(a2 + 8);
  if (v54 || (sub_1B964C9F0()) && *(v42 + 16) == *(a2 + 16))
  {
    v55 = *(v42 + 24);
    v56 = *(a2 + 24);
    sub_1B8D6C500();
    if (v57)
    {
      v58 = *(v43 + 28);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_89();
      sub_1B949206C(v59, v60);
      v48 = sub_1B964C850();
      return v48 & 1;
    }
  }

LABEL_24:
  v48 = 0;
  return v48 & 1;
}

uint64_t Searchfoundation_DynamicURLImageResource.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_DynamicURLImageResource();
  sub_1B949206C(&qword_1EBACEC88, type metadata accessor for Searchfoundation_DynamicURLImageResource);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9491C3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B949206C(&qword_1EBACECC0, type metadata accessor for Searchfoundation_DynamicURLImageResource);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9491CBC(uint64_t a1)
{
  v2 = sub_1B949206C(&qword_1EBACEC98, type metadata accessor for Searchfoundation_DynamicURLImageResource);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9491D2C()
{
  sub_1B949206C(&qword_1EBACEC98, type metadata accessor for Searchfoundation_DynamicURLImageResource);

  return sub_1B964C5D0();
}

void sub_1B9491EF4()
{
  sub_1B9492008(319, &qword_1EBACECB8, type metadata accessor for Searchfoundation_ImageOption, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B9492008(319, &qword_1ED9F8FC0, type metadata accessor for Searchfoundation_GraphicalFloat, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9492008(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B949206C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_7_41()
{

  return type metadata accessor for Searchfoundation_DynamicURLImageResource();
}

uint64_t OUTLINED_FUNCTION_16_30()
{

  return type metadata accessor for Searchfoundation_DynamicURLImageResource();
}

uint64_t OUTLINED_FUNCTION_17_27@<X0>(uint64_t a1@<X8>)
{

  return sub_1B9490148(v1 + a1, v2);
}

uint64_t Searchfoundation_EngagementSignal.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Searchfoundation_EngagementSignal(0) + 40);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

unint64_t Searchfoundation_EngagementDomain.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x58;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B94921E4@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_EngagementDomain.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9492218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9494FD8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_EngagementDomain.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBACECC8 = a1;
}

uint64_t sub_1B949237C@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_EngagementDomain.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Searchfoundation_EngagementSignal.domainEngagementScores.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t Searchfoundation_EngagementSignal.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_EngagementSignal(0) + 40);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_EngagementSignal.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_EngagementSignal(v2) + 40);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Searchfoundation_EngagementSignal.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_EngagementSignal(v0) + 40);
  return nullsub_1;
}

void Searchfoundation_DomainEngagementScore.domain.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_DomainEngagementScore.domain.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Searchfoundation_DomainEngagementScore.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_DomainEngagementScore(0) + 32);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_DomainEngagementScore.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_DomainEngagementScore(v2) + 32);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Searchfoundation_DomainEngagementScore.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_DomainEngagementScore(v0) + 32);
  return nullsub_1;
}

uint64_t Searchfoundation_DomainEngagementScore.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 12) = 0;
  v1 = a1 + *(type metadata accessor for Searchfoundation_DomainEngagementScore(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B9492848()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACECD0);
  __swift_project_value_buffer(v0, qword_1EBACECD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v182 = swift_allocObject();
  *(v182 + 16) = xmmword_1B9689640;
  v4 = v182 + v3 + v1[14];
  *(v182 + v3) = 0;
  *v4 = "EngagementDomainUnknown";
  *(v4 + 8) = 23;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v182 + v3 + v2 + v1[14];
  *(v182 + v3 + v2) = 1;
  *v8 = "EngagementDomainApplications";
  *(v8 + 8) = 28;
  *(v8 + 16) = 2;
  v7();
  v9 = (v182 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "EngagementDomainBookmarks";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v182 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "EngagementDomainCalculator";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v7();
  v13 = (v182 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "EngagementDomainCalendar";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v182 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "EngagementDomainCoreSuggestions";
  *(v16 + 1) = 31;
  v16[16] = 2;
  v7();
  v17 = (v182 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "EngagementDomainDeveloper";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v7();
  v19 = (v182 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "EngagementDomainDictionary";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v7();
  v21 = (v182 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "EngagementDomainDirectories";
  *(v22 + 1) = 27;
  v22[16] = 2;
  v7();
  v23 = (v182 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "EngagementDomainDocuments";
  *(v24 + 1) = 25;
  v24[16] = 2;
  v7();
  v25 = (v182 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "EngagementDomainIBooks";
  *(v26 + 1) = 22;
  v26[16] = 2;
  v7();
  v27 = (v182 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "EngagementDomainKeynote";
  *(v28 + 1) = 23;
  v28[16] = 2;
  v7();
  v29 = (v182 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "EngagementDomainMail";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v7();
  v31 = (v182 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "EngagementDomainMobileTimer";
  *(v32 + 1) = 27;
  v32[16] = 2;
  v7();
  v33 = (v182 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "EngagementDomainAppleNews";
  *(v34 + 1) = 25;
  v34[16] = 2;
  v7();
  v35 = (v182 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "EngagementDomainNumbers";
  *(v36 + 1) = 23;
  v36[16] = 2;
  v7();
  v37 = (v182 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "EngagementDomainOther";
  *(v38 + 1) = 21;
  v38[16] = 2;
  v7();
  v39 = (v182 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "EngagementDomainPDFs";
  *(v40 + 1) = 20;
  v40[16] = 2;
  v7();
  v41 = (v182 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "EngagementDomainPhotos";
  *(v42 + 1) = 22;
  v42[16] = 2;
  v7();
  v43 = (v182 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "EngagementDomainReminders";
  *(v44 + 1) = 25;
  v44[16] = 2;
  v7();
  v45 = (v182 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "EngagementDomainSettings";
  *(v46 + 1) = 24;
  v46[16] = 2;
  v7();
  v47 = (v182 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "EngagementDomainVoiceMemos";
  *(v48 + 1) = 26;
  v48[16] = 2;
  v7();
  v49 = (v182 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "EngagementDomainApplication";
  *(v50 + 1) = 27;
  v50[16] = 2;
  v7();
  v51 = (v182 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "EngagementDomainApps";
  *(v52 + 1) = 20;
  v52[16] = 2;
  v7();
  v53 = (v182 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "EngagementDomainDropbox";
  *(v54 + 1) = 23;
  v54[16] = 2;
  v7();
  v55 = (v182 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "EngagementDomainFlights";
  *(v56 + 1) = 23;
  v56[16] = 2;
  v7();
  v57 = (v182 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "EngagementDomainGiphyForMessenger";
  *(v58 + 1) = 33;
  v58[16] = 2;
  v7();
  v59 = (v182 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "EngagementDomainGoogleChromeIOS";
  *(v60 + 1) = 31;
  v60[16] = 2;
  v7();
  v61 = (v182 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "EngagementDomainGoogleMaps";
  *(v62 + 1) = 26;
  v62[16] = 2;
  v7();
  v63 = (v182 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 29;
  *v64 = "EngagementDomainGooglePhotos";
  *(v64 + 1) = 28;
  v64[16] = 2;
  v7();
  v65 = (v182 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 30;
  *v66 = "EngagementDomainGroupon";
  *(v66 + 1) = 23;
  v66[16] = 2;
  v7();
  v67 = (v182 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 31;
  *v68 = "EngagementDomainKG";
  *(v68 + 1) = 18;
  v68[16] = 2;
  v7();
  v69 = (v182 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 32;
  *v70 = "EngagementDomainLinkedin";
  *(v70 + 1) = 24;
  v70[16] = 2;
  v7();
  v71 = (v182 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 33;
  *v72 = "EngagementDomainMaps";
  *(v72 + 1) = 20;
  v72[16] = 2;
  v7();
  v73 = (v182 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 34;
  *v74 = "EngagementDomainParsecMaps";
  *(v74 + 1) = 26;
  v74[16] = 2;
  v7();
  v75 = (v182 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 35;
  *v76 = "EngagementDomainMedia";
  *(v76 + 1) = 21;
  v76[16] = 2;
  v7();
  v77 = (v182 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 36;
  *v78 = "EngagementDomainMicrosoftOfficeOutlook";
  *(v78 + 1) = 38;
  v78[16] = 2;
  v7();
  v79 = (v182 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 37;
  *v80 = "EngagementDomainMLBAtBat";
  *(v80 + 1) = 24;
  v80[16] = 2;
  v7();
  v81 = (v182 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 38;
  *v82 = "EngagementDomainMobileAddressBook";
  *(v82 + 1) = 33;
  v82[16] = 2;
  v7();
  v83 = (v182 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 39;
  *v84 = "EngagementDomainMobileCal";
  *(v84 + 1) = 25;
  v84[16] = 2;
  v7();
  v85 = (v182 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 40;
  *v86 = "EngagementDomainMobileDocumentsFileProvider";
  *(v86 + 1) = 43;
  v86[16] = 2;
  v7();
  v87 = (v182 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 41;
  *v88 = "EngagementDomainMobileMail";
  *(v88 + 1) = 26;
  v88[16] = 2;
  v7();
  v89 = (v182 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 42;
  *v90 = "EngagementDomainMobileNotes";
  *(v90 + 1) = 27;
  v90[16] = 2;
  v7();
  v91 = (v182 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 43;
  *v92 = "EngagementDomainMobileSafari";
  *(v92 + 1) = 28;
  v92[16] = 2;
  v7();
  v93 = (v182 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 44;
  *v94 = "EngagementDomainMobileSMS";
  *(v94 + 1) = 25;
  v94[16] = 2;
  v7();
  v95 = (v182 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 45;
  *v96 = "EngagementDomainMovies";
  *(v96 + 1) = 22;
  v96[16] = 2;
  v7();
  v97 = (v182 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 46;
  *v98 = 0x1B971F000;
  *(v98 + 1) = 21;
  v98[16] = 2;
  v7();
  v99 = (v182 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 47;
  *v100 = "EngagementDomainNews";
  *(v100 + 1) = 20;
  v100[16] = 2;
  v7();
  v101 = (v182 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 48;
  *v102 = "EngagementDomainOtherSearchAppStore";
  *(v102 + 1) = 35;
  v102[16] = 2;
  v7();
  v103 = (v182 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 49;
  *v104 = "EngagementDomainOtherSearchMaps";
  *(v104 + 1) = 31;
  v104[16] = 2;
  v7();
  v105 = (v182 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 50;
  *v106 = "EngagementDomainOtherSearchWeb";
  *(v106 + 1) = 30;
  v106[16] = 2;
  v7();
  v107 = (v182 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 51;
  *v108 = "EngagementDomainOtherTapToRadar";
  *(v108 + 1) = 31;
  v108[16] = 2;
  v7();
  v109 = (v182 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 52;
  *v110 = "EngagementDomainPandora";
  *(v110 + 1) = 23;
  v110[16] = 2;
  v7();
  v111 = (v182 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 53;
  *v112 = "EngagementDomainPinterest";
  *(v112 + 1) = 25;
  v112[16] = 2;
  v7();
  v113 = (v182 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 54;
  *v114 = "EngagementDomainPodcasts";
  *(v114 + 1) = 24;
  v114[16] = 2;
  v7();
  v115 = (v182 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 55;
  *v116 = "EngagementDomainPreferences";
  *(v116 + 1) = 27;
  v116[16] = 2;
  v7();
  v117 = (v182 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 56;
  *v118 = "EngagementDomainRelatedSearch";
  *(v118 + 1) = 29;
  v118[16] = 2;
  v7();
  v119 = (v182 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 57;
  *v120 = "EngagementDomainRiffsyKeyboard";
  *(v120 + 1) = 30;
  v120[16] = 2;
  v7();
  v121 = (v182 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 58;
  *v122 = "EngagementDomainSports";
  *(v122 + 1) = 22;
  v122[16] = 2;
  v7();
  v123 = (v182 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 59;
  *v124 = "EngagementDomainSpotlightSuggestionListContact";
  *(v124 + 1) = 46;
  v124[16] = 2;
  v7();
  v125 = (v182 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 60;
  *v126 = "EngagementDomainSpotlightSuggestionListLocal";
  *(v126 + 1) = 44;
  v126[16] = 2;
  v7();
  v127 = (v182 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 61;
  *v128 = "EngagementDomainSuggestionListUserTypedString";
  *(v128 + 1) = 45;
  v128[16] = 2;
  v7();
  v129 = (v182 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 62;
  *v130 = "EngagementDomainStocks";
  *(v130 + 1) = 22;
  v130[16] = 2;
  v7();
  v131 = (v182 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 63;
  *v132 = "EngagementDomainParsecStocks";
  *(v132 + 1) = 28;
  v132[16] = 2;
  v7();
  v133 = (v182 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 64;
  *v134 = "EngagementDomainStubHub";
  *(v134 + 1) = 23;
  v134[16] = 2;
  v7();
  v135 = (v182 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 65;
  *v136 = "EngagementDomainSuggestion";
  *(v136 + 1) = 26;
  v136[16] = 2;
  v7();
  v137 = (v182 + v3 + 66 * v2);
  v138 = v137 + v1[14];
  *v137 = 66;
  *v138 = "EngagementDomainSuggestionListParsec";
  *(v138 + 1) = 36;
  v138[16] = 2;
  v7();
  v139 = (v182 + v3 + 67 * v2);
  v140 = v139 + v1[14];
  *v139 = 67;
  *v140 = "EngagementDomainTapToRadar";
  *(v140 + 1) = 26;
  v140[16] = 2;
  v7();
  v141 = (v182 + v3 + 68 * v2);
  v142 = v141 + v1[14];
  *v141 = 68;
  *v142 = "EngagementDomainTv";
  *(v142 + 1) = 18;
  v142[16] = 2;
  v7();
  v143 = (v182 + v3 + 69 * v2);
  v144 = v143 + v1[14];
  *v143 = 69;
  *v144 = "EngagementDomainTweetie";
  *(v144 + 1) = 23;
  v144[16] = 2;
  v7();
  v145 = (v182 + v3 + 70 * v2);
  v146 = v145 + v1[14];
  *v145 = 70;
  *v146 = "EngagementDomainTwitch";
  *(v146 + 1) = 22;
  v146[16] = 2;
  v7();
  v147 = (v182 + v3 + 71 * v2);
  v148 = v147 + v1[14];
  *v147 = 71;
  *v148 = "EngagementDomainWeather";
  *(v148 + 1) = 23;
  v148[16] = 2;
  v7();
  v149 = (v182 + v3 + 72 * v2);
  v150 = v149 + v1[14];
  *v149 = 72;
  *v150 = "EngagementDomainParsecWeather";
  *(v150 + 1) = 29;
  v150[16] = 2;
  v7();
  v151 = (v182 + v3 + 73 * v2);
  v152 = v151 + v1[14];
  *v151 = 73;
  *v152 = "EngagementDomainWebAnswer";
  *(v152 + 1) = 25;
  v152[16] = 2;
  v7();
  v153 = (v182 + v3 + 74 * v2);
  v154 = v153 + v1[14];
  *v153 = 74;
  *v154 = "EngagementDomainWebImages";
  *(v154 + 1) = 25;
  v154[16] = 2;
  v7();
  v155 = (v182 + v3 + 75 * v2);
  v156 = v155 + v1[14];
  *v155 = 75;
  *v156 = "EngagementDomainWebIndex";
  *(v156 + 1) = 24;
  v156[16] = 2;
  v7();
  v157 = (v182 + v3 + 76 * v2);
  v158 = v157 + v1[14];
  *v157 = 76;
  *v158 = "EngagementDomainWebVideo";
  *(v158 + 1) = 24;
  v158[16] = 2;
  v7();
  v159 = (v182 + v3 + 77 * v2);
  v160 = v159 + v1[14];
  *v159 = 77;
  *v160 = "EngagementDomainWhatsApp";
  *(v160 + 1) = 24;
  v160[16] = 2;
  v7();
  v161 = (v182 + v3 + 78 * v2);
  v162 = v161 + v1[14];
  *v161 = 78;
  *v162 = "EngagementDomainYahooAerogram";
  *(v162 + 1) = 29;
  v162[16] = 2;
  v7();
  v163 = (v182 + v3 + 79 * v2);
  v164 = v163 + v1[14];
  *v163 = 79;
  *v164 = "EngagementDomainYelp";
  *(v164 + 1) = 20;
  v164[16] = 2;
  v7();
  v165 = (v182 + v3 + 80 * v2);
  v166 = v165 + v1[14];
  *v165 = 80;
  *v166 = "EngagementDomainYoutube";
  *(v166 + 1) = 23;
  v166[16] = 2;
  v7();
  v167 = (v182 + v3 + 81 * v2);
  v168 = v167 + v1[14];
  *v167 = 81;
  *v168 = "EngagementDomainZillow";
  *(v168 + 1) = 22;
  v168[16] = 2;
  v7();
  v169 = (v182 + v3 + 82 * v2);
  v170 = v169 + v1[14];
  *v169 = 82;
  *v170 = "EngagementDomainParsecDictionary";
  *(v170 + 1) = 32;
  v170[16] = 2;
  v7();
  v171 = (v182 + v3 + 83 * v2);
  v172 = v171 + v1[14];
  *v171 = 83;
  *v172 = "EngagementDomainShortcuts";
  *(v172 + 1) = 25;
  v172[16] = 2;
  v7();
  v173 = (v182 + v3 + 84 * v2);
  v174 = v173 + v1[14];
  *v173 = 84;
  *v174 = "EngagementDomainTips";
  *(v174 + 1) = 20;
  v174[16] = 2;
  v7();
  v175 = (v182 + v3 + 85 * v2);
  v176 = v175 + v1[14];
  *v175 = 85;
  *v176 = "EngagementDomainHealth";
  *(v176 + 1) = 22;
  v176[16] = 2;
  v7();
  v177 = (v182 + v3 + 86 * v2);
  v178 = v177 + v1[14];
  *v177 = 86;
  *v178 = "EngagementDomainSystemPreferences";
  *(v178 + 1) = 33;
  v178[16] = 2;
  v7();
  v179 = (v182 + v3 + 87 * v2);
  v180 = v179 + v1[14];
  *v179 = 87;
  *v180 = "EngagementDomainConversion";
  *(v180 + 1) = 26;
  v180[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B9493E6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACECE8);
  __swift_project_value_buffer(v0, qword_1EBACECE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "serverScore";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "localScore";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "serverScoreConfidence";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "localScoreConfidence";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "domainEngagementScores";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_EngagementSignal.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 6:
        OUTLINED_FUNCTION_24_3();
        sub_1B9494210();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9494210()
{
  type metadata accessor for Searchfoundation_DomainEngagementScore(0);
  sub_1B9494F90(&qword_1EBACED18, type metadata accessor for Searchfoundation_DomainEngagementScore);
  return sub_1B964C570();
}

uint64_t Searchfoundation_EngagementSignal.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6C0(), !v1))
  {
    if (*(v2 + 4) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
    {
      if (*(v2 + 8) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
      {
        if (!*(v2 + 12) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6C0(), !v1))
        {
          if (!*(v2 + 16) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6C0(), !v1))
          {
            if (!*(*(v2 + 24) + 16) || (type metadata accessor for Searchfoundation_DomainEngagementScore(0), sub_1B9494F90(&qword_1EBACED18, type metadata accessor for Searchfoundation_DomainEngagementScore), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v1))
            {
              v4 = v2 + *(type metadata accessor for Searchfoundation_EngagementSignal(0) + 40);
              OUTLINED_FUNCTION_12();
              return sub_1B964C290();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_EngagementSignal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  sub_1B8D76954();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Searchfoundation_EngagementSignal(0) + 40);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_90();
  sub_1B9494F90(v6, v7);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B94945C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9494F90(&qword_1EBACEDB0, type metadata accessor for Searchfoundation_EngagementSignal);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9494644(uint64_t a1)
{
  v2 = sub_1B9494F90(&qword_1EBACA1A8, type metadata accessor for Searchfoundation_EngagementSignal);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94946B4()
{
  sub_1B9494F90(&qword_1EBACA1A8, type metadata accessor for Searchfoundation_EngagementSignal);

  return sub_1B964C5D0();
}

uint64_t sub_1B9494750()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACED00);
  __swift_project_value_buffer(v0, qword_1EBACED00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "scoreConfidence";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "score";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "iFunScore";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_DomainEngagementScore.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_24_3();
        sub_1B9494A64();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_DomainEngagementScore.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = *(v0 + 8);
  if (!Searchfoundation_EngagementDomain.rawValue.getter() || (sub_1B9494FD8(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C680(), !v1))
  {
    if (!*(v2 + 12) || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_24_3(), result = sub_1B964C6C0(), !v1))
    {
      if (*(v2 + 16) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
      {
        if (*(v2 + 20) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v1))
        {
          v6 = v2 + *(type metadata accessor for Searchfoundation_DomainEngagementScore(0) + 32);
          OUTLINED_FUNCTION_12();
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_DomainEngagementScore.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  v9 = *a2;
  v10 = *(a2 + 8);
  v4 = Searchfoundation_EngagementDomain.rawValue.getter();
  if (v4 != Searchfoundation_EngagementDomain.rawValue.getter() || *(a1 + 3) != *(a2 + 3) || *(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5))
  {
    return 0;
  }

  v5 = *(type metadata accessor for Searchfoundation_DomainEngagementScore(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_90();
  sub_1B9494F90(v6, v7);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B9494D3C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B9494F90(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9494E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9494F90(&qword_1EBACEDA8, type metadata accessor for Searchfoundation_DomainEngagementScore);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9494EA0(uint64_t a1)
{
  v2 = sub_1B9494F90(&qword_1EBACED18, type metadata accessor for Searchfoundation_DomainEngagementScore);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9494F10()
{
  sub_1B9494F90(&qword_1EBACED18, type metadata accessor for Searchfoundation_DomainEngagementScore);

  return sub_1B964C5D0();
}

uint64_t sub_1B9494F90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B9494FD8()
{
  result = qword_1EBACED28;
  if (!qword_1EBACED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACED28);
  }

  return result;
}

unint64_t sub_1B9495030()
{
  result = qword_1EBACED38;
  if (!qword_1EBACED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACED38);
  }

  return result;
}

unint64_t sub_1B9495088()
{
  result = qword_1EBACED40;
  if (!qword_1EBACED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACED40);
  }

  return result;
}

unint64_t sub_1B94950E0()
{
  result = qword_1EBACED48;
  if (!qword_1EBACED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACED48);
  }

  return result;
}

unint64_t sub_1B9495138()
{
  result = qword_1EBACED50;
  if (!qword_1EBACED50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBACED58, &qword_1B96CCEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACED50);
  }

  return result;
}

void sub_1B9495414()
{
  sub_1B94954BC();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B94954BC()
{
  if (!qword_1EBACED90)
  {
    type metadata accessor for Searchfoundation_DomainEngagementScore(255);
    v0 = sub_1B964C910();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBACED90);
    }
  }
}

uint64_t sub_1B949553C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Searchfoundation_FindMyCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Searchfoundation_FindMyCardSection() + 20);
  v3 = type metadata accessor for Searchfoundation_Person();

  return __swift_storeEnumTagSinglePayload(a1 + v2, 1, 1, v3);
}

uint64_t type metadata accessor for Searchfoundation_FindMyCardSection()
{
  result = qword_1ED9F1A30;
  if (!qword_1ED9F1A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_FindMyCardSection.person.getter@<X0>(void *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_5_40();
  sub_1B9495798(v1 + *(v8 + 20), v2);
  v9 = type metadata accessor for Searchfoundation_Person();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) != 1)
  {
    return sub_1B9495808(v2, a1);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v10 = MEMORY[0x1E69E7CC0];
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = v10;
  a1[7] = v10;
  a1[8] = 0;
  a1[9] = 0xE000000000000000;
  v11 = a1 + *(v9 + 40);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = __swift_getEnumTagSinglePayload(v2, 1, v9);
  if (result != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBACC5A8, &unk_1B96CD450);
  }

  return result;
}

uint64_t sub_1B9495798(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9495808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_Person();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B949586C(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Person();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9495BB8(a1, v5);
  return Searchfoundation_FindMyCardSection.person.setter(v5);
}

uint64_t Searchfoundation_FindMyCardSection.person.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_FindMyCardSection() + 20);
  sub_1B8D9207C(v1 + v3, &qword_1EBACC5A8, &unk_1B96CD450);
  sub_1B9495808(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_Person();

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Searchfoundation_FindMyCardSection.person.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Person();
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_FindMyCardSection() + 20);
  *(v3 + 10) = v11;
  sub_1B9495798(v1 + v11, v6);
  OUTLINED_FUNCTION_117(v6);
  if (v12)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v13 = MEMORY[0x1E69E7CC0];
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v10[6] = v13;
    v10[7] = v13;
    v10[8] = 0;
    v10[9] = 0xE000000000000000;
    v14 = v10 + *(v7 + 40);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_117(v6);
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBACC5A8, &unk_1B96CD450);
    }
  }

  else
  {
    sub_1B9495808(v6, v10);
  }

  return sub_1B9495AD8;
}

void sub_1B9495AD8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_1B9495BB8((*a1)[4], v4);
    sub_1B8D9207C(v8 + v3, &qword_1EBACC5A8, &unk_1B96CD450);
    sub_1B9495808(v4, v8 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B9495C1C(v5);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBACC5A8, &unk_1B96CD450);
    sub_1B9495808(v5, v8 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1B9495BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_Person();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9495C1C(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Person();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Searchfoundation_FindMyCardSection.hasPerson.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_5_40();
  sub_1B9495798(v0 + *(v6 + 20), v1);
  v7 = type metadata accessor for Searchfoundation_Person();
  v8 = __swift_getEnumTagSinglePayload(v1, 1, v7) != 1;
  sub_1B8D9207C(v1, &qword_1EBACC5A8, &unk_1B96CD450);
  return v8;
}

Swift::Void __swiftcall Searchfoundation_FindMyCardSection.clearPerson()()
{
  v1 = *(type metadata accessor for Searchfoundation_FindMyCardSection() + 20);
  sub_1B8D9207C(v0 + v1, &qword_1EBACC5A8, &unk_1B96CD450);
  v2 = type metadata accessor for Searchfoundation_Person();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_FindMyCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B964C2B0();
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t Searchfoundation_FindMyCardSection.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1B964C2B0();
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t sub_1B9495E8C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEDB8);
  __swift_project_value_buffer(v0, qword_1EBACEDB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D050;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 51;
  *v5 = "person";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1B964C760();
}

uint64_t static Searchfoundation_FindMyCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB83B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACEDB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_FindMyCardSection.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 51)
    {
      sub_1B9496108();
    }
  }

  return result;
}

uint64_t sub_1B9496108()
{
  v0 = *(type metadata accessor for Searchfoundation_FindMyCardSection() + 20);
  type metadata accessor for Searchfoundation_Person();
  sub_1B9496A38(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person);
  return sub_1B964C580();
}

uint64_t Searchfoundation_FindMyCardSection.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Searchfoundation_Person();
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MyCardSection = type metadata accessor for Searchfoundation_FindMyCardSection();
  sub_1B9495798(v0 + *(MyCardSection + 20), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1B8D9207C(v7, &qword_1EBACC5A8, &unk_1B96CD450);
  }

  else
  {
    sub_1B9495808(v7, v13);
    sub_1B9496A38(&qword_1EBACC8F8, type metadata accessor for Searchfoundation_Person);
    sub_1B964C740();
    result = sub_1B9495C1C(v13);
    if (v1)
    {
      return result;
    }
  }

  return sub_1B964C290();
}

uint64_t static Searchfoundation_FindMyCardSection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_Person();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v27 - v14);
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5B0, &qword_1B96B9920) - 8);
  v17 = *(*v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v27 - v19;
  v21 = *(type metadata accessor for Searchfoundation_FindMyCardSection() + 20);
  v22 = v16[14];
  sub_1B9495798(a1 + v21, v20);
  sub_1B9495798(a2 + v21, &v20[v22]);
  OUTLINED_FUNCTION_117(v20);
  if (v23)
  {
    OUTLINED_FUNCTION_117(&v20[v22]);
    if (v23)
    {
      sub_1B8D9207C(v20, &qword_1EBACC5A8, &unk_1B96CD450);
LABEL_12:
      sub_1B964C2B0();
      sub_1B9496A38(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
      v24 = sub_1B964C850();
      return v24 & 1;
    }

    goto LABEL_9;
  }

  sub_1B9495798(v20, v15);
  OUTLINED_FUNCTION_117(&v20[v22]);
  if (v23)
  {
    sub_1B9495C1C(v15);
LABEL_9:
    sub_1B8D9207C(v20, &qword_1EBACC5B0, &qword_1B96B9920);
    goto LABEL_10;
  }

  sub_1B9495808(&v20[v22], v9);
  v25 = static Searchfoundation_Person.== infix(_:_:)(v15, v9);
  sub_1B9495C1C(v9);
  sub_1B9495C1C(v15);
  sub_1B8D9207C(v20, &qword_1EBACC5A8, &unk_1B96CD450);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_10:
  v24 = 0;
  return v24 & 1;
}

uint64_t Searchfoundation_FindMyCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_FindMyCardSection();
  sub_1B9496A38(&qword_1EBACEDD0, type metadata accessor for Searchfoundation_FindMyCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B94966A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9496A38(&qword_1EBACEDE8, type metadata accessor for Searchfoundation_FindMyCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9496724(uint64_t a1)
{
  v2 = sub_1B9496A38(&qword_1EBACE680, type metadata accessor for Searchfoundation_FindMyCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9496794()
{
  sub_1B9496A38(&qword_1EBACE680, type metadata accessor for Searchfoundation_FindMyCardSection);

  return sub_1B964C5D0();
}

void sub_1B949695C()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B94969E0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B94969E0()
{
  if (!qword_1ED9F9708)
  {
    type metadata accessor for Searchfoundation_Person();
    v0 = sub_1B964C930();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9F9708);
    }
  }
}

uint64_t sub_1B9496A38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_5_40()
{

  return type metadata accessor for Searchfoundation_FindMyCardSection();
}

uint64_t Searchfoundation_FlightCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Searchfoundation_FlightCardSection(0) + 20);
  if (qword_1EBAB83C8 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBACEE08;
}

uint64_t Searchfoundation_FlightCardSection.punchoutOptions.getter()
{
  OUTLINED_FUNCTION_3_63();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 16);
}

uint64_t sub_1B9496B78(uint64_t *a1)
{
  v1 = *a1;

  return Searchfoundation_FlightCardSection.punchoutOptions.setter();
}

uint64_t Searchfoundation_FlightCardSection.punchoutOptions.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_FlightCardSection(v2) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9498DD8(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 16);
  *(v6 + 16) = v0;
}

uint64_t Searchfoundation_FlightCardSection.punchoutOptions.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_3_63();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v4 + 16);

  return OUTLINED_FUNCTION_514();
}

void sub_1B9496C8C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = *(*a1 + 48);

    Searchfoundation_FlightCardSection.punchoutOptions.setter();
    v6 = *(v2 + 48);
  }

  else
  {
    v7 = *(v2 + 64);
    v8 = *(v2 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v2 + 64);
      v13 = *(v2 + 56);
      OUTLINED_FUNCTION_4_52();
      v14 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B9498DD8(v14);
      *(v13 + v12) = v11;
    }

    OUTLINED_FUNCTION_18();
    v15 = *(v11 + 16);
    *(v11 + 16) = v3;
  }

  free(v2);
}

uint64_t Searchfoundation_FlightCardSection.punchoutPickerTitle.getter()
{
  OUTLINED_FUNCTION_3_63();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B9496D84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_FlightCardSection.punchoutPickerTitle.setter();
}

uint64_t Searchfoundation_FlightCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_11_38();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B9498DD8(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 32);
  *(v5 + 24) = v2;
  *(v5 + 32) = v0;
}

uint64_t Searchfoundation_FlightCardSection.punchoutPickerTitle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_63();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 32);
  *(v1 + 48) = *(v4 + 24);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9496EA8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = *(v1 + 64);

    Searchfoundation_FlightCardSection.punchoutPickerTitle.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_163_1();
    v10 = *(v5 + v2);
    if ((v9 & 1) == 0)
    {
      v11 = *(v1 + 72);
      v12 = *(v1 + 64);
      OUTLINED_FUNCTION_4_52();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B9498DD8(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    OUTLINED_FUNCTION_18();
    v15 = *(v10 + 32);
    *(v10 + 24) = v4;
    *(v10 + 32) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_FlightCardSection.punchoutPickerDismissText.getter()
{
  OUTLINED_FUNCTION_3_63();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B9496F90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_FlightCardSection.punchoutPickerDismissText.setter();
}

uint64_t Searchfoundation_FlightCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_11_38();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B9498DD8(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 48);
  *(v5 + 40) = v2;
  *(v5 + 48) = v0;
}

uint64_t Searchfoundation_FlightCardSection.punchoutPickerDismissText.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_63();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 48);
  *(v1 + 48) = *(v4 + 40);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B94970B4(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = *(v1 + 64);

    Searchfoundation_FlightCardSection.punchoutPickerDismissText.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_163_1();
    v10 = *(v5 + v2);
    if ((v9 & 1) == 0)
    {
      v11 = *(v1 + 72);
      v12 = *(v1 + 64);
      OUTLINED_FUNCTION_4_52();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B9498DD8(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    OUTLINED_FUNCTION_18();
    v15 = *(v10 + 48);
    *(v10 + 40) = v4;
    *(v10 + 48) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_FlightCardSection.canBeHidden.getter()
{
  OUTLINED_FUNCTION_3_63();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 56);
}

uint64_t Searchfoundation_FlightCardSection.canBeHidden.setter()
{
  v3 = OUTLINED_FUNCTION_6_37();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B9498DD8(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 56) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_FlightCardSection.canBeHidden.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_63();
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v5 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B9497254(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_4_52();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9498DD8(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 56) = v3;

  free(v1);
}

uint64_t Searchfoundation_FlightCardSection.hasTopPadding_p.getter()
{
  OUTLINED_FUNCTION_3_63();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 57);
}

uint64_t Searchfoundation_FlightCardSection.hasTopPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_6_37();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B9498DD8(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 57) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_FlightCardSection.hasTopPadding_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_63();
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v5 + 57);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94973D0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_4_52();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9498DD8(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 57) = v3;

  free(v1);
}

uint64_t Searchfoundation_FlightCardSection.hasBottomPadding_p.getter()
{
  OUTLINED_FUNCTION_3_63();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 58);
}

uint64_t Searchfoundation_FlightCardSection.hasBottomPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_6_37();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B9498DD8(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 58) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_FlightCardSection.hasBottomPadding_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_63();
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v5 + 58);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B949754C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_4_52();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B9498DD8(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 58) = v3;

  free(v1);
}

uint64_t Searchfoundation_FlightCardSection.type.getter()
{
  OUTLINED_FUNCTION_3_63();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B9497610(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_FlightCardSection.type.setter();
}

uint64_t Searchfoundation_FlightCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_11_38();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B9498DD8(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 72);
  *(v5 + 64) = v2;
  *(v5 + 72) = v0;
}

uint64_t Searchfoundation_FlightCardSection.type.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_63();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 72);
  *(v1 + 48) = *(v4 + 64);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9497734(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = *(v1 + 64);

    Searchfoundation_FlightCardSection.type.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_163_1();
    v10 = *(v5 + v2);
    if ((v9 & 1) == 0)
    {
      v11 = *(v1 + 72);
      v12 = *(v1 + 64);
      OUTLINED_FUNCTION_4_52();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B9498DD8(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    OUTLINED_FUNCTION_18();
    v15 = *(v10 + 72);
    *(v10 + 64) = v4;
    *(v10 + 72) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_FlightCardSection.separatorStyle.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_63();
  v4 = *(v1 + v3);
  result = OUTLINED_FUNCTION_10_4();
  v6 = *(v4 + 88);
  *a1 = *(v4 + 80);
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1B9497820@<X0>(uint64_t a1@<X8>)
{
  result = Searchfoundation_FlightCardSection.separatorStyle.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1B9497864(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Searchfoundation_FlightCardSection.separatorStyle.setter(&v3);
}

uint64_t Searchfoundation_FlightCardSection.separatorStyle.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_11_38();
  v7 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B9498DD8(v8);
    *(v3 + v2) = v7;
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v7 + 80) = v4;
  *(v7 + 88) = v5;
  return result;
}

uint64_t Searchfoundation_FlightCardSection.separatorStyle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_3_63();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 88);
  *(v1 + 72) = *(v4 + 80);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B949798C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  v6 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    OUTLINED_FUNCTION_4_52();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B9498DD8(v11);
    *(v10 + v9) = v8;
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 80) = v2;
  *(v8 + 88) = v5;

  free(v1);
}

uint64_t Searchfoundation_FlightCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  OUTLINED_FUNCTION_3_63();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v11 = type metadata accessor for Searchfoundation_Color(0);
  if (OUTLINED_FUNCTION_64_5() == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v11 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    *(a1 + v12) = qword_1ED9CD1C8;
    v13 = OUTLINED_FUNCTION_64_5();

    if (v13 != 1)
    {
      return sub_1B8D9207C(v8, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_75();
    return sub_1B949928C();
  }

  return result;
}

uint64_t Searchfoundation_FlightCardSection.backgroundColor.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_38();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B9498DD8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_1_75();
  sub_1B949928C();
  v10 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_FlightCardSection.backgroundColor.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_3_63();
  v12 = *(v1 + v11);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_82();
  if (OUTLINED_FUNCTION_50_1() == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v7 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    *&v10[v13] = qword_1ED9CD1C8;
    v14 = OUTLINED_FUNCTION_50_1();

    if (v14 != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_75();
    sub_1B949928C();
  }

  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_FlightCardSection.flight.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEE10, &qword_1B96CD608);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  OUTLINED_FUNCTION_3_63();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Searchfoundation_Flight(0);
  if (OUTLINED_FUNCTION_64_5() == 1)
  {
    Searchfoundation_Flight.init()(a1);
    result = OUTLINED_FUNCTION_64_5();
    if (result != 1)
    {
      return sub_1B8D9207C(v8, &qword_1EBACEE10, &qword_1B96CD608);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_61();
    return sub_1B949928C();
  }

  return result;
}

uint64_t sub_1B9497F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B94992E4();
  return a7(v13);
}

uint64_t Searchfoundation_FlightCardSection.flight.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEE10, &qword_1B96CD608);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_38();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B9498DD8(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_2_61();
  sub_1B949928C();
  v10 = type metadata accessor for Searchfoundation_Flight(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_FlightCardSection.flight.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEE10, &qword_1B96CD608);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Searchfoundation_Flight(0);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_3_63();
  v12 = *(v1 + v11);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_82();
  if (OUTLINED_FUNCTION_50_1() == 1)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v10[6] = 0;
    v10[7] = 0xE000000000000000;
    v10[8] = MEMORY[0x1E69E7CC0];
    v10[9] = 0;
    v10[10] = 0xE000000000000000;
    v10[11] = 0;
    v10[12] = 0xE000000000000000;
    v10[13] = 0;
    v10[14] = 0xE000000000000000;
    v10[15] = 0;
    v10[16] = 0xE000000000000000;
    v13 = v10 + *(v7 + 52);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (OUTLINED_FUNCTION_50_1() != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBACEE10, &qword_1B96CD608);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_61();
    sub_1B949928C();
  }

  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94982B4(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    v9 = *(*a1 + 48);
    sub_1B94992E4();
    a3(v5);
    sub_1B949933C();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v8);

  free(v4);
}

BOOL sub_1B9498394(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  OUTLINED_FUNCTION_3_63();
  v18 = *(v5 + v17);
  v19 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v20 = a4(0);
  v21 = __swift_getEnumTagSinglePayload(v16, 1, v20) != 1;
  sub_1B8D9207C(v16, v6, v4);
  return v21;
}

uint64_t sub_1B949849C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  OUTLINED_FUNCTION_16();
  v7 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v16 = *(type metadata accessor for Searchfoundation_FlightCardSection(0) + 20);
  v17 = *(v4 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v4 + v16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v20 = OUTLINED_FUNCTION_40_0();
    *(v7 + v16) = sub_1B9498DD8(v20);
  }

  v21 = a3(0);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Searchfoundation_FlightCardSection.selectedLegIndex.getter()
{
  OUTLINED_FUNCTION_3_63();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex;
  OUTLINED_FUNCTION_10_4();
  return *(v2 + v3);
}

uint64_t Searchfoundation_FlightCardSection.selectedLegIndex.setter()
{
  v3 = OUTLINED_FUNCTION_6_37();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_52();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B9498DD8(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  v7 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex;
  result = OUTLINED_FUNCTION_9_3();
  *(v4 + v7) = v0;
  return result;
}

uint64_t Searchfoundation_FlightCardSection.selectedLegIndex.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_63();
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94986B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_4_52();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9498DD8(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  v12 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex;
  OUTLINED_FUNCTION_11_4();
  *(v7 + v12) = v2;

  free(v1);
}

uint64_t Searchfoundation_FlightCardSection.unknownFields.getter()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Searchfoundation_FlightCardSection.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t sub_1B9498848()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACEDF0);
  __swift_project_value_buffer(v0, qword_1EBACEDF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "flight";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "selectedLegIndex";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_FlightCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB83C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACEDF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B9498CE4()
{
  OUTLINED_FUNCTION_4_52();
  result = sub_1B9498D34();
  qword_1EBACEE08 = result;
  return result;
}

uint64_t sub_1B9498D34()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v1 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__backgroundColor;
  v2 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__flight;
  v4 = type metadata accessor for Searchfoundation_Flight(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex) = 0;
  return v0;
}

uint64_t sub_1B9498DD8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEE10, &qword_1B96CD608);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v32 = &v28 - v8;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v28 = (v1 + 64);
  v29 = (v1 + 80);
  *(v1 + 88) = 1;
  v9 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__backgroundColor;
  v30 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__backgroundColor;
  v10 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__flight;
  v31 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__flight;
  v12 = type metadata accessor for Searchfoundation_Flight(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v33 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex) = 0;
  swift_beginAccess();
  v13 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v13;
  swift_beginAccess();
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v14;
  *(v1 + 32) = v15;

  swift_beginAccess();
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  swift_beginAccess();
  v18 = *(v1 + 48);
  *(v1 + 40) = v16;
  *(v1 + 48) = v17;

  swift_beginAccess();
  LOBYTE(v16) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v16;
  swift_beginAccess();
  LOBYTE(v16) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v16;
  swift_beginAccess();
  LOBYTE(v16) = *(a1 + 58);
  swift_beginAccess();
  *(v1 + 58) = v16;
  swift_beginAccess();
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  v21 = v28;
  swift_beginAccess();
  v22 = *(v1 + 72);
  *v21 = v19;
  *(v1 + 72) = v20;

  swift_beginAccess();
  v23 = *(a1 + 80);
  LOBYTE(v20) = *(a1 + 88);
  v24 = v29;
  swift_beginAccess();
  *v24 = v23;
  *(v1 + 88) = v20;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex;
  swift_beginAccess();
  LODWORD(v25) = *(a1 + v25);

  v26 = v33;
  swift_beginAccess();
  *(v1 + v26) = v25;
  return v1;
}

uint64_t sub_1B949928C()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B94992E4()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B949933C()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void *sub_1B9499390()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__flight, &qword_1EBACEE10, &qword_1B96CD608);
  return v0;
}

uint64_t sub_1B9499408()
{
  v0 = sub_1B9499390();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_FlightCardSection.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Searchfoundation_FlightCardSection(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Searchfoundation_FlightCardSection._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v1 + v2) = sub_1B9498DD8(v9);
  }

  return sub_1B94994FC();
}

uint64_t sub_1B94994FC()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1B94996B0();
        break;
      case 2:
        sub_1B8FD77E8();
        break;
      case 3:
        sub_1B8FD786C();
        break;
      case 4:
        sub_1B92D3D10();
        break;
      case 5:
        sub_1B92D3D94();
        break;
      case 6:
        sub_1B92D3E18();
        break;
      case 7:
        sub_1B8E16ACC();
        break;
      case 8:
        sub_1B92D3E9C();
        break;
      case 9:
        sub_1B949977C();
        break;
      default:
        if (result == 51)
        {
          sub_1B9499858();
        }

        else if (result == 52)
        {
          sub_1B9499934();
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B94996B0()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B8CD32A8(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B949977C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD32A8(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9499858()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Flight(0);
  sub_1B8CD32A8(&qword_1EBAC2138, type metadata accessor for Searchfoundation_Flight);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9499934()
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t Searchfoundation_FlightCardSection.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for Searchfoundation_FlightCardSection(0);
  result = sub_1B9499A2C(*(v0 + *(v2 + 20)));
  if (!v1)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B9499A2C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEE10, &qword_1B96CD608);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = v27 - v5;
  v6 = type metadata accessor for Searchfoundation_Flight(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v29 = v27 - v10;
  v32 = type metadata accessor for Searchfoundation_Color(0);
  v11 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v27[1] = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    v27[0] = a1;
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B8CD32A8(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v1)
    {
    }

    a1 = v27[0];
  }

  swift_beginAccess();
  v14 = *(a1 + 32);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (v16 = *(a1 + 32), , sub_1B964C700(), result = , !v1))
  {
    swift_beginAccess();
    v17 = *(a1 + 48);
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
    }

    if (!v18 || (v19 = *(a1 + 48), , sub_1B964C700(), result = , !v1))
    {
      swift_beginAccess();
      if (*(a1 + 56) != 1 || (result = sub_1B964C670(), !v1))
      {
        swift_beginAccess();
        if (*(a1 + 57) != 1 || (result = sub_1B964C670(), !v1))
        {
          swift_beginAccess();
          if (*(a1 + 58) != 1 || (result = sub_1B964C670(), !v1))
          {
            swift_beginAccess();
            v20 = *(a1 + 72);
            v21 = HIBYTE(v20) & 0xF;
            if ((v20 & 0x2000000000000000) == 0)
            {
              v21 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
            }

            if (!v21 || (v22 = *(a1 + 72), , sub_1B964C700(), result = , !v1))
            {
              swift_beginAccess();
              if (!*(a1 + 80) || (v23 = *(a1 + 88), v30 = *(a1 + 80), v31 = v23, sub_1B92C8A2C(), result = sub_1B964C680(), !v1))
              {
                swift_beginAccess();
                v24 = v29;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v24, 1, v32) == 1)
                {
                  sub_1B8D9207C(v24, &qword_1EBACB050, &unk_1B96B7BD0);
                }

                else
                {
                  v27[0] = type metadata accessor for Searchfoundation_Color;
                  sub_1B949928C();
                  sub_1B8CD32A8(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
                  sub_1B964C740();
                  result = sub_1B949933C();
                  if (v1)
                  {
                    return result;
                  }
                }

                swift_beginAccess();
                v25 = v28;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v25, 1, v6) == 1)
                {
                  sub_1B8D9207C(v25, &qword_1EBACEE10, &qword_1B96CD608);
                }

                else
                {
                  sub_1B949928C();
                  sub_1B8CD32A8(&qword_1EBAC2138, type metadata accessor for Searchfoundation_Flight);
                  sub_1B964C740();
                  result = sub_1B949933C();
                  if (v1)
                  {
                    return result;
                  }
                }

                v26 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex;
                swift_beginAccess();
                result = *(a1 + v26);
                if (result)
                {
                  return sub_1B964C710();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_FlightCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_3_63();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1B949A1DC(v3, v4);

    if (!v6)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD32A8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

BOOL sub_1B949A1DC(uint64_t a1, uint64_t a2)
{
  v67 = type metadata accessor for Searchfoundation_Flight(0);
  v4 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v64[1] = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEE38, &qword_1B96CD850);
  v6 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v68 = v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACEE10, &qword_1B96CD608);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v64[2] = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v69 = v64 - v12;
  v13 = type metadata accessor for Searchfoundation_Color(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v65 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v70 = v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v64 - v24;
  swift_beginAccess();
  v26 = *(a1 + 16);
  swift_beginAccess();
  v27 = *(a2 + 16);

  sub_1B8D67B1C();
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  v31 = *(a1 + 24);
  v30 = *(a1 + 32);
  swift_beginAccess();
  v32 = v31 == *(a2 + 24) && v30 == *(a2 + 32);
  if (!v32 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  v33 = *(a1 + 40);
  v34 = *(a1 + 48);
  swift_beginAccess();
  v35 = v33 == *(a2 + 40) && v34 == *(a2 + 48);
  if (!v35 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  v36 = *(a1 + 56);
  swift_beginAccess();
  if (v36 != *(a2 + 56))
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  v37 = *(a1 + 57);
  swift_beginAccess();
  if (v37 != *(a2 + 57))
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  v38 = *(a1 + 58);
  swift_beginAccess();
  if (v38 != *(a2 + 58))
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  v39 = *(a1 + 64);
  v40 = *(a1 + 72);
  swift_beginAccess();
  v41 = v39 == *(a2 + 64) && v40 == *(a2 + 72);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  v42 = *(a1 + 80);
  v43 = *(a1 + 88);
  swift_beginAccess();
  v44 = *(a2 + 88);
  if (!sub_1B8D92198(v42, v43, *(a2 + 80)))
  {
    goto LABEL_40;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v45 = *(v16 + 48);
  v46 = v70;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v46, 1, v13) != 1)
  {
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v46 + v45, 1, v13) != 1)
    {
      v50 = v65;
      sub_1B949928C();
      v51 = *(v13 + 20);
      if (*&v23[v51] != *&v50[v51])
      {
        v52 = *&v23[v51];

        sub_1B947FDE4();
        v54 = v53;

        if ((v54 & 1) == 0)
        {
          sub_1B949933C();
          sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
          sub_1B949933C();
          v49 = v46;
          v47 = &qword_1EBACB050;
          v48 = &unk_1B96B7BD0;
          goto LABEL_39;
        }
      }

      sub_1B964C2B0();
      sub_1B8CD32A8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
      v55 = sub_1B964C850();
      sub_1B949933C();
      sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B949933C();
      sub_1B8D9207C(v46, &qword_1EBACB050, &unk_1B96B7BD0);
      if ((v55 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_30;
    }

    sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B949933C();
LABEL_26:
    v47 = &qword_1EBACB058;
    v48 = &unk_1B96CA9D0;
    v49 = v46;
LABEL_39:
    sub_1B8D9207C(v49, v47, v48);
    goto LABEL_40;
  }

  sub_1B8D9207C(v25, &qword_1EBACB050, &unk_1B96B7BD0);
  if (__swift_getEnumTagSinglePayload(v46 + v45, 1, v13) != 1)
  {
    goto LABEL_26;
  }

  sub_1B8D9207C(v46, &qword_1EBACB050, &unk_1B96B7BD0);
LABEL_30:
  swift_beginAccess();
  v56 = v69;
  sub_1B8D92024();
  swift_beginAccess();
  v57 = *(v66 + 48);
  v58 = v68;
  sub_1B8D92024();
  sub_1B8D92024();
  v59 = v67;
  if (__swift_getEnumTagSinglePayload(v58, 1, v67) == 1)
  {
    sub_1B8D9207C(v56, &qword_1EBACEE10, &qword_1B96CD608);
    if (__swift_getEnumTagSinglePayload(v58 + v57, 1, v59) == 1)
    {
      sub_1B8D9207C(v58, &qword_1EBACEE10, &qword_1B96CD608);
LABEL_37:
      v61 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex;
      swift_beginAccess();
      LODWORD(v61) = *(a1 + v61);

      v62 = OBJC_IVAR____TtCV10PegasusAPI34Searchfoundation_FlightCardSectionP33_C41C136268ECDAF81F514E4406B1B7D113_StorageClass__selectedLegIndex;
      swift_beginAccess();
      LODWORD(v62) = *(a2 + v62);

      return v61 == v62;
    }

    goto LABEL_35;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v58 + v57, 1, v59) == 1)
  {
    sub_1B8D9207C(v69, &qword_1EBACEE10, &qword_1B96CD608);
    sub_1B949933C();
LABEL_35:
    v47 = &qword_1EBACEE38;
    v48 = &qword_1B96CD850;
    v49 = v58;
    goto LABEL_39;
  }

  sub_1B949928C();
  v60 = static Searchfoundation_Flight.== infix(_:_:)();
  sub_1B949933C();
  sub_1B8D9207C(v69, &qword_1EBACEE10, &qword_1B96CD608);
  sub_1B949933C();
  sub_1B8D9207C(v58, &qword_1EBACEE10, &qword_1B96CD608);
  if (v60)
  {
    goto LABEL_37;
  }

LABEL_40:

  return 0;
}