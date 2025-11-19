uint64_t sub_1D87D3728(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore16ImageSearchStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D87D37B4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 80))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D87D3808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D87D3870(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 72) = 0;
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

uint64_t type metadata accessor for ImageSearchProductAd()
{
  result = qword_1ECA63618;
  if (!qword_1ECA63618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D87D3958(uint64_t a1)
{
  *(a1 + 8) = sub_1D87D4148(&qword_1ECA635A0, type metadata accessor for ImageSearchProductAd);
  result = sub_1D87D4148(&qword_1ECA635A8, type metadata accessor for ImageSearchProductAd);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D87D39DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D87D3A4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return MEMORY[0x1EEE68E80](a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return MEMORY[0x1EEE68E80](a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return MEMORY[0x1EEE68E80](a1, a2);
}

uint64_t sub_1D87D3A98(uint64_t a1, unint64_t a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D8B151E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0E4538 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EE0E4540);
  (*(v5 + 16))(v7, v8, v4);
  v24 = 0;
  v9 = sub_1D8B15A10();
  v10 = sysctlbyname((v9 + 32), 0, &v24, 0, 0);

  if (v10)
  {

    v11 = sub_1D8B151C0();
    v12 = sub_1D8B16210();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25[0] = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_1D89AC714(a1, a2, v25);
      *(v13 + 12) = 1024;
      *(v13 + 14) = v10;
      v15 = "sysctlbyname failed reading size of %s, return code: %d";
LABEL_13:
      _os_log_impl(&dword_1D8783000, v11, v12, v15, v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1DA721330](v14, -1, -1);
      MEMORY[0x1DA721330](v13, -1, -1);
    }
  }

  else
  {
    v16 = v24;
    if ((v24 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    if (v24)
    {
      v17 = sub_1D8B15D60();
      *(v17 + 16) = v16;
      bzero((v17 + 32), v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = sub_1D8B15A10();
    v19 = sysctlbyname((v18 + 32), (v17 + 32), &v24, 0, 0);

    if (!v19)
    {
      v21 = sub_1D87D3A4C(v17, v20);

      goto LABEL_15;
    }

    v11 = sub_1D8B151C0();
    v12 = sub_1D8B16210();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25[0] = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_1D89AC714(a1, a2, v25);
      *(v13 + 12) = 1024;
      *(v13 + 14) = v19;
      v15 = "sysctlbyname failed to receive data for %s, return code: %d";
      goto LABEL_13;
    }
  }

  v21 = 0;
LABEL_15:
  (*(v5 + 8))(v7, v4);
  return v21;
}

uint64_t sub_1D87D3E4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D87D3EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D87D3F10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D87D3F78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D87D4148(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D87D4190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lens_ProductAd(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1D878941C);
}

uint64_t sub_1D87D41E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Lens_ProductAd(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1D87894D8);
}

uint64_t sub_1D87D4258(uint64_t a1)
{
  result = type metadata accessor for Lens_ProductAd(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

double ActionExecutionState.debugEncodable.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D8B15030();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ResultLookupState(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionExecutionState(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D87DC694(v2, v13, type metadata accessor for ActionExecutionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v16 = *(v5 + 32);
      v16(v7, v13, v4);
      *(a1 + 24) = v4;
      *(a1 + 32) = sub_1D87DC750(&qword_1ECA63628, MEMORY[0x1E69DFBD0]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v16(boxed_opaque_existential_1, v7, v4);
    }

    else
    {
      v18 = *v13;
      v19 = v13[1];
      v20 = MEMORY[0x1E69E6160];
      *(a1 + 24) = MEMORY[0x1E69E6158];
      *(a1 + 32) = v20;
      *a1 = v18;
      *(a1 + 8) = v19;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    sub_1D87D4864(v13, type metadata accessor for ActionExecutionState);
  }

  else
  {
    sub_1D87DC8C4(v13, v10, type metadata accessor for ResultLookupState);
    sub_1D87D4650(&v21);
    sub_1D87D4864(v10, type metadata accessor for ResultLookupState);
    if (v22)
    {
      sub_1D8788F40(&v21, v23);
      sub_1D8788F40(v23, a1);
    }

    else
    {
      sub_1D87A14E4(&v21, &qword_1ECA63630);
      *(a1 + 32) = 0;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  return result;
}

uint64_t sub_1D87D4650@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EventLookupState(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResultLookupState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87DC694(v2, v9, type metadata accessor for ResultLookupState);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v11 = *v9;
    if (v9[48])
    {
      if (v9[48] == 1)
      {
        result = sub_1D87DE224(*v9, *(v9 + 1), *(v9 + 2), *(v9 + 3), *(v9 + 4), *(v9 + 5), 1);
      }

      goto LABEL_8;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA637A0);
    v14 = sub_1D87DE334();
    *&v12 = v11;
  }

  else
  {
    if (result != 8)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return sub_1D87D4864(v9, type metadata accessor for ResultLookupState);
    }

    sub_1D87DC8C4(v9, v6, type metadata accessor for EventLookupState);
    sub_1D87D48D0(&v12);
    sub_1D87D4864(v6, type metadata accessor for EventLookupState);
    if (!v13)
    {
      result = sub_1D87A14E4(&v12, &qword_1ECA63630);
LABEL_8:
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }
  }

  sub_1D8788F40(&v12, v15);
  return sub_1D8788F40(v15, a1);
}

uint64_t sub_1D87D4864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D87D48D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EventLookupState.EventLookupResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EventLookupState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87DC694(v2, v9, type metadata accessor for EventLookupState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 7)
  {
    if (EnumCaseMultiPayload)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      v17 = type metadata accessor for EventLookupState;
      v18 = v9;
    }

    else
    {
      sub_1D87DC8C4(v9, v6, type metadata accessor for EventLookupState.EventLookupResult);
      *(a1 + 24) = type metadata accessor for EventLookupItem();
      *(a1 + 32) = sub_1D87DC750(&qword_1ECA637C0, type metadata accessor for EventLookupItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      sub_1D87DC694(v6, boxed_opaque_existential_1, type metadata accessor for EventLookupItem);
      v17 = type metadata accessor for EventLookupState.EventLookupResult;
      v18 = v6;
    }

    return sub_1D87D4864(v18, v17);
  }

  else
  {
    v12 = *(v9 + 4);
    v11 = *(v9 + 5);
    v13 = *(v9 + 1);
    v19 = *v9;
    v20 = v13;
    *(a1 + 24) = &type metadata for GenericError;
    *(a1 + 32) = sub_1D87DE3E8();
    result = swift_allocObject();
    *a1 = result;
    v15 = v20;
    *(result + 16) = v19;
    *(result + 32) = v15;
    *(result + 48) = v12;
    *(result + 56) = v11;
  }

  return result;
}

unint64_t LookupState.description.getter()
{
  v1 = type metadata accessor for VisualIntelligenceLookupResult(0);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 48))
  {
    v7 = v0[1];
    v6 = v0[2];
    v8 = v0[3];
    if (*(v0 + 48) == 1)
    {
      v13 = 0;
      v14 = 0xE000000000000000;
      sub_1D8B16720();
      MEMORY[0x1DA71EFA0](0xD000000000000026, 0x80000001D8B418F0);
      v11 = v5;
      v12 = v7;

      MEMORY[0x1DA71EFA0](10272, 0xE200000000000000);
      MEMORY[0x1DA71EFA0](v6, v8);
      MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
      MEMORY[0x1DA71EFA0](v11, v12);

      return v13;
    }

    else if (v6 | v7 | v5 | v8 | v0[5] | v0[4])
    {
      return 0xD000000000000032;
    }

    else
    {
      return 0xD000000000000027;
    }
  }

  else if (*(v5 + 16))
  {
    sub_1D87DC694(v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualIntelligenceLookupResult);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1D8B16720();
    MEMORY[0x1DA71EFA0](0xD000000000000036, 0x80000001D8B41960);
    sub_1D8B168A0();
    v10 = v13;
    sub_1D87D4864(v4, type metadata accessor for VisualIntelligenceLookupResult);
    return v10;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t LookupState.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for VisualIntelligenceLookupResult(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v1 + 48))
  {
    v8 = v1[5];
    if (*(v1 + 48) == 1)
    {
      MEMORY[0x1DA720210](3);
      sub_1D8B15A60();
      sub_1D8B15A60();
      if (v8)
      {
        sub_1D8B16D40();

        return sub_1D8B15A60();
      }

      else
      {
        return sub_1D8B16D40();
      }
    }

    else
    {
      if (v1[2] | v1[1] | v7 | v1[3] | v1[4] | v8)
      {
        v13 = 2;
      }

      else
      {
        v13 = 0;
      }

      return MEMORY[0x1DA720210](v13);
    }
  }

  else
  {
    MEMORY[0x1DA720210](1);
    result = MEMORY[0x1DA720210](*(v7 + 16));
    v10 = *(v7 + 16);
    if (v10)
    {
      v11 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v12 = *(v4 + 72);
      do
      {
        sub_1D87DC694(v11, v6, type metadata accessor for VisualIntelligenceLookupResult);
        VisualIntelligenceLookupResult.hash(into:)(a1);
        result = sub_1D87D4864(v6, type metadata accessor for VisualIntelligenceLookupResult);
        v11 += v12;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t LookupState.hashValue.getter()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_1D8B16D20();
  LookupState.hash(into:)(v4);
  return sub_1D8B16D80();
}

uint64_t sub_1D87D5010()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_1D8B16D20();
  LookupState.hash(into:)(v4);
  return sub_1D8B16D80();
}

uint64_t sub_1D87D5070()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_1D8B16D20();
  LookupState.hash(into:)(v4);
  return sub_1D8B16D80();
}

uint64_t BarCodeLookupState.BarCodeLookupResult.detection.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t BarCodeLookupState.BarCodeLookupResult.description.getter()
{
  v1 = 7104878;
  v2 = [*(v0 + 8) detectedCode];
  if (v2 && (v3 = v2, v4 = [v2 mrcObject], v3, v4) && (v5 = objc_msgSend(v4, sel_stringValue), v4, v5))
  {
    v1 = sub_1D8B15970();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  MEMORY[0x1DA71EFA0](v1, v7);

  return 0x203A65646F63;
}

uint64_t BarCodeLookupState.BarCodeLookupResult.hashValue.getter()
{
  sub_1D8B16D20();
  CVDetection.hash(into:)(v1);
  sub_1D8B16410();
  return sub_1D8B16D80();
}

uint64_t sub_1D87D5338()
{
  sub_1D8B16D20();
  CVDetection.hash(into:)(v1);
  sub_1D8B16410();
  return sub_1D8B16D80();
}

uint64_t sub_1D87D53E4()
{
  sub_1D8B16D20();
  CVDetection.hash(into:)(v1);
  sub_1D8B16410();
  return sub_1D8B16D80();
}

unint64_t BarCodeLookupState.description.getter()
{
  v1 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return 0xD00000000000001ALL;
    }

    v2 = *v0;
    sub_1D8B16720();

    v11 = 0xD00000000000001ALL;
    MEMORY[0x1DA71EFA0](v2, v1);
  }

  else
  {
    v3 = 7104878;
    sub_1D8B16720();

    v11 = 0xD00000000000001DLL;
    v4 = [v1 detectedCode];
    if (v4 && (v5 = v4, v6 = [v4 mrcObject], v5, v6) && (v7 = objc_msgSend(v6, sel_stringValue), v6, v7))
    {
      v3 = sub_1D8B15970();
      v9 = v8;
    }

    else
    {
      v9 = 0xE300000000000000;
    }

    MEMORY[0x1DA71EFA0](v3, v9);

    MEMORY[0x1DA71EFA0](0x203A65646F63, 0xE600000000000000);
  }

  return v11;
}

uint64_t BarCodeLookupState.hash(into:)(__int128 *a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1DA720210](2);

      return sub_1D8B15A60();
    }

    else
    {
      return MEMORY[0x1DA720210](0);
    }
  }

  else
  {
    MEMORY[0x1DA720210](1);
    CVDetection.hash(into:)(a1);
    return sub_1D8B16410();
  }
}

uint64_t BarCodeLookupState.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1D8B16D20();
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x1DA720210](2);
      sub_1D8B15A60();
    }

    else
    {
      MEMORY[0x1DA720210](0);
    }
  }

  else
  {
    MEMORY[0x1DA720210](1);
    CVDetection.hash(into:)(v3);
    sub_1D8B16410();
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D87D5768(__int128 *a1)
{
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1DA720210](2);

      return sub_1D8B15A60();
    }

    else
    {
      return MEMORY[0x1DA720210](0);
    }
  }

  else
  {
    MEMORY[0x1DA720210](1);
    CVDetection.hash(into:)(a1);
    return sub_1D8B16410();
  }
}

uint64_t sub_1D87D5820()
{
  v1 = *(v0 + 16);
  sub_1D8B16D20();
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x1DA720210](2);
      sub_1D8B15A60();
    }

    else
    {
      MEMORY[0x1DA720210](0);
    }
  }

  else
  {
    MEMORY[0x1DA720210](1);
    CVDetection.hash(into:)(v3);
    sub_1D8B16410();
  }

  return sub_1D8B16D80();
}

uint64_t AcmeState.hash(into:)()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    MEMORY[0x1DA720210](1);
    v3 = v1;
    return MEMORY[0x1DA720210](v3);
  }

  if (*(v0 + 16) != 1)
  {
    v3 = 0;
    return MEMORY[0x1DA720210](v3);
  }

  MEMORY[0x1DA720210](2);

  return sub_1D8B15A60();
}

uint64_t AcmeState.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1D8B16D20();
  if (!v2)
  {
    MEMORY[0x1DA720210](1);
    v3 = v1;
LABEL_6:
    MEMORY[0x1DA720210](v3);
    return sub_1D8B16D80();
  }

  if (v2 != 1)
  {
    v3 = 0;
    goto LABEL_6;
  }

  MEMORY[0x1DA720210](2);
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t sub_1D87D5A00()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1D8B16D20();
  if (!v2)
  {
    MEMORY[0x1DA720210](1);
    v3 = v1;
LABEL_6:
    MEMORY[0x1DA720210](v3);
    return sub_1D8B16D80();
  }

  if (v2 != 1)
  {
    v3 = 0;
    goto LABEL_6;
  }

  MEMORY[0x1DA720210](2);
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t sub_1D87D5A98()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    MEMORY[0x1DA720210](1);
    v3 = v1;
    return MEMORY[0x1DA720210](v3);
  }

  if (*(v0 + 16) != 1)
  {
    v3 = 0;
    return MEMORY[0x1DA720210](v3);
  }

  MEMORY[0x1DA720210](2);

  return sub_1D8B15A60();
}

uint64_t sub_1D87D5B30()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_1D8B16D20();
  if (!v2)
  {
    MEMORY[0x1DA720210](1);
    v3 = v1;
LABEL_6:
    MEMORY[0x1DA720210](v3);
    return sub_1D8B16D80();
  }

  if (v2 != 1)
  {
    v3 = 0;
    goto LABEL_6;
  }

  MEMORY[0x1DA720210](2);
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

unint64_t SummarizationState.IncompleteReason.description.getter()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t SummarizationState.IncompleteReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

unint64_t sub_1D87D5CBC()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

unint64_t SummarizationState.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4) >> 62;
  if (v2)
  {
    if (v2 == 1)
    {
      sub_1D8B16720();
      MEMORY[0x1DA71EFA0](0xD000000000000026, 0x80000001D8B41AA0);
      sub_1D8B168A0();
      return 0;
    }

    else
    {
      return 0xD00000000000001BLL;
    }
  }

  else
  {
    sub_1D8B16720();

    if (v1)
    {
      v4 = 0xD00000000000001CLL;
    }

    else
    {
      v4 = 0xD00000000000001BLL;
    }

    if (v1)
    {
      v5 = "BarCodeLookupState started";
    }

    else
    {
      v5 = "redirect to external service";
    }

    MEMORY[0x1DA71EFA0](v4, v5 | 0x8000000000000000);

    return 0xD00000000000002CLL;
  }
}

uint64_t SummarizationState.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 4) >> 62;
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1DA720210](2);
      return TextSummarizationResult.hash(into:)();
    }

    v4 = 0;
  }

  else
  {
    MEMORY[0x1DA720210](1);
    v4 = v1 & 1;
  }

  return MEMORY[0x1DA720210](v4);
}

uint64_t SummarizationState.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D8B16D20();
  if (!(v2 >> 62))
  {
    MEMORY[0x1DA720210](1);
    v3 = v1 & 1;
LABEL_6:
    MEMORY[0x1DA720210](v3);
    return sub_1D8B16D80();
  }

  if (v2 >> 62 != 1)
  {
    v3 = 0;
    goto LABEL_6;
  }

  MEMORY[0x1DA720210](2);
  TextSummarizationResult.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D87D60BC()
{
  v1 = *v0;
  v2 = *(v0 + 4) >> 62;
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1DA720210](2);
      return TextSummarizationResult.hash(into:)();
    }

    v4 = 0;
  }

  else
  {
    MEMORY[0x1DA720210](1);
    v4 = v1 & 1;
  }

  return MEMORY[0x1DA720210](v4);
}

uint64_t sub_1D87D61B8()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D8B16D20();
  if (!(v2 >> 62))
  {
    MEMORY[0x1DA720210](1);
    v3 = v1 & 1;
LABEL_6:
    MEMORY[0x1DA720210](v3);
    return sub_1D8B16D80();
  }

  if (v2 >> 62 != 1)
  {
    v3 = 0;
    goto LABEL_6;
  }

  MEMORY[0x1DA720210](2);
  TextSummarizationResult.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t ReadAloudState.ReadAloudResult.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReadAloudState.ReadAloudResult.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReadAloudState.ReadAloudResult.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ReadAloudState.ReadAloudResult.text.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ReadAloudState.ReadAloudResult.languageTag.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ReadAloudState.ReadAloudResult.languageTag.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1D87D64B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1954047348;
  if (v2 != 1)
  {
    v4 = 0x65676175676E616CLL;
    v3 = 0xEB00000000676154;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656C746974;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1954047348;
  if (*a2 != 1)
  {
    v8 = 0x65676175676E616CLL;
    v7 = 0xEB00000000676154;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C746974;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D8B16BA0();
  }

  return v11 & 1;
}

uint64_t sub_1D87D65B4()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D87D6654()
{
  sub_1D8B15A60();
}

uint64_t sub_1D87D66E0()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D87D677C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D87DDDA4();
  *a1 = result;
  return result;
}

void sub_1D87D67AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1954047348;
  if (v2 != 1)
  {
    v5 = 0x65676175676E616CLL;
    v4 = 0xEB00000000676154;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C746974;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D87D6808()
{
  v1 = 1954047348;
  if (*v0 != 1)
  {
    v1 = 0x65676175676E616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1D87D6860@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D87DDDA4();
  *a1 = result;
  return result;
}

uint64_t sub_1D87D6888(uint64_t a1)
{
  v2 = sub_1D87DC6FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87D68C4(uint64_t a1)
{
  v2 = sub_1D87DC6FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReadAloudState.ReadAloudResult.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1D8B16720();

  MEMORY[0x1DA71EFA0](v1, v2);
  MEMORY[0x1DA71EFA0](0x203A7478657420, 0xE700000000000000);
  MEMORY[0x1DA71EFA0](v3, v4);
  MEMORY[0x1DA71EFA0](0x676175676E616C20, 0xEE00203A67615465);
  MEMORY[0x1DA71EFA0](v5, v6);
  return 0x203A656C746974;
}

uint64_t ReadAloudState.ReadAloudResult.init(title:text:languageTag:displayImage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t ReadAloudState.ReadAloudResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63638);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D87DC6FC();
  sub_1D8B16DD0();
  v14 = 0;
  v9 = v11[5];
  sub_1D8B16A90();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1D8B16A90();
  v12 = 2;
  sub_1D8B16A90();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ReadAloudState.ReadAloudResult.hash(into:)()
{
  sub_1D8B15A60();
  sub_1D8B15A60();
  sub_1D8B15A60();
  type metadata accessor for CGImage(0);
  sub_1D87DC750(&qword_1ECA63648, type metadata accessor for CGImage);
  return sub_1D8B13D70();
}

uint64_t ReadAloudState.ReadAloudResult.hashValue.getter()
{
  sub_1D8B16D20();
  sub_1D87DC798();
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

uint64_t sub_1D87D6D10()
{
  sub_1D8B16D20();
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

uint64_t sub_1D87D6D88()
{
  sub_1D8B15A60();
  sub_1D8B15A60();
  sub_1D8B15A60();
  type metadata accessor for CGImage(0);
  sub_1D87DC750(&qword_1ECA63648, type metadata accessor for CGImage);
  return sub_1D8B13D70();
}

uint64_t sub_1D87D6E3C()
{
  sub_1D8B16D20();
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

unint64_t ReadAloudState.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (!*(v0 + 56))
  {
    v4 = v0[4];
    v3 = v0[5];
    v6 = v0[2];
    v5 = v0[3];
    sub_1D8B16720();

    v8 = 0xD000000000000019;
    sub_1D8B16720();

    MEMORY[0x1DA71EFA0](v1, v2);
    MEMORY[0x1DA71EFA0](0x203A7478657420, 0xE700000000000000);
    MEMORY[0x1DA71EFA0](v6, v5);
    MEMORY[0x1DA71EFA0](0x676175676E616C20, 0xEE00203A67615465);
    MEMORY[0x1DA71EFA0](v4, v3);
    MEMORY[0x1DA71EFA0](0x203A656C746974, 0xE700000000000000);

    return v8;
  }

  if (*(v0 + 56) == 1)
  {
    sub_1D8B16720();

    v8 = 0xD000000000000016;
    MEMORY[0x1DA71EFA0](v1, v2);
    return v8;
  }

  return 0xD000000000000016;
}

uint64_t ReadAloudState.hash(into:)()
{
  if (*(v0 + 56))
  {
    if (*(v0 + 56) == 1)
    {
      MEMORY[0x1DA720210](2);

      return sub_1D8B15A60();
    }

    else
    {
      return MEMORY[0x1DA720210](0);
    }
  }

  else
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B15A60();
    sub_1D8B15A60();
    sub_1D8B15A60();
    type metadata accessor for CGImage(0);
    sub_1D87DC750(&qword_1ECA63648, type metadata accessor for CGImage);
    return sub_1D8B13D70();
  }
}

uint64_t sub_1D87D7260()
{
  if (*(v0 + 56))
  {
    if (*(v0 + 56) == 1)
    {
      MEMORY[0x1DA720210](2);

      return sub_1D8B15A60();
    }

    else
    {
      return MEMORY[0x1DA720210](0);
    }
  }

  else
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B15A60();
    sub_1D8B15A60();
    sub_1D8B15A60();
    type metadata accessor for CGImage(0);
    sub_1D87DC750(&qword_1ECA63648, type metadata accessor for CGImage);
    return sub_1D8B13D70();
  }
}

uint64_t sub_1D87D73A4()
{
  v1 = *(v0 + 56);
  sub_1D8B16D20();
  if (v1)
  {
    if (v1 == 1)
    {
      MEMORY[0x1DA720210](2);
      sub_1D8B15A60();
    }

    else
    {
      MEMORY[0x1DA720210](0);
    }
  }

  else
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B15A60();
    sub_1D8B15A60();
    sub_1D8B15A60();
    type metadata accessor for CGImage(0);
    sub_1D87DC750(&qword_1ECA63648, type metadata accessor for CGImage);
    sub_1D8B13D70();
  }

  return sub_1D8B16D80();
}

id EventLookupState.EventLookupResult.image.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventLookupState.EventLookupResult(0) + 20));

  return v1;
}

void EventLookupState.EventLookupResult.image.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EventLookupState.EventLookupResult(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t EventLookupState.EventLookupResult.init(item:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D87DC8C4(a1, a3, type metadata accessor for EventLookupItem);
  result = type metadata accessor for EventLookupState.EventLookupResult(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t EventLookupState.EventLookupResult.description.getter()
{
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0x203A656C746974, 0xE700000000000000);
  MEMORY[0x1DA71EFA0](*v0, v0[1]);
  MEMORY[0x1DA71EFA0](0x6F697461636F6C20, 0xEB00000000203A6ELL);
  v1 = type metadata accessor for EventLookupItem();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63660);
  v2 = sub_1D8B159E0();
  MEMORY[0x1DA71EFA0](v2);

  MEMORY[0x1DA71EFA0](0x6144747261747320, 0xEC000000203A6574);
  sub_1D8B131D0();
  sub_1D87DC750(&qword_1ECA63668, MEMORY[0x1E6969530]);
  v3 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v3);

  MEMORY[0x1DA71EFA0](0x65746144646E6520, 0xEA0000000000203ALL);
  v4 = sub_1D8B16B50();
  MEMORY[0x1DA71EFA0](v4);

  MEMORY[0x1DA71EFA0](0x3A7961446C6C6120, 0xE900000000000020);
  if (*(v0 + *(v1 + 28)))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 28)))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1DA71EFA0](v5, v6);

  MEMORY[0x1DA71EFA0](0x203A7365746F6E20, 0xE800000000000000);

  v7 = sub_1D8B159E0();
  MEMORY[0x1DA71EFA0](v7);

  return 0;
}

uint64_t static EventLookupState.EventLookupResult.== infix(_:_:)(void *a1, void *a2)
{
  if ((_s22VisualIntelligenceCore15EventLookupItemV2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CGImage(0);
  type metadata accessor for EventLookupState.EventLookupResult(0);
  sub_1D87DC750(&qword_1ECA63648, type metadata accessor for CGImage);
  return sub_1D8B13D60() & 1;
}

uint64_t EventLookupState.EventLookupResult.hash(into:)()
{
  EventLookupItem.hash(into:)();
  type metadata accessor for EventLookupState.EventLookupResult(0);
  type metadata accessor for CGImage(0);
  sub_1D87DC750(&qword_1ECA63648, type metadata accessor for CGImage);
  return sub_1D8B13D70();
}

uint64_t EventLookupState.EventLookupResult.hashValue.getter()
{
  sub_1D8B16D20();
  type metadata accessor for EventLookupState.EventLookupResult(0);
  sub_1D87DC750(&qword_1ECA63670, type metadata accessor for EventLookupState.EventLookupResult);
  sub_1D8B157A0();
  return sub_1D8B16D80();
}

uint64_t sub_1D87D7A8C(void *a1, void *a2)
{
  if ((static EventLookupItem.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CGImage(0);
  sub_1D87DC750(&qword_1ECA63648, type metadata accessor for CGImage);
  return sub_1D8B13D60() & 1;
}

uint64_t sub_1D87D7B34()
{
  EventLookupItem.hash(into:)();
  type metadata accessor for CGImage(0);
  sub_1D87DC750(&qword_1ECA63648, type metadata accessor for CGImage);
  return sub_1D8B13D70();
}

unint64_t EventLookupState.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for EventLookupState.EventLookupResult(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EventLookupState(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D87DC694(v1, v7, type metadata accessor for EventLookupState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v10 = *v7;
      v9 = v7[1];
      v12 = v7[2];
      v11 = v7[3];
      v22 = 0;
      v23 = 0xE000000000000000;
      if (EnumCaseMultiPayload == 2)
      {
        sub_1D8B16720();
        v13 = "EventLookupState safety error: ";
        v18 = 0xD000000000000018;
      }

      else
      {
        sub_1D8B16720();
        v13 = " input safety error: ";
        v18 = 0xD00000000000001FLL;
      }

      goto LABEL_20;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_1D87DC8C4(v7, v4, type metadata accessor for EventLookupState.EventLookupResult);
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1D8B16720();

      v22 = 0xD000000000000020;
      v23 = 0x80000001D8B41CC0;
      v15 = EventLookupState.EventLookupResult.description.getter();
      MEMORY[0x1DA71EFA0](v15);

      v16 = v22;
      sub_1D87D4864(v4, type metadata accessor for EventLookupState.EventLookupResult);
      return v16;
    }

    v10 = *v7;
    v9 = v7[1];
    v12 = v7[2];
    v11 = v7[3];
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1D8B16720();
    v19 = "EventLookupState connectivity error: ";
LABEL_15:
    v13 = (v19 - 32);
    v14 = 5;
LABEL_16:
    v18 = v14 | 0xD000000000000020;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v10 = *v7;
      v9 = v7[1];
      v12 = v7[2];
      v11 = v7[3];
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1D8B16720();
      v13 = " guardrail out-of-date error: ";
      v18 = 0xD000000000000026;
      goto LABEL_20;
    }

    v10 = *v7;
    v9 = v7[1];
    v12 = v7[2];
    v11 = v7[3];
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1D8B16720();
    v19 = "EventLookupState input safety error: ";
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      return 0xD000000000000020;
    }

    v10 = *v7;
    v9 = v7[1];
    v12 = v7[2];
    v11 = v7[3];
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1D8B16720();
    v13 = "ReadAloudState started";
    v14 = 20;
    goto LABEL_16;
  }

  v10 = *v7;
  v9 = v7[1];
  v12 = v7[2];
  v11 = v7[3];
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1D8B16720();
  v13 = "to multiple errors: ";
  v18 = 0xD00000000000002ELL;
LABEL_20:
  MEMORY[0x1DA71EFA0](v18, v13 | 0x8000000000000000);
  v20 = v10;
  v21 = v9;

  MEMORY[0x1DA71EFA0](10272, 0xE200000000000000);
  MEMORY[0x1DA71EFA0](v12, v11);
  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  MEMORY[0x1DA71EFA0](v20, v21);

  return v22;
}

uint64_t EventLookupState.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for EventLookupState.EventLookupResult(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EventLookupState(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87DC694(v1, v7, type metadata accessor for EventLookupState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v9 = *(v7 + 5);
      if (EnumCaseMultiPayload == 2)
      {
        v10 = 3;
      }

      else
      {
        v10 = 4;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1D87DC8C4(v7, v4, type metadata accessor for EventLookupState.EventLookupResult);
        MEMORY[0x1DA720210](1);
        EventLookupItem.hash(into:)();
        type metadata accessor for CGImage(0);
        sub_1D87DC750(&qword_1ECA63648, type metadata accessor for CGImage);
        sub_1D8B13D70();
        return sub_1D87D4864(v4, type metadata accessor for EventLookupState.EventLookupResult);
      }

      v9 = *(v7 + 5);
      v10 = 2;
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    v9 = *(v7 + 5);
    if (EnumCaseMultiPayload == 4)
    {
      v10 = 5;
    }

    else
    {
      v10 = 6;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    v9 = *(v7 + 5);
    v10 = 7;
  }

  else
  {
    if (EnumCaseMultiPayload != 7)
    {
      return MEMORY[0x1DA720210](0);
    }

    v9 = *(v7 + 5);
    v10 = 8;
  }

  MEMORY[0x1DA720210](v10);
  sub_1D8B15A60();
  sub_1D8B15A60();
  sub_1D8B16D40();
  if (v9)
  {
    sub_1D8B15A60();
  }
}

uint64_t EventLookupState.hashValue.getter()
{
  sub_1D8B16D20();
  EventLookupState.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D87D8320()
{
  sub_1D8B16D20();
  EventLookupState.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D87D8364()
{
  sub_1D8B16D20();
  EventLookupState.hash(into:)();
  return sub_1D8B16D80();
}

unint64_t SaveOrCopyPhotoState.description.getter()
{
  result = 0xD00000000000001CLL;
  v2 = v0[1];
  if (v2)
  {
    if (v2 == 1)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      v3 = *v0;
      sub_1D8B16720();

      MEMORY[0x1DA71EFA0](v3, v2);
      return 0xD00000000000001CLL;
    }
  }

  return result;
}

uint64_t SaveOrCopyPhotoState.hash(into:)()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x1DA720210](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1DA720210](v2);
  }

  MEMORY[0x1DA720210](2);

  return sub_1D8B15A60();
}

uint64_t SaveOrCopyPhotoState.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1D8B16D20();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1DA720210](2);
      sub_1D8B15A60();
      return sub_1D8B16D80();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1DA720210](v2);
  return sub_1D8B16D80();
}

uint64_t sub_1D87D8570()
{
  v1 = *(v0 + 8);
  sub_1D8B16D20();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1DA720210](2);
      sub_1D8B15A60();
      return sub_1D8B16D80();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1DA720210](v2);
  return sub_1D8B16D80();
}

uint64_t sub_1D87D85F0()
{
  v1 = *(v0 + 8);
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x1DA720210](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1DA720210](v2);
  }

  MEMORY[0x1DA720210](2);

  return sub_1D8B15A60();
}

uint64_t sub_1D87D8678()
{
  v1 = *(v0 + 8);
  sub_1D8B16D20();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1DA720210](2);
      sub_1D8B15A60();
      return sub_1D8B16D80();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1DA720210](v2);
  return sub_1D8B16D80();
}

uint64_t GenericError.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t GenericError.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GenericError.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t GenericError.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t GenericError.symbolName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t GenericError.symbolName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void __swiftcall GenericError.init(title:subtitle:symbolName:)(VisualIntelligenceCore::GenericError *__return_ptr retstr, Swift::String title, Swift::String subtitle, Swift::String_optional symbolName)
{
  retstr->title = title;
  retstr->subtitle = subtitle;
  retstr->symbolName = symbolName;
}

uint64_t GenericError.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x1DA71EFA0](10272, 0xE200000000000000);
  MEMORY[0x1DA71EFA0](v1, v2);
  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  return v4;
}

uint64_t sub_1D87D890C()
{
  v1 = 0x656C746974627573;
  if (*v0 != 1)
  {
    v1 = 0x614E6C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1D87D8968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D87DDDF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D87D8990(uint64_t a1)
{
  v2 = sub_1D87DC94C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87D89CC(uint64_t a1)
{
  v2 = sub_1D87DC94C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenericError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63678);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D87DC94C();
  sub_1D8B16DD0();
  v14 = 0;
  v9 = v11[5];
  sub_1D8B16A90();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1D8B16A90();
  v12 = 2;
  sub_1D8B16A50();
  return (*(v4 + 8))(v6, v3);
}

uint64_t GenericError.hash(into:)()
{
  v1 = *(v0 + 40);
  sub_1D8B15A60();
  sub_1D8B15A60();
  if (!v1)
  {
    return sub_1D8B16D40();
  }

  sub_1D8B16D40();

  return sub_1D8B15A60();
}

uint64_t GenericError.hashValue.getter()
{
  v1 = *(v0 + 40);
  sub_1D8B16D20();
  sub_1D8B15A60();
  sub_1D8B15A60();
  sub_1D8B16D40();
  if (v1)
  {
    sub_1D8B15A60();
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D87D8D2C()
{
  v1 = *(v0 + 40);
  sub_1D8B16D20();
  sub_1D8B15A60();
  sub_1D8B15A60();
  sub_1D8B16D40();
  if (v1)
  {
    sub_1D8B15A60();
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D87D8DD4()
{
  v1 = *(v0 + 40);
  sub_1D8B15A60();
  sub_1D8B15A60();
  if (!v1)
  {
    return sub_1D8B16D40();
  }

  sub_1D8B16D40();

  return sub_1D8B15A60();
}

uint64_t sub_1D87D8E70()
{
  v1 = *(v0 + 40);
  sub_1D8B16D20();
  sub_1D8B15A60();
  sub_1D8B15A60();
  sub_1D8B16D40();
  if (v1)
  {
    sub_1D8B15A60();
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D87D8F14()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x1DA71EFA0](10272, 0xE200000000000000);
  MEMORY[0x1DA71EFA0](v1, v2);
  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  return v4;
}

unint64_t FeedbackState.description.getter()
{
  if (*(v0 + 16) != 1)
  {
    return 0xD000000000000016;
  }

  v2 = *v0;
  v1 = v0[1];
  sub_1D8B16720();

  MEMORY[0x1DA71EFA0](v2, v1);
  return 0xD000000000000015;
}

uint64_t FeedbackState.hash(into:)()
{
  if (*(v0 + 16))
  {
    MEMORY[0x1DA720210](1);

    return sub_1D8B15A60();
  }

  else
  {
    MEMORY[0x1DA720210](0);
    return sub_1D8B16410();
  }
}

uint64_t FeedbackState.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1D8B16D20();
  if (v1)
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B15A60();
  }

  else
  {
    MEMORY[0x1DA720210](0);
    sub_1D8B16410();
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D87D9134()
{
  v1 = *(v0 + 16);
  sub_1D8B16D20();
  if (v1)
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B15A60();
  }

  else
  {
    MEMORY[0x1DA720210](0);
    sub_1D8B16410();
  }

  return sub_1D8B16D80();
}

uint64_t sub_1D87D91B8()
{
  if (*(v0 + 16))
  {
    MEMORY[0x1DA720210](1);

    return sub_1D8B15A60();
  }

  else
  {
    MEMORY[0x1DA720210](0);
    return sub_1D8B16410();
  }
}

uint64_t sub_1D87D9240()
{
  v1 = *(v0 + 16);
  sub_1D8B16D20();
  if (v1)
  {
    MEMORY[0x1DA720210](1);
    sub_1D8B15A60();
  }

  else
  {
    MEMORY[0x1DA720210](0);
    sub_1D8B16410();
  }

  return sub_1D8B16D80();
}

uint64_t _s22VisualIntelligenceCore15TextActionStateO9hashValueSivg_0()
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](0);
  return sub_1D8B16D80();
}

uint64_t sub_1D87D9320()
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](0);
  return sub_1D8B16D80();
}

uint64_t CVDebugArtifactManager.addActionArtifact(source:payload:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = type metadata accessor for BuiltInAction(0);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  type metadata accessor for ActionPin.Pill.Source(0);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D87D945C, v2, 0);
}

uint64_t sub_1D87D945C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(*(v0 + 104) + 160);
  sub_1D87DC694(*(v0 + 88), v1, type metadata accessor for ActionPin.Pill.Source);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = 0xE900000000000064;
    v6 = 0x6574636964657270;
  }

  else
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 128);
    sub_1D87DC8C4(*(v0 + 144), v7, type metadata accessor for BuiltInAction);
    sub_1D87DC694(v7, v8, type metadata accessor for BuiltInAction);
    v6 = sub_1D8B159E0();
    v5 = v9;
    sub_1D87D4864(v7, type metadata accessor for BuiltInAction);
  }

  v10 = *(v0 + 96);
  sub_1D8B16720();

  MEMORY[0x1DA71EFA0](0x2D6E6F697463612DLL, 0xEF64616F6C796170);
  sub_1D87C1470(v10, v0 + 40);
  *(v0 + 80) = 3;
  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 32) = v4;
  sub_1D8A3B1F4(v0 + 16, 0x736E6F69746361, 0xE700000000000000);
  sub_1D87DC9A0(v0 + 16);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t _s22VisualIntelligenceCore12GenericErrorV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_1D8B16BA0()) && (v2 == v6 && v4 == v7 || (sub_1D8B16BA0()))
  {
    if (v5)
    {
      if (v8 && (v3 == v9 && v5 == v8 || (sub_1D8B16BA0() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s22VisualIntelligenceCore13FeedbackStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      sub_1D87DDF0C();
      sub_1D87DDF58(v6, v5, 0);
      sub_1D87DDF58(v3, v2, 0);
      v10 = sub_1D8B16400();
      sub_1D87DDF68(v3, v2, 0);
      v11 = v6;
      v12 = v5;
      v13 = 0;
      goto LABEL_11;
    }

LABEL_9:
    sub_1D87DDF58(*a2, *(a2 + 8), v7);
    sub_1D87DDF58(v3, v2, v4);
    sub_1D87DDF68(v3, v2, v4);
    sub_1D87DDF68(v6, v5, v7);
    return 0;
  }

  if ((*(a2 + 16) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = *a1;
  if (v3 != v6 || v2 != v5)
  {
    v10 = sub_1D8B16BA0();
    sub_1D87DDF58(v6, v5, 1);
    sub_1D87DDF58(v3, v2, 1);
    sub_1D87DDF68(v3, v2, 1);
    v11 = v6;
    v12 = v5;
    v13 = 1;
LABEL_11:
    sub_1D87DDF68(v11, v12, v13);
    return v10 & 1;
  }

  sub_1D87DDF58(v8, v2, 1);
  sub_1D87DDF58(v3, v2, 1);
  sub_1D87DDF68(v3, v2, 1);
  sub_1D87DDF68(v3, v2, 1);
  return 1;
}

uint64_t _s22VisualIntelligenceCore14GeoLookupStateO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a2[1];
  v32 = *a2;
  v33 = v2;
  v3 = a2[3];
  v5 = *a2;
  v4 = a2[1];
  v34 = a2[2];
  v35 = v3;
  v6 = a1[1];
  v28 = *a1;
  v29 = v6;
  v36[0] = v28;
  v36[1] = v6;
  v7 = a1[3];
  v30 = a1[2];
  v31 = v7;
  v36[2] = v30;
  v36[3] = v7;
  v36[4] = v5;
  v36[5] = v4;
  v8 = a2[3];
  v9 = v28;
  v36[6] = a2[2];
  v36[7] = v8;
  if (!(*(&v29 + 1) >> 62))
  {
    if (!(*(&v33 + 1) >> 62))
    {
      v14 = v32;
      sub_1D87DE190(&v32, v27);
      sub_1D87DE190(&v28, v27);
      v12 = v9;
      v13 = v14;
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v10 = v30;
  if (*(&v29 + 1) >> 62 != 1)
  {
    if (*(&v33 + 1) >> 62 == 2)
    {
      v16 = v31;
      v17 = *(&v30 + 1);
      v18 = v35;
      v19 = v34;
      v24 = v28;
      v25 = v29;
      v26 = BYTE8(v29);
      v21 = v32;
      v22 = v33;
      v23 = BYTE8(v33);
      sub_1D87DE190(&v32, v27);
      sub_1D87DE190(&v28, v27);
      if (_s22VisualIntelligenceCore19GeoLocationEstimateO2eeoiySbAC_ACtFZ_0(&v24, &v21) && sub_1D88E4BE8(v10, v19) && (sub_1D88E5008(v17, *(&v19 + 1)) & 1) != 0 && (sub_1D88E51D0(v16, v18) & 1) != 0)
      {
        v15 = sub_1D88E522C(*(&v16 + 1), *(&v18 + 1));
        goto LABEL_17;
      }

LABEL_16:
      v15 = 0;
      goto LABEL_17;
    }

LABEL_15:
    sub_1D87DE190(&v32, v27);
    sub_1D87DE190(&v28, v27);
    goto LABEL_16;
  }

  if (*(&v33 + 1) >> 62 != 1)
  {
    goto LABEL_15;
  }

  v11 = v34;
  v24 = v28;
  v25 = v29;
  v26 = BYTE8(v29);
  v21 = v32;
  v22 = v33;
  v23 = BYTE8(v33);
  sub_1D87DE190(&v32, v27);
  sub_1D87DE190(&v28, v27);
  if (!_s22VisualIntelligenceCore19GeoLocationEstimateO2eeoiySbAC_ACtFZ_0(&v24, &v21))
  {
    goto LABEL_16;
  }

  v12 = v10;
  v13 = v11;
LABEL_8:
  v15 = sub_1D88E4BE8(v12, v13);
LABEL_17:
  sub_1D87A14E4(v36, &qword_1ECA63788);
  return v15 & 1;
}

uint64_t _s22VisualIntelligenceCore14ReadAloudStateO0dE6ResultV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D8B16BA0() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1D8B16BA0() & 1) == 0 || (v3 != v8 || v5 != v9) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CGImage(0);
  sub_1D87DC750(&qword_1ECA63648, type metadata accessor for CGImage);
  return sub_1D8B13D60() & 1;
}

uint64_t _s22VisualIntelligenceCore14ReadAloudStateO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v17 = *a1;
  v18 = v2;
  *v19 = a1[2];
  v3 = *v19;
  v4 = a2[1];
  v20 = *a2;
  *v21 = v4;
  v6 = *a2;
  v5 = a2[1];
  *&v21[16] = a2[2];
  *&v21[25] = *(a2 + 41);
  *&v19[9] = *(a1 + 41);
  v22[0] = v17;
  v22[1] = v2;
  v23[0] = v3;
  *(v23 + 9) = *&v19[9];
  v23[2] = v6;
  v23[3] = v5;
  v24[0] = a2[2];
  *(v24 + 9) = *(a2 + 41);
  if (v19[24])
  {
    if (v19[24] == 1)
    {
      if (v21[40] == 1)
      {
        if (v17 != v20)
        {
          AloudStateO0dE6ResultV2eeoiySbAE_AEtFZ_0 = sub_1D8B16BA0();
          sub_1D87DDFA0(&v20, v16);
          sub_1D87DDFA0(&v17, v16);
          sub_1D87A14E4(v22, &qword_1ECA63778);
          return AloudStateO0dE6ResultV2eeoiySbAE_AEtFZ_0 & 1;
        }

        sub_1D87DDFA0(&v20, v16);
        sub_1D87DDFA0(&v17, v16);
        goto LABEL_12;
      }
    }

    else if (v21[40] == 2)
    {
      v8 = vorrq_s8(*&v21[8], *&v21[24]);
      if (!(*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | *v21 | *(&v20 + 1) | v20))
      {
LABEL_12:
        sub_1D87A14E4(v22, &qword_1ECA63778);
        AloudStateO0dE6ResultV2eeoiySbAE_AEtFZ_0 = 1;
        return AloudStateO0dE6ResultV2eeoiySbAE_AEtFZ_0 & 1;
      }
    }

    goto LABEL_10;
  }

  if (v21[40])
  {
LABEL_10:
    sub_1D87DDFA0(&v20, v16);
    sub_1D87DDFA0(&v17, v16);
    sub_1D87A14E4(v22, &qword_1ECA63778);
    AloudStateO0dE6ResultV2eeoiySbAE_AEtFZ_0 = 0;
    return AloudStateO0dE6ResultV2eeoiySbAE_AEtFZ_0 & 1;
  }

  v13[0] = v17;
  v13[1] = v18;
  v14 = *v19;
  v15 = *&v19[8];
  v10[0] = v20;
  v10[1] = *v21;
  v11 = *&v21[16];
  v12 = *&v21[24];
  sub_1D87DDFA0(&v20, v16);
  sub_1D87DDFA0(&v17, v16);
  sub_1D87DDFA0(&v20, v16);
  sub_1D87DDFA0(&v17, v16);
  AloudStateO0dE6ResultV2eeoiySbAE_AEtFZ_0 = _s22VisualIntelligenceCore14ReadAloudStateO0dE6ResultV2eeoiySbAE_AEtFZ_0(v13, v10);
  sub_1D87A14E4(v22, &qword_1ECA63778);
  sub_1D87DDFD8(&v20);
  sub_1D87DDFD8(&v17);
  return AloudStateO0dE6ResultV2eeoiySbAE_AEtFZ_0 & 1;
}

BOOL _s22VisualIntelligenceCore9AcmeStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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
      sub_1D87DE0B4(*a1, v3, 0);
      sub_1D87DE0B4(v5, v6, 0);
      return v5 == v2;
    }

    goto LABEL_18;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        v10 = sub_1D8B16BA0();
        sub_1D87DE09C(v5, v6, 1);
        sub_1D87DE09C(v2, v3, 1);
        sub_1D87DE0B4(v2, v3, 1);
        sub_1D87DE0B4(v5, v6, 1);
        return v10 & 1;
      }

      sub_1D87DE09C(v8, v3, 1);
      sub_1D87DE09C(v2, v3, 1);
      sub_1D87DE0B4(v2, v3, 1);
      v13 = v2;
      v14 = v3;
      v15 = 1;
      goto LABEL_20;
    }

LABEL_18:
    sub_1D87DE09C(v5, v6, v7);
    sub_1D87DE0B4(v2, v3, v4);
    sub_1D87DE0B4(v5, v6, v7);
    return 0;
  }

  if (v7 != 2 || (v6 | v5) != 0)
  {
    goto LABEL_18;
  }

  sub_1D87DE0B4(*a1, v3, 2);
  v13 = 0;
  v14 = 0;
  v15 = 2;
LABEL_20:
  sub_1D87DE0B4(v13, v14, v15);
  return 1;
}

uint64_t _s22VisualIntelligenceCore18SummarizationStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *v26 = *(a1 + 32);
  *&v26[16] = v2;
  v4 = *(a1 + 48);
  *&v26[32] = *(a1 + 64);
  v5 = *(a1 + 16);
  *v25 = *a1;
  *&v25[16] = v5;
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  *v29 = *(a2 + 32);
  *&v29[16] = v6;
  v8 = *(a2 + 48);
  *&v29[32] = *(a2 + 64);
  v9 = *(a2 + 16);
  v27 = *a2;
  v28 = v9;
  v30[2] = *v26;
  v30[3] = v4;
  v30[4] = *(a1 + 64);
  v30[0] = *v25;
  v30[1] = v3;
  v36 = *(a2 + 64);
  v35 = v8;
  v34 = *v29;
  v32 = v27;
  *&v26[48] = *(a1 + 80);
  *&v29[48] = *(a2 + 80);
  v10 = *(a2 + 80);
  v31 = *(a1 + 80);
  v37 = v10;
  v33 = v7;
  if (!(*v26 >> 62))
  {
    if (!(*v29 >> 62))
    {
      sub_1D87A14E4(v30, &qword_1ECA63780);
      v11 = v25[0] ^ v27.i8[0] ^ 1;
      return v11 & 1;
    }

LABEL_12:
    sub_1D87DE064(&v27, v23);
    sub_1D87A14E4(v30, &qword_1ECA63780);
    v11 = 0;
    return v11 & 1;
  }

  if (*v26 >> 62 != 1)
  {
    if (*v29 >> 62 == 2 && *v29 == 0x8000000000000000)
    {
      v12 = vorrq_s8(vorrq_s8(*&v29[24], *&v29[40]), vorrq_s8(v27, v28));
      if (!(*&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)) | *&v29[16] | *&v29[8]))
      {
        sub_1D87A14E4(v30, &qword_1ECA63780);
        v11 = 1;
        return v11 & 1;
      }
    }

    goto LABEL_12;
  }

  if (*v29 >> 62 != 1)
  {
    v13 = *(a1 + 48);
    *v24 = *(a1 + 32);
    *&v24[16] = v13;
    *&v24[32] = *(a1 + 64);
    v14 = *(a1 + 80);
    v15 = *(a1 + 16);
    *v23 = *a1;
    *&v23[16] = v15;
    *&v24[48] = v14;
    *v24 &= 0x3FFFFFFFFFFFFFFFuLL;
    sub_1D87DE008(v23, v18);
    goto LABEL_12;
  }

  v23[0] = v25[0];
  *&v23[1] = *&v25[1];
  v23[7] = (*&v25[1] | ((*&v25[5] | (v25[7] << 16)) << 32)) >> 48;
  *&v23[5] = *&v25[5];
  *&v23[8] = *&v25[8];
  *&v23[24] = *&v25[24];
  *v24 = *v26 & 0x3FFFFFFFFFFFFFFFLL;
  *&v24[8] = *&v26[8];
  *&v24[24] = *&v26[24];
  *&v24[40] = *&v26[40];
  v18[0] = v27;
  v18[1] = v28;
  v19 = *v29 & 0x3FFFFFFFFFFFFFFFLL;
  v20 = *&v29[8];
  v21 = *&v29[24];
  v22 = *&v29[40];
  v11 = _s22VisualIntelligenceCore23TextSummarizationResultV2eeoiySbAC_ACtFZ_0(v23, v18);
  sub_1D87DE064(&v27, v17);
  sub_1D87DE064(v25, v17);
  sub_1D87A14E4(v30, &qword_1ECA63780);
  return v11 & 1;
}

uint64_t _s22VisualIntelligenceCore20SaveOrCopyPhotoStateO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_1D87DDF8C(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_1D87DDF8C(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = sub_1D8B16BA0();
      sub_1D87DDF78(v4, v5);
      sub_1D87DDF78(v2, v3);
      sub_1D87DDF8C(v2, v3);
      sub_1D87DDF8C(v4, v5);
      return v11 & 1;
    }

    sub_1D87DDF78(v9, v3);
    sub_1D87DDF78(v2, v3);
    sub_1D87DDF8C(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_1D87DDF78(*a2, *(a2 + 8));
    sub_1D87DDF78(v2, v3);
    sub_1D87DDF8C(v2, v3);
    sub_1D87DDF8C(v4, v5);
    return 0;
  }

  v6 = 1;
  sub_1D87DDF8C(*a1, 1uLL);
  sub_1D87DDF8C(v4, 1uLL);
  return v6;
}

uint64_t _s22VisualIntelligenceCore20ActionExecutionStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v2 = sub_1D8B15030();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BuiltInAction(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResultLookupState(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ActionExecutionState(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v40 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v40 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v40 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63798);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v40 - v24;
  v26 = (&v40 + *(v23 + 56) - v24);
  sub_1D87DC694(v44, &v40 - v24, type metadata accessor for ActionExecutionState);
  sub_1D87DC694(v45, v26, type metadata accessor for ActionExecutionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D87DC694(v25, v19, type metadata accessor for ActionExecutionState);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1D87D4864(v19, type metadata accessor for BuiltInAction);
        goto LABEL_20;
      }

      sub_1D87DC8C4(v26, v6, type metadata accessor for BuiltInAction);
      v31 = static BuiltInAction.== infix(_:_:)(v19, v6);
      sub_1D87D4864(v6, type metadata accessor for BuiltInAction);
      v33 = v19;
      v34 = type metadata accessor for BuiltInAction;
    }

    else
    {
      sub_1D87DC694(v25, v21, type metadata accessor for ActionExecutionState);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1D87D4864(v21, type metadata accessor for ResultLookupState);
LABEL_20:
        sub_1D87A14E4(v25, &qword_1ECA63798);
        goto LABEL_21;
      }

      sub_1D87DC8C4(v26, v9, type metadata accessor for ResultLookupState);
      v31 = _s22VisualIntelligenceCore17ResultLookupStateO2eeoiySbAC_ACtFZ_0(v21, v9);
      sub_1D87D4864(v9, type metadata accessor for ResultLookupState);
      v33 = v21;
      v34 = type metadata accessor for ResultLookupState;
    }

    sub_1D87D4864(v33, v34);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D87DC694(v25, v16, type metadata accessor for ActionExecutionState);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v42 + 8))(v16, v43);
      goto LABEL_20;
    }

    v29 = v41;
    v28 = v42;
    v30 = v43;
    (*(v42 + 32))(v41, v26, v43);
    v31 = MEMORY[0x1DA71E500](v16, v29);
    v32 = *(v28 + 8);
    v32(v29, v30);
    v32(v16, v30);
LABEL_24:
    sub_1D87D4864(v25, type metadata accessor for ActionExecutionState);
    return v31 & 1;
  }

  sub_1D87DC694(v25, v13, type metadata accessor for ActionExecutionState);
  v36 = *v13;
  v35 = v13[1];
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    goto LABEL_20;
  }

  if (v36 == *v26 && v35 == v26[1])
  {

    goto LABEL_26;
  }

  v38 = sub_1D8B16BA0();

  if (v38)
  {
LABEL_26:
    sub_1D87D4864(v25, type metadata accessor for ActionExecutionState);
    v31 = 1;
    return v31 & 1;
  }

  sub_1D87D4864(v25, type metadata accessor for ActionExecutionState);
LABEL_21:
  v31 = 0;
  return v31 & 1;
}

uint64_t _s22VisualIntelligenceCore18BarCodeLookupStateO0deF6ResultV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;

  LOBYTE(v2) = static CVDetection.== infix(_:_:)(&v5, &v4);

  if ((v2 & 1) == 0)
  {
    return 0;
  }

  sub_1D87DDF0C();
  return sub_1D8B16400() & 1;
}

BOOL _s22VisualIntelligenceCore18BarCodeLookupStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v21 = *a2;
      v22 = v3;
      sub_1D87DE0CC(v6, v5, 0);
      sub_1D87DE0CC(v3, v2, 0);
      sub_1D87DE0CC(v6, v5, 0);
      sub_1D87DE0CC(v3, v2, 0);

      v12 = static CVDetection.== infix(_:_:)(&v22, &v21);

      if (v12)
      {
        sub_1D87DDF0C();
        v13 = sub_1D8B16400();
        sub_1D87DE130(v3, v2, 0);
        sub_1D87DE130(v6, v5, 0);
        sub_1D87DE130(v6, v5, 0);
        sub_1D87DE130(v3, v2, 0);
        return (v13 & 1) != 0;
      }

      sub_1D87DE130(v3, v2, 0);
      sub_1D87DE130(v6, v5, 0);
      sub_1D87DE130(v6, v5, 0);
      v15 = v3;
      v16 = v2;
      v17 = 0;
LABEL_18:
      sub_1D87DE130(v15, v16, v17);
      return 0;
    }

    goto LABEL_17;
  }

  if (v4 == 1)
  {
    if (v7 == 1)
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_1D8B16BA0();
        sub_1D87DE0CC(v6, v5, 1);
        sub_1D87DE0CC(v3, v2, 1);
        sub_1D87DE130(v3, v2, 1);
        sub_1D87DE130(v6, v5, 1);
        return v10 & 1;
      }

      sub_1D87DE0CC(v8, v2, 1);
      sub_1D87DE0CC(v3, v2, 1);
      sub_1D87DE130(v3, v2, 1);
      v18 = v3;
      v19 = v2;
      v20 = 1;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (v7 != 2 || (v5 | v6) != 0)
  {
LABEL_17:
    sub_1D87DE0CC(*a2, *(a2 + 8), v7);
    sub_1D87DE0CC(v3, v2, v4);
    sub_1D87DE130(v3, v2, v4);
    v15 = v6;
    v16 = v5;
    v17 = v7;
    goto LABEL_18;
  }

  sub_1D87DE130(*a1, v2, 2);
  v18 = 0;
  v19 = 0;
  v20 = 2;
LABEL_22:
  sub_1D87DE130(v18, v19, v20);
  return 1;
}

uint64_t _s22VisualIntelligenceCore17ResultLookupStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, __int128 *a2)
{
  v148 = a1;
  v149 = a2;
  v2 = type metadata accessor for EventLookupState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v139 = &v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  State = type metadata accessor for GeoLocateState(0);
  MEMORY[0x1EEE9AC00](State - 8);
  v138 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ResultLookupState(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v143 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v142 = (&v138 - v10);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v141 = (&v138 - v12);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v147 = (&v138 - v14);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v144 = &v138 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v145 = (&v138 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v146 = &v138 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v138 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v138 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = (&v138 - v28);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v140 = &v138 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v138 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = (&v138 - v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63790);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v138 - v39;
  v41 = &v138 + *(v38 + 56) - v39;
  sub_1D87DC694(v148, &v138 - v39, type metadata accessor for ResultLookupState);
  v42 = v149;
  v149 = v41;
  sub_1D87DC694(v42, v41, type metadata accessor for ResultLookupState);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D87DC694(v40, v34, type metadata accessor for ResultLookupState);
      v94 = *v34;
      v93 = *(v34 + 1);
      v148 = v40;
      v96 = *(v34 + 2);
      v95 = *(v34 + 3);
      v98 = *(v34 + 4);
      v97 = *(v34 + 5);
      v99 = v34[48];
      v100 = v149;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1D87DE224(v94, v93, v96, v95, v98, v97, v99);
        v40 = v148;
        goto LABEL_46;
      }

      v102 = *v100;
      v101 = *(v100 + 1);
      v103 = *(v100 + 3);
      v146 = *(v100 + 2);
      v147 = v101;
      v104 = *(v100 + 5);
      v144 = *(v100 + 4);
      v145 = v103;
      v143 = v104;
      LODWORD(v149) = *(v100 + 48);
      *&v165 = v94;
      *(&v165 + 1) = v93;
      *&v166 = v96;
      *(&v166 + 1) = v95;
      *v167 = v98;
      *&v167[8] = v97;
      v167[16] = v99;
      *&v160 = v102;
      *(&v160 + 1) = v101;
      *&v161 = v146;
      *(&v161 + 1) = v103;
      *&v162[0] = v144;
      *(&v162[0] + 1) = v104;
      LOBYTE(v162[1]) = v149;
      StateO2eeoiySbAC_ACtFZ_0 = _s22VisualIntelligenceCore11LookupStateO2eeoiySbAC_ACtFZ_0(&v165, &v160);
      sub_1D87DE224(v102, v147, v146, v145, v144, v143, v149);
      sub_1D87DE224(v94, v93, v96, v95, v98, v97, v99);
      sub_1D87D4864(v148, type metadata accessor for ResultLookupState);
      return StateO2eeoiySbAC_ACtFZ_0 & 1;
    case 2u:
      v72 = v140;
      sub_1D87DC694(v40, v140, type metadata accessor for ResultLookupState);
      v73 = v149;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v74 = v138;
        sub_1D87DC8C4(v73, v138, type metadata accessor for GeoLocateState);
        StateO2eeoiySbAC_ACtFZ_0 = _s22VisualIntelligenceCore14GeoLocateStateO2eeoiySbAC_ACtFZ_0(v72, v74);
        v75 = type metadata accessor for GeoLocateState;
        goto LABEL_33;
      }

      v133 = type metadata accessor for GeoLocateState;
      goto LABEL_45;
    case 3u:
      sub_1D87DC694(v40, v29, type metadata accessor for ResultLookupState);
      v76 = v29[1];
      v165 = *v29;
      v166 = v76;
      v77 = v29[3];
      *v167 = v29[2];
      *&v167[16] = v77;
      v78 = v149;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v79 = v78[1];
        v160 = *v78;
        v161 = v79;
        v80 = v78[3];
        v82 = *v78;
        v81 = v78[1];
        v162[0] = v78[2];
        v162[1] = v80;
        v83 = v29[1];
        v155 = *v29;
        v156 = v83;
        v84 = v29[3];
        v157[0] = v29[2];
        v157[1] = v84;
        v150 = v82;
        v151 = v81;
        v85 = v78[3];
        v152[0] = v78[2];
        v152[1] = v85;
        StateO2eeoiySbAC_ACtFZ_0 = _s22VisualIntelligenceCore14GeoLookupStateO2eeoiySbAC_ACtFZ_0(&v155, &v150);
        sub_1D87DE304(&v160);
        sub_1D87DE304(&v165);
        goto LABEL_34;
      }

      sub_1D87DE304(&v165);
      goto LABEL_46;
    case 4u:
      sub_1D87DC694(v40, v26, type metadata accessor for ResultLookupState);
      v54 = v40;
      v56 = *v26;
      v55 = *(v26 + 1);
      v57 = v26[16];
      v58 = v149;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v59 = *v58;
        v60 = *(v58 + 1);
        v61 = *(v58 + 16);
        *&v165 = v56;
        *(&v165 + 1) = v55;
        LOBYTE(v166) = v57;
        *&v160 = v59;
        *(&v160 + 1) = v60;
        LOBYTE(v161) = v61;
        StateO2eeoiySbAC_ACtFZ_0 = _s22VisualIntelligenceCore18BarCodeLookupStateO2eeoiySbAC_ACtFZ_0(&v165, &v160);
        sub_1D87DE130(v59, v60, v61);
        sub_1D87DE130(v56, v55, v57);
        goto LABEL_26;
      }

      sub_1D87DE130(v56, v55, v57);
      v40 = v54;
      goto LABEL_46;
    case 5u:
      sub_1D87DC694(v40, v23, type metadata accessor for ResultLookupState);
      v106 = *v23;
      v105 = *(v23 + 1);
      v107 = v23[16];
      v108 = v149;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v54 = v40;
        v109 = *v108;
        v110 = *(v108 + 1);
        v111 = *(v108 + 16);
        *&v165 = v106;
        *(&v165 + 1) = v105;
        LOBYTE(v166) = v107;
        *&v160 = v109;
        *(&v160 + 1) = v110;
        LOBYTE(v161) = v111;
        StateO2eeoiySbAC_ACtFZ_0 = _s22VisualIntelligenceCore9AcmeStateO2eeoiySbAC_ACtFZ_0(&v165, &v160);
        sub_1D87DE0B4(v109, v110, v111);
        sub_1D87DE0B4(v106, v105, v107);
        goto LABEL_26;
      }

      sub_1D87DE0B4(v106, v105, v107);
      goto LABEL_46;
    case 6u:
      v120 = v146;
      sub_1D87DC694(v40, v146, type metadata accessor for ResultLookupState);
      v121 = *(v120 + 48);
      *v167 = *(v120 + 32);
      *&v167[16] = v121;
      v168 = *(v120 + 64);
      v169 = *(v120 + 80);
      v122 = *(v120 + 16);
      v165 = *v120;
      v166 = v122;
      v123 = v149;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v124 = v123[3];
        v125 = v123[1];
        v162[0] = v123[2];
        v162[1] = v124;
        v126 = v123[3];
        v163 = v123[4];
        v127 = v123[1];
        v160 = *v123;
        v161 = v127;
        v128 = *(v120 + 48);
        v157[0] = *(v120 + 32);
        v157[1] = v128;
        v158 = *(v120 + 64);
        v129 = *(v120 + 16);
        v155 = *v120;
        v156 = v129;
        v152[0] = v162[0];
        v152[1] = v126;
        v153 = v123[4];
        v164 = *(v123 + 10);
        v159 = *(v120 + 80);
        v154 = *(v123 + 10);
        v150 = v160;
        v151 = v125;
        StateO2eeoiySbAC_ACtFZ_0 = _s22VisualIntelligenceCore18SummarizationStateO2eeoiySbAC_ACtFZ_0(&v155, &v150);
        sub_1D87DE2D4(&v160);
        sub_1D87DE2D4(&v165);
        goto LABEL_34;
      }

      sub_1D87DE2D4(&v165);
      goto LABEL_46;
    case 7u:
      v86 = v145;
      sub_1D87DC694(v40, v145, type metadata accessor for ResultLookupState);
      v87 = v86[1];
      v165 = *v86;
      v166 = v87;
      *v167 = v86[2];
      *&v167[9] = *(v86 + 41);
      v88 = v149;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v89 = v88[1];
        v160 = *v88;
        v161 = v89;
        v91 = *v88;
        v90 = v88[1];
        v162[0] = v88[2];
        *(v162 + 9) = *(v88 + 41);
        v92 = v86[1];
        v155 = *v86;
        v156 = v92;
        v157[0] = v86[2];
        *(v157 + 9) = *(v86 + 41);
        v150 = v91;
        v151 = v90;
        v152[0] = v88[2];
        *(v152 + 9) = *(v88 + 41);
        StateO2eeoiySbAC_ACtFZ_0 = _s22VisualIntelligenceCore14ReadAloudStateO2eeoiySbAC_ACtFZ_0(&v155, &v150);
        sub_1D87DDFD8(&v160);
        sub_1D87DDFD8(&v165);
        goto LABEL_34;
      }

      sub_1D87DDFD8(&v165);
      goto LABEL_46;
    case 8u:
      v72 = v144;
      sub_1D87DC694(v40, v144, type metadata accessor for ResultLookupState);
      v131 = v149;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v74 = v139;
        sub_1D87DC8C4(v131, v139, type metadata accessor for EventLookupState);
        StateO2eeoiySbAC_ACtFZ_0 = _s22VisualIntelligenceCore16EventLookupStateO2eeoiySbAC_ACtFZ_0(v72, v74);
        v75 = type metadata accessor for EventLookupState;
LABEL_33:
        v132 = v75;
        sub_1D87D4864(v74, v75);
        sub_1D87D4864(v72, v132);
        goto LABEL_34;
      }

      v133 = type metadata accessor for EventLookupState;
LABEL_45:
      sub_1D87D4864(v72, v133);
      goto LABEL_46;
    case 9u:
      v62 = v147;
      sub_1D87DC694(v40, v147, type metadata accessor for ResultLookupState);
      v63 = v62[3];
      *v167 = v62[2];
      *&v167[16] = v63;
      v168 = v62[4];
      v64 = v62[1];
      v165 = *v62;
      v166 = v64;
      v65 = v149;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        sub_1D87DE280(&v165);
        goto LABEL_46;
      }

      v66 = v65[1];
      v67 = v65[3];
      v162[0] = v65[2];
      v162[1] = v67;
      v68 = v65[3];
      v163 = v65[4];
      v69 = v65[1];
      v160 = *v65;
      v161 = v69;
      v70 = v62[3];
      v157[0] = v62[2];
      v157[1] = v70;
      v158 = v62[4];
      v71 = v62[1];
      v155 = *v62;
      v156 = v71;
      v152[0] = v162[0];
      v152[1] = v68;
      v153 = v65[4];
      v150 = v160;
      v151 = v66;
      StateO2eeoiySbAC_ACtFZ_0 = static ImageSearchState.== infix(_:_:)(&v155, &v150);
      sub_1D87DE280(&v160);
      sub_1D87DE280(&v165);
LABEL_34:
      sub_1D87D4864(v40, type metadata accessor for ResultLookupState);
      return StateO2eeoiySbAC_ACtFZ_0 & 1;
    case 0xAu:
      v130 = v141;
      sub_1D87DC694(v40, v141, type metadata accessor for ResultLookupState);
      v48 = *v130;
      v47 = v130[1];
      v49 = v149;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_30;
      }

      goto LABEL_7;
    case 0xBu:
      v46 = v142;
      sub_1D87DC694(v40, v142, type metadata accessor for ResultLookupState);
      v48 = *v46;
      v47 = v46[1];
      v49 = v149;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
LABEL_7:
        v50 = v40;
        v51 = *v49;
        v52 = v49[1];
        *&v165 = v48;
        *(&v165 + 1) = v47;
        *&v160 = v51;
        *(&v160 + 1) = v52;
        StateO2eeoiySbAC_ACtFZ_0 = _s22VisualIntelligenceCore20SaveOrCopyPhotoStateO2eeoiySbAC_ACtFZ_0(&v165, &v160);
        sub_1D87DDF8C(v51, v52);
        sub_1D87DDF8C(v48, v47);
        sub_1D87D4864(v50, type metadata accessor for ResultLookupState);
        return StateO2eeoiySbAC_ACtFZ_0 & 1;
      }

LABEL_30:
      sub_1D87DDF8C(v48, v47);
      goto LABEL_46;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_53;
      }

      goto LABEL_46;
    case 0xDu:
      v112 = v143;
      sub_1D87DC694(v40, v143, type metadata accessor for ResultLookupState);
      v114 = *v112;
      v113 = *(v112 + 8);
      v115 = *(v112 + 16);
      v116 = v149;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        sub_1D87DDF68(v114, v113, v115);
        goto LABEL_46;
      }

      v54 = v40;
      v117 = *v116;
      v118 = *(v116 + 1);
      v119 = *(v116 + 16);
      *&v165 = v114;
      *(&v165 + 1) = v113;
      LOBYTE(v166) = v115;
      *&v160 = v117;
      *(&v160 + 1) = v118;
      LOBYTE(v161) = v119;
      StateO2eeoiySbAC_ACtFZ_0 = _s22VisualIntelligenceCore13FeedbackStateO2eeoiySbAC_ACtFZ_0(&v165, &v160);
      sub_1D87DDF68(v117, v118, v119);
      sub_1D87DDF68(v114, v113, v115);
LABEL_26:
      sub_1D87D4864(v54, type metadata accessor for ResultLookupState);
      return StateO2eeoiySbAC_ACtFZ_0 & 1;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_53;
      }

      goto LABEL_46;
    default:
      sub_1D87DC694(v40, v36, type metadata accessor for ResultLookupState);
      v44 = *v36;
      v43 = v36[1];
      v45 = v149;
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_46:
        sub_1D87A14E4(v40, &qword_1ECA63790);
        goto LABEL_47;
      }

      v135 = *v45;
      v136 = *(v45 + 1);
      if (v44 == v135 && v43 == v136)
      {
      }

      else
      {
        v137 = sub_1D8B16BA0();

        if ((v137 & 1) == 0)
        {
          sub_1D87D4864(v40, type metadata accessor for ResultLookupState);
LABEL_47:
          StateO2eeoiySbAC_ACtFZ_0 = 0;
          return StateO2eeoiySbAC_ACtFZ_0 & 1;
        }
      }

LABEL_53:
      sub_1D87D4864(v40, type metadata accessor for ResultLookupState);
      StateO2eeoiySbAC_ACtFZ_0 = 1;
      return StateO2eeoiySbAC_ACtFZ_0 & 1;
  }
}

uint64_t _s22VisualIntelligenceCore16EventLookupStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v90 = a1;
  v89 = type metadata accessor for EventLookupState.EventLookupResult(0);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EventLookupState(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v87 = (&v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v5);
  v86 = (&v85 - v8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v85 = (&v85 - v10);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = (&v85 - v12);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v85 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v85 - v18);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v85 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v85 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63770);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v85 - v27;
  v29 = &v85 + *(v26 + 56) - v27;
  sub_1D87DC694(v90, &v85 - v27, type metadata accessor for EventLookupState);
  v30 = a2;
  v31 = v29;
  sub_1D87DC694(v30, v29, type metadata accessor for EventLookupState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v37 = v88;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1D87DC694(v28, v22, type metadata accessor for EventLookupState);
        v55 = v22[1];
        v56 = v22[3];
        v57 = v22[5];
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          goto LABEL_30;
        }

        v58 = v22[4];
        v59 = v22[2];
        v44 = v28;
        v60 = *v31;
        v61 = v31[1];
        v62 = v31[2];
        v63 = v31[3];
        v64 = v31[4];
        v65 = v31[5];
        v97 = *v22;
        v98 = v55;
        v99 = v59;
        v100 = v56;
        v101 = v58;
        v102 = v57;
        v91 = v60;
        v92 = v61;
        v93 = v62;
        v94 = v63;
        v95 = v64;
        v96 = v65;
        v51 = _s22VisualIntelligenceCore12GenericErrorV2eeoiySbAC_ACtFZ_0(&v97, &v91);

        goto LABEL_29;
      }

      sub_1D87DC694(v28, v24, type metadata accessor for EventLookupState);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_1D87DC8C4(v29, v37, type metadata accessor for EventLookupState.EventLookupResult);
        if ((static EventLookupItem.== infix(_:_:)(v24, v37) & 1) == 0 || (type metadata accessor for CGImage(0), sub_1D87DC750(&qword_1ECA63648, type metadata accessor for CGImage), (sub_1D8B13D60() & 1) == 0))
        {
          sub_1D87D4864(v37, type metadata accessor for EventLookupState.EventLookupResult);
          sub_1D87D4864(v24, type metadata accessor for EventLookupState.EventLookupResult);
          sub_1D87D4864(v28, type metadata accessor for EventLookupState);
          goto LABEL_32;
        }

        sub_1D87D4864(v37, type metadata accessor for EventLookupState.EventLookupResult);
        sub_1D87D4864(v24, type metadata accessor for EventLookupState.EventLookupResult);
        goto LABEL_24;
      }

      sub_1D87D4864(v24, type metadata accessor for EventLookupState.EventLookupResult);
LABEL_31:
      sub_1D87A14E4(v28, &qword_1ECA63770);
LABEL_32:
      v51 = 0;
      return v51 & 1;
    }

    if (EnumCaseMultiPayload != 2)
    {
      sub_1D87DC694(v28, v16, type metadata accessor for EventLookupState);
      v66 = v16[1];
      v67 = v16[3];
      v68 = v16[5];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_30;
      }

      v69 = v16[4];
      v70 = v16[2];
      v71 = *v16;
      v44 = v28;
      v72 = *v31;
      v73 = v31[1];
      v74 = v31[2];
      v75 = v31[3];
      v76 = v31[4];
      v77 = v31[5];
      v97 = v71;
      v98 = v66;
      v99 = v70;
      v100 = v67;
      v101 = v69;
      v102 = v68;
      v91 = v72;
      v92 = v73;
      v93 = v74;
      v94 = v75;
      v95 = v76;
      v96 = v77;
      v51 = _s22VisualIntelligenceCore12GenericErrorV2eeoiySbAC_ACtFZ_0(&v97, &v91);

      goto LABEL_28;
    }

    sub_1D87DC694(v28, v19, type metadata accessor for EventLookupState);
    v34 = v19[1];
    v35 = v19[3];
    v36 = v19[5];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_1D87DC694(v28, v13, type metadata accessor for EventLookupState);
      v38 = v13[1];
      v39 = v13[3];
      v40 = v13[5];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_30;
      }

      v41 = v13[4];
      v42 = v13[2];
      v43 = *v13;
      v44 = v28;
      v45 = *v31;
      v46 = v31[1];
      v47 = v31[2];
      v48 = v31[3];
      v49 = v31[4];
      v50 = v31[5];
      v97 = v43;
      v98 = v38;
      v99 = v42;
      v100 = v39;
      v101 = v41;
      v102 = v40;
      v91 = v45;
      v92 = v46;
      v93 = v47;
      v94 = v48;
      v95 = v49;
      v96 = v50;
      v51 = _s22VisualIntelligenceCore12GenericErrorV2eeoiySbAC_ACtFZ_0(&v97, &v91);

      goto LABEL_28;
    }

    v19 = v85;
    sub_1D87DC694(v28, v85, type metadata accessor for EventLookupState);
    v34 = v19[1];
    v35 = v19[3];
    v36 = v19[5];
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_30;
    }

LABEL_26:
    v52 = v19[4];
    v53 = v19[2];
    v54 = *v19;
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v33 = v86;
    sub_1D87DC694(v28, v86, type metadata accessor for EventLookupState);
    v34 = v33[1];
    v35 = v33[3];
    v36 = v33[5];
    if (swift_getEnumCaseMultiPayload() == 6)
    {
LABEL_18:
      v52 = v33[4];
      v53 = v33[2];
      v54 = *v33;
LABEL_27:
      v44 = v28;
      v78 = *v31;
      v79 = v31[1];
      v80 = v31[2];
      v81 = v31[3];
      v82 = v31[4];
      v83 = v31[5];
      v97 = v54;
      v98 = v34;
      v99 = v53;
      v100 = v35;
      v101 = v52;
      v102 = v36;
      v91 = v78;
      v92 = v79;
      v93 = v80;
      v94 = v81;
      v95 = v82;
      v96 = v83;
      v51 = _s22VisualIntelligenceCore12GenericErrorV2eeoiySbAC_ACtFZ_0(&v97, &v91);

LABEL_28:

LABEL_29:

      sub_1D87D4864(v44, type metadata accessor for EventLookupState);
      return v51 & 1;
    }

LABEL_30:

    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v33 = v87;
    sub_1D87DC694(v28, v87, type metadata accessor for EventLookupState);
    v34 = v33[1];
    v35 = v33[3];
    v36 = v33[5];
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  if (swift_getEnumCaseMultiPayload() != 8)
  {
    goto LABEL_31;
  }

LABEL_24:
  sub_1D87D4864(v28, type metadata accessor for EventLookupState);
  v51 = 1;
  return v51 & 1;
}

uint64_t _s22VisualIntelligenceCore11LookupStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *(a2 + 48);
  v30 = v12;
  v31 = v11;
  v28 = v6;
  if (!*(a1 + 48))
  {
    if (!*(a2 + 48))
    {
      v17 = *a2;
      v18 = *(a1 + 8);
      v19 = *a1;
      sub_1D87DE1C8(*a2, v8, v10, v9, v12, *(a2 + 40), 0);
      v20 = v28;
      sub_1D87DE1C8(v19, v18, v5, v4, v28, *(&v28 + 1), 0);
      v29 = sub_1D88E59B0(v19, v17);
      sub_1D87DE224(v19, v18, v5, v4, v20, *(&v20 + 1), 0);
      sub_1D87DE224(v17, v8, v10, v9, v12, v31, 0);
      return v29 & 1;
    }

    goto LABEL_14;
  }

  if (*(a1 + 48) != 1)
  {
    if (v5 | v3 | v2 | v4 | v6 | *(&v6 + 1))
    {
      if (v13 == 2 && v7 == 1 && !(v10 | v8 | v9 | v12 | v11))
      {
        v16 = 1;
        sub_1D87DE224(1, 0, 0, v4, v6, *(&v6 + 1), 2);
        sub_1D87DE224(1, 0, 0, v9, v12, v11, 2);
        return v16 & 1;
      }
    }

    else if (v13 == 2 && !(v10 | v8 | v7 | v9 | v12 | v11))
    {
      sub_1D87DE224(0, 0, 0, v4, v6, *(&v6 + 1), 2);
      sub_1D87DE224(0, 0, 0, v9, v12, v11, 2);
      v16 = 1;
      return v16 & 1;
    }

LABEL_14:
    v27 = *(a2 + 16);
    v22 = *(a1 + 48);
    v25 = *(a2 + 48);
    v23 = *a1;
    sub_1D87DE1C8(v7, v8, v27, v9, *(a2 + 32), v11, v13);
    sub_1D87DE1C8(v23, v3, v5, v4, v28, *(&v28 + 1), v22);
    sub_1D87DE224(v23, v3, v5, v4, v28, *(&v28 + 1), v22);
    sub_1D87DE224(v7, v8, v27, v9, v30, v11, v25);
    v16 = 0;
    return v16 & 1;
  }

  if (v13 != 1)
  {
    goto LABEL_14;
  }

  v33[0] = *a1;
  v33[1] = v3;
  v33[2] = v5;
  v33[3] = v4;
  v34 = v6;
  v14 = v7;
  v32[0] = v7;
  v32[1] = v8;
  v24 = v7;
  v26 = v10;
  v32[2] = v10;
  v32[3] = v9;
  v32[4] = v12;
  v32[5] = v11;
  v15 = v2;
  v16 = _s22VisualIntelligenceCore12GenericErrorV2eeoiySbAC_ACtFZ_0(v33, v32);
  sub_1D87DE1C8(v14, v8, v26, v9, v12, v11, 1);
  sub_1D87DE1C8(v15, v3, v5, v4, v28, *(&v28 + 1), 1);
  sub_1D87DE224(v15, v3, v5, v4, v28, *(&v28 + 1), 1);
  sub_1D87DE224(v24, v8, v26, v9, v12, v11, 1);
  return v16 & 1;
}

uint64_t sub_1D87DC694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D87DC6FC()
{
  result = qword_1ECA63640;
  if (!qword_1ECA63640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63640);
  }

  return result;
}

uint64_t sub_1D87DC750(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D87DC798()
{
  result = qword_1ECA63650;
  if (!qword_1ECA63650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63650);
  }

  return result;
}

unint64_t sub_1D87DC7EC()
{
  result = qword_1ECA63658;
  if (!qword_1ECA63658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63658);
  }

  return result;
}

uint64_t sub_1D87DC840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventLookupItem();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D87DC8C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D87DC94C()
{
  result = qword_1ECA63680;
  if (!qword_1ECA63680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63680);
  }

  return result;
}

unint64_t sub_1D87DC9F8()
{
  result = qword_1ECA63688;
  if (!qword_1ECA63688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63688);
  }

  return result;
}

unint64_t sub_1D87DCA50()
{
  result = qword_1ECA63690;
  if (!qword_1ECA63690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63690);
  }

  return result;
}

unint64_t sub_1D87DCAA8()
{
  result = qword_1ECA63698;
  if (!qword_1ECA63698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63698);
  }

  return result;
}

unint64_t sub_1D87DCB00()
{
  result = qword_1ECA636A0;
  if (!qword_1ECA636A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA636A0);
  }

  return result;
}

unint64_t sub_1D87DCB58()
{
  result = qword_1ECA636A8;
  if (!qword_1ECA636A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA636A8);
  }

  return result;
}

unint64_t sub_1D87DCBB0()
{
  result = qword_1ECA636B0;
  if (!qword_1ECA636B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA636B0);
  }

  return result;
}

unint64_t sub_1D87DCC08()
{
  result = qword_1ECA636B8;
  if (!qword_1ECA636B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA636B8);
  }

  return result;
}

unint64_t sub_1D87DCC60()
{
  result = qword_1ECA636C0;
  if (!qword_1ECA636C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA636C0);
  }

  return result;
}

unint64_t sub_1D87DCCB8()
{
  result = qword_1ECA636C8;
  if (!qword_1ECA636C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA636C8);
  }

  return result;
}

unint64_t sub_1D87DCDA0()
{
  result = qword_1ECA636E0;
  if (!qword_1ECA636E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA636E0);
  }

  return result;
}

unint64_t sub_1D87DCDF8()
{
  result = qword_1ECA636E8;
  if (!qword_1ECA636E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA636E8);
  }

  return result;
}

unint64_t sub_1D87DCE50()
{
  result = qword_1ECA636F0;
  if (!qword_1ECA636F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA636F0);
  }

  return result;
}

unint64_t sub_1D87DCEA8()
{
  result = qword_1ECA636F8;
  if (!qword_1ECA636F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA636F8);
  }

  return result;
}

uint64_t sub_1D87DCEFC()
{
  result = type metadata accessor for ResultLookupState(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BuiltInAction(319);
    if (v2 <= 0x3F)
    {
      result = sub_1D8B15030();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D87DCF8C()
{
  result = type metadata accessor for GeoLocateState(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for EventLookupState(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore11LookupStateO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D87DD0B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D87DD0F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D87DD14C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
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

uint64_t sub_1D87DD1B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D87DD200(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 4 * -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D87DD2E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D87DD32C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore18SummarizationStateO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D87DD3D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 2) & 0x3F80 | (*(a1 + 32) >> 1) | (*(a1 + 32) >> 3) & 0xFFFFC000;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D87DD438(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = (4 * -a2) & 0xFE00 | (2 * (-a2 & 0x7FLL)) & 0xFFFFFFF80001FFFFLL | ((-a2 >> 14) << 17);
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      return result;
    }

    *(a1 + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D87DD4C4(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 32) = *(result + 32) & 0x10101 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0x8000000000000000;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore14ReadAloudStateO(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D87DD564(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D87DD5AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D87DD600(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D87DD654(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D87DD69C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D87DD748()
{
  result = type metadata accessor for EventLookupState.EventLookupResult(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D87DD7E4()
{
  type metadata accessor for EventLookupItem();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGImage(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore20SaveOrCopyPhotoStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D87DD880(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D87DD8D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D87DD940(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D87DD988(uint64_t result, int a2, int a3)
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

uint64_t sub_1D87DD9F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D87DDA38(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionPredictor.ActionPredictorError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ActionPredictor.ActionPredictorError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1D87DDB98()
{
  result = qword_1ECA63740;
  if (!qword_1ECA63740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63740);
  }

  return result;
}

unint64_t sub_1D87DDBF0()
{
  result = qword_1ECA63748;
  if (!qword_1ECA63748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63748);
  }

  return result;
}

unint64_t sub_1D87DDC48()
{
  result = qword_1ECA63750;
  if (!qword_1ECA63750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63750);
  }

  return result;
}

unint64_t sub_1D87DDCA0()
{
  result = qword_1ECA63758;
  if (!qword_1ECA63758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63758);
  }

  return result;
}

unint64_t sub_1D87DDCF8()
{
  result = qword_1ECA63760;
  if (!qword_1ECA63760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63760);
  }

  return result;
}

unint64_t sub_1D87DDD50()
{
  result = qword_1ECA63768;
  if (!qword_1ECA63768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63768);
  }

  return result;
}

uint64_t sub_1D87DDDA4()
{
  v0 = sub_1D8B16930();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D87DDDF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1D87DDF0C()
{
  result = qword_1EE0E36A0;
  if (!qword_1EE0E36A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0E36A0);
  }

  return result;
}

id sub_1D87DDF58(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return a1;
  }
}

void sub_1D87DDF68(void *a1, id a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D87DDF78(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1D87DDF8C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1D87DE09C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1D87DE0B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

void sub_1D87DE0CC(uint64_t a1, void *a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {

    v4 = a2;
  }
}

uint64_t sub_1D87DE130(uint64_t a1, void *a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }

  return result;
}

uint64_t sub_1D87DE1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    if (a7 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_1D87DE224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    if (a7 != 1)
    {
      return result;
    }
  }
}

unint64_t sub_1D87DE334()
{
  result = qword_1ECA637A8;
  if (!qword_1ECA637A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA637A0);
    sub_1D87DC750(&qword_1ECA637B0, type metadata accessor for VisualIntelligenceLookupResult);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA637A8);
  }

  return result;
}

unint64_t sub_1D87DE3E8()
{
  result = qword_1ECA637B8;
  if (!qword_1ECA637B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA637B8);
  }

  return result;
}

uint64_t sub_1D87DE488(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656CLL;
  v3 = 0x7474756853657270;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6261686372616573;
    }

    else
    {
      v5 = 0x7474756853657270;
    }

    if (v4)
    {
      v6 = 0xEA0000000000656CLL;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x7261507473726966;
    v6 = 0xEA00000000007974;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6E49746C697562;
    }

    else
    {
      v5 = 0x62616D6165727473;
    }

    if (v4 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEA0000000000656CLL;
    }
  }

  v7 = 0x7261507473726966;
  v8 = 0xEA00000000007974;
  v9 = 0xE700000000000000;
  v10 = 0x6E49746C697562;
  if (a2 != 3)
  {
    v10 = 0x62616D6165727473;
    v9 = 0xEA0000000000656CLL;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x6261686372616573;
  }

  else
  {
    v2 = 0xEA00000000007265;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D8B16BA0();
  }

  return v13 & 1;
}

uint64_t sub_1D87DE60C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x6765526567616D69;
  v6 = 0xEB000000006E6F69;
  if (a1 != 5)
  {
    v5 = 0x74616E696769726FLL;
    v6 = 0xEA0000000000726FLL;
  }

  v7 = 0x6E6F697461746F72;
  v8 = 0xED0000656C676E41;
  if (a1 != 3)
  {
    v7 = 0x6D617473656D6974;
    v8 = 0xE900000000000070;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6E656469666E6F63;
  v10 = 0xEA00000000006563;
  if (a1 != 1)
  {
    v9 = 0x7372656E726F63;
    v10 = 0xE700000000000000;
  }

  if (a1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0xEA00000000006563;
        if (v11 != 0x6E656469666E6F63)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x7372656E726F63)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v13 = 0xE200000000000000;
      if (v11 != 25705)
      {
        goto LABEL_38;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0xEB000000006E6F69;
      if (v11 != 0x6765526567616D69)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v13 = 0xEA0000000000726FLL;
      if (v11 != 0x74616E696769726FLL)
      {
LABEL_38:
        v14 = sub_1D8B16BA0();
        goto LABEL_39;
      }
    }
  }

  else if (a2 == 3)
  {
    v13 = 0xED0000656C676E41;
    if (v11 != 0x6E6F697461746F72)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v13 = 0xE900000000000070;
    if (v11 != 0x6D617473656D6974)
    {
      goto LABEL_38;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_38;
  }

  v14 = 1;
LABEL_39:

  return v14 & 1;
}

uint64_t sub_1D87DE87C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001FLL;
  v3 = "";
  v4 = a1;
  v5 = 0xD000000000000024;
  if (a1 == 4)
  {
    v6 = "IntelligenceCamera.ImageSearch";
  }

  else
  {
    v5 = 0xD00000000000002CLL;
    v6 = "gs.AppleIntelligence";
  }

  if (a1 == 3)
  {
    v7 = 0xD00000000000002ELL;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = "sualIntelligenceCamera";
  }

  v8 = 0xD00000000000003FLL;
  if (a1 == 1)
  {
    v9 = "textComposition.OpenEndedSchema";
  }

  else
  {
    v8 = 0xD000000000000026;
    v9 = "ucturedExtraction.addToCalendar";
  }

  if (v4)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0xD00000000000001FLL;
    v10 = "";
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xD00000000000002ELL;
      v3 = "sualIntelligenceCamera";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000024;
      v3 = "IntelligenceCamera.ImageSearch";
    }

    else
    {
      v2 = 0xD00000000000002CLL;
      v3 = "gs.AppleIntelligence";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD00000000000003FLL;
      v3 = "textComposition.OpenEndedSchema";
    }

    else
    {
      v2 = 0xD000000000000026;
      v3 = "ucturedExtraction.addToCalendar";
    }
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D8B16BA0();
  }

  return v13 & 1;
}

uint64_t sub_1D87DE9EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006F6564;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x6956686361747461;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (v3)
    {
      v7 = 0xEB000000006F6564;
    }

    else
    {
      v7 = 0x80000001D8B40360;
    }
  }

  else
  {
    v4 = 0x695664726F636572;
    if (a1 == 3)
    {
      v5 = 0xEB000000006F6564;
    }

    else
    {
      v4 = 0x6E67616964737973;
      v5 = 0xEB0000000065736FLL;
    }

    if (a1 == 2)
    {
      v6 = 0x6C6C6F4361746164;
    }

    else
    {
      v6 = v4;
    }

    if (v3 == 2)
    {
      v7 = 0xEE006E6F69746365;
    }

    else
    {
      v7 = v5;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x6956686361747461;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (!a2)
    {
      v2 = 0x80000001D8B40360;
    }

    if (v6 != v8)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v2 = 0xEE006E6F69746365;
    if (v6 != 0x6C6C6F4361746164)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    if (v6 != 0x695664726F636572)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v2 = 0xEB0000000065736FLL;
    if (v6 != 0x6E67616964737973)
    {
LABEL_34:
      v9 = sub_1D8B16BA0();
      goto LABEL_35;
    }
  }

  if (v7 != v2)
  {
    goto LABEL_34;
  }

  v9 = 1;
LABEL_35:

  return v9 & 1;
}

uint64_t sub_1D87DEBB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x65676175676E616CLL;
  v6 = 0xE900000000000073;
  if (a1 != 6)
  {
    v5 = 0x73656E696CLL;
    v6 = 0xE500000000000000;
  }

  v7 = 0x6E6F697461746F72;
  v8 = 0xED0000656C676E41;
  if (a1 != 4)
  {
    v7 = 0x6D617473656D6974;
    v8 = 0xE900000000000070;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE700000000000000;
  v10 = 0x7372656E726F63;
  if (a1 != 2)
  {
    v10 = 0x6C6562616CLL;
    v9 = 0xE500000000000000;
  }

  if (a1)
  {
    v4 = 0x6E656469666E6F63;
    v3 = 0xEA00000000006563;
  }

  if (a1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (a1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE900000000000073;
        if (v11 != 0x65676175676E616CLL)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x73656E696CLL)
        {
LABEL_43:
          v14 = sub_1D8B16BA0();
          goto LABEL_44;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xED0000656C676E41;
      if (v11 != 0x6E6F697461746F72)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = 0xE900000000000070;
      if (v11 != 0x6D617473656D6974)
      {
        goto LABEL_43;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x7372656E726F63)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x6C6562616CLL)
      {
        goto LABEL_43;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEA00000000006563;
    if (v11 != 0x6E656469666E6F63)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    if (v11 != 25705)
    {
      goto LABEL_43;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_43;
  }

  v14 = 1;
LABEL_44:

  return v14 & 1;
}

uint64_t sub_1D87DEE4C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "searchSectionsAsData";
      v3 = 0xD000000000000017;
    }

    else
    {
      v4 = "hasOnboardedImageSearch";
      v3 = 0xD000000000000010;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 0xD00000000000001ELL;
    }

    if (v2)
    {
      v4 = "isVisualLookUpEagerModeEnabled";
    }

    else
    {
      v4 = "dn't Try";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000017;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v6 = "searchSectionsAsData";
    }

    else
    {
      v6 = "hasOnboardedImageSearch";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0xD00000000000001ELL;
    }

    if (a2)
    {
      v6 = "isVisualLookUpEagerModeEnabled";
    }

    else
    {
      v6 = "dn't Try";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D8B16BA0();
  }

  return v7 & 1;
}

uint64_t sub_1D87DEF7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_1D8B16BA0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1D87DF180(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x80000001D8B400C0;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x80000001D8B400E0;
    }

    v5 = 0x80000001D8B40080;
    if (a1 != 3)
    {
      v5 = 0x80000001D8B400A0;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_1D8B16BA0();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x80000001D8B400C0;
    }

    else
    {
      v10 = 0x80000001D8B400E0;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x80000001D8B40080;
    }

    else
    {
      v10 = 0x80000001D8B400A0;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_1D87DF358(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x2065727574616546;
    v12 = 0xED00002977654E28;
    v13 = 0x6D65636E61686E45;
    v14 = 0xEB00000000746E65;
    if (a1 != 8)
    {
      v13 = 1802723668;
      v14 = 0xE400000000000000;
    }

    if (a1 != 7)
    {
      v11 = v13;
      v12 = v14;
    }

    v15 = 0x2073756F69726553;
    v16 = 0xEB00000000677542;
    if (a1 != 5)
    {
      v15 = 0x754220726568744FLL;
      v16 = 0xE900000000000067;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE500000000000000;
    v5 = 0x7265776F50;
    v6 = 0x616D726F66726550;
    v7 = 0xEB0000000065636ELL;
    if (a1 != 3)
    {
      v6 = 0x69626173552F4955;
      v7 = 0xEC0000007974696CLL;
    }

    if (a1 != 2)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0xD000000000000014;
    if (a1)
    {
      v3 = 0x80000001D8B40000;
    }

    else
    {
      v8 = 0x7974697275636553;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 != 5)
      {
        v19 = 0xE900000000000067;
        if (v9 != 0x754220726568744FLL)
        {
LABEL_56:
          v20 = sub_1D8B16BA0();
          goto LABEL_57;
        }

        goto LABEL_54;
      }

      v17 = 0x2073756F69726553;
      v18 = 6780226;
    }

    else
    {
      if (a2 == 7)
      {
        v19 = 0xED00002977654E28;
        if (v9 != 0x2065727574616546)
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      if (a2 != 8)
      {
        v19 = 0xE400000000000000;
        if (v9 != 1802723668)
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      v17 = 0x6D65636E61686E45;
      v18 = 7630437;
    }

LABEL_41:
    v19 = v18 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v9 != v17)
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v19 = 0xE500000000000000;
      if (v9 != 0x7265776F50)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    if (a2 != 3)
    {
      v19 = 0xEC0000007974696CLL;
      if (v9 != 0x69626173552F4955)
      {
        goto LABEL_56;
      }

      goto LABEL_54;
    }

    v17 = 0x616D726F66726550;
    v18 = 6644590;
    goto LABEL_41;
  }

  if (a2)
  {
    v19 = 0x80000001D8B40000;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v19 = 0xE800000000000000;
    if (v9 != 0x7974697275636553)
    {
      goto LABEL_56;
    }
  }

LABEL_54:
  if (v10 != v19)
  {
    goto LABEL_56;
  }

  v20 = 1;
LABEL_57:

  return v20 & 1;
}

uint64_t sub_1D87DF698(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 6512973;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736956;
    v4 = 0xE600000000000000;
  }

  v6 = 0x5654656C707041;
  if (a1 != 3)
  {
    v6 = 0x646F50656D6F48;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684099177;
  if (a1 != 1)
  {
    v8 = 0x6863746157;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        if (v9 != 0x6863746157)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE300000000000000;
      if (v9 != 6512973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6F69736956)
      {
LABEL_39:
        v12 = sub_1D8B16BA0();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x5654656C707041)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x646F50656D6F48)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_1D87DF890(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7265676165;
  v3 = a1;
  if (a1 > 1u)
  {
    v4 = 0x646E616D65446E6FLL;
    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEB00000000776152;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6974537265676165;
    }

    else
    {
      v4 = 0x7265676165;
    }

    if (v3)
    {
      v5 = 0xEB00000000796B63;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE800000000000000;
  if (a2 != 2)
  {
    v7 = 0xEB00000000776152;
  }

  if (a2)
  {
    v2 = 0x6974537265676165;
    v6 = 0xEB00000000796B63;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x646E616D65446E6FLL;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D8B16BA0();
  }

  return v10 & 1;
}

unint64_t sub_1D87DFA08(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D87F3F24(0, v1, 0);
  v2 = v28;
  v4 = v3 + 56;
  result = sub_1D8B16580();
  v6 = result;
  v7 = 0;
  v24 = v3 + 64;
  v25 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_28;
    }

    v26 = v7;
    v27 = *(v3 + 36);
    v11 = v3;
    result = sub_1D87E6BC4(*(*(v3 + 48) + v6), &unk_1F54237C8);
    if (v12)
    {
      goto LABEL_32;
    }

    v13 = 1 << result;
    if (result >= 0x40)
    {
      v13 = 0;
    }

    if (result <= 0x40)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v16 = *(v28 + 16);
    v15 = *(v28 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_1D87F3F24((v15 > 1), v16 + 1, 1);
    }

    *(v28 + 16) = v16 + 1;
    *(v28 + 8 * v16 + 32) = v14;
    v8 = 1 << *(v11 + 32);
    if (v6 >= v8)
    {
      goto LABEL_29;
    }

    v17 = *(v4 + 8 * v10);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_30;
    }

    v3 = v11;
    if (v27 != *(v11 + 36))
    {
      goto LABEL_31;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v26;
    }

    else
    {
      v19 = v10 << 6;
      v20 = v10 + 1;
      v21 = (v24 + 8 * v10);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1D87977B4(v6, v27, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_25;
        }
      }

      result = sub_1D87977B4(v6, v27, 0);
LABEL_25:
      v9 = v26;
    }

    v7 = v9 + 1;
    v6 = v8;
    if (v7 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D87DFC48(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1D8B16110();
  if (!v19)
  {
    return sub_1D8B15D50();
  }

  v41 = v19;
  v45 = sub_1D8B16850();
  v32 = sub_1D8B16860();
  sub_1D8B16800();
  result = sub_1D8B160F0();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1D8B16170();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1D8B16840();
      result = sub_1D8B16130();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ActionPin.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D8B13240();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__n128 ActionPin.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActionPin(0) + 20);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

uint64_t ActionPin.systemImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionPin(0) + 24));

  return v1;
}

uint64_t ActionPin.rankedPills.getter()
{
  type metadata accessor for ActionPin(0);
}

uint64_t sub_1D87E01B0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6D496D6574737973;
  v4 = 0x695064656B6E6172;
  if (v1 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7372656E726F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D87E0254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D881EB9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D87E027C(uint64_t a1)
{
  v2 = sub_1D881BB24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E02B8(uint64_t a1)
{
  v2 = sub_1D881BB24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionPin.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA637C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D881BB24();
  sub_1D8B16DD0();
  v20 = 0;
  sub_1D8B13240();
  sub_1D881BBCC(&qword_1ECA637D8, MEMORY[0x1E69695A8]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for ActionPin(0);
    v10 = (v3 + *(v9 + 20));
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v12 = v10[3];
    v18 = v10[2];
    v19 = v12;
    v15 = 1;
    sub_1D881BB78();
    sub_1D8B16AE0();
    LOBYTE(v16) = 2;
    sub_1D8B16A90();
    *&v16 = *(v3 + *(v9 + 28));
    v15 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA637E0);
    sub_1D881BC88(&qword_1ECA637E8, &qword_1ECA637F0);
    sub_1D8B16AE0();
    LOBYTE(v16) = 4;
    sub_1D8B16AA0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ActionPin.hash(into:)(__int128 *a1)
{
  sub_1D8B13240();
  sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v3 = type metadata accessor for ActionPin(0);
  v4 = (v1 + *(v3 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  v12 = v4[7];
  if (*v4 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x1DA720250](*&v5);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1DA720250](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x1DA720250](*&v14);
  if (v8 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8;
  }

  MEMORY[0x1DA720250](*&v15);
  if (v9 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v9;
  }

  MEMORY[0x1DA720250](*&v16);
  if (v10 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v10;
  }

  MEMORY[0x1DA720250](*&v17);
  if (v11 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v11;
  }

  MEMORY[0x1DA720250](*&v18);
  if (v12 == 0.0)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = v12;
  }

  MEMORY[0x1DA720250](*&v19);
  sub_1D8B15A60();
  sub_1D87CF3E8(a1, *(v1 + *(v3 + 28)));
  return sub_1D8B16D40();
}

uint64_t ActionPin.hashValue.getter()
{
  sub_1D8B16D20();
  sub_1D8B13240();
  sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v1 = type metadata accessor for ActionPin(0);
  v2 = (v0 + *(v1 + 20));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v10 = v2[6];
  v9 = v2[7];
  if (*v2 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1DA720250](*&v3);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x1DA720250](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x1DA720250](*&v12);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1DA720250](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x1DA720250](*&v14);
  if (v8 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8;
  }

  MEMORY[0x1DA720250](*&v15);
  if (v10 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v10;
  }

  MEMORY[0x1DA720250](*&v16);
  if (v9 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v9;
  }

  MEMORY[0x1DA720250](*&v17);
  sub_1D8B15A60();
  sub_1D87CF3E8(v19, *(v0 + *(v1 + 28)));
  sub_1D8B16D40();
  return sub_1D8B16D80();
}

uint64_t ActionPin.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1D8B13240();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA637F8);
  v25 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v23 - v6;
  v8 = type metadata accessor for ActionPin(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D881BB24();
  v28 = v7;
  sub_1D8B16DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v10;
  v13 = v25;
  v12 = v26;
  LOBYTE(v31) = 0;
  sub_1D881BBCC(&unk_1ECA689C0, MEMORY[0x1E69695A8]);
  v14 = v27;
  sub_1D8B16A10();
  (*(v12 + 32))(v11, v14, v4);
  v36 = 1;
  sub_1D881BC34();
  sub_1D8B16A10();
  v15 = (v11 + v8[5]);
  v16 = v32;
  *v15 = v31;
  v15[1] = v16;
  v17 = v34;
  v15[2] = v33;
  v15[3] = v17;
  LOBYTE(v30) = 2;
  v18 = sub_1D8B169C0();
  v19 = (v11 + v8[6]);
  *v19 = v18;
  v19[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA637E0);
  v35 = 3;
  sub_1D881BC88(&qword_1ECA63808, &qword_1ECA63810);
  sub_1D8B16A10();
  *(v11 + v8[7]) = v30;
  LOBYTE(v30) = 4;
  v21 = sub_1D8B169D0();
  (*(v13 + 8))(v28, v29);
  *(v11 + v8[8]) = v21 & 1;
  sub_1D881BDC4(v11, v24, type metadata accessor for ActionPin);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D881BD44(v11, type metadata accessor for ActionPin);
}

uint64_t sub_1D87E0DBC(uint64_t a1, uint64_t a2)
{
  sub_1D8B16D20();
  sub_1D8B13240();
  sub_1D881BBCC(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  sub_1D8B157A0();
  v4 = (v2 + *(a2 + 20));
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  v9 = v4[6];
  v10 = v4[7];
  sub_1D8818B80(*v4, v4[1]);
  sub_1D8818B80(v5, v6);
  sub_1D8818B80(v7, v8);
  sub_1D8818B80(v9, v10);
  sub_1D8B15A60();
  sub_1D87CF3E8(v12, *(v2 + *(a2 + 28)));
  sub_1D8B16D40();
  return sub_1D8B16D80();
}

uint64_t _s22VisualIntelligenceCore19ParseDetectorResultV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D8B13240();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

__n128 sub_1D87E0F80@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 20);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_1D87E0F9C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_1D87E0FEC()
{
  v0 = sub_1D8B13240();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ActionPin(0);
  __swift_allocate_value_buffer(v4, qword_1EE0E3EC0);
  v5 = __swift_project_value_buffer(v4, qword_1EE0E3EC0);
  sub_1D8B13230();
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = 1.0;
  v18.size.height = 1.0;
  MinX = CGRectGetMinX(v18);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = 1.0;
  v19.size.height = 1.0;
  MinY = CGRectGetMinY(v19);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = 1.0;
  v20.size.height = 1.0;
  MaxX = CGRectGetMaxX(v20);
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = 1.0;
  v21.size.height = 1.0;
  v9 = CGRectGetMinY(v21);
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = 1.0;
  v22.size.height = 1.0;
  v10 = CGRectGetMinX(v22);
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = 1.0;
  v23.size.height = 1.0;
  MaxY = CGRectGetMaxY(v23);
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = 1.0;
  v24.size.height = 1.0;
  v12 = CGRectGetMaxX(v24);
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = 1.0;
  v25.size.height = 1.0;
  v13 = CGRectGetMaxY(v25);
  result = (*(v1 + 32))(v5, v3, v0);
  v15 = (v5 + v4[5]);
  *v15 = MinX;
  v15[1] = MinY;
  v15[2] = MaxX;
  v15[3] = v9;
  v15[4] = v10;
  v15[5] = MaxY;
  v15[6] = v12;
  v15[7] = v13;
  v16 = (v5 + v4[6]);
  *v16 = 0xD000000000000013;
  v16[1] = 0x80000001D8B421D0;
  *(v5 + v4[7]) = MEMORY[0x1E69E7CC0];
  *(v5 + v4[8]) = 0;
  return result;
}

uint64_t static ActionPin.fullScreenActionPin.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE0E3EB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ActionPin(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE0E3EC0);
  return sub_1D881BDC4(v3, a1, type metadata accessor for ActionPin);
}

uint64_t sub_1D87E1298()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64028);
  v0 = *(type metadata accessor for ActionPin.PermanentPill(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D8B20D00;
  v4 = v3 + v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 6, v5);
  v6(v4 + v1, 2, 6, v5);
  v6(v4 + 2 * v1, 3, 6, v5);
  v6(v4 + 3 * v1, 4, 6, v5);
  v6(v4 + 4 * v1, 5, 6, v5);
  v7 = *(v5 + 48);
  v8 = sub_1D8B13E30();
  (*(*(v8 - 8) + 56))(v4 + 5 * v1, 1, 1, v8);
  *(v4 + 5 * v1 + v7) = MEMORY[0x1E69E7CC0];
  v6(v4 + 5 * v1, 0, 6, v5);
  result = (v6)(v4 + 6 * v1, 6, 6, v5);
  off_1EE0E3EA8 = v3;
  return result;
}

uint64_t static ActionPin.PermanentPill.allCases.getter()
{
  if (qword_1EE0E3EA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static ActionPin.PermanentPill.allCases.setter(void *a1)
{
  if (qword_1EE0E3EA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_1EE0E3EA8 = a1;
}

uint64_t (*static ActionPin.PermanentPill.allCases.modify())()
{
  if (qword_1EE0E3EA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D87E1654@<X0>(void *a1@<X8>)
{
  if (qword_1EE0E3EA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_1EE0E3EA8;
}

uint64_t sub_1D87E16D4(void **a1)
{
  v1 = *a1;
  v2 = qword_1EE0E3EA0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_1EE0E3EA8 = v1;
}

uint64_t ActionPin.PermanentPill.pill.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BuiltInAction(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActionPin.PermanentPill.builtInAction.getter(v4);
  BuiltInAction.pill.getter(a1);
  return sub_1D881BD44(v4, type metadata accessor for BuiltInAction);
}

uint64_t ActionPin.PermanentPill.builtInAction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ActionPin.PermanentPill(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D881BDC4(v2, v6, type metadata accessor for ActionPin.PermanentPill);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
  if (!(*(*(v7 - 8) + 48))(v6, 6, v7))
  {
    v8 = *(v7 + 48);
    v9 = *&v6[v8];
    sub_1D881F6FC(v6, a1, &qword_1ECA635B8);
    *(a1 + v8) = v9;
  }

  type metadata accessor for BuiltInAction(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t BuiltInAction.pill.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D8B13240();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BuiltInAction(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE0E8870 != -1)
  {
    swift_once();
  }

  v12 = off_1EE0E8878;
  result = BuiltInAction.asEmpty.getter(v11);
  if (v12[2])
  {
    result = sub_1D87EFA28(v11);
    if (v14)
    {
      v39 = v8;
      (*(v5 + 16))(v7, v12[7] + *(v5 + 72) * result, v4);
      sub_1D881BD44(v11, type metadata accessor for BuiltInAction);
      v38 = sub_1D8B131E0();
      v16 = v15;
      (*(v5 + 8))(v7, v4);
      v17 = sub_1D87EB930();
      v19 = v18;
      v20 = sub_1D87EB638();
      v22 = v21;
      v23 = sub_1D87ED334();
      v24 = sub_1D87DFA08(v23);

      v25 = *(v24 + 16);
      if (v25)
      {
        if (v25 > 3)
        {
          v26 = v25 & 0x7FFFFFFFFFFFFFFCLL;
          v28 = (v24 + 48);
          v29 = 0uLL;
          v30 = v25 & 0x7FFFFFFFFFFFFFFCLL;
          v31 = 0uLL;
          do
          {
            v29 = vorrq_s8(v28[-1], v29);
            v31 = vorrq_s8(*v28, v31);
            v28 += 2;
            v30 -= 4;
          }

          while (v30);
          v32 = vorrq_s8(v31, v29);
          v27 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
          if (v25 == v26)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
        }

        v33 = v25 - v26;
        v34 = (v24 + 8 * v26 + 32);
        do
        {
          v35 = *v34++;
          *&v27 |= v35;
          --v33;
        }

        while (v33);
      }

      else
      {
        v27 = 0;
      }

LABEL_14:

      v36 = *(type metadata accessor for ActionPin.Pill(0) + 36);
      sub_1D881BDC4(v2, a1 + v36, type metadata accessor for BuiltInAction);
      result = (*(v9 + 56))(a1 + v36, 0, 1, v39);
      *a1 = v38;
      a1[1] = v16;
      a1[2] = v17;
      a1[3] = v19;
      a1[4] = v20;
      a1[5] = v22;
      a1[6] = 0;
      a1[7] = 0;
      a1[8] = v27;
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

uint64_t ActionPin.PermanentPill.hash(into:)(uint64_t a1)
{
  v32 = a1;
  v2 = sub_1D8B13E40();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B13E30();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635B8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - v14;
  v16 = type metadata accessor for ActionPin.PermanentPill(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D881BDC4(v1, v18, type metadata accessor for ActionPin.PermanentPill);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
  v20 = (*(*(v19 - 8) + 48))(v18, 6, v19);
  if (v20 > 2)
  {
    if (v20 > 4)
    {
      if (v20 == 5)
      {
        v21 = 4;
      }

      else
      {
        v21 = 6;
      }
    }

    else if (v20 == 3)
    {
      v21 = 2;
    }

    else
    {
      v21 = 3;
    }

    return MEMORY[0x1DA720210](v21);
  }

  v31 = v5;
  if (v20)
  {
    v21 = v20 != 1;
    return MEMORY[0x1DA720210](v21);
  }

  v30 = *&v18[*(v19 + 48)];
  sub_1D881F6FC(v18, v15, &qword_1ECA635B8);
  v22 = v32;
  MEMORY[0x1DA720210](5);
  sub_1D87A0E38(v15, v13, &qword_1ECA635B8);
  v23 = v7;
  v24 = *(v7 + 48);
  v25 = v6;
  if (v24(v13, 1, v6) == 1)
  {
    sub_1D8B16D40();
  }

  else
  {
    v27 = v9;
    (*(v23 + 32))(v9, v13, v25);
    sub_1D8B16D40();
    v28 = v31;
    sub_1D8B13E10();
    sub_1D881BBCC(&qword_1ECA635D8, MEMORY[0x1E699C610]);
    sub_1D8B157A0();
    (*(v3 + 8))(v28, v2);
    sub_1D8B13DF0();
    sub_1D8B15A60();

    sub_1D8B13DE0();
    sub_1D8B15A60();

    (*(v23 + 8))(v27, v25);
  }

  sub_1D87CF700(v22, v30);

  return sub_1D87A14E4(v15, &qword_1ECA635B8);
}

uint64_t sub_1D87E2168@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BuiltInAction(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActionPin.PermanentPill.builtInAction.getter(v4);
  BuiltInAction.pill.getter(a1);
  return sub_1D881BD44(v4, type metadata accessor for BuiltInAction);
}

uint64_t ActionPin.modifyWithCorners(_:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D8B13240();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v6 = type metadata accessor for ActionPin(0);
  v7 = *(v2 + v6[7]);
  v8 = (v2 + v6[6]);
  v9 = *(v2 + v6[8]);
  v11 = *v8;
  v10 = v8[1];
  v12 = (a2 + v6[5]);
  v13 = a1[1];
  *v12 = *a1;
  v12[1] = v13;
  v14 = a1[3];
  v12[2] = a1[2];
  v12[3] = v14;
  v15 = (a2 + v6[6]);
  *v15 = v11;
  v15[1] = v10;
  *(a2 + v6[7]) = v7;
  *(a2 + v6[8]) = v9;
}

uint64_t ActionPin.modifyWithSystemImage(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1D8B13240();
  (*(*(v7 - 8) + 16))(a3, v3, v7);
  v8 = type metadata accessor for ActionPin(0);
  v9 = v8[5];
  v10 = (v3 + v9);
  v11 = *(v3 + v8[7]);
  v12 = *(v3 + v8[8]);
  v13 = (a3 + v9);
  v14 = v10[1];
  *v13 = *v10;
  v13[1] = v14;
  v15 = v10[3];
  v13[2] = v10[2];
  v13[3] = v15;
  v16 = (a3 + v8[6]);
  *v16 = a1;
  v16[1] = a2;
  *(a3 + v8[7]) = v11;
  *(a3 + v8[8]) = v12;
}

uint64_t ActionPin.description.getter()
{
  sub_1D8B16720();

  sub_1D8B131E0();
  v1 = sub_1D881BE2C(8);
  v3 = v2;
  v5 = v4;
  v7 = v6;

  v8 = MEMORY[0x1DA71EF10](v1, v3, v5, v7);
  v10 = v9;

  MEMORY[0x1DA71EFA0](v8, v10);

  MEMORY[0x1DA71EFA0](32, 0xE100000000000000);
  v11 = *(v0 + *(type metadata accessor for ActionPin(0) + 28));
  if (*(v11 + 16))
  {
    v12 = *(type metadata accessor for ActionPin.Pill(0) - 8);
    v13 = v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v15 = *(v13 + 16);
    v14 = *(v13 + 24);
  }

  else
  {
    v14 = 0xE300000000000000;
    v15 = 4144959;
  }

  MEMORY[0x1DA71EFA0](v15, v14);

  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  return 0x69506E6F69746341;
}

uint64_t sub_1D87E2598(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633B0);
    return a2;
  }

  return result;
}

uint64_t sub_1D87E2638(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D87E2688(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    a3(0);
    return a2;
  }

  return result;
}

uint64_t sub_1D87E2734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D87E27B4(uint64_t a1)
{
  v2 = sub_1D881BF90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E27F0(uint64_t a1)
{
  v2 = sub_1D881BF90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E282C()
{
  if (*v0)
  {
    return 0x6574636964657270;
  }

  else
  {
    return 0x6E49746C697562;
  }
}

uint64_t sub_1D87E286C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E49746C697562 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D8B16BA0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574636964657270 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D8B16BA0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D87E2950(uint64_t a1)
{
  v2 = sub_1D881BEE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E298C(uint64_t a1)
{
  v2 = sub_1D881BEE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D87E29D4(uint64_t a1)
{
  v2 = sub_1D881BF3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E2A10(uint64_t a1)
{
  v2 = sub_1D881BF3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionPin.Pill.Source.encode(to:)(void *a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63818);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v22 = &v20 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63820);
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v20 - v4;
  v5 = type metadata accessor for BuiltInAction(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63828);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D881BEE8();
  sub_1D8B16DD0();
  sub_1D881BDC4(v28, v10, type metadata accessor for ActionPin.Pill.Source);
  if ((*(v6 + 48))(v10, 1, v5) == 1)
  {
    v30 = 1;
    sub_1D881BF3C();
    v15 = v22;
    sub_1D8B16A40();
    (*(v23 + 8))(v15, v25);
  }

  else
  {
    v17 = v21;
    sub_1D881BFE4(v10, v21, type metadata accessor for BuiltInAction);
    v29 = 0;
    sub_1D881BF90();
    v18 = v24;
    sub_1D8B16A40();
    sub_1D881BBCC(&qword_1ECA63848, type metadata accessor for BuiltInAction);
    v19 = v27;
    sub_1D8B16AE0();
    (*(v26 + 8))(v18, v19);
    sub_1D881BD44(v17, type metadata accessor for BuiltInAction);
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t ActionPin.Pill.Source.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BuiltInAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D881BDC4(v2, v10, type metadata accessor for ActionPin.Pill.Source);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return MEMORY[0x1DA720210](1);
  }

  sub_1D881BFE4(v10, v7, type metadata accessor for BuiltInAction);
  MEMORY[0x1DA720210](0);
  BuiltInAction.hash(into:)(a1);
  return sub_1D881BD44(v7, type metadata accessor for BuiltInAction);
}

uint64_t ActionPin.Pill.Source.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for BuiltInAction(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B16D20();
  sub_1D881BDC4(v1, v8, type metadata accessor for ActionPin.Pill.Source);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x1DA720210](1);
  }

  else
  {
    sub_1D881BFE4(v8, v5, type metadata accessor for BuiltInAction);
    MEMORY[0x1DA720210](0);
    BuiltInAction.hash(into:)(v11);
    sub_1D881BD44(v5, type metadata accessor for BuiltInAction);
  }

  return sub_1D8B16D80();
}

uint64_t ActionPin.Pill.Source.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63850);
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v36 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63858);
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63860);
  v45 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for ActionPin.Pill.Source(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  v17 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D881BEE8();
  v18 = v46;
  sub_1D8B16DB0();
  if (!v18)
  {
    v46 = v11;
    v37 = v14;
    v38 = v16;
    v19 = v44;
    v20 = sub_1D8B16A20();
    if (*(v20 + 16) == 1)
    {
      v21 = v45;
      if (*(v20 + 32))
      {
        v49 = 1;
        sub_1D881BF3C();
        sub_1D8B16950();
        v22 = v43;
        (*(v41 + 8))(v19, v40);
        (*(v21 + 8))(v10, v8);
        swift_unknownObjectRelease();
        v23 = type metadata accessor for BuiltInAction(0);
        v24 = v38;
        (*(*(v23 - 8) + 56))(v38, 1, 1, v23);
      }

      else
      {
        v48 = 0;
        sub_1D881BF90();
        v28 = v7;
        sub_1D8B16950();
        v30 = v10;
        v31 = v28;
        v32 = v8;
        v33 = type metadata accessor for BuiltInAction(0);
        sub_1D881BBCC(&qword_1ECA63868, type metadata accessor for BuiltInAction);
        v34 = v37;
        v35 = v39;
        sub_1D8B16A10();
        (*(v42 + 8))(v31, v35);
        (*(v21 + 8))(v30, v32);
        swift_unknownObjectRelease();
        (*(*(v33 - 8) + 56))(v34, 0, 1, v33);
        v24 = v38;
        sub_1D881BFE4(v34, v38, type metadata accessor for ActionPin.Pill.Source);
        v22 = v43;
      }

      sub_1D881BFE4(v24, v22, type metadata accessor for ActionPin.Pill.Source);
    }

    else
    {
      v25 = sub_1D8B16770();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
      *v27 = v46;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v45 + 8))(v10, v8);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_1D87E380C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D87E3840()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1D87E3874()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1D87E38A0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D87E38D4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 14;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D87E3908()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D87E393C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D87E3970()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D87E39AC(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BuiltInAction(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D881BDC4(v2, v10, type metadata accessor for ActionPin.Pill.Source);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return MEMORY[0x1DA720210](1);
  }

  sub_1D881BFE4(v10, v8, type metadata accessor for BuiltInAction);
  MEMORY[0x1DA720210](0);
  BuiltInAction.hash(into:)(a1);
  return sub_1D881BD44(v8, type metadata accessor for BuiltInAction);
}

uint64_t sub_1D87E3B3C()
{
  v1 = v0;
  v2 = type metadata accessor for BuiltInAction(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B16D20();
  sub_1D881BDC4(v1, v8, type metadata accessor for ActionPin.Pill.Source);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x1DA720210](1);
  }

  else
  {
    sub_1D881BFE4(v8, v6, type metadata accessor for BuiltInAction);
    MEMORY[0x1DA720210](0);
    BuiltInAction.hash(into:)(v11);
    sub_1D881BD44(v6, type metadata accessor for BuiltInAction);
  }

  return sub_1D8B16D80();
}

unint64_t sub_1D87E3D24()
{
  v1 = 0x656B636F6C626E75;
  v2 = 0xD00000000000002ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001BLL;
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

uint64_t ActionPin.Pill.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActionPin.Pill.localizedTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ActionPin.Pill.glyphName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ActionPin.Pill.bundleIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ActionPin.Pill.source.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ActionPin.Pill(0) + 36);

  return sub_1D881C04C(a1, v3);
}

uint64_t sub_1D87E3F88()
{
  v1 = type metadata accessor for BuiltInAction(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionPin.Pill(0);
  sub_1D881BDC4(v0 + *(v8 + 36), v7, type metadata accessor for ActionPin.Pill.Source);
  v9 = 1;
  if ((*(v2 + 48))(v7, 1, v1) != 1)
  {
    sub_1D881BFE4(v7, v4, type metadata accessor for BuiltInAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload >= 2)
      {
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_1D881BD44(v4, type metadata accessor for BuiltInAction);
      }

      return 0;
    }

    if ((EnumCaseMultiPayload - 11) >= 2 && EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload == 10)
      {
        return 2;
      }

LABEL_13:
      sub_1D881BD44(v4, type metadata accessor for BuiltInAction);
      return 3;
    }
  }

  return v9;
}

uint64_t ActionPin.Pill.init(id:localizedTitle:glyphName:bundleIdentifier:flags:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t *a10, uint64_t a11)
{
  v12 = *a10;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = v12;
  v13 = type metadata accessor for ActionPin.Pill(0);
  return sub_1D881BFE4(a11, a9 + *(v13 + 36), type metadata accessor for ActionPin.Pill.Source);
}

uint64_t ActionPin.Pill.init<A>(id:localizedTitle:glyphName:bundleIdentifier:flags:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v30 = a7;
  v31 = a8;
  v28 = a5;
  v29 = a6;
  v18 = *(a12 - 8);
  v27 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, a10, a12);
  ActionPin.Pill.Flags.init<A>(_:)(v20, a12, a13, v21, &v32);
  (*(v18 + 8))(a10, a12);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v22 = v29;
  a9[4] = v28;
  a9[5] = v22;
  v24 = v31;
  v23 = v32;
  a9[6] = v30;
  a9[7] = v24;
  a9[8] = v23;
  v25 = type metadata accessor for ActionPin.Pill(0);
  return sub_1D881BFE4(v27, a9 + *(v25 + 36), type metadata accessor for ActionPin.Pill.Source);
}

uint64_t ActionPin.Pill.Flags.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X7>, int8x8_t *a5@<X8>)
{
  v8 = sub_1D87DFC48(sub_1D87E66C8, 0, a2, MEMORY[0x1E69E6530], MEMORY[0x1E69E73E0], a3, MEMORY[0x1E69E7410], a4);
  v9 = *(v8 + 16);
  if (!v9)
  {
    v11 = 0;
    goto LABEL_10;
  }

  if (v9 <= 3)
  {
    v10 = 0;
    v11 = 0;
LABEL_8:
    v17 = v9 - v10;
    v18 = (v8 + 8 * v10 + 32);
    do
    {
      v19 = *v18++;
      *&v11 |= v19;
      --v17;
    }

    while (v17);
    goto LABEL_10;
  }

  v10 = v9 & 0x7FFFFFFFFFFFFFFCLL;
  v12 = (v8 + 48);
  v13 = 0uLL;
  v14 = v9 & 0x7FFFFFFFFFFFFFFCLL;
  v15 = 0uLL;
  do
  {
    v13 = vorrq_s8(v12[-1], v13);
    v15 = vorrq_s8(*v12, v15);
    v12 += 2;
    v14 -= 4;
  }

  while (v14);
  v16 = vorrq_s8(v15, v13);
  v11 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
  if (v9 != v10)
  {
    goto LABEL_8;
  }

LABEL_10:

  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a5 = v11;
  return result;
}

unint64_t sub_1D87E4488()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000010;
  v4 = 0x7367616C66;
  if (v1 != 4)
  {
    v4 = 0x656372756F73;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657A696C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x6D614E6870796C67;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D87E4544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D881ED54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D87E4578(uint64_t a1)
{
  v2 = sub_1D881C0B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D87E45B4(uint64_t a1)
{
  v2 = sub_1D881C0B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActionPin.Pill.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63870);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D881C0B0();
  sub_1D8B16DD0();
  v15 = 0;
  sub_1D8B16A90();
  if (!v2)
  {
    v14 = 1;
    sub_1D8B16A90();
    v13 = 2;
    sub_1D8B16A90();
    v12 = 3;
    sub_1D8B16A50();
    v11 = *(v3 + 64);
    v10[15] = 4;
    sub_1D881C104();
    sub_1D8B16AE0();
    type metadata accessor for ActionPin.Pill(0);
    v10[14] = 5;
    type metadata accessor for ActionPin.Pill.Source(0);
    sub_1D881BBCC(&qword_1ECA63888, type metadata accessor for ActionPin.Pill.Source);
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ActionPin.Pill.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BuiltInAction(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B15A60();
  sub_1D8B15A60();
  sub_1D8B15A60();
  if (*(v2 + 56))
  {
    sub_1D8B16D40();
    sub_1D8B15A60();
  }

  else
  {
    sub_1D8B16D40();
  }

  MEMORY[0x1DA720210](*(v2 + 64));
  v11 = type metadata accessor for ActionPin.Pill(0);
  sub_1D881BDC4(v2 + *(v11 + 36), v10, type metadata accessor for ActionPin.Pill.Source);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return MEMORY[0x1DA720210](1);
  }

  sub_1D881BFE4(v10, v7, type metadata accessor for BuiltInAction);
  MEMORY[0x1DA720210](0);
  BuiltInAction.hash(into:)(a1);
  return sub_1D881BD44(v7, type metadata accessor for BuiltInAction);
}

uint64_t ActionPin.Pill.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63890);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ActionPin.Pill(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D881C0B0();
  v22 = v8;
  v12 = v23;
  sub_1D8B16DB0();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v9;
  v13 = v20;
  v30 = 0;
  *v11 = sub_1D8B169C0();
  v11[1] = v14;
  v29 = 1;
  v11[2] = sub_1D8B169C0();
  v11[3] = v15;
  v28 = 2;
  v11[4] = sub_1D8B169C0();
  v11[5] = v16;
  v27 = 3;
  v11[6] = sub_1D8B16970();
  v11[7] = v17;
  v26 = 4;
  sub_1D881C158();
  sub_1D8B16A10();
  v11[8] = v24;
  v25 = 5;
  sub_1D881BBCC(&qword_1ECA638A0, type metadata accessor for ActionPin.Pill.Source);
  sub_1D8B16A10();
  (*(v13 + 8))(v22, v21);
  sub_1D881BFE4(v5, v11 + *(v23 + 36), type metadata accessor for ActionPin.Pill.Source);
  sub_1D881BDC4(v11, v19, type metadata accessor for ActionPin.Pill);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D881BD44(v11, type metadata accessor for ActionPin.Pill);
}

uint64_t sub_1D87E4F3C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1D87E4FE0(uint64_t a1)
{
  v2 = 0;
  result = 0;
  v4 = a1 + 56;
  while (2)
  {
    v5 = 5;
    if (v2 > 5)
    {
      v5 = v2;
    }

    v18 = result;
    v19 = v5;
    while (1)
    {
      if (v2 == v19)
      {
        __break(1u);
        return result;
      }

      v6 = *(&unk_1F5425750 + v2 + 32);
      if (v6 == 5)
      {
        return v18;
      }

      v20 = v2 + 1;
      if (*(a1 + 16))
      {
        sub_1D8B16D20();
        sub_1D8B15A60();

        result = sub_1D8B16D80();
        v7 = -1 << *(a1 + 32);
        v8 = result & ~v7;
        if ((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          break;
        }
      }

LABEL_7:
      ++v2;
      if (v20 == 5)
      {
        return v18;
      }
    }

    v9 = ~v7;
    while (1)
    {
      v10 = *(*(a1 + 48) + v8);
      if (v10 <= 1)
      {
        break;
      }

      if (v10 == 2)
      {
        v11 = 0x7261507473726966;
        v12 = 0xEA00000000007974;
        if (v6 <= 1)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 0x6E49746C697562;
        }

        else
        {
          v11 = 0x62616D6165727473;
        }

        if (v10 == 3)
        {
          v12 = 0xE700000000000000;
        }

        else
        {
          v12 = 0xEA0000000000656CLL;
        }

        if (v6 <= 1)
        {
          goto LABEL_43;
        }
      }

LABEL_30:
      v13 = 0x62616D6165727473;
      if (v6 == 3)
      {
        v13 = 0x6E49746C697562;
      }

      v14 = 0xE700000000000000;
      if (v6 != 3)
      {
        v14 = 0xEA0000000000656CLL;
      }

      if (v6 == 2)
      {
        v15 = 0x7261507473726966;
      }

      else
      {
        v15 = v13;
      }

      if (v6 == 2)
      {
        v16 = 0xEA00000000007974;
      }

      else
      {
        v16 = v14;
      }

      if (v11 == v15)
      {
        goto LABEL_47;
      }

LABEL_48:
      v17 = sub_1D8B16BA0();

      if (v17)
      {
        goto LABEL_3;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    if (*(*(a1 + 48) + v8))
    {
      v11 = 0x6261686372616573;
    }

    else
    {
      v11 = 0x7474756853657270;
    }

    if (*(*(a1 + 48) + v8))
    {
      v12 = 0xEA0000000000656CLL;
    }

    else
    {
      v12 = 0xEA00000000007265;
    }

    if (v6 > 1)
    {
      goto LABEL_30;
    }

LABEL_43:
    if (!v6)
    {
      v16 = 0xEA00000000007265;
      if (v11 == 0x7474756853657270)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    v16 = 0xEA0000000000656CLL;
    if (v11 != 0x6261686372616573)
    {
      goto LABEL_48;
    }

LABEL_47:
    if (v12 != v16)
    {
      goto LABEL_48;
    }

LABEL_3:
    result = (1 << v2++) | v18;
    if (v20 != 5)
    {
      continue;
    }

    return result;
  }
}

void ActionPin.Pill.Flags.flagSet.getter()
{
  v1 = 0;
  v2 = *v0;
  v103 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v1 <= 5)
  {
    v3 = 5;
  }

  else
  {
    v3 = v1;
  }

  while (v1 != 5)
  {
    if (v3 == v1)
    {
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      __break(1u);
      return;
    }

    if (byte_1F54257C0 <= 1u)
    {
      if (byte_1F54257C0)
      {
        v6 = 0x6261686372616573;
      }

      else
      {
        v6 = 0x7474756853657270;
      }

      if (byte_1F54257C0)
      {
        v5 = 0xEA0000000000656CLL;
      }

      else
      {
        v5 = 0xEA00000000007265;
      }
    }

    else
    {
      if (byte_1F54257C0 == 2)
      {
        v6 = 0x7261507473726966;
        v7 = 31092;
      }

      else
      {
        if (byte_1F54257C0 == 3)
        {
          v5 = 0xE700000000000000;
          v6 = 0x6E49746C697562;
          goto LABEL_22;
        }

        v6 = 0x62616D6165727473;
        v7 = 25964;
      }

      v5 = v7 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    }

LABEL_22:
    v8 = byte_1F5425778[v1 + 32];
    if (v8 <= 1)
    {
      if (byte_1F5425778[v1 + 32])
      {
        v12 = 0x686372616573;
LABEL_31:
        v10 = v12 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
        v11 = 25964;
LABEL_32:
        v9 = v11 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        goto LABEL_33;
      }

      v9 = 0xEA00000000007265;
      v10 = 0x7474756853657270;
    }

    else
    {
      if (v8 == 2)
      {
        v10 = 0x7261507473726966;
        v11 = 31092;
        goto LABEL_32;
      }

      if (v8 != 3)
      {
        v12 = 0x6D6165727473;
        goto LABEL_31;
      }

      v9 = 0xE700000000000000;
      v10 = 0x6E49746C697562;
    }

LABEL_33:
    if (v6 == v10 && v5 == v9)
    {
      v13 = 0;
LABEL_36:

      goto LABEL_39;
    }

    v14 = sub_1D8B16BA0();

    if (v14)
    {
      v13 = 0;
      goto LABEL_39;
    }

    if (byte_1F54257C1 <= 1u)
    {
      if (!byte_1F54257C1)
      {
        v19 = 0xEA00000000007265;
        v20 = 0x7474756853657270;
        if (v8 <= 1)
        {
          goto LABEL_52;
        }

        goto LABEL_90;
      }

      v33 = 0x686372616573;
    }

    else
    {
      if (byte_1F54257C1 == 2)
      {
        v20 = 0x7261507473726966;
        v32 = 31092;
        goto LABEL_89;
      }

      if (byte_1F54257C1 == 3)
      {
        v19 = 0xE700000000000000;
        v20 = 0x6E49746C697562;
        if (v8 <= 1)
        {
          goto LABEL_52;
        }

        goto LABEL_90;
      }

      v33 = 0x6D6165727473;
    }

    v20 = v33 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v32 = 25964;
LABEL_89:
    v19 = v32 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v8 <= 1)
    {
LABEL_52:
      if (v8)
      {
        v34 = 0x686372616573;
        goto LABEL_95;
      }

      v21 = 0xEA00000000007265;
      v22 = 0x7474756853657270;
      goto LABEL_97;
    }

LABEL_90:
    if (v8 == 2)
    {
      v22 = 0x7261507473726966;
      v35 = 31092;
      goto LABEL_96;
    }

    if (v8 != 3)
    {
      v34 = 0x6D6165727473;
LABEL_95:
      v22 = v34 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v35 = 25964;
LABEL_96:
      v21 = v35 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      goto LABEL_97;
    }

    v21 = 0xE700000000000000;
    v22 = 0x6E49746C697562;
LABEL_97:
    if (v20 == v22 && v19 == v21)
    {
      v13 = 1;
      goto LABEL_36;
    }

    v36 = sub_1D8B16BA0();

    if (v36)
    {
      v13 = 1;
      goto LABEL_39;
    }

    if (byte_1F54257C2 <= 1u)
    {
      if (!byte_1F54257C2)
      {
        v37 = 0xEA00000000007265;
        v38 = 0x7474756853657270;
        if (v8 <= 1)
        {
          goto LABEL_106;
        }

        goto LABEL_144;
      }

      v51 = 0x686372616573;
    }

    else
    {
      if (byte_1F54257C2 == 2)
      {
        v38 = 0x7261507473726966;
        v50 = 31092;
        goto LABEL_143;
      }

      if (byte_1F54257C2 == 3)
      {
        v37 = 0xE700000000000000;
        v38 = 0x6E49746C697562;
        if (v8 <= 1)
        {
          goto LABEL_106;
        }

        goto LABEL_144;
      }

      v51 = 0x6D6165727473;
    }

    v38 = v51 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v50 = 25964;
LABEL_143:
    v37 = v50 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v8 <= 1)
    {
LABEL_106:
      if (v8)
      {
        v52 = 0x686372616573;
        goto LABEL_149;
      }

      v39 = 0xEA00000000007265;
      v40 = 0x7474756853657270;
      goto LABEL_151;
    }

LABEL_144:
    if (v8 == 2)
    {
      v40 = 0x7261507473726966;
      v53 = 31092;
      goto LABEL_150;
    }

    if (v8 != 3)
    {
      v52 = 0x6D6165727473;
LABEL_149:
      v40 = v52 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v53 = 25964;
LABEL_150:
      v39 = v53 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      goto LABEL_151;
    }

    v39 = 0xE700000000000000;
    v40 = 0x6E49746C697562;
LABEL_151:
    if (v38 == v40 && v37 == v39)
    {
      v13 = 2;
      goto LABEL_36;
    }

    v54 = sub_1D8B16BA0();

    if (v54)
    {
      v13 = 2;
      goto LABEL_39;
    }

    if (byte_1F54257C3 <= 1u)
    {
      if (!byte_1F54257C3)
      {
        v55 = 0xEA00000000007265;
        v56 = 0x7474756853657270;
        if (v8 <= 1)
        {
          goto LABEL_160;
        }

        goto LABEL_198;
      }

      v69 = 0x686372616573;
    }

    else
    {
      if (byte_1F54257C3 == 2)
      {
        v56 = 0x7261507473726966;
        v68 = 31092;
        goto LABEL_197;
      }

      if (byte_1F54257C3 == 3)
      {
        v55 = 0xE700000000000000;
        v56 = 0x6E49746C697562;
        if (v8 <= 1)
        {
          goto LABEL_160;
        }

        goto LABEL_198;
      }

      v69 = 0x6D6165727473;
    }

    v56 = v69 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v68 = 25964;
LABEL_197:
    v55 = v68 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v8 <= 1)
    {
LABEL_160:
      if (v8)
      {
        v70 = 0x686372616573;
        goto LABEL_203;
      }

      v57 = 0xEA00000000007265;
      v58 = 0x7474756853657270;
      goto LABEL_205;
    }

LABEL_198:
    if (v8 == 2)
    {
      v58 = 0x7261507473726966;
      v71 = 31092;
      goto LABEL_204;
    }

    if (v8 != 3)
    {
      v70 = 0x6D6165727473;
LABEL_203:
      v58 = v70 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v71 = 25964;
LABEL_204:
      v57 = v71 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      goto LABEL_205;
    }

    v57 = 0xE700000000000000;
    v58 = 0x6E49746C697562;
LABEL_205:
    if (v56 == v58 && v55 == v57)
    {
      v13 = 3;
      goto LABEL_36;
    }

    v72 = sub_1D8B16BA0();

    if (v72)
    {
      v13 = 3;
      goto LABEL_39;
    }

    if (byte_1F54257C4 <= 1u)
    {
      if (!byte_1F54257C4)
      {
        v73 = 0xEA00000000007265;
        v74 = 0x7474756853657270;
        goto LABEL_245;
      }

      v83 = 0x686372616573;
      goto LABEL_243;
    }

    if (byte_1F54257C4 != 2)
    {
      if (byte_1F54257C4 == 3)
      {
        v73 = 0xE700000000000000;
        v74 = 0x6E49746C697562;
        goto LABEL_245;
      }

      v83 = 0x6D6165727473;
LABEL_243:
      v74 = v83 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v82 = 25964;
      goto LABEL_244;
    }

    v74 = 0x7261507473726966;
    v82 = 31092;
LABEL_244:
    v73 = v82 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_245:
    if (v8 <= 1)
    {
      if (!v8)
      {
        v84 = 0xEA00000000007265;
        v85 = 0x7474756853657270;
        goto LABEL_256;
      }

      v87 = 0x686372616573;
      goto LABEL_254;
    }

    if (v8 != 2)
    {
      if (v8 == 3)
      {
        v84 = 0xE700000000000000;
        v85 = 0x6E49746C697562;
        goto LABEL_256;
      }

      v87 = 0x6D6165727473;
LABEL_254:
      v85 = v87 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v86 = 25964;
      goto LABEL_255;
    }

    v85 = 0x7261507473726966;
    v86 = 31092;
LABEL_255:
    v84 = v86 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
LABEL_256:
    if (v74 == v85 && v73 == v84)
    {
      v13 = 4;
      goto LABEL_36;
    }

    v88 = sub_1D8B16BA0();

    if ((v88 & 1) == 0)
    {
      goto LABEL_292;
    }

    v13 = 4;
LABEL_39:
    if (byte_1F54257E8 <= 1u)
    {
      if (!byte_1F54257E8)
      {
        v15 = 0xEA00000000007265;
        v16 = 0x7474756853657270;
        if (v8 <= 1)
        {
          goto LABEL_43;
        }

        goto LABEL_60;
      }

      v24 = 0x686372616573;
    }

    else
    {
      if (byte_1F54257E8 == 2)
      {
        v16 = 0x7261507473726966;
        v23 = 31092;
        goto LABEL_59;
      }

      if (byte_1F54257E8 == 3)
      {
        v15 = 0xE700000000000000;
        v16 = 0x6E49746C697562;
        if (v8 <= 1)
        {
          goto LABEL_43;
        }

        goto LABEL_60;
      }

      v24 = 0x6D6165727473;
    }

    v16 = v24 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
    v23 = 25964;
LABEL_59:
    v15 = v23 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
    if (v8 <= 1)
    {
LABEL_43:
      if (v8)
      {
        v25 = 0x686372616573;
        goto LABEL_65;
      }

      v17 = 0xEA00000000007265;
      v18 = 0x7474756853657270;
      goto LABEL_67;
    }

LABEL_60:
    if (v8 == 2)
    {
      v18 = 0x7261507473726966;
      v26 = 31092;
      goto LABEL_66;
    }

    if (v8 != 3)
    {
      v25 = 0x6D6165727473;
LABEL_65:
      v18 = v25 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
      v26 = 25964;
LABEL_66:
      v17 = v26 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      goto LABEL_67;
    }

    v17 = 0xE700000000000000;
    v18 = 0x6E49746C697562;
LABEL_67:
    if (v16 == v18 && v15 == v17)
    {
      v4 = 0;
LABEL_70:

      goto LABEL_6;
    }

    v27 = sub_1D8B16BA0();

    if ((v27 & 1) == 0)
    {
      if (byte_1F54257E9 <= 1u)
      {
        if (byte_1F54257E9)
        {
          v42 = 0x686372616573;
          goto LABEL_112;
        }

        v28 = 0xEA00000000007265;
        v29 = 0x7474756853657270;
        if (v8 > 1)
        {
          goto LABEL_114;
        }
      }

      else
      {
        if (byte_1F54257E9 == 2)
        {
          v29 = 0x7261507473726966;
          v41 = 31092;
        }

        else
        {
          if (byte_1F54257E9 == 3)
          {
            v28 = 0xE700000000000000;
            v29 = 0x6E49746C697562;
            if (v8 <= 1)
            {
              goto LABEL_76;
            }

LABEL_114:
            if (v8 == 2)
            {
              v31 = 0x7261507473726966;
              v44 = 31092;
            }

            else
            {
              if (v8 == 3)
              {
                v30 = 0xE700000000000000;
                v31 = 0x6E49746C697562;
                goto LABEL_121;
              }

              v43 = 0x6D6165727473;
LABEL_119:
              v31 = v43 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
              v44 = 25964;
            }

            v30 = v44 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
            goto LABEL_121;
          }

          v42 = 0x6D6165727473;
LABEL_112:
          v29 = v42 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          v41 = 25964;
        }

        v28 = v41 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        if (v8 > 1)
        {
          goto LABEL_114;
        }
      }

LABEL_76:
      if (v8)
      {
        v43 = 0x686372616573;
        goto LABEL_119;
      }

      v30 = 0xEA00000000007265;
      v31 = 0x7474756853657270;
LABEL_121:
      if (v29 == v31 && v28 == v30)
      {
        v4 = 1;
        goto LABEL_70;
      }

      v45 = sub_1D8B16BA0();

      if (v45)
      {
        v4 = 1;
        goto LABEL_6;
      }

      if (byte_1F54257EA <= 1u)
      {
        if (byte_1F54257EA)
        {
          v60 = 0x686372616573;
          goto LABEL_166;
        }

        v46 = 0xEA00000000007265;
        v47 = 0x7474756853657270;
        if (v8 > 1)
        {
          goto LABEL_168;
        }
      }

      else
      {
        if (byte_1F54257EA == 2)
        {
          v47 = 0x7261507473726966;
          v59 = 31092;
        }

        else
        {
          if (byte_1F54257EA == 3)
          {
            v46 = 0xE700000000000000;
            v47 = 0x6E49746C697562;
            if (v8 <= 1)
            {
              goto LABEL_130;
            }

LABEL_168:
            if (v8 == 2)
            {
              v49 = 0x7261507473726966;
              v62 = 31092;
            }

            else
            {
              if (v8 == 3)
              {
                v48 = 0xE700000000000000;
                v49 = 0x6E49746C697562;
                goto LABEL_175;
              }

              v61 = 0x6D6165727473;
LABEL_173:
              v49 = v61 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
              v62 = 25964;
            }

            v48 = v62 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
            goto LABEL_175;
          }

          v60 = 0x6D6165727473;
LABEL_166:
          v47 = v60 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          v59 = 25964;
        }

        v46 = v59 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        if (v8 > 1)
        {
          goto LABEL_168;
        }
      }

LABEL_130:
      if (v8)
      {
        v61 = 0x686372616573;
        goto LABEL_173;
      }

      v48 = 0xEA00000000007265;
      v49 = 0x7474756853657270;
LABEL_175:
      if (v47 == v49 && v46 == v48)
      {
        v4 = 2;
        goto LABEL_70;
      }

      v63 = sub_1D8B16BA0();

      if (v63)
      {
        v4 = 2;
        goto LABEL_6;
      }

      if (byte_1F54257EB <= 1u)
      {
        if (byte_1F54257EB)
        {
          v76 = 0x686372616573;
          goto LABEL_218;
        }

        v64 = 0xEA00000000007265;
        v65 = 0x7474756853657270;
        if (v8 > 1)
        {
          goto LABEL_220;
        }
      }

      else
      {
        if (byte_1F54257EB == 2)
        {
          v65 = 0x7261507473726966;
          v75 = 31092;
        }

        else
        {
          if (byte_1F54257EB == 3)
          {
            v64 = 0xE700000000000000;
            v65 = 0x6E49746C697562;
            if (v8 <= 1)
            {
              goto LABEL_184;
            }

LABEL_220:
            if (v8 == 2)
            {
              v67 = 0x7261507473726966;
              v78 = 31092;
            }

            else
            {
              if (v8 == 3)
              {
                v66 = 0xE700000000000000;
                v67 = 0x6E49746C697562;
                goto LABEL_227;
              }

              v77 = 0x6D6165727473;
LABEL_225:
              v67 = v77 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
              v78 = 25964;
            }

            v66 = v78 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
            goto LABEL_227;
          }

          v76 = 0x6D6165727473;
LABEL_218:
          v65 = v76 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          v75 = 25964;
        }

        v64 = v75 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
        if (v8 > 1)
        {
          goto LABEL_220;
        }
      }

LABEL_184:
      if (v8)
      {
        v77 = 0x686372616573;
        goto LABEL_225;
      }

      v66 = 0xEA00000000007265;
      v67 = 0x7474756853657270;
LABEL_227:
      if (v65 == v67 && v64 == v66)
      {
        v4 = 3;
        goto LABEL_70;
      }

      v79 = sub_1D8B16BA0();

      if (v79)
      {
        v4 = 3;
        goto LABEL_6;
      }

      if (byte_1F54257EC <= 1u)
      {
        if (byte_1F54257EC)
        {
          v90 = 0x686372616573;
          goto LABEL_264;
        }

        v80 = 0xEA00000000007265;
        v81 = 0x7474756853657270;
      }

      else
      {
        if (byte_1F54257EC == 2)
        {
          v81 = 0x7261507473726966;
          v89 = 31092;
        }

        else
        {
          if (byte_1F54257EC == 3)
          {
            v80 = 0xE700000000000000;
            v81 = 0x6E49746C697562;
            goto LABEL_266;
          }

          v90 = 0x6D6165727473;
LABEL_264:
          v81 = v90 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          v89 = 25964;
        }

        v80 = v89 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      }

LABEL_266:
      if (v8 <= 1)
      {
        if (v8)
        {
          v94 = 0x686372616573;
          goto LABEL_275;
        }

        v91 = 0xEA00000000007265;
        v92 = 0x7474756853657270;
      }

      else
      {
        if (v8 == 2)
        {
          v92 = 0x7261507473726966;
          v93 = 31092;
        }

        else
        {
          if (v8 == 3)
          {
            v91 = 0xE700000000000000;
            v92 = 0x6E49746C697562;
            goto LABEL_277;
          }

          v94 = 0x6D6165727473;
LABEL_275:
          v92 = v94 & 0xFFFFFFFFFFFFLL | 0x6261000000000000;
          v93 = 25964;
        }

        v91 = v93 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      }

LABEL_277:
      if (v81 != v92 || v80 != v91)
      {
        v95 = sub_1D8B16BA0();

        if ((v95 & 1) == 0)
        {
          goto LABEL_293;
        }

        v4 = 4;
        goto LABEL_6;
      }

      v4 = 4;
      goto LABEL_70;
    }

    v4 = 0;
LABEL_6:
    ++v1;
    if (((1 << v13) & v2) == 1 << v4)
    {
      v96 = v103;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = sub_1D87C7C48(0, *(v103 + 2) + 1, 1, v103);
      }

      v98 = *(v96 + 2);
      v97 = *(v96 + 3);
      if (v98 >= v97 >> 1)
      {
        v96 = sub_1D87C7C48((v97 > 1), v98 + 1, 1, v96);
      }

      *(v96 + 2) = v98 + 1;
      v103 = v96;
      v96[v98 + 32] = v8;
      goto LABEL_2;
    }
  }

  v99 = *(v103 + 2);
  if (v99)
  {
    v100 = (v103 + 32);
    v101 = MEMORY[0x1E69E7CD0];
    do
    {
      v102 = *v100++;
      v105 = v101;
      sub_1D87F7F14(&v104, v102);
      v101 = v105;
      --v99;
    }

    while (v99);
  }
}