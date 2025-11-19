uint64_t sub_26A675AC8(char *a1, char *a2, char *a3, char *a4, uint64_t (*a5)(uint64_t, _BYTE *, uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a4;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 56;
  v61 = a3;
  v11 = (a3 - a2) / 56;
  if (v10 >= v11)
  {
    sub_26A4C2444(a2, (a3 - a2) / 56, a4);
    v23 = v7 + 56 * v11;
    v54 = v7;
    v24 = -v7;
    v25 = v61;
    v52 = -v7;
    v53 = v9;
LABEL_15:
    v26 = v8 - 56;
    v27 = v25 - 56;
    v28 = (v23 - 56);
    v29 = v24 + v23;
    while (1)
    {
      v12 = v28 + 56;
      if (v28 + 56 <= v54 || v8 <= v9)
      {
        v7 = v54;
LABEL_29:
        v42 = (v12 - v7) / 56;
        v43 = v8 < v7 || v8 >= v7 + 56 * v42;
        if (v43 || v8 != v7)
        {
          v44 = 56 * v42;
          v45 = v8;
          v46 = v7;
          goto LABEL_49;
        }

        return 1;
      }

      v55 = v29;
      v31 = v6;
      v61 = v27;
      v32 = v28;
      sub_26A4D7E54();
      sub_26A4D7E54();
      v33 = a5(v59, v60, v57, v58);
      if (v31)
      {
        break;
      }

      v34 = v33;
      sub_26A4DBD10(&v57, &qword_2803B2748);
      sub_26A4DBD10(&v59, &qword_2803B2748);
      if (v34)
      {
        v25 = v61;
        v23 = v32 + 56;
        v19 = v61 + 56 == v8;
        v24 = v52;
        v9 = v53;
        v8 -= 56;
        v6 = 0;
        if (!v19)
        {
          v39 = *v26;
          v40 = *(v26 + 1);
          v41 = *(v26 + 2);
          *(v61 + 6) = *(v26 + 6);
          v25[1] = v40;
          v25[2] = v41;
          *v25 = v39;
          v8 = v26;
        }

        goto LABEL_15;
      }

      v35 = v61;
      if (v12 != v61 + 56)
      {
        v36 = *v32;
        v37 = v32[1];
        v38 = v32[2];
        *(v61 + 6) = *(v32 + 6);
        v35[1] = v37;
        v35[2] = v38;
        *v35 = v36;
      }

      v27 = v35 - 56;
      v28 = (v32 - 56);
      v6 = 0;
      v29 = v55 - 56;
      v9 = v53;
    }

    sub_26A4DBD10(&v57, &qword_2803B2748);
    sub_26A4DBD10(&v59, &qword_2803B2748);
    v46 = v54;
    v49 = v55 / 56;
    if (v8 < v54 || v8 >= &v54[56 * (v55 / 56)])
    {
      memmove(v8, v54, 56 * v49);
      return 1;
    }

    if (v8 != v54)
    {
      v44 = 56 * v49;
      v45 = v8;
      goto LABEL_49;
    }
  }

  else
  {
    sub_26A4C2444(a1, (a2 - a1) / 56, a4);
    v12 = v7 + 56 * v10;
    v13 = v61;
    while (1)
    {
      if (v7 >= v12 || v8 >= v13)
      {
        v8 = v9;
        goto LABEL_29;
      }

      sub_26A4D7E54();
      v15 = v7;
      sub_26A4D7E54();
      v16 = a5(v59, v60, v57, v58);
      if (v5)
      {
        break;
      }

      v17 = v16;
      sub_26A4DBD10(&v57, &qword_2803B2748);
      sub_26A4DBD10(&v59, &qword_2803B2748);
      if (v17)
      {
        v18 = v8;
        v19 = v9 == v8;
        v8 += 56;
        v7 = v15;
      }

      else
      {
        v18 = v15;
        v7 = (v15 + 56);
        v19 = v9 == v15;
      }

      v13 = v61;
      if (!v19)
      {
        v20 = *v18;
        v21 = *(v18 + 1);
        v22 = *(v18 + 2);
        *(v9 + 48) = *(v18 + 6);
        *(v9 + 16) = v21;
        *(v9 + 32) = v22;
        *v9 = v20;
      }

      v9 += 56;
    }

    sub_26A4DBD10(&v57, &qword_2803B2748);
    sub_26A4DBD10(&v59, &qword_2803B2748);
    v47 = (v12 - v7) / 56;
    v48 = v9 < v7 || v9 >= v7 + 56 * v47;
    if (v48 || v9 != v7)
    {
      v44 = 56 * v47;
      v45 = v9;
      v46 = v7;
LABEL_49:
      memmove(v45, v46, v44);
    }
  }

  return 1;
}

uint64_t sub_26A675F0C()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A675F60()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A675FB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageStyleAppearance();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_17_20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);

  return sub_26A4DBD10(v3, v1);
}

uint64_t OUTLINED_FUNCTION_23_16(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1);
}

uint64_t OUTLINED_FUNCTION_28_7@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A6761C8()
{
  result = sub_26A84BBF8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A676284()
{
  result = type metadata accessor for SeparatorConfig(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A6762F0()
{
  v0 = type metadata accessor for SeparatorsConfig(0);
  __swift_allocate_value_buffer(v0, qword_2803D1E50);
  v1 = __swift_project_value_buffer(v0, qword_2803D1E50);
  v2 = *MEMORY[0x277D62F38];
  v3 = sub_26A84BBF8();
  v4 = *(*(v3 - 8) + 104);
  v4(v1, v2, v3);
  v5 = v1 + *(v0 + 20);
  v4(v5, v2, v3);
  result = type metadata accessor for SeparatorConfig(0);
  *(v1 + *(result + 20)) = 0;
  *(v5 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_26A6763E0()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *v0;
  if ((*(v0 + 8) & 1) == 0)
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

uint64_t sub_26A676510@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SectionHeaderStandardView();
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

uint64_t sub_26A676718@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  v13 = type metadata accessor for SectionHeaderStandardView();
  sub_26A4DBD68(v1 + *(v13 + 24), v12, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v12, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v15 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v9, v3);
}

uint64_t SectionHeaderStandardView.text1.getter()
{
  type metadata accessor for SectionHeaderStandardView();
}

uint64_t type metadata accessor for SectionHeaderStandardView()
{
  result = qword_2803B27C8;
  if (!qword_2803B27C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SectionHeaderStandardView.init(text1:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v4 = type metadata accessor for SectionHeaderStandardView();
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  *(a2 + v4[7]) = (*(v8 + 8))(v7, v8);

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SectionHeaderStandardView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  sub_26A84D138();
  v11 = TextProperty.asAnyView()();
  (*(v6 + 8))(v10, v4);
  v14[3] = MEMORY[0x277CE11C8];
  v14[4] = &protocol witness table for AnyView;
  v14[0] = v11;
  SectionHeaderStandardView.init(text1:)(v14, a2);
  sub_26A84D158();
  OUTLINED_FUNCTION_46();
  return (*(v12 + 8))(a1);
}

uint64_t SectionHeaderStandardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v3);
  v5 = &v10[-v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  sub_26A676718(&v10[-v7]);
  v12 = 0u;
  v13 = 0u;
  v14 = 1;
  sub_26A6763E0();
  sub_26A676510(v5);
  v8 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  v11 = v1;
  sub_26A4CBA78();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B27B8);
  *(a1 + *(result + 36)) = 60;
  return result;
}

uint64_t sub_26A676FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_26A84FA78();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_26A67701C(a1, a2 + 24);
}

uint64_t sub_26A67701C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SectionHeaderStandardView() + 28));
  sub_26A676960(v5);
  sub_26A4DBD68(v5, v8, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v7, __src, sizeof(v7));
  v8[11] = 0;
  v8[10] = sub_26A80A810;
  v6 = v3;

  sub_26A4DBD10(v5, &qword_2803AA880);
  sub_26A4DBD68(&v6, v5, &qword_2803A99A0);
  sub_26A4DBD68(v5, a2, &qword_2803A99A0);
  *(a2 + 296) = 0;
  *(a2 + 304) = 1;
  sub_26A4DBD10(&v6, &qword_2803A99A0);
  return sub_26A4DBD10(v5, &qword_2803A99A0);
}

uint64_t sub_26A67714C(uint64_t a1)
{
  result = sub_26A677DD0(&qword_2803B27C0, MEMORY[0x277D634E0]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A6771CC()
{
  sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
  if (v0 <= 0x3F)
  {
    sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      sub_26A4D27F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_26A6772A8()
{
  result = qword_2803B27D8;
  if (!qword_2803B27D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B27B8);
    sub_26A4DBCC8(&qword_2803B27E0, &qword_2803A9B60);
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B27D8);
  }

  return result;
}

uint64_t sub_26A6773B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  return sub_26A4DBD68(a3, a4, &qword_2803AA880);
}

uint64_t sub_26A67746C@<X0>(uint64_t a1@<X8>)
{
  if (qword_2803A8CC0 != -1)
  {
    swift_once();
  }

  return sub_26A677B08(&unk_2803D1E68, a1);
}

uint64_t sub_26A677580@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return sub_26A677B08(a2, a3);
}

uint64_t sub_26A6775DC()
{
  sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v49 = v1;
  v50 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  v48 = (v3 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = &v48 - v8;
  v9 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41();
  v15 = v14 - v13;
  v16 = type metadata accessor for SectionHeaderStandardView();
  v17 = (v16 - 8);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AACD8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AACE0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v24);
  v54 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v53 = &v48 - v27;
  sub_26A84D138();
  v28 = TextProperty.asAnyView()();
  v29 = v15;
  v30 = v50;
  (*(v11 + 8))(v29, v9);
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v31 = v17[7];
  *(v20 + v31) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v32 = v17[8];
  *(v20 + v32) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  *(v20 + v17[9]) = v28;
  v33 = v51;
  sub_26A84D148();
  sub_26A4DBDB4(v33, v6, &qword_2803B3800);
  if (__swift_getEnumTagSinglePayload(v6, 1, v30) == 1)
  {
    sub_26A4DBD10(v6, &qword_2803B3800);
    KeyPath = swift_getKeyPath();
    v35 = &v23[*(v52 + 36)];
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v37 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v35 + v36, 1, 1, v37);
    *v35 = KeyPath;
  }

  else
  {
    v38 = v48;
    v39 = *(v49 + 32);
    v39(v48, v6, v30);
    v40 = swift_getKeyPath();
    v41 = &v23[*(v52 + 36)];
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v39(v41 + v42, v38, v30);
    v43 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v41 + v42, 0, 1, v43);
    *v41 = v40;
  }

  sub_26A677B40(v20, v23);
  v44 = sub_26A84D118();
  v45 = v53;
  sub_26A4DDD5C(v44);

  sub_26A4DBD10(v23, &qword_2803AACD8);
  sub_26A4DBD68(v45, v54, &qword_2803AACE0);
  sub_26A677BA4();
  v46 = sub_26A851248();
  sub_26A4DBD10(v45, &qword_2803AACE0);
  return v46;
}

uint64_t sub_26A677B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionHeaderStandardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A677BA4()
{
  result = qword_2803B27E8;
  if (!qword_2803B27E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AACE0);
    sub_26A677C5C();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B27E8);
  }

  return result;
}

unint64_t sub_26A677C5C()
{
  result = qword_2803B27F0;
  if (!qword_2803B27F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AACD0);
    sub_26A677CE8();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B27F0);
  }

  return result;
}

unint64_t sub_26A677CE8()
{
  result = qword_2803B27F8;
  if (!qword_2803B27F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AACD8);
    sub_26A677DD0(&qword_2803B2800, type metadata accessor for SectionHeaderStandardView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B27F8);
  }

  return result;
}

uint64_t sub_26A677DD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A677E20(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26A677E60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SecondaryHeaderStandardView.init(text1:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for SecondaryHeaderStandardView();
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  *(a2 + v4[7]) = (*(v8 + 8))(v7, v8);

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for SecondaryHeaderStandardView()
{
  result = qword_2803B2828;
  if (!qword_2803B2828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A678024@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_26A678204()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for SecondaryHeaderStandardView() + 20);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v9, 0);
    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v9;
}

uint64_t sub_26A678344@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SecondaryHeaderStandardView();
  sub_26A4DBD68(v1 + *(v10 + 24), v9, &qword_2803A91A8);
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

uint64_t SecondaryHeaderStandardView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for SecondaryHeaderStandardView();
  v12 = a2 + v11[5];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = v11[6];
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  sub_26A84D638();
  v14 = TextProperty.asAnyView()();
  sub_26A84D658();
  OUTLINED_FUNCTION_46();
  (*(v15 + 8))(a1);
  result = (*(v6 + 8))(v10, v4);
  *(a2 + v11[7]) = v14;
  return result;
}

uint64_t SecondaryHeaderStandardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v6 - 8);
  sub_26A678024(&v18[-v7]);
  sub_26A67898C(v20);
  sub_26A678204();
  sub_26A678344(v5);
  v8 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  v19 = v1;
  sub_26A4CC18C();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26A68CE8C;
  *(v9 + 24) = 0;
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2808) + 36);
  *(v10 + 16) = swift_getKeyPath();
  *(v10 + 24) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v12 = *(v11 + 40);
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v13 = v10 + *(v11 + 44);
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *v10 = sub_26A4D1F7C;
  *(v10 + 8) = v9;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2810) + 36)) = 22;
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2818);
  v17 = a1 + *(result + 36);
  *v17 = KeyPath;
  *(v17 + 8) = 0;
  *(v17 + 16) = v15;
  *(v17 + 24) = 256;
  return result;
}

void sub_26A67898C(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(type metadata accessor for SecondaryHeaderStandardView() + 20);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v8, 0);
    (*(v4 + 8))(v6, v3);
    v8 = v22;
  }

  v10 = xmmword_26A8710F0;
  __asm { FMOV            V0.2D, #14.0 }

  v16 = 0;
  switch(v8)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 8:
      break;
    case 5:
      if (qword_2803A8B00 != -1)
      {
        swift_once();
      }

      _Q0 = xmmword_2803D1BD8;
      v10 = *&qword_2803D1BE8;
      v16 = byte_2803D1BF8;
      break;
    case 6:
      _Q0 = 0uLL;
      v16 = 1;
      v10 = 0uLL;
      break;
    case 7:
      v16 = 0;
      v10 = xmmword_26A871100;
      __asm { FMOV            V0.2D, #16.0 }

      break;
    default:
      v19 = xmmword_26A8710F0;
      v20 = _Q0;
      v17 = sub_26A851E98();
      LOBYTE(v18) = 2;
      sub_26A7AEFE4(v17, 0, "SnippetUI/IdiomDependentStaticValue.swift", 41, 2, 89, "value(for:)", 11, v18, v8, v19, *(&v19 + 1), v20, *(&v20 + 1), v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, vars0, vars8);
      v10 = v19;
      _Q0 = v20;
      v16 = 0;
      break;
  }

  *a1 = _Q0;
  *(a1 + 16) = v10;
  *(a1 + 32) = v16;
}

void *sub_26A678BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SecondaryHeaderStandardView() + 28));
  if (qword_2803A9070 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D2A30, &v5[25], &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(&v5[1], __src, 0xBFuLL);
  v5[35] = sub_26A80A810;
  v5[36] = 0;
  v5[0] = v3;

  sub_26A851458();
  sub_26A84F628();
  memcpy(a2, v5, 0x128uLL);
  return memcpy((a2 + 296), v7, 0x70uLL);
}

uint64_t sub_26A678D24()
{
  v64 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v58 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v57 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_19();
  v62 = v6;
  MEMORY[0x28223BE20](v7);
  v63 = &v56 - v8;
  v61 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v59 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  v13 = v12 - v11;
  v14 = sub_26A84D658();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  v21 = type metadata accessor for SecondaryHeaderStandardView();
  v22 = (v21 - 8);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_41();
  v25 = (v24 - v23);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AABE8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v26);
  v28 = &v56 - v27;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AABF0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19();
  v66 = v30;
  v32 = MEMORY[0x28223BE20](v31);
  v65 = &v56 - v33;
  (*(v16 + 16))(v20, v0, v14, v32);
  *v25 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v34 = v25 + v22[7];
  *v34 = swift_getKeyPath();
  v34[8] = 0;
  v35 = v22[8];
  *(v25 + v35) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  sub_26A84D638();
  v36 = TextProperty.asAnyView()();
  v37 = v13;
  v38 = v62;
  (*(v59 + 8))(v37, v61);
  v39 = v20;
  v40 = v64;
  (*(v16 + 8))(v39, v14);
  *(v25 + v22[9]) = v36;
  v41 = v63;
  sub_26A84D648();
  sub_26A4DBDB4(v41, v38, &qword_2803B3800);
  if (__swift_getEnumTagSinglePayload(v38, 1, v40) == 1)
  {
    sub_26A4DBD10(v38, &qword_2803B3800);
    KeyPath = swift_getKeyPath();
    v43 = &v28[*(v60 + 36)];
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v45 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v43 + v44, 1, 1, v45);
    *v43 = KeyPath;
  }

  else
  {
    v46 = v57;
    v47 = *(v58 + 32);
    v47(v57, v38, v40);
    v48 = swift_getKeyPath();
    v49 = &v28[*(v60 + 36)];
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v47(v49 + v50, v46, v40);
    v51 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v49 + v50, 0, 1, v51);
    *v49 = v48;
  }

  sub_26A679584(v25, v28);
  v52 = sub_26A84D618();
  v53 = v65;
  sub_26A4DE014(v52);

  sub_26A4DBD10(v28, &qword_2803AABE8);
  sub_26A4DBD68(v53, v66, &qword_2803AABF0);
  sub_26A6795E8();
  v54 = sub_26A851248();
  sub_26A4DBD10(v53, &qword_2803AABF0);
  return v54;
}

uint64_t sub_26A679308(uint64_t a1)
{
  result = sub_26A679814(&qword_2803B2820, MEMORY[0x277D63558]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A679388()
{
  result = qword_2803B2838;
  if (!qword_2803B2838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2818);
    sub_26A679414();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B2838);
  }

  return result;
}

unint64_t sub_26A679414()
{
  result = qword_2803B2840;
  if (!qword_2803B2840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2810);
    sub_26A6794A0();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B2840);
  }

  return result;
}

unint64_t sub_26A6794A0()
{
  result = qword_2803B2848;
  if (!qword_2803B2848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2808);
    sub_26A4DBCC8(&qword_2803B2850, &qword_2803A9B50);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B2848);
  }

  return result;
}

uint64_t sub_26A679584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecondaryHeaderStandardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A6795E8()
{
  result = qword_2803B2858;
  if (!qword_2803B2858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AABF0);
    sub_26A6796A0();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B2858);
  }

  return result;
}

unint64_t sub_26A6796A0()
{
  result = qword_2803B2860;
  if (!qword_2803B2860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AABE0);
    sub_26A67972C();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B2860);
  }

  return result;
}

unint64_t sub_26A67972C()
{
  result = qword_2803B2868;
  if (!qword_2803B2868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AABE8);
    sub_26A679814(&qword_2803AFD88, type metadata accessor for SecondaryHeaderStandardView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B2868);
  }

  return result;
}

uint64_t sub_26A679814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A67985C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26A679AE8(*a2);
  memset(v20, 0, sizeof(v20));
  v21 = 1;
  v4 = sub_26A795C14(v3, 0);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = sub_26A67A3CC(v20, v4, v6, v8, v10);

  swift_unknownObjectRelease();
  v12 = sub_26A679BDC(v11);

  if (*(v12 + 16))
  {
    v28.origin.x = OUTLINED_FUNCTION_0_64();
    CGRectGetMinX(v28);
    v29.origin.x = OUTLINED_FUNCTION_0_64();
    CGRectGetMinY(v29);
    sub_26A850508();
    v22 = 0x400921FB54442D18;
    sub_26A850D18();
    sub_26A850D18();
    sub_26A850D28();
    v22 = 0x3FF0000000000000;
    v23 = 0;
    v24 = 0;
    v25 = 0x3FF0000000000000;
    v26 = 0;
    v27 = 0;
    sub_26A850518();
    v30.origin.x = OUTLINED_FUNCTION_0_64();
    CGRectGetMaxX(v30);
    v31.origin.x = OUTLINED_FUNCTION_0_64();
    CGRectGetMinY(v31);
    sub_26A850D18();
    sub_26A850D18();
    sub_26A850D28();
    sub_26A850518();
    v13 = sub_26A795C14(v12, 0);
    sub_26A679D0C(a1, v20, v13, v14, v15, v16);
    OUTLINED_FUNCTION_1_61();

    return swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_1_61();
  }
}

uint64_t sub_26A679AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_26A7DD2F4(0, v1, 0);
    v2 = v13;
    v4 = a1 + 56;
    do
    {
      v14 = CGRectInset(*(v4 - 24), -1.0, -1.0);
      x = v14.origin.x;
      y = v14.origin.y;
      width = v14.size.width;
      height = v14.size.height;
      v10 = *(v13 + 16);
      v9 = *(v13 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_26A7DD2F4(v9 > 1, v10 + 1, 1);
      }

      *(v13 + 16) = v10 + 1;
      v11 = (v13 + 32 * v10);
      v11[4] = x;
      v11[5] = y;
      v11[6] = width;
      v11[7] = height;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_26A679BDC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v20 = MEMORY[0x277D84F90];
    sub_26A7DD2F4(0, v3, 0);
    v4 = v20;
    v6 = *(v2 + 8) + *(v2 + 8);
    v7 = *(v2 + 24);
    v8 = (a1 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;
      v21.origin.x = v9;
      v21.origin.y = v10;
      v21.size.width = v11;
      v21.size.height = *v8;
      v13 = v7 * CGRectGetWidth(v21);
      if (v6 > v13)
      {
        v14 = v6;
      }

      else
      {
        v14 = v13;
      }

      v22.origin.x = v9;
      v22.origin.y = v10;
      v22.size.width = v11;
      v22.size.height = v12;
      Height = CGRectGetHeight(v22);
      v17 = *(v20 + 16);
      v16 = *(v20 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_26A7DD2F4(v16 > 1, v17 + 1, 1);
      }

      *(v20 + 16) = v17 + 1;
      v18 = (v20 + 32 * v17);
      v18[4] = v9;
      v18[5] = v10;
      v18[6] = v14;
      v18[7] = Height;
      v8 += 4;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_26A679D0C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a6 >> 1 != a5)
  {
    if ((a6 >> 1) <= a5)
    {
      __break(1u);
    }

    else
    {
      v55 = v15;
      v56 = v14;
      v57 = v13;
      v58 = v12;
      v59 = v11;
      v60 = v10;
      v61 = v9;
      v62 = v8;
      v63 = v6;
      v64 = v7;
      v21 = result;
      v22 = a4 + 32 * a5;
      v45 = *(v22 + 16);
      v46 = *v22;
      v23 = *(v22 + 8);
      v24 = *(v22 + 24);
      if ((*(a2 + 32) & 1) == 0)
      {
        v26 = *(a2 + 16);
        v25 = *(a2 + 24);
        v28 = *a2;
        v27 = *(a2 + 8);
        v65.origin.x = *a2;
        v65.origin.y = v27;
        v65.size.width = v26;
        v65.size.height = v25;
        MaxX = CGRectGetMaxX(v65);
        *&v66.size.width = v45;
        *&v66.origin.x = v46;
        v66.origin.y = v23;
        v66.size.height = v24;
        v30 = CGRectGetMaxX(v66);
        v67.origin.x = v28;
        v67.origin.y = v27;
        v67.size.width = v26;
        v67.size.height = v25;
        rect = v24;
        v31 = CGRectGetMaxX(v67);
        if (v30 >= MaxX)
        {
          *&v71.size.width = v45;
          *&v71.origin.x = v46;
          v71.origin.y = v23;
          v71.size.height = rect;
          if (v31 >= CGRectGetMaxX(v71))
          {
            *&v76.size.width = v45;
            *&v76.origin.x = v46;
            v76.origin.y = v23;
            v76.size.height = rect;
            CGRectGetMaxX(v76);
            *&v77.size.width = v45;
            *&v77.origin.x = v46;
            v77.origin.y = v23;
            v77.size.height = rect;
            CGRectGetMinY(v77);
            sub_26A850528();
          }

          else
          {
            v72.origin.x = v28;
            v72.origin.y = v27;
            v72.size.width = v26;
            v72.size.height = v25;
            CGRectGetMaxX(v72);
            *&v73.size.width = v45;
            *&v73.origin.x = v46;
            v73.origin.y = v23;
            v73.size.height = rect;
            CGRectGetMinY(v73);
            sub_26A850528();
            *&v74.size.width = v45;
            *&v74.origin.x = v46;
            v74.origin.y = v23;
            v74.size.height = rect;
            CGRectGetMaxX(v74);
            *&v75.size.width = v45;
            *&v75.origin.x = v46;
            v75.origin.y = v23;
            v75.size.height = rect;
            CGRectGetMinY(v75);
            sub_26A850D18();
            sub_26A850D18();
            sub_26A850D28();
            v49 = 0x3FF0000000000000;
            v50 = 0;
            v51 = 0;
            v52 = 0x3FF0000000000000;
            v53 = 0;
            v54 = 0;
            sub_26A850518();
          }

          v24 = rect;
        }

        else
        {
          v68.origin.x = v28;
          v68.origin.y = v27;
          v68.size.width = v26;
          v68.size.height = v25;
          CGRectGetMaxY(v68);
          sub_26A850D18();
          sub_26A850D18();
          sub_26A850D28();
          v49 = 0x3FF0000000000000;
          v50 = 0;
          v51 = 0;
          v52 = 0x3FF0000000000000;
          v53 = 0;
          v54 = 0;
          sub_26A850518();
          *&v69.size.width = v45;
          *&v69.origin.x = v46;
          v69.origin.y = v23;
          v24 = rect;
          v69.size.height = rect;
          CGRectGetMaxX(v69);
          v70.origin.x = v28;
          v70.origin.y = v27;
          v70.size.width = v26;
          v70.size.height = v25;
          CGRectGetMaxY(v70);
          sub_26A850528();
        }
      }

      swift_unknownObjectRetain();
      sub_26A83DD94(1, a3, a4, a5, a6);
      v33 = v32;
      v35 = v34;
      v47[1] = v45;
      v47[0] = v46;
      v48 = 0;
      sub_26A679D0C(v21, v47, v36, v37, v32, v34);
      if (v33 == v35 >> 1)
      {
        *&v78.size.width = v45;
        *&v78.origin.x = v46;
        v78.origin.y = v23;
        v78.size.height = v24;
        CGRectGetMaxX(v78);
        *&v79.size.width = v45;
        *&v79.origin.x = v46;
        v79.origin.y = v23;
        v79.size.height = v24;
        CGRectGetMaxY(v79);
        sub_26A850D18();
        sub_26A850D18();
        sub_26A850D28();
        sub_26A850518();
        *&v80.size.width = v45;
        *&v80.origin.x = v46;
        v80.origin.y = v23;
        v80.size.height = v24;
        CGRectGetMinX(v80);
        *&v81.size.width = v45;
        *&v81.origin.x = v46;
        v81.origin.y = v23;
        v81.size.height = v24;
        CGRectGetMaxY(v81);
        sub_26A850D18();
        sub_26A850D18();
        sub_26A850D28();
        sub_26A850518();
      }

      if ((*(a2 + 32) & 1) == 0)
      {
        v39 = *(a2 + 16);
        v38 = *(a2 + 24);
        v41 = *a2;
        v40 = *(a2 + 8);
        v82.origin.x = *a2;
        v82.origin.y = v40;
        v82.size.width = v39;
        v82.size.height = v38;
        MinX = CGRectGetMinX(v82);
        *&v83.size.width = v45;
        *&v83.origin.x = v46;
        v83.origin.y = v23;
        v83.size.height = v24;
        if (MinX >= CGRectGetMinX(v83))
        {
          v88.origin.x = v41;
          v88.origin.y = v40;
          v88.size.width = v39;
          v88.size.height = v38;
          v43 = CGRectGetMinX(v88);
          *&v89.size.width = v45;
          *&v89.origin.x = v46;
          v89.origin.y = v23;
          v89.size.height = v24;
          if (CGRectGetMinX(v89) >= v43)
          {
            v92.origin.x = v41;
            v92.origin.y = v40;
            v92.size.width = v39;
            v92.size.height = v38;
            CGRectGetMinX(v92);
            v93.origin.x = v41;
            v93.origin.y = v40;
            v93.size.width = v39;
            v93.size.height = v38;
            CGRectGetMaxY(v93);
          }

          else
          {
            sub_26A850D18();
            sub_26A850D18();
            sub_26A850D28();
            sub_26A850518();
            v90.origin.x = v41;
            v90.origin.y = v40;
            v90.size.width = v39;
            v90.size.height = v38;
            CGRectGetMinX(v90);
            *&v91.size.width = v45;
            *&v91.origin.x = v46;
            v91.origin.y = v23;
            v91.size.height = v24;
            CGRectGetMinY(v91);
          }

          sub_26A850528();
        }

        else
        {
          *&v84.size.width = v45;
          *&v84.origin.x = v46;
          v84.origin.y = v23;
          v84.size.height = v24;
          CGRectGetMinX(v84);
          v85.origin.x = v41;
          v85.origin.y = v40;
          v85.size.width = v39;
          v85.size.height = v38;
          CGRectGetMaxY(v85);
          sub_26A850528();
          v86.origin.x = v41;
          v86.origin.y = v40;
          v86.size.width = v39;
          v86.size.height = v38;
          CGRectGetMinX(v86);
          v87.origin.x = v41;
          v87.origin.y = v40;
          v87.size.width = v39;
          v87.size.height = v38;
          CGRectGetMaxY(v87);
          sub_26A850D18();
          sub_26A850D18();
          sub_26A850D28();
          sub_26A850518();
        }
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_26A67A3CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 >> 1 == a4)
  {
    return MEMORY[0x277D84F90];
  }

  if ((a5 >> 1) <= a4)
  {
    __break(1u);
  }

  else
  {
    v35 = v10;
    v36 = v9;
    v37 = v8;
    v38 = v7;
    v39 = v5;
    v40 = v6;
    v15 = (a3 + 32 * a4);
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    if ((*(result + 32) & 1) == 0)
    {
      v16 = sub_26A67A560(v16, v17, v18, v19, *result, *(result + 8), *(result + 16), *(result + 24));
      v17 = v20;
      v18 = v21;
      v19 = v22;
    }

    *v33 = v16;
    *&v33[1] = v17;
    *&v33[2] = v18;
    *&v33[3] = v19;
    v34 = 0;
    swift_unknownObjectRetain();
    sub_26A83DD94(1, a2, a3, a4, a5);
    v27 = sub_26A67A3CC(v33, v23, v24, v25, v26);
    swift_unknownObjectRelease();
    if (*(v27 + 16))
    {
      v16 = sub_26A67A560(v16, v17, v18, v19, *(v27 + 32), *(v27 + 40), *(v27 + 48), *(v27 + 56));
      v17 = v28;
      v18 = v29;
      v19 = v30;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2870);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_26A8570D0;
    *(v31 + 32) = v16;
    *(v31 + 40) = v17;
    *(v31 + 48) = v18;
    *(v31 + 56) = v19;
    v32 = v31;
    sub_26A614CF0(v27);
    return v32;
  }

  return result;
}

double sub_26A67A560(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  MinX = CGRectGetMinX(v36);
  v27 = a4;
  rect = a1;
  rect_8 = a2;
  MinY = a2;
  v33 = a1;
  v37.origin.x = a1;
  v37.origin.y = a2;
  Height = a4;
  v30 = a3;
  v37.size.width = a3;
  v37.size.height = a4;
  v17 = CGRectGetMinX(v37);
  v18 = *(v8 + 16);
  if (vabdd_f64(MinX, v17) <= v18)
  {
    v38.origin.x = a5;
    v21 = a6;
    v38.origin.y = a6;
    v38.size.width = a7;
    v38.size.height = a8;
    v22 = CGRectGetMinX(v38);
    v39.origin.x = rect;
    v39.origin.y = a2;
    v39.size.width = a3;
    v19 = a8;
    v20 = v27;
    v39.size.height = v27;
    if (v22 < CGRectGetMinX(v39))
    {
      v40.origin.x = a5;
      v40.origin.y = a6;
      v40.size.width = a7;
      v40.size.height = v19;
      v33 = CGRectGetMinX(v40);
      v41.origin.y = rect_8;
      v41.origin.x = rect;
      v41.size.width = a3;
      v41.size.height = v27;
      MinY = CGRectGetMinY(v41);
      v42.origin.x = rect;
      v42.origin.y = rect_8;
      v42.size.width = a3;
      v42.size.height = v27;
      MaxX = CGRectGetMaxX(v42);
      v43.origin.x = a5;
      v43.origin.y = a6;
      v43.size.width = a7;
      v43.size.height = v19;
      v30 = MaxX - CGRectGetMinX(v43);
      v44.origin.x = rect;
      v44.origin.y = rect_8;
      v44.size.width = a3;
      v44.size.height = v27;
      Height = CGRectGetHeight(v44);
    }
  }

  else
  {
    v19 = a8;
    v20 = a4;
    v21 = a6;
  }

  v45.origin.x = a5;
  v45.origin.y = v21;
  v45.size.width = a7;
  v45.size.height = v19;
  v23 = CGRectGetMaxX(v45);
  v46.origin.x = rect;
  v46.origin.y = rect_8;
  v46.size.width = a3;
  v46.size.height = v20;
  if (vabdd_f64(v23, CGRectGetMaxX(v46)) > v18)
  {
    return v33;
  }

  v47.origin.x = a5;
  v47.origin.y = v21;
  v47.size.width = a7;
  v47.size.height = v19;
  v25 = CGRectGetMaxX(v47);
  v48.origin.x = rect;
  v48.origin.y = rect_8;
  v48.size.width = a3;
  v48.size.height = v20;
  v24 = v33;
  if (CGRectGetMaxX(v48) < v25)
  {
    v49.origin.x = a5;
    v49.origin.y = v21;
    v49.size.width = a7;
    v49.size.height = v19;
    CGRectGetMaxX(v49);
    v50.origin.x = v33;
    v50.size.width = v30;
    v50.origin.y = MinY;
    v50.size.height = Height;
    CGRectGetMinX(v50);
    v51.origin.x = rect;
    v51.origin.y = rect_8;
    v51.size.width = a3;
    v51.size.height = v20;
    CGRectGetHeight(v51);
  }

  return v24;
}

uint64_t type metadata accessor for MinimumFontSizeModifier()
{
  result = qword_2803B2880;
  if (!qword_2803B2880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A67A858()
{
  sub_26A67A8EC();
  if (v0 <= 0x3F)
  {
    sub_26A67A950();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26A67A8EC()
{
  if (!qword_2803B2890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2898);
    v0 = sub_26A84EEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B2890);
    }
  }
}

void sub_26A67A950()
{
  if (!qword_2803B28A0)
  {
    sub_26A850438();
    v0 = sub_26A84EEA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B28A0);
    }
  }
}

uint64_t sub_26A67A9C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = sub_26A850438();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v3 + 8);
  v18 = *(v3 + 16);

  if ((v18 & 1) == 0)
  {
    sub_26A851EA8();
    v19 = sub_26A8501F8();
    v33 = a1;
    v20 = a2;
    v21 = v19;
    sub_26A84EA78();

    a2 = v20;
    a1 = v33;
    sub_26A84F978();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v13 + 8))(v16, v11);
    v17 = v35;
  }

  if (!v17)
  {
    sub_26A8502F8();
  }

  type metadata accessor for MinimumFontSizeModifier();
  sub_26A720490(v10);
  v22 = sub_26A8502B8();

  v23 = *(v7 + 8);
  v24 = v34;
  v23(v10, v34);
  Size = CTFontGetSize(v22);

  sub_26A720490(v10);
  v26 = sub_26A8502B8();
  v23(v10, v24);
  v27 = CTFontGetSize(v26);

  KeyPath = swift_getKeyPath();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B28A8);
  (*(*(v29 - 8) + 16))(a2, a1, v29);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B28B0);
  v31 = a2 + *(result + 36);
  *v31 = KeyPath;
  *(v31 + 8) = fmin(v27 / Size, 1.0);
  return result;
}

unint64_t sub_26A67ACD0()
{
  result = qword_2803B28B8;
  if (!qword_2803B28B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B28B0);
    sub_26A4DBCC8(&qword_2803B28C0, &qword_2803B28A8);
    sub_26A4DBCC8(&qword_28157FB88, &qword_2803AB8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B28B8);
  }

  return result;
}

id sub_26A67ADB4(char a1)
{
  sub_26A84ACC8();
  OUTLINED_FUNCTION_0_34();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_26A84AE18();
  sub_26A84AB88();

  v12 = sub_26A84AB98();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) != 1)
  {
    v13 = sub_26A84AB58();
    (*(*(v12 - 8) + 8))(v10, v12);
  }

  [v11 setPunchOutUri_];

  v14 = sub_26A84AE28();
  sub_26A67B650(v14, v15, v11, &selRef_setAppDisplayName_);
  v16 = sub_26A84AE38();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    sub_26A84AE38();
    v20 = sub_26A851788();
  }

  else
  {
    v20 = 0;
  }

  [v11 setBundleId_];

  v21 = v11;
  sub_26A84ACB8();
  v22 = sub_26A84AC78();
  v24 = v23;
  (*(v4 + 8))(v7, v1);
  sub_26A67B650(v22, v24, v21, &selRef_setAceId_);

  if (a1)
  {
    v25 = sub_26A8517B8();
    v27 = v26;
    sub_26A7A110C();
    v29 = v28;
    v30 = *(v28 + 16);
    if (v30 >= *(v28 + 24) >> 1)
    {
      sub_26A7A110C();
      v29 = v34;
    }

    *(v29 + 16) = v30 + 1;
    v31 = v29 + 16 * v30;
    *(v31 + 32) = v25;
    *(v31 + 40) = v27;
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v32 = sub_26A7DC058(v29);

  sub_26A67B424(v32, v21);
  return v21;
}

id sub_26A67B0D4()
{
  sub_26A84AB98();
  OUTLINED_FUNCTION_0_34();
  v27 = v2;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v28 = [objc_allocWithZone(MEMORY[0x277D4C4E8]) init];
  v13 = [objc_allocWithZone(MEMORY[0x277D4C550]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B28C8);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_26A8570D0;
  v29 = v0;
  sub_26A84AE18();
  sub_26A84AB88();

  sub_26A67B494(v15 + v14, v12);
  sub_26A67B504(v12, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v1) == 1)
  {
    sub_26A67B574(v9);
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = v27;
    v18 = *(v27 + 32);
    v18(v5, v9, v1);
    v16 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26A7A1AE4();
      v16 = v24;
    }

    v19 = *(v16 + 16);
    if (v19 >= *(v16 + 24) >> 1)
    {
      sub_26A7A1AE4();
      v16 = v25;
    }

    *(v16 + 16) = v19 + 1;
    v18((v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v19), v5, v1);
  }

  swift_setDeallocating();
  sub_26A7A0BF0();
  sub_26A67B5DC(v16, v13);
  v20 = sub_26A84AE38();
  sub_26A67B650(v20, v21, v13, &selRef_setBundleIdentifier_);
  v22 = v28;
  [v28 setPunchout_];

  return v22;
}

void sub_26A67B424(uint64_t a1, void *a2)
{
  v3 = sub_26A851A88();

  [a2 setLaunchOptions_];
}

uint64_t sub_26A67B494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A67B504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A67B574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26A67B5DC(uint64_t a1, void *a2)
{
  sub_26A84AB98();
  v3 = sub_26A851A88();

  [a2 setUrls_];
}

void sub_26A67B650(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_26A851788();

  [a3 *a4];
}

uint64_t sub_26A67B6BC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v92 = a1;
  v4 = sub_26A84B2C8();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26A84B2E8();
  OUTLINED_FUNCTION_15();
  v84 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_15();
  v91 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  v15 = OUTLINED_FUNCTION_79(v14);
  MEMORY[0x28223BE20](v15);
  v90 = &v74 - v16;
  sub_26A84B2F8();
  OUTLINED_FUNCTION_15();
  v82 = v18;
  v83 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_15();
  v89 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038);
  v21 = OUTLINED_FUNCTION_79(v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v74 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C8);
  v25 = OUTLINED_FUNCTION_79(v24);
  MEMORY[0x28223BE20](v25);
  v88 = &v74 - v26;
  sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v80 = v28;
  v81 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_15();
  v87 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  v31 = OUTLINED_FUNCTION_79(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_19();
  MEMORY[0x28223BE20](v32);
  v34 = &v74 - v33;
  v35 = sub_26A84AB98();
  OUTLINED_FUNCTION_15();
  v86 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_3_15();
  v85 = v38;
  sub_26A67C23C(v3, &selRef_url);
  if (!v39)
  {
    goto LABEL_4;
  }

  sub_26A84AB88();

  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    sub_26A4E2544(v34, &qword_2803AF0D0);
LABEL_4:
    v40 = sub_26A851E98();
    LOBYTE(v72) = 2;
    v41 = 1;
    sub_26A7A74D4(v40, 1, "SnippetUI/RFURLImage+ImageElement.swift", 39, 2, 16, "asImageElement()", 16, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
    goto LABEL_17;
  }

  v42 = v35;
  (*(v86 + 32))(v85, v34, v35);
  sub_26A67C23C(v3, &selRef_dark_mode_url);
  sub_26A84AB88();

  v43 = [v3 sizing_mode];
  HIDWORD(v76) = [v3 sizing_mode];
  sub_26A7EA53C([v3 image_style]);
  v44 = [v3 symbol_placeholder_image];
  if (v44)
  {
    v45 = v44;
    sub_26A74D970(v88);
  }

  else
  {
    v46 = sub_26A84B248();
    __swift_storeEnumTagSinglePayload(v88, 1, 1, v46);
  }

  v47 = [v3 background_color];
  if (v47)
  {
    v48 = v47;
    sub_26A68D85C();
    Color.init(color:)();

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = sub_26A84DFA8();
  __swift_storeEnumTagSinglePayload(v23, v49, 1, v50);
  sub_26A83877C([v3 corner_rounding_mode]);
  v51 = [v3 aspect_ratio];
  if (v51)
  {
    v52 = v51;
    sub_26A7DC2F4(v90);
  }

  else
  {
    v53 = sub_26A84B2B8();
    __swift_storeEnumTagSinglePayload(v90, 1, 1, v53);
  }

  sub_26A5AB214([v3 image_rendering_mode]);
  v54 = [v3 inset_padding];
  v78 = v23;
  v79 = v10;
  v77 = v42;
  if (v54)
  {
    v55 = v54;
    [v54 floatValue];
  }

  LODWORD(v76) = v43 == 2;
  HIDWORD(v76) = HIDWORD(v76) == 1;
  (*(v6 + 104))(v9, *MEMORY[0x277D62CE0], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF860);
  v56 = v6;
  v57 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v59 = v58;
  v60 = *(v58 + 80);
  v74 = v4;
  v61 = (v60 + 32) & ~v60;
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_26A8570D0;
  (*(v59 + 104))(v62 + v61, *MEMORY[0x277D62A28], v57);
  sub_26A67BF28(v62);
  v63 = v89;
  v64 = v78;
  v65 = v91;
  v66 = v85;
  v67 = v88;
  v75 = v2;
  v68 = v87;
  v69 = v90;
  sub_26A84B428();

  (*(v56 + 8))(v9, v74);
  (*(v84 + 8))(v65, v79);
  sub_26A4E2544(v69, &qword_2803AF0C0);
  (*(v82 + 8))(v63, v83);
  sub_26A4E2544(v64, &qword_2803AD038);
  sub_26A4E2544(v67, &qword_2803AF0C8);
  (*(v80 + 8))(v68, v81);
  sub_26A4E2544(v75, &qword_2803AF0D0);
  (*(v86 + 8))(v66, v77);
  v41 = 0;
LABEL_17:
  v70 = sub_26A84B718();
  return __swift_storeEnumTagSinglePayload(v92, v41, 1, v70);
}

uint64_t sub_26A67BF28(uint64_t a1)
{
  v3 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v33 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_19();
  MEMORY[0x28223BE20](v6);
  v37 = &v28 - v7;
  if (!*(a1 + 16))
  {
    v9 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B28D0);
  result = sub_26A852208();
  v9 = result;
  v32 = *(a1 + 16);
  if (!v32)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v36 = result + 56;
  v11 = *(v33 + 80);
  v30 = a1;
  v31 = a1 + ((v11 + 32) & ~v11);
  v35 = v33 + 16;
  v12 = (v33 + 8);
  v29 = (v33 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v33 + 72);
    v34 = v10 + 1;
    v14 = *(v33 + 16);
    v14(v37, v31 + v13 * v10, v3);
    sub_26A67C29C(&qword_28157FFF8);
    v15 = sub_26A8516E8();
    v16 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = *(v36 + 8 * v18);
      v20 = 1 << (v15 & v16);
      if ((v20 & v19) == 0)
      {
        break;
      }

      v21 = v9;
      v14(v1, *(v9 + 48) + v17 * v13, v3);
      sub_26A67C29C(&qword_2803B28D8);
      v22 = sub_26A851758();
      v23 = *v12;
      (*v12)(v1, v3);
      if (v22)
      {
        result = (v23)(v37, v3);
        v9 = v21;
        goto LABEL_12;
      }

      v15 = v17 + 1;
      v9 = v21;
    }

    v24 = v37;
    *(v36 + 8 * v18) = v20 | v19;
    result = (*v29)(*(v9 + 48) + v17 * v13, v24, v3);
    v25 = *(v9 + 16);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v27;
LABEL_12:
    v10 = v34;
    a1 = v30;
    if (v34 == v32)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26A67C23C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_26A8517B8();

  return v4;
}

uint64_t sub_26A67C29C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_26A84B058();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_26A67C2E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803B3260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8713E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570F0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v2 = OUTLINED_FUNCTION_2_17(&qword_281588988);
  *(v1 + 48) = 1;
  *(v1 + 56) = 3;
  OUTLINED_FUNCTION_12_25(v2, v3);
  *(inited + 32) = v4;
  *(inited + 40) = 0x4024000000000000;
  *(swift_initStackObject() + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v5 = OUTLINED_FUNCTION_1_34();
  OUTLINED_FUNCTION_12_25(v5, v6);
  *(inited + 48) = v7;
  *(inited + 56) = 0x4040000000000000;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_26A8570F0;
  v9 = OUTLINED_FUNCTION_1_34();
  *(v8 + 48) = 1;
  *(v8 + 56) = 5;
  OUTLINED_FUNCTION_12_25(v9, v10);
  *(inited + 64) = v11;
  *(inited + 72) = 0x4043000000000000;
  *(swift_initStackObject() + 16) = xmmword_26A8570D0;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v12 = OUTLINED_FUNCTION_2_17(&qword_281588938);
  OUTLINED_FUNCTION_12_25(v12, v13);
  *(inited + 80) = v14;
  *(inited + 88) = 0x4024000000000000;
  *(swift_initStackObject() + 16) = xmmword_26A8570D0;
  if (qword_28157E788 != -1)
  {
    swift_once();
  }

  v15 = OUTLINED_FUNCTION_2_17(&qword_2815889A8);
  OUTLINED_FUNCTION_12_25(v15, v16);
  *(inited + 96) = v17;
  *(inited + 104) = 0;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_26A857110;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v19 = OUTLINED_FUNCTION_0_48();
  *(v18 + 48) = 1;
  *(v18 + 56) = 3;
  *(v18 + 64) = 0;
  *(v18 + 72) = 7;
  OUTLINED_FUNCTION_12_25(v19, v20);
  *(inited + 112) = v21;
  *(inited + 120) = 0x4034000000000000;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_26A8570F0;
  v23 = OUTLINED_FUNCTION_0_48();
  *(v22 + 48) = 1;
  *(v22 + 56) = 3;
  OUTLINED_FUNCTION_12_25(v23, v24);
  *(inited + 128) = v25;
  *(inited + 136) = 0x4030000000000000;
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_26A8570F0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v27 = qword_281588968;
  *(v26 + 32) = qword_281588968;
  v28 = byte_281588970;
  *(v26 + 40) = byte_281588970;
  *(v26 + 48) = 1;
  *(v26 + 56) = 3;
  sub_26A4E324C(v27, v28);
  sub_26A621A9C(v26);
  *(inited + 144) = v29;
  *(inited + 152) = 0x4028000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80);
  v30 = sub_26A8516A8();
  sub_26A80D9E4(v30, v32, 16.0);
  result = *v32;
  xmmword_2803D1FA8 = v32[0];
  *&qword_2803D1FB8 = v32[1];
  qword_2803D1FC8 = v33;
  return result;
}

uint64_t sub_26A67C6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A6473A8();
  v5 = *(v2 + 232);
  sub_26A84ED48();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B28E0);
  (*(*(v14 - 8) + 16))(a2, a1, v14);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B28E8);
  v16 = a2 + *(result + 36);
  *v16 = v5;
  *(v16 + 8) = v7;
  *(v16 + 16) = v9;
  *(v16 + 24) = v11;
  *(v16 + 32) = v13;
  *(v16 + 40) = 0;
  return result;
}

uint64_t sub_26A67C8B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 233))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 192);
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

uint64_t sub_26A67C8F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0u;
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
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 233) = 1;
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
      *(result + 192) = (a2 - 1);
      return result;
    }

    *(result + 233) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26A67C9A0()
{
  result = qword_2803B28F0;
  if (!qword_2803B28F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B28E8);
    sub_26A4DBCC8(&qword_2803B28F8, &qword_2803B28E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B28F0);
  }

  return result;
}

uint64_t View.glassify<A>(using:fallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a3;
  v23 = a2;
  v27 = a8;
  v39 = a4;
  v40 = MEMORY[0x277CE1350];
  v41 = MEMORY[0x277CE11C8];
  v42 = a5;
  v43 = a6;
  v44 = MEMORY[0x277CE1340];
  v45 = MEMORY[0x277CE11C0];
  v46 = a7;
  v25 = MEMORY[0x277CE0E60];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v26 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  sub_26A851408();
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a1;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = v23;
  v33 = v24;
  v19 = MEMORY[0x277CE1350];
  v20 = MEMORY[0x277CE11C8];
  sub_26A850CA8();
  v39 = a4;
  v40 = v19;
  v41 = v20;
  v42 = a5;
  v43 = a6;
  v44 = MEMORY[0x277CE1340];
  v45 = MEMORY[0x277CE11C0];
  v46 = a7;
  swift_getOpaqueTypeConformance2();
  sub_26A80757C(v15);
  v21 = *(v26 + 8);
  v21(v15, OpaqueTypeMetadata2);
  sub_26A80757C(v18);
  return (v21)(v18, OpaqueTypeMetadata2);
}

uint64_t sub_26A67CD00@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v31 = a3;
  v32 = a4;
  v44 = a1;
  v45 = a5;
  v8 = sub_26A851608();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8);
  v36 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_26A8513F8();
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a3;
  v49 = a4;
  v35 = MEMORY[0x277CE0CF0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = v30 - v13;
  v15 = a2[4];
  v30[1] = a2[5];
  v33 = __swift_project_boxed_opaque_existential_1(a2 + 1, v15);
  v34 = sub_26A84FE68();
  v37 = sub_26A84F4F8();
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v17 = v30 - v16;
  type metadata accessor for SnippetGlassMaterial();
  static SnippetGlassMaterial.material(for:)(a2, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2900);
  sub_26A8515D8();
  *(swift_allocObject() + 16) = xmmword_26A8570D0;
  v18 = __swift_project_boxed_opaque_existential_1(a2 + 1, a2[4]);
  v19 = MEMORY[0x28223BE20](v18);
  (*(v21 + 16))(v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  sub_26A8515E8();
  v22 = v36;
  sub_26A8515F8();
  v24 = v31;
  v23 = v32;
  sub_26A850A88();
  (*(v42 + 8))(v22, v43);
  (*(v38 + 8))(v11, v41);
  v48 = v24;
  v49 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_7_3();
  sub_26A8509F8();
  (*(v40 + 8))(v14, OpaqueTypeMetadata2);
  WitnessTable = swift_getWitnessTable();
  v46 = OpaqueTypeConformance2;
  v47 = WitnessTable;
  v27 = v37;
  swift_getWitnessTable();
  v28 = View.eraseToAnyView()(v27);
  result = (*(v39 + 8))(v17, v27);
  *v45 = v28;
  return result;
}

uint64_t sub_26A67D240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v16 - v11;
  v13(v10);
  sub_26A80757C(v9);
  v14 = *(v6 + 8);
  v14(v9, a5);
  sub_26A80757C(v12);
  return (v14)(v12, a5);
}

uint64_t ResponseView.init(model:mode:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ResponseView();
  v7 = (a3 + v6[7]);
  type metadata accessor for Form();
  swift_allocObject();
  Form.init()();
  OUTLINED_FUNCTION_2_62();
  sub_26A67F7B0();
  *v7 = sub_26A84F258();
  v7[1] = v8;
  v9 = a3 + v6[8];
  *v9 = sub_26A84ED88() & 1;
  *(v9 + 8) = v10;
  *(v9 + 16) = v11 & 1;
  v12 = sub_26A84E408();
  (*(*(v12 - 8) + 16))(a3, a1, v12);
  *(a3 + v6[5]) = a2;
  v13 = (a3 + v6[6]);
  type metadata accessor for Context();
  OUTLINED_FUNCTION_4_51();
  sub_26A67F7B0();
  v14 = sub_26A84F258();
  v16 = v15;
  v17 = OUTLINED_FUNCTION_211();
  result = v18(v17);
  *v13 = v14;
  v13[1] = v16;
  return result;
}

uint64_t type metadata accessor for ResponseView()
{
  result = qword_2803B2A68;
  if (!qword_2803B2A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ResponseView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v124 = a1;
  v125 = sub_26A850118();
  OUTLINED_FUNCTION_15();
  v123 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_15();
  v122 = v5;
  OUTLINED_FUNCTION_25_2();
  sub_26A850058();
  OUTLINED_FUNCTION_15();
  v120 = v7;
  v121 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_15();
  v119 = v8;
  OUTLINED_FUNCTION_25_2();
  v9 = type metadata accessor for ResponseView();
  v10 = (v9 - 8);
  v114 = *(v9 - 8);
  v113 = *(v114 + 64);
  MEMORY[0x28223BE20](v9);
  v110 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_25_2();
  v108 = sub_26A84BDA8();
  OUTLINED_FUNCTION_15();
  v107 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_15();
  v106 = v14;
  OUTLINED_FUNCTION_25_2();
  v15 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v104 - v22;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2908);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v24);
  v26 = &v104 - v25;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2910);
  OUTLINED_FUNCTION_15();
  v117 = v27;
  MEMORY[0x28223BE20](v28);
  v109 = &v104 - v29;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2918);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v30);
  v111 = &v104 - v31;
  v32 = *(v1 + v10[8] + 8);
  v126 = v32;
  v33 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
  v115 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
  swift_beginAccess();
  VRXIdiom.idiom.getter(*&v32[v33], v23);
  v105 = *(v2 + v10[7]);
  sub_26A510388(v23, v105, v34, v35, v36, v37, v38, v39, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
  (*(v17 + 16))(v20, v23, v15);
  type metadata accessor for ResponseSeparators(0);
  swift_allocObject();

  v41 = sub_26A6691FC(v40, v20);
  *v26 = sub_26A84FBF8();
  *(v26 + 1) = 0;
  v26[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2920);
  sub_26A511048();

  sub_26A67F7B0();
  v42 = sub_26A84EB78();
  (*(v17 + 8))(v23, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2930);
  OUTLINED_FUNCTION_4_14();
  *v43 = v42;
  v43[1] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2938);
  OUTLINED_FUNCTION_4_14();
  *v44 = sub_26A67EC50;
  v44[1] = v41;
  v132 = 0;
  v130 = 0u;
  v131 = 0u;
  v45 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2940) + 36)];
  v46 = type metadata accessor for OnVisualResponseShownModifier();
  sub_26A5EBC04(&v130, &v45[v46[9]]);
  v129 = 0;

  sub_26A851048();
  sub_26A4D6FD8();
  v47 = *(&v127 + 1);
  *v45 = v127;
  *(v45 + 1) = v47;
  *(v45 + 2) = swift_getKeyPath();
  v45[25] = 0;
  swift_unknownObjectWeakInit();
  v48 = v46[6];
  *&v45[v48] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  swift_storeEnumTagMultiPayload();
  v49 = &v45[v46[7]];
  *v49 = swift_getKeyPath();
  *(v49 + 1) = 0;
  v49[16] = 0;
  v50 = &v45[v46[8]];
  *v50 = swift_getKeyPath();
  *(v50 + 1) = 0;
  v50[16] = 0;
  v51 = &v45[v46[10]];
  *v51 = 0;
  *(v51 + 1) = 0;
  v52 = sub_26A851448();
  v54 = v53;
  v55 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2948) + 36)];
  *v55 = v52;
  v55[1] = v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2950);
  sub_26A67E2EC(v2, v55 + *(v56 + 44));
  v57 = sub_26A851448();
  v59 = v58;
  v60 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2958) + 36));
  *v60 = v57;
  v60[1] = v59;
  type metadata accessor for Context();
  OUTLINED_FUNCTION_4_51();
  sub_26A67F7B0();
  v61 = sub_26A84EB78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2960);
  OUTLINED_FUNCTION_4_14();
  v62 = v126;
  *v63 = v61;
  v63[1] = v62;
  v64 = v62;
  v65 = sub_26A84F258();
  v67 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2968);
  OUTLINED_FUNCTION_4_14();
  *v68 = v65;
  v68[1] = v67;
  v69 = *(v2 + v10[9] + 8);
  type metadata accessor for Form();
  OUTLINED_FUNCTION_2_62();
  sub_26A67F7B0();
  v70 = sub_26A84EB78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2970);
  OUTLINED_FUNCTION_4_14();
  *v71 = v70;
  v71[1] = v69;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2978);
  OUTLINED_FUNCTION_4_14();
  v73 = v105;
  *v74 = KeyPath;
  v74[1] = v73;
  v75 = swift_getKeyPath();

  v76 = v106;
  sub_26A84E3E8();
  LOBYTE(v69) = sub_26A84BD68();
  (*(v107 + 8))(v76, v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2980);
  OUTLINED_FUNCTION_4_14();
  *v77 = v75;
  *(v77 + 8) = v69 & 1;
  v78 = swift_getKeyPath();
  v79 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2988) + 36)];
  v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2990) + 28);
  v81 = sub_26A84E408();
  OUTLINED_FUNCTION_46();
  (*(v82 + 16))(v79 + v80, v2, v81);
  __swift_storeEnumTagSinglePayload(v79 + v80, 0, 1, v81);
  *v79 = v78;
  v83 = swift_getKeyPath();
  v84 = v2 + v10[10];
  v85 = *(v84 + 8);
  v86 = *(v84 + 16);
  LOBYTE(v130) = *v84;
  LOBYTE(v80) = v130;
  *(&v130 + 1) = v85;
  LOBYTE(v131) = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE328);
  sub_26A84ED78();
  v87 = v127;
  LOBYTE(v23) = v128;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2998);
  OUTLINED_FUNCTION_4_14();
  *v88 = v83;
  *(v88 + 8) = v87;
  *(v88 + 24) = v23;
  OUTLINED_FUNCTION_5_47();
  sub_26A67FA98();
  v89 = swift_allocObject();
  OUTLINED_FUNCTION_3_56();
  sub_26A67FA48();
  v90 = sub_26A851448();
  v92 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B29A0);
  OUTLINED_FUNCTION_4_14();
  *v93 = sub_26A8027E0;
  v93[1] = 0;
  v93[2] = v90;
  v93[3] = v92;
  v94 = swift_allocObject();
  *(v94 + 16) = sub_26A67EC58;
  *(v94 + 24) = v89;
  v95 = v112;
  v96 = &v26[*(v112 + 36)];
  *v96 = sub_26A52E998;
  v96[1] = v94;
  v97 = v119;
  sub_26A850048();
  v98 = sub_26A67ECD0();
  v99 = v109;
  sub_26A850B48();
  (*(v120 + 8))(v97, v121);
  sub_26A4D6FD8();
  *&v130 = v95;
  *(&v130 + 1) = v98;
  swift_getOpaqueTypeConformance2();
  v100 = v116;
  sub_26A850A68();
  (*(v117 + 8))(v99, v100);
  LOBYTE(v130) = v80;
  *(&v130 + 1) = v85;
  LOBYTE(v131) = v86;
  sub_26A84ED78();
  v130 = v127;
  LOBYTE(v131) = v128;
  LOBYTE(v127) = sub_26A61B05C(*&v126[v115], &unk_287B13068);
  v101 = v122;
  sub_26A850108();
  v102 = sub_26A67F6B8();
  MEMORY[0x26D662C70](&v130, &v127, v101, v118, MEMORY[0x277D839B0], v102, MEMORY[0x277D839C0]);
  (*(v123 + 8))(v101, v125);

  return sub_26A4D6FD8();
}

uint64_t sub_26A67E1B8@<X0>(uint64_t a1@<X8>)
{
  result = sub_26A5D89AC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

void *sub_26A67E238(double a1, double a2)
{
  type metadata accessor for ResponseView();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 informHostOfViewResize_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26A67E2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2A80);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = v36 - v6;
  v7 = sub_26A84B058();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD160);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v36 - v15;
  v17 = type metadata accessor for VisualElementView();
  MEMORY[0x28223BE20](v17 - 8);
  v36[1] = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v36 - v20;
  MEMORY[0x28223BE20](v22);
  v23 = *(a1 + *(type metadata accessor for ResponseView() + 24) + 8);
  v24 = *(sub_26A61E500() + 16);

  if (v24)
  {
    sub_26A61E500();
  }

  else
  {
    sub_26A84E3A8();
  }

  v25 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
  swift_beginAccess();
  VRXIdiom.idiom.getter(*(v23 + v25), v10);
  sub_26A851AB8();

  (*(v8 + 8))(v10, v7);
  v26 = sub_26A84BA88();
  if (__swift_getEnumTagSinglePayload(v13, 1, v26) == 1)
  {
    (*(*(v26 - 8) + 104))(v16, *MEMORY[0x277D62EA8], v26);
    if (__swift_getEnumTagSinglePayload(v13, 1, v26) != 1)
    {
      sub_26A4D6FD8();
    }
  }

  else
  {
    (*(*(v26 - 8) + 32))(v16, v13, v26);
  }

  __swift_storeEnumTagSinglePayload(v16, 0, 1, v26);
  sub_26A67F9D8(v16, v21);
  sub_26A67FA48();
  v42 = sub_26A850DF8();
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1938);
  sub_26A642EA0();
  v27 = v37;
  sub_26A850A38();

  sub_26A67FA98();
  v29 = v40;
  v28 = v41;
  v30 = *(v40 + 16);
  v31 = v38;
  v30(v38, v27, v41);
  v32 = v39;
  sub_26A67FA98();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803B2A88);
  v30((v32 + *(v33 + 48)), v31, v28);
  v34 = *(v29 + 8);
  v34(v27, v28);
  sub_26A67FAE8();
  v34(v31, v28);
  return sub_26A67FAE8();
}

void sub_26A67E848()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
}

uint64_t ResponseView.description.getter()
{
  sub_26A84E408();
  sub_26A67F7B0();
  v1 = sub_26A84BDF8();
  v3 = v2;
  sub_26A852248();
  MEMORY[0x26D663B00](0xD000000000000013, 0x800000026A88E190);
  v4 = type metadata accessor for ResponseView();
  sub_26A54E058(*(v0 + *(v4 + 20)));
  MEMORY[0x26D663B00](0x3A6D6F696469202CLL, 0xE900000000000020);
  v5 = *(v0 + *(v4 + 24) + 8);
  v6 = OBJC_IVAR____TtC9SnippetUI7Context_currentIdiom;
  swift_beginAccess();
  v7 = VRXIdiom.description.getter(*(v5 + v6));
  MEMORY[0x26D663B00](v7);

  MEMORY[0x26D663B00](0x6E6F70736572202CLL, 0xEC000000203A6573);
  MEMORY[0x26D663B00](v1, v3);

  return 0;
}

uint64_t ResponseView.asAnyRootView()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AnyRootView.ContentType(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_47();
  sub_26A67FA98();
  swift_storeEnumTagMultiPayload();
  sub_26A67FA98();
  OUTLINED_FUNCTION_211();
  sub_26A67FA98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = (a1 + *(type metadata accessor for AnyRootView(0) + 20));
  if (EnumCaseMultiPayload == 1)
  {
    v7[3] = &type metadata for PluginView;
    v7[4] = sub_26A54F390();
    v8 = swift_allocObject();
    *v7 = v8;
    memcpy((v8 + 16), v4, 0x58uLL);
  }

  else
  {
    v7[3] = type metadata accessor for ResponseView();
    v7[4] = sub_26A67F7B0();
    __swift_allocate_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_3_56();
    sub_26A67FA48();
  }

  return sub_26A67FAE8();
}

void *sub_26A67EC58(double a1, double a2)
{
  type metadata accessor for ResponseView();

  return sub_26A67E238(a1, a2);
}

unint64_t sub_26A67ECD0()
{
  result = qword_2803B29A8;
  if (!qword_2803B29A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2908);
    sub_26A67ED88();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B29A8);
  }

  return result;
}

unint64_t sub_26A67ED88()
{
  result = qword_2803B29B0;
  if (!qword_2803B29B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B29A0);
    sub_26A67EE40();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B29B0);
  }

  return result;
}

unint64_t sub_26A67EE40()
{
  result = qword_2803B29B8;
  if (!qword_2803B29B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2998);
    sub_26A67EEF8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B29B8);
  }

  return result;
}

unint64_t sub_26A67EEF8()
{
  result = qword_2803B29C0;
  if (!qword_2803B29C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2988);
    sub_26A67EFB0();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B29C0);
  }

  return result;
}

unint64_t sub_26A67EFB0()
{
  result = qword_2803B29C8;
  if (!qword_2803B29C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2980);
    sub_26A67F068();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B29C8);
  }

  return result;
}

unint64_t sub_26A67F068()
{
  result = qword_2803B29D0;
  if (!qword_2803B29D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2978);
    sub_26A67F120();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B29D0);
  }

  return result;
}

unint64_t sub_26A67F120()
{
  result = qword_2803B29D8;
  if (!qword_2803B29D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2970);
    sub_26A67F1D8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B29D8);
  }

  return result;
}

unint64_t sub_26A67F1D8()
{
  result = qword_2803B29E0;
  if (!qword_2803B29E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2968);
    sub_26A67F264();
    sub_26A54FED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B29E0);
  }

  return result;
}

unint64_t sub_26A67F264()
{
  result = qword_2803B29E8;
  if (!qword_2803B29E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2960);
    sub_26A67F31C();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B29E8);
  }

  return result;
}

unint64_t sub_26A67F31C()
{
  result = qword_2803B29F0;
  if (!qword_2803B29F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2948);
    sub_26A67F3D4();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B29F0);
  }

  return result;
}

unint64_t sub_26A67F3D4()
{
  result = qword_2803B29F8;
  if (!qword_2803B29F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2A00);
    sub_26A67F460();
    sub_26A54FE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B29F8);
  }

  return result;
}

unint64_t sub_26A67F460()
{
  result = qword_2803B2A08;
  if (!qword_2803B2A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2940);
    sub_26A67F51C();
    sub_26A67F7B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B2A08);
  }

  return result;
}

unint64_t sub_26A67F51C()
{
  result = qword_2803B2A10;
  if (!qword_2803B2A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2938);
    sub_26A67F5D4();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B2A10);
  }

  return result;
}

unint64_t sub_26A67F5D4()
{
  result = qword_2803B2A18;
  if (!qword_2803B2A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2930);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B2A18);
  }

  return result;
}

unint64_t sub_26A67F6B8()
{
  result = qword_2803B2A60;
  if (!qword_2803B2A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2918);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2908);
    sub_26A67ECD0();
    swift_getOpaqueTypeConformance2();
    sub_26A67F7B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B2A60);
  }

  return result;
}

unint64_t sub_26A67F7B0()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

void sub_26A67F838()
{
  sub_26A84E408();
  if (v0 <= 0x3F)
  {
    type metadata accessor for VRXMode();
    if (v1 <= 0x3F)
    {
      sub_26A5C8D64();
      if (v2 <= 0x3F)
      {
        sub_26A67F904();
        if (v3 <= 0x3F)
        {
          sub_26A58F648();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26A67F904()
{
  if (!qword_2803B2A78)
  {
    type metadata accessor for Form();
    sub_26A67F7B0();
    v0 = sub_26A84F288();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B2A78);
    }
  }
}

uint64_t sub_26A67F998(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_26A67F9D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A67FA48()
{
  v1 = OUTLINED_FUNCTION_13_2();
  v2(v1);
  OUTLINED_FUNCTION_46();
  v3 = OUTLINED_FUNCTION_211();
  v4(v3);
  return v0;
}

uint64_t sub_26A67FA98()
{
  v1 = OUTLINED_FUNCTION_13_2();
  v2(v1);
  OUTLINED_FUNCTION_46();
  v3 = OUTLINED_FUNCTION_211();
  v4(v3);
  return v0;
}

uint64_t sub_26A67FAE8()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

double sub_26A67FB9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_26A850358();
  v3 = sub_26A850338();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = sub_26A8503E8();
  sub_26A5FA3EC(v2);
  v5 = sub_26A84FEA8();
  qword_2803D1FD0 = v4;
  dword_2803D1FD8 = v5;
  result = *&v8;
  *algn_2803D1FDC = v8;
  dword_2803D1FEC = v9;
  qword_2803D1FF0 = MEMORY[0x277CE04F8];
  unk_2803D1FF8 = MEMORY[0x277CE04E8];
  return result;
}

uint64_t sub_26A67FC8C()
{
  result = _UISolariumEnabled();
  v1 = 656.0;
  if (result)
  {
    v1 = 622.0;
  }

  qword_2803D2000 = *&v1;
  return result;
}

uint64_t sub_26A67FCC4()
{
  result = _UISolariumEnabled();
  v1 = 28.0;
  if (result)
  {
    v1 = 27.0;
  }

  qword_2803D2008 = *&v1;
  return result;
}

uint64_t sub_26A67FCF4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26A67FD8C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for ColumnMeasuringView.MeasuringLayout();
  OUTLINED_FUNCTION_2_63();
  swift_getWitnessTable();
  sub_26A84EF38();
  OUTLINED_FUNCTION_1_62();
  swift_getWitnessTable();
  v4 = sub_26A84F1A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  v11 = sub_26A67FF88(v1[1], v1[2], *v1, v3, v2);
  v15 = v3;
  v16 = v2;
  v17 = v1;
  (v11)(sub_26A680828, v14);

  OUTLINED_FUNCTION_3_57();
  WitnessTable = swift_getWitnessTable();
  v19 = v2;
  OUTLINED_FUNCTION_3_18();
  swift_getWitnessTable();
  sub_26A80757C(v7);
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_26A80757C(v10);
  return (v12)(v10, v4);
}

uint64_t (*sub_26A67FF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;

  return sub_26A680834;
}

uint64_t sub_26A680018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ColumnMeasuringView.MeasuringLayout();
  WitnessTable = swift_getWitnessTable();
  return sub_26A5F20D8(a1, a2, v10, a3, WitnessTable, a4, a5);
}

uint64_t sub_26A6800C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v12 - v8;
  (*(v7 + 24))();
  sub_26A80757C(v6);
  v10 = *(v3 + 8);
  v10(v6, a2);
  sub_26A80757C(v9);
  return (v10)(v9, a2);
}

double sub_26A6801F8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, double), uint64_t a8, uint64_t a9)
{
  v52 = a7;
  v53 = a8;
  v46 = a2;
  v47 = a4;
  v50 = a1;
  v51 = a3;
  v56 = a5;
  v57 = a9;
  v9 = &qword_2803B1DF0;
  v10 = &unk_26A871C50;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1DF0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v46 - v15;
  v59 = sub_26A84F108();
  v17 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2B90);
  MEMORY[0x28223BE20](v19 - 8);
  v55 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v46 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2B98);
  MEMORY[0x28223BE20](v24);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2BA0);
  MEMORY[0x28223BE20](v54);
  v26 = &v46 - v25;
  v27 = sub_26A84F218();
  v28 = sub_26A68091C();
  MEMORY[0x26D663C20](v27, v28);
  v56 = v26;
  sub_26A852438();
  v29 = 0;
  v48 = (v17 + 8);
  v49 = (v17 + 32);
  v30 = v46 & 1;
  v47 &= 1u;
  while (1)
  {
    v31 = v55;
    sub_26A852448();
    sub_26A680974(v31, v23);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2BA8);
    if (__swift_getEnumTagSinglePayload(v23, 1, v32) == 1)
    {
      break;
    }

    v33 = v10;
    v34 = v9;
    v35 = *v23;
    (*v49)(v58, &v23[*(v32 + 48)], v59);
    v61 = v30;
    v60 = v47;
    sub_26A84F0E8();
    v37 = v36;
    v38 = *(v57 + 16);
    v39 = type metadata accessor for TableCell();
    v40 = v39;
    v41 = 1;
    if (v35 < 0)
    {
      v9 = v34;
    }

    else
    {
      v42 = v35 < v38;
      v9 = v34;
      if (v42)
      {
        sub_26A680A54(v57 + ((*(*(v39 - 8) + 80) + 32) & ~*(*(v39 - 8) + 80)) + *(*(v39 - 8) + 72) * v35, v16);
        v41 = 0;
      }
    }

    __swift_storeEnumTagSinglePayload(v16, v41, 1, v40);
    sub_26A6809E4(v16, v13);
    v10 = v33;
    if (__swift_getEnumTagSinglePayload(v13, 1, v40) == 1)
    {
      sub_26A4E2544(v13, v9);
      v43 = 1;
    }

    else
    {
      v43 = *&v13[*(v40 + 28)];
      sub_26A657E7C(v13);
    }

    v52(v29, v43, v37);
    sub_26A4E2544(v16, v9);
    (*v48)(v58, v59);
    v44 = __OFADD__(v29, v43);
    v29 += v43;
    if (v44)
    {
      __break(1u);
      break;
    }
  }

  sub_26A4E2544(v56, &qword_2803B2BA0);
  return 0.0;
}

void (*sub_26A680760(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26A84ECD8();
  return sub_26A4F6448;
}

uint64_t sub_26A680844()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26A680880(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26A6808C0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_26A68091C()
{
  result = qword_28157FE78;
  if (!qword_28157FE78)
  {
    sub_26A84F218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FE78);
  }

  return result;
}

uint64_t sub_26A680974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2B90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A6809E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A680A54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableCell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_26A680B28@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 text_1];
  if (v4)
  {
    v5 = v4;
    RFTextProperty.asPartialText()(v141);
    v6 = [v1 text_2];
    if (v6)
    {
      v7 = v6;
      *(&v139 + 1) = &type metadata for PartialText;
      v140 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v138[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v138[0] + 16);
    }

    else
    {
      v140 = 0;
      *v138 = 0u;
      v139 = 0u;
    }

    v10 = sub_26A54AB40(v2, &selRef_text_3);
    if (v10)
    {
      sub_26A51B744(v10, __dst);
      sub_26A54AAEC();
      v10 = sub_26A851248();
      v11 = &protocol witness table for AnyView;
      v12 = MEMORY[0x277CE11C8];
    }

    else
    {
      v12 = 0;
      v11 = 0;
      v137[2] = 0;
      v137[1] = 0;
    }

    v137[0] = v10;
    v137[3] = v12;
    v137[4] = v11;
    v13 = sub_26A54AB40(v2, &selRef_text_4);
    if (v13)
    {
      sub_26A51B744(v13, __dst);
      sub_26A54AAEC();
      v13 = sub_26A851248();
      v14 = &protocol witness table for AnyView;
      v15 = MEMORY[0x277CE11C8];
    }

    else
    {
      v15 = 0;
      v14 = 0;
      v136[2] = 0;
      v136[1] = 0;
    }

    v136[0] = v13;
    v136[3] = v15;
    v136[4] = v14;
    v16 = [v2 text_5];
    if (v16)
    {
      v17 = v16;
      *(&v134 + 1) = &type metadata for PartialText;
      v135 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v133[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v133[0] + 16);
    }

    else
    {
      v135 = 0;
      *v133 = 0u;
      v134 = 0u;
    }

    v18 = [v2 text_6];
    if (v18)
    {
      v19 = v18;
      *(&v131 + 1) = &type metadata for PartialText;
      v132 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v130[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v130[0] + 16);
    }

    else
    {
      v132 = 0;
      *v130 = 0u;
      v131 = 0u;
    }

    if (qword_2803A89D0 != -1)
    {
      swift_once();
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADC8);
    v21 = __swift_project_value_buffer(v20, qword_2803D1900);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC908);
    v23 = &a1[*(v22 + 32)];
    sub_26A4EA070(v21, v23, &qword_2803AADC8);
    sub_26A6AEE74(__src);
    memcpy(a1, __src, 0xBFuLL);
    sub_26A5375E4(v23 + *(v20 + 36), &a1[*(v22 + 28)]);
    v24 = type metadata accessor for SimpleItemStandardView(0);
    v25 = &a1[v24[5]];
    *v25 = swift_getKeyPath();
    v25[8] = 0;
    v26 = v24[6];
    *&a1[v26] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
    swift_storeEnumTagMultiPayload();
    v27 = v24[7];
    *&a1[v27] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
    swift_storeEnumTagMultiPayload();
    v28 = memcpy(__dst, v141, 0xFAuLL);
    OUTLINED_FUNCTION_1_63(v28, v29, v30, v31, v32, v33, v34, v35, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127[0]);
    sub_26A4EC458(__dst, &v95);
    sub_26A4EC4B4();
    *&a1[v24[8]] = sub_26A851248();
    sub_26A4EA070(v138, v127, &qword_2803A91B8);
    if (v128)
    {
      __swift_project_boxed_opaque_existential_1(v127, v128);
      v36 = OUTLINED_FUNCTION_16_5();
      v38 = v37(v36);
      OUTLINED_FUNCTION_4_27(v38, v39, v40, v41, v42, v43, v44, v45, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127[0]);
    }

    else
    {
      sub_26A537648(v127);
      v27 = 0;
    }

    *&a1[v24[9]] = v27;
    sub_26A4EA070(v137, v127, &qword_2803A91B8);
    if (v128)
    {
      __swift_project_boxed_opaque_existential_1(v127, v128);
      v46 = OUTLINED_FUNCTION_16_5();
      v48 = v47(v46);
      OUTLINED_FUNCTION_4_27(v48, v49, v50, v51, v52, v53, v54, v55, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127[0]);
    }

    else
    {
      sub_26A537648(v127);
      v27 = 0;
    }

    *&a1[v24[10]] = v27;
    sub_26A4EA070(v136, v127, &qword_2803A91B8);
    if (v128)
    {
      __swift_project_boxed_opaque_existential_1(v127, v128);
      v56 = OUTLINED_FUNCTION_16_5();
      v58 = v57(v56);
      OUTLINED_FUNCTION_4_27(v58, v59, v60, v61, v62, v63, v64, v65, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127[0]);
    }

    else
    {
      sub_26A537648(v127);
      v27 = 0;
    }

    *&a1[v24[11]] = v27;
    sub_26A4EA070(v133, v127, &qword_2803A91B8);
    if (v128)
    {
      __swift_project_boxed_opaque_existential_1(v127, v128);
      v66 = OUTLINED_FUNCTION_16_5();
      v68 = v67(v66);
      OUTLINED_FUNCTION_4_27(v68, v69, v70, v71, v72, v73, v74, v75, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127[0]);
    }

    else
    {
      sub_26A537648(v127);
      v27 = 0;
    }

    *&a1[v24[12]] = v27;
    v76 = sub_26A4EA070(v130, &v95, &qword_2803A91B8);
    if (v98)
    {
      __swift_project_boxed_opaque_existential_1(&v95, v98);
      v84 = OUTLINED_FUNCTION_16_5();
      v86 = v85(v84);

      OUTLINED_FUNCTION_1_63(v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127[0]);
      sub_26A4EC508(v127);
      sub_26A537648(v130);
      sub_26A537648(v133);
      sub_26A537648(v136);
      sub_26A537648(v137);
      sub_26A537648(v138);
      result = __swift_destroy_boxed_opaque_existential_1(&v95);
    }

    else
    {
      OUTLINED_FUNCTION_1_63(v76, v77, v78, v79, v80, v81, v82, v83, v95, v96, v97, 0, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127[0]);
      sub_26A4EC508(v127);

      sub_26A537648(v130);
      sub_26A537648(v133);
      sub_26A537648(v136);
      sub_26A537648(v137);
      sub_26A537648(v138);
      result = sub_26A537648(&v95);
      v86 = 0;
    }

    *&a1[v24[13]] = v86;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v8 = v1;
    *(v8 + 8) = &unk_287B13828;
    *(v8 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

unint64_t sub_26A6811F4()
{
  result = qword_2803AE688;
  if (!qword_2803AE688)
  {
    type metadata accessor for SimpleItemStandardView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE688);
  }

  return result;
}

void *OUTLINED_FUNCTION_1_63(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x3D8], 0xFAuLL);
}

uint64_t sub_26A681274(uint64_t a1)
{
  result = sub_26A68BE00(qword_2803B2BB0, MEMORY[0x277D62CB8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A6812CC()
{
  swift_getAssociatedTypeWitness();
  sub_26A852068();
  result = sub_26A84EC38();
  if (v1 <= 0x3F)
  {
    sub_26A851B48();
    sub_26A852068();
    result = sub_26A84EC38();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ImageSourceModelLoader.AsyncQueueSources();
      result = sub_26A852068();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_26A681448()
{
  OUTLINED_FUNCTION_12_22();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_183();
  sub_26A84EC18();
}

uint64_t sub_26A6814F8()
{
  OUTLINED_FUNCTION_12_22();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_62_3();
  sub_26A852068();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v0);
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = OUTLINED_FUNCTION_69_2();
  v2(v1);

  sub_26A84EC28();
  v3 = OUTLINED_FUNCTION_29_4();
  return v4(v3);
}

uint64_t sub_26A68165C()
{
  OUTLINED_FUNCTION_12_22();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_20();
  sub_26A84EC18();

  return v1;
}

uint64_t sub_26A681704()
{
  OUTLINED_FUNCTION_12_22();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26A84EC28();
}

uint64_t sub_26A6817B4()
{
  OUTLINED_FUNCTION_12_22();
  v2 = *(v1 + 96);
  swift_getAssociatedTypeWitness();
  sub_26A852068();
  OUTLINED_FUNCTION_62_3();
  sub_26A84EC38();
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_7_36();
  v5 = *(v4 + 104);
  sub_26A851B48();
  sub_26A852068();
  OUTLINED_FUNCTION_62_3();
  sub_26A84EC38();
  OUTLINED_FUNCTION_46();
  (*(v6 + 8))(v0 + v5);
  OUTLINED_FUNCTION_7_36();
  v8 = *(v7 + 112);
  type metadata accessor for ImageSourceModelLoader.AsyncQueueSources();
  OUTLINED_FUNCTION_62_3();
  sub_26A852068();
  OUTLINED_FUNCTION_46();
  (*(v9 + 8))(v0 + v8);
  OUTLINED_FUNCTION_7_36();
  __swift_destroy_boxed_opaque_existential_1(v0 + *(v10 + 120));
  OUTLINED_FUNCTION_7_36();
  __swift_destroy_boxed_opaque_existential_1(v0 + *(v11 + 128));
  return v0;
}

uint64_t sub_26A681948()
{
  sub_26A6817B4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26A6819D0()
{
  result = sub_26A851B48();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for EnvironmentImageSettings(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for ImageSourceModel()
{
  result = qword_28157EF58;
  if (!qword_28157EF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A681ADC()
{
  sub_26A681B84();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ImageSourceView.Model(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SymbolSourceView.Model(319);
      if (v2 <= 0x3F)
      {
        sub_26A681BF4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_26A681B84()
{
  if (!qword_2803B2CB8)
  {
    sub_26A84B158();
    sub_26A84B1D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803B2CB8);
    }
  }
}

void sub_26A681BF4()
{
  if (!qword_2803B2CC0)
  {
    sub_26A84B1D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803B2CC0);
    }
  }
}

uint64_t sub_26A681C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v212 = a3;
  v192 = a2;
  v207 = a1;
  v234 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C8);
  OUTLINED_FUNCTION_79(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_8_6(v11);
  v12 = type metadata accessor for URLImageSize();
  v13 = OUTLINED_FUNCTION_79(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v14);
  v232 = sub_26A84B408();
  OUTLINED_FUNCTION_15();
  v205 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_27_1();
  v203 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CF8);
  OUTLINED_FUNCTION_79(v19);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_82();
  v230 = v21;
  OUTLINED_FUNCTION_25_2();
  v231 = sub_26A84B548();
  OUTLINED_FUNCTION_15();
  v229 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_15();
  v228 = v24;
  OUTLINED_FUNCTION_25_2();
  sub_26A84B6F8();
  OUTLINED_FUNCTION_15();
  v219 = v26;
  v220 = v25;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_15();
  v218 = v27;
  OUTLINED_FUNCTION_25_2();
  sub_26A84B678();
  OUTLINED_FUNCTION_15();
  v225 = v29;
  v226 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3_15();
  v224 = v30;
  OUTLINED_FUNCTION_25_2();
  v197 = sub_26A84B5F8();
  OUTLINED_FUNCTION_15();
  v196 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v33);
  v215 = sub_26A84B4B8();
  OUTLINED_FUNCTION_15();
  v214 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v36);
  v191 = sub_26A84B188();
  OUTLINED_FUNCTION_15();
  v190 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_8_6(v39);
  v233 = type metadata accessor for ImageSourceModel();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_15_23();
  v223 = v42;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_15_23();
  v217 = v45;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_27_1();
  v199 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D28);
  v52 = OUTLINED_FUNCTION_79(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_71_2();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_15_23();
  v227 = v57;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_15_23();
  v216 = v59;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_15_23();
  v222 = v62;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_15_23();
  v221 = v64;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_15_23();
  OUTLINED_FUNCTION_10_5();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_8_6(v74);
  v209 = sub_26A84B598();
  OUTLINED_FUNCTION_15();
  v208 = v75;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_51_4();
  v77 = sub_26A84B258();
  OUTLINED_FUNCTION_15();
  v79 = v78;
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v82);
  v83 = v184 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x28223BE20](v84);
  v87 = v184 - v86;
  v88 = *(v79 + 16);
  v88(v184 - v86, v5, v77, v85);
  v89 = (*(v79 + 88))(v87, v77);
  if (v89 == *MEMORY[0x277D62C78])
  {
    v90 = OUTLINED_FUNCTION_9_39();
    v91(v90);
    v93 = v228;
    v92 = v229;
    OUTLINED_FUNCTION_9_11();
    v94 = v231;
    v95(v93, v87, v231);
    v96 = v230;
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v97, v98, v99, v232);
    sub_26A684574(v96, v227);
    sub_26A4DBD10(v96, &qword_2803B2CF8);
    (*(v92 + 8))(v93, v94);
    sub_26A4D7EA8();
    OUTLINED_FUNCTION_31_14(v4);
    if (!v100)
    {
      goto LABEL_25;
    }

    v101 = v4;
    goto LABEL_18;
  }

  v102 = v232;
  v231 = v5;
  if (v89 == *MEMORY[0x277D62CA0])
  {
    v103 = OUTLINED_FUNCTION_9_39();
    v104(v103);
    OUTLINED_FUNCTION_61_3();
    v105 = OUTLINED_FUNCTION_65_3();
    v106(v105);
    OUTLINED_FUNCTION_50_4();
    sub_26A683BFC(v107);
    v108 = OUTLINED_FUNCTION_33_9();
    v109(v108);
    v110 = v222;
    sub_26A4D7EA8();
    OUTLINED_FUNCTION_31_14(v110);
    if (!v100)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v89 == *MEMORY[0x277D62CA8])
  {
    v111 = OUTLINED_FUNCTION_9_39();
    v112(v111);
    OUTLINED_FUNCTION_61_3();
    v113 = OUTLINED_FUNCTION_65_3();
    v114(v113);
    OUTLINED_FUNCTION_50_4();
    sub_26A68405C(v115);
    v116 = OUTLINED_FUNCTION_33_9();
    v117(v116);
    v110 = v216;
    sub_26A4D7EA8();
    OUTLINED_FUNCTION_31_14(v110);
    if (!v100)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v89 == *MEMORY[0x277D62C70])
  {
    v118 = OUTLINED_FUNCTION_9_39();
    v119(v118);
    OUTLINED_FUNCTION_61_3();
    v120 = OUTLINED_FUNCTION_65_3();
    v121(v120);
    OUTLINED_FUNCTION_50_4();
    sub_26A683568(v122);
    v123 = OUTLINED_FUNCTION_33_9();
    v124(v123);
    v110 = v213;
    sub_26A4D7EA8();
    OUTLINED_FUNCTION_31_14(v110);
    if (!v100)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  if (v89 == *MEMORY[0x277D62C80])
  {
    v125 = OUTLINED_FUNCTION_9_39();
    v126(v125);
    v127 = v208;
    OUTLINED_FUNCTION_9_11();
    v128 = v209;
    v129(v6, v87, v209);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CD8);
    v130 = sub_26A84B588();
    v131 = v210;
    *v210 = v130;
    v131[1] = v132;
    sub_26A84B578();
    (*(v127 + 8))(v6, v128);
    v133 = v233;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v134, v135, v136, v133);
    v110 = v211;
    sub_26A4D7EA8();
    OUTLINED_FUNCTION_6_20(v110, 1, v133);
    if (!v100)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  v137 = v212;
  if (v89 == *MEMORY[0x277D62C68])
  {
    v138 = OUTLINED_FUNCTION_9_39();
    v139(v138);
    v140 = v205;
    OUTLINED_FUNCTION_9_11();
    v141 = v203;
    v142 = v102;
    v143(v203, v87, v102);
    v144 = v202;
    sub_26A5E9A2C(v202);
    sub_26A6EDB00();
    OUTLINED_FUNCTION_22_23();
    sub_26A68BDA8(v144, v145);
    v146 = v204;
    ImageElement.Url.parameterized(with:)(v204, v7, v8);
    sub_26A684E54(v137, v198);
    v147 = v206;
    sub_26A84B338();
    v148 = v200;
    sub_26A685068(v147, v146, v200);
    sub_26A4DBD10(v147, &qword_2803AF0C8);
    v149 = *(v140 + 8);
    v149(v146, v142);
    v149(v141, v142);
    v150 = v201;
    sub_26A4D7EA8();
    OUTLINED_FUNCTION_31_14(v150);
    if (v100)
    {
      sub_26A4DBD10(v150, &qword_2803B2D28);
      sub_26A4D7EA8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D38);
      return swift_storeEnumTagMultiPayload();
    }

    sub_26A4DBD10(v148, &qword_2803B2D28);
    goto LABEL_25;
  }

  if (v89 == *MEMORY[0x277D62C98])
  {
    v151 = OUTLINED_FUNCTION_9_39();
    v153 = v152;
    v154(v151);
    OUTLINED_FUNCTION_61_3();
    v155 = OUTLINED_FUNCTION_65_3();
    v156(v155);
    sub_26A68378C(v207, v193);
    v157 = OUTLINED_FUNCTION_33_9();
    v158(v157);
    v110 = v194;
    sub_26A4D7EA8();
    OUTLINED_FUNCTION_6_20(v110, 1, v153);
    if (v100)
    {
LABEL_17:
      v101 = v110;
LABEL_18:
      sub_26A4DBD10(v101, &qword_2803B2D28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D38);
      return swift_storeEnumTagMultiPayload();
    }

LABEL_25:
    sub_26A68B908();
    sub_26A68B908();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D38);
    return swift_storeEnumTagMultiPayload();
  }

  if (v89 == *MEMORY[0x277D62C48])
  {
    v160 = OUTLINED_FUNCTION_9_39();
    v162 = v161;
    v163(v160);
    v164 = swift_projectBox();
    v165 = v190;
    v166 = v189;
    v167 = v191;
    (*(v190 + 16))(v189, v164, v191);
    sub_26A682F48(v207, v192, v137, v185);
    (*(v165 + 8))(v166, v167);
    v168 = v186;
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v169, v170, v171, v162);
    v172 = v187;
    sub_26A4D7EA8();
    OUTLINED_FUNCTION_6_20(v172, 1, v162);
    if (v100)
    {
      sub_26A4DBD10(v172, &qword_2803B2D28);
      sub_26A4D7EA8();
    }

    else
    {
      sub_26A4DBD10(v168, &qword_2803B2D28);
      sub_26A68B908();
      sub_26A68B908();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D38);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    (v88)(v83, v231, v77);
    v173 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v174 = swift_allocObject();
    (*(v79 + 32))(v174 + v173, v83, v77);
    sub_26A851E98();
    LOBYTE(v182) = 2;
    OUTLINED_FUNCTION_52_5();
    sub_26A7C7120(v175, v176, v177, v178, v179, v180, v181, 285, "model(settings:imageLoader:cache:)", 34, v182, v183, v184[0], v184[1], v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D38);
    swift_storeEnumTagMultiPayload();
    return (*(v79 + 8))(v87, v77);
  }
}

uint64_t sub_26A682F48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v5 = type metadata accessor for ImageSourceModel();
  MEMORY[0x28223BE20](v5);
  v52 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v49 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D38);
  MEMORY[0x28223BE20](v57);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v49 - v11;
  MEMORY[0x28223BE20](v12);
  v56 = &v49 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9D8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  v23 = sub_26A84B258();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v49 - v28;
  sub_26A84B178();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_26A4DBD10(v22, &qword_2803AB9D8);
    v30 = sub_26A851E98();
    LOBYTE(v48) = 2;
    j__OUTLINED_FUNCTION_211_0(v30, 0, "SnippetUI/ImageSourceModelLoader.swift", 38, 2, 341, "badgedImageSourceModel(for:environmentImageSettings:imageLoader:cache:)", 71, v48);
    v31 = a4;
    v32 = 1;
    v33 = v5;
    return __swift_storeEnumTagSinglePayload(v31, v32, 1, v33);
  }

  v50 = a4;
  v51 = v5;
  v34 = *(v24 + 32);
  v34(v29, v22, v23);
  sub_26A84B168();
  if (__swift_getEnumTagSinglePayload(v19, 1, v23) == 1)
  {
    sub_26A4DBD10(v19, &qword_2803AB9D8);
    v35 = sub_26A851E98();
    LOBYTE(v48) = 2;
    j__OUTLINED_FUNCTION_203_0(v35, 0, "SnippetUI/ImageSourceModelLoader.swift", 38, 2, 346, "badgedImageSourceModel(for:environmentImageSettings:imageLoader:cache:)", 71, v48);
    (*(v24 + 8))(v29, v23);
LABEL_7:
    v31 = v50;
    v33 = v51;
    v32 = 1;
    return __swift_storeEnumTagSinglePayload(v31, v32, 1, v33);
  }

  v34(v26, v19, v23);
  v37 = v58;
  v36 = v59;
  v38 = v60;
  sub_26A681C5C(v58, v59, v60);
  v39 = v56;
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_26A4DBD10(v16, &qword_2803B2D38);
    v40 = *(v24 + 8);
    v40(v26, v23);
    v40(v29, v23);
    sub_26A4DBD10(v39, &qword_2803B2D38);
    goto LABEL_7;
  }

  sub_26A68B908();
  sub_26A681C5C(v37, v36, v38);
  sub_26A4DBD10(v16, &qword_2803B2D38);
  v42 = *(v24 + 8);
  v42(v26, v23);
  v42(v29, v23);
  v43 = v54;
  sub_26A4D7EA8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v46 = v50;
  v45 = v51;
  if (EnumCaseMultiPayload)
  {
    sub_26A68BDA8(v55, type metadata accessor for ImageSourceModel);
    sub_26A4DBD10(v43, &qword_2803B2D38);
    v31 = v46;
    v32 = 1;
  }

  else
  {
    sub_26A68B908();
    type metadata accessor for BadgedImageView.Model(0);
    v47 = swift_allocBox();
    sub_26A68B908();
    sub_26A68B908();
    *v46 = v47;
    swift_storeEnumTagMultiPayload();
    v31 = v46;
    v32 = 0;
  }

  v33 = v45;
  return __swift_storeEnumTagSinglePayload(v31, v32, 1, v33);
}

uint64_t sub_26A683568@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26A5B8660();
  if (v2)
  {
    v3 = v2;
    sub_26A84B498();
    v4 = v3;
    v5 = sub_26A850FB8();
    sub_26A84B488();
    if (v6)
    {
      v7 = sub_26A850FB8();
    }

    else
    {

      v7 = 0;
    }

    v11 = type metadata accessor for ImageSourceView.Model(0);

    sub_26A84B468();
    sub_26A84B458();
    v12 = sub_26A84B448();
    v13 = sub_26A84B478();

    v14 = v11[11];
    v15 = *MEMORY[0x277D62D00];
    v16 = sub_26A84B2E8();
    (*(*(v16 - 8) + 104))(a1 + v14, v15, v16);
    v17 = v11[12];
    v18 = sub_26A84DFA8();
    __swift_storeEnumTagSinglePayload(a1 + v17, 1, 1, v18);
    v19 = v11[13];
    v20 = *MEMORY[0x277D62D28];
    v21 = sub_26A84B2F8();
    (*(*(v21 - 8) + 104))(a1 + v19, v20, v21);
    *a1 = v5;
    a1[1] = v7;
    *(a1 + v11[8]) = v12;
    *(a1 + v11[9]) = v13;
    *(a1 + v11[10]) = 2;
    *(a1 + v11[14]) = 0;
    v22 = type metadata accessor for ImageSourceModel();
    swift_storeEnumTagMultiPayload();
    v9 = a1;
    v10 = 0;
    v8 = v22;
  }

  else
  {
    sub_26A5B8798();
    v8 = type metadata accessor for ImageSourceModel();
    v9 = a1;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v8);
}

uint64_t sub_26A68378C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v21[1] = a1;
  v24 = a2;
  v2 = sub_26A84CBC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26A84B5D8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_26A84B5F8();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26A84B1D8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  sub_26A688384();
  sub_26A84B5E8();
  (*(v11 + 16))(v13, v16, v10);
  sub_26A84B608();
  sub_26A84B5C8();
  sub_26A68BE00(&qword_2803B2D08, MEMORY[0x277D63418]);
  sub_26A84E9E8();
  (*(v3 + 8))(v5, v2);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CF0) + 48);
  v18 = v24;
  sub_26A84B0F8();
  (*(v22 + 8))(v9, v23);
  (*(v11 + 32))(v18 + v17, v16, v10);
  v19 = type metadata accessor for ImageSourceModel();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);
}

uint64_t sub_26A683BFC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_26A84B2B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A4EC5B0(0, &qword_28157D7E0);
  v9 = sub_26A84B668();
  v11 = sub_26A7DB454(v9, v10);
  if (v11)
  {
    v12 = v11;
    v13 = _s7SwiftUI5ImageV07SnippetB0E06nativeC0ACSo7UIImageC_tcfC_0();
    sub_26A84B638();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      [v12 size];
      [v12 size];
      sub_26A84B268();
      if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
      {
        sub_26A4DBD10(v4, &qword_2803AF0C0);
      }
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
    }

    v17 = sub_26A84B658();
    if (v18 >> 60 == 15)
    {
      v19 = 0;
    }

    else
    {
      v19 = Image.init(data:)(v17, v18);
      if (v19)
      {
      }
    }

    v20 = type metadata accessor for ImageSourceView.Model(0);
    v21 = v20[6];
    (*(v6 + 16))(a1 + v21, v8, v5);
    __swift_storeEnumTagSinglePayload(a1 + v21, 0, 1, v5);

    sub_26A84B628();
    HIDWORD(v34) = sub_26A84B618();
    LOBYTE(v21) = sub_26A84B648();

    (*(v6 + 8))(v8, v5);
    v22 = v20[11];
    v23 = *MEMORY[0x277D62D00];
    v24 = sub_26A84B2E8();
    (*(*(v24 - 8) + 104))(a1 + v22, v23, v24);
    v25 = v20[12];
    v26 = sub_26A84DFA8();
    __swift_storeEnumTagSinglePayload(a1 + v25, 1, 1, v26);
    v27 = v20[13];
    v28 = *MEMORY[0x277D62D28];
    v29 = sub_26A84B2F8();
    (*(*(v29 - 8) + 104))(a1 + v27, v28, v29);
    *a1 = v13;
    a1[1] = v19;
    *(a1 + v20[8]) = BYTE4(v34);
    *(a1 + v20[9]) = v21;
    *(a1 + v20[10]) = 2;
    *(a1 + v20[14]) = 0;
    v30 = type metadata accessor for ImageSourceModel();
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v30);
  }

  else
  {
    v14 = sub_26A851E98();
    LOBYTE(v31) = 2;
    sub_26A7C1614(v14, 0, "SnippetUI/ImageSourceModelLoader.swift", 38, 2, 472, "pngDataSourceModel(for:)", 24, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
    v15 = type metadata accessor for ImageSourceModel();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v15);
  }
}

uint64_t sub_26A68405C@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = sub_26A84B6E8();
  v10 = v9;
  sub_26A4EC5B0(0, &qword_2803B2D40);
  sub_26A4EC5B0(0, &qword_2803B2D48);
  v11 = sub_26A851EB8();
  v14 = v11;
  if (v11)
  {
    v15 = objc_opt_self();
    v16 = [v15 traitCollectionWithUserInterfaceStyle_];
    v17 = [v14 imageWithTraitCollection_];

    v18 = [v15 traitCollectionWithUserInterfaceStyle_];
    v19 = [v14 imageWithTraitCollection_];

    v20 = v17;
    v40 = _s7SwiftUI5ImageV07SnippetB0E06nativeC0ACSo7UIImageC_tcfC_0();
    v21 = v19;
    v39 = _s7SwiftUI5ImageV07SnippetB0E06nativeC0ACSo7UIImageC_tcfC_0();
    sub_26A84B6C8();
    v22 = sub_26A84B2B8();
    if (__swift_getEnumTagSinglePayload(v4, 1, v22) == 1)
    {
      [v20 size];
      [v20 size];
      sub_26A84B268();
      if (__swift_getEnumTagSinglePayload(v4, 1, v22) != 1)
      {
        sub_26A4DBD10(v4, &qword_2803AF0C0);
      }
    }

    else
    {
      (*(*(v22 - 8) + 32))(v7, v4, v22);
    }

    __swift_storeEnumTagSinglePayload(v7, 0, 1, v22);
    v24 = type metadata accessor for ImageSourceView.Model(0);
    sub_26A84B6B8();
    HIDWORD(v38) = sub_26A84B6A8();
    v25 = sub_26A84B6D8();

    sub_26A513D40(v8, v10);
    v26 = v24[11];
    v27 = *MEMORY[0x277D62D00];
    v28 = sub_26A84B2E8();
    (*(*(v28 - 8) + 104))(&a1[v26], v27, v28);
    v29 = v24[12];
    v30 = sub_26A84DFA8();
    __swift_storeEnumTagSinglePayload(&a1[v29], 1, 1, v30);
    v31 = v24[13];
    v32 = *MEMORY[0x277D62D28];
    v33 = sub_26A84B2F8();
    (*(*(v33 - 8) + 104))(&a1[v31], v32, v33);
    v34 = v39;
    *a1 = v40;
    *(a1 + 1) = v34;
    sub_26A4D7EA8();
    a1[v24[8]] = BYTE4(v38);
    a1[v24[9]] = v25;
    a1[v24[10]] = 2;
    *&a1[v24[14]] = 0;
    v35 = type metadata accessor for ImageSourceModel();
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v35);
  }

  else
  {
    v23 = sub_26A851E98();
    LOBYTE(v36) = 2;
    sub_26A7C17F0(v23, 0, "SnippetUI/ImageSourceModelLoader.swift", 38, 2, 531, "assetDataSourceModel(for:)", 26, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
    sub_26A513D40(v8, v10);
    v12 = type metadata accessor for ImageSourceModel();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v12);
  }
}

uint64_t sub_26A684574@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v75 = a1;
  v3 = sub_26A84B048();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D10);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = &v60 - v6;
  v7 = sub_26A84B1D8();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  v67 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01F0);
  MEMORY[0x28223BE20](v9 - 8);
  v73 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CF8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v60 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v60 - v27;
  v29 = sub_26A84B238();
  v70 = *(v29 - 8);
  v71 = v29;
  MEMORY[0x28223BE20](v29);
  v72 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_26A84B518();
  v33 = v32;

  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    sub_26A84B518();
    v63 = sub_26A850F48();
    sub_26A84B4E8();
    if (v35)
    {
      v62 = sub_26A850F48();
    }

    else
    {
      v62 = 0;
    }

    v61 = sub_26A84DFA8();
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v61);
    sub_26A4D7E54();
    v39 = sub_26A84B408();
    if (__swift_getEnumTagSinglePayload(v19, 1, v39) == 1)
    {
      sub_26A4DBD10(v19, &qword_2803B2CF8);
      v40 = sub_26A84B2B8();
      __swift_storeEnumTagSinglePayload(v22, 1, 1, v40);
    }

    else
    {
      sub_26A84B368();
      (*(*(v39 - 8) + 8))(v19, v39);
    }

    sub_26A4D7E54();
    if (__swift_getEnumTagSinglePayload(v16, 1, v39) == 1)
    {
      sub_26A4DBD10(v16, &qword_2803B2CF8);
    }

    else
    {
      sub_26A84B348();
      (*(*(v39 - 8) + 8))(v16, v39);
    }

    sub_26A4D7E54();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v39);
    v42 = v74;
    if (EnumTagSinglePayload == 1)
    {
      sub_26A4DBD10(v13, &qword_2803B2CF8);
    }

    else
    {
      sub_26A84B388();
      (*(*(v39 - 8) + 8))(v13, v39);
    }

    v43 = v72;
    sub_26A84B218();
    if (__swift_getEnumTagSinglePayload(v75, 1, v39) == 1)
    {
      sub_26A84B4C8();
    }

    else
    {
      v44 = v71;
      v45 = v73;
      (*(v70 + 16))(v73, v43, v71);
      __swift_storeEnumTagSinglePayload(v45, 0, 1, v44);
    }

    v46 = v67;
    sub_26A84B4D8();
    sub_26A84B4F8();
    v47 = sub_26A84B318();
    __swift_storeEnumTagSinglePayload(v42, 0, 1, v47);
    sub_26A84B538();
    v48 = v61;
    if (__swift_getEnumTagSinglePayload(v25, 1, v61) == 1)
    {
      sub_26A4DBD10(v25, &qword_2803AD038);
      v49 = 0;
    }

    else
    {
      v50 = v64;
      sub_26A84DF78();
      v49 = _ProtoColor.swiftValue.getter();
      (*(v65 + 8))(v50, v66);
      (*(*(v48 - 8) + 8))(v25, v48);
    }

    v51 = type metadata accessor for SymbolSourceView.Model(0);
    v52 = v73;
    sub_26A4D7E54();
    v53 = sub_26A84B508();
    sub_26A688650();
    v55 = v54;
    v56 = v62;

    sub_26A4DBD10(v52, &qword_2803B01F0);
    (*(v70 + 8))(v72, v71);
    *a2 = v63;
    *(a2 + 1) = v56;
    (*(v68 + 32))(&a2[v51[6]], v46, v69);
    sub_26A4D7EA8();
    *&a2[v51[8]] = v49;
    a2[v51[10]] = v53 & 1;
    a2[v51[11]] = v55;
    v57 = type metadata accessor for ImageSourceModel();
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v57);
  }

  else
  {
    v36 = sub_26A851E98();
    LOBYTE(v58) = 2;
    sub_26A7C1BB0(v36, 0, "SnippetUI/ImageSourceModelLoader.swift", 38, 2, 550, "symbolSourceModel(for:loadingImageUrlSource:)", 45, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
    v37 = type metadata accessor for ImageSourceModel();

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v37);
  }
}

uint64_t sub_26A684E54@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_26A84B3F8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_26A852068();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-1] - v7;
  sub_26A832AD0(v3, &v16[-1] - v7);
  if (__swift_getEnumTagSinglePayload(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    v9 = type metadata accessor for ImageSourceModel();
    v10 = a2;
    v11 = 1;
  }

  else
  {
    v16[3] = AssociatedTypeWitness;
    v16[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
    (*(*(AssociatedTypeWitness - 8) + 32))(boxed_opaque_existential_1, v8, AssociatedTypeWitness);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2803B2D50);
    v13 = type metadata accessor for ImageSourceModel();
    v11 = swift_dynamicCast() ^ 1;
    v10 = a2;
    v9 = v13;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
}

uint64_t sub_26A685068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a1;
  v40 = a2;
  v47 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CF8);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v37 - v4;
  v42 = sub_26A84B548();
  v39 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26A84B678();
  v45 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26A84B4B8();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_26A84B248();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_26A4DBD10(v14, &qword_2803AF0C8);
    v22 = type metadata accessor for ImageSourceModel();
    return __swift_storeEnumTagSinglePayload(v47, 1, 1, v22);
  }

  v24 = v47;
  (*(v16 + 32))(v21, v14, v15);
  (*(v16 + 16))(v18, v21, v15);
  v25 = (*(v16 + 88))(v18, v15);
  if (v25 == *MEMORY[0x277D62C60])
  {
    (*(v16 + 96))(v18, v15);
    v26 = v45;
    (*(v45 + 32))(v8, v18, v6);
    sub_26A683BFC(v24);
    (*(v26 + 8))(v8, v6);
  }

  else
  {
    v27 = v24;
    if (v25 == *MEMORY[0x277D62C50])
    {
      (*(v16 + 96))(v18, v15);
      v29 = v43;
      v28 = v44;
      (*(v43 + 32))(v11, v18, v44);
      sub_26A683568(v27);
      (*(v29 + 8))(v11, v28);
    }

    else
    {
      if (v25 != *MEMORY[0x277D62C58])
      {
        v35 = *(v16 + 8);
        v35(v21, v15);
        v36 = type metadata accessor for ImageSourceModel();
        __swift_storeEnumTagSinglePayload(v24, 1, 1, v36);
        return (v35)(v18, v15);
      }

      (*(v16 + 96))(v18, v15);
      v31 = v38;
      v30 = v39;
      v32 = v42;
      (*(v39 + 32))(v38, v18, v42);
      v33 = sub_26A84B408();
      v34 = v41;
      (*(*(v33 - 8) + 16))(v41, v40, v33);
      __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
      sub_26A684574(v34, v27);
      sub_26A4DBD10(v34, &qword_2803B2CF8);
      (*(v30 + 8))(v31, v32);
    }
  }

  return (*(v16 + 8))(v21, v15);
}

uint64_t sub_26A685678()
{
  OUTLINED_FUNCTION_1_10();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[8] = v5;
  v6 = sub_26A84B188();
  v1[13] = v6;
  OUTLINED_FUNCTION_2_5(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_10_29();
  v8 = type metadata accessor for URLImageSize();
  OUTLINED_FUNCTION_79(v8);
  v1[16] = OUTLINED_FUNCTION_10_29();
  v9 = sub_26A84B408();
  v1[17] = v9;
  OUTLINED_FUNCTION_2_5(v9);
  v1[18] = v10;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CF8);
  OUTLINED_FUNCTION_79(v11);
  v1[21] = OUTLINED_FUNCTION_10_29();
  v12 = sub_26A84B548();
  v1[22] = v12;
  OUTLINED_FUNCTION_2_5(v12);
  v1[23] = v13;
  v1[24] = OUTLINED_FUNCTION_10_29();
  v14 = sub_26A84B678();
  v1[25] = v14;
  OUTLINED_FUNCTION_2_5(v14);
  v1[26] = v15;
  v1[27] = OUTLINED_FUNCTION_10_29();
  v16 = sub_26A84B5F8();
  v1[28] = v16;
  OUTLINED_FUNCTION_2_5(v16);
  v1[29] = v17;
  v1[30] = OUTLINED_FUNCTION_10_29();
  v18 = sub_26A84B4B8();
  v1[31] = v18;
  OUTLINED_FUNCTION_2_5(v18);
  v1[32] = v19;
  v1[33] = OUTLINED_FUNCTION_10_29();
  v20 = sub_26A84B598();
  v1[34] = v20;
  OUTLINED_FUNCTION_2_5(v20);
  v1[35] = v21;
  v1[36] = OUTLINED_FUNCTION_10_29();
  v22 = sub_26A84B258();
  v1[37] = v22;
  OUTLINED_FUNCTION_2_5(v22);
  v1[38] = v23;
  v1[39] = *(v24 + 64);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  sub_26A851BD8();
  v1[42] = sub_26A851BC8();
  v26 = sub_26A851B78();
  v1[43] = v26;
  v1[44] = v25;

  return MEMORY[0x2822009F8](sub_26A6859F0, v26, v25);
}

uint64_t sub_26A6859F0()
{
  v3 = *(*(v0 + 304) + 16);
  v3(*(v0 + 328), *(v0 + 96), *(v0 + 296));
  v4 = OUTLINED_FUNCTION_21_20();
  v6 = v5(v4);
  if (v6 == *MEMORY[0x277D62C78])
  {
    v7 = *(v0 + 328);
    v8 = *(v0 + 296);
    v9 = *(v0 + 304);
    v11 = *(v0 + 184);
    v10 = *(v0 + 192);
    v13 = *(v0 + 168);
    v12 = *(v0 + 176);
    v14 = *(v0 + 136);
    v15 = *(v0 + 64);

    (*(v9 + 96))(v7, v8);
    (*(v11 + 32))(v10, v7, v12);
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v14);
    sub_26A684574(v13, v15);
    sub_26A4DBD10(v13, &qword_2803B2CF8);
LABEL_7:
    (*(v11 + 8))(v10, v12);
    goto LABEL_8;
  }

  if (v6 == *MEMORY[0x277D62CA0])
  {
    v11 = *(v0 + 208);
    v10 = *(v0 + 216);
    v12 = *(v0 + 200);
    v19 = *(v0 + 64);

    v20 = OUTLINED_FUNCTION_69_2();
    v21(v20);
    v22 = OUTLINED_FUNCTION_35_8();
    v23(v22);
    sub_26A683BFC(v19);
    goto LABEL_7;
  }

  if (v6 == *MEMORY[0x277D62C70])
  {
    v11 = *(v0 + 256);
    v10 = *(v0 + 264);
    v12 = *(v0 + 248);
    v24 = *(v0 + 64);

    v25 = OUTLINED_FUNCTION_69_2();
    v26(v25);
    v27 = OUTLINED_FUNCTION_35_8();
    v28(v27);
    sub_26A683568(v24);
    goto LABEL_7;
  }

  if (v6 == *MEMORY[0x277D62C80])
  {
    v31 = *(v0 + 328);
    v33 = *(v0 + 280);
    v32 = *(v0 + 288);
    v34 = *(v0 + 272);
    v35 = *(v0 + 64);

    v36 = OUTLINED_FUNCTION_183();
    v37(v36);
    (*(v33 + 32))(v32, v31, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CD8);
    *v35 = sub_26A84B588();
    v35[1] = v38;
    sub_26A84B578();
    (*(v33 + 8))(v32, v34);
    v39 = type metadata accessor for ImageSourceModel();
    OUTLINED_FUNCTION_211();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v39);
    goto LABEL_8;
  }

  if (v6 == *MEMORY[0x277D62C68])
  {
    v43 = *(v0 + 152);
    v44 = *(v0 + 128);
    v45 = *(v0 + 88);
    (*(*(v0 + 304) + 96))(*(v0 + 328), *(v0 + 296));
    v46 = OUTLINED_FUNCTION_44_6();
    v47(v46);
    sub_26A5E9A2C(v44);
    sub_26A6EDB00();
    OUTLINED_FUNCTION_22_23();
    sub_26A68BDA8(v44, v48);
    ImageElement.Url.parameterized(with:)(v43, v1, v2);
    sub_26A50429C(v45, v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D00);
    type metadata accessor for ImageSourceModelLoaderCache();
    *(v0 + 392) = swift_dynamicCast();
    *(v0 + 360) = *(v0 + 56);
    v49 = swift_task_alloc();
    *(v0 + 368) = v49;
    *v49 = v0;
    v49[1] = sub_26A68611C;
    OUTLINED_FUNCTION_58_4();

    return sub_26A686584(v50, v51, v52, v53);
  }

  if (v6 == *MEMORY[0x277D62C98])
  {
    v57 = *(v0 + 232);
    v56 = *(v0 + 240);
    v58 = *(v0 + 224);
    v60 = *(v0 + 64);
    v59 = *(v0 + 72);

    v61 = OUTLINED_FUNCTION_69_2();
    v62(v61);
    v63 = OUTLINED_FUNCTION_35_8();
    v64(v63);
    sub_26A68378C(v59, v60);
    (*(v57 + 8))(v56, v58);
    goto LABEL_8;
  }

  if (v6 != *MEMORY[0x277D62C48])
  {
    v77 = *(v0 + 320);
    v78 = *(v0 + 296);
    v79 = *(v0 + 304);
    v80 = *(v0 + 96);

    v3(v77, v80, v78);
    v81 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v82 = swift_allocObject();
    (*(v79 + 32))(v82 + v81, v77, v78);
    sub_26A851E98();
    LOBYTE(v96) = 2;
    OUTLINED_FUNCTION_52_5();
    sub_26A7C7120(v83, v84, v85, v86, v87, v88, v89, 323, "model(settings:imageLoader:cache:)", 34, v96, v97, v98, SHIDWORD(v98), v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v0, v109, v110);

    type metadata accessor for ImageSourceModel();
    OUTLINED_FUNCTION_81();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
    v94 = OUTLINED_FUNCTION_21_20();
    v95(v94);
LABEL_8:
    OUTLINED_FUNCTION_8_46();

    OUTLINED_FUNCTION_2_9();
    OUTLINED_FUNCTION_58_4();

    __asm { BRAA            X1, X16 }
  }

  v65 = *(v0 + 328);
  v67 = *(v0 + 112);
  v66 = *(v0 + 120);
  v68 = *(v0 + 104);
  (*(*(v0 + 304) + 96))(v65, *(v0 + 296));
  *(v0 + 376) = *v65;
  v69 = swift_projectBox();
  (*(v67 + 16))(v66, v69, v68);
  v70 = swift_task_alloc();
  *(v0 + 384) = v70;
  *v70 = v0;
  v70[1] = sub_26A686368;
  OUTLINED_FUNCTION_58_4();

  return sub_26A687208(v71, v72, v73, v74, v75);
}

uint64_t sub_26A68611C()
{
  OUTLINED_FUNCTION_6_10();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v3 = v2;

  v4 = *(v1 + 352);
  v5 = *(v1 + 344);

  return MEMORY[0x2822009F8](sub_26A68625C, v5, v4);
}

uint64_t sub_26A68625C()
{
  v1 = *(v0 + 144);

  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_29_4();
  v2(v3);
  v4 = OUTLINED_FUNCTION_183();
  v2(v4);
  OUTLINED_FUNCTION_8_46();

  OUTLINED_FUNCTION_2_9();

  return v5();
}

uint64_t sub_26A686368()
{
  OUTLINED_FUNCTION_1_10();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v3 = v2;

  v4 = *(v1 + 352);
  v5 = *(v1 + 344);

  return MEMORY[0x2822009F8](sub_26A68647C, v5, v4);
}

uint64_t sub_26A68647C()
{

  v0 = OUTLINED_FUNCTION_29_4();
  v1(v0);

  OUTLINED_FUNCTION_8_46();

  OUTLINED_FUNCTION_2_9();

  return v2();
}

uint64_t sub_26A686584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[215] = v4;
  v5[209] = a4;
  v5[203] = a3;
  v5[197] = a2;
  v5[191] = a1;
  v6 = sub_26A84B408();
  v5[221] = v6;
  v7 = *(v6 - 8);
  v5[222] = v7;
  v5[223] = *(v7 + 64);
  v5[224] = swift_task_alloc();
  v5[225] = swift_task_alloc();
  v5[226] = swift_task_alloc();
  v8 = sub_26A84B258();
  v5[227] = v8;
  v9 = *(v8 - 8);
  v5[228] = v9;
  v5[229] = *(v9 + 64);
  v5[230] = swift_task_alloc();
  v5[231] = swift_task_alloc();
  v5[232] = sub_26A851BD8();
  v5[233] = sub_26A851BC8();
  v11 = sub_26A851B78();
  v5[234] = v11;
  v5[235] = v10;

  return MEMORY[0x2822009F8](sub_26A686720, v11, v10);
}

uint64_t sub_26A686720()
{
  v1 = *(v0 + 1848);
  v26 = *(v0 + 1840);
  v20 = *(v0 + 1832);
  v2 = *(v0 + 1824);
  v3 = *(v0 + 1816);
  v4 = *(v0 + 1808);
  v27 = *(v0 + 1800);
  v18 = *(v0 + 1784);
  v5 = *(v0 + 1776);
  v6 = *(v0 + 1768);
  v7 = *(v0 + 1624);
  v8 = *(v0 + 1576);
  v22 = v8;
  v23 = v7;
  v24 = *(v2 + 16);
  v25 = *(v0 + 1720);
  v24(v1);
  v9 = *(v5 + 16);
  *(v0 + 1888) = v9;
  v21 = v9;
  *(v0 + 1896) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v4, v8, v6);
  sub_26A50429C(v7, v0 + 1336);
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = *(v5 + 80);
  *(v0 + 1992) = v11;
  v17 = (v20 + v11 + v10) & ~v11;
  v15 = (v18 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v0 + 1904) = v12;
  v19 = *(v2 + 32);
  v19(v12 + v10, v1, v3);
  v16 = *(v5 + 32);
  *(v0 + 1912) = v16;
  *(v0 + 1920) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v16(v12 + v17, v4, v6);
  sub_26A4C2314((v0 + 1336), v12 + v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACEA8);
  swift_asyncLet_begin();
  (v24)(v26, v25, v3);
  v21(v27, v22, v6);
  sub_26A50429C(v23, v0 + 1416);
  v13 = swift_allocObject();
  *(v0 + 1928) = v13;
  v19(v13 + v10, v26, v3);
  v16(v13 + v17, v27, v6);
  sub_26A4C2314((v0 + 1416), v13 + v15);
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16);
}

uint64_t sub_26A686A38()
{
  OUTLINED_FUNCTION_1_10();
  v1[242] = v0;
  if (v0)
  {
    v2 = v1[235];
    v3 = v1[234];

    return MEMORY[0x2822009F8](&sub_26A68709C, v3, v2);
  }

  else
  {
    v4 = v1[187];
    v1[243] = v4;
    v5 = v1[188];
    v1[244] = v5;
    sub_26A54D24C(v4, v5);
    v6 = OUTLINED_FUNCTION_18_18();

    return MEMORY[0x282200930](v6);
  }
}

uint64_t sub_26A686AE4()
{
  v1[245] = v0;
  if (v0)
  {
    v2 = &sub_26A68714C;
  }

  else
  {
    v2 = &sub_26A686B1C;
  }

  return MEMORY[0x2822009F8](v2, v1[234], v1[235]);
}

uint64_t sub_26A686CF0()
{
  OUTLINED_FUNCTION_1_10();
  *(v0 + 1984) = sub_26A851BC8();
  v2 = sub_26A851B78();

  return MEMORY[0x2822009F8](sub_26A686D78, v2, v1);
}

void sub_26A686D78()
{
  v1 = v0[247];
  v2 = v0[246];
  v3 = v0[245];
  v4 = v0[244];
  v5 = v0[243];
  v6 = v0[215];
  v7 = v0[209];
  v8 = v0[191];

  sub_26A689674(v5, v4, v2, v1, v6, v7, v8);
  if (v3)
  {
    OUTLINED_FUNCTION_72_2();
  }

  else
  {
    sub_26A54D2B8(v0[243], v0[244]);
    OUTLINED_FUNCTION_72_2();

    MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_26A686E74()
{
  OUTLINED_FUNCTION_1_10();
  sub_26A54D2B8(*(v0 + 1944), *(v0 + 1952));
  v1 = OUTLINED_FUNCTION_211();
  sub_26A54D2B8(v1, v2);
  v3 = OUTLINED_FUNCTION_18_18();

  return MEMORY[0x282200920](v3, v4, v5, v0 + 1680);
}

uint64_t sub_26A686F40()
{

  OUTLINED_FUNCTION_2_9();

  return v0();
}

uint64_t sub_26A687208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[226] = a5;
  v5[225] = a4;
  v5[219] = a3;
  v5[213] = a2;
  v5[207] = a1;
  v5[227] = type metadata accessor for ImageSourceModel();
  v5[228] = swift_task_alloc();
  v5[229] = swift_task_alloc();
  v6 = *(type metadata accessor for EnvironmentImageSettings(0) - 8);
  v5[230] = v6;
  v5[231] = *(v6 + 64);
  v5[232] = swift_task_alloc();
  v5[233] = swift_task_alloc();
  v5[234] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D28);
  v5[235] = swift_task_alloc();
  v5[236] = swift_task_alloc();
  v5[237] = swift_task_alloc();
  v5[238] = swift_task_alloc();
  v5[239] = swift_task_alloc();
  v5[240] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9D8);
  v5[241] = swift_task_alloc();
  v5[242] = swift_task_alloc();
  v7 = sub_26A84B258();
  v5[243] = v7;
  v8 = *(v7 - 8);
  v5[244] = v8;
  v5[245] = *(v8 + 64);
  v5[246] = swift_task_alloc();
  v5[247] = swift_task_alloc();
  v5[248] = swift_task_alloc();
  v5[249] = swift_task_alloc();
  sub_26A851BD8();
  v5[250] = sub_26A851BC8();
  v10 = sub_26A851B78();
  v5[251] = v10;
  v5[252] = v9;

  return MEMORY[0x2822009F8](sub_26A6874A0, v10, v9);
}

uint64_t sub_26A6874A0()
{
  v1 = *(v0 + 1944);
  v2 = *(v0 + 1936);
  sub_26A84B178();
  OUTLINED_FUNCTION_6_20(v2, 1, v1);
  if (v18)
  {
    v3 = *(v0 + 1936);
    v4 = *(v0 + 1816);

    sub_26A4DBD10(v3, &qword_2803AB9D8);
    sub_26A851E98();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_13_26();
    j__OUTLINED_FUNCTION_211_0(v5, v6, v7, v8, v9, 366, v10, 71, v41);
    OUTLINED_FUNCTION_81();
    v14 = v4;
  }

  else
  {
    v15 = *(v0 + 1944);
    v16 = *(v0 + 1928);
    v17 = *(*(v0 + 1952) + 32);
    (v17)(*(v0 + 1992), *(v0 + 1936), v15);
    sub_26A84B168();
    OUTLINED_FUNCTION_6_20(v16, 1, v15);
    if (!v18)
    {
      v46 = *(v0 + 1992);
      v48 = *(v0 + 1984);
      v31 = *(v0 + 1976);
      v49 = *(v0 + 1968);
      v45 = *(v0 + 1960);
      v32 = *(v0 + 1952);
      v33 = *(v0 + 1944);
      v43 = *(v0 + 1848);
      v42 = *(v0 + 1840);
      v34 = *(v0 + 1808);
      v35 = *(v0 + 1800);
      v47 = v34;
      v17();
      v36 = *(v32 + 16);
      v36(v31, v46, v33);
      sub_26A68B8B4();
      sub_26A50429C(v35, v0 + 1336);
      sub_26A50429C(v34, v0 + 1416);
      v37 = (*(v32 + 80) + 16) & ~*(v32 + 80);
      v44 = (v43 + ((v45 + *(v42 + 80) + v37) & ~*(v42 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
      v38 = (v44 + 47) & 0xFFFFFFFFFFFFFFF8;
      v39 = swift_allocObject();
      *(v0 + 2024) = v39;
      (v17)(v39 + v37, v31, v33);
      sub_26A68B908();
      sub_26A4C2314((v0 + 1336), v39 + v44);
      sub_26A4C2314((v0 + 1416), v39 + v38);
      swift_asyncLet_begin();
      v36(v49, v48, v33);
      sub_26A68B8B4();
      sub_26A50429C(v35, v0 + 1496);
      sub_26A50429C(v47, v0 + 1576);
      v40 = swift_allocObject();
      *(v0 + 2032) = v40;
      (v17)(v40 + v37, v49, v33);
      sub_26A68B908();
      sub_26A4C2314((v0 + 1496), v40 + v44);
      sub_26A4C2314((v0 + 1576), v40 + v38);
      swift_asyncLet_begin();

      return MEMORY[0x282200928](v0 + 16);
    }

    v19 = *(v0 + 1928);
    v20 = *(v0 + 1816);

    sub_26A4DBD10(v19, &qword_2803AB9D8);
    sub_26A851E98();
    OUTLINED_FUNCTION_6_30();
    OUTLINED_FUNCTION_13_26();
    j__OUTLINED_FUNCTION_203_0(v21, v22, v23, v24, v25, 371, v26, 71, v41);
    v27 = OUTLINED_FUNCTION_21_20();
    v28(v27);
    OUTLINED_FUNCTION_81();
    v14 = v20;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_24_19();

  OUTLINED_FUNCTION_2_9();

  return v29();
}

uint64_t sub_26A6879F8()
{
  OUTLINED_FUNCTION_1_10();
  sub_26A4D7E54();
  v0 = OUTLINED_FUNCTION_34_10();

  return MEMORY[0x282200928](v0);
}

uint64_t sub_26A687E6C()
{
  v1 = v0[249];
  v2 = v0[248];
  v3 = v0[244];
  v4 = v0[243];

  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  OUTLINED_FUNCTION_24_19();

  OUTLINED_FUNCTION_2_9();

  return v6();
}

uint64_t sub_26A688014()
{
  sub_26A852248();
  MEMORY[0x26D663B00](0xD000000000000022, 0x800000026A88E430);
  sub_26A84B258();
  sub_26A68BE00(&qword_2803B2D30, MEMORY[0x277D62CB8]);
  v0 = sub_26A852568();
  MEMORY[0x26D663B00](v0);

  MEMORY[0x26D663B00](0xD000000000000028, 0x800000026A88E460);
  return 0;
}

uint64_t sub_26A68810C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26A6881D4;

  return sub_26A685678();
}

uint64_t sub_26A6881D4()
{
  OUTLINED_FUNCTION_1_10();
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  OUTLINED_FUNCTION_2_9();

  return v3();
}

uint64_t sub_26A6882BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26A68C318;

  return sub_26A685678();
}

void sub_26A688384()
{
  OUTLINED_FUNCTION_28_0();
  v30 = v1;
  v31 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50);
  OUTLINED_FUNCTION_79(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19();
  v28 = v13;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_71_2();
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  v29 = v4;
  sub_26A84B5B8();
  v18 = v11[13];
  v27 = *MEMORY[0x277D62B70];
  v26 = v18;
  v18(v0);
  OUTLINED_FUNCTION_30_12();
  sub_26A68BE00(v19, v20);
  LOBYTE(v4) = sub_26A851758();
  v21 = v11[1];
  v22 = OUTLINED_FUNCTION_29_4();
  v21(v22);
  (v21)(v17, v9);
  if (v4)
  {
    sub_26A4D7E54();
    OUTLINED_FUNCTION_6_20(v8, 1, v9);
    if (v23)
    {
      sub_26A4DBD10(v8, &qword_2803AFE50);
    }

    else
    {
      v24 = v28;
      v30 = v11[4];
      v30();
      v26(v17, v27, v9);
      v25 = sub_26A851758();
      (v21)(v17, v9);
      if ((v25 & 1) == 0)
      {
        (v30)(v31, v24, v9);
        goto LABEL_10;
      }

      (v21)(v24, v9);
    }

    sub_26A84B5A8();
  }

  else
  {
    sub_26A84B5B8();
  }

LABEL_10:
  OUTLINED_FUNCTION_27_0();
}

void sub_26A688650()
{
  OUTLINED_FUNCTION_28_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038);
  OUTLINED_FUNCTION_79(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_82();
  v40 = v2;
  OUTLINED_FUNCTION_25_2();
  v41 = sub_26A84DFA8();
  OUTLINED_FUNCTION_15();
  v39[2] = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_15();
  v39[1] = v5;
  OUTLINED_FUNCTION_25_2();
  sub_26A84B318();
  OUTLINED_FUNCTION_15();
  v43 = v7;
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19();
  v42 = v8;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v9);
  v11 = v39 - v10;
  v12 = sub_26A84E4D8();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v39 - v20;
  sub_26A84B528();
  v22 = *(v14 + 104);
  v22(v18, *MEMORY[0x277D63830], v12);
  v23 = sub_26A84E4C8();
  v24 = *(v14 + 8);
  v24(v18, v12);
  v24(v21, v12);
  if ((v23 & 1) == 0)
  {
    sub_26A84B528();
    v22(v18, *MEMORY[0x277D63828], v12);
    v25 = sub_26A84E4C8();
    v24(v18, v12);
    v24(v21, v12);
    if ((v25 & 1) == 0)
    {
      sub_26A84B4F8();
      v27 = v42;
      v26 = v43;
      v28 = v44;
      (*(v43 + 104))(v42, *MEMORY[0x277D62D58], v44);
      v29 = sub_26A84B308();
      v30 = *(v26 + 8);
      v30(v27, v28);
      v30(v11, v28);
      if ((v29 & 1) == 0)
      {
        v31 = v40;
        sub_26A84B538();
        v32 = OUTLINED_FUNCTION_13_7();
        OUTLINED_FUNCTION_6_20(v32, v33, v41);
        if (v34)
        {
          sub_26A4DBD10(v31, &qword_2803AD038);
        }

        else
        {
          v35 = OUTLINED_FUNCTION_21_20();
          v36(v35);
          sub_26A68AF94();
          v37 = OUTLINED_FUNCTION_183();
          v38(v37);
        }
      }
    }
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A688A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26A688AA0, 0, 0);
}

uint64_t sub_26A688AA0()
{
  OUTLINED_FUNCTION_1_10();
  sub_26A84B3E8();
  sub_26A84AB98();
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_55_3(v5);

  return sub_26A688CA0(v6, v7);
}

uint64_t sub_26A688B4C()
{
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_36_6();
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0_12();
  *v6 = v5;
  *v6 = *v2;
  v5[8] = v1;

  v7 = v4[6];
  if (v1)
  {
    sub_26A4DBD10(v7, &qword_2803AF0D0);
    v8 = sub_26A68C320;
  }

  else
  {
    v5[9] = v0;
    v5[10] = v3;
    sub_26A4DBD10(v7, &qword_2803AF0D0);
    v8 = sub_26A68C31C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26A688CA0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  v2[4] = swift_task_alloc();
  v3 = sub_26A84AB98();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_26A851BD8();
  v2[8] = sub_26A851BC8();
  v5 = sub_26A851B78();
  v2[9] = v5;
  v2[10] = v4;

  return MEMORY[0x2822009F8](sub_26A688DCC, v5, v4);
}

uint64_t sub_26A688DCC()
{
  OUTLINED_FUNCTION_1_10();
  v1 = *(v0 + 40);
  sub_26A4D7E54();
  v2 = OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_6_20(v2, v3, v1);
  if (v4)
  {
    v5 = *(v0 + 32);

    sub_26A4DBD10(v5, &qword_2803AF0D0);
  }

  else
  {
    (*(*(v0 + 48) + 32))(*(v0 + 56), *(v0 + 32), *(v0 + 40));
    v6 = sub_26A84AB48();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
      v10 = swift_task_alloc();
      *(v0 + 88) = v10;
      *v10 = v0;
      v10[1] = sub_26A688F78;

      return sub_26A6194F8();
    }

    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  }

  v12 = *(v0 + 8);

  return v12(0, 0xF000000000000000);
}

uint64_t sub_26A688F78()
{
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_36_6();
  v5 = *v2;
  *((v4 | 0x1000000000000000) - 8) = *v2;
  v6 = *v2;
  OUTLINED_FUNCTION_0_12();
  *v7 = v6;
  v5[12] = v1;

  if (v1)
  {
    v8 = v5[9];
    v9 = v5[10];
    v10 = sub_26A689130;
  }

  else
  {
    v5[13] = v0;
    v5[14] = v3;
    v8 = v5[9];
    v9 = v5[10];
    v10 = sub_26A689094;
  }

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_26A689094()
{
  OUTLINED_FUNCTION_6_10();

  v0 = OUTLINED_FUNCTION_21_20();
  v1(v0);

  v2 = OUTLINED_FUNCTION_21_20();

  return v3(v2);
}

uint64_t sub_26A689130()
{
  OUTLINED_FUNCTION_6_10();

  v0 = OUTLINED_FUNCTION_21_20();
  v1(v0);

  OUTLINED_FUNCTION_2_9();

  return v2();
}

uint64_t sub_26A6891C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26A689260, 0, 0);
}

uint64_t sub_26A689260()
{
  OUTLINED_FUNCTION_1_10();
  sub_26A84B3B8();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_55_3(v1);

  return sub_26A688CA0(v2, v3);
}

uint64_t sub_26A6892F0()
{
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_36_6();
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0_12();
  *v6 = v5;
  *v6 = *v2;
  v5[8] = v1;

  v7 = v4[6];
  if (v1)
  {
    sub_26A4DBD10(v7, &qword_2803AF0D0);
    v8 = sub_26A6894B0;
  }

  else
  {
    v5[9] = v0;
    v5[10] = v3;
    sub_26A4DBD10(v7, &qword_2803AF0D0);
    v8 = sub_26A689444;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26A689444()
{
  OUTLINED_FUNCTION_1_10();
  **(v0 + 16) = vextq_s8(*(v0 + 72), *(v0 + 72), 8uLL);

  OUTLINED_FUNCTION_2_9();

  return v1();
}

uint64_t sub_26A6894B0()
{
  OUTLINED_FUNCTION_1_10();

  OUTLINED_FUNCTION_2_9();

  return v0();
}

unint64_t sub_26A68950C()
{
  v0 = sub_26A84AB98();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = 0xE000000000000000;
  sub_26A852248();

  v6 = 0xD000000000000024;
  v7 = 0x800000026A88E3B0;
  sub_26A84B3E8();
  sub_26A68BE00(&qword_2803B2D20, MEMORY[0x277CC9260]);
  v4 = sub_26A852568();
  MEMORY[0x26D663B00](v4);

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_26A689674@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v56 = a4;
  v57 = a6;
  v54 = a5;
  v55 = a3;
  v58 = a7;
  v59 = type metadata accessor for ImageSourceModel();
  MEMORY[0x28223BE20](v59);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_26A84B1D8();
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x28223BE20](v11);
  v51 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26A84B2C8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  MEMORY[0x28223BE20](v20 - 8);
  v50 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v61 = &v45 - v23;
  sub_26A4EC5B0(0, &qword_28157D7E0);
  sub_26A54D260(a1, a2);
  v24 = sub_26A7DB454(a1, a2);
  if (v24)
  {
    v25 = v24;
    v48 = _s7SwiftUI5ImageV07SnippetB0E06nativeC0ACSo7UIImageC_tcfC_0();
    v27 = v55;
    v26 = v56;
    sub_26A54D24C(v55, v56);
    v55 = Image.init(data:)(v27, v26);
    sub_26A84B378();
    (*(v14 + 104))(v16, *MEMORY[0x277D62CE0], v13);
    sub_26A68BE00(&qword_28157FFC8, MEMORY[0x277D62CF0]);
    sub_26A851A48();
    sub_26A851A48();
    v28 = *(v14 + 8);
    v28(v16, v13);
    v46 = v28;
    v28(v19, v13);
    v56 = v14 + 8;
    v49 = v25;
    v47 = v13;
    if (v63 == v62)
    {
      v29 = v50;
      sub_26A84B368();
      [v25 size];
      v30 = v51;
      sub_26A84B358();
      sub_26A689CA4(v61);
      (*(v52 + 8))(v30, v53);
      sub_26A4DBD10(v29, &qword_2803AF0C0);
    }

    else
    {
      sub_26A84B368();
    }

    v33 = type metadata accessor for ImageSourceView.Model(0);
    sub_26A4D7E54();
    v34 = v55;

    v35 = v48;

    sub_26A84B358();
    v36 = sub_26A84B348();
    v37 = sub_26A84B388();
    v38 = sub_26A84B378();
    v39 = sub_26A5B82FC(v38);
    v46(v19, v47);
    sub_26A84B3A8();
    sub_26A84B3C8();
    sub_26A84B3D8();
    sub_26A84B398();
    *v10 = v35;
    v10[1] = v34;
    *(v10 + v33[8]) = v36;
    *(v10 + v33[9]) = v37;
    *(v10 + v33[10]) = v39 & 1;
    *(v10 + v33[14]) = v40;
    v41 = v59;
    swift_storeEnumTagMultiPayload();
    if (v57)
    {
      sub_26A84B3F8();
      sub_26A831DA4();

      sub_26A4DBD10(v61, &qword_2803AF0C0);
    }

    else
    {
      sub_26A4DBD10(v61, &qword_2803AF0C0);
    }

    v42 = v58;
    sub_26A68B908();
    return __swift_storeEnumTagSinglePayload(v42, 0, 1, v41);
  }

  else
  {
    v31 = sub_26A851E98();
    LOBYTE(v43) = 2;
    sub_26A7C1D84(v31, 0, "SnippetUI/ImageSourceModelLoader.swift", 38, 2, 623, "urlSourceModel(for:imageLoader:cache:)", 38, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
    return __swift_storeEnumTagSinglePayload(v58, 1, 1, v59);
  }
}

uint64_t sub_26A689CA4@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_26A84B1D8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  v40 = sub_26A84B2B8();
  v42 = *(v40 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v38 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v39 = &v37 - v10;
  sub_26A84B268();
  v11 = v7;
  sub_26A4D7E54();
  v12 = *(v2 + 104);
  v12(v4, *MEMORY[0x277D62BF8], v1);
  v13 = sub_26A84B1C8();
  v14 = *(v2 + 8);
  v14(v4, v1);
  if (v13 & 1) != 0 || (v12(v4, *MEMORY[0x277D62C00], v1), v15 = sub_26A84B1C8(), v14(v4, v1), (v15))
  {
    v16 = v41;
    v17 = v40;
    (*(v42 + 32))(v41, v39, v40);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
    return sub_26A4DBD10(v11, &qword_2803AF0C0);
  }

  else
  {
    v19 = v11;
    v20 = v11;
    v21 = v40;
    if (__swift_getEnumTagSinglePayload(v20, 1, v40))
    {
      (*(v42 + 8))(v39, v21);
    }

    else
    {
      v22 = v42;
      v23 = v38;
      v37 = *(v42 + 16);
      v37(v38, v19, v21);
      sub_26A68BE00(&qword_2803B01A0, MEMORY[0x277D62CD8]);
      sub_26A84C958();
      v25 = v24;
      v26 = *(v22 + 8);
      v26(v23, v21);
      v27 = v39;
      sub_26A84C958();
      if (vabds_f32(v25, v28) >= 0.001)
      {
        v37(v23, v27, v21);
        v29 = v42;
        v30 = (*(v42 + 80) + 20) & ~*(v42 + 80);
        v31 = swift_allocObject();
        v32 = v31;
        *(v31 + 16) = v25;
        v33 = *(v29 + 32);
        v33(v31 + v30, v23, v21);
        v34 = sub_26A851E88();
        LOBYTE(v35) = 2;
        sub_26A7C7120(v34, sub_26A68B854, v32, 0, "SnippetUI/ImageSourceModelLoader.swift", 38, 2, 663, "computeAspectRatio(expected:actual:imageStyle:)", 47, v35, v36, v37, SHIDWORD(v37), v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);

        sub_26A4DBD10(v19, &qword_2803AF0C0);
        v33(v19, v27, v21);
        __swift_storeEnumTagSinglePayload(v19, 0, 1, v21);
      }

      else
      {
        v26(v27, v21);
      }
    }

    return sub_26A4D7EA8();
  }
}

uint64_t sub_26A68A1B4()
{
  sub_26A852248();
  MEMORY[0x26D663B00](0xD000000000000017, 0x800000026A88E360);
  sub_26A851CE8();
  MEMORY[0x26D663B00](0xD000000000000025, 0x800000026A88E380);
  sub_26A84B2B8();
  sub_26A68BE00(&qword_2803B01A0, MEMORY[0x277D62CD8]);
  sub_26A84C958();
  sub_26A851CE8();
  MEMORY[0x26D663B00](41, 0xE100000000000000);
  return 0;
}

void sub_26A68A2F0()
{
  OUTLINED_FUNCTION_28_0();
  type metadata accessor for BadgedImageView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_15();
  v81 = v3;
  v4 = OUTLINED_FUNCTION_25_2();
  v5 = type metadata accessor for BadgedImageView.Model(v4);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_27_1();
  v80 = v8;
  OUTLINED_FUNCTION_25_2();
  type metadata accessor for AppIconView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_15();
  v73 = v10;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CC8);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_82();
  v74 = v12;
  OUTLINED_FUNCTION_25_2();
  sub_26A84B1D8();
  OUTLINED_FUNCTION_15();
  v83 = v14;
  v84 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  v79 = v15;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27_1();
  v82 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CD0);
  OUTLINED_FUNCTION_79(v18);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_82();
  v78 = v20;
  v21 = OUTLINED_FUNCTION_25_2();
  type metadata accessor for SymbolSourceView(v21);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_3_15();
  v77 = v23;
  v24 = OUTLINED_FUNCTION_25_2();
  v25 = type metadata accessor for SymbolSourceView.Model(v24);
  v26 = OUTLINED_FUNCTION_79(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_27_1();
  v76 = v28;
  v29 = OUTLINED_FUNCTION_25_2();
  type metadata accessor for ImageSourceView(v29);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_41();
  v33 = v32 - v31;
  v34 = type metadata accessor for ImageSourceView.Model(0);
  v35 = OUTLINED_FUNCTION_79(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_0();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_13_6();
  v40 = type metadata accessor for CustomCanvasView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_41();
  v44 = v43 - v42;
  v45 = sub_26A84B158();
  OUTLINED_FUNCTION_15();
  v47 = v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_51_4();
  type metadata accessor for ImageSourceModel();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_41();
  v52 = v51 - v50;
  OUTLINED_FUNCTION_29_14();
  sub_26A68B8B4();
  OUTLINED_FUNCTION_44_6();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A68B908();
      sub_26A68B8B4();
      sub_26A7694FC(v38, v33);
      sub_26A68BE00(qword_28157F1F8, type metadata accessor for ImageSourceView);
      sub_26A851248();
      OUTLINED_FUNCTION_25_18();
      v61 = v0;
      goto LABEL_8;
    case 2u:
      sub_26A68B908();
      sub_26A68B8B4();
      *v78 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CE8);
      swift_storeEnumTagMultiPayload();
      KeyPath = swift_getKeyPath();
      sub_26A77A4D8(KeyPath, 0, v77);
      sub_26A68BE00(qword_28157ED80, type metadata accessor for SymbolSourceView);
      sub_26A851248();
      OUTLINED_FUNCTION_27_11();
      v61 = v76;
LABEL_8:
      sub_26A68BDA8(v61, v60);
      break;
    case 3u:
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CD8);
      (*(v83 + 32))(v82, v52 + *(v62 + 48), v84);
      (*(v83 + 104))(v79, *MEMORY[0x277D62B70], v84);
      OUTLINED_FUNCTION_30_12();
      sub_26A68BE00(v63, v64);
      v65 = sub_26A851758();
      v66 = *(v83 + 8);
      v66(v79, v84);
      if (v65)
      {
        OUTLINED_FUNCTION_59_3(v73);
        sub_26A68BE00(&qword_28157F9B0, type metadata accessor for AppIconView);
      }

      else
      {
        OUTLINED_FUNCTION_59_3(v74);
        v67 = swift_getKeyPath();
        v68 = (v74 + *(v75 + 36));
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440);
        (*(v83 + 16))(v68 + *(v69 + 28), v82, v84);
        OUTLINED_FUNCTION_22_0();
        __swift_storeEnumTagSinglePayload(v70, v71, v72, v84);
        *v68 = v67;
        sub_26A68B240();
      }

      sub_26A851248();
      v66(v82, v84);
      break;
    case 4u:
      swift_projectBox();
      sub_26A68B8B4();
      sub_26A68B8B4();
      sub_26A7016E0(v81);
      sub_26A68BE00(qword_28157F358, type metadata accessor for BadgedImageView);
      sub_26A851248();
      OUTLINED_FUNCTION_28_8();
      sub_26A68BDA8(v80, v58);

      break;
    default:
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CF0) + 48);
      OUTLINED_FUNCTION_9_11();
      v54(v1, v52, v45);
      (*(v47 + 16))(v44, v1, v45);
      v55 = (v44 + v40[5]);
      *v55 = 0xD000000000000023;
      v55[1] = 0x800000026A88B1A0;
      v56 = v44 + v40[6];
      *v56 = swift_getKeyPath();
      *(v56 + 8) = 0;
      v57 = v44 + v40[7];
      *v57 = swift_getKeyPath();
      *(v57 + 8) = 0;
      sub_26A68BE00(&qword_2803ABC08, type metadata accessor for CustomCanvasView);
      sub_26A851248();
      (*(v47 + 8))(v1, v45);
      (*(v83 + 8))(v52 + v53, v84);
      break;
  }

  OUTLINED_FUNCTION_27_0();
}

void sub_26A68AC4C()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v3 = type metadata accessor for BadgedImageView.Model(0);
  v4 = OUTLINED_FUNCTION_79(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = type metadata accessor for SymbolSourceView.Model(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  v12 = v11 - v10;
  v13 = type metadata accessor for ImageSourceView.Model(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_51_4();
  type metadata accessor for ImageSourceModel();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_29_14();
  sub_26A68B8B4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A68B908();
      v30 = *(v13 + 28);
      sub_26A84B1D8();
      OUTLINED_FUNCTION_46();
      (*(v31 + 16))(v2, v0 + v30);
      OUTLINED_FUNCTION_25_18();
      v27 = v0;
      goto LABEL_7;
    case 2u:
      sub_26A68B908();
      v24 = *(v8 + 24);
      sub_26A84B1D8();
      OUTLINED_FUNCTION_46();
      (*(v25 + 16))(v2, v12 + v24);
      OUTLINED_FUNCTION_27_11();
      v27 = v12;
LABEL_7:
      sub_26A68BDA8(v27, v26);
      break;
    case 3u:

      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CD8) + 48);
      sub_26A84B1D8();
      OUTLINED_FUNCTION_46();
      (*(v29 + 32))(v2, v18 + v28);
      break;
    case 4u:
      swift_projectBox();
      v22 = sub_26A68B8B4();
      sub_26A68AC4C(v22);
      OUTLINED_FUNCTION_28_8();
      sub_26A68BDA8(v7, v23);

      break;
    default:
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CF0) + 48);
      sub_26A84B1D8();
      OUTLINED_FUNCTION_46();
      (*(v20 + 32))(v2, v18 + v19);
      sub_26A84B158();
      OUTLINED_FUNCTION_46();
      (*(v21 + 8))(v18);
      break;
  }

  OUTLINED_FUNCTION_27_0();
}

void sub_26A68AF94()
{
  OUTLINED_FUNCTION_28_0();
  v1 = sub_26A84AFC8();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13_6();
  v9 = sub_26A84B048();
  OUTLINED_FUNCTION_15();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41();
  v15 = v14 - v13;
  sub_26A84DF78();
  sub_26A84AFD8();
  v18 = *(v11 + 8);
  v19 = v9;
  v18(v15, v9);
  v17 = *(v3 + 104);
  v17(v7, *MEMORY[0x277D629C0], v1);
  sub_26A68BE00(&qword_2803B2D18, MEMORY[0x277D629D0]);
  OUTLINED_FUNCTION_44_6();
  sub_26A851A48();
  OUTLINED_FUNCTION_44_6();
  sub_26A851A48();
  v16 = *(v3 + 8);
  v16(v7, v1);
  v16(v0, v1);
  if (v21 != v20)
  {
    sub_26A84DF78();
    sub_26A84AFD8();
    v18(v15, v19);
    v17(v7, *MEMORY[0x277D629C8], v1);
    OUTLINED_FUNCTION_44_6();
    sub_26A851A48();
    OUTLINED_FUNCTION_44_6();
    sub_26A851A48();
    v16(v7, v1);
    v16(v0, v1);
  }

  OUTLINED_FUNCTION_27_0();
}

unint64_t sub_26A68B240()
{
  result = qword_2803B2CE0;
  if (!qword_2803B2CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2CC8);
    sub_26A68BE00(&qword_28157F9B0, type metadata accessor for AppIconView);
    sub_26A68B2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B2CE0);
  }

  return result;
}

unint64_t sub_26A68B2FC()
{
  result = qword_2803AB9A0;
  if (!qword_2803AB9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB9A0);
  }

  return result;
}

uint64_t sub_26A68B388()
{
  OUTLINED_FUNCTION_5_9();
  v0 = OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_5(v0);
  v1 = sub_26A84B408();
  OUTLINED_FUNCTION_2_5(v1);
  OUTLINED_FUNCTION_38_7();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_39_4(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_14_28(v3);
  v5 = OUTLINED_FUNCTION_66_3();

  return sub_26A688A00(v5, v6, v7, v8);
}

uint64_t objectdestroy_33Tm()
{
  OUTLINED_FUNCTION_28_0();
  v1 = sub_26A84B258();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_26A84B408();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = (*(v11 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  __swift_destroy_boxed_opaque_existential_1(v0 + v12);
  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A68B5E8()
{
  OUTLINED_FUNCTION_5_9();
  v0 = OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_5(v0);
  v1 = sub_26A84B408();
  OUTLINED_FUNCTION_2_5(v1);
  OUTLINED_FUNCTION_38_7();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_39_4(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_14_28(v3);
  v5 = OUTLINED_FUNCTION_66_3();

  return sub_26A6891C0(v5, v6, v7, v8);
}

uint64_t sub_26A68B714()
{
  OUTLINED_FUNCTION_1_10();
  v1 = *v0;
  OUTLINED_FUNCTION_0_12();
  *v2 = v1;

  OUTLINED_FUNCTION_2_9();

  return v3();
}

unint64_t sub_26A68B7F8()
{
  v0 = sub_26A84B408();
  OUTLINED_FUNCTION_79(v0);

  return sub_26A68950C();
}

uint64_t sub_26A68B854()
{
  v0 = sub_26A84B2B8();
  OUTLINED_FUNCTION_79(v0);

  return sub_26A68A1B4();
}

uint64_t sub_26A68B8B4()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A68B908()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A68B95C()
{
  OUTLINED_FUNCTION_5_9();
  v0 = OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_5(v0);
  v1 = type metadata accessor for EnvironmentImageSettings(0);
  OUTLINED_FUNCTION_2_5(v1);
  OUTLINED_FUNCTION_38_7();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_39_4(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_14_28(v3);
  OUTLINED_FUNCTION_66_3();

  return sub_26A68810C();
}

uint64_t objectdestroy_61Tm()
{
  OUTLINED_FUNCTION_28_0();
  v1 = sub_26A84B258();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for EnvironmentImageSettings(0);
  v8 = *(*(v7 - 8) + 80);
  v9 = (v4 + v6 + v8) & ~v8;
  v10 = *(*(v7 - 8) + 64);
  (*(v3 + 8))(v0 + v4, v1);
  v11 = v0 + v9;
  v12 = sub_26A84B1D8();
  v13 = OUTLINED_FUNCTION_13_7();
  if (!__swift_getEnumTagSinglePayload(v13, v14, v12))
  {
    (*(*(v12 - 8) + 8))(v0 + v9, v12);
  }

  v15 = *(v7 + 28);
  v16 = sub_26A84B2B8();
  if (!__swift_getEnumTagSinglePayload(v11 + v15, 1, v16))
  {
    (*(*(v16 - 8) + 8))(v11 + v15, v16);
  }

  v17 = (v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 47) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v0 + v17);
  __swift_destroy_boxed_opaque_existential_1(v0 + v18);
  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A68BC70()
{
  OUTLINED_FUNCTION_5_9();
  v0 = OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_2_5(v0);
  v1 = type metadata accessor for EnvironmentImageSettings(0);
  OUTLINED_FUNCTION_2_5(v1);
  OUTLINED_FUNCTION_38_7();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_39_4(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_14_28(v3);
  OUTLINED_FUNCTION_66_3();

  return sub_26A6882BC();
}

uint64_t sub_26A68BDA8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A68BE00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_18(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_26A68BED0()
{
  v0 = sub_26A84B258();
  OUTLINED_FUNCTION_79(v0);
  return sub_26A688014();
}

uint64_t sub_26A68BF20()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v0 = sub_26A852068();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_26A68BFA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_17:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 254;
}

void sub_26A68C100(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 > v6)
  {
    v6 = v7;
  }

  v8 = v6 + 1;
  v9 = 8 * (v6 + 1);
  if (a3 < 0xFE)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((a3 + ~(-1 << v9) - 253) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFD)
  {
    v11 = a2 - 254;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v6 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_28;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v6] = -a2;
        }

        break;
    }
  }
}

uint64_t OUTLINED_FUNCTION_32_9()
{

  return sub_26A84B258();
}

id OUTLINED_FUNCTION_59_3@<X0>(void *a1@<X8>)
{

  return sub_26A83115C(v1, v2, 0, 0, 1, a1);
}

uint64_t sub_26A68CB8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = OUTLINED_FUNCTION_13_1();
  v9 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(v8);
  v10 = OUTLINED_FUNCTION_79(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  v13 = v12 - v11;
  v14 = type metadata accessor for ComponentSeparatorsConfiguration(0);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v15 = OUTLINED_FUNCTION_11_34();
  a4(v15);
  sub_26A68C628(a1);
  sub_26A68D5E4(v13);
  v16 = sub_26A84BBF8();
  OUTLINED_FUNCTION_46();
  v18 = *(v17 + 32);
  v18(v4, v5, v16);
  v19 = type metadata accessor for SeparatorsConfig(0);
  v20 = OUTLINED_FUNCTION_8_47(v19);
  (v18)(v20);
  v21 = type metadata accessor for SeparatorConfig(0);
  return OUTLINED_FUNCTION_2_64(v21);
}

uint64_t sub_26A68CD2C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_13_1();
  v5 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(v4);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v9 = v8 - v7;
  type metadata accessor for ComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_5_48();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_37();
  sub_26A75ABD0();
  sub_26A68C628(a1);
  sub_26A68D5E4(v9);
  v11 = sub_26A84BBF8();
  OUTLINED_FUNCTION_46();
  v13 = *(v12 + 32);
  v13(v1, v2, v11);
  v14 = type metadata accessor for SeparatorsConfig(0);
  v15 = OUTLINED_FUNCTION_7_47(v14);
  (v13)(v15);
  v16 = type metadata accessor for SeparatorConfig(0);
  return OUTLINED_FUNCTION_2_64(v16);
}

uint64_t sub_26A68CF34(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v9 = OUTLINED_FUNCTION_13_1();
  v10 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(v9);
  v11 = OUTLINED_FUNCTION_79(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v14 = v13 - v12;
  type metadata accessor for ComponentSeparatorsConfiguration(0);
  OUTLINED_FUNCTION_5_48();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v16 = OUTLINED_FUNCTION_10_37();
  a4(v16, a2);
  sub_26A68C628(a1);
  sub_26A68D5E4(v14);
  v17 = sub_26A84BBF8();
  OUTLINED_FUNCTION_46();
  v19 = *(v18 + 32);
  v19(v4, v5, v17);
  v20 = type metadata accessor for SeparatorsConfig(0);
  v21 = OUTLINED_FUNCTION_7_47(v20);
  (v19)(v21);
  v22 = type metadata accessor for SeparatorConfig(0);
  return OUTLINED_FUNCTION_2_64(v22);
}

uint64_t sub_26A68D064(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_13_1();
  v5 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(v4);
  v6 = OUTLINED_FUNCTION_79(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_41();
  v9 = v8 - v7;
  v10 = type metadata accessor for ComponentSeparatorsConfiguration(0);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_11_34();
  sub_26A75A1B8();
  sub_26A68C628(a1);
  sub_26A68D5E4(v9);
  v11 = sub_26A84BBF8();
  OUTLINED_FUNCTION_46();
  v13 = *(v12 + 32);
  v13(v1, v2, v11);
  v14 = type metadata accessor for SeparatorsConfig(0);
  v15 = OUTLINED_FUNCTION_8_47(v14);
  (v13)(v15);
  v16 = type metadata accessor for SeparatorConfig(0);
  return OUTLINED_FUNCTION_2_64(v16);
}

uint64_t sub_26A68D194(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v27 = a4;
  v9 = OUTLINED_FUNCTION_13_1();
  v10 = type metadata accessor for SeparatorConfig(v9);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  type metadata accessor for SeparatorsConfig(0);
  OUTLINED_FUNCTION_5_48();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  v27(a1, a2, a3);
  sub_26A68D77C(v20, v16, type metadata accessor for SeparatorConfig);
  v21 = sub_26A84BBF8();
  OUTLINED_FUNCTION_46();
  v23 = *(v22 + 32);
  v23(v4, v16, v21);
  sub_26A68D77C(v20 + *(v5 + 28), v13, type metadata accessor for SeparatorConfig);
  v24 = v4 + *(v5 + 28);
  result = (v23)(v24, v13, v21);
  *(v4 + *(v11 + 28)) = 1;
  *(v24 + *(v11 + 28)) = 1;
  return result;
}

uint64_t sub_26A68D5E4(uint64_t a1)
{
  v2 = type metadata accessor for IdiomDependentComponentSeparatorsConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A68D640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentSeparatorsConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A68D6A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2DD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A68D714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2DD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A68D77C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_64(uint64_t result)
{
  *(v1 + *(result + 20)) = 0;
  *(v2 + *(result + 20)) = 0;
  return result;
}

unint64_t sub_26A68D9B8()
{
  result = qword_28157D7D0;
  if (!qword_28157D7D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28157D7D0);
  }

  return result;
}

id sub_26A68DBE4()
{
  v1 = v0;
  v2 = sub_26A850D48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 red];
  if (result || (result = [v0 green]) != 0 || (result = objc_msgSend(v0, sel_blue)) != 0)
  {

    v7 = [v0 red];
    if (!v7)
    {
      sub_26A68D9B8();
      v7 = sub_26A851FC8();
    }

    sub_26A84E5E8();

    v8 = [v1 green];
    if (!v8)
    {
      sub_26A68D9B8();
      v8 = sub_26A851FC8();
    }

    sub_26A84E5E8();

    v9 = [v1 blue];
    if (!v9)
    {
      sub_26A68D9B8();
      v9 = sub_26A851FC8();
    }

    sub_26A84E5E8();

    (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
    return sub_26A850E98();
  }

  return result;
}

uint64_t type metadata accessor for ImageStyleAppearance()
{
  result = qword_2803B2DE0;
  if (!qword_2803B2DE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A68DE84()
{
  sub_26A5046B4();
  if (v0 <= 0x3F)
  {
    sub_26A68DF30();
    if (v1 <= 0x3F)
    {
      sub_26A68DF80();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A68DF30()
{
  if (!qword_2803B2DF0)
  {
    v0 = sub_26A852068();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B2DF0);
    }
  }
}

void sub_26A68DF80()
{
  if (!qword_28157FFE8)
  {
    sub_26A84B1D8();
    v0 = sub_26A852068();
    if (!v1)
    {
      atomic_store(v0, &qword_28157FFE8);
    }
  }
}

uint64_t sub_26A68DFE0()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A73E74C();
  return OUTLINED_FUNCTION_5_7(v0);
}

void SummaryItemStandardView.init(text1:text2:text3:text4:thumbnail:)()
{
  OUTLINED_FUNCTION_28_0();
  v41 = v1;
  v42 = v0;
  v2 = type metadata accessor for SummaryItemStandardView(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v6 = (v5 - v4);
  v8 = (v5 - v4 + *(v7 + 36));
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  __swift_project_value_buffer(v9, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  sub_26A4EF6D0();
  sub_26A6AEE74(v45);
  memcpy(v8, v45, 0xBFuLL);
  OUTLINED_FUNCTION_1_64();
  sub_26A693494();
  v10 = (v6 + v2[10]);
  if (qword_2803A8C48 != -1)
  {
    OUTLINED_FUNCTION_7_48();
  }

  v46 = xmmword_2803D1DE8;
  v47 = unk_2803D1DF8;
  v48 = xmmword_2803D1E08;
  v49 = unk_2803D1E18;
  v50 = xmmword_2803D1DE8;
  v51 = unk_2803D1DF8;
  v52 = xmmword_2803D1E08;
  v53 = unk_2803D1E18;
  v37 = unk_2803D1E18;
  v39 = xmmword_2803D1E08;
  sub_26A4EF6D0();
  sub_26A6AEE74(v54);
  memcpy(v10, v54, 0xC0uLL);
  v10[12] = v39;
  v10[13] = v37;
  v11 = v53;
  v10[16] = v52;
  v10[17] = v11;
  v12 = v51;
  v10[14] = v50;
  v10[15] = v12;
  v13 = (v6 + v2[11]);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v55 = xmmword_281588758[0];
  v56 = unk_281588768;
  v57 = xmmword_281588778;
  v58 = unk_281588788;
  v59 = xmmword_281588758[0];
  v60 = unk_281588768;
  v61 = xmmword_281588778;
  v62 = unk_281588788;
  v38 = unk_281588788;
  v40 = xmmword_281588778;
  sub_26A4EF6D0();
  sub_26A6AEE74(v63);
  memcpy(v13, v63, 0xC0uLL);
  v13[12] = v40;
  v13[13] = v38;
  v14 = v60;
  v13[14] = v59;
  v13[15] = v14;
  v15 = v62;
  v13[16] = v61;
  v13[17] = v15;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(KeyPath);
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v17);
  v18 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v18);
  v19 = v2[15];
  *(v6 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v20 = v2[16];
  *(v6 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v21 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v21);
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v22);
  v23 = v42[3];
  v24 = v42[4];
  __swift_project_boxed_opaque_existential_1(v42, v23);
  *v6 = (*(v24 + 8))(v23, v24);
  sub_26A4EF6D0();
  if (v44)
  {
    v25 = OUTLINED_FUNCTION_2_65();
    v27 = v26(v25);
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    sub_26A4D6FD8();
    v27 = 0;
  }

  v6[1] = v27;
  sub_26A4EF6D0();
  if (v44)
  {
    v28 = OUTLINED_FUNCTION_2_65();
    v30 = v29(v28);
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    sub_26A4D6FD8();
    v30 = 0;
  }

  v6[2] = v30;
  sub_26A4EF6D0();
  if (v44)
  {
    v31 = OUTLINED_FUNCTION_2_65();
    v33 = v32(v31);
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    sub_26A4D6FD8();
    v33 = 0;
  }

  v6[3] = v33;
  sub_26A4EF6D0();
  if (v44)
  {
    v34 = OUTLINED_FUNCTION_2_65();
    v36 = v35(v34);
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_229();
    OUTLINED_FUNCTION_229();
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_30_1();
    v36 = 0;
  }

  v6[4] = v36;
  sub_26A5C9CDC(v6, v41);
  __swift_destroy_boxed_opaque_existential_1(v42);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A68E5E4()
{
  OUTLINED_FUNCTION_6_8();
  v0 = sub_26A73E78C();
  return OUTLINED_FUNCTION_5_7(v0);
}

uint64_t sub_26A68E630()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A5D7BB8();
  *v0 = result;
  return result;
}

uint64_t sub_26A68E67C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SummaryItemStandardView(0) + 48);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_26A68E7D4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SummaryItemStandardView(0) + 52);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_26A68E92C()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for SummaryItemStandardView(0) + 56);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v9, 0);
    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v9;
}

uint64_t sub_26A68EA5C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for SummaryItemStandardView(0);
  sub_26A4EF6D0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84F3A8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_26A68EC64()
{
  v0 = sub_26A84F988();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v4);
  type metadata accessor for SummaryItemStandardView(0);
  sub_26A4EF6D0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4EF020();
  }

  sub_26A851EA8();
  v6 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_26A68EE4C()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SummaryItemStandardView(0) + 68);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

void SummaryItemStandardView.init(model:)()
{
  OUTLINED_FUNCTION_28_0();
  v67 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v66 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  OUTLINED_FUNCTION_79(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v7);
  v65 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830);
  v10 = OUTLINED_FUNCTION_79(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v62 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v61 = &v58 - v14;
  sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v63 = v16;
  v64 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v60 = v18 - v17;
  v19 = type metadata accessor for SummaryItemStandardView(0);
  v20 = v2 + v19[9];
  if (qword_28157E670 != -1)
  {
    OUTLINED_FUNCTION_146();
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  __swift_project_value_buffer(v21, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  sub_26A4EF6D0();
  sub_26A6AEE74(v68);
  memcpy(v20, v68, 0xBFuLL);
  OUTLINED_FUNCTION_1_64();
  sub_26A693494();
  v22 = (v2 + v19[10]);
  if (qword_2803A8C48 != -1)
  {
    OUTLINED_FUNCTION_7_48();
  }

  v69 = xmmword_2803D1DE8;
  v70 = unk_2803D1DF8;
  v71 = xmmword_2803D1E08;
  v72 = unk_2803D1E18;
  v73 = xmmword_2803D1DE8;
  v74 = unk_2803D1DF8;
  v75 = xmmword_2803D1E08;
  v76 = unk_2803D1E18;
  v58 = unk_2803D1E18;
  v59 = xmmword_2803D1E08;
  sub_26A4EF6D0();
  sub_26A6AEE74(v77);
  memcpy(v22, v77, 0xC0uLL);
  v23 = v58;
  v22[12] = v59;
  v22[13] = v23;
  v24 = v76;
  v22[16] = v75;
  v22[17] = v24;
  v25 = v74;
  v22[14] = v73;
  v22[15] = v25;
  v26 = (v2 + v19[11]);
  v27 = v67;
  v29 = v63;
  v28 = v64;
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v78 = xmmword_281588758[0];
  v79 = unk_281588768;
  v80 = xmmword_281588778;
  v81 = unk_281588788;
  v82 = xmmword_281588758[0];
  v83 = unk_281588768;
  v84 = xmmword_281588778;
  v85 = unk_281588788;
  v58 = unk_281588788;
  v59 = xmmword_281588778;
  sub_26A4EF6D0();
  sub_26A6AEE74(v86);
  memcpy(v26, v86, 0xC0uLL);
  v30 = v58;
  v26[12] = v59;
  v26[13] = v30;
  v31 = v83;
  v26[14] = v82;
  v26[15] = v31;
  v32 = v85;
  v26[16] = v84;
  v26[17] = v32;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(KeyPath);
  v34 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v34);
  v35 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v35);
  v36 = v19[15];
  *(v2 + v36) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v37 = v19[16];
  *(v2 + v37) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v38 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v38);
  v39 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v39);
  v40 = v60;
  sub_26A84CD18();
  v41 = TextProperty.asAnyView()();
  v42 = *(v29 + 8);
  v42(v40, v28);
  *v2 = v41;
  v43 = v61;
  sub_26A84CD28();
  v44 = sub_26A84D098();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v44);
  v46 = v62;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4D6FD8();
    v47 = 0;
  }

  else
  {
    v47 = v43;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_24_20();
    (*(v48 + 8))(v43, v44);
  }

  v49 = v65;
  v2[1] = v47;
  sub_26A84CD38();
  if (__swift_getEnumTagSinglePayload(v46, 1, v44) == 1)
  {
    sub_26A4D6FD8();
    v50 = 0;
  }

  else
  {
    v50 = v46;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_24_20();
    (*(v51 + 8))(v46, v44);
  }

  v2[2] = v50;
  sub_26A84CD48();
  if (__swift_getEnumTagSinglePayload(v49, 1, v28) == 1)
  {
    sub_26A4D6FD8();
    v52 = 0;
  }

  else
  {
    v52 = TextProperty.asAnyView()();
    v42(v49, v28);
  }

  v2[3] = v52;
  v53 = v66;
  sub_26A84CD68();
  v54 = sub_26A84BD28();
  if (__swift_getEnumTagSinglePayload(v53, 1, v54) == 1)
  {
    sub_26A84CD78();
    OUTLINED_FUNCTION_46();
    (*(v55 + 8))(v27);
    sub_26A4D6FD8();
    v56 = 0;
  }

  else
  {
    v56 = VisualProperty.asAnyView()();
    sub_26A84CD78();
    OUTLINED_FUNCTION_46();
    (*(v57 + 8))(v27);
    (*(*(v54 - 8) + 8))(v53, v54);
  }

  v2[4] = v56;
  OUTLINED_FUNCTION_27_0();
}

uint64_t SummaryItemStandardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v21[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  sub_26A68EC64();
  sub_26A68F974(v23);
  sub_26A68E92C();
  sub_26A68EA5C(v6);
  sub_26A84F3A8();
  OUTLINED_FUNCTION_22_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v22 = v1;
  sub_26A4C605C();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_26A68CCBC;
  *(v13 + 24) = 0;
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2DF8) + 36);
  *(v14 + 16) = swift_getKeyPath();
  *(v14 + 24) = 0;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8) + 40);
  *(v14 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(KeyPath);
  *v14 = sub_26A4D1F7C;
  *(v14 + 8) = v13;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2E00) + 36)) = 8;
  v17 = swift_getKeyPath();
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  v18 = byte_2803B0441;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2E08);
  v20 = a1 + *(result + 36);
  *v20 = v17;
  *(v20 + 8) = v18;
  return result;
}

uint64_t sub_26A68F974@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A68E92C();
  if (sub_26A61B05C(v4, &unk_287B13068) && (sub_26A68E67C() & 1) == 0)
  {
    result = type metadata accessor for SummaryItemStandardView(0);
    v12 = 0;
    v15 = (v1 + *(result + 40));
    v11 = v15[12];
    v13 = v15[13];
  }

  else if (sub_26A68EE4C() & 1) != 0 && (sub_26A68E7D4())
  {
    v5 = type metadata accessor for SummaryItemStandardView(0);
    v6 = (v1 + *(v5 + 44));
    v28 = v6[12];
    v7 = v6[13].f64[1];
    v8 = v2 + *(v5 + 36);
    v9 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0) + 28);
    result = type metadata accessor for SummaryItemConstants();
    v11 = v28;
    v12 = 0;
    v13.f64[0] = *(v9 + *(result + 44));
    v13.f64[1] = v7;
  }

  else
  {
    if (qword_2803A8BF8 != -1)
    {
      swift_once();
    }

    if (byte_2803B0441 == 1 && (v14 = sub_26A68E92C(), sub_26A61B05C(v14, &unk_287B131A0)))
    {
      sub_26A4D7E10();
      switch(sub_26A63CD18())
      {
        case 1u:
        case 2u:
        case 3u:
          v16 = sub_26A852598();

          if ((v16 & 1) == 0)
          {
            goto LABEL_15;
          }

          break;
        case 4u:
          goto LABEL_15;
        default:

          break;
      }

      v17 = type metadata accessor for SummaryItemStandardView(0);
      v18 = v2 + *(v17 + 36);
      v19 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0) + 28);
      result = type metadata accessor for SummaryItemConstants();
      v12 = 0;
      v20 = v2 + *(v17 + 44);
      v11.f64[0] = *(v20 + 192) + -4.0;
      v13.f64[0] = *(v20 + 208) + -4.0;
      v11.f64[1] = *(v19 + *(result + 48));
      v13.f64[1] = v11.f64[1];
    }

    else
    {
LABEL_15:
      v21 = sub_26A68E92C();
      result = sub_26A61B05C(v21, &unk_287B13090);
      if ((result & 1) == 0)
      {
        goto LABEL_20;
      }

      if (qword_2803A8BF0 != -1)
      {
        result = swift_once();
      }

      if (byte_2803B0440 == 1)
      {
        result = type metadata accessor for SummaryItemStandardView(0);
        v12 = 0;
        v22 = (v1 + *(result + 44));
        __asm { FMOV            V2.2D, #10.0 }

        v13 = vaddq_f64(v22[13], _Q2);
        v11 = vaddq_f64(v22[12], _Q2);
      }

      else
      {
LABEL_20:
        v11 = 0uLL;
        v12 = 1;
        v13 = 0uLL;
      }
    }
  }

  *a1 = v11;
  *(a1 + 16) = v13;
  *(a1 + 32) = v12;
  return result;
}

uint64_t sub_26A68FC74@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[1];
  if (v4)
  {
    v5 = &protocol witness table for AnyView;
    v6 = MEMORY[0x277CE11C8];
    v7 = v4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v56 = 0;
    v57 = 0;
  }

  v8 = *a1;
  v55 = v7;
  v58 = v6;
  v59 = v5;
  if (a1[2])
  {
    v9 = &protocol witness table for AnyView;
    v10 = MEMORY[0x277CE11C8];
    v11 = a1[2];
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v51 = 0;
    v52 = 0;
  }

  v50 = v11;
  v53 = v10;
  v54 = v9;
  if (a1[3])
  {
    v12 = &protocol witness table for AnyView;
    v13 = MEMORY[0x277CE11C8];
    v14 = a1[3];
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v46 = 0;
    v47 = 0;
  }

  v45 = v14;
  v48 = v13;
  v49 = v12;
  v15 = a1[4];
  if (v15)
  {
    v16 = &protocol witness table for AnyView;
    v17 = MEMORY[0x277CE11C8];
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v41 = 0;
    v42 = 0;
  }

  v40 = v15;
  v43 = v17;
  v44 = v16;
  v18 = qword_28157E670;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  __swift_project_value_buffer(v19, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  sub_26A4EF6D0();
  sub_26A6AEE74(__src);
  memcpy(a2, __src, 0xBFuLL);
  sub_26A693494();
  v20 = type metadata accessor for SummaryItemStandardLayout(0);
  v21 = v20[5];
  *&a2[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v22 = &a2[v20[6]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  *&a2[v20[7]] = v8;
  sub_26A4EF6D0();
  v23 = v38;
  if (v38)
  {
    v24 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v25 = *(v24 + 8);

    v26 = v25(v23, v24);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {

    sub_26A4D6FD8();
    v26 = 0;
  }

  *&a2[v20[8]] = v26;
  sub_26A4EF6D0();
  v27 = v38;
  if (v38)
  {
    v28 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v29 = (*(v28 + 8))(v27, v28);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_26A4D6FD8();
    v29 = 0;
  }

  *&a2[v20[9]] = v29;
  sub_26A4EF6D0();
  v30 = v38;
  if (v38)
  {
    v31 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v32 = (*(v31 + 8))(v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_26A4D6FD8();
    v32 = 0;
  }

  *&a2[v20[10]] = v32;
  sub_26A4EF6D0();
  v33 = v38;
  if (v38)
  {
    v34 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v35 = (*(v34 + 8))(v33, v34);
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    result = __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    result = sub_26A4D6FD8();
    v35 = 0;
  }

  *&a2[v20[11]] = v35;
  return result;
}

uint64_t sub_26A6901C0()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for SummaryItemStandardLayout(0) + 24);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    OUTLINED_FUNCTION_55();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v9, 0);
    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v9;
}

uint64_t sub_26A6902F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2E28);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v1);
  sub_26A6903A8(v0, &v4 - v2);
  sub_26A692E14();
  sub_26A850AF8();
  return OUTLINED_FUNCTION_229();
}

uint64_t sub_26A6903A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2ED0);
  MEMORY[0x28223BE20](v39);
  v29 = v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = (v28 - v5);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2EB0);
  MEMORY[0x28223BE20](v30);
  v31 = v28 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2EA0);
  MEMORY[0x28223BE20](v36);
  v33 = v28 - v7;
  v8 = sub_26A84F3A8();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F08);
  MEMORY[0x28223BE20](v37);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F10);
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2E50);
  MEMORY[0x28223BE20](v12);
  v14 = v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2E60);
  MEMORY[0x28223BE20](v15);
  v17 = v28 - v16;
  v18 = a1;
  v19 = sub_26A6901C0();
  if (sub_26A61B05C(v19, &unk_287B13068))
  {
    sub_26A690AE8(v17);
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A692FB0();
    sub_26A693180();
    sub_26A84FDF8();
    sub_26A4EF6D0();
    swift_storeEnumTagMultiPayload();
    sub_26A692F24();
    sub_26A6932C4();
    sub_26A84FDF8();
    sub_26A4D6FD8();
  }

  else
  {
    v28[0] = v15;
    v28[1] = v11;
    v28[2] = v14;
    v20 = v36;
    v28[3] = v12;
    type metadata accessor for SummaryItemStandardLayout(0);
    sub_26A72003C(v10);
    v21 = sub_26A84F388();
    (*(v34 + 8))(v10, v35);
    if (v21)
    {
      v22 = sub_26A84FC08();
      v23 = *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0) + 28));
      v24 = v32;
      *v32 = v22;
      v24[1] = v23;
      *(v24 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F18);
      sub_26A691FF4();
      sub_26A851458();
      sub_26A84F628();
      v25 = v31;
      sub_26A4EF020();
      memcpy(&v25[*(v30 + 36)], __src, 0x70uLL);
      v26 = v33;
      sub_26A4EF020();
      *&v26[*(v20 + 36)] = 256;
      sub_26A4EF6D0();
      swift_storeEnumTagMultiPayload();
      sub_26A692FB0();
      sub_26A693180();
      sub_26A84FDF8();
      sub_26A4EF6D0();
      swift_storeEnumTagMultiPayload();
      sub_26A692F24();
      sub_26A6932C4();
      sub_26A84FDF8();
      sub_26A4D6FD8();
    }

    else
    {
      sub_26A690D14(v29);
      sub_26A4EF6D0();
      swift_storeEnumTagMultiPayload();
      sub_26A692F24();
      sub_26A6932C4();
      sub_26A84FDF8();
    }
  }

  return sub_26A4D6FD8();
}

uint64_t sub_26A690AE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2E80);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &__src[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2E70);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &__src[-v10];
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0) + 28);
  v13 = sub_26A84FA78();
  v14 = *(v2 + v12);
  *v7 = v13;
  *(v7 + 1) = v14;
  v7[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F20);
  sub_26A691D58(v2, (v2 + v12));
  *&v7[*(v5 + 44)] = 256;
  sub_26A851458();
  sub_26A84F628();
  sub_26A4EF020();
  memcpy(&v11[*(v9 + 44)], __src, 0x70uLL);
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  sub_26A4EF020();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2E60);
  v18 = a1 + *(result + 36);
  *v18 = KeyPath;
  *(v18 + 8) = 0;
  *(v18 + 16) = v16;
  *(v18 + 24) = 256;
  return result;
}

uint64_t sub_26A690D14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2EF0);
  MEMORY[0x28223BE20](v3);
  v5 = v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2EE0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2ED0);
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = type metadata accessor for SummaryItemConstants();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  sub_26A693494();
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  if (byte_2803B0441 == 1 && (v15 = sub_26A6901C0(), sub_26A61B05C(v15, &unk_287B131A0)))
  {
    sub_26A4D7E10();
    v16 = 1;
    v17 = 0;
    switch(sub_26A63CD18())
    {
      case 1u:
      case 2u:
      case 3u:
        v16 = sub_26A852598();
        goto LABEL_8;
      case 4u:
        break;
      default:
LABEL_8:

        v17 = v16;
        break;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_26A84FA78();
  v19 = *v14;
  *v5 = v18;
  *(v5 + 1) = v19;
  v5[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F50);
  sub_26A691150(v2, v14, v17 & 1, &v5[*(v20 + 44)]);
  *&v5[*(v3 + 36)] = 256;
  sub_26A851458();
  sub_26A84F628();
  sub_26A4EF020();
  memcpy(&v8[*(v6 + 36)], __src, 0x70uLL);
  KeyPath = swift_getKeyPath();
  v22 = swift_getKeyPath();
  sub_26A4EF020();
  v23 = &v11[*(v9 + 36)];
  *v23 = KeyPath;
  v23[8] = 0;
  *(v23 + 2) = v22;
  *(v23 + 12) = 256;
  sub_26A4EF020();
  return sub_26A6934EC();
}

uint64_t sub_26A691150@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v55 = a3;
  v54 = a2;
  v6 = type metadata accessor for SummaryItemStandardTextLayout();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F58);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F60);
  MEMORY[0x28223BE20](v15);
  v57 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v56 = v46 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F68);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v46 - v23;
  v25 = *(a1 + *(type metadata accessor for SummaryItemStandardLayout(0) + 44));
  v26 = 1;
  if (v25)
  {
    v47 = v15;
    v48 = v24;
    v49 = v21;
    v51 = v11;
    v52 = a4;
    v53 = v8;
    *v14 = sub_26A84FA58();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F78) + 44);
    v46[1] = v14;
    v28 = &v14[v27];
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0) + 28);
    v30 = *(type metadata accessor for SummaryItemConstants() + 36);
    v50 = a1;
    v31 = a1 + v30;
    KeyPath = swift_getKeyPath();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
    v34 = &v28[*(v33 + 36)];
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
    v36 = sub_26A84B1D8();
    (*(*(v36 - 8) + 16))(v34 + v35, v31 + v29, v36);
    __swift_storeEnumTagSinglePayload(v34 + v35, 0, 1, v36);
    *v34 = KeyPath;
    *v28 = v25;
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v33);
    v37 = swift_getKeyPath();
    v38 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F30) + 36)];
    *v38 = v37;
    v38[8] = 1;
    v39 = swift_getKeyPath();
    v40 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F38) + 36)];
    *v40 = v39;
    v40[8] = 0;
    v41 = *v54;
    v42 = swift_getKeyPath();
    v43 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F28) + 36)];
    *v43 = v42;
    v43[8] = 0;
    *(v43 + 2) = v41;

    if (v55)
    {
      sub_26A851448();
    }

    else
    {
      sub_26A851438();
    }

    v24 = v48;
    v15 = v47;
    sub_26A84F628();
    v44 = v57;
    sub_26A4EF020();
    memcpy(&v44[*(v15 + 36)], __src, 0x70uLL);
    sub_26A4EF020();
    sub_26A4EF020();
    v26 = 0;
    v11 = v51;
  }

  __swift_storeEnumTagSinglePayload(v24, v26, 1, v15);
  sub_26A6918A4(v11);
  sub_26A4EF6D0();
  sub_26A693494();
  sub_26A4EF6D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F70);
  sub_26A693494();
  sub_26A6934EC();
  sub_26A4D6FD8();
  sub_26A6934EC();
  return sub_26A4D6FD8();
}

uint64_t sub_26A691754()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v3 = *(v0 + *(type metadata accessor for SummaryItemStandardLayout(0) + 44));
  if (v3)
  {
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0) + 28);
    v5 = v0 + *(type metadata accessor for SummaryItemConstants() + 36);
    KeyPath = swift_getKeyPath();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
    v8 = (v2 + *(v7 + 36));
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440) + 28);
    v10 = sub_26A84B1D8();
    OUTLINED_FUNCTION_46();
    (*(v11 + 16))(v8 + v9, v5 + v4, v10);
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v10);
    *v8 = KeyPath;
    *v2 = v3;
    OUTLINED_FUNCTION_22_0();
    v18 = v7;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAFA0);
    v15 = v2;
    v16 = 1;
    v17 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A6918A4@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for SummaryItemStandardLayout(0);
  v4 = v3[7];
  if (*(v1 + v3[8]))
  {
    v5 = &protocol witness table for AnyView;
    v6 = MEMORY[0x277CE11C8];
    v7 = *(v1 + v3[8]);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v55 = 0;
    v56 = 0;
  }

  v8 = *(v1 + v4);
  v54 = v7;
  v57 = v6;
  v58 = v5;
  if (*(v1 + v3[9]))
  {
    v9 = &protocol witness table for AnyView;
    v10 = MEMORY[0x277CE11C8];
    v11 = *(v1 + v3[9]);
  }

  else
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v50 = 0;
    v51 = 0;
  }

  v49 = v11;
  v52 = v10;
  v53 = v9;
  v12 = *(v1 + v3[10]);
  if (v12)
  {
    v13 = &protocol witness table for AnyView;
    v14 = MEMORY[0x277CE11C8];
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v45 = 0;
    v46 = 0;
  }

  v44 = v12;
  v47 = v14;
  v48 = v13;
  v15 = qword_28157E670;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_146();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  __swift_project_value_buffer(v16, qword_281588798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  sub_26A4EF6D0();
  sub_26A6AEE74(__src);
  memcpy(a1, __src, 0xBFuLL);
  OUTLINED_FUNCTION_1_64();
  sub_26A693494();
  v17 = type metadata accessor for SummaryItemStandardTextLayout();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v19 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v19);
  v20 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v20);
  v21 = v17[8];
  *&a1[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v22 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v22);
  v23 = &a1[v17[10]];
  v42 = 0;
  v43 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA470);
  sub_26A851048();
  v24 = v38;
  v25 = v39;
  *v23 = v37;
  v23[8] = v24;
  *(v23 + 2) = v25;
  *&a1[v17[12]] = v8;
  sub_26A4EF6D0();
  v26 = v40;
  if (v40)
  {
    v27 = v41;
    __swift_project_boxed_opaque_existential_1(&v37, v40);
    v28 = *(v27 + 8);

    v29 = v28(v26, v27);
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {

    sub_26A4D6FD8();
    v29 = 0;
  }

  *&a1[v17[13]] = v29;
  sub_26A4EF6D0();
  if (v40)
  {
    __swift_project_boxed_opaque_existential_1(&v37, v40);
    v30 = OUTLINED_FUNCTION_0_7();
    v32 = v31(v30);
    __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    sub_26A4D6FD8();
    v32 = 0;
  }

  *&a1[v17[14]] = v32;
  sub_26A4EF6D0();
  if (v40)
  {
    __swift_project_boxed_opaque_existential_1(&v37, v40);
    v33 = OUTLINED_FUNCTION_0_7();
    v35 = v34(v33);
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    result = __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  else
  {
    OUTLINED_FUNCTION_14_22();
    OUTLINED_FUNCTION_14_22();
    OUTLINED_FUNCTION_14_22();
    result = OUTLINED_FUNCTION_14_22();
    v35 = 0;
  }

  *&a1[v17[15]] = v35;
  a1[v17[11]] = 1;
  return result;
}

uint64_t sub_26A691D58(uint64_t a1, uint64_t *a2)
{
  v20 = a2;
  v2 = type metadata accessor for SummaryItemStandardTextLayout();
  MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F28);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  sub_26A691754();
  KeyPath = swift_getKeyPath();
  v12 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F30) + 36)];
  *v12 = KeyPath;
  v12[8] = 1;
  v13 = swift_getKeyPath();
  v14 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F38) + 36)];
  *v14 = v13;
  v14[8] = 0;
  v15 = *v20;
  v16 = swift_getKeyPath();
  v17 = &v10[*(v7 + 44)];
  *v17 = v16;
  v17[8] = 0;
  *(v17 + 2) = v15;
  sub_26A6918A4(v5);
  sub_26A4EF6D0();
  sub_26A693494();
  sub_26A4EF6D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F40);
  sub_26A693494();
  sub_26A6934EC();
  sub_26A4D6FD8();
  sub_26A6934EC();
  return sub_26A4D6FD8();
}

uint64_t sub_26A691FF4()
{
  v0 = type metadata accessor for SummaryItemStandardTextLayout();
  MEMORY[0x28223BE20](v0 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F38);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  sub_26A691754();
  KeyPath = swift_getKeyPath();
  v10 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F30) + 36)];
  *v10 = KeyPath;
  v10[8] = 1;
  v11 = swift_getKeyPath();
  v12 = &v8[*(v5 + 44)];
  *v12 = v11;
  v12[8] = 0;
  sub_26A6918A4(v3);
  sub_26A4EF6D0();
  sub_26A693494();
  sub_26A4EF6D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2F48);
  sub_26A693494();
  sub_26A6934EC();
  sub_26A4D6FD8();
  sub_26A6934EC();
  return sub_26A4D6FD8();
}

void sub_26A692244()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v50 = v3;
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v49 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v12 = sub_26A84CD78();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  v18 = v17 - v16;
  v19 = type metadata accessor for SummaryItemStandardView(0);
  v20 = OUTLINED_FUNCTION_79(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_41();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAA68);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v25);
  v27 = &v48 - v26;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAA70);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_0();
  v53 = v29 - v30;
  v32 = MEMORY[0x28223BE20](v31);
  (*(v14 + 16))(v18, v1, v12, v32);
  v52 = v23;
  SummaryItemStandardView.init(model:)();
  v55 = v1;
  v33 = v51;
  sub_26A84CD58();
  sub_26A4EF020();
  if (__swift_getEnumTagSinglePayload(v10, 1, v33) == 1)
  {
    sub_26A4D6FD8();
    KeyPath = swift_getKeyPath();
    v35 = &v27[*(v24 + 36)];
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v37 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v35 + v36, 1, 1, v37);
    *v35 = KeyPath;
  }

  else
  {
    v38 = v49;
    v39 = *(v50 + 32);
    v39(v49, v10, v33);
    v40 = swift_getKeyPath();
    v41 = &v27[*(v24 + 36)];
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0);
    v39(v41 + *(v42 + 28), v38, v33);
    v43 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_22_0();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
    *v41 = v40;
  }

  sub_26A5C9CDC(v52, v27);
  v47 = sub_26A84CCE8();
  sub_26A4DD8D4(v47);

  sub_26A4D6FD8();
  sub_26A84CCF8();

  sub_26A4EF6D0();
  sub_26A693540();
  sub_26A851248();
  sub_26A4D6FD8();
  OUTLINED_FUNCTION_27_0();
}

unint64_t sub_26A6926DC(uint64_t a1)
{
  result = sub_26A69376C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A69275C()
{
  sub_26A6929CC(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_26A4E20C4(319, qword_28157E830, type metadata accessor for SummaryItemConstants, type metadata accessor for EnvironmentConstant);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_26A6929CC(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_26A6929CC(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_26A4E20C4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
          if (v10 > 0x3F)
          {
            return v9;
          }

          sub_26A4E20C4(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v11 > 0x3F)
          {
            return v9;
          }

          sub_26A576B80(319, &qword_2803A9220, &qword_2803A91C8);
          if (v12 > 0x3F)
          {
            return v9;
          }

          else
          {
            sub_26A576B80(319, &qword_2803B2E18, &qword_2803AFAE8);
            v1 = v13;
            if (v14 <= 0x3F)
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

void sub_26A6929CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_26A692A1C()
{
  result = qword_2803B2E20;
  if (!qword_2803B2E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2E08);
    sub_26A692AD4();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B2E20);
  }

  return result;
}

unint64_t sub_26A692AD4()
{
  result = qword_28157FDC0;
  if (!qword_28157FDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2E00);
    sub_26A692B60();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FDC0);
  }

  return result;
}

unint64_t sub_26A692B60()
{
  result = qword_28157FE68;
  if (!qword_28157FE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2DF8);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FE68);
  }

  return result;
}

void sub_26A692C8C()
{
  sub_26A4E20C4(319, qword_28157E830, type metadata accessor for SummaryItemConstants, type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A4E20C4(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26A4E20C4(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A6929CC(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_26A692E14()
{
  result = qword_2803B2E30;
  if (!qword_2803B2E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2E28);
    sub_26A692E98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B2E30);
  }

  return result;
}

unint64_t sub_26A692E98()
{
  result = qword_2803B2E38;
  if (!qword_2803B2E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2E40);
    sub_26A692F24();
    sub_26A6932C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B2E38);
  }

  return result;
}

unint64_t sub_26A692F24()
{
  result = qword_2803B2E48;
  if (!qword_2803B2E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2E50);
    sub_26A692FB0();
    sub_26A693180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B2E48);
  }

  return result;
}

unint64_t sub_26A692FB0()
{
  result = qword_2803B2E58;
  if (!qword_2803B2E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2E60);
    sub_26A69303C();
    sub_26A4D38BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B2E58);
  }

  return result;
}

unint64_t sub_26A69303C()
{
  result = qword_2803B2E68;
  if (!qword_2803B2E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2E70);
    sub_26A6930C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B2E68);
  }

  return result;
}

unint64_t sub_26A6930C8()
{
  result = qword_2803B2E78;
  if (!qword_2803B2E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B2E80);
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B2E78);
  }

  return result;
}