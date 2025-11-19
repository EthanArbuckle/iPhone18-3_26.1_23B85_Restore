uint64_t type metadata accessor for Trialpb_TrialExperiment()
{
  result = qword_1ED9C8AD0;
  if (!qword_1ED9C8AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8CD1134(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8CD11CC()
{
  sub_1B8CD12E0(319, &qword_1ED9C8F60, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B8CD12E0(319, &qword_1ED9C8F48, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.Section, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8CD12E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B8CD1364()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8CD12E0(319, &qword_1ED9CA6B8, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B8CD12E0(319, &qword_1ED9CA578, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Result.Template, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8CD14CC()
{
  sub_1B8CD12E0(319, &qword_1ED9CA710, type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.OneOf_Detail, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8CD15A0()
{
  result = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.FlightDetail(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.WeatherDetail(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Apple_Parsec_Spotlight_V1alpha_Topic.SportsDetail(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B8CD1654()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8CD16E8()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8CD17DC()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8CD1878()
{
  if (!qword_1EDA06FD0[0])
  {
    v0 = sub_1B964C910();
    if (!v1)
    {
      atomic_store(v0, qword_1EDA06FD0);
    }
  }
}

uint64_t sub_1B8CD18C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1910(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1958(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD19A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD19E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1A30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1A78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1AC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1B08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1B50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1B98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1BE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1C28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1C70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1CB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1D00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1D48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1D90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1DD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1E20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1E68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1EB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1EF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1F40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1F88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD1FD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2018(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD20A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD20F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2138(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD21C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2258(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD22A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD22E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2330(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2378(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD23C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2408(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2450(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2498(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD24E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2528(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2570(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD25B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2600(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2648(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2690(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD26D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2720(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD27B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD27F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD28D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2918(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD29A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD29F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2A38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2A80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2AC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2B10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2B58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2BA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2BE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2C30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2C78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2CC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2D08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2D50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2D98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2DE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2E28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2E70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2EB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2F00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2F48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2F90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD2FD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3020(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3068(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD30B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD30F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3140(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3188(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD31D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3260(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD32A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD32F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3338(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3380(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD33C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3410(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3458(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD34A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD34E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3578(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD35C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3608(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3650(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3698(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD36E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3770(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD37B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3800(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3848(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3890(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD38D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3920(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3968(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD39B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD39F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3A40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3A88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3AD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3B18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3B60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3BA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3BF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3C38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3C80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3CC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3D10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3D58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8CD3DA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  v3 = a1 + *(type metadata accessor for Apple_Parsec_Spotlight_V1alpha_ZkwSuggestResponse(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void sub_1B8CD3E9C()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t __swift_get_extra_inhabitant_index_114Tm()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_699(*(v0 + 24));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_615_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_36(uint64_t result)
{
  *(v1 - 104) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_521()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_634()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_3()
{

  return sub_1B964C700();
}

uint64_t OUTLINED_FUNCTION_41()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_66_0(uint64_t result)
{
  *v1 = result;
  *(result + 24) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_74()
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_86(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v3, 1, a1);

  return sub_1B8D9207C(v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_39()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_59_0()
{
  *(v0 + v4) = v1;
  __swift_getEnumTagSinglePayload(v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_36_1()
{
  v0 = type metadata accessor for Kgqsapipb_Claim._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_36_3@<X0>(uint64_t a1@<X8>)
{

  return sub_1B8DD9078(v1 + a1, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_36_4()
{

  return sub_1B964C2D0();
}

uint64_t OUTLINED_FUNCTION_36_5()
{
  result = type metadata accessor for Apple_Parsec_Search_V2_Result(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_657@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  v4 = v1 + *(v2 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_36_11(uint64_t a1, uint64_t a2)
{

  return sub_1B8DD9078(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_36_15()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_VerticalLayoutCardSection(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriKitAppInfo(v1);
  *v0 = 0;
  v0[1] = 0;
  v3 = v0 + *(v2 + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_82()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_100_0()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_57_0(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(result + 52);
  return result;
}

uint64_t OUTLINED_FUNCTION_189(uint64_t a1)
{

  return sub_1B8D9207C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_100_2()
{

  return sub_1B8E9DF4C();
}

uint64_t OUTLINED_FUNCTION_100_3()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_12_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_37(uint64_t *a1)
{
  result = *a1;
  v4 = *(v2 + 8);
  v5 = *v1;
  v6 = v1[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_100_6()
{
  *v0 = 0;
  v0[1] = 0;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v3 = v0 + *(v1 + 36);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_100_7@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 48) = v1;
  *(v2 + 56) = 0;
  *(v2 + 64) = a1;
  *(v2 + 72) = 0;
  *(v2 + 74) = 0;
  v5 = v2 + *(v3 + 48);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8CD4950()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 32);
  v4 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t OUTLINED_FUNCTION_290_0()
{

  return swift_beginAccess();
}

uint64_t sub_1B8CD4A14()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 32);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t Apple_Parsec_Search_V2_MarketplaceInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  v1 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo(0);
  return OUTLINED_FUNCTION_279(v1);
}

uint64_t OUTLINED_FUNCTION_199_0()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_279(uint64_t a1)
{
  v3 = v1 + *(a1 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_199_1()
{

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_199_4()
{
  result = *(v1 - 88) + v0;
  v3 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_199_5()
{

  return sub_1B91A7968();
}

uint64_t OUTLINED_FUNCTION_199_7()
{
  result = *v1;
  v3 = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_643()
{

  return sub_1B8D92024();
}

uint64_t **OUTLINED_FUNCTION_67(uint64_t **result)
{
  v1 = *(*result + 10);
  v2 = (*result)[3];
  v3 = (*result)[4];
  v4 = (*result)[1];
  v5 = (*result)[2];
  v6 = **result;
  return result;
}

uint64_t OUTLINED_FUNCTION_166_1()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_22_0(uint64_t a1)
{
  v2 = *(*a1 + 84);
  v3 = *(*(*a1 + 72) + *(*a1 + 80));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_30(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  return 0;
}

uint64_t OUTLINED_FUNCTION_166_2(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Kgqsapipb_DebugInfo(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_182_0(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_166_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_166_5()
{

  return sub_1B90492C4();
}

uint64_t OUTLINED_FUNCTION_188()
{

  return sub_1B8F1B8B8();
}

uint64_t sub_1B8CD4EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3900, &qword_1B9687970);
    v10 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

void __swift_store_extra_inhabitant_index_125Tm()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t OUTLINED_FUNCTION_490_1@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  v4 = v1 + *(v2 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_532()
{
  result = *(v1 + 16);
  v3 = *(v0 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_532_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = a1;
  *(v1 + 56) = -1;
  v4 = v1 + *(v2 + 32);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Search_SearchConversationContext.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  v3 = a1 + *(v2 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 24);
  type metadata accessor for Apple_Parsec_Search_ConversationContextManagementPolicy(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1B8CD5104(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v8 = sub_1B964C2B0();
  v9 = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3900, &qword_1B9687970);
    v12 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t OUTLINED_FUNCTION_157_1()
{

  return sub_1B964C570();
}

uint64_t OUTLINED_FUNCTION_191()
{
  v2 = *(v0 + 64);
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_157_6()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v3 = v0 + *(v1 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_157_7()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_157_8()
{
  result = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_157_10()
{
  *v0 = 0;
  v3 = v0 + *(v1 + 20);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_285_0()
{

  return sub_1B8F1B8B8();
}

uint64_t OUTLINED_FUNCTION_491_0()
{
  result = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_156_0()
{

  return sub_1B964C700();
}

BOOL sub_1B8CD5484(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 != 0;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

BOOL sub_1B8CD54B0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  if (a4)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  return v4 == v5;
}

uint64_t sub_1B8CD5568()
{
  OUTLINED_FUNCTION_691();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  v5 = v1;
  sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_699(*(v5 + 20));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1B8CD55DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1B964C2B0();
    v8 = OUTLINED_FUNCTION_699(*(v7 + 20));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1B8CD5654()
{
  OUTLINED_FUNCTION_691();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  v5 = v1;
  sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_699(*(v5 + 24));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1B8CD56C8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1B964C2B0();
    v8 = OUTLINED_FUNCTION_699(*(v7 + 24));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1B8CD68D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28_1();
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_1B8CD6914(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_28_1();
  v4 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_1B8CD695C()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  v5 = *(OUTLINED_FUNCTION_24_1() - 8);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9398, &qword_1B964E4C0);
    v6 = *(v2 + 24);
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8CD6A10()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(sub_1B964C2B0() - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9398, &qword_1B964E4C0);
      v8 = *(v5 + 24);
    }

    v9 = OUTLINED_FUNCTION_699(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1B8CD6ADC()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CD6B40()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8CD6F6C()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD7000()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.genreNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CD702C()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.url.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD7058()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.contentRatingsBySystem.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CD7084()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.bornOrFormed.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD70B0()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.origin.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD70DC()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.offers.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CD7180()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.collectionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD71AC()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.collectionName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD72A8()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.deviceFamilies.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CD72D4()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.bundleID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD7300()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.bundleDisplayName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD732C()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.copyright.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD7360()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD738C()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.nameRaw.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD7510()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.discNumber.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CD7560()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.trackNumber.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CD75B0()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.artistName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD75DC()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.artistBio.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CD7608()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.releaseDate.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD7634()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.children.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CD7660()
{
  OUTLINED_FUNCTION_102();
  result = Amppb_Content.movieClips.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CD7704()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 24));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_267_0();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CD7764()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_259_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CD77C4()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CD7828()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 36));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CD78A0()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CD7904()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 32));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CD7964()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_266();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CD79C4()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CD7A24()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
    OUTLINED_FUNCTION_267_0();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8CD7ACC()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
      OUTLINED_FUNCTION_259_0();
    }

    v5 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8CD7B70()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 24));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92E0, &qword_1B964DAC0);
    v7 = *(v2 + 36);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CD7C20()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92E0, &qword_1B964DAC0);
      v7 = *(v2 + 36);
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8CD7CD0()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_267_0();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CD7D30()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_259_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CD7D90()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 32);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8CD7DE0()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 32);
  sub_1B964C2B0();
  v2 = OUTLINED_FUNCTION_260_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B8CD7E28()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 20);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8CD7E78()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 20);
  sub_1B964C2B0();
  v2 = OUTLINED_FUNCTION_260_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B8CD7EC0()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 48);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
    v7 = *(v2 + 52);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CD7F70()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 48);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
      v5 = *(v0 + 52);
    }

    v6 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1B8CD801C()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9688, &qword_1B964EEB0);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_267_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
      v7 = *(v2 + 36);
    }
  }

  v10 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1B8CD8110()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9688, &qword_1B964EEB0);
      OUTLINED_FUNCTION_128_1(v6);
      if (*(v7 + 84) == v1)
      {
        OUTLINED_FUNCTION_259_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
        v5 = *(v0 + 36);
      }
    }

    v8 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8CD8200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_1B8CD8298(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v8 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_231();

    return __swift_storeEnumTagSinglePayload(v11, v4, v4, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1B8CD8370@<X0>(uint64_t *a1@<X8>)
{
  result = Argos_Protos_Entityimageratingpb_Rating.InstructionsType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8CD83FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1B8CD8450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B8CD84A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 40);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9B98, &qword_1B9650820);
      v10 = *(a3 + 44);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1B8CD8580(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 40);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9B98, &qword_1B9650820);
      v10 = *(a4 + 44);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t _s10PegasusAPI48Argos_Protos_Entityimageratingpb_RatingAttributeV17LandmarkPlacementOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_14_1(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B8CD866C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_14_1(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B8CD8688@<X0>(uint64_t *a1@<X8>)
{
  result = Argos_Protos_Productdatapb_ProductMetadata.MetadataType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8CD8764()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Productdatapb_ProductAttribute.Attribute.Value.text.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD87E0()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Productdatapb_ProductMetadata.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD880C()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Productdatapb_ProductMetadata.description_p.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD8838()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Productdatapb_ProductMetadata.brand.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD88CC()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Productdatapb_ProductMetadata.sku.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD88F8()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Productdatapb_ProductMetadata.gtin.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CD8924()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Productdatapb_ProductMetadata.webURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD8950()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Productdatapb_ProductMetadata.clusterVariantID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD897C()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Productdatapb_ProductMetadata.retailerLogoURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD8A98()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Productdatapb_ProductMetadata.ingredientString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD8AC4()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Productdatapb_ProductMetadata.ingredients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CD8BB0()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Productdatapb_ProductMetadata.metadataSource.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CD8FB4()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CD9018()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 32));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CD9078(uint64_t a1, int a2)
{
  if (a2 == 253)
  {
    v3 = *(a1 + 16);
    if (v3 <= 1)
    {
      return 0;
    }

    else
    {
      return v3 ^ 0xFF;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v5 = OUTLINED_FUNCTION_699(*(v2 + 20));

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void sub_1B8CD90E8()
{
  OUTLINED_FUNCTION_468();
  if (v3 == 253)
  {
    *(v1 + 16) = ~v0;
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 20));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CD9150()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_48_1();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CD91B0()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CD9214()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_48_1();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CD9274()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CD92DC()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 40));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CD9340()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 40));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CD93A4()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D0, &unk_1B964DAB0);
    v7 = *(v2 + 28);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CD9454()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v3 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D0, &unk_1B964DAB0);
      v5 = *(v0 + 28);
    }

    v6 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1B8CD9504()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CD9568()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_169_1();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 20));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CD95C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D0, &unk_1B964DAB0);
    v12 = OUTLINED_FUNCTION_128_1(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F28, &qword_1B96511F0);
      v14 = *(a3 + 24);
    }

    v10 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1B8CD96B4()
{
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_468();
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v3)
  {
    v6 = OUTLINED_FUNCTION_231();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D0, &unk_1B964DAB0);
    v9 = OUTLINED_FUNCTION_128_1(v8);
    if (*(v10 + 84) == v3)
    {
      v7 = v9;
      v11 = *(v2 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F28, &qword_1B96511F0);
      OUTLINED_FUNCTION_258_0();
    }

    v6 = v1 + v11;
  }

  return __swift_storeEnumTagSinglePayload(v6, v0, v0, v7);
}

uint64_t sub_1B8CD979C()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = v2[6];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D0, &unk_1B964DAB0);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F28, &qword_1B96511F0);
      v7 = v2[8];
    }
  }

  v10 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1B8CD9898()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v5 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92D0, &unk_1B964DAB0);
      OUTLINED_FUNCTION_128_1(v8);
      if (*(v9 + 84) == v3)
      {
        v7 = *(v2 + 28);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9F28, &qword_1B96511F0);
        v7 = *(v2 + 32);
      }
    }

    v10 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1B8CDA088()
{
  OUTLINED_FUNCTION_691();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  v5 = v1;
  sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_699(*(v5 + 28));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1B8CDA0FC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1B964C2B0();
    v8 = OUTLINED_FUNCTION_699(*(v7 + 28));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1B8CDA174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_1B8CDA20C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8CDA2B0()
{
  OUTLINED_FUNCTION_691();
  if (v1 == v3)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  v5 = v2;
  v6 = v1;
  v7 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v7);
  if (*(v8 + 84) == v6)
  {
    v9 = *(v5 + 44);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA340, &qword_1B9653000);
    v9 = *(v5 + 48);
  }

  v10 = OUTLINED_FUNCTION_699(v9);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1B8CDA370(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v4 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v5;
    v8 = v4;
    v9 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v9);
    if (*(v10 + 84) == v8)
    {
      v11 = *(v7 + 44);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA340, &qword_1B9653000);
      v11 = *(v7 + 48);
    }

    v12 = OUTLINED_FUNCTION_699(v11);

    __swift_storeEnumTagSinglePayload(v12, v13, a2, v14);
  }
}

uint64_t sub_1B8CDA5C0(uint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == a2)
    {
      v9 = *(a3 + 44);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
      v9 = *(a3 + 48);
    }

    v10 = OUTLINED_FUNCTION_699(v9);

    return __swift_getEnumTagSinglePayload(v10, v11, v12);
  }
}

void *sub_1B8CDA690(void *result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == a3)
    {
      v9 = *(a4 + 44);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
      v9 = *(a4 + 48);
    }

    v10 = OUTLINED_FUNCTION_699(v9);

    return __swift_storeEnumTagSinglePayload(v10, v11, a2, v12);
  }

  return result;
}

uint64_t sub_1B8CDA75C(uint64_t a1, int a2, int *a3)
{
  if (a2 == 12)
  {
    v3 = *(a1 + 8) >> 60;
    if (((4 * v3) & 0xC) != 0)
    {
      return 16 - ((4 * v3) & 0xC | (v3 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == a2)
    {
      v9 = a3[5];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA430, &qword_1B96535F8);
      OUTLINED_FUNCTION_128_1(v10);
      if (*(v11 + 84) == a2)
      {
        v9 = a3[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA438, &unk_1B9653600);
        v9 = a3[7];
      }
    }

    v12 = OUTLINED_FUNCTION_699(v9);

    return __swift_getEnumTagSinglePayload(v12, v13, v14);
  }
}

void *sub_1B8CDA884(void *result, uint64_t a2, int a3, int *a4)
{
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == a3)
    {
      v9 = a4[5];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA430, &qword_1B96535F8);
      OUTLINED_FUNCTION_128_1(v10);
      if (*(v11 + 84) == a3)
      {
        v9 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA438, &unk_1B9653600);
        v9 = a4[7];
      }
    }

    v12 = OUTLINED_FUNCTION_699(v9);

    return __swift_storeEnumTagSinglePayload(v12, v13, a2, v14);
  }

  return result;
}

uint64_t sub_1B8CDAA68()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Visualunderstandingpb_Entity.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDAAE4()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Visualunderstandingpb_Entity.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDAB10()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Visualunderstandingpb_Entity.source.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDAB60()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Visualunderstandingpb_Entity.muid.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDAC78()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Visualunderstandingpb_Entity.isRated.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CDACCC()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Visualunderstandingpb_Entity.isIndoor.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CDAD20()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Visualunderstandingpb_Entity.isDestroyed.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CDAD74()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Visualunderstandingpb_Entity.entityAnnotations.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDAF48()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Visualunderstandingpb_ImageRegion.imageEmbeddings.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDAF74()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Visualunderstandingpb_ImageRegion.entities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDAFA0()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Visualunderstandingpb_ImageRegion.predictedLabels.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDAFCC()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Visualunderstandingpb_ImageRegion.visualTokens.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDAFF8()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Visualunderstandingpb_ImageRegion.localFeatures.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDB09C()
{
  OUTLINED_FUNCTION_102();
  result = Argos_Protos_Visualunderstandingpb_ImageRegion.barcodes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDB1B0()
{
  OUTLINED_FUNCTION_468();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92C0, &qword_1B964DAA0);
  v3 = OUTLINED_FUNCTION_128_1(v2);
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    sub_1B964C2B0();
    v6 = OUTLINED_FUNCTION_115_1();
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

uint64_t sub_1B8CDB24C()
{
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_468();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92C0, &qword_1B964DAA0);
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_115_1();
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B8CDB2EC()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 32);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8CDB33C()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B8CDB388()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA698, &qword_1B9653B38);
    v7 = *(v2 + 24);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CDB438()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v5 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABA698, &qword_1B9653B38);
      v7 = *(v2 + 24);
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8CDB4F0()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 40));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CDB554()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 40));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CDB5C4()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92A8, &qword_1B9653B40);
    v7 = *(v2 + 32);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CDB674()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v3 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92A8, &qword_1B9653B40);
      v5 = *(v0 + 32);
    }

    v6 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1B8CDB728()
{
  OUTLINED_FUNCTION_468();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_128_1(v2);
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9298, &unk_1B9653B50);
    v6 = OUTLINED_FUNCTION_115_1();
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

uint64_t sub_1B8CDB7C4()
{
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_468();
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9298, &unk_1B9653B50);
    OUTLINED_FUNCTION_115_1();
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B8CDBA24@<X0>(uint64_t *a1@<X8>)
{
  result = Aspireresultpb_AspireResult.compressedGeoList.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B8CDBA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAA48, &qword_1B96556D0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1B8CDBAFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAA48, &qword_1B96556D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_1B964C2B0();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1B8CDBBE0()
{
  OUTLINED_FUNCTION_102();
  result = Aspiresnippetpb_GeoPoi.debugApolloID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDBC0C()
{
  OUTLINED_FUNCTION_102();
  result = Aspiresnippetpb_GeoPoi.debugZioID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDBC5C()
{
  OUTLINED_FUNCTION_102();
  result = Aspiresnippetpb_GeoPoi.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDBE40()
{
  OUTLINED_FUNCTION_102();
  result = Aspiresnippetpb_GeoPoi.modernPrimaryCategoryID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDBEE4()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 32);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8CDBF34()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 32);
  v4 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_1B8CDBF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 8));
  }

  v7 = sub_1B964C2B0();
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void sub_1B8CDC004()
{
  OUTLINED_FUNCTION_468();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    v5 = sub_1B964C2B0();
    v6 = v1 + *(v4 + 24);

    __swift_storeEnumTagSinglePayload(v6, v0, v0, v5);
  }
}

uint64_t sub_1B8CDC080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_1B8CDC11C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v5, v4, v4, result);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1B8CDC200(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
      v10 = *(a3 + 40);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1B8CDC2D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 36);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
      v10 = *(a4 + 40);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8CDC3CC()
{
  OUTLINED_FUNCTION_102();
  result = Aspiresnippetpb_StorefrontPoi.id.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDC484()
{
  OUTLINED_FUNCTION_102();
  result = Aspiresnippetpb_StorefrontPoi.prefLocale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDC4B0()
{
  OUTLINED_FUNCTION_102();
  result = Aspiresnippetpb_StorefrontPoi.prefName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDC544()
{
  OUTLINED_FUNCTION_102();
  result = Aspiresnippetpb_StorefrontPoi.prefPhone.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDC570()
{
  OUTLINED_FUNCTION_102();
  result = Aspiresnippetpb_StorefrontPoi.localizedName.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDC59C()
{
  OUTLINED_FUNCTION_102();
  result = Aspiresnippetpb_StorefrontPoi.prefCategoryID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDC5C8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*a1);
  }

  v7 = sub_1B964C2B0();
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_1B8CDC644(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8CDC6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_1B8CDC760(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8CDCE38()
{
  OUTLINED_FUNCTION_102();
  result = Domainresultpb_DomainResult.canonicalID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDCE64()
{
  OUTLINED_FUNCTION_102();
  result = Domainresultpb_DomainResult.resultEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDCE90()
{
  OUTLINED_FUNCTION_102();
  result = Domainresultpb_DomainResult.alternativeResult.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CDCFAC()
{
  OUTLINED_FUNCTION_102();
  result = Domainresultpb_DomainResult.entityType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDCFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_1B8CDD074(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8CDD11C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 8));
  }

  sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_699(*(a3 + 44));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1B8CDD194()
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
    v5 = OUTLINED_FUNCTION_699(*(v4 + 44));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8CDD204(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 8));
  }

  sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_699(*(a3 + 32));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1B8CDD27C()
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
    v5 = OUTLINED_FUNCTION_699(*(v4 + 32));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8CDD2F4@<X0>(uint64_t *a1@<X8>)
{
  result = Electionspb_Status.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8CDD40C()
{
  OUTLINED_FUNCTION_102();
  result = Electionspb_ElectionRace.siribaseID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDD438()
{
  OUTLINED_FUNCTION_102();
  result = Electionspb_ElectionRace.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDD464()
{
  OUTLINED_FUNCTION_102();
  result = Electionspb_ElectionRace.politicalPartyID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDD490()
{
  OUTLINED_FUNCTION_102();
  result = Electionspb_ElectionRace.politicalParty.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDD4BC()
{
  OUTLINED_FUNCTION_102();
  result = Electionspb_ElectionRace.jurisdiction.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDD4E8()
{
  OUTLINED_FUNCTION_102();
  result = Electionspb_ElectionRace.raceDate.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDD514()
{
  OUTLINED_FUNCTION_102();
  result = Electionspb_ElectionRace.raceType.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDD540()
{
  OUTLINED_FUNCTION_102();
  result = Electionspb_ElectionRace.officeContested.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDD56C()
{
  OUTLINED_FUNCTION_102();
  result = Electionspb_ElectionRace.delegateCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDD60C()
{
  OUTLINED_FUNCTION_102();
  result = Electionspb_ElectionRace.candidateInfo.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDD638()
{
  OUTLINED_FUNCTION_102();
  v0 = Electionspb_ElectionRace.isSuperTuesday.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CDD684()
{
  OUTLINED_FUNCTION_102();
  v0 = Electionspb_ElectionRace.isFirstRace.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CDD6D0()
{
  OUTLINED_FUNCTION_102();
  v0 = Electionspb_ElectionRace.isToday.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CDD71C()
{
  OUTLINED_FUNCTION_102();
  v0 = Electionspb_ElectionRace.isCancelled.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CDD768()
{
  OUTLINED_FUNCTION_102();
  v0 = Electionspb_ElectionRace.isInFuture.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CDD7B4()
{
  OUTLINED_FUNCTION_102();
  result = Electionspb_ElectionRace.lastUpdated.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDD7E0()
{
  OUTLINED_FUNCTION_102();
  v0 = Electionspb_ElectionRace.winnerDeclared.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CDD8FC()
{
  OUTLINED_FUNCTION_102();
  result = Electionspb_ElectionRace.electionFlags.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDDA70()
{
  OUTLINED_FUNCTION_102();
  result = Electionspb_ElectionRace.district.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDDA9C()
{
  OUTLINED_FUNCTION_102();
  result = Electionspb_ElectionRace.imageURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDDAC8()
{
  OUTLINED_FUNCTION_102();
  result = Electionspb_ElectionRace.newsURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDDAF4()
{
  OUTLINED_FUNCTION_102();
  result = Electionspb_ElectionRace.numberOfSeats.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDDB44()
{
  OUTLINED_FUNCTION_102();
  result = Electionspb_ElectionRace.partyResults.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDDC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_1B8CDDCE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v8 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_231();

    return __swift_storeEnumTagSinglePayload(v11, v4, v4, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1B8CDDD84()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 68);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB160, &qword_1B9656D10);
    v7 = *(v2 + 72);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CDDE34()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    v5 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v4)
    {
      v7 = *(v3 + 68);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB160, &qword_1B9656D10);
      v7 = *(v3 + 72);
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8CDDEEC()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9250, &qword_1B964DA38);
    v7 = *(v2 + 36);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CDDF9C()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    v5 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v4)
    {
      v7 = *(v3 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9250, &qword_1B964DA38);
      v7 = *(v3 + 36);
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8CDE054()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CDE0B8()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 36));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CDE11C(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 16);
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v7 = OUTLINED_FUNCTION_699(*(v2 + 40));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_1B8CDE194()
{
  OUTLINED_FUNCTION_468();
  if (v3 == 254)
  {
    *(v1 + 16) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 40));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CDE1FC()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 28);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8CDE24C()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 28);
  v4 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_1B8CDE2A0()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CDE304()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 28));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CDE364()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CDE3C8()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 24));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CDE51C()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 56));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CDE580()
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
    v5 = OUTLINED_FUNCTION_699(*(v4 + 56));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8CDE5F0(uint64_t a1, int a2, uint64_t a3)
{
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == a2)
  {
    v7 = *(a3 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
    v7 = *(a3 + 28);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

uint64_t sub_1B8CDE690(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  v9 = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = *(a4 + 24);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
    v12 = *(a4 + 28);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1B8CDE73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_1B8CDE7D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8CDE878()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CDE8DC()
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
    v5 = OUTLINED_FUNCTION_699(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8CDE94C()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CDE9B0()
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

uint64_t sub_1B8CDEA50(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_699(*(a3 + 64));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1B8CDEAC4()
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
    v5 = OUTLINED_FUNCTION_699(*(v4 + 64));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8CDEB34(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_699(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1B8CDEBA8()
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
    v5 = OUTLINED_FUNCTION_699(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8CDEC18(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B8CDECA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8CDED60()
{
  OUTLINED_FUNCTION_691();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  v5 = v1;
  sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_699(*(v5 + 56));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1B8CDEDD4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v5 == v6)
  {
    *(v2 + 16) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1B964C2B0();
    v8 = OUTLINED_FUNCTION_699(*(v7 + 56));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1B8CDEE4C()
{
  OUTLINED_FUNCTION_691();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  v5 = v1;
  sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_699(*(v5 + 20));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1B8CDEEC0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1B964C2B0();
    v8 = OUTLINED_FUNCTION_699(*(v7 + 20));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1B8CDEF54(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B8CDEFDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8CDF108()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.query.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDF134()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.qsyn.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDF160()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.pattern.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDF18C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.algo.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDF1B8()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.flowDomain.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDF1E4()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.executedDomain.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDF210()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.parser.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDF23C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.entities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDF268()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.dbQueryPattern.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDF294()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.unfulfilledCfgdbquery.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDF2C0()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.unfulfilledCfgdbqueryPattern.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDF2EC()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.aProps.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDF318()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.props.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDF344()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.pageviews.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDF394()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.frequency.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDF3E4()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.extractionDate.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDF410()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.extractionSource.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDF43C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.bodyPart.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDF468()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.locale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDF4BC()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_QueryFeatures.executableQueryString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDF4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_1B8CDF584(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8CDF62C()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 40));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CDF690()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 40));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CDF6F4()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CDF758()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 20));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CDF7C4()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 80));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CDF828()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 80));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CDF894(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1B8CDF91C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8CDF99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1B8CDF9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B8CDFA48()
{
  OUTLINED_FUNCTION_691();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_10_7();
  }

  v4 = v0;
  sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_699(*(v4 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1B8CDFAB8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1B964C2B0();
    v8 = OUTLINED_FUNCTION_699(*(v7 + 20));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1B8CDFB30()
{
  OUTLINED_FUNCTION_691();
  if (v1 == v2)
  {
    return OUTLINED_FUNCTION_10_7();
  }

  v4 = v0;
  sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_699(*(v4 + 28));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1B8CDFBA0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1B964C2B0();
    v8 = OUTLINED_FUNCTION_699(*(v7 + 28));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1B8CDFC1C@<X0>(uint64_t *a1@<X8>)
{
  result = Kgqsapipb_KGEntity.AttributeType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8CDFE0C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGDBResponse.query.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDFE38()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGDBResponse.result.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDFE64()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGDBResponse.debug.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CDFE90()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGDBResponse.relaxed.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CDFEE4()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGDBResponse.entities.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CDFF10()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGDBResponse.hasMoreResults_p.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CDFF64()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGDBResponse.lastIntent.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE0008()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGDBResponse.perfMetrics.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE00AC()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGDBResponse.nextStart.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE00FC()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGDBResponse.totalResultsCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE014C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGDBResponse.intent.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE0268()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGDBResponse.fullCardURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE0344()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGDBResponse.geoEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE06B8()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_DebugInfo.code.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE06E4()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_DebugInfo.description_p.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE0710()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_DebugInfo.messages.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE073C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_DebugInfo.pattern.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE0768()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_DebugInfo.dbQueryPattern.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE0794()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_DebugInfo.encodedIntent.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE0810()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_DebugInfo.queryEntities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE083C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_DebugInfo.fedPatterns.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE08E0()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_DebugInfo.canonResultID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE0988()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_DebugInfo.productionRules.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE09B4()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_DebugInfo.referEntityIdx.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE0A04()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_DebugInfo.encodedContext.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE0A30()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_DebugInfo.encodedIntentProto.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE0AAC()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_DebugInfo.algorithm.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE0AD8()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_DebugInfo.intentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE0B04()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9240, &qword_1B965A610);
    v7 = *(v2 + 28);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CE0BB4()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9240, &qword_1B965A610);
      v5 = *(v0 + 28);
    }

    v6 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1B8CE0C70()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE0CD4()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 20));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CE0D34()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE0D98()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 24));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CE0DF8()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = v2[7];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD50, &qword_1B965A650);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[8];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD58, &qword_1B965A658);
      OUTLINED_FUNCTION_128_1(v10);
      if (*(v11 + 84) == v0)
      {
        v7 = v2[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD60, &unk_1B965A660);
        v7 = v2[10];
      }
    }
  }

  v12 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v12, v13, v14);
}

void sub_1B8CE0F40()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = v0[7];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD50, &qword_1B965A650);
      OUTLINED_FUNCTION_128_1(v6);
      if (*(v7 + 84) == v1)
      {
        v5 = v0[8];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD58, &qword_1B965A658);
        OUTLINED_FUNCTION_128_1(v8);
        if (*(v9 + 84) == v1)
        {
          v5 = v0[9];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABBD60, &unk_1B965A660);
          v5 = v0[10];
        }
      }
    }

    v10 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1B8CE1084()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9A78, &qword_1B96507A0);
    v7 = *(v2 + 24);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CE1134()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9A78, &qword_1B96507A0);
      v7 = *(v2 + 24);
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8CE11E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1B8CE1238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B8CE1290()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 44));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE12F4()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 44));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CE1354()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE13B8()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 20));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CE141C()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 24));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 48));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE1480()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 48));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CE14E4()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE1548()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 32));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CE15A8(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    v3 = *(a1 + 8) >> 60;
    if (((4 * v3) & 0xC) != 0)
    {
      return 16 - ((4 * v3) & 0xC | (v3 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v5 = OUTLINED_FUNCTION_699(*(v2 + 56));

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void *sub_1B8CE162C(void *result, uint64_t a2, int a3)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_249_0();
    v7 = v5 + *(v3 + 56);

    return __swift_storeEnumTagSinglePayload(v7, a2, a2, v6);
  }

  return result;
}

uint64_t sub_1B8CE16F8()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE175C()
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
    v5 = OUTLINED_FUNCTION_699(*(v4 + 36));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8CE17CC()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE1830()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8CE19C0()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGEventLogMessage.provider.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE19F4()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGEventLogMessage.speakableAnswer.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE1A88()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGEventLogMessage.parentIds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE1AB4()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGEventLogMessage.childIds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE1AE0()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGEventLogMessage.fbr.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE1B0C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGEventLogMessage.valueTypeMapListProto.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE1B38()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGEventLogMessage.entitiesReceivedFromKg.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE1B64()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGEventLogMessage.entitiesSentToKg.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE1B90()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGEventLogMessage.lastIntentReceivedFromKg.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE1BBC()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGEventLogMessage.lastIntentSentToKg.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE1BE8()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGEventLogMessage.attributesRecognized.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE1C14()
{
  OUTLINED_FUNCTION_102();
  v0 = Kgqsapipb_KGEventLogMessage.partialResults.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE1C60()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGEventLogMessage.numberOfResults.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE1CB0()
{
  OUTLINED_FUNCTION_102();
  v0 = Kgqsapipb_KGEventLogMessage.grpcapi.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE1CFC()
{
  OUTLINED_FUNCTION_102();
  v0 = Kgqsapipb_KGEventLogMessage.successful.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE1D48()
{
  OUTLINED_FUNCTION_102();
  v0 = Kgqsapipb_KGEventLogMessage.noValueFound.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE1D94()
{
  OUTLINED_FUNCTION_102();
  v0 = Kgqsapipb_KGEventLogMessage.someValueFound.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE1DE0()
{
  OUTLINED_FUNCTION_102();
  v0 = Kgqsapipb_KGEventLogMessage.pireneResult.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE1E2C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGEventLogMessage.newsResults.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE1E58()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGEventLogMessage.kgDebugList.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE1E84()
{
  OUTLINED_FUNCTION_102();
  v0 = Kgqsapipb_KGEventLogMessage.isDisputedResponse.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE1F38()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGEventLogMessage.catID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE1F64()
{
  OUTLINED_FUNCTION_102();
  v0 = Kgqsapipb_KGEventLogMessage.isWebExtractedFact.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE2000()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_KGEventLogMessage.eventType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE202C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_1B8CE20C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8CE217C()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE21E0()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 20));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CE2244()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE22A8()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 36));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CE230C()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 52));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE2370()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 52));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CE23F4@<X0>(uint64_t *a1@<X8>)
{
  result = Kgqsapipb_Entity.Domain.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8CE2684()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Entity.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE26B8()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Entity.locale.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE26E4()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Entity.label.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE2710()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Entity.enlabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE273C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Entity.description_p.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE2768()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Entity.claims.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE2794()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Entity.labels.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE27C0()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Entity.descriptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE27EC()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Entity.siteLinks.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE2818()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Entity.aliases.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE2844()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Entity.shortAbstract.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE2870()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Entity.primary.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE289C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Entity.secondary.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE28C8()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Entity.localizations.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE28F4()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Entity.timestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE2944()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Entity.indexedTimestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE2994()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Entity.claimMap.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE2A28()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE2A54()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.epid.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE2A80()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.entityID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE2AAC()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.order.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE2B48()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.propID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE2B74()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.propName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE2BA0()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.propEnName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE2BCC()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.propType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE2BF8()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.propTypeCode.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE2C44()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.valueType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE2C70()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.valueTypeCode.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE2CBC()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.value.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE2CE8()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.localizedValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE2D14()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.valuePrecision.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE2D60()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.valueLocales.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE2D8C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.qualifiers.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE2DB8()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.qualifierInfo.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE2DE4()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.attention.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE2E10()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.references.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE2E3C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Claim.geoContainers.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3000()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Name.displayName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE302C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Name.spokenName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3058()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Name.orderedPronunciation.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3154()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Name.qualifiers.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3180()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Localizations.locale.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE31AC()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Localizations.primary.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE31D8()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Localizations.secondary.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3204()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Localizations.descriptions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3230()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Localizations.shortAbstract.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE32D4()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Localizations.secondaryName.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3380()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE33E4()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 20));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CE3448()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9230, &qword_1B965DC80);
    v7 = *(v2 + 32);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CE34F8()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    v5 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v4)
    {
      v7 = *(v3 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9230, &qword_1B965DC80);
      v7 = *(v3 + 32);
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8CE35C0()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 44));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE3624()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 44));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CE3684()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 68));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE36E8()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 68));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CE3950()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE397C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE39A8()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.redirects.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE39D4()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.disambiguations.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3A00()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.titleCleaned.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3A2C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.redirectsCleaned.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3A58()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.disambiguationsCleaned.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3A84()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.anchorText.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3AB0()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.alternativeReadings.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3ADC()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.shortAbstract.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3B08()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.birthDate.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3B34()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.deathDate.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3B60()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.birthPlaces.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3B8C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.deathPlaces.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3BB8()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.spouses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3BE4()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.children.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3C10()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.parents.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3C3C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.height.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3C68()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.homepageurl.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3C94()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.wikipageurl.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3CC0()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.thumbnailurl.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3CEC()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.foundingDate.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3D18()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.governingBody.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3D44()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.length.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3D70()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.width.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3D9C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.nationalAnthem.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3DC8()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.mottos.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3DF4()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.population.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3E20()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.currency.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3E4C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.capitalcity.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3E78()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.latitude.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3EA4()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.longitude.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3ED0()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.nearestCity.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3EFC()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.numberOfVisitors.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3F28()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.visitYear.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3F54()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.largestCity.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE3F80()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.languages.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3FAC()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.pageviews.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE3FF8()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.index.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE4048()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.isDisputedTerritory.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CE409C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.englishLanguageLink.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE40C8()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.dbpediaClasses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE40F4()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.wikipediaCategories.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE4120()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.titleQualifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE414C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.locale.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE4178()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.modtimeSecs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE41C4()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.indexedTimestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE4210()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.runtime.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE423C()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.releaseDate.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE4268()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.ingredient.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE4294()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.numberOfEmployees.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE42C0()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.numberOfStudents.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE42EC()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.date.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE4318()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.revID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE4364()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.thumbNail3XURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE4390()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.thumbNailNanoURLN27.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE43BC()
{
  OUTLINED_FUNCTION_102();
  result = Kgqsapipb_Thing.thumbNailNanoURLN28.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE43E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_1B8CE4484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8CE452C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 8));
  }

  v7 = sub_1B964C2B0();
  v8 = a1 + *(a3 + 48);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1B8CE45A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 48);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8CE4708(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 16));
  }

  sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_17_7();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CE477C()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    sub_1B964C2B0();
    v3 = OUTLINED_FUNCTION_17_7();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_1B8CE47E8(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 40));
  }

  sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_17_7();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CE485C()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 40) = (v0 - 1);
  }

  else
  {
    sub_1B964C2B0();
    v3 = OUTLINED_FUNCTION_17_7();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_1B8CE4958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 32);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9270, &unk_1B9660450);
      v10 = *(a3 + 36);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1B8CE4A30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 32);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9270, &unk_1B9660450);
      v10 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8CE4B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1B8CE4B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B8CE4C7C()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.mapsData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE4CA8()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.resultData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE4CD4()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.multiResult.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CE4D28()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.placeCardURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE4D54()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.uid.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE4DA4()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE4DD0()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.queryCompletion.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE4DFC()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.thoroughfare.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE4E28()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.address.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE4EA4()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.ratingCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE4EF4()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.mapsDataType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE4F20()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.category.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE4F4C()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.subcategory.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE4F78()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.openingHours.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE4FA4()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.price.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE4FD0()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.distance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE4FFC()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.resultType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE5028()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.telephone.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE5054()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.photos.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE5080()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.url.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE528C()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.boundaryAnnotation.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE5330()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.miniMapsData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE535C()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.imessageURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE5388()
{
  OUTLINED_FUNCTION_102();
  result = Mapspb_LocalSearchBusiness.imessageID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE53B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_1B8CE5450(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8CE54F8()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 56));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE555C()
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
    v5 = OUTLINED_FUNCTION_699(*(v4 + 56));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8CE55CC()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE5630()
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
    v5 = OUTLINED_FUNCTION_699(*(v4 + 32));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8CE56A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1B8CE56FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B8CE5760@<X0>(uint64_t *a1@<X8>)
{
  result = Moviespb_Trailer.FormatType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8CE587C()
{
  OUTLINED_FUNCTION_102();
  result = Moviespb_Availability.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE58A8()
{
  OUTLINED_FUNCTION_102();
  result = Moviespb_Availability.startDate.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE58F8()
{
  OUTLINED_FUNCTION_102();
  result = Moviespb_Availability.endDate.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE59A0()
{
  OUTLINED_FUNCTION_102();
  result = Moviespb_Availability.webPunchoutOpen.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE59CC()
{
  OUTLINED_FUNCTION_102();
  result = Moviespb_Availability.webPunchoutPlay.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE59F8()
{
  OUTLINED_FUNCTION_102();
  result = Moviespb_Availability.appPunchoutOpen.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE5A24()
{
  OUTLINED_FUNCTION_102();
  result = Moviespb_Availability.appPunchoutPlay.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE5A50()
{
  OUTLINED_FUNCTION_102();
  result = Moviespb_Availability.canonicalAdamID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE5A7C()
{
  OUTLINED_FUNCTION_102();
  result = Moviespb_Availability.externalID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE5B00()
{
  OUTLINED_FUNCTION_102();
  result = Moviespb_Availability.searchBrandID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE5C8C()
{
  OUTLINED_FUNCTION_102();
  result = Moviespb_Availability.isMccormickProvider.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CE5D38()
{
  OUTLINED_FUNCTION_102();
  result = Moviespb_Availability.isStereoContent.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CE5D8C()
{
  OUTLINED_FUNCTION_102();
  result = Moviespb_Availability.isImmersiveContent.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CE5E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_1B8CE5EA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_231();

    return __swift_storeEnumTagSinglePayload(v11, a2, a2, v12);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8CE5F48()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 24));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE5FAC()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CE6010()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE6074()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 32));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CE60D8()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 60));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE613C()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 60));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CE619C()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 24));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
    v7 = *(v2 + 28);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CE624C()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
      v9 = *(v5 + 28);
    }

    v10 = OUTLINED_FUNCTION_61_0(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1B8CE6308()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE636C()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 36));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CE63CC()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 32));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CE6430()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 32));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CE64B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 32);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B8CE6538(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8CE65E0()
{
  OUTLINED_FUNCTION_691();
  if (v1 == v3)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  v5 = v2;
  if (*(*(sub_1B964C2B0() - 8) + 84) == v1)
  {
    v6 = *(v5 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
    v6 = *(v5 + 28);
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8CE66A4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v4 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v5;
    if (*(*(sub_1B964C2B0() - 8) + 84) == v4)
    {
      v8 = *(v7 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
      v8 = *(v7 + 28);
    }

    v9 = OUTLINED_FUNCTION_699(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, a2, v11);
  }
}

uint64_t sub_1B8CE6770()
{
  OUTLINED_FUNCTION_691();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 32));
  }

  v5 = v1;
  sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_699(*(v5 + 28));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1B8CE67E4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v5 == v6)
  {
    *(v2 + 32) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1B964C2B0();
    v8 = OUTLINED_FUNCTION_699(*(v7 + 28));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1B8CE6878(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 44);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B8CE6900(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 44);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8CE69D8()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MediaSnippet.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE6A04()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MediaSnippet.storefrontID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE6A54()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MediaSnippet.languageID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE6AA4()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MediaSnippet.adamID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE6AD0()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MediaSnippet.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE6B04()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MediaSnippet.artistName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE6B30()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MediaSnippet.description_p.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE6B5C()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MediaSnippet.url.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE6B88()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MediaSnippet.releaseDate.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE6BB4()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MediaSnippet.genreNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE6C58()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MediaSnippet.offers.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE6D74()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MediaSnippet.children.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE6DA0()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MediaSnippet.origin.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE6DCC()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MediaSnippet.bornOrFormed.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE6DF8()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MediaSnippet.contentRatingsBySystem.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE6E24()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MediaSnippet.parentName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE6E50()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MediaSnippet.siribaseID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE6E7C()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MediaSnippet.ampMusicResult.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CE6ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1B8CE6F78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8CE70CC()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE70F8()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.canonicalID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE7124()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.titles.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE7150()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.genres.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE717C()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.description_p.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE71A8()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.actors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE71D4()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.directors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE7200()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.releaseDateSecs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE7250()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.thumbnail.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE727C()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.runtimeInMinutes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE72C8()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.availabilities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE72F4()
{
  OUTLINED_FUNCTION_102();
  v0 = Snippetpb_MoviesSnippet.isAppleOriginal.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE7340()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.studios.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE7394()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.trailers.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE73C0()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.rottenTomatoReviews.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE73EC()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.tomatoMeter.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE7438()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.freshReviewCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE7484()
{
  OUTLINED_FUNCTION_102();
  v0 = Snippetpb_MoviesSnippet.certifiedFresh.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE74D0()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.rottenReviewCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE751C()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.rottenTomatoURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE7548()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.theaters.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE7574()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.fandangoID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE75A0()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.fandangoName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE75CC()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.numScreenings.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE7618()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.coverArt.getter();
  *v0 = result;
  return result;
}