uint64_t sub_220D496BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B50, &qword_220DC4BA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D49724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

BOOL PrecipitationWithinTenDaysRule.isSatisfied(for:data:)(uint64_t a1, uint64_t a2)
{
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent();
  v5 = OUTLINED_FUNCTION_6(PrecipitationEvent);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = v2[3];
  v15 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v14);
  (*(v15 + 8))(a2, v14, v15);
  sub_220CE1CC4(v13, v10, type metadata accessor for NextPrecipitationEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A0, &unk_220DC3050);
    v18 = v17[12];
    v19 = v17[16];
    sub_220CE1DD8(v10 + v17[20], type metadata accessor for PrecipitationTotalStringAmount);
    sub_220CE1DD8(v10 + v19, type metadata accessor for PrecipitationTotalStringAmount);
    v20 = sub_220DBE560();
    OUTLINED_FUNCTION_6(v20);
    (*(v21 + 8))(v10 + v18);
  }

  else
  {
    OUTLINED_FUNCTION_4_16();
    sub_220CE1DD8(v10, v22);
  }

  return EnumCaseMultiPayload == 1;
}

void PrecipitationWithinTenDaysRule.description(for:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v26 = sub_220DBE740();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v34 = v33 - v32;
  v35 = type metadata accessor for PrecipitationWithinTenDaysSentence();
  v36 = OUTLINED_FUNCTION_18(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1();
  v41 = v40 - v39;
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent();
  v43 = OUTLINED_FUNCTION_18(PrecipitationEvent);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11_9();
  MEMORY[0x28223BE20](v46);
  v48 = &a9 - v47;
  v49 = v20[3];
  v50 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v49);
  (*(v50 + 8))(v25, v49, v50);
  sub_220D4C324(v48, v21, type metadata accessor for NextPrecipitationEvent);
  v51 = type metadata accessor for PrecipitationComponentDescriptionContext();
  (*(v29 + 16))(v34, v25 + *(v51 + 28), v26);
  sub_220D49B50();
  sub_220D49F84();
  OUTLINED_FUNCTION_2_20();
  sub_220CE1DD8(v41, v52);
  OUTLINED_FUNCTION_4_16();
  sub_220CE1DD8(v48, v53);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_24();
}

uint64_t type metadata accessor for PrecipitationWithinTenDaysSentence()
{
  result = qword_280FA6AE0;
  if (!qword_280FA6AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220D49B50()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v60 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v6 = OUTLINED_FUNCTION_6(v60);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v13 = OUTLINED_FUNCTION_6(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v18 = v16 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v55 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v55 - v23;
  v62 = sub_220DBE560();
  v25 = OUTLINED_FUNCTION_0(v62);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v61 = v31 - v30;
  type metadata accessor for NextPrecipitationEvent();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v58 = v1;
    v59 = v5;
    v32 = *v3;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A0, &unk_220DC3050);
    v34 = v33[16];
    v35 = v27;
    v36 = v33[20];
    v37 = &v3[v33[12]];
    v56 = *(v35 + 32);
    v57 = v35 + 32;
    v56(v61, v37, v62);
    sub_220CE1CC4(&v3[v34], v24, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220CE1CC4(&v3[v36], v22, type metadata accessor for PrecipitationTotalStringAmount);
    if (v32 == 2)
    {
      v38 = v24;
    }

    else
    {
      v38 = v22;
    }

    if (v32 == 2)
    {
      v24 = v22;
    }

    sub_220CE1DD8(v38, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220CE1CC4(v24, v18, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D4C324(v18 + *(v12 + 20), v11, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
      OUTLINED_FUNCTION_6(v39);
      (*(v40 + 8))(v11);
    }

    else
    {
      sub_220CE1DD8(v11, type metadata accessor for PrecipitationTotalStringAmount.Format);
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B68, &unk_220DC4CA8);
    v42 = v41[12];
    v43 = v41[16];
    v44 = v41[20];
    OUTLINED_FUNCTION_1_26();
    v45 = v18;
    v46 = v59;
    sub_220CE1CC4(v45, v59, v47);
    v48 = OUTLINED_FUNCTION_14_13();
    v49(v48);
    v50 = sub_220DBE740();
    OUTLINED_FUNCTION_6(v50);
    (*(v51 + 32))(v46 + v44, v58);
    type metadata accessor for PrecipitationWithinTenDaysSentence();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v52 = sub_220DBE740();
    OUTLINED_FUNCTION_6(v52);
    (*(v53 + 8))(v1);
    type metadata accessor for PrecipitationWithinTenDaysSentence();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_16();
    sub_220CE1DD8(v3, v54);
  }

  OUTLINED_FUNCTION_24();
}

void sub_220D49F84()
{
  OUTLINED_FUNCTION_25();
  v65 = sub_220DBE740();
  v3 = OUTLINED_FUNCTION_0(v65);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v63 = v8 - v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v64 = sub_220DBE560();
  v13 = OUTLINED_FUNCTION_0(v64);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v22 = OUTLINED_FUNCTION_11_1();
  v23 = type metadata accessor for PrecipitationTotalStringAmount(v22);
  v24 = OUTLINED_FUNCTION_18(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11_9();
  MEMORY[0x28223BE20](v27);
  v29 = &v62 - v28;
  v30 = type metadata accessor for PrecipitationWithinTenDaysSentence();
  v31 = OUTLINED_FUNCTION_6(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1();
  v36 = v35 - v34;
  OUTLINED_FUNCTION_5_20();
  sub_220D4C324(v0, v36, v37);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v63 = v0;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B68, &unk_220DC4CA8);
    v50 = *(v36 + v49[12]);
    v51 = v49[16];
    v52 = v49[20];
    OUTLINED_FUNCTION_1_26();
    sub_220CE1CC4(v36, v29, v53);
    v54 = v64;
    (*(v15 + 32))(v2, v36 + v51, v64);
    v55 = v36 + v52;
    v56 = v65;
    (*(v5 + 32))(v12, v55, v65);
    v57 = (v5 + 8);
    if (v50 == 2)
    {
      sub_220D4A5D0(v29);
    }

    else
    {
      sub_220D4AA44(v29);
    }

    (*v57)(v12, v56);
    (*(v15 + 8))(v2, v54);
    OUTLINED_FUNCTION_0_16();
    v61 = v29;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B68, &unk_220DC4CA8);
    v40 = *(v36 + v39[12]);
    v41 = v39[16];
    v42 = v39[20];
    OUTLINED_FUNCTION_1_26();
    sub_220CE1CC4(v36, v1, v43);
    v44 = v64;
    (*(v15 + 32))(v20, v36 + v41, v64);
    v45 = v36 + v42;
    v46 = v63;
    v47 = v65;
    (*(v5 + 32))(v63, v45, v65);
    v48 = (v5 + 8);
    if (v40 == 2)
    {
      sub_220D4AEB8(v20, v46, v1);
    }

    else
    {
      sub_220D4B3DC(v20, v46, v1);
    }

    (*v48)(v46, v47);
    (*(v15 + 8))(v20, v44);
    OUTLINED_FUNCTION_0_16();
    v61 = v1;
LABEL_14:
    sub_220CE1DD8(v61, v60);
    goto LABEL_15;
  }

  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_220DC17A0;
  v59 = MEMORY[0x277D83C10];
  *(v58 + 56) = MEMORY[0x277D83B88];
  *(v58 + 64) = v59;
  *(v58 + 32) = 10;
  sub_220DC05F0();

LABEL_15:
  OUTLINED_FUNCTION_24();
}

void sub_220D4A460()
{
  sub_220D4A4C0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_220D4A4C0()
{
  if (!qword_280FA6D80[0])
  {
    MEMORY[0x28223BE20](0);
    type metadata accessor for PrecipitationTotalStringAmount(255);
    sub_220DBE560();
    sub_220DBE740();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, qword_280FA6D80);
    }
  }
}

uint64_t sub_220D4A5D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v50 - v5;
  v7 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PrecipitationTotalStringAmount(0);
  sub_220D4C324(a1 + *(v11 + 20), v10, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
    v32 = *(v3 + 8);
    v32(&v10[*(v31 + 48)], v2);
    v32(v10, v2);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_220DC17C0;
    v34 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v34, 0, 1, v35, v36, v37, v38, v39, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, vars0, vars8);
    v41 = v40;
    v43 = v42;

    v44 = MEMORY[0x277D837D0];
    *(v33 + 56) = MEMORY[0x277D837D0];
    v45 = sub_220CEFDB0();
    *(v33 + 64) = v45;
    *(v33 + 32) = v41;
    *(v33 + 40) = v43;
    v46 = sub_220DBE4D0();
    *(v33 + 96) = v44;
    *(v33 + 104) = v45;
    *(v33 + 72) = v46;
    *(v33 + 80) = v47;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_220DBE050();
    v13 = Double.pluralRuleInteger.getter(v12);
    (*(v3 + 8))(v6, v2);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D83B88];
    *(v14 + 16) = xmmword_220DC1CC0;
    v16 = MEMORY[0x277D83C10];
    *(v14 + 56) = v15;
    *(v14 + 64) = v16;
    *(v14 + 32) = v13;
    v17 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v17, 0, 1, v18, v19, v20, v21, v22, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, vars0, vars8);
    v24 = v23;
    v26 = v25;

    v27 = MEMORY[0x277D837D0];
    *(v14 + 96) = MEMORY[0x277D837D0];
    v28 = sub_220CEFDB0();
    *(v14 + 104) = v28;
    *(v14 + 72) = v24;
    *(v14 + 80) = v26;
    v29 = sub_220DBE4D0();
    *(v14 + 136) = v27;
    *(v14 + 144) = v28;
    *(v14 + 112) = v29;
    *(v14 + 120) = v30;
  }

  v48 = sub_220DC05F0();

  return v48;
}

uint64_t sub_220D4AA44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v50 - v5;
  v7 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PrecipitationTotalStringAmount(0);
  sub_220D4C324(a1 + *(v11 + 20), v10, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
    v32 = *(v3 + 8);
    v32(&v10[*(v31 + 48)], v2);
    v32(v10, v2);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_220DC17C0;
    v34 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v34, 0, 1, v35, v36, v37, v38, v39, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, vars0, vars8);
    v41 = v40;
    v43 = v42;

    v44 = MEMORY[0x277D837D0];
    *(v33 + 56) = MEMORY[0x277D837D0];
    v45 = sub_220CEFDB0();
    *(v33 + 64) = v45;
    *(v33 + 32) = v41;
    *(v33 + 40) = v43;
    v46 = sub_220DBE4D0();
    *(v33 + 96) = v44;
    *(v33 + 104) = v45;
    *(v33 + 72) = v46;
    *(v33 + 80) = v47;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_220DBE050();
    v13 = Double.pluralRuleInteger.getter(v12);
    (*(v3 + 8))(v6, v2);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D83B88];
    *(v14 + 16) = xmmword_220DC1CC0;
    v16 = MEMORY[0x277D83C10];
    *(v14 + 56) = v15;
    *(v14 + 64) = v16;
    *(v14 + 32) = v13;
    v17 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v17, 0, 1, v18, v19, v20, v21, v22, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, vars0, vars8);
    v24 = v23;
    v26 = v25;

    v27 = MEMORY[0x277D837D0];
    *(v14 + 96) = MEMORY[0x277D837D0];
    v28 = sub_220CEFDB0();
    *(v14 + 104) = v28;
    *(v14 + 72) = v24;
    *(v14 + 80) = v26;
    v29 = sub_220DBE4D0();
    *(v14 + 136) = v27;
    *(v14 + 144) = v28;
    *(v14 + 112) = v29;
    *(v14 + 120) = v30;
  }

  v48 = sub_220DC05F0();

  return v48;
}

uint64_t sub_220D4AEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v5 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - v10;
  v12 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  sub_220D4C324(a3 + *(v5 + 20), v15, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = a1;
    (*(v17 + 32))(v20, v15, v16);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v22 = MEMORY[0x277D83A80];
    *(v21 + 56) = MEMORY[0x277D839F8];
    *(v21 + 64) = v22;
    *(v21 + 32) = v23;
    v24 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v24, 0, 0, v25, v26, v27, v28, v29, v49, v50, v51, v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8]);
    v31 = v30;
    v33 = v32;

    v34 = MEMORY[0x277D837D0];
    *(v21 + 96) = MEMORY[0x277D837D0];
    v35 = sub_220CEFDB0();
    *(v21 + 104) = v35;
    *(v21 + 72) = v31;
    *(v21 + 80) = v33;
    v36 = sub_220DBE4D0();
    *(v21 + 136) = v34;
    *(v21 + 144) = v35;
    *(v21 + 112) = v36;
    *(v21 + 120) = v37;
    v38 = sub_220DC05F0();

    (*(v17 + 8))(v20, v16);
  }

  else
  {
    sub_220CE1DD8(v15, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v39 = sub_220DBF410();
    __swift_project_value_buffer(v39, qword_27CF95F48);
    sub_220D4C324(a3, v11, type metadata accessor for PrecipitationTotalStringAmount);
    v40 = sub_220DBF3F0();
    v41 = sub_220DC0980();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v52[0] = v43;
      *v42 = 136446210;
      sub_220D4C324(v11, v9, type metadata accessor for PrecipitationTotalStringAmount);
      v44 = sub_220DC0630();
      v46 = v45;
      sub_220CE1DD8(v11, type metadata accessor for PrecipitationTotalStringAmount);
      v47 = sub_220D3F210(v44, v46, v52);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_220CD1000, v40, v41, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x223D98FB0](v43, -1, -1);
      MEMORY[0x223D98FB0](v42, -1, -1);
    }

    else
    {

      sub_220CE1DD8(v11, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v38;
}

uint64_t sub_220D4B3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v5 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - v10;
  v12 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  sub_220D4C324(a3 + *(v5 + 20), v15, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = a1;
    (*(v17 + 32))(v20, v15, v16);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v22 = MEMORY[0x277D83A80];
    *(v21 + 56) = MEMORY[0x277D839F8];
    *(v21 + 64) = v22;
    *(v21 + 32) = v23;
    v24 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v24, 0, 0, v25, v26, v27, v28, v29, v49, v50, v51, v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8]);
    v31 = v30;
    v33 = v32;

    v34 = MEMORY[0x277D837D0];
    *(v21 + 96) = MEMORY[0x277D837D0];
    v35 = sub_220CEFDB0();
    *(v21 + 104) = v35;
    *(v21 + 72) = v31;
    *(v21 + 80) = v33;
    v36 = sub_220DBE4D0();
    *(v21 + 136) = v34;
    *(v21 + 144) = v35;
    *(v21 + 112) = v36;
    *(v21 + 120) = v37;
    v38 = sub_220DC05F0();

    (*(v17 + 8))(v20, v16);
  }

  else
  {
    sub_220CE1DD8(v15, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v39 = sub_220DBF410();
    __swift_project_value_buffer(v39, qword_27CF95F48);
    sub_220D4C324(a3, v11, type metadata accessor for PrecipitationTotalStringAmount);
    v40 = sub_220DBF3F0();
    v41 = sub_220DC0980();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v52[0] = v43;
      *v42 = 136446210;
      sub_220D4C324(v11, v9, type metadata accessor for PrecipitationTotalStringAmount);
      v44 = sub_220DC0630();
      v46 = v45;
      sub_220CE1DD8(v11, type metadata accessor for PrecipitationTotalStringAmount);
      v47 = sub_220D3F210(v44, v46, v52);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_220CD1000, v40, v41, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x223D98FB0](v43, -1, -1);
      MEMORY[0x223D98FB0](v42, -1, -1);
    }

    else
    {

      sub_220CE1DD8(v11, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v38;
}

void sub_220D4B900()
{
  OUTLINED_FUNCTION_25();
  v165 = v2;
  v166 = v3;
  v161 = sub_220DBE740();
  v4 = OUTLINED_FUNCTION_0(v161);
  v164 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v157 = (v8 - v9);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v10);
  v159 = &v151 - v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v12);
  v154 = &v151 - v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_11_1();
  v15 = sub_220DBE560();
  v162 = OUTLINED_FUNCTION_0(v15);
  v163 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v162);
  OUTLINED_FUNCTION_4();
  v156 = (v19 - v20);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v21);
  v160 = &v151 - v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_11_9();
  MEMORY[0x28223BE20](v24);
  v26 = &v151 - v25;
  v155 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v27 = OUTLINED_FUNCTION_6(v155);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4();
  v158 = (v30 - v31);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v32);
  v34 = &v151 - v33;
  v35 = type metadata accessor for PrecipitationWithinTenDaysSentence();
  v36 = OUTLINED_FUNCTION_6(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4();
  v41 = (v39 - v40);
  MEMORY[0x28223BE20](v42);
  v44 = &v151 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B60, &qword_220DC4CA0);
  v46 = OUTLINED_FUNCTION_18(v45);
  v48 = *(v47 + 64);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v151 - v50;
  v52 = &v151 + *(v49 + 56) - v50;
  sub_220D4C324(v165, &v151 - v50, type metadata accessor for PrecipitationWithinTenDaysSentence);
  sub_220D4C324(v166, v52, type metadata accessor for PrecipitationWithinTenDaysSentence);
  OUTLINED_FUNCTION_20();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v160 = v0;
    v152 = v26;
    v165 = v34;
    v166 = v1;
    OUTLINED_FUNCTION_5_20();
    sub_220D4C324(v51, v44, v86);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B68, &unk_220DC4CA8);
    v88 = v87[12];
    v89 = v44[v88];
    v90 = v87[16];
    v59 = &v44[v90];
    v91 = v87[20];
    v61 = &v44[v91];
    OUTLINED_FUNCTION_16_10();
    if (!swift_getEnumCaseMultiPayload())
    {
      LODWORD(v159) = v89;
      v153 = v51;
      LODWORD(v158) = v52[v88];
      OUTLINED_FUNCTION_1_26();
      sub_220CE1CC4(v52, v165, v101);
      v102 = v162;
      v103 = *(v163 + 32);
      v103(v152, &v44[v90], v162);
      v104 = *(v164 + 32);
      v105 = v161;
      v104(v166, &v44[v91], v161);
      v106 = &v52[v90];
      v107 = v160;
      v103(v160, v106, v102);
      v108 = &v52[v91];
      v71 = v165;
      v109 = v154;
      v104(v154, v108, v105);
      if (*v44 == *v71)
      {
        v110 = *(v155 + 20);
        static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
        if (v111)
        {
          OUTLINED_FUNCTION_0_16();
          sub_220CE1DD8(v44, v112);
          v113 = v153;
          if (v159 != v158)
          {
            v140 = *(v164 + 8);
            OUTLINED_FUNCTION_12();
            v140();
            v141 = v162;
            v142 = *(v163 + 8);
            v142(v107, v162);
            (v140)(v166, v109);
            v142(v152, v141);
            OUTLINED_FUNCTION_0_16();
            sub_220CE1DD8(v71, v143);
            OUTLINED_FUNCTION_2_20();
            v132 = v113;
            goto LABEL_25;
          }

          v114 = v152;
          v115 = sub_220DBE460();
          v117 = v163;
          v116 = v164;
          v118 = v107;
          v119 = v166;
          if (v115)
          {
            MEMORY[0x223D96350](v166, v109);
            v120 = *(v116 + 8);
            v121 = v161;
            v120(v109, v161);
            v82 = *(v117 + 8);
            v122 = v162;
            v82(v118, v162);
            v120(v119, v121);
            v84 = v152;
            v85 = v122;
            goto LABEL_21;
          }

          v148 = *(v164 + 8);
          OUTLINED_FUNCTION_12();
          v148();
          v149 = *(v117 + 8);
          v150 = v162;
          v149(v118, v162);
          (v148)(v119, v109);
          v149(v114, v150);
          goto LABEL_31;
        }
      }

      OUTLINED_FUNCTION_9_13();
      sub_220CE1DD8(v44, v125);
      v126 = *(v164 + 8);
      v127 = v161;
      v126(v109, v161);
      v128 = v162;
      v98 = *(v163 + 8);
      v98(v107, v162);
      v126(v166, v127);
      v99 = v152;
      v100 = v128;
LABEL_23:
      v98(v99, v100);
      v129 = OUTLINED_FUNCTION_16_10();
LABEL_24:
      sub_220CE1DD8(v129, v130);
      OUTLINED_FUNCTION_2_20();
      v132 = v153;
LABEL_25:
      sub_220CE1DD8(v132, v131);
      goto LABEL_26;
    }

    v41 = v44;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_5_20();
    sub_220D4C324(v51, v41, v54);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B68, &unk_220DC4CA8);
    v56 = v55[12];
    v57 = v41[v56];
    v58 = v55[16];
    v59 = &v41[v58];
    v60 = v55[20];
    v61 = &v41[v60];
    OUTLINED_FUNCTION_16_10();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      LODWORD(v166) = v57;
      v153 = v51;
      LODWORD(v165) = v52[v56];
      OUTLINED_FUNCTION_1_26();
      sub_220CE1CC4(v52, v158, v62);
      v63 = v162;
      v64 = *(v163 + 32);
      v64(v160, &v41[v58], v162);
      v65 = *(v164 + 32);
      v66 = v161;
      v65(v159, &v41[v60], v161);
      v67 = &v52[v58];
      v68 = v156;
      v64(v156, v67, v63);
      v69 = &v52[v60];
      v70 = v157;
      v71 = v158;
      v65(v157, v69, v66);
      if (*v41 == *v71)
      {
        v72 = *(v155 + 20);
        static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
        if (v73)
        {
          OUTLINED_FUNCTION_0_16();
          sub_220CE1DD8(v41, v74);
          if (v166 == v165)
          {
            v75 = v160;
            v76 = sub_220DBE460();
            v78 = v163;
            v77 = v164;
            v79 = v68;
            if (v76)
            {
              v80 = v159;
              MEMORY[0x223D96350](v159, v70);
              v81 = *(v77 + 8);
              v164 = v77 + 8;
              OUTLINED_FUNCTION_12();
              v81();
              v82 = *(v78 + 8);
              v83 = v162;
              v82(v79, v162);
              (v81)(v80, v65);
              v84 = v75;
              v85 = v83;
LABEL_21:
              v82(v84, v85);
              OUTLINED_FUNCTION_0_16();
              sub_220CE1DD8(v71, v123);
              OUTLINED_FUNCTION_2_20();
              sub_220CE1DD8(v153, v124);
              goto LABEL_26;
            }

            v144 = *(v164 + 8);
            v145 = v161;
            v144(v70, v161);
            v146 = *(v78 + 8);
            v147 = v162;
            v146(v79, v162);
            v144(v159, v145);
            v146(v75, v147);
          }

          else
          {
            v133 = *(v164 + 8);
            v134 = v70;
            v135 = v68;
            v136 = v161;
            v133(v134, v161);
            v137 = *(v163 + 8);
            v138 = v135;
            v139 = v162;
            v137(v138, v162);
            v133(v159, v136);
            v137(v160, v139);
          }

LABEL_31:
          OUTLINED_FUNCTION_0_16();
          v129 = v71;
          goto LABEL_24;
        }
      }

      OUTLINED_FUNCTION_9_13();
      sub_220CE1DD8(v41, v95);
      v96 = *(v164 + 8);
      OUTLINED_FUNCTION_12();
      v96();
      v97 = v162;
      v98 = *(v163 + 8);
      v98(v68, v162);
      (v96)(v159, v65);
      v99 = v160;
      v100 = v97;
      goto LABEL_23;
    }

LABEL_11:
    v92 = v163;
    (*(v164 + 8))(v61, v161);
    (*(v92 + 8))(v59, v162);
    OUTLINED_FUNCTION_0_16();
    sub_220CE1DD8(v41, v93);
LABEL_14:
    sub_220D4C2BC(v51);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_16_10();
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_2_20();
  sub_220CE1DD8(v51, v94);
LABEL_26:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_220D4C2BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B60, &qword_220DC4CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D4C324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_6(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_20();
  v8(v7);
  return a2;
}

void PrecipitationWithinSevenDaysRule.isSatisfied(for:data:)()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v3 = sub_220DBE6E0();
  v4 = OUTLINED_FUNCTION_0(v3);
  v60 = v5;
  v61 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v59 = v9 - v8;
  v10 = sub_220DBE560();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_25_0();
  v54 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_25_0();
  v57 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_25_0();
  v56 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v25);
  v55 = &v54 - v26;
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent();
  v28 = OUTLINED_FUNCTION_6(PrecipitationEvent);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v54 - v35;
  v37 = v0[3];
  v38 = v0[4];
  v39 = __swift_project_boxed_opaque_existential_1(v0, v37);
  v40 = *(v38 + 8);
  v58 = v2;
  v40(v2, v37, v38);
  OUTLINED_FUNCTION_16_11();
  sub_220D4F578(v36, v33, v41);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A0, &unk_220DC3050);
    v43 = v42[16];
    v44 = v42[20];
    v45 = v55;
    (*(v13 + 32))(v55, v33 + v42[12], v10);
    OUTLINED_FUNCTION_8_12();
    sub_220CE1E30(v33 + v44, v46);
    sub_220CE1E30(v33 + v43, v39);
    LODWORD(v43) = *(type metadata accessor for PrecipitationComponentDescriptionContext() + 28);
    v47 = v56;
    sub_220DBE480();
    sub_220DBEA60();
    v48 = v54;
    sub_220DBE480();
    v49 = *(v13 + 8);
    v49(v18, v10);
    v50 = v59;
    sub_220DBE6A0();
    v51 = v57;
    sub_220DBE390();
    (*(v60 + 8))(v50, v61);
    v49(v48, v10);
    sub_220DBE440();
    v49(v51, v10);
    v49(v47, v10);
    v49(v45, v10);
  }

  else
  {
    OUTLINED_FUNCTION_3_21();
    sub_220CE1E30(v36, v52);
    v36 = v33;
  }

  OUTLINED_FUNCTION_3_21();
  sub_220CE1E30(v36, v53);
  OUTLINED_FUNCTION_24();
}

void PrecipitationWithinSevenDaysRule.description(for:data:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_220DBE740();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  v34 = type metadata accessor for PrecipitationWithinSevenDaysSentence();
  v35 = OUTLINED_FUNCTION_18(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1();
  v40 = v39 - v38;
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent();
  v42 = OUTLINED_FUNCTION_18(PrecipitationEvent);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_4();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &a9 - v49;
  v51 = v20[3];
  v52 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v51);
  (*(v52 + 8))(v24, v51, v52);
  OUTLINED_FUNCTION_16_11();
  sub_220D4F578(v50, v47, v53);
  v54 = type metadata accessor for PrecipitationComponentDescriptionContext();
  (*(v28 + 16))(v33, v24 + *(v54 + 28), v25);
  sub_220D4C954();
  sub_220D4CD28();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_2_21();
  sub_220CE1E30(v40, v55);
  OUTLINED_FUNCTION_3_21();
  sub_220CE1E30(v50, v56);
  OUTLINED_FUNCTION_22_7();
  OUTLINED_FUNCTION_24();
}

uint64_t type metadata accessor for PrecipitationWithinSevenDaysSentence()
{
  result = qword_27CF95B70;
  if (!qword_27CF95B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220D4C954()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v56 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v6 = OUTLINED_FUNCTION_6(v56);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v13 = OUTLINED_FUNCTION_6(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v18 = v16 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v51 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v51 - v23;
  v58 = sub_220DBE560();
  v25 = OUTLINED_FUNCTION_0(v58);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v57 = v31 - v30;
  type metadata accessor for NextPrecipitationEvent();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = v1;
    v55 = v5;
    v52 = v12;
    v32 = *v3;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A0, &unk_220DC3050);
    v34 = v33[16];
    v35 = v33[20];
    v36 = *(v27 + 32);
    v37 = &v3[v33[12]];
    v53 = v27 + 32;
    v36(v57, v37, v58);
    sub_220D15FF4(&v3[v34], v24);
    sub_220D15FF4(&v3[v35], v22);
    if (v32 == 2)
    {
      v38 = v24;
    }

    else
    {
      v38 = v22;
    }

    if (v32 == 2)
    {
      v24 = v22;
    }

    sub_220CE1E30(v38, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D15FF4(v24, v18);
    v39 = *(v52 + 20);
    OUTLINED_FUNCTION_7_14();
    sub_220D4F578(v18 + v40, v11, v41);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
      OUTLINED_FUNCTION_6(v42);
      (*(v43 + 8))(v11);
    }

    else
    {
      sub_220CE1E30(v11, type metadata accessor for PrecipitationTotalStringAmount.Format);
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B68, &unk_220DC4CA8);
    OUTLINED_FUNCTION_23_8(v44);
    v45 = OUTLINED_FUNCTION_27_3();
    (v36)(v45);
    v46 = sub_220DBE740();
    OUTLINED_FUNCTION_6(v46);
    (*(v47 + 32))(v36 + v11, v54);
    type metadata accessor for PrecipitationWithinSevenDaysSentence();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v48 = sub_220DBE740();
    OUTLINED_FUNCTION_6(v48);
    (*(v49 + 8))(v1);
    type metadata accessor for PrecipitationWithinSevenDaysSentence();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_21();
    sub_220CE1E30(v3, v50);
  }

  OUTLINED_FUNCTION_24();
}

void sub_220D4CD28()
{
  OUTLINED_FUNCTION_25();
  v64 = sub_220DBE740();
  v1 = OUTLINED_FUNCTION_0(v64);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4();
  v62 = v6 - v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v8);
  v10 = &v62 - v9;
  v65 = sub_220DBE560();
  v11 = OUTLINED_FUNCTION_0(v65);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v62 - v20;
  v22 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v23 = OUTLINED_FUNCTION_18(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v62 - v30;
  v32 = type metadata accessor for PrecipitationWithinSevenDaysSentence();
  v33 = OUTLINED_FUNCTION_6(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1();
  v38 = v37 - v36;
  OUTLINED_FUNCTION_9_14();
  v63 = v0;
  sub_220D4F578(v0, v38, v39);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B68, &unk_220DC4CA8);
    v52 = *(v38 + v51[12]);
    v53 = v51[16];
    v54 = v51[20];
    sub_220D15FF4(v38, v31);
    (*(v13 + 32))(v21, v38 + v53, v65);
    v55 = v38 + v54;
    v56 = v64;
    (*(v3 + 32))(v10, v55, v64);
    v59 = OUTLINED_FUNCTION_30_3();
    sub_220D4D25C(v59);
    (*(v3 + 8))(v10, v56);
    (*(v13 + 8))(v21, v65);
    OUTLINED_FUNCTION_1_27();
    v61 = v31;
LABEL_11:
    sub_220CE1E30(v61, v60);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B68, &unk_220DC4CA8);
    v42 = *(v38 + v41[12]);
    v43 = v41[16];
    v44 = v41[20];
    sub_220D15FF4(v38, v28);
    v45 = v65;
    (*(v13 + 32))(v18, v38 + v43, v65);
    v46 = v38 + v44;
    v47 = v62;
    v48 = v64;
    (*(v3 + 32))(v62, v46, v64);
    v49 = (v3 + 8);
    if (v42 == 2)
    {
      v50 = sub_220D4E8D8;
    }

    else
    {
      v50 = sub_220D4D92C;
    }

    sub_220D4D538(v18, v47, v28, v50);
    (*v49)(v47, v48);
    (*(v13 + 8))(v18, v45);
    OUTLINED_FUNCTION_1_27();
    v61 = v28;
    goto LABEL_11;
  }

  if (qword_280FA6600 != -1)
  {
    OUTLINED_FUNCTION_0_12();
    swift_once();
  }

  OUTLINED_FUNCTION_6_0();
  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_220DC17A0;
  v58 = MEMORY[0x277D83C10];
  *(v57 + 56) = MEMORY[0x277D83B88];
  *(v57 + 64) = v58;
  *(v57 + 32) = 10;
  sub_220DC05F0();

LABEL_12:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_220D4D92C(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_19;
    case 2:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_22;
    case 3:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_22;
    case 4:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_22;
    case 5:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_19;
    case 6:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

LABEL_22:
      OUTLINED_FUNCTION_13_10();
      OUTLINED_FUNCTION_6_0();
      break;
    default:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

LABEL_19:
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_6_0();
      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D4DB80()
{
  switch(sub_220DBE520())
  {
    case 1u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D4DECC()
{
  switch(sub_220DBE520())
  {
    case 1u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D4E244()
{
  switch(sub_220DBE520())
  {
    case 1u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D4E58C()
{
  switch(sub_220DBE520())
  {
    case 1u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 2u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 3u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 4u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 5u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    case 6u:
      if (qword_280FA6600 != -1)
      {
        goto LABEL_16;
      }

      break;
    default:
      if (qword_280FA6600 != -1)
      {
LABEL_16:
        swift_once();
      }

      break;
  }

  return sub_220DBE240();
}

uint64_t sub_220D4E8D8(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_19;
    case 2:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_22;
    case 3:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_22;
    case 4:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_22;
    case 5:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

      goto LABEL_19;
    case 6:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

LABEL_22:
      OUTLINED_FUNCTION_12_13();
      OUTLINED_FUNCTION_6_0();
      break;
    default:
      OUTLINED_FUNCTION_14_14();
      if (!v1)
      {
        OUTLINED_FUNCTION_0_12();
        swift_once();
      }

LABEL_19:
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_6_0();
      break;
  }

  return sub_220DBE240();
}

void sub_220D4EB2C()
{
  OUTLINED_FUNCTION_25();
  v151 = v1;
  v152 = v2;
  v147 = sub_220DBE740();
  v3 = OUTLINED_FUNCTION_0(v147);
  v149 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v143 = (v7 - v8);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_0();
  v145 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_0();
  v140 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v13);
  v15 = &v139 - v14;
  v148 = sub_220DBE560();
  v16 = OUTLINED_FUNCTION_0(v148);
  v150 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v142 = v20 - v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_0();
  v146 = v23;
  OUTLINED_FUNCTION_23();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v139 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v139 - v28;
  v141 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v30 = OUTLINED_FUNCTION_6(v141);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4();
  v144 = (v33 - v34);
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_25_5();
  v36 = type metadata accessor for PrecipitationWithinSevenDaysSentence();
  v37 = OUTLINED_FUNCTION_6(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_4();
  v42 = (v40 - v41);
  MEMORY[0x28223BE20](v43);
  v45 = &v139 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B80, &unk_220DC4DB0);
  v47 = OUTLINED_FUNCTION_18(v46);
  v49 = *(v48 + 64);
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v139 - v51;
  v53 = &v139 + *(v50 + 56) - v51;
  sub_220D4F578(v151, &v139 - v51, type metadata accessor for PrecipitationWithinSevenDaysSentence);
  sub_220D4F578(v152, v53, type metadata accessor for PrecipitationWithinSevenDaysSentence);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v145 = v27;
    v146 = v0;
    v139 = v29;
    v151 = v15;
    OUTLINED_FUNCTION_9_14();
    sub_220D4F578(v52, v45, v84);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B68, &unk_220DC4CA8);
    v86 = v85[12];
    v87 = v45[v86];
    v88 = v85[16];
    v60 = &v45[v88];
    v89 = v85[20];
    v62 = &v45[v89];
    if (!swift_getEnumCaseMultiPayload())
    {
      LODWORD(v144) = v87;
      v152 = v52;
      LODWORD(v143) = v53[v86];
      sub_220D15FF4(v53, v146);
      v98 = *(v150 + 32);
      v65 = v148;
      v98(v139, &v45[v88], v148);
      v99 = *(v149 + 32);
      v100 = v147;
      v99(v151, &v45[v89], v147);
      v98(v145, &v53[v88], v65);
      v101 = v140;
      v99(v140, &v53[v89], v100);
      v70 = v146;
      if (*v45 == *v146)
      {
        v102 = *(v141 + 20);
        static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
        if (v103)
        {
          OUTLINED_FUNCTION_1_27();
          sub_220CE1E30(v45, v104);
          v105 = v152;
          if (v144 == v143)
          {
            v106 = v139;
            v107 = v145;
            v108 = sub_220DBE460();
            v109 = v149;
            v110 = v150;
            v111 = v151;
            if (v108)
            {
              v112 = OUTLINED_FUNCTION_30_3();
              MEMORY[0x223D96350](v112);
              v113 = *(v109 + 8);
              v114 = v147;
              v113(v101, v147);
              v115 = *(v110 + 8);
              v116 = v148;
              v115(v107, v148);
              v113(v111, v114);
              v115(v139, v116);
              OUTLINED_FUNCTION_1_27();
              sub_220CE1E30(v70, v117);
              OUTLINED_FUNCTION_2_21();
              v83 = v105;
              goto LABEL_24;
            }

            v133 = *(v149 + 8);
            OUTLINED_FUNCTION_12();
            v133();
            v134 = *(v110 + 8);
            v135 = v107;
            v136 = v148;
            v134(v135, v148);
            v137 = OUTLINED_FUNCTION_30_3();
            (v133)(v137);
            v134(v106, v136);
          }

          else
          {
            v127 = *(v149 + 8);
            OUTLINED_FUNCTION_12();
            v127();
            v128 = *(v150 + 8);
            v129 = v148;
            v128(v145, v148);
            (v127)(v151, v101);
            v128(v139, v129);
          }

          OUTLINED_FUNCTION_1_27();
          sub_220CE1E30(v70, v138);
          OUTLINED_FUNCTION_2_21();
          v83 = v105;
          goto LABEL_24;
        }
      }

      OUTLINED_FUNCTION_8_12();
      sub_220CE1E30(v45, v118);
      v119 = *(v149 + 8);
      v120 = v147;
      v119(v101, v147);
      v95 = *(v150 + 8);
      v121 = v148;
      (v95)(v145, v148);
      v119(v151, v120);
      v96 = v139;
      v97 = v121;
      goto LABEL_22;
    }

    v42 = v45;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_9_14();
    sub_220D4F578(v52, v42, v55);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B68, &unk_220DC4CA8);
    v57 = v56[12];
    v58 = v42[v57];
    v59 = v56[16];
    v60 = &v42[v59];
    v61 = v56[20];
    v62 = &v42[v61];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      LODWORD(v151) = v58;
      v152 = v52;
      LODWORD(v140) = v53[v57];
      sub_220D15FF4(v53, v144);
      v63 = *(v150 + 32);
      v64 = v148;
      v63(v146, &v42[v59], v148);
      v65 = *(v149 + 32);
      v66 = v147;
      v65(v145, &v42[v61], v147);
      v67 = &v53[v59];
      v68 = v142;
      v63(v142, v67, v64);
      v69 = v143;
      v65(v143, &v53[v61], v66);
      v70 = v144;
      if (*v42 == *v144)
      {
        v71 = *(v141 + 20);
        static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
        if (v72)
        {
          OUTLINED_FUNCTION_1_27();
          sub_220CE1E30(v42, v73);
          if (v151 == v140)
          {
            v74 = v146;
            OUTLINED_FUNCTION_30_3();
            v75 = sub_220DBE460();
            v76 = v149;
            v77 = v150;
            if (v75)
            {
              v78 = v145;
              MEMORY[0x223D96350](v145, v69);
              v79 = *(v76 + 8);
              OUTLINED_FUNCTION_12();
              v79();
              v80 = *(v77 + 8);
              OUTLINED_FUNCTION_24_6();
              v80();
              (v79)(v78, v68);
              (v80)(v74, v68);
              OUTLINED_FUNCTION_1_27();
              sub_220CE1E30(v70, v81);
              OUTLINED_FUNCTION_2_21();
              v83 = v152;
LABEL_24:
              sub_220CE1E30(v83, v82);
              goto LABEL_25;
            }

            v130 = *(v149 + 8);
            v131 = v147;
            v130(v69, v147);
            v132 = *(v77 + 8);
            OUTLINED_FUNCTION_24_6();
            v132();
            v130(v145, v131);
            (v132)(v74, v69);
          }

          else
          {
            v124 = *(v149 + 8);
            v125 = v147;
            v124(v69, v147);
            v126 = *(v150 + 8);
            OUTLINED_FUNCTION_24_6();
            v126();
            v124(v145, v125);
            (v126)(v146, v69);
          }

          OUTLINED_FUNCTION_1_27();
          v122 = v70;
LABEL_23:
          sub_220CE1E30(v122, v123);
          OUTLINED_FUNCTION_2_21();
          v83 = v152;
          goto LABEL_24;
        }
      }

      OUTLINED_FUNCTION_8_12();
      sub_220CE1E30(v42, v93);
      v94 = *(v149 + 8);
      OUTLINED_FUNCTION_12();
      v94();
      v95 = *(v150 + 8);
      OUTLINED_FUNCTION_24_6();
      v95();
      (v94)(v145, v68);
      v96 = v146;
      v97 = v68;
LABEL_22:
      (v95)(v96, v97);
      v122 = v70;
      v123 = v65;
      goto LABEL_23;
    }

LABEL_11:
    v90 = v150;
    (*(v149 + 8))(v62, v147);
    (*(v90 + 8))(v60, v148);
    OUTLINED_FUNCTION_1_27();
    sub_220CE1E30(v42, v91);
LABEL_14:
    sub_220D4F510(v52);
    goto LABEL_25;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_2_21();
  sub_220CE1E30(v52, v92);
LABEL_25:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_220D4F510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B80, &unk_220DC4DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D4F578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t PrecipitationTotalPlatterViewModelFactory.makeModel(currentWeather:dayWeather:unit:timeZone:)@<X0>(void *a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = sub_220DBE560();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_220DBEA60();
  sub_220DBE480();
  v12 = *(v5 + 8);
  v12(v9, v4);
  sub_220DBE810();
  v13 = sub_220DBE460();
  v12(v9, v4);
  if (v13)
  {
    v14.n128_f64[0] = sub_220D4F7CC(a1, a2);
  }

  else
  {
    sub_220DBE810();
    v15 = sub_220DBE440();
    v12(v9, v4);
    sub_220D4FB34(a1, v15 & 1, a2);
  }

  return (v12)(v11, v4, v14);
}

double sub_220D4F7CC@<D0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B88, &unk_220DC4E40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  sub_220DBEA50();
  v7 = sub_220DBEE10();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v22 = sub_220D4FD20(v6, a1, 1);
  sub_220CDA548(v6, &qword_27CF95B88, &unk_220DC4E40);
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v8 = swift_allocObject();
  v20 = xmmword_220DC17A0;
  *(v8 + 16) = xmmword_220DC17A0;
  v9 = MEMORY[0x277D83C10];
  *(v8 + 56) = MEMORY[0x277D83B88];
  *(v8 + 64) = v9;
  *(v8 + 32) = 24;
  v21 = sub_220DC05F0();
  v11 = v10;

  sub_220DBEA40();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v12 = sub_220D4FD20(v6, a1, 0);
  sub_220CDA548(v6, &qword_27CF95B88, &unk_220DC4E40);
  sub_220DBE240();
  v13 = swift_allocObject();
  *(v13 + 16) = v20;
  *(v13 + 56) = MEMORY[0x277D83B88];
  *(v13 + 64) = MEMORY[0x277D83C10];
  *(v13 + 32) = 24;
  v14 = sub_220DC05F0();
  v16 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B90, &unk_220DC4E50);
  v17 = swift_allocObject();
  *&result = 2;
  *(v17 + 16) = xmmword_220DC17C0;
  v19 = v22;
  *(v17 + 32) = v21;
  *(v17 + 40) = v11;
  *(v17 + 48) = v19;
  *(v17 + 56) = v14;
  *(v17 + 64) = v16;
  *(v17 + 72) = v12;
  *v23 = v17;
  return result;
}

uint64_t sub_220D4FB34@<X0>(void *a1@<X1>, char a2@<W2>, uint64_t *a3@<X8>)
{
  v6 = sub_220DBEBA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B88, &unk_220DC4E40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  sub_220DBE820();
  v15 = sub_220DBEB80();
  (*(v7 + 8))(v10, v6);
  if (v15)
  {
    sub_220DBE7E0();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_220DBEE10();
  __swift_storeEnumTagSinglePayload(v14, v16, 1, v17);
  v18 = sub_220D4FD20(v14, a1, a2 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B90, &unk_220DC4E50);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_220DC17A0;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(v19 + 48) = v18;
  result = sub_220CDA548(v14, &qword_27CF95B88, &unk_220DC4E40);
  *a3 = v19;
  return result;
}

uint64_t sub_220D4FD20(uint64_t a1, void *a2, int a3)
{
  LODWORD(v88) = a3;
  v86 = a1;
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
  v4 = *(v3 - 8);
  v89 = v3;
  v90 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v70 - v6;
  v8 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_220DBEC90();
  v81 = *(v83 - 8);
  v11 = *(v81 + 64);
  MEMORY[0x28223BE20](v83);
  v80 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_220DBEC20();
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v82 = *(v85 - 8);
  v17 = *(v82 + 64);
  MEMORY[0x28223BE20](v85);
  v19 = &v70 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B88, &unk_220DC4E40);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v70 - v22;
  v24 = sub_220DBEE10();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v75 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v70 - v29;
  sub_220CFD2D8(v86, v23, &qword_27CF95B88, &unk_220DC4E40);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_220CDA548(v23, &qword_27CF95B88, &unk_220DC4E40);
    return sub_220D5074C(v87);
  }

  v77 = v25;
  v32 = *(v25 + 32);
  v78 = v24;
  v32(v30, v23, v24);
  v33 = swift_allocObject();
  v86 = v33;
  *(v33 + 16) = MEMORY[0x277D84F90];
  v74 = v33 + 16;
  v34 = v30;
  sub_220DBEE00();
  v35 = v84;
  v36 = v84 + 104;
  v37 = *(v84 + 104);
  v37(v16, *MEMORY[0x277CE3398], v13);
  sub_220D509F0(v19, v16, v33, v88 & 1);
  v79 = *(v35 + 8);
  v79(v16, v13);
  v82 = *(v82 + 8);
  v38 = v85;
  (v82)(v19, v85);
  sub_220DBEDF0();
  v37(v16, *MEMORY[0x277CE33B0], v13);
  sub_220D509F0(v19, v16, v86, v88 & 1);
  v79(v16, v13);
  (v82)(v19, v38);
  sub_220DBEDE0();
  v39 = *MEMORY[0x277CE33A8];
  v72 = v36;
  v71 = v37;
  v37(v16, v39, v13);
  sub_220D509F0(v19, v16, v86, v88 & 1);
  v73 = v16;
  v40 = v74;
  v79(v16, v13);
  v41 = v82;
  (v82)(v19, v38);
  v42 = v80;
  v43 = v34;
  sub_220DBEDC0();
  sub_220DBEC70();
  (*(v81 + 8))(v42, v83);
  sub_220DBE050();
  v45 = v44;
  v46 = v38;
  v47 = v41;
  v41(v19, v46);
  v48 = v87;
  if (v45 > 0.0)
  {
    if (v88)
    {
      v49 = 2;
    }

    else
    {
      v49 = 1;
    }

    LOBYTE(__src[0]) = v49;
    (*(v77 + 16))(v75, v34, v78);
    v50 = v76;
    PrecipitationTotalStringAmount.init(context:precipitationAmountByType:)();
    PrecipitationTotalStringAmount.maxAmount.getter(v19);
    v51 = v85;
    sub_220DBE050();
    v53 = v52;
    v47(v19, v51);
    if (v53 > 0.0)
    {
      v54 = v73;
      v71(v73, *MEMORY[0x277CE33A0], v13);
      v55 = v43;
      v56 = *(v89 + 48);
      (*(v84 + 32))(v7, v54, v13);
      sub_220CDDC14(v50, &v7[v56], type metadata accessor for PrecipitationTotalStringAmount);
      swift_beginAccess();
      sub_220D513A0();
      v57 = *(*v40 + 16);
      sub_220D513EC(v57);
      v58 = *v40;
      *(v58 + 16) = v57 + 1;
      sub_220D514E0(v7, v58 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v57);
      *v40 = v58;
      v43 = v55;
      swift_endAccess();
    }

    sub_220CE1C00(v50);
    v48 = v87;
  }

  swift_beginAccess();
  v59 = *v40;
  if (!*(*v40 + 16))
  {
    v31 = sub_220D5074C(v48);
    (*(v77 + 8))(v43, v78);
LABEL_20:

    return v31;
  }

  v88 = v43;
  __src[0] = v59;
  swift_bridgeObjectRetain_n();
  sub_220D5142C(__src);
  v60 = v78;
  v61 = v77;

  v62 = __src[0];
  v63 = *(__src[0] + 16);
  if (!v63)
  {

    (*(v61 + 8))(v88, v60);

    return MEMORY[0x277D84F90];
  }

  v92 = MEMORY[0x277D84F90];
  sub_220CFB77C(0, v63, 0);
  v64 = 0;
  v31 = v92;
  v65 = v62 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
  while (v64 < v62[2])
  {
    sub_220CFD2D8(&v65[*(v90 + 72) * v64], v7, &qword_27CF952C0, &unk_220DC4FC0);
    v66 = *(v89 + 48);
    sub_220D510E8(__src);
    sub_220CDA548(v7, &qword_27CF952C0, &unk_220DC4FC0);
    v92 = v31;
    v68 = *(v31 + 16);
    v67 = *(v31 + 24);
    if (v68 >= v67 >> 1)
    {
      sub_220CFB77C((v67 > 1), v68 + 1, 1);
      v31 = v92;
    }

    *(v31 + 16) = v68 + 1;
    memcpy((v31 + 72 * v68 + 32), __src, 0x48uLL);
    if (v63 - 1 == v64)
    {

      (*(v77 + 8))(v88, v78);
      goto LABEL_20;
    }

    ++v64;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_220D5074C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - v5;
  v7 = sub_220DC0460();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  v12 = sub_220DBE240();
  v14 = v13;
  sub_220CDB190();
  v15 = a1;
  sub_220DBE040();
  sub_220DBE0C0();
  (*(v3 + 8))(v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C8, &qword_220DC4E60);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_220DC17A0;
  v17 = sub_220DC0440();
  v19 = v18;
  v20 = sub_220DC0450();
  *(v16 + 32) = v12;
  *(v16 + 40) = v14;
  *(v16 + 64) = v12;
  *(v16 + 72) = v14;
  *(v16 + 48) = v17;
  *(v16 + 56) = v19;
  *(v16 + 80) = v20;
  *(v16 + 88) = v21;
  *(v16 + 96) = 0;
  v22 = *(v8 + 8);

  v22(v11, v7);
  return v16;
}

uint64_t sub_220D509F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v40 = a4;
  v45 = a3;
  v47 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
  v44 = *(v42 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v42);
  v43 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v41 = &v39 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  v16 = sub_220DBEC20();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_220DBE050();
  if (v26 > 0.0)
  {
    v39 = *(v17 + 16);
    v39(v20, v47, v16);
    if ((*(v17 + 88))(v20, v16) == *MEMORY[0x277CE33A0])
    {
      v27 = *(v46 + 16);
      v27(v15, a1, v7);
      v28 = v41;
      v27(v41, v15, v7);
      if (v40)
      {
        v29 = &v24[*(v21 + 20)];
        sub_220CF8B70();
        v30 = 2;
      }

      else
      {
        v27(v11, v15, v7);
        sub_220CDEE30(v28, v11, &v24[*(v21 + 20)]);
        v30 = 1;
      }

      v31 = v46;
    }

    else
    {
      (*(v17 + 8))(v20, v16);
      v31 = v46;
      v32 = *(v46 + 16);
      v32(v15, a1, v7);
      v32(v41, v15, v7);
      v33 = &v24[*(v21 + 20)];
      sub_220CDB1D4();
      v30 = 0;
    }

    (*(v31 + 8))(v15, v7);
    *v24 = v30;
    v34 = v43;
    v35 = *(v42 + 48);
    v39(v43, v47, v16);
    sub_220D15FF4(v24, v34 + v35);
    v36 = v45;
    swift_beginAccess();
    sub_220D513A0();
    v37 = *(*(v36 + 16) + 16);
    sub_220D513EC(v37);
    v38 = *(v36 + 16);
    *(v38 + 16) = v37 + 1;
    sub_220D514E0(v34, v38 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v37);
    *(v36 + 16) = v38;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_220D50E78(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  sub_220CFD2D8(v24, &v24 - v16, &qword_27CF952C0, &unk_220DC4FC0);
  v18 = *(v11 + 56);
  PrecipitationTotalStringAmount.maxAmount.getter(v9);
  sub_220CE1C00(&v17[v18]);
  sub_220CFD2D8(v25, v15, &qword_27CF952C0, &unk_220DC4FC0);
  v19 = *(v11 + 56);
  PrecipitationTotalStringAmount.maxAmount.getter(v7);
  sub_220CE1C00(&v15[v19]);
  sub_220D53B5C();
  LOBYTE(v19) = sub_220DC0580();
  v20 = *(v3 + 8);
  v20(v7, v2);
  v20(v9, v2);
  v21 = sub_220DBEC20();
  v22 = *(*(v21 - 8) + 8);
  v22(v15, v21);
  v22(v17, v21);
  return v19 & 1;
}

uint64_t sub_220D510E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_220DBEC00();
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    v38 = 0x8000000220DF0DC0;
    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_220DC17C0;
    v8 = MEMORY[0x277D837D0];
    *(v7 + 56) = MEMORY[0x277D837D0];
    v9 = sub_220CEFDB0();
    *(v7 + 64) = v9;
    *(v7 + 32) = v4;
    *(v7 + 40) = v5;

    v10 = Precipitation.chartColorAccessibilityDescription.getter();
    *(v7 + 96) = v8;
    *(v7 + 104) = v9;
    *(v7 + 72) = v10;
    *(v7 + 80) = v11;
    v12 = sub_220DC05F0();
    v42 = v13;
    v45 = v12;
  }

  else
  {
    v14 = Precipitation.chartColorAccessibilityDescription.getter();
    v42 = v15;
    v45 = v14;
  }

  v16 = v4;
  v17 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v17, 0, 1, v18, v19, v20, v21, v22, v38, v40, v42, v45, v48, v50, v52, v54, v56, v58, v60, v62);
  v24 = v23;
  v26 = v25;

  v27 = sub_220DC0810();
  PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v27, 1, 1, v28, v29, v30, v31, v32, v39, v41, v43, v46, v49, v51, v53, v55, v57, v59, v61, v63);
  v34 = v33;
  v36 = v35;

  result = Precipitation.chartColor.getter();
  *a1 = v16;
  a1[1] = v5;
  a1[4] = v47;
  a1[5] = v44;
  a1[2] = v24;
  a1[3] = v26;
  a1[6] = v34;
  a1[7] = v36;
  a1[8] = result;
  return result;
}

void sub_220D513A0()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_220D562FC(0, *(v1 + 16) + 1, 1, v1);
    *v0 = v3;
  }
}

void sub_220D513EC(uint64_t a1)
{
  v2 = *(*v1 + 24);
  if (a1 + 1 > (v2 >> 1))
  {
    sub_220D562FC(v2 > 1, a1 + 1, 1, *v1);
    *v1 = v3;
  }
}

uint64_t sub_220D5142C(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_220D81A1C(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_220D51550(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_220D514E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D51550(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_220DC0C60();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
        v6 = sub_220DC0760();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_220D51CC0(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_220D51698(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_220D51698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v75 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v8 = *(*(v75 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v75);
  v74 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v68 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v72 = &v57 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
  v18 = *(*(v76 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v76);
  v66 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v71 = &v57 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v70 = &v57 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v77 = &v57 - v26;
  result = MEMORY[0x28223BE20](v25);
  v30 = &v57 - v29;
  v59 = a2;
  if (a3 != a2)
  {
    v31 = *a4;
    v32 = *(v28 + 72);
    v69 = (v13 + 32);
    v33 = (v13 + 8);
    v34 = v31 + v32 * (a3 - 1);
    v64 = -v32;
    v65 = v31;
    v35 = a1 - a3;
    v58 = v32;
    v36 = v31 + v32 * a3;
    v67 = &v57 - v29;
    while (2)
    {
      v62 = v34;
      v63 = a3;
      v60 = v36;
      v61 = v35;
      do
      {
        sub_220CFD2D8(v36, v30, &qword_27CF952C0, &unk_220DC4FC0);
        sub_220CFD2D8(v34, v77, &qword_27CF952C0, &unk_220DC4FC0);
        v37 = v70;
        sub_220CFD2D8(v30, v70, &qword_27CF952C0, &unk_220DC4FC0);
        v38 = v37 + *(v76 + 48);
        v39 = type metadata accessor for PrecipitationTotalStringAmount(0);
        sub_220CDDC14(v38 + *(v39 + 20), v73, type metadata accessor for PrecipitationTotalStringAmount.Format);
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
          v40 = *v69;
          v42 = v73;
          (*v69)(v72, v73 + *(v41 + 48), v12);
          (*v33)(v42, v12);
        }

        else
        {
          v40 = *v69;
          (*v69)(v72, v73, v12);
        }

        sub_220CE1C00(v38);
        v43 = v71;
        sub_220CFD2D8(v77, v71, &qword_27CF952C0, &unk_220DC4FC0);
        v44 = v43 + *(v76 + 48);
        sub_220CDDC14(v44 + *(v39 + 20), v74, type metadata accessor for PrecipitationTotalStringAmount.Format);
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
          v47 = v74;
          v48 = v68;
          v40(v68, v74 + *(v46 + 48), v12);
          v49 = v47;
          v45 = v48;
          (*v33)(v49, v12);
        }

        else
        {
          v45 = v68;
          v40(v68, v74, v12);
        }

        sub_220CE1C00(v44);
        sub_220D53B5C();
        v50 = v72;
        v51 = sub_220DC0580();
        v52 = *v33;
        (*v33)(v45, v12);
        v52(v50, v12);
        v53 = sub_220DBEC20();
        v54 = *(*(v53 - 8) + 8);
        v54(v71, v53);
        v54(v70, v53);
        sub_220CDA548(v77, &qword_27CF952C0, &unk_220DC4FC0);
        v30 = v67;
        result = sub_220CDA548(v67, &qword_27CF952C0, &unk_220DC4FC0);
        if ((v51 & 1) == 0)
        {
          break;
        }

        if (!v65)
        {
          __break(1u);
          return result;
        }

        v55 = v66;
        sub_220D514E0(v36, v66);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_220D514E0(v55, v34);
        v34 += v64;
        v36 += v64;
      }

      while (!__CFADD__(v35++, 1));
      a3 = v63 + 1;
      v34 = v62 + v58;
      v35 = v61 - 1;
      v36 = v60 + v58;
      if (v63 + 1 != v59)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_220D51CC0(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v171 = a4;
  v172 = a1;
  v5 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v202 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v201 = &v169 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v187 = &v169 - v12;
  MEMORY[0x28223BE20](v11);
  v186 = &v169 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v200 = &v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v199 = &v169 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v178 = &v169 - v22;
  MEMORY[0x28223BE20](v21);
  v188 = &v169 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
  v181 = *(v24 - 8);
  v25 = *(v181 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v176 = &v169 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v194 = &v169 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v198 = &v169 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v197 = &v169 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v206 = &v169 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v196 = &v169 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v185 = &v169 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v184 = &v169 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v191 = &v169 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v183 = &v169 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  MEMORY[0x28223BE20](v46);
  v182 = a3;
  v49 = a3[1];
  if (v49 < 1)
  {
    v189 = MEMORY[0x277D84F90];
LABEL_114:
    v15 = *v172;
    if (!*v172)
    {
      goto LABEL_157;
    }

    v51 = v189;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_151;
  }

  v169 = &v169 - v47;
  v50 = 0;
  v203 = (v15 + 32);
  v195 = (v15 + 8);
  v189 = MEMORY[0x277D84F90];
  v204 = v5;
  v205 = v24;
  v170 = v48;
  while (1)
  {
    v51 = v50++;
    if (v50 < v49)
    {
      v180 = v49;
      v52 = *v182;
      v173 = v51;
      v51 = *(v181 + 72);
      v53 = v52 + v51 * v50;
      v54 = v169;
      v15 = v48;
      sub_220CFD2D8(v53, v169, &qword_27CF952C0, &unk_220DC4FC0);
      v193 = v52;
      sub_220CFD2D8(v52 + v51 * v173, v15, &qword_27CF952C0, &unk_220DC4FC0);
      v55 = v190;
      LODWORD(v179) = sub_220D50E78(v54, v15);
      v190 = v55;
      if (v55)
      {
        sub_220CDA548(v15, &qword_27CF952C0, &unk_220DC4FC0);
        sub_220CDA548(v54, &qword_27CF952C0, &unk_220DC4FC0);
LABEL_126:

        return;
      }

      sub_220CDA548(v15, &qword_27CF952C0, &unk_220DC4FC0);
      sub_220CDA548(v54, &qword_27CF952C0, &unk_220DC4FC0);
      v56 = v173 + 2;
      v57 = v193 + v51 * (v173 + 2);
      v58 = v51;
      v193 = v51;
      v59 = v180;
      while (1)
      {
        v60 = v56;
        if (v50 + 1 >= v59)
        {
          break;
        }

        v61 = v183;
        v51 = &unk_220DC4FC0;
        sub_220CFD2D8(v57, v183, &qword_27CF952C0, &unk_220DC4FC0);
        sub_220CFD2D8(v53, v191, &qword_27CF952C0, &unk_220DC4FC0);
        v62 = v61;
        v63 = v184;
        sub_220CFD2D8(v62, v184, &qword_27CF952C0, &unk_220DC4FC0);
        v64 = v63 + *(v24 + 48);
        v65 = type metadata accessor for PrecipitationTotalStringAmount(0);
        sub_220CDDC14(v64 + *(v65 + 20), v186, type metadata accessor for PrecipitationTotalStringAmount.Format);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v192 = v50;
        if (EnumCaseMultiPayload > 1)
        {
          v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
          v67 = *v203;
          v69 = v186;
          (*v203)(v188, v186 + *(v68 + 48), v14);
          (*v195)(v69, v14);
        }

        else
        {
          v67 = *v203;
          (*v203)(v188, v186, v14);
        }

        sub_220CE1C00(v64);
        v70 = v185;
        sub_220CFD2D8(v191, v185, &qword_27CF952C0, &unk_220DC4FC0);
        v71 = v70 + *(v205 + 48);
        sub_220CDDC14(v71 + *(v65 + 20), v187, type metadata accessor for PrecipitationTotalStringAmount.Format);
        if (swift_getEnumCaseMultiPayload() > 1)
        {
          v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
          v74 = v187;
          v72 = v178;
          v67(v178, v187 + *(v73 + 48), v14);
          (*v195)(v74, v14);
        }

        else
        {
          v72 = v178;
          v67(v178, v187, v14);
        }

        sub_220CE1C00(v71);
        sub_220D53B5C();
        v75 = v188;
        v76 = sub_220DC0580();
        v77 = v72;
        v15 = v76 & 1;
        v78 = *v195;
        (*v195)(v77, v14);
        v78(v75, v14);
        v79 = sub_220DBEC20();
        v80 = *(*(v79 - 8) + 8);
        v80(v185, v79);
        v80(v184, v79);
        sub_220CDA548(v191, &qword_27CF952C0, &unk_220DC4FC0);
        sub_220CDA548(v183, &qword_27CF952C0, &unk_220DC4FC0);
        v58 = v193;
        v57 += v193;
        v53 += v193;
        v50 = v192 + 1;
        v56 = v60 + 1;
        v24 = v205;
        v59 = v180;
        if ((v179 & 1) != v15)
        {
          goto LABEL_16;
        }
      }

      v50 = v59;
LABEL_16:
      if (v179)
      {
        if (v50 < v173)
        {
          goto LABEL_150;
        }

        if (v173 >= v50)
        {
          v51 = v173;
          goto LABEL_38;
        }

        if (v59 >= v60)
        {
          v81 = v60;
        }

        else
        {
          v81 = v59;
        }

        v15 = v58 * (v81 - 1);
        v82 = v58 * v81;
        v83 = v173 * v58;
        v84 = v50;
        v85 = v173;
        v192 = v50;
        do
        {
          if (v85 != --v84)
          {
            v86 = *v182;
            if (!*v182)
            {
              goto LABEL_155;
            }

            sub_220D514E0(v86 + v83, v176);
            v87 = v83 < v15 || v86 + v83 >= v86 + v82;
            if (v87)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v83 != v15)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_220D514E0(v176, v86 + v15);
            v50 = v192;
            v58 = v193;
          }

          ++v85;
          v15 -= v58;
          v82 -= v58;
          v83 += v58;
        }

        while (v85 < v84);
        v24 = v205;
      }

      v51 = v173;
    }

LABEL_38:
    v88 = v182[1];
    if (v50 < v88)
    {
      if (__OFSUB__(v50, v51))
      {
        goto LABEL_147;
      }

      if (v50 - v51 < v171)
      {
        break;
      }
    }

LABEL_62:
    v116 = v189;
    if (v50 < v51)
    {
      goto LABEL_146;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v157 = v116[2];
      sub_220D562D4();
      v116 = v158;
    }

    v15 = v116[2];
    v117 = v15 + 1;
    if (v15 >= v116[3] >> 1)
    {
      sub_220D562D4();
      v116 = v159;
    }

    v116[2] = v117;
    v118 = v116 + 4;
    v119 = &v116[2 * v15 + 4];
    *v119 = v51;
    v119[1] = v50;
    v193 = *v172;
    if (!v193)
    {
      goto LABEL_156;
    }

    v189 = v116;
    if (v15)
    {
      while (1)
      {
        v120 = v117 - 1;
        v121 = &v118[2 * v117 - 2];
        v122 = &v116[2 * v117];
        if (v117 >= 4)
        {
          break;
        }

        if (v117 == 3)
        {
          v123 = v116[4];
          v124 = v116[5];
          v133 = __OFSUB__(v124, v123);
          v125 = v124 - v123;
          v126 = v133;
LABEL_82:
          if (v126)
          {
            goto LABEL_133;
          }

          v138 = *v122;
          v137 = v122[1];
          v139 = __OFSUB__(v137, v138);
          v140 = v137 - v138;
          v141 = v139;
          if (v139)
          {
            goto LABEL_136;
          }

          v142 = v121[1];
          v143 = v142 - *v121;
          if (__OFSUB__(v142, *v121))
          {
            goto LABEL_139;
          }

          if (__OFADD__(v140, v143))
          {
            goto LABEL_141;
          }

          if (v140 + v143 >= v125)
          {
            if (v125 < v143)
            {
              v120 = v117 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v117 < 2)
        {
          goto LABEL_135;
        }

        v145 = *v122;
        v144 = v122[1];
        v133 = __OFSUB__(v144, v145);
        v140 = v144 - v145;
        v141 = v133;
LABEL_97:
        if (v141)
        {
          goto LABEL_138;
        }

        v147 = *v121;
        v146 = v121[1];
        v133 = __OFSUB__(v146, v147);
        v148 = v146 - v147;
        if (v133)
        {
          goto LABEL_140;
        }

        if (v148 < v140)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v120 - 1 >= v117)
        {
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*v182)
        {
          goto LABEL_153;
        }

        v51 = v50;
        v15 = &v118[2 * v120 - 2];
        v152 = *v15;
        v153 = &v118[2 * v120];
        v154 = *(v153 + 1);
        v155 = v190;
        sub_220D52E90(*v182 + *(v181 + 72) * *v15, *v182 + *(v181 + 72) * *v153, *v182 + *(v181 + 72) * v154, v193);
        v190 = v155;
        if (v155)
        {
          goto LABEL_126;
        }

        if (v154 < v152)
        {
          goto LABEL_128;
        }

        v156 = v189[2];
        if (v120 > v156)
        {
          goto LABEL_129;
        }

        *v15 = v152;
        *(v15 + 8) = v154;
        if (v120 >= v156)
        {
          goto LABEL_130;
        }

        v117 = v156 - 1;
        sub_220D81848(v153 + 16, v156 - 1 - v120, &v118[2 * v120]);
        v116 = v189;
        v189[2] = v156 - 1;
        v50 = v51;
        if (v156 <= 2)
        {
          goto LABEL_111;
        }
      }

      v127 = &v118[2 * v117];
      v128 = *(v127 - 8);
      v129 = *(v127 - 7);
      v133 = __OFSUB__(v129, v128);
      v130 = v129 - v128;
      if (v133)
      {
        goto LABEL_131;
      }

      v132 = *(v127 - 6);
      v131 = *(v127 - 5);
      v133 = __OFSUB__(v131, v132);
      v125 = v131 - v132;
      v126 = v133;
      if (v133)
      {
        goto LABEL_132;
      }

      v134 = v122[1];
      v135 = v134 - *v122;
      if (__OFSUB__(v134, *v122))
      {
        goto LABEL_134;
      }

      v133 = __OFADD__(v125, v135);
      v136 = v125 + v135;
      if (v133)
      {
        goto LABEL_137;
      }

      if (v136 >= v130)
      {
        v150 = *v121;
        v149 = v121[1];
        v133 = __OFSUB__(v149, v150);
        v151 = v149 - v150;
        if (v133)
        {
          goto LABEL_145;
        }

        if (v125 < v151)
        {
          v120 = v117 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v49 = v182[1];
    v24 = v205;
    v48 = v170;
    if (v50 >= v49)
    {
      goto LABEL_114;
    }
  }

  v89 = v51 + v171;
  if (__OFADD__(v51, v171))
  {
    goto LABEL_148;
  }

  if (v89 >= v88)
  {
    v89 = v182[1];
  }

  if (v89 < v51)
  {
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    v51 = sub_220D81650(v51);
LABEL_116:
    v160 = v51;
    v162 = *(v51 + 16);
    v51 += 16;
    for (i = v162; i >= 2; *v51 = i)
    {
      if (!*v182)
      {
        goto LABEL_154;
      }

      v163 = (v160 + 16 * i);
      v164 = *v163;
      v165 = v51 + 16 * i;
      v166 = *(v165 + 8);
      v167 = v190;
      sub_220D52E90(*v182 + *(v181 + 72) * *v163, *v182 + *(v181 + 72) * *v165, *v182 + *(v181 + 72) * v166, v15);
      v190 = v167;
      if (v167)
      {
        break;
      }

      if (v166 < v164)
      {
        goto LABEL_142;
      }

      if (i - 2 >= *v51)
      {
        goto LABEL_143;
      }

      *v163 = v164;
      v163[1] = v166;
      v168 = *v51 - i;
      if (*v51 < i)
      {
        goto LABEL_144;
      }

      i = *v51 - 1;
      sub_220D81848((v165 + 16), v168, v165);
    }

    goto LABEL_126;
  }

  if (v50 == v89)
  {
    goto LABEL_62;
  }

  v90 = *v182;
  v91 = *(v181 + 72);
  v92 = *v182 + v91 * (v50 - 1);
  v93 = v50;
  v94 = -v91;
  v173 = v51;
  v95 = v51 - v93;
  v192 = v93;
  v193 = v90;
  v174 = v91;
  v96 = v90 + v93 * v91;
  v175 = v89;
LABEL_47:
  v177 = v96;
  v179 = v95;
  v180 = v92;
  while (1)
  {
    v97 = v196;
    sub_220CFD2D8(v96, v196, &qword_27CF952C0, &unk_220DC4FC0);
    sub_220CFD2D8(v92, v206, &qword_27CF952C0, &unk_220DC4FC0);
    v98 = v97;
    v99 = v197;
    sub_220CFD2D8(v98, v197, &qword_27CF952C0, &unk_220DC4FC0);
    v100 = v99 + *(v24 + 48);
    v101 = type metadata accessor for PrecipitationTotalStringAmount(0);
    sub_220CDDC14(v100 + *(v101 + 20), v201, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
      v102 = *v203;
      v104 = v201;
      (*v203)(v199, v201 + *(v103 + 48), v14);
      (*v195)(v104, v14);
    }

    else
    {
      v102 = *v203;
      (*v203)(v199, v201, v14);
    }

    sub_220CE1C00(v100);
    v105 = v198;
    sub_220CFD2D8(v206, v198, &qword_27CF952C0, &unk_220DC4FC0);
    v106 = v105 + *(v205 + 48);
    sub_220CDDC14(v106 + *(v101 + 20), v202, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
      v108 = v202;
      v102(v200, v202 + *(v107 + 48), v14);
      (*v195)(v108, v14);
    }

    else
    {
      v102(v200, v202, v14);
    }

    sub_220CE1C00(v106);
    sub_220D53B5C();
    v110 = v199;
    v109 = v200;
    v111 = sub_220DC0580();
    v112 = v109;
    v113 = *v195;
    (*v195)(v112, v14);
    v113(v110, v14);
    v114 = sub_220DBEC20();
    v115 = *(*(v114 - 8) + 8);
    v115(v198, v114);
    v115(v197, v114);
    v15 = &unk_220DC4FC0;
    sub_220CDA548(v206, &qword_27CF952C0, &unk_220DC4FC0);
    sub_220CDA548(v196, &qword_27CF952C0, &unk_220DC4FC0);
    if ((v111 & 1) == 0)
    {
      v24 = v205;
LABEL_60:
      v92 = v180 + v174;
      v95 = v179 - 1;
      v96 = v177 + v174;
      if (++v192 == v175)
      {
        v50 = v175;
        v51 = v173;
        goto LABEL_62;
      }

      goto LABEL_47;
    }

    v24 = v205;
    if (!v193)
    {
      break;
    }

    v15 = v194;
    sub_220D514E0(v96, v194);
    swift_arrayInitWithTakeFrontToBack();
    sub_220D514E0(v15, v92);
    v92 += v94;
    v96 += v94;
    v87 = __CFADD__(v95++, 1);
    if (v87)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

uint64_t sub_220D52E90(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v137 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v8 = *(*(v137 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v137);
  v119 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v122 = &v117 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v133 = &v117 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v117 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v118 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v126 = &v117 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v127 = &v117 - v25;
  MEMORY[0x28223BE20](v24);
  v132 = &v117 - v26;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
  v27 = *(*(v139 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v139);
  v125 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v124 = &v117 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v128 = &v117 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v123 = &v117 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v131 = &v117 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v130 = &v117 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v138 = &v117 - v41;
  result = MEMORY[0x28223BE20](v40);
  v129 = &v117 - v43;
  v45 = *(v44 + 72);
  if (!v45)
  {
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return result;
  }

  v46 = a2 - a1 == 0x8000000000000000 && v45 == -1;
  if (v46)
  {
    goto LABEL_78;
  }

  v47 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v45 == -1)
  {
    goto LABEL_79;
  }

  v49 = (a2 - a1) / v45;
  v142 = a1;
  v141 = a4;
  v135 = (v18 + 8);
  v136 = (v18 + 32);
  v50 = v45;
  v51 = v47 / v45;
  if (v49 < v47 / v45)
  {
    sub_220CFB550(a1, (a2 - a1) / v45, a4);
    v128 = a4 + v49 * v50;
    v140 = v128;
    v121 = a3;
    v120 = v50;
    while (1)
    {
      if (a4 >= v128 || a2 >= a3)
      {
        goto LABEL_76;
      }

      v53 = v129;
      sub_220CFD2D8(a2, v129, &qword_27CF952C0, &unk_220DC4FC0);
      sub_220CFD2D8(a4, v138, &qword_27CF952C0, &unk_220DC4FC0);
      v54 = v53;
      v55 = v130;
      sub_220CFD2D8(v54, v130, &qword_27CF952C0, &unk_220DC4FC0);
      v56 = v55 + *(v139 + 48);
      v57 = type metadata accessor for PrecipitationTotalStringAmount(0);
      sub_220CDDC14(v56 + *(v57 + 20), v16, type metadata accessor for PrecipitationTotalStringAmount.Format);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v134 = a1;
      if (EnumCaseMultiPayload > 1)
      {
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
        v59 = *v136;
        (*v136)(v132, &v16[*(v60 + 48)], v17);
        (*v135)(v16, v17);
      }

      else
      {
        v59 = *v136;
        (*v136)(v132, v16, v17);
      }

      v61 = v16;
      sub_220CE1C00(v56);
      v62 = v131;
      sub_220CFD2D8(v138, v131, &qword_27CF952C0, &unk_220DC4FC0);
      v63 = v62 + *(v139 + 48);
      sub_220CDDC14(v63 + *(v57 + 20), v133, type metadata accessor for PrecipitationTotalStringAmount.Format);
      v64 = a2;
      v65 = a4;
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
        v68 = v133;
        v66 = v127;
        v59(v127, &v133[*(v67 + 48)], v17);
        (*v135)(v68, v17);
      }

      else
      {
        v66 = v127;
        v59(v127, v133, v17);
      }

      sub_220CE1C00(v63);
      sub_220D53B5C();
      v69 = v132;
      v70 = sub_220DC0580();
      v71 = *v135;
      (*v135)(v66, v17);
      v71(v69, v17);
      v72 = sub_220DBEC20();
      v73 = *(*(v72 - 8) + 8);
      v73(v131, v72);
      v73(v130, v72);
      sub_220CDA548(v138, &qword_27CF952C0, &unk_220DC4FC0);
      sub_220CDA548(v129, &qword_27CF952C0, &unk_220DC4FC0);
      if ((v70 & 1) == 0)
      {
        break;
      }

      v74 = v120;
      v75 = v64 + v120;
      v76 = v134;
      v77 = v134 < v64 || v134 >= v75;
      a4 = v65;
      if (v77)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 = v64 + v74;
        a3 = v121;
LABEL_41:
        v16 = v61;
        goto LABEL_42;
      }

      v46 = v134 == v64;
      a3 = v121;
      v16 = v61;
      if (!v46)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      a2 = v75;
LABEL_42:
      a1 = v76 + v74;
      v142 = a1;
    }

    v78 = v65;
    v74 = v120;
    a4 = v65 + v120;
    v76 = v134;
    if (v134 < v65 || v134 >= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      a2 = v64;
      a3 = v121;
    }

    else
    {
      a2 = v64;
      a3 = v121;
      if (v134 != v78)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v141 = a4;
    goto LABEL_41;
  }

  sub_220CFB550(a2, v47 / v45, a4);
  v132 = a4;
  v80 = v50;
  v81 = a4 + v51 * v50;
  v82 = -v80;
  v83 = v81;
  v134 = a1;
  v138 = v82;
LABEL_44:
  v84 = a2 + v82;
  v85 = a3;
  v127 = v83;
  v86 = v83;
  v130 = a2 + v82;
  v131 = a2;
  while (1)
  {
    if (v81 <= v132)
    {
      v142 = a2;
      v140 = v86;
      goto LABEL_76;
    }

    if (a2 <= a1)
    {
      break;
    }

    v133 = v85;
    v129 = v86;
    v87 = v81 + v82;
    v88 = v81 + v82;
    v89 = v123;
    sub_220CFD2D8(v88, v123, &qword_27CF952C0, &unk_220DC4FC0);
    sub_220CFD2D8(v84, v128, &qword_27CF952C0, &unk_220DC4FC0);
    v90 = v89;
    v91 = v124;
    sub_220CFD2D8(v90, v124, &qword_27CF952C0, &unk_220DC4FC0);
    v92 = v91 + *(v139 + 48);
    v93 = type metadata accessor for PrecipitationTotalStringAmount(0);
    sub_220CDDC14(v92 + *(v93 + 20), v122, type metadata accessor for PrecipitationTotalStringAmount.Format);
    v94 = swift_getEnumCaseMultiPayload();
    if (v94)
    {
      v95 = v119;
      if (v94 == 1)
      {
        v96 = *v136;
        (*v136)(v126, v122, v17);
      }

      else
      {
        v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
        v96 = *v136;
        v98 = v122;
        (*v136)(v126, &v122[*(v97 + 48)], v17);
        (*v135)(v98, v17);
      }
    }

    else
    {
      v96 = *v136;
      (*v136)(v126, v122, v17);
      v95 = v119;
    }

    v99 = v118;
    sub_220CE1C00(v92);
    v100 = v125;
    sub_220CFD2D8(v128, v125, &qword_27CF952C0, &unk_220DC4FC0);
    v101 = v100 + *(v139 + 48);
    sub_220CDDC14(v101 + *(v93 + 20), v95, type metadata accessor for PrecipitationTotalStringAmount.Format);
    v102 = swift_getEnumCaseMultiPayload();
    if (v102)
    {
      v103 = v138;
      if (v102 == 1)
      {
        v96(v99, v95, v17);
      }

      else
      {
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
        v96(v99, (v95 + *(v104 + 48)), v17);
        (*v135)(v95, v17);
      }
    }

    else
    {
      v96(v99, v95, v17);
      v103 = v138;
    }

    v105 = v133;
    v106 = &v133[v103];
    sub_220CE1C00(v101);
    sub_220D53B5C();
    v107 = v126;
    v108 = sub_220DC0580();
    v109 = *v135;
    (*v135)(v99, v17);
    v109(v107, v17);
    v110 = sub_220DBEC20();
    v111 = *(*(v110 - 8) + 8);
    v111(v125, v110);
    v111(v124, v110);
    sub_220CDA548(v128, &qword_27CF952C0, &unk_220DC4FC0);
    sub_220CDA548(v123, &qword_27CF952C0, &unk_220DC4FC0);
    if (v108)
    {
      v114 = v105 < v131 || v106 >= v131;
      a1 = v134;
      a3 = v106;
      if (v114)
      {
        a2 = v130;
        swift_arrayInitWithTakeFrontToBack();
        v83 = v129;
        v82 = v138;
      }

      else
      {
        v116 = v129;
        v115 = v130;
        v83 = v129;
        v46 = v105 == v131;
        a2 = v130;
        v82 = v138;
        if (!v46)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v115;
          v83 = v116;
        }
      }

      goto LABEL_44;
    }

    v112 = v105 < v81 || v106 >= v81;
    a1 = v134;
    v113 = v106;
    if (v112)
    {
      swift_arrayInitWithTakeFrontToBack();
      v85 = v106;
      v81 = v87;
      v86 = v87;
      v82 = v138;
      v84 = v130;
      a2 = v131;
    }

    else
    {
      v86 = v87;
      v46 = v81 == v105;
      v85 = v106;
      v81 = v87;
      v82 = v138;
      v84 = v130;
      a2 = v131;
      if (!v46)
      {
        swift_arrayInitWithTakeBackToFront();
        v85 = v113;
        v81 = v87;
        v86 = v87;
      }
    }
  }

  v142 = a2;
  v140 = v127;
LABEL_76:
  sub_220D81668(&v142, &v141, &v140);
  return 1;
}

unint64_t sub_220D53B5C()
{
  result = qword_27CF95B98;
  if (!qword_27CF95B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95208, &unk_220DC1E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF95B98);
  }

  return result;
}

uint64_t SunriseSunsetTableViewModelFactory.init(sunEventViewModelFactory:sunriseSunsetEventCalculator:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SunriseSunsetTableViewModelFactory();
  v7 = v6[6];
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  v8 = (a3 + v7);
  OUTLINED_FUNCTION_2_22();
  *v8 = sub_220DBE240();
  v8[1] = v9;
  v10 = (a3 + v6[7]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_22();
  *v10 = sub_220DBE240();
  v10[1] = v11;
  v12 = (a3 + v6[8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_22();
  *v12 = sub_220DBE240();
  v12[1] = v13;
  v14 = (a3 + v6[9]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_22();
  *v14 = sub_220DBE240();
  v14[1] = v15;
  v16 = (a3 + v6[10]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_22();
  *v16 = sub_220DBE240();
  v16[1] = v17;
  v18 = (a3 + v6[11]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_22();
  sub_220DBE240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D83B88];
  *(v19 + 16) = xmmword_220DC17A0;
  v21 = MEMORY[0x277D83C10];
  *(v19 + 56) = v20;
  *(v19 + 64) = v21;
  *(v19 + 32) = 7;
  v22 = sub_220DC05F0();
  v24 = v23;

  *v18 = v22;
  v18[1] = v24;
  sub_220CD570C(a1, a3);
  v25 = v6[5];
  v26 = sub_220DC04D0();
  v27 = *(*(v26 - 8) + 32);

  return v27(a3 + v25, a2, v26);
}

uint64_t type metadata accessor for SunriseSunsetTableViewModelFactory()
{
  result = qword_27CF95BA0;
  if (!qword_27CF95BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D53F24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95798, &unk_220DC3040);
  OUTLINED_FUNCTION_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v4);
  v6 = *(v5 + 16);
  OUTLINED_FUNCTION_52_1();
  v7();
  sub_220D586FC();
  v10 = sub_220DC06F0();
  sub_220D56FB0(&v10);
  v8 = v10;
  if (v0)
  {
  }

  return v8;
}

uint64_t SunriseSunsetTableViewModelFactory.makePolarViewModel(from:forecast:timeZone:calendar:type:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, size_t *a6@<X8>)
{
  v8 = v6;
  v158 = a5;
  v144 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95348, &qword_220DC22F0);
  OUTLINED_FUNCTION_18(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  v142 = v136 - v17;
  OUTLINED_FUNCTION_6_1();
  v18 = type metadata accessor for OverviewTableRowViewModel();
  v19 = OUTLINED_FUNCTION_0(v18);
  v157 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9();
  v151 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_25_0();
  v143 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_25_0();
  v153 = v27;
  OUTLINED_FUNCTION_23();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = (v136 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v34 = (v136 - v33);
  MEMORY[0x28223BE20](v32);
  v36 = (v136 - v35);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v38 = OUTLINED_FUNCTION_18(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9();
  v154 = v41;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v42);
  v43 = OUTLINED_FUNCTION_55_0();
  v44 = OUTLINED_FUNCTION_0(v43);
  v149 = v45;
  v150 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_57();
  v140 = *v158;
  v147 = v50;
  sub_220DBE3E0();
  v139 = a2;
  sub_220D54AE0(a1, MEMORY[0x277CE37C8], v7);
  v146 = a3;
  v51 = sub_220D54EF0(v7, v8);
  v53 = v52;
  v141 = v7;
  v148 = a4;
  v145 = a1;
  v138 = sub_220D54898(v7, a4, a1, v8);
  v55 = v54;
  v152 = type metadata accessor for SunriseSunsetTableViewModelFactory();
  v56 = v152[6];
  v156 = v8;
  v57 = (v8 + v56);
  v59 = *v57;
  v58 = v57[1];
  v60 = v36 + *(v18 + 24);
  v137 = v51;
  *v60 = v51;
  *(v60 + 8) = v53;
  *(v60 + 16) = 0;
  v61 = type metadata accessor for OverviewTableValueString();
  OUTLINED_FUNCTION_15_9();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_3(v60);
  *v36 = v59;
  v36[1] = v58;
  v36[2] = v59;
  v36[3] = v58;
  v155 = v18;
  *(v36 + *(v18 + 28)) = 0;
  swift_bridgeObjectRetain_n();

  v62 = sub_220D563D8(0, 1, 1, MEMORY[0x277D84F90]);
  v64 = *(v62 + 16);
  v63 = *(v62 + 24);
  v65 = v64 + 1;
  if (v64 >= v63 >> 1)
  {
    v62 = sub_220D563D8(v63 > 1, v64 + 1, 1, v62);
  }

  *(v62 + 16) = v65;
  v66 = *(v157 + 80);
  OUTLINED_FUNCTION_13_2();
  v158 = v67;
  v157 = *(v68 + 72);
  sub_220CFD40C(v36, &v67[v62 + v157 * v64]);
  v69 = v155;
  v70 = v34 + *(v155 + 24);
  *v70 = v137;
  *(v70 + 8) = v53;
  *(v70 + 16) = 0;
  OUTLINED_FUNCTION_15_9();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_3(v70);
  v71 = v138;
  *v34 = v138;
  v34[1] = v55;
  v34[2] = v71;
  v34[3] = v55;
  *(v34 + *(v69 + 28)) = 0;
  v72 = *(v62 + 24);

  if ((v64 + 2) > (v72 >> 1))
  {
    v62 = OUTLINED_FUNCTION_39_1();
  }

  *(v62 + 16) = v64 + 2;
  OUTLINED_FUNCTION_44_0();
  sub_220CFD40C(v34, v73 + v74 * v65);
  v75 = v154;
  v76 = v145;
  sub_220D54AE0(v145, MEMORY[0x277CE37C0], v154);
  v77 = v156;
  v78 = sub_220D54EF0(v75, v156);
  v80 = v79;
  v81 = sub_220D5508C(v75, v148, v76, v77);
  v83 = v82;
  v84 = v155;
  v85 = v31 + *(v155 + 24);
  *v85 = v78;
  *(v85 + 8) = v80;
  *(v85 + 16) = 0;
  OUTLINED_FUNCTION_15_9();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_3(v85);
  *v31 = v81;
  v31[1] = v83;
  v31[2] = v81;
  v31[3] = v83;
  *(v31 + *(v84 + 28)) = 0;
  v87 = *(v62 + 16);
  v86 = *(v62 + 24);

  if (v87 >= v86 >> 1)
  {
    v130 = OUTLINED_FUNCTION_32_1();
    v62 = sub_220D563D8(v130, v131, v132, v62);
  }

  v139 = v87 + 1;
  *(v62 + 16) = v87 + 1;
  OUTLINED_FUNCTION_44_0();
  sub_220CFD40C(v31, v88 + v87 * v89);
  v90 = v153;
  v91 = (v156 + v152[9]);
  v93 = *v91;
  v92 = v91[1];
  v94 = v153 + *(v84 + 24);
  *v94 = v78;
  *(v94 + 8) = v80;
  *(v94 + 16) = 0;
  OUTLINED_FUNCTION_15_9();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_31_3(v94);
  *v90 = v93;
  v90[1] = v92;
  v90[2] = v93;
  v90[3] = v92;
  *(v90 + *(v84 + 28)) = 0;
  v95 = *(v62 + 24);
  v96 = v87 + 2;
  swift_bridgeObjectRetain_n();
  if ((v87 + 2) > (v95 >> 1))
  {
    v62 = OUTLINED_FUNCTION_39_1();
  }

  v98 = v150;
  v97 = v151;
  v100 = v142;
  v99 = v143;
  *(v62 + 16) = v96;
  OUTLINED_FUNCTION_44_0();
  sub_220CFD40C(v153, v101 + v139 * v102);
  v103 = 0.0;
  if ((v140 & 1) == 0)
  {
    OUTLINED_FUNCTION_50_0(&v159);
    sub_220DBE3E0();
    v104 = v136[2];
    sub_220DBE390();
    v105 = *(v149 + 8);
    v106 = v98;
    v98 = v150;
    v105(v106, v150);
    sub_220DBE450();
    v108 = v107;
    sub_220DBE450();
    v110 = v109;
    v111 = v104;
    v97 = v151;
    v105(v111, v98);
    v103 = v108 - v110;
  }

  v112 = sub_220D552D0(v103);
  v115 = (v156 + v152[10]);
  v117 = *v115;
  v116 = v115[1];
  if (v114 == -1)
  {
    v118 = 1;
  }

  else
  {
    *v100 = v112;
    *(v100 + 8) = v113;
    *(v100 + 16) = v114;
    OUTLINED_FUNCTION_15_9();
    swift_storeEnumTagMultiPayload();
    v118 = 0;
  }

  __swift_storeEnumTagSinglePayload(v100, v118, 1, v61);
  *v99 = v117;
  v99[1] = v116;
  v99[2] = v117;
  v99[3] = v116;
  sub_220D01ABC(v100, v99 + *(v84 + 24));
  *(v99 + *(v84 + 28)) = 0;
  sub_220CFD3A8(v99, v97);
  v120 = *(v62 + 16);
  v119 = *(v62 + 24);
  swift_bridgeObjectRetain_n();
  if (v120 >= v119 >> 1)
  {
    OUTLINED_FUNCTION_15_9();
    v62 = sub_220D563D8(v133, v134, v135, v62);
  }

  sub_220D564E8(v99);
  OUTLINED_FUNCTION_52_1();
  sub_220CE1ABC(v121, v122, v123);
  OUTLINED_FUNCTION_52_1();
  sub_220CE1ABC(v124, v125, v126);
  (*(v149 + 8))(v147, v98);
  *(v62 + 16) = v120 + 1;
  OUTLINED_FUNCTION_44_0();
  result = sub_220CFD40C(v97, v127 + v120 * v128);
  *v144 = v62;
  return result;
}

uint64_t sub_220D54804(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_220D586B0(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_220D58608(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_220D54898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_220DBE560();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D56F0C(a1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_220CE1ABC(v9, &qword_27CF951E0, &unk_220DC1D80);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v15 = sub_220DBE670();
    (*(v11 + 8))(v14, v10);
    if (v15)
    {
      v16 = (a4 + *(type metadata accessor for SunriseSunsetTableViewModelFactory() + 28));
      v17 = *v16;
      v18 = v16[1];

      return v17;
    }
  }

  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  return sub_220DBE240();
}

uint64_t sub_220D54AE0@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t)@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_220DBF070();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95A10, "Z");
  OUTLINED_FUNCTION_18(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  v20 = &v26[-v19];
  v21 = sub_220D53F24();
  sub_220D54804(7, v21);
  v27 = a1;
  sub_220D29144();
  swift_unknownObjectRelease();
  v22 = sub_220DBE830();
  if (__swift_getEnumTagSinglePayload(v20, 1, v22) == 1)
  {
    sub_220CE1ABC(v20, &qword_27CF95A10, "Z");
    v23 = sub_220DBE560();
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v23);
  }

  else
  {
    sub_220DBE800();
    v25 = (*(*(v22 - 8) + 8))(v20, v22);
    a2(v25);
    return (*(v9 + 8))(v14, v6);
  }
}

void sub_220D54CF0()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0;
  v27[1] = v2;
  v3 = sub_220DBE560();
  v4 = OUTLINED_FUNCTION_0(v3);
  v27[0] = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_18(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  v16 = v27 - v15;
  v17 = sub_220DBF070();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v26 = sub_220DBE800();
  v1(v26);
  (*(v20 + 8))(v25, v17);
  LODWORD(v17) = __swift_getEnumTagSinglePayload(v16, 1, v3);
  sub_220CE1ABC(v16, &qword_27CF951E0, &unk_220DC1D80);
  if (v17 != 1)
  {
    sub_220DBE810();
    sub_220DBE430();
    (*(v27[0] + 8))(v10, v3);
  }

  OUTLINED_FUNCTION_27_2();
}

uint64_t sub_220D54EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  OUTLINED_FUNCTION_18(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = sub_220DBE560();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  sub_220D56F0C(a1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_220CE1ABC(v9, &qword_27CF951E0, &unk_220DC1D80);
    v19 = (a2 + *(type metadata accessor for SunriseSunsetTableViewModelFactory() + 44));
    v20 = *v19;
    v21 = v19[1];
  }

  else
  {
    OUTLINED_FUNCTION_37_1();
    v22(v18, v9, v10);
    v20 = sub_220DBE4C0();
    (*(v13 + 8))(v18, v10);
  }

  return v20;
}

uint64_t sub_220D5508C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = sub_220DBE560();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220D56F0C(a1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_220CE1ABC(v9, &qword_27CF951E0, &unk_220DC1D80);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v15 = sub_220DBE670();
    (*(v11 + 8))(v14, v10);
    if (v15)
    {
      v16 = (a4 + *(type metadata accessor for SunriseSunsetTableViewModelFactory() + 32));
      v17 = *v16;
      v18 = v16[1];

      return v17;
    }
  }

  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  return sub_220DBE240();
}

uint64_t sub_220D552D0(double a1)
{
  sub_220D14AE0();
  v2 = sub_220DC09D0();
  v3 = [v2 stringFromTimeInterval_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_220DC0620();

  return v4;
}

uint64_t SunriseSunsetTableViewModelFactory.makeViewModel(from:timeZone:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, size_t *a4@<X8>)
{
  v6 = v4;
  v201[13] = a3;
  v217 = a4;
  v9 = type metadata accessor for OverviewTableRowViewModel();
  v218 = *(v9 - 8);
  v10 = *(v218 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_25_0();
  v215 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_25_0();
  v213 = v17;
  OUTLINED_FUNCTION_23();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v201 - v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_57();
  v202 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  v24 = OUTLINED_FUNCTION_18(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_25_0();
  v206 = v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_25_0();
  v216 = v30;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25_0();
  v219 = v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_25_0();
  v214 = v35;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_25_0();
  v212 = v37;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_25_0();
  v210 = v39;
  OUTLINED_FUNCTION_23();
  v41 = MEMORY[0x28223BE20](v40);
  v43 = v201 - v42;
  MEMORY[0x28223BE20](v41);
  v44 = OUTLINED_FUNCTION_55_0();
  v45 = OUTLINED_FUNCTION_0(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_25_0();
  v208 = v52;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_25_0();
  v207 = v54;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_25_0();
  v204 = v60;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_25_0();
  v205 = v63;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_25_0();
  v211 = v65;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_25_0();
  v209 = v67;
  OUTLINED_FUNCTION_23();
  v69 = MEMORY[0x28223BE20](v68);
  v71 = v201 - v70;
  MEMORY[0x28223BE20](v69);
  v73 = v201 - v72;
  v222 = a1;
  sub_220DBF040();
  OUTLINED_FUNCTION_5_21(v5);
  v220 = v47;
  v221 = a2;
  if (v124)
  {
    sub_220CE1ABC(v5, &qword_27CF951E0, &unk_220DC1D80);
    v74 = MEMORY[0x277D84F90];
    v78 = v6;
  }

  else
  {
    v201[0] = v21;
    (*(v47 + 32))(v73, v5, v44);
    v75 = v6[3];
    v76 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v75);
    v77 = (v6 + *(type metadata accessor for SunriseSunsetTableViewModelFactory() + 24));
    v78 = v6;
    v79 = v202;
    (*(v76 + 8))(v73, *v77, v77[1], a2, v75, v76);
    v80 = sub_220D563D8(0, 1, 1, MEMORY[0x277D84F90]);
    v74 = v80;
    v81 = *(v80 + 16);
    if (v81 >= *(v80 + 24) >> 1)
    {
      v195 = OUTLINED_FUNCTION_32_1();
      v74 = sub_220D563D8(v195, v196, v197, v74);
    }

    (*(v220 + 8))(v73, v44);
    *(v74 + 16) = v81 + 1;
    OUTLINED_FUNCTION_3_22();
    sub_220CFD40C(v79, v82 + v83 * v81);
    v21 = v201[0];
  }

  sub_220DBF030();
  OUTLINED_FUNCTION_5_21(v43);
  if (v124)
  {
    sub_220CE1ABC(v43, &qword_27CF951E0, &unk_220DC1D80);
    v84 = v220;
    v85 = v214;
  }

  else
  {
    (*(v220 + 32))(v71, v43, v44);
    v86 = v78[3];
    v87 = v78[4];
    __swift_project_boxed_opaque_existential_1(v78, v86);
    v88 = type metadata accessor for SunriseSunsetTableViewModelFactory();
    (*(v87 + 8))(v71, *(v78 + *(v88 + 28)), *(v78 + *(v88 + 28) + 8), v221, v86, v87);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v74 = OUTLINED_FUNCTION_6_13();
    }

    v90 = *(v74 + 16);
    v84 = v220;
    if (v90 >= *(v74 + 24) >> 1)
    {
      v198 = OUTLINED_FUNCTION_32_1();
      v74 = sub_220D563D8(v198, v199, v200, v74);
    }

    v85 = v214;
    OUTLINED_FUNCTION_36_1();
    v91(v71, v44);
    *(v74 + 16) = v90 + 1;
    OUTLINED_FUNCTION_3_22();
    sub_220CFD40C(v21, v92 + v93 * v90);
  }

  v94 = v210;
  v95 = v222;
  sub_220DBF020();
  OUTLINED_FUNCTION_5_21(v94);
  if (v124)
  {
    sub_220CE1ABC(v94, &qword_27CF951E0, &unk_220DC1D80);
    v96 = v219;
    v97 = v212;
  }

  else
  {
    OUTLINED_FUNCTION_37_1();
    v98(v209, v94, v44);
    v99 = v78[3];
    v100 = v78[4];
    v101 = OUTLINED_FUNCTION_16_12(v78);
    OUTLINED_FUNCTION_46_0(*(v101 + 32));
    v102 = OUTLINED_FUNCTION_40_1();
    v103(v102);
    v104 = swift_isUniquelyReferenced_nonNull_native();
    if ((v104 & 1) == 0)
    {
      v74 = OUTLINED_FUNCTION_6_13();
    }

    OUTLINED_FUNCTION_10_13();
    v97 = v212;
    if (v106)
    {
      v74 = OUTLINED_FUNCTION_7_15(v105);
    }

    OUTLINED_FUNCTION_36_1();
    v107(v209, v44);
    *(v74 + 16) = v99;
    OUTLINED_FUNCTION_3_22();
    sub_220CFD40C(v213, v108 + v109 * v95);
    v95 = v222;
    v96 = v219;
  }

  sub_220DBF050();
  OUTLINED_FUNCTION_5_21(v97);
  if (v124)
  {
    sub_220CE1ABC(v97, &qword_27CF951E0, &unk_220DC1D80);
  }

  else
  {
    OUTLINED_FUNCTION_37_1();
    v110(v211, v97, v44);
    v111 = v78[3];
    v112 = v78[4];
    v113 = OUTLINED_FUNCTION_16_12(v78);
    OUTLINED_FUNCTION_46_0(*(v113 + 36));
    v114 = OUTLINED_FUNCTION_40_1();
    v115(v114);
    v116 = swift_isUniquelyReferenced_nonNull_native();
    if ((v116 & 1) == 0)
    {
      v74 = OUTLINED_FUNCTION_6_13();
    }

    OUTLINED_FUNCTION_10_13();
    if (v106)
    {
      v74 = OUTLINED_FUNCTION_7_15(v117);
    }

    OUTLINED_FUNCTION_36_1();
    v118(v211, v44);
    *(v74 + 16) = v111;
    OUTLINED_FUNCTION_3_22();
    sub_220CFD40C(v215, v119 + v120 * v95);
    v96 = v219;
  }

  sub_220DBF030();
  OUTLINED_FUNCTION_5_21(v85);
  if (v124)
  {
    sub_220CE1ABC(v85, &qword_27CF951E0, &unk_220DC1D80);
LABEL_37:
    v126 = v216;
    goto LABEL_38;
  }

  v121 = *(v84 + 32);
  v122 = v205;
  (v121)(v205, v85, v44);
  v123 = v203;
  sub_220DBF020();
  OUTLINED_FUNCTION_5_21(v123);
  if (v124)
  {
    OUTLINED_FUNCTION_36_1();
    v125(v122, v44);
    sub_220CE1ABC(v123, &qword_27CF951E0, &unk_220DC1D80);
    v96 = v219;
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_52_1();
  v121();
  v131 = sub_220DBE430();
  v126 = v216;
  if (v131)
  {
    sub_220DBE450();
    v132 = v122;
    sub_220DBE450();
    v133 = v78[3];
    v134 = v78[4];
    v135 = (v78 + *(OUTLINED_FUNCTION_16_12(v78) + 40));
    v136 = *v135;
    v137 = v135[1];
    v138 = *(v134 + 16);
    v139 = v201[2];
    v140 = OUTLINED_FUNCTION_18_8();
    v141(v140);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v74 = OUTLINED_FUNCTION_6_13();
    }

    v142 = v218;
    OUTLINED_FUNCTION_10_13();
    if (v106)
    {
      v74 = OUTLINED_FUNCTION_7_15(v143);
    }

    v144 = *(v84 + 8);
    v145 = OUTLINED_FUNCTION_30_4(&v226);
    v144(v145);
    (v144)(v205, v44);
    *(v74 + 16) = v133;
    v146 = *(v142 + 80);
    OUTLINED_FUNCTION_13_2();
    v148 = v74 + v147;
    v149 = *(v142 + 72);
LABEL_67:
    v180 = v148 + v149 * v132;
    v181 = v139;
LABEL_75:
    result = sub_220CFD40C(v181, v180);
    goto LABEL_76;
  }

  v182 = OUTLINED_FUNCTION_45_0();
  v123(v182);
  (v123)(v122, v44);
  v96 = v219;
LABEL_38:
  sub_220DBF030();
  OUTLINED_FUNCTION_5_21(v96);
  if (v124)
  {
    sub_220CE1ABC(v96, &qword_27CF951E0, &unk_220DC1D80);
  }

  else
  {
    v127 = *(v84 + 32);
    v128 = v204;
    v127(v204, v96, v44);
    sub_220DBF020();
    OUTLINED_FUNCTION_5_21(v126);
    if (v129)
    {
      OUTLINED_FUNCTION_36_1();
      v130(v128, v44);
      sub_220CE1ABC(v126, &qword_27CF951E0, &unk_220DC1D80);
    }

    else
    {
      v127(v201[6], v126, v44);
      sub_220CD9B24();
      v150 = sub_220DC0580();
      if ((v150 & 1) == 0)
      {
        sub_220DBE3E0();
        OUTLINED_FUNCTION_50_0(&v230);
        sub_220DBE3E0();
        OUTLINED_FUNCTION_41_1();
        sub_220DBE390();
        v158 = *(v84 + 8);
        v183 = v126;
        v152 = v78;
        v158(v183, v44);
        sub_220DBE450();
        sub_220DBE450();
        sub_220DBE450();
        v159 = v128;
        sub_220DBE450();
        v160 = v78[3];
        v184 = v78[4];
        v185 = OUTLINED_FUNCTION_16_12(v78);
        OUTLINED_FUNCTION_12_14(v185);
        OUTLINED_FUNCTION_50_0(&v221);
        v186 = OUTLINED_FUNCTION_18_8();
        v187(v186);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = OUTLINED_FUNCTION_6_13();
        }

        OUTLINED_FUNCTION_10_13();
        v189 = v204;
        if (v106)
        {
          v74 = OUTLINED_FUNCTION_7_15(v188);
        }

        v190 = OUTLINED_FUNCTION_30_4(&v224);
        (v158)(v190);
        v191 = OUTLINED_FUNCTION_30_4(&v223);
        (v158)(v191);
        v192 = OUTLINED_FUNCTION_30_4(&v225);
        (v158)(v192);
        v167 = v189;
        goto LABEL_74;
      }

      v151 = OUTLINED_FUNCTION_45_0();
      v44(v151);
      (v44)(v128, v44);
    }
  }

  v152 = v78;
  v153 = v206;
  sub_220DBF030();
  OUTLINED_FUNCTION_5_21(v153);
  if (!v124)
  {
    OUTLINED_FUNCTION_37_1();
    v156 = v207;
    v157(v207, v153, v44);
    OUTLINED_FUNCTION_47_0();
    sub_220DBE3E0();
    OUTLINED_FUNCTION_41_1();
    sub_220DBE390();
    v158 = *(v84 + 8);
    v158(v78, v44);
    sub_220DBE450();
    v159 = v156;
    sub_220DBE450();
    v160 = v78[3];
    v161 = v78[4];
    v162 = OUTLINED_FUNCTION_16_12(v78);
    OUTLINED_FUNCTION_12_14(v162);
    OUTLINED_FUNCTION_50_0(&v229);
    v163 = OUTLINED_FUNCTION_18_8();
    v164(v163);
    v165 = swift_isUniquelyReferenced_nonNull_native();
    if ((v165 & 1) == 0)
    {
      v74 = OUTLINED_FUNCTION_6_13();
    }

    OUTLINED_FUNCTION_10_13();
    if (v106)
    {
      v74 = OUTLINED_FUNCTION_7_15(v166);
    }

    v158(v208, v44);
    v167 = v207;
LABEL_74:
    v158(v167, v44);
    *(v74 + 16) = v160;
    OUTLINED_FUNCTION_3_22();
    v180 = v193 + v194 * v159;
    v181 = v152;
    goto LABEL_75;
  }

  sub_220CE1ABC(v153, &qword_27CF951E0, &unk_220DC1D80);
  v154 = v201[8];
  sub_220DBF020();
  OUTLINED_FUNCTION_5_21(v154);
  if (!v124)
  {
    OUTLINED_FUNCTION_37_1();
    v168(v201[9], v154, v44);
    v169 = v201[10];
    sub_220DBE3E0();
    sub_220DBE450();
    v132 = v169;
    sub_220DBE450();
    v170 = v78[3];
    v171 = v78[4];
    v172 = OUTLINED_FUNCTION_16_12(v78);
    OUTLINED_FUNCTION_12_14(v172);
    v139 = v201[3];
    v173 = OUTLINED_FUNCTION_18_8();
    v174(v173);
    v175 = swift_isUniquelyReferenced_nonNull_native();
    if ((v175 & 1) == 0)
    {
      v74 = OUTLINED_FUNCTION_6_13();
    }

    OUTLINED_FUNCTION_10_13();
    if (v106)
    {
      v74 = OUTLINED_FUNCTION_7_15(v176);
    }

    v177 = *(v84 + 8);
    v178 = OUTLINED_FUNCTION_30_4(&v228);
    v177(v178);
    v179 = OUTLINED_FUNCTION_30_4(&v227);
    v177(v179);
    *(v74 + 16) = v170;
    OUTLINED_FUNCTION_3_22();
    goto LABEL_67;
  }

  result = sub_220CE1ABC(v154, &qword_27CF951E0, &unk_220DC1D80);
LABEL_76:
  *v217 = v74;
  return result;
}

void sub_220D562FC(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_9_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_48_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 16);
  v10 = sub_220D56D08(v9, v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0);
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 80);
  OUTLINED_FUNCTION_13_2();
  if (a1)
  {
    sub_220CFB550(a4 + v14, v9, v10 + v14);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_220D563D8(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_220D56E10(v9, a2, &qword_27CF95BD8, &qword_220DC4FB8, type metadata accessor for OverviewTableRowViewModel);
  v11 = *(type metadata accessor for OverviewTableRowViewModel() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_220CFB64C(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_220D564E8(uint64_t a1)
{
  v2 = type metadata accessor for OverviewTableRowViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_220D56594()
{
  result = sub_220D56634();
  if (v1 <= 0x3F)
  {
    result = sub_220DC04D0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_220D56634()
{
  result = qword_27CF95BB0;
  if (!qword_27CF95BB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CF95BB0);
  }

  return result;
}

void sub_220D56690()
{
  OUTLINED_FUNCTION_26_4();
  if (v4)
  {
    OUTLINED_FUNCTION_25_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_49_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_19_8();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_58_0(v2, v5, &qword_27CF95BD0, &qword_220DC4FB0);
  OUTLINED_FUNCTION_35_1();
  v9 = sub_220DBEB60();
  OUTLINED_FUNCTION_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_13_2();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_21_6(v12);
    sub_220CFB67C(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_17_9();
  }
}

void sub_220D56758(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_2();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952D8, &qword_220DC21A8);
      v11 = OUTLINED_FUNCTION_57_0();
      _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_43_0();
      *(v11 + 16) = v9;
      *(v11 + 24) = v12;
      if (a1)
      {
LABEL_12:
        sub_220CFB4F8((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy((v11 + 32), (a4 + 32), 8 * v9);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_48_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_220D56830(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_2();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952A8, &unk_220DC2E90);
      v11 = OUTLINED_FUNCTION_57_0();
      _swift_stdlib_malloc_size(v11);
      OUTLINED_FUNCTION_43_0();
      *(v11 + 16) = v9;
      *(v11 + 24) = v12;
      if (a1)
      {
LABEL_12:
        sub_220CFB518((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_48_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_220D56910()
{
  OUTLINED_FUNCTION_26_4();
  if (v4)
  {
    OUTLINED_FUNCTION_25_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_49_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_19_8();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_58_0(v2, v5, &qword_27CF952A0, &unk_220DC4F90);
  v9 = OUTLINED_FUNCTION_35_1();
  v10 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel(v9);
  OUTLINED_FUNCTION_5(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_13_2();
  if (v1)
  {
    v14 = OUTLINED_FUNCTION_21_6(v13);
    sub_220CFB694(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_17_9();
  }
}

void sub_220D569D8()
{
  OUTLINED_FUNCTION_26_4();
  if (v4)
  {
    OUTLINED_FUNCTION_25_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_49_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_19_8();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_58_0(v2, v5, &qword_27CF95BC8, &unk_220DC4FA0);
  v9 = OUTLINED_FUNCTION_35_1();
  v10 = type metadata accessor for DetailChartDataElement(v9);
  OUTLINED_FUNCTION_5(v10);
  v12 = *(v11 + 80);
  OUTLINED_FUNCTION_13_2();
  if (v1)
  {
    v14 = OUTLINED_FUNCTION_21_6(v13);
    sub_220CFB6AC(v14, v15, v16);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_17_9();
  }
}

void sub_220D56AA0()
{
  OUTLINED_FUNCTION_26_4();
  if (v4)
  {
    OUTLINED_FUNCTION_25_6();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_49_0();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_19_8();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  OUTLINED_FUNCTION_58_0(v2, v5, &qword_27CF95278, &qword_220DC2168);
  OUTLINED_FUNCTION_35_1();
  v9 = sub_220DBF340();
  OUTLINED_FUNCTION_5(v9);
  v11 = *(v10 + 80);
  OUTLINED_FUNCTION_13_2();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_21_6(v12);
    sub_220CFB538(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_17_9();
  }
}

void sub_220D56B90(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_2();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = OUTLINED_FUNCTION_57_0();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_43_0();
      v15[2] = v13;
      v15[3] = v16;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_48_0();
  if (!v11)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_220D56C98(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952E8, &qword_220DC4FD0);
  v4 = OUTLINED_FUNCTION_57_0();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_43_0();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

size_t sub_220D56D08(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952D0, &qword_220DC21A0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF952C0, &unk_220DC4FC0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_220D56E10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220D56F0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF951E0, &unk_220DC1D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D56F7C()
{
  v1 = *(v0 + 16);
  sub_220D54CF0();
  return v2 & 1;
}

void sub_220D56FB0(uint64_t *a1)
{
  v2 = sub_220DBE830();
  OUTLINED_FUNCTION_18(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_220D81A34(v5);
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v7;
  sub_220D57054(v8);
  *a1 = v5;
}

void sub_220D57054(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_220DC0C60();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_220DBE830();
        v6 = sub_220DC0760();
        *(v6 + 16) = v5;
      }

      v7 = sub_220DBE830();
      OUTLINED_FUNCTION_18(v7);
      v9 = *(v8 + 80);
      OUTLINED_FUNCTION_13_2();
      sub_220D574B8(&v15, v16, a1, v4, v11, v12, v13, v14, v6 + v10, v5);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_220D5717C();
  }
}

void sub_220D5717C()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v53 = sub_220DBE560();
  v8 = OUTLINED_FUNCTION_0(v53);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9();
  v52 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_57();
  v51 = v15;
  OUTLINED_FUNCTION_6_1();
  v16 = sub_220DBE830();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9();
  v45 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_25_0();
  v50 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_57();
  v49 = v25;
  v37 = v5;
  if (v3 != v5)
  {
    v27 = *(v24 + 16);
    v26 = v24 + 16;
    v28 = *(v26 + 56);
    v47 = (v10 + 8);
    v48 = v27;
    v46 = (v26 - 8);
    v29 = *v1 + v28 * (v3 - 1);
    v42 = -v28;
    v43 = (v26 + 16);
    v30 = v7 - v3;
    v44 = *v1;
    v36 = v28;
    v31 = *v1 + v28 * v3;
    while (2)
    {
      v40 = v29;
      v41 = v3;
      v38 = v31;
      v39 = v30;
      v54 = v30;
      do
      {
        v48(v49, v31, v16);
        v48(v50, v29, v16);
        sub_220DBE810();
        sub_220DBE810();
        v55 = sub_220DBE440();
        v32 = *v47;
        (*v47)(v52, v53);
        v32(v51, v53);
        v33 = *v46;
        (*v46)(v50, v16);
        v33(v49, v16);
        if ((v55 & 1) == 0)
        {
          break;
        }

        if (!v44)
        {
          __break(1u);
          return;
        }

        v34 = *v43;
        (*v43)(v45, v31, v16);
        swift_arrayInitWithTakeFrontToBack();
        v34(v29, v45, v16);
        v29 += v42;
        v31 += v42;
      }

      while (!__CFADD__(v54++, 1));
      ++v3;
      v29 = v40 + v36;
      v30 = v39 - 1;
      v31 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_27_2();
}

void sub_220D574B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_26_2();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v138 = v16;
  v167 = sub_220DBE560();
  v17 = OUTLINED_FUNCTION_0(v167);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9();
  v166 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_57();
  v165 = v24;
  OUTLINED_FUNCTION_6_1();
  v25 = sub_220DBE830();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_25_0();
  v156 = v32;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_25_0();
  v164 = v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_57();
  v168 = v36;
  v147 = v15;
  v37 = v15[1];
  v142 = v28;
  if (v37 < 1)
  {
    v39 = MEMORY[0x277D84F90];
LABEL_101:
    OUTLINED_FUNCTION_51_0();
    if (!v123)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v128 = (v39 + 16);
      v129 = *(v39 + 16);
      while (v129 >= 2)
      {
        if (!*v147)
        {
          goto LABEL_139;
        }

        v130 = v39;
        v131 = (v39 + 16 * v129);
        v132 = *v131;
        v133 = &v128[2 * v129];
        v39 = *(v133 + 1);
        sub_220D57FF4(*v147 + *(v142 + 72) * *v131, *v147 + *(v142 + 72) * *v133, *v147 + *(v142 + 72) * v39, a10, v124, v125, v126, v127, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
        if (v11)
        {
          break;
        }

        if (v39 < v132)
        {
          goto LABEL_127;
        }

        if (v129 - 2 >= *v128)
        {
          goto LABEL_128;
        }

        *v131 = v132;
        v131[1] = v39;
        v134 = *v128 - v129;
        if (*v128 < v129)
        {
          goto LABEL_129;
        }

        v129 = *v128 - 1;
        sub_220D81848(v133 + 16, v134, v133);
        *v128 = v129;
        v39 = v130;
      }

LABEL_111:

      OUTLINED_FUNCTION_27_2();
      return;
    }

LABEL_136:
    v39 = sub_220D81650(v39);
    goto LABEL_103;
  }

  v136 = v13;
  v38 = 0;
  v162 = (v19 + 8);
  v160 = (v28 + 32);
  v161 = (v28 + 8);
  v39 = MEMORY[0x277D84F90];
  v163 = v25;
  while (1)
  {
    v40 = v38;
    v41 = v38 + 1;
    if (v38 + 1 < v37)
    {
      v137 = v39;
      v42 = v38;
      v139 = v38;
      v148 = v11;
      v149 = v38 + 1;
      v43 = *v147;
      a10 = *v147;
      v152 = v37;
      v154 = *(v28 + 9);
      v44 = *v147 + v154 * v41;
      v45 = *(v28 + 2);
      OUTLINED_FUNCTION_38_1();
      v45();
      v145 = v45;
      (v45)(v164, v43 + v154 * v42, v25);
      v11 = v165;
      v39 = v168;
      sub_220DBE810();
      v28 = v166;
      sub_220DBE810();
      LODWORD(v146) = sub_220DBE440();
      v46 = *v162;
      (*v162)(v166, v167);
      v144 = v46;
      (v46)(v165, v167);
      v47 = *(v142 + 8);
      v47(v164, v25);
      v143 = v47;
      v47(v168, v25);
      v48 = v152;
      v49 = v139 + 2;
      v40 = a10 + v154 * (v139 + 2);
      while (++v149 < v48)
      {
        v11 = v168;
        a10 = v49;
        (v145)(v168, v40, v163);
        v39 = v164;
        OUTLINED_FUNCTION_38_1();
        v145();
        sub_220DBE810();
        sub_220DBE810();
        v157 = sub_220DBE440() & 1;
        v28 = v167;
        (v144)(v166, v167);
        (v144)(v165, v167);
        v47(v164, v163);
        v47(v168, v163);
        v48 = v152;
        v40 += v154;
        v44 += v154;
        v49 = a10 + 1;
        if ((v146 & 1) != v157)
        {
          goto LABEL_9;
        }
      }

      v149 = v48;
LABEL_9:
      if (v146)
      {
        v41 = v149;
        OUTLINED_FUNCTION_47_0();
        v25 = v163;
        if (v149 < v40)
        {
          goto LABEL_133;
        }

        if (v40 >= v149)
        {
          OUTLINED_FUNCTION_11_10();
          goto LABEL_32;
        }

        if (v50 >= v51)
        {
          v52 = v51;
        }

        else
        {
          v52 = v50;
        }

        v53 = v154 * (v52 - 1);
        v54 = v154 * v52;
        v55 = v40;
        v40 *= v154;
        v11 = v148;
        v28 = v142;
        do
        {
          if (v55 != --v41)
          {
            v56 = v11;
            v57 = *v147;
            if (!*v147)
            {
              goto LABEL_140;
            }

            v58 = *v160;
            OUTLINED_FUNCTION_38_1();
            a10 = v59;
            v59();
            v60 = v40 < v53 || v57 + v40 >= (v57 + v54);
            if (v60)
            {
              OUTLINED_FUNCTION_53_0();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v40 != v53)
            {
              OUTLINED_FUNCTION_53_0();
              swift_arrayInitWithTakeBackToFront();
            }

            (a10)(v57 + v53, v141, v163);
            v11 = v56;
            v28 = v142;
          }

          ++v55;
          v53 -= v154;
          v54 -= v154;
          v40 += v154;
        }

        while (v55 < v41);
        v39 = v137;
      }

      else
      {
        OUTLINED_FUNCTION_11_10();
        v25 = v163;
      }

      v41 = v149;
      OUTLINED_FUNCTION_47_0();
    }

LABEL_32:
    v61 = v147[1];
    if (v41 < v61)
    {
      if (__OFSUB__(v41, v40))
      {
        goto LABEL_132;
      }

      if (v41 - v40 < v136)
      {
        break;
      }
    }

LABEL_48:
    if (v41 < v40)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v118 = *(v39 + 16);
      OUTLINED_FUNCTION_29_2();
      sub_220D56B90(0, v119 + 1, 1, v39, &qword_27CF95BC0, &unk_220DC5B20, v120);
      v39 = v121;
    }

    v70 = *(v39 + 16);
    v69 = *(v39 + 24);
    v71 = v70 + 1;
    if (v70 >= v69 >> 1)
    {
      sub_220D56B90(v69 > 1, v70 + 1, 1, v39, &qword_27CF95BC0, &unk_220DC5B20, sub_220CFB518);
      v39 = v122;
    }

    *(v39 + 16) = v71;
    v72 = (v39 + 32 + 16 * v70);
    *v72 = v40;
    v72[1] = v41;
    OUTLINED_FUNCTION_51_0();
    if (!v78)
    {
      goto LABEL_141;
    }

    v151 = v41;
    if (v70)
    {
      v159 = v77;
      while (1)
      {
        v79 = v71 - 1;
        v80 = (v77 + 16 * (v71 - 1));
        v81 = (v39 + 16 * v71);
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v82 = *(v39 + 32);
          v83 = *(v39 + 40);
          v92 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          v85 = v92;
LABEL_69:
          if (v85)
          {
            goto LABEL_118;
          }

          v97 = *v81;
          v96 = v81[1];
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_121;
          }

          v101 = v80[1];
          v102 = v101 - *v80;
          if (__OFSUB__(v101, *v80))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v99, v102))
          {
            goto LABEL_126;
          }

          if (v99 + v102 >= v84)
          {
            if (v84 < v102)
            {
              v79 = v71 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v71 < 2)
        {
          goto LABEL_120;
        }

        v104 = *v81;
        v103 = v81[1];
        v92 = __OFSUB__(v103, v104);
        v99 = v103 - v104;
        v100 = v92;
LABEL_84:
        if (v100)
        {
          goto LABEL_123;
        }

        v106 = *v80;
        v105 = v80[1];
        v92 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v92)
        {
          goto LABEL_125;
        }

        if (v107 < v99)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v79 - 1 >= v71)
        {
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v147)
        {
          goto LABEL_138;
        }

        v111 = (v77 + 16 * (v79 - 1));
        v112 = *v111;
        v113 = v79;
        v114 = v77 + 16 * v79;
        v115 = *(v114 + 8);
        sub_220D57FF4(*v147 + *(v28 + 9) * *v111, *v147 + *(v28 + 9) * *v114, *v147 + *(v28 + 9) * v115, a10, v73, v74, v75, v76, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
        if (v11)
        {
          goto LABEL_111;
        }

        if (v115 < v112)
        {
          goto LABEL_113;
        }

        v11 = v28;
        v116 = v39;
        v39 = *(v39 + 16);
        if (v113 > v39)
        {
          goto LABEL_114;
        }

        *v111 = v112;
        v111[1] = v115;
        if (v113 >= v39)
        {
          goto LABEL_115;
        }

        v71 = v39 - 1;
        sub_220D81848((v114 + 16), v39 - 1 - v113, v114);
        *(v116 + 16) = v39 - 1;
        v117 = v39 > 2;
        v39 = v116;
        v28 = v11;
        v11 = 0;
        v77 = v159;
        if (!v117)
        {
          goto LABEL_98;
        }
      }

      v86 = v77 + 16 * v71;
      v87 = *(v86 - 64);
      v88 = *(v86 - 56);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_116;
      }

      v91 = *(v86 - 48);
      v90 = *(v86 - 40);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_117;
      }

      v93 = v81[1];
      v94 = v93 - *v81;
      if (__OFSUB__(v93, *v81))
      {
        goto LABEL_119;
      }

      v92 = __OFADD__(v84, v94);
      v95 = v84 + v94;
      if (v92)
      {
        goto LABEL_122;
      }

      if (v95 >= v89)
      {
        v109 = *v80;
        v108 = v80[1];
        v92 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v92)
        {
          goto LABEL_130;
        }

        if (v84 < v110)
        {
          v79 = v71 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v37 = v147[1];
    v38 = v151;
    if (v151 >= v37)
    {
      goto LABEL_101;
    }
  }

  v62 = v40 + v136;
  if (__OFADD__(v40, v136))
  {
    goto LABEL_134;
  }

  if (v62 >= v61)
  {
    v62 = v147[1];
  }

  if (v62 < v40)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v41 == v62)
  {
    goto LABEL_48;
  }

  v137 = v39;
  v63 = *(v28 + 9);
  v158 = *(v28 + 2);
  v64 = *v147 + v63 * (v41 - 1);
  v153 = -v63;
  v139 = v40;
  v65 = (v40 - v41);
  v155 = *v147;
  v140 = v63;
  v66 = (*v147 + v41 * v63);
  v143 = v62;
LABEL_41:
  v150 = v41;
  v144 = v66;
  v145 = v65;
  v146 = v64;
  v40 = v64;
  while (1)
  {
    v11 = v168;
    OUTLINED_FUNCTION_38_1();
    v158();
    v39 = v164;
    (v158)(v164, v40, v25);
    sub_220DBE810();
    sub_220DBE810();
    LODWORD(a10) = sub_220DBE440();
    v67 = *v162;
    (*v162)(v166, v167);
    v25 = v163;
    v67(v165, v167);
    v28 = *v161;
    (*v161)(v164, v163);
    (v28)(v168, v163);
    if ((a10 & 1) == 0)
    {
LABEL_46:
      ++v41;
      v64 = v146 + v140;
      v65 = (v145 - 1);
      v66 = &v144[v140];
      if (v150 + 1 == v143)
      {
        v41 = v143;
        OUTLINED_FUNCTION_11_10();
        OUTLINED_FUNCTION_47_0();
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v155)
    {
      break;
    }

    v68 = *v160;
    v28 = v156;
    OUTLINED_FUNCTION_38_1();
    v68();
    swift_arrayInitWithTakeFrontToBack();
    (v68)(v40, v156, v163);
    v40 += v153;
    v66 += v153;
    v60 = __CFADD__(v65, 1);
    v65 = (v65 + 1);
    if (v60)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

void sub_220D57FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26_2();
  a19 = v22;
  a20 = v23;
  v110 = v24;
  v26 = v25;
  v28 = v27;
  OUTLINED_FUNCTION_35_1();
  v105 = sub_220DBE560();
  v29 = OUTLINED_FUNCTION_0(v105);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9();
  v104 = v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_57();
  v103 = v36;
  OUTLINED_FUNCTION_6_1();
  v109 = sub_220DBE830();
  v37 = *(*(v109 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v109);
  v102 = v93 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v107 = v93 - v41;
  v43 = *(v42 + 72);
  if (!v43)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v44 = v28 - v21 == 0x8000000000000000 && v43 == -1;
  if (v44)
  {
    goto LABEL_60;
  }

  v45 = v26 - v28;
  if (v26 - v28 == 0x8000000000000000 && v43 == -1)
  {
    goto LABEL_61;
  }

  v93[1] = v20;
  v47 = (v28 - v21) / v43;
  a10 = v21;
  v112 = v110;
  v100 = (v31 + 8);
  v101 = (v40 + 16);
  v99 = (v40 + 8);
  v48 = v45 / v43;
  if (v47 >= v45 / v43)
  {
    v68 = v110;
    sub_220CFB634(v28, v45 / v43, v110);
    v69 = v68 + v48 * v43;
    v70 = -v43;
    v71 = v69;
    v108 = v21;
    v95 = v70;
LABEL_36:
    v72 = v28 + v70;
    v73 = v26;
    v93[0] = v71;
    v74 = v71;
    v96 = v28 + v70;
    v97 = v28;
    while (1)
    {
      if (v69 <= v110)
      {
        a10 = v28;
        v111 = v74;
        goto LABEL_58;
      }

      if (v28 <= v21)
      {
        break;
      }

      v94 = v74;
      v106 = v73 + v70;
      v75 = v69 + v70;
      v76 = v69;
      v77 = *v101;
      v78 = v72;
      v79 = v109;
      v80 = v73;
      (*v101)(v107, v69 + v70, v109);
      v81 = v102;
      v77(v102, v78, v79);
      v82 = v103;
      sub_220DBE810();
      v83 = v104;
      sub_220DBE810();
      LODWORD(v98) = sub_220DBE440();
      v84 = *v100;
      v85 = v83;
      v86 = v105;
      (*v100)(v85, v105);
      v84(v82, v86);
      v87 = *v99;
      (*v99)(v81, v79);
      v87(v107, v79);
      if (v98)
      {
        v69 = v76;
        v26 = v106;
        if (v80 < v97 || v106 >= v97)
        {
          v28 = v96;
          swift_arrayInitWithTakeFrontToBack();
          v71 = v94;
          v70 = v95;
          v21 = v108;
        }

        else
        {
          v91 = v94;
          v70 = v95;
          v71 = v94;
          v44 = v80 == v97;
          v92 = v96;
          v28 = v96;
          v21 = v108;
          if (!v44)
          {
            swift_arrayInitWithTakeBackToFront();
            v28 = v92;
            v71 = v91;
          }
        }

        goto LABEL_36;
      }

      v88 = v106;
      if (v80 < v76 || v106 >= v76)
      {
        OUTLINED_FUNCTION_23_9();
        swift_arrayInitWithTakeFrontToBack();
        v73 = v88;
        v69 = v75;
        v74 = v75;
        v72 = v96;
        v28 = v97;
        v21 = v108;
        v70 = v95;
      }

      else
      {
        v74 = v75;
        v44 = v76 == v80;
        v73 = v106;
        v69 = v75;
        v72 = v96;
        v28 = v97;
        v21 = v108;
        v70 = v95;
        if (!v44)
        {
          OUTLINED_FUNCTION_23_9();
          swift_arrayInitWithTakeBackToFront();
          v73 = v88;
          v69 = v75;
          v74 = v75;
        }
      }
    }

    a10 = v28;
    v111 = v93[0];
  }

  else
  {
    v49 = v110;
    sub_220CFB634(v21, (v28 - v21) / v43, v110);
    v97 = v43;
    v98 = v49 + v47 * v43;
    v111 = v98;
    v106 = v26;
    while (v110 < v98 && v28 < v26)
    {
      v108 = v21;
      v51 = *v101;
      v52 = v107;
      v53 = v109;
      (*v101)(v107, v28, v109);
      v54 = v102;
      v51(v102, v110, v53);
      v55 = v103;
      sub_220DBE810();
      v56 = v104;
      sub_220DBE810();
      v57 = sub_220DBE440();
      v58 = v28;
      v59 = *v100;
      v60 = v56;
      v61 = v105;
      (*v100)(v60, v105);
      v59(v55, v61);
      v62 = *v99;
      (*v99)(v54, v53);
      v62(v52, v53);
      if (v57)
      {
        v63 = v97;
        v28 = v58 + v97;
        v64 = v108;
        if (v108 < v58 || v108 >= v28)
        {
          OUTLINED_FUNCTION_23_9();
          swift_arrayInitWithTakeFrontToBack();
          v26 = v106;
        }

        else
        {
          v26 = v106;
          if (v108 != v58)
          {
            OUTLINED_FUNCTION_23_9();
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v63 = v97;
        v66 = v110 + v97;
        v64 = v108;
        if (v108 < v110 || v108 >= v66)
        {
          swift_arrayInitWithTakeFrontToBack();
          v26 = v106;
          v28 = v58;
        }

        else
        {
          v26 = v106;
          v28 = v58;
          if (v108 != v110)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v112 = v66;
        v110 = v66;
      }

      v21 = v64 + v63;
      a10 = v21;
    }
  }

LABEL_58:
  sub_220D81738(&a10, &v112, &v111);
  OUTLINED_FUNCTION_27_2();
}

unint64_t sub_220D58608(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = *(sub_220DBE830() - 8);
    v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_220D586B0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_220D586FC()
{
  result = qword_280FA7740;
  if (!qword_280FA7740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95798, &unk_220DC3040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA7740);
  }

  return result;
}

uint64_t sub_220D58760()
{
  v1 = *(v0 + 16);
  sub_220D54CF0();
  return v2 & 1;
}

uint64_t OUTLINED_FUNCTION_40_1()
{
  result = v0;
  v3 = *(v1 - 120);
  return result;
}

void OUTLINED_FUNCTION_46_0(uint64_t a1@<X8>)
{
  v3 = (v2 + a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v1 + 8);
}

uint64_t OUTLINED_FUNCTION_55_0()
{

  return sub_220DBE560();
}

uint64_t OUTLINED_FUNCTION_57_0()
{

  return swift_allocObject();
}

size_t OUTLINED_FUNCTION_58_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_220D56E10(v5, a2, a3, a4, v4);
}

uint64_t sub_220D588C0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for PrecipitationWithinOneDaySentence();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  PrecipitationEvent = type metadata accessor for NextPrecipitationEvent();
  v11 = *(*(PrecipitationEvent - 8) + 64);
  v12 = MEMORY[0x28223BE20](PrecipitationEvent - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = v3[3];
  v18 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v17);
  (*(v18 + 8))(a2, v17, v18);
  sub_220D5AA20(v16, v14, type metadata accessor for NextPrecipitationEvent);
  sub_220D58A60(v14, a3, v9);
  sub_220D58E40();
  v20 = v19;
  sub_220CE1E88(v9, type metadata accessor for PrecipitationWithinOneDaySentence);
  sub_220CE1E88(v16, type metadata accessor for NextPrecipitationEvent);
  return v20;
}

void sub_220D58A60(unsigned __int8 *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v7 = OUTLINED_FUNCTION_6(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v51[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v13 = OUTLINED_FUNCTION_6(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v18 = v16 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v51[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v51[-v23];
  type metadata accessor for NextPrecipitationEvent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A0, &unk_220DC3050);
      v27 = v26[12];
      v28 = v26[16];
      v29 = v26[20];
      type metadata accessor for PrecipitationWithinOneDaySentence();
      OUTLINED_FUNCTION_8_13();
      swift_storeEnumTagMultiPayload();
      sub_220CE1E88(&a1[v29], type metadata accessor for PrecipitationTotalStringAmount);
      sub_220CE1E88(&a1[v28], type metadata accessor for PrecipitationTotalStringAmount);
      v30 = sub_220DBE560();
      OUTLINED_FUNCTION_6(v30);
      v32 = *(v31 + 8);
      OUTLINED_FUNCTION_24();

      __asm { BRAA            X2, X16 }
    }

    *a3 = a2 & 1;
    type metadata accessor for PrecipitationWithinOneDaySentence();
    OUTLINED_FUNCTION_8_13();
    OUTLINED_FUNCTION_24();

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v53 = a3;
    v52 = a2;
    v35 = *a1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF957A8, &qword_220DC4FE0);
    v37 = *(v36 + 64);
    sub_220CE1D20(&a1[*(v36 + 48)], v24, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220CE1D20(&a1[v37], v22, type metadata accessor for PrecipitationTotalStringAmount);
    v54 = v35;
    if (v35 == 2)
    {
      v38 = v24;
    }

    else
    {
      v38 = v22;
    }

    if (v35 == 2)
    {
      v39 = v22;
    }

    else
    {
      v39 = v24;
    }

    sub_220CE1E88(v38, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220CE1D20(v39, v18, type metadata accessor for PrecipitationTotalStringAmount);
    sub_220D5AA20(v18 + *(v12 + 20), v11, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
      OUTLINED_FUNCTION_6(v40);
      (*(v41 + 8))(v11);
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0) + 48);
      OUTLINED_FUNCTION_1_26();
      v43 = v53;
      sub_220CE1D20(v18, v53, v44);
      *(v43 + v42) = v54;
    }

    else
    {
      sub_220CE1E88(v11, type metadata accessor for PrecipitationTotalStringAmount.Format);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95BE8, &unk_220DC5080);
      v47 = *(v46 + 48);
      v48 = *(v46 + 64);
      OUTLINED_FUNCTION_1_26();
      v49 = v53;
      sub_220CE1D20(v18, v53, v50);
      *(v49 + v47) = v54;
      *(v49 + v48) = v52 & 1;
    }

    type metadata accessor for PrecipitationWithinOneDaySentence();
    OUTLINED_FUNCTION_8_13();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_24();
  }
}

void sub_220D58E40()
{
  v49 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v2 = OUTLINED_FUNCTION_6(v49);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_16();
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4();
  v16 = (v14 - v15);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v47 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v47 - v21;
  v23 = type metadata accessor for PrecipitationWithinOneDaySentence();
  v24 = OUTLINED_FUNCTION_6(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_23();
  v50 = v0;
  sub_220D5AA20(v0, v28, v29);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v43 = v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0) + 48)];
      OUTLINED_FUNCTION_1_26();
      sub_220CE1D20(v28, v1, v44);
      if (v43 == 2)
      {
        sub_220D597B0(v1);
      }

      else
      {
        sub_220D59CCC(v1);
      }

      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_0_17();
      v46 = v1;
      goto LABEL_14;
    case 2u:
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95BE8, &unk_220DC5080);
      v38 = v28[*(v37 + 48)];
      v39 = v28[*(v37 + 64)];
      OUTLINED_FUNCTION_1_26();
      sub_220CE1D20(v28, v7, v40);
      if (v38 == 2)
      {
        sub_220D5A1E8(v7, v39);
      }

      else
      {
        sub_220D5935C(v7, v39);
      }

      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_0_17();
      v46 = v7;
LABEL_14:
      sub_220CE1E88(v46, v45);
      break;
    case 3u:
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      sub_220DBE240();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_220DC17A0;
      v42 = MEMORY[0x277D83C10];
      *(v41 + 56) = MEMORY[0x277D83B88];
      *(v41 + 64) = v42;
      *(v41 + 32) = 24;
      sub_220DC05F0();
      OUTLINED_FUNCTION_9_15();

      break;
    default:
      v30 = *v28;
      v31 = [objc_opt_self() millimeters];
      sub_220CDB190();
      sub_220DBE040();
      v32 = v48;
      v33 = *(v48 + 16);
      v33(v20, v22, v12);
      v33(v16, v20, v12);
      v34 = &v11[*(v49 + 20)];
      sub_220CDB1D4();
      v35 = *(v32 + 8);
      v35(v20, v12);
      *v11 = 0;
      sub_220D5935C(v11, v30);
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_0_17();
      sub_220CE1E88(v11, v36);
      v35(v22, v12);
      break;
  }

  OUTLINED_FUNCTION_24();
}

uint64_t type metadata accessor for PrecipitationWithinOneDaySentence()
{
  result = qword_27CF95BF0;
  if (!qword_27CF95BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D5935C(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - v7;
  v9 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PrecipitationTotalStringAmount(0);
  sub_220D5AA20(a1 + *(v13 + 20), v12, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
    v31 = *(v5 + 8);
    v31(&v12[*(v30 + 48)], v4);
    v31(v12, v4);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_220DC17C0;
    v33 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v33, a2 & 1, 1, v34, v35, v36, v37, v38, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, vars0, vars8);
    v40 = v39;
    v42 = v41;

    *(v32 + 56) = MEMORY[0x277D837D0];
    v43 = sub_220CEFDB0();
    v44 = MEMORY[0x277D83B88];
    v45 = MEMORY[0x277D83C10];
    *(v32 + 32) = v40;
    *(v32 + 40) = v42;
    *(v32 + 96) = v44;
    *(v32 + 104) = v45;
    *(v32 + 64) = v43;
    *(v32 + 72) = 24;
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_220DBE050();
    v15 = Double.pluralRuleInteger.getter(v14);
    (*(v5 + 8))(v8, v4);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D83B88];
    *(v16 + 16) = xmmword_220DC1CC0;
    v18 = MEMORY[0x277D83C10];
    *(v16 + 56) = v17;
    *(v16 + 64) = v18;
    *(v16 + 32) = v15;
    v19 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v19, a2 & 1, 1, v20, v21, v22, v23, v24, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, vars0, vars8);
    v26 = v25;
    v28 = v27;

    *(v16 + 96) = MEMORY[0x277D837D0];
    v29 = sub_220CEFDB0();
    *(v16 + 72) = v26;
    *(v16 + 80) = v28;
    *(v16 + 136) = v17;
    *(v16 + 144) = v18;
    *(v16 + 104) = v29;
    *(v16 + 112) = 24;
  }

  v46 = sub_220DC05F0();

  return v46;
}

uint64_t sub_220D597B0(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v46[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v46[-1] - v7;
  v9 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v46[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46[-1] - v16;
  sub_220D5AA20(a1 + *(v2 + 20), v12, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v17, v12, v13);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v19 = MEMORY[0x277D83A80];
    *(v18 + 56) = MEMORY[0x277D839F8];
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
    v21 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v21, 0, 0, v22, v23, v24, v25, v26, v45, v46[0], v46[1], v46[2], v46[3], v46[4], v46[5], v46[6], v46[7], v46[8], v46[9], v46[10]);
    v28 = v27;
    v30 = v29;

    *(v18 + 96) = MEMORY[0x277D837D0];
    v31 = sub_220CEFDB0();
    v32 = MEMORY[0x277D83B88];
    v33 = MEMORY[0x277D83C10];
    *(v18 + 72) = v28;
    *(v18 + 80) = v30;
    *(v18 + 136) = v32;
    *(v18 + 144) = v33;
    *(v18 + 104) = v31;
    *(v18 + 112) = 24;
    v34 = sub_220DC05F0();

    (*(v14 + 8))(v17, v13);
  }

  else
  {
    sub_220CE1E88(v12, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v35 = sub_220DBF410();
    __swift_project_value_buffer(v35, qword_27CF95F48);
    sub_220D5AA20(a1, v8, type metadata accessor for PrecipitationTotalStringAmount);
    v36 = sub_220DBF3F0();
    v37 = sub_220DC0980();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46[0] = v39;
      *v38 = 136446210;
      sub_220D5AA20(v8, v6, type metadata accessor for PrecipitationTotalStringAmount);
      v40 = sub_220DC0630();
      v42 = v41;
      sub_220CE1E88(v8, type metadata accessor for PrecipitationTotalStringAmount);
      v43 = sub_220D3F210(v40, v42, v46);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_220CD1000, v36, v37, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x223D98FB0](v39, -1, -1);
      MEMORY[0x223D98FB0](v38, -1, -1);
    }

    else
    {

      sub_220CE1E88(v8, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v34;
}

uint64_t sub_220D59CCC(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v46[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v46[-1] - v7;
  v9 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v46[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46[-1] - v16;
  sub_220D5AA20(a1 + *(v2 + 20), v12, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v17, v12, v13);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_220DC1CC0;
    sub_220DBE050();
    v19 = MEMORY[0x277D83A80];
    *(v18 + 56) = MEMORY[0x277D839F8];
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
    v21 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v21, 0, 0, v22, v23, v24, v25, v26, v45, v46[0], v46[1], v46[2], v46[3], v46[4], v46[5], v46[6], v46[7], v46[8], v46[9], v46[10]);
    v28 = v27;
    v30 = v29;

    *(v18 + 96) = MEMORY[0x277D837D0];
    v31 = sub_220CEFDB0();
    v32 = MEMORY[0x277D83B88];
    v33 = MEMORY[0x277D83C10];
    *(v18 + 72) = v28;
    *(v18 + 80) = v30;
    *(v18 + 136) = v32;
    *(v18 + 144) = v33;
    *(v18 + 104) = v31;
    *(v18 + 112) = 24;
    v34 = sub_220DC05F0();

    (*(v14 + 8))(v17, v13);
  }

  else
  {
    sub_220CE1E88(v12, type metadata accessor for PrecipitationTotalStringAmount.Format);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v35 = sub_220DBF410();
    __swift_project_value_buffer(v35, qword_27CF95F48);
    sub_220D5AA20(a1, v8, type metadata accessor for PrecipitationTotalStringAmount);
    v36 = sub_220DBF3F0();
    v37 = sub_220DC0980();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46[0] = v39;
      *v38 = 136446210;
      sub_220D5AA20(v8, v6, type metadata accessor for PrecipitationTotalStringAmount);
      v40 = sub_220DC0630();
      v42 = v41;
      sub_220CE1E88(v8, type metadata accessor for PrecipitationTotalStringAmount);
      v43 = sub_220D3F210(v40, v42, v46);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_220CD1000, v36, v37, "Trying to format string for 'less than' precipitation, but the format is not 'less than'; amount=%{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x223D98FB0](v39, -1, -1);
      MEMORY[0x223D98FB0](v38, -1, -1);
    }

    else
    {

      sub_220CE1E88(v8, type metadata accessor for PrecipitationTotalStringAmount);
    }

    return 0;
  }

  return v34;
}

uint64_t sub_220D5A1E8(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95208, &unk_220DC1E40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - v7;
  v9 = type metadata accessor for PrecipitationTotalStringAmount.Format(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PrecipitationTotalStringAmount(0);
  sub_220D5AA20(a1 + *(v13 + 20), v12, type metadata accessor for PrecipitationTotalStringAmount.Format);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95218, &qword_220DC1E50);
    v31 = *(v5 + 8);
    v31(&v12[*(v30 + 48)], v4);
    v31(v12, v4);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_220DC17C0;
    v33 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v33, a2 & 1, 1, v34, v35, v36, v37, v38, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, vars0, vars8);
    v40 = v39;
    v42 = v41;

    *(v32 + 56) = MEMORY[0x277D837D0];
    v43 = sub_220CEFDB0();
    v44 = MEMORY[0x277D83B88];
    v45 = MEMORY[0x277D83C10];
    *(v32 + 32) = v40;
    *(v32 + 40) = v42;
    *(v32 + 96) = v44;
    *(v32 + 104) = v45;
    *(v32 + 64) = v43;
    *(v32 + 72) = 24;
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_220DBE050();
    v15 = Double.pluralRuleInteger.getter(v14);
    (*(v5 + 8))(v8, v4);
    if (qword_280FA6600 != -1)
    {
      swift_once();
    }

    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D83B88];
    *(v16 + 16) = xmmword_220DC1CC0;
    v18 = MEMORY[0x277D83C10];
    *(v16 + 56) = v17;
    *(v16 + 64) = v18;
    *(v16 + 32) = v15;
    v19 = sub_220DC0810();
    PrecipitationTotalStringAmount.formatted(_:accessible:shouldAddLessThanSymbol:)(v19, a2 & 1, 1, v20, v21, v22, v23, v24, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, vars0, vars8);
    v26 = v25;
    v28 = v27;

    *(v16 + 96) = MEMORY[0x277D837D0];
    v29 = sub_220CEFDB0();
    *(v16 + 72) = v26;
    *(v16 + 80) = v28;
    *(v16 + 136) = v17;
    *(v16 + 144) = v18;
    *(v16 + 104) = v29;
    *(v16 + 112) = 24;
  }

  v46 = sub_220DC05F0();

  return v46;
}

void sub_220D5A648(uint64_t a1, uint64_t a2)
{
  v64 = type metadata accessor for PrecipitationTotalStringAmount(0);
  v5 = OUTLINED_FUNCTION_6(v64);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v63 = (v8 - v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - v11;
  v13 = type metadata accessor for PrecipitationWithinOneDaySentence();
  v14 = OUTLINED_FUNCTION_6(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  v19 = (v17 - v18);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_16();
  MEMORY[0x28223BE20](v21);
  v23 = &v63 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C10, qword_220DC50E0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v63 - v27;
  v29 = &v63 + *(v26 + 56) - v27;
  sub_220D5AA20(a1, &v63 - v27, type metadata accessor for PrecipitationWithinOneDaySentence);
  sub_220D5AA20(a2, v29, type metadata accessor for PrecipitationWithinOneDaySentence);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_2_23();
      sub_220D5AA20(v28, v2, v48);
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95B58, &qword_220DC4BB0) + 48);
      v50 = v2[v49];
      if (OUTLINED_FUNCTION_10_14() != 1)
      {
        v19 = v2;
        goto LABEL_15;
      }

      v51 = v29[v49];
      OUTLINED_FUNCTION_1_26();
      sub_220CE1D20(v29, v12, v52);
      if (*v2 == *v12)
      {
        v53 = *(v64 + 20);
        static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
        v55 = v54;
        OUTLINED_FUNCTION_0_17();
        sub_220CE1E88(v12, v56);
        if (v55)
        {
          OUTLINED_FUNCTION_0_17();
          sub_220CE1E88(v2, v57);
          sub_220CE1E88(v28, type metadata accessor for PrecipitationWithinOneDaySentence);
          goto LABEL_23;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_17();
        sub_220CE1E88(v12, v62);
      }

      OUTLINED_FUNCTION_0_17();
      v61 = v2;
      goto LABEL_21;
    case 2u:
      OUTLINED_FUNCTION_2_23();
      sub_220D5AA20(v28, v19, v32);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95BE8, &unk_220DC5080);
      v34 = *(v33 + 48);
      v35 = v19[v34];
      v36 = *(v33 + 64);
      v37 = v19[v36];
      if (OUTLINED_FUNCTION_10_14() == 2)
      {
        v38 = v29[v34];
        v39 = v29[v36];
        OUTLINED_FUNCTION_1_26();
        v40 = v29;
        v41 = v63;
        sub_220CE1D20(v40, v63, v42);
        if (*v19 == *v41)
        {
          v43 = *(v64 + 20);
          static PrecipitationTotalStringAmount.Format.== infix(_:_:)();
          v45 = v44;
          OUTLINED_FUNCTION_0_17();
          sub_220CE1E88(v41, v46);
          if (v45)
          {
            OUTLINED_FUNCTION_0_17();
            sub_220CE1E88(v19, v47);
LABEL_22:
            OUTLINED_FUNCTION_4_17();
            goto LABEL_23;
          }
        }

        else
        {
          OUTLINED_FUNCTION_0_17();
          sub_220CE1E88(v41, v59);
        }

        OUTLINED_FUNCTION_0_17();
        v61 = v19;
LABEL_21:
        sub_220CE1E88(v61, v60);
        goto LABEL_22;
      }

LABEL_15:
      OUTLINED_FUNCTION_0_17();
      sub_220CE1E88(v19, v58);
LABEL_16:
      sub_220D5ABA4(v28);
LABEL_23:
      OUTLINED_FUNCTION_24();
      return;
    case 3u:
      if (OUTLINED_FUNCTION_10_14() == 3)
      {
        goto LABEL_22;
      }

      goto LABEL_16;
    default:
      OUTLINED_FUNCTION_2_23();
      sub_220D5AA20(v28, v23, v30);
      if (OUTLINED_FUNCTION_10_14())
      {
        goto LABEL_16;
      }

      v31 = *v23 ^ *v29;
      goto LABEL_22;
  }
}

uint64_t sub_220D5AA20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_220D5AA80()
{
  sub_220D5AB08();
  if (v0 <= 0x3F)
  {
    sub_220D48004();
    if (v1 <= 0x3F)
    {
      sub_220D5AB30();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_220D5AB08()
{
  result = qword_27CF95C00;
  if (!qword_27CF95C00)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27CF95C00);
  }

  return result;
}

void sub_220D5AB30()
{
  if (!qword_27CF95C08)
  {
    type metadata accessor for PrecipitationTotalStringAmount(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF95C08);
    }
  }
}

uint64_t sub_220D5ABA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C10, qword_220DC50E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220D5AC20()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_220D5AC7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentativePastHourRange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D5ACE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_6(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void sub_220D5AD8C()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v52 = v3;
  v53 = v4;
  v6 = v5;
  v54 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v9 = OUTLINED_FUNCTION_18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_16_14();
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = sub_220DBF310();
  v16 = OUTLINED_FUNCTION_0(v15);
  v55 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  v23 = *v2;
  v24 = v2[1];
  v25 = v2[2];
  v51 = v2[3];
  v26 = v2[4];
  v27 = v2[5];
  sub_220CEF48C(v6, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_220CDA548(v14, &qword_27CF94F90, &unk_220DC4410);
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v28 = sub_220DBF410();
    __swift_project_value_buffer(v28, qword_27CF95F48);
    v29 = sub_220DBF3F0();
    v30 = sub_220DC0980();
    if (OUTLINED_FUNCTION_19_10(v30))
    {
      v31 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_27_4(v31);
      OUTLINED_FUNCTION_12_16(&dword_220CD1000, v32, v33, "Failed to create today platter string for Pressure due to missing extrema values");
      OUTLINED_FUNCTION_17();
    }
  }

  else
  {
    v34 = v55;
    (*(v55 + 32))(v22, v14, v15);
    v56 = v23;
    v57 = v24;
    v35 = v27;
    v36 = v51;
    v58 = v25;
    v59 = v51;
    v60 = v26;
    v61 = v35;
    v37 = sub_220D5B114(v54);
    v49 = v38;
    v50 = v37;
    v39 = v34;
    v40 = v15;
    (*(v39 + 16))(v0, v22, v15);
    __swift_storeEnumTagSinglePayload(v0, 0, 1, v15);
    v56 = v23;
    v57 = v24;
    v58 = v25;
    v59 = v36;
    v60 = v26;
    v61 = v35;
    v41 = sub_220D5B5A0(v54, v52, v0, v53, &v56);
    v43 = v42;
    sub_220CDA548(v0, &qword_27CF94F90, &unk_220DC4410);
    if (qword_280FA6600 != -1)
    {
      OUTLINED_FUNCTION_10();
    }

    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_6_0();
    sub_220DBE240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_220DC17C0;
    v45 = MEMORY[0x277D837D0];
    *(v44 + 56) = MEMORY[0x277D837D0];
    v46 = sub_220CEFDB0();
    v47 = v49;
    *(v44 + 32) = v50;
    *(v44 + 40) = v47;
    *(v44 + 96) = v45;
    *(v44 + 104) = v46;
    *(v44 + 64) = v46;
    *(v44 + 72) = v41;
    *(v44 + 80) = v43;
    sub_220DC05F0();

    (*(v55 + 8))(v22, v40);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_220D5B114(uint64_t a1)
{
  v2 = sub_220DBEC50();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220DC0300();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220DC09B0();
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  v36 = *(v14 - 8);
  v15 = *(v36 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  if (qword_280FA6600 != -1)
  {
    swift_once();
  }

  v18 = sub_220DBE240();
  v34 = v19;
  v35 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_220DC17C0;
  v33 = a1;
  sub_220DBEAB0();
  sub_220DC0290();
  (*(v6 + 104))(v9, *MEMORY[0x277D7B408], v5);
  sub_220DBF100();
  sub_220DBF0D0();
  sub_220D5E768(&qword_27CF95760, MEMORY[0x277D7B4E8]);
  v32 = sub_220DBE0B0();
  v22 = v21;

  (*(v6 + 8))(v9, v5);
  (*(v37 + 8))(v13, v10);
  (*(v36 + 8))(v17, v14);
  v23 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v24 = sub_220CEFDB0();
  *(v20 + 64) = v24;
  *(v20 + 32) = v32;
  *(v20 + 40) = v22;
  v25 = v38;
  sub_220DBE9C0();
  v26 = sub_220D5DCF4(v25);
  v28 = v27;
  (*(v39 + 8))(v25, v40);
  *(v20 + 96) = v23;
  *(v20 + 104) = v24;
  *(v20 + 72) = v26;
  *(v20 + 80) = v28;
  v29 = sub_220DC05F0();

  return v29;
}

uint64_t sub_220D5B5A0(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v101 = a3;
  v102 = a4;
  v103 = a2;
  v100 = a1;
  v6 = sub_220DC0300();
  v105 = *(v6 - 8);
  v106 = v6;
  v7 = *(v105 + 64);
  MEMORY[0x28223BE20](v6);
  v92 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_220DC09B0();
  v93 = *(v94 - 8);
  v9 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v91 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  v107 = *(v11 - 8);
  v108 = v11;
  v12 = v107[8];
  v13 = MEMORY[0x28223BE20](v11);
  v90 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v95 = &v89 - v15;
  v16 = sub_220DBE740();
  v98 = *(v16 - 8);
  v99 = v16;
  v17 = *(v98 + 8);
  MEMORY[0x28223BE20](v16);
  v97 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v109 = &v89 - v21;
  v22 = sub_220DBE560();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v96 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C28, &qword_220DC51D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v89 - v27;
  v29 = type metadata accessor for PressurePlatterStringBuilder.PressureSentenceKind();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v89 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v104 = &v89 - v33;
  v35 = *a5;
  v34 = *(a5 + 8);
  v36 = *(a5 + 16);
  v37 = *(a5 + 24);
  v38 = *(a5 + 32);
  v39 = *(a5 + 40);
  sub_220DBEA60();
  sub_220CEF48C(v101, v109);
  v40 = v97;
  (*(v98 + 2))(v97, v102, v99);
  v110[0] = v35;
  v110[1] = v34;
  v110[2] = v36;
  v110[3] = v37;
  v110[4] = v38;
  v110[5] = v39;
  v41 = v103;

  v42 = v35;
  v43 = v34;
  v44 = v36;
  v45 = v37;
  v46 = v38;
  v47 = v39;
  sub_220D5CDD4(v96, v41, v109, v40, v110, v28);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_220CDA548(v28, &qword_27CF95C28, &qword_220DC51D0);
    if (qword_27CF94F40 != -1)
    {
      swift_once();
    }

    v48 = sub_220DBF410();
    __swift_project_value_buffer(v48, qword_27CF95F48);
    v49 = sub_220DBF3F0();
    v50 = sub_220DC0980();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_220CD1000, v49, v50, "Failed to create 2nd today platter string for Pressure due to missing extrema values", v51, 2u);
      MEMORY[0x223D98FB0](v51, -1, -1);
    }

    return 0;
  }

  else
  {
    v53 = v104;
    sub_220D5E600(v28, v104);
    v54 = v89;
    sub_220D5E664(v53, v89);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C30, &qword_220DC51D8) + 48);
      v56 = v108;
      v57 = v107[4];
      v57(v95, v54, v108);
      v57(v90, v54 + v55, v56);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v109 = sub_220DBE240();
      v103 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_220DC17C0;
      v60 = v91;
      sub_220DC0290();
      LODWORD(v102) = *MEMORY[0x277D7B408];
      v61 = v105;
      v101 = *(v105 + 104);
      v62 = v92;
      v101(v92);
      v100 = sub_220DBF100();
      sub_220DBF0D0();
      v99 = sub_220D5E768(&qword_27CF95760, MEMORY[0x277D7B4E8]);
      v63 = v94;
      v64 = sub_220DBE0B0();
      v66 = v65;

      v67 = *(v61 + 8);
      v105 = v61 + 8;
      v98 = v67;
      v68 = v106;
      v67(v62, v106);
      v97 = *(v93 + 8);
      (v97)(v60, v63);
      *(v59 + 56) = MEMORY[0x277D837D0];
      v96 = sub_220CEFDB0();
      *(v59 + 64) = v96;
      *(v59 + 32) = v64;
      *(v59 + 40) = v66;
      sub_220DC0290();
      (v101)(v62, v102, v68);
      sub_220DBF0D0();
      v69 = v90;
      v70 = sub_220DBE0B0();
      v72 = v71;

      v98(v62, v106);
      (v97)(v60, v63);
      v73 = v96;
      *(v59 + 96) = MEMORY[0x277D837D0];
      *(v59 + 104) = v73;
      *(v59 + 72) = v70;
      *(v59 + 80) = v72;
      v52 = sub_220DC05F0();

      v74 = v108;
      v75 = v107[1];
      v75(v69, v108);
      v75(v95, v74);
    }

    else
    {
      v76 = v95;
      (v107[4])(v95, v54, v108);
      if (qword_280FA6600 != -1)
      {
        swift_once();
      }

      v109 = sub_220DBE240();
      v103 = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_220DC17A0;
      v79 = v91;
      sub_220DC0290();
      v80 = v105;
      v81 = v106;
      v82 = v92;
      (*(v105 + 104))(v92, *MEMORY[0x277D7B408], v106);
      sub_220DBF100();
      sub_220DBF0D0();
      sub_220D5E768(&qword_27CF95760, MEMORY[0x277D7B4E8]);
      v83 = v94;
      v84 = sub_220DBE0B0();
      v85 = v76;
      v87 = v86;

      (*(v80 + 8))(v82, v81);
      (*(v93 + 8))(v79, v83);
      *(v78 + 56) = MEMORY[0x277D837D0];
      *(v78 + 64) = sub_220CEFDB0();
      *(v78 + 32) = v84;
      *(v78 + 40) = v87;
      v52 = sub_220DC05F0();

      (v107[1])(v85, v108);
    }

    sub_220D5E6C8(v104);
  }

  return v52;
}

void sub_220D5C0EC()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v143 = v3;
  v144 = v2;
  v136 = v5;
  v137 = v4;
  v6 = sub_220DC0300();
  v7 = OUTLINED_FUNCTION_0(v6);
  v139 = v8;
  v140 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v11);
  v128 = sub_220DC09B0();
  v12 = OUTLINED_FUNCTION_0(v128);
  v127 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_21();
  v125 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  v18 = OUTLINED_FUNCTION_0(v17);
  v141 = v19;
  v142 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_14(v24);
  v25 = sub_220DBE740();
  v26 = OUTLINED_FUNCTION_0(v25);
  v134 = v27;
  v135 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_21();
  v133 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_18(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_23_10(v35, v122);
  v36 = sub_220DBE560();
  v37 = OUTLINED_FUNCTION_0(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1();
  v44 = v43 - v42;
  v130 = v43 - v42;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C28, &qword_220DC51D0);
  OUTLINED_FUNCTION_18(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v48);
  v50 = &v122 - v49;
  v131 = type metadata accessor for PressurePlatterStringBuilder.PressureSentenceKind();
  v51 = OUTLINED_FUNCTION_6(v131);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_57();
  v138 = v55;
  v57 = *v1;
  v56 = *(v1 + 8);
  v59 = *(v1 + 16);
  v58 = *(v1 + 24);
  v61 = *(v1 + 32);
  v60 = *(v1 + 40);
  (*(v39 + 16))(v44, v144, v36);
  v62 = v132;
  sub_220CEF48C(v136, v132);
  v63 = v133;
  (*(v134 + 16))(v133, v143, v135);
  v145[0] = v57;
  v145[1] = v56;
  v145[2] = v59;
  v145[3] = v58;
  v145[4] = v61;
  v145[5] = v60;
  v64 = v137;

  v65 = v57;
  v66 = v56;
  v67 = v59;
  v68 = v58;
  v69 = v61;
  v70 = v131;
  v71 = v60;
  sub_220D5CDD4(v130, v64, v62, v63, v145, v50);
  if (__swift_getEnumTagSinglePayload(v50, 1, v70) == 1)
  {
    sub_220CDA548(v50, &qword_27CF95C28, &qword_220DC51D0);
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v72 = sub_220DBF410();
    __swift_project_value_buffer(v72, qword_27CF95F48);
    v73 = sub_220DBF3F0();
    v74 = sub_220DC0980();
    if (OUTLINED_FUNCTION_19_10(v74))
    {
      v75 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_27_4(v75);
      OUTLINED_FUNCTION_12_16(&dword_220CD1000, v76, v77, "Failed to create future day platter string for Pressure due to missing extrema values");
      OUTLINED_FUNCTION_17();
    }
  }

  else
  {
    v78 = v50;
    v79 = v138;
    sub_220D5E600(v78, v138);
    v80 = sub_220DBE520();
    v81 = v122;
    sub_220D5E664(v79, v122);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C30, &qword_220DC51D8) + 48);
      v83 = v142;
      v84 = *(v141 + 32);
      v84(v129, v81, v142);
      v84(v124, v81 + v82, v83);
      switch(v80)
      {
        case 1:
          OUTLINED_FUNCTION_19();
          if (!v85)
          {
            OUTLINED_FUNCTION_10();
          }

          break;
        case 2:
          OUTLINED_FUNCTION_19();
          if (!v85)
          {
            OUTLINED_FUNCTION_10();
          }

          break;
        case 3:
          OUTLINED_FUNCTION_19();
          if (!v85)
          {
            OUTLINED_FUNCTION_10();
          }

          break;
        case 4:
          OUTLINED_FUNCTION_19();
          if (!v85)
          {
            OUTLINED_FUNCTION_10();
          }

          break;
        case 5:
          OUTLINED_FUNCTION_19();
          if (!v85)
          {
            OUTLINED_FUNCTION_10();
          }

          break;
        case 6:
          OUTLINED_FUNCTION_19();
          if (!v85)
          {
            OUTLINED_FUNCTION_10();
          }

          break;
        default:
          OUTLINED_FUNCTION_19();
          if (!v85)
          {
            OUTLINED_FUNCTION_10();
          }

          break;
      }

      OUTLINED_FUNCTION_2_24();
      OUTLINED_FUNCTION_6_0();
      v143 = sub_220DBE240();
      v144 = v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v89 = swift_allocObject();
      OUTLINED_FUNCTION_26_5(v89, xmmword_220DC17C0);
      v91 = *(v90 - 256);
      sub_220DC0290();
      LODWORD(v137) = *MEMORY[0x277D7B408];
      v92 = v139;
      v93 = OUTLINED_FUNCTION_29_3(*(v139 + 104));
      v94(v93);
      v135 = sub_220DBF100();
      sub_220DBF0D0();
      OUTLINED_FUNCTION_3_23();
      v134 = sub_220D5E768(v95, v96);
      OUTLINED_FUNCTION_28();
      v97 = v128;
      v98 = sub_220DBE0B0();
      v100 = v99;

      v101 = v83;
      v102 = *(v92 + 8);
      v139 = v92 + 8;
      v133 = v102;
      v103 = v140;
      v102(v63, v140);
      v104 = OUTLINED_FUNCTION_22_8();
      v105(v104, v97);
      v89[3].n128_u64[1] = MEMORY[0x277D837D0];
      v131 = sub_220CEFDB0();
      v89[4].n128_u64[0] = v131;
      v89[2].n128_u64[0] = v98;
      v89[2].n128_u64[1] = v100;
      sub_220DC0290();
      v136(v63, v137, v103);
      v106 = v135;
      sub_220DBF0D0();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_24_7();
      v133(v63, v140);
      v132(v91, v97);
      v107 = v131;
      v89[6].n128_u64[0] = MEMORY[0x277D837D0];
      v89[6].n128_u64[1] = v107;
      v89[4].n128_u64[1] = v106;
      v89[5].n128_u64[0] = v100;
      sub_220DC05F0();

      v108 = v142;
      v109 = *(v141 + 8);
      v109(v101, v142);
      v109(v129, v108);
    }

    else
    {
      v86 = v81;
      v87 = v142;
      (*(v141 + 32))(v123, v86, v142);
      switch(v80)
      {
        case 1:
          OUTLINED_FUNCTION_19();
          if (!v85)
          {
            OUTLINED_FUNCTION_10();
          }

          break;
        case 2:
          OUTLINED_FUNCTION_19();
          if (!v85)
          {
            OUTLINED_FUNCTION_10();
          }

          break;
        case 3:
          OUTLINED_FUNCTION_19();
          if (!v85)
          {
            OUTLINED_FUNCTION_10();
          }

          break;
        case 4:
          OUTLINED_FUNCTION_19();
          if (!v85)
          {
            OUTLINED_FUNCTION_10();
          }

          break;
        case 5:
          OUTLINED_FUNCTION_19();
          if (!v85)
          {
            OUTLINED_FUNCTION_10();
          }

          break;
        case 6:
          OUTLINED_FUNCTION_19();
          if (!v85)
          {
            OUTLINED_FUNCTION_10();
          }

          break;
        default:
          OUTLINED_FUNCTION_19();
          if (!v85)
          {
            OUTLINED_FUNCTION_10();
          }

          break;
      }

      OUTLINED_FUNCTION_2_24();
      OUTLINED_FUNCTION_6_0();
      v143 = sub_220DBE240();
      v144 = v110;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v111 = swift_allocObject();
      OUTLINED_FUNCTION_26_5(v111, xmmword_220DC17A0);
      v113 = *(v112 - 256);
      sub_220DC0290();
      v115 = v139;
      v114 = v140;
      v116 = v126;
      (*(v139 + 104))(v126, *MEMORY[0x277D7B408], v140);
      sub_220DBF100();
      sub_220DBF0D0();
      OUTLINED_FUNCTION_3_23();
      sub_220D5E768(v117, v118);
      v119 = v128;
      v120 = v123;
      v121 = v123;
      sub_220DBE0B0();
      OUTLINED_FUNCTION_24_7();
      (*(v115 + 8))(v116, v114);
      (*(v127 + 8))(v113, v119);
      v111[3].n128_u64[1] = MEMORY[0x277D837D0];
      v111[4].n128_u64[0] = sub_220CEFDB0();
      v111[2].n128_u64[0] = v121;
      v111[2].n128_u64[1] = v87;
      sub_220DC05F0();

      (*(v141 + 8))(v120, v142);
    }

    sub_220D5E6C8(v138);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_220D5CDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v82 = a1;
  v83 = a4;
  v77 = a2;
  v81 = a6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  v8 = OUTLINED_FUNCTION_0(v75);
  v73 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9();
  v74 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_57();
  v78 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_18(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  v21 = sub_220DBF310();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1();
  v29 = v28 - v27;
  v80 = type metadata accessor for PressurePlatterStringBuilder.PressureSentenceKind();
  v30 = OUTLINED_FUNCTION_6(v80);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_21();
  v72 = v33;
  v34 = *(a5 + 8);
  v76 = *a5;
  v36 = *(a5 + 16);
  v35 = *(a5 + 24);
  v38 = *(a5 + 32);
  v37 = *(a5 + 40);
  v79 = a3;
  sub_220CEF48C(a3, v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    v39 = v82;

    sub_220CDA548(v20, &qword_27CF94F90, &unk_220DC4410);
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v40 = sub_220DBF410();
    __swift_project_value_buffer(v40, qword_27CF95F48);
    v41 = sub_220DBF3F0();
    v42 = sub_220DC0980();
    v43 = OUTLINED_FUNCTION_19_10(v42);
    v44 = v79;
    v45 = v83;
    if (v43)
    {
      v46 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_27_4(v46);
      OUTLINED_FUNCTION_12_16(&dword_220CD1000, v47, v48, "Failed to determine sentence kind for Pressure due to missing extrema values");
      OUTLINED_FUNCTION_17();
    }

    v49 = sub_220DBE740();
    OUTLINED_FUNCTION_6(v49);
    (*(v50 + 8))(v45);
    sub_220CDA548(v44, &qword_27CF94F90, &unk_220DC4410);
    v51 = sub_220DBE560();
    OUTLINED_FUNCTION_6(v51);
    (*(v52 + 8))(v39);
    v53 = 1;
    v55 = v80;
    v54 = v81;
  }

  else
  {
    (*(v24 + 32))(v29, v20, v21);
    v71 = v36;
    sub_220D36AAC(v34, v77, v78);

    sub_220DBF300();
    sub_220D5E724();
    v56 = v34;
    v57 = v74;
    sub_220DBE040();

    LOBYTE(v56) = OUTLINED_FUNCTION_25_7();
    v58 = sub_220DBE740();
    OUTLINED_FUNCTION_6(v58);
    (*(v59 + 8))(v83);
    sub_220CDA548(v79, &qword_27CF94F90, &unk_220DC4410);
    v60 = sub_220DBE560();
    OUTLINED_FUNCTION_6(v60);
    (*(v61 + 8))(v82);
    (*(v24 + 8))(v29, v21);
    v62 = v73;
    v63 = (v73 + 32);
    if (v56)
    {
      v64 = v75;
      (*(v73 + 8))(v57, v75);
      v65 = v72;
      (*(v62 + 32))(v72, v78, v64);
    }

    else
    {
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C30, &qword_220DC51D8) + 48);
      v67 = *v63;
      v65 = v72;
      v68 = v75;
      (*v63)(v72, v78, v75);
      v67(v65 + v66, v57, v68);
    }

    v55 = v80;
    swift_storeEnumTagMultiPayload();
    v54 = v81;
    sub_220D5E600(v65, v81);
    v53 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v54, v53, 1, v55);
}

void sub_220D5D328()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v139 = v2;
  v140 = v3;
  v141 = v4;
  v138 = v5;
  v6 = sub_220DC0300();
  v7 = OUTLINED_FUNCTION_0(v6);
  v143 = v8;
  v144 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_21();
  OUTLINED_FUNCTION_14(v11);
  v130 = sub_220DC09B0();
  v12 = OUTLINED_FUNCTION_0(v130);
  v129 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_21();
  v127 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  v18 = OUTLINED_FUNCTION_0(v17);
  v145 = v19;
  v146 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_14(v23);
  v24 = sub_220DBE740();
  v25 = OUTLINED_FUNCTION_0(v24);
  v136 = v26;
  v137 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_21();
  v135 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94F90, &unk_220DC4410);
  OUTLINED_FUNCTION_18(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v33);
  v133 = &v124 - v34;
  v35 = sub_220DBE560();
  v36 = OUTLINED_FUNCTION_0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1();
  v43 = v42 - v41;
  v132 = v42 - v41;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C28, &qword_220DC51D0);
  OUTLINED_FUNCTION_18(v44);
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_23_10(v48, v124);
  v49 = type metadata accessor for PressurePlatterStringBuilder.PressureSentenceKind();
  v50 = OUTLINED_FUNCTION_6(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_57();
  v142 = v54;
  v55 = *v1;
  v56 = *(v1 + 8);
  v58 = *(v1 + 16);
  v57 = *(v1 + 24);
  v59 = *(v1 + 32);
  v60 = *(v1 + 40);
  (*(v38 + 16))(v43, v138, v35);
  v61 = v133;
  sub_220CEF48C(v139, v133);
  v62 = v135;
  (*(v136 + 16))(v135, v140, v137);
  v147[0] = v55;
  v147[1] = v56;
  v147[2] = v58;
  v147[3] = v57;
  v147[4] = v59;
  v147[5] = v60;
  v63 = v141;

  v64 = v55;
  v65 = v56;
  v66 = v58;
  v67 = v57;
  v68 = v59;
  v69 = v60;
  v70 = v61;
  v71 = v134;
  sub_220D5CDD4(v132, v63, v70, v62, v147, v134);
  if (__swift_getEnumTagSinglePayload(v71, 1, v49) == 1)
  {
    sub_220CDA548(v71, &qword_27CF95C28, &qword_220DC51D0);
    if (qword_27CF94F40 != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v72 = sub_220DBF410();
    __swift_project_value_buffer(v72, qword_27CF95F48);
    v73 = sub_220DBF3F0();
    v74 = sub_220DC0980();
    if (OUTLINED_FUNCTION_19_10(v74))
    {
      v75 = OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_27_4(v75);
      OUTLINED_FUNCTION_12_16(&dword_220CD1000, v76, v77, "Failed to create yesterday platter string for Pressure due to missing extrema values");
      OUTLINED_FUNCTION_17();
    }
  }

  else
  {
    v78 = v71;
    v79 = v142;
    sub_220D5E600(v78, v142);
    v80 = v125;
    sub_220D5E664(v79, v125);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C30, &qword_220DC51D8) + 48);
      v82 = v146;
      v83 = *(v145 + 32);
      v83(v131, v80, v146);
      v83(v126, v80 + v81, v82);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_6_0();
      v84 = sub_220DBE240();
      v140 = v85;
      v141 = v84;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v86 = swift_allocObject();
      OUTLINED_FUNCTION_26_5(v86, xmmword_220DC17C0);
      v88 = *(v87 - 256);
      sub_220DC0290();
      LODWORD(v139) = *MEMORY[0x277D7B408];
      v89 = v143;
      v90 = OUTLINED_FUNCTION_29_3(*(v143 + 104));
      v91(v90);
      v137 = sub_220DBF100();
      sub_220DBF0D0();
      OUTLINED_FUNCTION_3_23();
      v136 = sub_220D5E768(v92, v93);
      OUTLINED_FUNCTION_28();
      v94 = v146;
      v95 = v130;
      v96 = sub_220DBE0B0();
      v98 = v97;

      v99 = v94;
      v100 = *(v89 + 8);
      v143 = v89 + 8;
      v135 = v100;
      v101 = v144;
      v100(v80, v144);
      v102 = OUTLINED_FUNCTION_22_8();
      v103(v102, v95);
      v86[3].n128_u64[1] = MEMORY[0x277D837D0];
      v133 = sub_220CEFDB0();
      v86[4].n128_u64[0] = v133;
      v86[2].n128_u64[0] = v96;
      v86[2].n128_u64[1] = v98;
      sub_220DC0290();
      v138(v80, v139, v101);
      v104 = v137;
      sub_220DBF0D0();
      OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_24_7();
      v135(v80, v144);
      v134(v88, v95);
      v105 = v133;
      v86[6].n128_u64[0] = MEMORY[0x277D837D0];
      v86[6].n128_u64[1] = v105;
      v86[4].n128_u64[1] = v104;
      v86[5].n128_u64[0] = v101;
      sub_220DC05F0();

      v106 = v146;
      v107 = *(v145 + 8);
      v107(v99, v146);
      v107(v131, v106);
    }

    else
    {
      v108 = v131;
      (*(v145 + 32))(v131, v80, v146);
      if (qword_280FA6600 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_6_0();
      v109 = sub_220DBE240();
      v140 = v110;
      v141 = v109;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF94FB8, &unk_220DC1E30);
      v111 = swift_allocObject();
      OUTLINED_FUNCTION_26_5(v111, xmmword_220DC17A0);
      v113 = *(v112 - 256);
      sub_220DC0290();
      v114 = v143;
      v115 = v144;
      v116 = v128;
      (*(v143 + 104))(v128, *MEMORY[0x277D7B408], v144);
      sub_220DBF100();
      sub_220DBF0D0();
      OUTLINED_FUNCTION_3_23();
      sub_220D5E768(v117, v118);
      v119 = v130;
      v120 = sub_220DBE0B0();
      v121 = v108;
      v123 = v122;

      (*(v114 + 8))(v116, v115);
      (*(v129 + 8))(v113, v119);
      v111[3].n128_u64[1] = MEMORY[0x277D837D0];
      v111[4].n128_u64[0] = sub_220CEFDB0();
      v111[2].n128_u64[0] = v120;
      v111[2].n128_u64[1] = v123;
      sub_220DC05F0();

      (*(v145 + 8))(v121, v146);
    }

    sub_220D5E6C8(v142);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t sub_220D5DCF4(uint64_t a1)
{
  v2 = sub_220DBEC50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = *(v3 + 16);
  v10(&v25 - v8, a1, v2);
  v11 = (*(v3 + 88))(v9, v2);
  if (v11 == *MEMORY[0x277CE33E0])
  {
    if (qword_280FA6600 == -1)
    {
      return sub_220DBE240();
    }

    goto LABEL_16;
  }

  if (v11 == *MEMORY[0x277CE33F0])
  {
    if (qword_280FA6600 == -1)
    {
      return sub_220DBE240();
    }

LABEL_16:
    swift_once();
    return sub_220DBE240();
  }

  if (v11 == *MEMORY[0x277CE33E8])
  {
    if (qword_280FA6600 == -1)
    {
      return sub_220DBE240();
    }

    goto LABEL_16;
  }

  if (qword_27CF94F40 != -1)
  {
    swift_once();
  }

  v13 = sub_220DBF410();
  __swift_project_value_buffer(v13, qword_27CF95F48);
  v10(v7, a1, v2);
  v14 = sub_220DBF3F0();
  v15 = sub_220DC0980();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = v16;
    v27 = swift_slowAlloc();
    v28 = v27;
    *v16 = 136446210;
    sub_220D5E768(&qword_27CF95C38, MEMORY[0x277CE33F8]);
    v17 = sub_220DC0C70();
    v19 = v18;
    v20 = *(v3 + 8);
    v20(v7, v2);
    v21 = sub_220D3F210(v17, v19, &v28);

    v22 = v26;
    *(v26 + 1) = v21;
    v23 = v22;
    _os_log_impl(&dword_220CD1000, v14, v15, "Unexpected trend:%{public}s  ", v22, 0xCu);
    v24 = v27;
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x223D98FB0](v24, -1, -1);
    MEMORY[0x223D98FB0](v23, -1, -1);
  }

  else
  {

    v20 = *(v3 + 8);
    v20(v7, v2);
  }

  v20(v9, v2);
  return 0;
}

void sub_220D5E17C()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95260, &unk_220DC2D10);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9();
  v49 = v11;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v12);
  v51 = &v48 - v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v14);
  v50 = &v48 - v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  v19 = type metadata accessor for PressurePlatterStringBuilder.PressureSentenceKind();
  v20 = OUTLINED_FUNCTION_6(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_16_14();
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C60, qword_220DC5220);
  OUTLINED_FUNCTION_18(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_34();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v48 - v31;
  v33 = &v48 + *(v30 + 56) - v31;
  sub_220D5E664(v4, &v48 - v31);
  sub_220D5E664(v2, v33);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220D5E664(v32, v0);
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C30, &qword_220DC51D8) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = *(v8 + 32);
      v35(v50, v33, v5);
      v35(v51, (v0 + v34), v5);
      v36 = v49;
      v35(v49, &v33[v34], v5);
      sub_220D5E724();
      v37 = OUTLINED_FUNCTION_25_7();
      v38 = *(v8 + 8);
      v38(v0, v5);
      if ((v37 & 1) == 0)
      {
        v38(v36, v5);
        v38(v51, v5);
        v47 = OUTLINED_FUNCTION_30();
        (v38)(v47);
        sub_220D5E6C8(v32);
        goto LABEL_11;
      }

      v39 = v51;
      OUTLINED_FUNCTION_25_7();
      v38(v36, v5);
      v38(v39, v5);
      v40 = OUTLINED_FUNCTION_30();
      (v38)(v40);
      goto LABEL_10;
    }

    v44 = *(v8 + 8);
    v44(v0 + v34, v5);
    v44(v0, v5);
  }

  else
  {
    sub_220D5E664(v32, v25);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v8 + 32))(v18, v33, v5);
      sub_220D5E724();
      sub_220DBE020();
      v45 = *(v8 + 8);
      v45(v18, v5);
      v46 = OUTLINED_FUNCTION_30();
      (v45)(v46);
LABEL_10:
      sub_220D5E6C8(v32);
      goto LABEL_11;
    }

    v41 = *(v8 + 8);
    v42 = OUTLINED_FUNCTION_30();
    v43(v42);
  }

  sub_220CDA548(v32, &qword_27CF95C60, qword_220DC5220);
LABEL_11:
  OUTLINED_FUNCTION_24();
}

uint64_t type metadata accessor for PressurePlatterStringBuilder.PressureSentenceKind()
{
  result = qword_27CF95C40;
  if (!qword_27CF95C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220D5E600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PressurePlatterStringBuilder.PressureSentenceKind();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D5E664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PressurePlatterStringBuilder.PressureSentenceKind();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220D5E6C8(uint64_t a1)
{
  v2 = type metadata accessor for PressurePlatterStringBuilder.PressureSentenceKind();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_220D5E724()
{
  result = qword_27CF956B0;
  if (!qword_27CF956B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF956B0);
  }

  return result;
}

uint64_t sub_220D5E768(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_220D5E7B0()
{
  sub_220D5E824();
  if (v0 <= 0x3F)
  {
    sub_220D5E87C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_220D5E824()
{
  if (!qword_27CF95C50)
  {
    sub_220D5E724();
    v0 = sub_220DBE140();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF95C50);
    }
  }
}

void sub_220D5E87C()
{
  if (!qword_27CF95C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF95260, &unk_220DC2D10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF95C58);
    }
  }
}

uint64_t PrecipitationEvent.StartStop.description.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v2 = OUTLINED_FUNCTION_22_9() | 0x6E69207472610000;
    v3 = 0xE900000000000020;
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    v2 = OUTLINED_FUNCTION_22_9() | 0x206E6920706F0000;
    v3 = 0xE800000000000000;
LABEL_5:
    MEMORY[0x223D982B0](v2, v3);
    sub_220DC07A0();
    MEMORY[0x223D982B0](115, 0xE100000000000000);
    return v5;
  }

  return 0x746E6174736E6F63;
}

BOOL static PrecipitationEvent.StartStop.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      return v3 == 2 && *&v2 == 0;
    }

    if (v3 != 1)
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  v4 = *a2;
  return *a1 == v2;
}

uint64_t PrecipitationEvent.precipitation.getter()
{
  OUTLINED_FUNCTION_3();
  v0 = sub_220DBEC20();
  OUTLINED_FUNCTION_6(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_20();

  return v4(v3);
}

uint64_t PrecipitationEvent.startStop.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  result = type metadata accessor for PrecipitationEvent(v2);
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *v0 = v5;
  *(v0 + 8) = v4;
  return result;
}

uint64_t PrecipitationEvent.startDate.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = *(type metadata accessor for PrecipitationEvent(v2) + 24);
  v4 = sub_220DBE560();
  v5 = OUTLINED_FUNCTION_6(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t PrecipitationEvent.chance.getter()
{
  v1 = (v0 + *(type metadata accessor for PrecipitationEvent(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t PrecipitationEvent.description.getter()
{
  sub_220DC0B80();
  MEMORY[0x223D982B0](0x203A706963657270, 0xE800000000000000);
  sub_220DBEC20();
  sub_220D5EDAC(&qword_27CF95C68, MEMORY[0x277CE33B8]);
  v0 = sub_220DC0C70();
  MEMORY[0x223D982B0](v0);

  MEMORY[0x223D982B0](0x537472617473202CLL, 0xED0000203A706F74);
  v1 = type metadata accessor for PrecipitationEvent(0);
  OUTLINED_FUNCTION_17_10(v1[5]);
  started = PrecipitationEvent.StartStop.description.getter();
  MEMORY[0x223D982B0](started);

  MEMORY[0x223D982B0](0x447472617473202CLL, 0xED0000203A657461);
  v3 = v1[6];
  sub_220DBE560();
  sub_220D5EDAC(&qword_27CF95AC0, MEMORY[0x277CC9578]);
  v4 = sub_220DC0C70();
  MEMORY[0x223D982B0](v4);

  MEMORY[0x223D982B0](0x65636E616863202CLL, 0xEA0000000000203ALL);
  OUTLINED_FUNCTION_17_10(v1[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C70, &unk_220DC5270);
  v5 = sub_220DC0630();
  MEMORY[0x223D982B0](v5);

  return 0;
}

uint64_t sub_220D5EDAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static PrecipitationEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_220D05D20() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PrecipitationEvent(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  OUTLINED_FUNCTION_17_10(v5);
  if (v11)
  {
    if (v11 != 1)
    {
      if (v8 != 2 || *&v9 != 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    v12 = v10;
    v13 = v9;
    v14 = v8 == 1;
  }

  else
  {
    v12 = v10;
    v13 = v9;
    v14 = v8 == 0;
  }

  if (!v14 || v12 != v13)
  {
    return 0;
  }

LABEL_16:
  v17 = v4[6];
  if ((sub_220DBE460() & 1) == 0)
  {
    return 0;
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      v22 = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t NextPrecipitation.description.getter()
{
  v1 = type metadata accessor for PrecipitationEvent(0);
  v2 = OUTLINED_FUNCTION_18(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  Precipitation = type metadata accessor for NextPrecipitation(0);
  v9 = OUTLINED_FUNCTION_6(Precipitation);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  sub_220D5F0D8(v0, v13 - v12);
  v14 = 0x30316E49656E6F6ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_19();
      v18 = OUTLINED_FUNCTION_15_11();
      sub_220D619B4(v18, v19);
      v17 = 0x72756F4834326E69;
      goto LABEL_4;
    case 2u:
      OUTLINED_FUNCTION_0_19();
      v21 = OUTLINED_FUNCTION_15_11();
      sub_220D619B4(v21, v22);
      v26 = 0x7379614430316E69;
      v23 = PrecipitationEvent.description.getter();
      MEMORY[0x223D982B0](v23);

      MEMORY[0x223D982B0](41, 0xE100000000000000);
      goto LABEL_6;
    case 3u:
      return v14;
    default:
      OUTLINED_FUNCTION_0_19();
      v15 = OUTLINED_FUNCTION_15_11();
      sub_220D619B4(v15, v16);
      v17 = 0x756E694D30366E69;
LABEL_4:
      v26 = v17;
      v20 = PrecipitationEvent.description.getter();
      MEMORY[0x223D982B0](v20);

LABEL_6:
      v14 = v26;
      OUTLINED_FUNCTION_9_17();
      sub_220D65BF8(v7, v24);
      return v14;
  }
}

uint64_t sub_220D5F0D8(uint64_t a1, uint64_t a2)
{
  Precipitation = type metadata accessor for NextPrecipitation(0);
  (*(*(Precipitation - 8) + 16))(a2, a1, Precipitation);
  return a2;
}

uint64_t NextPrecipitation.event.getter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_3();
  Precipitation = type metadata accessor for NextPrecipitation(v3);
  v5 = OUTLINED_FUNCTION_6(Precipitation);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = type metadata accessor for PrecipitationEvent(0);
  v12 = OUTLINED_FUNCTION_6(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  sub_220D5F0D8(v2, v10);
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    v20 = 1;
  }

  else
  {
    sub_220D619B4(v10, v17);
    v18 = OUTLINED_FUNCTION_15_11();
    sub_220D619B4(v18, v19);
    v20 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v0, v20, 1, v11);
}

uint64_t NextPrecipitation.init<A>(from:date:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v115 = a3;
  v117 = a2;
  v109 = a6;
  v116 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6(AssociatedTypeWitness);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22();
  v97 = v11;
  v103 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6(v103);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22();
  v102 = v15;
  OUTLINED_FUNCTION_6_1();
  v16 = sub_220DBE740();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v113 = v23 - v22;
  OUTLINED_FUNCTION_6_1();
  v112 = sub_220DBE560();
  v24 = OUTLINED_FUNCTION_0(v112);
  v110 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C78, &qword_220DC5440);
  OUTLINED_FUNCTION_18(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v34);
  v36 = &v95 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C80, &qword_220DC5280);
  OUTLINED_FUNCTION_18(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v40);
  v42 = &v95 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C88, &qword_220DC5288);
  v44 = OUTLINED_FUNCTION_18(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_4();
  v96 = v47 - v48;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v49);
  v101 = &v95 - v50;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v51);
  v53 = &v95 - v52;
  v108 = v19;
  v54 = *(v19 + 16);
  v55 = v115;
  v54(v36, v115, v16);
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v16);
  v56 = a5;
  v57 = *(a5 + 72);
  v58 = v117;
  v114 = a1;
  v106 = v56;
  v57(v117, v36, v116);
  sub_220CDA548(v36, &qword_27CF95C78, &qword_220DC5440);
  v59 = v110;
  v60 = v58;
  v61 = v55;
  v62 = v112;
  v99 = *(v110 + 16);
  v100 = v110 + 16;
  v99(v30, v60);
  v63 = v113;
  v111 = v16;
  v104 = v19 + 16;
  v105 = v54;
  v54(v113, v61, v16);
  v107 = v30;
  NextPrecipitation.init(nextHourPrecipitationShift:date:timeZone:)(v42, v30, v63, v53);
  Precipitation = type metadata accessor for NextPrecipitation(0);
  if (__swift_getEnumTagSinglePayload(v53, 1, Precipitation) != 1)
  {
    (*(v108 + 8))(v115, v111);
    (*(v59 + 8))(v117, v62);
    OUTLINED_FUNCTION_21_7();
    (*(v89 + 8))(v114);
    OUTLINED_FUNCTION_1_29();
    v90 = v53;
LABEL_7:
    v94 = v109;
    return sub_220D619B4(v90, v94);
  }

  sub_220CDA548(v53, &qword_27CF95C88, &qword_220DC5288);
  v65 = *(v106 + 80);
  v66 = v102;
  v95 = Precipitation;
  v65(v116, v106);
  v67 = v107;
  v68 = v99;
  (v99)(v107, v117, v62);
  v69 = v113;
  v105(v113, v115, v111);
  v70 = v103;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v72 = swift_getAssociatedConformanceWitness();
  v73 = v101;
  NextPrecipitation.init<A>(hourlyForecast:date:timeZone:limitInHours:precipitationChanceThreshold:)(v66, v67, v69, 24, v70, AssociatedConformanceWitness, v72, v101, 0.3);
  if (__swift_getEnumTagSinglePayload(v73, 1, v95) != 1)
  {
    (*(v108 + 8))(v115, v111);
    v91 = OUTLINED_FUNCTION_23_11();
    v92(v91);
    OUTLINED_FUNCTION_21_7();
    (*(v93 + 8))(v114);
    OUTLINED_FUNCTION_1_29();
    v90 = v73;
    goto LABEL_7;
  }

  sub_220CDA548(v73, &qword_27CF95C88, &qword_220DC5288);
  v74 = v97;
  v75 = v116;
  (*(v106 + 88))(v116, v106);
  v76 = v107;
  v77 = v115;
  v68(v107, v117, v112);
  v78 = v113;
  v79 = v111;
  v105(v113, v77, v111);
  v80 = AssociatedTypeWitness;
  v81 = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v82 = swift_getAssociatedConformanceWitness();
  v83 = v96;
  v84 = v81;
  v85 = v95;
  sub_220D609A0(v74, v76, v78, v80, v84, v82, v96, 0.3);
  (*(v108 + 8))(v77, v79);
  v86 = OUTLINED_FUNCTION_23_11();
  v87(v86);
  (*(*(v75 - 8) + 8))(v114, v75);
  if (__swift_getEnumTagSinglePayload(v83, 1, v85) == 1)
  {
    sub_220CDA548(v83, &qword_27CF95C88, &qword_220DC5288);
    OUTLINED_FUNCTION_20();
    return swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_1_29();
  v90 = OUTLINED_FUNCTION_15_11();
  return sub_220D619B4(v90, v94);
}

uint64_t NextPrecipitation.init(nextHourPrecipitationShift:date:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a3;
  v89 = a2;
  v91 = a4;
  Precipitation = type metadata accessor for NextPrecipitation(0);
  v5 = OUTLINED_FUNCTION_6(Precipitation);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v86 = v9 - v8;
  v10 = OUTLINED_FUNCTION_6_1();
  v84 = type metadata accessor for PrecipitationEvent(v10);
  v11 = OUTLINED_FUNCTION_6(v84);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v85 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C90, &qword_220DC5290);
  OUTLINED_FUNCTION_18(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v19);
  v21 = &v82 - v20;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C98, &qword_220DC5298);
  v22 = OUTLINED_FUNCTION_6(v87);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4();
  v83 = v25 - v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v27);
  v82 = &v82 - v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x28223BE20](v29);
  v31 = &v82 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF95C80, &qword_220DC5280);
  OUTLINED_FUNCTION_18(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v35);
  v37 = &v82 - v36;
  v38 = sub_220DBED40();
  v39 = OUTLINED_FUNCTION_0(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1();
  v46 = v45 - v44;
  v47 = a1;
  sub_220D656E8(a1, v37, &qword_27CF95C80, &qword_220DC5280);
  if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
  {
    v48 = sub_220DBE740();
    OUTLINED_FUNCTION_6(v48);
    (*(v49 + 8))(v88);
    v50 = sub_220DBE560();
    OUTLINED_FUNCTION_6(v50);
    (*(v51 + 8))(v89);
    sub_220CDA548(a1, &qword_27CF95C80, &qword_220DC5280);
    v52 = OUTLINED_FUNCTION_15_11();
    v54 = &qword_220DC5280;
  }

  else
  {
    (*(v41 + 32))(v46, v37, v38);
    v55 = v88;
    v56 = v89;
    sub_220D61A0C(v89, v88, v21);
    v57 = sub_220DBE740();
    OUTLINED_FUNCTION_6(v57);
    (*(v58 + 8))(v55);
    sub_220CDA548(v47, &qword_27CF95C80, &qword_220DC5280);
    (*(v41 + 8))(v46, v38);
    v59 = v87;
    if (__swift_getEnumTagSinglePayload(v21, 1, v87) != 1)
    {
      sub_220D65678(v21, v31);
      v65 = v82;
      sub_220D656E8(v31, v82, &qword_27CF95C98, &qword_220DC5298);
      v66 = v83;
      sub_220D65678(v31, v83);
      v67 = v66 + *(v59 + 48);
      v68 = *v67;
      v69 = *(v67 + 8);
      v70 = sub_220DBEC20();
      v71 = *(v70 - 8);
      v72 = v85;
      (*(v71 + 32))(v85, v65, v70);
      v73 = v84;
      v74 = v72 + *(v84 + 20);
      *v74 = v68;
      *(v74 + 8) = v69;
      v75 = *(v73 + 24);
      v76 = sub_220DBE560();
      OUTLINED_FUNCTION_6(v76);
      (*(v77 + 32))(v72 + v75, v56);
      v78 = v72 + *(v73 + 28);
      *v78 = 0;
      *(v78 + 8) = 1;
      (*(v71 + 8))(v66, v70);
      OUTLINED_FUNCTION_0_19();
      v79 = v86;
      sub_220D619B4(v72, v86);
      v64 = Precipitation;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_29();
      v80 = v79;
      v63 = v91;
      sub_220D619B4(v80, v91);
      v62 = 0;
      return __swift_storeEnumTagSinglePayload(v63, v62, 1, v64);
    }

    v60 = sub_220DBE560();
    OUTLINED_FUNCTION_6(v60);
    (*(v61 + 8))(v56);
    v53 = &qword_27CF95C90;
    v54 = &qword_220DC5290;
    v52 = v21;
  }

  sub_220CDA548(v52, v53, v54);
  v62 = 1;
  v64 = Precipitation;
  v63 = v91;
  return __swift_storeEnumTagSinglePayload(v63, v62, 1, v64);
}