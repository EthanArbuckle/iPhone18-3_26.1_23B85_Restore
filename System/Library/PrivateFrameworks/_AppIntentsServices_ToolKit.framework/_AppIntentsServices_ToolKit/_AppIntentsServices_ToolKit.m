Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppIntentRegistry.applicationExists(_:)(Swift::String a1)
{
  OUTLINED_FUNCTION_10();
  v32 = v2;
  v33 = v3;
  v31 = v4;
  v6 = v5;
  v7 = sub_275254FFC();
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = type metadata accessor for ToolKitMetadata();
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v17 = (v16 - v15);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8918, &unk_275255DB0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v30 - v20;
  sub_27525500C();
  if (qword_2809B88F0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v22 = sub_27525513C();
  __swift_project_value_buffer(v22, qword_2809B8950);
  sub_27525512C();
  if (v1)
  {
    v23 = OUTLINED_FUNCTION_5();
    v24(v23);
  }

  else
  {
    sub_27524A748(v17);
    sub_27525535C();
    v25 = sub_275249F5C();
    v26 = OUTLINED_FUNCTION_5();
    v27(v26);
    *(v17 + *(v11 + 20)) = v25;
    sub_27524A294(v6, v31, v21);
    sub_275248FE0(v17);
    v29 = sub_2752553FC();
    __swift_getEnumTagSinglePayload(v21, 1, v29);
    sub_275249064(v21);
  }

  OUTLINED_FUNCTION_9();
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void AppIntentRegistry.supports(typeIdentifier:bundleIdentifier:properties:)()
{
  OUTLINED_FUNCTION_10();
  v36 = v2;
  v37 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v39 = sub_275254FFC();
  v11 = OUTLINED_FUNCTION_3(v39);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v35 = type metadata accessor for ToolKitMetadata();
  v14 = OUTLINED_FUNCTION_2(v35);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v38 = (v18 - v17);
  v19 = sub_2752553BC();
  v20 = OUTLINED_FUNCTION_3(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  v27 = (v26 - v25);
  v28 = swift_allocObject();
  v28[2] = v6;
  v28[3] = v4;
  v28[4] = v10;
  v28[5] = v8;
  *v27 = v28;
  (*(v22 + 104))(v27, *MEMORY[0x277D72D28], v19);

  sub_27525500C();
  if (qword_2809B88F0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v29 = sub_27525513C();
  __swift_project_value_buffer(v29, qword_2809B8950);
  sub_27525512C();
  if (v0)
  {
    v30 = OUTLINED_FUNCTION_4();
    v31(v30);
  }

  else
  {
    sub_27524A748(v38);
    sub_27525535C();
    v32 = sub_275249F5C();
    v33 = OUTLINED_FUNCTION_4();
    v34(v33);
    *(v38 + *(v35 + 20)) = v32;
    sub_27524B5C8(v27, v37, v36);
    sub_275248FE0(v38);
  }

  (*(v22 + 8))(v27, v19);
  OUTLINED_FUNCTION_9();
}

void sub_275248820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v46 = v25;
  v47 = v26;
  v28 = v27;
  v29 = sub_275254FFC();
  v30 = OUTLINED_FUNCTION_3(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v33 = type metadata accessor for ToolKitMetadata();
  v34 = OUTLINED_FUNCTION_2(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v39 = (v38 - v37);
  a10 = MEMORY[0x277D84F90];
  sub_27525500C();
  if (qword_2809B88F0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v40 = sub_27525513C();
  __swift_project_value_buffer(v40, qword_2809B8950);
  sub_27525512C();
  if (v20)
  {
    v41 = OUTLINED_FUNCTION_8();
    v42(v41);
  }

  else
  {
    sub_27524A748(v39);
    sub_27525535C();
    v43 = sub_275249F5C();
    v44 = OUTLINED_FUNCTION_8();
    v45(v44);
    *(v39 + *(v33 + 20)) = v43;
    sub_27524CDEC(v46, &a10, v47, *(v24 + 16), v28);
    sub_275248FE0(v39);
  }

  OUTLINED_FUNCTION_9();
}

void AppIntentRegistry.supports<A, B>(intent:withFallbackIntentVersions:)()
{
  OUTLINED_FUNCTION_10();
  v59 = v3;
  v60 = v4;
  v56 = v1;
  v57 = v5;
  v7 = v6;
  v9 = v8;
  v58 = v2;
  v54 = 8 * v6;
  v55 = v10;
  if (v6 == 1)
  {
    v11 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    MEMORY[0x28223BE20](v1);
    v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = 0;
    v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
    while (v7 != v15)
    {
      v18 = *(v17 + 8 * v15);
      *&v14[8 * v15++] = swift_getMetatypeMetadata();
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
  }

  v52 = MetatypeMetadata;
  v19 = OUTLINED_FUNCTION_2(MetatypeMetadata);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  v25 = sub_275254FFC();
  v62 = &v51;
  v26 = OUTLINED_FUNCTION_3(v25);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  v29 = type metadata accessor for ToolKitMetadata();
  v61 = &v51;
  v53 = v29;
  v30 = OUTLINED_FUNCTION_2(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v35 = (v34 - v33);
  sub_27525500C();
  if (qword_2809B88F0 != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v36 = sub_27525513C();
  __swift_project_value_buffer(v36, qword_2809B8950);
  OUTLINED_FUNCTION_11();
  sub_27525512C();
  if (v0)
  {
    v37 = OUTLINED_FUNCTION_7();
    v38(v37);
  }

  else
  {
    sub_27524A748(v35);
    sub_27525535C();
    OUTLINED_FUNCTION_11();
    v39 = sub_275249F5C();
    v40 = OUTLINED_FUNCTION_7();
    v42 = v41(v40);
    *(v35 + *(v53 + 20)) = v39;
    MEMORY[0x28223BE20](v42);
    v45 = v58;
    if (v7)
    {
      v46 = v52 + 4;
      v47 = (&v51 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
      v48 = v7;
      do
      {
        if (v7 == 1)
        {
          v49 = 0;
        }

        else
        {
          v49 = *v46;
        }

        v50 = *v9++;
        *(v24 + v49) = *v50;
        *v47++ = v24 + v49;
        v46 += 2;
        --v48;
      }

      while (v48);
    }

    sub_27524EB18(v56, &v51 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v57, v45, v59, v60, v43, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
    sub_275248FE0(v35);
  }

  OUTLINED_FUNCTION_9();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_275248FE0(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275249064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8918, &unk_275255DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2752490CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t OUTLINED_FUNCTION_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4()
{
  v2 = *(*(v1 - 88) + 8);
  result = v0;
  v4 = *(v1 - 72);
  return result;
}

uint64_t sub_275249208(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_275249214(uint64_t a1)
{
  sub_275254FCC();
  result = dynamic_cast_existential_1_superclass_conditional(a1);
  if (result)
  {
    *(v1 + 16) = result;
    *(v1 + 24) = v4;
  }

  return result;
}

uint64_t sub_275249294()
{
  v0 = type metadata accessor for ValueTypeExtractionVisitor();
  OUTLINED_FUNCTION_0_0();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v4[3] = v0;
  v4[4] = sub_275249978();
  v4[0] = v1;

  sub_27525515C();
  __swift_destroy_boxed_opaque_existential_1(v4);
  v2 = *(v1 + 16);

  return v2;
}

uint64_t static Array<A>.acceptVisitor(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  sub_27525515C();
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27525561C();
  swift_getWitnessTable();
  return sub_2752551DC();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t static Optional<A>.acceptVisitor(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = *(a3 + 8);
  return sub_2752551EC();
}

uint64_t static Set<>.acceptVisitor(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  sub_27525515C();
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27525563C();
  swift_getWitnessTable();
  return sub_2752551FC();
}

uint64_t sub_275249574()
{
  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_2752495CC(uint64_t a1)
{
  v2 = v1;
  if (dynamic_cast_existential_1_conditional(a1))
  {
    v4 = sub_27525521C();
    v5 = *(v2 + 24);
    type metadata accessor for LNValueTypeWrapper();
    OUTLINED_FUNCTION_0_0();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = *(v2 + 16);
    *(v2 + 16) = v6;
  }

  else
  {
    result = dynamic_cast_existential_1_conditional(a1);
    if (result)
    {
      v9[3] = type metadata accessor for ValueTypeExtractionVisitor();
      v9[4] = sub_275249978();
      v9[0] = v2;

      sub_27525520C();
      return __swift_destroy_boxed_opaque_existential_1(v9);
    }
  }

  return result;
}

void sub_2752496BC(char a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    if (a1)
    {
      v3 = 0;
    }

    else
    {
      v3 = 3;
    }

    v4 = [objc_allocWithZone(MEMORY[0x277D23760]) initWithMemberValueType:*(v2 + 16) capabilities:v3];
    v5 = *(v1 + 24);
    type metadata accessor for LNValueTypeWrapper();
    OUTLINED_FUNCTION_0_0();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = *(v1 + 16);
    *(v1 + 16) = v6;
  }

  else
  {
    if (qword_2809B8910 != -1)
    {
      swift_once();
    }

    v8 = sub_27525526C();
    __swift_project_value_buffer(v8, qword_2809B8DB8);
    oslog = sub_27525524C();
    v9 = sub_27525565C();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_275247000, oslog, v9, "Expected previously extracted value type when processing array", v10, 2u);
      MEMORY[0x277C70310](v10, -1, -1);
    }
  }
}

uint64_t sub_27524984C()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_0_0();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_275249978()
{
  result = qword_2809B8920;
  if (!qword_2809B8920)
  {
    type metadata accessor for ValueTypeExtractionVisitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B8920);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t dynamic_cast_existential_1_superclass_conditional(uint64_t a1)
{
  result = swift_dynamicCastMetatype();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_275249A94()
{
  v1 = v0;
  v2 = sub_2752551BC();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8928, &qword_275255FA8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v36 - v12;
  v14 = sub_2752551AC();
  if (!v14 || (v15 = v14, v16 = [v14 valueType], v15, !v16))
  {
    sub_27525517C();
    v17 = sub_27525519C();
    if (__swift_getEnumTagSinglePayload(v13, 1, v17) == 1)
    {
      sub_275249EE0(v13);
    }

    else
    {
      sub_27525518C();
      v18 = sub_275249294();
      if (v18)
      {
        v16 = *(v18 + 16);

        (*(*(v17 - 8) + 8))(v13, v17);
        return v16;
      }

      (*(*(v17 - 8) + 8))(v13, v17);
    }

    if (qword_2809B8908 != -1)
    {
      swift_once();
    }

    v19 = sub_27525526C();
    __swift_project_value_buffer(v19, qword_2809B8DA0);
    v20 = v3[2];
    v20(v9, v1, v2);
    v20(v7, v1, v2);
    v21 = sub_27525524C();
    v22 = sub_27525567C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39 = v37;
      *v23 = 136315395;
      v24 = sub_27525516C();
      v26 = v25;
      v27 = v3[1];
      v27(v9, v2);
      v28 = sub_275253418(v24, v26, &v39);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2085;
      v38 = sub_2752551AC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8930, &unk_275255FB0);
      v29 = sub_27525557C();
      v31 = v30;
      v27(v7, v2);
      v32 = sub_275253418(v29, v31, &v39);

      *(v23 + 14) = v32;
      _os_log_impl(&dword_275247000, v21, v22, "NamedProperty '%s': %{sensitive}s is not extractable as a LNValueType", v23, 0x16u);
      v33 = v37;
      swift_arrayDestroy();
      MEMORY[0x277C70310](v33, -1, -1);
      MEMORY[0x277C70310](v23, -1, -1);
    }

    else
    {

      v34 = v3[1];
      v34(v7, v2);
      v34(v9, v2);
    }

    return 0;
  }

  return v16;
}

uint64_t sub_275249EE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8928, &qword_275255FA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275249F5C()
{
  if (qword_2809B88E0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_2809B8938);
  if (qword_2809B8940)
  {
    v0 = qword_2809B8940;
  }

  else
  {
    v2 = sub_27525534C();
    if (v1)
    {
      goto LABEL_7;
    }

    v0 = v2;

    qword_2809B8940 = v0;
  }

LABEL_7:
  os_unfair_lock_unlock(&dword_2809B8938);
  return v0;
}

uint64_t sub_27524A034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2752553EC();
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

uint64_t sub_27524A0F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2752553EC();
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

uint64_t type metadata accessor for ToolKitMetadata()
{
  result = qword_2809B8968;
  if (!qword_2809B8968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27524A210()
{
  result = sub_2752553EC();
  if (v1 <= 0x3F)
  {
    result = sub_27525535C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_27524A294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v57 = a1;
  v58 = a2;
  v3 = sub_275254F9C();
  v4 = OUTLINED_FUNCTION_3(v3);
  v61 = v5;
  v62 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v59 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8980, &qword_275255FF0);
  v11 = OUTLINED_FUNCTION_3(v10);
  v55 = v12;
  v56 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v16 = (v50 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8988, &qword_275255FF8);
  v18 = OUTLINED_FUNCTION_3(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = (v50 - v23);
  v25 = sub_2752554FC();
  v26 = OUTLINED_FUNCTION_3(v25);
  v52 = v27;
  v53 = v26;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v31 = MEMORY[0x28223BE20](v30);
  v50[2] = v50 - v32;
  MEMORY[0x28223BE20](v31);
  v54 = v50 - v33;
  sub_2752554EC();
  swift_getKeyPath();
  v34 = sub_2752553EC();
  v35 = swift_allocBox();
  (*(*(v34 - 8) + 16))(v36, v63, v34);
  *v24 = v35;
  v51 = *MEMORY[0x277D721C8];
  (*(v20 + 104))(v24);
  v50[1] = sub_27524AF60(&qword_2809B8990, MEMORY[0x277D73330]);
  sub_27524B088(&qword_2809B8998, &qword_2809B8988, &qword_275255FF8);
  sub_27525536C();

  (*(v20 + 8))(v24, v17);
  v37 = v53;
  v38 = *(v52 + 8);
  v39 = OUTLINED_FUNCTION_1_0();
  v38(v39);
  swift_getKeyPath();
  v40 = swift_allocObject();
  v41 = v58;
  *(v40 + 16) = v57;
  *(v40 + 24) = v41;
  *v16 = v40;
  v43 = v55;
  v42 = v56;
  (*(v55 + 104))(v16, v51, v56);
  sub_27524B088(&qword_2809B89A0, &qword_2809B8980, &qword_275255FF0);

  v44 = v54;
  sub_27525536C();

  v45 = v16;
  v46 = v59;
  (*(v43 + 8))(v45, v42);
  v47 = OUTLINED_FUNCTION_1_0();
  v38(v47);
  v48 = *(v63 + *(type metadata accessor for ToolKitMetadata() + 20));
  sub_275254F8C();
  sub_27525533C();
  (*(v61 + 8))(v46, v62);
  return (v38)(v44, v37);
}

uint64_t sub_27524A748@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_275254FFC();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v12 = (v11 - v10);
  (*(v7 + 16))(v11 - v10, v2, v4);
  v13 = (*(v7 + 88))(v12, v4);
  if (v13 == *MEMORY[0x277CEAFE0])
  {
    (*(v7 + 96))(v12, v4);
    v14 = v12[1];
    *a1 = *v12;
    a1[1] = v14;
    v15 = MEMORY[0x277D730E0];
LABEL_5:
    v16 = *v15;
    v17 = sub_2752553EC();
    return (*(*(v17 - 8) + 104))(a1, v16, v17);
  }

  if (v13 == *MEMORY[0x277CEAFD8])
  {
    v15 = MEMORY[0x277D730D8];
    goto LABEL_5;
  }

  sub_2752556EC();
  MEMORY[0x277C6FD40](0xD00000000000002FLL, 0x8000000275256590);
  sub_27525571C();
  result = sub_27525575C();
  __break(1u);
  return result;
}

uint64_t sub_27524A958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v10 = OUTLINED_FUNCTION_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  (*(v15 + 16))(&v17 - v13, a1);
  return a7(v14);
}

uint64_t sub_27524AA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v5 = sub_27525538C();
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v59 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (v59 - v18);
  MEMORY[0x28223BE20](v17);
  v20 = *(v8 + 16);
  v61 = (v59 - v21);
  v20();
  v63 = a1;
  (v20)(v19, a1, v5);
  v22 = *(v8 + 88);
  v23 = OUTLINED_FUNCTION_1_0();
  v25 = v24(v23);
  v26 = v25;
  v27 = *MEMORY[0x277D72AB0];
  v62 = v3;
  if (v25 == v27)
  {
    v28 = *(v8 + 96);
    v29 = OUTLINED_FUNCTION_1_0();
    v30(v29);
    v59[1] = *v19;
    v31 = swift_projectBox();
    v59[2] = v8 + 16;
    v60 = v20;
    (v20)(v16, v31, v5);
    sub_27524AA1C(v16);
    sub_27524AF60(&qword_2809B8978, MEMORY[0x277D72B00]);
    v32 = sub_27525555C();
    v33 = *(v8 + 8);
    v33(v16, v5);
    if (v32)
    {
      v33(v13, v5);

      v34 = v63;
      v20 = v60;
      v35 = v61;
    }

    else
    {
      v43 = v61;
      v33(v61, v5);
      v44 = swift_allocBox();
      (*(v8 + 32))(v45, v13, v5);
      *v43 = v44;
      (*(v8 + 104))(v43, v26, v5);

      v34 = v63;
      v35 = v43;
      v20 = v60;
    }

    goto LABEL_12;
  }

  if (v25 == *MEMORY[0x277D72AE8])
  {
    v36 = v8;
    v33 = *(v8 + 8);
    v35 = v61;
  }

  else
  {
    v36 = v8;
    v35 = v61;
    if (v25 == *MEMORY[0x277D72AB8])
    {
      v33 = *(v36 + 8);
      v46 = OUTLINED_FUNCTION_3_0();
      (v33)(v46);
      v47 = *(v36 + 96);
      v48 = OUTLINED_FUNCTION_1_0();
      v49(v48);
      v50 = *v19;
      v51 = swift_projectBox();
      v52 = sub_2752553BC();
      v53 = swift_allocBox();
      (*(*(v52 - 8) + 16))(v54, v51, v52);
      *v35 = v53;
      (*(v36 + 104))(v35, *MEMORY[0x277D72AD0], v5);
      goto LABEL_10;
    }

    v33 = *(v36 + 8);
    if (v25 != *MEMORY[0x277D72AE0])
    {
      v58 = OUTLINED_FUNCTION_1_0();
      (v33)(v58);
      goto LABEL_11;
    }
  }

  v37 = OUTLINED_FUNCTION_3_0();
  (v33)(v37);
  v38 = *(v36 + 96);
  v39 = OUTLINED_FUNCTION_1_0();
  v40(v39);
  v41 = *v19;
  v42 = swift_projectBox();
  (v20)(v35, v42, v5);
LABEL_10:

LABEL_11:
  v34 = v63;
LABEL_12:
  if (sub_27525537C())
  {
    v55 = OUTLINED_FUNCTION_3_0();
    (v33)(v55);
    return (v20)(v64, v34, v5);
  }

  else
  {
    sub_27524AA1C(v35);
    v57 = OUTLINED_FUNCTION_3_0();
    return (v33)(v57);
  }
}

uint64_t sub_27524AF60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27524B050()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27524B088(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_27524B0DC()
{
  v0 = sub_2752550FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_27525514C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89A8, &qword_275256060);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_275255FC0;
  v11 = *(v1 + 104);
  v11(v4, *MEMORY[0x277CEB0F0], v0);
  sub_2752550BC();
  *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89B0, &qword_275256068);
  *(v10 + 64) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v10 + 32));
  sub_2752550CC();
  v12 = *(v6 + 8);
  v12(v9, v5);
  v11(v4, *MEMORY[0x277CEB0F8], v0);
  sub_2752550BC();
  v11(v4, *MEMORY[0x277CEB0E8], v0);
  v13 = sub_2752550DC();
  v14 = MEMORY[0x277CEB0E0];
  *(v10 + 96) = v13;
  *(v10 + 104) = v14;
  __swift_allocate_boxed_opaque_existential_1((v10 + 72));
  sub_2752550EC();
  (*(v1 + 8))(v4, v0);
  result = (v12)(v9, v5);
  qword_2809B8948 = v10;
  return result;
}

uint64_t sub_27524B378()
{
  v0 = sub_27525526C();
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_27525513C();
  __swift_allocate_value_buffer(v9, qword_2809B8950);
  __swift_project_value_buffer(v9, qword_2809B8950);
  if (qword_2809B8910 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_2809B8DB8);
  (*(v3 + 16))(v8, v10, v0);
  if (qword_2809B88E8 != -1)
  {
    swift_once();
  }

  sub_27525511C();
  return sub_27525510C();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_27524B5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v273 = a2;
  v292 = a3;
  v297 = sub_27525538C();
  v6 = OUTLINED_FUNCTION_3(v297);
  v299 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14);
  v296 = &v255[-v15];
  OUTLINED_FUNCTION_8_0();
  v295 = sub_27525552C();
  v16 = OUTLINED_FUNCTION_3(v295);
  v293 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v294 = v20;
  OUTLINED_FUNCTION_8_0();
  v267 = sub_2752553DC();
  v21 = OUTLINED_FUNCTION_3(v267);
  v266 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v265 = v25;
  OUTLINED_FUNCTION_8_0();
  v26 = sub_275254F9C();
  v27 = OUTLINED_FUNCTION_3(v26);
  v289 = v28;
  v290 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v287 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89E8, &qword_2752560B8);
  OUTLINED_FUNCTION_17(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_20();
  v288 = v36;
  OUTLINED_FUNCTION_8_0();
  v274 = sub_27525539C();
  v37 = OUTLINED_FUNCTION_3(v274);
  v272 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v41);
  v271 = &v255[-v42];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89F0, &qword_2752560C0);
  v44 = OUTLINED_FUNCTION_3(v43);
  v285 = v45;
  v286 = v44;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_20();
  v284 = v49;
  OUTLINED_FUNCTION_8_0();
  v50 = sub_2752554BC();
  v51 = OUTLINED_FUNCTION_3(v50);
  v282 = v52;
  v283 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_2_0();
  v281 = v55;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89F8, &qword_2752560C8);
  OUTLINED_FUNCTION_3(v279);
  v278 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_20();
  v277 = v60;
  OUTLINED_FUNCTION_8_0();
  v300 = sub_27525548C();
  v61 = OUTLINED_FUNCTION_3(v300);
  v291 = v62;
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  v67 = MEMORY[0x28223BE20](v66);
  v69 = &v255[-v68];
  MEMORY[0x28223BE20](v67);
  v71 = &v255[-v70];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8918, &unk_275255DB0);
  OUTLINED_FUNCTION_17(v72);
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v75);
  v77 = &v255[-v76];
  v78 = sub_2752553FC();
  v79 = OUTLINED_FUNCTION_3(v78);
  v298 = v80;
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v79);
  v84 = &v255[-((v83 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = sub_2752553AC();
  v86 = v301;
  sub_27524A294(v85, v87, v77);
  if (v86)
  {
  }

  v258 = v69;
  v261 = a1;
  v260 = v4;
  v259 = v71;
  v262 = v84;

  if (__swift_getEnumTagSinglePayload(v77, 1, v78) == 1)
  {
    sub_27524E8D4(v77, &qword_2809B8918, &unk_275255DB0);
    v89 = MEMORY[0x277CEB078];
LABEL_5:
    v90 = *v89;
    v91 = sub_27525508C();
    OUTLINED_FUNCTION_2(v91);
    return (*(v92 + 104))(v292, v90);
  }

  v93 = v298;
  v94 = v262;
  (*(v298 + 32))(v262, v77, v78);
  v95 = v276;
  sub_27525544C();
  swift_getKeyPath();
  v96 = swift_allocBox();
  v301 = 0;
  v97 = v96;
  (*(v93 + 16))(v98, v94, v78);
  v99 = v277;
  *v277 = v97;
  v256 = *MEMORY[0x277D721C8];
  v100 = v278;
  v101 = v279;
  (*(v278 + 104))(v99);
  v257 = sub_27524E92C(&qword_2809B8A00, MEMORY[0x277D73198]);
  sub_27524B088(&qword_2809B8A08, &qword_2809B89F8, &qword_2752560C8);
  v102 = v280;
  sub_27525536C();

  (*(v100 + 8))(v99, v101);
  v103 = v291 + 8;
  v279 = *(v291 + 8);
  v279(v95, v300);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A10, &qword_275256130);
  v104 = sub_27525549C();
  OUTLINED_FUNCTION_3(v104);
  v106 = v105;
  v108 = *(v107 + 72);
  v109 = *(v105 + 80);
  v278 = v78;
  v110 = (v109 + 32) & ~v109;
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_275256080;
  (*(v106 + 104))(v111 + v110, *MEMORY[0x277D732B8], v104);
  sub_27524E438(v111);
  v112 = v281;
  MEMORY[0x277C6FC30]();

  sub_27524E92C(&qword_2809B8A18, MEMORY[0x277D732E0]);
  v113 = v258;
  sub_27525536C();

  (*(v282 + 8))(v112, v283);
  v114 = v102;
  v115 = v300;
  v279(v114, v300);
  swift_getKeyPath();
  v116 = sub_2752553BC();
  v117 = swift_allocBox();
  (*(*(v116 - 8) + 16))(v118, v261, v116);
  v120 = v284;
  v119 = v285;
  *v284 = v117;
  v121 = v286;
  (*(v119 + 13))(v120, v256, v286);
  sub_27524B088(&qword_2809B8A20, &qword_2809B89F0, &qword_2752560C0);
  v122 = v259;
  sub_27525536C();
  v123 = v115;
  v124 = v279;

  (*(v119 + 1))(v120, v121);
  v125 = v113;
  v126 = v123;
  v124(v125, v123);
  v127 = *(v260 + *(type metadata accessor for ToolKitMetadata() + 20));
  v128 = v287;
  sub_275254F8C();
  v129 = v288;
  v130 = v301;
  sub_27525532C();
  if (v130)
  {
    (v289[1].isa)(v128, v290);
    v124(v122, v126);
LABEL_8:
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_21();
    return v131();
  }

  v132 = v298;
  (v289[1].isa)(v128, v290);
  v133 = v274;
  if (__swift_getEnumTagSinglePayload(v129, 1, v274) == 1)
  {
    v124(v122, v126);
    (*(v132 + 8))(v262, v278);
    sub_27524E8D4(v129, &qword_2809B89E8, &qword_2752560B8);
    v89 = MEMORY[0x277CEB080];
    goto LABEL_5;
  }

  v291 = v103;
  v301 = 0;
  v134 = v272;
  v135 = v129;
  v136 = v271;
  (*(v272 + 32))(v271, v135, v133);
  v137 = v268;
  (*(v134 + 16))(v268, v136, v133);
  v138 = (*(v134 + 88))(v137, v133);
  v139 = v292;
  v140 = v262;
  if (v138 != *MEMORY[0x277D72B68])
  {
    v168 = *(v134 + 8);
    v168(v136, v133);
    v169 = OUTLINED_FUNCTION_1_1();
    v170(v169);
    (*(v132 + 8))(v140, v278);
    v171 = *MEMORY[0x277CEB070];
    v172 = sub_27525508C();
    OUTLINED_FUNCTION_2(v172);
    (*(v173 + 104))(v139, v171);
    return v168(v137, v133);
  }

  (*(v134 + 96))(v137, v133);
  v141 = (*(v266 + 32))(v265, v137, v267);
  v142 = MEMORY[0x277C6FB50](v141);
  v143 = v142;
  v290 = *(v142 + 16);
  if (v290)
  {
    v144 = 0;
    v145 = v293;
    v146 = v294;
    v289 = (v142 + ((v145[80] + 32) & ~v145[80]));
    v286 = v299 + 32;
    v287 = v293 + 8;
    v288 = (v293 + 16);
    v147 = MEMORY[0x277D84F98];
    v285 = v299 + 40;
    v148 = v295;
    v126 = v296;
    while (1)
    {
      if (v144 >= *(v143 + 16))
      {
        goto LABEL_58;
      }

      (*(v145 + 2))(v146, v289 + *(v145 + 9) * v144, v148);
      v149 = sub_27525550C();
      v148 = v150;
      sub_27525551C();
      swift_isUniquelyReferenced_nonNull_native();
      v302 = v147;
      v151 = sub_275253B18(v149, v148);
      if (__OFADD__(v147[2], (v152 & 1) == 0))
      {
        goto LABEL_59;
      }

      v153 = v151;
      v154 = v152;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A28, &qword_275256168);
      v146 = &v302;
      if (sub_27525574C())
      {
        v146 = v302;
        v155 = sub_275253B18(v149, v148);
        v157 = v299;
        if ((v154 & 1) != (v156 & 1))
        {
          result = sub_2752557AC();
          __break(1u);
          return result;
        }

        v153 = v155;
        if ((v154 & 1) == 0)
        {
LABEL_19:
          v147 = v302;
          v302[(v153 >> 6) + 8] |= 1 << v153;
          v158 = (v147[6] + 16 * v153);
          *v158 = v149;
          v158[1] = v148;
          v159 = v147[7] + *(v157 + 9) * v153;
          v126 = v296;
          (*(v157 + 4))(v159, v296, v297);
          v160 = OUTLINED_FUNCTION_16();
          v161(v160);
          v162 = v147[2];
          v163 = __OFADD__(v162, 1);
          v164 = v162 + 1;
          if (v163)
          {
            goto LABEL_60;
          }

          v147[2] = v164;
          goto LABEL_23;
        }
      }

      else
      {
        v157 = v299;
        if ((v154 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v147 = v302;
      v165 = v302[7] + *(v157 + 9) * v153;
      v126 = v296;
      (*(v157 + 5))(v165, v296, v297);
      v166 = OUTLINED_FUNCTION_16();
      v167(v166);
LABEL_23:
      v145 = v293;
      if (v290 == ++v144)
      {
        goto LABEL_27;
      }
    }
  }

  v147 = MEMORY[0x277D84F98];
  v157 = v299;
LABEL_27:

  v174 = v273;
  v175 = v273 + 64;
  v176 = 1 << *(v273 + 32);
  v177 = -1;
  if (v176 < 64)
  {
    v177 = ~(-1 << v176);
  }

  v178 = v177 & *(v273 + 64);
  v148 = ((v176 + 63) >> 6);
  v293 = v157 + 16;
  v290 = (v157 + 8);

  v179 = 0;
  v180 = v301;
  v288 = v175;
  v289 = v148;
  if (v178)
  {
    while (1)
    {
      v301 = v180;
      v144 = v179;
LABEL_35:
      v181 = __clz(__rbit64(v178)) | (v144 << 6);
      v182 = (*(v174 + 48) + 16 * v181);
      v183 = *v182;
      v148 = v182[1];
      v184 = *(*(v174 + 56) + 8 * v181);
      v185 = v147[2];

      v126 = v184;
      if (!v185)
      {
        break;
      }

      sub_275253B18(v183, v148);
      if ((v186 & 1) == 0)
      {
        break;
      }

      v295 = v183;
      v296 = v148;
      sub_2752553AC();
      v148 = v187;
      v188 = v301;
      sub_27525564C();
      if (v188)
      {

        OUTLINED_FUNCTION_22();

        v217 = OUTLINED_FUNCTION_3_1();
        v218(v217);
        v219 = OUTLINED_FUNCTION_4_0();
        v220(v219);
        v221 = OUTLINED_FUNCTION_1_1();
        v222(v221);
        goto LABEL_8;
      }

      v301 = 0;

      if (!v147[2])
      {
        goto LABEL_61;
      }

      v294 = v126;
      v189 = sub_275253B18(v295, v296);
      v190 = v269;
      if ((v191 & 1) == 0)
      {
        goto LABEL_62;
      }

      v192 = *(v157 + 2);
      v193 = v297;
      v192(v269, v147[7] + *(v157 + 9) * v189, v297);
      v194 = v270;
      sub_27524AA1C(v190, v270);
      v126 = *(v157 + 1);
      (v126)(v190, v193);
      v195 = v275;
      if ((sub_27525537C() & 1) == 0)
      {
        v223 = v192;
        v299 = v126;

        if (qword_2809B8910 != -1)
        {
          OUTLINED_FUNCTION_5_0();
        }

        v224 = sub_27525526C();
        __swift_project_value_buffer(v224, qword_2809B8DB8);
        v225 = v263;
        v226 = v270;
        v227 = v297;
        v223(v263, v270, v297);
        v228 = v275;
        v223(v264, v275, v227);
        v229 = v296;

        v230 = sub_27525524C();
        v231 = sub_27525565C();

        v289 = v230;
        v232 = os_log_type_enabled(v230, v231);
        v233 = v295;
        if (v232)
        {
          v234 = swift_slowAlloc();
          LODWORD(v287) = v231;
          v235 = v234;
          v288 = swift_slowAlloc();
          v302 = v288;
          *v235 = 136315650;
          v236 = sub_275253418(v233, v229, &v302);

          *(v235 + 4) = v236;
          *(v235 + 12) = 2080;
          v237 = v269;
          v223(v269, v225, v227);
          sub_27525557C();
          v238 = v299;
          (v299)(v225, v227);
          v239 = OUTLINED_FUNCTION_18();

          *(v235 + 14) = v239;
          *(v235 + 22) = 2080;
          v240 = v264;
          v223(v237, v264, v227);
          sub_27525557C();
          v238(v240, v227);
          v241 = OUTLINED_FUNCTION_18();

          *(v235 + 24) = v241;
          v242 = v289;
          _os_log_impl(&dword_275247000, v289, v287, "Type mismatch for key '%s' %s != %s", v235, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_19();
          OUTLINED_FUNCTION_19();

          OUTLINED_FUNCTION_22();
          v238(v270, v227);
          v238(v275, v227);
        }

        else
        {

          OUTLINED_FUNCTION_22();
          v243 = v299;
          (v299)(v264, v227);
          v243(v225, v227);
          v243(v226, v227);
          v243(v228, v227);
        }

        v244 = OUTLINED_FUNCTION_3_1();
        v245(v244);
        v246 = OUTLINED_FUNCTION_4_0();
        v247(v246);
        v248 = OUTLINED_FUNCTION_1_1();
        v249(v248);
        OUTLINED_FUNCTION_9_0();
        goto LABEL_56;
      }

      v178 &= v178 - 1;

      (v126)(v194, v193);
      (v126)(v195, v193);
      v179 = v144;
      v180 = v301;
      v174 = v273;
      v157 = v299;
      v175 = v288;
      v148 = v289;
      if (!v178)
      {
        goto LABEL_31;
      }
    }

    v144 = v183;
    if (qword_2809B8910 != -1)
    {
      goto LABEL_63;
    }
  }

  else
  {
LABEL_31:
    while (1)
    {
      v144 = v179 + 1;
      if (__OFADD__(v179, 1))
      {
        break;
      }

      if (v144 >= v148)
      {

        v196 = OUTLINED_FUNCTION_3_1();
        v197(v196);
        v198 = OUTLINED_FUNCTION_4_0();
        v199(v198);
        v200 = OUTLINED_FUNCTION_1_1();
        v201(v200);
        OUTLINED_FUNCTION_9_0();
        OUTLINED_FUNCTION_21();
        v202();

        v89 = MEMORY[0x277CEB088];
        goto LABEL_5;
      }

      v178 = *(v175 + 8 * v144);
      ++v179;
      if (v178)
      {
        v301 = v180;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    OUTLINED_FUNCTION_5_0();
  }

  v203 = sub_27525526C();
  __swift_project_value_buffer(v203, qword_2809B8DB8);

  v204 = sub_27525524C();
  v205 = v148;
  v206 = sub_27525565C();

  if (os_log_type_enabled(v204, v206))
  {
    v207 = swift_slowAlloc();
    v302 = swift_slowAlloc();
    *v207 = 136315394;
    v208 = sub_275253418(v144, v205, &v302);

    *(v207 + 4) = v208;
    *(v207 + 12) = 2080;
    sub_27525553C();

    v209 = OUTLINED_FUNCTION_18();

    *(v207 + 14) = v209;
    _os_log_impl(&dword_275247000, v204, v206, "Missing entity property '%s' keys: %s", v207, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_19();
  }

  else
  {
  }

  OUTLINED_FUNCTION_22();
  v210 = OUTLINED_FUNCTION_3_1();
  v211(v210);
  v212 = OUTLINED_FUNCTION_4_0();
  v213(v212);
  v214 = OUTLINED_FUNCTION_1_1();
  v215(v214);
  v216 = *(v298 + 8);
LABEL_56:
  OUTLINED_FUNCTION_21();
  v250();
  v251 = v292;
  v252 = *MEMORY[0x277CEB070];
  v253 = sub_27525508C();
  OUTLINED_FUNCTION_2(v253);
  return (*(v254 + 104))(v251, v252);
}

uint64_t sub_27524CDEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v5;
  v152 = a4;
  v161 = a3;
  v11 = sub_27525508C();
  v12 = OUTLINED_FUNCTION_3(v11);
  v153 = v13;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11_0();
  v148 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v138 - v21;
  v155 = sub_27525506C();
  v23 = OUTLINED_FUNCTION_3(v155);
  v145 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v144 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89B8, &qword_2752560A8);
  v29 = OUTLINED_FUNCTION_17(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_0();
  v151 = v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v138 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89C0, &qword_2752560B0);
  OUTLINED_FUNCTION_17(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_20();
  v150 = v40;
  OUTLINED_FUNCTION_8_0();
  v41 = sub_275254FEC();
  v42 = OUTLINED_FUNCTION_17(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_0();
  v149 = v45;
  OUTLINED_FUNCTION_8_0();
  v46 = sub_27525523C();
  v47 = OUTLINED_FUNCTION_3(v46);
  v159 = v48;
  v160 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_0();
  v156 = v51;
  OUTLINED_FUNCTION_8_0();
  v52 = sub_2752553BC();
  v53 = OUTLINED_FUNCTION_3(v52);
  v157 = v54;
  v158 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_2_0();
  v165 = v57;
  v58 = *(*a2 + 16);
  v59 = (*a2 + 32);
  while (v58)
  {
    v60 = *v59++;
    --v58;
    if (v60 == a1)
    {
      return (*(v153 + 104))(a5, *MEMORY[0x277CEB088], v11);
    }
  }

  v146 = a2;
  v143 = v22;
  v139 = a5;
  if (qword_2809B8910 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v62 = sub_27525526C();
  __swift_project_value_buffer(v62, qword_2809B8DB8);
  v63 = sub_27525524C();
  v64 = sub_27525565C();
  v65 = os_log_type_enabled(v63, v64);
  v141 = v11;
  v147 = v7;
  v140 = v18;
  v142 = v35;
  v154 = v6;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v162[0] = v67;
    *v66 = 136315138;
    v68 = sub_2752557DC();
    v70 = sub_275253418(v68, v69, v162);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_275247000, v63, v64, "checking entity '%s'", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_19();
  }

  v71 = v152;
  v72 = v146;
  sub_275253114();
  v73 = *(*v72 + 16);
  sub_2752531A0(v73);
  v74 = *v72;
  *(v74 + 16) = v73 + 1;
  *(v74 + 8 * v73 + 32) = a1;
  *v72 = v74;
  v75 = swift_allocObject();
  OUTLINED_FUNCTION_13();
  v75[2] = sub_27525503C();
  v75[3] = v76;
  v75[4] = sub_27525502C();
  v75[5] = v77;
  *v165 = v75;
  v78 = *MEMORY[0x277D72D28];
  (*(v157 + 104))();
  sub_27525502C();
  v79 = objc_allocWithZone(MEMORY[0x277D23800]);
  v80 = sub_27524E214();
  v81 = [objc_allocWithZone(MEMORY[0x277D237F0]) initWithIdentifier_];

  v163 = sub_27524E354(0, &qword_2809B89C8, 0x277D237F0);
  v162[0] = v81;
  sub_27524E354(0, &qword_2809B89D0, 0x277D23828);
  OUTLINED_FUNCTION_13();
  sub_27525502C();
  v82 = sub_27524DC44();
  v83 = objc_allocWithZone(MEMORY[0x277D23958]);
  v84 = sub_27524E29C(v162, v82);
  OUTLINED_FUNCTION_13();
  sub_27525503C();
  v85 = sub_27525501C();
  __swift_storeEnumTagSinglePayload(v150, 1, 1, v85);
  sub_275254FDC();
  v86 = v156;
  sub_27525522C();
  v87 = v71;
  v88 = v160;
  v163 = v160;
  v164 = MEMORY[0x277CEB130];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v162);
  (*(v159 + 16))(boxed_opaque_existential_1, v86, v88);
  v152 = v84;
  v90 = sub_275254FBC();
  __swift_destroy_boxed_opaque_existential_1(v162);
  v91 = v142;
  v92 = v155;
  __swift_storeEnumTagSinglePayload(v142, 1, 1, v155);
  v162[0] = MEMORY[0x277D84F90];
  v93 = v143;
  if (v90)
  {

    v94 = sub_275254FAC();

    MEMORY[0x28223BE20](v95);
    *(&v138 - 8) = v96;
    *(&v138 - 7) = v87;
    *(&v138 - 6) = v147;
    *(&v138 - 5) = v72;
    *(&v138 - 4) = v162;
    *(&v138 - 3) = a1;
    *(&v138 - 2) = v91;
    v97 = v154;
    v98 = sub_27524DB60(MEMORY[0x277D84F98], sub_27524E404, (&v138 - 10), v94);
    v99 = v97;
    v92 = v155;
  }

  else
  {
    v98 = MEMORY[0x277D84F98];
    v99 = v154;
  }

  v100 = v151;
  sub_27524E394(v91, v151);
  if (__swift_getEnumTagSinglePayload(v100, 1, v92) != 1)
  {

    v101 = v145;
    v102 = v144;
    (*(v145 + 32))(v144, v100, v92);
    sub_27524E92C(&qword_2809B89D8, MEMORY[0x277CEB050]);
    swift_allocError();
    (*(v101 + 16))(v103, v102, v92);
    swift_willThrow();

    (*(v101 + 8))(v102, v92);
    goto LABEL_16;
  }

  sub_27524E8D4(v100, &qword_2809B89B8, &qword_2752560A8);
  sub_27524B5C8(v165, v98, v93);
  if (v99)
  {

LABEL_16:
    v104 = OUTLINED_FUNCTION_15();
    v105(v104);
    v106 = OUTLINED_FUNCTION_14();
    v107(v106);
LABEL_17:

    return sub_27524E8D4(v91, &qword_2809B89B8, &qword_2752560A8);
  }

  v108 = v153;
  v109 = *(v153 + 104);
  v110 = v148;
  LODWORD(v149) = *MEMORY[0x277CEB088];
  v111 = v141;
  v150 = v109;
  v151 = v153 + 104;
  v109(v148);
  v112 = sub_27525507C();
  v113 = *(v108 + 8);
  v161 = v108 + 8;
  v155 = v113;
  result = (v113)(v110, v111);
  if ((v112 & 1) == 0 || (v114 = v162[0], (v115 = *(v162[0] + 16)) == 0))
  {
LABEL_27:

    v132 = OUTLINED_FUNCTION_15();
    v133(v132);
    v134 = OUTLINED_FUNCTION_14();
    v135(v134);
    v136 = *(v153 + 32);
    OUTLINED_FUNCTION_21();
    v137();
    goto LABEL_17;
  }

  v154 = 0;
  v116 = (v162[0] + 40);
  v145 = -v115;
  v117 = -1;
  while (1)
  {
    if (v145 + v117 == -1)
    {
      v91 = v142;
      goto LABEL_27;
    }

    if (++v117 >= *(v114 + 16))
    {
      break;
    }

    v118 = v140;
    v119 = v154;
    sub_27524CDEC(*(v116 - 1), v146, *(v116 - 1), *v116);
    v154 = v119;
    if (v119)
    {

      v155(v143, v141);
      v91 = v142;
      goto LABEL_16;
    }

    v116 += 2;
    v120 = v148;
    v121 = v90;
    v122 = v114;
    v123 = v141;
    v150(v148, v149, v141);
    v124 = sub_27525507C();
    v125 = v155;
    v155(v120, v123);
    v126 = v123;
    v114 = v122;
    v90 = v121;
    result = v125(v118, v126);
    if ((v124 & 1) == 0)
    {

      v127 = v141;
      v155(v143, v141);
      v128 = OUTLINED_FUNCTION_15();
      v129(v128);
      v130 = OUTLINED_FUNCTION_14();
      v131(v130);
      v150(v139, *MEMORY[0x277CEB070], v127);

      return sub_27524E8D4(v142, &qword_2809B89B8, &qword_2752560A8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27524D9D8(uint64_t a1)
{
  v2 = sub_2752554BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_27525546C();
}

uint64_t sub_27524DAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_3(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  (*(v15 + 16))(&v17 - v13, a1);
  return a7(v14);
}

uint64_t sub_27524DB60(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_2752551BC() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

id sub_27524DC44()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_27525556C();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

void sub_27524DCB8(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t **a7, uint64_t a8)
{
  v66 = a5;
  v67 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8928, &qword_275255FA8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v61 - v15;
  sub_27525517C();
  v17 = sub_27525519C();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_27524E8D4(v16, &qword_2809B8928, &qword_275255FA8);
  }

  else
  {
    v18 = sub_27525518C();
    (*(*(v17 - 8) + 8))(v16, v17);
    v19 = dynamic_cast_existential_1_class_conditional(v18);
    if (v19)
    {
      v21 = v19;
      v22 = v20;
    }

    else
    {
      if (!dynamic_cast_existential_1_conditional(v18))
      {
        goto LABEL_21;
      }

      v64 = v29;
      v30 = a8;
      v31 = type metadata accessor for EntityTypeExtractionVisitor();
      swift_allocObject();
      v32 = sub_275249208(0, 0);
      v65 = v8;
      v33 = v32;
      v70 = v31;
      a8 = v30;
      v71 = sub_27524E92C(&qword_2809B89E0, type metadata accessor for EntityTypeExtractionVisitor);
      v68 = v33;

      sub_27525520C();
      __swift_destroy_boxed_opaque_existential_1(&v68);
      v21 = *(v33 + 16);
      v22 = *(v33 + 24);

      if (!v21)
      {
        goto LABEL_21;
      }
    }

    v23 = *(*a4 + 16);
    v24 = (*a4 + 32);
    while (v23)
    {
      v25 = *v24++;
      --v23;
      if (v25 == v21)
      {
        goto LABEL_21;
      }
    }

    v26 = (*v66 + 32);
    v27 = *(*v66 + 16) + 1;
    while (--v27)
    {
      v28 = *v26;
      v26 += 2;
      if (v28 == v21)
      {
        goto LABEL_21;
      }
    }

    if (qword_2809B8910 != -1)
    {
      swift_once();
    }

    v65 = a8;
    v34 = sub_27525526C();
    __swift_project_value_buffer(v34, qword_2809B8DB8);
    v35 = sub_27525524C();
    v36 = sub_27525565C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v62 = v37;
      v63 = swift_slowAlloc();
      v68 = v63;
      *v37 = 136315138;
      v38 = sub_2752557DC();
      v64 = v22;
      v40 = sub_275253418(v38, v39, &v68);
      v22 = v64;

      v41 = v62;
      *(v62 + 1) = v40;
      v42 = v41;
      _os_log_impl(&dword_275247000, v35, v36, "Adding entity '%s' to the list of sub-entities to check", v41, 0xCu);
      v43 = v63;
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x277C70310](v43, -1, -1);
      MEMORY[0x277C70310](v42, -1, -1);
    }

    v44 = v66;
    sub_27525312C();
    v45 = *(*v44 + 16);
    sub_2752531B8(v45);
    v46 = *v44;
    *(v46 + 16) = v45 + 1;
    v47 = v46 + 16 * v45;
    *(v47 + 32) = v21;
    *(v47 + 40) = v22;
  }

LABEL_21:
  v48 = sub_275249A94();
  if (v48)
  {
    v49 = v48;
    v50 = sub_27525516C();
    v52 = v51;
    v53 = v49;
    v54 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v68 = *a1;
    sub_2752545A8(v53, v50, v52);

    *a1 = v68;
  }

  else
  {
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_2752556EC();

    v68 = 0xD000000000000017;
    v69 = 0x80000002752565C0;
    v55 = sub_27525516C();
    MEMORY[0x277C6FD40](v55);

    MEMORY[0x277C6FD40](0x206E6F2027, 0xE500000000000000);
    v72 = v67;
    swift_getMetatypeMetadata();
    v56 = sub_27525557C();
    MEMORY[0x277C6FD40](v56);

    v57 = v68;
    v58 = v69;
    sub_27524E8D4(a7, &qword_2809B89B8, &qword_2752560A8);
    *a7 = v57;
    a7[1] = v58;
    v59 = *MEMORY[0x277CEB048];
    v60 = sub_27525506C();
    (*(*(v60 - 8) + 104))(a7, v59, v60);
    __swift_storeEnumTagSinglePayload(a7, 0, 1, v60);
  }
}

id sub_27524E214()
{
  v1 = sub_27525556C();

  v2 = sub_27525556C();

  v3 = [v0 initWithTypeIdentifier:v1 instanceIdentifier:v2];

  return v3;
}

id sub_27524E29C(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = [v2 initWithValue:sub_27525577C() valueType:a2];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

uint64_t sub_27524E314()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27524E354(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_27524E394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89B8, &qword_2752560A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27524E438(uint64_t a1)
{
  v2 = sub_27525549C();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A30, &unk_275256170);
  result = sub_2752556CC();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = *(v9 + 40);
    sub_27524E92C(&qword_2809B8A38, MEMORY[0x277D732C0]);
    v16 = sub_27525554C();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, *(v9 + 48) + v18 * v13, v2);
      sub_27524E92C(&qword_2809B8A40, MEMORY[0x277D732C0]);
      v23 = sub_27525555C();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(*(v9 + 48) + v18 * v13, v25, v2);
    v26 = *(v9 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t dynamic_cast_existential_1_class_conditional(uint64_t a1)
{
  if (!swift_isClassType())
  {
    return 0;
  }

  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  return 0;
}

uint64_t sub_27524E8D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_27524E92C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_1()
{
  result = *(v0 - 432);
  v2 = *(v0 - 104);
  v3 = *(v0 - 176);
  v4 = *(v0 - 272);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_1()
{
  v1 = *(*(v0 - 376) + 8);
  result = *(v0 - 384);
  v3 = *(v0 - 368);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_0()
{
  v1 = *(*(v0 - 328) + 8);
  result = *(v0 - 336);
  v3 = *(v0 - 312);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14()
{
  v1 = *(v0 - 160);
  v2 = *(*(v0 - 168) + 8);
  return *(v0 - 72);
}

uint64_t OUTLINED_FUNCTION_15()
{
  v1 = *(v0 - 144);
  v2 = *(*(v0 - 152) + 8);
  return *(v0 - 176);
}

uint64_t OUTLINED_FUNCTION_16()
{
  v1 = **(v0 - 208);
  v2 = *(v0 - 144);
  return *(v0 - 152);
}

uint64_t OUTLINED_FUNCTION_18()
{

  return sub_275253418(v0, v1, (v2 - 72));
}

void OUTLINED_FUNCTION_19()
{

  JUMPOUT(0x277C70310);
}

uint64_t OUTLINED_FUNCTION_22()
{
  v2 = *(v0 - 320);
}

void sub_27524EB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10();
  a19 = v22;
  a20 = v23;
  v109 = v24;
  v110 = v25;
  v27 = v26;
  v108 = v28;
  v30 = v29;
  v111 = v32;
  v112 = v31;
  v34 = v33;
  v113 = sub_2752550AC();
  v35 = OUTLINED_FUNCTION_3(v113);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8_1();
  v42 = v40 - v41;
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v93 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v93 - v47;
  sub_275250EF0(v34, v30, v27);
  v114 = v21;
  if (!v21)
  {
    v106 = v42;
    v107 = v20;
    v96 = v34;
    v97 = v30;
    v49 = *(v37 + 104);
    (v49)(v46, *MEMORY[0x277CEB0B0], v113);
    OUTLINED_FUNCTION_34();
    v50 = sub_27525509C();
    v51 = *(v37 + 8);
    v52 = OUTLINED_FUNCTION_36();
    v51(v52);
    if (v50 & 1) != 0 || (v103 = *MEMORY[0x277CEB0C0], v53 = v113, (v49)(v46), OUTLINED_FUNCTION_34(), v54 = sub_27525509C(), v55 = OUTLINED_FUNCTION_36(), v51(v55), (v54))
    {
      (*(v37 + 32))(v111, v48, v113);
    }

    else
    {
      v100 = v46;
      v101 = v49;
      v104 = v51;
      v105 = v37 + 8;
      v56 = v109;
      v93 = v37;
      v94 = v48;
      v102 = v37 + 104;
      if (v109)
      {
        if (qword_2809B8910 != -1)
        {
          OUTLINED_FUNCTION_5_0();
        }

        v57 = (v108 & 0xFFFFFFFFFFFFFFFELL);
        v58 = (v110 & 0xFFFFFFFFFFFFFFFELL);
        v99 = sub_27525526C();
        *&v59 = 136315138;
        v95 = v59;
        v60 = v56;
        v61 = v112;
        while (1)
        {
          v62 = *v57;
          v63 = *v58;
          v112 = v61;
          v64 = **v61;
          __swift_project_value_buffer(v99, qword_2809B8DB8);
          v65 = sub_27525524C();
          v66 = sub_27525565C();
          v67 = os_log_type_enabled(v65, v66);
          v110 = v60;
          if (v67)
          {
            v68 = OUTLINED_FUNCTION_31();
            v108 = v62;
            v69 = v68;
            v98 = swift_slowAlloc();
            a10 = v98;
            *v69 = v95;
            v115 = v64;
            swift_getMetatypeMetadata();
            v70 = sub_27525557C();
            v72 = v63;
            v73 = sub_275253418(v70, v71, &a10);

            *(v69 + 4) = v73;
            v63 = v72;
            _os_log_impl(&dword_275247000, v65, v66, "Checking fallback intent definition: %s", v69, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v98);
            OUTLINED_FUNCTION_19();
            v62 = v108;
            OUTLINED_FUNCTION_19();
          }

          v74 = v106;
          v75 = v100;
          v76 = v114;
          sub_275250EF0(v64, v62, v63);
          v114 = v76;
          if (v76)
          {
            v104(v94, v113);
            goto LABEL_5;
          }

          v77 = v64;
          v78 = v63;
          v53 = v113;
          (v101)(v75, v103, v113);
          OUTLINED_FUNCTION_38();
          v79 = sub_27525509C();
          v80 = OUTLINED_FUNCTION_36();
          v81 = v104;
          (v104)(v80);
          v81(v74, v53);
          if (v79)
          {
            break;
          }

          v61 = v112 + 1;
          ++v58;
          ++v57;
          v60 = v110 - 1;
          if (v110 == 1)
          {
            goto LABEL_15;
          }
        }

        v104(v94, v113);
        v91 = v111;
        *v111 = v77;
        v91[1] = v78;
        v92 = *MEMORY[0x277CEB0B8];
        v101();
      }

      else
      {
LABEL_15:
        if (qword_2809B8910 != -1)
        {
          OUTLINED_FUNCTION_5_0();
        }

        v82 = sub_27525526C();
        __swift_project_value_buffer(v82, qword_2809B8DB8);
        v83 = sub_27525524C();
        v84 = sub_27525566C();
        if (os_log_type_enabled(v83, v84))
        {
          OUTLINED_FUNCTION_31();
          v85 = OUTLINED_FUNCTION_24();
          a10 = v85;
          *v53 = 136315138;
          v115 = v96;
          swift_getMetatypeMetadata();
          v86 = sub_27525557C();
          v88 = sub_275253418(v86, v87, &a10);

          *(v53 + 4) = v88;
          _os_log_impl(&dword_275247000, v83, v84, "Could not find compatible tool definition for: %s", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v85);
          OUTLINED_FUNCTION_19();
          OUTLINED_FUNCTION_19_0();
        }

        v89 = v111;
        if (v109)
        {
          v90 = v113;
          v104(v94, v113);
          (v101)(v89, *MEMORY[0x277CEB0A8], v90);
        }

        else
        {
          (*(v93 + 32))(v111, v94, v113);
        }
      }
    }
  }

LABEL_5:
  OUTLINED_FUNCTION_9();
}

void sub_27524F0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10();
  a19 = v22;
  a20 = v23;
  v378 = v21;
  v380 = v20;
  v330 = v24;
  v331 = v25;
  v334 = v26;
  v28 = v27;
  v379 = v29;
  v31 = v30;
  v376 = v32;
  v360 = v33;
  v362 = sub_2752550AC();
  v34 = OUTLINED_FUNCTION_3(v362);
  v361 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8_1();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_10_0(v43);
  v358 = type metadata accessor for ToolKitMetadata();
  v44 = *(*(v358 - 8) + 64);
  MEMORY[0x28223BE20](v358);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_10_0(v45);
  v375 = sub_27525538C();
  v46 = OUTLINED_FUNCTION_3(v375);
  v368 = v47;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_11_0();
  v372 = v55;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_11_0();
  v374 = v57;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_22_0();
  v373 = v59;
  OUTLINED_FUNCTION_8_0();
  v367 = sub_27525542C();
  v60 = OUTLINED_FUNCTION_3(v367);
  v369 = v61;
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_2_0();
  v366 = v64;
  OUTLINED_FUNCTION_8_0();
  v340 = sub_2752552BC();
  v65 = OUTLINED_FUNCTION_3(v340);
  v339 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_10_0(v70);
  v357 = sub_275254F9C();
  v71 = OUTLINED_FUNCTION_3(v357);
  v356 = v72;
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15_0(v75);
  v76 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A78, &qword_275256190) - 8) + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10_0(v78);
  v342 = sub_2752552AC();
  v79 = OUTLINED_FUNCTION_3(v342);
  v370 = v80;
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_15_0(v83);
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8980, &qword_275255FF0);
  OUTLINED_FUNCTION_3(v353);
  v352 = v84;
  v86 = *(v85 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_0(v88);
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89F8, &qword_2752560C8);
  OUTLINED_FUNCTION_3(v350);
  v349 = v89;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_0(v93);
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8988, &qword_275255FF8);
  OUTLINED_FUNCTION_3(v345);
  v344 = v94;
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10_0(v98);
  v381 = sub_27525530C();
  v99 = OUTLINED_FUNCTION_3(v381);
  v364 = v100;
  v102 = *(v101 + 64);
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_15_0(v106);
  v107 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8918, &unk_275255DB0) - 8) + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v108);
  v110 = v318 - v109;
  v111 = sub_2752553FC();
  v112 = OUTLINED_FUNCTION_3(v111);
  v371 = v113;
  v115 = *(v114 + 64);
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_2_0();
  v377 = v116;
  if (qword_2809B8910 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v117 = sub_27525526C();
  v118 = __swift_project_value_buffer(v117, qword_2809B8DB8);

  v359 = v118;
  v119 = sub_27525524C();
  v120 = sub_27525565C();

  v121 = os_log_type_enabled(v119, v120);
  v332 = v40;
  v365 = v31;
  if (v121)
  {
    v122 = swift_slowAlloc();
    v382 = swift_slowAlloc();
    *(v122 + 4) = OUTLINED_FUNCTION_44(4.8151e-34);
    *(v122 + 12) = 2080;
    v123 = v379;
    *(v122 + 14) = sub_275253418(v379, v28, &v382);
    _os_log_impl(&dword_275247000, v119, v120, "Checking intent definition for: %s, %s", v122, 0x16u);
    swift_arrayDestroy();
    v124 = v381;
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {

    v123 = v379;
    v124 = v381;
  }

  v125 = v380;
  v126 = v378;
  sub_27524A294(v123, v28, v110);
  if (v126)
  {
    goto LABEL_40;
  }

  v127 = v28;
  if (__swift_getEnumTagSinglePayload(v110, 1, v111) == 1)
  {
    sub_275254B18(v110, &qword_2809B8918, &unk_275255DB0);

    v128 = OUTLINED_FUNCTION_48();
    v129 = sub_27525565C();

    if (os_log_type_enabled(v128, v129))
    {
      OUTLINED_FUNCTION_31();
      v130 = OUTLINED_FUNCTION_24();
      v382 = v130;
      LODWORD(v125->isa) = 136315138;
      *(&v125->isa + 4) = sub_275253418(v123, v127, &v382);
      OUTLINED_FUNCTION_21_0(&dword_275247000, v131, v132, "Could not find toolbox container for: %s");
      __swift_destroy_boxed_opaque_existential_1(v130);
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_19_0();
    }

    v133 = OUTLINED_FUNCTION_28();
    v134 = v361;
    v135 = *MEMORY[0x277CEB098];
LABEL_39:
    (*(v134 + 104))(v133, v135);
    goto LABEL_40;
  }

  v136 = *(v371 + 32);
  v324 = v111;
  v136(v377, v110, v111);
  v137 = v376;
  v138 = v365;
  v139 = sub_2752555EC();
  v378 = 0;
  v318[1] = v127;
  if (v139)
  {

    v320 = v137;
    v319 = v138;
  }

  else
  {
    v382 = v123;
    v383 = v127;

    MEMORY[0x277C6FD40](46, 0xE100000000000000);
    MEMORY[0x277C6FD40](v137, v138);
    v320 = v382;
    v319 = v383;
  }

  OUTLINED_FUNCTION_41(&v374);
  sub_2752552EC();
  swift_getKeyPath();
  v140 = sub_2752553EC();
  v141 = swift_allocBox();
  (*(*(v140 - 8) + 16))(v142, v125, v140);
  v143 = v343;
  *v343 = v141;
  v323 = *MEMORY[0x277D721C8];
  v144 = v344;
  v145 = v345;
  (*(v344 + 104))(v143);
  v322 = sub_275254B78(&qword_2809B8A80, MEMORY[0x277D724B8]);
  v321 = MEMORY[0x277D721D8];
  sub_275254A9C(&qword_2809B8998, &qword_2809B8988, &qword_275255FF8);
  v146 = v346;
  sub_27525536C();

  (*(v144 + 8))(v143, v145);
  v147 = v364 + 8;
  v345 = *(v364 + 8);
  v345(v123, v124);
  swift_getKeyPath();
  v148 = v324;
  v149 = swift_allocBox();
  (*(v371 + 16))(v150, v377, v148);
  v151 = v347;
  *v347 = v149;
  OUTLINED_FUNCTION_41(&v381);
  v153 = v350;
  (*(v152 + 104))(v151, v323, v350);
  sub_275254A9C(&qword_2809B8A08, &qword_2809B89F8, &qword_2752560C8);
  v154 = v348;
  sub_27525536C();
  v155 = v147;

  (v123[1])(v151, v153);
  v156 = v345;
  v345(v146, v381);
  swift_getKeyPath();
  v157 = swift_allocObject();
  v158 = v319;
  *(v157 + 16) = v320;
  *(v157 + 24) = v158;
  v159 = v351;
  *v351 = v157;
  v160 = v352;
  (*(v352 + 104))(v159, v323, v353);
  sub_275254A9C(&qword_2809B89A0, &qword_2809B8980, &qword_275255FF0);
  v161 = v363;
  OUTLINED_FUNCTION_38();
  sub_27525536C();

  v162 = *(v160 + 8);
  v163 = OUTLINED_FUNCTION_36();
  v164(v163);
  v165 = v381;
  v156(v154, v381);
  v166 = *(&v380->isa + *(v358 + 20));
  sub_275254F8C();
  OUTLINED_FUNCTION_40(&a10);
  v167 = v378;
  sub_27525531C();
  if (v167)
  {
    v168 = OUTLINED_FUNCTION_27(&a11);
    v169(v168);
    v156(v161, v165);
    v170 = OUTLINED_FUNCTION_3_2();
    v171(v170);
    goto LABEL_40;
  }

  v172 = OUTLINED_FUNCTION_27(&a11);
  v173(v172);
  v174 = v342;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v155, 1, v342);
  v176 = v324;
  if (EnumTagSinglePayload == 1)
  {
    sub_275254B18(v155, &qword_2809B8A78, &qword_275256190);
LABEL_35:

    v220 = OUTLINED_FUNCTION_48();
    v221 = sub_27525565C();

    if (os_log_type_enabled(v220, v221))
    {
      OUTLINED_FUNCTION_31();
      v222 = OUTLINED_FUNCTION_24();
      v382 = v222;
      *(v176 + 4) = OUTLINED_FUNCTION_44(4.8149e-34);
      OUTLINED_FUNCTION_21_0(&dword_275247000, v223, v224, "Could not find intent definition for: %s");
      __swift_destroy_boxed_opaque_existential_1(v222);
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_19_0();

      v225 = OUTLINED_FUNCTION_13_0();
      v156(v225, v165);
      v226 = OUTLINED_FUNCTION_3_2();
    }

    else
    {

      v229 = OUTLINED_FUNCTION_13_0();
      v156(v229, v165);
      v226 = OUTLINED_FUNCTION_7_1();
      v227 = v176;
    }

    v228(v226, v227);
    v133 = OUTLINED_FUNCTION_28();
    v135 = *MEMORY[0x277CEB0A0];
    v134 = v361;
    goto LABEL_39;
  }

  v364 = v155;
  v177 = v370;
  v178 = v341;
  (*(v370 + 32))(v341, v155, v174);
  v179 = v337;
  v180 = v178;
  sub_27525529C();
  v181 = *MEMORY[0x277D723F0];
  OUTLINED_FUNCTION_40(&v370);
  v183 = v338;
  isUniquelyReferenced_nonNull_native = v340;
  (*(v182 + 104))(v338);
  OUTLINED_FUNCTION_34();
  v185 = sub_275252094();
  v186 = *(v155 + 8);
  v186(v183, isUniquelyReferenced_nonNull_native);
  v186(v179, isUniquelyReferenced_nonNull_native);
  v187 = v365;
  if ((v185 & 1) == 0)
  {
    (*(v177 + 8))(v180, v342);
    v156 = v345;
    v165 = v381;
    v176 = v324;
    goto LABEL_35;
  }

  v188 = swift_allocObject();
  v348 = v188;
  *(v188 + 16) = MEMORY[0x277D84FA0];
  v351 = (v188 + 16);
  v189 = sub_27525528C();
  v365 = *(v189 + 16);
  if (!v365)
  {
    v190 = MEMORY[0x277D84F98];
    v219 = v381;
LABEL_42:

    v230 = v336;
    sub_275254544(v380, v336);
    OUTLINED_FUNCTION_40(&v366);
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_46(v231, v232, v233, v234, v235, v230, v236);
    v177 = *MEMORY[0x277CEB0C0];
    OUTLINED_FUNCTION_41(&a16);
    v238 = v333;
    v239 = v362;
    v373 = *(v237 + 104);
    v374 = v237 + 104;
    v373(v333, v177, v362);
    v240 = sub_27525509C();
    v376 = *(v183 + 8);
    (v376)(v238, v239);
    if (v240)
    {
      v372 = v183 + 8;
      v241 = v183;
      v242 = v351;
      swift_beginAccess();
      if (*(*v242 + 16))
      {
        sub_275248FE0(v336);

        v243 = OUTLINED_FUNCTION_48();
        v244 = sub_27525565C();
        if (os_log_type_enabled(v243, v244))
        {
          OUTLINED_FUNCTION_31();
          v245 = OUTLINED_FUNCTION_24();
          a10 = v245;
          *v190 = 136315138;

          sub_27525562C();

          v246 = OUTLINED_FUNCTION_30();

          *(v190 + 4) = v246;
          OUTLINED_FUNCTION_21_0(&dword_275247000, v247, v248, "Unsatisfied non-optional intent definition parameters %s after evaluating all intent representation parameters");
          __swift_destroy_boxed_opaque_existential_1(v245);
          OUTLINED_FUNCTION_19();
          OUTLINED_FUNCTION_19_0();
        }

        OUTLINED_FUNCTION_11_1();
        v376();
        v249 = OUTLINED_FUNCTION_0_1();
        v250(v249);
        v251 = OUTLINED_FUNCTION_13_0();
        v345(v251, v219);
        v265 = OUTLINED_FUNCTION_3_2();
        v266(v265);
        v267 = OUTLINED_FUNCTION_28();
        v373(v267, *MEMORY[0x277CEB090], v243);
      }

      else
      {
        OUTLINED_FUNCTION_41(&v363);
        OUTLINED_FUNCTION_35();
        v258 = v336;
        OUTLINED_FUNCTION_46(v259, v260, v261, v262, v263, v336, v264);
        v196 = 0;
        sub_275248FE0(v258);

        v268 = v333;
        v183 = v362;
        v373(v333, v177, v362);
        v269 = sub_27525509C();
        v270 = v376;
        (v376)(v268, v183);
        if (v269)
        {
          isUniquelyReferenced_nonNull_native = v332;
          if (v330)
          {
            v202 = v330;
            v210 = sub_27525564C();
LABEL_58:
            v378 = v196;
            v379 = v202;
            v280 = v327;
            MEMORY[0x277C6FA00](v210);
            OUTLINED_FUNCTION_40(&v359);
            sub_27524AA1C(v280, v281);
            v282 = *(v368 + 8);
            v282(v280, v375);
            if ((sub_27525537C() & 1) == 0)
            {
              v293 = v368 + 16;
              v292 = *(v368 + 16);
              v294 = v375;
              v292(v325, v328, v375);
              v292(v326, v329, v294);
              v295 = OUTLINED_FUNCTION_48();
              v296 = sub_27525565C();
              v380 = v295;
              LODWORD(v369) = v296;
              if (os_log_type_enabled(v295, v296))
              {
                v297 = swift_slowAlloc();
                v367 = swift_slowAlloc();
                a10 = v367;
                *v297 = 136315394;
                v298 = v327;
                v299 = v375;
                v368 = v293;
                v292(v327, v325, v375);
                sub_27525557C();
                v300 = OUTLINED_FUNCTION_42();
                (v282)(v300);
                v301 = OUTLINED_FUNCTION_30();

                *(v297 + 4) = v301;
                *(v297 + 12) = 2080;
                v292(v298, v326, v299);
                sub_27525557C();
                v302 = OUTLINED_FUNCTION_42();
                (v282)(v302);
                v303 = OUTLINED_FUNCTION_30();

                *(v297 + 14) = v303;
                v304 = v380;
                _os_log_impl(&dword_275247000, v380, v369, "Type mismatch for outputType %s != %s", v297, 0x16u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_19();
                OUTLINED_FUNCTION_19();

                v282(v328, v299);
                v305 = v329;
                v306 = v299;
              }

              else
              {

                v282(v326, v375);
                v307 = OUTLINED_FUNCTION_26(&v356);
                (v282)(v307);
                v308 = OUTLINED_FUNCTION_26(&v359);
                (v282)(v308);
                v305 = OUTLINED_FUNCTION_26(&v360);
              }

              v282(v305, v306);
              OUTLINED_FUNCTION_11_1();
              v309 = v376;
              v376();
              v310 = OUTLINED_FUNCTION_26(&v366);
              (v309)(v310);
              v311 = OUTLINED_FUNCTION_0_1();
              v312(v311);
              v313 = OUTLINED_FUNCTION_13_0();
              v345(v313, v381);
              v314 = OUTLINED_FUNCTION_3_2();
              v315(v314);
              v316 = *MEMORY[0x277CEB090];
              v317 = OUTLINED_FUNCTION_28();
              (v373)(v317);

              goto LABEL_40;
            }

            v282(v328, v375);
            v283 = OUTLINED_FUNCTION_26(&v360);
            (v282)(v283);
            v278 = v362;
            v187 = v335;
            v279 = v324;
            isUniquelyReferenced_nonNull_native = v332;
          }

          else
          {
LABEL_56:
            v278 = v183;
            v279 = v324;
          }

          v284 = v376;
          (v376)(isUniquelyReferenced_nonNull_native, v278);
          (v284)(v187, v278);
          v285 = OUTLINED_FUNCTION_0_1();
          v286(v285);
          v287 = OUTLINED_FUNCTION_2_1();
          v288(v287);
          v289 = OUTLINED_FUNCTION_7_1();
          v290(v289, v279);
          v291 = OUTLINED_FUNCTION_28();
          v373(v291, v177, v278);
        }

        else
        {
          v271 = v324;
          (v270)(v187, v183);
          v272 = OUTLINED_FUNCTION_0_1();
          v273(v272);
          v274 = OUTLINED_FUNCTION_2_1();
          v275(v274);
          v276 = OUTLINED_FUNCTION_7_1();
          v277(v276, v271);
          (*(v241 + 32))(v360, v332, v183);
        }
      }
    }

    else
    {

      sub_275248FE0(v336);
      v252 = OUTLINED_FUNCTION_0_1();
      v253(v252);
      v254 = OUTLINED_FUNCTION_2_1();
      v255(v254);
      v256 = OUTLINED_FUNCTION_3_2();
      v257(v256);
      (*(v183 + 32))(v360, v187, v239);
    }

LABEL_40:
    OUTLINED_FUNCTION_9();
    return;
  }

  v187 = 0;
  v358 = v189 + ((*(v369 + 80) + 32) & ~*(v369 + 80));
  v357 = v369 + 16;
  v356 = v369 + 8;
  v376 = (v368 + 16);
  v350 = v368 + 32;
  v349 = v368 + 40;
  v354 = (v368 + 88);
  LODWORD(v353) = *MEMORY[0x277D72AE8];
  v190 = MEMORY[0x277D84F98];
  v352 = v368 + 8;
  v378 = 0;
  v355 = v189;
  while (1)
  {
    if (v187 >= *(v189 + 16))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v191 = v369;
    v192 = v366;
    v193 = v367;
    (*(v369 + 16))(v366, v358 + *(v369 + 72) * v187, v367);
    v194 = sub_27525540C();
    v196 = v195;
    v197 = v373;
    MEMORY[0x277C6FBA0]();
    (*(v191 + 8))(v192, v193);
    v177 = *v376;
    (*v376)(v374, v197, v375);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v382 = v190;
    v198 = sub_275253B18(v194, v196);
    if (__OFADD__(*(v190 + 16), (v199 & 1) == 0))
    {
      goto LABEL_55;
    }

    v200 = v198;
    v201 = v199;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A28, &qword_275256168);
    v202 = &v382;
    if (sub_27525574C())
    {
      break;
    }

LABEL_26:
    v190 = v382;
    if (v201)
    {
      v205 = OUTLINED_FUNCTION_33();
      isUniquelyReferenced_nonNull_native = v375;
      (*(v206 + 40))(v205, v374, v375);
    }

    else
    {
      v382[(v200 >> 6) + 8] |= 1 << v200;
      v207 = (*(v190 + 48) + 16 * v200);
      *v207 = v194;
      v207[1] = v196;
      v208 = OUTLINED_FUNCTION_33();
      isUniquelyReferenced_nonNull_native = v375;
      v210 = (*(v209 + 32))(v208, v374, v375);
      v211 = *(v190 + 16);
      v212 = __OFADD__(v211, 1);
      v213 = v211 + 1;
      if (v212)
      {
        __break(1u);
        goto LABEL_58;
      }

      *(v190 + 16) = v213;
    }

    v214 = v372;
    v183 = v373;
    v215 = OUTLINED_FUNCTION_38();
    (v177)(v215);
    v216 = (*v354)(v214, isUniquelyReferenced_nonNull_native);
    v217 = v352;
    if (v216 != v353)
    {
      sub_275253C44(&v382, v194, v196);
    }

    v218 = *v217;
    (*v217)(v183, isUniquelyReferenced_nonNull_native);
    v219 = v381;
    v177 = v370;
    ++v187;
    v218(v372, isUniquelyReferenced_nonNull_native);
    v189 = v355;
    if (v365 == v187)
    {
      goto LABEL_42;
    }
  }

  v202 = v382;
  v203 = sub_275253B18(v194, v196);
  if ((v201 & 1) == (v204 & 1))
  {
    v200 = v203;
    goto LABEL_26;
  }

  sub_2752557AC();
  __break(1u);
}

void sub_2752511A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_10();
  a19 = v22;
  a20 = v23;
  v162 = v21;
  v175 = v20;
  v169 = v24;
  v170 = v25;
  v27 = v26;
  v158 = v28;
  v166 = sub_27525508C();
  v29 = OUTLINED_FUNCTION_3(v166);
  v157 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_11_0();
  v165 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_22_0();
  v167 = v36;
  OUTLINED_FUNCTION_8_0();
  v161 = sub_2752550AC();
  v37 = OUTLINED_FUNCTION_3(v161);
  v160 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_22_0();
  v164 = v42;
  OUTLINED_FUNCTION_8_0();
  v43 = sub_27525506C();
  v44 = OUTLINED_FUNCTION_3(v43);
  v171 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2_0();
  v168 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B89B8, &qword_2752560A8);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  OUTLINED_FUNCTION_8_1();
  v53 = v51 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = &v149 - v55;
  v172 = sub_27525573C();
  v57 = *(v172 - 8);
  v58 = v57;
  v59 = *(v57 + 64);
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_2_0();
  v174 = v60;
  a10 = MEMORY[0x277D84F98];
  v182 = MEMORY[0x277D84F98];
  v173 = v27;
  v61 = dynamic_cast_existential_0_class_conditional(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8AA8, &qword_275256238);
  v62 = *(v57 + 72);
  v63 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  if (v61)
  {
    v163 = v56;
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_275255FC0;
    v65 = v64 + v63;
    if (qword_2809B88F8 != -1)
    {
      swift_once();
    }

    v66 = v172;
    v67 = __swift_project_value_buffer(v172, qword_2809B8A48);
    v68 = *(v58 + 16);
    v68(v65, v67, v66);
    if (qword_2809B8900 != -1)
    {
      OUTLINED_FUNCTION_18_0();
    }

    v69 = __swift_project_value_buffer(v66, qword_2809B8A60);
    v68(v65 + v62, v69, v66);
    v176 = v64;
    v70 = OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(v70, v71);
    OUTLINED_FUNCTION_14_0();
    sub_275254A9C(v72, &qword_2809B8AB0, &qword_275256240);
    v73 = v174;
    sub_27525568C();
    v56 = v163;
    v74 = v66;
  }

  else
  {
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_275256080;
    if (qword_2809B8900 != -1)
    {
LABEL_39:
      OUTLINED_FUNCTION_18_0();
    }

    v76 = v172;
    v77 = __swift_project_value_buffer(v172, qword_2809B8A60);
    (*(v58 + 16))(v75 + v63, v77, v76);
    v176 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8AB0, &qword_275256240);
    OUTLINED_FUNCTION_14_0();
    sub_275254A9C(v78, &qword_2809B8AB0, &qword_275256240);
    v73 = v174;
    v74 = v76;
    sub_27525568C();
  }

  v79 = __swift_storeEnumTagSinglePayload(v56, 1, 1, v43);
  v181 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v79);
  v80 = v175;
  *(&v149 - 6) = v56;
  *(&v149 - 5) = v80;
  *(&v149 - 4) = &v181;
  *(&v149 - 3) = &v182;
  *(&v149 - 2) = &a10;
  sub_27525570C();
  sub_27524E394(v56, v53);
  if (__swift_getEnumTagSinglePayload(v53, 1, v43) == 1)
  {
    sub_275254B18(v53, &qword_2809B89B8, &qword_2752560A8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (dynamic_cast_existential_1_conditional(AssociatedTypeWitness) && (v82 = sub_275249294()) != 0)
    {
      v155 = AssociatedTypeWitness;
      v171 = *(v82 + 16);

      v83 = sub_27525504C();
      v85 = v84;
      v86 = sub_27525505C();
      v87 = a10;
      v53 = v182;
      v88 = v83;
      v89 = v171;
      v90 = v162;
      sub_27524F0E4(v88, v85, v86, v91, a10, v182, v171, v92, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160);
      v63 = v90;
      if (v90)
      {
        (*(v58 + 8))(v174, v172);
      }

      else
      {
        v153 = v87;
        v154 = v53;

        v104 = *MEMORY[0x277CEB0C0];
        v105 = v160;
        v106 = *(v160 + 104);
        v43 = v159;
        v107 = v161;
        v151 = v160 + 104;
        v150 = v106;
        v106(v159, v104, v161);
        v108 = sub_27525509C();
        v109 = *(v105 + 8);
        v159 = v105 + 8;
        v152 = v109;
        v109(v43, v107);
        if (v108)
        {
          v173 = 0;
          v149 = v58;
          v180 = MEMORY[0x277D84F90];
          v110 = *(v181 + 16);
          v163 = (v157 + 104);
          LODWORD(v162) = *MEMORY[0x277CEB088];
          v168 = (v157 + 8);
          v169 = v181;
          v58 = v181 + 40;
          v170 = -v110;
          v111 = -1;
          v112 = v166;
          while (v170 + v111 != -1)
          {
            ++v111;
            v75 = v175;
            v113 = v173;
            if (v111 >= *(v169 + 16))
            {
              __break(1u);
              goto LABEL_39;
            }

            v114 = v167;
            sub_27524CDEC(*(v58 - 8), &v180, *(v58 - 8), *v58, v167);
            if (v113)
            {

              OUTLINED_FUNCTION_9_1();
              v133(v132);
              v134 = OUTLINED_FUNCTION_29();
              v135(v134);
              goto LABEL_16;
            }

            v173 = 0;
            v58 += 16;
            v43 = v165;
            (*v163)(v165, v162, v112);
            v115 = sub_27525507C();
            v53 = v56;
            v63 = v168;
            v116 = *v168;
            (*v168)(v43, v112);
            v116(v114, v112);
            v56 = v53;
            if ((v115 & 1) == 0)
            {

              OUTLINED_FUNCTION_11_1();
              OUTLINED_FUNCTION_9_1();
              v118(v117);
              v119 = OUTLINED_FUNCTION_29();
              v120(v119);
LABEL_24:
              v150(v158, *MEMORY[0x277CEB090], v111);
              OUTLINED_FUNCTION_32();
              goto LABEL_16;
            }
          }

          sub_275254FCC();
          v121 = v155;
          v122 = dynamic_cast_existential_1_superclass_conditional(v155);
          v124 = v173;
          if (v122)
          {
            v125 = v122;
            v126 = v123;
            OUTLINED_FUNCTION_37();
          }

          else
          {
            dynamic_cast_existential_1_conditional(v121);
            OUTLINED_FUNCTION_37();
            if (!v137)
            {
              goto LABEL_34;
            }

            v170 = v136;
            v138 = type metadata accessor for EntityTypeExtractionVisitor();
            swift_allocObject();
            v139 = sub_275249208(0, 0);
            v178 = v138;
            v179 = sub_275254B78(&qword_2809B89E0, type metadata accessor for EntityTypeExtractionVisitor);
            v176 = v139;

            sub_27525520C();
            __swift_destroy_boxed_opaque_existential_1(&v176);
            v125 = *(v139 + 16);
            v126 = *(v139 + 24);

            if (!v125)
            {
LABEL_34:

              v140 = OUTLINED_FUNCTION_25();
              v141(v140);
              goto LABEL_26;
            }
          }

          v127 = v156;
          sub_27524CDEC(v125, &v180, v125, v126, v156);
          if (v124)
          {

            OUTLINED_FUNCTION_9_1();
            v129(v128);
            v130 = OUTLINED_FUNCTION_25();
            v131(v130);
            goto LABEL_16;
          }

          v173 = 0;

          v143 = v165;
          v142 = v166;
          (*v163)(v165, v162, v166);
          OUTLINED_FUNCTION_34();
          v144 = sub_27525507C();

          v111 = *v168;
          (*v168)(v143, v142);
          (v111)(v127, v142);
          v145 = OUTLINED_FUNCTION_25();
          v146(v145);
          if ((v144 & 1) == 0)
          {
            OUTLINED_FUNCTION_11_1();
            OUTLINED_FUNCTION_9_1();
            v148(v147);
            goto LABEL_24;
          }

          v121 = v164;
        }

        else
        {
          (*(v58 + 8))(v174, v172);

          v121 = v164;
          OUTLINED_FUNCTION_32();
        }

LABEL_26:
        (*(v160 + 32))(v158, v121, v161);
      }
    }

    else
    {
      v176 = 0;
      v177 = 0xE000000000000000;
      sub_2752556EC();

      v176 = 0x795474757074756FLL;
      v177 = 0xEB00000000206570;
      v180 = AssociatedTypeWitness;
      swift_getMetatypeMetadata();
      v98 = sub_27525557C();
      MEMORY[0x277C6FD40](v98);

      MEMORY[0x277C6FD40](0xD000000000000024, 0x80000002752565E0);
      v99 = v176;
      v100 = v177;
      OUTLINED_FUNCTION_12_0();
      sub_275254B78(v101, v102);
      OUTLINED_FUNCTION_45();
      *v103 = v99;
      v103[1] = v100;
      (*(v171 + 13))(v103, *MEMORY[0x277CEB048], v43);
      swift_willThrow();
      (*(v58 + 8))(v174, v74);
    }
  }

  else
  {
    v93 = v171;
    v94 = v168;
    (*(v171 + 4))(v168, v53, v43);
    OUTLINED_FUNCTION_12_0();
    sub_275254B78(v95, v96);
    OUTLINED_FUNCTION_45();
    (v93)[2](v97, v94, v43);
    swift_willThrow();
    (v93[1])(v94, v43);
    (*(v58 + 8))(v73, v74);
  }

LABEL_16:

  sub_275254B18(v56, &qword_2809B89B8, &qword_2752560A8);

  OUTLINED_FUNCTION_9();
}

uint64_t sub_275251FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_3(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  (*(v15 + 16))(&v17 - v13, a1);
  return a7(v14);
}

uint64_t sub_275252094()
{
  sub_2752552BC();
  sub_275254B78(&qword_2809B8A90, MEMORY[0x277D723F8]);
  sub_27525560C();
  sub_27525560C();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_27525578C();
  }

  return v1 & 1;
}

uint64_t sub_275252174@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, NSObject *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = v8;
  v97 = a7;
  v101 = a6;
  v105 = a4;
  v106 = a5;
  v114 = a3;
  v102 = a2;
  v96 = a8;
  v112 = sub_27525538C();
  v13 = *(*(v112 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v112 - 8);
  v94 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v95 = &v93 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v103 = &v93 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v113 = &v93 - v21;
  MEMORY[0x28223BE20](v20);
  v115 = &v93 - v23;
  v24 = a1 + 64;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(a1 + 64);
  v28 = (v25 + 63) >> 6;
  v29 = v22 + 16;
  v100 = v22;
  v111 = v22 + 8;
  v108 = a1;

  v30 = 0;
  v104 = v29;
  v99 = a1 + 64;
  v98 = v28;
  if (v27)
  {
    while (1)
    {
      v118 = v11;
LABEL_9:
      v32 = __clz(__rbit64(v27)) | (v30 << 6);
      v33 = (*(v108 + 48) + 16 * v32);
      v10 = *v33;
      v9 = v33[1];
      v34 = *(*(v108 + 56) + 8 * v32);
      v35 = *(v114 + 16);

      v116 = v34;
      if (!v35)
      {
        break;
      }

      sub_275253B18(v10, v9);
      if ((v36 & 1) == 0)
      {
        break;
      }

      v37 = v118;
      sub_27525564C();
      if (v37)
      {
      }

      v38 = v114;
      if (!*(v114 + 16))
      {
        goto LABEL_41;
      }

      v39 = sub_275253B18(v10, v9);
      if ((v40 & 1) == 0)
      {
        goto LABEL_42;
      }

      v107 = v10;
      v109 = v9;
      v118 = 0;
      v41 = v100;
      v42 = *(v100 + 16);
      v43 = v103;
      v44 = v112;
      v42(v103, *(v38 + 56) + *(v100 + 72) * v39, v112);
      sub_27524AA1C(v43, v113);
      v110 = *(v41 + 8);
      v110(v43, v44);
      v45 = v115;
      if ((sub_27525537C() & 1) == 0)
      {
        if (qword_2809B8910 != -1)
        {
          swift_once();
        }

        v60 = sub_27525526C();
        __swift_project_value_buffer(v60, qword_2809B8DB8);
        v61 = v112;
        v62 = v113;
        v63 = v42;
        v42(v95, v113, v112);
        v64 = v94;
        v65 = v115;
        v42(v94, v115, v61);
        v66 = v109;

        v67 = sub_27525524C();
        v68 = sub_27525565C();

        LODWORD(v114) = v68;
        v69 = os_log_type_enabled(v67, v68);
        v70 = v107;
        if (v69)
        {
          v71 = swift_slowAlloc();
          v105 = v67;
          v72 = v71;
          v106 = swift_slowAlloc();
          v117[0] = v106;
          *v72 = 136315650;
          v73 = sub_275253418(v70, v66, v117);

          *(v72 + 4) = v73;
          *(v72 + 12) = 2080;
          v74 = v103;
          v75 = v95;
          v63(v103, v95, v61);
          v76 = sub_27525557C();
          v78 = v77;
          v110(v75, v61);
          v79 = sub_275253418(v76, v78, v117);

          *(v72 + 14) = v79;
          *(v72 + 22) = 2080;
          v80 = v94;
          v63(v74, v94, v61);
          v81 = sub_27525557C();
          v83 = v82;
          v84 = v80;
          v85 = v110;
          v110(v84, v61);
          v86 = sub_275253418(v81, v83, v117);

          *(v72 + 24) = v86;
          v87 = v105;
          _os_log_impl(&dword_275247000, v105, v114, "Type mismatch for key '%s' %s != %s", v72, 0x20u);
          v88 = v106;
          swift_arrayDestroy();
          MEMORY[0x277C70310](v88, -1, -1);
          MEMORY[0x277C70310](v72, -1, -1);

          v85(v113, v61);
          v85(v115, v61);
        }

        else
        {

          v89 = v110;
          v110(v64, v61);
          v89(v95, v61);
          v89(v62, v61);
          v89(v65, v61);
        }

        v49 = MEMORY[0x277CEB090];
        goto LABEL_39;
      }

      v10 = v118;
      v46 = v116;
      if (v102)
      {
      }

      else
      {
        swift_beginAccess();
        sub_27525472C(v107, v109);
        swift_endAccess();

        v45 = v115;
      }

      v28 = v98;
      v27 &= v27 - 1;
      v47 = v112;
      v48 = v110;
      v9 = v111;
      v110(v113, v112);
      v48(v45, v47);
      v11 = v10;
      v24 = v99;
      if (!v27)
      {
        goto LABEL_5;
      }
    }

    if (qword_2809B8910 != -1)
    {
      goto LABEL_43;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v31 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v31 >= v28)
      {

        v49 = MEMORY[0x277CEB0C0];
        goto LABEL_39;
      }

      v27 = *(v24 + 8 * v31);
      ++v30;
      if (v27)
      {
        v118 = v11;
        v30 = v31;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  v50 = sub_27525526C();
  __swift_project_value_buffer(v50, qword_2809B8DB8);

  v51 = sub_27525524C();
  v52 = sub_27525565C();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v117[0] = v54;
    *v53 = 136315394;
    if (v102)
    {
      v55 = 0;
    }

    else
    {
      v55 = 762212206;
    }

    if (v102)
    {
      v56 = 0xE000000000000000;
    }

    else
    {
      v56 = 0xE400000000000000;
    }

    v57 = sub_275253418(v55, v56, v117);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2080;
    v58 = sub_275253418(v10, v9, v117);

    *(v53 + 14) = v58;
    _os_log_impl(&dword_275247000, v51, v52, "Missing %soptional intent parameter '%s'", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C70310](v54, -1, -1);
    MEMORY[0x277C70310](v53, -1, -1);
  }

  else
  {
  }

  v49 = MEMORY[0x277CEB090];
LABEL_39:
  v90 = v96;
  v91 = *v49;
  v92 = sub_2752550AC();
  return (*(*(v92 - 8) + 104))(v90, v91, v92);
}

uint64_t sub_275252AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  if (dynamic_cast_existential_1_conditional(a3))
  {
    v12 = sub_2752555CC();
    v14 = v13;
    if (sub_2752555EC())
    {
      v15 = sub_275252FC8(1uLL, v12, v14);
      v12 = MEMORY[0x277C6FD10](v15);
      v14 = v16;
    }

    sub_2752551CC();
    v17 = sub_275249294();
    if (!v17)
    {
      v50[0] = 0;
      v50[1] = 0xE000000000000000;
      sub_2752556EC();
      MEMORY[0x277C6FD40](0xD000000000000014, 0x8000000275256610);
      v50[5] = sub_2752551CC();
      v50[6] = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8AC0, &qword_275256248);
      v28 = sub_27525557C();
      MEMORY[0x277C6FD40](v28);

      MEMORY[0x277C6FD40](0xD000000000000029, 0x8000000275256630);
      MEMORY[0x277C6FD40](v12, v14);

      sub_275254B18(a5, &qword_2809B89B8, &qword_2752560A8);
      *a5 = 0;
      a5[1] = 0xE000000000000000;
      v29 = *MEMORY[0x277CEB048];
      v30 = sub_27525506C();
      (*(*(v30 - 8) + 104))(a5, v29, v30);
      __swift_storeEnumTagSinglePayload(a5, 0, 1, v30);
      return 0;
    }

    v18 = v17;
    v19 = sub_2752551CC();
    v20 = dynamic_cast_existential_1_class_conditional(v19);
    if (v20)
    {
      v22 = v20;
      v23 = v21;
    }

    else
    {
      if (!dynamic_cast_existential_1_conditional(v19))
      {
        goto LABEL_19;
      }

      v43 = type metadata accessor for EntityTypeExtractionVisitor();
      swift_allocObject();
      v44 = sub_275249208(0, 0);
      v50[3] = v43;
      v50[4] = sub_275254B78(&qword_2809B89E0, type metadata accessor for EntityTypeExtractionVisitor);
      v50[0] = v44;

      sub_27525520C();
      __swift_destroy_boxed_opaque_existential_1(v50);
      v22 = *(v44 + 16);
      v23 = *(v44 + 24);

      if (!v22)
      {
LABEL_19:
        v45 = *(v18 + 24);
        v46 = *(v18 + 16);
        if (v45 != 1)
        {
          a8 = a9;
        }

        v47 = *a8;
        swift_isUniquelyReferenced_nonNull_native();
        v50[0] = *a8;
        sub_2752545A8(v46, v12, v14);
        *a8 = v50[0];

        return 1;
      }
    }

    v24 = (*a7 + 32);
    v25 = *(*a7 + 16) + 1;
    while (--v25)
    {
      v26 = *v24;
      v24 += 2;
      if (v26 == v22)
      {
        goto LABEL_19;
      }
    }

    if (qword_2809B8910 != -1)
    {
      swift_once();
    }

    v32 = sub_27525526C();
    __swift_project_value_buffer(v32, qword_2809B8DB8);
    v33 = sub_27525524C();
    v34 = sub_27525565C();
    if (os_log_type_enabled(v33, v34))
    {
      v49 = v23;
      v35 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v50[0] = v48;
      *v35 = 136315138;
      v36 = sub_2752557DC();
      v38 = sub_275253418(v36, v37, v50);

      *(v35 + 4) = v38;
      _os_log_impl(&dword_275247000, v33, v34, "Adding entity '%s' to the list of parameter entities to check", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x277C70310](v48, -1, -1);
      v39 = v35;
      v23 = v49;
      MEMORY[0x277C70310](v39, -1, -1);
    }

    sub_275253144(sub_275253318);
    v40 = *(*a7 + 16);
    sub_2752531D0(v40, sub_275253318);
    v41 = *a7;
    *(v41 + 16) = v40 + 1;
    v42 = v41 + 16 * v40;
    *(v42 + 32) = v22;
    *(v42 + 40) = v23;
    goto LABEL_19;
  }

  return 1;
}

unint64_t sub_275252FC8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_2752555AC();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_2752555FC();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2752530BC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_27525573C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_27525572C();
}

uint64_t sub_275253144(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_2752531D0(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

char *sub_275253218(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8AD8, &qword_275256260);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_275253318(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8AC8, &qword_275256250);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_275253418(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2752534DC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_275254A0C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2752534DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2752535DC(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2752556FC();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2752535DC(uint64_t a1, unint64_t a2)
{
  v4 = sub_275253628(a1, a2);
  sub_275253740(&unk_2883FE488);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_275253628(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2752555DC())
  {
    result = sub_275253824(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2752556DC();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2752556FC();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_275253740(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_275253894(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_275253824(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A98, &qword_275256230);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_275253894(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A98, &qword_275256230);
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

uint64_t sub_275253AA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275253AE0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_275253B18(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2752557BC();
  sub_27525559C();
  v6 = sub_2752557CC();

  return sub_275253B90(a1, a2, v6);
}

unint64_t sub_275253B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_27525578C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

BOOL sub_275253C44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2752557BC();
  sub_27525559C();
  v9 = sub_2752557CC();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_27525578C() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_275253FEC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_275253D90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A88, &qword_275256228);
  result = sub_2752556BC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_275254154(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_2752557BC();
    sub_27525559C();
    result = sub_2752557CC();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_275253FEC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_275253D90(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_275254310(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_2752557BC();
      sub_27525559C();
      result = sub_2752557CC();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_27525578C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2752541B8();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_27525579C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_275254154(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_275256180;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_2752541B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A88, &qword_275256228);
  v2 = *v0;
  v3 = sub_2752556AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_275254310(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8A88, &qword_275256228);
  result = sub_2752556BC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_2752557BC();

        sub_27525559C();
        result = sub_2752557CC();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_275254544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2752545A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_275253B18(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B8AD0, &qword_275256258);
  if ((sub_27525574C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_275253B18(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_2752557AC();
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_2752546E4(v11, a2, a3, a1, v16);
  }
}

unint64_t sub_2752546E4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_27525472C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2752557BC();
  sub_27525559C();
  v7 = sub_2752557CC();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_27525578C() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2752541B8();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_275254854(v9);
  *v2 = v19;
  return v16;
}

unint64_t sub_275254854(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_27525569C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_2752557BC();

        sub_27525559C();
        v15 = sub_2752557CC();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_275254A0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275254A9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_275254B18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_275254B78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_1()
{
  v1 = *(*(v0 - 208) + 8);
  result = *(v0 - 448);
  v3 = *(v0 - 440);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_1()
{
  result = *(v0 - 264);
  v2 = *(v0 - 256);
  v3 = *(v0 - 408);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_2()
{
  v1 = *(*(v0 - 200) + 8);
  result = *(v0 - 152);
  v3 = *(v0 - 584);
  return result;
}

uint64_t OUTLINED_FUNCTION_18_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_19_0()
{

  JUMPOUT(0x277C70310);
}

void OUTLINED_FUNCTION_21_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_24()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_27@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(a1 - 256) + 8);
  result = v1;
  v5 = *(v2 - 312);
  return result;
}

uint64_t OUTLINED_FUNCTION_29()
{
  v1 = *(*(v0 - 368) + 8);
  result = *(v0 - 168);
  v3 = *(v0 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_30()
{

  return sub_275253418(v0, v1, (v2 - 72));
}

uint64_t OUTLINED_FUNCTION_31()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_37()
{
  v1 = *(v0 - 368);
  v2 = *(v0 - 184);
  v3 = *(v0 - 248);
}

uint64_t OUTLINED_FUNCTION_44(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 160);

  return sub_275253418(v5, v2, (v3 - 112));
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_46@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, NSObject *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(v7 - 384);

  return sub_275252174(a1, a2, a3, a4, a5, a6, v9, a7);
}

uint64_t OUTLINED_FUNCTION_48()
{
  v2 = *(v0 - 296);

  return sub_27525524C();
}

uint64_t sub_275254F14(uint64_t a1, uint64_t *a2)
{
  v3 = sub_27525526C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_27525525C();
}