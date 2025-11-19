_BYTE *sub_1C7315704(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C73157E0()
{
  result = qword_1EC21A938;
  if (!qword_1EC21A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A938);
  }

  return result;
}

unint64_t sub_1C7315838()
{
  result = qword_1EC21A940;
  if (!qword_1EC21A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A940);
  }

  return result;
}

unint64_t sub_1C7315890()
{
  result = qword_1EDD07F88;
  if (!qword_1EDD07F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07F88);
  }

  return result;
}

unint64_t sub_1C73158E8()
{
  result = qword_1EDD07F90;
  if (!qword_1EDD07F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07F90);
  }

  return result;
}

unint64_t sub_1C7315940()
{
  result = qword_1EDD07F70;
  if (!qword_1EDD07F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07F70);
  }

  return result;
}

unint64_t sub_1C7315998()
{
  result = qword_1EDD07F78;
  if (!qword_1EDD07F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07F78);
  }

  return result;
}

unint64_t sub_1C73159F0()
{
  result = qword_1EDD07F58;
  if (!qword_1EDD07F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07F58);
  }

  return result;
}

unint64_t sub_1C7315A48()
{
  result = qword_1EDD07F60;
  if (!qword_1EDD07F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07F60);
  }

  return result;
}

unint64_t sub_1C7315AA0()
{
  result = qword_1EDD07F40;
  if (!qword_1EDD07F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07F40);
  }

  return result;
}

unint64_t sub_1C7315AF8()
{
  result = qword_1EDD07F48;
  if (!qword_1EDD07F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07F48);
  }

  return result;
}

unint64_t sub_1C7315B50()
{
  result = qword_1EDD07FA0;
  if (!qword_1EDD07FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07FA0);
  }

  return result;
}

unint64_t sub_1C7315BA8()
{
  result = qword_1EDD07FA8;
  if (!qword_1EDD07FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07FA8);
  }

  return result;
}

unint64_t sub_1C7315BFC()
{
  result = qword_1EDD08CD8;
  if (!qword_1EDD08CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08CD8);
  }

  return result;
}

unint64_t sub_1C7315C50()
{
  result = qword_1EC21A960;
  if (!qword_1EC21A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A960);
  }

  return result;
}

unint64_t sub_1C7315CA4()
{
  result = qword_1EDD08CF0;
  if (!qword_1EDD08CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08CF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryCuratedChapter.CodableCurationState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C7315DE4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C7315E94()
{
  result = qword_1EC21A980;
  if (!qword_1EC21A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A980);
  }

  return result;
}

unint64_t sub_1C7315EEC()
{
  result = qword_1EC21A988;
  if (!qword_1EC21A988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A988);
  }

  return result;
}

unint64_t sub_1C7315F44()
{
  result = qword_1EC21A990;
  if (!qword_1EC21A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A990);
  }

  return result;
}

unint64_t sub_1C7315F9C()
{
  result = qword_1EDD08CE0;
  if (!qword_1EDD08CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08CE0);
  }

  return result;
}

unint64_t sub_1C7315FF4()
{
  result = qword_1EDD08CE8;
  if (!qword_1EDD08CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08CE8);
  }

  return result;
}

unint64_t sub_1C731604C()
{
  result = qword_1EDD08CB8;
  if (!qword_1EDD08CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08CB8);
  }

  return result;
}

unint64_t sub_1C73160A4()
{
  result = qword_1EDD08CC0;
  if (!qword_1EDD08CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08CC0);
  }

  return result;
}

unint64_t sub_1C73160FC()
{
  result = qword_1EDD08CC8;
  if (!qword_1EDD08CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08CC8);
  }

  return result;
}

unint64_t sub_1C7316154()
{
  result = qword_1EDD08CD0;
  if (!qword_1EDD08CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08CD0);
  }

  return result;
}

uint64_t QuerySortOrder.rawValue.getter()
{
  v1 = 0x7473726966;
  if (*v0 != 1)
  {
    v1 = 1953718636;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

__n128 QueryAnnotation.init(query:attributes:isTrip:isOpenEndedTimeRange:sortOrder:promptBindings:llmQULatency:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v10 = *a6;
  v11 = *(a7 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 25) = a5;
  *(a9 + 26) = v10;
  result = *a7;
  v13 = *(a7 + 16);
  *(a9 + 32) = *a7;
  *(a9 + 48) = v13;
  *(a9 + 64) = v11;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10 & 1;
  return result;
}

uint64_t QueryAttributePropertyKey.rawValue.getter()
{
  result = 0x614E6E6F73726570;
  switch(*v0)
  {
    case 1:
      result = 0x55556E6F73726570;
      break;
    case 2:
      result = 0x67416E6F73726570;
      break;
    case 3:
      result = 0x6E6F697461636F6CLL;
      break;
    case 4:
      result = 1702125924;
      break;
    case 5:
      result = 1952540791;
      break;
    case 6:
      result = 0x747241636973756DLL;
      break;
    case 7:
      result = 0x746954636973756DLL;
      break;
    case 8:
      result = 0x6E6547636973756DLL;
      break;
    case 9:
      result = 1685024621;
      break;
    case 0xA:
      result = 0x656E696665646E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t QueryAttribute.init(attributeKey:range:substring:expansionStringValues:expansionDateValues:expansionDateComponentsValues:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

PhotosIntelligence::QuerySortOrder_optional __swiftcall QuerySortOrder.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C731641C@<X0>(uint64_t *a1@<X8>)
{
  result = QuerySortOrder.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

PhotosIntelligence::QueryAttributePropertyKey_optional __swiftcall QueryAttributePropertyKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C7316580@<X0>(uint64_t *a1@<X8>)
{
  result = QueryAttributePropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t QueryAttribute.attributeKey.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t QueryAttribute.substring.getter()
{
  v1 = *(v0 + 32);
  sub_1C75504FC();
  return v1;
}

uint64_t sub_1C73166FC(uint64_t a1, uint64_t a2)
{
  v5 = a1 == OUTLINED_FUNCTION_12_58() && a2 == v4;
  if (v5 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
    if (v7 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == 0x6E69727473627573 && a2 == 0xE900000000000067;
      if (v8 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == 0xD000000000000015 && 0x80000001C75AABC0 == a2;
        if (v9 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = a1 == 0xD000000000000013 && 0x80000001C75AABE0 == a2;
          if (v10 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD00000000000001DLL && 0x80000001C75AAC00 == a2)
          {

            return 5;
          }

          else
          {
            v12 = OUTLINED_FUNCTION_6_2();

            if (v12)
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

uint64_t sub_1C73168A0()
{
  result = OUTLINED_FUNCTION_12_58();
  switch(v1)
  {
    case 1:
      result = 0x65676E6172;
      break;
    case 2:
      result = 0x6E69727473627573;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C731697C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73166FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73169B0(uint64_t a1)
{
  v2 = sub_1C7316EDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73169EC(uint64_t a1)
{
  v2 = sub_1C7316EDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void QueryAttribute.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_124();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A998);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1C7316EDC();
  OUTLINED_FUNCTION_14_54();
  sub_1C7551FFC();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    LOBYTE(v30) = 0;
    OUTLINED_FUNCTION_5_72();
    v16 = sub_1C7551BBC();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A9A0);
    sub_1C7317280(&unk_1EC21A9A8);
    OUTLINED_FUNCTION_1_104();
    v27 = v30;
    v26 = v31;
    LOBYTE(v30) = 2;
    OUTLINED_FUNCTION_5_72();
    v19 = sub_1C7551BBC();
    v28 = v20;
    v25 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C72DD364(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_1_104();
    v24 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217158);
    LOBYTE(v29[0]) = 4;
    sub_1C73172D8(&unk_1EC21A9B0);
    OUTLINED_FUNCTION_1_104();
    v23 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A9B8);
    v39 = 5;
    sub_1C7317368(&unk_1EC21A9C0);
    OUTLINED_FUNCTION_5_72();
    sub_1C7551C1C();
    v21 = OUTLINED_FUNCTION_2_10();
    v22(v21);
    v29[0] = v16;
    v29[1] = v18;
    v29[2] = v27;
    v29[3] = v26;
    v29[4] = v25;
    v29[5] = v28;
    v29[6] = v24;
    v29[7] = v23;
    v29[8] = a10;
    memcpy(v14, v29, 0x48uLL);
    sub_1C7316F30(v29, &v30);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v30 = v16;
    v31 = v18;
    v32 = v27;
    v33 = v26;
    v34 = v25;
    v35 = v28;
    v36 = v24;
    v37 = v23;
    v38 = a10;
    sub_1C7316F68(&v30);
  }

  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C7316EDC()
{
  result = qword_1EDD0F3E0[0];
  if (!qword_1EDD0F3E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD0F3E0);
  }

  return result;
}

void QueryAttribute.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A9C8);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_60();
  v7 = v3[3];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  sub_1C7316EDC();
  OUTLINED_FUNCTION_13_63();
  OUTLINED_FUNCTION_121();
  sub_1C7551CCC();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A9A0);
    sub_1C7317280(&unk_1EC21A9D0);
    OUTLINED_FUNCTION_0_139();
    OUTLINED_FUNCTION_421();
    sub_1C7551CCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C72DD364(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_0_139();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217158);
    sub_1C73172D8(&unk_1EC21A9D8);
    OUTLINED_FUNCTION_0_139();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A9B8);
    sub_1C7317368(&unk_1EC21A9E0);
    OUTLINED_FUNCTION_0_139();
  }

  (*(v5 + 8))(v1, v7);
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C7317280(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A9A0);
    result = OUTLINED_FUNCTION_109_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C73172D8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217158);
    sub_1C73173F8(v4);
    OUTLINED_FUNCTION_11_59();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7317368(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A9B8);
    sub_1C73173F8(v4);
    OUTLINED_FUNCTION_11_59();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C73173F8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t QueryAttribute.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  sub_1C755180C();
  v8 = OUTLINED_FUNCTION_12_58();
  MEMORY[0x1CCA5CD70](v8, 0xEE00203A79654B65);
  MEMORY[0x1CCA5CD70](v1, v2);
  MEMORY[0x1CCA5CD70](0x3A65676E61720A2CLL, 0xE900000000000020);
  OUTLINED_FUNCTION_121();
  v9 = sub_1C7318768();
  MEMORY[0x1CCA5CD70](v9);

  MEMORY[0x1CCA5CD70](0x7274736275730A2CLL, 0xED0000203A676E69);
  MEMORY[0x1CCA5CD70](v3, v4);
  MEMORY[0x1CCA5CD70](0xD000000000000019, 0x80000001C75AAB30);
  v10 = MEMORY[0x1CCA5D090](v6, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v10);

  MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C75AAB50);
  v11 = sub_1C754DF6C();
  v12 = MEMORY[0x1CCA5D090](v5, v11);
  MEMORY[0x1CCA5CD70](v12);

  MEMORY[0x1CCA5CD70](0xD000000000000021, 0x80000001C75AAB70);
  v13 = sub_1C754DABC();
  v14 = MEMORY[0x1CCA5D090](v7, v13);
  MEMORY[0x1CCA5CD70](v14);

  return 0;
}

void static QueryAttribute.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  if (v12 || (sub_1C7551DBC()) && (v2 == v8 ? (v13 = v3 == v7) : (v13 = 0), v13 && (v4 == v9 ? (v14 = v6 == v10) : (v14 = 0), (v14 || (sub_1C7551DBC()) && (sub_1C70020D4(v5, v11) & 1) != 0 && (sub_1C7003AB0(), (v15))))
  {
    OUTLINED_FUNCTION_110_0();

    sub_1C7003AF8();
  }

  else
  {
    OUTLINED_FUNCTION_110_0();
  }
}

uint64_t QueryAnnotation.query.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t QueryAnnotation.promptBindings.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_1C717FBD4(v2, v3);
}

uint64_t QueryAnnotation.encodeToJSONData()()
{
  sub_1C754D7AC();
  swift_allocObject();
  sub_1C754D79C();
  memcpy(__dst, v0, sizeof(__dst));
  sub_1C7318800();
  v1 = sub_1C754D78C();

  return v1;
}

void *static QueryAnnotation.makeFrom(data:)@<X0>(void *a1@<X8>)
{
  sub_1C754D73C();
  swift_allocObject();
  sub_1C754D72C();
  sub_1C7318854();
  sub_1C754D71C();

  if (!v1)
  {
    return memcpy(a1, __src, 0x51uLL);
  }

  return result;
}

void QueryAnnotation.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x203A7972657571, 0xE700000000000000);
  MEMORY[0x1CCA5CD70](v1, v2);
  MEMORY[0x1CCA5CD70](0x6269727474610A2CLL, 0xEF7B203A73657475);
  v6 = MEMORY[0x1CCA5D090](v3, &type metadata for QueryAttribute);
  MEMORY[0x1CCA5CD70](v6);

  MEMORY[0x1CCA5CD70](0x69725473690A2C7DLL, 0xEB00000000203A70);
  if (v4)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v4)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v7, v8);

  MEMORY[0x1CCA5CD70](0x546C6C4173690A2CLL, 0xED0000203A656D69);
  if (v5)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v5)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v9, v10);

  MEMORY[0x1CCA5CD70](0x724F74726F730A2CLL, 0xED0000203A726564);
  sub_1C75519EC();
  MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75AABA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215778);
  v11 = sub_1C75506EC();
  MEMORY[0x1CCA5CD70](v11);

  MEMORY[0x1CCA5CD70](44, 0xE100000000000000);
  OUTLINED_FUNCTION_110_0();
}

uint64_t sub_1C7317B84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7475626972747461 && a2 == 0xEA00000000007365;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x706972547369 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D69546C6C417369 && a2 == 0xE900000000000065;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6564724F74726F73 && a2 == 0xE900000000000072;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x694274706D6F7270 && a2 == 0xEE0073676E69646ELL;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x74614C55516D6C6CLL && a2 == 0xEC00000079636E65)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C7551DBC();

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

uint64_t sub_1C7317DCC(char a1)
{
  result = 0x7972657571;
  switch(a1)
  {
    case 1:
      result = 0x7475626972747461;
      break;
    case 2:
      result = 0x706972547369;
      break;
    case 3:
      result = 0x6D69546C6C417369;
      break;
    case 4:
      result = 0x6564724F74726F73;
      break;
    case 5:
      result = 0x694274706D6F7270;
      break;
    case 6:
      result = 0x74614C55516D6C6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7317EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7317B84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7317EE4(uint64_t a1)
{
  v2 = sub_1C73188A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7317F20(uint64_t a1)
{
  v2 = sub_1C73188A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void QueryAnnotation.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A9E8);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_60();
  v9 = *(v0 + 40);
  v10 = *(v0 + 32);
  v8 = v4[3];
  __swift_project_boxed_opaque_existential_1(v4, v8);
  sub_1C73188A8();
  OUTLINED_FUNCTION_13_63();
  OUTLINED_FUNCTION_121();
  sub_1C7551CCC();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A9F0);
    sub_1C73188FC(&unk_1EDD06BB0);
    OUTLINED_FUNCTION_10_66();
    OUTLINED_FUNCTION_421();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_421();
    sub_1C7551CDC();
    OUTLINED_FUNCTION_421();
    sub_1C7551CDC();
    sub_1C7042568();
    OUTLINED_FUNCTION_10_66();
    OUTLINED_FUNCTION_421();
    sub_1C7551D2C();
    sub_1C717FBD4(v10, v9);
    sub_1C73189BC();
    OUTLINED_FUNCTION_10_66();
    OUTLINED_FUNCTION_421();
    sub_1C7551CBC();
    sub_1C7318A10(v10, v9);
    OUTLINED_FUNCTION_421();
    sub_1C7551C9C();
  }

  (*(v6 + 8))(v2, v8);
  OUTLINED_FUNCTION_125();
}

void QueryAnnotation.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AA00);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C73188A8();
  OUTLINED_FUNCTION_14_54();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v42) = 0;
    OUTLINED_FUNCTION_5_72();
    v11 = sub_1C7551BBC();
    v40 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A9F0);
    LOBYTE(v41[0]) = 1;
    sub_1C73188FC(&unk_1EDD06BA8);
    OUTLINED_FUNCTION_5_72();
    sub_1C7551C1C();
    v39 = v42;
    LOBYTE(v42) = 2;
    OUTLINED_FUNCTION_5_72();
    v13 = sub_1C7551BCC();
    LOBYTE(v42) = 3;
    OUTLINED_FUNCTION_5_72();
    LODWORD(v37) = sub_1C7551BCC();
    LOBYTE(v41[0]) = 4;
    sub_1C70422E8();
    OUTLINED_FUNCTION_5_72();
    sub_1C7551C1C();
    v36 = v13;
    v14 = v42;
    LOBYTE(v41[0]) = 5;
    sub_1C7318AC8();
    OUTLINED_FUNCTION_5_72();
    sub_1C7551BAC();
    v33 = v14;
    v32 = v11;
    v34 = v42;
    v35 = v43;
    v15 = v45;
    v38 = v44;
    v16 = v46;
    OUTLINED_FUNCTION_5_72();
    v17 = sub_1C7551B8C();
    v19 = v18;
    v30 = v15;
    LOBYTE(v15) = v36 & 1;
    v31 = v36 & 1;
    v36 = v37 & 1;
    v20 = *(v7 + 8);
    v37 = v16;
    v21 = v17;
    v20(v10, v5);
    v22 = v32;
    v41[0] = v32;
    v23 = v40;
    v24 = v39;
    v41[1] = v40;
    v41[2] = v39;
    LOBYTE(v41[3]) = v15;
    BYTE1(v41[3]) = v36;
    BYTE2(v41[3]) = v33;
    OUTLINED_FUNCTION_17_63();
    v41[4] = v26;
    v41[5] = v25;
    v27 = v30;
    v41[6] = v38;
    v41[7] = v30;
    v41[8] = v37;
    v41[9] = v21;
    LOBYTE(v41[10]) = v19 & 1;
    memcpy(v4, v41, 0x51uLL);
    sub_1C7318B1C(v41, &v42);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v42 = v22;
    v43 = v23;
    v44 = v24;
    LOBYTE(v45) = v31;
    BYTE1(v45) = v36;
    BYTE2(v45) = v33;
    OUTLINED_FUNCTION_17_63();
    v46 = v29;
    v47 = v28;
    v48 = v38;
    v49 = v27;
    v50 = v37;
    v51 = v21;
    v52 = v19 & 1;
    sub_1C70476BC(&v42);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7318768()
{
  sub_1C75519EC();
  MEMORY[0x1CCA5CD70](3943982, 0xE300000000000000);
  sub_1C75519EC();
  return 0;
}

unint64_t sub_1C7318800()
{
  result = qword_1EDD0B8E0;
  if (!qword_1EDD0B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0B8E0);
  }

  return result;
}

unint64_t sub_1C7318854()
{
  result = qword_1EDD0B8D8;
  if (!qword_1EDD0B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0B8D8);
  }

  return result;
}

unint64_t sub_1C73188A8()
{
  result = qword_1EDD0F2F8;
  if (!qword_1EDD0F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F2F8);
  }

  return result;
}

unint64_t sub_1C73188FC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A9F0);
    v4();
    OUTLINED_FUNCTION_11_59();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C7318968()
{
  result = qword_1EDD0BFA8[0];
  if (!qword_1EDD0BFA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD0BFA8);
  }

  return result;
}

unint64_t sub_1C73189BC()
{
  result = qword_1EC21A9F8;
  if (!qword_1EC21A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A9F8);
  }

  return result;
}

uint64_t sub_1C7318A10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1C7318A74()
{
  result = qword_1EDD0BFA0;
  if (!qword_1EDD0BFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0BFA0);
  }

  return result;
}

unint64_t sub_1C7318AC8()
{
  result = qword_1EC21AA08;
  if (!qword_1EC21AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AA08);
  }

  return result;
}

unint64_t sub_1C7318B58()
{
  result = qword_1EC21AA10;
  if (!qword_1EC21AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AA10);
  }

  return result;
}

unint64_t sub_1C7318BB0()
{
  result = qword_1EC21AA18;
  if (!qword_1EC21AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AA18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QuerySortOrder(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for QueryAttributePropertyKey(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C7318DB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1C7318DF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence14PromptBindingsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C7318E70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1C7318EB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryAnnotation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C7318FFC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C73190D8()
{
  result = qword_1EC21AA20;
  if (!qword_1EC21AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AA20);
  }

  return result;
}

unint64_t sub_1C7319130()
{
  result = qword_1EC21AA28;
  if (!qword_1EC21AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AA28);
  }

  return result;
}

unint64_t sub_1C7319188()
{
  result = qword_1EDD0F2E8;
  if (!qword_1EDD0F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F2E8);
  }

  return result;
}

unint64_t sub_1C73191E0()
{
  result = qword_1EDD0F2F0;
  if (!qword_1EDD0F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F2F0);
  }

  return result;
}

unint64_t sub_1C7319238()
{
  result = qword_1EDD0F3D0;
  if (!qword_1EDD0F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F3D0);
  }

  return result;
}

unint64_t sub_1C7319290()
{
  result = qword_1EDD0F3D8;
  if (!qword_1EDD0F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F3D8);
  }

  return result;
}

unint64_t sub_1C73192E4()
{
  result = qword_1EC21AA30;
  if (!qword_1EC21AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AA30);
  }

  return result;
}

unint64_t sub_1C7319338()
{
  result = qword_1EDD0F300;
  if (!qword_1EDD0F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0F300);
  }

  return result;
}

uint64_t sub_1C731938C()
{
  OUTLINED_FUNCTION_23_38();
  MEMORY[0x1CCA5CD70](3943982, 0xE300000000000000);
  OUTLINED_FUNCTION_23_38();
  return 0;
}

uint64_t sub_1C7319464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_0(a2, v9);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = a4(a1, v14, a3, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v16;
}

uint64_t sub_1C7319574(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  *(v9 + 704) = v8;
  *(v9 + 696) = a7;
  *(v9 + 688) = a6;
  *(v9 + 680) = a5;
  *(v9 + 672) = a4;
  *(v9 + 664) = a2;
  *(v9 + 656) = a1;
  v12 = sub_1C754F38C();
  *(v9 + 712) = v12;
  *(v9 + 720) = *(v12 - 8);
  *(v9 + 728) = swift_task_alloc();
  *(v9 + 736) = swift_task_alloc();
  v13 = a3[1];
  *(v9 + 744) = *a3;
  *(v9 + 760) = v13;
  *(v9 + 832) = *a8;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C7319678()
{
  v105 = v0;
  v1 = *(v0 + 680);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v5 = 0;
  v6 = *(v0 + 664);
  v7 = *(v6 + 16);
  v8 = v6 + 32;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_5:
  *(v0 + 776) = v9;
  for (i = (v8 + 120 * v5); ; i += 120)
  {
    if (v7 == v5)
    {
      v14 = *(v0 + 704);
      v15 = [*(v14 + 16) photoAnalysisClient];
      *(v0 + 784) = v15;
      if (v15)
      {
        v16 = v15;
        v17 = *(v0 + 680);
        v18 = *(v0 + 672);
        v19 = *(v9 + 16);
        v20 = *(v0 + 760);
        __dst[0] = *(v0 + 744);
        __dst[1] = v20;
        v21 = StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(__dst, v18, v17);
        v28 = *(v0 + 704);
        if (v19 | *(v21 + 16))
        {
          v97 = *(v21 + 16);
          v101 = v16;
          v29 = *(v0 + 680);
          v30 = sub_1C75504FC();
          v31 = sub_1C71CD85C(v30);
          v32 = *(v14 + 16);
          v33 = *(v28 + 24);
          v34 = *(v28 + 32);
          *&__dst[0] = v32;
          WORD4(__dst[0]) = v33;
          *&__dst[1] = v34;
          v35 = v32;

          v47 = sub_1C73DD2C4(v31, __dst, v29);
          v90 = v19;

          v92 = v47 + 64;
          v48 = -1;
          v49 = -1 << *(v47 + 32);
          if (-v49 < 64)
          {
            v48 = ~(-1 << -v49);
          }

          v50 = v48 & *(v47 + 64);
          v91 = (63 - v49) >> 6;
          v51 = sub_1C75504FC();
          v59 = 0;
          v60 = MEMORY[0x1E69E7CC8];
LABEL_27:
          *(v0 + 792) = v60;
          while (1)
          {
            if (v50)
            {
              goto LABEL_33;
            }

            do
            {
              v61 = v59 + 1;
              if (__OFADD__(v59, 1))
              {
                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
                return MEMORY[0x1EEE2A6A0](v51, v52, v53, v54, v55, v56, v57, v58);
              }

              if (v61 >= v91)
              {

                *(v0 + 800) = OBJC_IVAR____TtC18PhotosIntelligence22ExtendedTokenGenerator_logger;
                sub_1C75504FC();
                sub_1C75504FC();
                v78 = sub_1C754FEEC();
                v79 = sub_1C75511BC();
                if (os_log_type_enabled(v78, v79))
                {
                  v80 = v60;
                  v81 = swift_slowAlloc();
                  *v81 = 134218752;
                  *(v81 + 4) = v90;
                  *(v81 + 12) = 2048;
                  v82 = *(v47 + 16);

                  *(v81 + 14) = v82;

                  *(v81 + 22) = 2048;
                  *(v81 + 24) = v80[2];

                  *(v81 + 32) = 2048;
                  *(v81 + 34) = v97;
                  _os_log_impl(&dword_1C6F5C000, v78, v79, "Generating extended token collection with (%ld) unambiguous query tokens, %ld representative moments, %ld assets (out of %ld originally).", v81, 0x2Au);
                  OUTLINED_FUNCTION_10_1();
                  v83 = v101;
                }

                else
                {
                  swift_bridgeObjectRelease_n();

                  v83 = v101;
                  v80 = v60;
                }

                v84 = *(v0 + 704);
                v85 = v1[3];
                v86 = v1[4];
                __swift_project_boxed_opaque_existential_1(*(v0 + 680), v85);
                v87 = swift_task_alloc();
                *(v0 + 808) = v87;
                v87[2] = v9;
                v87[3] = v83;
                v87[4] = v84;
                v87[5] = v80;
                swift_task_alloc();
                OUTLINED_FUNCTION_48();
                *(v0 + 816) = v88;
                *v88 = v89;
                v88[1] = sub_1C731A10C;
                v107 = v86;
                v52 = "ExtendedTokenGenerator.requestExtendedTokens";
                v58 = &type metadata for ExtendedTokenCollection;
                v55 = &unk_1C75837D8;
                v51 = v0 + 256;
                v53 = 44;
                v54 = 2;
                v56 = v87;
                v57 = v85;

                return MEMORY[0x1EEE2A6A0](v51, v52, v53, v54, v55, v56, v57, v58);
              }

              v50 = *(v92 + 8 * v61);
              ++v59;
            }

            while (!v50);
            v59 = v61;
LABEL_33:
            v62 = __clz(__rbit64(v50));
            v50 &= v50 - 1;
            v63 = v62 | (v59 << 6);
            v64 = *(*(v47 + 56) + 8 * v63);
            v65 = *(v64 + 16);
            if (v65)
            {
              v66 = (*(v47 + 48) + 16 * v63);
              v95 = *v66;
              v103 = v66[1];
              sub_1C75504FC();
              v51 = sub_1C75504FC();
              v67 = 0;
              v68 = (v64 + 40);
              v96 = v47;
              v93 = v65;
              v94 = v64;
              while (1)
              {
                v99 = v67;
                if (v67 >= *(v64 + 16))
                {
                  goto LABEL_58;
                }

                v70 = *(v68 - 1);
                v69 = *v68;
                v98 = v68;
                sub_1C75504FC();
                sub_1C75504FC();
                swift_isUniquelyReferenced_nonNull_native();
                *&__dst[0] = v60;
                v100 = v70;
                v51 = sub_1C6F78124(v70, v69);
                v102 = v52;
                if (__OFADD__(v60[2], (v52 & 1) == 0))
                {
                  goto LABEL_59;
                }

                v71 = v51;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215328);
                v51 = sub_1C7551A2C();
                if (v51)
                {
                  v51 = sub_1C6F78124(v100, v69);
                  v47 = v96;
                  if ((v102 & 1) != (v52 & 1))
                  {
                    goto LABEL_54;
                  }

                  v71 = v51;
                  if ((v102 & 1) == 0)
                  {
LABEL_40:
                    v60 = *&__dst[0];
                    *(*&__dst[0] + 8 * (v71 >> 6) + 64) |= 1 << v71;
                    v72 = (v60[6] + 16 * v71);
                    *v72 = v100;
                    v72[1] = v69;
                    v73 = (v60[7] + 16 * v71);
                    *v73 = v95;
                    v73[1] = v103;
                    v74 = v60[2];
                    v75 = __OFADD__(v74, 1);
                    v76 = v74 + 1;
                    if (v75)
                    {
                      goto LABEL_60;
                    }

                    v60[2] = v76;
                    goto LABEL_44;
                  }
                }

                else
                {
                  v47 = v96;
                  if ((v102 & 1) == 0)
                  {
                    goto LABEL_40;
                  }
                }

                v60 = *&__dst[0];
                v77 = (*(*&__dst[0] + 56) + 16 * v71);
                *v77 = v95;
                v77[1] = v103;

LABEL_44:
                v64 = v94;
                v67 = v99 + 1;
                v68 = v98 + 2;
                if (v93 == v99 + 1)
                {

                  goto LABEL_27;
                }
              }
            }
          }
        }

        v36 = sub_1C754FEEC();
        v37 = sub_1C75511BC();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 134218240;
          *(v38 + 4) = 0;
          *(v38 + 12) = 2048;
          *(v38 + 14) = 0;
          _os_log_impl(&dword_1C6F5C000, v36, v37, "Cannot generate extended token collection without unambiguous query tokens (%ld) or assets (%ld).", v38, 0x16u);
          MEMORY[0x1CCA5F8E0](v38, -1, -1);
        }

        v39 = *(v0 + 736);
        v40 = *(v0 + 720);
        v41 = *(v0 + 712);
        v42 = *(v0 + 688);
        v43 = *(v0 + 680);
        v44 = *(v0 + 656);

        v45 = MEMORY[0x1E69E7CC0];
        *v44 = MEMORY[0x1E69E7CC0];
        v44[1] = v45;
        v44[2] = v45;
        v44[3] = v45;
        v44[4] = v45;
        v44[5] = v45;
        v44[6] = v45;
        v44[7] = v45;
        v44[8] = v45;
        v44[9] = v45;
        OUTLINED_FUNCTION_80_0(v43, v1[3]);
        sub_1C754F1AC();
        (*(v40 + 8))(v39, v41);
        sub_1C754F2FC();
        OUTLINED_FUNCTION_3();
        (*(v46 + 8))(v42);
        OUTLINED_FUNCTION_9_71();

        OUTLINED_FUNCTION_43();
      }

      else
      {
        v22 = *(v0 + 736);
        v23 = *(v0 + 720);
        v24 = *(v0 + 712);
        v25 = *(v0 + 688);
        v26 = *(v0 + 680);

        sub_1C731B334();
        swift_allocError();
        *v27 = 1;
        swift_willThrow();
        __swift_project_boxed_opaque_existential_1(v26, v1[3]);
        sub_1C754F1AC();
        (*(v23 + 8))(v22, v24);
        sub_1C754F2FC();
        OUTLINED_FUNCTION_3();
        (*(v2 + 8))(v25);
        OUTLINED_FUNCTION_9_71();

        OUTLINED_FUNCTION_43();
      }

      return v3();
    }

    if (v5 >= v7)
    {
      break;
    }

    memcpy((v0 + 16), i, 0x78uLL);
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_53;
    }

    memcpy(__dst, i, 0x78uLL);
    sub_1C6FCA6E4(v0 + 16, v0 + 136);
    sub_1C72D36F8();
    if (v12 != 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C716D7D8();
      }

      v13 = *(v9 + 16);
      if (v13 >= *(v9 + 24) >> 1)
      {
        sub_1C716D7D8();
      }

      *(v9 + 16) = v13 + 1;
      memcpy((v9 + 120 * v13 + 32), (v0 + 16), 0x78uLL);
      v5 = v11;
      goto LABEL_5;
    }

    sub_1C6FDD548(v0 + 16);
    ++v5;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:

  return sub_1C7551E4C();
}

uint64_t sub_1C731A10C()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v3 + 824) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C731A24C()
{
  v33 = v0;
  v1 = *(v0 + 696);
  memcpy((v0 + 336), (v0 + 256), 0x50uLL);
  v2 = *(v0 + 824);
  if (v1)
  {
    v3 = *(v0 + 832);
    __swift_project_boxed_opaque_existential_1(*(v0 + 680), *(*(v0 + 680) + 24));

    sub_1C754F1CC();
    memcpy(__dst, (v0 + 336), 0x50uLL);
    LOBYTE(v31) = v3;
    static ExtendedTokenDiagnosticsGenerator.save(extendedTokens:diagnosticsFileType:in:)(__dst);
    if (v2)
    {
      v4 = v2;
      v5 = sub_1C754FEEC();
      v6 = sub_1C755119C();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        v9 = v2;
        v10 = _swift_stdlib_bridgeErrorToNSError();
        *(v7 + 4) = v10;
        *v8 = v10;
        _os_log_impl(&dword_1C6F5C000, v5, v6, "Failed to save extended token diagnostics: %@", v7, 0xCu);
        sub_1C6FC15D8(v8);
        MEMORY[0x1CCA5F8E0](v8, -1, -1);
        OUTLINED_FUNCTION_10_1();
      }

      else
      {
      }
    }

    v11 = *(v0 + 728);
    v12 = *(v0 + 720);
    v13 = *(v0 + 712);
    OUTLINED_FUNCTION_80_0(*(v0 + 680), *(*(v0 + 680) + 24));
    sub_1C754F1AC();

    (*(v12 + 8))(v11, v13);
    v2 = 0;
  }

  sub_1C7027A20(v0 + 336, v0 + 416);
  v14 = sub_1C754FEEC();
  v15 = sub_1C75511BC();
  sub_1C7027A58(v0 + 336);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v16 = 136380675;
    memcpy(__dst, (v0 + 336), 0x50uLL);
    sub_1C7027A20(v0 + 336, v0 + 576);
    ExtendedTokenCollection.description.getter();
    v19 = v18;
    v21 = v20;
    memcpy((v0 + 496), __dst, 0x50uLL);
    sub_1C7027A58(v0 + 496);
    v22 = sub_1C6F765A4(v19, v21, &v31);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_1C6F5C000, v14, v15, "Generated extended tokens %{private}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1CCA5F8E0](v17, -1, -1);
    OUTLINED_FUNCTION_10_1();
  }

  sub_1C754F2EC();
  v23 = *(v0 + 784);
  v24 = *(v0 + 736);
  v25 = *(v0 + 720);
  v26 = *(v0 + 712);
  v27 = *(v0 + 680);
  if (v2)
  {
    sub_1C7027A58(v0 + 336);
  }

  else
  {
    v29 = *(v0 + 656);

    memcpy(v29, (v0 + 336), 0x50uLL);
  }

  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1C754F1AC();
  (*(v25 + 8))(v24, v26);

  OUTLINED_FUNCTION_9_71();

  OUTLINED_FUNCTION_43();

  return v28();
}

uint64_t sub_1C731A684()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  v4 = *(v0 + 688);
  v5 = *(v0 + 680);

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v4);

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C731A78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  type metadata accessor for PhotoAnalysisMomentGraphService(0);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C731A824, 0, 0);
}

uint64_t sub_1C731A824()
{
  v1 = v0[11];
  sub_1C754DBCC();
  swift_allocObject();
  v2 = sub_1C754DBBC();
  v0[9] = v1;
  v0[16] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219068);
  sub_1C72729E4();
  v0[17] = sub_1C754DBAC();
  v0[18] = v3;
  v4 = [objc_allocWithZone(MEMORY[0x1E69BE620]) initWithServiceProvider_];
  if (qword_1EC213F98 != -1)
  {
    swift_once();
  }

  v5 = v0[15];
  v6 = v0[13];
  v7 = sub_1C754FF1C();
  v8 = __swift_project_value_buffer(v7, qword_1EC219F58);
  (*(*(v7 - 8) + 16))(v5, v8, v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
  v10 = (v5 + *(v9 + 28));
  v11 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v12 = [v11 processName];

  v13 = sub_1C755068C();
  v15 = v14;

  *v10 = v13;
  v10[1] = v15;
  *(v5 + *(v9 + 32)) = v4;
  v16 = v6[8];
  v17 = v6[9];
  v21 = (OUTLINED_FUNCTION_80_0(v6 + 5, v16) + 96);
  v22 = (*v21 + **v21);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[19] = v18;
  *v18 = v19;
  v18[1] = sub_1C731AB34;

  return v22(v0 + 2, v16, v17);
}

uint64_t sub_1C731AB34()
{
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C731AC20()
{
  v11 = *(v0 + 136);
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  v5 = (*(v4 + 24))(v3, v4);
  *(v0 + 160) = v5;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v6 = *(v2 + 24);
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *(v7 + 16) = v11;
  *(v7 + 32) = v1;
  *(v7 + 40) = v5;
  *(v7 + 48) = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 176) = v8;
  *v8 = v9;
  v8[1] = sub_1C731AD6C;

  return sub_1C7299A58(v0 + 56, 0xD00000000000001ELL, 0x80000001C75A88A0, &unk_1C757E7B0, v7, 0, 0);
}

uint64_t sub_1C731AD6C()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v3 + 184) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C731AE80()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_1C754DB8C();
  swift_allocObject();
  sub_1C754DB7C();
  sub_1C70F8328();
  sub_1C754DB5C();
  v4 = v0[17];
  v3 = v0[18];
  sub_1C6FF6930(v0[15]);

  sub_1C6FC1640(v1, v2);
  sub_1C6FC1640(v4, v3);

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C731AFA4()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];

  sub_1C6FC1640(v2, v1);

  sub_1C6FF6930(v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t ExtendedTokenGenerator.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  v2 = OBJC_IVAR____TtC18PhotosIntelligence22ExtendedTokenGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0 + v2);
  return v0;
}

uint64_t ExtendedTokenGenerator.__deallocating_deinit()
{
  ExtendedTokenGenerator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C731B114(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ExtendedTokenGenerator();
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a2, a5);
  v15 = sub_1C731B240(a1, v13, a3, v14, a5, a6);
  (*(v11 + 8))(a2, a5);
  return v15;
}

uint64_t sub_1C731B240(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a5;
  v17 = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a2, a5);
  v12 = *a1;
  LOWORD(a2) = *(a1 + 4);
  v13 = a1[2];
  sub_1C754FEFC();
  *(a4 + 16) = v12;
  *(a4 + 24) = a2;
  *(a4 + 32) = v13;
  sub_1C6F699F8(&v15, a4 + 40);
  *(a4 + 80) = a3;
  return a4;
}

unint64_t sub_1C731B334()
{
  result = qword_1EC21AA38;
  if (!qword_1EC21AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AA38);
  }

  return result;
}

uint64_t sub_1C731B388(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_1C731B444;

  return sub_1C731A78C(a1, v4, v5, v7, v6);
}

uint64_t sub_1C731B444()
{
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t type metadata accessor for ExtendedTokenGenerator()
{
  result = qword_1EDD09E08;
  if (!qword_1EDD09E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C731B57C()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ExtendedTokenGenerator.generate(from:extendedRetrievedAssets:assetPertinenceFilter:eventRecorder:progressReporter:storyGenerationDiagnosticContext:diagnosticsFileType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = (*(*v8 + 120) + **(*v8 + 120));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v9 + 16) = v18;
  *v18 = v19;
  v18[1] = sub_1C731B900;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

_BYTE *storeEnumTagSinglePayload for ExtendedTokenGenerator.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C731B8AC()
{
  result = qword_1EC21AA40;
  if (!qword_1EC21AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AA40);
  }

  return result;
}

uint64_t SafetyBundle.init(guardrails:inputDenyLists:userRequestIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v60 = a3;
  v59 = a4;
  v6 = sub_1C754EABC();
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v64 = v9 - v8;
  OUTLINED_FUNCTION_37_3();
  v10 = sub_1C754EC7C();
  v11 = OUTLINED_FUNCTION_76(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_0();
  v63 = v13 - v12;
  OUTLINED_FUNCTION_37_3();
  v14 = sub_1C754EC9C();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_2();
  v67 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v66 = &v58 - v20;
  OUTLINED_FUNCTION_37_3();
  sub_1C754EBCC();
  OUTLINED_FUNCTION_3_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14_0();
  v26 = v25 - v24;
  v27 = sub_1C754EBDC();
  v28 = OUTLINED_FUNCTION_76(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14_0();
  v29 = sub_1C754EC1C();
  v30 = OUTLINED_FUNCTION_76(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_23_39();
  v58 = a1;
  v32 = *(a1 + 16);
  v61 = a2;
  if (v32)
  {
    v62 = v31;
    v65 = v16;
    OUTLINED_FUNCTION_32_31(MEMORY[0x1E69E7CC0]);
    do
    {
      sub_1C754EBBC();
      OUTLINED_FUNCTION_41_34();
      if (v34)
      {
        OUTLINED_FUNCTION_29_33(v33);
      }

      v35 = OUTLINED_FUNCTION_7_66();
      v36(v35);
      --v32;
    }

    while (v32);
    sub_1C754EBAC();
    sub_1C754EC0C();
    OUTLINED_FUNCTION_44_27(&off_1F46C24E0);
    sub_1C754EC2C();
    sub_1C731E63C(v69);
    OUTLINED_FUNCTION_27_39();
    a2 = v61;
    v16 = v65;
  }

  v37 = *(a2 + 16);
  if (v37)
  {
    v38 = (a2 + 32);
    v65 = v16 + 2;
    v39 = (v16 + 1);
    v40 = MEMORY[0x1E69E7CC0];
    v62 = v14;
    do
    {
      if (*v38)
      {
        sub_1C754E3CC();
      }

      else
      {
        sub_1C754E3BC();
      }

      v41 = OUTLINED_FUNCTION_25_38();
      (*(*(v26 - 8) + 16))(v41, v32, v26);
      OUTLINED_FUNCTION_45_27();
      OUTLINED_FUNCTION_39_32();
      MEMORY[0x1EEE9AC00](v42);
      OUTLINED_FUNCTION_14_0();
      v44 = OUTLINED_FUNCTION_22_52(v43);
      v45(v44);
      MEMORY[0x1CCA5AFC0](v22, v26, v32);
      sub_1C754EC6C();
      __swift_destroy_boxed_opaque_existential_1(v68);
      v46 = v66;
      sub_1C754EC8C();
      v32 = *v65;
      v47 = v62;
      (*v65)(v67, v46, v62);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_31_35();
        v40 = v51;
      }

      v22 = *(v40 + 16);
      v26 = v22 + 1;
      if (v22 >= *(v40 + 24) >> 1)
      {
        OUTLINED_FUNCTION_28_29();
        v40 = v52;
      }

      v48 = *v39;
      (*v39)(v66, v47);
      v49 = OUTLINED_FUNCTION_44_27(&off_1F46C24E0);
      v50 = v67;
      (v32)(v49, v67, v47);
      OUTLINED_FUNCTION_33_31();
      v48(v50, v47);
      ++v38;
      --v37;
    }

    while (v37);
  }

  v53 = v59;
  *v59 = 0;
  v54 = v61;
  *(v53 + 1) = v58;
  *(v53 + 2) = v54;
  *(v53 + 3) = MEMORY[0x1E69E7CC0];
  v55 = *(OUTLINED_FUNCTION_30_35() + 40);
  sub_1C754DFFC();
  OUTLINED_FUNCTION_84_0();
  return (*(v56 + 32))(&v53[v55], v60);
}

uint64_t SafetyBundle.init(guardrails:outputDenyLists:userRequestIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v62 = a3;
  v61 = a4;
  v6 = sub_1C754EADC();
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v66 = v9 - v8;
  OUTLINED_FUNCTION_37_3();
  v10 = sub_1C754EB7C();
  v11 = OUTLINED_FUNCTION_76(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_0();
  v65 = v13 - v12;
  OUTLINED_FUNCTION_37_3();
  v14 = sub_1C754EB9C();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_2();
  v64 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v59 - v20;
  OUTLINED_FUNCTION_37_3();
  sub_1C754EBCC();
  OUTLINED_FUNCTION_3_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14_0();
  v26 = v25 - v24;
  v27 = sub_1C754EBDC();
  v28 = OUTLINED_FUNCTION_76(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14_0();
  v29 = sub_1C754EB1C();
  v30 = OUTLINED_FUNCTION_76(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_23_39();
  v60 = a1;
  v32 = *(a1 + 16);
  v63 = a2;
  if (v32)
  {
    v59 = v31;
    v67 = v16;
    OUTLINED_FUNCTION_32_31(MEMORY[0x1E69E7CC0]);
    do
    {
      sub_1C754EBBC();
      OUTLINED_FUNCTION_41_34();
      if (v34)
      {
        OUTLINED_FUNCTION_29_33(v33);
      }

      v35 = OUTLINED_FUNCTION_7_66();
      v36(v35);
      --v32;
    }

    while (v32);
    sub_1C754EBAC();
    sub_1C754EB0C();
    OUTLINED_FUNCTION_44_27(&off_1F46C24F8);
    sub_1C754EB2C();
    sub_1C731E63C(v70);
    OUTLINED_FUNCTION_27_39();
    a2 = v63;
    v16 = v67;
  }

  v37 = *(a2 + 16);
  if (v37)
  {
    v38 = (a2 + 32);
    v39 = (v16 + 16);
    v40 = (v16 + 8);
    v41 = MEMORY[0x1E69E7CC0];
    do
    {
      v42 = *v38;
      v67 = v38 + 1;
      switch(v42)
      {
        case 1:
          sub_1C754E40C();
          break;
        case 2:
          sub_1C754E3FC();
          break;
        case 3:
          sub_1C754E41C();
          break;
        case 4:
          sub_1C754E3EC();
          break;
        default:
          sub_1C754E3DC();
          break;
      }

      v43 = OUTLINED_FUNCTION_25_38();
      (*(*(v26 - 8) + 16))(v43, v32, v26);
      OUTLINED_FUNCTION_45_27();
      OUTLINED_FUNCTION_39_32();
      MEMORY[0x1EEE9AC00](v44);
      OUTLINED_FUNCTION_14_0();
      v46 = OUTLINED_FUNCTION_22_52(v45);
      v47(v46);
      MEMORY[0x1CCA5AFE0](v22, v26, v32);
      sub_1C754EB6C();
      __swift_destroy_boxed_opaque_existential_1(v69);
      v48 = v68;
      sub_1C754EB8C();
      v32 = *v39;
      v49 = v64;
      (*v39)(v64, v48, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_31_35();
        v41 = v52;
      }

      v22 = *(v41 + 16);
      v26 = v22 + 1;
      if (v22 >= *(v41 + 24) >> 1)
      {
        OUTLINED_FUNCTION_28_29();
        v41 = v53;
      }

      v50 = *v40;
      (*v40)(v68, v14);
      v51 = OUTLINED_FUNCTION_44_27(&off_1F46C24F8);
      (v32)(v51, v49, v14);
      OUTLINED_FUNCTION_33_31();
      v50(v49, v14);
      --v37;
      v38 = v67;
    }

    while (v37);
  }

  v54 = v61;
  *v61 = 1;
  *(v54 + 1) = v60;
  v55 = v63;
  *(v54 + 2) = MEMORY[0x1E69E7CC0];
  *(v54 + 3) = v55;
  v56 = *(OUTLINED_FUNCTION_30_35() + 40);
  sub_1C754DFFC();
  OUTLINED_FUNCTION_84_0();
  return (*(v57 + 32))(&v54[v56], v62);
}

Swift::Void __swiftcall SafetyBundle.prewarm(useCaseIdentifier:)(PhotosIntelligence::LLMUseCaseIdentifier useCaseIdentifier)
{
  v2 = *useCaseIdentifier;
  sub_1C731E6A4(v1 + 32, &v11);
  if (v12)
  {
    sub_1C6FD80E4(&v11, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1C755BAB0;
    sub_1C6FB5E28(v13, v3 + 32);
    *&v11 = v3;
    sub_1C75504FC();
    sub_1C6FD246C();
    __swift_destroy_boxed_opaque_existential_1(v13);
    v4 = v11;
  }

  else
  {
    sub_1C731E63C(&v11);
    v4 = sub_1C75504FC();
  }

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    do
    {
      sub_1C6FB5E28(v6, v13);
      v7 = v14;
      v8 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v9 = 0xE500000000000000;
      v10 = 0x726568746FLL;
      switch(v2)
      {
        case 1:
          v10 = 0xD000000000000021;
          v9 = 0x80000001C7596920;
          break;
        case 2:
          v10 = 0xD00000000000001BLL;
          v9 = 0x80000001C7596950;
          break;
        case 3:
          v10 = 0xD00000000000001ALL;
          v9 = 0x80000001C7596970;
          break;
        case 4:
          v10 = 0xD00000000000001CLL;
          v9 = 0x80000001C7596990;
          break;
        case 5:
          v10 = 0xD000000000000014;
          v9 = 0x80000001C75969B0;
          break;
        case 6:
          v10 = 0xD000000000000023;
          v9 = 0x80000001C75969D0;
          break;
        case 7:
          break;
        default:
          v10 = 0xD000000000000020;
          v9 = 0x80000001C75968F0;
          break;
      }

      (*(v8 + 16))(v10, v9, v7, v8);

      __swift_destroy_boxed_opaque_existential_1(v13);
      v6 += 40;
      --v5;
    }

    while (v5);
  }
}

uint64_t SafetyBundle.scrub(_:useCaseIdentifier:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 192) = v4;
  *(v1 + 200) = v0;
  *(v1 + 184) = v5;
  v6 = sub_1C754D84C();
  *(v1 + 208) = v6;
  OUTLINED_FUNCTION_18(v6);
  *(v1 + 216) = v7;
  *(v1 + 224) = OUTLINED_FUNCTION_77();
  *(v1 + 314) = *v3;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C731C6A0()
{
  OUTLINED_FUNCTION_123();
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  *(v0 + 168) = v2;
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 208);
  *(v0 + 176) = v1;
  sub_1C754D7BC();
  sub_1C6FB5E8C();
  v7 = sub_1C755154C();
  v9 = v8;
  (*(v5 + 8))(v4, v6);
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 == 0xE000000000000000;
  }

  if (v10)
  {

    goto LABEL_12;
  }

  v11 = sub_1C7551DBC();

  if (v11)
  {
LABEL_12:
    v19 = *(v0 + 192);
    sub_1C75504FC();
    v20 = *(v0 + 184);
    goto LABEL_13;
  }

  v12 = *(v0 + 200);
  v13 = *(v12 + 72);
  if (*(v13 + 16))
  {
    *(v0 + 313) = *(v0 + 314);
    v14 = swift_task_alloc();
    *(v0 + 232) = v14;
    *v14 = v0;
    v14[1] = sub_1C731C920;
    v15 = *(v0 + 192);
    v16 = (v0 + 313);
    v17 = *(v0 + 184);
    v18 = v13;
LABEL_18:

    return sub_1C731DF78(v17, v15, v18, v16);
  }

  v20 = *(v0 + 184);
  v19 = *(v0 + 192);
  *(v0 + 264) = v19;
  sub_1C75504FC();
  sub_1C731E6A4(v12 + 32, v0 + 128);
  if (*(v0 + 152))
  {
    v23 = *(v0 + 314);
    sub_1C6FD80E4((v0 + 128), v0 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100);
    inited = swift_initStackObject();
    *(v0 + 272) = inited;
    *(inited + 16) = xmmword_1C755BAB0;
    sub_1C6FB5E28(v0 + 88, inited + 32);
    *(v0 + 312) = v23;
    v25 = swift_task_alloc();
    *(v0 + 280) = v25;
    *v25 = v0;
    OUTLINED_FUNCTION_5_73(v25);
    v17 = v20;
    v15 = v19;
    v18 = inited;
    goto LABEL_18;
  }

  sub_1C731E63C(v0 + 128);
LABEL_13:

  OUTLINED_FUNCTION_82_0();

  return v21(v20, v19);
}

uint64_t sub_1C731C920()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_10_5();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  v5[30] = v1;

  if (!v1)
  {
    v5[31] = v0;
    v5[32] = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C731CA38()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  *(v0 + 264) = v1;
  sub_1C731E6A4(*(v0 + 200) + 32, v0 + 128);
  if (*(v0 + 152))
  {
    v3 = *(v0 + 314);
    sub_1C6FD80E4((v0 + 128), v0 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100);
    inited = swift_initStackObject();
    *(v0 + 272) = inited;
    *(inited + 16) = xmmword_1C755BAB0;
    sub_1C6FB5E28(v0 + 88, inited + 32);
    *(v0 + 312) = v3;
    v5 = swift_task_alloc();
    *(v0 + 280) = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_5_73(v5);

    return sub_1C731DF78(v2, v1, inited, v6);
  }

  else
  {
    sub_1C731E63C(v0 + 128);

    OUTLINED_FUNCTION_82_0();

    return v8(v2, v1);
  }
}

uint64_t sub_1C731CB78()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_10_5();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  v5[36] = v1;

  if (!v1)
  {
    v5[37] = v0;
    v5[38] = v3;
  }

  swift_setDeallocating();
  sub_1C6FDC978();

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C731CCBC()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  OUTLINED_FUNCTION_82_0();

  return v3(v2, v1);
}

uint64_t sub_1C731CD2C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C731CD88()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C731CDEC()
{
  OUTLINED_FUNCTION_42();
  v6 = OUTLINED_FUNCTION_43_31(v1, v2, v3, v4, v5);
  v0[8] = v6;
  OUTLINED_FUNCTION_18(v6);
  v0[9] = v7;
  v0[10] = OUTLINED_FUNCTION_77();
  v8 = sub_1C754EC4C();
  v0[11] = v8;
  OUTLINED_FUNCTION_18(v8);
  v0[12] = v9;
  v0[13] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C731CED8()
{
  OUTLINED_FUNCTION_123();
  v1 = OUTLINED_FUNCTION_12_59();
  v2(v1);
  v3 = objc_opt_self();
  sub_1C75504FC();
  v4 = [v3 processInfo];
  [v4 processIdentifier];

  OUTLINED_FUNCTION_20_50();
  sub_1C754EC3C();
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_17_64(v5);

  return MEMORY[0x1EEE0B2A8](v6);
}

uint64_t sub_1C731CFD0()
{
  OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v0;

  if (!v0)
  {
    v10 = OUTLINED_FUNCTION_42_30();
    v11(v10);

    OUTLINED_FUNCTION_16_54();
    OUTLINED_FUNCTION_88_0();

    __asm { BRAA            X3, X16 }
  }

  v4 = OUTLINED_FUNCTION_42_30();
  v5(v4);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C731D174()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C731EDBC;

  return sub_1C731CDEC();
}

uint64_t sub_1C731D28C()
{
  OUTLINED_FUNCTION_42();
  v6 = OUTLINED_FUNCTION_43_31(v1, v2, v3, v4, v5);
  v0[8] = v6;
  OUTLINED_FUNCTION_18(v6);
  v0[9] = v7;
  v0[10] = OUTLINED_FUNCTION_77();
  v8 = sub_1C754EB4C();
  v0[11] = v8;
  OUTLINED_FUNCTION_18(v8);
  v0[12] = v9;
  v0[13] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C731D378()
{
  OUTLINED_FUNCTION_123();
  v1 = OUTLINED_FUNCTION_12_59();
  v2(v1);
  v3 = objc_opt_self();
  sub_1C75504FC();
  v4 = [v3 processInfo];
  [v4 processIdentifier];

  OUTLINED_FUNCTION_20_50();
  sub_1C754EB3C();
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_17_64(v5);

  return MEMORY[0x1EEE0B268](v6);
}

uint64_t sub_1C731D470()
{
  OUTLINED_FUNCTION_36_27();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v0;

  if (!v0)
  {
    v10 = OUTLINED_FUNCTION_42_30();
    v11(v10);

    OUTLINED_FUNCTION_16_54();
    OUTLINED_FUNCTION_88_0();

    __asm { BRAA            X3, X16 }
  }

  v4 = OUTLINED_FUNCTION_42_30();
  v5(v4);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C731D614()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C731D67C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t, uint64_t, id), void (*a5)(char *))
{
  v9 = a3(0);
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  v15 = objc_opt_self();
  sub_1C75504FC();
  v16 = [v15 processInfo];
  v17 = [v16 processIdentifier];

  a4(a1, a2, v17);
  a5(v14);
  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_1C731D7BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C731D880;

  return sub_1C731D28C();
}

uint64_t sub_1C731D880(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  OUTLINED_FUNCTION_14();
  *v7 = v6;

  OUTLINED_FUNCTION_82_0();
  if (!v2)
  {
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9);
}

uint64_t SafetyBundle.Guardrail.init(rawValue:)()
{
  OUTLINED_FUNCTION_29_0();
  v1 = sub_1C7551B2C();

  *v0 = v1 != 0;
  return result;
}

unint64_t sub_1C731DA5C@<X0>(void *a1@<X8>)
{
  result = SafetyBundle.Guardrail.rawValue.getter();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

PhotosIntelligence::SafetyBundle::InputDenyList_optional __swiftcall SafetyBundle.InputDenyList.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_29_0();
  v2 = sub_1C7551B2C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t SafetyBundle.InputDenyList.rawValue.getter()
{
  if (*v0)
  {
    return 0x6D6F725072657375;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_1C731DB60@<X0>(uint64_t *a1@<X8>)
{
  result = SafetyBundle.InputDenyList.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

PhotosIntelligence::SafetyBundle::OutputDenyList_optional __swiftcall SafetyBundle.OutputDenyList.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_29_0();
  v2 = sub_1C7551B2C();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t SafetyBundle.OutputDenyList.rawValue.getter()
{
  result = 1702060386;
  switch(*v0)
  {
    case 1:
      result = 0x7469617274;
      break;
    case 2:
      result = 0x74695479726F7473;
      break;
    case 3:
      result = 0x6E6F53636973756DLL;
      break;
    case 4:
      result = 0x76697469736E6573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C731DCC4@<X0>(uint64_t *a1@<X8>)
{
  result = SafetyBundle.OutputDenyList.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SafetyBundle.debugDescription.getter()
{
  v1 = 1701736302;
  v2 = *(*(v0 + 8) + 16);
  if (*v0)
  {
    if (v2)
    {
      v3 = MEMORY[0x1CCA5D090]();
      v5 = v4;
    }

    else
    {
      v5 = 0xE400000000000000;
      v3 = 1701736302;
    }

    v7 = "edTokenGenerator";
    if (*(*(v0 + 24) + 16))
    {
      v1 = MEMORY[0x1CCA5D090]();
      v9 = v8;
    }

    else
    {
      v9 = 0xE400000000000000;
    }

    v10 = 0xD000000000000027;
  }

  else
  {
    if (v2)
    {
      v3 = MEMORY[0x1CCA5D090]();
      v5 = v6;
    }

    else
    {
      v5 = 0xE400000000000000;
      v3 = 1701736302;
    }

    v7 = "\nuserRequestIdentifier: ";
    v10 = 0xD00000000000002CLL;
    if (*(*(v0 + 16) + 16))
    {
      v1 = MEMORY[0x1CCA5D090]();
      v9 = v11;
    }

    else
    {
      v9 = 0xE400000000000000;
    }
  }

  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x7542797465666153, 0xEE00203A656C646ELL);
  MEMORY[0x1CCA5CD70](v10, v7 | 0x8000000000000000);

  MEMORY[0x1CCA5CD70](0x617264726175470ALL, 0xED0000203A736C69);
  MEMORY[0x1CCA5CD70](v3, v5);

  MEMORY[0x1CCA5CD70](0x696C20796E65440ALL, 0xED0000203A737473);
  MEMORY[0x1CCA5CD70](v1, v9);

  MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C75AACF0);
  type metadata accessor for SafetyBundle();
  sub_1C754DFFC();
  sub_1C712A6F8();
  v12 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v12);

  return 0;
}

uint64_t sub_1C731DF78(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = v4;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  *(v5 + 156) = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1C731DFA4, 0, 0);
}

void sub_1C731DFA4()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  *(v0 + 88) = v2;
  if (v2)
  {
    v3 = *(v0 + 64);
    *(v0 + 152) = *(type metadata accessor for SafetyBundle() + 40);
    *(v0 + 96) = v3;
    *(v0 + 104) = 0;
    sub_1C75504FC();
    sub_1C6FB5E28(v1 + 32, v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_15_61();
    switch(v4)
    {
      case 5:
      case 7:
        break;
      default:
        OUTLINED_FUNCTION_0_140();
        break;
    }

    OUTLINED_FUNCTION_8_68();
    v7 = swift_task_alloc();
    *(v0 + 120) = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_6_79(v7);
    OUTLINED_FUNCTION_13_64();
    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X7, X16 }
  }

  OUTLINED_FUNCTION_43();
  sub_1C75504FC();
  OUTLINED_FUNCTION_17_1();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C731E1EC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *v7 = *v3;
  v6[16] = v2;

  if (!v2)
  {
    v6[17] = a2;
    v6[18] = a1;
  }

  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1C731E358()
{
  v1 = v0[11];
  v2 = v0[13] + 1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (v2 == v1)
  {
    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X3, X16 }
  }

  v5 = v0[13];
  v0[12] = v0[17];
  v0[13] = v5 + 1;
  sub_1C6FB5E28(v0[9] + 40 * v5 + 72, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_15_61();
  switch(v6)
  {
    case 5:
    case 7:
      break;
    default:
      OUTLINED_FUNCTION_0_140();
      break;
  }

  OUTLINED_FUNCTION_8_68();
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_6_79();
  OUTLINED_FUNCTION_13_64();
  OUTLINED_FUNCTION_17_1();

  __asm { BRAA            X7, X16 }
}

uint64_t sub_1C731E590()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t type metadata accessor for SafetyBundle()
{
  result = qword_1EC21AA90;
  if (!qword_1EC21AA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C731E63C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2154F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C731E6A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2154F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C731E718()
{
  result = qword_1EC21AA48;
  if (!qword_1EC21AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AA48);
  }

  return result;
}

unint64_t sub_1C731E7A0()
{
  result = qword_1EC21AA60;
  if (!qword_1EC21AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AA60);
  }

  return result;
}

unint64_t sub_1C731E828()
{
  result = qword_1EC21AA78;
  if (!qword_1EC21AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AA78);
  }

  return result;
}

void sub_1C731E8D4()
{
  sub_1C731EA30(319, &qword_1EC21AAA0);
  if (v0 <= 0x3F)
  {
    sub_1C731EA30(319, &qword_1EC21AAA8);
    if (v1 <= 0x3F)
    {
      sub_1C731EA30(319, &qword_1EC21AAB0);
      if (v2 <= 0x3F)
      {
        sub_1C731EA7C(319, &qword_1EC21AAB8, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1C731EA7C(319, &qword_1EC21AAC0, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1C754DFFC();
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

void sub_1C731EA30(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C7550C3C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1C731EA7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215108);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SafetyBundle.Guardrail(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SafetyBundle.OutputDenyList(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C731EC80(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C731ED60()
{
  result = qword_1EC21AAC8;
  if (!qword_1EC21AAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AAC8);
  }

  return result;
}

void OUTLINED_FUNCTION_32_31(uint64_t a1@<X8>)
{
  *(v2 - 168) = a1;

  sub_1C716D6F4(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_43_31(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;

  return sub_1C754DFFC();
}

uint64_t sub_1C731EE10(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C75516BC())
  {
    result = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v15 = MEMORY[0x1E69E7CC0];
    result = sub_1C755195C();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    v13 = v1 & 0xFFFFFFFFFFFFFF8;
    v14 = v1 & 0xC000000000000001;
    v5 = v1;
    while (1)
    {
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v14)
      {
        v7 = MEMORY[0x1CCA5DDD0](v4, v1);
        v8 = v7;
      }

      else
      {
        if (v4 >= *(v13 + 16))
        {
          goto LABEL_17;
        }

        v8 = *(v1 + 8 * v4 + 32);
      }

      MEMORY[0x1EEE9AC00](v7);
      sub_1C75504FC();
      v9 = sub_1C70735F4();

      v10 = 1.0;
      if (!v9)
      {
        v10 = v8[4];
      }

      v11 = *(v8 + 2);
      v12 = *(v8 + 3);
      type metadata accessor for MusicKeywordCompletion();
      swift_allocObject();
      MusicKeywordCompletion.init(keyword:score:)(v11, v12, v10);
      sub_1C75504FC();

      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      ++v4;
      v1 = v5;
      if (v6 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return result;
}

id static StoryMusicCurator.isUserAllowedExplicitContent()()
{
  v0 = byte_1EDD0A9C2;
  if (byte_1EDD0A9C2 != 2)
  {
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v15 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v15, &dword_1EDD28D48);
    v16 = sub_1C754FEEC();
    v17 = sub_1C755117C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_102();
      *v18 = 67109120;
      *(v18 + 4) = v0 & 1;
      _os_log_impl(&dword_1C6F5C000, v16, v17, "[isUserAllowedExplicitContent] using cached isExplicitContentAllowed = %{BOOL}d", v18, 8u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    return (v0 & 1);
  }

  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v2 = result;
    v3 = sub_1C755068C();
    v5 = sub_1C7326958(v3, v4, v2);

    v0 = v5 == 1;
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v6 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v6, &dword_1EDD28D48);
    v7 = sub_1C754FEEC();
    sub_1C755117C();
    v8 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_102();
      *v10 = 67109120;
      *(v10 + 4) = v5 == 1;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v11, v12, v13, v14, v10, 8u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    byte_1EDD0A9C2 = v5 == 1;
    return (v0 & 1);
  }

  __break(1u);
  return result;
}

uint64_t static AppleMusicConfigurationParameters.storefrontsExcludedFromAppleMusicSearch.getter()
{
  if (qword_1EC214018 != -1)
  {
    OUTLINED_FUNCTION_8_69();
  }

  return sub_1C75504FC();
}

uint64_t StoryMusicCurator.curateAppleMusic(using:with:maestroKeywords:mood:eventRecorder:)()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  *(v1 + 520) = v2;
  *(v1 + 504) = v7;
  *(v1 + 512) = v8;
  *(v1 + 496) = v9;
  *(v1 + 528) = *v2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C60);
  OUTLINED_FUNCTION_76(v10);
  *(v1 + 536) = swift_task_alloc();
  *(v1 + 544) = swift_task_alloc();
  v11 = type metadata accessor for AppleMusicSubscriptionState();
  *(v1 + 552) = v11;
  OUTLINED_FUNCTION_76(v11);
  *(v1 + 560) = swift_task_alloc();
  *(v1 + 568) = swift_task_alloc();
  *(v1 + 576) = swift_task_alloc();
  *(v1 + 584) = swift_task_alloc();
  v12 = sub_1C754F38C();
  *(v1 + 592) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v1 + 600) = v13;
  *(v1 + 608) = OUTLINED_FUNCTION_77();
  *(v1 + 763) = *v6;
  memcpy((v1 + 16), v4, 0x80uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C731F44C()
{
  OUTLINED_FUNCTION_31();
  v114 = v0;
  v1 = v0[64];
  v2 = v0[62];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = (v3 + 32);
  while (1)
  {
    if (!v4)
    {
      OUTLINED_FUNCTION_94_14();
      if (!v7)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v8 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v8, &dword_1EDD28D48);
      v9 = sub_1C754FEEC();
      sub_1C755117C();
      v10 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v10, v11))
      {
        OUTLINED_FUNCTION_96_0();
        v12 = swift_slowAlloc();
        OUTLINED_FUNCTION_92_0(v12);
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v13, v14, v15, v16, 0x6973754D78656C66, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v17 = v0[64];

      __swift_project_boxed_opaque_existential_1(v17, v1[3]);
      sub_1C754F1AC();
      v18 = OUTLINED_FUNCTION_49_3();
      v19(v18);
      goto LABEL_48;
    }

    if ((*v5 & 1) == 0)
    {
      break;
    }

    v6 = sub_1C7551DBC();

    ++v5;
    --v4;
    if (v6)
    {
      goto LABEL_12;
    }
  }

LABEL_12:
  v20 = v0[69];
  v21 = v0[68];
  v22 = v0[62];
  __swift_project_boxed_opaque_existential_1(v0[64], v1[3]);
  sub_1C754F15C();
  v23 = type metadata accessor for StoryMusicCurationOptions();
  v0[77] = v23;
  sub_1C7326A18(v22 + *(v23 + 56), v21, &qword_1EC215C60);
  if (__swift_getEnumTagSinglePayload(v21, 1, v20) == 1)
  {
    sub_1C6FD7FC8(v0[68], &qword_1EC215C60);
    v24 = v0[28];
    __swift_project_boxed_opaque_existential_1(v0 + 24, v0[27]);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[78] = v25;
    *v25 = v26;
    v25[1] = sub_1C731FF18;
    v116 = v24;
    OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE2A6A0](v27, v28, v29, v30, v31, v32, v33, v34);
  }

  sub_1C73269B4(v0[68], v0[72]);
  OUTLINED_FUNCTION_90_3();
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD00000000000003ELL, 0x80000001C75AAF30);
  v36 = AppleMusicSubscriptionState.description.getter();
  MEMORY[0x1CCA5CD70](v36);

  v37 = v113[0];
  v38 = v113[1];
  OUTLINED_FUNCTION_94_14();
  if (!v7)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v39 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v39, &dword_1EDD28D48);
  sub_1C75504FC();
  v40 = sub_1C754FEEC();
  sub_1C755117C();

  v117 = v39;
  if (OUTLINED_FUNCTION_140_0())
  {
    v41 = OUTLINED_FUNCTION_41_0();
    v42 = OUTLINED_FUNCTION_20_1();
    v113[0] = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_1C6F765A4(v37, v38, v113);
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v43, v44, v45, v46, v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v47 = v0[72];
  v48 = v0[65];
  sub_1C6FF7624(v47, v0[73]);
  v49 = v48 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  OUTLINED_FUNCTION_20_18();
  v50 = type metadata accessor for StoryMusicCurationDiagnostics();
  v51 = v50[33];
  sub_1C6FB0600();
  v52 = *(*(v49 + v51) + 16);
  sub_1C6FB0EFC();
  v53 = *(v49 + v51);
  *(v53 + 16) = v52 + 1;
  v54 = v53 + 16 * v52;
  *(v54 + 32) = v37;
  *(v54 + 40) = v38;
  *(v49 + v51) = v53;
  swift_endAccess();
  sub_1C6FF7688(v47);
  v55 = v0[73];
  v56 = v0[69];
  v57 = v0[67];
  v58 = v0[65];
  sub_1C6FF7624(v55, v57);
  v59 = 1;
  __swift_storeEnumTagSinglePayload(v57, 0, 1, v56);
  v60 = OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_appleMusicSubscriptionState;
  OUTLINED_FUNCTION_20_18();
  sub_1C7326A68(v57, v58 + v60, &qword_1EC215C60);
  swift_endAccess();
  switch(*(v55 + 1))
  {
    case 1:
      goto LABEL_22;
    case 2:
    case 3:
    case 4:
    case 5:
      OUTLINED_FUNCTION_246_1();
LABEL_22:
      OUTLINED_FUNCTION_15_62();
      v59 = OUTLINED_FUNCTION_46_27();
      break;
    default:
      break;
  }

  v61 = v0[73];
  v62 = v0[69];
  v63 = v0[65];

  v64 = v59 & 1;
  v65 = OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  v0[79] = OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  v66 = (v63 + v65);
  swift_beginAccess();
  v0[80] = v50;
  *(v66 + v50[16]) = v64;
  v67 = (v61 + *(v62 + 32));
  v68 = v67[1];
  *v66 = *v67;
  v66[1] = v68;
  sub_1C75504FC();

  switch(*(v55 + 1))
  {
    case 1:
      goto LABEL_26;
    case 2:
    case 3:
    case 4:
    case 5:
      OUTLINED_FUNCTION_35_23();
LABEL_26:
      OUTLINED_FUNCTION_15_62();
      v69 = OUTLINED_FUNCTION_46_27();

      if (v69)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_94_14();
      if (!v7)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v81 = v0[73];
      v82 = v0[70];
      __swift_project_value_buffer(v117, &dword_1EDD28D48);
      sub_1C6FF7624(v81, v82);
      v83 = sub_1C754FEEC();
      sub_1C755117C();
      v84 = OUTLINED_FUNCTION_72();
      v86 = os_log_type_enabled(v84, v85);
      v87 = v0[70];
      if (!v86)
      {

        sub_1C6FF7688(v87);
        goto LABEL_47;
      }

      v88 = OUTLINED_FUNCTION_41_0();
      v89 = OUTLINED_FUNCTION_20_1();
      v113[0] = v89;
      *v88 = 136315138;
      v90 = v87 + *(v62 + 32);
      if (*(v90 + 8))
      {
        v66 = *v90;
        v87 = *(v90 + 8);
      }

      else
      {
        OUTLINED_FUNCTION_93_13();
      }

      v102 = v0[70];
      sub_1C75504FC();
      sub_1C6FF7688(v102);
      v103 = sub_1C6F765A4(v66, v87, v113);

      *(v88 + 4) = v103;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v104, v105, v106, v107, v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v89);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      goto LABEL_45;
    default:

LABEL_27:
      OUTLINED_FUNCTION_94_14();
      if (!v7)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v0[81] = __swift_project_value_buffer(v117, &dword_1EDD28D48);
      v70 = sub_1C754FEEC();
      v71 = sub_1C755118C();
      v72 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v72, v73))
      {
        OUTLINED_FUNCTION_96_0();
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_1C6F5C000, v70, v71, "(Apple Music) User is eligible", v74, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v75 = v0[73];

      v0[82] = *(v75 + 8);
      v76 = *(v75 + 16);
      v0[83] = v76;
      if (v76)
      {
        v77 = swift_task_alloc();
        v0[84] = v77;
        *v77 = v0;
        OUTLINED_FUNCTION_24_34(v77);
        v78 = OUTLINED_FUNCTION_117_0();

        return StoryMusicCurator.canCurateAppleMusic(forStorefront:with:)(v78, v79, v80);
      }

      OUTLINED_FUNCTION_20_18();
      v91 = v50[35];
      sub_1C6FB0600();
      v92 = *(*(v66 + v91) + 16);
      sub_1C6FB0EFC();
      v93 = *(v66 + v91);
      *(v93 + 16) = v92 + 1;
      v94 = v93 + 16 * v92;
      *(v94 + 32) = 0xD000000000000037;
      *(v94 + 40) = 0x80000001C75AADA0;
      *(v66 + v91) = v93;
      swift_endAccess();
      v83 = sub_1C754FEEC();
      v95 = sub_1C755117C();
      v96 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v96, v97))
      {
        OUTLINED_FUNCTION_41_0();
        v113[0] = OUTLINED_FUNCTION_17_6();
        OUTLINED_FUNCTION_95_15(4.8149e-34);
        v98 = OUTLINED_FUNCTION_49_3();
        *(v91 + 4) = sub_1C6F765A4(v98, v99, v100);
        OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v101, v95, "(Apple Music) %s");
        OUTLINED_FUNCTION_56_2();
LABEL_45:
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

LABEL_47:
      OUTLINED_FUNCTION_33_32();
      OUTLINED_FUNCTION_19_58();
      v108 = OUTLINED_FUNCTION_94();
      v109(v108);
      break;
  }

LABEL_48:
  OUTLINED_FUNCTION_1_105();

  OUTLINED_FUNCTION_116();
  v111 = MEMORY[0x1E69E7CC0];

  return v110(v111);
}

void sub_1C731FF18()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_41();

    MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }
}

uint64_t sub_1C7320028()
{
  v68 = v0;
  sub_1C73269B4(v0[71], v0[73]);
  v1 = v0[73];
  v2 = v0[69];
  v3 = v0[67];
  v4 = v0[65];
  sub_1C6FF7624(v1, v3);
  v5 = 1;
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v2);
  v6 = OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_appleMusicSubscriptionState;
  OUTLINED_FUNCTION_20_18();
  sub_1C7326A68(v3, v4 + v6, &qword_1EC215C60);
  swift_endAccess();
  switch(*(v1 + 1))
  {
    case 1:
      goto LABEL_3;
    case 2:
    case 3:
    case 4:
    case 5:
      OUTLINED_FUNCTION_246_1();
LABEL_3:
      v5 = OUTLINED_FUNCTION_46_27();
      break;
    default:
      break;
  }

  v7 = v0[73];
  v8 = v0[69];
  v9 = v0[65];

  v10 = v5 & 1;
  v11 = OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  v0[79] = OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
  v12 = (v9 + v11);
  swift_beginAccess();
  v13 = type metadata accessor for StoryMusicCurationDiagnostics();
  v0[80] = v13;
  *(v12 + *(v13 + 64)) = v10;
  v14 = (v7 + *(v8 + 32));
  v15 = v14[1];
  v16 = v12[1];
  *v12 = *v14;
  v12[1] = v15;
  sub_1C75504FC();

  switch(*(v1 + 1))
  {
    case 1:
      goto LABEL_7;
    case 2:
    case 3:
    case 4:
    case 5:
      OUTLINED_FUNCTION_39_33();
LABEL_7:
      OUTLINED_FUNCTION_15_62();
      v17 = OUTLINED_FUNCTION_46_27();

      if (v17)
      {
        goto LABEL_8;
      }

      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v33 = sub_1C754FF1C();
      __swift_project_value_buffer(v33, &dword_1EDD28D48);
      v34 = OUTLINED_FUNCTION_66_2();
      sub_1C6FF7624(v34, v35);
      v36 = sub_1C754FEEC();
      sub_1C755117C();
      v37 = OUTLINED_FUNCTION_72();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v0[70];
      if (!v39)
      {

        sub_1C6FF7688(v40);
        goto LABEL_28;
      }

      v41 = OUTLINED_FUNCTION_41_0();
      v42 = OUTLINED_FUNCTION_20_1();
      v67 = v42;
      *v41 = 136315138;
      v43 = (v40 + *(v8 + 32));
      if (v43[1])
      {
        v16 = *v43;
        v40 = v43[1];
      }

      else
      {
        OUTLINED_FUNCTION_93_13();
      }

      v56 = v0[70];
      sub_1C75504FC();
      sub_1C6FF7688(v56);
      v57 = sub_1C6F765A4(v16, v40, &v67);

      *(v41 + 4) = v57;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v58, v59, v60, v61, v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0](v62);
      goto LABEL_26;
    default:

LABEL_8:
      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v18 = sub_1C754FF1C();
      v0[81] = __swift_project_value_buffer(v18, &dword_1EDD28D48);
      v19 = sub_1C754FEEC();
      sub_1C755118C();
      v20 = OUTLINED_FUNCTION_12_60();
      if (os_log_type_enabled(v20, v21))
      {
        OUTLINED_FUNCTION_96_0();
        v22 = swift_slowAlloc();
        *v22 = 0;
        OUTLINED_FUNCTION_102_11();
        _os_log_impl(v23, v24, v25, v26, v22, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v27 = v0[73];

      v28 = *(v27 + 8);
      v0[82] = v28;
      v29 = *(v27 + 16);
      v0[83] = v29;
      if (v29)
      {
        v30 = swift_task_alloc();
        v0[84] = v30;
        *v30 = v0;
        OUTLINED_FUNCTION_24_34(v30);

        return StoryMusicCurator.canCurateAppleMusic(forStorefront:with:)(v28, v29, v31);
      }

      else
      {
        OUTLINED_FUNCTION_20_18();
        v44 = *(v13 + 140);
        sub_1C6FB0600();
        v45 = *(*(v12 + v44) + 16);
        sub_1C6FB0EFC();
        v46 = *(v12 + v44);
        *(v46 + 16) = v45 + 1;
        v47 = v46 + 16 * v45;
        *(v47 + 32) = 0xD000000000000037;
        *(v47 + 40) = 0x80000001C75AADA0;
        *(v12 + v44) = v46;
        swift_endAccess();
        v36 = sub_1C754FEEC();
        sub_1C755117C();
        v48 = OUTLINED_FUNCTION_72();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = OUTLINED_FUNCTION_41_0();
          v67 = OUTLINED_FUNCTION_20_1();
          *v50 = 136315138;
          *(v50 + 4) = sub_1C6F765A4(0xD000000000000037, 0x80000001C75AADA0, &v67);
          OUTLINED_FUNCTION_8_1();
          _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
          OUTLINED_FUNCTION_56_2();
LABEL_26:
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

LABEL_28:
        OUTLINED_FUNCTION_33_32();
        OUTLINED_FUNCTION_19_58();
        v63 = OUTLINED_FUNCTION_94();
        v64(v63);
        OUTLINED_FUNCTION_1_105();

        OUTLINED_FUNCTION_116();
        v66 = MEMORY[0x1E69E7CC0];

        return v65(v66);
      }
  }
}

uint64_t sub_1C7320680()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 680) = v0;

  if (!v0)
  {
    *(v5 + 764) = v3 & 1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7320794()
{
  v70 = v0;
  if (*(v0 + 764) != 1)
  {
    v27 = *(v0 + 648);
    v28 = *(v0 + 640);
    OUTLINED_FUNCTION_69_19();
    OUTLINED_FUNCTION_95_0();
    sub_1C755180C();
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_84_11();
    v29 = OUTLINED_FUNCTION_0_11();
    MEMORY[0x1CCA5CD70](v29);
    OUTLINED_FUNCTION_84_11();
    v30 = __dst[1];
    OUTLINED_FUNCTION_30_36();
    v31 = *(v28 + 140);
    sub_1C75504FC();
    sub_1C6FB0600();
    OUTLINED_FUNCTION_17_65();
    OUTLINED_FUNCTION_2_97();
    *(v32 + 32) = __dst[0];
    *(v32 + 40) = v30;
    *(v1 + v31) = v33;
    swift_endAccess();
    sub_1C75504FC();
    v34 = sub_1C754FEEC();
    sub_1C755117C();
    OUTLINED_FUNCTION_97_10();

    if (os_log_type_enabled(v34, v27))
    {
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_47_4();
      *v1 = 136315138;
      v35 = OUTLINED_FUNCTION_0_11();
      v38 = sub_1C6F765A4(v35, v36, v37);

      *(v1 + 4) = v38;
      OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v39, v27, "(Apple Music) %s");
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    OUTLINED_FUNCTION_33_32();
    OUTLINED_FUNCTION_19_58();
    v40 = OUTLINED_FUNCTION_94();
    v41(v40);
LABEL_15:
    OUTLINED_FUNCTION_1_105();

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_235_0();

    __asm { BRAA            X2, X16 }
  }

  v2 = *(v0 + 496);
  LOBYTE(__dst[0]) = *(v0 + 763);
  sub_1C7324174(__dst, v2, (v0 + 760));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  OUTLINED_FUNCTION_3_1();
  *(v4 + 32) = 0xD000000000000010;
  *(v4 + 40) = v5;
  v6 = OUTLINED_FUNCTION_0_11();
  LOBYTE(v2) = sub_1C73243A0(v6, v7, inited);
  v9 = v8;
  *(v0 + 688) = v8;
  swift_setDeallocating();
  sub_1C6FDC9DC();
  if (v2)
  {
    *(v0 + 760) = 2;
  }

  v10 = *(v0 + 680);
  v11 = *(v0 + 496);
  v12 = swift_allocObject();
  *(v0 + 696) = v12;
  memcpy(__dst, (v0 + 16), 0x80uLL);
  v13 = StoryMusicCurator.prepareAppleMusicCurationOptions(using:mood:with:)(v9, __dst, v11);
  if (v10)
  {
    v14 = *(v0 + 584);

    sub_1C6FF7688(v14);
    swift_deallocUninitializedObject();
    __swift_destroy_boxed_opaque_existential_1(v0 + 192);
    OUTLINED_FUNCTION_7_67();
    sub_1C754F1AC();
    v15 = OUTLINED_FUNCTION_68_19();
    v16(v15);
    OUTLINED_FUNCTION_95_0();
    sub_1C755180C();
    v17 = __dst[1];
    *(v0 + 448) = __dst[0];
    *(v0 + 456) = v17;
    OUTLINED_FUNCTION_125_1();
    MEMORY[0x1CCA5CD70](v18 + 26, v19 | 0x8000000000000000);
    *(v0 + 480) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    sub_1C75519EC();
    v21 = *(v0 + 448);
    v20 = *(v0 + 456);
    OUTLINED_FUNCTION_30_36();
    sub_1C75504FC();
    sub_1C6FB0600();
    OUTLINED_FUNCTION_59_22();
    OUTLINED_FUNCTION_20_51();
    sub_1C75504FC();
    v22 = sub_1C754FEEC();
    v23 = sub_1C755119C();

    if (OUTLINED_FUNCTION_200())
    {
      OUTLINED_FUNCTION_41_0();
      v24 = OUTLINED_FUNCTION_17_6();
      __dst[0] = v24;
      *v11 = 136315138;
      v25 = sub_1C6F765A4(v21, v20, __dst);

      *(v11 + 4) = v25;
      OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v26, v23, "(Apple Music Curation Failed) %s");
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    goto LABEL_15;
  }

  v42 = *(v0 + 640);
  v43 = *(v0 + 520) + *(v0 + 632);
  *(v12 + 16) = v13;
  *(v43 + *(v42 + 128)) = 0;
  v44 = *(v0 + 760);
  v45 = sub_1C754FEEC();
  sub_1C755118C();
  v46 = OUTLINED_FUNCTION_12_60();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_20_1();
    OUTLINED_FUNCTION_47_4();
    *v48 = 136315138;
    v49 = 0xED00006E6F697463;
    v50 = 0x656C65536F747561;
    switch(v44)
    {
      case 1:
        v49 = 0x80000001C7595F50;
        v50 = 0xD00000000000001ALL;
        break;
      case 2:
        v49 = 0x80000001C7595F70;
        v50 = 0xD000000000000014;
        break;
      case 3:
        v49 = 0x80000001C7595F90;
        v50 = 0xD00000000000001DLL;
        break;
      default:
        break;
    }

    v53 = sub_1C6F765A4(v50, v49, __dst);

    *(v48 + 4) = v53;
    OUTLINED_FUNCTION_102_11();
    _os_log_impl(v54, v55, v56, v57, v48, 0xCu);
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  swift_beginAccess();
  *(v0 + 761) = *(v0 + 760);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 704) = v58;
  *v58 = v59;
  v58[1] = sub_1C7320DF0;
  OUTLINED_FUNCTION_235_0();

  return sub_1C73257A4(v60, v61, v62, v63, v64, v65, v66);
}

uint64_t sub_1C7320DF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 712) = v4;
  *(v2 + 720) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7320EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v18 = *(v16 + 712);
  if (*(v18 + 16))
  {
    v19 = *(v16 + 584);

    sub_1C6FF7688(v19);

    OUTLINED_FUNCTION_45_28();
    v20 = OUTLINED_FUNCTION_49_3();
    v21(v20);
    OUTLINED_FUNCTION_62_20();

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_129();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v31 = *(v16 + 640);
    OUTLINED_FUNCTION_69_19();
    OUTLINED_FUNCTION_95_0();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    v76 = v32;
    v33 = MEMORY[0x1CCA5D090](v18, &type metadata for StoryMusicCurationSong);
    MEMORY[0x1CCA5CD70](v33);

    MEMORY[0x1CCA5CD70](39, 0xE100000000000000);
    OUTLINED_FUNCTION_30_36();
    v34 = *(v31 + 132);
    sub_1C75504FC();
    sub_1C6FB0600();
    OUTLINED_FUNCTION_17_65();
    OUTLINED_FUNCTION_2_97();
    *(v35 + 32) = 0xD00000000000002BLL;
    *(v35 + 40) = v76;
    *(v17 + v34) = v36;
    swift_endAccess();
    sub_1C75504FC();
    v37 = sub_1C754FEEC();
    v38 = sub_1C755119C();

    if (OUTLINED_FUNCTION_140_0())
    {
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_47_4();
      v39 = OUTLINED_FUNCTION_34_31(4.8149e-34);
      v41 = sub_1C6F765A4(v39, v76, v40);

      *(v17 + 4) = v41;
      OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v42, v38, "(Apple Music) %s");
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    sub_1C70EB0F0();
    v43 = swift_allocError();
    *v44 = 12;
    swift_willThrow();
    *(v16 + 728) = v43;
    v45 = *(v16 + 616);
    v46 = *(v16 + 496);
    *(*(v16 + 520) + *(v16 + 632) + *(*(v16 + 640) + 128)) = 1;
    OUTLINED_FUNCTION_95_0();
    sub_1C755180C();
    *(v16 + 464) = 0xD00000000000002BLL;
    *(v16 + 472) = v76;
    MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C75AAEC0);
    v47 = *(v45 + 76);
    v48 = 0x656C65536F747561;
    v49 = 0xED00006E6F697463;
    switch(*(v46 + v47))
    {
      case 1:
        v49 = 0x80000001C7595F50;
        v48 = 0xD00000000000001ALL;
        break;
      case 2:
        v49 = 0x80000001C7595F70;
        v48 = OUTLINED_FUNCTION_101_12();
        break;
      case 3:
        v49 = 0x80000001C7595F90;
        v48 = 0xD00000000000001DLL;
        break;
      default:
        break;
    }

    MEMORY[0x1CCA5CD70](v48, v49);

    OUTLINED_FUNCTION_55_26();
    v50 = *(v16 + 640);
    v51 = *(v16 + 520) + *(v16 + 632);
    v52 = OUTLINED_FUNCTION_117_0();
    MEMORY[0x1CCA5CD70](v52);

    OUTLINED_FUNCTION_10_2();
    v53 = OUTLINED_FUNCTION_101_12();
    MEMORY[0x1CCA5CD70](v53);
    *(v16 + 488) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    sub_1C75519EC();
    v55 = *(v16 + 464);
    v54 = *(v16 + 472);
    OUTLINED_FUNCTION_20_18();
    v56 = *(v50 + 132);
    sub_1C75504FC();
    sub_1C6FB0600();
    v57 = *(*(v51 + v56) + 16);
    sub_1C6FB0EFC();
    v58 = *(v51 + v56);
    *(v58 + 16) = v57 + 1;
    v59 = v58 + 16 * v57;
    *(v59 + 32) = v55;
    *(v59 + 40) = v54;
    *(v51 + v56) = v58;
    swift_endAccess();
    sub_1C75504FC();
    v60 = sub_1C754FEEC();
    sub_1C755119C();
    OUTLINED_FUNCTION_97_10();

    if (os_log_type_enabled(v60, v57))
    {
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_47_4();
      *v56 = 136315138;
      v61 = OUTLINED_FUNCTION_0_11();
      v64 = sub_1C6F765A4(v61, v62, v63);

      *(v56 + 4) = v64;
      OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v65, v57, "(Apple Music) %s");
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    *(v16 + 762) = *(v46 + v47);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v16 + 736) = v66;
    *v66 = v67;
    OUTLINED_FUNCTION_18_47(v66);
    OUTLINED_FUNCTION_129();

    return sub_1C73257A4(v68, v69, v70, v71, v72, v73, v74);
  }
}

uint64_t sub_1C7321474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  sub_1C6FF7688(v14[73]);
  __swift_destroy_boxed_opaque_existential_1((v14 + 24));
  v16 = v14[85];
  v36 = v14[81];
  OUTLINED_FUNCTION_7_67();
  v17 = v16;
  sub_1C754F1AC();
  v18 = OUTLINED_FUNCTION_68_19();
  v19(v18);
  OUTLINED_FUNCTION_90_3();
  sub_1C755180C();
  v14[56] = a10;
  v14[57] = a11;
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD00000000000002ALL);
  v14[60] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  sub_1C75519EC();
  v21 = v14[56];
  v20 = v14[57];
  OUTLINED_FUNCTION_30_36();
  sub_1C75504FC();
  sub_1C6FB0600();
  OUTLINED_FUNCTION_59_22();
  OUTLINED_FUNCTION_20_51();
  sub_1C75504FC();
  v22 = sub_1C754FEEC();
  v23 = sub_1C755119C();

  if (OUTLINED_FUNCTION_140_0())
  {
    OUTLINED_FUNCTION_41_0();
    a10 = OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_95_15(4.8149e-34);
    v25 = sub_1C6F765A4(v21, v20, v24);

    *(v15 + 4) = v25;
    OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v26, v23, "(Apple Music Curation Failed) %s");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_105();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_17_1();

  return v29(v27, v28, v29, v30, v31, v32, v33, v34, v36, a10, a11, a12, a13, a14);
}

uint64_t sub_1C7321694()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 744) = v5;
  *(v3 + 752) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73217AC()
{
  OUTLINED_FUNCTION_111_9();
  sub_1C6FF7688(v0);

  if (!v1)
  {
  }

  v3 = *(v2 + 744);
  OUTLINED_FUNCTION_45_28();
  v4 = OUTLINED_FUNCTION_49_3();
  v5(v4);
  OUTLINED_FUNCTION_62_20();

  OUTLINED_FUNCTION_116();

  return v6(v3);
}

uint64_t sub_1C7321890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v12 = *(v11 + 720);
  *(v11 + 728) = v12;
  v13 = *(v11 + 616);
  v14 = *(v11 + 496);
  *(*(v11 + 520) + *(v11 + 632) + *(*(v11 + 640) + 128)) = 1;
  OUTLINED_FUNCTION_90_3();
  sub_1C755180C();
  *(v11 + 464) = a10;
  *(v11 + 472) = a11;
  MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C75AAEC0);
  v15 = *(v13 + 76);
  v44 = v14;
  v16 = 0x656C65536F747561;
  v17 = 0xED00006E6F697463;
  switch(*(v14 + v15))
  {
    case 1:
      v17 = 0x80000001C7595F50;
      v16 = 0xD00000000000001ALL;
      break;
    case 2:
      v17 = 0x80000001C7595F70;
      v16 = OUTLINED_FUNCTION_101_12();
      break;
    case 3:
      v17 = 0x80000001C7595F90;
      v16 = 0xD00000000000001DLL;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA5CD70](v16, v17);

  OUTLINED_FUNCTION_55_26();
  v18 = *(v11 + 648);
  v19 = *(v11 + 640);
  OUTLINED_FUNCTION_69_19();
  v20 = OUTLINED_FUNCTION_0_11();
  MEMORY[0x1CCA5CD70](v20);

  OUTLINED_FUNCTION_10_2();
  v21 = OUTLINED_FUNCTION_101_12();
  MEMORY[0x1CCA5CD70](v21);
  *(v11 + 488) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  sub_1C75519EC();
  v23 = *(v11 + 464);
  v22 = *(v11 + 472);
  OUTLINED_FUNCTION_30_36();
  v24 = *(v19 + 132);
  sub_1C75504FC();
  sub_1C6FB0600();
  OUTLINED_FUNCTION_17_65();
  OUTLINED_FUNCTION_2_97();
  *(v25 + 32) = v23;
  *(v25 + 40) = v22;
  *(v24 - 0x2FFFFFFFFFFFFFECLL) = v26;
  swift_endAccess();
  sub_1C75504FC();
  v27 = sub_1C754FEEC();
  sub_1C755119C();
  OUTLINED_FUNCTION_97_10();

  if (os_log_type_enabled(v27, v18))
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_95_15(4.8149e-34);
    v28 = OUTLINED_FUNCTION_0_11();
    v31 = sub_1C6F765A4(v28, v29, v30);

    MEMORY[0xD000000000000018] = v31;
    OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v32, v18, "(Apple Music) %s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  *(v11 + 762) = *(v44 + v15);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v11 + 736) = v33;
  *v33 = v34;
  OUTLINED_FUNCTION_18_47(v33);
  OUTLINED_FUNCTION_17_1();

  return sub_1C73257A4(v35, v36, v37, v38, v39, v40, v41);
}

uint64_t sub_1C7321BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_111_9();
  sub_1C6FF7688(v14);

  if (!v15)
  {
  }

  __swift_destroy_boxed_opaque_existential_1((v16 + 24));
  v18 = v16[94];
  v38 = v16[81];
  OUTLINED_FUNCTION_7_67();
  v19 = v18;
  sub_1C754F1AC();
  v20 = OUTLINED_FUNCTION_68_19();
  v21(v20);
  OUTLINED_FUNCTION_90_3();
  sub_1C755180C();
  v16[56] = a10;
  v16[57] = a11;
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD00000000000002ALL);
  v16[60] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  sub_1C75519EC();
  v23 = v16[56];
  v22 = v16[57];
  OUTLINED_FUNCTION_30_36();
  sub_1C75504FC();
  sub_1C6FB0600();
  OUTLINED_FUNCTION_59_22();
  OUTLINED_FUNCTION_20_51();
  sub_1C75504FC();
  v24 = sub_1C754FEEC();
  v25 = sub_1C755119C();

  if (OUTLINED_FUNCTION_140_0())
  {
    OUTLINED_FUNCTION_41_0();
    a10 = OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_95_15(4.8149e-34);
    v27 = sub_1C6F765A4(v23, v22, v26);

    *(v17 + 4) = v27;
    OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v28, v25, "(Apple Music Curation Failed) %s");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_105();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_17_1();

  return v31(v29, v30, v31, v32, v33, v34, v35, v36, v38, a10, a11, a12, a13, a14);
}

uint64_t sub_1C7321E04()
{
  type metadata accessor for StoryMusicCurator();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F73F48;

  return static StoryMusicCurator.queryAppleMusicSubscriptionState(cacheValueInSeconds:)();
}

uint64_t static StoryMusicCurator.queryAppleMusicSubscriptionState(cacheValueInSeconds:)()
{
  OUTLINED_FUNCTION_42();
  v1[16] = v0;
  v1[15] = v2;
  v1[14] = v3;
  v4 = sub_1C755013C();
  v1[17] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[18] = v5;
  v1[19] = OUTLINED_FUNCTION_77();
  v6 = sub_1C755010C();
  v1[20] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[21] = v7;
  v1[22] = OUTLINED_FUNCTION_77();
  v8 = sub_1C755014C();
  v1[23] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[24] = v9;
  v1[25] = OUTLINED_FUNCTION_77();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  v1[26] = v10;
  OUTLINED_FUNCTION_76(v10);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v11 = sub_1C754DF6C();
  v1[30] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[31] = v12;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C73220AC()
{
  if (qword_1EDD0ED90 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = __swift_project_value_buffer(*(v0 + 208), qword_1EDD28D60);
  *(v0 + 272) = v3;
  swift_beginAccess();
  sub_1C7326A18(v3, v2, &unk_1EC219230);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1C6FD7FC8(*(v0 + 232), &unk_1EC219230);
    v4 = 0;
  }

  else
  {
    v5 = *(v0 + 248);
    v6 = *(v0 + 120);
    (*(v5 + 32))(*(v0 + 264), *(v0 + 232), *(v0 + 240));
    sub_1C754DF3C();
    sub_1C754DEAC();
    v8 = v7;
    v9 = *(v5 + 8);
    v10 = OUTLINED_FUNCTION_49_3();
    v9(v10);
    v4 = v8 < v6;
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v11 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v11, &dword_1EDD28D48);
    v12 = sub_1C754FEEC();
    sub_1C75511BC();
    v13 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109376;
      *(v15 + 4) = v8 < v6;
      *(v15 + 8) = 2048;
      *(v15 + 10) = v8;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v16, v17, v18, v19, v15, 0x12u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v20 = OUTLINED_FUNCTION_49_3();
    v9(v20);
  }

  v21 = byte_1EDD0ED98;
  if (byte_1EDD0ED98 == 2 || ((byte_1EDD0ED98 | v4) & 1) == 0)
  {
    v50 = *(v0 + 240);
    v51 = *(v0 + 216);
    sub_1C754DF3C();
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v50);
    OUTLINED_FUNCTION_20_18();
    v52 = OUTLINED_FUNCTION_66_2();
    sub_1C7326A68(v52, v53, v54);
    swift_endAccess();
    OUTLINED_FUNCTION_38_29();
    sub_1C755180C();

    if (!__swift_getEnumTagSinglePayload(v3, 1, v50))
    {
      v56 = *(v0 + 248);
      v55 = *(v0 + 256);
      v57 = *(v0 + 240);
      v58 = OUTLINED_FUNCTION_66_2();
      v59(v58);
      sub_1C754DE5C();
      (*(v56 + 8))(v55, v57);
    }

    v60 = OUTLINED_FUNCTION_0_11();
    MEMORY[0x1CCA5CD70](v60);

    OUTLINED_FUNCTION_40_36();
    *(v0 + 280) = 0x6568436574616428;
    *(v0 + 288) = 0xEF203D2064656B63;
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v61 = sub_1C754FF1C();
    *(v0 + 296) = __swift_project_value_buffer(v61, &dword_1EDD28D48);
    v62 = sub_1C754FEEC();
    sub_1C75511BC();
    v63 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v63, v64))
    {
      OUTLINED_FUNCTION_96_0();
      v65 = swift_slowAlloc();
      OUTLINED_FUNCTION_37_0(v65);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v66, v67, v68, v69, v70, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v72 = *(v0 + 168);
    v71 = *(v0 + 176);
    v73 = *(v0 + 160);

    (*(v72 + 104))(v71, *MEMORY[0x1E69B2950], v73);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 304) = v74;
    *v74 = v75;
    v74[1] = sub_1C7322870;
    v76 = *(v0 + 200);
    v77 = *(v0 + 176);

    return MEMORY[0x1EEE1F778](v76, v77);
  }

  else
  {
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v22 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v22, &dword_1EDD28D48);
    v23 = sub_1C754FEEC();
    sub_1C755117C();
    v24 = OUTLINED_FUNCTION_12_60();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_102();
      *v26 = 67109120;
      *(v26 + 4) = v21 & 1;
      OUTLINED_FUNCTION_102_11();
      _os_log_impl(v27, v28, v29, v30, v26, 8u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v31 = *(v0 + 240);

    v32 = OUTLINED_FUNCTION_27_40();
    if (!__swift_getEnumTagSinglePayload(v32, 1, v31))
    {
      v34 = *(v0 + 248);
      v33 = *(v0 + 256);
      v35 = *(v0 + 240);
      v36 = OUTLINED_FUNCTION_66_2();
      v37(v36);
      sub_1C754DE5C();
      (*(v34 + 8))(v33, v35);
    }

    v38 = *(v0 + 224);
    v39 = *(v0 + 112);
    v40 = OUTLINED_FUNCTION_49_3();
    MEMORY[0x1CCA5CD70](v40);

    v41 = byte_1EDD0ED99;
    if (byte_1EDD0ED99 == 6)
    {
      v41 = 1;
    }

    v79 = v41;
    v42 = qword_1EC25B970;
    v78 = qword_1EC25B968;
    sub_1C7326A18(v3, v38, &unk_1EC219230);
    OUTLINED_FUNCTION_38_29();
    sub_1C75504FC();
    sub_1C755180C();
    OUTLINED_FUNCTION_81_17();
    OUTLINED_FUNCTION_65_21();
    MEMORY[0x1CCA5CD70]();
    MEMORY[0x1CCA5CD70]();

    OUTLINED_FUNCTION_10_2();
    MEMORY[0x1CCA5CD70](0xD000000000000025);
    *(v0 + 352) = byte_1EDD0ED99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AAD8);
    v43 = sub_1C75506EC();
    MEMORY[0x1CCA5CD70](v43);

    MEMORY[0x1CCA5CD70](0x6665726F7473202CLL, 0xED00003D746E6F72);
    if (qword_1EC25B970)
    {
      v44 = qword_1EC25B968;
    }

    else
    {
      v44 = 0;
    }

    if (qword_1EC25B970)
    {
      v45 = qword_1EC25B970;
    }

    else
    {
      v45 = 0xE000000000000000;
    }

    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v44, v45);

    OUTLINED_FUNCTION_40_36();
    *v39 = v21 & 1;
    *(v39 + 1) = v79;
    *(v39 + 8) = v78;
    *(v39 + 16) = v42;
    v46 = type metadata accessor for AppleMusicSubscriptionState();
    sub_1C6FF51C8(v38, v39 + *(v46 + 28));
    v47 = (v39 + *(v46 + 32));
    *v47 = v80;
    v47[1] = v81;
    OUTLINED_FUNCTION_6_80();

    OUTLINED_FUNCTION_43();

    return v48();
  }
}

uint64_t sub_1C7322870()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 312) = v0;

  (*(v2[21] + 8))(v2[22], v2[20]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C73229CC()
{
  v1 = sub_1C755012C();
  v2 = OUTLINED_FUNCTION_66_2();
  v3(v2);
  byte_1EDD0ED98 = v1 & 1;
  if (v1)
  {
    v4 = swift_task_alloc();
    v0[40] = v4;
    *v4 = v0;
    v4[1] = sub_1C7322C1C;

    return static StoryMusicCurator.getAmsUserStorefront()();
  }

  else
  {
    v6 = sub_1C754FEEC();
    sub_1C755117C();
    v7 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_96_0();
      v9 = swift_slowAlloc();
      OUTLINED_FUNCTION_37_0(v9);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v15 = v0[34];
    v16 = v0[14];

    byte_1EDD0ED98 = 0;
    byte_1EDD0ED99 = 2;
    v17 = type metadata accessor for AppleMusicSubscriptionState();
    sub_1C7326A18(v15, v16 + *(v17 + 28), &unk_1EC219230);
    OUTLINED_FUNCTION_90_3();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    v22 = v18;
    v19 = OUTLINED_FUNCTION_154();
    MEMORY[0x1CCA5CD70](v19);

    OUTLINED_FUNCTION_40_19();
    *v16 = 512;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    v20 = (v16 + *(v17 + 32));
    *v20 = 0xD00000000000002BLL;
    v20[1] = v22;
    OUTLINED_FUNCTION_6_80();

    OUTLINED_FUNCTION_43();

    return v21();
  }
}

uint64_t sub_1C7322C1C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  v2[41] = v4;
  v2[42] = v5;
  v2[43] = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7322D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  v18 = v16 + 10;
  v19 = v16[42];
  qword_1EC25B968 = v16[41];
  qword_1EC25B970 = v19;
  sub_1C75504FC();

  if (qword_1EC214018 != -1)
  {
    OUTLINED_FUNCTION_8_69();
  }

  v20 = v16[42];
  v16[10] = v16[41];
  v16[11] = v20;
  *(swift_task_alloc() + 16) = v18;
  sub_1C70735F4();
  OUTLINED_FUNCTION_97_10();

  v21 = v16[42];
  if (v18)
  {
    sub_1C75504FC();
    v22 = sub_1C754FEEC();
    v23 = sub_1C755117C();

    if (OUTLINED_FUNCTION_200())
    {
      v21 = v16[42];
      OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_17_6();
      OUTLINED_FUNCTION_47_4();
      v24 = OUTLINED_FUNCTION_34_31(4.8149e-34);
      *(v17 + 4) = sub_1C6F765A4(v24, v21, v25);
      OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v26, v23, "[isUserEligibleForAppleMusic] Apple Music Storefront '%s' not allowed");
      OUTLINED_FUNCTION_56_2();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v28 = v16[41];
    v27 = v16[42];
    v29 = v16[35];
    v30 = v16[36];
    v31 = v16[34];
    v32 = v16[14];
    byte_1EDD0ED98 = 0;
    v33 = 3;
    byte_1EDD0ED99 = 3;
    v34 = qword_1EC25B970;
    a9 = v29;
    v59 = qword_1EC25B968;
    type metadata accessor for AppleMusicSubscriptionState();
    OUTLINED_FUNCTION_100_12();
    sub_1C7326A18(v31, v32 + v35, &unk_1EC219230);
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_1C75504FC();
    sub_1C755180C();
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_84_11();
    MEMORY[0x1CCA5CD70](v28, v27);

    OUTLINED_FUNCTION_84_11();
    MEMORY[0x1CCA5CD70](a9, v30);

    OUTLINED_FUNCTION_40_19();
  }

  else
  {

    v36 = sub_1C754FEEC();
    sub_1C755117C();
    v37 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v37, v38))
    {
      OUTLINED_FUNCTION_96_0();
      v39 = swift_slowAlloc();
      OUTLINED_FUNCTION_37_0(v39);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v40, v41, v42, v43, v44, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v45 = v16[34];
    v32 = v16[14];

    byte_1EDD0ED98 = 1;
    byte_1EDD0ED99 = 0;
    v34 = qword_1EC25B970;
    v59 = qword_1EC25B968;
    type metadata accessor for AppleMusicSubscriptionState();
    OUTLINED_FUNCTION_100_12();
    sub_1C7326A18(v45, v32 + v46, &unk_1EC219230);
    sub_1C75504FC();
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    v60 = 0xD000000000000013;
    v61 = v47;
    v48 = OUTLINED_FUNCTION_117_0();
    MEMORY[0x1CCA5CD70](v48);

    v33 = 0;
  }

  *v32 = 1;
  *(v32 + 1) = v33;
  *(v32 + 8) = v59;
  *(v32 + 16) = v34;
  v49 = (v32 + *(v21 + 32));
  *v49 = v60;
  v49[1] = v61;
  OUTLINED_FUNCTION_6_80();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, v59, v60, v61, a13, a14, a15, a16);
}

uint64_t StoryMusicCurator.canCurateAppleMusic(forStorefront:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  return OUTLINED_FUNCTION_0_67(sub_1C7323A08);
}

void sub_1C7323A08()
{
  *(v0 + 16) = *(v0 + 192);
  *(v0 + 24) = *(v0 + 200);
  *(swift_task_alloc() + 16) = v0 + 16;
  v4 = 0;
  v5 = sub_1C70735F4();

  if (v5)
  {
    goto LABEL_16;
  }

  if (qword_1EC214018 != -1)
  {
LABEL_55:
    OUTLINED_FUNCTION_8_69();
  }

  v6 = *(v0 + 200);
  *(v0 + 16) = *(v0 + 192);
  *(v0 + 24) = v6;
  *(swift_task_alloc() + 16) = v0 + 16;
  v7 = sub_1C70735F4();

  if (v7)
  {
    OUTLINED_FUNCTION_103_8();
    OUTLINED_FUNCTION_95_0();
    sub_1C755180C();
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_71_13();
    OUTLINED_FUNCTION_84_11();
    v8 = OUTLINED_FUNCTION_154();
    MEMORY[0x1CCA5CD70](v8);
    OUTLINED_FUNCTION_4_79();
    v9 = *(&__dst[0] + 1);
    v10 = *&__dst[0];
    v11 = v1 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_20_18();
    v12 = *(type metadata accessor for StoryMusicCurationDiagnostics() + 132);
  }

  else
  {
    v13 = *(v0 + 208);
    v14 = v13 + *(type metadata accessor for StoryMusicCurationOptions() + 88);
    v15 = *(v14 + 48);
    if (v15)
    {
      v16 = *(v14 + 64);
      v17 = *(v14 + 56);
      v18 = *(v14 + 40);
      __dst[0] = *(v14 + 24);
      *&__dst[1] = v18;
      *(&__dst[1] + 1) = v15;
      *&__dst[2] = v17;
      WORD4(__dst[2]) = v16 & 0xFF01;
      if (StoryPromptAttributes.hasMusicCurationIngredients()())
      {
        v19 = *(v0 + 208);
        v59 = 0;
        sub_1C6FC0604((v0 + 16));
        memcpy(__dst, (v0 + 16), sizeof(__dst));
        v20 = StoryMusicCurator.packageSpecificationOptions(for:in:fallbackMood:)(&v59, v19, __dst);
        if (v4)
        {
LABEL_16:
          OUTLINED_FUNCTION_116();
          OUTLINED_FUNCTION_235_0();

          __asm { BRAA            X2, X16 }
        }

        v33 = v20;
        v34 = v20 + 64;
        v35 = -1;
        v36 = -1 << *(v20 + 32);
        if (-v36 < 64)
        {
          v35 = ~(-1 << -v36);
        }

        v1 = v35 & *(v20 + 64);
        v37 = (63 - v36) >> 6;
        sub_1C75504FC();
        while (1)
        {
          if (v1)
          {
            goto LABEL_27;
          }

          do
          {
            v38 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              __break(1u);
LABEL_54:
              __break(1u);
              goto LABEL_55;
            }

            if (v38 >= v37)
            {

              v41 = -1;
              v42 = -1 << *(v33 + 32);
              if (-v42 < 64)
              {
                v41 = ~(-1 << -v42);
              }

              v1 = v41 & *(v33 + 64);
              v43 = (63 - v42) >> 6;
              sub_1C75504FC();
              v4 = 0;
              while (1)
              {
                if (v1)
                {
                  goto LABEL_41;
                }

                do
                {
                  v44 = v4 + 1;
                  if (__OFADD__(v4, 1))
                  {
                    goto LABEL_54;
                  }

                  if (v44 >= v43)
                  {
                    OUTLINED_FUNCTION_103_8();

                    OUTLINED_FUNCTION_95_0();
                    sub_1C755180C();

                    OUTLINED_FUNCTION_3_1();
                    *&__dst[0] = 0xD00000000000001FLL;
                    *(&__dst[0] + 1) = v47;
                    v48 = OUTLINED_FUNCTION_154();
                    MEMORY[0x1CCA5CD70](v48);
                    OUTLINED_FUNCTION_4_79();
                    v9 = *(&__dst[0] + 1);
                    v49 = *&__dst[0];
                    v11 = v1 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
                    OUTLINED_FUNCTION_30_36();
                    v50 = *(type metadata accessor for StoryMusicCurationDiagnostics() + 140);
                    sub_1C75504FC();
                    sub_1C6FB0600();
                    OUTLINED_FUNCTION_17_65();
                    OUTLINED_FUNCTION_2_97();
                    *(v51 + 32) = v49;
                    *(v51 + 40) = v9;
                    *(v11 + v50) = v52;
LABEL_11:
                    swift_endAccess();
                    if (qword_1EDD0ED88 != -1)
                    {
                      OUTLINED_FUNCTION_0_35();
                      swift_once();
                    }

                    v24 = sub_1C754FF1C();
                    OUTLINED_FUNCTION_23_2(v24, &dword_1EDD28D48);
                    sub_1C75504FC();
                    v25 = sub_1C754FEEC();
                    v26 = sub_1C755117C();

                    if (!OUTLINED_FUNCTION_200())
                    {
                      goto LABEL_15;
                    }

                    goto LABEL_14;
                  }

                  v1 = *(v34 + 8 * v44);
                  ++v4;
                }

                while (!v1);
                v4 = v44;
LABEL_41:
                OUTLINED_FUNCTION_54_25();
                *(v0 + 144) = v3;
                *(v0 + 152) = v2;
                if (v3 == sub_1C755068C() && v2 == v45)
                {
                  goto LABEL_48;
                }

                v3 = OUTLINED_FUNCTION_61_18();
                sub_1C75504FC();

                sub_1C6FD7FC8(v0 + 144, &qword_1EC21AAE0);
                if (v3)
                {
LABEL_49:

                  OUTLINED_FUNCTION_103_8();
                  OUTLINED_FUNCTION_95_0();
                  sub_1C755180C();
                  OUTLINED_FUNCTION_303();
                  OUTLINED_FUNCTION_71_13();
                  OUTLINED_FUNCTION_84_11();
                  v53 = OUTLINED_FUNCTION_154();
                  MEMORY[0x1CCA5CD70](v53);
                  OUTLINED_FUNCTION_4_79();
                  v9 = *(&__dst[0] + 1);
                  v54 = *&__dst[0];
                  v11 = v1 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
                  OUTLINED_FUNCTION_30_36();
                  v55 = *(type metadata accessor for StoryMusicCurationDiagnostics() + 140);
                  sub_1C75504FC();
                  sub_1C6FB0600();
                  OUTLINED_FUNCTION_17_65();
                  OUTLINED_FUNCTION_2_97();
                  *(v56 + 32) = v54;
                  *(v56 + 40) = v9;
                  *(v11 + v55) = v57;
                  swift_endAccess();
                  if (qword_1EDD0ED88 != -1)
                  {
                    OUTLINED_FUNCTION_0_35();
                    swift_once();
                  }

                  v58 = sub_1C754FF1C();
                  OUTLINED_FUNCTION_23_2(v58, &dword_1EDD28D48);
                  sub_1C75504FC();
                  v25 = sub_1C754FEEC();
                  v26 = sub_1C755117C();

                  if (!OUTLINED_FUNCTION_200())
                  {
LABEL_15:

                    goto LABEL_16;
                  }

LABEL_14:
                  OUTLINED_FUNCTION_41_0();
                  OUTLINED_FUNCTION_17_6();
                  OUTLINED_FUNCTION_47_4();
                  v27 = OUTLINED_FUNCTION_34_31(4.8149e-34);
                  v29 = sub_1C6F765A4(v27, v9, v28);

                  *(v11 + 4) = v29;
                  OUTLINED_FUNCTION_22_53(&dword_1C6F5C000, v30, v26, "(canCurateAppleMusic) %s");
                  OUTLINED_FUNCTION_56_2();
                  OUTLINED_FUNCTION_235();
                  MEMORY[0x1CCA5F8E0]();

                  goto LABEL_16;
                }
              }
            }

            v1 = *(v34 + 8 * v38);
            ++v4;
          }

          while (!v1);
          v4 = v38;
LABEL_27:
          OUTLINED_FUNCTION_54_25();
          *(v0 + 144) = v3;
          *(v0 + 152) = v2;
          if (v3 == sub_1C755068C() && v2 == v39)
          {
LABEL_48:
            sub_1C75504FC();

            sub_1C6FD7FC8(v0 + 144, &qword_1EC21AAE0);
            goto LABEL_49;
          }

          v3 = OUTLINED_FUNCTION_61_18();
          sub_1C75504FC();

          sub_1C6FD7FC8(v0 + 144, &qword_1EC21AAE0);
          if (v3)
          {
            goto LABEL_49;
          }
        }
      }
    }

    OUTLINED_FUNCTION_103_8();
    OUTLINED_FUNCTION_95_0();
    sub_1C755180C();
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_71_13();
    OUTLINED_FUNCTION_84_11();
    v21 = OUTLINED_FUNCTION_154();
    MEMORY[0x1CCA5CD70](v21);
    OUTLINED_FUNCTION_4_79();
    v9 = *(&__dst[0] + 1);
    v10 = *&__dst[0];
    v11 = v1 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_20_18();
    v12 = *(type metadata accessor for StoryMusicCurationDiagnostics() + 140);
  }

  sub_1C75504FC();
  sub_1C6FB0600();
  OUTLINED_FUNCTION_17_65();
  OUTLINED_FUNCTION_2_97();
  *(v22 + 32) = v10;
  *(v22 + 40) = v9;
  *(v11 + v12) = v23;
  goto LABEL_11;
}

uint64_t sub_1C7324174@<X0>(char *a1@<X0>, uint8_t *a2@<X1>, char *a3@<X8>)
{
  v4 = *a1;
  switch(*a1)
  {
    case 1:
    case 2:
    case 3:
      v6 = sub_1C7551DBC();

      if (v6)
      {
        goto LABEL_4;
      }

      break;
    default:

LABEL_4:
      if (qword_1EDD0ED88 != -1)
      {
        swift_once();
      }

      v8 = sub_1C754FF1C();
      __swift_project_value_buffer(v8, &dword_1EDD28D48);
      v9 = sub_1C754FEEC();
      v10 = sub_1C755118C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1C6F5C000, v9, v10, "(Apple Music) Story Music curation technique will be auto selected", v11, 2u);
        MEMORY[0x1CCA5F8E0](v11, -1, -1);
      }

      result = sub_1C738C104(a2);
      if (result)
      {
        v4 = 3;
      }

      else
      {
        result = type metadata accessor for StoryMusicCurationOptions();
        if (*&a2[*(result + 88) + 48])
        {
          result = StoryPromptAttributes.hasMusicCurationIngredients()();
          if (result)
          {
            v4 = 1;
          }

          else
          {
            v4 = 2;
          }
        }

        else
        {
          v4 = 2;
        }
      }

      break;
  }

  *a3 = v4;
  return result;
}

uint64_t sub_1C73243A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v95 = MEMORY[0x1E69E7CC0];
  v6 = a1 + *(type metadata accessor for StoryMusicCurationOptions() + 88);
  v7 = *(v6 + 48);
  v87 = a2;
  if (v7)
  {
    v9 = *(v6 + 24);
    v8 = *(v6 + 32);
    v10 = *(v6 + 40);
    v11 = *(v6 + 56);
    v12 = *(v6 + 64);
    if (v9)
    {
      sub_1C75504FC();
      v13 = v8;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    if (*(v13 + 16))
    {
      if (qword_1EDD0ED88 == -1)
      {
LABEL_8:
        v14 = sub_1C754FF1C();
        __swift_project_value_buffer(v14, &dword_1EDD28D48);
        sub_1C75504FC();
        v15 = sub_1C754FEEC();
        v16 = sub_1C755118C();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v88 = v18;
          *v17 = 136315138;
          v19 = MEMORY[0x1CCA5D090](v13, MEMORY[0x1E69E6158]);
          v21 = v20;

          v22 = sub_1C6F765A4(v19, v21, &v88);

          *(v17 + 4) = v22;
          _os_log_impl(&dword_1C6F5C000, v15, v16, "(Apple Music) (Fallback to Maestro) QU found artists: %s. Do not switch to keywordBasedCuration.", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v18);
          MEMORY[0x1CCA5F8E0](v18, -1, -1);
          MEMORY[0x1CCA5F8E0](v17, -1, -1);
        }

        else
        {
        }

        sub_1C75504FC();
        return 0;
      }

LABEL_61:
      swift_once();
      goto LABEL_8;
    }

    v88 = v9;
    v89 = v8;
    v90 = v10;
    v91 = v7;
    v92 = v11;
    v93 = v12 & 0xFF01;
    v5 = MEMORY[0x1E69E7CC0];
    v85 = sub_1C7325F10(&v88, a3);
    v95 = v85;
    a2 = v87;
  }

  else
  {
    v85 = v5;
  }

  v94 = v5;
  v23 = sub_1C6FB6304();
  v24 = 0;
  v13 = 0;
  v25 = a2 & 0xC000000000000001;
  while (v23 != v24)
  {
    v26 = sub_1C6FB6330(v24, v25 == 0, a2);
    if (v25)
    {
      v28 = MEMORY[0x1CCA5DDD0](v24, a2, v26);
      v27 = v28;
    }

    else
    {
      v27 = *(a2 + 8 * v24 + 32);
    }

    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    v29 = *(v27 + 24);
    v88 = *(v27 + 16);
    v89 = v29;
    MEMORY[0x1EEE9AC00](v28);
    sub_1C75504FC();
    v30 = sub_1C70735F4();

    if (v30)
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
    }

    ++v24;
    a2 = v87;
  }

  v31 = v94;
  v32 = sub_1C6FB6304();
  if (v32)
  {
    v33 = v32;
    v88 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    if (v33 < 0)
    {
      __break(1u);
LABEL_63:
      swift_once();
LABEL_45:
      v58 = sub_1C754FF1C();
      __swift_project_value_buffer(v58, &dword_1EDD28D48);
      v59 = sub_1C754FEEC();
      v60 = sub_1C755117C();
      if (!os_log_type_enabled(v59, v60))
      {
        goto LABEL_53;
      }

      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v94 = v62;
      *v61 = 136315394;
      v63 = sub_1C75504FC();
      v64 = MEMORY[0x1CCA5D090](v63, MEMORY[0x1E69E6158]);
      v66 = v65;

      v67 = sub_1C6F765A4(v64, v66, &v94);

      *(v61 + 4) = v67;
      *(v61 + 12) = 2080;
      v68 = type metadata accessor for MusicKeywordCompletion();
      v69 = sub_1C75504FC();
      v70 = MEMORY[0x1CCA5D090](v69, v68);
      v72 = v71;

      v73 = sub_1C6F765A4(v70, v72, &v94);

      *(v61 + 14) = v73;
      _os_log_impl(&dword_1C6F5C000, v59, v60, "(Apple Music) (Fallback to Maestro) Keywords %s are found in QU. Switch to keywordBasedCuration with updated maestroKeywords %s.", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v62, -1, -1);
      v74 = v61;
      goto LABEL_52;
    }

    v34 = 0;
    v35 = v88;
    v86 = v31 & 0xC000000000000001;
    v36 = v31;
    do
    {
      if (v86)
      {
        v37 = MEMORY[0x1CCA5DDD0](v34, v31);
      }

      else
      {
        v37 = *(v31 + 8 * v34 + 32);
      }

      v38 = *(v37 + 16);
      v39 = *(v37 + 24);
      sub_1C75504FC();

      v88 = v35;
      v40 = *(v35 + 16);
      if (v40 >= *(v35 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v35 = v88;
      }

      ++v34;
      *(v35 + 16) = v40 + 1;
      v41 = v35 + 16 * v40;
      *(v41 + 32) = v38;
      *(v41 + 40) = v39;
      v31 = v36;
    }

    while (v33 != v34);
  }

  else
  {

    v35 = MEMORY[0x1E69E7CC0];
  }

  if (*(v85 + 16))
  {
    v42 = sub_1C75504FC();
    v43 = sub_1C731EE10(v42);

    v88 = v43;
    v44 = sub_1C75504FC();
    v45 = sub_1C706D154(v44);
    v46 = sub_1C706D154(v35);
    v47 = sub_1C7238810(v46, v45);

    v48 = 0;
    v49 = 1 << *(v47 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & *(v47 + 56);
    v52 = (v49 + 63) >> 6;
    if (v51)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v53 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v53 >= v52)
      {

        swift_bridgeObjectRetain_n();
        v94 = sub_1C71CC894(v43);
        sub_1C70CCDF0(&v94);
        swift_bridgeObjectRelease_n();
        v88 = v94;
        if (qword_1EDD0ED88 != -1)
        {
          goto LABEL_63;
        }

        goto LABEL_45;
      }

      v51 = *(v47 + 56 + 8 * v53);
      ++v48;
      if (v51)
      {
        v48 = v53;
        do
        {
LABEL_40:
          v54 = (*(v47 + 48) + ((v48 << 10) | (16 * __clz(__rbit64(v51)))));
          v55 = *v54;
          v56 = v54[1];
          type metadata accessor for MusicKeywordCompletion();
          swift_allocObject();
          MusicKeywordCompletion.init(keyword:score:)(v55, v56, 1.0);
          v57 = sub_1C75504FC();
          MEMORY[0x1CCA5D040](v57);
          if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C7550B9C();
          }

          v51 &= v51 - 1;
          sub_1C7550BEC();
          v43 = v88;
        }

        while (v51);
      }
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (*(v35 + 16))
  {
    v75 = qword_1EDD0ED88;
    sub_1C75504FC();
    if (v75 != -1)
    {
      swift_once();
    }

    v76 = sub_1C754FF1C();
    __swift_project_value_buffer(v76, &dword_1EDD28D48);
    sub_1C75504FC();
    v59 = sub_1C754FEEC();
    v77 = sub_1C755117C();

    if (!os_log_type_enabled(v59, v77))
    {

      goto LABEL_53;
    }

    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v94 = v79;
    *v78 = 136315138;
    v80 = MEMORY[0x1CCA5D090](v35, MEMORY[0x1E69E6158]);
    v82 = v81;

    v83 = sub_1C6F765A4(v80, v82, &v94);

    *(v78 + 4) = v83;
    _os_log_impl(&dword_1C6F5C000, v59, v77, "(Apple Music) (Fallback to Maestro) Keywords %s are found in maestroKeywords. Switch to keywordBasedCuration.", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v79);
    MEMORY[0x1CCA5F8E0](v79, -1, -1);
    v74 = v78;
LABEL_52:
    MEMORY[0x1CCA5F8E0](v74, -1, -1);
LABEL_53:

    return 1;
  }

  sub_1C75504FC();

  return 0;
}

uint64_t StoryMusicCurator.prepareAppleMusicCurationOptions(using:mood:with:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
  v8 = sub_1C75504DC();
  v9 = StoryMusicCurator.packageMaestroKeywords(using:)(a1);
  v10 = *(a3 + 48);
  v81 = a3;
  v82 = v4;
  if (v10 == 1)
  {
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v11 = sub_1C754FF1C();
    __swift_project_value_buffer(v11, &dword_1EDD28D48);
    v12 = sub_1C754FEEC();
    v13 = sub_1C755117C();
    v14 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_96_0();
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C6F5C000, v12, v13, "(Apple Music) Using maestro mood keywords", v16, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    memcpy(v86, a2, sizeof(v86));
    v17 = StoryMusicCurator.appendMoodKeywords(to:for:)(v9, v86);

    v18 = v4 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    swift_beginAccess();
    *(v18 + *(type metadata accessor for StoryMusicCurationDiagnostics() + 40)) = v17;
    sub_1C75504FC();

    v9 = v17;
  }

  else
  {
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v19 = sub_1C754FF1C();
    __swift_project_value_buffer(v19, &dword_1EDD28D48);
    v20 = sub_1C754FEEC();
    v21 = sub_1C755117C();
    v22 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_96_0();
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1C6F5C000, v20, v21, "(Apple Music) Not using maestro mood keywords", v24, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }
  }

  sub_1C755068C();
  *(&v86[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F30);
  *&v86[0] = v9;
  OUTLINED_FUNCTION_118_8();
  swift_isUniquelyReferenced_nonNull_native();
  *&v84[0] = v8;
  __swift_mutable_project_boxed_opaque_existential_0(v85, *(&v85[1] + 1));
  v25 = &v80;
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_0();
  v28 = OUTLINED_FUNCTION_78_13(v27);
  v29(v28);
  sub_1C709D494();
  __swift_destroy_boxed_opaque_existential_1(v85);

  sub_1C755068C();
  v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v31 = sub_1C6F65BE8(0, &qword_1EDD108E0);
  *(&v86[1] + 1) = v31;
  *&v86[0] = v30;
  OUTLINED_FUNCTION_118_8();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_110_7();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_14_0();
  v34 = OUTLINED_FUNCTION_77_13(v33);
  v35(v34);
  OUTLINED_FUNCTION_91_12();
  sub_1C709D4A8();
  __swift_destroy_boxed_opaque_existential_1(v85);

  sub_1C755068C();
  v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(&v86[1] + 1) = v31;
  *&v86[0] = v36;
  OUTLINED_FUNCTION_118_8();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_110_7();
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_14_0();
  v39 = OUTLINED_FUNCTION_77_13(v38);
  v40(v39);
  OUTLINED_FUNCTION_91_12();
  sub_1C709D4A8();
  __swift_destroy_boxed_opaque_existential_1(v85);

  v41 = *&v84[0];
  v42 = v81;
  v43 = *(v81 + 64);
  if (*(v43 + 16))
  {
    sub_1C755068C();
    *(&v86[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    *&v86[0] = v43;
    OUTLINED_FUNCTION_118_8();
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    *&v84[0] = v41;
    v25 = *(&v85[1] + 1);
    __swift_mutable_project_boxed_opaque_existential_0(v85, *(&v85[1] + 1));
    OUTLINED_FUNCTION_29();
    MEMORY[0x1EEE9AC00](v44);
    OUTLINED_FUNCTION_14_0();
    (*(v47 + 16))(v46 - v45);
    sub_1C709D024();
    __swift_destroy_boxed_opaque_existential_1(v85);

    v41 = *&v84[0];
  }

  LOBYTE(v84[0]) = 0;
  sub_1C6FC0604(v86);
  memcpy(v85, v86, sizeof(v85));
  v48 = v83;
  v49 = StoryMusicCurator.packageSpecificationOptions(for:in:fallbackMood:)(v84, v42, v85);
  if (!v48)
  {
    v50 = v49;
    if (*(v49 + 16))
    {
      sub_1C755068C();
      *(&v85[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216CF8);
      *&v85[0] = v50;
      sub_1C6FCABEC(v85, v84);
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_106_7();
      OUTLINED_FUNCTION_29();
      MEMORY[0x1EEE9AC00](v51);
      OUTLINED_FUNCTION_14_0();
      (*(v54 + 16))(v53 - v52);
      sub_1C709D518();
      __swift_destroy_boxed_opaque_existential_1(v84);

      v41 = v87;
      v55 = sub_1C755068C();
      sub_1C6FE3750(v55, v56);

      if (*(&v85[1] + 1))
      {

        sub_1C6FD7FC8(v85, &qword_1EC216D30);
        goto LABEL_24;
      }

      v25 = &qword_1EC216D30;
      sub_1C6FD7FC8(v85, &qword_1EC216D30);
      v61 = sub_1C755068C();
      sub_1C6FE3750(v61, v62);

      v63 = *(&v85[1] + 1);
      sub_1C6FD7FC8(v85, &qword_1EC216D30);
      if (v63)
      {
LABEL_24:
        v25 = sub_1C755068C();
        *(&v85[1] + 1) = MEMORY[0x1E69E6370];
        LOBYTE(v85[0]) = 1;
        sub_1C6FCABEC(v85, v84);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_106_7();
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v64);
        OUTLINED_FUNCTION_14_0();
        v66 = OUTLINED_FUNCTION_78_13(v65);
        v67(v66);
        sub_1C709D30C();
        __swift_destroy_boxed_opaque_existential_1(v84);

        v41 = v87;
        if (qword_1EDD0ED88 != -1)
        {
          OUTLINED_FUNCTION_0_35();
          swift_once();
        }

        v68 = sub_1C754FF1C();
        __swift_project_value_buffer(v68, &dword_1EDD28D48);
        v58 = sub_1C754FEEC();
        sub_1C755117C();
        v69 = OUTLINED_FUNCTION_12_60();
        if (!os_log_type_enabled(v69, v70))
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v77 = sub_1C754FF1C();
      __swift_project_value_buffer(v77, &dword_1EDD28D48);
      v58 = sub_1C754FEEC();
      sub_1C755117C();
      v78 = OUTLINED_FUNCTION_12_60();
      if (!os_log_type_enabled(v78, v79))
      {
        goto LABEL_28;
      }
    }

    else
    {

      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v57 = sub_1C754FF1C();
      __swift_project_value_buffer(v57, &dword_1EDD28D48);
      v58 = sub_1C754FEEC();
      sub_1C755118C();
      v59 = OUTLINED_FUNCTION_12_60();
      if (!os_log_type_enabled(v59, v60))
      {
        goto LABEL_28;
      }
    }

LABEL_27:
    OUTLINED_FUNCTION_96_0();
    v71 = swift_slowAlloc();
    OUTLINED_FUNCTION_92_0(v71);
    OUTLINED_FUNCTION_102_11();
    _os_log_impl(v72, v73, v74, v75, v25, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
LABEL_28:

    return v41;
  }

  return v41;
}

uint64_t sub_1C73257A4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 272) = a6;
  *(v7 + 280) = a7;
  *(v7 + 256) = a4;
  *(v7 + 264) = a5;
  *(v7 + 240) = a2;
  *(v7 + 248) = a3;
  *(v7 + 345) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1C73257D4, 0, 0);
}

uint64_t sub_1C73257D4()
{
  switch(*(v0 + 345))
  {
    case 1:
      goto LABEL_10;
    case 2:
      sub_1C755068C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216CF8);
      OUTLINED_FUNCTION_20_18();
      OUTLINED_FUNCTION_113_10();
      swift_endAccess();
      sub_1C755068C();
      OUTLINED_FUNCTION_20_18();
      OUTLINED_FUNCTION_113_10();
      swift_endAccess();
LABEL_10:
      v14 = *(v0 + 280);
      *(v0 + 344) = 0;
      swift_beginAccess();
      *(v0 + 304) = *(v14 + 16);
      sub_1C75504FC();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 312) = v15;
      *v15 = v16;
      v15[1] = sub_1C7325C08;

      result = StoryMusicCurator.requestMaestroMusicCuration(for:with:eventRecorder:)();
      break;
    case 3:
      memcpy((v0 + 16), *(v0 + 272), 0x80uLL);
      v17 = swift_task_alloc();
      *(v0 + 288) = v17;
      *v17 = v0;
      v17[1] = sub_1C7325AE8;

      result = sub_1C73891D0();
      break;
    default:
      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_35();
        swift_once();
      }

      v1 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v1, &dword_1EDD28D48);
      v2 = sub_1C754FEEC();
      sub_1C755119C();
      v3 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v3, v4))
      {
        OUTLINED_FUNCTION_96_0();
        v5 = swift_slowAlloc();
        OUTLINED_FUNCTION_37_0(v5);
        OUTLINED_FUNCTION_8_1();
        _os_log_impl(v6, v7, v8, v9, v10, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C70EB0F0();
      swift_allocError();
      *v11 = 2;
      swift_willThrow();
      OUTLINED_FUNCTION_43();

      result = v12();
      break;
  }

  return result;
}

uint64_t sub_1C7325AE8()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v8 + 296) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_116();

    return v12(v3);
  }
}

uint64_t sub_1C7325C08()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v5[40] = v9;
  v5[41] = v0;

  if (!v0)
  {

    v5[42] = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C7325D20()
{
  v15 = v0;
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  v14[0] = 0;
  v4 = static MusicCurationJsonParser.musicCurationSongs(fromAppleMusicJson:from:songType:)(v1, v3, 0xD000000000000014, 0x80000001C75AB260, v14);

  if (v2)
  {
    OUTLINED_FUNCTION_43();

    return v5();
  }

  else
  {
    if (qword_1EC213DA8 != -1)
    {
      swift_once();
    }

    v7 = v0[31];
    v8 = type metadata accessor for MusicMobileAssetsConfigUtility();
    v9 = __swift_project_value_buffer(v8, qword_1EC217400);
    v10 = *(v8 + 20);
    v11 = v7 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
    OUTLINED_FUNCTION_20_18();
    v12 = type metadata accessor for StoryMusicCurationDiagnostics();
    sub_1C709CFB4(v9 + v10, v11 + *(v12 + 148));
    swift_endAccess();
    OUTLINED_FUNCTION_116();

    return v13(v4);
  }
}

uint64_t sub_1C7325EB4()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7325F10(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v38 = &v31 - v5;
  v6 = *(a2 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *a1;
  v36 = a1[1];
  v37 = v7;
  v8 = a1[2];
  v34 = a1[3];
  v35 = v8;
  v33 = a1[4];
  LODWORD(v8) = *(a1 + 40);
  v9 = (a2 + 40);
  v31 = *(a1 + 41);
  v32 = v8;
  v40 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = *(v9 - 1);
    v11 = *v9;
    sub_1C75504FC();
    static StoryMusicEmbeddingTerms.termByEngineeringName(_:)(&v44);
    v12 = v45;
    if (v45 && (v41 = v11, v39 = v10, v13 = v44, v14 = sub_1C75506FC(), v16 = v15, sub_1C72B9804(v13, v12), v44 = v37, v45 = v36, v46 = v35, v47 = v34, v48 = v33, v49 = v32, v50 = v31, StoryPromptAttributes.description.getter(), v17 = sub_1C75506FC(), v19 = v18, , v44 = v17, v45 = v19, v42 = v14, v43 = v16, v20 = sub_1C754E15C(), v21 = v38, __swift_storeEnumTagSinglePayload(v38, 1, 1, v20), sub_1C6FB5E8C(), sub_1C755157C(), LOBYTE(v14) = v22, sub_1C6FD7FC8(v21, &qword_1EC214DF8), , , (v14 & 1) == 0))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v40 = v28;
      }

      v23 = v39;
      v24 = *(v40 + 16);
      if (v24 >= *(v40 + 24) >> 1)
      {
        sub_1C6FB1814();
        v40 = v29;
      }

      v25 = v40;
      v26 = v41;
      *(v40 + 16) = v24 + 1;
      v27 = v25 + 16 * v24;
      *(v27 + 32) = v23;
      *(v27 + 40) = v26;
    }

    else
    {
    }

    v9 += 2;
    --v6;
  }

  while (v6);
  return v40;
}

uint64_t static StoryMusicCurator.isUserEligibleForAppleMusic()()
{
  OUTLINED_FUNCTION_42();
  v1 = type metadata accessor for AppleMusicSubscriptionState();
  OUTLINED_FUNCTION_76(v1);
  *(v0 + 16) = OUTLINED_FUNCTION_77();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 24) = v2;
  *v2 = v3;
  v2[1] = sub_1C7326280;

  return static StoryMusicCurator.queryAppleMusicSubscriptionState(cacheValueInSeconds:)();
}

uint64_t sub_1C7326280()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7326368()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 16);
  v2 = *(v1 + 1);
  sub_1C6FF7688(v1);
  v3 = 1;
  switch(v2)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      OUTLINED_FUNCTION_15_62();
      OUTLINED_FUNCTION_66_2();
      v3 = OUTLINED_FUNCTION_46_27();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_116();

  return v4(v3 & 1);
}

uint64_t sub_1C732649C()
{
  sub_1C6F65BE8(0, &qword_1EC21AAE8);
  v1 = sub_1C732682C();
  v0[20] = v1;
  OUTLINED_FUNCTION_87_16();
  v2 = sub_1C755065C();
  v3 = [v1 stringForKey_];
  v0[21] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C7326630;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AAF0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C73268C0;
  v0[13] = &block_descriptor_30;
  v0[14] = v4;
  [v3 valueWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C7326630()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C7326730()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);

  v3 = sub_1C755068C();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_1C73267BC()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  swift_willThrow();

  OUTLINED_FUNCTION_43();

  return v3();
}

id sub_1C732682C()
{
  v0 = sub_1C755065C();

  v1 = sub_1C755065C();

  v2 = [swift_getObjCClassFromMetadata() bagForProfile:v0 profileVersion:v1];

  return v2;
}

uint64_t *sub_1C73268C0(uint64_t a1, void *a2, char a3, void *a4)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    v9 = a4;

    return sub_1C6FF5694(v8, v9);
  }

  else if (a2)
  {
    v10 = a2;

    return sub_1C6FF0CE0(v8, v10, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C7326958(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C755065C();

  v5 = [a3 effectiveBoolValueForSetting_];

  return v5;
}

uint64_t sub_1C73269B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleMusicSubscriptionState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7326A18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_164(a1, a2, a3);
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t sub_1C7326A68(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_164(a1, a2, a3);
  OUTLINED_FUNCTION_12();
  (*(v5 + 40))(v3, v4);
  return v3;
}

_BYTE *storeEnumTagSinglePayload for AppleMusicConfigurationParameters(_BYTE *result, int a2, int a3)
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

void OUTLINED_FUNCTION_40_36()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_54_25()
{
  v5 = *(v0 + 56) + 32 * (__clz(__rbit64(v3)) | (v1 << 6));

  return sub_1C6F774EC(v5, v2 + 160);
}

void OUTLINED_FUNCTION_55_26()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_61_18()
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_62_20()
{
}

id OUTLINED_FUNCTION_85_12()
{
  *(v1 + 96) = v0;

  return v0;
}

uint64_t OUTLINED_FUNCTION_106_7()
{
  *(v2 - 72) = v1;
  v4 = *(v0 + 80);

  return __swift_mutable_project_boxed_opaque_existential_0(v0 + 56, v4);
}

void OUTLINED_FUNCTION_107_8()
{
}

void OUTLINED_FUNCTION_109_10()
{
  v2 = *(v0 + 96);
}

uint64_t OUTLINED_FUNCTION_110_7()
{
  *(v0 + 56) = v1;
  v3 = *(v0 + 112);

  return __swift_mutable_project_boxed_opaque_existential_0(v0 + 88, v3);
}

void OUTLINED_FUNCTION_111_9()
{
  v2 = *(v0 + 728);
}

uint64_t OUTLINED_FUNCTION_113_10()
{

  return sub_1C709B020();
}

uint64_t OUTLINED_FUNCTION_114_10@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{

  return sub_1C7326A18(v2, v3 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_115_12()
{

  return type metadata accessor for AppleMusicSubscriptionState();
}

void OUTLINED_FUNCTION_116_10()
{
}

_OWORD *OUTLINED_FUNCTION_118_8()
{

  return sub_1C6FCABEC((v0 + 216), (v0 + 88));
}

void OUTLINED_FUNCTION_119_10()
{
}

uint64_t PromptSanitizer.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC18PhotosIntelligence15PromptSanitizer_logger;
  if (qword_1EDD0B9A0 != -1)
  {
    OUTLINED_FUNCTION_1_106();
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EDD0B9A8);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  return v0;
}

uint64_t PromptSanitizer.sanitizePrompt(from:extendedTokens:queryTokens:eventRecorder:progressReporter:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  *(v6 + 256) = a5;
  *(v6 + 264) = v7;
  *(v6 + 240) = a3;
  *(v6 + 248) = a4;
  *(v6 + 232) = a1;
  *(v6 + 272) = *v7;
  v9 = sub_1C754D84C();
  *(v6 + 280) = v9;
  *(v6 + 288) = *(v9 - 8);
  *(v6 + 296) = swift_task_alloc();
  v10 = sub_1C754F38C();
  *(v6 + 304) = v10;
  *(v6 + 312) = *(v10 - 8);
  *(v6 + 320) = swift_task_alloc();
  *(v6 + 328) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C73270D4, 0, 0);
}

uint64_t sub_1C73270D4()
{
  v62 = v0;
  v1 = v0[31];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v2 = [v0[29] string];
  v3 = sub_1C755068C();
  v5 = v4;

  sub_1C75504FC();
  v6 = sub_1C754FEEC();
  v7 = sub_1C75511BC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v61[0] = v9;
    *v8 = 136642819;
    *(v8 + 4) = sub_1C6F765A4(v3, v5, v61);
    _os_log_impl(&dword_1C6F5C000, v6, v7, "Starting sanitizePrompt with unambiguous prompt: %{sensitive}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v10 = v3;
  v11 = v0[41];
  v12 = v0[42];
  v13 = v0[33];
  v56 = v0[34];
  v14 = v0[29];
  v15 = *MEMORY[0x1E6978F98];
  v0[20] = 0;
  v0[21] = 0xE000000000000000;
  v0[22] = 0;
  v0[23] = 0xE000000000000000;
  v60 = v15;
  v16 = sub_1C7327A00(v11);
  v17 = sub_1C7327C24(v12);
  static StoryGenerationUtilities.queryTokenPersonUUIDs(from:)();
  v19 = sub_1C706D154(v18);
  v0[28] = MEMORY[0x1E69E7CC0];
  v57 = [v14 length];
  v20 = swift_allocObject();
  v20[2] = v10;
  v20[3] = v5;
  v20[4] = v0 + 20;
  v20[5] = v0 + 22;
  v20[6] = v0 + 28;
  v20[7] = v13;
  v20[8] = v16;
  v20[9] = v17;
  v20[10] = v19;
  v20[11] = v56;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1C7328F34;
  *(v21 + 24) = v20;
  v0[6] = sub_1C71CCBD4;
  v0[7] = v21;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C743BBE4;
  v0[5] = &block_descriptor_31;
  v22 = _Block_copy(v0 + 2);

  [v14 enumerateAttribute:v60 inRange:0 options:v57 usingBlock:{0, v22}];
  _Block_release(v22);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v25 = v0[36];
    v24 = v0[37];
    v26 = v0[35];
    v27 = v0[21];
    v0[24] = v0[20];
    v0[25] = v27;
    sub_1C75504FC();
    sub_1C754D7FC();
    sub_1C6FB5E8C();
    v28 = sub_1C755154C();
    v30 = v29;
    v31 = *(v25 + 8);
    v31(v24, v26);

    v0[20] = v28;
    v0[21] = v30;

    v32 = v0[23];
    v0[26] = v0[22];
    v0[27] = v32;
    sub_1C75504FC();
    sub_1C754D7FC();
    v33 = sub_1C755154C();
    v35 = v34;
    v31(v24, v26);

    v0[22] = v33;
    v0[23] = v35;

    v36 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v36 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (!v36 || (v37 = sub_1C75504FC(), v38 = sub_1C7328660(v37), , (v38 & 1) != 0))
    {
      v39 = v0[21];
      v0[22] = v0[20];
      v0[23] = v39;
      sub_1C75504FC();
    }

    sub_1C754F2EC();
    v40 = sub_1C754FEEC();
    v41 = sub_1C75511BC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v42 = 136643075;
      OUTLINED_FUNCTION_5();
      v43 = v0[20];
      v44 = v0[21];
      sub_1C75504FC();
      v45 = sub_1C6F765A4(v43, v44, v61);

      *(v42 + 4) = v45;
      *(v42 + 12) = 2085;
      OUTLINED_FUNCTION_5();
      v46 = v0[22];
      v47 = v0[23];
      sub_1C75504FC();
      v48 = sub_1C6F765A4(v46, v47, v61);

      *(v42 + 14) = v48;
      _os_log_impl(&dword_1C6F5C000, v40, v41, "Finished sanitizePrompt with people names removed: %{sensitive}s, with no music: %{sensitive}s", v42, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v50 = v0[39];
    v49 = v0[40];
    v58 = v0[38];
    v51 = v0[31];
    OUTLINED_FUNCTION_5();
    v52 = v0[21];
    v59 = v0[20];
    OUTLINED_FUNCTION_5();
    v54 = v0[22];
    v53 = v0[23];
    sub_1C75504FC();
    sub_1C75504FC();

    __swift_project_boxed_opaque_existential_1(v51, v1[3]);
    OUTLINED_FUNCTION_15_1();
    sub_1C754F1AC();
    (*(v50 + 8))(v49, v58);

    v55 = v0[1];

    return v55(v59, v52, v54, v53);
  }

  return result;
}

uint64_t sub_1C73278C0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0B9A8);
  __swift_project_value_buffer(v0, qword_1EDD0B9A8);
  return sub_1C754FEFC();
}

uint64_t PromptSanitizer.init()()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence15PromptSanitizer_logger;
  if (qword_1EDD0B9A0 != -1)
  {
    OUTLINED_FUNCTION_1_106();
  }

  v2 = sub_1C754FF1C();
  v3 = __swift_project_value_buffer(v2, qword_1EDD0B9A8);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  return v0;
}

PhotosIntelligence::PromptSanitizer::PetSanitizationInfo __swiftcall PromptSanitizer.PetSanitizationInfo.init(detectionType:isMyPet:)(PhotosIntelligence::PromptSanitizer::PetSanitizationInfo detectionType, Swift::Bool isMyPet)
{
  *v2 = detectionType.detectionType;
  *(v2 + 16) = isMyPet;
  detectionType.isMyPet = isMyPet;
  return detectionType;
}

uint64_t sub_1C7327A00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 88;
    v3 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v19 = v1;
      v5 = *(v2 - 24);
      v4 = *(v2 - 16);
      v20 = *(v2 - 8);
      v21 = *(v2 - 6);
      v22 = *(v2 - 5);
      v23 = *(v2 - 4);
      v24 = *(v2 - 3);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v6 = sub_1C6F78124(v5, v4);
      if (__OFADD__(v3[2], (v7 & 1) == 0))
      {
        break;
      }

      v8 = v6;
      v9 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AB00);
      if (sub_1C7551A2C())
      {
        v10 = sub_1C6F78124(v5, v4);
        if ((v9 & 1) != (v11 & 1))
        {
          goto LABEL_17;
        }

        v8 = v10;
      }

      if (v9)
      {
        v12 = v3[7] + 6 * v8;
        *v12 = v20;
        *(v12 + 2) = v21;
        *(v12 + 3) = v22;
        *(v12 + 4) = v23;
        *(v12 + 5) = v24;
      }

      else
      {
        v3[(v8 >> 6) + 8] |= 1 << v8;
        v13 = (v3[6] + 16 * v8);
        *v13 = v5;
        v13[1] = v4;
        v14 = v3[7] + 6 * v8;
        *v14 = v20;
        *(v14 + 2) = v21;
        *(v14 + 3) = v22;
        *(v14 + 4) = v23;
        *(v14 + 5) = v24;

        v15 = v3[2];
        v16 = __OFADD__(v15, 1);
        v17 = v15 + 1;
        if (v16)
        {
          goto LABEL_16;
        }

        v3[2] = v17;
      }

      v2 += 72;
      v1 = v19 - 1;
      if (v19 == 1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C7327C24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 64;
    v3 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v23 = v1;
      v5 = *v2;
      v4 = *(v2 + 8);
      v24 = *(v2 + 33);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v6 = PHDetectionTypeDescription();
      v7 = sub_1C755068C();
      v9 = v8;

      swift_isUniquelyReferenced_nonNull_native();
      v10 = sub_1C6F78124(v5, v4);
      if (__OFADD__(v3[2], (v11 & 1) == 0))
      {
        break;
      }

      v12 = v10;
      v13 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AAF8);
      if (sub_1C7551A2C())
      {
        v14 = sub_1C6F78124(v5, v4);
        if ((v13 & 1) != (v15 & 1))
        {
          goto LABEL_17;
        }

        v12 = v14;
      }

      if (v13)
      {
        v16 = v3[7] + 24 * v12;
        *v16 = v7;
        *(v16 + 8) = v9;
        *(v16 + 16) = v24;
      }

      else
      {
        v3[(v12 >> 6) + 8] |= 1 << v12;
        v17 = (v3[6] + 16 * v12);
        *v17 = v5;
        v17[1] = v4;
        v18 = v3[7] + 24 * v12;
        *v18 = v7;
        *(v18 + 8) = v9;
        *(v18 + 16) = v24;

        v19 = v3[2];
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          goto LABEL_16;
        }

        v3[2] = v21;
      }

      v2 += 72;
      v1 = v23 - 1;
      if (v23 == 1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1C7327E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = static StoryGenerationUtilities.substring(of:in:)(a5, a6, a2, a3);
  if (!v15)
  {
    return;
  }

  v16 = v14;
  v17 = v15;
  sub_1C7329154(a1, v26);
  if (!v27)
  {
    sub_1C6FB5FC8(v26, &qword_1EC219770);
    goto LABEL_9;
  }

  sub_1C73291C4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    MEMORY[0x1CCA5CD70](v16, v17);
    MEMORY[0x1CCA5CD70](v16, v17);

    return;
  }

  v18 = [v25 QUToken];
  if (!v18)
  {

    goto LABEL_9;
  }

  v19 = v18;
  MEMORY[0x1CCA5D040]();
  sub_1C6FB6328(*((*a9 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1C7550BEC();
  if (static StoryGenerationUtilities.isPersonOrPetQueryToken(_:)())
  {
    v20 = [v25 suggestion];
    v21 = PromptSanitizer.replacePersonOrPetName(for:quToken:relationshipInfoByPersonUUID:petSanitizationInfoByPetUUID:validPersonPetUUIDs:suggestion:)(v16, v17, v19, a11, a12, a13, v20);
    v23 = v22;

    MEMORY[0x1CCA5CD70](v21, v23);
    MEMORY[0x1CCA5CD70](v21, v23);
  }

  else
  {
    v24 = sub_1C73282CC(v19);
    MEMORY[0x1CCA5CD70](v16, v17);
    if ((v24 & 1) == 0)
    {
      MEMORY[0x1CCA5CD70](v16, v17);
    }
  }
}

uint64_t PromptSanitizer.replacePersonOrPetName(for:quToken:relationshipInfoByPersonUUID:petSanitizationInfoByPetUUID:validPersonPetUUIDs:suggestion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1C75506FC();
  v12 = v11;
  if (qword_1EC214270 != -1)
  {
    swift_once();
  }

  if (*(off_1EC21C9E8 + 2))
  {
    sub_1C6F78124(v10, v12);
    if (v13)
    {

      StoryPersonRelationshipType.rawValue.getter();
      return OUTLINED_FUNCTION_15_1();
    }
  }

  static StoryGenerationCharacterTypes.unbiasedRelationshipsStringsWithPrefix.getter();
  v15 = sub_1C7009C30(v10, v12, v14);

  if (v15)
  {
LABEL_15:
    sub_1C75504FC();
    return OUTLINED_FUNCTION_15_1();
  }

  sub_1C7328780(a3, a7, a6);
  v17 = v16;
  v18 = *(v16 + 16);
  if (!v18)
  {

    if (qword_1EC214278 != -1)
    {
      swift_once();
    }

    goto LABEL_15;
  }

  v30 = MEMORY[0x1E69E7CC0];
  sub_1C6F7ED9C();
  v19 = (v17 + 40);
  do
  {
    v20 = *(v19 - 1);
    v21 = *v19;
    sub_1C75504FC();
    v22 = sub_1C73289BC(v20, v21, a5, a4);
    v24 = v23;

    v25 = *(v30 + 16);
    if (v25 >= *(v30 + 24) >> 1)
    {
      sub_1C6F7ED9C();
    }

    *(v30 + 16) = v25 + 1;
    v26 = v30 + 16 * v25;
    *(v26 + 32) = v22;
    *(v26 + 40) = v24;
    v19 += 2;
    --v18;
  }

  while (v18);

  static StoryGenerationUtilities.arrayAsSentence(for:includeComma:emptyArrayResult:)(v30, 1, 0);

  return OUTLINED_FUNCTION_15_1();
}

uint64_t sub_1C73282CC(void *a1)
{
  v2 = sub_1C754E25C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A540);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = sub_1C754E2FC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = &v27 - v15;
  v17 = [a1 entityCategoryTypes];
  sub_1C754E29C();

  v27 = v16;
  v28 = v10;
  (*(v10 + 16))(v12, v16, v9);
  v18 = MEMORY[0x1E6969B50];
  sub_1C732910C(&qword_1EDD0CB78, MEMORY[0x1E6969B50]);
  sub_1C75509AC();
  sub_1C732910C(&qword_1EDD0CB70, v18);
  v19 = (v3 + 8);
  for (i = 1; ; i = (v25 - 9) < 3)
  {
    do
    {
      v21 = i;
      sub_1C755107C();
      sub_1C732910C(&qword_1EDD0CB80, MEMORY[0x1E6969B18]);
      v22 = sub_1C755063C();
      (*v19)(v5, v2);
      if (v22)
      {
        sub_1C6FB5FC8(v8, &qword_1EC21A540);
        (*(v28 + 8))(v27, v9);
        return v21;
      }

      v23 = sub_1C75510CC();
      v25 = *v24;
      v23(v29, 0);
      result = sub_1C755108C();
      i = 0;
    }

    while (!v21);
    if (v25 < 0)
    {
      break;
    }
  }

  __break(1u);
  return result;
}

id sub_1C7328660(uint64_t a1)
{
  v2 = sub_1C6FB6304();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v2 == v3)
    {
      v7 = sub_1C6FB6304();

      return (v7 == 0);
    }

    sub_1C6FB6330(v3, v4 == 0, a1);
    result = v4 ? MEMORY[0x1CCA5DDD0](v3, a1) : *(a1 + 8 * v3 + 32);
    v6 = result;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (sub_1C73282CC(result))
    {
    }

    else
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    ++v3;
  }

  __break(1u);
  return result;
}

void sub_1C7328780(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = static StoryGenerationUtilities.getEligibleCharacterUUIDs(quToken:suggestion:)(a1);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *(v4 + 16);
    v25 = v4 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    v24 = v7;
    while (1)
    {
LABEL_3:
      if (v6 == v7)
      {

        return;
      }

      v9 = v6;
      if (v6 >= *(v5 + 16))
      {
        break;
      }

      ++v6;
      if (*(a3 + 16))
      {
        v10 = (v25 + 16 * v9);
        v12 = *v10;
        v11 = v10[1];
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();
        v13 = sub_1C7551FAC();
        v14 = ~(-1 << *(a3 + 32));
        do
        {
          v15 = v13 & v14;
          if (((*(a3 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
          {

            goto LABEL_3;
          }

          v16 = (*(a3 + 48) + 16 * v15);
          if (*v16 == v12 && v16[1] == v11)
          {
            break;
          }

          v18 = sub_1C7551DBC();
          v13 = v15 + 1;
        }

        while ((v18 & 1) == 0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6F7ED9C();
        }

        v19 = *(v8 + 16);
        if (v19 >= *(v8 + 24) >> 1)
        {
          sub_1C6F7ED9C();
        }

        *(v8 + 16) = v19 + 1;
        v20 = v8 + 16 * v19;
        *(v20 + 32) = v12;
        *(v20 + 40) = v11;
        v7 = v24;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = sub_1C754FEEC();
    v22 = sub_1C755119C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C6F5C000, v21, v22, "No possible person/pet uuids from quToken or suggestion!", v23, 2u);
      MEMORY[0x1CCA5F8E0](v23, -1, -1);
    }
  }
}

unint64_t sub_1C73289BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 16))
  {
    v8 = sub_1C6F78124(a1, a2);
    if (v9)
    {
      v10 = *(a3 + 56) + 24 * v8;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16) == 0;
      v14 = 8289;
      if (!v13)
      {
        v14 = 2128237;
      }

      v41 = v14;
      sub_1C75504FC();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v11, v12);

      return v41;
    }
  }

  if (*(a4 + 16) && (v16 = sub_1C6F78124(a1, a2), (v17 & 1) != 0))
  {
    v18 = (*(a4 + 56) + 6 * v16);
    if (v18[4] == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1C75604F0;
      v20 = MEMORY[0x1E69E6158];
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v21 = sub_1C6F6D524();
      v22 = 31085;
      v23 = 0xE200000000000000;
LABEL_10:
      *(v19 + 32) = v22;
      *(v19 + 40) = v23;
      *(v19 + 96) = v20;
      *(v19 + 104) = v21;
      *(v19 + 64) = v21;
      *(v19 + 72) = 0x646C696863;
      v24 = 0xE500000000000000;
LABEL_11:
      *(v19 + 80) = v24;
      return sub_1C75506BC();
    }

    v32 = v18[2];
    if (v32 != 18)
    {
      if (v18[5])
      {
        LOBYTE(v41) = v18[2];
        return StoryPersonRelationshipType.rawValue.getter();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1C75604F0;
      v35 = MEMORY[0x1E69E6158];
      *(v34 + 56) = MEMORY[0x1E69E6158];
      v36 = sub_1C6F6D524();
      *(v34 + 64) = v36;
      *(v34 + 32) = 31085;
      *(v34 + 40) = 0xE200000000000000;
      LOBYTE(v41) = v32;
      v37 = StoryPersonRelationshipType.rawValue.getter();
      *(v34 + 96) = v35;
      *(v34 + 104) = v36;
      *(v34 + 72) = v37;
      *(v34 + 80) = v38;
      return sub_1C75506BC();
    }

    v33 = *v18;
    if (v33 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1C75604F0;
      v39 = MEMORY[0x1E69E6158];
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v40 = sub_1C6F6D524();
      *(v19 + 32) = 97;
      *(v19 + 40) = 0xE100000000000000;
      *(v19 + 96) = v39;
      *(v19 + 104) = v40;
      *(v19 + 64) = v40;
      *(v19 + 72) = 2036490594;
      v24 = 0xE400000000000000;
      goto LABEL_11;
    }

    if (v33 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1C75604F0;
      v20 = MEMORY[0x1E69E6158];
      *(v19 + 56) = MEMORY[0x1E69E6158];
      v21 = sub_1C6F6D524();
      v22 = 97;
      v23 = 0xE100000000000000;
      goto LABEL_10;
    }

    sub_1C75504FC();
    v26 = sub_1C754FEEC();
    v27 = sub_1C75511BC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1C6F765A4(a1, a2, &v41);
      v30 = "Person or pet UUID %s doesn't have anything more specific to use, defaulting to a person";
      goto LABEL_16;
    }
  }

  else
  {
    sub_1C75504FC();
    v26 = sub_1C754FEEC();
    v27 = sub_1C75511BC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1C6F765A4(a1, a2, &v41);
      v30 = "Person or pet UUID %s missing relationship!";
LABEL_16:
      _os_log_impl(&dword_1C6F5C000, v26, v27, v30, v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1CCA5F8E0](v29, -1, -1);
      MEMORY[0x1CCA5F8E0](v28, -1, -1);
    }
  }

  if (qword_1EC214278 != -1)
  {
    swift_once();
  }

  v15 = qword_1EC21C9F0;
  sub_1C75504FC();
  return v15;
}

uint64_t PromptSanitizer.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence15PromptSanitizer_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PromptSanitizer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence15PromptSanitizer_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PromptSanitizer()
{
  result = qword_1EDD0B988;
  if (!qword_1EDD0B988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7328FC0()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C732907C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1C73290BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C732910C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C7329154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C73291C4()
{
  result = qword_1EDD0CDB0;
  if (!qword_1EDD0CDB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD0CDB0);
  }

  return result;
}

uint64_t FinalTokenGenerator.__allocating_init(photoLibrary:storyAssetsFetcher:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FinalTokenGenerator.init(photoLibrary:storyAssetsFetcher:)(a1, a2);
  return v4;
}

uint64_t FinalTokenGenerator.generate(from:previousAssetScopingTokens:consolidatedPersonAssetUUIDs:eventRecorder:progressReporter:storyGenerationDiagnosticContext:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[319] = v0;
  v1[318] = v4;
  v1[317] = v5;
  v1[316] = v6;
  v1[315] = v7;
  v1[314] = v8;
  v1[313] = v2;
  v1[312] = v9;
  v1[320] = sub_1C754F2FC();
  OUTLINED_FUNCTION_15_3();
  v1[321] = v10;
  v1[322] = swift_task_alloc();
  v1[323] = swift_task_alloc();
  v1[324] = swift_task_alloc();
  v1[325] = swift_task_alloc();
  v1[326] = sub_1C754F38C();
  OUTLINED_FUNCTION_15_3();
  v1[327] = v11;
  v1[328] = swift_task_alloc();
  memcpy(v1 + 152, v3, 0x50uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C73293B8()
{
  v37 = v0;
  v1 = OUTLINED_FUNCTION_457();
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_1C754F1CC();
  v3 = OUTLINED_FUNCTION_457();
  __swift_project_boxed_opaque_existential_1(v3, v4);
  sub_1C754F15C();
  sub_1C754F2CC();
  v0[329] = OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator_logger;
  v5 = sub_1C754FEEC();
  v6 = sub_1C755117C();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_211_4(&dword_1C6F5C000, v5, v6, "Starting generate final tokens");
    OUTLINED_FUNCTION_37();
  }

  v7 = v0[325];
  v8 = v0[324];
  v9 = v0[321];
  v10 = v0[320];
  v11 = v0[313];

  memcpy(__dst, v11, 0x50uLL);
  sub_1C700BC7C(__dst, v12, v13, v14, v15, v16, v17, v18, v31, v33, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
  memcpy(v0 + 32, __src, 0x50uLL);
  memcpy(__dst, v11, 0x50uLL);
  sub_1C700C6EC(__dst, v19, v20, v21, v22, v23, v24, v25, v32, v34, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9]);
  sub_1C754F2BC();
  memcpy(v0 + 52, v0 + 32, 0x50uLL);
  v26 = *(v9 + 32);
  v0[330] = v26;
  v0[331] = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v26(v8, v7, v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[332] = v27;
  *v27 = v28;
  v27[1] = sub_1C73296F4;
  v29 = v0[324];

  return sub_1C732AF60((v0 + 42), v0 + 26, (v0 + 282), v29);
}

uint64_t sub_1C73296F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 2664) = v0;

  if (v0)
  {
    sub_1C7027A58(v3 + 176);
  }

  else
  {
    sub_1C7027A58(v3 + 256);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73297FC()
{
  v27 = v0;
  memcpy(v0 + 12, v0 + 42, 0x50uLL);
  memcpy(__dst, v0 + 12, sizeof(__dst));
  sub_1C7027A20((v0 + 12), (v0 + 62));
  sub_1C7027A20((v0 + 12), (v0 + 72));
  sub_1C701260C();
  v0[334] = v2;
  sub_1C7027A58((v0 + 12));
  memcpy(v25, v0 + 22, sizeof(v25));
  memcpy(__dst, v0 + 12, sizeof(__dst));
  v3 = sub_1C7335844(v25, __dst);
  sub_1C75504FC();
  v4 = sub_1C754FEEC();
  v5 = sub_1C755117C();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_41_0();
    v6 = OUTLINED_FUNCTION_31_0();
    __dst[0] = v6;
    *v1 = 136642819;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8);
    v8 = MEMORY[0x1CCA5D090](v3, v7);
    v10 = sub_1C6F765A4(v8, v9, __dst);

    *(v1 + 4) = v10;
    _os_log_impl(&dword_1C6F5C000, v4, v5, "Compatible collection tokens: %{sensitive}s", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_37();
  }

  v11 = v0[330];
  memcpy(__dst, v0 + 152, sizeof(__dst));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D18);
  v0[335] = v12;
  v0[290] = v12;
  v13 = sub_1C7335B90();
  v0[336] = v13;
  v0[291] = v13;
  v0[287] = v3;
  ExtendedTokenCollection.intersecting(_:)((v0 + 287), v14, v15, v16, v17, v18, v19, v20, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], __dst[0], __dst[1]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 287));
  memcpy(v0 + 82, v25, 0x50uLL);
  sub_1C754F2BC();
  memcpy(v0 + 102, v0 + 82, 0x50uLL);
  OUTLINED_FUNCTION_75();
  v11();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[337] = v21;
  *v21 = v22;
  v21[1] = sub_1C7329AC4;
  v23 = v0[322];

  return sub_1C732AF60((v0 + 92), v0 + 51, (v0 + 282), v23);
}

uint64_t sub_1C7329AC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 2704) = v0;

  if (v0)
  {
    sub_1C7027A58(v3 + 176);
    sub_1C7027A58(v3 + 96);
  }

  else
  {
    sub_1C7027A58(v3 + 656);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7329BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v14 = *(v12 + 334);
  memcpy(v12 + 56, v12 + 46, 0x50uLL);
  if (v14)
  {
    v15 = *(v12 + 319) + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__interestingTokenFilteringClosure;
    os_unfair_lock_lock(v15);
    v13 = *(v15 + 8);

    os_unfair_lock_unlock(v15);
    memcpy(&v121, v12 + 56, sizeof(v121));
    v119.personExtendedTokens._rawValue = v14;
    (v13)(__src, &v121, &v119);

    sub_1C7027A58((v12 + 56));
    v17 = __src[0];
    v16 = __src[1];
    v19 = __src[2];
    v18 = __src[3];
    v20 = __src[4];
  }

  else
  {
    v18 = v12[59];
    v20 = v12[60];
    v16 = v12[57];
    v19 = v12[58];
    v17 = v12[56];
  }

  v12[61] = v17;
  v12[62] = v16;
  v12[63] = v19;
  v12[64] = v18;
  v12[65] = v20;
  sub_1C7027A20((v12 + 61), (v12 + 66));
  v21 = sub_1C754FEEC();
  v22 = sub_1C755117C();
  sub_1C7027A58((v12 + 61));
  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_41_0();
    v23 = OUTLINED_FUNCTION_31_0();
    *&__src[0] = v23;
    *v13 = 136642819;
    OUTLINED_FUNCTION_214_1();
    sub_1C7027A20((v12 + 61), (v12 + 1));
    ExtendedTokenCollection.description.getter();
    OUTLINED_FUNCTION_213_3(v12 + 136);
    sub_1C7027A58((v12 + 136));
    v24 = OUTLINED_FUNCTION_23_14();
    v27 = sub_1C6F765A4(v24, v25, v26);

    *(v13 + 4) = v27;
    OUTLINED_FUNCTION_40_6(&dword_1C6F5C000, v28, v29, "Interesting collection tokens: %{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_37();
  }

  v30 = *(v12 + 314);
  v31 = *(v12 + 319) + OBJC_IVAR____TtC18PhotosIntelligence19FinalTokenGenerator__assetScopingTokenElectionClosure;
  os_unfair_lock_lock(v31);
  v32 = *(v31 + 8);

  os_unfair_lock_unlock(v31);
  OUTLINED_FUNCTION_214_1();
  *&__src[0] = v30;
  sub_1C7027A20((v12 + 61), (v12 + 81));
  (v32)(&v121, __src);

  OUTLINED_FUNCTION_213_3(v12 + 71);
  sub_1C7027A58((v12 + 71));
  if (*(v12 + 295))
  {
    v32 = *(v12 + 336);
    v33 = *(v12 + 335);
    sub_1C6F699F8(v12 + 146, v12 + 2456);
    OUTLINED_FUNCTION_214_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1C755BAB0;
    sub_1C6FB5E28(v12 + 2456, v34 + 32);
    *(v12 + 300) = v33;
    *(v12 + 301) = v32;
    *(v12 + 297) = v34;
    ExtendedTokenCollection.intersecting(_:)(v12 + 2376, v35, v36, v37, v38, v39, v40, v41, v89, v92, v93, v96, v97, v100, v101, v104, v105, v108, v109, v112);
    OUTLINED_FUNCTION_213_3(v12 + 131);
    sub_1C7027A58((v12 + 131));
    __swift_destroy_boxed_opaque_existential_1(v12 + 2376);
    memcpy(v12 + 126, __src, 0x50uLL);
    memcpy(__src, v12 + 6, sizeof(__src));
    memcpy(&v121, v12 + 126, sizeof(v121));
    ExtendedTokenCollection.merging(_:)(&v119, &v121);
    sub_1C7027A58((v12 + 126));
    sub_1C7027A58((v12 + 6));
    v102 = *&v119.locationExtendedTokens._rawValue;
    v106 = *&v119.personExtendedTokens._rawValue;
    v94 = *&v119.partOfDayExtendedTokens._rawValue;
    v98 = *&v119.homeExtendedTokens._rawValue;
    v90 = *&v119.tripExtendedTokens._rawValue;
    memcpy(__src, v12 + 11, sizeof(__src));
    sub_1C7335BF4(__src, &v121);
    sub_1C7027A58((v12 + 11));
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1C755BAB0;
    sub_1C6FB5E28(v12 + 2456, v42 + 32);
    *(v12 + 305) = v33;
    *(v12 + 306) = v32;
    *(v12 + 302) = v42;
    ExtendedTokenCollection.excluding(_:)((v12 + 151), v43, v44, v45, v46, v47, v48, v49, v90, *(&v90 + 1), v94, *(&v94 + 1), v98, *(&v98 + 1), v102, *(&v102 + 1), v106, *(&v106 + 1), v110, v113);
    OUTLINED_FUNCTION_213_3(v12 + 121);
    sub_1C7027A58((v12 + 121));
    __swift_destroy_boxed_opaque_existential_1(v12 + 2456);
    __swift_destroy_boxed_opaque_existential_1((v12 + 151));
    v50 = v103;
    v51 = v107;
    v52 = v95;
    v53 = v99;
    v54 = v91;
    v116 = __src[1];
    v117 = __src[0];
    v114 = __src[3];
    v115 = __src[2];
    v111 = __src[4];
  }

  else
  {
    sub_1C7027A58((v12 + 61));
    sub_1C6FB5FC8((v12 + 146), &qword_1EC215EA8);
    memcpy(&v121, v12 + 11, sizeof(v121));
    sub_1C7335BF4(&v121, __src);
    sub_1C7027A58((v12 + 11));
    v116 = __src[1];
    v117 = __src[0];
    v114 = __src[3];
    v115 = __src[2];
    v111 = __src[4];
    v52 = v12[9];
    v54 = v12[10];
    v50 = v12[7];
    v53 = v12[8];
    v51 = v12[6];
  }

  v55 = *(v12 + 338);
  v12[101] = v51;
  v12[102] = v50;
  v12[103] = v53;
  v12[104] = v52;
  v12[105] = v54;
  memcpy(__src, v12 + 101, sizeof(__src));
  *&v121.personExtendedTokens._rawValue = v117;
  *&v121.locationExtendedTokens._rawValue = v116;
  *&v121.homeExtendedTokens._rawValue = v115;
  *&v121.partOfDayExtendedTokens._rawValue = v114;
  *&v121.tripExtendedTokens._rawValue = v111;
  sub_1C7027A20((v12 + 101), (v12 + 106));
  ExtendedTokenCollection.merging(_:)(&v119, &v121);
  OUTLINED_FUNCTION_213_3(v12 + 96);
  sub_1C7027A58((v12 + 96));
  memcpy(v12 + 91, __src, 0x50uLL);
  sub_1C7027A58((v12 + 91));
  memcpy(v12 + 86, &v119, 0x50uLL);
  sub_1C754F2DC();
  if (v55)
  {
    v56 = *(v12 + 321);
    v118 = *(v12 + 320);
    v57 = *(v12 + 317);
    __swift_destroy_boxed_opaque_existential_1((v12 + 141));
    sub_1C7027A58((v12 + 86));
    sub_1C7027A58((v12 + 101));
    v58 = OUTLINED_FUNCTION_61_0();
    __swift_project_boxed_opaque_existential_1(v58, v59);
    OUTLINED_FUNCTION_24_2();
    sub_1C754F1AC();
    v60 = OUTLINED_FUNCTION_457();
    v61(v60);
    (*(v56 + 8))(v57, v118);
    OUTLINED_FUNCTION_218_2();

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    sub_1C7027A20((v12 + 101), (v12 + 111));
    v62 = sub_1C754FEEC();
    v63 = sub_1C755117C();
    sub_1C7027A58((v12 + 101));
    if (os_log_type_enabled(v62, v63))
    {
      OUTLINED_FUNCTION_41_0();
      v64 = OUTLINED_FUNCTION_31_0();
      *&__src[0] = v64;
      *v32 = 136642819;
      memcpy(&v121, v12 + 101, sizeof(v121));
      ExtendedTokenCollection.description.getter();
      OUTLINED_FUNCTION_213_3(v12 + 116);
      sub_1C7027A58((v12 + 116));
      v65 = OUTLINED_FUNCTION_23_14();
      v68 = sub_1C6F765A4(v65, v66, v67);

      *(v32 + 4) = v68;
      OUTLINED_FUNCTION_40_6(&dword_1C6F5C000, v69, v70, "Scoping tokens chosen: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_37();
    }

    else
    {

      sub_1C7027A58((v12 + 101));
    }

    if (*(v12 + 318))
    {
      memcpy(&v121, v12 + 86, sizeof(v121));
      LOBYTE(__src[0]) = 1;

      static ExtendedTokenDiagnosticsGenerator.save(extendedTokens:diagnosticsFileType:in:)(&v121);
    }

    sub_1C754F2EC();
    v80 = sub_1C754FEEC();
    v81 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v81))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v83, v84, "Finished generating final tokens");
      OUTLINED_FUNCTION_109();
    }

    v85 = *(v12 + 316);
    v86 = *(v12 + 312);

    __swift_destroy_boxed_opaque_existential_1((v12 + 141));
    memcpy(v86, v12 + 86, 0x50uLL);
    __swift_project_boxed_opaque_existential_1(v85, v85[3]);
    sub_1C754F1AC();
    v87 = OUTLINED_FUNCTION_49_3();
    v88(v87);

    OUTLINED_FUNCTION_25();
  }

  OUTLINED_FUNCTION_44();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12);
}