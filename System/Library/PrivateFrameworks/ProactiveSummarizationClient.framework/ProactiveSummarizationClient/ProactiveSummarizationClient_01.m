uint64_t sub_1CFCEB0C0(uint64_t a1, uint64_t a2)
{
  v5 = a1 == OUTLINED_FUNCTION_7_2() && a2 == v4;
  if (v5 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v8 = a1 == OUTLINED_FUNCTION_10_0() && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_20() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v10 = a1 == OUTLINED_FUNCTION_9_3() && a2 == v9;
      if (v10 || (OUTLINED_FUNCTION_20() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v11 = a1 == 0x6144646573726170 && a2 == 0xEA00000000006574;
        if (v11 || (OUTLINED_FUNCTION_20() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x614E646573726170 && a2 == 0xEA0000000000656DLL)
        {

          return 4;
        }

        else
        {
          v13 = OUTLINED_FUNCTION_20();

          if (v13)
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

uint64_t sub_1CFCEB1F4()
{
  result = OUTLINED_FUNCTION_7_2();
  switch(v1)
  {
    case 1:
      result = OUTLINED_FUNCTION_10_0();
      break;
    case 2:
      result = OUTLINED_FUNCTION_9_3();
      break;
    case 3:
      result = 0x6144646573726170;
      break;
    case 4:
      result = 0x614E646573726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFCEB2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCEB0C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFCEB2CC(uint64_t a1)
{
  v2 = sub_1CFCEBB48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFCEB308(uint64_t a1)
{
  v2 = sub_1CFCEBB48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QuotedRegion.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D58, &qword_1CFD4B760);
  OUTLINED_FUNCTION_37(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCEBB48();
  sub_1CFD497A8();
  v14 = *v3;
  v15 = v3[1];
  v26[15] = 0;
  OUTLINED_FUNCTION_4_0();
  sub_1CFD495E8();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v26[14] = 1;
    OUTLINED_FUNCTION_4_0();
    sub_1CFD495E8();
    v18 = v3[4];
    v19 = v3[5];
    v26[13] = 2;
    OUTLINED_FUNCTION_4_0();
    sub_1CFD495B8();
    v20 = type metadata accessor for QuotedRegion();
    v21 = *(v20 + 28);
    v26[12] = 3;
    sub_1CFD48CC8();
    sub_1CFCEBB9C(&qword_1EC4F2A90);
    sub_1CFD495D8();
    v22 = (v3 + *(v20 + 32));
    v23 = *v22;
    v24 = v22[1];
    v26[11] = 4;
    OUTLINED_FUNCTION_4_0();
    sub_1CFD495B8();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t QuotedRegion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2BD0, &qword_1CFD4A5B0);
  OUTLINED_FUNCTION_6_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D60, &qword_1CFD4B768);
  v10 = OUTLINED_FUNCTION_37(v9);
  v46 = v11;
  v47 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v42 - v15;
  v17 = type metadata accessor for QuotedRegion();
  v18 = OUTLINED_FUNCTION_25(v17);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = (v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v21 + 28);
  v25 = sub_1CFD48CC8();
  v50 = v24;
  v26 = v23;
  __swift_storeEnumTagSinglePayload(v23 + v24, 1, 1, v25);
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCEBB48();
  v48 = v16;
  v28 = v49;
  sub_1CFD49788();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1CFCE3050(v26 + v50, &qword_1EC4F2BD0, &qword_1CFD4A5B0);
  }

  else
  {
    v55 = 0;
    *v26 = sub_1CFD49548();
    v26[1] = v29;
    v49 = v29;
    v54 = 1;
    v26[2] = sub_1CFD49548();
    v26[3] = v30;
    v53 = 2;
    v44 = 0;
    v31 = sub_1CFD49518();
    v32 = v50;
    v26[4] = v31;
    v26[5] = v33;
    v42[1] = v33;
    v52 = 3;
    sub_1CFCEBB9C(&qword_1EC4F2B08);
    v43 = v26;
    sub_1CFD49538();
    v34 = v43;
    sub_1CFCE281C(v8, v43 + v32);
    v51 = 4;
    v35 = sub_1CFD49518();
    v37 = v36;
    v38 = (v34 + *(v17 + 32));
    v39 = OUTLINED_FUNCTION_11_2();
    v40(v39);
    *v38 = v35;
    v38[1] = v37;
    sub_1CFCEBBE0(v34, v45);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1CFCEBC44(v34);
  }
}

id sub_1CFCEB958(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [v1 initWithTypes:a1 error:v7];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1CFD48BE8();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1CFCEBA0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1CFD48F78();

  [a3 setDateFormat_];
}

uint64_t sub_1CFCEBA70(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x1EEE6AA70](a1);
}

uint64_t sub_1CFCEBA94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D40, &qword_1CFD4B748);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CFCEBB04()
{
  result = qword_1EC4F2D50;
  if (!qword_1EC4F2D50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4F2D50);
  }

  return result;
}

unint64_t sub_1CFCEBB48()
{
  result = qword_1EC4F6810[0];
  if (!qword_1EC4F6810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F6810);
  }

  return result;
}

uint64_t sub_1CFCEBB9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1CFD48CC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CFCEBBE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuotedRegion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFCEBC44(uint64_t a1)
{
  v2 = type metadata accessor for QuotedRegion();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFCEBCC8()
{
  sub_1CFCE21B0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1CFCE4010();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for QuotedRegion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CFCEBE50()
{
  result = qword_1EC4F6AA0[0];
  if (!qword_1EC4F6AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F6AA0);
  }

  return result;
}

unint64_t sub_1CFCEBEA8()
{
  result = qword_1EC4F6BB0;
  if (!qword_1EC4F6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F6BB0);
  }

  return result;
}

unint64_t sub_1CFCEBF00()
{
  result = qword_1EC4F6BB8[0];
  if (!qword_1EC4F6BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F6BB8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_2()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 112);
  return *(v1 - 104);
}

uint64_t sub_1CFCEC028()
{
  OUTLINED_FUNCTION_61();
  sub_1CFCECAB0();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49168();
}

uint64_t sub_1CFCEC070()
{
  OUTLINED_FUNCTION_61();
  sub_1CFCECAB0();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49138();
}

BOOL sub_1CFCEC104(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1CFCEC138@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_1CFCEC168@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

ProactiveSummarizationClient::SummaryStyles sub_1CFCEC268@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = SummaryStyles.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1CFCEC2A8@<X0>(uint64_t *a1@<X8>)
{
  result = SummaryStyles.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1CFCEC2EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

ProactiveSummarizationClient::SummarizationOptions __swiftcall SummarizationOptions.init(requestedSummaryStyles:isUserInitiated:useExternalIntelligence:)(ProactiveSummarizationClient::SummaryStyles requestedSummaryStyles, Swift::Bool isUserInitiated, Swift::Bool useExternalIntelligence)
{
  *v3 = *requestedSummaryStyles.rawValue;
  *(v3 + 8) = isUserInitiated;
  *(v3 + 9) = useExternalIntelligence;
  result.requestedSummaryStyles = requestedSummaryStyles;
  result.isUserInitiated = isUserInitiated;
  return result;
}

ProactiveSummarizationClient::SummarizationOptions __swiftcall SummarizationOptions.init(requestedSummaryStyles:isUserInitiated:)(ProactiveSummarizationClient::SummaryStyles requestedSummaryStyles, Swift::Bool isUserInitiated)
{
  *v2 = *requestedSummaryStyles.rawValue;
  *(v2 + 8) = isUserInitiated;
  *(v2 + 9) = 0;
  result.requestedSummaryStyles = requestedSummaryStyles;
  result.isUserInitiated = isUserInitiated;
  return result;
}

ProactiveSummarizationClient::SummarizationOptions __swiftcall SummarizationOptions.init(requestedSummaryStyles:)(ProactiveSummarizationClient::SummaryStyles requestedSummaryStyles)
{
  *v1 = *requestedSummaryStyles.rawValue;
  *(v1 + 8) = 1;
  result.requestedSummaryStyles = requestedSummaryStyles;
  return result;
}

uint64_t sub_1CFCEC414(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001CFD5D950 == a2;
  if (v3 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E49726573557369 && a2 == 0xEF64657461697469;
    if (v6 || (OUTLINED_FUNCTION_20() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000017 && 0x80000001CFD5D970 == a2)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_20();

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

uint64_t sub_1CFCEC514(char a1)
{
  if (!a1)
  {
    return 0xD000000000000016;
  }

  if (a1 == 1)
  {
    return 0x6E49726573557369;
  }

  return 0xD000000000000017;
}

uint64_t sub_1CFCEC58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCEC414(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFCEC5C0(uint64_t a1)
{
  v2 = sub_1CFCEC7C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFCEC5FC(uint64_t a1)
{
  v2 = sub_1CFCEC7C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SummarizationOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D68, &qword_1CFD4B948);
  v5 = OUTLINED_FUNCTION_37(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v16 - v10;
  v12 = *v1;
  v13 = *(v1 + 8);
  v16[1] = *(v1 + 9);
  v16[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCEC7C8();
  sub_1CFD497A8();
  v20 = v12;
  v19 = 0;
  sub_1CFCEC81C();
  OUTLINED_FUNCTION_1_3();
  sub_1CFD49618();
  if (!v2)
  {
    v18 = 1;
    OUTLINED_FUNCTION_1_3();
    sub_1CFD495F8();
    v17 = 2;
    OUTLINED_FUNCTION_1_3();
    sub_1CFD495F8();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_1CFCEC7C8()
{
  result = qword_1EC4F6C40[0];
  if (!qword_1EC4F6C40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F6C40);
  }

  return result;
}

unint64_t sub_1CFCEC81C()
{
  result = qword_1EC4F2D70;
  if (!qword_1EC4F2D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2D70);
  }

  return result;
}

uint64_t SummarizationOptions.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D78, &qword_1CFD4B950);
  v6 = OUTLINED_FUNCTION_37(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFCEC7C8();
  sub_1CFD49788();
  if (!v2)
  {
    v18[15] = 0;
    sub_1CFCECA58();
    sub_1CFD49578();
    v14 = v19;
    v18[14] = 1;
    v15 = sub_1CFD49558();
    v18[13] = 2;
    v17 = sub_1CFD49558();
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    *(a2 + 8) = v15 & 1;
    *(a2 + 9) = v17 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1CFCECA58()
{
  result = qword_1EC4F2D80;
  if (!qword_1EC4F2D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2D80);
  }

  return result;
}

unint64_t sub_1CFCECAB0()
{
  result = qword_1EC4F2D88;
  if (!qword_1EC4F2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2D88);
  }

  return result;
}

unint64_t sub_1CFCECB08()
{
  result = qword_1EC4F2D90;
  if (!qword_1EC4F2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F2D90);
  }

  return result;
}

unint64_t sub_1CFCECB60()
{
  result = qword_1EDDD2860;
  if (!qword_1EDDD2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD2860);
  }

  return result;
}

unint64_t sub_1CFCECBB8()
{
  result = qword_1EDDD2858;
  if (!qword_1EDDD2858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD2858);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummaryStyles(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_3_2(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SummaryStyles(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SummarizationOptions(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      return OUTLINED_FUNCTION_3_2(*a1 + 254);
    }

    v3 = *(a1 + 8);
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (!v4)
    {
      return OUTLINED_FUNCTION_3_2(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_3_2(v5);
}

uint64_t storeEnumTagSinglePayload for SummarizationOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s28ProactiveSummarizationClient21SummarizationFeedbackV7FeatureOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_3_2(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 3);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_3_2((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_3_2(v8);
}

_BYTE *sub_1CFCECDC8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CFCECEA4()
{
  result = qword_1EC4F7050[0];
  if (!qword_1EC4F7050[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F7050);
  }

  return result;
}

unint64_t sub_1CFCECEFC()
{
  result = qword_1EC4F7160;
  if (!qword_1EC4F7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F7160);
  }

  return result;
}

unint64_t sub_1CFCECF54()
{
  result = qword_1EC4F7168[0];
  if (!qword_1EC4F7168[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4F7168);
  }

  return result;
}

uint64_t ModelInputContentBuilderClient.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for SummarizationPipelineClient();
  *(v0 + 16) = SummarizationPipelineClient.__allocating_init()();
  return v0;
}

uint64_t ModelInputContentBuilderClient.init()()
{
  type metadata accessor for SummarizationPipelineClient();
  *(v0 + 16) = SummarizationPipelineClient.__allocating_init()();
  return v0;
}

uint64_t sub_1CFCED054()
{
  OUTLINED_FUNCTION_18_1();
  v4 = OUTLINED_FUNCTION_15_2(v1, v2, v3);
  v5 = type metadata accessor for ModelInputContentResponse.Kind(v4);
  *(v0 + 48) = v5;
  OUTLINED_FUNCTION_6_2(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_26_0();
  v9 = OUTLINED_FUNCTION_37_1(v8);
  v10 = type metadata accessor for ModelInputContentResponse(v9);
  OUTLINED_FUNCTION_6_2(v10);
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_26_0();
  v14 = OUTLINED_FUNCTION_36_1(v13);
  v15 = type metadata accessor for ModelInputContentRequest.Kind(v14);
  *(v0 + 72) = v15;
  OUTLINED_FUNCTION_6_2(v15);
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_26_0();
  v19 = OUTLINED_FUNCTION_35_1(v18);
  v20 = type metadata accessor for ModelInputContentRequest(v19);
  OUTLINED_FUNCTION_6_2(v20);
  v22 = *(v21 + 64);
  v23 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_13_2(v23);
  v24 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1CFCED124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_6_3();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_1();

  OUTLINED_FUNCTION_30_1(v15, v16);
  OUTLINED_FUNCTION_38_0();
  v18 = *(v17 + 160);
  v31 = v17 + 160;
  v32 = v18 + *v18;
  v19 = v18[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v14 + 112) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_10_1(v20);
  OUTLINED_FUNCTION_42_0();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, a11, a12, a13, a14);
}

uint64_t sub_1CFCED248()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CFCED32C()
{
  OUTLINED_FUNCTION_29_0();
  v4 = v1[7];
  v3 = v1[8];
  v5 = v1[6];
  OUTLINED_FUNCTION_2_4();
  sub_1CFCEECE0(v6, v4, v7);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_34_1();
  if (v8)
  {
    sub_1CFCEF5E4(v2, type metadata accessor for ModelInputContentResponse.Kind);
    v9 = OUTLINED_FUNCTION_40_0();
    type metadata accessor for MailEntity(v9);
    OUTLINED_FUNCTION_9_4();
    sub_1CFCEE1A4(v10, v11);
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_0_3();
    sub_1CFCEF5E4(v0, v12);
    OUTLINED_FUNCTION_1_4();
  }

  else
  {
    OUTLINED_FUNCTION_0_3();
    sub_1CFCEF5E4(v0, v13);
    v14 = OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_45_0(v14, v15, &qword_1EC4F2D98, &unk_1CFD50A10);
  }

  v17 = v1[10];
  v16 = v1[11];
  v19 = v1[7];
  v18 = v1[8];

  OUTLINED_FUNCTION_23_1();

  return v20();
}

uint64_t sub_1CFCED460(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = v4;
  *(v5 + 16) = a1;
  v8 = type metadata accessor for ModelInputContentResponse.Kind(0);
  *(v5 + 40) = v8;
  OUTLINED_FUNCTION_6_2(v8);
  v10 = *(v9 + 64);
  *(v5 + 48) = OUTLINED_FUNCTION_26_0();
  v11 = type metadata accessor for ModelInputContentResponse(0);
  OUTLINED_FUNCTION_6_2(v11);
  v13 = *(v12 + 64);
  v14 = OUTLINED_FUNCTION_26_0();
  v15 = OUTLINED_FUNCTION_37_1(v14);
  v16 = type metadata accessor for ModelInputContentRequest.Kind(v15);
  *(v5 + 64) = v16;
  OUTLINED_FUNCTION_6_2(v16);
  v18 = *(v17 + 64);
  *(v5 + 72) = OUTLINED_FUNCTION_26_0();
  v19 = type metadata accessor for ModelInputContentRequest(0);
  OUTLINED_FUNCTION_6_2(v19);
  v21 = *(v20 + 64);
  v22 = OUTLINED_FUNCTION_26_0();
  v23 = *a2;
  v24 = a2[1];
  *(v5 + 80) = v22;
  *(v5 + 88) = v23;
  *(v5 + 96) = v24;
  *(v5 + 130) = *(a2 + 16);
  *(v5 + 131) = *(a2 + 17);
  *(v5 + 104) = *a4;
  *(v5 + 128) = *(a4 + 16);
  v25 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v25, v26, v27);
}

uint64_t sub_1CFCED57C()
{
  v26 = v0;
  v21 = *(v0 + 128);
  v1 = *(v0 + 112);
  v2 = *(v0 + 131);
  v3 = *(v0 + 130);
  v20 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 72);
  v22 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C68, &qword_1CFD4AB40) + 48);
  *v6 = v4;
  *(v6 + 8) = v5;
  *(v6 + 16) = v3;
  *(v6 + 17) = v2;
  sub_1CFCEECE0(v8, v6 + v10, type metadata accessor for SummarizationResponse);
  swift_storeEnumTagMultiPayload();
  v24[0] = v20;
  v24[1] = v1;
  v25 = v21;

  ModelInputContentRequest.init(kind:options:)(v24, v22);
  OUTLINED_FUNCTION_38_0();
  v12 = *(v11 + 160);
  v23 = (v12 + *v12);
  v13 = v12[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v0 + 120) = v14;
  *v14 = v15;
  v14[1] = sub_1CFCED764;
  v16 = *(v0 + 80);
  v17 = *(v0 + 56);
  v18 = *(v0 + 32);

  return v23(v17, v16);
}

uint64_t sub_1CFCED764()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v2 = *(v1 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CFCED848()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  OUTLINED_FUNCTION_2_4();
  sub_1CFCEECE0(v4, v2, v5);
  v6 = OUTLINED_FUNCTION_46_0();
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[2];
  if (v6)
  {
    sub_1CFCEF5E4(v0[6], type metadata accessor for ModelInputContentResponse.Kind);
    v10 = OUTLINED_FUNCTION_40_0();
    type metadata accessor for MailEntity(v10);
    OUTLINED_FUNCTION_9_4();
    sub_1CFCEE1A4(v11, v12);
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_0_3();
    sub_1CFCEF5E4(v8, v13);
    OUTLINED_FUNCTION_1_4();
  }

  else
  {
    OUTLINED_FUNCTION_0_3();
    sub_1CFCEF5E4(v8, v14);
    v15 = OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_45_0(v15, v16, &qword_1EC4F2D98, &unk_1CFD50A10);
  }

  v18 = v0[9];
  v17 = v0[10];
  v20 = v0[6];
  v19 = v0[7];

  OUTLINED_FUNCTION_23_1();

  return v21();
}

uint64_t sub_1CFCED984()
{
  OUTLINED_FUNCTION_18_1();
  v4 = OUTLINED_FUNCTION_15_2(v1, v2, v3);
  v5 = type metadata accessor for ModelInputContentResponse.Kind(v4);
  *(v0 + 48) = v5;
  OUTLINED_FUNCTION_6_2(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_26_0();
  v9 = OUTLINED_FUNCTION_37_1(v8);
  v10 = type metadata accessor for ModelInputContentResponse(v9);
  OUTLINED_FUNCTION_6_2(v10);
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_26_0();
  v14 = OUTLINED_FUNCTION_36_1(v13);
  v15 = type metadata accessor for ModelInputContentRequest.Kind(v14);
  *(v0 + 72) = v15;
  OUTLINED_FUNCTION_6_2(v15);
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_26_0();
  v19 = OUTLINED_FUNCTION_35_1(v18);
  v20 = type metadata accessor for ModelInputContentRequest(v19);
  OUTLINED_FUNCTION_6_2(v20);
  v22 = *(v21 + 64);
  v23 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_13_2(v23);
  v24 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1CFCEDA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_6_3();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_1();

  OUTLINED_FUNCTION_30_1(v15, v16);
  OUTLINED_FUNCTION_38_0();
  v18 = *(v17 + 160);
  v31 = v17 + 160;
  v32 = v18 + *v18;
  v19 = v18[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v14 + 112) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_10_1(v20);
  OUTLINED_FUNCTION_42_0();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, a11, a12, a13, a14);
}

uint64_t sub_1CFCEDB78()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CFCEDC5C()
{
  OUTLINED_FUNCTION_29_0();
  v4 = v1[7];
  v3 = v1[8];
  v5 = v1[6];
  OUTLINED_FUNCTION_2_4();
  sub_1CFCEECE0(v6, v4, v7);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_34_1();
  if (v8 == 1)
  {
    OUTLINED_FUNCTION_0_3();
    sub_1CFCEF5E4(v0, v9);
    v10 = OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_45_0(v10, v11, &qword_1EC4F2DA0, &unk_1CFD4BD68);
  }

  else
  {
    sub_1CFCEF5E4(v2, type metadata accessor for ModelInputContentResponse.Kind);
    OUTLINED_FUNCTION_40_0();
    type metadata accessor for MessageEntity();
    OUTLINED_FUNCTION_22_2();
    sub_1CFCEE1A4(v12, v13);
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_0_3();
    sub_1CFCEF5E4(v0, v14);
    OUTLINED_FUNCTION_1_4();
  }

  v16 = v1[10];
  v15 = v1[11];
  v18 = v1[7];
  v17 = v1[8];

  OUTLINED_FUNCTION_23_1();

  return v19();
}

uint64_t sub_1CFCEDD94()
{
  OUTLINED_FUNCTION_18_1();
  v4 = OUTLINED_FUNCTION_15_2(v1, v2, v3);
  v5 = type metadata accessor for ModelInputContentResponse.Kind(v4);
  *(v0 + 48) = v5;
  OUTLINED_FUNCTION_6_2(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_26_0();
  v9 = OUTLINED_FUNCTION_37_1(v8);
  v10 = type metadata accessor for ModelInputContentResponse(v9);
  OUTLINED_FUNCTION_6_2(v10);
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_26_0();
  v14 = OUTLINED_FUNCTION_36_1(v13);
  v15 = type metadata accessor for ModelInputContentRequest.Kind(v14);
  *(v0 + 72) = v15;
  OUTLINED_FUNCTION_6_2(v15);
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_26_0();
  v19 = OUTLINED_FUNCTION_35_1(v18);
  v20 = type metadata accessor for ModelInputContentRequest(v19);
  OUTLINED_FUNCTION_6_2(v20);
  v22 = *(v21 + 64);
  v23 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_13_2(v23);
  v24 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1CFCEDE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_6_3();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_1();

  OUTLINED_FUNCTION_30_1(v15, v16);
  OUTLINED_FUNCTION_38_0();
  v18 = *(v17 + 160);
  v31 = v17 + 160;
  v32 = v18 + *v18;
  v19 = v18[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v14 + 112) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_10_1(v20);
  OUTLINED_FUNCTION_42_0();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, a11, a12, a13, a14);
}

uint64_t sub_1CFCEDF88()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CFCEE06C()
{
  OUTLINED_FUNCTION_29_0();
  v4 = v1[7];
  v3 = v1[8];
  v5 = v1[6];
  OUTLINED_FUNCTION_2_4();
  sub_1CFCEECE0(v6, v4, v7);
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_34_1();
  if (v8 == 2)
  {
    OUTLINED_FUNCTION_0_3();
    sub_1CFCEF5E4(v0, v9);
    v10 = OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_45_0(v10, v11, &qword_1EC4F2DA8, qword_1CFD4BD78);
  }

  else
  {
    sub_1CFCEF5E4(v2, type metadata accessor for ModelInputContentResponse.Kind);
    OUTLINED_FUNCTION_40_0();
    type metadata accessor for NotificationEntity();
    OUTLINED_FUNCTION_21_2();
    sub_1CFCEE1A4(v12, v13);
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_0_3();
    sub_1CFCEF5E4(v0, v14);
    OUTLINED_FUNCTION_1_4();
  }

  v16 = v1[10];
  v15 = v1[11];
  v18 = v1[7];
  v17 = v1[8];

  OUTLINED_FUNCTION_23_1();

  return v19();
}

uint64_t sub_1CFCEE1A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFCEE1EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_43_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_27();
  v9(v8);
  return v4;
}

uint64_t sub_1CFCEE238()
{
  OUTLINED_FUNCTION_18_1();
  v4 = OUTLINED_FUNCTION_15_2(v1, v2, v3);
  v5 = type metadata accessor for ModelInputContentResponse.Kind(v4);
  *(v0 + 48) = v5;
  OUTLINED_FUNCTION_6_2(v5);
  v7 = *(v6 + 64);
  v8 = OUTLINED_FUNCTION_26_0();
  v9 = OUTLINED_FUNCTION_37_1(v8);
  v10 = type metadata accessor for ModelInputContentResponse(v9);
  OUTLINED_FUNCTION_6_2(v10);
  v12 = *(v11 + 64);
  v13 = OUTLINED_FUNCTION_26_0();
  v14 = OUTLINED_FUNCTION_36_1(v13);
  v15 = type metadata accessor for ModelInputContentRequest.Kind(v14);
  *(v0 + 72) = v15;
  OUTLINED_FUNCTION_6_2(v15);
  v17 = *(v16 + 64);
  v18 = OUTLINED_FUNCTION_26_0();
  v19 = OUTLINED_FUNCTION_35_1(v18);
  v20 = type metadata accessor for ModelInputContentRequest(v19);
  OUTLINED_FUNCTION_6_2(v20);
  v22 = *(v21 + 64);
  v23 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_13_2(v23);
  v24 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1CFCEE308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_6_3();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_1();

  OUTLINED_FUNCTION_30_1(v15, v16);
  OUTLINED_FUNCTION_38_0();
  v18 = *(v17 + 160);
  v31 = v17 + 160;
  v32 = v18 + *v18;
  v19 = v18[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v14 + 112) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_10_1(v20);
  OUTLINED_FUNCTION_42_0();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, a11, a12, a13, a14);
}

uint64_t sub_1CFCEE42C()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CFCEE510()
{
  OUTLINED_FUNCTION_18_1();
  *(v0 + 34) = v1;
  *(v0 + 88) = v2;
  *(v0 + 96) = v3;
  *(v0 + 72) = v4;
  *(v0 + 80) = v5;
  v7 = OUTLINED_FUNCTION_36_1(v6);
  v8 = type metadata accessor for GenericModelInputAndOutputResult(v7);
  OUTLINED_FUNCTION_6_2(v8);
  v10 = *(v9 + 64);
  *(v0 + 104) = OUTLINED_FUNCTION_26_0();
  v11 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CFCEE590()
{
  OUTLINED_FUNCTION_29_0();
  v15 = v0;
  v1 = *(v0 + 34);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  type metadata accessor for ModelInputContentBuilderClient();
  v4 = swift_allocObject();
  *(v0 + 112) = v4;
  type metadata accessor for SummarizationPipelineClient();
  *(v4 + 16) = SummarizationPipelineClient.__allocating_init()();
  v14 = v1;

  v5._countAndFlagsBits = v3;
  v5._object = v2;
  ModelContentInputRequestOptions.init(bundleIdentifier:notificationType:isContentFromNotificationSpotlightIndex:)(v5, &v14, 1);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v6;
  *(v0 + 56) = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v0 + 120) = v8;
  *v8 = v9;
  v8[1] = sub_1CFCEE6A8;
  v10 = *(v0 + 104);
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);

  return sub_1CFCEE898();
}

uint64_t sub_1CFCEE6A8()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v5 = v4;

  v6 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1CFCEE7DC, 0, 0);
}

uint64_t sub_1CFCEE7DC()
{
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 104);
  sub_1CFCEECE0(v1, *(v0 + 64), type metadata accessor for ModelInputAndOutputKind);
  sub_1CFCEF5E4(v1, type metadata accessor for GenericModelInputAndOutputResult);

  OUTLINED_FUNCTION_23_1();

  return v2();
}

uint64_t sub_1CFCEE898()
{
  OUTLINED_FUNCTION_18_1();
  v5 = OUTLINED_FUNCTION_15_2(v2, v3, v4);
  v6 = type metadata accessor for ModelInputContentResponse(v5);
  OUTLINED_FUNCTION_6_2(v6);
  v8 = *(v7 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_26_0();
  v9 = type metadata accessor for ModelInputContentRequest.Kind(0);
  *(v1 + 56) = v9;
  OUTLINED_FUNCTION_6_2(v9);
  v11 = *(v10 + 64) + 15;
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  v12 = type metadata accessor for ModelInputContentRequest(0);
  OUTLINED_FUNCTION_6_2(v12);
  v14 = *(v13 + 64);
  v15 = OUTLINED_FUNCTION_26_0();
  v16 = *v0;
  v17 = v0[1];
  *(v1 + 80) = v15;
  *(v1 + 88) = v16;
  *(v1 + 96) = v17;
  *(v1 + 112) = *(v0 + 8);
  v18 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1CFCEE974()
{
  v22 = v2;
  v5 = *(v2 + 112);
  v6 = *(v2 + 96);
  v20[0] = *(v2 + 88);
  ModelContentInputRequestOptions.notificationContentType()();
  OUTLINED_FUNCTION_8_3();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_20_2();
  v7 = OUTLINED_FUNCTION_32_1();
  sub_1CFCEECE0(v7, v8, v9);
  v20[0] = v3;
  v20[1] = v20;
  v21 = v4;

  ModelInputContentRequest.init(kind:options:)(v20, v0);
  OUTLINED_FUNCTION_5_2();
  sub_1CFCEF5E4(v1, v10);
  v11 = *(**(v2 + 40) + 160);
  v19 = (v11 + *v11);
  v12 = v11[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v2 + 104) = v13;
  *v13 = v14;
  v13[1] = sub_1CFCEEB58;
  v15 = *(v2 + 80);
  v17 = *(v2 + 40);
  v16 = *(v2 + 48);

  return v19(v16, v15);
}

uint64_t sub_1CFCEEB58()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CFCEEC3C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  sub_1CFCEED3C(v4, v0[2]);
  OUTLINED_FUNCTION_0_3();
  sub_1CFCEF5E4(v4, v5);
  OUTLINED_FUNCTION_1_4();

  OUTLINED_FUNCTION_23_1();

  return v6();
}

uint64_t sub_1CFCEECE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_27();
  v8(v7);
  return a2;
}

uint64_t sub_1CFCEED3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v51 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DA8, qword_1CFD4BD78);
  v3 = OUTLINED_FUNCTION_25(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v49 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DA0, &unk_1CFD4BD68);
  v9 = OUTLINED_FUNCTION_25(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - v12;
  v14 = type metadata accessor for ModelInputAndOutputKind(0);
  v15 = OUTLINED_FUNCTION_25(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D98, &unk_1CFD50A10);
  v21 = OUTLINED_FUNCTION_25(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v49 - v24;
  v26 = type metadata accessor for ModelInputContentResponse.Kind(0);
  v27 = OUTLINED_FUNCTION_25(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_4();
  sub_1CFCEECE0(v50, v31, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1CFCEE1EC(v31, v13, &qword_1EC4F2DA0, &unk_1CFD4BD68);
      sub_1CFCF0044(v13, v19, &qword_1EC4F2DA0, &unk_1CFD4BD68);
      OUTLINED_FUNCTION_32_1();
      swift_storeEnumTagMultiPayload();
      ModelContentInput.inputString()();
      OUTLINED_FUNCTION_33_1();
      v53 = v34;
      v35 = ModelContentInput.outputString(for:)(&v53);
      OUTLINED_FUNCTION_28_0(v35._countAndFlagsBits, v35._object, v36, v35._countAndFlagsBits, v35._object, v13[*(v8 + 76)]);
      v37 = v13;
      v38 = &qword_1EC4F2DA0;
      v39 = &unk_1CFD4BD68;
    }

    else
    {
      v43 = OUTLINED_FUNCTION_27();
      sub_1CFCEE1EC(v43, v44, &qword_1EC4F2DA8, qword_1CFD4BD78);
      sub_1CFCF0044(v7, v19, &qword_1EC4F2DA8, qword_1CFD4BD78);
      OUTLINED_FUNCTION_32_1();
      swift_storeEnumTagMultiPayload();
      ModelContentInput.inputString()();
      OUTLINED_FUNCTION_33_1();
      v54 = v45;
      v46 = ModelContentInput.outputString(for:)(&v54);
      OUTLINED_FUNCTION_28_0(v46._countAndFlagsBits, v46._object, v47, v46._countAndFlagsBits, v46._object, v7[*(v2 + 76)]);
      v37 = v7;
      v38 = &qword_1EC4F2DA8;
      v39 = qword_1CFD4BD78;
    }
  }

  else
  {
    sub_1CFCEE1EC(v31, v25, &qword_1EC4F2D98, &unk_1CFD50A10);
    sub_1CFCF0044(v25, v19, &qword_1EC4F2D98, &unk_1CFD50A10);
    OUTLINED_FUNCTION_32_1();
    swift_storeEnumTagMultiPayload();
    ModelContentInput.inputString()();
    OUTLINED_FUNCTION_33_1();
    v52 = v40;
    v41 = ModelContentInput.outputString(for:)(&v52);
    OUTLINED_FUNCTION_28_0(v41._countAndFlagsBits, v41._object, v42, v41._countAndFlagsBits, v41._object, v25[*(v20 + 76)]);
    v37 = v25;
    v38 = &qword_1EC4F2D98;
    v39 = &unk_1CFD50A10;
  }

  return sub_1CFCE3050(v37, v38, v39);
}

uint64_t sub_1CFCEF0A8()
{
  OUTLINED_FUNCTION_18_1();
  v1[11] = v2;
  v1[12] = v0;
  v4 = OUTLINED_FUNCTION_35_1(v3);
  v5 = type metadata accessor for ModelInputContentResponse.Kind(v4);
  v1[13] = v5;
  OUTLINED_FUNCTION_6_2(v5);
  v7 = *(v6 + 64);
  v1[14] = OUTLINED_FUNCTION_26_0();
  v8 = type metadata accessor for ModelInputContentRequest.Kind(0);
  v1[15] = v8;
  OUTLINED_FUNCTION_6_2(v8);
  v10 = *(v9 + 64);
  v1[16] = OUTLINED_FUNCTION_26_0();
  v11 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CFCEF148()
{
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0[12] + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  v0[17] = v2;
  *v2 = v3;
  v2[1] = sub_1CFCEF1E0;
  v4 = v0[10];
  v5 = v0[11];

  return sub_1CFD100E0();
}

uint64_t sub_1CFCEF1E0()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v3 = v2;
  v4 = v2[17];
  v5 = *v1;
  OUTLINED_FUNCTION_12_1();
  *v6 = v5;
  v3[18] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1CFCEF314, 0, 0);
  }

  else
  {
    v7 = v3[16];
    v8 = v3[14];

    OUTLINED_FUNCTION_23_1();

    return v9();
  }
}

uint64_t sub_1CFCEF314()
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_27_1();
  v1 = *(v0 + 144);
  *(v0 + 64) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DB0, &qword_1CFD4BDA0);
  OUTLINED_FUNCTION_27();
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 56);
    v58 = *(v0 + 40);
    v60 = *(v0 + 48);
    v4 = sub_1CFD08DE4();
    v6 = v5;
    v7 = OUTLINED_FUNCTION_32_1();
    sub_1CFCEF63C(v7, v8, v3);
  }

  else
  {
    v9 = *(v0 + 144);
    swift_getErrorValue();
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = *(v0 + 32);
    v4 = sub_1CFD496D8();
    v6 = v13;
  }

  v15 = *(v0 + 120);
  v14 = *(v0 + 128);
  v16 = *(v0 + 88);
  OUTLINED_FUNCTION_20_2();
  sub_1CFCEECE0(v17, v14, v18);
  OUTLINED_FUNCTION_32_1();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v36 = *(v0 + 128);
      v37 = *v36;

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2C68, &qword_1CFD4AB40);
      v35 = type metadata accessor for SummarizationResponse;
      v34 = v36 + *(v38 + 48);
      goto LABEL_9;
    case 2u:
      v26 = *(v0 + 128);
      v27 = *(v0 + 112);
      v28 = *(v0 + 88);
      OUTLINED_FUNCTION_5_2();
      sub_1CFCEF5E4(v29, v30);
      v59 = v4;
      v61 = v6;
      type metadata accessor for MessageEntity();
      OUTLINED_FUNCTION_22_2();
      sub_1CFCEE1A4(v31, v32);
      OUTLINED_FUNCTION_24_1();
      sub_1CFCEF5D0(v4, v6);
      break;
    case 3u:
    case 4u:
      v19 = *(v0 + 128);
      v20 = *(v0 + 112);
      v21 = *(v0 + 88);
      OUTLINED_FUNCTION_5_2();
      sub_1CFCEF5E4(v22, v23);
      v59 = v4;
      v61 = v6;
      type metadata accessor for NotificationEntity();
      OUTLINED_FUNCTION_21_2();
      sub_1CFCEE1A4(v24, v25);
      OUTLINED_FUNCTION_24_1();
      sub_1CFCEF5D0(v4, v6);
      break;
    default:
      v33 = *(v0 + 128);
      OUTLINED_FUNCTION_5_2();
LABEL_9:
      sub_1CFCEF5E4(v34, v35);
      v39 = *(v0 + 112);
      v40 = *(v0 + 88);
      v59 = v4;
      v61 = v6;
      type metadata accessor for MailEntity(0);
      OUTLINED_FUNCTION_9_4();
      sub_1CFCEE1A4(v41, v42);
      OUTLINED_FUNCTION_24_1();
      sub_1CFCEF5D0(v4, v6);
      break;
  }

  v43 = *(v0 + 144);
  v44 = *(v0 + 104);
  v45 = *(v0 + 112);
  v46 = *(v0 + 80);
  swift_storeEnumTagMultiPayload();
  ModelInputContentResponse.init(kind:)();

  v47 = *(v0 + 128);
  v48 = *(v0 + 112);

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_47_0();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, v59, v61);
}

uint64_t sub_1CFCEF5D0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_1CFCEF5E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_25(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1CFCEF63C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t ModelInputContentBuilderClient.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ModelInputContentBuilderClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t dispatch thunk of ModelInputContentBuilderClient.modelInputContent(forMail:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_4_2();
  v10 = *(v9 + 96);
  v24 = v9 + 96;
  v25 = v10 + *v10;
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_14_2(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_3_3(v13);
  OUTLINED_FUNCTION_47_0();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t dispatch thunk of ModelInputContentBuilderClient.modelInputContent(summarizationRequest:summarizationResponse:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_4_2();
  v10 = *(v9 + 104);
  v24 = v9 + 104;
  v25 = v10 + *v10;
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_14_2(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_3_3(v13);
  OUTLINED_FUNCTION_47_0();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t dispatch thunk of ModelInputContentBuilderClient.modelInputContent(forMessage:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_4_2();
  v10 = *(v9 + 112);
  v24 = v9 + 112;
  v25 = v10 + *v10;
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_14_2(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_3_3(v13);
  OUTLINED_FUNCTION_47_0();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t dispatch thunk of ModelInputContentBuilderClient.modelInputContent(forNotification:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_4_2();
  v10 = *(v9 + 120);
  v24 = v9 + 120;
  v25 = v10 + *v10;
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_14_2(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_3_3(v13);
  OUTLINED_FUNCTION_47_0();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t dispatch thunk of ModelInputContentBuilderClient.modelInputContent(forNotificationStack:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_4_2();
  v10 = *(v9 + 128);
  v24 = v9 + 128;
  v25 = v10 + *v10;
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_14_2(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_3_3(v13);
  OUTLINED_FUNCTION_47_0();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t dispatch thunk of ModelInputContentBuilderClient.modelInputAndOutputKind(forNotification:bundleId:isShowingStackSummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(*v6 + 136);
  v19 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_14_2(v15);
  *v16 = v17;
  v16[1] = sub_1CFCEFD40;

  return v19(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1CFCEFD40()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v4 = v3;

  OUTLINED_FUNCTION_23_1();

  return v5();
}

uint64_t dispatch thunk of ModelInputContentBuilderClient.modelInputAndOutputContent(forNotification:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_4_2();
  v10 = *(v9 + 144);
  v24 = v9 + 144;
  v25 = v10 + *v10;
  v11 = v10[1];
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_14_2(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_3_3(v13);
  OUTLINED_FUNCTION_47_0();

  return v19(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t dispatch thunk of ModelInputContentBuilderClient.modelInputContent(for:)()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v5 = *(*v0 + 160);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_14_2(v7);
  *v8 = v9;
  v8[1] = sub_1CFCF0090;

  return v11(v4, v2);
}

uint64_t sub_1CFCF0044(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_43_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_27();
  v9(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_1_4()
{

  return sub_1CFCEF5E4(v0, type metadata accessor for ModelInputContentRequest);
}

void *OUTLINED_FUNCTION_6_3()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  *v5 = *(v0 + 24);
  v5[1] = v7;
  return v5;
}

void *OUTLINED_FUNCTION_8_3()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 32);
  v8 = *(v0 + 112);
  *v4 = *(v0 + 24);
  v4[1] = v7;
  return v4;
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[11];
  result = v2[8];
  v5 = v2[5];
  return result;
}

__n128 OUTLINED_FUNCTION_13_2(unint64_t a1)
{
  v2[5].n128_u64[1] = a1;
  result = *v1;
  v2[6] = *v1;
  v2[7].n128_u16[4] = v1[1].n128_u16[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_15_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return 0;
}

void OUTLINED_FUNCTION_17_3()
{

  static ModelContentInput.empty(status:request:)();
}

uint64_t OUTLINED_FUNCTION_23_1()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_24_1()
{

  static ModelContentInput.empty(status:request:)();
}

uint64_t OUTLINED_FUNCTION_26_0()
{

  return swift_task_alloc();
}

int *OUTLINED_FUNCTION_28_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = *(v8 - 96);

  return sub_1CFD1E5E4(v6, v7, a4, a5, a6, v10);
}

uint64_t OUTLINED_FUNCTION_30_1(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return ModelInputContentRequest.init(kind:options:)(va, v2);
}

uint64_t OUTLINED_FUNCTION_31_1()
{
}

void OUTLINED_FUNCTION_34_1()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[2];
}

uint64_t OUTLINED_FUNCTION_43_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_45_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1CFCEE1EC(v5, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_46_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1CFCF047C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6461526F54706174;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v2)
  {
    v4 = 0x80000001CFD5DA00;
  }

  else
  {
    v4 = 0xEA00000000007261;
  }

  if (a2)
  {
    v5 = 0x6461526F54706174;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (a2)
  {
    v6 = 0xEA00000000007261;
  }

  else
  {
    v6 = 0x80000001CFD5DA00;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1CFD49668();
  }

  return v8 & 1;
}

uint64_t sub_1CFCF0524(unsigned __int8 a1, char a2)
{
  v2 = 0x65727574616566;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x65727574616566;
  switch(v4)
  {
    case 1:
      v5 = 0x6E656D69746E6573;
      v3 = 0xE900000000000074;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x646E694B6975;
      break;
    case 3:
      v5 = 0x61746E6573657270;
      v3 = 0xEC0000006E6F6974;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6E656D69746E6573;
      v6 = 0xE900000000000074;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x646E694B6975;
      break;
    case 3:
      v2 = 0x61746E6573657270;
      v6 = 0xEC0000006E6F6974;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1CFD49668();
  }

  return v8 & 1;
}

uint64_t sub_1CFCF068C()
{
  sub_1CFD49728();
  sub_1CFCF0748();
  return sub_1CFD49758();
}

uint64_t sub_1CFCF06D4()
{
  sub_1CFD49038();
}

uint64_t sub_1CFCF0748()
{
  sub_1CFD49038();
}

uint64_t sub_1CFCF0808()
{
  sub_1CFD49728();
  sub_1CFCF0748();
  return sub_1CFD49758();
}

uint64_t sub_1CFCF084C()
{
  sub_1CFD49728();
  sub_1CFD49038();

  return sub_1CFD49758();
}

uint64_t sub_1CFCF08D4()
{
  OUTLINED_FUNCTION_61();
  sub_1CFD01B38();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49158();
}

uint64_t sub_1CFCF091C()
{
  OUTLINED_FUNCTION_61();
  sub_1CFD01B38();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49128();
}

ProactiveSummarizationClient::SummarizationFeedback::Feature_optional __swiftcall SummarizationFeedback.Feature.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1CFCF0994@<X0>(uint64_t *a1@<X8>)
{
  result = _s28ProactiveSummarizationClient0B8FeedbackV9SentimentO8rawValueSivg_0();
  *a1 = result;
  return result;
}

uint64_t sub_1CFCF09BC()
{
  OUTLINED_FUNCTION_61();
  sub_1CFD01AE4();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49158();
}

uint64_t sub_1CFCF0A04()
{
  OUTLINED_FUNCTION_61();
  sub_1CFD01AE4();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49128();
}

uint64_t sub_1CFCF0A3C()
{
  v1 = type metadata accessor for SummarizationFeedback.UIKind(0);
  v2 = OUTLINED_FUNCTION_25(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_1_5();
  sub_1CFCFFF3C();
  OUTLINED_FUNCTION_68();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = EnumCaseMultiPayload;
  sub_1CFCF0B10(v0, *(&off_1F4C784E0 + EnumCaseMultiPayload));
  return v6;
}

uint64_t sub_1CFCF0B10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_25(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1CFCF0B68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1818845549 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_20() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = a1 == OUTLINED_FUNCTION_30_0() && a2 == v7;
      if (v8 || (OUTLINED_FUNCTION_20() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v9 = a1 == 0xD000000000000011 && 0x80000001CFD5D8D0 == a2;
        if (v9 || (OUTLINED_FUNCTION_20() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x657268546C69616DLL && a2 == 0xEA00000000006461)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_37_0();
          if (a1)
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

uint64_t sub_1CFCF0CC0(char a1)
{
  result = 1818845549;
  switch(a1)
  {
    case 1:
      result = 0x6567617373656DLL;
      break;
    case 2:
      result = OUTLINED_FUNCTION_30_0();
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x657268546C69616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFCF0D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCF0B68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFCF0D8C()
{
  sub_1CFCF1748();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCF0DC4()
{
  sub_1CFCF1748();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFCF0E24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6B63616264656566 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1CFD49668();
    OUTLINED_FUNCTION_37_0();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1CFCF0E98()
{
  sub_1CFCF18EC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCF0ED0()
{
  sub_1CFCF18EC();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFCF0F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCF0E24(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1CFCF0F4C()
{
  sub_1CFCF179C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCF0F84()
{
  sub_1CFCF179C();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFCF0FBC()
{
  sub_1CFCF1898();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCF0FF4()
{
  sub_1CFCF1898();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFCF102C()
{
  sub_1CFCF1844();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCF1064()
{
  sub_1CFCF1844();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1CFCF109C()
{
  sub_1CFCF17F0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCF10D4()
{
  sub_1CFCF17F0();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void SummarizationFeedback.UIKind.encode(to:)()
{
  OUTLINED_FUNCTION_143();
  v100 = v1;
  v97 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DB8, &qword_1CFD4BEA0);
  v7 = OUTLINED_FUNCTION_37(v6);
  v95 = v8;
  v96 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_22_1();
  v94 = v12;
  v92 = type metadata accessor for SummarizationFeedback.MailThreadFeedback(0);
  v13 = OUTLINED_FUNCTION_25(v92);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v93 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DC0, &qword_1CFD4BEA8);
  v19 = OUTLINED_FUNCTION_37(v18);
  v90 = v20;
  v91 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_22_1();
  v89 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DC8, &qword_1CFD4BEB0);
  v26 = OUTLINED_FUNCTION_37(v25);
  v87 = v27;
  v88 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_22_1();
  v86 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DD0, &qword_1CFD4BEB8);
  v33 = OUTLINED_FUNCTION_37(v32);
  v84 = v34;
  v85 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v83 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DD8, &qword_1CFD4BEC0);
  OUTLINED_FUNCTION_37(v40);
  v83 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_179();
  v45 = type metadata accessor for SummarizationFeedback.UIKind(0);
  v46 = OUTLINED_FUNCTION_25(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2_0();
  v51 = (v50 - v49);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DE0, &qword_1CFD4BEC8);
  v53 = OUTLINED_FUNCTION_37(v52);
  v98 = v54;
  v99 = v53;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_146();
  v58 = v5[4];
  OUTLINED_FUNCTION_178(v5, v5[3]);
  sub_1CFCF1748();
  sub_1CFD497A8();
  OUTLINED_FUNCTION_1_5();
  sub_1CFCFFF3C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v76 = *v51;
      v77 = v51[1];
      OUTLINED_FUNCTION_175();
      sub_1CFCF1898();
      OUTLINED_FUNCTION_129();
      v78 = v85;
      sub_1CFD495E8();
      OUTLINED_FUNCTION_193();
      (*(v84 + 8))(v39, v78);
      goto LABEL_8;
    case 2u:
      v69 = *v51;
      v70 = v51[1];
      sub_1CFCF1844();
      v71 = v86;
      OUTLINED_FUNCTION_129();
      v72 = v88;
      sub_1CFD495E8();
      OUTLINED_FUNCTION_193();
      v73 = v87;
      goto LABEL_6;
    case 3u:
      v74 = *v51;
      v75 = v51[1];
      sub_1CFCF17F0();
      v71 = v89;
      OUTLINED_FUNCTION_129();
      v72 = v91;
      sub_1CFD495E8();
      OUTLINED_FUNCTION_193();
      v73 = v90;
LABEL_6:
      (*(v73 + 8))(v71, v72);
LABEL_8:
      v79 = *(v98 + 8);
      v80 = OUTLINED_FUNCTION_107();
      v82(v80, v81);
      break;
    case 4u:
      v62 = v93;
      sub_1CFCFFDE8();
      sub_1CFCF179C();
      v63 = v94;
      v64 = v99;
      sub_1CFD495A8();
      OUTLINED_FUNCTION_90();
      sub_1CFCFFDA0(v65, v66);
      v67 = v96;
      sub_1CFD49618();
      (*(v95 + 8))(v63, v67);
      OUTLINED_FUNCTION_2_5();
      sub_1CFCF0B10(v62, v68);
      (*(v98 + 8))(v2, v64);
      break;
    default:
      v60 = *v51;
      v59 = v51[1];
      sub_1CFCF18EC();
      v61 = v99;
      sub_1CFD495A8();
      sub_1CFD495E8();
      OUTLINED_FUNCTION_193();
      (*(v83 + 8))(v3, v40);
      (*(v98 + 8))(v2, v61);
      break;
  }

  OUTLINED_FUNCTION_142();
}

unint64_t sub_1CFCF1748()
{
  result = qword_1EC4F71F0;
  if (!qword_1EC4F71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F71F0);
  }

  return result;
}

unint64_t sub_1CFCF179C()
{
  result = qword_1EC4F71F8;
  if (!qword_1EC4F71F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F71F8);
  }

  return result;
}

unint64_t sub_1CFCF17F0()
{
  result = qword_1EC4F7200;
  if (!qword_1EC4F7200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F7200);
  }

  return result;
}

unint64_t sub_1CFCF1844()
{
  result = qword_1EC4F7208;
  if (!qword_1EC4F7208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F7208);
  }

  return result;
}

unint64_t sub_1CFCF1898()
{
  result = qword_1EC4F7210;
  if (!qword_1EC4F7210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F7210);
  }

  return result;
}

unint64_t sub_1CFCF18EC()
{
  result = qword_1EC4F7218;
  if (!qword_1EC4F7218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4F7218);
  }

  return result;
}

void SummarizationFeedback.UIKind.init(from:)()
{
  OUTLINED_FUNCTION_143();
  v164 = v0;
  v3 = v2;
  v153 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DF0, &qword_1CFD4BED0);
  v151 = OUTLINED_FUNCTION_37(v5);
  v152 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_22_1();
  v157 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DF8, &qword_1CFD4BED8);
  v149 = OUTLINED_FUNCTION_37(v11);
  v150 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_22_1();
  v156 = v16;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E00, &qword_1CFD4BEE0);
  OUTLINED_FUNCTION_37(v148);
  v158 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_22_1();
  v161 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E08, &qword_1CFD4BEE8);
  v23 = OUTLINED_FUNCTION_37(v22);
  v146 = v24;
  v147 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_22_1();
  v155 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E10, &qword_1CFD4BEF0);
  v30 = OUTLINED_FUNCTION_37(v29);
  v144 = v31;
  v145 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_22_1();
  v154 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E18, &qword_1CFD4BEF8);
  v37 = OUTLINED_FUNCTION_37(v36);
  v159 = v38;
  v160 = v37;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_147();
  v162 = type metadata accessor for SummarizationFeedback.UIKind(0);
  v42 = OUTLINED_FUNCTION_25(v162);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_185();
  v143 = v45;
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = &v136 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v136 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v136 - v54;
  v56 = MEMORY[0x1EEE9AC00](v53);
  v58 = &v136 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v136 - v59;
  v61 = v3[3];
  v62 = v3[4];
  v163 = v3;
  v63 = OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_178(v63, v64);
  sub_1CFCF1748();
  v65 = v164;
  sub_1CFD49788();
  if (v65)
  {
    goto LABEL_10;
  }

  v138 = v55;
  v139 = v52;
  v140 = v49;
  v141 = v58;
  v142 = v60;
  v66 = v160;
  v164 = v1;
  v67 = sub_1CFD49588();
  v71 = sub_1CFCE83C4(v67, 0);
  if (v69 == v70 >> 1)
  {
LABEL_9:
    v82 = v159;
    v83 = sub_1CFD49448();
    swift_allocError();
    v85 = v84;
    v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2CB0, &qword_1CFD4BF00) + 48);
    *v85 = v162;
    v87 = v164;
    sub_1CFD49508();
    sub_1CFD49438();
    (*(*(v83 - 8) + 104))(v85, *MEMORY[0x1E69E6AF8], v83);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v82 + 8))(v87, v66);
LABEL_10:
    v80 = v163;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v80);
    OUTLINED_FUNCTION_142();
    return;
  }

  v137 = 0;
  if (v69 < (v70 >> 1))
  {
    v72 = *(v68 + v69);
    sub_1CFCE840C(v69 + 1, v70 >> 1, v71, v68, v69, v70);
    v74 = v73;
    v76 = v75;
    swift_unknownObjectRelease();
    v77 = v74 == v76 >> 1;
    v78 = v158;
    if (v77)
    {
      v79 = v162;
      v80 = v137;
      switch(v72)
      {
        case 1:
          OUTLINED_FUNCTION_175();
          sub_1CFCF1898();
          OUTLINED_FUNCTION_150();
          sub_1CFD494F8();
          OUTLINED_FUNCTION_172();
          v102 = sub_1CFD49548();
          if (v76)
          {
            swift_unknownObjectRelease();
            v104 = OUTLINED_FUNCTION_188();
            v105(v104);
            OUTLINED_FUNCTION_79();
            v97 = v164;
            goto LABEL_24;
          }

          v130 = v102;
          v131 = v103;
          swift_unknownObjectRelease();
          v132 = OUTLINED_FUNCTION_188();
          v133(v132);
          OUTLINED_FUNCTION_79();
          v134(v164, v66);
          v135 = v138;
          *v138 = v130;
          v135[1] = v131;
          goto LABEL_29;
        case 2:
          sub_1CFCF1844();
          OUTLINED_FUNCTION_102();
          v93 = sub_1CFD49548();
          v111 = v110;
          v157 = v93;
          swift_unknownObjectRelease();
          v112 = *(v78 + 8);
          v113 = OUTLINED_FUNCTION_136();
          v114(v113);
          v115 = OUTLINED_FUNCTION_36_2();
          v116(v115);
          v117 = v139;
          *v139 = v157;
          v117[1] = v111;
          swift_storeEnumTagMultiPayload();
          v80 = v163;
          goto LABEL_30;
        case 3:
          sub_1CFCF17F0();
          OUTLINED_FUNCTION_102();
          OUTLINED_FUNCTION_172();
          v94 = sub_1CFD49548();
          if (v76)
          {
            swift_unknownObjectRelease();
            v90 = OUTLINED_FUNCTION_189();
            goto LABEL_19;
          }

          v118 = v94;
          v119 = v95;
          swift_unknownObjectRelease();
          v120 = OUTLINED_FUNCTION_189();
          v121(v120);
          v122 = OUTLINED_FUNCTION_36_2();
          v123(v122);
          v124 = v140;
          *v140 = v118;
          v124[1] = v119;
          goto LABEL_29;
        case 4:
          sub_1CFCF179C();
          OUTLINED_FUNCTION_102();
          OUTLINED_FUNCTION_172();
          type metadata accessor for SummarizationFeedback.MailThreadFeedback(0);
          OUTLINED_FUNCTION_90();
          sub_1CFCFFDA0(v88, v89);
          sub_1CFD49578();
          if (v76)
          {
            swift_unknownObjectRelease();
            v90 = OUTLINED_FUNCTION_108();
LABEL_19:
            v91(v90);
            OUTLINED_FUNCTION_79();
            v97 = v79;
            goto LABEL_24;
          }

          swift_unknownObjectRelease();
          v106 = OUTLINED_FUNCTION_108();
          v107(v106);
          v108 = OUTLINED_FUNCTION_36_2();
          v109(v108);
LABEL_29:
          swift_storeEnumTagMultiPayload();
          goto LABEL_30;
        default:
          sub_1CFCF18EC();
          v81 = v164;
          sub_1CFD494F8();
          OUTLINED_FUNCTION_172();
          if (v80)
          {
            OUTLINED_FUNCTION_79();
            v92(v81, v66);
            swift_unknownObjectRelease();
          }

          else
          {
            v98 = sub_1CFD49548();
            if (v76)
            {
              swift_unknownObjectRelease();
              v100 = OUTLINED_FUNCTION_108();
              v101(v100);
              OUTLINED_FUNCTION_79();
              v97 = v81;
LABEL_24:
              v96(v97, v66);
            }

            else
            {
              v125 = v99;
              v161 = v98;
              swift_unknownObjectRelease();
              v126 = OUTLINED_FUNCTION_108();
              v127(v126);
              OUTLINED_FUNCTION_79();
              v128(v81, v66);
              v129 = v141;
              *v141 = v161;
              v129[1] = v125;
              swift_storeEnumTagMultiPayload();
LABEL_30:
              sub_1CFCFFDE8();
              sub_1CFCFFDE8();
            }
          }

          break;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  __break(1u);
}

ProactiveSummarizationClient::SummarizationFeedback::Presentation::UI_optional __swiftcall SummarizationFeedback.Presentation.UI.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CFD494E8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t SummarizationFeedback.Presentation.UI.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6461526F54706174;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

unint64_t sub_1CFCF24C0@<X0>(unint64_t *a1@<X8>)
{
  result = SummarizationFeedback.Presentation.UI.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CFCF24E8()
{
  OUTLINED_FUNCTION_61();
  sub_1CFD01A90();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49148();
}

uint64_t sub_1CFCF2530()
{
  OUTLINED_FUNCTION_61();
  sub_1CFD01A90();
  OUTLINED_FUNCTION_59();
  return sub_1CFD49118();
}

uint64_t sub_1CFCF2578(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001CFD5DEA0 == a2;
  if (v3 || (OUTLINED_FUNCTION_20() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 26997 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_37_0();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CFCF2620()
{
  OUTLINED_FUNCTION_85();
  if (v0)
  {
    return 26997;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1CFCF2664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CFCF2578(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CFCF268C()
{
  sub_1CFCFFE40();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCF26C4()
{
  sub_1CFCFFE40();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void SummarizationFeedback.Presentation.encode(to:)()
{
  OUTLINED_FUNCTION_143();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E28, &qword_1CFD4BF08);
  OUTLINED_FUNCTION_37(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_147();
  v10 = *v0;
  v15 = v0[1];
  v11 = v3[4];
  OUTLINED_FUNCTION_178(v3, v3[3]);
  sub_1CFCFFE40();
  sub_1CFD497A8();
  OUTLINED_FUNCTION_160();
  sub_1CFD495F8();
  if (!v1)
  {
    sub_1CFCFFE94();
    OUTLINED_FUNCTION_160();
    sub_1CFD49618();
  }

  v12 = *(v6 + 8);
  v13 = OUTLINED_FUNCTION_117();
  v14(v13);
  OUTLINED_FUNCTION_142();
}

void SummarizationFeedback.Presentation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_143();
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E38, &qword_1CFD4BF10);
  OUTLINED_FUNCTION_37(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_148();
  v23 = v14[4];
  OUTLINED_FUNCTION_178(v14, v14[3]);
  sub_1CFCFFE40();
  sub_1CFD49788();
  if (!v12)
  {
    v24 = sub_1CFD49558();
    sub_1CFCFFEE8();
    sub_1CFD49578();
    v25 = *(v19 + 8);
    v26 = OUTLINED_FUNCTION_136();
    v27(v26);
    *v16 = v24 & 1;
    v16[1] = a12;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  OUTLINED_FUNCTION_142();
}

uint64_t SummarizationFeedback.MailThreadFeedback.summarizationRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

uint64_t SummarizationFeedback.MailThreadFeedback.init(summarizationRequest:summarizationResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 17) = v4;
  v5 = *(type metadata accessor for SummarizationFeedback.MailThreadFeedback(0) + 20);
  OUTLINED_FUNCTION_92();
  return sub_1CFCFFDE8();
}

uint64_t sub_1CFCF2AC8()
{
  sub_1CFCFFF94();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCF2B00()
{
  sub_1CFCFFF94();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t SummarizationFeedback.MailThreadFeedback.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E48, &qword_1CFD4BF18);
  OUTLINED_FUNCTION_37(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_146();
  v12 = a1[4];
  OUTLINED_FUNCTION_178(a1, a1[3]);
  sub_1CFCFFF94();
  sub_1CFD497A8();
  v17 = *v4;
  v18 = v4[1];
  v19 = *(v4 + 16);
  v20 = *(v4 + 17);
  sub_1CFCE6E60();

  sub_1CFD49618();

  if (!v2)
  {
    v13 = *(type metadata accessor for SummarizationFeedback.MailThreadFeedback(0) + 20);
    type metadata accessor for SummarizationResponse();
    OUTLINED_FUNCTION_91();
    sub_1CFCFFDA0(v14, v15);
    sub_1CFD49618();
  }

  return (*(v8 + 8))(v3, v6);
}

void SummarizationFeedback.MailThreadFeedback.init(from:)()
{
  OUTLINED_FUNCTION_143();
  v3 = v2;
  v29[1] = v4;
  v31 = type metadata accessor for SummarizationResponse();
  v5 = OUTLINED_FUNCTION_25(v31);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E50, &qword_1CFD4BF20);
  OUTLINED_FUNCTION_37(v32);
  v30 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  v14 = type metadata accessor for SummarizationFeedback.MailThreadFeedback(0);
  v15 = OUTLINED_FUNCTION_25(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_179();
  v18 = v3[4];
  OUTLINED_FUNCTION_178(v3, v3[3]);
  sub_1CFCFFF94();
  sub_1CFD49788();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    v29[0] = v3;
    v19 = v30;
    v20 = v1;
    sub_1CFCE84E4();
    v21 = v32;
    sub_1CFD49578();
    v22 = v34;
    v23 = v35;
    v24 = v36;
    *v20 = v33;
    *(v20 + 8) = v22;
    *(v20 + 16) = v23;
    *(v20 + 17) = v24;
    LOBYTE(v33) = 1;
    OUTLINED_FUNCTION_91();
    sub_1CFCFFDA0(v25, v26);
    sub_1CFD49578();
    (*(v19 + 8))(v13, v21);
    v27 = *(v14 + 20);
    OUTLINED_FUNCTION_92();
    sub_1CFCFFDE8();
    sub_1CFCFFF3C();
    __swift_destroy_boxed_opaque_existential_1(v29[0]);
    OUTLINED_FUNCTION_2_5();
    sub_1CFCF0B10(v20, v28);
  }

  OUTLINED_FUNCTION_142();
}

uint64_t sub_1CFCF2FEC()
{
  v0 = sub_1CFD494E8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1CFCF3038(char a1)
{
  result = 0x65727574616566;
  switch(a1)
  {
    case 1:
      result = 0x6E656D69746E6573;
      break;
    case 2:
      result = 0x646E694B6975;
      break;
    case 3:
      result = 0x61746E6573657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CFCF30E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1CFCF2FEC();
  *a2 = result;
  return result;
}

uint64_t sub_1CFCF3118@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFCF3038(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1CFCF314C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFCF2FEC();
  *a1 = result;
  return result;
}

uint64_t sub_1CFCF317C()
{
  sub_1CFD00008();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1CFCF31B4()
{
  sub_1CFD00008();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t SummarizationFeedback.uiKind.getter()
{
  v0 = *(type metadata accessor for SummarizationFeedback(0) + 24);
  OUTLINED_FUNCTION_1_5();
  return sub_1CFCFFF3C();
}

uint64_t SummarizationFeedback.presentation.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SummarizationFeedback(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = v4[1];
  *a1 = v5;
  a1[1] = v4;
  return result;
}

uint64_t SummarizationFeedback.init(feature:sentiment:uiKind:resolveTruncatedContentForSpotlightId:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_177(a1, a2);
  v10 = type metadata accessor for SummarizationFeedback(0);
  v11 = &v5[v10[8]];
  *v5 = v6;
  v5[1] = v7;
  v12 = v10[6];
  OUTLINED_FUNCTION_29_1();
  result = sub_1CFCFFDE8();
  *&v5[v10[7]] = 0;
  *v11 = a4;
  v11[1] = a5;
  return result;
}

void SummarizationFeedback.init(feature:sentiment:uiKind:presentation:resolveTruncatedContentForSpotlightId:)()
{
  OUTLINED_FUNCTION_156();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_177(v7, v8);
  v10 = *v9;
  v11 = v9[1];
  v12 = type metadata accessor for SummarizationFeedback(0);
  v13 = &v0[v12[8]];
  *v0 = v1;
  v0[1] = v2;
  v14 = v12[6];
  OUTLINED_FUNCTION_29_1();
  sub_1CFCFFDE8();
  v15 = &v0[v12[7]];
  *v15 = v10;
  v15[1] = v11;
  *v13 = v6;
  v13[1] = v4;
  OUTLINED_FUNCTION_155();
}

uint64_t SummarizationFeedback.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E58, &qword_1CFD4BF28);
  OUTLINED_FUNCTION_37(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_147();
  v11 = a1[4];
  OUTLINED_FUNCTION_178(a1, a1[3]);
  sub_1CFD00008();
  sub_1CFD497A8();
  v24 = *v3;
  sub_1CFD0005C();
  OUTLINED_FUNCTION_160();
  sub_1CFD49618();
  if (!v2)
  {
    v23 = v3[1];
    OUTLINED_FUNCTION_175();
    sub_1CFD000B0();
    OUTLINED_FUNCTION_160();
    sub_1CFD49618();
    v12 = type metadata accessor for SummarizationFeedback(0);
    v13 = *(v12 + 24);
    type metadata accessor for SummarizationFeedback.UIKind(0);
    OUTLINED_FUNCTION_89();
    sub_1CFCFFDA0(v14, v15);
    sub_1CFD49618();
    v16 = &v3[*(v12 + 28)];
    v21 = *v16;
    v22 = v16[1];
    sub_1CFD00104();
    OUTLINED_FUNCTION_160();
    sub_1CFD49618();
  }

  v17 = *(v7 + 8);
  v18 = OUTLINED_FUNCTION_117();
  return v19(v18);
}

void SummarizationFeedback.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17)
{
  OUTLINED_FUNCTION_143();
  v20 = v19;
  v21 = type metadata accessor for SummarizationFeedback.UIKind(0);
  v22 = OUTLINED_FUNCTION_25(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2E88, &unk_1CFD4BF30);
  v26 = OUTLINED_FUNCTION_37(v25);
  v43 = v27;
  v44 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_146();
  v31 = type metadata accessor for SummarizationFeedback(0);
  v32 = OUTLINED_FUNCTION_25(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_179();
  v36 = &v18[*(v35 + 32)];
  *v36 = 0;
  v36[1] = 0;
  v37 = v20[4];
  OUTLINED_FUNCTION_178(v20, v20[3]);
  sub_1CFD00008();
  sub_1CFD49788();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    sub_1CFD00158();
    sub_1CFD49578();
    *v18 = a17;
    OUTLINED_FUNCTION_175();
    sub_1CFD001AC();
    OUTLINED_FUNCTION_150();
    sub_1CFD49578();
    v18[1] = a15;
    OUTLINED_FUNCTION_89();
    sub_1CFCFFDA0(v38, v39);
    sub_1CFD49578();
    v40 = *(v31 + 24);
    OUTLINED_FUNCTION_29_1();
    sub_1CFCFFDE8();
    sub_1CFD00200();
    OUTLINED_FUNCTION_150();
    sub_1CFD49578();
    (*(v43 + 8))(0, v44);
    v41 = &v18[*(v31 + 28)];
    *v41 = a11;
    v41[1] = a12;
    OUTLINED_FUNCTION_12_2();
    sub_1CFCFFF3C();
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_26_1();
    sub_1CFCF0B10(v18, v42);
  }

  OUTLINED_FUNCTION_142();
}

id sub_1CFCF38E8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1CFD48F78();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t sub_1CFCF395C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_1CFCF3A18(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1CFCF3AA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_1CFCF3B64(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

double sub_1CFCF3BF8()
{
  type metadata accessor for SummarizationFeedbackClient();
  v0 = swift_allocObject();
  *&result = 12;
  v0[1] = xmmword_1CFD4BE20;
  v0[2] = 0u;
  v0[3] = 0u;
  qword_1EDDD3778 = v0;
  return result;
}

uint64_t static SummarizationFeedbackClient.shared.getter()
{
  if (_MergedGlobals != -1)
  {
    OUTLINED_FUNCTION_37_2();
  }
}

uint64_t SummarizationFeedbackClient.deinit()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 40);
    v4 = v1;
    v5 = v3;

    CFRunLoopSourceInvalidate(v4);
    CFUserNotificationCancel(v5);

    v6 = *(v0 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  sub_1CFD00254(v6, *(v0 + 40));
  return v0;
}

uint64_t SummarizationFeedbackClient.__deallocating_deinit()
{
  SummarizationFeedbackClient.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1CFCF3D40()
{
  OUTLINED_FUNCTION_18_1();
  v1[120] = v0;
  v1[119] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB0, &unk_1CFD4BF40);
  OUTLINED_FUNCTION_6_2(v3);
  v5 = *(v4 + 64);
  v1[121] = OUTLINED_FUNCTION_130();
  v1[122] = swift_task_alloc();
  v6 = type metadata accessor for MessageEntity();
  v1[123] = v6;
  OUTLINED_FUNCTION_18_2(v6);
  v1[124] = v7;
  v9 = *(v8 + 64);
  v1[125] = OUTLINED_FUNCTION_26_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DA0, &unk_1CFD4BD68);
  v1[126] = v10;
  OUTLINED_FUNCTION_6_2(v10);
  v12 = *(v11 + 64);
  v1[127] = OUTLINED_FUNCTION_130();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EB8, &unk_1CFD4BF50);
  OUTLINED_FUNCTION_6_2(v13);
  v15 = *(v14 + 64);
  v1[132] = OUTLINED_FUNCTION_26_0();
  v16 = type metadata accessor for SummarizableItem();
  v1[133] = v16;
  OUTLINED_FUNCTION_18_2(v16);
  v1[134] = v17;
  v19 = *(v18 + 64);
  v1[135] = OUTLINED_FUNCTION_130();
  v1[136] = swift_task_alloc();
  v20 = type metadata accessor for SummarizationFeedback.MailThreadFeedback(0);
  v1[137] = v20;
  OUTLINED_FUNCTION_6_2(v20);
  v22 = *(v21 + 64);
  v1[138] = OUTLINED_FUNCTION_26_0();
  v23 = type metadata accessor for MailEntity(0);
  OUTLINED_FUNCTION_18_2(v23);
  v1[139] = v24;
  v26 = *(v25 + 64);
  v1[140] = OUTLINED_FUNCTION_130();
  v1[141] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D98, &unk_1CFD50A10);
  v1[142] = v27;
  OUTLINED_FUNCTION_6_2(v27);
  v29 = *(v28 + 64);
  v1[143] = OUTLINED_FUNCTION_130();
  v1[144] = swift_task_alloc();
  v1[145] = swift_task_alloc();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v30 = sub_1CFD48BB8();
  v1[149] = v30;
  OUTLINED_FUNCTION_18_2(v30);
  v1[150] = v31;
  v33 = *(v32 + 64);
  v1[151] = OUTLINED_FUNCTION_26_0();
  v34 = type metadata accessor for EntityAttachment();
  v1[152] = v34;
  OUTLINED_FUNCTION_18_2(v34);
  v1[153] = v35;
  v37 = *(v36 + 64);
  v1[154] = OUTLINED_FUNCTION_130();
  v1[155] = swift_task_alloc();
  v38 = type metadata accessor for NotificationEntity();
  v1[156] = v38;
  OUTLINED_FUNCTION_18_2(v38);
  v1[157] = v39;
  v41 = *(v40 + 64);
  v1[158] = OUTLINED_FUNCTION_130();
  v1[159] = swift_task_alloc();
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EC0, &unk_1CFD4BF60);
  OUTLINED_FUNCTION_6_2(v42);
  v44 = *(v43 + 64);
  v1[162] = OUTLINED_FUNCTION_26_0();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2DA8, qword_1CFD4BD78);
  v1[163] = v45;
  OUTLINED_FUNCTION_6_2(v45);
  v47 = *(v46 + 64);
  v1[164] = OUTLINED_FUNCTION_130();
  v1[165] = swift_task_alloc();
  v1[166] = swift_task_alloc();
  v1[167] = swift_task_alloc();
  v1[168] = swift_task_alloc();
  v1[169] = swift_task_alloc();
  v1[170] = swift_task_alloc();
  v1[171] = swift_task_alloc();
  v48 = type metadata accessor for ModelInputContentKind(0);
  v1[172] = v48;
  OUTLINED_FUNCTION_6_2(v48);
  v50 = *(v49 + 64);
  v1[173] = OUTLINED_FUNCTION_26_0();
  v51 = type metadata accessor for SummarizationFeedback.UIKind(0);
  v1[174] = v51;
  OUTLINED_FUNCTION_6_2(v51);
  v53 = *(v52 + 64);
  v1[175] = OUTLINED_FUNCTION_130();
  v1[176] = swift_task_alloc();
  v1[177] = swift_task_alloc();
  v1[178] = swift_task_alloc();
  v1[179] = swift_task_alloc();
  v1[180] = swift_task_alloc();
  v1[181] = swift_task_alloc();
  v54 = type metadata accessor for SummarizationFeedback(0);
  v1[182] = v54;
  OUTLINED_FUNCTION_6_2(v54);
  v56 = *(v55 + 64);
  v1[183] = OUTLINED_FUNCTION_130();
  v1[184] = swift_task_alloc();
  v57 = sub_1CFD48E38();
  v1[185] = v57;
  OUTLINED_FUNCTION_18_2(v57);
  v1[186] = v58;
  v60 = *(v59 + 64);
  v1[187] = OUTLINED_FUNCTION_130();
  v1[188] = swift_task_alloc();
  v1[189] = swift_task_alloc();
  v1[190] = swift_task_alloc();
  v1[191] = swift_task_alloc();
  v1[192] = swift_task_alloc();
  v1[193] = swift_task_alloc();
  v1[194] = swift_task_alloc();
  v1[195] = swift_task_alloc();
  v1[196] = swift_task_alloc();
  v1[197] = swift_task_alloc();
  v1[198] = swift_task_alloc();
  v61 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v61, v62, v63);
}

uint64_t sub_1CFCF433C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_187();
  v13 = v12[198];
  v14 = v12[186];
  v15 = v12[185];
  v16 = v12[184];
  v17 = v12[119];
  v18 = sub_1CFD08CC4();
  v12[199] = v18;
  v19 = *(v14 + 16);
  v12[200] = v19;
  v12[201] = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v20 = OUTLINED_FUNCTION_71();
  v19(v20);
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_140();
  sub_1CFCFFF3C();
  v21 = sub_1CFD48E18();
  v22 = sub_1CFD492F8();
  v23 = OUTLINED_FUNCTION_194(v22);
  v24 = v12[198];
  v25 = v12[186];
  v26 = v12[185];
  v27 = v12[184];
  v346 = v19;
  v350 = v18;
  if (v23)
  {
    v28 = v12[183];
    v29 = v12[182];
    v30 = swift_slowAlloc();
    v338 = v26;
    v31 = swift_slowAlloc();
    *&v359 = v31;
    *v30 = 136315138;
    OUTLINED_FUNCTION_12_2();
    sub_1CFCFFF3C();
    v32 = sub_1CFD48FF8();
    v34 = v33;
    OUTLINED_FUNCTION_26_1();
    sub_1CFCF0B10(v27, v35);
    v36 = sub_1CFCFE9A4(v32, v34, &v359);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_1CFCD7000, v21, v22, "SummarizationFeedbackClient: Starting request to send feedback: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_121();

    v37 = *(v25 + 8);
    v37(v24, v338);
  }

  else
  {

    OUTLINED_FUNCTION_26_1();
    sub_1CFCF0B10(v27, v38);
    v37 = *(v25 + 8);
    v37(v24, v26);
  }

  v39 = v12[181];
  v40 = v12[180];
  v41 = v12[174];
  v42 = v12[119];
  *(v12 + 215) = *(v12[182] + 24);
  sub_1CFCFFF3C();
  OUTLINED_FUNCTION_71();
  sub_1CFCFFF3C();
  OUTLINED_FUNCTION_51_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v97 = v12[180];
      v98 = *v97;
      v12[211] = v97[1];
      type metadata accessor for ModelInputContentBuilderClient();
      v99 = ModelInputContentBuilderClient.__allocating_init()();
      v12[212] = v99;
      *(v12 + 105) = 0u;
      *(v12 + 428) = 0;
      OUTLINED_FUNCTION_181(v99);
      v101 = *(v100 + 112);
      v354 = v101 + *v101;
      v102 = v101[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_19_1();
      v12[213] = v103;
      *v103 = v104;
      v103[1] = sub_1CFCF8AB0;
      v105 = v12[131];
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_52_0();

      __asm { BRAA            X4, X16 }

      return result;
    case 2u:
    case 3u:
      v43 = v12[181];
      v44 = v12[180];
      v45 = v12[179];
      v46 = v12[174];
      OUTLINED_FUNCTION_0_4();
      sub_1CFCF0B10(v47, v48);
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_71();
      sub_1CFCFFF3C();
      OUTLINED_FUNCTION_51_0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 3)
      {
        v108 = v12[179];
        v109 = *v108;
        v12[205] = v108[1];
        type metadata accessor for ModelInputContentBuilderClient();
        v110 = ModelInputContentBuilderClient.__allocating_init()();
        v12[206] = v110;
        *(v12 + 111) = 0u;
        *(v12 + 452) = 0;
        OUTLINED_FUNCTION_181(v110);
        v112 = *(v111 + 128);
        v355 = v112 + *v112;
        v113 = v112[1];
        swift_task_alloc();
        OUTLINED_FUNCTION_19_1();
        v12[207] = v114;
        *v114 = v115;
        v114[1] = sub_1CFCF737C;
        v116 = v12[170];
        OUTLINED_FUNCTION_138();
        OUTLINED_FUNCTION_52_0();

        __asm { BRAA            X4, X16 }
      }

      if (EnumCaseMultiPayload == 2)
      {
        v50 = v12[179];
        v51 = *v50;
        v12[202] = v50[1];
        type metadata accessor for ModelInputContentBuilderClient();
        v52 = ModelInputContentBuilderClient.__allocating_init()();
        v12[203] = v52;
        *(v12 + 57) = 0u;
        *(v12 + 464) = 0;
        OUTLINED_FUNCTION_181(v52);
        v54 = *(v53 + 120);
        v351 = v54 + *v54;
        v55 = v54[1];
        swift_task_alloc();
        OUTLINED_FUNCTION_19_1();
        v12[204] = v56;
        *v56 = v57;
        v56[1] = sub_1CFCF5BA8;
        v58 = v12[170];
        OUTLINED_FUNCTION_159();
        OUTLINED_FUNCTION_52_0();

        __asm { BRAA            X4, X16 }
      }

      v119 = v12[181];
      v120 = v12[178];
      v346(v12[197], v350, v12[185]);
      OUTLINED_FUNCTION_1_5();
      OUTLINED_FUNCTION_51_0();
      sub_1CFCFFF3C();
      v121 = sub_1CFD48E18();
      v122 = sub_1CFD492E8();
      v123 = OUTLINED_FUNCTION_194(v122);
      v124 = v12[197];
      v125 = v12[186];
      v126 = v12[185];
      v127 = v12[181];
      v128 = v12[178];
      if (v123)
      {
        v356 = v12[186];
        v129 = v12[177];
        v130 = v12[174];
        v348 = v12[197];
        v131 = swift_slowAlloc();
        v344 = v126;
        v132 = swift_slowAlloc();
        *&v359 = v132;
        *v131 = 136315138;
        OUTLINED_FUNCTION_1_5();
        sub_1CFCFFF3C();
        OUTLINED_FUNCTION_157();
        sub_1CFD48FF8();
        sub_1CFCF0B10(v128, type metadata accessor for SummarizationFeedback.UIKind);
        v133 = OUTLINED_FUNCTION_71();
        v136 = sub_1CFCFE9A4(v133, v134, v135);

        *(v131 + 4) = v136;
        _os_log_impl(&dword_1CFCD7000, v121, v122, "Programming error. Hit unexpected case in switch: %s. Unable to send feedback.", v131, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v132);
        OUTLINED_FUNCTION_77();
        OUTLINED_FUNCTION_121();

        v37(v348, v344);
        v137 = v127;
        v138 = type metadata accessor for SummarizationFeedback.UIKind;
      }

      else
      {

        sub_1CFCF0B10(v128, type metadata accessor for SummarizationFeedback.UIKind);
        v37(v124, v126);
        v137 = OUTLINED_FUNCTION_27();
      }

      sub_1CFCF0B10(v137, v138);
      v156 = v12[179];
      goto LABEL_99;
    case 4u:
      v61 = v12[180];
      v62 = v12[173];
      v63 = v12[172];
      v64 = v12[138];
      v65 = v12;
      v66 = v12[119];
      sub_1CFCFFDE8();
      OUTLINED_FUNCTION_71();
      swift_storeEnumTagMultiPayload();
      v67 = *v64;
      v68 = *(*v64 + 16);
      v341 = *v66;
      v343 = v66[1];
      result = sub_1CFCF0A3C();
      v339 = result;
      v70 = MEMORY[0x1E69E7CC0];
      v347 = v68;
      v352 = v65;
      if (v68)
      {
        v71 = v65[134];
        v72 = v65[133];
        *&v359 = MEMORY[0x1E69E7CC0];
        sub_1CFCFF25C(0, v68, 0);
        v73 = v359;
        OUTLINED_FUNCTION_43_1();
        v336 = v67;
        v75 = v67 + v74;
        v76 = *(v71 + 72);
        v77 = v65;
        do
        {
          v78 = v77[136];
          OUTLINED_FUNCTION_84();
          sub_1CFCFFF3C();
          v79 = (v78 + *(v72 + 48));
          if (v79[1])
          {
            v80 = *v79;
            v81 = sub_1CFD49048();
          }

          else
          {
            v81 = 0;
          }

          result = OUTLINED_FUNCTION_110(v77[136]);
          *&v359 = v73;
          v83 = *(v73 + 16);
          v82 = *(v73 + 24);
          v84 = v83 + 1;
          if (v83 >= v82 >> 1)
          {
            v85 = OUTLINED_FUNCTION_72(v82);
            result = sub_1CFCFF25C(v85, v83 + 1, 1);
            v73 = v359;
          }

          *(v73 + 16) = v84;
          *(v73 + 8 * v83 + 32) = v81;
          v75 += v76;
          --v68;
        }

        while (v68);
        v67 = v336;
      }

      else
      {
        v84 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!v84)
        {

          v139 = 0;
          v77 = v65;
          goto LABEL_47;
        }

        v73 = MEMORY[0x1E69E7CC0];
        v77 = v65;
      }

      v139 = 0;
      v140 = 32;
      break;
    default:
      v86 = v12[180];
      v87 = *v86;
      v12[208] = v86[1];
      type metadata accessor for ModelInputContentBuilderClient();
      v88 = ModelInputContentBuilderClient.__allocating_init()();
      v12[209] = v88;
      *(v12 + 54) = 0u;
      *(v12 + 440) = 0;
      OUTLINED_FUNCTION_181(v88);
      v90 = *(v89 + 96);
      v353 = v90 + *v90;
      v91 = v90[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_19_1();
      v12[210] = v92;
      *v92 = v93;
      v92[1] = sub_1CFCF7498;
      v94 = v12[148];
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_52_0();

      __asm { BRAA            X4, X16 }

      return result;
  }

  do
  {
    v141 = *(v73 + v140);
    v142 = __OFADD__(v139, v141);
    v139 += v141;
    if (v142)
    {
      __break(1u);
      goto LABEL_117;
    }

    v140 += 8;
    --v84;
  }

  while (v84);

  v143 = v347;
  if (v347)
  {
    v144 = v77[135];
    v145 = v77[134];
    *&v359 = v70;
    sub_1CFCFF25C(0, v347, 0);
    v70 = v359;
    OUTLINED_FUNCTION_43_1();
    v147 = v67 + v146;
    v148 = *(v145 + 72);
    do
    {
      v149 = v352[135];
      OUTLINED_FUNCTION_84();
      sub_1CFCFFF3C();
      if (*(v144 + 40))
      {
        v150 = *(v144 + 32);
        v151 = sub_1CFD49048();
      }

      else
      {
        v151 = 0;
      }

      result = OUTLINED_FUNCTION_110(v352[135]);
      *&v359 = v70;
      v153 = *(v70 + 16);
      v152 = *(v70 + 24);
      v154 = v153 + 1;
      if (v153 >= v152 >> 1)
      {
        v155 = OUTLINED_FUNCTION_72(v152);
        result = sub_1CFCFF25C(v155, v153 + 1, 1);
        v70 = v359;
      }

      *(v70 + 16) = v154;
      *(v70 + 8 * v153 + 32) = v151;
      v147 += v148;
      --v143;
    }

    while (v143);
    v77 = v352;
    goto LABEL_48;
  }

LABEL_47:
  v154 = *(v70 + 16);
  if (v154)
  {
LABEL_48:
    v157 = 0;
    v158 = 32;
    while (1)
    {
      v159 = *(v70 + v158);
      v142 = __OFADD__(v157, v159);
      v157 += v159;
      if (v142)
      {
        break;
      }

      v158 += 8;
      if (!--v154)
      {
        goto LABEL_51;
      }
    }

LABEL_117:
    __break(1u);
    return result;
  }

  v157 = 0;
LABEL_51:
  v160 = v77;
  v161 = v77[138];
  v162 = v160[137];
  v163 = v160[132];

  v164 = *(v162 + 20);
  v165 = v161 + *(type metadata accessor for SummarizationResponse() + 20);
  sub_1CFD02140();
  sub_1CFD48BD8();
  v166 = OUTLINED_FUNCTION_98();
  if (__swift_getEnumTagSinglePayload(v166, 1, v70) == 1)
  {
    sub_1CFCE3050(v160[132], &qword_1EC4F2EB8, &unk_1CFD4BF50);
    v167 = 0;
  }

  else
  {
    v168 = v160[151];
    v169 = v160[150];
    v170 = v160[149];
    v171 = v160[132];
    sub_1CFD48B98();
    v172 = *(*(v70 - 8) + 8);
    v173 = OUTLINED_FUNCTION_183();
    v174(v173);
    v167 = sub_1CFD48BA8();
    (*(v169 + 8))(v168, v170);
  }

  v175 = v160;
  v176 = v160[138];
  v359 = xmmword_1CFD4BE30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2ED0, &unk_1CFD4BF90);
  v177 = sub_1CFD26F60();
  OUTLINED_FUNCTION_2_5();
  sub_1CFCF0B10(v176, v178);
  OUTLINED_FUNCTION_144();
  *(v160 + 42) = 0u;
  v160[86] = v347;
  *(v160 + 696) = 0;
  v160[88] = v341;
  *(v160 + 712) = 0;
  v160[90] = v343;
  *(v160 + 364) = 512;
  v160[92] = v339;
  *(v160 + 744) = 0;
  v160[94] = v139;
  *(v160 + 760) = v358;
  v160[96] = 0;
  *(v160 + 776) = 1;
  v160[98] = v157;
  *(v160 + 792) = 0;
  v160[100] = 0;
  *(v160 + 808) = 0;
  v160[102] = v167;
  *(v160 + 824) = 0;
  v160[104] = v177;
  *(v160 + 107) = 0u;
  memcpy(v160 + 63, v160 + 84, 0xA8uLL);
  v179 = sub_1CFD48F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FE0, &qword_1CFD4D040);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_19_2(inited, xmmword_1CFD4BE40);
  if (v175[64])
  {
    v181 = v175[63];
    sub_1CFD02070(0, &qword_1EC4F2FF0, 0x1E696AEC0);
    sub_1CFD020B0((v175 + 63), (v175 + 42));
    sub_1CFCF38E8();
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  OUTLINED_FUNCTION_104();
  inited[3].n128_u64[0] = v182;
  inited[3].n128_u64[1] = v183;
  inited[4].n128_u64[0] = 0xE500000000000000;
  if (v175[66])
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v184 = v175[65];
    OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_60_0();
  inited[4].n128_u64[1] = v185;
  inited[5].n128_u64[0] = v186;
  inited[5].n128_u64[1] = 0xE700000000000000;
  if (v175[68])
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v187 = v175[67];
    OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_59_0();
  inited[6].n128_u64[0] = v188;
  inited[6].n128_u64[1] = v189;
  inited[7].n128_u64[0] = 0xE800000000000000;
  if (v175[70])
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v190 = v175[69];
    OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_58_0();
  inited[7].n128_u64[1] = v191;
  inited[8].n128_u64[0] = v192;
  inited[8].n128_u64[1] = 0xE800000000000000;
  v193 = *(v175 + 561);
  if (v193 == 2)
  {
    v194 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v194 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  inited[9].n128_u64[0] = v194;
  inited[9].n128_u64[1] = 1684957547;
  inited[10].n128_u64[0] = 0xE400000000000000;
  if (v175[72])
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v195 = v175[71];
    OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_56_0();
  inited[10].n128_u64[1] = v196;
  inited[11].n128_u64[0] = v197;
  OUTLINED_FUNCTION_54_0();
  inited[11].n128_u64[1] = v198;
  if (v175[74])
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v199 = v175[73];
    OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_85();
  inited[12].n128_u64[0] = v200;
  inited[12].n128_u64[1] = 0xD000000000000012;
  inited[13].n128_u64[0] = v201;
  if (v175[76])
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v202 = v175[75];
    OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_55_0();
  inited[13].n128_u64[1] = v203;
  inited[14].n128_u64[0] = v204;
  OUTLINED_FUNCTION_53_0();
  inited[14].n128_u64[1] = v205;
  if (v175[78])
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v206 = v175[77];
    OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_85();
  inited[15].n128_u64[0] = v207;
  inited[15].n128_u64[1] = 0xD000000000000011;
  inited[16].n128_u64[0] = v208;
  if (v175[80])
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v209 = v175[79];
    OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_85();
  inited[16].n128_u64[1] = v210;
  inited[17].n128_u64[0] = 0xD000000000000014;
  inited[17].n128_u64[1] = v211;
  if (v175[82])
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v212 = v175[81];
    OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  v213 = v175[182];
  v214 = v175[120];
  v215 = v175[119];
  OUTLINED_FUNCTION_57_0();
  inited[18].n128_u64[0] = v216;
  inited[18].n128_u64[1] = v217;
  OUTLINED_FUNCTION_62_0();
  inited[19].n128_u64[0] = v218;
  v219 = v175[83];
  inited[19].n128_u64[1] = OUTLINED_FUNCTION_141(objc_allocWithZone(MEMORY[0x1E696AD98]));
  sub_1CFD02070(0, &qword_1EC4F2FE8, 0x1E69E58C0);
  sub_1CFD48EC8();
  v220 = sub_1CFD48EB8();

  OUTLINED_FUNCTION_27();
  AnalyticsSendEvent();

  sub_1CFD002C8((v175 + 84));
  *&v359 = sub_1CFCFEF14(884);
  *(&v359 + 1) = v221;
  v222 = MEMORY[0x1D3873940](0xD00000000000010ALL, 0x80000001CFD5DA50);
  v175[117] = (*(*v214 + 104))(v222);
  OUTLINED_FUNCTION_51_0();
  v223 = sub_1CFD49648();
  MEMORY[0x1D3873940](v223);

  v224 = MEMORY[0x1D3873940](0xD000000000000054, 0x80000001CFD5DB60);
  v175[118] = (*(*v214 + 128))(v224);
  OUTLINED_FUNCTION_51_0();
  v225 = sub_1CFD49648();
  MEMORY[0x1D3873940](v225);

  OUTLINED_FUNCTION_101();
  v226 = *(&v359 + 1);
  v175[216] = v359;
  v175[217] = v226;
  v227 = *(v213 + 28);
  *(v175 + 221) = v227;
  if (*(v215 + v227) == 1)
  {
    v228 = v175[181];
    v229 = v175[176];
    v230 = v175[174];
    OUTLINED_FUNCTION_1_5();
    sub_1CFCFFF3C();
    OUTLINED_FUNCTION_51_0();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      OUTLINED_FUNCTION_123();
      v232 = *(v231 + 1568);
      v233 = v352[185];
      v234 = v352[176];

      OUTLINED_FUNCTION_2_5();
      sub_1CFCF0B10(v234, v235);
      v236 = OUTLINED_FUNCTION_33_2();
      MEMORY[0xD000000000000010](v236);
      v12 = v352;
      v156 = v232;
      v237 = sub_1CFD48E18();
      v238 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v238);
      v239 = v352[196];
      OUTLINED_FUNCTION_38_1();
      if (!v240)
      {
        goto LABEL_98;
      }

      v241 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_66(v241);
      v244 = "Disclaimer not supported for mailThread. Not continuing with feedback.";
      goto LABEL_97;
    }

    v260 = v175[176];
    OUTLINED_FUNCTION_0_4();
    sub_1CFCF0B10(v261, v262);
    v263 = v352[201];
    v264 = v352[200];
    v229 = v352[199];
    v265 = v352[191];
    v266 = v352[185];

    v267 = OUTLINED_FUNCTION_33_2();
    v264(v267);
    v12 = v352;
    v156 = v265;
    v237 = sub_1CFD48E18();
    v268 = sub_1CFD492E8();
    OUTLINED_FUNCTION_49_0(v268);
    v269 = v352[191];
    OUTLINED_FUNCTION_38_1();
    if (!v270)
    {
      goto LABEL_98;
    }
  }

  else
  {
    OUTLINED_FUNCTION_149(v227);
    if ((v245 & 1) == 0)
    {
      v284 = v175[215];
      v285 = v175;
      v286 = v175[201];
      v287 = v285[200];
      v288 = v285[199];
      v289 = v285[190];
      v290 = v285[185];

      v287(v289, v288, v290);
      sub_1CFD48E18();
      v291 = sub_1CFD492F8();
      if (OUTLINED_FUNCTION_95(v291))
      {
        v292 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_119(v292);
        OUTLINED_FUNCTION_46_1(&dword_1CFCD7000, v293, v294, "Submitting feedback to FeedbackFramework");
        OUTLINED_FUNCTION_86();
      }

      OUTLINED_FUNCTION_164();
      v295 = *(v286 + 8);
      v296 = OUTLINED_FUNCTION_51_0();
      v297(v296);
      v298 = swift_task_alloc();
      v352[220] = v298;
      *v298 = v352;
      OUTLINED_FUNCTION_4_3(v298);
      v299 = v352[173];
      OUTLINED_FUNCTION_99(v352[119]);
      OUTLINED_FUNCTION_52_0();

      return sub_1CFCFC0B8();
    }

    v246 = v175[181];
    v247 = v175[175];
    v229 = v175[174];
    OUTLINED_FUNCTION_1_5();
    sub_1CFCFFF3C();
    OUTLINED_FUNCTION_71();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v248 = v175[217];
      v249 = v175[215];
      OUTLINED_FUNCTION_123();
      v251 = *(v250 + 1512);
      v252 = v352[185];
      v253 = v352[175];

      OUTLINED_FUNCTION_2_5();
      sub_1CFCF0B10(v253, v254);
      v255 = OUTLINED_FUNCTION_33_2();
      MEMORY[0xD000000000000010](v255);
      v12 = v352;
      v156 = v251;
      v237 = sub_1CFD48E18();
      v256 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v256);
      v257 = v352[189];
      OUTLINED_FUNCTION_38_1();
      if (!v258)
      {
        goto LABEL_98;
      }

      v259 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_66(v259);
      v244 = "TTR flow not supported for mailThread. Not continuing with feedback.";
      goto LABEL_97;
    }

    v301 = v175;
    v302 = v175[215];
    v303 = v301[175];
    OUTLINED_FUNCTION_0_4();
    sub_1CFCF0B10(v304, v305);
    v306 = v301[201];
    v307 = v301[200];
    v308 = v301[199];
    v309 = v301[185];
    if (v302)
    {
      v310 = v301[215];
      v311 = v301[188];
      OUTLINED_FUNCTION_70();
      v307();
      sub_1CFD48E18();
      v312 = sub_1CFD492F8();
      if (OUTLINED_FUNCTION_109_0(v312))
      {
        v313 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_134(v313);
        OUTLINED_FUNCTION_50_0();
        _os_log_impl(v314, v315, v316, v317, v318, 2u);
        OUTLINED_FUNCTION_94();
      }

      OUTLINED_FUNCTION_163();
      v319 = OUTLINED_FUNCTION_106();
      v320(v319);
      v321 = swift_task_alloc();
      v301[221] = v321;
      *v321 = v301;
      OUTLINED_FUNCTION_5_3(v321);
      OUTLINED_FUNCTION_42_1();
      OUTLINED_FUNCTION_52_0();

      return sub_1CFCFC664();
    }

    v323 = v301[217];
    v324 = v301[187];

    v325 = OUTLINED_FUNCTION_39_0();
    (v307)(v325);
    v237 = sub_1CFD48E18();
    v326 = sub_1CFD492E8();
    v327 = OUTLINED_FUNCTION_49_0(v326);
    v328 = v301[187];
    v215 = v301[186];
    v329 = v301[185];
    v156 = v301[181];
    v229 = v301[173];
    v12 = v301;
    if (!v327)
    {
      goto LABEL_98;
    }
  }

  v271 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_66(v271);
  v244 = "Missing personal content. Not continuing with feedback.";
LABEL_97:
  OUTLINED_FUNCTION_47_1(&dword_1CFCD7000, v242, v243, v244);
  OUTLINED_FUNCTION_77();
LABEL_98:

  v272 = *(v215 + 8);
  v273 = OUTLINED_FUNCTION_107();
  v274(v273);
  OUTLINED_FUNCTION_9_5();
  sub_1CFCF0B10(v229, v275);
LABEL_99:
  sub_1CFCF0B10(v156, type metadata accessor for SummarizationFeedback.UIKind);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_45_1();
  v330 = v12[138];
  v331 = v12[136];
  v332 = v12[135];
  v333 = v12[132];
  v334 = v12[131];
  v335 = v12[130];
  v337 = v12[129];
  v340 = v12[128];
  v342 = v12[127];
  v345 = v12[125];
  v349 = v12[122];
  v357 = v12[121];

  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_52_0();

  return v277(v276, v277, v278, v279, v280, v281, v282, v283, a9, a10, a11, a12);
}

uint64_t sub_1CFCF5BA8()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v2 = v1[204];
  v3 = v1[203];
  v4 = v1[202];
  v5 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CFCF5CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_187();
  v13 = *(v12 + 1384);
  v14 = *(v12 + 1368);
  v15 = *(v12 + 1360);
  v16 = *(v12 + 1352);
  v406 = *(v12 + 1304);
  v410 = *(v12 + 1376);
  v412 = *(v12 + 1296);
  v414 = *(v12 + 1248);
  v17 = *(v12 + 952);
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_76();
  sub_1CFD020E8();
  v18 = *(v14 + 64);
  *(swift_task_alloc() + 16) = v17;
  sub_1CFCFAEC8();
  v20 = v19;

  v21 = v12;

  *(v14 + 64) = v20;
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  v22 = ModelContentInput.feedbackString()();
  OUTLINED_FUNCTION_81();
  sub_1CFCE3050(v23, v24, v25);
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  sub_1CFD21098();
  v27 = v26;
  OUTLINED_FUNCTION_81();
  sub_1CFCE3050(v28, v29, v30);
  sub_1CFCFB400(v27, v412);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v412, 1, v414);
  v32 = *(v12 + 1296);
  if (EnumTagSinglePayload == 1)
  {
    sub_1CFCE3050(*(v12 + 1296), &qword_1EC4F2EC0, &unk_1CFD4BF60);
    v404 = 0;
    v407 = 0;
  }

  else
  {
    v33 = (v32 + *(*(v12 + 1248) + 32));
    v404 = v33[1];
    v407 = *v33;

    OUTLINED_FUNCTION_3_4();
    sub_1CFCF0B10(v32, v34);
  }

  v35 = *(v12 + 860);
  object = v21[85]._object;
  countAndFlagsBits = v21[84]._countAndFlagsBits;
  v38 = v21[83]._object;
  v39 = v21[81]._object;
  v40 = v21[59]._object;
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  sub_1CFD21098();
  v42 = v41;
  OUTLINED_FUNCTION_81();
  sub_1CFCE3050(v43, v44, v45);
  v398 = *(v42 + 16);

  v396 = *v40;
  v400 = v40[1];
  v402 = object[v39[19]];
  v394 = sub_1CFCF0A3C();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  OUTLINED_FUNCTION_168();
  v47 = v46;
  OUTLINED_FUNCTION_81();
  sub_1CFCE3050(v48, v49, v50);
  v51 = *(v47 + 16);
  if (v51)
  {
    v52 = v21[78]._object;
    v53 = v21[78]._countAndFlagsBits;
    *&v424 = MEMORY[0x1E69E7CC0];
    sub_1CFCFF25C(0, v51, 0);
    v54 = v424;
    v55 = *(v52 + 80);
    OUTLINED_FUNCTION_73();
    v57 = v47 + v56;
    v58 = v52[9];
    do
    {
      v59 = v21[80]._object;
      OUTLINED_FUNCTION_8_4();
      sub_1CFCFFF3C();
      v60 = &v59[*(v53 + 36)];
      if (v60[1])
      {
        v61 = *v60;
        v62 = sub_1CFD49048();
      }

      else
      {
        v62 = 0;
      }

      v63 = v21[80]._object;
      OUTLINED_FUNCTION_3_4();
      sub_1CFCF0B10(v64, v65);
      *&v424 = v54;
      v67 = v54[2];
      v66 = v54[3];
      if (v67 >= v66 >> 1)
      {
        v68 = OUTLINED_FUNCTION_17_4(v66);
        sub_1CFCFF25C(v68, v69, v70);
        v54 = v424;
      }

      v54[2] = v67 + 1;
      v54[v67 + 4] = v62;
      v57 += v58;
      --v51;
    }

    while (v51);
  }

  else
  {

    v54 = MEMORY[0x1E69E7CC0];
  }

  v72 = v54[2];
  if (v72)
  {
    v73 = 0;
    v74 = v54 + 4;
    while (1)
    {
      v75 = *v74++;
      v76 = __OFADD__(v73, v75);
      v73 += v75;
      if (v76)
      {
        break;
      }

      if (!--v72)
      {
        goto LABEL_20;
      }
    }

LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v73 = 0;
LABEL_20:
  v392 = v73;
  v77 = v21[85]._object;
  v78 = v21[83]._countAndFlagsBits;
  v79 = v21[81]._object;

  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  OUTLINED_FUNCTION_168();
  v81 = v80;
  OUTLINED_FUNCTION_81();
  sub_1CFCE3050(v82, v83, v84);
  if (*(v81 + 16))
  {
    v85 = v21[78]._object;
    v86 = v21[78]._countAndFlagsBits;
    OUTLINED_FUNCTION_88(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_43_1();
    v87 = v85[9];
    do
    {
      v88 = v21[80]._countAndFlagsBits;
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_157();
      sub_1CFCFFF3C();
      v89 = (v88 + *(v86 + 40));
      if (v89[1])
      {
        v90 = *v89;
        v91 = sub_1CFD49048();
      }

      else
      {
        v91 = 0;
      }

      v92 = v21[80]._countAndFlagsBits;
      OUTLINED_FUNCTION_3_4();
      sub_1CFCF0B10(v93, v94);
      v95 = v424;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = *(v424 + 16);
        v97 = OUTLINED_FUNCTION_61_0();
        sub_1CFCFF25C(v97, v98, v99);
        v95 = v424;
      }

      v101 = v95[2];
      v100 = v95[3];
      if (v101 >= v100 >> 1)
      {
        v103 = OUTLINED_FUNCTION_17_4(v100);
        sub_1CFCFF25C(v103, v104, v105);
        v95 = v424;
      }

      v95[2] = v101 + 1;
      v95[v101 + 4] = v91;
      OUTLINED_FUNCTION_174();
    }

    while (!v102);
  }

  else
  {

    v95 = MEMORY[0x1E69E7CC0];
  }

  v106 = v95[2];
  if (v106)
  {
    v107 = 0;
    v108 = v95 + 4;
    while (1)
    {
      v109 = *v108++;
      v76 = __OFADD__(v107, v109);
      v107 += v109;
      if (v76)
      {
        break;
      }

      if (!--v106)
      {
        goto LABEL_39;
      }
    }

LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
    return result;
  }

  v107 = 0;
LABEL_39:
  v110 = v21[85]._object;
  v111 = v21[82]._object;
  v112 = v21[81]._object;

  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  OUTLINED_FUNCTION_168();
  v114 = v113;
  OUTLINED_FUNCTION_81();
  sub_1CFCE3050(v115, v116, v117);
  v415 = v21;
  if (*(v114 + 16))
  {
    v118 = v21[78]._object;
    v119 = v21[78]._countAndFlagsBits;
    OUTLINED_FUNCTION_88(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_43_1();
    v120 = v118[9];
    do
    {
      v121 = v21[79]._object;
      OUTLINED_FUNCTION_8_4();
      OUTLINED_FUNCTION_157();
      sub_1CFCFFF3C();
      v122 = &v121[*(v119 + 44)];
      if (v122[1])
      {
        v123 = *v122;
        v124 = sub_1CFD49048();
      }

      else
      {
        v124 = 0;
      }

      v125 = v21[79]._object;
      OUTLINED_FUNCTION_3_4();
      sub_1CFCF0B10(v126, v127);
      v128 = v424;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = *(v424 + 16);
        v130 = OUTLINED_FUNCTION_61_0();
        sub_1CFCFF25C(v130, v131, v132);
        v128 = v424;
      }

      v134 = v128[2];
      v133 = v128[3];
      if (v134 >= v133 >> 1)
      {
        v135 = OUTLINED_FUNCTION_17_4(v133);
        sub_1CFCFF25C(v135, v136, v137);
        v128 = v424;
      }

      v128[2] = v134 + 1;
      v128[v134 + 4] = v124;
      OUTLINED_FUNCTION_174();
      v21 = v415;
    }

    while (!v102);
  }

  else
  {

    v128 = MEMORY[0x1E69E7CC0];
  }

  v138 = v128[2];
  if (v138)
  {
    v139 = 0;
    v140 = v128 + 4;
    while (1)
    {
      v141 = *v140++;
      v76 = __OFADD__(v139, v141);
      v139 += v141;
      if (v76)
      {
        goto LABEL_160;
      }

      if (!--v138)
      {
        goto LABEL_58;
      }
    }
  }

  v139 = 0;
LABEL_58:
  v142 = v21[85]._object;
  v143 = v21[82]._countAndFlagsBits;
  v144 = v21[81]._object;

  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  OUTLINED_FUNCTION_168();
  v146 = v145;
  OUTLINED_FUNCTION_81();
  sub_1CFCE3050(v147, v148, v149);
  v150 = *(v146 + 16);
  if (v150)
  {
    v151 = v21[78]._object;
    v412 = v21[78]._countAndFlagsBits;
    *&v424 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_25_2();
    sub_1CFCFE374(v150, v152);
    OUTLINED_FUNCTION_43_1();
    v154 = v146 + v153;
    v155 = v151[9];
    v156 = v424;
    do
    {
      v157 = v415[79]._countAndFlagsBits;
      OUTLINED_FUNCTION_8_4();
      sub_1CFCFFF3C();
      v158 = *(v157 + *(v412 + 76));

      OUTLINED_FUNCTION_3_4();
      sub_1CFCF0B10(v157, v159);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v160 = *(v156 + 16);
        v161 = OUTLINED_FUNCTION_61_0();
        sub_1CFCFF23C(v161, v162, v163);
        v156 = v424;
      }

      v165 = *(v156 + 16);
      v164 = *(v156 + 24);
      if (v165 >= v164 >> 1)
      {
        v166 = OUTLINED_FUNCTION_17_4(v164);
        sub_1CFCFF23C(v166, v167, v168);
        v156 = v424;
      }

      *(v156 + 16) = v165 + 1;
      *(v156 + 8 * v165 + 32) = v158;
      v154 += v155;
      --v150;
    }

    while (v150);

    v21 = v415;
  }

  else
  {

    v156 = MEMORY[0x1E69E7CC0];
  }

  v169 = 0;
  v170 = *(v156 + 16);
  v171 = MEMORY[0x1E69E7CC0];
  while (v170 != v169)
  {
    if (v169 >= *(v156 + 16))
    {
      __break(1u);
      goto LABEL_158;
    }

    v172 = v169 + 1;
    v173 = *(v156 + 8 * v169 + 32);
    *&v424 = v171;

    result = sub_1CFCFF8DC(v174);
    v169 = v172;
  }

  v175 = *(v171 + 16);
  if (v175)
  {
    v176 = v21[76]._object;
    v177 = (v21[77]._object + *(v21[76]._countAndFlagsBits + 32));
    OUTLINED_FUNCTION_135();
    v178 = MEMORY[0x1E69E7CC0];
    do
    {
      v179 = v415[77]._object;
      OUTLINED_FUNCTION_24_2();
      sub_1CFCFFF3C();
      v180 = v415[77]._object;
      if (v177[1])
      {
        v181 = *v177;
        v182 = sub_1CFD49048();
        OUTLINED_FUNCTION_7_4();
        sub_1CFCF0B10(v180, v183);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v187 = *(v178 + 2);
          v188 = OUTLINED_FUNCTION_118();
          v178 = sub_1CFCFE50C(v188, v189, v190, v178);
        }

        v185 = *(v178 + 2);
        v184 = *(v178 + 3);
        if (v185 >= v184 >> 1)
        {
          OUTLINED_FUNCTION_72(v184);
          OUTLINED_FUNCTION_93();
          v178 = sub_1CFCFE50C(v191, v192, v193, v178);
        }

        *(v178 + 2) = v185 + 1;
        *&v178[8 * v185 + 32] = v182;
      }

      else
      {
        OUTLINED_FUNCTION_7_4();
        sub_1CFCF0B10(v180, v186);
      }

      v156 += v412;
      --v175;
    }

    while (v175);

    v21 = v415;
  }

  else
  {

    v178 = MEMORY[0x1E69E7CC0];
  }

  v194 = *(v178 + 2);
  if (v194)
  {
    v195 = 0;
    v196 = (v178 + 32);
    while (1)
    {
      v197 = *v196++;
      v76 = __OFADD__(v195, v197);
      v195 += v197;
      if (v76)
      {
        goto LABEL_161;
      }

      if (!--v194)
      {
        goto LABEL_89;
      }
    }
  }

  v195 = 0;
LABEL_89:
  v198 = v21[85]._object;
  v199 = v21[81]._object;

  v200 = v199[17];
  v201 = sub_1CFD48BD8();
  v202 = __swift_getEnumTagSinglePayload(v198 + v200, 1, v201);
  v203 = 0;
  if (!v202)
  {
    v204 = v21[75]._object;
    v205 = v415[75]._countAndFlagsBits;
    v206 = v415[74]._object;
    sub_1CFD48B98();
    v203 = sub_1CFD48BA8();
    (*(v205 + 8))(v204, v206);
    v21 = v415;
  }

  v207 = v21[85]._object;
  v424 = *(v207 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2ED8, &unk_1CFD53AD0);
  sub_1CFD26F60();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_144();
  sub_1CFCE3050(v207, &qword_1EC4F2DA8, qword_1CFD4BD78);
  v21[42]._countAndFlagsBits = v407;
  v21[42]._object = v404;
  v21[43]._countAndFlagsBits = v398;
  LOBYTE(v21[43]._object) = v417;
  v21[44]._countAndFlagsBits = v396;
  LOBYTE(v21[44]._object) = v418;
  v21[45]._countAndFlagsBits = v400;
  LOBYTE(v21[45]._object) = v419;
  BYTE1(v21[45]._object) = v402;
  v21[46]._countAndFlagsBits = v394;
  LOBYTE(v21[46]._object) = v420;
  v21[47]._countAndFlagsBits = v392;
  LOBYTE(v21[47]._object) = v421;
  v21[48]._countAndFlagsBits = v107;
  LOBYTE(v21[48]._object) = v422;
  v21[49]._countAndFlagsBits = v139;
  LOBYTE(v21[49]._object) = v423;
  v21[50]._countAndFlagsBits = v195;
  LOBYTE(v21[50]._object) = 0;
  v21[51]._countAndFlagsBits = v203;
  LOBYTE(v21[51]._object) = v202 != 0;
  v21[52]._countAndFlagsBits = &v424;
  v21[107] = v22;
  memcpy(&v21[31]._object, &v21[42], 0xA8uLL);
  v208 = sub_1CFD48F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FE0, &qword_1CFD4D040);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_19_2(inited, xmmword_1CFD4BE40);
  if (v21[32]._countAndFlagsBits)
  {
    v210 = v21[31]._object;
    sub_1CFD02070(0, &qword_1EC4F2FF0, 0x1E696AEC0);
    sub_1CFD020B0(&v21[31]._object, &v21[21]);
    OUTLINED_FUNCTION_27();
    sub_1CFCF38E8();
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  OUTLINED_FUNCTION_104();
  inited[3].n128_u64[0] = v211;
  inited[3].n128_u64[1] = v212;
  inited[4].n128_u64[0] = 0xE500000000000000;
  if (v21[33]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v213 = v21[32]._object;
    OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_60_0();
  inited[4].n128_u64[1] = v214;
  inited[5].n128_u64[0] = v215;
  inited[5].n128_u64[1] = 0xE700000000000000;
  if (v21[34]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v216 = v21[33]._object;
    OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_59_0();
  inited[6].n128_u64[0] = v217;
  inited[6].n128_u64[1] = v218;
  inited[7].n128_u64[0] = 0xE800000000000000;
  if (v21[35]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v219 = v21[34]._object;
    OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_58_0();
  inited[7].n128_u64[1] = v220;
  inited[8].n128_u64[0] = v221;
  inited[8].n128_u64[1] = 0xE800000000000000;
  v222 = BYTE1(v21[35]._countAndFlagsBits);
  if (v222 == 2)
  {
    v223 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v223 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  inited[9].n128_u64[0] = v223;
  inited[9].n128_u64[1] = 1684957547;
  inited[10].n128_u64[0] = 0xE400000000000000;
  if (v21[36]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v224 = v21[35]._object;
    OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_56_0();
  inited[10].n128_u64[1] = v225;
  inited[11].n128_u64[0] = v226;
  OUTLINED_FUNCTION_54_0();
  inited[11].n128_u64[1] = v227;
  if (v21[37]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v228 = v21[36]._object;
    OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_85();
  inited[12].n128_u64[0] = v229;
  inited[12].n128_u64[1] = 0xD000000000000012;
  inited[13].n128_u64[0] = v230;
  if (v21[38]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v231 = v21[37]._object;
    OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_55_0();
  inited[13].n128_u64[1] = v232;
  inited[14].n128_u64[0] = v233;
  OUTLINED_FUNCTION_53_0();
  inited[14].n128_u64[1] = v234;
  if (v21[39]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v235 = v21[38]._object;
    OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_85();
  inited[15].n128_u64[0] = v236;
  inited[15].n128_u64[1] = 0xD000000000000011;
  inited[16].n128_u64[0] = v237;
  if (v21[40]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v238 = v21[39]._object;
    OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  OUTLINED_FUNCTION_85();
  inited[16].n128_u64[1] = v239;
  inited[17].n128_u64[0] = 0xD000000000000014;
  inited[17].n128_u64[1] = v240;
  if (v21[41]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v241 = v21[40]._object;
    OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  }

  v242 = v21[91]._countAndFlagsBits;
  v243 = v21[60]._countAndFlagsBits;
  v244 = v21[59]._object;
  OUTLINED_FUNCTION_57_0();
  inited[18].n128_u64[0] = v245;
  inited[18].n128_u64[1] = v246;
  OUTLINED_FUNCTION_62_0();
  inited[19].n128_u64[0] = v247;
  v248 = v21[41]._object;
  inited[19].n128_u64[1] = OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
  sub_1CFD02070(0, &qword_1EC4F2FE8, 0x1E69E58C0);
  OUTLINED_FUNCTION_44_1();
  sub_1CFD48EC8();
  OUTLINED_FUNCTION_44_1();
  v249 = sub_1CFD48EB8();

  AnalyticsSendEvent();

  sub_1CFD002C8(&v21[42]);
  *&v424 = sub_1CFCFEF14(884);
  *(&v424 + 1) = v250;
  v251 = MEMORY[0x1D3873940](0xD00000000000010ALL, 0x80000001CFD5DA50);
  v21[58]._object = (*(*v243 + 104))(v251);
  OUTLINED_FUNCTION_51_0();
  v252 = sub_1CFD49648();
  MEMORY[0x1D3873940](v252);

  v253 = MEMORY[0x1D3873940](0xD000000000000054, 0x80000001CFD5DB60);
  v21[59]._countAndFlagsBits = (*(*v243 + 128))(v253);
  OUTLINED_FUNCTION_51_0();
  v254 = sub_1CFD49648();
  MEMORY[0x1D3873940](v254);

  OUTLINED_FUNCTION_101();
  v255 = *(&v424 + 1);
  v21[108]._countAndFlagsBits = v424;
  v21[108]._object = v255;
  v256 = *(v242 + 28);
  HIDWORD(v21[55]._countAndFlagsBits) = v256;
  if (v244[v256] == 1)
  {
    v257 = v21[90]._object;
    v258 = v21[88]._countAndFlagsBits;
    v259 = v21[87]._countAndFlagsBits;
    OUTLINED_FUNCTION_1_5();
    sub_1CFCFFF3C();
    OUTLINED_FUNCTION_71();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v244 = v21[100]._object;
      v260 = v21[100]._countAndFlagsBits;
      v261 = v21[99]._object;
      v262 = v21[98]._countAndFlagsBits;
      v263 = v21[92]._object;
      v264 = v21[88]._countAndFlagsBits;

      OUTLINED_FUNCTION_2_5();
      sub_1CFCF0B10(v264, v265);
      v266 = OUTLINED_FUNCTION_39_0();
      v260(v266);
      v267 = v262;
      v268 = sub_1CFD48E18();
      v269 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v269);
      v270 = v21[98]._countAndFlagsBits;
      OUTLINED_FUNCTION_112();
      if (v271)
      {
        v272 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_66(v272);
        v275 = "Disclaimer not supported for mailThread. Not continuing with feedback.";
LABEL_153:
        OUTLINED_FUNCTION_47_1(&dword_1CFCD7000, v273, v274, v275);
        OUTLINED_FUNCTION_77();
        goto LABEL_154;
      }

      goto LABEL_154;
    }

    v288 = v21[88]._countAndFlagsBits;
    OUTLINED_FUNCTION_0_4();
    sub_1CFCF0B10(v289, v290);
    v244 = v21[100]._object;
    v291 = v21[100]._countAndFlagsBits;
    v292 = v21[99]._object;
    v262 = v21[92]._object;
    if (v22._object)
    {
      v293 = v21[97]._object;
      v294 = OUTLINED_FUNCTION_40_1();
      v291(v294);

      v295 = sub_1CFD48E18();
      v296 = sub_1CFD492F8();
      if (OUTLINED_FUNCTION_95(v296))
      {
        v297 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_119(v297);
        OUTLINED_FUNCTION_46_1(&dword_1CFCD7000, v298, v299, "Showing disclaimer.");
        OUTLINED_FUNCTION_86();
      }

      v300 = v21[97]._object;
      v301 = v21[93]._countAndFlagsBits;
      v302 = v21[92]._object;

      v21[109]._countAndFlagsBits = *(v301 + 8);
      v303 = OUTLINED_FUNCTION_51_0();
      v304(v303);
      v305 = swift_task_alloc();
      v21[109]._object = v305;
      *v305 = v21;
      OUTLINED_FUNCTION_21_3(v305);
      v306 = v21[60]._countAndFlagsBits;
      OUTLINED_FUNCTION_140();
      OUTLINED_FUNCTION_52_0();

      return sub_1CFCFB4B8(v307, v308, v309, v310);
    }

    v356 = v21[95]._object;

    v357 = OUTLINED_FUNCTION_40_1();
    v291(v357);
    v267 = v356;
    v268 = sub_1CFD48E18();
    v358 = sub_1CFD492E8();
    OUTLINED_FUNCTION_49_0(v358);
    v359 = v21[95]._object;
LABEL_151:
    OUTLINED_FUNCTION_112();
    if (v364)
    {
      v365 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_66(v365);
      v275 = "Missing personal content. Not continuing with feedback.";
      goto LABEL_153;
    }

    goto LABEL_154;
  }

  if (*(v21[59]._object + v256 + 1))
  {
    v276 = v21[90]._object;
    v277 = v21[87]._object;
    v262 = v21[87]._countAndFlagsBits;
    OUTLINED_FUNCTION_1_5();
    sub_1CFCFFF3C();
    OUTLINED_FUNCTION_71();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v278 = v21[108]._object;
      OUTLINED_FUNCTION_182();
      v279 = v21[94]._object;
      v280 = v21[92]._object;
      v281 = v21[87]._object;

      OUTLINED_FUNCTION_2_5();
      sub_1CFCF0B10(v281, v282);
      v283 = OUTLINED_FUNCTION_33_2();
      v243(v283);
      v267 = v279;
      v268 = sub_1CFD48E18();
      v284 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v284);
      v285 = v21[94]._object;
      OUTLINED_FUNCTION_112();
      if (v286)
      {
        v287 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_66(v287);
        v275 = "TTR flow not supported for mailThread. Not continuing with feedback.";
        goto LABEL_153;
      }

LABEL_154:

      v366 = *(v244 + 1);
      v367 = OUTLINED_FUNCTION_107();
      v368(v367);
      OUTLINED_FUNCTION_9_5();
      sub_1CFCF0B10(v262, v369);
      OUTLINED_FUNCTION_0_4();
      sub_1CFCF0B10(v267, v370);
      v371 = v21[99]._countAndFlagsBits;
      v372 = v21[98]._object;
      v373 = v21[98]._countAndFlagsBits;
      v374 = v21[97]._object;
      v375 = v21;
      v376 = v21[97]._countAndFlagsBits;
      v377 = v375[96]._object;
      v378 = v375[96]._countAndFlagsBits;
      v379 = v375[95]._object;
      v380 = v375[95]._countAndFlagsBits;
      v381 = v375[94]._object;
      v382 = v375[94]._countAndFlagsBits;
      v383 = v375[93]._object;
      OUTLINED_FUNCTION_45_1();
      v393 = v375[69]._countAndFlagsBits;
      v395 = v375[68]._countAndFlagsBits;
      v397 = v375[67]._object;
      v399 = v375[66]._countAndFlagsBits;
      v401 = v375[65]._object;
      v403 = v375[65]._countAndFlagsBits;
      v405 = v375[64]._object;
      v408 = v375[64]._countAndFlagsBits;
      v409 = v375[63]._object;
      v411 = v375[62]._object;
      v413 = v375[61]._countAndFlagsBits;
      v416 = v375[60]._object;

      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_52_0();

      return v385(v384, v385, v386, v387, v388, v389, v390, v391, a9, a10, a11, a12);
    }

    v329 = v21[107]._object;
    v330 = v21[87]._object;
    OUTLINED_FUNCTION_0_4();
    sub_1CFCF0B10(v331, v332);
    v244 = v21[100]._object;
    v333 = v21[100]._countAndFlagsBits;
    v334 = v21[99]._object;
    v335 = v21[92]._object;
    if (!v329)
    {
      v360 = v21[108]._object;
      v262 = v21[93]._object;

      v361 = OUTLINED_FUNCTION_39_0();
      (v333)(v361);
      v267 = v262;
      v268 = sub_1CFD48E18();
      v362 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v362);
      v363 = v21[93]._object;
      goto LABEL_151;
    }

    v336 = v21[107]._object;
    v337 = v21[94]._countAndFlagsBits;
    OUTLINED_FUNCTION_70();
    v333();
    v338 = sub_1CFD48E18();
    v339 = sub_1CFD492F8();
    if (OUTLINED_FUNCTION_109_0(v339))
    {
      v340 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_134(v340);
      OUTLINED_FUNCTION_50_0();
      _os_log_impl(v341, v342, v343, v344, v345, 2u);
      OUTLINED_FUNCTION_94();
    }

    v346 = v21[94]._countAndFlagsBits;
    v347 = v21[93]._countAndFlagsBits;
    v348 = v21[92]._object;

    v349 = OUTLINED_FUNCTION_106();
    v350(v349);
    v351 = swift_task_alloc();
    v21[110]._object = v351;
    *v351 = v21;
    OUTLINED_FUNCTION_5_3(v351);
    v352 = v21[108]._object;
    v353 = v21[108]._countAndFlagsBits;
    v354 = v21[107]._countAndFlagsBits;
    OUTLINED_FUNCTION_99(v21[59]._object);
    OUTLINED_FUNCTION_52_0();

    return sub_1CFCFC664();
  }

  else
  {
    OUTLINED_FUNCTION_182();
    v312 = v21[95]._countAndFlagsBits;
    v313 = v21[92]._object;

    v314 = OUTLINED_FUNCTION_68();
    v243(v314);
    v315 = sub_1CFD48E18();
    v316 = sub_1CFD492F8();
    if (OUTLINED_FUNCTION_95(v316))
    {
      v317 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_119(v317);
      OUTLINED_FUNCTION_46_1(&dword_1CFCD7000, v318, v319, "Submitting feedback to FeedbackFramework");
      OUTLINED_FUNCTION_86();
    }

    v320 = v21[95]._countAndFlagsBits;
    v321 = v21[93]._countAndFlagsBits;
    v322 = v21[92]._object;

    v323 = *(v321 + 8);
    v324 = OUTLINED_FUNCTION_51_0();
    v325(v324);
    v326 = swift_task_alloc();
    v21[110]._countAndFlagsBits = v326;
    *v326 = v21;
    OUTLINED_FUNCTION_4_3(v326);
    v327 = v21[86]._object;
    OUTLINED_FUNCTION_99(v21[59]._object);
    OUTLINED_FUNCTION_52_0();

    return sub_1CFCFC0B8();
  }
}

uint64_t sub_1CFCF737C()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v2 = v1[207];
  v3 = v1[206];
  v4 = v1[205];
  v5 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CFCF7498()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v2 = v1[210];
  v3 = v1[209];
  v4 = v1[208];
  v5 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CFCF75B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_187();
  v13 = v12;
  OUTLINED_FUNCTION_180();
  countAndFlagsBits = v12[74]._countAndFlagsBits;
  object = v12[73]._object;
  v16 = v12[73]._countAndFlagsBits;
  v345 = v12[72]._object;
  v17 = v12[71]._countAndFlagsBits;
  v18 = v12[59]._object;
  v19 = *(countAndFlagsBits + 64);
  *(swift_task_alloc() + 16) = v18;
  sub_1CFCFAEC8();
  v21 = v20;

  *(countAndFlagsBits + 64) = v21;
  OUTLINED_FUNCTION_153();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_153();
  v22 = ModelContentInput.feedbackString()();
  OUTLINED_FUNCTION_165(object);
  OUTLINED_FUNCTION_153();
  sub_1CFD21098();
  v24 = v23;
  OUTLINED_FUNCTION_165(v16);
  v341 = *(v24 + 16);

  v340 = *v18;
  v342 = v18[1];
  v343 = *(countAndFlagsBits + *(v17 + 76));
  v339 = sub_1CFCF0A3C();
  OUTLINED_FUNCTION_153();
  sub_1CFD21098();
  v26 = v25;
  OUTLINED_FUNCTION_165(v345);
  v27 = *(v26 + 16);
  v348 = v13;
  if (v27)
  {
    v28 = v13[70]._object;
    v29 = v13[69]._object;
    v350 = MEMORY[0x1E69E7CC0];
    sub_1CFCFF25C(0, v27, 0);
    v30 = v350;
    v31 = *(v29 + 80);
    OUTLINED_FUNCTION_73();
    v33 = v26 + v32;
    v34 = v29[9];
    do
    {
      v35 = v13[70]._object;
      OUTLINED_FUNCTION_14_3();
      sub_1CFCFFF3C();
      v36 = v28[21];
      v37 = v28[22];
      v38 = sub_1CFD49048();
      OUTLINED_FUNCTION_13_3();
      sub_1CFCF0B10(v35, v39);
      v41 = *(v350 + 16);
      v40 = *(v350 + 24);
      if (v41 >= v40 >> 1)
      {
        v42 = OUTLINED_FUNCTION_72(v40);
        sub_1CFCFF25C(v42, v41 + 1, 1);
      }

      *(v350 + 16) = v41 + 1;
      *(v350 + 8 * v41 + 32) = v38;
      v33 += v34;
      --v27;
    }

    while (v27);
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  v44 = *(v30 + 16);
  if (v44)
  {
    v45 = 0;
    v46 = (v30 + 32);
    while (1)
    {
      v47 = *v46++;
      v48 = __OFADD__(v45, v47);
      v45 += v47;
      if (v48)
      {
        break;
      }

      if (!--v44)
      {
        goto LABEL_14;
      }
    }

LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v45 = 0;
LABEL_14:
  v49 = v13[74]._countAndFlagsBits;
  v50 = v13[72]._countAndFlagsBits;
  v51 = v13[71]._countAndFlagsBits;

  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  sub_1CFD21098();
  v53 = v52;
  OUTLINED_FUNCTION_81();
  sub_1CFCE3050(v54, v55, v56);
  v57 = *(v53 + 16);
  if (v57)
  {
    v58 = v13[70]._countAndFlagsBits;
    v59 = v348[69]._object;
    v349 = MEMORY[0x1E69E7CC0];
    sub_1CFCFF25C(0, v57, 0);
    v60 = v349;
    OUTLINED_FUNCTION_43_1();
    v345 = v53;
    v61 = v59[9];
    v62 = v348;
    do
    {
      v63 = v62[70]._countAndFlagsBits;
      OUTLINED_FUNCTION_14_3();
      sub_1CFCFFF3C();
      v351 = *(v58 + 200);
      v356 = *(v58 + 216);
      MailEntity.Body.text.getter();
      if (v64)
      {
        v65 = sub_1CFD49048();
      }

      else
      {
        v65 = 0;
      }

      v62 = v348;
      v66 = v348[70]._countAndFlagsBits;
      OUTLINED_FUNCTION_13_3();
      sub_1CFCF0B10(v67, v68);
      v70 = *(v349 + 16);
      v69 = *(v349 + 24);
      if (v70 >= v69 >> 1)
      {
        OUTLINED_FUNCTION_72(v69);
        OUTLINED_FUNCTION_93();
        sub_1CFCFF25C(v72, v73, v74);
        v62 = v348;
      }

      *(v349 + 16) = v70 + 1;
      *(v349 + 8 * v70 + 32) = v65;
      OUTLINED_FUNCTION_174();
    }

    while (!v71);
  }

  else
  {

    v60 = MEMORY[0x1E69E7CC0];
    v62 = v13;
  }

  v75 = *(v60 + 16);
  if (v75)
  {
    v76 = 0;
    v77 = (v60 + 32);
    while (1)
    {
      v78 = *v77++;
      v48 = __OFADD__(v76, v78);
      v76 += v78;
      if (v48)
      {
        break;
      }

      if (!--v75)
      {
        goto LABEL_31;
      }
    }

LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    return result;
  }

  v76 = 0;
LABEL_31:
  v79 = v62;
  v80 = v62[74]._countAndFlagsBits;
  v81 = v79[71]._object;
  v82 = v79[71]._countAndFlagsBits;

  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  OUTLINED_FUNCTION_168();
  v84 = v83;
  OUTLINED_FUNCTION_81();
  sub_1CFCE3050(v85, v86, v87);
  v88 = *(v84 + 16);
  if (v88)
  {
    v345 = v79[70]._object;
    v89 = v79[69]._object;
    v352 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_25_2();
    sub_1CFCFE374(v88, v90);
    OUTLINED_FUNCTION_43_1();
    v91 = v89[9];
    v92 = v352;
    v93 = v79;
    do
    {
      v94 = v93[70]._object;
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_157();
      sub_1CFCFFF3C();
      v95 = *(v345 + 232);

      OUTLINED_FUNCTION_13_3();
      sub_1CFCF0B10(v94, v96);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v97 = *(v92 + 16);
        v98 = OUTLINED_FUNCTION_118();
        sub_1CFCFF23C(v98, v99, v100);
        v92 = v352;
      }

      v102 = *(v92 + 16);
      v101 = *(v92 + 24);
      v93 = v348;
      if (v102 >= v101 >> 1)
      {
        OUTLINED_FUNCTION_72(v101);
        OUTLINED_FUNCTION_93();
        sub_1CFCFF23C(v103, v104, v105);
        v93 = v348;
        v92 = v352;
      }

      *(v92 + 16) = v102 + 1;
      *(v92 + 8 * v102 + 32) = v95;
      OUTLINED_FUNCTION_174();
    }

    while (!v71);
  }

  else
  {

    v92 = MEMORY[0x1E69E7CC0];
    v93 = v79;
  }

  v106 = 0;
  v344 = v93 + 42;
  v107 = *(v92 + 16);
  v108 = MEMORY[0x1E69E7CC0];
  while (v107 != v106)
  {
    if (v106 >= *(v92 + 16))
    {
      __break(1u);
      goto LABEL_130;
    }

    v109 = v106 + 1;
    v110 = *(v92 + 8 * v106 + 32);

    result = sub_1CFCFF8DC(v111);
    v106 = v109;
  }

  v112 = *(v108 + 16);
  if (v112)
  {
    v113 = v348[76]._object;
    v114 = (v348[77]._countAndFlagsBits + *(v348[76]._countAndFlagsBits + 32));
    OUTLINED_FUNCTION_135();
    v115 = MEMORY[0x1E69E7CC0];
    do
    {
      v116 = v348[77]._countAndFlagsBits;
      OUTLINED_FUNCTION_24_2();
      sub_1CFCFFF3C();
      v117 = v348[77]._countAndFlagsBits;
      if (v114[1])
      {
        v118 = *v114;
        v119 = sub_1CFD49048();
        OUTLINED_FUNCTION_7_4();
        sub_1CFCF0B10(v117, v120);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v124 = *(v115 + 2);
          v125 = OUTLINED_FUNCTION_118();
          v115 = sub_1CFCFE50C(v125, v126, v127, v115);
        }

        v122 = *(v115 + 2);
        v121 = *(v115 + 3);
        if (v122 >= v121 >> 1)
        {
          OUTLINED_FUNCTION_72(v121);
          OUTLINED_FUNCTION_93();
          v115 = sub_1CFCFE50C(v128, v129, v130, v115);
        }

        *(v115 + 2) = v122 + 1;
        *&v115[8 * v122 + 32] = v119;
      }

      else
      {
        OUTLINED_FUNCTION_7_4();
        sub_1CFCF0B10(v117, v123);
      }

      v88 += v345;
      --v112;
    }

    while (v112);
  }

  else
  {

    v115 = MEMORY[0x1E69E7CC0];
  }

  v131 = *(v115 + 2);
  v132 = v348;
  v133 = 0;
  if (v131)
  {
    v134 = (v115 + 32);
    do
    {
      v135 = *v134++;
      v48 = __OFADD__(v133, v135);
      v133 += v135;
      if (v48)
      {
        goto LABEL_132;
      }
    }

    while (--v131);
  }

  v136 = v348[74]._countAndFlagsBits;
  v137 = v348[71]._countAndFlagsBits;

  v138 = *(v137 + 68);
  v139 = sub_1CFD48BD8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v136 + v138, 1, v139);
  v141 = 0;
  if (!EnumTagSinglePayload)
  {
    v142 = v348[75]._object;
    v143 = v348[75]._countAndFlagsBits;
    v346 = v348[74]._object;
    sub_1CFD48B98();
    v141 = sub_1CFD48BA8();
    (*(v143 + 8))(v142, v346);
  }

  v144 = v348[74]._countAndFlagsBits;
  v353 = *(v144 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2ED0, &unk_1CFD4BF90);
  v145 = sub_1CFD26F60();
  OUTLINED_FUNCTION_144();
  sub_1CFCE3050(v144, &qword_1EC4F2D98, &unk_1CFD50A10);
  v344->_countAndFlagsBits = 0;
  v344->_object = 0;
  v348[43]._countAndFlagsBits = v341;
  LOBYTE(v348[43]._object) = v357;
  v348[44]._countAndFlagsBits = v340;
  LOBYTE(v348[44]._object) = v358;
  v348[45]._countAndFlagsBits = v342;
  LOBYTE(v348[45]._object) = v359;
  BYTE1(v348[45]._object) = v343;
  v348[46]._countAndFlagsBits = v339;
  LOBYTE(v348[46]._object) = 0;
  v348[47]._countAndFlagsBits = v45;
  LOBYTE(v348[47]._object) = 0;
  v348[48]._countAndFlagsBits = 0;
  LOBYTE(v348[48]._object) = 1;
  v348[49]._countAndFlagsBits = v76;
  LOBYTE(v348[49]._object) = 0;
  v348[50]._countAndFlagsBits = v133;
  LOBYTE(v348[50]._object) = 0;
  v348[51]._countAndFlagsBits = v141;
  LOBYTE(v348[51]._object) = EnumTagSinglePayload != 0;
  v348[52]._countAndFlagsBits = v145;
  v348[107] = v22;
  memcpy(&v348[31]._object, v344, 0xA8uLL);
  v146 = sub_1CFD48F78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FE0, &qword_1CFD4D040);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_19_2(inited, xmmword_1CFD4BE40);
  v347 = v146;
  if (v348[32]._countAndFlagsBits)
  {
    v148 = v348[31]._object;
    sub_1CFD02070(0, &qword_1EC4F2FF0, 0x1E696AEC0);
    sub_1CFD020B0(&v348[31]._object, &v348[21]);
    OUTLINED_FUNCTION_87();
    sub_1CFCF38E8();
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  OUTLINED_FUNCTION_104();
  inited[3].n128_u64[0] = v149;
  inited[3].n128_u64[1] = v150;
  inited[4].n128_u64[0] = 0xE500000000000000;
  if (v348[33]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v151 = v348[32]._object;
    v152 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    OUTLINED_FUNCTION_100();
    v132 = v348;
    [v153 v154];
  }

  OUTLINED_FUNCTION_60_0();
  inited[4].n128_u64[1] = v155;
  inited[5].n128_u64[0] = v156;
  inited[5].n128_u64[1] = 0xE700000000000000;
  if (v132[34]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v157 = v348[33]._object;
    v158 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    OUTLINED_FUNCTION_100();
    v132 = v348;
    [v159 v160];
  }

  OUTLINED_FUNCTION_59_0();
  inited[6].n128_u64[0] = v161;
  inited[6].n128_u64[1] = v162;
  inited[7].n128_u64[0] = 0xE800000000000000;
  if (v132[35]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v163 = v348[34]._object;
    v164 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    OUTLINED_FUNCTION_100();
    v132 = v348;
    [v165 v166];
  }

  OUTLINED_FUNCTION_58_0();
  inited[7].n128_u64[1] = v167;
  inited[8].n128_u64[0] = v168;
  inited[8].n128_u64[1] = 0xE800000000000000;
  v169 = BYTE1(v132[35]._countAndFlagsBits);
  if (v169 == 2)
  {
    v170 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v170 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  OUTLINED_FUNCTION_154(v170);
  v171 = v348;
  if (v348[36]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v172 = v348[35]._object;
    v173 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    OUTLINED_FUNCTION_100();
    v171 = v348;
    [v174 v175];
  }

  OUTLINED_FUNCTION_56_0();
  inited[10].n128_u64[1] = v176;
  inited[11].n128_u64[0] = v177;
  OUTLINED_FUNCTION_54_0();
  inited[11].n128_u64[1] = v178;
  if (v171[37]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v179 = v348[36]._object;
    v180 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    OUTLINED_FUNCTION_100();
    v171 = v348;
    [v181 v182];
  }

  OUTLINED_FUNCTION_85();
  inited[12].n128_u64[0] = v183;
  inited[12].n128_u64[1] = 0xD000000000000012;
  inited[13].n128_u64[0] = v184;
  if (v171[38]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v185 = v348[37]._object;
    v186 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    OUTLINED_FUNCTION_100();
    v171 = v348;
    [v187 v188];
  }

  OUTLINED_FUNCTION_55_0();
  inited[13].n128_u64[1] = v189;
  inited[14].n128_u64[0] = v190;
  OUTLINED_FUNCTION_53_0();
  inited[14].n128_u64[1] = v191;
  if (v171[39]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v192 = v348[38]._object;
    v193 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    OUTLINED_FUNCTION_100();
    v171 = v348;
    [v194 v195];
  }

  OUTLINED_FUNCTION_85();
  inited[15].n128_u64[0] = v196;
  inited[15].n128_u64[1] = 0xD000000000000011;
  inited[16].n128_u64[0] = v197;
  if (v171[40]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v198 = v348[39]._object;
    v199 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    OUTLINED_FUNCTION_100();
    v171 = v348;
    [v200 v201];
  }

  OUTLINED_FUNCTION_85();
  inited[16].n128_u64[1] = v202;
  inited[17].n128_u64[0] = 0xD000000000000014;
  inited[17].n128_u64[1] = v203;
  if (v171[41]._countAndFlagsBits)
  {
    [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  else
  {
    v204 = v348[40]._object;
    v205 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    OUTLINED_FUNCTION_100();
    v171 = v348;
    [v206 v207];
  }

  v208 = v171[91]._countAndFlagsBits;
  v209 = v171[60]._countAndFlagsBits;
  v210 = v171[59]._object;
  OUTLINED_FUNCTION_57_0();
  inited[18].n128_u64[0] = v211;
  inited[18].n128_u64[1] = v212;
  OUTLINED_FUNCTION_62_0();
  inited[19].n128_u64[0] = v213;
  v214 = v348[41]._object;
  v215 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  OUTLINED_FUNCTION_100();
  inited[19].n128_u64[1] = [v216 v217];
  sub_1CFD02070(0, &qword_1EC4F2FE8, 0x1E69E58C0);
  OUTLINED_FUNCTION_176();
  sub_1CFD48EC8();
  v218 = sub_1CFD48EB8();

  AnalyticsSendEvent();

  sub_1CFD002C8(v344);
  v354 = sub_1CFCFEF14(884);
  v355 = v219;
  MEMORY[0x1D3873940](0xD00000000000010ALL, 0x80000001CFD5DA50);
  OUTLINED_FUNCTION_38_0();
  v348[58]._object = (*(v220 + 104))();
  OUTLINED_FUNCTION_32_1();
  v221 = sub_1CFD49648();
  MEMORY[0x1D3873940](v221);

  MEMORY[0x1D3873940](0xD000000000000054, 0x80000001CFD5DB60);
  OUTLINED_FUNCTION_38_0();
  v348[59]._countAndFlagsBits = (*(v222 + 128))();
  OUTLINED_FUNCTION_32_1();
  v223 = sub_1CFD49648();
  v225 = v224;
  MEMORY[0x1D3873940](v223);

  OUTLINED_FUNCTION_101();
  v348[108]._countAndFlagsBits = v354;
  v348[108]._object = v355;
  v226 = *(v208 + 28);
  HIDWORD(v348[55]._countAndFlagsBits) = v226;
  if (v210[v226] == 1)
  {
    v227 = v348[90]._object;
    v228 = v348[88]._countAndFlagsBits;
    v229 = v348[87]._countAndFlagsBits;
    OUTLINED_FUNCTION_1_5();
    sub_1CFCFFF3C();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v230 = v348[100]._object;
      v231 = v348[100]._countAndFlagsBits;
      v232 = v348[99]._object;
      v233 = v348[98]._countAndFlagsBits;
      v234 = v348[92]._object;
      v235 = v348[88]._countAndFlagsBits;

      OUTLINED_FUNCTION_2_5();
      sub_1CFCF0B10(v235, v236);
      v237 = OUTLINED_FUNCTION_87();
      v231(v237);
      v238 = v233;
      v239 = sub_1CFD48E18();
      v240 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v240);
      v241 = v348[98]._countAndFlagsBits;
      OUTLINED_FUNCTION_170();
      if (v242)
      {
        v243 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_66(v243);
        v246 = "Disclaimer not supported for mailThread. Not continuing with feedback.";
LABEL_125:
        OUTLINED_FUNCTION_47_1(&dword_1CFCD7000, v244, v245, v246);
        OUTLINED_FUNCTION_77();
        goto LABEL_126;
      }

      goto LABEL_126;
    }

    v258 = v348[88]._countAndFlagsBits;
    OUTLINED_FUNCTION_0_4();
    sub_1CFCF0B10(v259, v260);
    v230 = v348[100]._object;
    v261 = v348[100]._countAndFlagsBits;
    v262 = v348[99]._object;
    v263 = v348[92]._object;
    if (v22._object)
    {
      v264 = v348[97]._object;
      OUTLINED_FUNCTION_70();
      v261();

      v265 = sub_1CFD48E18();
      v266 = sub_1CFD492F8();
      if (OUTLINED_FUNCTION_126(v266))
      {
        v267 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_119(v267);
        _os_log_impl(&dword_1CFCD7000, v265, v266, "Showing disclaimer.", v263, 2u);
        OUTLINED_FUNCTION_86();
      }

      v268 = v348[97]._object;
      v269 = v348[93]._countAndFlagsBits;
      v270 = v348[92]._object;

      v271 = *(v269 + 8);
      v348[109]._countAndFlagsBits = v271;
      v271(v268, v270);
      v272 = swift_task_alloc();
      v348[109]._object = v272;
      *v272 = v348;
      OUTLINED_FUNCTION_21_3(v272);
      v273 = v348[60]._countAndFlagsBits;
      OUTLINED_FUNCTION_140();
      OUTLINED_FUNCTION_52_0();

      return sub_1CFCFB4B8(v274, v275, v276, v277);
    }

    v231 = v348[95]._object;

    v316 = OUTLINED_FUNCTION_39_0();
    (v261)(v316);
    v238 = v231;
    v239 = sub_1CFD48E18();
    v317 = sub_1CFD492E8();
    OUTLINED_FUNCTION_49_0(v317);
    v318 = v348[95]._object;
    OUTLINED_FUNCTION_170();
    if (!v319)
    {
      goto LABEL_126;
    }

LABEL_124:
    v325 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_66(v325);
    v246 = "Missing personal content. Not continuing with feedback.";
    goto LABEL_125;
  }

  if (*(v348[59]._object + v226 + 1))
  {
    v247 = v348[90]._object;
    v248 = v348[87]._object;
    v231 = v348[87]._countAndFlagsBits;
    OUTLINED_FUNCTION_1_5();
    sub_1CFCFFF3C();
    OUTLINED_FUNCTION_71();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v249 = v348[108]._object;
      v250 = v348[107]._object;
      v230 = v348[100]._object;
      v251 = v348[100]._countAndFlagsBits;
      OUTLINED_FUNCTION_191();

      OUTLINED_FUNCTION_2_5();
      sub_1CFCF0B10(v354, v252);
      v253 = OUTLINED_FUNCTION_33_2();
      v251(v253);
      v238 = v225;
      v239 = sub_1CFD48E18();
      v254 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v254);
      v255 = v348[94]._object;
      OUTLINED_FUNCTION_35_2();
      if (v256)
      {
        v257 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_66(v257);
        v246 = "TTR flow not supported for mailThread. Not continuing with feedback.";
        goto LABEL_125;
      }

LABEL_126:

      v326 = v230[1];
      v327 = OUTLINED_FUNCTION_107();
      v328(v327);
      OUTLINED_FUNCTION_9_5();
      sub_1CFCF0B10(v231, v329);
      OUTLINED_FUNCTION_0_4();
      sub_1CFCF0B10(v238, v330);
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_65();

      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_52_0();

      return v332(v331, v332, v333, v334, v335, v336, v337, v338, a9, a10, a11, a12);
    }

    v296 = v348[107]._object;
    v297 = v348[87]._object;
    OUTLINED_FUNCTION_0_4();
    sub_1CFCF0B10(v298, v299);
    v230 = v348[100]._object;
    v300 = v348[100]._countAndFlagsBits;
    v301 = v348[99]._object;
    v302 = v348[92]._object;
    if (!v296)
    {
      v320 = v348[108]._object;
      v231 = v348[93]._object;

      v321 = OUTLINED_FUNCTION_39_0();
      (v300)(v321);
      v238 = v231;
      v239 = sub_1CFD48E18();
      v322 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v322);
      v323 = v348[93]._object;
      OUTLINED_FUNCTION_35_2();
      if (!v324)
      {
        goto LABEL_126;
      }

      goto LABEL_124;
    }

    v303 = v348[107]._object;
    v304 = v348[94]._countAndFlagsBits;
    OUTLINED_FUNCTION_70();
    v300();
    sub_1CFD48E18();
    v305 = sub_1CFD492F8();
    if (OUTLINED_FUNCTION_109_0(v305))
    {
      v306 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_134(v306);
      OUTLINED_FUNCTION_50_0();
      _os_log_impl(v307, v308, v309, v310, v311, 2u);
      OUTLINED_FUNCTION_94();
    }

    OUTLINED_FUNCTION_163();
    v312 = OUTLINED_FUNCTION_106();
    v313(v312);
    v314 = swift_task_alloc();
    v348[110]._object = v314;
    *v314 = v348;
    OUTLINED_FUNCTION_5_3(v314);
    OUTLINED_FUNCTION_42_1();
    OUTLINED_FUNCTION_52_0();

    return sub_1CFCFC664();
  }

  else
  {
    v279 = v348[107]._object;
    v280 = v348[100]._object;
    v281 = v348[100]._countAndFlagsBits;
    v282 = v348[99]._object;
    v283 = v348[95]._countAndFlagsBits;
    v284 = v348[92]._object;

    v285 = OUTLINED_FUNCTION_68();
    v281(v285);
    sub_1CFD48E18();
    v286 = sub_1CFD492F8();
    if (OUTLINED_FUNCTION_95(v286))
    {
      v287 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_119(v287);
      OUTLINED_FUNCTION_46_1(&dword_1CFCD7000, v288, v289, "Submitting feedback to FeedbackFramework");
      OUTLINED_FUNCTION_86();
    }

    OUTLINED_FUNCTION_164();
    v290 = v280[1];
    v291 = OUTLINED_FUNCTION_51_0();
    v292(v291);
    v293 = swift_task_alloc();
    v348[110]._countAndFlagsBits = v293;
    *v293 = v348;
    OUTLINED_FUNCTION_4_3(v293);
    v294 = v348[86]._object;
    OUTLINED_FUNCTION_99(v348[59]._object);
    OUTLINED_FUNCTION_52_0();

    return sub_1CFCFC0B8();
  }
}

uint64_t sub_1CFCF8AB0()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v2 = v1[213];
  v3 = v1[212];
  v4 = v1[211];
  v5 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CFCF8BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_152();
  OUTLINED_FUNCTION_187();
  OUTLINED_FUNCTION_180();
  object = v12[65]._object;
  countAndFlagsBits = v12[65]._countAndFlagsBits;
  v15 = v12[64]._object;
  v308 = v12[64]._countAndFlagsBits;
  v16 = v12[63]._countAndFlagsBits;
  v17 = v12[59]._object;
  v18 = object[8];
  *(swift_task_alloc() + 16) = v17;
  sub_1CFCFAEC8();
  v20 = v19;

  object[8] = v20;
  OUTLINED_FUNCTION_153();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_153();
  v21 = ModelContentInput.feedbackString()();
  OUTLINED_FUNCTION_165(countAndFlagsBits);
  OUTLINED_FUNCTION_153();
  sub_1CFD21098();
  v23 = v22;
  OUTLINED_FUNCTION_165(v15);
  v302 = *(v23 + 16);

  v301 = *v17;
  v303 = v17[1];
  v304 = *(object + *(v16 + 76));
  v300 = sub_1CFCF0A3C();
  OUTLINED_FUNCTION_153();
  sub_1CFD21098();
  v25 = v24;
  OUTLINED_FUNCTION_165(v308);
  v26 = *(v25 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  v310 = v12;
  if (v26)
  {
    v28 = v12[62]._countAndFlagsBits;
    v29 = v12[61]._object;
    v315._countAndFlagsBits = MEMORY[0x1E69E7CC0];
    sub_1CFCFF25C(0, v26, 0);
    v30 = v27;
    v31 = *(v28 + 80);
    OUTLINED_FUNCTION_73();
    v33 = v25 + v32;
    v34 = *(v28 + 72);
    do
    {
      v35 = v310[62]._object;
      OUTLINED_FUNCTION_28_1();
      sub_1CFCFFF3C();
      v36 = (v35 + v29[15]);
      v37 = *v36;
      v38 = v36[1];
      v39 = sub_1CFD49048();
      OUTLINED_FUNCTION_27_2();
      sub_1CFCF0B10(v35, v40);
      v315._countAndFlagsBits = v30;
      v42 = v30[2];
      v41 = v30[3];
      if (v42 >= v41 >> 1)
      {
        v43 = OUTLINED_FUNCTION_17_4(v41);
        sub_1CFCFF25C(v43, v44, v45);
        v30 = v315._countAndFlagsBits;
      }

      v30[2] = v42 + 1;
      v30[v42 + 4] = v39;
      v33 += v34;
      --v26;
    }

    while (v26);
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  v47 = v30[2];
  v48 = v310;
  v49 = 0;
  if (v47)
  {
    v50 = v30 + 4;
    do
    {
      v51 = *v50++;
      v52 = __OFADD__(v49, v51);
      v49 += v51;
      if (v52)
      {
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      --v47;
    }

    while (v47);
  }

  v53 = v310[65]._object;
  v54 = v310[63]._object;
  v55 = v310[63]._countAndFlagsBits;

  OUTLINED_FUNCTION_51_0();
  sub_1CFD02140();
  sub_1CFD21098();
  v57 = v56;
  sub_1CFCE3050(v54, &qword_1EC4F2DA0, &unk_1CFD4BD68);
  v58 = *(v57 + 16);
  if (v58)
  {
    v59 = v310[62]._countAndFlagsBits;
    v60 = v310[61]._object;
    v315._countAndFlagsBits = v27;
    OUTLINED_FUNCTION_25_2();
    sub_1CFCFE374(v58, v61);
    v62 = *(v59 + 80);
    OUTLINED_FUNCTION_73();
    v64 = v57 + v63;
    v65 = *(v59 + 72);
    v66 = v27;
    do
    {
      v67 = v310[62]._object;
      OUTLINED_FUNCTION_28_1();
      OUTLINED_FUNCTION_157();
      sub_1CFCFFF3C();
      v68 = *(v67 + v60[16]);

      OUTLINED_FUNCTION_27_2();
      sub_1CFCF0B10(v67, v69);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = v66[2];
        v71 = OUTLINED_FUNCTION_61_0();
        sub_1CFCFF23C(v71, v72, v73);
        v66 = v315._countAndFlagsBits;
      }

      v75 = v66[2];
      v74 = v66[3];
      if (v75 >= v74 >> 1)
      {
        v76 = OUTLINED_FUNCTION_17_4(v74);
        sub_1CFCFF23C(v76, v77, v78);
        v66 = v315._countAndFlagsBits;
      }

      v66[2] = v75 + 1;
      v66[v75 + 4] = v68;
      v64 += v65;
      --v58;
    }

    while (v58);

    v48 = v310;
  }

  else
  {

    v66 = MEMORY[0x1E69E7CC0];
  }

  v79 = 0;
  v305 = v48 + 42;
  v80 = v66[2];
  v81 = MEMORY[0x1E69E7CC0];
  while (v80 != v79)
  {
    if (v79 >= v66[2])
    {
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v82 = v79 + 1;
    v83 = v66[v79 + 4];
    v315._countAndFlagsBits = v81;

    result = sub_1CFCFF8DC(v84);
    v79 = v82;
  }

  v85 = v310[76]._object;
  v307 = v310[76]._countAndFlagsBits;

  v86 = 0;
  v309 = *(v81 + 16);
  v306 = MEMORY[0x1E69E7CC0];
  while (v309 != v86)
  {
    if (v86 >= *(v81 + 16))
    {
      goto LABEL_112;
    }

    v87 = v310[76]._countAndFlagsBits;
    v88 = v310[61]._countAndFlagsBits;
    v89 = v310[60]._object;
    v90 = *(v85 + 80);
    OUTLINED_FUNCTION_73();
    v91 = v85[9];
    OUTLINED_FUNCTION_24_2();
    sub_1CFCFFF3C();
    __swift_storeEnumTagSinglePayload(v88, 0, 1, v87);
    OUTLINED_FUNCTION_76();
    sub_1CFD02140();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v89, 1, v87);
    v93 = v310[60]._object;
    if (EnumTagSinglePayload == 1)
    {
      v94 = v310[60]._object;
      OUTLINED_FUNCTION_81();
      sub_1CFCE3050(v95, v96, v97);
      goto LABEL_31;
    }

    v98 = (v93 + *(v307 + 32));
    v100 = *v98;
    v99 = v98[1];

    OUTLINED_FUNCTION_7_4();
    sub_1CFCF0B10(v93, v101);
    if (v99)
    {
      v106 = v310[61]._countAndFlagsBits;
      v107 = sub_1CFD49048();

      OUTLINED_FUNCTION_81();
      sub_1CFCE3050(v108, v109, v110);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v113 = *(v306 + 16);
        v114 = OUTLINED_FUNCTION_118();
        result = sub_1CFCFE50C(v114, v115, v116, v117);
        v306 = result;
      }

      v112 = *(v306 + 16);
      v111 = *(v306 + 24);
      if (v112 >= v111 >> 1)
      {
        OUTLINED_FUNCTION_72(v111);
        OUTLINED_FUNCTION_93();
        result = sub_1CFCFE50C(v118, v119, v120, v306);
        v306 = result;
      }

      ++v86;
      *(v306 + 16) = v112 + 1;
      *(v306 + 8 * v112 + 32) = v107;
    }

    else
    {
LABEL_31:
      v102 = v310[61]._countAndFlagsBits;
      OUTLINED_FUNCTION_81();
      result = sub_1CFCE3050(v103, v104, v105);
      ++v86;
    }
  }

  result = v306;
  v121 = *(v306 + 16);
  if (!v121)
  {
    v122 = 0;
LABEL_43:
    v125 = v310[65]._object;
    v126 = v310[63]._countAndFlagsBits;

    v127 = *(v126 + 68);
    v128 = sub_1CFD48BD8();
    v129 = __swift_getEnumTagSinglePayload(v125 + v127, 1, v128);
    v130 = 0;
    if (!v129)
    {
      v131 = v310[75]._object;
      v132 = v310[75]._countAndFlagsBits;
      v133 = v310[74]._object;
      sub_1CFD48B98();
      v130 = sub_1CFD48BA8();
      v134 = *(v132 + 8);
      v135 = OUTLINED_FUNCTION_51_0();
      v136(v135);
    }

    v137 = v310[65]._object;
    v315 = *(v137 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2EC8, &qword_1CFD4BF70);
    sub_1CFD26F60();
    OUTLINED_FUNCTION_161();
    sub_1CFCE3050(v137, &qword_1EC4F2DA0, &unk_1CFD4BD68);
    v305->_countAndFlagsBits = 0;
    v305->_object = 0;
    v310[43]._countAndFlagsBits = v302;
    LOBYTE(v310[43]._object) = v311;
    v310[44]._countAndFlagsBits = v301;
    LOBYTE(v310[44]._object) = v312;
    v310[45]._countAndFlagsBits = v303;
    LOBYTE(v310[45]._object) = v313;
    BYTE1(v310[45]._object) = v304;
    v310[46]._countAndFlagsBits = v300;
    LOBYTE(v310[46]._object) = v314;
    v310[47]._countAndFlagsBits = 0;
    LOBYTE(v310[47]._object) = 1;
    v310[48]._countAndFlagsBits = 0;
    LOBYTE(v310[48]._object) = 1;
    v310[49]._countAndFlagsBits = v49;
    LOBYTE(v310[49]._object) = 0;
    v310[50]._countAndFlagsBits = v122;
    LOBYTE(v310[50]._object) = 0;
    v310[51]._countAndFlagsBits = v130;
    LOBYTE(v310[51]._object) = v129 != 0;
    v310[52]._countAndFlagsBits = &v315;
    v310[107] = v21;
    memcpy(&v310[31]._object, v305, 0xA8uLL);
    v138 = sub_1CFD48F78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FE0, &qword_1CFD4D040);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_19_2(inited, xmmword_1CFD4BE40);
    if (v310[32]._countAndFlagsBits)
    {
      v140 = v310[31]._object;
      sub_1CFD02070(0, &qword_1EC4F2FF0, 0x1E696AEC0);
      sub_1CFD020B0(&v310[31]._object, &v310[21]);
      OUTLINED_FUNCTION_27();
      sub_1CFCF38E8();
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    OUTLINED_FUNCTION_104();
    inited[3].n128_u64[0] = v141;
    inited[3].n128_u64[1] = v142;
    inited[4].n128_u64[0] = 0xE500000000000000;
    if (v310[33]._countAndFlagsBits)
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      v143 = v310[32]._object;
      OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    }

    OUTLINED_FUNCTION_60_0();
    inited[4].n128_u64[1] = v144;
    inited[5].n128_u64[0] = v145;
    inited[5].n128_u64[1] = 0xE700000000000000;
    if (v310[34]._countAndFlagsBits)
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      v146 = v310[33]._object;
      OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    }

    OUTLINED_FUNCTION_59_0();
    inited[6].n128_u64[0] = v147;
    inited[6].n128_u64[1] = v148;
    inited[7].n128_u64[0] = 0xE800000000000000;
    if (v310[35]._countAndFlagsBits)
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      v149 = v310[34]._object;
      OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    }

    OUTLINED_FUNCTION_58_0();
    inited[7].n128_u64[1] = v150;
    inited[8].n128_u64[0] = v151;
    inited[8].n128_u64[1] = 0xE800000000000000;
    v152 = BYTE1(v310[35]._countAndFlagsBits);
    if (v152 == 2)
    {
      v153 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      v153 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    }

    OUTLINED_FUNCTION_154(v153);
    if (v310[36]._countAndFlagsBits)
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      v154 = v310[35]._object;
      OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    }

    OUTLINED_FUNCTION_56_0();
    inited[10].n128_u64[1] = v155;
    inited[11].n128_u64[0] = v156;
    OUTLINED_FUNCTION_54_0();
    inited[11].n128_u64[1] = v157;
    if (v310[37]._countAndFlagsBits)
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      v158 = v310[36]._object;
      OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    }

    OUTLINED_FUNCTION_85();
    inited[12].n128_u64[0] = v159;
    inited[12].n128_u64[1] = 0xD000000000000012;
    inited[13].n128_u64[0] = v160;
    if (v310[38]._countAndFlagsBits)
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      v161 = v310[37]._object;
      OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    }

    OUTLINED_FUNCTION_55_0();
    inited[13].n128_u64[1] = v162;
    inited[14].n128_u64[0] = v163;
    OUTLINED_FUNCTION_53_0();
    inited[14].n128_u64[1] = v164;
    if (v310[39]._countAndFlagsBits)
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      v165 = v310[38]._object;
      OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    }

    OUTLINED_FUNCTION_85();
    inited[15].n128_u64[0] = v166;
    inited[15].n128_u64[1] = 0xD000000000000011;
    inited[16].n128_u64[0] = v167;
    if (v310[40]._countAndFlagsBits)
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      v168 = v310[39]._object;
      OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    }

    OUTLINED_FUNCTION_85();
    inited[16].n128_u64[1] = v169;
    inited[17].n128_u64[0] = 0xD000000000000014;
    inited[17].n128_u64[1] = v170;
    if (v310[41]._countAndFlagsBits)
    {
      [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    }

    else
    {
      v171 = v310[40]._object;
      OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    }

    v172 = v310[91]._countAndFlagsBits;
    v173 = v310[60]._countAndFlagsBits;
    p_countAndFlagsBits = &v310->_countAndFlagsBits;
    v175 = v310[59]._object;
    OUTLINED_FUNCTION_57_0();
    inited[18].n128_u64[0] = v176;
    inited[18].n128_u64[1] = v177;
    OUTLINED_FUNCTION_62_0();
    inited[19].n128_u64[0] = v178;
    v179 = v310[41]._object;
    inited[19].n128_u64[1] = OUTLINED_FUNCTION_124(objc_allocWithZone(MEMORY[0x1E696AD98]));
    sub_1CFD02070(0, &qword_1EC4F2FE8, 0x1E69E58C0);
    OUTLINED_FUNCTION_44_1();
    v180 = sub_1CFD48EC8();
    OUTLINED_FUNCTION_44_1();
    v181 = sub_1CFD48EB8();

    AnalyticsSendEvent();

    sub_1CFD002C8(v305);
    v315._countAndFlagsBits = sub_1CFCFEF14(884);
    v315._object = v182;
    MEMORY[0x1D3873940](0xD00000000000010ALL, 0x80000001CFD5DA50);
    OUTLINED_FUNCTION_38_0();
    v310[58]._object = (*(v183 + 104))();
    v184 = MEMORY[0x1E69E6590];
    OUTLINED_FUNCTION_51_0();
    v185 = sub_1CFD49648();
    MEMORY[0x1D3873940](v185);

    MEMORY[0x1D3873940](0xD000000000000054, 0x80000001CFD5DB60);
    OUTLINED_FUNCTION_38_0();
    v310[59]._countAndFlagsBits = (*(v186 + 128))();
    OUTLINED_FUNCTION_51_0();
    v187 = sub_1CFD49648();
    MEMORY[0x1D3873940](v187);

    OUTLINED_FUNCTION_101();
    v188 = v315;
    v310[108] = v315;
    v189 = *(v172 + 28);
    HIDWORD(v310[55]._countAndFlagsBits) = v189;
    if (v175[v189] == 1)
    {
      v190 = v310[90]._object;
      v191 = v310[88]._countAndFlagsBits;
      v192 = v310[87]._countAndFlagsBits;
      OUTLINED_FUNCTION_1_5();
      sub_1CFCFFF3C();
      OUTLINED_FUNCTION_71();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        OUTLINED_FUNCTION_145();
        v193 = v173[199];
        v194 = v173[196];
        v195 = v173[185];
        v196 = v173[176];

        OUTLINED_FUNCTION_2_5();
        sub_1CFCF0B10(v196, v197);
        v198 = OUTLINED_FUNCTION_39_0();
        v180(v198);
        v199 = v194;
        v200 = sub_1CFD48E18();
        v201 = sub_1CFD492E8();
        OUTLINED_FUNCTION_49_0(v201);
        v202 = v173[196];
        OUTLINED_FUNCTION_35_2();
        if (v203)
        {
          v204 = OUTLINED_FUNCTION_120();
          OUTLINED_FUNCTION_66(v204);
          v207 = "Disclaimer not supported for mailThread. Not continuing with feedback.";
LABEL_107:
          OUTLINED_FUNCTION_47_1(&dword_1CFCD7000, v205, v206, v207);
          OUTLINED_FUNCTION_77();
          goto LABEL_108;
        }

        goto LABEL_108;
      }

      v219 = v310[88]._countAndFlagsBits;
      OUTLINED_FUNCTION_0_4();
      sub_1CFCF0B10(v220, v221);
      OUTLINED_FUNCTION_145();
      v222 = v173[199];
      v194 = v173[185];
      if (v21._object)
      {
        v223 = v173[195];
        v224 = OUTLINED_FUNCTION_40_1();
        v180(v224);

        v225 = sub_1CFD48E18();
        v226 = sub_1CFD492F8();
        if (OUTLINED_FUNCTION_109_0(v226))
        {
          v227 = OUTLINED_FUNCTION_120();
          *v227 = 0;
          _os_log_impl(&dword_1CFCD7000, v225, v223, "Showing disclaimer.", v227, 2u);
          OUTLINED_FUNCTION_121();
        }

        v228 = v310[97]._object;
        v229 = v310[93]._countAndFlagsBits;
        v230 = v310[92]._object;

        v310[109]._countAndFlagsBits = *(v229 + 8);
        v231 = OUTLINED_FUNCTION_51_0();
        v232(v231);
        v233 = swift_task_alloc();
        v310[109]._object = v233;
        *v233 = v310;
        OUTLINED_FUNCTION_21_3(v233);
        v234 = v310[60]._countAndFlagsBits;
        OUTLINED_FUNCTION_140();
        OUTLINED_FUNCTION_52_0();

        return sub_1CFCFB4B8(v235, v236, v237, v238);
      }

      v277 = v173[191];

      v278 = OUTLINED_FUNCTION_40_1();
      v180(v278);
      v199 = v277;
      v200 = sub_1CFD48E18();
      v279 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v279);
      v280 = v173[191];
    }

    else
    {
      OUTLINED_FUNCTION_149(v189);
      if ((v208 & 1) == 0)
      {
        v240 = v310[107]._object;
        v241 = v310[100]._object;
        v242 = v310[100]._countAndFlagsBits;
        v243 = v310[99]._object;
        v244 = v310[95]._countAndFlagsBits;
        v245 = v310[92]._object;

        v246 = OUTLINED_FUNCTION_68();
        v242(v246);
        sub_1CFD48E18();
        v247 = sub_1CFD492F8();
        if (OUTLINED_FUNCTION_95(v247))
        {
          v248 = OUTLINED_FUNCTION_120();
          OUTLINED_FUNCTION_119(v248);
          OUTLINED_FUNCTION_46_1(&dword_1CFCD7000, v249, v250, "Submitting feedback to FeedbackFramework");
          OUTLINED_FUNCTION_86();
        }

        OUTLINED_FUNCTION_164();
        v251 = v241[1];
        v252 = OUTLINED_FUNCTION_51_0();
        v253(v252);
        v254 = swift_task_alloc();
        v310[110]._countAndFlagsBits = v254;
        *v254 = v310;
        OUTLINED_FUNCTION_4_3(v254);
        v255 = v310[86]._object;
        OUTLINED_FUNCTION_99(v310[59]._object);
        OUTLINED_FUNCTION_52_0();

        return sub_1CFCFC0B8();
      }

      v209 = v310[90]._object;
      v210 = v310[87]._object;
      v194 = v310[87]._countAndFlagsBits;
      OUTLINED_FUNCTION_1_5();
      sub_1CFCFFF3C();
      OUTLINED_FUNCTION_71();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v211 = v310[108]._object;
        v212 = v310[107]._object;
        OUTLINED_FUNCTION_145();
        OUTLINED_FUNCTION_191();

        OUTLINED_FUNCTION_2_5();
        sub_1CFCF0B10(v188._countAndFlagsBits, v213);
        v214 = OUTLINED_FUNCTION_33_2();
        v180(v214);
        v199 = v184;
        v200 = sub_1CFD48E18();
        v215 = sub_1CFD492E8();
        OUTLINED_FUNCTION_49_0(v215);
        v216 = v173[189];
        OUTLINED_FUNCTION_35_2();
        if (v217)
        {
          v218 = OUTLINED_FUNCTION_120();
          OUTLINED_FUNCTION_66(v218);
          v207 = "TTR flow not supported for mailThread. Not continuing with feedback.";
          goto LABEL_107;
        }

LABEL_108:

        v287 = p_countAndFlagsBits[1];
        v288 = OUTLINED_FUNCTION_107();
        v289(v288);
        OUTLINED_FUNCTION_9_5();
        sub_1CFCF0B10(v194, v290);
        OUTLINED_FUNCTION_0_4();
        sub_1CFCF0B10(v199, v291);
        OUTLINED_FUNCTION_6_4();
        OUTLINED_FUNCTION_11_3();
        OUTLINED_FUNCTION_65();

        OUTLINED_FUNCTION_23_1();
        OUTLINED_FUNCTION_52_0();

        return v293(v292, v293, v294, v295, v296, v297, v298, v299, a9, a10, a11, a12);
      }

      v257 = v310[107]._object;
      v258 = v310[87]._object;
      OUTLINED_FUNCTION_0_4();
      sub_1CFCF0B10(v259, v260);
      p_countAndFlagsBits = v310[100]._object;
      v261 = v310[100]._countAndFlagsBits;
      v262 = v310[99]._object;
      v263 = v310[92]._object;
      if (v257)
      {
        v264 = v310[107]._object;
        v265 = v310[94]._countAndFlagsBits;
        OUTLINED_FUNCTION_70();
        v261();
        sub_1CFD48E18();
        v266 = sub_1CFD492F8();
        if (OUTLINED_FUNCTION_109_0(v266))
        {
          v267 = OUTLINED_FUNCTION_120();
          OUTLINED_FUNCTION_134(v267);
          OUTLINED_FUNCTION_50_0();
          _os_log_impl(v268, v269, v270, v271, v272, 2u);
          OUTLINED_FUNCTION_94();
        }

        OUTLINED_FUNCTION_163();
        v273 = OUTLINED_FUNCTION_106();
        v274(v273);
        v275 = swift_task_alloc();
        v310[110]._object = v275;
        *v275 = v310;
        OUTLINED_FUNCTION_5_3(v275);
        OUTLINED_FUNCTION_42_1();
        OUTLINED_FUNCTION_52_0();

        return sub_1CFCFC664();
      }

      v281 = v310[108]._object;
      v194 = v310[93]._object;

      v282 = OUTLINED_FUNCTION_39_0();
      (v261)(v282);
      v199 = v194;
      v200 = sub_1CFD48E18();
      v283 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v283);
      v284 = v310[93]._object;
    }

    OUTLINED_FUNCTION_35_2();
    if (v285)
    {
      v286 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_66(v286);
      v207 = "Missing personal content. Not continuing with feedback.";
      goto LABEL_107;
    }

    goto LABEL_108;
  }

  v122 = 0;
  v123 = (v306 + 32);
  while (1)
  {
    v124 = *v123++;
    v52 = __OFADD__(v122, v124);
    v122 += v124;
    if (v52)
    {
      break;
    }

    if (!--v121)
    {
      goto LABEL_43;
    }
  }

LABEL_114:
  __break(1u);
  return result;
}

uint64_t sub_1CFCF9F14()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v2 = *(v1 + 1752);
  v3 = *(v1 + 1720);
  v4 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v5 = v4;
  *(v7 + 858) = v6;

  v8 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1CFCFA01C()
{
  if (!*(v1 + 858))
  {
    OUTLINED_FUNCTION_75();
    v37 = *(v1 + 1552);
    v38 = *(v1 + 1480);

    v39 = OUTLINED_FUNCTION_33_2();
    v2(v39);
    v28 = v37;
    v40 = sub_1CFD48E18();
    v41 = sub_1CFD492D8();
    OUTLINED_FUNCTION_49_0(v41);
    v42 = *(v1 + 1744);
    v43 = *(v1 + 1552);
    OUTLINED_FUNCTION_186();
    if (v44)
    {
      v45 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_66(v45);
      v48 = "Failed to show disclaimer. Unable to continue with feedback.";
LABEL_13:
      OUTLINED_FUNCTION_47_1(&dword_1CFCD7000, v46, v47, v48);
      OUTLINED_FUNCTION_77();
    }

LABEL_14:

    v56 = OUTLINED_FUNCTION_107();
    v42(v56);
    goto LABEL_15;
  }

  if (*(v1 + 858) != 1)
  {
    OUTLINED_FUNCTION_75();
    v49 = *(v1 + 1544);
    v50 = *(v1 + 1480);

    v51 = OUTLINED_FUNCTION_33_2();
    v2(v51);
    v28 = v49;
    v40 = sub_1CFD48E18();
    v52 = sub_1CFD492F8();
    OUTLINED_FUNCTION_49_0(v52);
    v42 = *(v1 + 1744);
    v53 = *(v1 + 1544);
    OUTLINED_FUNCTION_186();
    if (v54)
    {
      v55 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_66(v55);
      v48 = "User did not accept disclaimer. Not continuing with feedback.";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v4 = *(v1 + 1608);
  (*(v1 + 1600))(*(v1 + 1536), *(v1 + 1592), *(v1 + 1480));
  v5 = sub_1CFD48E18();
  v6 = sub_1CFD492F8();
  if (OUTLINED_FUNCTION_95(v6))
  {
    v7 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_119(v7);
    OUTLINED_FUNCTION_46_1(&dword_1CFCD7000, v8, v9, "User accepted disclaimer. Continuing with feedback.");
    OUTLINED_FUNCTION_86();
  }

  v10 = *(v1 + 1744);
  v11 = *(v1 + 1536);
  v12 = *(v1 + 1488);
  v13 = *(v1 + 1480);

  v14 = OUTLINED_FUNCTION_51_0();
  v10(v14);
  OUTLINED_FUNCTION_149(*(v1 + 884));
  if (v15)
  {
    v16 = *(v1 + 1448);
    v17 = *(v1 + 1400);
    v18 = *(v1 + 1392);
    OUTLINED_FUNCTION_1_5();
    sub_1CFCFFF3C();
    OUTLINED_FUNCTION_71();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v19 = *(v1 + 1736);
      v20 = *(v1 + 1720);
      v21 = *(v1 + 1608);
      v22 = *(v1 + 1600);
      v0 = *(v1 + 1592);
      v23 = *(v1 + 1512);
      v24 = *(v1 + 1480);
      v25 = *(v1 + 1400);

      OUTLINED_FUNCTION_2_5();
      sub_1CFCF0B10(v25, v26);
      v27 = OUTLINED_FUNCTION_33_2();
      v22(v27);
      v28 = v23;
      v29 = sub_1CFD48E18();
      v30 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v30);
      v31 = *(v1 + 1512);
      OUTLINED_FUNCTION_38_1();
      if (v32)
      {
        v33 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_66(v33);
        v36 = "TTR flow not supported for mailThread. Not continuing with feedback.";
LABEL_31:
        OUTLINED_FUNCTION_47_1(&dword_1CFCD7000, v34, v35, v36);
        OUTLINED_FUNCTION_77();
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    v78 = *(v1 + 1720);
    v79 = *(v1 + 1400);
    OUTLINED_FUNCTION_0_4();
    sub_1CFCF0B10(v80, v81);
    if (!v78)
    {
      v103 = *(v1 + 1736);
      v104 = *(v1 + 1608);
      v105 = *(v1 + 1600);
      v106 = *(v1 + 1592);
      v0 = *(v1 + 1496);
      v107 = *(v1 + 1480);

      v108 = OUTLINED_FUNCTION_39_0();
      v105(v108);
      v28 = v0;
      v29 = sub_1CFD48E18();
      v109 = sub_1CFD492E8();
      OUTLINED_FUNCTION_49_0(v109);
      v110 = *(v1 + 1496);
      OUTLINED_FUNCTION_38_1();
      if (v111)
      {
        v112 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_66(v112);
        v36 = "Missing personal content. Not continuing with feedback.";
        goto LABEL_31;
      }

LABEL_32:

      v113 = *(v3 + 8);
      v114 = OUTLINED_FUNCTION_107();
      v115(v114);
LABEL_15:
      sub_1CFCF0B10(v0, type metadata accessor for ModelInputContentKind);
      OUTLINED_FUNCTION_0_4();
      sub_1CFCF0B10(v28, v57);
      OUTLINED_FUNCTION_6_4();
      OUTLINED_FUNCTION_11_3();
      v116 = *(v1 + 1152);
      v117 = *(v1 + 1144);
      v118 = *(v1 + 1128);
      v119 = *(v1 + 1120);
      v120 = *(v1 + 1104);
      v121 = *(v1 + 1088);
      v122 = *(v1 + 1080);
      v123 = *(v1 + 1056);
      v124 = *(v1 + 1048);
      v125 = *(v1 + 1040);
      v126 = *(v1 + 1032);
      v127 = *(v1 + 1024);
      v128 = *(v1 + 1016);
      v129 = *(v1 + 1000);
      v130 = *(v1 + 976);
      v131 = *(v1 + 968);

      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_190();

      __asm { BRAA            X1, X16 }
    }

    v82 = *(v1 + 1720);
    v83 = *(v1 + 1608);
    (*(v1 + 1600))(*(v1 + 1504), *(v1 + 1592), *(v1 + 1480));
    v84 = sub_1CFD48E18();
    v85 = sub_1CFD492F8();
    if (OUTLINED_FUNCTION_109_0(v85))
    {
      v86 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_134(v86);
      OUTLINED_FUNCTION_50_0();
      _os_log_impl(v87, v88, v89, v90, v91, 2u);
      OUTLINED_FUNCTION_94();
    }

    v92 = *(v1 + 1504);
    v93 = *(v1 + 1488);
    v94 = *(v1 + 1480);

    v95 = *(v93 + 8);
    v96 = OUTLINED_FUNCTION_32_1();
    v97(v96);
    v98 = swift_task_alloc();
    *(v1 + 1768) = v98;
    *v98 = v1;
    OUTLINED_FUNCTION_5_3(v98);
    v99 = *(v1 + 1736);
    v100 = *(v1 + 1728);
    v101 = *(v1 + 1712);
    OUTLINED_FUNCTION_99(*(v1 + 952));
    OUTLINED_FUNCTION_190();

    return sub_1CFCFC664();
  }

  else
  {
    OUTLINED_FUNCTION_75();
    v60 = *(v1 + 1520);
    v61 = *(v1 + 1480);

    v62 = OUTLINED_FUNCTION_33_2();
    v2(v62);
    v63 = sub_1CFD48E18();
    v64 = sub_1CFD492F8();
    if (OUTLINED_FUNCTION_95(v64))
    {
      v65 = OUTLINED_FUNCTION_120();
      OUTLINED_FUNCTION_119(v65);
      OUTLINED_FUNCTION_46_1(&dword_1CFCD7000, v66, v67, "Submitting feedback to FeedbackFramework");
      OUTLINED_FUNCTION_86();
    }

    v68 = *(v1 + 1520);
    v69 = *(v1 + 1488);
    v70 = *(v1 + 1480);

    v71 = *(v69 + 8);
    v72 = OUTLINED_FUNCTION_51_0();
    v73(v72);
    v74 = swift_task_alloc();
    *(v1 + 1760) = v74;
    *v74 = v1;
    OUTLINED_FUNCTION_4_3(v74);
    v75 = *(v1 + 1384);
    OUTLINED_FUNCTION_99(*(v1 + 952));
    OUTLINED_FUNCTION_190();

    return sub_1CFCFC0B8();
  }
}

uint64_t sub_1CFCFA744()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v2 = *(v1 + 1760);
  v3 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1CFCFA828()
{
  v1 = v0[181];
  v2 = v0[173];
  OUTLINED_FUNCTION_9_5();
  sub_1CFCF0B10(v3, v4);
  OUTLINED_FUNCTION_0_4();
  sub_1CFCF0B10(v1, v5);
  OUTLINED_FUNCTION_6_4();
  v8 = v0[184];
  v9 = v0[183];
  v10 = v0[181];
  v11 = v0[180];
  v12 = v0[179];
  v13 = v0[178];
  v14 = v0[177];
  v15 = v0[176];
  v16 = v0[175];
  v17 = v0[173];
  v18 = v0[171];
  v19 = v0[170];
  v20 = v0[169];
  v21 = v0[168];
  v22 = v0[167];
  v23 = v0[166];
  v24 = v0[165];
  v25 = v0[164];
  v26 = v0[162];
  v27 = v0[161];
  v28 = v0[160];
  v29 = v0[159];
  v30 = v0[158];
  v31 = v0[155];
  v32 = v0[154];
  v33 = v0[151];
  v34 = v0[148];
  v35 = v0[147];
  v36 = v0[146];
  v37 = v0[145];
  v38 = v0[144];
  v39 = v0[143];
  v40 = v0[141];
  v41 = v0[140];
  v42 = v0[138];
  v43 = v0[136];
  v44 = v0[135];
  v45 = v0[132];
  v46 = v0[131];
  v47 = v0[130];
  v48 = v0[129];
  v49 = v0[128];
  v50 = v0[127];
  v51 = v0[125];
  v52 = v0[122];
  v53 = v0[121];

  OUTLINED_FUNCTION_23_1();

  return v6();
}

uint64_t sub_1CFCFABA4()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v2 = v1[221];
  v3 = v1[217];
  v4 = v1[215];
  v5 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1CFCFACC0()
{
  OUTLINED_FUNCTION_156();
  v2 = OUTLINED_FUNCTION_116();
  v3 = type metadata accessor for MailEntity(v2);
  v4 = OUTLINED_FUNCTION_6_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_184();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F50, &qword_1CFD4CFB8);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1CFD02140();
  OUTLINED_FUNCTION_140();
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_1CFCFFDE8();
    OUTLINED_FUNCTION_125();
    v15 = v0 + v14;
    v16 = *(v0 + v14);
    if (!v16)
    {
      goto LABEL_8;
    }

    v17 = *(v15 + 8);
    v18 = v16(*v1, *(v1 + 8));
    if (!v19)
    {
      goto LABEL_8;
    }

    v20 = v18;
    v21 = v19;
    v22 = sub_1CFD49048();
    v27 = *(v1 + 200);
    v28 = *(v1 + 216);
    MailEntity.Body.text.getter();
    if (v23)
    {
      v24 = sub_1CFD49048();

      if (v24 >= v22)
      {
LABEL_7:

LABEL_8:
        OUTLINED_FUNCTION_117();
        sub_1CFD02140();
LABEL_11:
        OUTLINED_FUNCTION_13_3();
        sub_1CFCF0B10(v1, v26);
        goto LABEL_12;
      }
    }

    else if (v22 < 1)
    {
      goto LABEL_7;
    }

    sub_1CFCEF63C(*(v1 + 200), *(v1 + 208), *(v1 + 216));
    *(v1 + 200) = v20;
    *(v1 + 208) = v21;
    *(v1 + 216) = 0;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F60, &unk_1CFD53AE0) + 48);
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_68();
    sub_1CFCFFF3C();
    OUTLINED_FUNCTION_128(2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_70();
  sub_1CFCE3050(v11, v12, v13);
  OUTLINED_FUNCTION_44_1();
  sub_1CFD02140();
LABEL_12:
  OUTLINED_FUNCTION_155();
}

void sub_1CFCFAEC8()
{
  OUTLINED_FUNCTION_143();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v23 = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_18_2(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_179();
  v15 = *(v5 + 16);
  if (v15)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v22 = v2;
    v2(0, v15, 0);
    v16 = *(v11 + 80);
    OUTLINED_FUNCTION_73();
    v18 = v5 + v17;
    v19 = *(v11 + 72);
    while (1)
    {
      v23(v18);
      if (v3)
      {
        break;
      }

      v3 = 0;
      v21 = *(v24 + 16);
      v20 = *(v24 + 24);
      if (v21 >= v20 >> 1)
      {
        v22(v20 > 1, v21 + 1, 1);
      }

      *(v24 + 16) = v21 + 1;
      sub_1CFD020E8();
      v18 += v19;
      if (!--v15)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_142();
  }
}

void sub_1CFCFB054()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_116();
  v2 = type metadata accessor for MessageEntity();
  v3 = OUTLINED_FUNCTION_25(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_184();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3010, &qword_1CFD4D068);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  OUTLINED_FUNCTION_136();
  if (!swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_176();
    sub_1CFCFFDE8();
    OUTLINED_FUNCTION_125();
    v14 = v0 + v13;
    v15 = *(v0 + v13);
    if (v15)
    {
      v16 = *(v14 + 8);
      v17 = v15(*v1, v1[1]);
      if (v18)
      {
        v19 = v17;
        v20 = v18;
        v21 = sub_1CFD49048();
        v22 = (v1 + *(v2 + 60));
        v23 = *v22;
        v24 = v22[1];
        if (sub_1CFD49048() < v21)
        {

          *v22 = v19;
          v22[1] = v20;
          v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F3020, &unk_1CFD53AF0) + 48);
          OUTLINED_FUNCTION_28_1();
          OUTLINED_FUNCTION_68();
          sub_1CFCFFF3C();
          OUTLINED_FUNCTION_128(1);
LABEL_9:
          OUTLINED_FUNCTION_27_2();
          sub_1CFCF0B10(v1, v26);
          goto LABEL_10;
        }
      }
    }

    OUTLINED_FUNCTION_117();
    sub_1CFD02140();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_70();
  sub_1CFCE3050(v10, v11, v12);
  OUTLINED_FUNCTION_44_1();
  sub_1CFD02140();
LABEL_10:
  OUTLINED_FUNCTION_155();
}

void sub_1CFCFB220()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_116();
  v2 = type metadata accessor for NotificationEntity();
  v3 = OUTLINED_FUNCTION_25(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_184();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F30, &qword_1CFD4CF98);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_76();
  sub_1CFD02140();
  OUTLINED_FUNCTION_136();
  if (!swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_176();
    sub_1CFCFFDE8();
    OUTLINED_FUNCTION_125();
    v14 = v0 + v13;
    v15 = *(v0 + v13);
    if (v15)
    {
      v16 = *(v14 + 8);
      v17 = v15(*v1, v1[1]);
      if (v18)
      {
        v19 = v17;
        v20 = v18;
        v21 = sub_1CFD49048();
        v22 = v21;
        v23 = *(v2 + 44);
        v24 = (v1 + v23);
        if (*(v1 + v23 + 8))
        {
          v25 = *v24;
          v26 = *(v1 + v23 + 8);
          if (sub_1CFD49048() < v22)
          {

LABEL_9:
            *v24 = v19;
            v24[1] = v20;
            v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F40, &qword_1CFD53B00) + 48);
            OUTLINED_FUNCTION_8_4();
            OUTLINED_FUNCTION_68();
            sub_1CFCFFF3C();
            OUTLINED_FUNCTION_128(3);
LABEL_12:
            OUTLINED_FUNCTION_3_4();
            sub_1CFCF0B10(v1, v28);
            goto LABEL_13;
          }
        }

        else if (v21 > 0)
        {
          goto LABEL_9;
        }
      }
    }

    OUTLINED_FUNCTION_117();
    sub_1CFD02140();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_70();
  sub_1CFCE3050(v10, v11, v12);
  OUTLINED_FUNCTION_44_1();
  sub_1CFD02140();
LABEL_13:
  OUTLINED_FUNCTION_155();
}

uint64_t sub_1CFCFB400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for NotificationEntity();
  v5 = v4;
  if (v3)
  {
    v6 = *(*(v4 - 8) + 80);
    sub_1CFCFFF3C();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v5);
}

uint64_t sub_1CFCFB4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = OUTLINED_FUNCTION_7_3();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1CFCFB4E8()
{
  OUTLINED_FUNCTION_29_0();
  v1 = *(v0 + 32);
  v8 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v8;
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  *(v0 + 64) = v5;
  *v5 = v6;
  v5[1] = sub_1CFCFB5F0;

  return MEMORY[0x1EEE6DDE0](v0 + 72, 0, 0, 0xD000000000000030, 0x80000001CFD5DEC0, sub_1CFD01BEC, v2, &type metadata for SummarizationFeedbackClient.DisclaimerResult);
}

uint64_t sub_1CFCFB5F0()
{
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_25_1();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_12_1();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1CFCFB708()
{
  OUTLINED_FUNCTION_156();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v120 = *MEMORY[0x1E69E9840];
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F68, &qword_1CFD4CFD0);
  OUTLINED_FUNCTION_37(v114);
  v110 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_12_0();
  v108 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_22_1();
  v109 = v17;
  v111 = sub_1CFD48E38();
  v18 = OUTLINED_FUNCTION_37(v111);
  v113 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_185();
  v107 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v106 = &v105 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F70, &qword_1CFD4CFD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFD4BE50;
  v26 = *MEMORY[0x1E695EE58];
  if (!*MEMORY[0x1E695EE58])
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = inited;
  OUTLINED_FUNCTION_85();
  v28 = MEMORY[0x1E69E6158];
  v29[8] = MEMORY[0x1E69E6158];
  v29[4] = v26;
  v29[5] = 0xD000000000000038;
  v29[6] = v30;
  v31 = *MEMORY[0x1E695EE60];
  if (!*MEMORY[0x1E695EE60])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v112 = v11;
  *(v27 + 72) = v31;
  v117 = 10;
  v118 = 0xE100000000000000;
  v32 = v31;
  v33 = v26;
  MEMORY[0x1D3873940](v9, v7);
  MEMORY[0x1D3873940](2570, 0xE200000000000000);
  MEMORY[0x1D3873940](v5, v3);
  v34 = v117;
  v35 = v118;
  *(v27 + 104) = v28;
  *(v27 + 80) = v34;
  *(v27 + 88) = v35;
  v36 = *MEMORY[0x1E695EE78];
  if (!*MEMORY[0x1E695EE78])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *(v27 + 144) = v28;
  *(v27 + 112) = v36;
  *(v27 + 120) = 0x6572616853;
  *(v27 + 128) = 0xE500000000000000;
  v37 = *MEMORY[0x1E695EE70];
  if (!*MEMORY[0x1E695EE70])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v27 + 184) = v28;
  *(v27 + 152) = v37;
  *(v27 + 160) = 0x6C65636E6143;
  *(v27 + 168) = 0xE600000000000000;
  v38 = *MEMORY[0x1E695EE68];
  if (!*MEMORY[0x1E695EE68])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(v27 + 192) = v38;
  v39 = MEMORY[0x1E69E6370];
  *(v27 + 224) = MEMORY[0x1E69E6370];
  *(v27 + 200) = 1;
  type metadata accessor for CFString(0);
  OUTLINED_FUNCTION_23_2();
  sub_1CFCFFDA0(v40, v41);
  v42 = v38;
  v43 = v37;
  v44 = v36;
  sub_1CFD48EC8();
  v45 = *MEMORY[0x1E69D4540];
  if (!*MEMORY[0x1E69D4540])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v119 = v39;
  LOBYTE(v117) = 1;
  OUTLINED_FUNCTION_151();
  v46 = v45;
  OUTLINED_FUNCTION_98();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_3();

  v47 = *MEMORY[0x1E69D4510];
  if (!*MEMORY[0x1E69D4510])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v48 = v1;
  v119 = v39;
  LOBYTE(v117) = 1;
  OUTLINED_FUNCTION_151();
  v49 = v47;
  OUTLINED_FUNCTION_98();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_3();

  v50 = *MEMORY[0x1E69D4480];
  if (!*MEMORY[0x1E69D4480])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_98();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_3();

  v51 = *MEMORY[0x1E69D44E8];
  if (!*MEMORY[0x1E69D44E8])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_98();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_3();

  v52 = *MEMORY[0x1E69D4530];
  if (!*MEMORY[0x1E69D4530])
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_98();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_3();

  v53 = *MEMORY[0x1E69D4490];
  if (!*MEMORY[0x1E69D4490])
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v119 = v39;
  LOBYTE(v117) = 0;
  OUTLINED_FUNCTION_151();
  v54 = v53;
  OUTLINED_FUNCTION_98();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_3();

  v55 = *MEMORY[0x1E69D44E0];
  if (!*MEMORY[0x1E69D44E0])
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_98();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_3();

  v56 = *MEMORY[0x1E69D4500];
  if (!*MEMORY[0x1E69D4500])
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_98();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_3();

  v57 = *MEMORY[0x1E69D44A8];
  if (!*MEMORY[0x1E69D44A8])
  {
    goto LABEL_40;
  }

  v119 = v39;
  LOBYTE(v117) = 1;
  OUTLINED_FUNCTION_151();
  v58 = v57;
  OUTLINED_FUNCTION_98();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_22_3();

  v59 = v1[4];
  if (v59)
  {
    v57 = v1[7];
    v60 = v1[5];
    v61 = v59;
    v62 = v60;

    CFRunLoopSourceInvalidate(v61);
    CFUserNotificationCancel(v62);

    v63 = v1[4];
    v64 = v1[5];
    v65 = v1[6];
    v66 = v1[7];
    *(v1 + 2) = 0u;
    *(v1 + 3) = 0u;
    sub_1CFD00254(v63, v64);
  }

  v116[0] = 0;
  v67 = sub_1CFD48EB8();

  v68 = CFUserNotificationCreate(0, 0.0, 3uLL, v116, v67);

  if (v68)
  {
    v69 = *MEMORY[0x1E695E480];
    v70 = v68;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(v69, v70, sub_1CFCFBFA4, 0);
    v72 = v112;
    v73 = v113;
    if (RunLoopSource)
    {
      v74 = RunLoopSource;
      v111 = swift_allocObject();
      swift_weakInit();
      v76 = v109;
      v75 = v110;
      v77 = v114;
      (*(v110 + 16))(v109, v72, v114);
      v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
      v113 = v70;
      v79 = (v108 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = swift_allocObject();
      (*(v75 + 32))(v80 + v78, v76, v77);
      *(v80 + v79) = v111;
      v81 = v48[4];
      v82 = v48[5];
      v84 = v48[6];
      v83 = v48[7];
      v48[4] = v74;
      v48[5] = v68;
      v48[6] = sub_1CFD01C20;
      v48[7] = v80;
      v85 = v74;
      v86 = v113;
      v87 = v85;
      OUTLINED_FUNCTION_81();
      sub_1CFD00254(v88, v89);
      v90 = CFRunLoopGetMain();
      CFRunLoopAddSource(v90, v87, *MEMORY[0x1E695E8D0]);
    }

    else
    {

      v98 = sub_1CFD08CC4();
      v99 = v106;
      v100 = v111;
      v73[2](v106, v98, v111);
      v101 = sub_1CFD48E18();
      v102 = sub_1CFD492D8();
      if (OUTLINED_FUNCTION_126(v102))
      {
        v103 = OUTLINED_FUNCTION_120();
        OUTLINED_FUNCTION_134(v103);
        _os_log_impl(&dword_1CFCD7000, v101, v102, "Could not create RunLoopSource for CFUserNotification. Unable to send feedback.", v57, 2u);
        OUTLINED_FUNCTION_94();
      }

      (v73[1])(v99, v100);
      LOBYTE(v117) = 0;
      sub_1CFD49238();
    }
  }

  else
  {
    v91 = sub_1CFD08CC4();
    v92 = v113;
    v93 = v107;
    v94 = v111;
    (*(v113 + 2))(v107, v91, v111);
    v95 = sub_1CFD48E18();
    v96 = sub_1CFD492D8();
    if (OUTLINED_FUNCTION_194(v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 67109120;
      swift_beginAccess();
      *(v97 + 4) = v116[0];
      _os_log_impl(&dword_1CFCD7000, v95, v96, "Could not create CFUserNotification: %d. Unable to send feedback.", v97, 8u);
      OUTLINED_FUNCTION_121();
    }

    (*(v92 + 1))(v93, v94);
    v115 = 0;
    sub_1CFD49238();
  }

  v104 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_155();
}

void sub_1CFCFBFA4(void *a1, uint64_t a2)
{
  v3 = a1;
  sub_1CFCFBFF0(a2);
}

uint64_t sub_1CFCFBFF0(uint64_t result)
{
  v1 = result;
  if (_MergedGlobals != -1)
  {
    result = OUTLINED_FUNCTION_37_2();
  }

  if (*(qword_1EDDD3778 + 32))
  {
    v3 = *(qword_1EDDD3778 + 48);
    v2 = *(qword_1EDDD3778 + 56);
    v4 = *(qword_1EDDD3778 + 40);
    v5 = OUTLINED_FUNCTION_183();
    sub_1CFD01D7C(v5, v6);

    v7 = OUTLINED_FUNCTION_183();
    sub_1CFD00254(v7, v8);
    v3(v1);
  }

  return result;
}

uint64_t sub_1CFCFC0B8()
{
  OUTLINED_FUNCTION_18_1();
  v0[4] = v1;
  v0[5] = v2;
  v3 = sub_1CFD48E38();
  v0[6] = v3;
  OUTLINED_FUNCTION_18_2(v3);
  v0[7] = v4;
  v6 = *(v5 + 64);
  v0[8] = OUTLINED_FUNCTION_26_0();
  v7 = type metadata accessor for ModelInputContentKind(0);
  OUTLINED_FUNCTION_6_2(v7);
  v9 = *(v8 + 64);
  v0[9] = OUTLINED_FUNCTION_26_0();
  v10 = type metadata accessor for SummarizationFeedback(0);
  OUTLINED_FUNCTION_6_2(v10);
  v12 = *(v11 + 64);
  v0[10] = OUTLINED_FUNCTION_26_0();
  v13 = type metadata accessor for FeedbackRequest(0);
  OUTLINED_FUNCTION_6_2(v13);
  v15 = *(v14 + 64);
  v0[11] = OUTLINED_FUNCTION_26_0();
  v16 = OUTLINED_FUNCTION_7_3();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1CFCFC1BC()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[4];
  v4 = v0[5];
  type metadata accessor for SummarizationPipelineClient();
  v0[12] = SummarizationPipelineClient.__allocating_init()();
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_176();
  sub_1CFCFFF3C();
  OUTLINED_FUNCTION_140();
  sub_1CFCFFF3C();
  OUTLINED_FUNCTION_32_1();
  FeedbackRequest.init(summarizationFeedback:modelInputContentKind:)();
  swift_task_alloc();
  OUTLINED_FUNCTION_19_1();
  v0[13] = v6;
  *v6 = v7;
  v6[1] = sub_1CFCFC2B8;
  v8 = v0[11];

  return sub_1CFD107F8();
}

uint64_t sub_1CFCFC2B8()
{
  OUTLINED_FUNCTION_29_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_12_1();
  *v4 = v3;
  v5 = v2[13];
  *v4 = *v1;
  v3[14] = v0;

  v6 = v2[12];
  v7 = v2[11];
  if (v0)
  {
    sub_1CFCF0B10(v7, type metadata accessor for FeedbackRequest);

    v8 = sub_1CFCFC4C8;
  }

  else
  {

    sub_1CFCF0B10(v7, type metadata accessor for FeedbackRequest);
    v9 = v3[3];

    v8 = sub_1CFCFC448;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1CFCFC448()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];

  OUTLINED_FUNCTION_23_1();

  return v5();
}

uint64_t sub_1CFCFC4C8()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0[14];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = sub_1CFD08CC4();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1CFD48E18();
  LOBYTE(v4) = sub_1CFD492D8();

  v8 = os_log_type_enabled(v7, v4);
  v9 = v0[14];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    OUTLINED_FUNCTION_50_0();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    sub_1CFCE3050(v11, &qword_1EC4F2F90, &qword_1CFD4CFE8);
    OUTLINED_FUNCTION_121();
    OUTLINED_FUNCTION_94();
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  v20 = v0[10];
  v19 = v0[11];
  v22 = v0[8];
  v21 = v0[9];

  OUTLINED_FUNCTION_23_1();

  return v23();
}

uint64_t sub_1CFCFC664()
{
  OUTLINED_FUNCTION_18_1();
  v38 = *MEMORY[0x1E69E9840];
  v0[111] = v1;
  v0[110] = v2;
  v0[109] = v3;
  v0[108] = v4;
  v0[107] = v5;
  v6 = sub_1CFD48B48();
  v0[112] = v6;
  OUTLINED_FUNCTION_18_2(v6);
  v0[113] = v7;
  v9 = *(v8 + 64);
  v0[114] = OUTLINED_FUNCTION_26_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2F98, &unk_1CFD4CFF0);
  OUTLINED_FUNCTION_6_2(v10);
  v12 = *(v11 + 64);
  v0[115] = OUTLINED_FUNCTION_26_0();
  v13 = sub_1CFD48B88();
  v0[116] = v13;
  OUTLINED_FUNCTION_18_2(v13);
  v0[117] = v14;
  v16 = *(v15 + 64);
  v0[118] = OUTLINED_FUNCTION_26_0();
  v17 = sub_1CFD48FD8();
  v0[119] = v17;
  OUTLINED_FUNCTION_18_2(v17);
  v0[120] = v18;
  v20 = *(v19 + 64);
  v0[121] = OUTLINED_FUNCTION_26_0();
  v21 = sub_1CFD48BF8();
  v0[122] = v21;
  OUTLINED_FUNCTION_18_2(v21);
  v0[123] = v22;
  v24 = *(v23 + 64);
  v0[124] = OUTLINED_FUNCTION_26_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2D40, &qword_1CFD4B748);
  OUTLINED_FUNCTION_6_2(v25);
  v27 = *(v26 + 64);
  v0[125] = OUTLINED_FUNCTION_130();
  v0[126] = swift_task_alloc();
  v28 = sub_1CFD48C58();
  v0[127] = v28;
  OUTLINED_FUNCTION_18_2(v28);
  v0[128] = v29;
  v31 = *(v30 + 64);
  v0[129] = OUTLINED_FUNCTION_26_0();
  v32 = sub_1CFD48E38();
  v0[130] = v32;
  OUTLINED_FUNCTION_18_2(v32);
  v0[131] = v33;
  v35 = *(v34 + 64);
  v0[132] = OUTLINED_FUNCTION_130();
  v0[133] = swift_task_alloc();
  v0[134] = swift_task_alloc();
  v0[135] = swift_task_alloc();
  v0[136] = swift_task_alloc();
  v36 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1CFCFC95C, 0, 0);
}

uint64_t sub_1CFCFC95C()
{
  v1 = v0;
  v192 = *MEMORY[0x1E69E9840];
  v2 = v0[107];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FA0, &qword_1CFD4D000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFD4BE60;
  *(inited + 32) = 0x34303739333831;
  *(inited + 40) = 0xE700000000000000;
  if (*(v2 + 1))
  {
    if (*(v2 + 1) != 1)
    {
      v40 = v0[136];
      v41 = v0[131];
      v42 = v1[130];

      sub_1CFD08CC4();
      v43 = OUTLINED_FUNCTION_113();
      v44(v43);
      v45 = sub_1CFD48E18();
      v46 = sub_1CFD492D8();
      v47 = OUTLINED_FUNCTION_126(v46);
      v48 = v1[136];
      v49 = v1[131];
      v50 = v1[130];
      if (v47)
      {
        v51 = OUTLINED_FUNCTION_120();
        *v51 = 0;
        _os_log_impl(&dword_1CFCD7000, v45, v46, "Unsupported feedback sentiment", v51, 2u);
        OUTLINED_FUNCTION_121();
      }

      goto LABEL_14;
    }

    v4 = "SONAL DATA\nPLEASE REVIEW";
    v175 = 0xD00000000000001ALL;
    v5 = 0x30333831353831;
  }

  else
  {
    v175 = 0xD00000000000001BLL;
    v4 = "sHandle8@NSError16";
    v5 = 0x38323831353831;
  }

  v6 = v0[126];
  v7 = v0[124];
  v8 = v0[123];
  v169 = v8;
  v171 = v0[122];
  v173 = v0[127];
  v177 = v0[129];
  v179 = v0[121];
  v181 = v0[120];
  v184 = v0[119];
  v9 = v0[109];
  v10 = v0[108];
  v11 = sub_1CFCFE404(1, 2, 1, inited);
  *(v11 + 2) = 2;
  *(v11 + 6) = v5;
  *(v11 + 7) = 0xE700000000000000;
  v188 = v11;

  MEMORY[0x1D3873940](2570, 0xE200000000000000);
  MEMORY[0x1D3873940](v175, v4 | 0x8000000000000000);

  v12 = NSTemporaryDirectory();
  sub_1CFD48FA8();

  __swift_storeEnumTagSinglePayload(v6, 1, 1, v173);
  v13 = *MEMORY[0x1E6968F70];
  v14 = *(v8 + 104);
  v15 = v171;
  v14(v7, v13, v171);
  sub_1CFD48C48();
  OUTLINED_FUNCTION_85();
  v1[103] = 0xD000000000000011;
  v1[104] = v16;
  v14(v7, v13, v171);
  sub_1CFD01DC4();
  sub_1CFD48C28();
  (*(v169 + 8))(v7, v171);
  sub_1CFD48FC8();
  v17 = sub_1CFD48FB8();
  v19 = v18;

  (*(v181 + 8))(v179, v184);
  if (v19 >> 60 == 15)
  {
    v20 = v1[134];
    v21 = v1[131];
    v22 = v1[130];

    sub_1CFD08CC4();
    v23 = OUTLINED_FUNCTION_113();
    v24(v23);
    v25 = sub_1CFD48E18();
    v26 = sub_1CFD492E8();
    OUTLINED_FUNCTION_49_0(v26);
    v27 = v1[134];
    OUTLINED_FUNCTION_158();
    if (!v28)
    {
LABEL_9:

      v33 = *(v15 + 1);
      v34 = OUTLINED_FUNCTION_107();
      v35(v34);
      v36 = *(v21 + 8);
      v37 = OUTLINED_FUNCTION_71();
LABEL_15:
      v38(v37);
      v53 = v1[136];
      v54 = v1[135];
      v55 = v1[134];
      v56 = v1[133];
      v57 = v1[132];
      v58 = v1[129];
      v59 = v1[126];
      v60 = v1[125];
      v61 = v1[124];
      v62 = v1;
      v63 = v1[121];
      v182 = v62[118];
      v185 = v62[115];
      v189 = v62[114];

      OUTLINED_FUNCTION_23_1();
      v65 = *MEMORY[0x1E69E9840];

      return v64();
    }

    v29 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_66(v29);
    v32 = "Failed to encode string. Unable to send user feedback.";
LABEL_8:
    OUTLINED_FUNCTION_47_1(&dword_1CFCD7000, v30, v31, v32);
    OUTLINED_FUNCTION_77();
    goto LABEL_9;
  }

  v39 = v1[129];
  sub_1CFD48C88();
  v67 = v1[129];
  v186 = v1[116];
  v68 = v1[115];
  v69 = v1[111];
  v70 = v1[110];
  sub_1CFD01E18(v17, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FB0, &qword_1CFD4D008);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1CFD4BE70;
  OUTLINED_FUNCTION_85();
  v72[4] = 0xD00000000000001ALL;
  v72[5] = v73;
  v72[6] = 49;
  v72[7] = 0xE100000000000000;
  v72[8] = 0x656C746954;
  v72[9] = 0xE500000000000000;
  OUTLINED_FUNCTION_85();
  *(v74 + 80) = 0xD00000000000001CLL;
  *(v74 + 88) = v75;
  *(v74 + 96) = 0x7470697263736544;
  *(v74 + 104) = 0xEB000000006E6F69;
  *(v74 + 112) = v70;
  *(v74 + 120) = v69;
  strcpy((v74 + 128), "Classification");
  *(v74 + 143) = -18;
  *(v74 + 144) = 1802723668;
  *(v74 + 152) = 0xE400000000000000;
  *(v74 + 160) = 0x6375646F72706552;
  *(v74 + 168) = 0xEF7974696C696269;
  strcpy((v74 + 176), "Not Applicable");
  *(v74 + 191) = -18;
  strcpy((v74 + 192), "ComponentName");
  *(v74 + 206) = -4864;
  *(v74 + 208) = 0x70556863746143;
  *(v74 + 216) = 0xE700000000000000;
  *(v74 + 224) = 0xD000000000000010;
  *(v74 + 232) = 0x80000001CFD5DFC0;
  *(v74 + 240) = 0x6B63616264656546;
  *(v74 + 248) = 0xE800000000000000;
  *(v74 + 256) = 0x6E656E6F706D6F43;
  *(v74 + 264) = 0xEB00000000444974;
  *(v74 + 272) = 0x32383731363631;
  *(v74 + 280) = 0xE700000000000000;
  *(v74 + 288) = 0x7364726F7779654BLL;
  *(v74 + 296) = 0xE800000000000000;
  v15 = v188;
  v1[106] = v188;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2A98, &unk_1CFD4D010);
  sub_1CFD01E84();
  v76 = sub_1CFD48ED8();
  v78 = v77;

  *(v71 + 304) = v76;
  *(v71 + 312) = v78;
  *(v71 + 320) = 0x676169446F747541;
  *(v71 + 328) = 0xEF73636974736F6ELL;
  *(v71 + 336) = 49;
  *(v71 + 344) = 0xE100000000000000;
  strcpy((v71 + 352), "DeleteOnAttach");
  *(v71 + 367) = -18;
  *(v71 + 368) = 49;
  *(v71 + 376) = 0xE100000000000000;
  OUTLINED_FUNCTION_85();
  *(v71 + 384) = 0xD000000000000014;
  *(v71 + 392) = v79;
  OUTLINED_FUNCTION_85();
  *(v71 + 400) = 0xD000000000000056;
  *(v71 + 408) = v80;
  *(v71 + 416) = 0x656D686361747441;
  *(v71 + 424) = 0xEB0000000073746ELL;
  *(v71 + 432) = sub_1CFD48C18();
  *(v71 + 440) = v81;
  v82 = sub_1CFD48EC8();
  sub_1CFD48B78();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v68, 1, v186);
  if (EnumTagSinglePayload == 1)
  {
    v84 = v1[135];
    v21 = v1[131];
    v85 = v1[130];
    v86 = v1[115];

    sub_1CFCE3050(v86, &qword_1EC4F2F98, &unk_1CFD4CFF0);
    sub_1CFD08CC4();
    v87 = OUTLINED_FUNCTION_113();
    v88(v87);
    v25 = sub_1CFD48E18();
    v89 = sub_1CFD492E8();
    OUTLINED_FUNCTION_49_0(v89);
    v90 = v1[135];
    OUTLINED_FUNCTION_158();
    if (!v91)
    {
      goto LABEL_9;
    }

    v92 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_66(v92);
    v32 = "Failed to create URL. Unable to open Tap to Radar.";
    goto LABEL_8;
  }

  (*(v1[117] + 32))(v1[118], v1[115], v1[116]);
  v93 = *(v82 + 16);
  v94 = v82;
  if (v93)
  {
    v95 = v1[113];
    v190 = MEMORY[0x1E69E7CC0];
    sub_1CFCFF21C(0, v93, 0);
    v96 = v190;
    v99 = sub_1CFD01EE8(v82);
    v100 = 0;
    v101 = v82 + 64;
    v176 = v82 + 64;
    v178 = v95;
    v174 = v82;
    v170 = v97;
    v172 = v93;
    v168 = v82 + 72;
    while ((v99 & 0x8000000000000000) == 0 && v99 < 1 << *(v94 + 32))
    {
      v102 = v99 >> 6;
      if ((*(v101 + 8 * (v99 >> 6)) & (1 << v99)) == 0)
      {
        goto LABEL_52;
      }

      if (*(v94 + 36) != v97)
      {
        goto LABEL_53;
      }

      v183 = v100;
      v187 = v97;
      v180 = v98;
      v103 = v1[114];
      v104 = (*(v94 + 48) + 16 * v99);
      v105 = v96;
      v106 = v1;
      v107 = *v104;
      v108 = v104[1];
      v109 = (*(v94 + 56) + 16 * v99);
      v110 = *v109;
      v111 = v109[1];

      v96 = v105;
      sub_1CFD48B38();

      v113 = *(v105 + 16);
      v112 = *(v105 + 24);
      if (v113 >= v112 >> 1)
      {
        v127 = OUTLINED_FUNCTION_72(v112);
        sub_1CFCFF21C(v127, v113 + 1, 1);
        v96 = v105;
      }

      v114 = v106[114];
      v115 = v106[112];
      *(v96 + 16) = v113 + 1;
      v116 = *(v178 + 80);
      OUTLINED_FUNCTION_73();
      (*(v118 + 32))(v96 + v117 + *(v118 + 72) * v113);
      v94 = v174;
      v119 = 1 << *(v174 + 32);
      v101 = v176;
      if (v99 >= v119)
      {
        goto LABEL_54;
      }

      v120 = *(v176 + 8 * v102);
      if ((v120 & (1 << v99)) == 0)
      {
        goto LABEL_55;
      }

      if (*(v174 + 36) != v187)
      {
        goto LABEL_56;
      }

      v1 = v106;
      v121 = v120 & (-2 << (v99 & 0x3F));
      if (v121)
      {
        v119 = __clz(__rbit64(v121)) | v99 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v122 = v102 << 6;
        v123 = (v168 + 8 * v102);
        v124 = v102 + 1;
        while (v124 < (v119 + 63) >> 6)
        {
          v126 = *v123++;
          v125 = v126;
          v122 += 64;
          ++v124;
          if (v126)
          {
            sub_1CFD02008(v99, v187, v180 & 1);
            v119 = __clz(__rbit64(v125)) + v122;
            goto LABEL_39;
          }
        }

        sub_1CFD02008(v99, v187, v180 & 1);
      }

LABEL_39:
      v98 = 0;
      v100 = v183 + 1;
      v99 = v119;
      v97 = v170;
      if (v183 + 1 == v172)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

LABEL_40:

  v128 = v1[127];
  v129 = v1[125];
  v130 = v1[118];
  sub_1CFD48B58();
  v131 = sub_1CFD48EC8();
  v132 = *MEMORY[0x1E699F960];
  v1[99] = sub_1CFD48FA8();
  v1[100] = v133;
  v134 = MEMORY[0x1E69E6158];
  sub_1CFD493C8();
  sub_1CFD48B68();
  if (__swift_getEnumTagSinglePayload(v129, 1, v128) == 1)
  {
    sub_1CFCE3050(v1[125], &qword_1EC4F2D40, &qword_1CFD4B748);
    v135 = sub_1CFCFEF5C((v1 + 29));
    if (v136)
    {
      v137 = v135;
      swift_isUniquelyReferenced_nonNull_native();
      v191 = v131;
      v138 = *(v131 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FD0, &unk_1CFD4D028);
      sub_1CFD494A8();
      v131 = v191;
      sub_1CFD01F28(*(v191 + 48) + 40 * v137);
      sub_1CFD01C10((*(v191 + 56) + 32 * v137), v1 + 61);
      sub_1CFD494B8();
    }

    else
    {
      *(v1 + 61) = 0u;
      *(v1 + 63) = 0u;
    }

    sub_1CFD01F28((v1 + 29));
    sub_1CFCE3050((v1 + 61), &qword_1EC4F2FB8, &qword_1CFD50AC0);
  }

  else
  {
    v139 = v1[128];
    v140 = v1[127];
    v141 = v1[125];
    v1[72] = v140;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 69);
    (*(v139 + 32))(boxed_opaque_existential_0, v141, v140);
    sub_1CFD01C10(v1 + 69, v1 + 89);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1CFCFFA44(v1 + 89, (v1 + 29));
    sub_1CFD01F28((v1 + 29));
  }

  v143 = *MEMORY[0x1E699F930];
  v1[93] = sub_1CFD48FA8();
  v1[94] = v144;
  OUTLINED_FUNCTION_74();
  sub_1CFD493C8();
  v1[56] = MEMORY[0x1E69E6530];
  v1[53] = 3;
  sub_1CFD01C10(v1 + 53, v1 + 57);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1CFCFFA44(v1 + 57, (v1 + 44));
  sub_1CFD01F28((v1 + 44));
  v145 = *MEMORY[0x1E699F970];
  v1[95] = sub_1CFD48FA8();
  v1[96] = v146;
  OUTLINED_FUNCTION_74();
  sub_1CFD493C8();
  v147 = MEMORY[0x1E69E6370];
  v1[52] = MEMORY[0x1E69E6370];
  *(v1 + 392) = 1;
  sub_1CFD01C10(v1 + 49, v1 + 65);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1CFCFFA44(v1 + 65, (v1 + 24));
  sub_1CFD01F28((v1 + 24));
  v148 = *MEMORY[0x1E699F990];
  v1[97] = sub_1CFD48FA8();
  v1[98] = v149;
  OUTLINED_FUNCTION_74();
  sub_1CFD493C8();
  v1[76] = v147;
  *(v1 + 584) = 1;
  sub_1CFD01C10(v1 + 73, v1 + 77);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1CFCFFA44(v1 + 77, (v1 + 39));
  sub_1CFD01F28((v1 + 39));
  v150 = *MEMORY[0x1E699F940];
  v1[101] = sub_1CFD48FA8();
  v1[102] = v151;
  OUTLINED_FUNCTION_74();
  sub_1CFD493C8();
  OUTLINED_FUNCTION_85();
  v1[84] = v134;
  v1[81] = 0xD000000000000017;
  v1[82] = v152;
  sub_1CFD01C10(v1 + 81, v1 + 85);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1CFCFFA44(v1 + 85, (v1 + 34));
  v153 = v131;
  sub_1CFD01F28((v1 + 34));
  v154 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  v1[137] = v154;
  if (!v154)
  {
    v160 = v1[129];
    v49 = v1[128];
    v161 = v1[127];
    v162 = v1[118];
    v163 = v1[117];
    v164 = v1[116];

    v165 = *(v163 + 8);
    v166 = OUTLINED_FUNCTION_107();
    v167(v166);
LABEL_14:
    v52 = *(v49 + 8);
    v37 = OUTLINED_FUNCTION_51_0();
    goto LABEL_15;
  }

  v155 = v154;
  v156 = sub_1CFD48F78();
  v1[138] = v156;
  sub_1CFD02070(0, &qword_1EC4F2FC0, 0x1E699FB70);
  v157 = sub_1CFCFE054(v153);
  v1[139] = v157;
  v1[2] = v1;
  v1[7] = v1 + 105;
  v1[3] = sub_1CFCFDB74;
  v158 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4F2FC8, &qword_1CFD4D020);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1CFCFE0E0;
  v1[13] = &block_descriptor;
  v1[14] = v158;
  [v155 openApplication:v156 withOptions:v157 completion:v1 + 10];
  v159 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1CFCFDB74()
{
  OUTLINED_FUNCTION_18_1();
  v6 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1120) = v2;
  if (v2)
  {
    v3 = sub_1CFCFDE1C;
  }

  else
  {
    v3 = sub_1CFCFDCAC;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1CFCFDCAC()
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1032);
  v5 = *(v0 + 1024);
  v6 = *(v0 + 1016);
  (*(*(v0 + 936) + 8))(*(v0 + 944), *(v0 + 928));
  v7 = *(v5 + 8);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);

  OUTLINED_FUNCTION_83();
  v13 = *(v0 + 912);

  OUTLINED_FUNCTION_23_1();
  v11 = *MEMORY[0x1E69E9840];

  return v10();
}