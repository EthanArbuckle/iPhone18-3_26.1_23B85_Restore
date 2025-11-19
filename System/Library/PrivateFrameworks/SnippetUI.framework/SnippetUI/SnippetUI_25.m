uint64_t OUTLINED_FUNCTION_2_75(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

__n128 OUTLINED_FUNCTION_4_65@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  v1[8] = *a1;
  v1[9].n128_u8[0] = *(v2 + 952);
  return result;
}

uint64_t MultilineTextProperty.asView()@<X0>(uint64_t a1@<X8>)
{
  sub_26A84D098();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v6 = v5 - v4;
  (*(v7 + 16))(v5 - v4, v1);
  return MultilineTextPropertyView.init(_:)(v6, a1);
}

uint64_t sub_26A70EB38()
{
  v26 = sub_26A84AFA8();
  OUTLINED_FUNCTION_15();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v25 = v4 - v3;
  v5 = sub_26A84D078();
  v6 = *(v5 + 16);
  if (v6)
  {
    v27 = MEMORY[0x277D84F90];
    sub_26A7DD314(0, v6, 0);
    v7 = v27;
    v9 = *(v1 + 16);
    v8 = v1 + 16;
    v10 = v5 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v23 = *(v8 + 56);
    v24 = v9;
    v22 = (v8 - 8);
    do
    {
      v24(v25, v10, v26);
      v11 = _s10SnippetKit11TextElementV0A2UIE4view4bold6italic05SwiftE00C0VSb_SbtF_0(0, 0);
      v13 = v12;
      v15 = v14;
      v17 = v16;
      (*v22)(v25, v26);
      v19 = *(v27 + 16);
      v18 = *(v27 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_26A7DD314(v18 > 1, v19 + 1, 1);
      }

      *(v27 + 16) = v19 + 1;
      v20 = v27 + 32 * v19;
      *(v20 + 32) = v11;
      *(v20 + 40) = v13;
      *(v20 + 48) = v15 & 1;
      *(v20 + 56) = v17;
      v10 += v23;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t sub_26A70ED24()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for MultilineTextPropertyView() + 20);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v9, 0);
    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v9;
}

uint64_t sub_26A70EE64()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for MultilineTextPropertyView() + 24);
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

double sub_26A70EFBC()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for MultilineTextPropertyView() + 28));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_26A851EA8();
  v8 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_26A70F118()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for MultilineTextPropertyView() + 32);
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
    return v9[15];
  }

  return v6;
}

uint64_t MultilineTextPropertyView.init(_:bold:italic:configureText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MultilineTextPropertyView();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_9_48(KeyPath);
  v6 = swift_getKeyPath();
  OUTLINED_FUNCTION_9_48(v6);
  v7 = swift_getKeyPath();
  OUTLINED_FUNCTION_9_48(v7);
  v8 = swift_getKeyPath();
  OUTLINED_FUNCTION_9_48(v8);
  ActionHandler.init()(a2 + *(v4 + 36));

  sub_26A84D098();
  OUTLINED_FUNCTION_46();
  v11 = *(v10 + 32);

  return v11(a2, a1, v9);
}

uint64_t MultilineTextPropertyView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MultilineTextPropertyView();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(KeyPath);
  v6 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v6);
  v7 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v7);
  v8 = swift_getKeyPath();
  OUTLINED_FUNCTION_33_2(v8);
  ActionHandler.init()(a2 + *(v4 + 36));
  sub_26A84D098();
  OUTLINED_FUNCTION_46();
  v11 = *(v10 + 32);

  return v11(a2, a1, v9);
}

uint64_t type metadata accessor for MultilineTextPropertyView()
{
  result = qword_2803B57D0;
  if (!qword_2803B57D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MultilineTextPropertyView.body.getter@<X0>(void *a1@<X8>)
{
  result = sub_26A70F4D0(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_26A70F4D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B57E8);
  MEMORY[0x28223BE20](v54);
  v4 = &v42 - v3;
  v5 = sub_26A84F588();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v51 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MultilineTextPropertyView();
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B57F0);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v44 = &v42 - v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B57F8);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v45 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v46 = &v42 - v12;
  v13 = sub_26A84B058();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B38C0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v42 - v21;
  sub_26A84D068();
  v23 = sub_26A84BAB8();
  if (__swift_getEnumTagSinglePayload(v19, 1, v23) == 1)
  {
    sub_26A4DBD10(v19, &qword_2803B3800);
    v24 = sub_26A84E278();
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v24);
  }

  else
  {
    v25 = sub_26A70ED24();
    VRXIdiom.idiom.getter(v25, v16);
    sub_26A84BAA8();
    (*(v14 + 8))(v16, v13);
    (*(*(v23 - 8) + 8))(v19, v23);
    v26 = sub_26A84E278();
    if (__swift_getEnumTagSinglePayload(v22, 1, v26) != 1)
    {
      sub_26A4DBD10(v22, &qword_2803B38C0);
      v29 = v43;
      sub_26A53419C(v1, v43);
      v30 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v31 = swift_allocObject();
      v32 = sub_26A71082C(v29, v31 + v30);
      MEMORY[0x28223BE20](v32);
      *(&v42 - 2) = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5828);
      sub_26A7108F8();
      v33 = v44;
      sub_26A8510D8();
      v34 = v51;
      sub_26A84F578();
      v35 = sub_26A4DBCC8(&qword_2803B5838, &qword_2803B57F0);
      v36 = sub_26A7109B0(&qword_28157FD68, MEMORY[0x277CDDB18]);
      v37 = v46;
      v38 = v49;
      v39 = v53;
      sub_26A850978();
      (*(v52 + 8))(v34, v39);
      (*(v47 + 8))(v33, v38);
      v40 = v48;
      v41 = v50;
      (*(v48 + 16))(v45, v37, v50);
      v56 = v38;
      v57 = v39;
      v58 = v35;
      v59 = v36;
      swift_getOpaqueTypeConformance2();
      v28 = sub_26A851248();
      result = (*(v40 + 8))(v37, v41);
      goto LABEL_6;
    }
  }

  sub_26A4DBD10(v22, &qword_2803B38C0);
  sub_26A70FDDC(v4);
  sub_26A7106A8();
  result = sub_26A851248();
  v28 = result;
LABEL_6:
  *v55 = v28;
  return result;
}

uint64_t sub_26A70FC14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12[-v6];
  v8 = a1 + *(type metadata accessor for MultilineTextPropertyView() + 36);
  v9 = type metadata accessor for ActionHandler(0);
  sub_26A51D0F8(v8 + *(v9 + 44), v7, &qword_2803B3910);
  v10 = type metadata accessor for StandardActionHandler(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    return sub_26A4DBD10(v7, &qword_2803B3910);
  }

  sub_26A84D068();
  v12[15] = 2;
  StandardActionHandler.perform(_:interactionType:)();
  sub_26A4DBD10(v4, &qword_2803B3800);
  return sub_26A592630(v7);
}

uint64_t sub_26A70FD98@<X0>(uint64_t a1@<X8>)
{
  sub_26A70FDDC(a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5828);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_26A70FDDC@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5840);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v1);
  v3 = &v29 - v2;
  sub_26A84F5E8();
  OUTLINED_FUNCTION_15();
  v29 = v5;
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5848);
  OUTLINED_FUNCTION_15();
  v31 = v10;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5820);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  v16 = (&v29 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5808);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - v19;
  v21 = sub_26A70F118();
  if (v21)
  {
    if (v21 == 1)
    {
      v22 = sub_26A84FBF8();
    }

    else
    {
      v22 = sub_26A84FC18();
    }
  }

  else
  {
    v22 = sub_26A84FC08();
  }

  v23 = v22;
  v24 = sub_26A70EFBC();
  *v16 = v23;
  v16[1] = v24;
  *(v16 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5850);
  sub_26A710148();
  sub_26A7109F8(v16, v20);
  *&v20[*(v17 + 36)] = 256;
  if (sub_26A70EE64() & 1) != 0 && (sub_26A84B878())
  {
    sub_26A84F5C8();
    v25 = sub_26A710774();
    sub_26A850C98();
    (*(v29 + 8))(v8, v30);
    v26 = v31;
    (*(v31 + 16))(v3, v13, v9);
    swift_storeEnumTagMultiPayload();
    v33 = v17;
    v34 = v25;
    OUTLINED_FUNCTION_8_18();
    OUTLINED_FUNCTION_5_63();
    (*(v26 + 8))(v13, v9);
  }

  else
  {
    sub_26A51D0F8(v20, v3, &qword_2803B5808);
    swift_storeEnumTagMultiPayload();
    v27 = sub_26A710774();
    v33 = v17;
    v34 = v27;
    OUTLINED_FUNCTION_8_18();
    OUTLINED_FUNCTION_5_63();
  }

  return sub_26A4DBD10(v20, &qword_2803B5808);
}

uint64_t sub_26A710148()
{
  v0 = sub_26A84B058();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26A70ED24();
  VRXIdiom.idiom.getter(v4, v3);
  v5 = sub_26A84D078();
  (*(v1 + 8))(v3, v0);
  v6 = *(v5 + 16);
  v8[0] = 0;
  v8[1] = v6;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB110);
  sub_26A4EEF40();
  return sub_26A8512F8();
}

void sub_26A7102CC(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_26A84AFA8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(a2 + 16))
  {
    (*(v7 + 16))(v10, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v6, v8);
    sub_26A550984(&v13);
    (*(v7 + 8))(v10, v6);
    *a3 = v13;
    return;
  }

  __break(1u);
}

uint64_t MultilineTextProperty.view(bold:italic:configureText:)@<X0>(uint64_t a1@<X8>)
{
  sub_26A84D098();
  OUTLINED_FUNCTION_46();
  (*(v3 + 16))(a1, v1);
  v4 = type metadata accessor for MultilineTextPropertyView();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(KeyPath);
  v6 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v6);
  v7 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v7);
  v8 = swift_getKeyPath();
  OUTLINED_FUNCTION_15_5(v8);
  return ActionHandler.init()(a1 + *(v4 + 36));
}

double sub_26A7104D8()
{
  sub_26A710A70();
  sub_26A84F998();
  return v1;
}

void sub_26A710594()
{
  sub_26A84D098();
  if (v0 <= 0x3F)
  {
    sub_26A4EEA70();
    if (v1 <= 0x3F)
    {
      sub_26A5E8F44(319, &qword_2803AB788);
      if (v2 <= 0x3F)
      {
        sub_26A5E8F44(319, &qword_2803AB0C8);
        if (v3 <= 0x3F)
        {
          sub_26A5E8F44(319, &qword_2803B57E0);
          if (v4 <= 0x3F)
          {
            type metadata accessor for ActionHandler(319);
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

unint64_t sub_26A7106A8()
{
  result = qword_2803B5800;
  if (!qword_2803B5800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B57E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5808);
    sub_26A710774();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5800);
  }

  return result;
}

unint64_t sub_26A710774()
{
  result = qword_2803B5810;
  if (!qword_2803B5810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5808);
    sub_26A4DBCC8(&qword_2803B5818, &qword_2803B5820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5810);
  }

  return result;
}

uint64_t sub_26A71082C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultilineTextPropertyView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A710890()
{
  v1 = *(type metadata accessor for MultilineTextPropertyView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26A70FC14(v2);
}

unint64_t sub_26A7108F8()
{
  result = qword_2803B5830;
  if (!qword_2803B5830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5828);
    sub_26A7106A8();
    sub_26A4DBCC8(&qword_2803AE3F8, &qword_2803AE400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5830);
  }

  return result;
}

uint64_t sub_26A7109B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A7109F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26A710A70()
{
  result = qword_28157FCF0;
  if (!qword_28157FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FCF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_63()
{

  return sub_26A84FDF8();
}

uint64_t OUTLINED_FUNCTION_9_48(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

double sub_26A710B08(char a1)
{
  result = 12.0;
  if (a1)
  {
    return 16.0;
  }

  return result;
}

void sub_26A710B48(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 text_2];
  if (v4)
  {
    v5 = v4;
    v6 = [v1 text_1];
    if (v6)
    {
      v7 = v6;
      *(&v26 + 1) = &type metadata for PartialText;
      v27 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v25 = swift_allocObject();
      RFTextProperty.asPartialText()(v25 + 16);
    }

    else
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
    }

    v24[3] = &type metadata for PartialText;
    v24[4] = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    v24[0] = swift_allocObject();
    RFTextProperty.asPartialText()(v24[0] + 16);
    v10 = sub_26A537584(v2);
    if (v10)
    {
      sub_26A51B744(v10, v23);
      sub_26A54AAEC();
      v10 = sub_26A851248();
      v11 = &protocol witness table for AnyView;
      v12 = MEMORY[0x277CE11C8];
    }

    else
    {
      v12 = 0;
      v11 = 0;
      v23[1] = 0;
      v23[2] = 0;
    }

    v23[0] = v10;
    v23[3] = v12;
    v23[4] = v11;
    v13 = [v2 text_4];
    if (v13)
    {
      v14 = v13;
      *(&v21 + 1) = &type metadata for PartialText;
      v22 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v20 = swift_allocObject();
      RFTextProperty.asPartialText()(v20 + 16);
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
    }

    v15 = [v2 text_5];
    if (v15)
    {
      v16 = v15;
      *(&v18 + 1) = &type metadata for PartialText;
      v19 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      *&v17 = swift_allocObject();
      RFTextProperty.asPartialText()(v17 + 16);
    }

    else
    {
      v19 = 0;
      v17 = 0u;
      v18 = 0u;
    }

    SummaryItemTextView.init(text1:text2:text3:text4:text5:)(&v25, v24, v23, &v20, &v17, a1);
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v8 = v1;
    *(v8 + 8) = &unk_287B13628;
    *(v8 + 16) = 0;
    swift_willThrow();
    v9 = v1;
  }
}

unint64_t sub_26A710DD4()
{
  result = qword_2803AA870;
  if (!qword_2803AA870)
  {
    type metadata accessor for SummaryItemTextView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AA870);
  }

  return result;
}

uint64_t sub_26A710E2C(uint64_t a1)
{
  v2 = sub_26A84A7D8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A84A818();
  swift_allocObject();
  v6 = sub_26A84A808();
  (*(v3 + 16))(v5, a1, v2);
  sub_26A84A7E8();
  return v6;
}

uint64_t View.textStyle(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF688);
  sub_26A84F4F8();
  v7 = sub_26A84FE08();
  OUTLINED_FUNCTION_15();
  v45 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = v38 - v10;
  v42 = sub_26A84F4F8();
  sub_26A84FE08();
  OUTLINED_FUNCTION_15();
  v46 = v13;
  v47 = v12;
  MEMORY[0x28223BE20](v12);
  v44 = v38 - v15;
  v16 = *(a1 + 16);
  v17 = v16;
  v18 = (a1 + 40);
  v19 = v16;
  if (v16)
  {
    while (*v18 != 1 || *(v18 - 1))
    {
      v18 += 16;
      if (!--v19)
      {
        goto LABEL_5;
      }
    }

    v20 = 1;
  }

  else
  {
LABEL_5:
    v20 = 2;
  }

  v21 = (a1 + 40);
  if (v16)
  {
    while (*v21 != 1 || !*(v21 - 1))
    {
      v21 += 16;
      if (!--v17)
      {
        goto LABEL_11;
      }
    }

    v22 = 1;
  }

  else
  {
LABEL_11:
    v22 = 2;
  }

  v39 = v22;
  v23 = (a1 + 40);
  v24 = v16 + 1;
  while (--v24)
  {
    v25 = v23 + 16;
    v26 = *v23;
    v23 += 16;
    if ((v26 & 1) == 0)
    {
      v41 = *(v25 - 3);
      goto LABEL_18;
    }
  }

  v41 = 0;
LABEL_18:
  v40 = v24 == 0;
  LOBYTE(v53) = v20;
  MEMORY[0x28223BE20](v14);
  v38[-2] = a2;
  v38[-1] = a3;
  v27 = sub_26A5C9C88(&qword_2803AF680, &qword_2803AF688);
  v59 = a3;
  v60 = v27;
  v38[1] = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  View.ifLet<A, B>(_:transform:)();
  v43 = v38;
  LOBYTE(v53) = v39;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_79();
  v57 = WitnessTable;
  v58 = a3;
  v30 = swift_getWitnessTable();
  v55 = v30;
  v56 = v27;
  v31 = swift_getWitnessTable();
  v32 = v44;
  View.ifLet<A, B>(_:transform:)();
  v33 = (v45[1])(v11, v7);
  v45 = v38;
  v53 = v41;
  v54 = v40;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_79();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5858);
  v34 = v47;
  sub_26A84F4F8();
  v51 = v31;
  v52 = v30;
  v35 = swift_getWitnessTable();
  v36 = sub_26A5C9C88(&qword_2803B5860, &qword_2803B5858);
  v49 = v35;
  v50 = v36;
  swift_getWitnessTable();
  View.ifLet<A, B>(_:transform:)();
  return (*(v46 + 8))(v32, v34);
}

uint64_t sub_26A711404()
{
  swift_getKeyPath();
  sub_26A8509A8();
}

uint64_t sub_26A7114C8()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF688);
  sub_26A84F4F8();
  sub_26A84FE08();
  sub_26A5C9C88(&qword_2803AF680, &qword_2803AF688);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26A8509A8();
}

uint64_t sub_26A711614(void (*a1)(void))
{
  a1();
  sub_26A84F998();
  return v2;
}

uint64_t sub_26A7116C4()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AF688);
  sub_26A84F4F8();
  sub_26A84FE08();
  sub_26A84F4F8();
  sub_26A84FE08();
  sub_26A5C9C88(&qword_2803AF680, &qword_2803AF688);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26A8509A8();
}

uint64_t sub_26A71186C()
{
  sub_26A7118F0();
  sub_26A84F998();
  return v1;
}

unint64_t sub_26A7118F0()
{
  result = qword_2803B5868;
  if (!qword_2803B5868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5868);
  }

  return result;
}

unint64_t sub_26A711944()
{
  result = qword_2803B5870;
  if (!qword_2803B5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5870);
  }

  return result;
}

unint64_t sub_26A711998()
{
  result = qword_2803B5878;
  if (!qword_2803B5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5878);
  }

  return result;
}

uint64_t sub_26A711A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26A711A74();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_26A711A74()
{
  result = qword_2803B5880;
  if (!qword_2803B5880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5888);
    sub_26A711AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5880);
  }

  return result;
}

unint64_t sub_26A711AF8()
{
  result = qword_2803B5890;
  if (!qword_2803B5890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5890);
  }

  return result;
}

unint64_t sub_26A711B4C()
{
  result = qword_2803AFAE0;
  if (!qword_2803AFAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AFAE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AFAE0);
  }

  return result;
}

uint64_t IntentsUISlot.init(_:fallback:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a2(v6);
  v4 = v7;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  a3[1] = View.eraseToAnyView()(v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t static IntentsUISlotBuilder.buildExpression(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5898);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26A8570D0;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;

  return v3;
}

void static IntentsUISlotBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      v6 = *(v3 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v3 + 24) >> 1)
      {
        sub_26A7A24AC();
        v3 = v7;
      }

      if (*(v4 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_16;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v8 = *(v3 + 16);
          v9 = __OFADD__(v8, v5);
          v10 = v8 + v5;
          if (v9)
          {
            goto LABEL_17;
          }

          *(v3 + 16) = v10;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v2;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

BOOL IntentsUISlot.isWildCardSlot.getter()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 1;
  }

  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v4 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = v4;
  }

  return v5 == 0;
}

uint64_t static IntentsUISlotBuilder.buildOptional(_:)(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for IntentsUISlotBuilder(_BYTE *result, int a2, int a3)
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

id sub_26A711F3C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 number];
  if (v4)
  {
    v5 = v4;
    RFTextProperty.asPartialText()(v161);
    v6 = [v1 unit];
    if (v6)
    {
      v7 = v6;
      *(&v159 + 1) = &type metadata for PartialText;
      v160 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v158[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v158[0] + 16);
    }

    else
    {
      v160 = 0;
      v159 = 0u;
      *v158 = 0u;
    }

    v10 = sub_26A54AB40(v2, &selRef_text_2);
    if (v10)
    {
      v11 = v10;
      *(&v156 + 1) = &type metadata for PartialText;
      v157 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v155[0] = swift_allocObject();
      sub_26A735084(v11, v155[0] + 16);
    }

    else
    {
      v157 = 0;
      v156 = 0u;
      *v155 = 0u;
    }

    v12 = sub_26A54AB40(v2, &selRef_text_3);
    if (v12)
    {
      v13 = v12;
      *(&v153 + 1) = &type metadata for PartialText;
      v154 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v152[0] = swift_allocObject();
      sub_26A735084(v13, v152[0] + 16);
    }

    else
    {
      v154 = 0;
      v153 = 0u;
      *v152 = 0u;
    }

    v14 = [v2 text_4];
    if (v14)
    {
      v15 = v14;
      *(&v150 + 1) = &type metadata for PartialText;
      v151 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v149[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v149[0] + 16);
    }

    else
    {
      v151 = 0;
      v150 = 0u;
      *v149 = 0u;
    }

    v16 = [v2 text_5];
    if (v16)
    {
      v17 = v16;
      *(&v147 + 1) = &type metadata for PartialText;
      v148 = &protocol witness table for PartialText;
      OUTLINED_FUNCTION_1_9();
      v146[0] = swift_allocObject();
      RFTextProperty.asPartialText()(v146[0] + 16);
    }

    else
    {
      v148 = 0;
      v147 = 0u;
      *v146 = 0u;
    }

    if (qword_2803A8A80 != -1)
    {
      swift_once();
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0);
    v19 = __swift_project_value_buffer(v18, qword_2803D1A70);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8);
    v21 = &a1[*(v20 + 32)];
    sub_26A4EA070(v19, v21, &qword_2803AB6F0);
    sub_26A6AEE74(__src);
    memcpy(a1, __src, 0xBFuLL);
    sub_26A60E54C(v21 + *(v18 + 36), &a1[*(v20 + 28)]);
    v22 = type metadata accessor for FactItemHeroNumberView();
    v23 = &a1[v22[5]];
    if (qword_28157E660 != -1)
    {
      swift_once();
    }

    *v136 = xmmword_281588758[0];
    v137 = unk_281588768;
    *v138 = xmmword_281588778;
    v139 = xmmword_281588788;
    *v140 = xmmword_281588758[0];
    v141 = unk_281588768;
    *v142 = xmmword_281588778;
    v143 = xmmword_281588788;
    *v96 = xmmword_281588788;
    v99 = xmmword_281588778;
    sub_26A4EA070(v136, __dst, &qword_2803A91B0);
    sub_26A6AEE74(v144);
    memcpy(v23, v144, 0xC0uLL);
    *(v23 + 12) = v99;
    *(v23 + 13) = *v96;
    v24 = v141;
    *(v23 + 14) = *v140;
    *(v23 + 15) = v24;
    v25 = v143;
    *(v23 + 16) = *v142;
    *(v23 + 17) = v25;
    v26 = &a1[v22[6]];
    *v26 = swift_getKeyPath();
    v26[8] = 0;
    v27 = v22[7];
    *&a1[v27] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
    swift_storeEnumTagMultiPayload();
    v28 = v22[8];
    *&a1[v28] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
    swift_storeEnumTagMultiPayload();
    v29 = memcpy(__dst, v161, 0xFAuLL);
    OUTLINED_FUNCTION_2_76(v29, v30, v31, v32, v33, v34, v35, v36, v96[0], v96[1], v99, *(&v99 + 1), v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0]);
    sub_26A4EC458(__dst, &v102);
    sub_26A4EC4B4();
    *&a1[v22[9]] = sub_26A851248();
    sub_26A4EA070(v158, v134, &qword_2803A91B8);
    if (v135)
    {
      __swift_project_boxed_opaque_existential_1(v134, v135);
      v37 = OUTLINED_FUNCTION_16_5();
      v39 = v38(v37);
      OUTLINED_FUNCTION_3_69(v39, v40, v41, v42, v43, v44, v45, v46, v97, v98, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0]);
    }

    else
    {
      sub_26A537648(v134);
      v28 = 0;
    }

    *&a1[v22[10]] = v28;
    sub_26A4EA070(v155, v134, &qword_2803A91B8);
    if (v135)
    {
      __swift_project_boxed_opaque_existential_1(v134, v135);
      v47 = OUTLINED_FUNCTION_16_5();
      v49 = v48(v47);
      OUTLINED_FUNCTION_3_69(v49, v50, v51, v52, v53, v54, v55, v56, v97, v98, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0]);
    }

    else
    {
      sub_26A537648(v134);
      v28 = 0;
    }

    *&a1[v22[11]] = v28;
    sub_26A4EA070(v152, v134, &qword_2803A91B8);
    if (v135)
    {
      __swift_project_boxed_opaque_existential_1(v134, v135);
      v57 = OUTLINED_FUNCTION_16_5();
      v59 = v58(v57);
      OUTLINED_FUNCTION_3_69(v59, v60, v61, v62, v63, v64, v65, v66, v97, v98, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0]);
    }

    else
    {
      sub_26A537648(v134);
      v28 = 0;
    }

    *&a1[v22[12]] = v28;
    sub_26A4EA070(v149, v134, &qword_2803A91B8);
    if (v135)
    {
      __swift_project_boxed_opaque_existential_1(v134, v135);
      v67 = OUTLINED_FUNCTION_16_5();
      v69 = v68(v67);
      OUTLINED_FUNCTION_3_69(v69, v70, v71, v72, v73, v74, v75, v76, v97, v98, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0]);
    }

    else
    {
      sub_26A537648(v134);
      v28 = 0;
    }

    *&a1[v22[13]] = v28;
    v77 = sub_26A4EA070(v146, &v102, &qword_2803A91B8);
    if (v105)
    {
      __swift_project_boxed_opaque_existential_1(&v102, v105);
      v85 = OUTLINED_FUNCTION_16_5();
      v87 = v86(v85);

      OUTLINED_FUNCTION_2_76(v88, v89, v90, v91, v92, v93, v94, v95, v97, v98, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0]);
      sub_26A4EC508(v134);
      sub_26A537648(v146);
      sub_26A537648(v149);
      sub_26A537648(v152);
      sub_26A537648(v155);
      sub_26A537648(v158);
      result = __swift_destroy_boxed_opaque_existential_1(&v102);
    }

    else
    {
      OUTLINED_FUNCTION_2_76(v77, v78, v79, v80, v81, v82, v83, v84, v97, v98, v100, v101, v102, v103, v104, 0, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134[0]);
      sub_26A4EC508(v134);

      sub_26A537648(v146);
      sub_26A537648(v149);
      sub_26A537648(v152);
      sub_26A537648(v155);
      sub_26A537648(v158);
      result = sub_26A537648(&v102);
      v87 = 0;
    }

    *&a1[v22[14]] = v87;
  }

  else
  {
    sub_26A4E353C();
    swift_allocError();
    *v8 = v1;
    *(v8 + 8) = &unk_287B137F8;
    *(v8 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  return result;
}

unint64_t sub_26A7126B0()
{
  result = qword_2803B0C20;
  if (!qword_2803B0C20)
  {
    type metadata accessor for FactItemHeroNumberView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B0C20);
  }

  return result;
}

void *OUTLINED_FUNCTION_2_76(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t __dst)
{

  return memcpy(&__dst, &STACK[0x548], 0xFAuLL);
}

uint64_t OUTLINED_FUNCTION_3_69(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{

  return __swift_destroy_boxed_opaque_existential_1(&a45);
}

uint64_t PrimaryHeaderRichView.init(text1:text2:text3:text4:thumbnail:addTint:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v11 = type metadata accessor for PrimaryHeaderRichView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41();
  v15 = (v14 - v13);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v43[0] = xmmword_281588758[0];
  v43[1] = unk_281588768;
  v43[2] = xmmword_281588778;
  v43[3] = xmmword_281588788;
  v44 = xmmword_281588758[0];
  v45 = unk_281588768;
  v46 = xmmword_281588778;
  v47 = xmmword_281588788;
  v38 = xmmword_281588778;
  v36 = xmmword_281588788;
  sub_26A4DBD68(v43, v48, &qword_2803A91B0);
  sub_26A6AEE74(v48);
  memcpy(v15, v48, 0xC0uLL);
  v15[12] = v38;
  v15[13] = v36;
  v16 = v45;
  v15[14] = v44;
  v15[15] = v16;
  v17 = v47;
  v15[16] = v46;
  v15[17] = v17;
  v18 = v11[5];
  *(v15 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v19 = v15 + v11[6];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = v11[7];
  *(v15 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = OUTLINED_FUNCTION_0_77();
  *(v15 + v11[8]) = v22(v21);
  sub_26A4DBD68(a2, v41, &qword_2803A91B8);
  if (v42)
  {
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v23 = OUTLINED_FUNCTION_0_77();
    v25 = v24(v23);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    sub_26A4DBD10(v41, &qword_2803A91B8);
    v25 = 0;
  }

  *(v15 + v11[9]) = v25;
  sub_26A4DBD68(a3, v41, &qword_2803A91B8);
  if (v42)
  {
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v26 = OUTLINED_FUNCTION_0_77();
    v28 = v27(v26);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    sub_26A4DBD10(v41, &qword_2803A91B8);
    v28 = 0;
  }

  *(v15 + v11[10]) = v28;
  sub_26A4DBD68(a4, v41, &qword_2803A91B8);
  if (v42)
  {
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v29 = OUTLINED_FUNCTION_0_77();
    v31 = v30(v29);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    sub_26A4DBD10(v41, &qword_2803A91B8);
    v31 = 0;
  }

  *(v15 + v11[11]) = v31;
  sub_26A4DBD68(a5, v41, &qword_2803A91B8);
  if (v42)
  {
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v32 = OUTLINED_FUNCTION_0_77();
    v34 = v33(v32);
    OUTLINED_FUNCTION_18_25(a5);
    OUTLINED_FUNCTION_18_25(a4);
    OUTLINED_FUNCTION_18_25(a3);
    OUTLINED_FUNCTION_18_25(a2);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
    OUTLINED_FUNCTION_13_34(a5);
    OUTLINED_FUNCTION_13_34(a4);
    OUTLINED_FUNCTION_13_34(a3);
    OUTLINED_FUNCTION_13_34(a2);
    OUTLINED_FUNCTION_13_34(v41);
    v34 = 0;
  }

  *(v15 + v11[12]) = v34;
  *(v15 + v11[13]) = a6 & 1;
  sub_26A712BD8(v15, a7);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for PrimaryHeaderRichView()
{
  result = qword_2803B58C0;
  if (!qword_2803B58C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A712BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimaryHeaderRichView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A712C3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PrimaryHeaderRichView();
  sub_26A4DBD68(v1 + *(v10 + 20), v9, &unk_2803A9190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A712E24()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for PrimaryHeaderRichView() + 24);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t sub_26A712F78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PrimaryHeaderRichView();
  sub_26A4DBD68(v1 + *(v10 + 28), v9, &qword_2803A91A8);
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

uint64_t PrimaryHeaderRichView.init(text1:text2:text3:text4:thumbnail:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = type metadata accessor for PrimaryHeaderRichView();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41();
  v15 = (v14 - v13);
  v38 = a1;
  sub_26A50429C(a1, v46);
  OUTLINED_FUNCTION_5_17(a2, v45);
  OUTLINED_FUNCTION_5_17(a3, v44);
  OUTLINED_FUNCTION_5_17(a4, v43);
  OUTLINED_FUNCTION_5_17(a5, v42);
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v47[0] = xmmword_281588758[0];
  v47[1] = unk_281588768;
  v47[2] = xmmword_281588778;
  v47[3] = unk_281588788;
  v48 = xmmword_281588758[0];
  v49 = unk_281588768;
  v50 = xmmword_281588778;
  v51 = unk_281588788;
  v36 = unk_281588788;
  v37 = xmmword_281588778;
  sub_26A4DBD68(v47, v52, &qword_2803A91B0);
  sub_26A6AEE74(v52);
  memcpy(v15, v52, 0xC0uLL);
  v15[12] = v37;
  v15[13] = v36;
  v16 = v49;
  v15[14] = v48;
  v15[15] = v16;
  v17 = v51;
  v15[16] = v50;
  v15[17] = v17;
  v18 = v11[5];
  *(v15 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v19 = v15 + v11[6];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = v11[7];
  *(v15 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1(v46, v46[3]);
  v21 = OUTLINED_FUNCTION_1_80();
  *(v15 + v11[8]) = v22(v21);
  sub_26A4DBD68(v45, v40, &qword_2803A91B8);
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v23 = OUTLINED_FUNCTION_1_80();
    v25 = v24(v23);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_26A4DBD10(v40, &qword_2803A91B8);
    v25 = 0;
  }

  *(v15 + v11[9]) = v25;
  sub_26A4DBD68(v44, v40, &qword_2803A91B8);
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v26 = OUTLINED_FUNCTION_1_80();
    v28 = v27(v26);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_26A4DBD10(v40, &qword_2803A91B8);
    v28 = 0;
  }

  *(v15 + v11[10]) = v28;
  sub_26A4DBD68(v43, v40, &qword_2803A91B8);
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v29 = OUTLINED_FUNCTION_1_80();
    v31 = v30(v29);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_26A4DBD10(v40, &qword_2803A91B8);
    v31 = 0;
  }

  *(v15 + v11[11]) = v31;
  sub_26A4DBD68(v42, v40, &qword_2803A91B8);
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v32 = OUTLINED_FUNCTION_1_80();
    v34 = v33(v32);
    OUTLINED_FUNCTION_36_3(a5);
    OUTLINED_FUNCTION_36_3(a4);
    OUTLINED_FUNCTION_36_3(a3);
    OUTLINED_FUNCTION_36_3(a2);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_36_3(v42);
    OUTLINED_FUNCTION_36_3(v43);
    OUTLINED_FUNCTION_36_3(v44);
    OUTLINED_FUNCTION_36_3(v45);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    OUTLINED_FUNCTION_9_0(a5);
    OUTLINED_FUNCTION_9_0(a4);
    OUTLINED_FUNCTION_9_0(a3);
    OUTLINED_FUNCTION_9_0(a2);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_9_0(v42);
    OUTLINED_FUNCTION_9_0(v43);
    OUTLINED_FUNCTION_9_0(v44);
    OUTLINED_FUNCTION_9_0(v45);
    OUTLINED_FUNCTION_9_0(v40);
    v34 = 0;
  }

  *(v15 + v11[12]) = v34;
  *(v15 + v11[13]) = 0;
  sub_26A712BD8(v15, a6);
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t PrimaryHeaderRichView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  OUTLINED_FUNCTION_79(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  sub_26A712C3C(&v18[-v9]);
  sub_26A7138BC(v20);
  sub_26A712E24();
  sub_26A712F78(v6);
  v10 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  v19 = v1;
  sub_26A4CDA68();
  v11 = *(v1 + *(type metadata accessor for PrimaryHeaderRichView() + 52));
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B58A0) + 36)) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_26A68CCD4;
  *(v12 + 24) = 0;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B58A8) + 36);
  *(v13 + 16) = swift_getKeyPath();
  *(v13 + 24) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v15 = *(v14 + 40);
  *(v13 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v16 = v13 + *(v14 + 44);
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  *v13 = sub_26A4D1F7C;
  *(v13 + 8) = v12;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B58B0);
  *(a1 + *(result + 36)) = 20;
  return result;
}

uint64_t sub_26A7138BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A712E24();
  result = sub_26A61B05C(v3, &unk_287B13090);
  v5 = 0uLL;
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_2803A8BF0 != -1)
  {
    result = swift_once();
    v5 = 0uLL;
  }

  if (byte_2803B0440 == 1)
  {
    v6 = 0;
    __asm { FMOV            V0.2D, #10.0 }

    v5 = vaddq_f64(v1[12], _Q0);
    v12 = vaddq_f64(v1[13], xmmword_26A860600);
  }

  else
  {
LABEL_6:
    v6 = 1;
    v12 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 16) = v12;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_26A713968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrimaryHeaderRichView();
  v5 = *(a1 + v4[8]);
  v6 = *(a1 + v4[9]);
  v7 = *(a1 + v4[10]);
  v8 = *(a1 + v4[11]);
  v9 = *(a1 + v4[12]);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  v10 = qword_2803A8A90;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803AD3E0, a2 + 584, &qword_2803AF838);
  sub_26A6AEE74(__src);
  memcpy((a2 + 32), __src, 0xBFuLL);
  sub_26A5D1AF8(a2 + 616, a2 + 224);
  v11 = type metadata accessor for PrimaryHeaderStandardLayout();
  v12 = v11[7];
  *(a2 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v13 = a2 + v11[8];
  result = sub_26A851048();
  *v13 = v19;
  *(v13 + 8) = v20;
  v15 = v11[11];
  v16 = v11[12];
  v17 = v11[13];
  v18 = v11[10];
  *(a2 + v11[9]) = v5;
  *(a2 + v18) = v6;
  *(a2 + v15) = v7;
  *(a2 + v16) = v8;
  *(a2 + v17) = v9;
  return result;
}

uint64_t sub_26A713B5C(uint64_t a1)
{
  result = sub_26A7149C8(&qword_2803B58B8, MEMORY[0x277D632C0]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A713BDC()
{
  sub_26A4DB840(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A4D27F4();
    if (v1 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
      if (v2 <= 0x3F)
      {
        sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
        if (v3 <= 0x3F)
        {
          sub_26A4DB840(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_26A713D3C()
{
  result = qword_2803B58D0;
  if (!qword_2803B58D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B58B0);
    sub_26A713DC8();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B58D0);
  }

  return result;
}

unint64_t sub_26A713DC8()
{
  result = qword_2803B58D8;
  if (!qword_2803B58D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B58A8);
    sub_26A713E80();
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B58D8);
  }

  return result;
}

unint64_t sub_26A713E80()
{
  result = qword_2803B58E0;
  if (!qword_2803B58E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B58A0);
    sub_26A4DBCC8(&qword_2803B58E8, &qword_2803A9918);
    sub_26A5D1AA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B58E0);
  }

  return result;
}

uint64_t sub_26A713F38()
{
  v1 = v0;
  v96 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v87 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v5 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v95 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_0(&v85 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  OUTLINED_FUNCTION_79(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v15 = &v85 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  OUTLINED_FUNCTION_79(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v17);
  v19 = &v85 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830);
  v21 = OUTLINED_FUNCTION_79(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v85 - v26;
  v28 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_41();
  v34 = v33 - v32;
  v35 = type metadata accessor for PrimaryHeaderRichView();
  v36 = OUTLINED_FUNCTION_79(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v38 - v37);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AABD0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_10_0(&v85 - v40);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AABD8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_0();
  v91 = v42 - v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10_0(&v85 - v45);
  sub_26A84C398();
  v46 = TextProperty.asAnyView()();
  v47 = *(v30 + 8);
  v47(v34, v28);
  v101[3] = MEMORY[0x277CE11C8];
  v101[4] = &protocol witness table for AnyView;
  v101[0] = v46;
  v48 = v1;
  sub_26A84C3A8();
  v49 = sub_26A84D098();
  if (__swift_getEnumTagSinglePayload(v27, 1, v49) == 1)
  {
    sub_26A4DBD10(v27, &qword_2803AA830);
    OUTLINED_FUNCTION_2_0();
    v100[1] = 0;
    v100[2] = 0;
  }

  else
  {
    v48 = v27;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_12_14();
    (*(v52 + 8))(v27, v49);
    v50 = &protocol witness table for AnyView;
    v51 = MEMORY[0x277CE11C8];
  }

  v100[0] = v48;
  v100[3] = v51;
  v100[4] = v50;
  v53 = v1;
  sub_26A84C3B8();
  if (__swift_getEnumTagSinglePayload(v24, 1, v49) == 1)
  {
    sub_26A4DBD10(v24, &qword_2803AA830);
    OUTLINED_FUNCTION_2_0();
    v99[1] = 0;
    v99[2] = 0;
  }

  else
  {
    v53 = v24;
    MultilineTextProperty.asAnyView()();
    OUTLINED_FUNCTION_12_14();
    (*(v56 + 8))(v24, v49);
    v54 = &protocol witness table for AnyView;
    v55 = MEMORY[0x277CE11C8];
  }

  v99[0] = v53;
  v99[3] = v55;
  v99[4] = v54;
  v57 = v1;
  sub_26A84C3C8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v28);
  v59 = v93;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4DBD10(v19, &qword_2803AA838);
    OUTLINED_FUNCTION_2_0();
    v98[1] = 0;
    v98[2] = 0;
  }

  else
  {
    v57 = TextProperty.asAnyView()();
    v47(v19, v28);
    v60 = &protocol witness table for AnyView;
    v61 = MEMORY[0x277CE11C8];
  }

  v62 = v89;
  v98[0] = v57;
  v98[3] = v61;
  v98[4] = v60;
  v63 = v1;
  sub_26A84C3E8();
  v64 = sub_26A84BD28();
  v65 = __swift_getEnumTagSinglePayload(v15, 1, v64);
  v66 = v96;
  if (v65 == 1)
  {
    sub_26A4DBD10(v15, &qword_2803AAD50);
    OUTLINED_FUNCTION_2_0();
    v97[2] = 0;
    v97[1] = 0;
  }

  else
  {
    v63 = VisualProperty.asAnyView()();
    (*(*(v64 - 8) + 8))(v15, v64);
    v67 = &protocol witness table for AnyView;
    v68 = MEMORY[0x277CE11C8];
  }

  v97[0] = v63;
  v97[3] = v68;
  v97[4] = v67;
  PrimaryHeaderRichView.init(text1:text2:text3:text4:thumbnail:)(v101, v100, v99, v98, v97, v62);
  v69 = v92;
  sub_26A84C3D8();
  v70 = v95;
  sub_26A4DBDB4(v69, v95, &qword_2803B3800);
  if (__swift_getEnumTagSinglePayload(v70, 1, v66) == 1)
  {
    sub_26A4DBD10(v70, &qword_2803B3800);
    swift_getKeyPath();
    OUTLINED_FUNCTION_15_29();
    v72 = (v59 + v71);
    v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v74 = type metadata accessor for ActionType();
    __swift_storeEnumTagSinglePayload(v72 + v73, 1, 1, v74);
    *v72 = v70;
  }

  else
  {
    v75 = *(v87 + 32);
    v76 = v86;
    v75(v86, v70, v66);
    swift_getKeyPath();
    OUTLINED_FUNCTION_15_29();
    v78 = (v59 + v77);
    v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0) + 28);
    v75(v78 + v79, v76, v66);
    v80 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v78 + v79, 0, 1, v80);
    *v78 = v70;
  }

  sub_26A712BD8(v62, v59);
  v81 = sub_26A84C378();
  v82 = v90;
  sub_26A4DCEBC(v81);

  sub_26A4DBD10(v59, &qword_2803AABD0);
  sub_26A4DBD68(v82, v91, &qword_2803AABD8);
  sub_26A71479C();
  v83 = sub_26A851248();
  sub_26A4DBD10(v82, &qword_2803AABD8);
  return v83;
}

unint64_t sub_26A71479C()
{
  result = qword_2803B58F0;
  if (!qword_2803B58F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AABD8);
    sub_26A714854();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B58F0);
  }

  return result;
}

unint64_t sub_26A714854()
{
  result = qword_2803B58F8;
  if (!qword_2803B58F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AABC8);
    sub_26A7148E0();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B58F8);
  }

  return result;
}

unint64_t sub_26A7148E0()
{
  result = qword_2803B5900;
  if (!qword_2803B5900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AABD0);
    sub_26A7149C8(&qword_2803B3640, type metadata accessor for PrimaryHeaderRichView);
    sub_26A4DBCC8(&qword_2803AA878, &unk_2803B36A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5900);
  }

  return result;
}

uint64_t sub_26A7149C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_13_34(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1);
}

uint64_t OUTLINED_FUNCTION_18_25(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1);
}

uint64_t sub_26A714A84(uint64_t a1, void *a2)
{
  v36 = a1;
  v3 = sub_26A851608();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_26A8513F8();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5920);
  v33 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v9 = &v25 - v8;
  v10 = a2[5];
  v26 = a2[4];
  v27 = v10;
  v28 = __swift_project_boxed_opaque_existential_1(a2 + 1, v26);
  v29 = sub_26A84FE68();
  v11 = sub_26A84F4F8();
  v31 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  type metadata accessor for SnippetGlassMaterial();
  static SnippetGlassMaterial.material(for:)(a2, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2900);
  sub_26A8515D8();
  *(swift_allocObject() + 16) = xmmword_26A8570D0;
  v14 = __swift_project_boxed_opaque_existential_1(a2 + 1, a2[4]);
  v15 = MEMORY[0x28223BE20](v14);
  (*(v17 + 16))(&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  sub_26A8515E8();
  sub_26A8515F8();
  v18 = sub_26A84FFA8();
  v19 = sub_26A7157B0();
  sub_26A850A88();
  (*(v34 + 8))(v5, v35);
  (*(v30 + 8))(v7, v32);
  v39 = v18;
  v40 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v25;
  sub_26A8509F8();
  (*(v33 + 8))(v9, v21);
  WitnessTable = swift_getWitnessTable();
  v37 = OpaqueTypeConformance2;
  v38 = WitnessTable;
  swift_getWitnessTable();
  v23 = View.eraseToAnyView()(v11);
  (*(v31 + 8))(v13, v11);
  return v23;
}

uint64_t SnippetGlassButtonStyle.init(configuration:)(uint64_t a1)
{
  sub_26A60F1B8(a1, v4);
  sub_26A60F1B8(v4, &v3);
  sub_26A851048();
  sub_26A715024(a1);
  return sub_26A715024(v4);
}

uint64_t SnippetGlassButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32[1] = a1;
  v38 = a2;
  v3 = sub_26A84FFA8();
  OUTLINED_FUNCTION_15();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5908);
  OUTLINED_FUNCTION_15();
  v37 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = v32 - v11;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5910);
  OUTLINED_FUNCTION_15();
  v33 = v13;
  MEMORY[0x28223BE20](v14);
  v34 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v32 - v17;
  sub_26A84FFB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5918);
  sub_26A851058();
  v43 = v2;
  sub_26A851408();
  v41 = __src;
  v39 = sub_26A7156DC;
  v40 = &v42;
  v19 = sub_26A7157B0();
  v20 = MEMORY[0x277CE11C0];
  v21 = MEMORY[0x277CE11C8];
  sub_26A850CA8();
  (*(v5 + 8))(v8, v3);
  sub_26A715024(__src);
  v45 = sub_26A84FFC8() & 1;
  sub_26A715808(v2, __src);
  v22 = swift_allocObject();
  memcpy((v22 + 16), __src, 0x50uLL);
  __src[0] = v3;
  __src[1] = MEMORY[0x277CE1350];
  __src[2] = v21;
  __src[3] = v21;
  __src[4] = v19;
  __src[5] = MEMORY[0x277CE1340];
  __src[6] = v20;
  __src[7] = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = MEMORY[0x277D839B0];
  v25 = MEMORY[0x277D839C8];
  v26 = v36;
  sub_26A850C78();

  (*(v37 + 8))(v12, v26);
  v27 = v33;
  v28 = v35;
  (*(v33 + 16))(v34, v18, v35);
  __src[0] = v26;
  __src[1] = v24;
  __src[2] = OpaqueTypeConformance2;
  __src[3] = v25;
  swift_getOpaqueTypeConformance2();
  v29 = v28;
  v30 = sub_26A851248();
  result = (*(v27 + 8))(v18, v29);
  *v38 = v30;
  return result;
}

uint64_t sub_26A715500@<X0>(uint64_t *a1@<X8>)
{
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5918);
  sub_26A851058();
  sub_26A50429C(&v15, v13);
  sub_26A715024(v14);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_26A84FFA8();
  sub_26A84FE68();
  v1 = sub_26A84F4F8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - v3;
  v5 = sub_26A7157B0();
  sub_26A8509F8();
  WitnessTable = swift_getWitnessTable();
  v11 = v5;
  v12 = WitnessTable;
  swift_getWitnessTable();
  v7 = View.eraseToAnyView()(v1);
  (*(v2 + 8))(v4, v1);
  result = __swift_destroy_boxed_opaque_existential_1(v13);
  *v10 = v7;
  return result;
}

uint64_t sub_26A7156E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5918);
  sub_26A851058();
  return sub_26A851068();
}

uint64_t sub_26A715758@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26A714A84(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_26A715784@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26A714F88(a1, *(v2 + 16));
  *a2 = result;
  return result;
}

unint64_t sub_26A7157B0()
{
  result = qword_2803AE718;
  if (!qword_2803AE718)
  {
    sub_26A84FFA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AE718);
  }

  return result;
}

uint64_t sub_26A715864(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_26A7158A4(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_26A715908()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0 + *(type metadata accessor for SummaryItemPairView() + 24);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v8, 0);
    (*(v3 + 8))(v6, v1);
    return v11[1];
  }

  return v8;
}

uint64_t sub_26A715A50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SummaryItemPairView();
  sub_26A4DBD68(v1 + *(v10 + 28), v9, &qword_2803A91A8);
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

uint64_t SummaryItemPairView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v49[0] = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  v8 = OUTLINED_FUNCTION_79(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v50 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0);
  v15 = OUTLINED_FUNCTION_79(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v49 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800);
  v23 = OUTLINED_FUNCTION_79(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_0();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v49 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A98A8);
  v31 = OUTLINED_FUNCTION_79(v30);
  MEMORY[0x28223BE20](v31);
  v33 = v49 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA8F0);
  v35 = OUTLINED_FUNCTION_79(v34);
  MEMORY[0x28223BE20](v35);
  v51 = v49 - v36;
  sub_26A84BF88();
  v55 = 0u;
  v56 = 0u;
  v57 = 1;
  v49[1] = sub_26A715908();
  sub_26A715A50(v21);
  v37 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v37);
  v52 = v1;
  v54 = v1;
  sub_26A4DBD68(v29, v26, &qword_2803B3800);
  if (__swift_getEnumTagSinglePayload(v26, 1, v2) == 1)
  {
    sub_26A4DBD10(v26, &qword_2803B3800);
    v38 = type metadata accessor for ActionType();
    v39 = v13;
    v40 = 1;
  }

  else
  {
    v41 = *(v4 + 32);
    v42 = v49[0];
    v41(v49[0], v26, v2);
    v41(v13, v42, v2);
    v43 = type metadata accessor for ActionType();
    swift_storeEnumTagMultiPayload();
    v39 = v13;
    v40 = 0;
    v38 = v43;
  }

  __swift_storeEnumTagSinglePayload(v39, v40, 1, v38);
  sub_26A4DBD68(v13, v50, &qword_2803A91C8);
  sub_26A4DBD68(v21, v18, &qword_2803A91C0);
  sub_26A4CE1A8();
  sub_26A4DBD10(v13, &qword_2803A91C8);
  sub_26A4DBD10(v21, &qword_2803A91C0);
  sub_26A4DBD10(v29, &qword_2803B3800);
  v44 = sub_26A84BEC8();
  v45 = v51;
  sub_26A4DEF10(v44);

  sub_26A4DBD10(v33, &qword_2803A98A8);
  sub_26A84BED8();

  v46 = v53;
  sub_26A4DBDB4(v45, v53, &qword_2803AA8F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5928);
  v48 = (v46 + *(result + 36));
  *v48 = 0xD000000000000019;
  v48[1] = 0x800000026A88EC90;
  return result;
}

uint64_t sub_26A716164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9908);
  MEMORY[0x28223BE20](v49);
  v42 = (v39 - v3);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A98E0);
  MEMORY[0x28223BE20](v46);
  v43 = v39 - v4;
  v5 = sub_26A84F3A8();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5970);
  MEMORY[0x28223BE20](v47);
  v9 = v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1650);
  MEMORY[0x28223BE20](v10);
  v12 = v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A98C0);
  MEMORY[0x28223BE20](v13);
  v15 = v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A98D0);
  MEMORY[0x28223BE20](v16);
  v18 = v39 - v17;
  v19 = sub_26A715908();
  if (sub_26A61B05C(v19, &unk_287B13068))
  {
    *v18 = sub_26A84FBF8();
    *(v18 + 1) = 0;
    v18[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1660);
    sub_26A716958(&v18[*(v20 + 44)]);
    sub_26A4DBD68(v18, v12, &qword_2803A98D0);
    swift_storeEnumTagMultiPayload();
    sub_26A4DBCC8(&qword_2803A98C8, &qword_2803A98D0);
    sub_26A4D48C0();
    sub_26A84FDF8();
    sub_26A4DBD68(v15, v9, &qword_2803A98C0);
    swift_storeEnumTagMultiPayload();
    sub_26A4D4808();
    sub_26A4DBCC8(&qword_2803A9900, &qword_2803A9908);
    sub_26A84FDF8();
    sub_26A4DBD10(v15, &qword_2803A98C0);
    v21 = v18;
    v22 = &qword_2803A98D0;
  }

  else
  {
    v39[0] = v10;
    v39[1] = v16;
    v40 = v15;
    v41 = v13;
    sub_26A715A50(v7);
    v23 = sub_26A84F388();
    (*(v44 + 8))(v7, v45);
    if (v23)
    {
      v24 = v43;
      sub_26A84BEF8();
      v25 = type metadata accessor for SummaryItemPairWatchView();
      sub_26A84BF08();
      sub_26A84BF18();
      v26 = v25[7];
      v27 = sub_26A84B888();
      __swift_storeEnumTagSinglePayload(v24 + v26, 1, 1, v27);
      v28 = v25[8];
      sub_26A84BF28();
      __swift_storeEnumTagSinglePayload(v24 + v28, 0, 1, v27);
      sub_26A84BF38();
      sub_26A84BEA8();
      __swift_storeEnumTagSinglePayload(v24 + v25[11], 1, 1, v27);
      v29 = v25[12];
      sub_26A84BF48();
      __swift_storeEnumTagSinglePayload(v24 + v29, 0, 1, v27);
      sub_26A84BF58();
      sub_26A84BEB8();
      sub_26A84BF78();
      sub_26A84BF98();
      type metadata accessor for SummaryItemPairView();
      type metadata accessor for SummaryItemPairCompanionView.PairState(0);
      sub_26A718820(&qword_2803AF210, type metadata accessor for SummaryItemPairCompanionView.PairState);
      v30 = sub_26A84EEF8();
      v31 = sub_26A84EB78();
      v32 = (v24 + *(v46 + 36));
      *v32 = v31;
      v32[1] = v30;
      v33 = &qword_2803A98E0;
      sub_26A4DBD68(v24, v12, &qword_2803A98E0);
      swift_storeEnumTagMultiPayload();
      sub_26A4DBCC8(&qword_2803A98C8, &qword_2803A98D0);
      sub_26A4D48C0();
      v34 = v40;
      sub_26A84FDF8();
      sub_26A4DBD68(v34, v9, &qword_2803A98C0);
      swift_storeEnumTagMultiPayload();
      sub_26A4D4808();
      sub_26A4DBCC8(&qword_2803A9900, &qword_2803A9908);
      sub_26A84FDF8();
      sub_26A4DBD10(v34, &qword_2803A98C0);
      v21 = v24;
    }

    else
    {
      v35 = sub_26A84FBF8();
      v36 = v42;
      *v42 = v35;
      *(v36 + 8) = 0;
      *(v36 + 16) = 1;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5978);
      sub_26A716AF8(a1, v36 + *(v37 + 44));
      v33 = &qword_2803A9908;
      sub_26A4DBD68(v36, v9, &qword_2803A9908);
      swift_storeEnumTagMultiPayload();
      sub_26A4D4808();
      sub_26A4DBCC8(&qword_2803A9900, &qword_2803A9908);
      sub_26A84FDF8();
      v21 = v36;
    }

    v22 = v33;
  }

  return sub_26A4DBD10(v21, v22);
}

uint64_t sub_26A716958@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84B888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_26A84BEF8();
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_26A4DBD10(v8, &qword_2803AA838);
    v9 = 1;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    TextPropertyView.init(_:)(v5, a1);
    (*(v3 + 8))(v8, v2);
    v9 = 0;
  }

  v10 = type metadata accessor for TextPropertyView();
  return __swift_storeEnumTagSinglePayload(a1, v9, 1, v10);
}

uint64_t sub_26A716AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5980);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for SummaryItemPairTitleView();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  sub_26A84BEF8();
  sub_26A84BF08();
  sub_26A84BF18();
  *v9 = sub_26A84FA78();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5988);
  sub_26A716CF8(a1, &v9[*(v16 + 44)]);
  sub_26A63C6A8(v15, v12);
  sub_26A4DBD68(v9, v6, &qword_2803B5980);
  sub_26A63C6A8(v12, a2);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5990);
  sub_26A4DBD68(v6, a2 + *(v17 + 48), &qword_2803B5980);
  sub_26A4DBD10(v9, &qword_2803B5980);
  sub_26A63C70C(v15);
  sub_26A4DBD10(v6, &qword_2803B5980);
  return sub_26A63C70C(v12);
}

uint64_t sub_26A716CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5998) - 8;
  MEMORY[0x28223BE20](v58);
  v61 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = (v54 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1688);
  v7 = v6 - 8;
  v57 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v60 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = v54 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = v54 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v54 - v15;
  sub_26A84BEA8();
  v17 = type metadata accessor for SummaryItemPairCompanionView(0);
  v18 = v17[5];
  v19 = sub_26A84B888();
  __swift_storeEnumTagSinglePayload(&v16[v18], 1, 1, v19);
  v20 = v17[6];
  sub_26A84BF28();
  __swift_storeEnumTagSinglePayload(&v16[v20], 0, 1, v19);
  sub_26A84BF38();
  v21 = &v16[v17[8]];
  type metadata accessor for SummaryItemPairCompanionView.PairState(0);
  sub_26A718820(&qword_2803AF210, type metadata accessor for SummaryItemPairCompanionView.PairState);
  *v21 = sub_26A84F678();
  v21[1] = v22;
  v23 = &v16[v17[9]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = a1 + *(type metadata accessor for SummaryItemPairView() + 20);
  v25 = *v24;
  v55 = *(v24 + 8);
  v56 = v25;
  v54[1] = *(v24 + 16);
  v26 = sub_26A84EEF8();
  v27 = sub_26A84EB78();
  v28 = &v16[*(v7 + 44)];
  *v28 = v27;
  v28[1] = v26;
  v29 = sub_26A84FBF8();
  v30 = v63;
  *v63 = v29;
  v30[1] = 0;
  *(v30 + 16) = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59A0);
  sub_26A717240(a1, v30 + *(v31 + 44));
  LOBYTE(v23) = sub_26A850238();
  sub_26A84ED48();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59A8) + 36);
  *v40 = v23;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  *(v30 + *(v58 + 44)) = 0x3FF0000000000000;
  sub_26A84BEB8();
  __swift_storeEnumTagSinglePayload(&v13[v17[5]], 1, 1, v19);
  v41 = v17[6];
  sub_26A84BF48();
  __swift_storeEnumTagSinglePayload(&v13[v41], 0, 1, v19);
  sub_26A84BF58();
  v42 = &v13[v17[8]];
  *v42 = sub_26A84F678();
  v42[1] = v43;
  v44 = &v13[v17[9]];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  v45 = sub_26A84EEF8();
  v46 = sub_26A84EB78();
  v47 = &v13[*(v57 + 44)];
  *v47 = v46;
  v47[1] = v45;
  v48 = v59;
  sub_26A4DBD68(v16, v59, &qword_2803B1688);
  v49 = v61;
  sub_26A4DBD68(v30, v61, &qword_2803B5998);
  v50 = v60;
  sub_26A4DBD68(v13, v60, &qword_2803B1688);
  v51 = v62;
  sub_26A4DBD68(v48, v62, &qword_2803B1688);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59B0);
  sub_26A4DBD68(v49, v51 + *(v52 + 48), &qword_2803B5998);
  sub_26A4DBD68(v50, v51 + *(v52 + 64), &qword_2803B1688);
  sub_26A4DBD10(v13, &qword_2803B1688);
  sub_26A4DBD10(v63, &qword_2803B5998);
  sub_26A4DBD10(v16, &qword_2803B1688);
  sub_26A4DBD10(v50, &qword_2803B1688);
  sub_26A4DBD10(v49, &qword_2803B5998);
  return sub_26A4DBD10(v48, &qword_2803B1688);
}

uint64_t sub_26A717240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v174 = a2;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF290);
  MEMORY[0x28223BE20](v158);
  v159 = &v152 - v3;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59B8);
  MEMORY[0x28223BE20](v157);
  v162 = &v152 - v4;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59C0);
  MEMORY[0x28223BE20](v160);
  v163 = &v152 - v5;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59C8);
  MEMORY[0x28223BE20](v161);
  v164 = &v152 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59D0);
  MEMORY[0x28223BE20](v7 - 8);
  v173 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v170 = &v152 - v10;
  MEMORY[0x28223BE20](v11);
  v172 = &v152 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD378);
  MEMORY[0x28223BE20](v13);
  v156 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v154 = &v152 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59D8);
  MEMORY[0x28223BE20](v17 - 8);
  v171 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v152 - v20;
  MEMORY[0x28223BE20](v22);
  v176 = &v152 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  MEMORY[0x28223BE20](v24 - 8);
  v167 = &v152 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v152 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v152 - v30;
  v32 = type metadata accessor for TextPropertyView();
  MEMORY[0x28223BE20](v32);
  v155 = &v152 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v152 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v152 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD360);
  MEMORY[0x28223BE20](v40 - 8);
  v169 = &v152 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v152 - v43;
  MEMORY[0x28223BE20](v45);
  v175 = &v152 - v46;
  sub_26A84BF68();
  v47 = sub_26A84B888();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v47);
  v168 = v13;
  v165 = v21;
  v166 = a1;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4DBD10(v31, &qword_2803AA838);
    v49 = 1;
  }

  else
  {
    v152 = *(v47 - 8);
    (*(v152 + 16))(v39, v31, v47);
    v50 = v32[5];
    v153 = v28;
    v51 = &v39[v50];
    *v51 = swift_getKeyPath();
    v51[8] = 0;
    v52 = v32[6];
    *&v39[v52] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
    swift_storeEnumTagMultiPayload();
    v53 = &v39[v32[7]];
    *v53 = swift_getKeyPath();
    v53[8] = 0;
    v54 = &v39[v32[8]];
    *v54 = swift_getKeyPath();
    *(v54 + 1) = 0;
    v54[16] = 0;
    *(v54 + 3) = swift_getKeyPath();
    v54[32] = 0;
    v55 = type metadata accessor for ActionHandler(0);
    v56 = v55[6];
    *&v54[v56] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v57 = &v54[v55[7]];
    *v57 = swift_getKeyPath();
    *(v57 + 1) = 0;
    v57[16] = 0;
    v58 = &v54[v55[8]];
    *v58 = swift_getKeyPath();
    v58[8] = 0;
    v59 = &v54[v55[9]];
    *v59 = swift_getKeyPath();
    v59[8] = 0;
    v60 = &v54[v55[10]];
    *v60 = swift_getKeyPath();
    v60[9] = 0;
    swift_unknownObjectWeakInit();
    v61 = v55[11];
    v62 = type metadata accessor for StandardActionHandler(0);
    __swift_storeEnumTagSinglePayload(&v54[v61], 1, 1, v62);
    sub_26A4DBD10(&v54[v61], &qword_2803B3910);
    v63 = &v54[v61];
    v13 = v168;
    __swift_storeEnumTagSinglePayload(v63, 1, 1, v62);
    (*(v152 + 8))(v31, v47);
    v64 = sub_26A8504A8();
    KeyPath = swift_getKeyPath();
    sub_26A592070(v39, v44);
    v49 = 0;
    v66 = &v44[*(v13 + 36)];
    *v66 = KeyPath;
    v66[1] = v64;
    v28 = v153;
  }

  __swift_storeEnumTagSinglePayload(v44, v49, 1, v13);
  sub_26A4DBDB4(v44, v175, &qword_2803AD360);
  sub_26A84BF78();
  if (__swift_getEnumTagSinglePayload(v28, 1, v47) == 1)
  {
    sub_26A4DBD10(v28, &qword_2803AA838);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59E0);
    v68 = v165;
    v69 = v165;
    v70 = 1;
  }

  else
  {
    v71 = *(v47 - 8);
    (*(v71 + 16))(v36, v28, v47);
    v72 = &v36[v32[5]];
    *v72 = swift_getKeyPath();
    v72[8] = 0;
    v73 = v32[6];
    *&v36[v73] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
    swift_storeEnumTagMultiPayload();
    v74 = &v36[v32[7]];
    *v74 = swift_getKeyPath();
    v74[8] = 0;
    v75 = &v36[v32[8]];
    *v75 = swift_getKeyPath();
    *(v75 + 1) = 0;
    v75[16] = 0;
    *(v75 + 3) = swift_getKeyPath();
    v75[32] = 0;
    v76 = type metadata accessor for ActionHandler(0);
    v77 = v76[6];
    *&v75[v77] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v78 = &v75[v76[7]];
    *v78 = swift_getKeyPath();
    *(v78 + 1) = 0;
    v78[16] = 0;
    v79 = &v75[v76[8]];
    *v79 = swift_getKeyPath();
    v79[8] = 0;
    v80 = &v75[v76[9]];
    *v80 = swift_getKeyPath();
    v80[8] = 0;
    v81 = &v75[v76[10]];
    *v81 = swift_getKeyPath();
    v81[9] = 0;
    swift_unknownObjectWeakInit();
    v82 = v76[11];
    v83 = type metadata accessor for StandardActionHandler(0);
    __swift_storeEnumTagSinglePayload(&v75[v82], 1, 1, v83);
    sub_26A4DBD10(&v75[v82], &qword_2803B3910);
    __swift_storeEnumTagSinglePayload(&v75[v82], 1, 1, v83);
    (*(v71 + 8))(v28, v47);
    v13 = v168;
    v84 = sub_26A850498();
    v85 = swift_getKeyPath();
    v86 = v154;
    sub_26A592070(v36, v154);
    v87 = (v86 + *(v13 + 36));
    *v87 = v85;
    v87[1] = v84;
    v88 = swift_getKeyPath();
    v68 = v165;
    sub_26A4DBDB4(v86, v165, &qword_2803AD378);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59E0);
    v89 = v68 + *(v67 + 36);
    *v89 = v88;
    *(v89 + 8) = 1;
    v69 = v68;
    v70 = 0;
  }

  __swift_storeEnumTagSinglePayload(v69, v70, 1, v67);
  v90 = v167;
  sub_26A4DBDB4(v68, v176, &qword_2803B59D8);
  sub_26A84BF98();
  if (__swift_getEnumTagSinglePayload(v90, 1, v47) == 1)
  {
    sub_26A4DBD10(v90, &qword_2803AA838);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59E8);
    v92 = v170;
    v93 = v170;
    v94 = 1;
  }

  else
  {
    v95 = *(v47 - 8);
    v96 = v155;
    (*(v95 + 16))(v155, v90, v47);
    v97 = v96 + v32[5];
    *v97 = swift_getKeyPath();
    *(v97 + 8) = 0;
    v98 = v13;
    v99 = v32[6];
    *(v96 + v99) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
    swift_storeEnumTagMultiPayload();
    v100 = v96 + v32[7];
    *v100 = swift_getKeyPath();
    *(v100 + 8) = 0;
    v101 = v96 + v32[8];
    *v101 = swift_getKeyPath();
    *(v101 + 8) = 0;
    *(v101 + 16) = 0;
    *(v101 + 24) = swift_getKeyPath();
    *(v101 + 32) = 0;
    v102 = type metadata accessor for ActionHandler(0);
    v103 = v102[6];
    *(v101 + v103) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v104 = v101 + v102[7];
    *v104 = swift_getKeyPath();
    *(v104 + 8) = 0;
    *(v104 + 16) = 0;
    v105 = v101 + v102[8];
    *v105 = swift_getKeyPath();
    *(v105 + 8) = 0;
    v106 = v101 + v102[9];
    *v106 = swift_getKeyPath();
    *(v106 + 8) = 0;
    v107 = v101 + v102[10];
    *v107 = swift_getKeyPath();
    *(v107 + 9) = 0;
    swift_unknownObjectWeakInit();
    v108 = v102[11];
    v109 = type metadata accessor for StandardActionHandler(0);
    __swift_storeEnumTagSinglePayload(v101 + v108, 1, 1, v109);
    sub_26A4DBD10(v101 + v108, &qword_2803B3910);
    __swift_storeEnumTagSinglePayload(v101 + v108, 1, 1, v109);
    (*(v95 + 8))(v90, v47);
    v110 = sub_26A850498();
    v111 = swift_getKeyPath();
    v112 = v156;
    sub_26A592070(v96, v156);
    v113 = (v112 + *(v98 + 36));
    *v113 = v111;
    v113[1] = v110;
    v114 = swift_getKeyPath();
    v115 = v159;
    sub_26A4DBDB4(v112, v159, &qword_2803AD378);
    v116 = v115 + *(v158 + 36);
    *v116 = v114;
    *(v116 + 8) = 1;
    *(v116 + 16) = 0;
    LOBYTE(v114) = sub_26A850238();
    v117 = v115;
    v118 = v162;
    sub_26A4DBDB4(v117, v162, &qword_2803AF290);
    v119 = v118 + *(v157 + 36);
    *v119 = v114;
    *(v119 + 8) = 0u;
    *(v119 + 24) = 0u;
    *(v119 + 40) = 1;
    LOBYTE(v114) = sub_26A8502A8();
    sub_26A84ED48();
    v121 = v120;
    v123 = v122;
    v125 = v124;
    v127 = v126;
    v128 = v163;
    sub_26A4DBDB4(v118, v163, &qword_2803B59B8);
    v129 = v128 + *(v160 + 36);
    *v129 = v114;
    *(v129 + 8) = v121;
    *(v129 + 16) = v123;
    *(v129 + 24) = v125;
    *(v129 + 32) = v127;
    *(v129 + 40) = 0;
    v130 = sub_26A850D98();
    LOBYTE(v118) = sub_26A850248();
    v131 = v164;
    sub_26A4DBDB4(v128, v164, &qword_2803B59C0);
    v132 = v131 + *(v161 + 36);
    *v132 = v130;
    *(v132 + 8) = v118;
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59E8);
    v92 = v170;
    v134 = &v170[*(v133 + 36)];
    v135 = *(sub_26A84F5F8() + 20);
    v136 = *MEMORY[0x277CE0118];
    v137 = sub_26A84FB88();
    (*(*(v137 - 8) + 104))(&v134[v135], v136, v137);
    __asm { FMOV            V0.2D, #2.0 }

    *v134 = _Q0;
    *&v134[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)] = 256;
    sub_26A4DBDB4(v131, v92, &qword_2803B59C8);
    v93 = v92;
    v94 = 0;
    v91 = v133;
  }

  __swift_storeEnumTagSinglePayload(v93, v94, 1, v91);
  v143 = v172;
  sub_26A4DBDB4(v92, v172, &qword_2803B59D0);
  v144 = v175;
  v145 = v169;
  sub_26A4DBD68(v175, v169, &qword_2803AD360);
  v146 = v176;
  v147 = v171;
  sub_26A4DBD68(v176, v171, &qword_2803B59D8);
  v148 = v173;
  sub_26A4DBD68(v143, v173, &qword_2803B59D0);
  v149 = v174;
  sub_26A4DBD68(v145, v174, &qword_2803AD360);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59F0);
  sub_26A4DBD68(v147, v149 + *(v150 + 48), &qword_2803B59D8);
  sub_26A4DBD68(v148, v149 + *(v150 + 64), &qword_2803B59D0);
  sub_26A4DBD10(v143, &qword_2803B59D0);
  sub_26A4DBD10(v146, &qword_2803B59D8);
  sub_26A4DBD10(v144, &qword_2803AD360);
  sub_26A4DBD10(v148, &qword_2803B59D0);
  sub_26A4DBD10(v147, &qword_2803B59D8);
  return sub_26A4DBD10(v145, &qword_2803AD360);
}

uint64_t type metadata accessor for SummaryItemPairView()
{
  result = qword_2803B5938;
  if (!qword_2803B5938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A71849C(uint64_t a1)
{
  result = sub_26A718820(&qword_2803B5930, MEMORY[0x277D631F8]);
  *(a1 + 8) = result;
  return result;
}

void sub_26A718538()
{
  sub_26A84BFA8();
  if (v0 <= 0x3F)
  {
    sub_26A63C380();
    if (v1 <= 0x3F)
    {
      sub_26A4E5DC4(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
      if (v2 <= 0x3F)
      {
        sub_26A4E5DC4(319, &qword_2803A9230, MEMORY[0x277CDFA28]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_26A718624()
{
  result = qword_2803B5948;
  if (!qword_2803B5948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5928);
    sub_26A7186B0();
    sub_26A63C610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5948);
  }

  return result;
}

unint64_t sub_26A7186B0()
{
  result = qword_2803B5950;
  if (!qword_2803B5950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA8F0);
    sub_26A718768();
    sub_26A4DBCC8(&qword_28157FB60, &qword_2803A9438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5950);
  }

  return result;
}

unint64_t sub_26A718768()
{
  result = qword_2803B5958;
  if (!qword_2803B5958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AA8E8);
    sub_26A4DBCC8(&qword_2803B5960, &qword_2803A98A8);
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5958);
  }

  return result;
}

uint64_t sub_26A718820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TextStylesView.StyleType.hashValue.getter()
{
  v1 = *v0;
  sub_26A8526B8();
  MEMORY[0x26D664930](v1);
  return sub_26A8526F8();
}

SnippetUI::TextStylesView __swiftcall TextStylesView.init(_:showLoremIpsum:)(SnippetUI::TextStylesView::StyleType _, Swift::Bool showLoremIpsum)
{
  *v2 = *_;
  v2[1] = showLoremIpsum;
  result.type = _;
  return result;
}

uint64_t TextStylesView.body.getter(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1[1];
  if (*v1)
  {
    if (*v1 != 1)
    {
      v34[0] = sub_26A84FBF8();
      v34[1] = 0x4018000000000000;
      v35 = 0;
      sub_26A719EE0(v34[0]);
      v36 = sub_26A850E18();
      v37 = sub_26A850248();
      KeyPath = swift_getKeyPath();
      v39 = v2;
      OUTLINED_FUNCTION_3_70(v34);
      v42 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5A00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59F8);
      sub_26A71AB50();
      OUTLINED_FUNCTION_0_78();
      OUTLINED_FUNCTION_111();
      sub_26A71AC34(v19, v20, v21, v22);
      OUTLINED_FUNCTION_7_54();
      sub_26A84FDF8();
      goto LABEL_7;
    }

    sub_26A84FBF8();
    OUTLINED_FUNCTION_4_66();
    sub_26A71964C(v3);
    v26[323] = sub_26A850E18();
    v27 = sub_26A850248();
    v28 = swift_getKeyPath();
    v29 = v2;
    OUTLINED_FUNCTION_3_70(v26);
    v41 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5A18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5A48);
    OUTLINED_FUNCTION_2_77();
    sub_26A71AC34(v4, &qword_2803B5A18, &unk_26A87BE38, v5);
    OUTLINED_FUNCTION_1_81();
    OUTLINED_FUNCTION_111();
    sub_26A71AC34(v6, v7, v8, v9);
    OUTLINED_FUNCTION_7_54();
  }

  else
  {
    sub_26A84FBF8();
    OUTLINED_FUNCTION_4_66();
    sub_26A718CB0(v10);
    v30 = sub_26A850E18();
    v31 = sub_26A850248();
    v32 = swift_getKeyPath();
    v33 = v2;
    OUTLINED_FUNCTION_3_70(v26);
    v41 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5A18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5A48);
    OUTLINED_FUNCTION_2_77();
    OUTLINED_FUNCTION_111();
    sub_26A71AC34(v11, v12, v13, v14);
    OUTLINED_FUNCTION_1_81();
    sub_26A71AC34(v15, &qword_2803B5A48, &unk_26A87BE50, v16);
    OUTLINED_FUNCTION_7_54();
  }

  sub_26A84FDF8();
  sub_26A4EA070(v34, &v40, &qword_2803B5A00);
  v42 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B59F8);
  sub_26A71AB50();
  OUTLINED_FUNCTION_0_78();
  sub_26A71AC34(v17, &qword_2803B59F8, &unk_26A87BE28, v18);
  OUTLINED_FUNCTION_7_54();
  sub_26A84FDF8();
  sub_26A4E2544(v34, &qword_2803B5A00);
LABEL_7:
  OUTLINED_FUNCTION_111();
  return sub_26A4E2544(v23, v24);
}

uint64_t sub_26A718CB0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  KeyPath = swift_getKeyPath();
  if (qword_2803A9018 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2760, v72, &qword_2803AA880);
  sub_26A6AEE74(v73);
  memcpy(v71, v73, sizeof(v71));
  v72[11] = 0;
  v68 = 0;
  v67 = KeyPath;
  v69 = 1954047316;
  v72[10] = sub_26A80A810;
  v70 = 0xE400000000000000;
  v2 = swift_getKeyPath();
  if (qword_28157E6B0 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_281588898, v66, &qword_2803AA880);
  sub_26A6AEE74(v74);
  memcpy(v65, v74, sizeof(v65));
  v66[11] = 0;
  v62 = 0;
  v61 = v2;
  v63 = 0x322074786554;
  v66[10] = sub_26A80A810;
  v64 = 0xE600000000000000;
  v3 = swift_getKeyPath();
  if (qword_2803A9028 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D27B0, v60, &qword_2803AA880);
  sub_26A6AEE74(v75);
  memcpy(v59, v75, sizeof(v59));
  v60[11] = 0;
  v57 = 0;
  v56 = v3;
  strcpy(v58, "Leading Text");
  v60[10] = sub_26A80A810;
  HIBYTE(v58[6]) = 0;
  v58[7] = -5120;
  v4 = swift_getKeyPath();
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2815888E8, v55, &qword_2803AA880);
  sub_26A6AEE74(v76);
  memcpy(v54, v76, sizeof(v54));
  v55[11] = 0;
  v52 = 0;
  v51 = v4;
  strcpy(v53, "Primary Label");
  v55[10] = sub_26A80A810;
  v53[7] = -4864;
  v5 = swift_getKeyPath();
  if (qword_2803A9038 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2800, v50, &qword_2803AA880);
  sub_26A6AEE74(v77);
  memcpy(v49, v77, sizeof(v49));
  v50[11] = 0;
  v46 = 0;
  v45 = v5;
  v47 = 0x636E657265666552;
  v50[10] = sub_26A80A810;
  v48 = 0xEF6C6562614C2065;
  v6 = swift_getKeyPath();
  if (qword_2803A9040 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2850, v44, &qword_2803AA880);
  sub_26A6AEE74(v78);
  memcpy(v43, v78, sizeof(v43));
  v44[10] = sub_26A80A810;
  v44[11] = 0;
  v39 = v6;
  v40 = 0;
  v41 = 0x54206D6574737953;
  v42 = 0xEB00000000747865;
  v7 = swift_getKeyPath();
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_281588848, v38, &qword_2803AA880);
  sub_26A6AEE74(v79);
  memcpy(v37, v79, sizeof(v37));
  v38[10] = sub_26A80A810;
  v38[11] = 0;
  v33 = v7;
  v34 = 0;
  v35 = 0x2074786574627553;
  v36 = 0xE900000000000031;
  v8 = swift_getKeyPath();
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2815887F8, v32, &qword_2803AA880);
  sub_26A6AEE74(v80);
  memcpy(v31, v80, sizeof(v31));
  v32[10] = sub_26A80A810;
  v32[11] = 0;
  v27 = v8;
  v28 = 0;
  v29 = 0x2074786574627553;
  v30 = 0xE900000000000032;
  v9 = swift_getKeyPath();
  if (qword_2803A9048 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D28A0, v26, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v25, __src, sizeof(v25));
  v26[10] = sub_26A80A810;
  v26[11] = 0;
  v21 = v9;
  v22 = 0;
  v23 = 0x655420656772614CLL;
  v24 = 0xEA00000000007478;
  sub_26A4EA070(&v67, v19, &qword_2803AE648);
  v20[0] = v19;
  sub_26A4EA070(&v61, v18, &qword_2803AE648);
  v20[1] = v18;
  sub_26A4EA070(&v56, v17, &qword_2803AE648);
  v20[2] = v17;
  sub_26A4EA070(&v51, v16, &qword_2803AE648);
  v20[3] = v16;
  sub_26A4EA070(&v45, v15, &qword_2803AE648);
  v20[4] = v15;
  sub_26A4EA070(&v39, v14, &qword_2803AE648);
  v20[5] = v14;
  sub_26A4EA070(&v33, v13, &qword_2803AE648);
  v20[6] = v13;
  sub_26A4EA070(&v27, v12, &qword_2803AE648);
  v20[7] = v12;
  sub_26A4EA070(&v21, v11, &qword_2803AE648);
  v20[8] = v11;
  sub_26A594774(v20);
  sub_26A4E2544(&v21, &qword_2803AE648);
  sub_26A4E2544(&v27, &qword_2803AE648);
  sub_26A4E2544(&v33, &qword_2803AE648);
  sub_26A4E2544(&v39, &qword_2803AE648);
  sub_26A4E2544(&v45, &qword_2803AE648);
  sub_26A4E2544(&v51, &qword_2803AE648);
  sub_26A4E2544(&v56, &qword_2803AE648);
  sub_26A4E2544(&v61, &qword_2803AE648);
  sub_26A4E2544(&v67, &qword_2803AE648);
  sub_26A4E2544(v11, &qword_2803AE648);
  sub_26A4E2544(v12, &qword_2803AE648);
  sub_26A4E2544(v13, &qword_2803AE648);
  sub_26A4E2544(v14, &qword_2803AE648);
  sub_26A4E2544(v15, &qword_2803AE648);
  sub_26A4E2544(v16, &qword_2803AE648);
  sub_26A4E2544(v17, &qword_2803AE648);
  sub_26A4E2544(v18, &qword_2803AE648);
  return sub_26A4E2544(v19, &qword_2803AE648);
}

uint64_t sub_26A71964C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  KeyPath = swift_getKeyPath();
  if (qword_2803A9050 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D28F0, v64, &qword_2803AA880);
  sub_26A6AEE74(v65);
  memcpy(v63, v65, sizeof(v63));
  v64[11] = 0;
  v60 = 0;
  v59 = KeyPath;
  v61 = 0x6165482068736153;
  v64[10] = sub_26A80A810;
  v62 = 0xEB00000000726564;
  v2 = swift_getKeyPath();
  if (qword_2803A9058 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2940, v58, &qword_2803AA880);
  sub_26A6AEE74(v66);
  memcpy(v57, v66, sizeof(v57));
  v58[11] = 0;
  v55 = 0;
  v54 = v2;
  strcpy(v56, "Marquee Header");
  v58[10] = sub_26A80A810;
  v56[15] = -18;
  v3 = swift_getKeyPath();
  if (qword_2803A9060 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2990, v53, &qword_2803AA880);
  sub_26A6AEE74(v67);
  memcpy(v52, v67, sizeof(v52));
  v53[11] = 0;
  v49 = 0;
  v48 = v3;
  v50 = 0x3120726564616548;
  v53[10] = sub_26A80A810;
  v51 = 0xE800000000000000;
  v4 = swift_getKeyPath();
  if (qword_2803A9068 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D29E0, v47, &qword_2803AA880);
  sub_26A6AEE74(v68);
  memcpy(v46, v68, sizeof(v46));
  v47[10] = sub_26A80A810;
  v47[11] = 0;
  v42 = v4;
  v43 = 0;
  v44 = 0xD000000000000013;
  v45 = 0x800000026A88ED10;
  v5 = swift_getKeyPath();
  if (qword_2803A9070 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2A30, v41, &qword_2803AA880);
  sub_26A6AEE74(v69);
  memcpy(v40, v69, sizeof(v40));
  v41[10] = sub_26A80A810;
  v41[11] = 0;
  v36 = v5;
  v37 = 0;
  v38 = 0x3220726564616548;
  v39 = 0xE800000000000000;
  v6 = swift_getKeyPath();
  if (qword_2803A9078 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2A80, v35, &qword_2803AA880);
  sub_26A6AEE74(v70);
  memcpy(v34, v70, sizeof(v34));
  v35[10] = sub_26A80A810;
  v35[11] = 0;
  v30 = v6;
  v31 = 0;
  v32 = 0x3320726564616548;
  v33 = 0xE800000000000000;
  v7 = swift_getKeyPath();
  if (qword_2803A9080 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2AD0, v29, &qword_2803AA880);
  sub_26A6AEE74(v71);
  memcpy(v28, v71, sizeof(v28));
  v29[10] = sub_26A80A810;
  v29[11] = 0;
  v24 = v7;
  v25 = 0;
  v26 = 0xD000000000000016;
  v27 = 0x800000026A88ED30;
  v8 = swift_getKeyPath();
  if (qword_2803A9088 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2B20, v23, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v22, __src, sizeof(v22));
  v23[10] = sub_26A80A810;
  v23[11] = 0;
  v19 = v8;
  v20 = 0;
  strcpy(v21, "Header Subtext");
  v21[15] = -18;
  sub_26A4EA070(&v59, v17, &qword_2803AE648);
  v18[0] = v17;
  sub_26A4EA070(&v54, v16, &qword_2803AE648);
  v18[1] = v16;
  sub_26A4EA070(&v48, v15, &qword_2803AE648);
  v18[2] = v15;
  sub_26A4EA070(&v42, v14, &qword_2803AE648);
  v18[3] = v14;
  sub_26A4EA070(&v36, v13, &qword_2803AE648);
  v18[4] = v13;
  sub_26A4EA070(&v30, v12, &qword_2803AE648);
  v18[5] = v12;
  sub_26A4EA070(&v24, v11, &qword_2803AE648);
  v18[6] = v11;
  sub_26A4EA070(&v19, &v10, &qword_2803AE648);
  v18[7] = &v10;
  sub_26A594818(v18);
  sub_26A4E2544(&v19, &qword_2803AE648);
  sub_26A4E2544(&v24, &qword_2803AE648);
  sub_26A4E2544(&v30, &qword_2803AE648);
  sub_26A4E2544(&v36, &qword_2803AE648);
  sub_26A4E2544(&v42, &qword_2803AE648);
  sub_26A4E2544(&v48, &qword_2803AE648);
  sub_26A4E2544(&v54, &qword_2803AE648);
  sub_26A4E2544(&v59, &qword_2803AE648);
  sub_26A4E2544(&v10, &qword_2803AE648);
  sub_26A4E2544(v11, &qword_2803AE648);
  sub_26A4E2544(v12, &qword_2803AE648);
  sub_26A4E2544(v13, &qword_2803AE648);
  sub_26A4E2544(v14, &qword_2803AE648);
  sub_26A4E2544(v15, &qword_2803AE648);
  sub_26A4E2544(v16, &qword_2803AE648);
  return sub_26A4E2544(v17, &qword_2803AE648);
}

uint64_t sub_26A719EE0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  KeyPath = swift_getKeyPath();
  if (qword_2803A90A8 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2C60, v57, &qword_2803AA880);
  sub_26A6AEE74(v58);
  memcpy(v56, v58, sizeof(v56));
  v57[10] = sub_26A80A810;
  v57[11] = 0;
  v52 = KeyPath;
  v53 = 0;
  v54 = 0xD000000000000011;
  v55 = 0x800000026A88ED50;
  v2 = swift_getKeyPath();
  if (qword_2803A90B0 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2CB0, v51, &qword_2803AA880);
  sub_26A6AEE74(v59);
  memcpy(v50, v59, sizeof(v50));
  v51[10] = sub_26A80A810;
  v51[11] = 0;
  v46 = v2;
  v47 = 0;
  v48 = 0xD00000000000001BLL;
  v49 = 0x800000026A88ED70;
  v3 = swift_getKeyPath();
  if (qword_2803A90B8 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2D00, v45, &qword_2803AA880);
  sub_26A6AEE74(v60);
  memcpy(v44, v60, sizeof(v44));
  v45[10] = sub_26A80A810;
  v45[11] = 0;
  v41 = v3;
  v42 = 0;
  strcpy(v43, "Control Label");
  v43[7] = -4864;
  v4 = swift_getKeyPath();
  if (qword_2803A90C0 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2D50, v40, &qword_2803AA880);
  sub_26A6AEE74(v61);
  memcpy(v39, v61, sizeof(v39));
  v40[10] = sub_26A80A810;
  v40[11] = 0;
  v35 = v4;
  v36 = 0;
  v37 = 0xD000000000000018;
  v38 = 0x800000026A88ED90;
  v5 = swift_getKeyPath();
  if (qword_2803A90C8 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2DA0, v34, &qword_2803AA880);
  sub_26A6AEE74(v62);
  memcpy(v33, v62, sizeof(v33));
  v34[10] = sub_26A80A810;
  v34[11] = 0;
  v29 = v5;
  v30 = 0;
  v31 = 0xD000000000000018;
  v32 = 0x800000026A88EDB0;
  v6 = swift_getKeyPath();
  if (qword_2803A90D0 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2DF0, v28, &qword_2803AA880);
  sub_26A6AEE74(v63);
  memcpy(v27, v63, sizeof(v27));
  v28[10] = sub_26A80A810;
  v28[11] = 0;
  v23 = v6;
  v24 = 0;
  v25 = 0xD00000000000001ALL;
  v26 = 0x800000026A88EDD0;
  v7 = swift_getKeyPath();
  if (qword_2803A90D8 != -1)
  {
    swift_once();
  }

  sub_26A4EA070(&unk_2803D2E40, v22, &qword_2803AA880);
  sub_26A6AEE74(__src);
  memcpy(v21, __src, sizeof(v21));
  v22[10] = sub_26A80A810;
  v22[11] = 0;
  v17 = v7;
  v18 = 0;
  v19 = 0xD00000000000001ELL;
  v20 = 0x800000026A88EDF0;
  sub_26A4EA070(&v52, v15, &qword_2803AE648);
  v16[0] = v15;
  sub_26A4EA070(&v46, v14, &qword_2803AE648);
  v16[1] = v14;
  sub_26A4EA070(&v41, v13, &qword_2803AE648);
  v16[2] = v13;
  sub_26A4EA070(&v35, v12, &qword_2803AE648);
  v16[3] = v12;
  sub_26A4EA070(&v29, v11, &qword_2803AE648);
  v16[4] = v11;
  sub_26A4EA070(&v23, v10, &qword_2803AE648);
  v16[5] = v10;
  sub_26A4EA070(&v17, v9, &qword_2803AE648);
  v16[6] = v9;
  sub_26A5948B0(v16);
  sub_26A4E2544(&v17, &qword_2803AE648);
  sub_26A4E2544(&v23, &qword_2803AE648);
  sub_26A4E2544(&v29, &qword_2803AE648);
  sub_26A4E2544(&v35, &qword_2803AE648);
  sub_26A4E2544(&v41, &qword_2803AE648);
  sub_26A4E2544(&v46, &qword_2803AE648);
  sub_26A4E2544(&v52, &qword_2803AE648);
  sub_26A4E2544(v9, &qword_2803AE648);
  sub_26A4E2544(v10, &qword_2803AE648);
  sub_26A4E2544(v11, &qword_2803AE648);
  sub_26A4E2544(v12, &qword_2803AE648);
  sub_26A4E2544(v13, &qword_2803AE648);
  sub_26A4E2544(v14, &qword_2803AE648);
  return sub_26A4E2544(v15, &qword_2803AE648);
}

uint64_t sub_26A71A648(uint64_t a1, char a2)
{
  v4 = sub_26A84F988();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v10[15];
  }

  return a1 & 1;
}

void *sub_26A71A790@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_26A84FA78();
  v18 = 0;
  sub_26A71A888(a1, a2 & 1, a3, a4, __src);
  memcpy(__dst, __src, 0x81uLL);
  memcpy(v20, __src, sizeof(v20));
  sub_26A4EA070(__dst, v15, &qword_2803B5AB0);
  OUTLINED_FUNCTION_111();
  sub_26A4E2544(v11, v12);
  memcpy(&v17[7], __dst, 0x81uLL);
  v13 = v18;
  *a5 = v10;
  *(a5 + 8) = 0x4024000000000000;
  *(a5 + 16) = v13;
  return memcpy((a5 + 17), v17, 0x88uLL);
}

uint64_t sub_26A71A888@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v28 = a3;
  *(&v28 + 1) = a4;
  sub_26A53ACC8();

  v8 = sub_26A850898();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  v15 = v12 & 1;
  LOBYTE(v28) = v12 & 1;
  LOBYTE(v31[0]) = 0;
  if (sub_26A71A648(a1, a2 & 1))
  {
    v16 = 0x800000026A88ECB0;
    v17 = swift_getKeyPath();

    v18 = MEMORY[0x277D84F90];
    v19 = 0xD000000000000057;
    v20 = 4;
  }

  else
  {
    v19 = 0;
    v16 = 0;
    v18 = 0;
    v17 = 0;
    v20 = 0;
  }

  *&v25 = v8;
  *(&v25 + 1) = v10;
  LOBYTE(v26) = v15;
  *(&v26 + 1) = v14;
  *v27 = 257;
  *&v27[8] = KeyPath;
  *&v27[16] = 1;
  v27[24] = 0;
  v29 = v26;
  *v30 = *v27;
  *&v30[9] = *&v27[9];
  v28 = v25;
  sub_26A4EA070(&v25, v31, &qword_2803B5AB8);
  sub_26A71B3B0(v19, v16, 0, v18);
  sub_26A71B400(v19, v16, 0, v18);
  v21 = v29;
  *a5 = v28;
  *(a5 + 16) = v21;
  v22 = *&v30[16];
  *(a5 + 32) = *v30;
  *(a5 + 48) = v22;
  *(a5 + 64) = 0;
  *(a5 + 72) = 1;
  *(a5 + 80) = v19;
  *(a5 + 88) = v16;
  *(a5 + 96) = 0;
  *(a5 + 104) = v18;
  *(a5 + 112) = v17;
  *(a5 + 120) = v20;
  *(a5 + 128) = 0;
  sub_26A71B400(v19, v16, 0, v18);
  v31[0] = v8;
  v31[1] = v10;
  v32 = v15;
  v33 = v14;
  v34 = 257;
  v35 = KeyPath;
  v36 = 1;
  v37 = 0;
  return sub_26A4E2544(v31, &qword_2803B5AB8);
}

uint64_t sub_26A71AAD8()
{
  sub_26A71B450();
  sub_26A84F998();
  return v1;
}

unint64_t sub_26A71AB50()
{
  result = qword_2803B5A08;
  if (!qword_2803B5A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5A00);
    sub_26A71AC34(&qword_2803B5A10, &qword_2803B5A18, &unk_26A87BE38, sub_26A71ACE4);
    sub_26A71AC34(&qword_2803B5A40, &qword_2803B5A48, &unk_26A87BE50, sub_26A71ADC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5A08);
  }

  return result;
}

uint64_t sub_26A71AC34(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A71ACE4()
{
  result = qword_2803B5A20;
  if (!qword_2803B5A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5A28);
    sub_26A4DBCC8(&qword_2803B5A30, &qword_2803B5A38);
    sub_26A4DBCC8(&qword_2803ADC60, &qword_2803ADC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5A20);
  }

  return result;
}

unint64_t sub_26A71ADC8()
{
  result = qword_2803B5A50;
  if (!qword_2803B5A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5A58);
    sub_26A4DBCC8(&qword_2803B5A60, &qword_2803B5A68);
    sub_26A4DBCC8(&qword_2803ADC60, &qword_2803ADC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5A50);
  }

  return result;
}

unint64_t sub_26A71AEAC()
{
  result = qword_2803B5A78;
  if (!qword_2803B5A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5A80);
    sub_26A4DBCC8(&qword_2803B5A88, &qword_2803B5A90);
    sub_26A4DBCC8(&qword_2803ADC60, &qword_2803ADC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5A78);
  }

  return result;
}

unint64_t sub_26A71AF94()
{
  result = qword_2803B5A98;
  if (!qword_2803B5A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5A98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextStylesView(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TextStylesView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TextStylesView.StyleType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A71B250()
{
  result = qword_2803B5AA0;
  if (!qword_2803B5AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5AA8);
    sub_26A71AB50();
    sub_26A71AC34(&qword_2803B5A70, &qword_2803B59F8, &unk_26A87BE28, sub_26A71AEAC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5AA0);
  }

  return result;
}

uint64_t sub_26A71B308(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_26A71B348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A71B3B0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26A4EF6C0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_26A71B400(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_26A4EC448(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_26A71B450()
{
  result = qword_2803B5AC0;
  if (!qword_2803B5AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5AC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_70(uint64_t a1)
{

  return sub_26A4EA070(a1, &STACK[0x16F0], v1);
}

uint64_t Form.__allocating_init()()
{
  v0 = swift_allocObject();
  Form.init()();
  return v0;
}

uint64_t sub_26A71B578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t Form.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();
}

uint64_t sub_26A71B634()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26A84EC28();
}

uint64_t Form.$state.getter()
{
  OUTLINED_FUNCTION_31_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5AD8);
  sub_26A84EBE8();
  return swift_endAccess();
}

uint64_t sub_26A71B708(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5AE0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return sub_26A71B7DC(v5);
}

uint64_t sub_26A71B7DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5AE0);
  OUTLINED_FUNCTION_15();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5AD8);
  sub_26A84EBF8();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t Form.init()()
{
  if (qword_28157DB78 != -1)
  {
    OUTLINED_FUNCTION_4_67();
  }

  OUTLINED_FUNCTION_31_12();

  sub_26A84EBD8();
  swift_endAccess();
  *(v0 + OBJC_IVAR____TtC9SnippetUI4Form_controls) = sub_26A8516A8();
  return v0;
}

uint64_t Form.updateControl(_:state:)()
{
  v1 = OBJC_IVAR____TtC9SnippetUI4Form_controls;
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  *&v52 = *(v0 + v1);
  sub_26A65594C();
  *(v0 + v1) = v52;

  swift_endAccess();
  v2 = *(v0 + v1);
  v3 = qword_28157DB78;

  if (v3 != -1)
  {
    goto LABEL_42;
  }

LABEL_2:
  v4 = v2 + 64;
  v5 = off_28157DB80;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v40 = v2 + 64;
  v41 = v2;
  v39 = v9;
LABEL_5:
  while (1)
  {
    v11 = v5;
    if (!v8)
    {
      break;
    }

    v12 = v8;
LABEL_11:
    v5 = 0;
    v8 = (v12 - 1) & v12;
    if (v11)
    {
      v5 = *(*(v2 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v12)))));
      if (v5)
      {
        v42 = (v12 - 1) & v12;
        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v11;
        sub_26A71B578(v5, sub_26A71CDA0, 0, v62);
        v15 = v62[1];
        v16 = v62[3];
        v17 = v62[4];
        v43 = v62[0];
        v44 = v62[5];
        v18 = (v62[2] + 64) >> 6;

        v5 = v11;
        while (1)
        {
          v19 = v17;
          v2 = v16;
          if (!v17)
          {
            v20 = v16;
            while (1)
            {
              v2 = v20 + 1;
              if (__OFADD__(v20, 1))
              {
                break;
              }

              if (v2 >= v18)
              {
                v56 = 0;
                v54 = 0u;
                v55 = 0u;
                v52 = 0u;
                v53 = 0u;
                goto LABEL_35;
              }

              v19 = *(v15 + 8 * v2);
              ++v20;
              if (v19)
              {
                goto LABEL_19;
              }
            }

            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            OUTLINED_FUNCTION_4_67();
            goto LABEL_2;
          }

LABEL_19:
          v45 = (v19 - 1) & v19;
          v21 = __clz(__rbit64(v19)) | (v2 << 6);
          sub_26A549760(*(v43 + 48) + 40 * v21, &v46);
          sub_26A5136A0(*(v43 + 56) + 32 * v21, v51);
          v52 = v46;
          v53 = v47;
          *&v54 = v48;
          sub_26A576F3C(v51, (&v54 + 8));
          v22 = v2;
          if (!*(&v53 + 1))
          {
LABEL_35:
            v60 = 0;
            memset(v59, 0, sizeof(v59));
            v57 = 0u;
            v58 = 0u;
LABEL_36:

            swift_bridgeObjectRelease_n();
            sub_26A55E6A0();

            v4 = v40;
            v2 = v41;
            v9 = v39;
            v8 = v42;
            goto LABEL_5;
          }

          v46 = v52;
          v47 = v53;
          v48 = v54;
          v49 = v55;
          v50 = v56;
          v44(&v57, &v46);
          sub_26A71CDB4(&v46);
          if (!*(&v58 + 1))
          {
            goto LABEL_36;
          }

          v52 = v57;
          v53 = v58;
          *&v54 = *&v59[0];
          sub_26A576F3C((v59 + 8), &v46);
          v2 = v5;
          v24 = sub_26A548744();
          v25 = v5[2];
          v26 = (v23 & 1) == 0;
          v27 = v25 + v26;
          if (__OFADD__(v25, v26))
          {
            goto LABEL_40;
          }

          v28 = v23;
          if (v5[3] >= v27)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v23)
              {
                goto LABEL_28;
              }
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADC08);
              v2 = &v61;
              sub_26A8523F8();
              if (v28)
              {
                goto LABEL_28;
              }
            }
          }

          else
          {
            sub_26A71CA10(v27, isUniquelyReferenced_nonNull_native & 1);
            v2 = v61;
            v29 = sub_26A548744();
            if ((v28 & 1) != (v30 & 1))
            {
              result = sub_26A852618();
              __break(1u);
              return result;
            }

            v24 = v29;
            if (v28)
            {
LABEL_28:
              sub_26A5497BC(&v52);
              v5 = v61;
              v31 = (v61[7] + 32 * v24);
              __swift_destroy_boxed_opaque_existential_1(v31);
              sub_26A576F3C(&v46, v31);
              goto LABEL_33;
            }
          }

          v5 = v61;
          v61[(v24 >> 6) + 8] |= 1 << v24;
          v32 = v5[6] + 40 * v24;
          v33 = v54;
          v34 = v53;
          *v32 = v52;
          *(v32 + 16) = v34;
          *(v32 + 32) = v33;
          sub_26A576F3C(&v46, (v5[7] + 32 * v24));
          v35 = v5[2];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            goto LABEL_41;
          }

          v5[2] = v37;
LABEL_33:
          isUniquelyReferenced_nonNull_native = 1;
          v16 = v22;
          v17 = v45;
        }
      }
    }
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_39;
    }

    if (v13 >= v9)
    {
      break;
    }

    v12 = *(v4 + 8 * v13);
    ++v10;
    if (v12)
    {
      v10 = v13;
      goto LABEL_11;
    }
  }

  *&v57 = v5;
  return sub_26A71B634();
}

uint64_t Form.deinit()
{
  v1 = OBJC_IVAR____TtC9SnippetUI4Form__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5AD8);
  OUTLINED_FUNCTION_1_4();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t Form.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9SnippetUI4Form__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5AD8);
  OUTLINED_FUNCTION_1_4();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void *sub_26A71C034()
{
  result = sub_26A8516A8();
  off_28157DB80 = result;
  return result;
}

uint64_t static Form.State.validEmpty.getter@<X0>(void *a1@<X8>)
{
  if (qword_28157DB78 != -1)
  {
    OUTLINED_FUNCTION_4_67();
  }

  *a1 = off_28157DB80;
}

void sub_26A71C0F4()
{
  OUTLINED_FUNCTION_9_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B00);
  OUTLINED_FUNCTION_12_39();
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_24_23();
  if (!v4)
  {
LABEL_29:

LABEL_30:
    *v0 = v1;
    return;
  }

  v35 = v0;
  v5 = 0;
  v6 = v2 + 8;
  OUTLINED_FUNCTION_0_66();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v12 = v1 + 64;
  if ((v8 & v7) == 0)
  {
LABEL_4:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v5 >= v11)
      {
        break;
      }

      ++v14;
      if (v6[v5])
      {
        OUTLINED_FUNCTION_2_66();
        v9 = v16 & v15;
        goto LABEL_9;
      }
    }

    if ((v3 & 1) == 0)
    {

      v0 = v35;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_3_71();
    v0 = v35;
    if (v30 != v31)
    {
      OUTLINED_FUNCTION_18_26();
      *v6 = v32;
    }

    else
    {
      v33 = OUTLINED_FUNCTION_7_55();
      sub_26A6B8F84(v33, v34, (v2 + 8));
    }

    v2[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_9:
    v17 = v13 | (v5 << 6);
    v18 = *(v2[6] + 8 * v17);
    v19 = *(v2[7] + 8 * v17);
    if ((v3 & 1) == 0)
    {
    }

    sub_26A8526A8();
    OUTLINED_FUNCTION_14_35();
    if (((v22 << v21) & ~*(v12 + 8 * v20)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_2_78();
LABEL_21:
    OUTLINED_FUNCTION_5_64();
    *(v12 + v27) |= v28;
    *(*(v1 + 48) + 8 * v29) = v18;
    *(*(v1 + 56) + 8 * v29) = v19;
    OUTLINED_FUNCTION_16_26();
    if (!v9)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_0_79();
  while (1)
  {
    OUTLINED_FUNCTION_17_26();
    if (v26)
    {
      if (v24)
      {
        break;
      }
    }

    if (v23 == v25)
    {
      v23 = 0;
    }

    if (*(v12 + 8 * v23) != -1)
    {
      OUTLINED_FUNCTION_6_54();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_26A71C2BC()
{
  OUTLINED_FUNCTION_9_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACC18);
  OUTLINED_FUNCTION_12_39();
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_24_23();
  if (!v5)
  {

LABEL_26:
    *v0 = v1;
    return;
  }

  v22 = v0;
  v6 = 0;
  v7 = v2 + 8;
  OUTLINED_FUNCTION_1_82();
  if (!v0)
  {
LABEL_4:
    v9 = v6;
    while (1)
    {
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v6 >= v4)
      {
        break;
      }

      ++v9;
      if (v7[v6])
      {
        OUTLINED_FUNCTION_2_66();
        v0 = (v11 & v10);
        goto LABEL_9;
      }
    }

    if (v3)
    {
      OUTLINED_FUNCTION_3_71();
      if (v17 != v18)
      {
        OUTLINED_FUNCTION_18_26();
        *v7 = v19;
      }

      else
      {
        v20 = OUTLINED_FUNCTION_7_55();
        sub_26A6B8F84(v20, v21, (v2 + 8));
      }

      v2[2] = 0;
    }

    v0 = v22;
    goto LABEL_26;
  }

  while (1)
  {
    OUTLINED_FUNCTION_13_35();
LABEL_9:
    v23 = *(v2[7] + 16 * (v8 | (v6 << 6)));
    sub_26A8526A8();
    OUTLINED_FUNCTION_11_42();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_2_78();
LABEL_17:
    OUTLINED_FUNCTION_5_64();
    OUTLINED_FUNCTION_19_23(v14);
    *(v16 + 16 * v15) = v23;
    OUTLINED_FUNCTION_16_26();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_0_79();
  while (1)
  {
    OUTLINED_FUNCTION_17_26();
    if (v12)
    {
      if (v13)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_20_26();
    if (!v12)
    {
      OUTLINED_FUNCTION_6_54();
      goto LABEL_17;
    }
  }

LABEL_28:
  __break(1u);
}

void sub_26A71C43C(uint64_t a1, char a2)
{
  v3 = v2;
  v49 = sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_15();
  v48 = v9;
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    a1 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5AF0);
  OUTLINED_FUNCTION_12_39();
  v47 = a2;
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_24_23();
  if (!v11)
  {
LABEL_32:

LABEL_33:
    *v3 = a1;
    return;
  }

  v44 = v3;
  v12 = 0;
  v13 = v10 + 8;
  OUTLINED_FUNCTION_0_66();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  v45 = (v7 + 16);
  v46 = v7;
  v19 = (v7 + 32);
  v20 = a1 + 64;
  if ((v15 & v14) == 0)
  {
LABEL_6:
    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v18)
      {
        break;
      }

      ++v22;
      if (v13[v12])
      {
        OUTLINED_FUNCTION_2_66();
        v16 = v24 & v23;
        goto LABEL_11;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_3_71();
    v3 = v44;
    if (v39 != v40)
    {
      OUTLINED_FUNCTION_18_26();
      *v13 = v41;
    }

    else
    {
      v42 = OUTLINED_FUNCTION_7_55();
      sub_26A6B8F84(v42, v43, (v10 + 8));
    }

    v10[2] = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_11:
    v25 = v21 | (v12 << 6);
    v26 = *(v10[6] + 8 * v25);
    v27 = *(v7 + 72);
    v28 = v10[7] + v27 * v25;
    if (v47)
    {
      (*v19)(v48, v28, v49);
    }

    else
    {
      (*v45)(v48, v28, v49);
    }

    sub_26A8526A8();
    OUTLINED_FUNCTION_14_35();
    if (((v31 << v30) & ~*(v20 + 8 * v29)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_2_78();
LABEL_24:
    OUTLINED_FUNCTION_5_64();
    *(v20 + v36) |= v37;
    *(*(a1 + 48) + 8 * v38) = v26;
    (*v19)(*(a1 + 56) + v27 * v38, v48, v49);
    OUTLINED_FUNCTION_16_26();
    v7 = v46;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_0_79();
  while (1)
  {
    OUTLINED_FUNCTION_17_26();
    if (v35)
    {
      if (v33)
      {
        break;
      }
    }

    if (v32 == v34)
    {
      v32 = 0;
    }

    if (*(v20 + 8 * v32) != -1)
    {
      OUTLINED_FUNCTION_6_54();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_26A71C6DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = sub_26A84ACC8();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_15();
  v46 = v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5AF8);
  v45 = a2;
  v11 = sub_26A852478();
  if (!*(v10 + 16))
  {
LABEL_29:

LABEL_30:
    *v3 = v11;
    return;
  }

  v42 = v2;
  v12 = 0;
  v13 = (v10 + 64);
  OUTLINED_FUNCTION_0_66();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  v43 = v10;
  v44 = v7;
  v47 = (v7 + 32);
  v19 = v11 + 8;
  if ((v15 & v14) == 0)
  {
LABEL_4:
    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v18)
      {
        break;
      }

      ++v21;
      if (v13[v12])
      {
        OUTLINED_FUNCTION_2_66();
        v16 = v23 & v22;
        goto LABEL_9;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_30;
    }

    v3 = v42;
    if (1 << *(v10 + 32) >= 64)
    {
      v40 = OUTLINED_FUNCTION_7_55();
      sub_26A6B8F84(v40, v41, v13);
    }

    else
    {
      OUTLINED_FUNCTION_18_26();
      *v13 = v39;
    }

    *(v10 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_9:
    v24 = v20 | (v12 << 6);
    v48 = *(v44 + 72);
    v25 = OUTLINED_FUNCTION_21_25();
    v26(v25);
    v27 = *(*(v10 + 56) + 8 * v24);
    if ((v45 & 1) == 0)
    {
    }

    sub_26A625378();
    sub_26A8516E8();
    OUTLINED_FUNCTION_14_35();
    v31 = (v30 << v28) & ~v19[v29];
    if (!v31)
    {
      break;
    }

    v32 = __clz(__rbit64(v31)) | v28 & 0x7FFFFFFFFFFFFFC0;
    v33 = v46;
LABEL_21:
    *(v19 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    (*v47)(v11[6] + v48 * v32, v33, v5);
    *(v11[7] + 8 * v32) = v27;
    ++v11[2];
    v10 = v43;
    if (!v16)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_0_79();
  v33 = v46;
  while (1)
  {
    OUTLINED_FUNCTION_17_26();
    if (v37)
    {
      if (v35)
      {
        break;
      }
    }

    if (v34 == v36)
    {
      v34 = 0;
    }

    v38 = v19[v34];
    if (v38 != -1)
    {
      v32 = __clz(__rbit64(~v38)) + (v34 << 6);
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_26A71CA10(uint64_t a1, char a2)
{
  v4 = v2;
  v6 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5AE8);
  OUTLINED_FUNCTION_12_39();
  v7 = sub_26A852478();
  if (!v6[2])
  {

LABEL_29:
    *v4 = v7;
    return;
  }

  v31 = v2;
  v8 = 0;
  v9 = v6 + 8;
  OUTLINED_FUNCTION_1_82();
  if (!v2)
  {
LABEL_4:
    v11 = v8;
    while (1)
    {
      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v8 >= v3)
      {
        break;
      }

      ++v11;
      if (v9[v8])
      {
        OUTLINED_FUNCTION_2_66();
        v4 = (v13 & v12);
        goto LABEL_9;
      }
    }

    if (a2)
    {
      OUTLINED_FUNCTION_3_71();
      if (v26 != v27)
      {
        OUTLINED_FUNCTION_18_26();
        *v9 = v28;
      }

      else
      {
        v29 = OUTLINED_FUNCTION_7_55();
        sub_26A6B8F84(v29, v30, (v6 + 8));
      }

      v6[2] = 0;
    }

    v4 = v31;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_13_35();
LABEL_9:
    v14 = v10 | (v8 << 6);
    v15 = v6[6] + 40 * v14;
    if (a2)
    {
      v16 = *v15;
      v17 = *(v15 + 16);
      v35 = *(v15 + 32);
      v33 = v16;
      v34 = v17;
      sub_26A576F3C((v6[7] + 32 * v14), v32);
    }

    else
    {
      sub_26A549760(v15, &v33);
      sub_26A5136A0(v6[7] + 32 * v14, v32);
    }

    sub_26A8521A8();
    OUTLINED_FUNCTION_11_42();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_2_78();
LABEL_20:
    OUTLINED_FUNCTION_5_64();
    *(v7 + v20 + 64) |= v21;
    v23 = v7[6] + 40 * v22;
    v24 = v33;
    v25 = v34;
    *(v23 + 32) = v35;
    *v23 = v24;
    *(v23 + 16) = v25;
    sub_26A576F3C(v32, (v7[7] + 32 * v22));
    ++v7[2];
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_0_79();
  while (1)
  {
    OUTLINED_FUNCTION_17_26();
    if (v18)
    {
      if (v19)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_20_26();
    if (!v18)
    {
      OUTLINED_FUNCTION_6_54();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_26A71CC20()
{
  OUTLINED_FUNCTION_9_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3030);
  OUTLINED_FUNCTION_12_39();
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_24_23();
  if (!v5)
  {

LABEL_26:
    *v0 = v1;
    return;
  }

  v23 = v0;
  v6 = 0;
  v7 = v2 + 8;
  OUTLINED_FUNCTION_1_82();
  if (!v0)
  {
LABEL_4:
    v9 = v6;
    while (1)
    {
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v6 >= v4)
      {
        break;
      }

      ++v9;
      if (v7[v6])
      {
        OUTLINED_FUNCTION_2_66();
        v0 = (v11 & v10);
        goto LABEL_9;
      }
    }

    if (v3)
    {
      OUTLINED_FUNCTION_3_71();
      if (v18 != v19)
      {
        OUTLINED_FUNCTION_18_26();
        *v7 = v20;
      }

      else
      {
        v21 = OUTLINED_FUNCTION_7_55();
        sub_26A6B8F84(v21, v22, (v2 + 8));
      }

      v2[2] = 0;
    }

    v0 = v23;
    goto LABEL_26;
  }

  while (1)
  {
    OUTLINED_FUNCTION_13_35();
LABEL_9:
    v12 = *(v2[7] + 8 * (v8 | (v6 << 6)));
    sub_26A8526A8();
    OUTLINED_FUNCTION_11_42();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_2_78();
LABEL_17:
    OUTLINED_FUNCTION_5_64();
    OUTLINED_FUNCTION_19_23(v15);
    *(v17 + 8 * v16) = v12;
    OUTLINED_FUNCTION_16_26();
    if (!v0)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_0_79();
  while (1)
  {
    OUTLINED_FUNCTION_17_26();
    if (v13)
    {
      if (v14)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_20_26();
    if (!v13)
    {
      OUTLINED_FUNCTION_6_54();
      goto LABEL_17;
    }
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_26A71CDB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADC10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for Form()
{
  result = qword_28157DB48;
  if (!qword_28157DB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26A71CE70()
{
  sub_26A71CF38();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26A71CF38()
{
  if (!qword_28157FF08)
  {
    v0 = sub_26A84EC38();
    if (!v1)
    {
      atomic_store(v0, &qword_28157FF08);
    }
  }
}

uint64_t sub_26A71CF88(uint64_t *a1, unsigned int a2)
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

uint64_t sub_26A71CFD8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26A71D02C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_26A71D044(void *result, int a2)
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

uint64_t OUTLINED_FUNCTION_4_67()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_14()
{

  return sub_26A852478();
}

uint64_t getEnumTagSinglePayload for TableLayoutManager.Constants(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TableLayoutManager.Constants(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void *sub_26A71D28C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  *(swift_initStackObject() + 16) = xmmword_26A8570D0;
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  OUTLINED_FUNCTION_7_28(&qword_281588978);
  v6 = xmmword_26A87C210;
  v7 = xmmword_26A87C220;
  v8 = xmmword_26A87C230;
  *(inited + 40) = xmmword_26A87C210;
  *(inited + 32) = v1;
  *(inited + 56) = xmmword_26A87C220;
  *(inited + 72) = v8;
  *(swift_initStackObject() + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  OUTLINED_FUNCTION_2_33(&qword_281588968);
  *(inited + 88) = v2;
  v3 = v7;
  *(inited + 96) = v6;
  *(inited + 112) = v3;
  *(inited + 128) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v4 = sub_26A8516A8();
  return sub_26A80EA70(qword_2803D22E0, v4, &v6);
}

double sub_26A71D418()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  *(swift_initStackObject() + 16) = xmmword_26A8570D0;
  if (qword_28157E760 != -1)
  {
    OUTLINED_FUNCTION_7_17();
  }

  OUTLINED_FUNCTION_7_28(&qword_281588978);
  *(inited + 32) = v1;
  *(inited + 40) = xmmword_26A87C240;
  *(inited + 56) = 0x4018000000000000;
  *(swift_initStackObject() + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  OUTLINED_FUNCTION_2_33(&qword_281588968);
  *(inited + 64) = v2;
  *(inited + 72) = xmmword_26A87C250;
  *(inited + 88) = 0x4018000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v3 = sub_26A8516A8();
  sub_26A80E940(v3, v5, 20.0, 3.0, 6.0);
  xmmword_2803D2330 = v5[0];
  *&qword_2803D2340 = v5[1];
  result = *&v6;
  xmmword_2803D2350 = v6;
  qword_2803D2360 = v7;
  return result;
}

uint64_t type metadata accessor for StandardSiriButtonLabelStyle()
{
  result = qword_2803B5B38;
  if (!qword_2803B5B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A71D630()
{
  sub_26A71D7C8(319, &qword_2803B5B48, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_26A59B290(319, &qword_2803A9218, type metadata accessor for VRXIdiom);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_26A59B290(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_26A71D7C8(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_26A71D7C8(319, &qword_2803B3E90, &type metadata for ButtonItemButtonStyle.Role, MEMORY[0x277CDF468]);
          if (v10 > 0x3F)
          {
            return v9;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_26A71D7C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26A71D834()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_41();
  v7 = v6 - v5;
  v8 = *(v0 + 32);
  if ((*(v0 + 40) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v3 + 8))(v7, v1);
    return v11;
  }

  return v8;
}

uint64_t sub_26A71D964(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B50);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B58);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B60);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = sub_26A71D834();
  if (sub_26A61B05C(v11, &unk_287B13068))
  {
    sub_26A71DB58(a1, v10);
    sub_26A4DBD68(v10, v7, &qword_2803B5B60);
    swift_storeEnumTagMultiPayload();
    sub_26A71F9A4();
    sub_26A71FD10();
    OUTLINED_FUNCTION_4_68();
    v12 = v10;
    v13 = &qword_2803B5B60;
  }

  else
  {
    sub_26A71E778();
    sub_26A4DBD68(v4, v7, &qword_2803B5B50);
    swift_storeEnumTagMultiPayload();
    sub_26A71F9A4();
    sub_26A71FD10();
    OUTLINED_FUNCTION_4_68();
    v12 = v4;
    v13 = &qword_2803B5B50;
  }

  return sub_26A4DBD10(v12, v13);
}

uint64_t sub_26A71DB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v113 = sub_26A850D48();
  v109 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v108 = v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_26A84F988();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_26A84EE68();
  v122 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v120 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v119 = v102 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1550);
  MEMORY[0x28223BE20](v9 - 8);
  v111 = v102 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1570);
  MEMORY[0x28223BE20](v110);
  v112 = v102 - v11;
  v12 = sub_26A84F5F8() - 8;
  MEMORY[0x28223BE20](v12);
  v121 = (v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (v102 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5BA8);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = (v102 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B98);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = v102 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B88);
  v26 = v25 - 8;
  MEMORY[0x28223BE20](v25);
  v28 = v102 - v27;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B78);
  MEMORY[0x28223BE20](v106);
  v114 = v102 - v29;
  *v20 = sub_26A851448();
  v20[1] = v30;
  v31 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C10) + 44);
  v103 = v2;
  sub_26A71EB28(v2, a1, v31);
  v32 = sub_26A850DF8();
  KeyPath = swift_getKeyPath();
  v34 = (v20 + *(v18 + 44));
  *v34 = KeyPath;
  v34[1] = v32;
  sub_26A851448();
  sub_26A84F028();
  sub_26A4DBDB4(v20, v24, &qword_2803B5BA8);
  v35 = &v24[*(v22 + 44)];
  v36 = v128;
  *v35 = v127;
  *(v35 + 1) = v36;
  *(v35 + 2) = v129;
  v37 = 12.0;
  if (_UISolariumEnabled())
  {
    v38 = 18.0;
  }

  else
  {
    v38 = 12.0;
  }

  v39 = *(v12 + 28);
  v40 = *MEMORY[0x277CE0118];
  v41 = sub_26A84FB88();
  v42 = *(*(v41 - 8) + 104);
  v42(v16 + v39, v40, v41);
  *v16 = v38;
  v16[1] = v38;
  v43 = &v28[*(v26 + 44)];
  sub_26A63F65C(v16, v43);
  *(v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)) = 256;
  v107 = v28;
  v44 = v28;
  v45 = v104;
  sub_26A4DBDB4(v24, v44, &qword_2803B5B98);
  if (_UISolariumEnabled())
  {
    v37 = 18.0;
  }

  v46 = v121;
  v42(v121 + *(v12 + 28), v40, v41);
  v47 = v103;
  *v46 = v37;
  v46[1] = v37;
  v48 = type metadata accessor for StandardSiriButtonLabelStyle();
  v102[1] = *(v48 + 32);
  v49 = v119;
  sub_26A72008C(&qword_2803AB430, MEMORY[0x277CDF3E0], v119);
  v50 = *MEMORY[0x277CDF3C0];
  v51 = v122;
  v52 = v120;
  v102[0] = *(v122 + 104);
  (v102[0])(v120, v50, v45);
  sub_26A84EE58();
  v53 = *(v51 + 8);
  v53(v52, v45);
  v122 = v51 + 8;
  v53(v49, v45);
  v105 = v48;
  v54 = v47;
  v55 = v47 + *(v48 + 36);
  v56 = *v55;
  if (*(v55 + 8) != 1)
  {

    sub_26A851EA8();
    v57 = sub_26A8501F8();
    sub_26A84EA78();

    v58 = v115;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v56, 0);
    (*(v116 + 8))(v58, v117);
    if (v130 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v56)
  {
LABEL_10:
    v59 = v119;
    sub_26A72008C(&qword_2803AB430, MEMORY[0x277CDF3E0], v119);
    v60 = v120;
    (v102[0])(v120, v50, v45);
    sub_26A84EE58();
    v53(v60, v45);
    v53(v59, v45);
  }

LABEL_11:
  (*(v109 + 104))(v108, *MEMORY[0x277CE0EE0], v113);
  v61 = sub_26A850EA8();
  sub_26A84EF18();
  v62 = v121;
  v63 = v111;
  sub_26A6F5ED4(v121, v111);
  v64 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1558) + 36);
  v65 = v131;
  *v64 = v130;
  *(v64 + 16) = v65;
  *(v64 + 32) = v132;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1560);
  *(v63 + *(v66 + 52)) = v61;
  *(v63 + *(v66 + 56)) = 256;
  v67 = sub_26A851448();
  v69 = v68;
  sub_26A720648(v62);
  v70 = (v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1568) + 36));
  *v70 = v67;
  v70[1] = v69;
  LOBYTE(v67) = sub_26A850248();
  sub_26A84ED48();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v112;
  sub_26A4DBDB4(v63, v112, &qword_2803B1550);
  v80 = v79 + *(v110 + 36);
  *v80 = v67;
  *(v80 + 8) = v72;
  *(v80 + 16) = v74;
  *(v80 + 24) = v76;
  *(v80 + 32) = v78;
  *(v80 + 40) = 0;
  v81 = sub_26A851448();
  v83 = v82;
  v84 = v114;
  v85 = &v114[*(v106 + 36)];
  sub_26A4DBDB4(v79, v85, &qword_2803B1570);
  v86 = (v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1510) + 36));
  *v86 = v81;
  v86[1] = v83;
  sub_26A4DBDB4(v107, v84, &qword_2803B5B88);
  v87 = v54 + *(v105 + 44);
  v88 = *v87;
  if (*(v87 + 8) == 1)
  {
    v89 = 1.0;
    if (v88)
    {
      goto LABEL_18;
    }
  }

  else
  {

    sub_26A851EA8();
    v90 = sub_26A8501F8();
    sub_26A84EA78();

    v91 = v115;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v88, 0);
    (*(v116 + 8))(v91, v117);
    v89 = 1.0;
    if (v124)
    {
      goto LABEL_18;
    }
  }

  v92 = *(v54 + 16);
  v93 = *(v54 + 24);
  v124 = *(v54 + 8);
  v125 = v92;
  v126 = v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AC170);
  MEMORY[0x26D6634C0](&v123, v94);
  if (v123)
  {
    v89 = 0.95;
  }

  else
  {
    v89 = 1.0;
  }

LABEL_18:
  sub_26A8515A8();
  v96 = v95;
  v98 = v97;
  v99 = v118;
  sub_26A4DBDB4(v84, v118, &qword_2803B5B78);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5B60);
  v101 = v99 + *(result + 36);
  *v101 = v89;
  *(v101 + 8) = v89;
  *(v101 + 16) = v96;
  *(v101 + 24) = v98;
  return result;
}

uint64_t sub_26A71E778()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B09E0);
  MEMORY[0x28223BE20](v1);
  v3 = &v32 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C78);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5BD0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  if (*(v0 + 1))
  {
    sub_26A84FF98();
    sub_26A850408();
    v13 = sub_26A850318();

    KeyPath = swift_getKeyPath();
    v15 = &v3[*(v1 + 36)];
    *v15 = KeyPath;
    v15[1] = v13;
    v16 = &qword_2803B09E0;
    sub_26A4DBD68(v3, v6, &qword_2803B09E0);
    swift_storeEnumTagMultiPayload();
    sub_26A71FD9C();
    sub_26A609984();
    sub_26A84FDF8();
    v17 = v3;
  }

  else
  {
    v18 = sub_26A84FF78();
    sub_26A71F7F8(v18);
    v19 = sub_26A850338();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v19);
    v20 = sub_26A8503E8();
    sub_26A4DBD10(v9, &qword_2803AB208);
    v21 = swift_getKeyPath();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5BF0);
    v23 = &v12[*(v22 + 36)];
    *v23 = v21;
    v23[1] = v20;
    v24 = sub_26A71F7F8(v22);
    v26 = sub_26A71F7F8(v25);
    v27 = swift_getKeyPath();
    v28 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5BE0) + 36)];
    *v28 = v27;
    *(v28 + 1) = v24;
    v28[16] = 0;
    v29 = swift_getKeyPath();
    v30 = &v12[*(v10 + 36)];
    *v30 = v29;
    *(v30 + 1) = v26;
    v30[16] = 0;
    v16 = &qword_2803B5BD0;
    sub_26A4DBD68(v12, v6, &qword_2803B5BD0);
    swift_storeEnumTagMultiPayload();
    sub_26A71FD9C();
    sub_26A609984();
    sub_26A84FDF8();
    v17 = v12;
  }

  return sub_26A4DBD10(v17, v16);
}

uint64_t sub_26A71EB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C18);
  MEMORY[0x28223BE20](v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v29 = sub_26A84F2A8();
  MEMORY[0x28223BE20](v29);
  v10 = sub_26A84F988();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1 + *(type metadata accessor for StandardSiriButtonLabelStyle() + 40);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    v16 = *v14;
  }

  else
  {

    sub_26A851EA8();
    v28 = v10;
    v17 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v15, 0);
    (*(v11 + 8))(v13, v28);
    v16 = v33;
  }

  if (v16 == 1)
  {
    v33 = sub_26A850D78();
  }

  else
  {
    sub_26A84F298();
  }

  v18 = sub_26A84F038();
  LODWORD(v33) = sub_26A84FEC8();
  v19 = sub_26A84F038();
  v20 = sub_26A850248();
  sub_26A850DD8();
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  v33 = *(a1 + 8);
  v34 = v21;
  v35 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AC170);
  MEMORY[0x26D6634C0](&v32, v23);
  v24 = sub_26A850E68();

  *v9 = sub_26A84FBF8();
  *(v9 + 1) = 0x401C000000000000;
  v9[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C20);
  sub_26A71EF60(v31, a1, &v9[*(v25 + 44)]);
  *&v9[*(v30 + 36)] = sub_26A84FEA8();
  sub_26A4DBD68(v9, v6, &qword_2803B5C18);
  *a3 = v18;
  *(a3 + 8) = 256;
  *(a3 + 16) = v19;
  *(a3 + 24) = v20;
  *(a3 + 32) = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C28);
  sub_26A4DBD68(v6, a3 + *(v26 + 64), &qword_2803B5C18);

  sub_26A4DBD10(v9, &qword_2803B5C18);
  sub_26A4DBD10(v6, &qword_2803B5C18);
}

uint64_t sub_26A71EF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v66 = a1;
  v76 = a3;
  v65 = sub_26A84F988();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C30) - 8;
  MEMORY[0x28223BE20](v69);
  v5 = &v63 - v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C38) - 8;
  MEMORY[0x28223BE20](v70);
  v68 = &v63 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C40);
  MEMORY[0x28223BE20](v73);
  v75 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v72 = &v63 - v9;
  MEMORY[0x28223BE20](v10);
  v74 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v63 - v13;
  v15 = sub_26A850F68();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C48);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v71 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v63 - v23;
  sub_26A84FF78();
  (*(v16 + 104))(v18, *MEMORY[0x277CE1020], v15);
  KeyPath = swift_getKeyPath();
  v26 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C50) + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3678) + 28);
  (*(v16 + 32))(v26 + v27, v18, v15);
  v28 = __swift_storeEnumTagSinglePayload(v26 + v27, 0, 1, v15);
  *v26 = KeyPath;
  v29 = v67;
  sub_26A71F7F8(v28);
  sub_26A850388();
  v30 = sub_26A850338();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v30);
  v31 = sub_26A8503E8();
  sub_26A4DBD10(v14, &qword_2803AB208);
  v32 = swift_getKeyPath();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C58);
  v34 = &v24[*(v33 + 36)];
  *v34 = v32;
  v34[1] = v31;
  v35 = sub_26A71F7F8(v33);
  v36 = v29;
  v38 = sub_26A71F7F8(v37);
  v39 = swift_getKeyPath();
  v40 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C60) + 36)];
  *v40 = v39;
  *(v40 + 1) = v35;
  v40[16] = 0;
  v41 = swift_getKeyPath();
  v42 = *(v20 + 44);
  v43 = v68;
  v44 = &v24[v42];
  *v44 = v41;
  *(v44 + 1) = v38;
  v44[16] = 0;
  sub_26A84FF98();
  v45 = swift_getKeyPath();
  v46 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C68) + 36)];
  *v46 = v45;
  v46[8] = 1;
  sub_26A8503A8();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v30);
  v47 = sub_26A8503E8();
  sub_26A4DBD10(v14, &qword_2803AB208);
  v48 = swift_getKeyPath();
  v49 = &v5[*(v69 + 44)];
  *v49 = v48;
  v49[1] = v47;
  sub_26A851448();
  sub_26A84F628();
  sub_26A4DBDB4(v5, v43, &qword_2803B5C30);
  memcpy((v43 + *(v70 + 44)), __src, 0x70uLL);
  v50 = v36 + *(type metadata accessor for StandardSiriButtonLabelStyle() + 40);
  v51 = *v50;
  if (*(v50 + 8) == 1)
  {
    v52 = *v50;
  }

  else
  {

    sub_26A851EA8();
    v53 = sub_26A8501F8();
    sub_26A84EA78();

    v54 = v63;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v51, 0);
    (*(v64 + 8))(v54, v65);
    v52 = v77;
  }

  if (v52 == 1)
  {
    v77 = sub_26A850E18();
  }

  else
  {
    LODWORD(v77) = sub_26A84FEA8();
  }

  v55 = sub_26A84F038();
  v56 = v72;
  sub_26A4DBDB4(v43, v72, &qword_2803B5C38);
  v57 = v74;
  *(v56 + *(v73 + 36)) = v55;
  sub_26A4DBDB4(v56, v57, &qword_2803B5C40);
  v58 = v71;
  sub_26A4DBD68(v24, v71, &qword_2803B5C48);
  v59 = v75;
  sub_26A4DBD68(v57, v75, &qword_2803B5C40);
  v60 = v76;
  sub_26A4DBD68(v58, v76, &qword_2803B5C48);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C70);
  sub_26A4DBD68(v59, v60 + *(v61 + 48), &qword_2803B5C40);
  sub_26A4DBD10(v57, &qword_2803B5C40);
  sub_26A4DBD10(v24, &qword_2803B5C48);
  sub_26A4DBD10(v59, &qword_2803B5C40);
  return sub_26A4DBD10(v58, &qword_2803B5C48);
}

unint64_t sub_26A71F9A4()
{
  result = qword_2803B5B68;
  if (!qword_2803B5B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5B60);
    sub_26A71FA30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5B68);
  }

  return result;
}

unint64_t sub_26A71FA30()
{
  result = qword_2803B5B70;
  if (!qword_2803B5B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5B78);
    sub_26A71FAE8();
    sub_26A4DBCC8(&qword_2803B1508, &qword_2803B1510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5B70);
  }

  return result;
}

unint64_t sub_26A71FAE8()
{
  result = qword_2803B5B80;
  if (!qword_2803B5B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5B88);
    sub_26A71FBA0();
    sub_26A4DBCC8(&qword_28157FEA0, &qword_2803A9E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5B80);
  }

  return result;
}

unint64_t sub_26A71FBA0()
{
  result = qword_2803B5B90;
  if (!qword_2803B5B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5B98);
    sub_26A71FC2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5B90);
  }

  return result;
}

unint64_t sub_26A71FC2C()
{
  result = qword_2803B5BA0;
  if (!qword_2803B5BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5BA8);
    sub_26A4DBCC8(&qword_2803B5BB0, &qword_2803B5BB8);
    sub_26A4DBCC8(&qword_2803ABF30, &qword_2803ABF38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5BA0);
  }

  return result;
}

unint64_t sub_26A71FD10()
{
  result = qword_2803B5BC0;
  if (!qword_2803B5BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5B50);
    sub_26A71FD9C();
    sub_26A609984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5BC0);
  }

  return result;
}

unint64_t sub_26A71FD9C()
{
  result = qword_2803B5BC8;
  if (!qword_2803B5BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5BD0);
    sub_26A71FE54();
    sub_26A4DBCC8(&qword_2803B5C00, &qword_2803B5C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5BC8);
  }

  return result;
}

unint64_t sub_26A71FE54()
{
  result = qword_2803B5BD8;
  if (!qword_2803B5BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5BE0);
    sub_26A71FF0C();
    sub_26A4DBCC8(&qword_2803B5C00, &qword_2803B5C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5BD8);
  }

  return result;
}

unint64_t sub_26A71FF0C()
{
  result = qword_2803B5BE8;
  if (!qword_2803B5BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5BF0);
    sub_26A71FFF4(&qword_2803B5BF8, MEMORY[0x277CDE220]);
    sub_26A4DBCC8(&qword_28157FB78, &qword_2803AC4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5BE8);
  }

  return result;
}

uint64_t sub_26A71FFF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A72008C@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v14 = v13 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - v16;
  sub_26A4DBD68(v6, &v21 - v16, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a2(0);
    OUTLINED_FUNCTION_46();
    return (*(v18 + 32))(a3, v17);
  }

  else
  {
    sub_26A851EA8();
    v20 = sub_26A8501F8();
    OUTLINED_FUNCTION_7_56();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v14, v8);
  }
}

uint64_t sub_26A72029C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v20 = a3;
  v7 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  v16 = &v19 - v15;
  sub_26A4DBD68(v6, &v19 - v15, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v16, v20, a2);
  }

  sub_26A851EA8();
  v18 = sub_26A8501F8();
  OUTLINED_FUNCTION_7_56();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v9 + 8))(v13, v7);
}

uint64_t sub_26A720550()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A84F8D8();
  *v0 = result;
  return result;
}

uint64_t sub_26A7205A4()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A84F848();
  *v0 = result;
  return result;
}

uint64_t sub_26A7205F4()
{
  OUTLINED_FUNCTION_6_8();
  result = MEMORY[0x26D661920]();
  *v0 = result;
  return result;
}

uint64_t sub_26A720648(uint64_t a1)
{
  v2 = sub_26A84F5F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A7206A4()
{
  result = qword_2803B5C80;
  if (!qword_2803B5C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5C88);
    sub_26A71F9A4();
    sub_26A71FD10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5C80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_68()
{

  return sub_26A84FDF8();
}

uint64_t OUTLINED_FUNCTION_7_56()
{

  return sub_26A84EA78();
}

double sub_26A720778(uint64_t a1, uint64_t a2)
{
  v3 = sub_26A84B2F8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a2, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x277D62D28])
  {
    sub_26A7208E0();
    return v9;
  }

  else
  {
    v10 = 0.0;
    if (v8 != *MEMORY[0x277D62D30] && v8 != *MEMORY[0x277D62D20])
    {
      sub_26A7208E0();
      v10 = v12;
      (*(v4 + 8))(v7, v3);
    }
  }

  return v10;
}

uint64_t sub_26A7208E0()
{
  sub_26A84B278();
  v2 = v1;
  sub_26A84B288();
  v4 = v3;
  if (qword_2803A8BF0 != -1)
  {
    swift_once();
  }

  v5 = v2;
  v6 = v4;
  if (byte_2803B0440 == 1)
  {
    sub_26A4D7E10();
    switch(sub_26A63CD18())
    {
      case 1u:
      case 2u:
      case 3u:
        v7 = sub_26A852598();

        if ((v7 & 1) == 0)
        {
          goto LABEL_12;
        }

        break;
      case 4u:
        goto LABEL_12;
      default:

        break;
    }

    sub_26A84B2B8();
    sub_26A6EDDD8();
    result = sub_26A84C938();
    if ((result & 1) == 0 || *v0 == INFINITY)
    {
      result = sub_26A84C948();
      if ((result & 1) == 0 || *(v0 + 8) == INFINITY)
      {
        v9.n128_f64[0] = v5;
        v10.n128_f64[0] = v5;
        return (*(v0 + 16))(v9, v10);
      }
    }
  }

  else
  {
LABEL_12:
    sub_26A84B2B8();
    sub_26A6EDDD8();
    if (sub_26A84C948())
    {
      v11.n128_u64[0] = *(v0 + 8);
      v12.n128_f64[0] = v11.n128_f64[0] / v5 * v6;
    }

    else
    {
      v12.n128_u64[0] = *v0;
      v11.n128_f64[0] = *v0 / v6 * v5;
    }

    return (*(v0 + 16))(v11, v12);
  }

  return result;
}

uint64_t sub_26A720BA8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v2;
  v191 = a2;
  v8 = sub_26A850D48();
  v9 = OUTLINED_FUNCTION_0_9(v8, &v199);
  v187 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v12 - v11);
  v13 = sub_26A84EE68();
  v14 = OUTLINED_FUNCTION_0_9(v13, &v198);
  v184 = v15;
  MEMORY[0x28223BE20](v14);
  v183 = &v160[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_0(&v160[-v18]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CC0);
  OUTLINED_FUNCTION_0_9(v19, &v200);
  v189 = v20;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v22);
  v23 = sub_26A84F988();
  v24 = OUTLINED_FUNCTION_0_9(v23, &v187);
  v163 = v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_10_0(v27 - v26);
  v28 = sub_26A84FFA8();
  OpaqueTypeConformance2 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_41();
  v31 = v30 - v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE760);
  OUTLINED_FUNCTION_0_17(v32, &v188);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v33);
  v35 = &v160[-v34];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE750);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v37);
  v39 = &v160[-v38];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CC8);
  OUTLINED_FUNCTION_0_17(v40, &v190);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v41);
  v43 = &v160[-v42];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CD0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v45);
  v47 = &v160[-v46];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CD8);
  OUTLINED_FUNCTION_0_9(v48, &__src[8]);
  v170 = v49;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CE0);
  OUTLINED_FUNCTION_0_17(v52, &v194);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CE8);
  OUTLINED_FUNCTION_0_17(v55, v195);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CF0);
  OUTLINED_FUNCTION_0_17(v58, &__src[16]);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CF8);
  OUTLINED_FUNCTION_0_17(v61, &__src[48]);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5D00);
  OUTLINED_FUNCTION_0_9(v64, v197);
  v179 = v65;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5D08);
  OUTLINED_FUNCTION_0_17(v68, &__src[40]);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5D10);
  OUTLINED_FUNCTION_0_17(v71, &__src[64]);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE3A0);
  OUTLINED_FUNCTION_0_17(v74, &__src[88]);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AE3A8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_10_0(v78);
  v165 = v31;
  v190 = a1;
  sub_26A84FFB8();
  LODWORD(a1) = sub_26A850238();
  v192 = type metadata accessor for CarPlayComponentButtonStyle(0);
  v80 = *(v192 + 24);
  v194 = v7;
  v81 = v7 + v80;
  v82 = *v81;
  if (*(v81 + 8) != 1)
  {

    sub_26A851EA8();
    v83 = sub_26A8501F8();
    v161 = a1;
    a1 = v47;
    v84 = v43;
    v85 = v39;
    v86 = v35;
    v87 = v36;
    v88 = v28;
    v89 = v44;
    v90 = v83;
    sub_26A84EA78();

    v44 = v89;
    v28 = v88;
    v36 = v87;
    v35 = v86;
    v39 = v85;
    v43 = v84;
    v47 = a1;
    LOBYTE(a1) = v161;
    v91 = v162;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v82, 0);
    (*(v163 + 8))(v91, v164);
  }

  sub_26A84ED48();
  OUTLINED_FUNCTION_75_0();
  (*(OpaqueTypeConformance2 + 32))(v35, v165, v28);
  OUTLINED_FUNCTION_9_10();
  v93 = &v35[v92];
  *v93 = a1;
  *(v93 + 1) = v3;
  *(v93 + 2) = v4;
  *(v93 + 3) = v5;
  *(v93 + 4) = v6;
  v93[40] = 0;
  sub_26A851448();
  sub_26A84F628();
  sub_26A4D7EA8();
  memcpy(&v39[*(v36 + 36)], __src, 0x70uLL);
  sub_26A4D7EA8();
  OUTLINED_FUNCTION_9_10();
  *&v43[v94] = 256;
  v95 = sub_26A850E78();
  KeyPath = swift_getKeyPath();
  sub_26A4D7EA8();
  v97 = &v47[*(v44 + 36)];
  *v97 = KeyPath;
  v97[1] = v95;
  sub_26A851408();
  v98 = v168;
  v99 = MEMORY[0x277CE1340];
  v100 = MEMORY[0x277CE1350];
  sub_26A84FB98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5D18);
  sub_26A723214();
  v195[0] = v100;
  v195[1] = v99;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26A723358();
  v101 = v167;
  v102 = v193;
  sub_26A850CB8();
  v189 = *(v189 + 8);
  (v189)(v98, v102);
  sub_26A723410(v47);
  sub_26A850E18();
  v103 = v182;
  sub_26A720064(v182);
  v104 = v184;
  v105 = v183;
  v106 = v185;
  (*(v184 + 104))(v183, *MEMORY[0x277CDF3C0], v185);
  sub_26A84EE58();
  v107 = *(v104 + 8);
  v107(v105, v106);
  v107(v103, v106);
  v108 = sub_26A850E68();

  v109 = swift_getKeyPath();
  v110 = v169;
  (*(v170 + 32))(v169, v101, v171);
  OUTLINED_FUNCTION_9_10();
  v112 = (v110 + v111);
  *v112 = v109;
  v112[1] = v108;
  (*(v187 + 104))(v186, *MEMORY[0x277CE0EE0], v188);
  v113 = sub_26A850EA8();
  v114 = v172;
  sub_26A4D7EA8();
  OUTLINED_FUNCTION_9_10();
  v116 = v114 + v115;
  *v116 = v113;
  *(v116 + 8) = xmmword_26A860610;
  *(v116 + 24) = 0x4000000000000000;
  sub_26A850DD8();
  sub_26A84FFC8();
  v117 = sub_26A850E68();

  LOBYTE(v113) = sub_26A850248();
  v118 = v173;
  sub_26A4D7EA8();
  OUTLINED_FUNCTION_9_10();
  v120 = v118 + v119;
  *v120 = v117;
  *(v120 + 8) = v113;
  v121 = (v175 + *(v174 + 36));
  *v121 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v122 = v121 + *(type metadata accessor for CarPlayFocusableButton(0) + 20);
  *v122 = swift_getKeyPath();
  v122[8] = 0;
  sub_26A4D7EA8();
  sub_26A851408();
  sub_26A84FB98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5D48);
  sub_26A723498();
  sub_26A723858();
  v123 = v176;
  v124 = v193;
  sub_26A850CB8();
  (v189)(v98, v124);
  sub_26A4D6FD8();
  if (_UISolariumEnabled())
  {
    v125 = 18.0;
  }

  else
  {
    v125 = 12.0;
  }

  OUTLINED_FUNCTION_9_10();
  v126 = v177;
  v128 = (v177 + v127);
  v129 = *(sub_26A84F5F8() + 20);
  v130 = *MEMORY[0x277CE0118];
  sub_26A84FB88();
  OUTLINED_FUNCTION_46();
  (*(v131 + 104))(v128 + v129, v130);
  *v128 = v125;
  v128[1] = v125;
  *(v128 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)) = 256;
  (*(v179 + 32))(v126, v123, v180);
  v132 = sub_26A850278();
  v133 = v194 + *(v192 + 28);
  if (*(v133 + 32))
  {
    v134 = 10.0;
  }

  else
  {
    v134 = *(v133 + 24);
  }

  sub_26A84ED48();
  v136 = v135;
  v138 = v137;
  v140 = v139;
  v142 = v141;
  v143 = v178;
  sub_26A4D7EA8();
  OUTLINED_FUNCTION_9_10();
  v145 = v143 + v144;
  *v145 = v132;
  *(v145 + 8) = v136;
  *(v145 + 16) = v138;
  *(v145 + 24) = v140;
  *(v145 + 32) = v142;
  *(v145 + 40) = 0;
  v146 = sub_26A850298();
  sub_26A84ED48();
  OUTLINED_FUNCTION_75_0();
  v147 = v181;
  sub_26A4D7EA8();
  OUTLINED_FUNCTION_9_10();
  v149 = v147 + v148;
  *v149 = v146;
  *(v149 + 8) = v134;
  *(v149 + 16) = v136;
  *(v149 + 24) = v138;
  *(v149 + 32) = v140;
  *(v149 + 40) = 0;
  v150 = _UISolariumEnabled();
  v151.n128_u64[0] = 2.0;
  if (v150)
  {
    v151.n128_f64[0] = 0.0;
  }

  sub_26A58C3E4(v151, 0.0);
  sub_26A4D6FD8();
  if (sub_26A84FFC8())
  {
    v152 = 0.95;
  }

  else
  {
    v152 = 1.0;
  }

  sub_26A8515A8();
  v154 = v153;
  v156 = v155;
  v157 = v191;
  sub_26A4D7EA8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5D90);
  v159 = v157 + *(result + 36);
  *v159 = v152;
  *(v159 + 8) = v152;
  *(v159 + 16) = v154;
  *(v159 + 24) = v156;
  return result;
}

uint64_t sub_26A721C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84F2A8();
  MEMORY[0x28223BE20](v4);
  sub_26A84F298();
  v5 = sub_26A84F038();
  v6 = sub_26A850248();
  sub_26A723910(a1, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5D18);
  v8 = a2 + *(result + 36);
  *v8 = v5;
  *(v8 + 8) = v6;
  return result;
}

uint64_t sub_26A721D1C@<X0>(uint64_t a1@<X8>)
{
  v1 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5D48) + 36);
  sub_26A8513E8();
  v2 = sub_26A850248();
  *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF440) + 36)) = v2;

  return sub_26A4B3714();
}

uint64_t sub_26A721DAC()
{
  sub_26A851408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5DD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5DE0);
  OUTLINED_FUNCTION_3_23();
  sub_26A4D7DCC();
  sub_26A723E28();
  sub_26A72407C();
  return sub_26A850CA8();
}

uint64_t sub_26A721ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v49 = sub_26A84F5F8();
  MEMORY[0x28223BE20](v49);
  v54 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E50);
  MEMORY[0x28223BE20](v51);
  v53 = &v46 - v6;
  v7 = sub_26A84F988();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_26A84EE68();
  v11 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E10);
  MEMORY[0x28223BE20](v14);
  v56 = &v46 - v15;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E00);
  MEMORY[0x28223BE20](v50);
  v52 = &v46 - v16;
  v17 = a2 + *(type metadata accessor for CarPlayFocusableButton(0) + 20);
  v18 = *v17;
  v55 = *(v17 + 8);
  if (v55 == 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_3:
      sub_26A720064(v13);
      goto LABEL_6;
    }
  }

  else
  {

    sub_26A851EA8();
    v19 = sub_26A8501F8();
    v46 = a2;
    v20 = v19;
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v18, 0);
    (*(v8 + 8))(v10, v7);
    if (v59 != 1)
    {
      goto LABEL_3;
    }
  }

  sub_26A7225D0(v13);
LABEL_6:
  KeyPath = swift_getKeyPath();
  v22 = *(v14 + 36);
  v23 = v56;
  v24 = &v56[v22];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9E48);
  (*(v11 + 32))(v24 + *(v25 + 28), v13, v47);
  *v24 = KeyPath;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5DD0);
  (*(*(v26 - 8) + 16))(v23, v48, v26);
  if (_UISolariumEnabled())
  {
    v27 = 18.0;
  }

  else
  {
    v27 = 12.0;
  }

  v28 = *(v49 + 20);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_26A84FB88();
  v31 = v54;
  (*(*(v30 - 8) + 104))(v54 + v28, v29, v30);
  *v31 = v27;
  v31[1] = v27;
  if (v55)
  {
    v32 = v52;
    if ((v18 & 1) == 0)
    {
LABEL_11:
      v33 = sub_26A850DF8();
      goto LABEL_14;
    }
  }

  else
  {

    sub_26A851EA8();
    v34 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v18, 0);
    (*(v8 + 8))(v10, v7);
    v32 = v52;
    if (v58 != 1)
    {
      goto LABEL_11;
    }
  }

  v35 = [objc_opt_self() _carSystemFocusColor];
  v33 = sub_26A850D38();
LABEL_14:
  v36 = v33;
  v37 = v53;
  sub_26A63F65C(v31, v53);
  v38 = v51;
  *(v37 + *(v51 + 52)) = v36;
  *(v37 + *(v38 + 56)) = 256;
  v39 = sub_26A851448();
  v41 = v40;
  v42 = &v32[*(v50 + 36)];
  sub_26A4D7EA8();
  v43 = &v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E20) + 36)];
  *v43 = v39;
  v43[1] = v41;
  sub_26A4D7EA8();
  if (!v55)
  {

    sub_26A851EA8();
    v44 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v18, 0);
    (*(v8 + 8))(v10, v7);
    LOBYTE(v18) = v57;
  }

  sub_26A4D7EA8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5DD8);
  *(a3 + *(result + 36)) = v18 & 1;
  return result;
}

uint64_t sub_26A7225D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84EE68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  sub_26A720064(&v15 - v7);
  v9 = *MEMORY[0x277CDF3C0];
  v10 = *(v3 + 104);
  v10(v5, *MEMORY[0x277CDF3C0], v2);
  v11 = sub_26A84EE58();
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);
  if (v11)
  {
    v13 = *MEMORY[0x277CDF3D0];
  }

  else
  {
    v13 = v9;
  }

  return v10(a1, v13, v2);
}

uint64_t sub_26A722744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a1;
  v65 = a3;
  v4 = sub_26A850D48();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v62 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26A84F988();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v56 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26A84EE68();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v15 = sub_26A84F5F8();
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = (&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1550);
  MEMORY[0x28223BE20](v19 - 8);
  v61 = &v52 - v20;
  if (_UISolariumEnabled())
  {
    v21 = 18.0;
  }

  else
  {
    v21 = 12.0;
  }

  v22 = *(v16 + 28);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_26A84FB88();
  (*(*(v24 - 8) + 104))(v18 + v22, v23, v24);
  *v18 = v21;
  v18[1] = v21;
  v60 = v18;
  sub_26A720064(v14);
  v25 = *MEMORY[0x277CDF3C0];
  v53 = *(v9 + 104);
  v53(v11, v25, v8);
  sub_26A84EE58();
  v26 = *(v9 + 8);
  v26(v11, v8);
  v55 = v8;
  v26(v14, v8);
  v27 = *(type metadata accessor for CarPlayFocusableButton(0) + 20);
  v54 = a2;
  v28 = a2 + v27;
  v29 = *v28;
  if (*(v28 + 8) == 1)
  {
    if ((v29 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_26A851EA8();
  v30 = sub_26A8501F8();
  sub_26A84EA78();

  v31 = v56;
  sub_26A84F978();
  swift_getAtKeyPath();
  sub_26A49035C(v29, 0);
  (*(v57 + 8))(v31, v58);
  if (v66 == 1)
  {
LABEL_8:
    sub_26A720064(v14);
    v32 = v55;
    v53(v11, v25, v55);
    sub_26A84EE58();
    v26(v11, v32);
    v26(v14, v32);
  }

LABEL_9:
  (*(v63 + 104))(v62, *MEMORY[0x277CE0EE0], v64);
  v33 = sub_26A850EA8();
  sub_26A84EF18();
  v34 = v60;
  v35 = v61;
  sub_26A6F5ED4(v60, v61);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1558) + 36);
  v37 = v67;
  *v36 = v66;
  *(v36 + 16) = v37;
  *(v36 + 32) = v68;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1560);
  *(v35 + *(v38 + 52)) = v33;
  *(v35 + *(v38 + 56)) = 256;
  v39 = sub_26A851448();
  v41 = v40;
  sub_26A720648(v34);
  v42 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1568) + 36));
  *v42 = v39;
  v42[1] = v41;
  v43 = sub_26A851448();
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5DE0);
  v47 = v65;
  v48 = v65 + *(v46 + 36);
  sub_26A4D7EA8();
  v49 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E48) + 36));
  *v49 = v43;
  v49[1] = v45;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5DD0);
  return (*(*(v50 - 8) + 16))(v47, v59, v50);
}

uint64_t static FocusPreferenceKey.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_2803B5CA8 = a1;
  return result;
}

uint64_t (*static FocusPreferenceKey.defaultValue.modify())()
{
  OUTLINED_FUNCTION_196();
  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t sub_26A722E8C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_2803B5CA8;
  return result;
}

uint64_t sub_26A722ED8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_2803B5CA8 = v1;
  return result;
}

char *sub_26A722F20(char *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result)
  {
    v3 = 1;
  }

  else
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t static FocusPreferenceKey.reduce(value:nextValue:)(_BYTE *a1, uint64_t (*a2)(void))
{
  if (*a1)
  {
    result = 1;
  }

  else
  {
    result = a2();
  }

  *a1 = result & 1;
  return result;
}

uint64_t sub_26A722FB4@<X0>(_BYTE *a1@<X8>)
{
  result = static FocusPreferenceKey.defaultValue.getter();
  *a1 = result & 1;
  return result;
}

_BYTE *storeEnumTagSinglePayload for FocusPreferenceKey(_BYTE *result, int a2, int a3)
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

void sub_26A7230D8()
{
  sub_26A6C7C94(319, &qword_2803AD138, MEMORY[0x277D85048], type metadata accessor for EnvironmentConstant);
  if (v0 <= 0x3F)
  {
    sub_26A5B96FC();
    if (v1 <= 0x3F)
    {
      sub_26A6C7C94(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A6C7C94(319, &qword_2803AADC0, MEMORY[0x277CDF310], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_26A723214()
{
  result = qword_2803B5D20;
  if (!qword_2803B5D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CD0);
    sub_26A7232CC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5D20);
  }

  return result;
}

unint64_t sub_26A7232CC()
{
  result = qword_2803B5D28;
  if (!qword_2803B5D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CC8);
    sub_26A59B574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5D28);
  }

  return result;
}

unint64_t sub_26A723358()
{
  result = qword_2803B5D30;
  if (!qword_2803B5D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5D18);
    sub_26A723214();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5D30);
  }

  return result;
}

uint64_t sub_26A723410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26A723498()
{
  result = qword_2803B5D50;
  if (!qword_2803B5D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CF8);
    sub_26A723554();
    sub_26A723814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5D50);
  }

  return result;
}

unint64_t sub_26A723554()
{
  result = qword_2803B5D58;
  if (!qword_2803B5D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CF0);
    sub_26A72360C();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5D58);
  }

  return result;
}

unint64_t sub_26A72360C()
{
  result = qword_2803B5D60;
  if (!qword_2803B5D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CE8);
    sub_26A723698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5D60);
  }

  return result;
}

unint64_t sub_26A723698()
{
  result = qword_2803B5D68;
  if (!qword_2803B5D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5D18);
    sub_26A723214();
    swift_getOpaqueTypeConformance2();
    sub_26A723358();
    swift_getOpaqueTypeConformance2();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5D68);
  }

  return result;
}

unint64_t sub_26A723814()
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

unint64_t sub_26A723858()
{
  result = qword_2803B5D88;
  if (!qword_2803B5D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5D48);
    sub_26A723498();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5D88);
  }

  return result;
}

uint64_t sub_26A723910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5CD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26A7239A8()
{
  sub_26A5B96FC();
  if (v0 <= 0x3F)
  {
    sub_26A6C7C94(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_26A723A50()
{
  result = qword_2803B5DA8;
  if (!qword_2803B5DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5D90);
    sub_26A723ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5DA8);
  }

  return result;
}

unint64_t sub_26A723ADC()
{
  result = qword_2803B5DB0;
  if (!qword_2803B5DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE3A8);
    sub_26A723B68();
    sub_26A4D6BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5DB0);
  }

  return result;
}

unint64_t sub_26A723B68()
{
  result = qword_2803B5DB8;
  if (!qword_2803B5DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE3A0);
    sub_26A723BF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5DB8);
  }

  return result;
}

unint64_t sub_26A723BF4()
{
  result = qword_2803B5DC0;
  if (!qword_2803B5DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5D10);
    sub_26A723C80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5DC0);
  }

  return result;
}

unint64_t sub_26A723C80()
{
  result = qword_2803B5DC8;
  if (!qword_2803B5DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5D08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5CC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5D48);
    sub_26A723498();
    swift_getOpaqueTypeConformance2();
    sub_26A723858();
    swift_getOpaqueTypeConformance2();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5DC8);
  }

  return result;
}

unint64_t sub_26A723E28()
{
  result = qword_2803B5DF0;
  if (!qword_2803B5DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5DD8);
    sub_26A723EE0();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5DF0);
  }

  return result;
}

unint64_t sub_26A723EE0()
{
  result = qword_2803B5DF8;
  if (!qword_2803B5DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5E00);
    sub_26A723F98();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5DF8);
  }

  return result;
}

unint64_t sub_26A723F98()
{
  result = qword_2803B5E08;
  if (!qword_2803B5E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5E10);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5E08);
  }

  return result;
}

unint64_t sub_26A72407C()
{
  result = qword_2803B5E38;
  if (!qword_2803B5E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5DE0);
    sub_26A4D7DCC();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5E38);
  }

  return result;
}

uint64_t sub_26A724160(uint64_t a1)
{
  v2 = sub_26A84EE68();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_26A84F6E8();
}

BOOL sub_26A724250()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v9 - v3;
  v5 = [v0 thumbnail];
  if (v5)
  {
    RFVisualProperty.asVisualProperty()();

    v6 = sub_26A84BD28();
    v7 = 0;
  }

  else
  {
    v6 = sub_26A84BD28();
    v7 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v7, 1, v6);
  sub_26A4E2544(v4, &qword_2803AAD50);
  return v5 != 0;
}

id sub_26A724338@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 number];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v1 text_2];
  if (!v6)
  {

LABEL_6:
    sub_26A4E353C();
    swift_allocError();
    *v10 = v1;
    *(v10 + 8) = &unk_287B13998;
    *(v10 + 16) = 0;
    swift_willThrow();
    return v1;
  }

  v7 = v6;
  RFTextProperty.asPartialText()(v144);
  v147 = v7;
  RFTextProperty.asPartialText()(v143);
  v8 = [v1 text_1];
  if (v8)
  {
    v9 = v8;
    *(&v141 + 1) = &type metadata for PartialText;
    v142 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v140 = swift_allocObject();
    RFTextProperty.asPartialText()(v140 + 16);
  }

  else
  {
    v142 = 0;
    v140 = 0u;
    v141 = 0u;
  }

  v12 = sub_26A54AB40(v2, &selRef_text_3);
  if (v12)
  {
    sub_26A51B744(v12, __src);
    memcpy(__dst, __src, 0x41uLL);
    sub_26A54AAEC();
    v12 = sub_26A851248();
    v13 = &protocol witness table for AnyView;
    v14 = MEMORY[0x277CE11C8];
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v139[2] = 0;
    v139[1] = 0;
  }

  v139[0] = v12;
  v139[3] = v14;
  v139[4] = v13;
  v15 = sub_26A54AB40(v2, &selRef_text_4);
  if (v15)
  {
    sub_26A51B744(v15, __dst);
    sub_26A54AAEC();
    v15 = sub_26A851248();
    v16 = &protocol witness table for AnyView;
    v17 = MEMORY[0x277CE11C8];
  }

  else
  {
    v17 = 0;
    v16 = 0;
    v138[2] = 0;
    v138[1] = 0;
  }

  v138[0] = v15;
  v138[3] = v17;
  v138[4] = v16;
  v18 = [v2 text_5];
  if (v18)
  {
    v19 = v18;
    *(&v136 + 1) = &type metadata for PartialText;
    v137 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v135 = swift_allocObject();
    RFTextProperty.asPartialText()(v135 + 16);
  }

  else
  {
    v137 = 0;
    v135 = 0u;
    v136 = 0u;
  }

  v20 = [v2 text_6];
  if (v20)
  {
    v21 = v20;
    *(&v133 + 1) = &type metadata for PartialText;
    v134 = &protocol witness table for PartialText;
    OUTLINED_FUNCTION_1_9();
    *&v132 = swift_allocObject();
    RFTextProperty.asPartialText()(v132 + 16);
  }

  else
  {
    v134 = 0;
    v132 = 0u;
    v133 = 0u;
  }

  v22 = [v2 thumbnail];
  if (v22)
  {
    v23 = v22;
    *(&v130 + 1) = sub_26A84BD28();
    v131 = &protocol witness table for VisualProperty;
    __swift_allocate_boxed_opaque_existential_1(&v129);
    RFVisualProperty.asVisualProperty()();
  }

  else
  {
    v131 = 0;
    v129 = 0u;
    v130 = 0u;
  }

  if (qword_28157E670 != -1)
  {
    swift_once();
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3890);
  v25 = __swift_project_value_buffer(v24, qword_281588798);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A0);
  v27 = &a1[*(v26 + 32)];
  sub_26A4EA070(v25, v27, &qword_2803B3890);
  sub_26A6AEE74(v146);
  memcpy(a1, v146, 0xBFuLL);
  sub_26A4DB4E0(v27 + *(v24 + 36), &a1[*(v26 + 28)]);
  v28 = type metadata accessor for SummaryItemShortNumberView();
  v29 = &a1[v28[5]];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = v28[6];
  *&a1[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v31 = &a1[v28[7]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = v28[8];
  *&a1[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_4_7(v127);
  OUTLINED_FUNCTION_4_7(__dst);
  sub_26A4EC458(v127, v125);
  v33 = sub_26A4EC4B4();
  *&a1[v28[9]] = sub_26A851248();
  OUTLINED_FUNCTION_5_65(__dst);
  OUTLINED_FUNCTION_5_65(v125);
  sub_26A4EC458(__dst, &v93);
  *&a1[v28[10]] = sub_26A851248();
  sub_26A4EA070(&v140, v125, &qword_2803A91B8);
  if (v126)
  {
    __swift_project_boxed_opaque_existential_1(v125, v126);
    v34 = OUTLINED_FUNCTION_0_11();
    v36 = v35(v34);
    OUTLINED_FUNCTION_3_72(v36, v37, v38, v39, v40, v41, v42, v43, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125[0]);
  }

  else
  {
    sub_26A4E2544(v125, &qword_2803A91B8);
    v33 = 0;
  }

  *&a1[v28[11]] = v33;
  sub_26A4EA070(v139, v125, &qword_2803A91B8);
  if (v126)
  {
    __swift_project_boxed_opaque_existential_1(v125, v126);
    v44 = OUTLINED_FUNCTION_0_11();
    v46 = v45(v44);
    OUTLINED_FUNCTION_3_72(v46, v47, v48, v49, v50, v51, v52, v53, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125[0]);
  }

  else
  {
    sub_26A4E2544(v125, &qword_2803A91B8);
    v33 = 0;
  }

  *&a1[v28[12]] = v33;
  sub_26A4EA070(v138, v125, &qword_2803A91B8);
  if (v126)
  {
    __swift_project_boxed_opaque_existential_1(v125, v126);
    v54 = OUTLINED_FUNCTION_0_11();
    v56 = v55(v54);
    OUTLINED_FUNCTION_3_72(v56, v57, v58, v59, v60, v61, v62, v63, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125[0]);
  }

  else
  {
    sub_26A4E2544(v125, &qword_2803A91B8);
    v33 = 0;
  }

  *&a1[v28[13]] = v33;
  sub_26A4EA070(&v135, v125, &qword_2803A91B8);
  if (v126)
  {
    __swift_project_boxed_opaque_existential_1(v125, v126);
    v64 = OUTLINED_FUNCTION_0_11();
    v66 = v65(v64);
    OUTLINED_FUNCTION_3_72(v66, v67, v68, v69, v70, v71, v72, v73, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125[0]);
  }

  else
  {
    sub_26A4E2544(v125, &qword_2803A91B8);
    v33 = 0;
  }

  *&a1[v28[14]] = v33;
  sub_26A4EA070(&v132, v125, &qword_2803A91B8);
  if (v126)
  {
    __swift_project_boxed_opaque_existential_1(v125, v126);
    v74 = OUTLINED_FUNCTION_0_11();
    v76 = v75(v74);
    OUTLINED_FUNCTION_3_72(v76, v77, v78, v79, v80, v81, v82, v83, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125[0]);
  }

  else
  {
    sub_26A4E2544(v125, &qword_2803A91B8);
    v33 = 0;
  }

  *&a1[v28[15]] = v33;
  sub_26A4EA070(&v129, &v88, &qword_2803A91B8);
  if (v91)
  {
    __swift_project_boxed_opaque_existential_1(&v88, v91);
    v84 = OUTLINED_FUNCTION_0_11();
    v86 = v85(v84);

    OUTLINED_FUNCTION_5_65(&v93);
    sub_26A4EC508(&v93);
    OUTLINED_FUNCTION_4_7(v125);
    sub_26A4EC508(v125);
    OUTLINED_FUNCTION_3_7(&v129);
    OUTLINED_FUNCTION_3_7(&v132);
    OUTLINED_FUNCTION_3_7(&v135);
    OUTLINED_FUNCTION_3_7(v138);
    OUTLINED_FUNCTION_3_7(v139);
    OUTLINED_FUNCTION_3_7(&v140);
    result = __swift_destroy_boxed_opaque_existential_1(&v88);
  }

  else
  {

    OUTLINED_FUNCTION_5_65(&v93);
    sub_26A4EC508(&v93);
    OUTLINED_FUNCTION_4_7(v125);
    sub_26A4EC508(v125);
    OUTLINED_FUNCTION_2_8(&v129);
    OUTLINED_FUNCTION_2_8(&v132);
    OUTLINED_FUNCTION_2_8(&v135);
    OUTLINED_FUNCTION_2_8(v138);
    OUTLINED_FUNCTION_2_8(v139);
    OUTLINED_FUNCTION_2_8(&v140);
    result = OUTLINED_FUNCTION_2_8(&v88);
    v86 = 0;
  }

  *&a1[v28[16]] = v86;
  return result;
}

unint64_t sub_26A724C3C()
{
  result = qword_2803ADBC0;
  if (!qword_2803ADBC0)
  {
    type metadata accessor for SummaryItemShortNumberView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803ADBC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_72(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{

  return __swift_destroy_boxed_opaque_existential_1(&a47);
}

void *OUTLINED_FUNCTION_5_65(void *a1)
{

  return memcpy(a1, &STACK[0x538], 0xFAuLL);
}

id sub_26A724CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v32 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E70);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E78);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF670);
  OUTLINED_FUNCTION_46();
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v31 - v16;
  v18 = [v2 summary:v15 item:? standard:? card:?section];
  if (!v18)
  {
    goto LABEL_5;
  }

  v19 = v18;
  sub_26A5C9684(v12);
  if (v3)
  {

    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    v20 = &qword_2803B5E78;
    v21 = v12;
LABEL_4:
    sub_26A4DBD10(v21, v20);
LABEL_5:
    sub_26A4E353C();
    swift_allocError();
    *v22 = v4;
    *(v22 + 8) = &unk_287B137B8;
    *(v22 + 16) = 0;
    swift_willThrow();
    return v4;
  }

  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  sub_26A4DBDB4(v12, v17, &qword_2803AF670);
  v24 = sub_26A72584C(v4);

  if (!v24)
  {
    v20 = &qword_2803AF670;
    v21 = v17;
    goto LABEL_4;
  }

  sub_26A4DBDB4(v17, v9, &qword_2803AF670);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = a1;
  v26 = &v9[*(v6 + 56)];
  v27 = &v9[*(v6 + 52)];
  *v27 = sub_26A7258AC;
  v27[1] = v25;
  v26[16] = 0;
  *v26 = 0;
  *(v26 + 1) = 0;
  KeyPath = swift_getKeyPath();
  v29 = v32;
  sub_26A4DBD68(v9, v32, &qword_2803B5E70);
  v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E60) + 36);
  *v30 = KeyPath;
  *(v30 + 8) = 1;

  return sub_26A4DBD10(v9, &qword_2803B5E70);
}

uint64_t sub_26A725004(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5E88);
  sub_26A4DBCC8(&qword_2803B5E90, &qword_2803B5E80);
  sub_26A725B80(&qword_2803B5E98, sub_26A7258BC);
  sub_26A725900();
  return sub_26A8512F8();
}

uint64_t sub_26A725168@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32[1] = a2;
  v37 = a3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5ED8);
  MEMORY[0x28223BE20](v34);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v32 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5EE0);
  MEMORY[0x28223BE20](v35);
  v10 = (v32 - v9);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5EE8);
  MEMORY[0x28223BE20](v33);
  v12 = v32 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5EB8);
  MEMORY[0x28223BE20](v36);
  v14 = v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5EC8);
  MEMORY[0x28223BE20](v15);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v21 = v32 - v20;
  v22 = *a1;
  v23 = [v22 long:v19 item:? standard:? card:?section];
  if (v23)
  {
    v24 = v23;
    sub_26A5F1A60(0, v17);
    v25 = type metadata accessor for LongItemTextView();
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v25);
    sub_26A4DBDB4(v17, v21, &qword_2803B5EC8);
    sub_26A4DBD68(v21, v12, &qword_2803B5EC8);
    swift_storeEnumTagMultiPayload();
    sub_26A725A18();
    sub_26A725ACC();
    sub_26A84FDF8();
    sub_26A4DBD68(v14, v10, &qword_2803B5EB8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68);
    sub_26A72598C();
    sub_26A551788();
    sub_26A84FDF8();

    sub_26A4DBD10(v14, &qword_2803B5EB8);
    v26 = v21;
    v27 = &qword_2803B5EC8;
  }

  else
  {
    v28 = [v22 reference_footnote_card_section];
    if (!v28)
    {
      *v10 = &sub_26A7256DC;
      v10[1] = 0;
      v10[2] = 0;
      v10[3] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68);
      sub_26A72598C();
      sub_26A551788();
      return sub_26A84FDF8();
    }

    v29 = v28;
    sub_26A698FC0(v5);
    v30 = type metadata accessor for ReferenceFootnoteView();
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v30);
    sub_26A4DBDB4(v5, v8, &qword_2803B5ED8);
    sub_26A4DBD68(v8, v12, &qword_2803B5ED8);
    swift_storeEnumTagMultiPayload();
    sub_26A725A18();
    sub_26A725ACC();
    sub_26A84FDF8();
    sub_26A4DBD68(v14, v10, &qword_2803B5EB8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACE68);
    sub_26A72598C();
    sub_26A551788();
    sub_26A84FDF8();

    sub_26A4DBD10(v14, &qword_2803B5EB8);
    v26 = v8;
    v27 = &qword_2803B5ED8;
  }

  return sub_26A4DBD10(v26, v27);
}

unint64_t sub_26A725768()
{
  result = qword_2803B5E58;
  if (!qword_2803B5E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5E60);
    sub_26A4DBCC8(&qword_2803B5E68, &qword_2803B5E70);
    sub_26A4DBCC8(&qword_28157FB50, &unk_2803B31B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5E58);
  }

  return result;
}

uint64_t sub_26A72584C(void *a1)
{
  v1 = [a1 expanding_component_content];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_26A7258BC();
  v3 = sub_26A851A98();

  return v3;
}

unint64_t sub_26A7258BC()
{
  result = qword_2803B5EA0;
  if (!qword_2803B5EA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803B5EA0);
  }

  return result;
}

unint64_t sub_26A725900()
{
  result = qword_2803B5EA8;
  if (!qword_2803B5EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5E88);
    sub_26A72598C();
    sub_26A551788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5EA8);
  }

  return result;
}

unint64_t sub_26A72598C()
{
  result = qword_2803B5EB0;
  if (!qword_2803B5EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5EB8);
    sub_26A725A18();
    sub_26A725ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5EB0);
  }

  return result;
}

unint64_t sub_26A725A18()
{
  result = qword_2803B5EC0;
  if (!qword_2803B5EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5EC8);
    sub_26A725B80(&qword_2803B0148, type metadata accessor for LongItemTextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5EC0);
  }

  return result;
}

unint64_t sub_26A725ACC()
{
  result = qword_2803B5ED0;
  if (!qword_2803B5ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5ED8);
    sub_26A725B80(&qword_2803AFD80, type metadata accessor for ReferenceFootnoteView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5ED0);
  }

  return result;
}

uint64_t sub_26A725B80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26A725BC8()
{
  *(v0 + 16) = sub_26A851BD8();
  *(v0 + 24) = sub_26A851BC8();

  return MEMORY[0x2822009F8](sub_26A725C40, 0, 0);
}

uint64_t sub_26A725C40()
{
  *(v0 + 32) = sub_26A851BC8();
  v2 = sub_26A851B78();

  return MEMORY[0x2822009F8](sub_26A725CCC, v2, v1);
}

uint64_t sub_26A725CCC()
{

  if (qword_2803A8DE0 != -1)
  {
    swift_once();
  }

  sub_26A831330();
  v1 = sub_26A851B78();

  return MEMORY[0x2822009F8](sub_26A725D9C, v1, v0);
}

uint64_t sub_26A725D9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26A725DFC()
{
  type metadata accessor for ImageSourceModelLoaderCache();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5EF0);
  swift_allocObject();
  result = sub_26A831664(30, 0, sub_26A69396C, 0, 300.0);
  *(v0 + 16) = result;
  qword_2803D2368 = v0;
  return result;
}

uint64_t sub_26A725E88()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t ImageElementView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_0_80(a2);
  sub_26A5E9128((a2 + *(v4 + 24)));
  v5 = sub_26A84B2D8();
  sub_26A84B718();
  OUTLINED_FUNCTION_46();
  result = (*(v6 + 8))(a1);
  *(a2 + 24) = v5;
  return result;
}

{
  v4 = OUTLINED_FUNCTION_0_80(a2);
  result = sub_26A5E9128((a2 + *(v4 + 24)));
  *(a2 + 24) = a1;
  return result;
}

uint64_t sub_26A725F68()
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  if (qword_28157F8F8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5F08);
  v0 = swift_allocObject();

  return sub_26A727BD0(v1, v3, v0);
}

uint64_t type metadata accessor for ImageElementView()
{
  result = qword_28157EFF0;
  if (!qword_28157EFF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImageElementView.init(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_0_80(a1);
  sub_26A5E9128((a1 + *(v2 + 24)));
  v3 = sub_26A851AA8();

  *(a1 + 24) = v3;
  return result;
}

uint64_t ImageElementView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26A84F9E8();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0CF0);
  OUTLINED_FUNCTION_15();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v22 - v17;
  sub_26A726344(v2, a1);
  sub_26A84F9D8();
  sub_26A8514B8();
  v19 = sub_26A727A70();
  sub_26A84EE38();

  (*(v6 + 8))(v9, v4);
  (*(v12 + 16))(v15, v18, v10);
  v22[0] = v4;
  v22[1] = v19;
  swift_getOpaqueTypeConformance2();
  v20 = sub_26A84F058();
  (*(v12 + 8))(v18, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5EF8);
  *(a1 + *(result + 36)) = v20;
  return result;
}

uint64_t sub_26A726344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5F90);
  MEMORY[0x28223BE20](v83);
  v84 = &v66 - v3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5F88);
  MEMORY[0x28223BE20](v89);
  v87 = &v66 - v4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5FA0);
  MEMORY[0x28223BE20](v88);
  v86 = &v66 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5F70);
  MEMORY[0x28223BE20](v80);
  v81 = &v66 - v6;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5F60);
  MEMORY[0x28223BE20](v85);
  v75 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = &v66 - v9;
  v10 = sub_26A84B2F8();
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x28223BE20](v10);
  v77 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5FA8);
  MEMORY[0x28223BE20](v14);
  v16 = (&v66 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9D8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - v21;
  v23 = sub_26A84B408();
  v82 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5F50);
  MEMORY[0x28223BE20](v26);
  v28 = &v66 - v27;
  v29 = a1;
  v30 = sub_26A726F78();
  if (v30)
  {
    *v16 = v30;
    swift_storeEnumTagMultiPayload();
    sub_26A727708();
    return sub_26A84FDF8();
  }

  v67 = v25;
  v68 = v23;
  v70 = v19;
  v71 = v28;
  v72 = v26;
  v73 = v14;
  v33 = v86;
  v32 = v87;
  v69 = *(a1 + 24);
  sub_26A7DBBF8(v69, v22);
  v34 = sub_26A84B258();
  if (__swift_getEnumTagSinglePayload(v22, 1, v34) == 1)
  {
    sub_26A4D6FD8();
    v35 = v33;
    v81 = v16;
LABEL_9:
    v53 = v32;
    v54 = v83;
    v55 = v84;
    v56 = v70;
LABEL_10:
    v57 = sub_26A84FE98();
    v58 = &v55[*(v54 + 36)];
    v59 = type metadata accessor for VibrancyModifier();
    v60 = *(v59 + 20);
    *&v58[v60] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
    swift_storeEnumTagMultiPayload();
    v61 = &v58[*(v59 + 24)];
    *v61 = swift_getKeyPath();
    v61[8] = 0;
    *v58 = 2;
    *v55 = v57;
    *(v55 + 2) = 256;
    sub_26A7DBBF8(v69, v56);
    sub_26A72E6C8();
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    sub_26A51D0F8(v53, v35, &qword_2803B5F88);
    swift_storeEnumTagMultiPayload();
    sub_26A7277EC(&qword_2803B5F58, &qword_2803B5F60, &unk_26A87CC38, sub_26A7278A0);
    sub_26A7277EC(&qword_28157FDA0, &qword_2803B5F88, &unk_26A87CC50, sub_26A727988);
    v52 = v71;
    sub_26A84FDF8();
    sub_26A4D6FD8();
    v37 = v81;
    goto LABEL_11;
  }

  v36 = *(v34 - 8);
  v37 = v16;
  if ((*(v36 + 88))(v22, v34) != *MEMORY[0x277D62C68])
  {
    v81 = v16;
    (*(v36 + 8))(v22, v34);
    v35 = v33;
    goto LABEL_9;
  }

  v66 = v29;
  (*(v36 + 96))(v22, v34);
  (*(v82 + 32))(v67, v22, v68);
  v38 = v76;
  sub_26A84B3D8();
  v40 = v77;
  v39 = v78;
  v41 = v79;
  (*(v78 + 104))(v77, *MEMORY[0x277D62D20], v79);
  sub_26A727A70();
  sub_26A851A48();
  sub_26A851A48();
  v42 = *(v39 + 8);
  v42(v40, v41);
  v42(v38, v41);
  v35 = v33;
  v44 = v80;
  v43 = v81;
  if (v92 != v91)
  {
    v53 = v32;
    v62 = v66 + *(type metadata accessor for ImageElementView() + 24);
    v63 = type metadata accessor for EnvironmentImagePreferences(0);
    v64 = v74;
    sub_26A51D0F8(v62 + *(v63 + 52), v74, &qword_2803AFE50);
    v65 = sub_26A84B1D8();
    if (__swift_getEnumTagSinglePayload(v64, 1, v65) == 1)
    {
      sub_26A4D6FD8();
    }

    else
    {
      LODWORD(v79) = ImageElement.ImageStyle.isContactStyle.getter();
      (*(*(v65 - 8) + 8))(v64, v65);
      if (v79)
      {
        goto LABEL_7;
      }
    }

    v81 = v37;
    (*(v82 + 8))(v67, v68);
    v54 = v83;
    v55 = v84;
    v56 = v70;
    goto LABEL_10;
  }

LABEL_7:
  v45 = sub_26A84FE98();
  v46 = v43;
  v47 = &v43[*(v44 + 36)];
  v48 = type metadata accessor for VibrancyModifier();
  v49 = *(v48 + 20);
  *&v47[v49] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v50 = &v47[*(v48 + 24)];
  *v50 = swift_getKeyPath();
  v50[8] = 0;
  *v47 = 2;
  *v46 = v45;
  *(v46 + 2) = 256;
  sub_26A7DBBF8(v69, v70);
  v51 = v75;
  sub_26A72E6A4();
  sub_26A4D6FD8();
  sub_26A4D6FD8();
  sub_26A51D0F8(v51, v33, &qword_2803B5F60);
  swift_storeEnumTagMultiPayload();
  sub_26A7277EC(&qword_2803B5F58, &qword_2803B5F60, &unk_26A87CC38, sub_26A7278A0);
  sub_26A7277EC(&qword_28157FDA0, &qword_2803B5F88, &unk_26A87CC50, sub_26A727988);
  v52 = v71;
  sub_26A84FDF8();
  sub_26A4D6FD8();
  (*(v82 + 8))(v67, v68);
LABEL_11:
  sub_26A51D0F8(v52, v37, &qword_2803B5F50);
  swift_storeEnumTagMultiPayload();
  sub_26A727708();
  sub_26A84FDF8();
  return sub_26A4D6FD8();
}

uint64_t sub_26A726F78()
{
  v20 = type metadata accessor for ImageElementView();
  MEMORY[0x28223BE20](v20);
  v2 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D28);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v21 = v19 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5F08);
  sub_26A4D7DCC();
  v19[1] = v11;
  sub_26A84EEF8();
  v12 = sub_26A84B258();
  v24 = v12;
  v13 = sub_26A727A70();
  v25 = v13;
  swift_getKeyPath();
  v22 = v12;
  v23 = v13;
  swift_getKeyPath();
  sub_26A84EC18();

  sub_26A727AB4(v0, v2);
  sub_26A51D0F8(v10, v5, &qword_2803B2D28);
  v14 = type metadata accessor for ImageSourceModel();
  if (__swift_getEnumTagSinglePayload(v5, 1, v14) == 1)
  {
    sub_26A84EEF8();
    type metadata accessor for EnvironmentImagePreferences(0);
    v15 = v21;
    sub_26A72F28C();

    sub_26A727B18();
    if (__swift_getEnumTagSinglePayload(v5, 1, v14) != 1)
    {
      sub_26A4D6FD8();
    }
  }

  else
  {
    sub_26A727B18();
    v15 = v21;
    sub_26A727B6C(v5, v21);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v14);
  }

  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    sub_26A4D6FD8();
    sub_26A4D6FD8();
    return 0;
  }

  else
  {
    sub_26A68A2F0();
    v16 = v17;
    sub_26A4D6FD8();
    sub_26A727B18();
  }

  return v16;
}

void sub_26A7273A8()
{
  sub_26A727444();
  if (v0 <= 0x3F)
  {
    sub_26A7274E8();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EnvironmentImagePreferences(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A727444()
{
  if (!qword_2803B5F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5F08);
    sub_26A4D7DCC();
    v0 = sub_26A84EF08();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B5F00);
    }
  }
}

void sub_26A7274E8()
{
  if (!qword_2803B5F18)
  {
    sub_26A84B258();
    v0 = sub_26A851B48();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B5F18);
    }
  }
}

unint64_t sub_26A727540()
{
  result = qword_2803B5F20;
  if (!qword_2803B5F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5EF8);
    sub_26A7275F8();
    sub_26A4D7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5F20);
  }

  return result;
}

unint64_t sub_26A7275F8()
{
  result = qword_2803B5F28;
  if (!qword_2803B5F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5F30);
    sub_26A72767C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5F28);
  }

  return result;
}

unint64_t sub_26A72767C()
{
  result = qword_2803B5F38;
  if (!qword_2803B5F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5F40);
    sub_26A727708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5F38);
  }

  return result;
}

unint64_t sub_26A727708()
{
  result = qword_2803B5F48;
  if (!qword_2803B5F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5F50);
    sub_26A7277EC(&qword_2803B5F58, &qword_2803B5F60, &unk_26A87CC38, sub_26A7278A0);
    sub_26A7277EC(&qword_28157FDA0, &qword_2803B5F88, &unk_26A87CC50, sub_26A727988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5F48);
  }

  return result;
}

uint64_t sub_26A7277EC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_26A727A70();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26A7278A0()
{
  result = qword_2803B5F68;
  if (!qword_2803B5F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5F70);
    sub_26A4D7DCC();
    sub_26A727A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B5F68);
  }

  return result;
}

unint64_t sub_26A727988()
{
  result = qword_28157FE10;
  if (!qword_28157FE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B5F90);
    sub_26A4D7DCC();
    sub_26A727A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FE10);
  }

  return result;
}

unint64_t sub_26A727A70()
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

uint64_t sub_26A727AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageElementView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A727B18()
{
  OUTLINED_FUNCTION_196();
  v1(0);
  OUTLINED_FUNCTION_46();
  (*(v2 + 8))(v0);
  return v0;
}

uint64_t sub_26A727B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageSourceModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A727BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5FC0);
  OUTLINED_FUNCTION_15();
  v33 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5FC8);
  OUTLINED_FUNCTION_15();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D28);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  v41[3] = type metadata accessor for ImageLoader();
  v41[4] = &off_287B1B7D8;
  v41[0] = a1;
  OUTLINED_FUNCTION_18_14();
  v21 = *(v20 + 96);
  v22 = type metadata accessor for ImageSourceModel();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v22);
  sub_26A51D0F8(v19, v16, &qword_2803B2D28);
  sub_26A84EBD8();
  v23 = v34;
  sub_26A4D6FD8();
  (*(v10 + 32))(a3 + v21, v13, v32);
  OUTLINED_FUNCTION_18_14();
  v25 = *(v24 + 104);
  *&v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5FD0);
  sub_26A84EBD8();
  (*(v33 + 32))(a3 + v25, v8, v35);
  OUTLINED_FUNCTION_18_14();
  v27 = *(v26 + 112);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5FD8);
  __swift_storeEnumTagSinglePayload(a3 + v27, 1, 1, v28);
  OUTLINED_FUNCTION_18_14();
  sub_26A50429C(v41, a3 + *(v29 + 120));
  sub_26A51D0F8(v23, &v36, &unk_2803B5FE0);
  if (v37)
  {
    sub_26A4D6FD8();
    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_26A514388(&v36, &v38);
  }

  else
  {
    if (qword_2803A8DE0 != -1)
    {
      swift_once();
    }

    v30 = qword_2803D2368;
    v39 = type metadata accessor for ImageSourceModelLoaderCache();
    v40 = &off_281FE1460;
    *&v38 = v30;

    sub_26A4D6FD8();
    __swift_destroy_boxed_opaque_existential_1(v41);
    if (v37)
    {
      sub_26A4D6FD8();
    }
  }

  sub_26A514388(&v38, a3 + *(*a3 + 128));
  return a3;
}

uint64_t OUTLINED_FUNCTION_0_80@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26A725F68;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;

  return type metadata accessor for ImageElementView();
}

unint64_t sub_26A728000(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_26A851868())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_26A851948() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_26A852598();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_26A7280E8(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_26A851978();

    return v4;
  }

  return result;
}

uint64_t sub_26A72818C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26A84EC18();

  return v1;
}

uint64_t sub_26A728200()
{
  v1 = MEMORY[0x277D84F90];
  sub_26A7282C0();
  if (sub_26A73670C(v1))
  {
    sub_26A6221EC(MEMORY[0x277D84F90]);
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  v4 = OBJC_IVAR____TtC9SnippetUI27IntentsUIComponentViewModel_handledParameters;
  swift_beginAccess();
  *(v0 + v4) = v3;

  return sub_26A7285C4(0);
}

uint64_t sub_26A7282C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_26A84EC28();
}

id sub_26A72832C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t a1, uint64_t a2, uint64_t a3), void (*a4)(uint64_t a1, uint64_t a2, uint64_t a3))
{
  v20 = a4;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B60C0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  v13 = OBJC_IVAR____TtC9SnippetUI27IntentsUIComponentViewModel__resolvedViews;
  v14 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6038);
  sub_26A84EBD8();
  (*(v10 + 32))(&v4[v13], v12, v9);
  if (sub_26A73670C(v14))
  {
    sub_26A6221EC(MEMORY[0x277D84F90]);
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  *&v4[OBJC_IVAR____TtC9SnippetUI27IntentsUIComponentViewModel_handledParameters] = v15;
  *&v4[OBJC_IVAR____TtC9SnippetUI27IntentsUIComponentViewModel_interaction] = a1;
  *&v4[OBJC_IVAR____TtC9SnippetUI27IntentsUIComponentViewModel_slots] = a2;
  if (a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = sub_26A7284EC;
  }

  v17 = v20;
  if (!a3)
  {
    v17 = 0;
  }

  v18 = &v4[OBJC_IVAR____TtC9SnippetUI27IntentsUIComponentViewModel_remoteViewControllerProvider];
  *v18 = v16;
  v18[1] = v17;
  v21.receiver = v4;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init, v20);
}