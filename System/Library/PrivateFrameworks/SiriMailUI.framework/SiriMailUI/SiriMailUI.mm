uint64_t sub_267ADC090@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802108B0, &qword_267B18AD8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v5 = v38 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802108B8, &qword_267B18AE0);
  v6 = OUTLINED_FUNCTION_0(v41);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v10 = v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802108C0, &qword_267B18AE8);
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v16 = v38 - v15;
  sub_267ADC434(v1);
  v17 = *(v1 + 32);
  if (v17)
  {
    v18 = v17;
    v19 = sub_267B17880();
    v20 = sub_267B17880();
    v21 = sub_267B17660();
    if (v19)
    {
      *&v23 = 0.0;
    }

    else
    {
      *&v23 = 150.0;
    }

    v24 = *&v23;
    if (v19)
    {
      v24 = -INFINITY;
    }

    if (v20)
    {
      *&v25 = 0.0;
    }

    else
    {
      *&v25 = 300.0;
    }

    v26 = *&v25;
    if (v20)
    {
      v26 = v24;
    }

    if (v24 > v26)
    {
      v38[2] = v21;
      v38[1] = v22;
      sub_267B17AA0();
      v39 = v5;
      v27 = sub_267B17150();
      v40 = a1;
      v28 = v27;
      v5 = v39;
      sub_267B16B70();
    }

    sub_267B16DB0();
    sub_267ADCBB4(v5, v10, &qword_2802108B0, &qword_267B18AD8);
    memcpy(&v10[*(v41 + 36)], __src, 0x70uLL);
    v29 = sub_267B17880();

    if (v29)
    {
      sub_267B17890();
      v31 = v30;

      if (v31 > 1.0)
      {
        v32 = sub_267B17210();
LABEL_19:
        v33 = v32;
        KeyPath = swift_getKeyPath();
        sub_267ADCBB4(v10, v16, &qword_2802108B8, &qword_267B18AE0);
        v35 = &v16[*(v11 + 36)];
        *v35 = KeyPath;
        v35[1] = v33;
        sub_267ADCC14();
        memset(v42, 0, sizeof(v42));
        v43 = 0;
        sub_267B17390();
        sub_267ADCEDC(v42);
        return sub_267ADCF44(v16);
      }
    }

    else
    {
    }

    v32 = sub_267B17200();
    goto LABEL_19;
  }

  v37 = *(v1 + 40);
  sub_267B17910();
  sub_267ADC630();
  result = sub_267B16DF0();
  __break(1u);
  return result;
}

uint64_t sub_267ADC434(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802108E0, &qword_267B1AC40);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v10 - v5;
  v7 = *(a1 + 7);
  v13 = *(a1 + 6);
  v14 = v7;
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210908, &qword_267B18B28);
  sub_267B175E0();
  sub_267ADCFA4();
  sub_267B176A0();
  sub_267ADCE94(&qword_2802108E8, &qword_2802108E0, &qword_267B1AC40);
  sub_267B17460();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_267ADC5F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_267ADC090(a1);
}

unint64_t sub_267ADC630()
{
  result = qword_280211600;
  if (!qword_280211600)
  {
    sub_267B17910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211600);
  }

  return result;
}

uint64_t sub_267ADC6B4(uint64_t a1)
{
  v2 = sub_267B16C80();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_267B16E50();
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

uint64_t sub_267ADC7C8()
{
  sub_267B17910();
  sub_267ADC630();

  return sub_267B16E00();
}

uint64_t sub_267ADC814@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);

  return swift_storeEnumTagMultiPayload();
}

uint64_t variable initialization expression of SiriMailModel._focusedField@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_267B16850();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t variable initialization expression of SiriMailModel._state@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D5CA08];
  v3 = sub_267B16860();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t variable initialization expression of SiriMailModel.snippetService()
{
  v0 = sub_267B169A0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_267B169E0();
  sub_267B16990();
  return sub_267B169D0();
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

uint64_t sub_267ADCA38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_267ADCA78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_267ADCAE8(uint64_t a1, int a2)
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

uint64_t sub_267ADCB08(uint64_t result, int a2, int a3)
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

void sub_267ADCB44(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_267ADCBB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

unint64_t sub_267ADCC14()
{
  result = qword_2802108C8;
  if (!qword_2802108C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802108C0, &qword_267B18AE8);
    sub_267ADCD14();
    sub_267ADCE94(&qword_2802108F0, &qword_2802108F8, &qword_267B18B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802108C8);
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

unint64_t sub_267ADCD14()
{
  result = qword_2802108D0;
  if (!qword_2802108D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802108B8, &qword_267B18AE0);
    sub_267ADCDA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802108D0);
  }

  return result;
}

unint64_t sub_267ADCDA0()
{
  result = qword_2802108D8;
  if (!qword_2802108D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802108B0, &qword_267B18AD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802108E0, &qword_267B1AC40);
    sub_267ADCE94(&qword_2802108E8, &qword_2802108E0, &qword_267B1AC40);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802108D8);
  }

  return result;
}

uint64_t sub_267ADCE94(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_267ADCEDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210900, &qword_267B1AC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267ADCF44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802108C0, &qword_267B18AE8);
  OUTLINED_FUNCTION_0(v2);
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_267ADCFA4()
{
  result = qword_280210910;
  if (!qword_280210910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210910);
  }

  return result;
}

uint64_t sub_267ADCFF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802108C0, &qword_267B18AE8);
  sub_267ADCC14();
  return swift_getOpaqueTypeConformance2();
}

void sub_267ADD088(void *a1)
{
  [v1 setBaseFont_];
  v3 = [v1 labelView];
  [v3 setFont_];
}

id sub_267ADD108()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CFBC90]) init];
  sub_267ADD444();
  v3 = sub_267B17AF0();
  [v2 setLabelLeadingPadding_];

  v4 = sub_267B17AF0();
  [v2 setTrailingButtonMidlineInsetFromLayoutMargin_];

  v7.receiver = v1;
  v7.super_class = type metadata accessor for ComposeRecipientTextView();
  result = objc_msgSendSuper2(&v7, sel_initWithOptions_, v2);
  if (result)
  {
    v6 = result;

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_267ADD1FC(double a1, double a2, double a3, double a4)
{
  v12.receiver = v4;
  v12.super_class = type metadata accessor for ComposeRecipientTextView();
  v9 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 labelView];
  [v10 setAdjustsFontForContentSizeCategory_];

  v11 = [v9 textView];
  if (v11)
  {
    [v11 setAdjustsFontForContentSizeCategory_];
  }

  else
  {
    __break(1u);
  }
}

id sub_267ADD3EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComposeRecipientTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_267ADD444()
{
  result = qword_280210918;
  if (!qword_280210918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280210918);
  }

  return result;
}

uint64_t DisambiguateHandlesDataModel.init(contact:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210920, &qword_267B18B50);
  v4 = OUTLINED_FUNCTION_0(v57);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v53 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v56 = &v40 - v9;
  v10 = type metadata accessor for IndexedHandle(0);
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v54 = v12;
  v55 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v17 = (v16 - v15);
  v18 = sub_267B166C0();
  OUTLINED_FUNCTION_6(v18);
  v20 = v19;
  (*(v19 + 16))(a2, a1, v18);
  v21 = sub_267B166B0();
  v22 = *(v21 + 16);
  if (v22)
  {
    v40 = v20;
    v41 = v18;
    v42 = a1;
    v43 = a2;
    v58 = MEMORY[0x277D84F90];
    sub_267ADE7A8(0, v22, 0);
    v23 = v58;
    v52 = *(v21 + 16);
    v24 = sub_267B16680();
    v25 = 0;
    result = OUTLINED_FUNCTION_6(v24);
    v49 = v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v50 = v22;
    v47 = result;
    v48 = v27 + 16;
    v45 = v17;
    v46 = v27;
    v44 = v27 + 32;
    v51 = v21;
    while (v52 != v25)
    {
      if (v25 >= *(v21 + 16))
      {
        goto LABEL_12;
      }

      v29 = v56;
      v28 = v57;
      v30 = *(v57 + 48);
      v31 = v46;
      v32 = v47;
      v33 = *(v46 + 16);
      v33(&v56[v30], v49 + *(v46 + 72) * v25, v47);
      v34 = v53;
      *v53 = v25;
      v35 = *(v28 + 48);
      v36 = &v29[v30];
      v37 = v45;
      (*(v31 + 32))(v34 + v35, v36, v32);
      v33(v37 + *(v55 + 20), v34 + v35, v32);
      *v37 = v25;
      sub_267ADE800(v34);
      v58 = v23;
      v39 = *(v23 + 16);
      v38 = *(v23 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_267ADE7A8(v38 > 1, v39 + 1, 1);
        v23 = v58;
      }

      *(v23 + 16) = v39 + 1;
      result = sub_267ADE868(v37, v23 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v39);
      ++v25;
      v21 = v51;
      if (v50 == v25)
      {

        (*(v40 + 8))(v42, v41);
        a2 = v43;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    (*(v20 + 8))(a1, v18);
    v23 = MEMORY[0x277D84F90];
LABEL_10:
    result = type metadata accessor for DisambiguateHandlesDataModel(0);
    *(a2 + *(result + 20)) = v23;
  }

  return result;
}

uint64_t sub_267ADD830(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_267B17D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4864657865646E69 && a2 == 0xEE0073656C646E61)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B17D60();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_267ADD914(char a1)
{
  if (a1)
  {
    return 0x4864657865646E69;
  }

  else
  {
    return 0x746361746E6F63;
  }
}

uint64_t sub_267ADD960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267ADD830(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267ADD9A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267ADD900();
  *a1 = result;
  return result;
}

uint64_t sub_267ADD9D0(uint64_t a1)
{
  v2 = sub_267ADE968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267ADDA0C(uint64_t a1)
{
  v2 = sub_267ADE968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DisambiguateHandlesDataModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210928, &qword_267B18B58);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267ADE968();
  sub_267B17DC0();
  v19 = 0;
  sub_267B166C0();
  OUTLINED_FUNCTION_2();
  sub_267ADE9BC(v14, v15);
  OUTLINED_FUNCTION_9();
  if (!v2)
  {
    v18 = *(v3 + *(type metadata accessor for DisambiguateHandlesDataModel(0) + 20));
    v17[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210940, &qword_267B18B60);
    sub_267ADEA50(&qword_280210948, &qword_280210950);
    OUTLINED_FUNCTION_9();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t DisambiguateHandlesDataModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = sub_267B166C0();
  v4 = OUTLINED_FUNCTION_0_0(v30);
  v29 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210958, &qword_267B18B68);
  OUTLINED_FUNCTION_0_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  v15 = type metadata accessor for DisambiguateHandlesDataModel(0);
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267ADE968();
  sub_267B17DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_2();
  sub_267ADE9BC(v23, v24);
  sub_267B17CA0();
  (*(v29 + 32))(v21, v10, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210940, &qword_267B18B60);
  sub_267ADEA50(&qword_280210968, &qword_280210970);
  sub_267B17CA0();
  v25 = OUTLINED_FUNCTION_4();
  v26(v25);
  *(v21 + *(v15 + 20)) = v31;
  sub_267ADEAEC(v21, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_267ADEB50(v21);
}

uint64_t sub_267ADDFC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_267B17D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E6168 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B17D60();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_267ADE0C0(char a1)
{
  sub_267B17D80();
  MEMORY[0x26D600900](a1 & 1);
  return sub_267B17DA0();
}

uint64_t sub_267ADE108(char a1)
{
  if (a1)
  {
    return 0x656C646E6168;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_267ADE138(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802109B8, &qword_267B18D88);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267ADF0A8();
  sub_267B17DC0();
  v14 = *v3;
  v19[15] = 0;
  sub_267B17D10();
  if (!v2)
  {
    v15 = *(type metadata accessor for IndexedHandle(0) + 20);
    v19[14] = 1;
    sub_267B16680();
    OUTLINED_FUNCTION_3();
    sub_267ADE9BC(v16, v17);
    sub_267B17D20();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_267ADE2D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v37 = sub_267B16680();
  v4 = OUTLINED_FUNCTION_0_0(v37);
  v34 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802109D0, &qword_267B18D90);
  OUTLINED_FUNCTION_0_0(v38);
  v36 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v17 = type metadata accessor for IndexedHandle(0);
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v23 = (v22 - v21);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267ADF0A8();
  sub_267B17DB0();
  if (!v2)
  {
    v33 = v17;
    v25 = v36;
    v26 = v37;
    v40 = 0;
    v27 = v38;
    *v23 = sub_267B17C90();
    v39 = 1;
    OUTLINED_FUNCTION_3();
    sub_267ADE9BC(v28, v29);
    v32 = v10;
    sub_267B17CA0();
    (*(v25 + 8))(v16, v27);
    (*(v34 + 32))(v23 + *(v33 + 20), v32, v26);
    sub_267ADE868(v23, v35);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_267ADE5A4()
{
  v1 = *v0;
  sub_267B17D80();
  MEMORY[0x26D600900](v1);
  return sub_267B17DA0();
}

uint64_t sub_267ADE5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267ADDFC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267ADE618(uint64_t a1)
{
  v2 = sub_267ADF0A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267ADE654(uint64_t a1)
{
  v2 = sub_267ADF0A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267ADE6C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267ADDF98();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_267ADE6E8(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_0(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_7();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_7();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

size_t sub_267ADE7A8(size_t a1, int64_t a2, char a3)
{
  result = sub_267ADF224(a1, a2, a3, *v3, &qword_280210A00, &qword_267B18DB8, type metadata accessor for IndexedHandle, type metadata accessor for IndexedHandle);
  *v3 = result;
  return result;
}

uint64_t sub_267ADE800(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210920, &qword_267B18B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267ADE868(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexedHandle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267ADE8EC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

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

unint64_t sub_267ADE968()
{
  result = qword_280210930;
  if (!qword_280210930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210930);
  }

  return result;
}

uint64_t sub_267ADE9BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_267ADEA50(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210940, &qword_267B18B60);
    sub_267ADE9BC(a2, type metadata accessor for IndexedHandle);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267ADEAEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisambiguateHandlesDataModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267ADEB50(uint64_t a1)
{
  v2 = type metadata accessor for DisambiguateHandlesDataModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267ADEBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267B166C0();
  v7 = OUTLINED_FUNCTION_6(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_267ADECA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_267B166C0();
  result = OUTLINED_FUNCTION_6(v8);
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

void sub_267ADED48()
{
  sub_267B166C0();
  if (v0 <= 0x3F)
  {
    sub_267ADEDCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_267ADEDCC()
{
  if (!qword_280210988)
  {
    type metadata accessor for IndexedHandle(255);
    v0 = sub_267B17A00();
    if (!v1)
    {
      atomic_store(v0, &qword_280210988);
    }
  }
}

uint64_t sub_267ADEE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_267B16680();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_267ADEEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_267B16680();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_267ADEF18()
{
  result = sub_267B16680();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_267ADEFA4()
{
  result = qword_2802109A0;
  if (!qword_2802109A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802109A0);
  }

  return result;
}

unint64_t sub_267ADEFFC()
{
  result = qword_2802109A8;
  if (!qword_2802109A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802109A8);
  }

  return result;
}

unint64_t sub_267ADF054()
{
  result = qword_2802109B0;
  if (!qword_2802109B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802109B0);
  }

  return result;
}

unint64_t sub_267ADF0A8()
{
  result = qword_2802109C0;
  if (!qword_2802109C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802109C0);
  }

  return result;
}

size_t sub_267ADF0FC(size_t a1, int64_t a2, char a3)
{
  result = sub_267ADF224(a1, a2, a3, *v3, &qword_2802109F8, &qword_267B18DB0, type metadata accessor for IndexedContact, type metadata accessor for IndexedContact);
  *v3 = result;
  return result;
}

size_t sub_267ADF154(size_t a1, int64_t a2, char a3)
{
  result = sub_267ADF224(a1, a2, a3, *v3, &qword_2802109F0, &qword_267B18DA8, MEMORY[0x277D56040], MEMORY[0x277D56040]);
  *v3 = result;
  return result;
}

size_t sub_267ADF1AC(size_t a1, int64_t a2, char a3)
{
  result = sub_267ADF224(a1, a2, a3, *v3, &qword_2802109E8, &qword_267B18DA0, MEMORY[0x277D5CA58], MEMORY[0x277D5CA58]);
  *v3 = result;
  return result;
}

char *sub_267ADF204(char *a1, int64_t a2, char a3)
{
  result = sub_267ADF3E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_267ADF224(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = a7(0);
  OUTLINED_FUNCTION_6(v21);
  if (v11)
  {
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    sub_267ADE6E8(a4 + v23, v14, v19 + v23, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_267ADF3E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802109E0, &qword_267B18D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t getEnumTagSinglePayload for MailPluginModel.ReadMessagesCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_267ADF588(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x267ADF654);
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

unint64_t sub_267ADF6A4()
{
  result = qword_280210A08;
  if (!qword_280210A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210A08);
  }

  return result;
}

unint64_t sub_267ADF6FC()
{
  result = qword_280210A10;
  if (!qword_280210A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210A10);
  }

  return result;
}

unint64_t sub_267ADF754()
{
  result = qword_280210A18;
  if (!qword_280210A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210A18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9()
{

  return sub_267B17D20();
}

uint64_t DisambiguateHandlesView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for DisambiguateHandlesView() + 20));
  sub_267B17910();
  OUTLINED_FUNCTION_1_1();
  sub_267AE103C(v5, v6);
  *v4 = sub_267B16E00();
  v4[1] = v7;
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v8 = sub_267B16BA0();
  __swift_project_value_buffer(v8, static Logger.siriMail);
  v9 = sub_267B16B80();
  v10 = sub_267B17A80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_267ADA000, v9, v10, "Constructing DisambiguateHandlesView", v11, 2u);
    MEMORY[0x26D600E60](v11, -1, -1);
  }

  return sub_267AE126C(a1, a2, type metadata accessor for DisambiguateHandlesDataModel);
}

uint64_t type metadata accessor for DisambiguateHandlesView()
{
  result = qword_280210A30;
  if (!qword_280210A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DisambiguateHandlesView.body.getter()
{
  v1 = type metadata accessor for DisambiguateHandlesView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_267AE1084(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisambiguateHandlesView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_267AE126C(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for DisambiguateHandlesView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210A20, &qword_267B18ED0);
  sub_267ADCE94(&qword_280210A28, &qword_280210A20, &qword_267B18ED0);
  return sub_267B17710();
}

uint64_t sub_267ADFB98@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for DisambiguateHandlesView();
  v51 = *(v3 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210A58, "l,");
  v60 = *(v53 - 8);
  v5 = v60[8];
  v6 = MEMORY[0x28223BE20](v53);
  v58 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = &v46 - v8;
  v9 = sub_267B165F0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v52 = sub_267B17810();
  v55 = *(v52 - 8);
  v11 = v55[8];
  v12 = MEMORY[0x28223BE20](v52);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - v14;
  v56 = sub_267B17740();
  v50 = *(v56 - 8);
  v16 = v50;
  v17 = *(v50 + 64);
  v18 = MEMORY[0x28223BE20](v56);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v46 - v21;
  v49 = &v46 - v21;
  sub_267B17750();
  v23 = sub_267B16690();
  v73 = MEMORY[0x277D837D0];
  v74 = MEMORY[0x277D63F80];
  v71 = v23;
  v72 = v24;
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v64 = 0;
  v63 = 0u;
  v62 = 0u;
  sub_267B166A0();
  sub_267B165E0();

  v61[3] = sub_267B176F0();
  v61[4] = MEMORY[0x277D63B10];
  __swift_allocate_boxed_opaque_existential_1(v61);
  sub_267B17700();
  v47 = v15;
  sub_267B17800();
  *&v68 = *(a1 + *(type metadata accessor for DisambiguateHandlesDataModel(0) + 20));
  sub_267AE1084(a1, &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisambiguateHandlesView);
  v25 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v26 = swift_allocObject();
  sub_267AE126C(&v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for DisambiguateHandlesView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210940, &qword_267B18B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210A60, "~,");
  sub_267ADCE94(&qword_280210A68, &qword_280210940, &qword_267B18B60);
  v27 = sub_267B17830();
  v28 = sub_267AE103C(&qword_280210A70, MEMORY[0x277D63E28]);
  v71 = v27;
  v72 = v28;
  swift_getOpaqueTypeConformance2();
  sub_267AE103C(&qword_280210A78, type metadata accessor for IndexedHandle);
  v29 = v59;
  sub_267B17640();
  v30 = *(v16 + 16);
  v48 = v20;
  v31 = v56;
  v30(v20, v22, v56);
  v51 = v55[2];
  v32 = v57;
  v33 = v52;
  (v51)(v57, v15, v52);
  v46 = v60[2];
  v34 = v29;
  v35 = v53;
  v46(v58, v34, v53);
  v36 = v54;
  v30(v54, v20, v31);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210A80, &qword_267B18F68);
  (v51)(&v36[*(v37 + 48)], v32, v33);
  v38 = &v36[*(v37 + 64)];
  v39 = v58;
  v46(v38, v58, v35);
  v40 = v60[1];
  v41 = v35;
  v40(v59, v35);
  v42 = v55[1];
  v42(v47, v33);
  v43 = *(v50 + 8);
  v44 = v56;
  v43(v49, v56);
  v40(v39, v41);
  v42(v57, v33);
  return (v43)(v48, v44);
}

uint64_t sub_267AE035C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v33 = a3;
  v4 = type metadata accessor for IndexedHandle(0);
  v5 = v4 - 8;
  v30 = *(v4 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = type metadata accessor for DisambiguateHandlesView();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_267B17830();
  v10 = *(v9 - 8);
  v31 = v9;
  v32 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v5 + 28);
  v15 = sub_267B16670();
  v52 = MEMORY[0x277D837D0];
  v53 = MEMORY[0x277D63F80];
  v50 = v15;
  v51 = v16;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_267B16660();
  v17 = objc_opt_self();
  v18 = sub_267B17960();

  v19 = [v17 localizedStringForLabel_];

  v20 = sub_267B17980();
  v22 = v21;

  v45 = MEMORY[0x277D837D0];
  v46 = MEMORY[0x277D63F80];
  v43 = v20;
  v44 = v22;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  sub_267B17820();
  sub_267AE1084(v29, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DisambiguateHandlesView);
  sub_267AE1084(a1, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IndexedHandle);
  v23 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v24 = (v8 + *(v30 + 80) + v23) & ~*(v30 + 80);
  v25 = swift_allocObject();
  sub_267AE126C(&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v23, type metadata accessor for DisambiguateHandlesView);
  sub_267AE126C(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for IndexedHandle);
  sub_267AE103C(&qword_280210A70, MEMORY[0x277D63E28]);
  v26 = v31;
  sub_267B173B0();

  return (*(v32 + 8))(v13, v26);
}

void sub_267AE074C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for IndexedHandle(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = *a2;
  sub_267AE098C();
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v11 = sub_267B16BA0();
  __swift_project_value_buffer(v11, static Logger.siriMail);
  sub_267AE1084(a2, v9, type metadata accessor for IndexedHandle);
  sub_267AE1084(a2, v7, type metadata accessor for IndexedHandle);
  v12 = sub_267B16B80();
  v13 = sub_267B17A80();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    v16 = &v9[*(v3 + 20)];
    v17 = sub_267B16670();
    v19 = v18;
    sub_267AE1398(v9);
    v20 = sub_267B0BBF4(v17, v19, &v23);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2048;
    v21 = *v7;
    sub_267AE1398(v7);
    *(v14 + 14) = v21;
    _os_log_impl(&dword_267ADA000, v12, v13, "Tapped contact handle: %s at index=%ld", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x26D600E60](v15, -1, -1);
    MEMORY[0x26D600E60](v14, -1, -1);
  }

  else
  {
    sub_267AE1398(v7);

    sub_267AE1398(v9);
  }
}

uint64_t sub_267AE098C()
{
  v1 = sub_267B16600();
  v2 = v0 + *(type metadata accessor for DisambiguateHandlesView() + 20);
  if (*v2)
  {
    v3 = *v2;
    v4 = [v1 identifier];
    sub_267B17980();

    if (!sub_267AE42F8(v1))
    {
      sub_267B17930();
    }

    sub_267B17900();
  }

  else
  {
    v6 = *(v2 + 8);
    sub_267B17910();
    OUTLINED_FUNCTION_1_1();
    sub_267AE103C(v7, v8);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_267AE0B04@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for DisambiguateHandlesView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_267ADFB98(v4, a1);
}

uint64_t sub_267AE0BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DisambiguateHandlesDataModel(0);
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

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_267AE0C70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DisambiguateHandlesDataModel(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_267AE0D18()
{
  type metadata accessor for DisambiguateHandlesDataModel(319);
  if (v0 <= 0x3F)
  {
    sub_267AE0D9C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_267AE0D9C()
{
  if (!qword_280210A40)
  {
    sub_267B17910();
    sub_267AE103C(&qword_280211600, MEMORY[0x277D63F60]);
    v0 = sub_267B16E10();
    if (!v1)
    {
      atomic_store(v0, &qword_280210A40);
    }
  }
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

uint64_t objectdestroyTm()
{
  v2 = type metadata accessor for DisambiguateHandlesView();
  OUTLINED_FUNCTION_2_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_267B166C0();
  OUTLINED_FUNCTION_0(v8);
  (*(v9 + 8))(v1 + v5);
  v10 = *(v1 + v5 + *(type metadata accessor for DisambiguateHandlesDataModel(0) + 20));

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

uint64_t sub_267AE0FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DisambiguateHandlesView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_267AE035C(a1, v6, a2);
}

uint64_t sub_267AE103C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267AE1084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267AE10E4()
{
  v2 = type metadata accessor for DisambiguateHandlesView();
  OUTLINED_FUNCTION_2_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = (type metadata accessor for IndexedHandle(0) - 8);
  v9 = *(*v8 + 80);
  v10 = (v5 + v7 + v9) & ~v9;
  v11 = *(*v8 + 64);
  v12 = v4 | v9;
  v13 = sub_267B166C0();
  OUTLINED_FUNCTION_0(v13);
  (*(v14 + 8))(v1 + v5);
  v15 = *(v1 + v5 + *(type metadata accessor for DisambiguateHandlesDataModel(0) + 20));

  v16 = v1 + v8[7];
  v17 = sub_267B16680();
  OUTLINED_FUNCTION_0(v17);
  (*(v18 + 8))(v16 + v10);

  return MEMORY[0x2821FE8E8](v1, v10 + v11, v12 | 7);
}

uint64_t sub_267AE126C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void sub_267AE12CC()
{
  v1 = *(type metadata accessor for DisambiguateHandlesView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for IndexedHandle(0) - 8);
  v5 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  sub_267AE074C(v0 + v2, v5);
}

uint64_t sub_267AE1398(uint64_t a1)
{
  v2 = type metadata accessor for IndexedHandle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

SiriMailUI::DisambiguateRecipientsDataModel __swiftcall DisambiguateRecipientsDataModel.init(candidates:contactPickerButtonLabel:)(Swift::OpaquePointer candidates, Swift::String contactPickerButtonLabel)
{
  object = contactPickerButtonLabel._object;
  countAndFlagsBits = contactPickerButtonLabel._countAndFlagsBits;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210A88, &qword_267B18F80);
  v5 = *(*(v52 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v52);
  v48 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v51 = &v37 - v8;
  v9 = type metadata accessor for IndexedContact();
  v10 = OUTLINED_FUNCTION_0_0(v9);
  v49 = v11;
  v50 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v16 = (v15 - v14);
  v17 = *(candidates._rawValue + 2);
  if (v17)
  {
    v38 = countAndFlagsBits;
    v39 = object;
    v54 = MEMORY[0x277D84F90];
    sub_267ADF0FC(0, v17, 0);
    v18 = v54;
    v47 = *(candidates._rawValue + 2);
    v19 = sub_267B166C0();
    v22 = 0;
    v23 = *(v19 - 1);
    v44 = candidates._rawValue + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v45 = v17;
    v42 = v19;
    v43 = v23 + 16;
    v40 = v23 + 32;
    v41 = v23;
    rawValue = candidates._rawValue;
    while (v47 != v22)
    {
      if (v22 >= *(candidates._rawValue + 2))
      {
        goto LABEL_12;
      }

      v24 = v52;
      v25 = *(v52 + 48);
      v53 = v18;
      v26 = v41;
      v27 = v42;
      v28 = *(v41 + 16);
      v29 = v16;
      v30 = v51;
      v28(&v51[v25], &v44[*(v41 + 72) * v22], v42);
      v31 = v48;
      *v48 = v22;
      v32 = *(v24 + 48);
      v33 = *(v26 + 32);
      v18 = v53;
      v34 = &v30[v25];
      v16 = v29;
      v33(v31 + v32, v34, v27);
      v28(v29 + *(v50 + 20), (v31 + v32), v27);
      *v29 = v22;
      sub_267AE23DC(v31);
      v54 = v18;
      v36 = v18[2];
      v35 = v18[3];
      if (v36 >= v35 >> 1)
      {
        sub_267ADF0FC(v35 > 1, v36 + 1, 1);
        v18 = v54;
      }

      v18[2] = v36 + 1;
      v19 = sub_267AE2444(v29, v18 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v36);
      ++v22;
      candidates._rawValue = rawValue;
      if (v45 == v22)
      {

        countAndFlagsBits = v38;
        object = v39;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
LABEL_10:
    v19 = v18;
    v20 = countAndFlagsBits;
    v21 = object;
  }

  result.contactPickerButtonLabel._object = v21;
  result.contactPickerButtonLabel._countAndFlagsBits = v20;
  result.candidates._rawValue = v19;
  return result;
}

uint64_t type metadata accessor for IndexedContact()
{
  result = qword_280210AD0;
  if (!qword_280210AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267AE1788(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365;
  if (v4 || (sub_267B17D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000267B233C0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B17D60();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_267AE1860(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x74616469646E6163;
  }
}

uint64_t sub_267AE18A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267AE1788(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267AE18D0(uint64_t a1)
{
  v2 = sub_267AE24A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267AE190C(uint64_t a1)
{
  v2 = sub_267AE24A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DisambiguateRecipientsDataModel.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210A90, &qword_267B18F88);
  OUTLINED_FUNCTION_0_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267AE24A8();
  sub_267B17DC0();
  v20 = a2;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210AA0, &qword_267B18F90);
  sub_267AE24FC(&qword_280210AA8, &qword_280210AB0);
  sub_267B17D20();
  if (!v4)
  {
    v18 = 1;
    sub_267B17CF0();
  }

  return (*(v9 + 8))(v14, v7);
}

uint64_t DisambiguateRecipientsDataModel.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210AB8, &qword_267B18F98);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v6);
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_267AE24A8();
  sub_267B17DB0();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210AA0, &qword_267B18F90);
    sub_267AE24FC(&qword_280210AC0, &qword_280210AC8);
    sub_267B17CA0();
    v7 = v11;
    sub_267B17C70();
    v9 = OUTLINED_FUNCTION_2_1();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_267AE1D24@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DisambiguateRecipientsDataModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_267AE1DA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_267B17D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746361746E6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B17D60();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_267AE1E68(char a1)
{
  if (a1)
  {
    return 0x746361746E6F63;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_267AE1E9C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210AF8, &qword_267B191F0);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  v12 = &v19[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267AE28A4();
  sub_267B17DC0();
  v14 = *v3;
  v19[15] = 0;
  sub_267B17D10();
  if (!v2)
  {
    v15 = *(type metadata accessor for IndexedContact() + 20);
    v19[14] = 1;
    sub_267B166C0();
    OUTLINED_FUNCTION_1_2();
    sub_267AE28F8(v16, v17);
    sub_267B17D20();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_267AE2034@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v35 = sub_267B166C0();
  v4 = OUTLINED_FUNCTION_0_0(v35);
  v32 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210B08, &qword_267B191F8);
  OUTLINED_FUNCTION_0_0(v36);
  v34 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = type metadata accessor for IndexedContact();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v21 = (v20 - v19);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267AE28A4();
  sub_267B17DB0();
  if (!v2)
  {
    v31 = v17;
    v23 = v34;
    v24 = v35;
    v38 = 0;
    v25 = v36;
    *v21 = sub_267B17C90();
    v37 = 1;
    OUTLINED_FUNCTION_1_2();
    sub_267AE28F8(v26, v27);
    v30 = v10;
    sub_267B17CA0();
    (*(v23 + 8))(v16, v25);
    (*(v32 + 32))(v21 + *(v31 + 20), v30, v24);
    sub_267AE2444(v21, v33);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_267AE22E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267AE1DA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267AE230C(uint64_t a1)
{
  v2 = sub_267AE28A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267AE2348(uint64_t a1)
{
  v2 = sub_267AE28A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267AE23B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267AE1D74();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_267AE23DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210A88, &qword_267B18F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267AE2444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexedContact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_267AE24A8()
{
  result = qword_280210A98;
  if (!qword_280210A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210A98);
  }

  return result;
}

uint64_t sub_267AE24FC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210AA0, &qword_267B18F90);
    sub_267AE28F8(a2, type metadata accessor for IndexedContact);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_267AE25AC(uint64_t *a1, int a2)
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

uint64_t sub_267AE25EC(uint64_t result, int a2, int a3)
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

uint64_t sub_267AE2660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_267B166C0();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_267AE26C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_267B166C0();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_267AE2720()
{
  result = sub_267B166C0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_267AE27A0()
{
  result = qword_280210AE0;
  if (!qword_280210AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210AE0);
  }

  return result;
}

unint64_t sub_267AE27F8()
{
  result = qword_280210AE8;
  if (!qword_280210AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210AE8);
  }

  return result;
}

unint64_t sub_267AE2850()
{
  result = qword_280210AF0;
  if (!qword_280210AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210AF0);
  }

  return result;
}

unint64_t sub_267AE28A4()
{
  result = qword_280210B00;
  if (!qword_280210B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210B00);
  }

  return result;
}

uint64_t sub_267AE28F8(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_267AE2944(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x267AE2A10);
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

unint64_t sub_267AE2A4C()
{
  result = qword_280210B10;
  if (!qword_280210B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210B10);
  }

  return result;
}

unint64_t sub_267AE2AA4()
{
  result = qword_280210B18;
  if (!qword_280210B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210B18);
  }

  return result;
}

unint64_t sub_267AE2AFC()
{
  result = qword_280210B20;
  if (!qword_280210B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210B20);
  }

  return result;
}

void DisambiguateRecipientView.init(model:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_267B17910();
  OUTLINED_FUNCTION_0_1();
  sub_267AE4364(v8, v9);
  v10 = sub_267B16E00();
  v12 = v11;
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v13 = sub_267B16BA0();
  __swift_project_value_buffer(v13, static Logger.siriMail);
  v14 = sub_267B16B80();
  v15 = sub_267B17A80();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_267ADA000, v14, v15, "Constructing DisambiguateRecipientView", v16, 2u);
    MEMORY[0x26D600E60](v16, -1, -1);
  }

  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v10;
  a4[4] = v12;
}

uint64_t DisambiguateRecipientView.body.getter()
{
  v1 = *(v0 + 1);
  v8 = *v0;
  v6 = *(v0 + 3);
  v7 = v1;
  v2 = swift_allocObject();
  v3 = *(v0 + 1);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = v0[4];
  sub_267AE3F18(&v8, v5, &qword_280210AA0, &qword_267B18F90);
  sub_267AE3EBC(&v7, v5);
  sub_267AE3F18(&v6, v5, &qword_280210B28, &qword_267B19308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210B30, &qword_267B19310);
  sub_267ADCE94(&qword_280210B38, &qword_280210B30, &qword_267B19310);
  return sub_267B17710();
}

uint64_t sub_267AE2DF4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210B50, "j)");
  v3 = *(v34 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v34);
  v33 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v9 = sub_267B17740();
  v32 = *(v9 - 8);
  v10 = v32;
  v11 = *(v32 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v31 = &v29 - v15;
  sub_267B17750();
  v17 = *(a1 + 1);
  v40 = *a1;
  v37 = v40;
  v38 = *(a1 + 3);
  v39 = v17;
  v18 = swift_allocObject();
  v19 = *(a1 + 1);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v19;
  *(v18 + 48) = a1[4];

  sub_267AE3F18(&v40, v36, &qword_280210AA0, &qword_267B18F90);
  sub_267AE3EBC(&v39, v36);
  sub_267AE3F18(&v38, v36, &qword_280210B28, &qword_267B19308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210AA0, &qword_267B18F90);
  sub_267ADCE94(&qword_280210B58, &qword_280210AA0, &qword_267B18F90);
  sub_267AE4364(&qword_280210B60, type metadata accessor for IndexedContact);
  v29 = v8;
  sub_267B17640();
  v20 = *(v10 + 16);
  v30 = v14;
  v20(v14, v16, v9);
  v21 = v3[2];
  v22 = v33;
  v23 = v34;
  v21(v33, v8, v34);
  v24 = v35;
  v20(v35, v14, v9);
  v25 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210B68, &qword_267B193D0) + 48)];
  v21(v25, v22, v23);
  v26 = v3[1];
  v26(v29, v23);
  v27 = *(v32 + 8);
  v27(v31, v9);
  v26(v22, v23);
  return (v27)(v30, v9);
}

uint64_t sub_267AE31F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a3;
  v5 = type metadata accessor for IndexedContact();
  v6 = v5 - 8;
  v34[0] = *(v5 - 8);
  v7 = *(v34[0] + 64);
  MEMORY[0x28223BE20](v5);
  v34[1] = v8;
  v35 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_267B165F0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_267B17790();
  v37 = *(v11 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210B70, &qword_267B193D8);
  v36 = *(v38 - 8);
  v15 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v17 = v34 - v16;
  v18 = *(v6 + 28);
  v19 = sub_267B16690();
  v60 = MEMORY[0x277D837D0];
  v61 = MEMORY[0x277D63F80];
  *&v59 = v19;
  *(&v59 + 1) = v20;
  v21 = sub_267AE36AC();
  if (v22)
  {
    v23 = MEMORY[0x277D63F80];
    v24 = MEMORY[0x277D837D0];
  }

  else
  {
    v21 = 0;
    v24 = 0;
    v23 = 0;
    v56 = 0;
  }

  *&v55 = v21;
  *(&v55 + 1) = v22;
  v57 = v24;
  v58 = v23;
  memset(v54, 0, 40);
  memset(v53, 0, 40);
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_267B166A0();
  sub_267B165E0();

  v40[3] = sub_267B176F0();
  v40[4] = MEMORY[0x277D63B10];
  __swift_allocate_boxed_opaque_existential_1(v40);
  sub_267B17700();
  sub_267B17780();
  v25 = *a2;
  v59 = *(a2 + 1);
  v53[0] = v25;
  v55 = *(a2 + 3);
  v26 = v35;
  sub_267AE40DC(a1, v35);
  v27 = (*(v34[0] + 80) + 56) & ~*(v34[0] + 80);
  v28 = swift_allocObject();
  v29 = *(a2 + 1);
  *(v28 + 16) = *a2;
  *(v28 + 32) = v29;
  *(v28 + 48) = a2[4];
  sub_267AE2444(v26, v28 + v27);
  sub_267AE3F18(v53, v54, &qword_280210AA0, &qword_267B18F90);
  sub_267AE3EBC(&v59, v54);
  sub_267AE3F18(&v55, v54, &qword_280210B28, &qword_267B19308);
  v30 = sub_267AE4364(&qword_280210B78, MEMORY[0x277D63D08]);
  sub_267B173B0();

  (*(v37 + 8))(v14, v11);
  v54[0] = v11;
  v54[1] = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v38;
  v32 = sub_267B17350();
  result = (*(v36 + 8))(v17, v31);
  *v39 = v32;
  return result;
}

uint64_t sub_267AE36AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210B80, &unk_267B193E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v42 = &v42 - v2;
  v52 = sub_267B16640();
  v3 = OUTLINED_FUNCTION_0_0(v52);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_2();
  v55 = v8;
  MEMORY[0x28223BE20](v9);
  v54 = &v42 - v10;
  v11 = sub_267B16680();
  v12 = OUTLINED_FUNCTION_0_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  result = sub_267B166B0();
  v22 = result;
  v23 = 0;
  v56 = *(result + 16);
  v51 = v14 + 16;
  v50 = *MEMORY[0x277D56008];
  v48 = (v5 + 8);
  v49 = (v5 + 104);
  v46 = (v14 + 8);
  v53 = v14;
  v43 = (v14 + 32);
  v45 = MEMORY[0x277D84F90];
  v47 = result;
  while (1)
  {
    if (v56 == v23)
    {

      if (*(v45 + 16) == 1)
      {
        v40 = v42;
        sub_267AED9B8(v45, v42);

        if (__swift_getEnumTagSinglePayload(v40, 1, v11) != 1)
        {
          v41 = sub_267B16670();
          (*v46)(v40, v11);
          return v41;
        }

        sub_267AE43AC(v40);
      }

      else
      {
      }

      return 0;
    }

    if (v23 >= *(v22 + 16))
    {
      break;
    }

    v24 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v25 = *(v53 + 72);
    (*(v53 + 16))(v20, v22 + v24 + v25 * v23, v11);
    v26 = v54;
    sub_267B16650();
    v27 = v20;
    v28 = v55;
    v29 = v23;
    v30 = v52;
    (*v49)(v55, v50, v52);
    sub_267AE4364(&qword_280210B88, MEMORY[0x277D56020]);
    sub_267B179D0();
    sub_267B179D0();
    v31 = *v48;
    (*v48)(v28, v30);
    v31(v26, v30);
    if (v58 == v57)
    {
      v32 = v29;
      v33 = *v43;
      (*v43)(v44, v27, v11);
      v34 = v45;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v34;
      v20 = v27;
      v36 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_267ADF154(0, *(v34 + 16) + 1, 1);
        v34 = v59;
      }

      v22 = v47;
      v38 = *(v34 + 16);
      v37 = *(v34 + 24);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        sub_267ADF154(v37 > 1, v38 + 1, 1);
        v39 = v38 + 1;
        v34 = v59;
      }

      v23 = v32 + 1;
      *(v34 + 16) = v39;
      v45 = v34;
      result = v36(v34 + v24 + v38 * v25, v44, v11);
    }

    else
    {
      result = (*v46)(v27, v11);
      v23 = v29 + 1;
      v20 = v27;
      v22 = v47;
    }
  }

  __break(1u);
  return result;
}

void sub_267AE3B60(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for IndexedContact();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = *a2;
  sub_267AE3D84();
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v11 = sub_267B16BA0();
  __swift_project_value_buffer(v11, static Logger.siriMail);
  sub_267AE40DC(a2, v9);
  sub_267AE40DC(a2, v7);
  v12 = sub_267B16B80();
  v13 = sub_267B17A80();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315394;
    v16 = &v9[*(v3 + 20)];
    v17 = sub_267B16690();
    v19 = v18;
    sub_267AE429C(v9);
    v20 = sub_267B0BBF4(v17, v19, &v23);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2048;
    v21 = *v7;
    sub_267AE429C(v7);
    *(v14 + 14) = v21;
    _os_log_impl(&dword_267ADA000, v12, v13, "Tapped contact: %s at index=%ld", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x26D600E60](v15, -1, -1);
    MEMORY[0x26D600E60](v14, -1, -1);
  }

  else
  {
    sub_267AE429C(v7);

    sub_267AE429C(v9);
  }
}

uint64_t sub_267AE3D84()
{
  v1 = sub_267B16600();
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = [v3 identifier];
    sub_267B17980();

    if (!sub_267AE42F8(v3))
    {
      sub_267B17930();
    }

    sub_267B17900();
  }

  else
  {
    v7 = *(v0 + 32);
    sub_267B17910();
    OUTLINED_FUNCTION_0_1();
    sub_267AE4364(v8, v9);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

uint64_t sub_267AE3F18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
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

uint64_t sub_267AE3FB0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_267AE3FF0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_267AE40DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexedContact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267AE4140()
{
  v1 = (type metadata accessor for IndexedContact() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 32);

  v7 = v0 + v1[7];
  v8 = sub_267B166C0();
  (*(*(v8 - 8) + 8))(v7 + v3, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_267AE4238()
{
  v1 = *(type metadata accessor for IndexedContact() - 8);
  v2 = (v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80)));

  sub_267AE3B60(v0 + 16, v2);
}

uint64_t sub_267AE429C(uint64_t a1)
{
  v2 = type metadata accessor for IndexedContact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267AE42F8(void *a1)
{
  v1 = [a1 userData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267B17920();

  return v3;
}

uint64_t sub_267AE4364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267AE43AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210B80, &unk_267B193E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MailPluginModel.asEncoreEvent.getter()
{
  v1 = v0;
  v2 = sub_267B16560();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v10 = v9 - v8;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210BA0, &qword_267B193F0) - 8) + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  v14 = v48 - v13;
  v15 = type metadata accessor for MailPluginModel();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v48[0] = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v48 - v21;
  v23 = sub_267B16780();
  v24 = OUTLINED_FUNCTION_0_0(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_0();
  v31 = v30 - v29;
  v48[1] = v1;
  sub_267AE4938(v1, v22);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_12();
      v47 = 28;
      break;
    case 2u:
      OUTLINED_FUNCTION_12();
      v47 = 32;
      break;
    case 3u:
      OUTLINED_FUNCTION_12();
      v47 = 34;
      break;
    default:
      v32 = sub_267B16950();
      OUTLINED_FUNCTION_0(v32);
      (*(v33 + 32))(v31, v22);
      (*(v26 + 104))(v31, *MEMORY[0x277D5C928], v23);
      v49[3] = v23;
      v49[4] = sub_267AE6D44(&qword_280210BA8, MEMORY[0x277D5C970]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
      (*(v26 + 16))(boxed_opaque_existential_1, v31, v23);
      sub_267B16990();
      v35 = sub_267B169A0();
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v35);
      sub_267B16550();
      sub_267B16540();
      (*(v5 + 8))(v10, v2);
      v36 = objc_allocWithZone(sub_267B16980());
      v37 = sub_267B16970();
      v38 = *(v26 + 8);
      v39 = OUTLINED_FUNCTION_15();
      v40(v39);
      return v37;
  }

  static Logger.logAndCrash(_:file:line:)(v42, v43, v44, v45, v46, v47);
  __break(1u);
  JUMPOUT(0x267AE48DCLL);
}

uint64_t type metadata accessor for MailPluginModel()
{
  result = qword_280210CA0;
  if (!qword_280210CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267AE4938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailPluginModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static MailPluginModel.bundleName.getter()
{
  swift_beginAccess();
  v0 = static MailPluginModel.bundleName;

  return v0;
}

uint64_t static MailPluginModel.bundleName.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  static MailPluginModel.bundleName = a1;
  off_280210B98 = a2;
}

uint64_t MailPluginModel.snippetHidden(for:idiom:)()
{
  v1 = sub_267B16710();
  v2 = OUTLINED_FUNCTION_0_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = type metadata accessor for MailPluginModel();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  sub_267AE4938(v0, v15 - v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_267AE5CF8(v16, type metadata accessor for MailPluginModel);
  if (EnumCaseMultiPayload > 1)
  {
    v18 = 0;
  }

  else
  {
    (*(v4 + 104))(v9, *MEMORY[0x277D61BE8], v1);
    v18 = sub_267B16700();
    (*(v4 + 8))(v9, v1);
  }

  return v18 & 1;
}

uint64_t sub_267AE4C30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373654D646E6573 && a2 == 0xEB00000000656761;
  if (v4 || (sub_267B17D60() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7373654D64616572 && a2 == 0xEC00000073656761;
    if (v6 || (sub_267B17D60() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x8000000267B23570 == a2;
      if (v7 || (sub_267B17D60() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000013 && 0x8000000267B23590 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_267B17D60();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_267AE4DDC(unsigned __int8 a1)
{
  sub_267B17D80();
  MEMORY[0x26D600900](a1);
  return sub_267B17DA0();
}

unint64_t sub_267AE4E24(char a1)
{
  result = 0x7373654D646E6573;
  switch(a1)
  {
    case 1:
      result = 0x7373654D64616572;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267AE4F10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_267B17D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6554686372616573 && a2 == 0xEA00000000006D72)
  {

    return 1;
  }

  else
  {
    v7 = sub_267B17D60();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_267AE4FD8(char a1)
{
  if (a1)
  {
    return 0x6554686372616573;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_267AE5008(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_267B17D60();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_267AE5078()
{
  sub_267B17D80();
  MEMORY[0x26D600900](0);
  return sub_267B17DA0();
}

uint64_t sub_267AE50E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267AE4C30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267AE5108@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267AE4D9C();
  *a1 = result;
  return result;
}

uint64_t sub_267AE5130(uint64_t a1)
{
  v2 = sub_267AE5C50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267AE516C(uint64_t a1)
{
  v2 = sub_267AE5C50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267AE51D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267AE5008(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_267AE5218@<X0>(_BYTE *a1@<X8>)
{
  result = sub_267AE4ED4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_267AE5244(uint64_t a1)
{
  v2 = sub_267AE5CA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267AE5280(uint64_t a1)
{
  v2 = sub_267AE5CA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267AE52BC(uint64_t a1)
{
  v2 = sub_267AE5D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267AE52F8(uint64_t a1)
{
  v2 = sub_267AE5D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267AE5344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267AE4F10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267AE536C(uint64_t a1)
{
  v2 = sub_267AE5DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267AE53A8(uint64_t a1)
{
  v2 = sub_267AE5DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267AE53E4()
{
  sub_267B17D80();
  MEMORY[0x26D600900](0);
  return sub_267B17DA0();
}

uint64_t sub_267AE5424(uint64_t a1)
{
  v2 = sub_267AE5E4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267AE5460(uint64_t a1)
{
  v2 = sub_267AE5E4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MailPluginModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210BB0, &qword_267B193F8);
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v103 = v4;
  v104 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_0();
  v102 = v8;
  v98 = type metadata accessor for DisambiguateHandlesDataModel(0);
  v9 = OUTLINED_FUNCTION_0(v98);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v101 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210BB8, &qword_267B19400);
  v15 = OUTLINED_FUNCTION_0_0(v14);
  v95 = v16;
  v96 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_0();
  v94 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210BC0, &qword_267B19408);
  v22 = OUTLINED_FUNCTION_0_0(v21);
  v99 = v23;
  v100 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_0();
  v97 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210BC8, &qword_267B19410);
  v29 = OUTLINED_FUNCTION_0_0(v28);
  v92 = v30;
  v93 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v33);
  v35 = &v89 - v34;
  v91 = sub_267B16950();
  v36 = OUTLINED_FUNCTION_0_0(v91);
  v90 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  v42 = v41 - v40;
  v43 = type metadata accessor for MailPluginModel();
  v44 = OUTLINED_FUNCTION_0(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_0();
  v49 = (v48 - v47);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210BD0, &qword_267B19418);
  OUTLINED_FUNCTION_0_0(v108);
  v106 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v53);
  v54 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_267AE5C50();
  sub_267B17DC0();
  sub_267AE4938(v105, v49);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v78 = *v49;
      v79 = v49[1];
      v80 = v49[2];
      LOBYTE(v109) = 1;
      sub_267AE5DF8();
      sub_267B17CC0();
      v109 = v78;
      v112 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210C08, &qword_267B19420);
      sub_267AE6BD0(&qword_280210C10, &qword_280210C18);
      v81 = v107;
      sub_267B17D20();
      if (v81)
      {

        v82 = OUTLINED_FUNCTION_8_0();
        v83(v82);
        v84 = OUTLINED_FUNCTION_13();
        v85(v84);
      }

      LOBYTE(v109) = 1;
      sub_267B17CD0();

      v87 = OUTLINED_FUNCTION_8_0();
      v88(v87);
      v60 = OUTLINED_FUNCTION_13();
      return v61(v60, v62);
    case 2u:
      v63 = *v49;
      v64 = v49[1];
      v65 = v49[2];
      LOBYTE(v109) = 2;
      sub_267AE5D50();
      v66 = v94;
      v67 = v108;
      sub_267B17CC0();
      v109 = v63;
      v110 = v64;
      v111 = v65;
      sub_267AE5DA4();
      v68 = v96;
      sub_267B17D20();
      (*(v95 + 8))(v66, v68);
      v69 = OUTLINED_FUNCTION_11();
      v70(v69, v67);

    case 3u:
      v71 = v101;
      sub_267AE6B1C(v49, v101, type metadata accessor for DisambiguateHandlesDataModel);
      LOBYTE(v109) = 3;
      sub_267AE5CA4();
      v72 = v102;
      v73 = v108;
      sub_267B17CC0();
      OUTLINED_FUNCTION_5();
      sub_267AE6D44(v74, v75);
      v76 = v104;
      sub_267B17D20();
      OUTLINED_FUNCTION_4_0();
      v77(v72, v76);
      sub_267AE5CF8(v71, type metadata accessor for DisambiguateHandlesDataModel);
      v60 = OUTLINED_FUNCTION_11();
      v62 = v73;
      return v61(v60, v62);
    default:
      v55 = v90;
      v56 = v91;
      (*(v90 + 32))(v42, v49, v91);
      LOBYTE(v109) = 0;
      sub_267AE5E4C();
      sub_267B17CC0();
      OUTLINED_FUNCTION_7_0();
      sub_267AE6D44(v57, v58);
      v59 = v93;
      sub_267B17D20();
      (*(v92 + 8))(v35, v59);
      (*(v55 + 8))(v42, v56);
      v60 = OUTLINED_FUNCTION_11();
      v62 = v108;
      return v61(v60, v62);
  }
}

unint64_t sub_267AE5C50()
{
  result = qword_280210BD8;
  if (!qword_280210BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210BD8);
  }

  return result;
}

unint64_t sub_267AE5CA4()
{
  result = qword_280210BE0;
  if (!qword_280210BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210BE0);
  }

  return result;
}

uint64_t sub_267AE5CF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_267AE5D50()
{
  result = qword_280210BF0;
  if (!qword_280210BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210BF0);
  }

  return result;
}

unint64_t sub_267AE5DA4()
{
  result = qword_280210BF8;
  if (!qword_280210BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210BF8);
  }

  return result;
}

unint64_t sub_267AE5DF8()
{
  result = qword_280210C00;
  if (!qword_280210C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210C00);
  }

  return result;
}

unint64_t sub_267AE5E4C()
{
  result = qword_280210C20;
  if (!qword_280210C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210C20);
  }

  return result;
}

uint64_t MailPluginModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210C30, &qword_267B19428);
  OUTLINED_FUNCTION_0_0(v133);
  v127 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_0();
  v132 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210C38, &qword_267B19430);
  v9 = OUTLINED_FUNCTION_0_0(v8);
  v124 = v10;
  v125 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_0();
  v129 = v14;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210C40, &qword_267B19438);
  OUTLINED_FUNCTION_0_0(v126);
  v131 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9_0();
  v136 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210C48, &qword_267B19440);
  v21 = OUTLINED_FUNCTION_0_0(v20);
  v122 = v22;
  v123 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_0();
  v128 = v26;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210C50, &qword_267B19448);
  OUTLINED_FUNCTION_0_0(v137);
  v134 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v30);
  v32 = &v116 - v31;
  v135 = type metadata accessor for MailPluginModel();
  v33 = OUTLINED_FUNCTION_0(v135);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v116 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v116 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v116 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v116 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v116 - v48;
  v50 = a1[3];
  v51 = a1[4];
  v138 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v50);
  sub_267AE5C50();
  v52 = v139;
  sub_267B17DB0();
  if (v52)
  {
    return __swift_destroy_boxed_opaque_existential_1(v138);
  }

  v121 = v47;
  v118 = v41;
  v119 = v38;
  v117 = v44;
  v120 = v49;
  v53 = v135;
  v139 = v32;
  v54 = sub_267B17CB0();
  v58 = sub_267AE6A58(v54, 0);
  if (v56 == v57 >> 1)
  {
    goto LABEL_8;
  }

  v116 = 0;
  if (v56 >= (v57 >> 1))
  {
    __break(1u);
    JUMPOUT(0x267AE69BCLL);
  }

  v59 = *(v55 + v56);
  sub_267AE6AA0(v56 + 1, v57 >> 1, v58, v55, v56, v57);
  v61 = v60;
  v63 = v62;
  swift_unknownObjectRelease();
  v64 = v131;
  if (v61 != v63 >> 1)
  {
LABEL_8:
    v70 = sub_267B17BA0();
    swift_allocError();
    v72 = v71;
    v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210C58, &qword_267B19450) + 48);
    *v72 = v53;
    v74 = v137;
    v75 = v139;
    sub_267B17C40();
    sub_267B17B90();
    (*(*(v70 - 8) + 104))(v72, *MEMORY[0x277D84160], v70);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_4_0();
    v76(v75, v74);
    return __swift_destroy_boxed_opaque_existential_1(v138);
  }

  v65 = v116;
  v66 = v130;
  switch(v59)
  {
    case 1:
      LOBYTE(v140) = 1;
      sub_267AE5DF8();
      v81 = v137;
      v82 = v139;
      sub_267B17C30();
      if (v65)
      {
        OUTLINED_FUNCTION_4_0();
        v69 = v82;
        v80 = v81;
        goto LABEL_17;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210C08, &qword_267B19420);
      v142 = 0;
      sub_267AE6BD0(&qword_280210C70, &qword_280210C78);
      sub_267B17CA0();
      v104 = v140;
      v142 = 1;
      v105 = sub_267B17C50();
      v106 = (v64 + 8);
      v107 = (v134 + 8);
      v116 = 0;
      v108 = v105;
      v110 = v109;
      swift_unknownObjectRelease();
      v111 = *v106;
      v112 = OUTLINED_FUNCTION_15();
      v113(v112);
      (*v107)(v139, v137);
      v114 = v117;
      *v117 = v104;
      v114[1] = v108;
      v114[2] = v110;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_3();
      v97 = v114;
      goto LABEL_23;
    case 2:
      LOBYTE(v140) = 2;
      sub_267AE5D50();
      OUTLINED_FUNCTION_10();
      v78 = v139;
      sub_267B17C30();
      if (v65)
      {
        OUTLINED_FUNCTION_4_0();
        v69 = v78;
        goto LABEL_14;
      }

      sub_267AE6B7C();
      sub_267B17CA0();
      v83 = v134;
      v116 = 0;
      swift_unknownObjectRelease();
      v89 = OUTLINED_FUNCTION_16();
      v90(v89);
      (*(v83 + 8))(v78, v64);
      v91 = v141;
      v92 = v118;
      *v118 = v140;
      *(v92 + 16) = v91;
      goto LABEL_22;
    case 3:
      LOBYTE(v140) = 3;
      sub_267AE5CA4();
      OUTLINED_FUNCTION_10();
      v79 = v139;
      sub_267B17C30();
      if (v65)
      {
        OUTLINED_FUNCTION_4_0();
        v69 = v79;
        goto LABEL_14;
      }

      type metadata accessor for DisambiguateHandlesDataModel(0);
      OUTLINED_FUNCTION_5();
      sub_267AE6D44(v84, v85);
      v86 = v119;
      sub_267B17CA0();
      v116 = 0;
      swift_unknownObjectRelease();
      v93 = OUTLINED_FUNCTION_8_0();
      v94(v93);
      OUTLINED_FUNCTION_4_0();
      v95(v79, v64);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_3();
      v97 = v86;
LABEL_23:
      v101 = v120;
      sub_267AE6B1C(v97, v120, v96);
      v103 = v138;
      v66 = v130;
      goto LABEL_24;
    default:
      LOBYTE(v140) = 0;
      sub_267AE5E4C();
      OUTLINED_FUNCTION_10();
      v67 = v139;
      sub_267B17C30();
      if (v65)
      {
        OUTLINED_FUNCTION_4_0();
        v69 = v67;
LABEL_14:
        v80 = v64;
LABEL_17:
        v68(v69, v80);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v138);
      }

      sub_267B16950();
      OUTLINED_FUNCTION_7_0();
      sub_267AE6D44(v87, v88);
      sub_267B17CA0();
      v116 = 0;
      swift_unknownObjectRelease();
      v98 = OUTLINED_FUNCTION_14();
      v99(v98);
      OUTLINED_FUNCTION_4_0();
      v100(v67, v64);
      v92 = v121;
LABEL_22:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_1_3();
      v101 = v120;
      sub_267AE6B1C(v92, v120, v102);
      v103 = v138;
LABEL_24:
      OUTLINED_FUNCTION_1_3();
      sub_267AE6B1C(v101, v66, v115);
      result = __swift_destroy_boxed_opaque_existential_1(v103);
      break;
  }

  return result;
}

uint64_t sub_267AE69D0()
{
  swift_beginAccess();
  v0 = static MailPluginModel.bundleName;

  return v0;
}

uint64_t sub_267AE6A58(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_267AE6AA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_267AE6B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_267AE6B7C()
{
  result = qword_280210C68;
  if (!qword_280210C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210C68);
  }

  return result;
}

uint64_t sub_267AE6BD0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210C08, &qword_267B19420);
    sub_267AE6D44(a2, type metadata accessor for WidgetMessage);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267AE6D44(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_267AE6D94()
{
  sub_267B16950();
  if (v0 <= 0x3F)
  {
    sub_267AE6E24();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DisambiguateHandlesDataModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_267AE6E24()
{
  if (!qword_280210CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210C08, &qword_267B19420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210CB8, &qword_267B19538);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280210CB0);
    }
  }
}

uint64_t getEnumTagSinglePayload for MailPluginModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MailPluginModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x267AE7004);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MailPluginModel.ReadMessagesCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x267AE7134);
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

uint64_t sub_267AE717C(unsigned int *a1, int a2)
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

_BYTE *sub_267AE71CC(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x267AE7268);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_267AE72A4()
{
  result = qword_280210CC0;
  if (!qword_280210CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210CC0);
  }

  return result;
}

unint64_t sub_267AE72FC()
{
  result = qword_280210CC8;
  if (!qword_280210CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210CC8);
  }

  return result;
}

unint64_t sub_267AE7354()
{
  result = qword_280210CD0;
  if (!qword_280210CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210CD0);
  }

  return result;
}

unint64_t sub_267AE73AC()
{
  result = qword_280210CD8;
  if (!qword_280210CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210CD8);
  }

  return result;
}

unint64_t sub_267AE7404()
{
  result = qword_280210CE0;
  if (!qword_280210CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210CE0);
  }

  return result;
}

unint64_t sub_267AE745C()
{
  result = qword_280210CE8;
  if (!qword_280210CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210CE8);
  }

  return result;
}

unint64_t sub_267AE74B4()
{
  result = qword_280210CF0;
  if (!qword_280210CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210CF0);
  }

  return result;
}

unint64_t sub_267AE750C()
{
  result = qword_280210CF8;
  if (!qword_280210CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210CF8);
  }

  return result;
}

unint64_t sub_267AE7564()
{
  result = qword_280210D00;
  if (!qword_280210D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D00);
  }

  return result;
}

unint64_t sub_267AE75BC()
{
  result = qword_280210D08;
  if (!qword_280210D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D08);
  }

  return result;
}

unint64_t sub_267AE7614()
{
  result = qword_280210D10;
  if (!qword_280210D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D10);
  }

  return result;
}

unint64_t sub_267AE766C()
{
  result = qword_280210D18;
  if (!qword_280210D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D18);
  }

  return result;
}

unint64_t sub_267AE76C4()
{
  result = qword_280210D20;
  if (!qword_280210D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D20);
  }

  return result;
}

unint64_t sub_267AE771C()
{
  result = qword_280210D28;
  if (!qword_280210D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D28);
  }

  return result;
}

unint64_t sub_267AE7774()
{
  result = qword_280210D30;
  if (!qword_280210D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D30);
  }

  return result;
}

const char *sub_267AE78C8(unsigned __int8 a1)
{
  v1 = "ResponseFramework";
  if (!a1)
  {
    v1 = "SiriMail";
  }

  if (a1 - 2 >= 2)
  {
    return v1;
  }

  else
  {
    return "Mail";
  }
}

const char *sub_267AE7910(char a1)
{
  result = "SceneHosting";
  switch(a1)
  {
    case 1:
      result = "SMART";
      break;
    case 2:
      result = "BlackPearl";
      break;
    case 3:
      result = "CatchUp";
      break;
    default:
      return result;
  }

  return result;
}

Swift::Bool __swiftcall MailUIFeatureFlags.isSceneHostingEnabled()()
{
  v0 = sub_267B16710();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16[-1] - v6;
  v17 = &type metadata for Features;
  v8 = sub_267AE7B88();
  v18 = v8;
  LOBYTE(v16[0]) = 1;
  v9 = sub_267B16630();
  __swift_destroy_boxed_opaque_existential_1(v16);
  if (v9 & 1) != 0 && (v17 = &type metadata for Features, v18 = v8, LOBYTE(v16[0]) = 0, v10 = sub_267B16630(), __swift_destroy_boxed_opaque_existential_1(v16), (v10))
  {
    sub_267B166F0();
    sub_267B166E0();
    sub_267B166D0();

    sub_267B16720();

    (*(v1 + 104))(v5, *MEMORY[0x277D61BE8], v0);
    sub_267AE7BDC();
    v11 = sub_267B17950();
    v12 = *(v1 + 8);
    v12(v5, v0);
    v12(v7, v0);
    v13 = v11 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

unint64_t sub_267AE7B88()
{
  result = qword_280210D38;
  if (!qword_280210D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D38);
  }

  return result;
}

unint64_t sub_267AE7BDC()
{
  result = qword_280210D40;
  if (!qword_280210D40)
  {
    sub_267B16710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D40);
  }

  return result;
}

uint64_t sub_267AE7C44(char a1)
{
  v4[3] = &type metadata for Features;
  v4[4] = sub_267AE7B88();
  LOBYTE(v4[0]) = a1;
  v2 = sub_267B16630();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

_BYTE *storeEnumTagSinglePayload for Features(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x267AE7D78);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267AE7DB4()
{
  result = qword_280210D48;
  if (!qword_280210D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210D48);
  }

  return result;
}

uint64_t MessageDetailView.init(_:numberOfSummaryLines:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_267B17910();
  sub_267AEC278(&qword_280211600, MEMORY[0x277D63F60]);
  *a3 = sub_267B16E00();
  *(a3 + 8) = v6;
  sub_267B17550();
  *(a3 + 16) = v28;
  *(a3 + 24) = v29;
  v7 = type metadata accessor for MessageDetailView();
  v8 = v7[12];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
  swift_storeEnumTagMultiPayload();
  sub_267AEB3B4(a1, a3 + v7[6], type metadata accessor for WidgetMessage);
  v9 = type metadata accessor for WidgetMessage();
  v10 = (a1 + v9[20]);
  v12 = *v10;
  v11 = v10[1];
  v13 = (a3 + v7[8]);
  *v13 = v12;
  v13[1] = v11;
  v14 = (a1 + v9[21]);
  v15 = *v14;
  v16 = v14[1];
  v17 = (a3 + v7[9]);
  *v17 = v15;
  v17[1] = v16;
  v18 = (a1 + v9[19]);
  v19 = *v18;
  v20 = v18[1];
  v21 = (a3 + v7[10]);
  *v21 = v19;
  v21[1] = v20;
  v22 = *a1;
  v23 = a1[1];

  String.uniqueIdentifier.getter(v22);
  if (qword_280210868 != -1)
  {
    swift_once();
  }

  v24 = qword_280210D58;
  v25 = sub_267B17960();

  v26 = [v24 messageForSearchableItemIdentifier_];

  result = sub_267AEB1F8(a1);
  *(a3 + v7[7]) = v26;
  *(a3 + v7[11]) = a2;
  return result;
}

uint64_t type metadata accessor for MessageDetailView()
{
  result = qword_280210DC0;
  if (!qword_280210DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t String.uniqueIdentifier.getter(uint64_t a1)
{
  v4 = sub_267B164E0();
  v5 = OUTLINED_FUNCTION_6_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  sub_267B164D0();
  sub_267ADCFA4();
  v10 = sub_267B17B10();
  (*(v7 + 8))(v2, v1);
  v11 = sub_267AEB36C(v10);
  v13 = v12;

  if (v13)
  {
    return v11;
  }

  return a1;
}

uint64_t MessageDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210D60, &qword_267B19C58);
  v4 = OUTLINED_FUNCTION_0(v47);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210D68, &qword_267B19C60);
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = type metadata accessor for MessageDetailView();
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210D70, &qword_267B19C68);
  v19 = OUTLINED_FUNCTION_0(v46);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v44 - v22;
  v24 = *(v2 + *(v16 + 32) + 56);
  v25 = sub_267B17050();
  if (v24)
  {
    *v8 = v25;
    *(v8 + 1) = 0;
    v8[16] = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DA0, &qword_267B19C80);
    v45 = a1;
    v27 = *(v26 + 44);
    OUTLINED_FUNCTION_3_0();
    v28 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v29 = swift_allocObject();
    sub_267AEB418(&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DA8, &qword_267B19C88);
    OUTLINED_FUNCTION_1_4();
    sub_267ADCE94(v30, v31, &qword_267B19C88);
    sub_267B17710();
    v32 = &qword_280210D60;
    v33 = &qword_267B19C58;
    sub_267AEBA8C(v8, v14, &qword_280210D60, &qword_267B19C58);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_3();
    sub_267ADCE94(v34, v35, v36);
    sub_267ADCE94(&qword_280210D98, &qword_280210D60, &qword_267B19C58);
    sub_267B17080();
    v37 = v8;
  }

  else
  {
    *v23 = v25;
    *(v23 + 1) = 0;
    v23[16] = 1;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210D78, &qword_267B19C70) + 44);
    OUTLINED_FUNCTION_3_0();
    v38 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v39 = swift_allocObject();
    sub_267AEB418(&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v39 + v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210D80, &qword_267B19C78);
    OUTLINED_FUNCTION_1_4();
    sub_267ADCE94(v40, v41, &qword_267B19C78);
    sub_267B17710();
    v32 = &qword_280210D70;
    v33 = &qword_267B19C68;
    sub_267AEBA8C(v23, v14, &qword_280210D70, &qword_267B19C68);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_3();
    sub_267ADCE94(v42, &qword_280210D70, &qword_267B19C68);
    sub_267ADCE94(&qword_280210D98, &qword_280210D60, &qword_267B19C58);
    sub_267B17080();
    v37 = v23;
  }

  return sub_267AEC1D4(v37, v32, v33);
}

uint64_t sub_267AE8644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = sub_267B17730();
  v87 = *(v3 - 8);
  v88 = v3;
  v4 = *(v87 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v85 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v84 = &v72[-v7];
  v77 = sub_267B172D0();
  v76 = *(v77 - 8);
  v8 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = &v72[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DF8, &qword_267B19D10);
  v11 = *(v10 - 8);
  v78 = v10 - 8;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v72[-v13];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E00, &qword_267B19D18);
  v15 = *(*(v80 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v80);
  v82 = &v72[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v79 = &v72[-v19];
  MEMORY[0x28223BE20](v18);
  v81 = &v72[-v20];
  v21 = type metadata accessor for MessageDetailView();
  v22 = a1 + *(v21 + 24);
  v23 = type metadata accessor for MessageView();
  sub_267AEB3B4(v22, v14 + v23[5], type metadata accessor for WidgetMessage);
  v24 = *(v21 + 44);
  v83 = a1;
  v74 = *(a1 + v24);
  v25 = type metadata accessor for WidgetMessage();
  v73 = *(v22 + v25[10]);
  v26 = v25[32];
  v27 = (v22 + v25[31]);
  v28 = *v27;
  v29 = v27[1];
  v30 = *(v22 + v26);
  v31 = *(v22 + v26 + 8);
  v32 = (v22 + v25[33]);
  v34 = *v32;
  v33 = v32[1];
  sub_267B17910();
  sub_267AEC278(&qword_280211600, MEMORY[0x277D63F60]);

  *v14 = sub_267B16E00();
  v14[1] = v35;
  *(v14 + v23[6]) = v74;
  *(v14 + v23[7]) = v73;
  v36 = (v14 + v23[8]);
  *v36 = v28;
  v36[1] = v29;
  v37 = (v14 + v23[9]);
  *v37 = v30;
  v37[1] = v31;
  v38 = (v14 + v23[10]);
  *v38 = v34;
  v38[1] = v33;
  v39 = v23[11];
  v92 = 0x4030000000000000;
  (*(v76 + 104))(v75, *MEMORY[0x277CE0A58], v77);
  sub_267AEB9E0();
  sub_267B16CC0();
  v40 = (v14 + v23[12]);
  v89 = 0;
  sub_267B17550();
  v41 = v93;
  *v40 = v92;
  v40[1] = v41;
  v42 = (v14 + v23[13]);
  v89 = 0;
  sub_267B17550();
  v43 = v93;
  *v42 = v92;
  v42[1] = v43;
  v44 = (v14 + v23[14]);
  v89 = 0;
  sub_267B17550();
  v45 = v93;
  *v44 = v92;
  v44[1] = v45;
  v46 = v23[15];
  *(v14 + v46) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E10, &unk_267B19D50);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v46) = sub_267B171A0();
  sub_267B16C00();
  v47 = v14 + *(v78 + 44);
  *v47 = v46;
  *(v47 + 1) = v48;
  *(v47 + 2) = v49;
  *(v47 + 3) = v50;
  *(v47 + 4) = v51;
  v47[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E18, &qword_267B1A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267B19C10;
  LOBYTE(v34) = sub_267B17180();
  *(inited + 32) = v34;
  v53 = sub_267B171C0();
  *(inited + 33) = v53;
  v54 = sub_267B171B0();
  sub_267B171B0();
  if (sub_267B171B0() != v34)
  {
    v54 = sub_267B171B0();
  }

  sub_267B171B0();
  if (sub_267B171B0() != v53)
  {
    v54 = sub_267B171B0();
  }

  v55 = v79;
  sub_267AEBA3C(v14, v79, &qword_280210DF8, &qword_267B19D10);
  v56 = &v55[*(v80 + 36)];
  *v56 = v54;
  *(v56 + 8) = 0u;
  *(v56 + 24) = 0u;
  v56[40] = 1;
  v57 = v81;
  sub_267AEBA3C(v55, v81, &qword_280210E00, &qword_267B19D18);
  v58 = sub_267AE8D90();
  v59 = MEMORY[0x277CE11C8];
  v60 = MEMORY[0x277D63A60];
  v94 = MEMORY[0x277CE11C8];
  v95 = MEMORY[0x277D63A60];
  v92 = v58;
  v61 = sub_267AE92C4();
  v90 = v59;
  v91 = v60;
  v89 = v61;
  v62 = v84;
  sub_267B17720();
  v63 = v82;
  sub_267AEBA8C(v57, v82, &qword_280210E00, &qword_267B19D18);
  v65 = v87;
  v64 = v88;
  v66 = *(v87 + 16);
  v67 = v85;
  v66(v85, v62, v88);
  v68 = v86;
  sub_267AEBA8C(v63, v86, &qword_280210E00, &qword_267B19D18);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E20, &qword_267B19D60);
  v66((v68 + *(v69 + 48)), v67, v64);
  v70 = *(v65 + 8);
  v70(v62, v64);
  sub_267AEC1D4(v57, &qword_280210E00, &qword_267B19D18);
  v70(v67, v64);
  return sub_267AEC1D4(v63, &qword_280210E00, &qword_267B19D18);
}

uint64_t sub_267AE8D90()
{
  v1 = v0;
  v2 = sub_267B176E0();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MessageDetailView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E28, &qword_267B19D68);
  v11 = *(v10 - 8);
  v38 = v10;
  v39 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E30, &qword_267B19D70);
  v15 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v17 = &v35 - v16;
  v18 = (v1 + *(v7 + 44));
  v19 = *v18;
  v20 = v18[1];
  sub_267AEB3B4(v1, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessageDetailView);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  sub_267AEB418(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v44[0] = v19;
  v44[1] = v20;
  v41 = v44;
  v42 = 0xD000000000000017;
  v43 = 0x8000000267B23630;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E38, &qword_267B19D78);
  sub_267ADCE94(&qword_280210E40, &qword_280210E38, &qword_267B19D78);
  sub_267B175A0();

  v24 = v36;
  v23 = v37;
  (*(v36 + 104))(v5, *MEMORY[0x277D63A88], v37);
  v44[0] = sub_267B17490();
  sub_267B16D30();
  v25 = [objc_opt_self() secondarySystemBackgroundColor];
  v44[0] = sub_267B17470();
  sub_267B16D30();
  sub_267ADCE94(&qword_280210E48, &qword_280210E28, &qword_267B19D68);
  v26 = v38;
  sub_267B17360();

  (*(v24 + 8))(v5, v23);
  (*(v39 + 8))(v14, v26);
  v27 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E50, &qword_267B19D80) + 36)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
  v29 = *MEMORY[0x277CE1050];
  v30 = sub_267B17530();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = swift_getKeyPath();
  v31 = &v17[*(v40 + 36)];
  v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E60, &qword_267B19DC0) + 28);
  sub_267B16DC0();
  *v31 = swift_getKeyPath();
  sub_267AEBBA4();
  v33 = sub_267B17350();
  sub_267AEBD84(v17);
  return v33;
}

uint64_t sub_267AE92C4()
{
  v1 = v0;
  v34 = sub_267B176E0();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MessageDetailView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E28, &qword_267B19D68);
  v11 = *(v10 - 8);
  v35 = v10;
  v36 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E30, &qword_267B19D70);
  v15 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v17 = &v34 - v16;
  v18 = (v1 + *(v7 + 48));
  v19 = *v18;
  v20 = v18[1];
  sub_267AEB3B4(v1, &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessageDetailView);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  sub_267AEB418(&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v40[0] = v19;
  v40[1] = v20;
  v38 = v40;
  strcpy(v39, "envelope.open");
  v39[7] = -4864;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E38, &qword_267B19D78);
  sub_267ADCE94(&qword_280210E40, &qword_280210E38, &qword_267B19D78);
  sub_267B175A0();

  v23 = v34;
  (*(v2 + 104))(v5, *MEMORY[0x277D63A88], v34);
  v40[0] = sub_267B17490();
  sub_267B16D30();
  v24 = [objc_opt_self() secondarySystemBackgroundColor];
  v40[0] = sub_267B17470();
  sub_267B16D30();
  sub_267ADCE94(&qword_280210E48, &qword_280210E28, &qword_267B19D68);
  v25 = v35;
  sub_267B17360();

  (*(v2 + 8))(v5, v23);
  (*(v36 + 8))(v14, v25);
  v26 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E50, &qword_267B19D80) + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
  v28 = *MEMORY[0x277CE1050];
  v29 = sub_267B17530();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = swift_getKeyPath();
  v30 = &v17[*(v37 + 36)];
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E60, &qword_267B19DC0) + 28);
  sub_267B16DC0();
  *v30 = swift_getKeyPath();
  sub_267AEBBA4();
  v32 = sub_267B17350();
  sub_267AEBD84(v17);
  return v32;
}

uint64_t sub_267AE9800@<X0>(char *a1@<X8>)
{
  v47 = a1;
  v51 = sub_267B17730();
  v49 = *(v51 - 8);
  v1 = v49[8];
  v2 = MEMORY[0x28223BE20](v51);
  v50 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - v4;
  v46 = sub_267B17790();
  v48 = *(v46 - 8);
  v6 = v48[8];
  v7 = MEMORY[0x28223BE20](v46);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v9;
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = sub_267B17870();
  v45 = *(v12 - 8);
  v13 = v45;
  v14 = *(v45 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v44 = &v38 - v18;
  sub_267AE9BCC(&v38 - v18);
  v42 = v11;
  sub_267AEA37C(v11);
  v40 = v5;
  sub_267AEA740();
  v20 = *(v13 + 16);
  v43 = v17;
  v21 = v19;
  v22 = v12;
  v41 = v12;
  v20(v17, v21, v12);
  v38 = v48[2];
  v23 = v46;
  v38(v9, v11, v46);
  v24 = v50;
  v25 = v49[2];
  v25(v50, v5, v51);
  v26 = v47;
  v20(v47, v17, v22);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E88, &qword_267B19DF8);
  v28 = v39;
  v38(&v26[*(v27 + 48)], v39, v23);
  v29 = &v26[*(v27 + 64)];
  v30 = v51;
  v25(v29, v24, v51);
  v31 = v49[1];
  v32 = v30;
  v31(v40, v30);
  v33 = v48[1];
  v34 = v23;
  v33(v42, v23);
  v35 = *(v45 + 8);
  v36 = v41;
  v35(v44, v41);
  v31(v50, v32);
  v33(v28, v34);
  return (v35)(v43, v36);
}

uint64_t sub_267AE9BCC@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v2 = sub_267B165C0();
  v98 = *(v2 - 8);
  v99 = v2;
  v3 = *(v98 + 64);
  MEMORY[0x28223BE20](v2);
  v97 = v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_267B165F0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v90 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_267B176F0();
  v94 = *(v96 - 8);
  v8 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  v92 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EB8, &qword_267B19E18);
  v93 = *(v95 - 8);
  v10 = *(v93 + 64);
  MEMORY[0x28223BE20](v95);
  v91 = v88 - v11;
  v12 = sub_267B17000();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v1 + *(type metadata accessor for MessageDetailView() + 24);
  v15 = *(v14 + 24);
  v101 = v14;
  if (v15)
  {
    v16 = *(v14 + 16);
    v17 = v15;
  }

  else
  {
    v18 = (v14 + *(type metadata accessor for WidgetMessage() + 124));
    v16 = *v18;
    v19 = v18[1];
  }

  v128 = v16;
  v129 = v17;
  v88[1] = sub_267ADCFA4();

  v20 = sub_267B17340();
  v22 = v21;
  v24 = v23;
  sub_267B17240();
  v25 = sub_267B172F0();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_267AEC140(v20, v22, v24 & 1);

  v130 = MEMORY[0x277CE0BD8];
  v131 = MEMORY[0x277D638E0];
  v32 = swift_allocObject();
  v128 = v32;
  *(v32 + 16) = v25;
  *(v32 + 24) = v27;
  *(v32 + 32) = v29 & 1;
  *(v32 + 40) = v31;
  sub_267B16FF0();
  sub_267B16FE0();
  v89 = type metadata accessor for WidgetMessage();
  v33 = (v101 + *(v89 + 68));
  v34 = *v33;
  v35 = v33[1];
  sub_267B16FD0();
  sub_267B16FE0();
  sub_267B17020();
  v36 = sub_267B17330();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = MEMORY[0x277CE0BD8];
  v126 = MEMORY[0x277CE0BD8];
  v44 = MEMORY[0x277D638E0];
  v127 = MEMORY[0x277D638E0];
  v45 = swift_allocObject();
  v125 = v45;
  *(v45 + 16) = v36;
  *(v45 + 24) = v38;
  *(v45 + 32) = v40 & 1;
  *(v45 + 40) = v42;
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  sub_267B17010();
  v46 = sub_267B17330();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v120 = v43;
  v121 = v44;
  v53 = swift_allocObject();
  v119 = v53;
  *(v53 + 16) = v46;
  *(v53 + 24) = v48;
  *(v53 + 32) = v50 & 1;
  *(v53 + 40) = v52;
  v118 = 0;
  v116 = 0u;
  v117 = 0u;
  v115 = 0;
  v113 = 0u;
  v114 = 0u;
  v112 = 0;
  v110 = 0u;
  v111 = 0u;
  v106 = sub_267B12470();
  v107 = v54;
  v55 = sub_267B17340();
  v57 = v56;
  v59 = v58;
  v106 = sub_267B174A0();
  v60 = sub_267B17310();
  v62 = v61;
  LOBYTE(v20) = v63;
  sub_267AEC140(v55, v57, v59 & 1);

  sub_267B17290();
  v64 = sub_267B17320();
  v66 = v65;
  LOBYTE(v52) = v67;

  sub_267AEC140(v60, v62, v20 & 1);

  sub_267B17230();
  v68 = sub_267B172F0();
  v70 = v69;
  LOBYTE(v22) = v71;
  v73 = v72;
  sub_267AEC140(v64, v66, v52 & 1);

  v108 = MEMORY[0x277CE0BD8];
  v109 = MEMORY[0x277D638E0];
  v74 = swift_allocObject();
  v106 = v74;
  *(v74 + 16) = v68;
  *(v74 + 24) = v70;
  *(v74 + 32) = v22 & 1;
  *(v74 + 40) = v73;
  v75 = (v101 + *(v89 + 64));
  v76 = *v75;
  v77 = v75[1];
  sub_267B165E0();
  v78 = v92;
  sub_267B17700();
  v80 = v97;
  v79 = v98;
  v81 = v99;
  (*(v98 + 104))(v97, *MEMORY[0x277D62B38], v99);
  v82 = sub_267AEC278(&qword_280210EC0, MEMORY[0x277D63B20]);
  v83 = v91;
  v84 = v96;
  sub_267B17380();
  (*(v79 + 8))(v80, v81);
  (*(v94 + 8))(v78, v84);
  v102 = v84;
  v103 = v82;
  swift_getOpaqueTypeConformance2();
  v85 = v95;
  v86 = sub_267B17350();
  (*(v93 + 8))(v83, v85);
  v104 = MEMORY[0x277CE11C8];
  v105 = MEMORY[0x277D63A60];
  v102 = v86;
  return sub_267B17860();
}

uint64_t sub_267AEA37C@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E98, &qword_267B19E08);
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v38 - v4;
  v5 = *(type metadata accessor for MessageDetailView() + 24);
  v39 = v1;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 40);
  if (v7)
  {
    v8 = *(v6 + 32);
    v9 = v7;
  }

  else
  {
    v10 = (v6 + *(type metadata accessor for WidgetMessage() + 128));
    v8 = *v10;
    v11 = v10[1];
  }

  __dst[0] = v8;
  __dst[1] = v9;
  sub_267ADCFA4();

  v12 = sub_267B17340();
  v14 = v13;
  v16 = v15;
  sub_267B17260();
  v17 = sub_267B17320();
  v19 = v18;
  v21 = v20;

  sub_267AEC140(v12, v14, v16 & 1);

  sub_267B17220();
  v22 = sub_267B172F0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_267AEC140(v17, v19, v21 & 1);

  v29 = sub_267B17190();
  v71 = v26 & 1;
  v70 = 1;
  v68[0] = v22;
  v68[1] = v24;
  LOBYTE(v68[2]) = v26 & 1;
  v68[3] = v28;
  LOBYTE(v68[4]) = v29;
  memset(&v68[5], 0, 32);
  LOBYTE(v68[9]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EA0, &qword_267B19E10);
  sub_267AEC150();
  v30 = sub_267B17350();
  memcpy(__dst, v68, 0x49uLL);
  v31 = sub_267AEC1D4(__dst, &qword_280210EA0, &qword_267B19E10);
  v32 = MEMORY[0x277CE11C8];
  v33 = MEMORY[0x277D63A60];
  v68[3] = MEMORY[0x277CE11C8];
  v68[4] = MEMORY[0x277D63A60];
  v68[0] = v30;
  MEMORY[0x28223BE20](v31);
  sub_267B17160();
  v34 = v40;
  sub_267B16C60();
  sub_267ADCE94(&qword_280210EB0, &qword_280210E98, &qword_267B19E08);
  v35 = v42;
  v36 = sub_267B17350();
  (*(v41 + 8))(v34, v35);
  v66 = v32;
  v67 = v33;
  v64 = 0;
  v65 = v36;
  v62 = 0u;
  v63 = 0u;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  return sub_267B17780();
}

uint64_t sub_267AEA740()
{
  sub_267AE8D90();
  sub_267AEA8C4();
  return sub_267B17720();
}

uint64_t sub_267AEA7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for MessageDetailView() + 24);
  if (*(v3 + 72))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v5 = (v3 + *(type metadata accessor for WidgetMessage() + 132));
    v7 = *v5;
    v6 = v5[1];
  }

  sub_267ADCFA4();

  v8 = sub_267B17340();
  v10 = v9;
  v12 = v11;
  sub_267B17290();
  v13 = sub_267B17320();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_267AEC140(v8, v10, v12 & 1);

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  return result;
}

uint64_t sub_267AEA8C4()
{
  v1 = v0;
  v34 = sub_267B176E0();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v34);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MessageDetailView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E28, &qword_267B19D68);
  v11 = *(v10 - 8);
  v35 = v10;
  v36 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E30, &qword_267B19D70);
  v15 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v17 = &v34 - v16;
  v18 = (v1 + *(v7 + 40));
  v19 = *v18;
  v20 = v18[1];
  sub_267AEB3B4(v1, &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessageDetailView);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  sub_267AEB418(&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v41[0] = v19;
  v41[1] = v20;
  v38 = v41;
  v39 = 0x6873617274;
  v40 = 0xE500000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E38, &qword_267B19D78);
  sub_267ADCE94(&qword_280210E40, &qword_280210E38, &qword_267B19D78);
  sub_267B175A0();

  v23 = v34;
  (*(v2 + 104))(v5, *MEMORY[0x277D63A88], v34);
  v41[0] = sub_267B17490();
  sub_267B16D30();
  v24 = [objc_opt_self() secondarySystemBackgroundColor];
  v41[0] = sub_267B17470();
  sub_267B16D30();
  sub_267ADCE94(&qword_280210E48, &qword_280210E28, &qword_267B19D68);
  v25 = v35;
  sub_267B17360();

  (*(v2 + 8))(v5, v23);
  (*(v36 + 8))(v14, v25);
  v26 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E50, &qword_267B19D80) + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E58, &qword_267B19D88) + 28);
  v28 = *MEMORY[0x277CE1050];
  v29 = sub_267B17530();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = swift_getKeyPath();
  v30 = &v17[*(v37 + 36)];
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E60, &qword_267B19DC0) + 28);
  sub_267B16DC0();
  *v30 = swift_getKeyPath();
  sub_267AEBBA4();
  v32 = sub_267B17350();
  sub_267AEBD84(v17);
  return v32;
}

uint64_t sub_267AEADF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
  sub_267B17560();
  sub_267B17570();

  if (*a1)
  {
    v4 = *a1;
    sub_267B17930();
    sub_267B17900();
  }

  else
  {
    v6 = *(a1 + 8);
    sub_267B17910();
    sub_267AEC278(&qword_280211600, MEMORY[0x277D63F60]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

uint64_t sub_267AEAF58(uint64_t a1)
{
  if (*a1)
  {
    v1 = *a1;
    sub_267B17930();
    sub_267B17900();
  }

  else
  {
    v3 = *(a1 + 8);
    sub_267B17910();
    sub_267AEC278(&qword_280211600, MEMORY[0x277D63F60]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

uint64_t sub_267AEB04C(uint64_t a1)
{
  if (*a1)
  {
    v1 = *a1;
    sub_267B17930();
    sub_267B17900();
  }

  else
  {
    v3 = *(a1 + 8);
    sub_267B17910();
    sub_267AEC278(&qword_280211600, MEMORY[0x277D63F60]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

id sub_267AEB144()
{
  result = [objc_allocWithZone(MEMORY[0x277D06D78]) init];
  qword_280210D50 = result;
  return result;
}

void sub_267AEB178()
{
  if (qword_280210860 != -1)
  {
    swift_once();
  }

  v0 = qword_280210D50;
  v1 = [v0 messageRepository];

  qword_280210D58 = v1;
}

uint64_t sub_267AEB1F8(uint64_t a1)
{
  v2 = type metadata accessor for WidgetMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t String.mailMessageID.getter(uint64_t a1)
{
  v4 = sub_267B164E0();
  v5 = OUTLINED_FUNCTION_6_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  sub_267B164D0();
  sub_267ADCFA4();
  v10 = sub_267B17B10();
  (*(v7 + 8))(v2, v1);
  if (v10[2])
  {
    a1 = v10[4];
    v11 = v10[5];
  }

  else
  {
  }

  return a1;
}

uint64_t sub_267AEB36C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_267AEB3B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267AEB418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageDetailView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267AEB4AC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MessageDetailView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_267AEB560(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for WidgetMessage();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[6];
LABEL_8:

    return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
    v8 = a3[12];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[7]);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_267AEB650(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for WidgetMessage();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[6];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
    v10 = a4[12];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

void sub_267AEB728()
{
  sub_267AE0D9C();
  if (v0 <= 0x3F)
  {
    sub_267AEB810();
    if (v1 <= 0x3F)
    {
      type metadata accessor for WidgetMessage();
      if (v2 <= 0x3F)
      {
        sub_267AEB860();
        if (v3 <= 0x3F)
        {
          sub_267AEB8A4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_267AEB810()
{
  if (!qword_280210DD0)
  {
    v0 = sub_267B17590();
    if (!v1)
    {
      atomic_store(v0, &qword_280210DD0);
    }
  }
}

unint64_t sub_267AEB860()
{
  result = qword_280210DD8;
  if (!qword_280210DD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280210DD8);
  }

  return result;
}

void sub_267AEB8A4()
{
  if (!qword_280210DE0)
  {
    sub_267B16C80();
    v0 = sub_267B16C90();
    if (!v1)
    {
      atomic_store(v0, &qword_280210DE0);
    }
  }
}

unint64_t sub_267AEB900()
{
  result = qword_280210DE8;
  if (!qword_280210DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210DF0, &qword_267B19D08);
    sub_267ADCE94(&qword_280210D90, &qword_280210D70, &qword_267B19C68);
    sub_267ADCE94(&qword_280210D98, &qword_280210D60, &qword_267B19C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210DE8);
  }

  return result;
}

unint64_t sub_267AEB9E0()
{
  result = qword_280210E08;
  if (!qword_280210E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210E08);
  }

  return result;
}

uint64_t sub_267AEBA3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_7_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_267AEBA8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_7_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_267AEBAF4()
{
  sub_267ADCFA4();

  return sub_267B17540();
}

uint64_t sub_267AEBB74(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return sub_267AEBAF4();
}

uint64_t sub_267AEBB88()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_267AEBB74(*(v0 + 16));
}

unint64_t sub_267AEBBA4()
{
  result = qword_280210E68;
  if (!qword_280210E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210E30, &qword_267B19D70);
    sub_267AEBC5C();
    sub_267ADCE94(&qword_280210E80, &qword_280210E60, &qword_267B19DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210E68);
  }

  return result;
}

unint64_t sub_267AEBC5C()
{
  result = qword_280210E70;
  if (!qword_280210E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210E50, &qword_267B19D80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210E28, &qword_267B19D68);
    sub_267ADCE94(&qword_280210E48, &qword_280210E28, &qword_267B19D68);
    swift_getOpaqueTypeConformance2();
    sub_267ADCE94(&qword_280210E78, &qword_280210E58, &qword_267B19D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210E70);
  }

  return result;
}

uint64_t sub_267AEBD84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E30, &qword_267B19D70);
  OUTLINED_FUNCTION_0(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for MessageDetailView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 24);

  v7 = (v0 + v3 + v1[6]);
  v8 = *(v7 + 1);

  v9 = *(v7 + 3);

  v10 = *(v7 + 5);

  v11 = *(v7 + 7);

  v12 = *(v7 + 9);

  v13 = type metadata accessor for WidgetMessage();
  v14 = v13[9];
  v15 = sub_267B16530();
  OUTLINED_FUNCTION_0(v15);
  (*(v16 + 8))(&v7[v14]);
  v17 = v13[14];
  v18 = sub_267B16500();
  if (!__swift_getEnumTagSinglePayload(&v7[v17], 1, v18))
  {
    (*(*(v18 - 8) + 8))(&v7[v17], v18);
  }

  OUTLINED_FUNCTION_4_1(v13[16]);
  OUTLINED_FUNCTION_4_1(v13[17]);
  OUTLINED_FUNCTION_4_1(v13[19]);
  OUTLINED_FUNCTION_4_1(v13[20]);
  OUTLINED_FUNCTION_4_1(v13[21]);
  OUTLINED_FUNCTION_4_1(v13[22]);
  OUTLINED_FUNCTION_4_1(v13[23]);
  OUTLINED_FUNCTION_4_1(v13[24]);
  OUTLINED_FUNCTION_4_1(v13[25]);
  OUTLINED_FUNCTION_4_1(v13[26]);
  OUTLINED_FUNCTION_4_1(v13[27]);
  OUTLINED_FUNCTION_4_1(v13[28]);
  OUTLINED_FUNCTION_4_1(v13[29]);
  OUTLINED_FUNCTION_4_1(v13[30]);
  OUTLINED_FUNCTION_4_1(v13[31]);
  OUTLINED_FUNCTION_4_1(v13[32]);
  OUTLINED_FUNCTION_4_1(v13[33]);

  v19 = *(v5 + v1[8] + 8);

  v20 = *(v5 + v1[9] + 8);

  v21 = *(v5 + v1[10] + 8);

  v22 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_267B16C80();
    OUTLINED_FUNCTION_0(v23);
    (*(v24 + 8))(v5 + v22);
  }

  else
  {
    v25 = *(v5 + v22);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267AEC0CC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MessageDetailView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_267AEC140(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_267AEC150()
{
  result = qword_280210EA8;
  if (!qword_280210EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210EA0, &qword_267B19E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210EA8);
  }

  return result;
}

uint64_t sub_267AEC1D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_267AEC234()
{
  sub_267AEC140(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_267AEC278(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_3_0()
{

  return sub_267AEB3B4(v0, v1, type metadata accessor for MessageDetailView);
}

uint64_t OUTLINED_FUNCTION_4_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_267AEC3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Snapshot();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
    v8 = a1 + *(a3 + 24);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_267AEC4A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Snapshot();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
    v10 = a1 + *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata accessor for MessageListHeaderView()
{
  result = qword_280210ED0;
  if (!qword_280210ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267AEC5C4()
{
  type metadata accessor for Snapshot();
  if (v0 <= 0x3F)
  {
    sub_267AEB8A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_267AEC66C()
{
  v1 = sub_267B16C80();
  v2 = OUTLINED_FUNCTION_0_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = v0 + *(type metadata accessor for MessageListHeaderView() + 24);
  sub_267B06A50(v11);
  (*(v4 + 104))(v9, *MEMORY[0x277CDF3C0], v1);
  LOBYTE(v12) = sub_267B16C70();
  v13 = *(v4 + 8);
  v13(v9, v1);
  v13(v11, v1);
  if (v12)
  {
    return sub_267B174D0();
  }

  else
  {
    return sub_267B174B0();
  }
}

id sub_267AEC7B4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v0 setNumberStyle_];
  result = [v0 setUsesSignificantDigits_];
  qword_280210EC8 = v0;
  return result;
}

uint64_t sub_267AEC818@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EE0, &qword_267B19E98);
  OUTLINED_FUNCTION_0(v54);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EE8, &qword_267B19EA0);
  OUTLINED_FUNCTION_0(v51);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v9);
  v53 = &v46 - v10;
  v11 = type metadata accessor for MessageListHeaderView();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF0, &qword_267B19EA8);
  OUTLINED_FUNCTION_0_0(v52);
  v50 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  v49 = &v46 - v17;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210EF8, &qword_267B19EB0) - 8) + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  v22 = sub_267B16500();
  v23 = OUTLINED_FUNCTION_0_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v23);
  v30 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v46 - v31;
  v33 = type metadata accessor for WidgetMailbox();
  sub_267AED784(v1 + *(v33 + 24), v21, &qword_280210EF8, &qword_267B19EB0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_267AEC1D4(v21, &qword_280210EF8, &qword_267B19EB0);
    *v6 = sub_267B16FA0();
    *(v6 + 1) = 0x4018000000000000;
    v6[16] = 0;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F00, &unk_267B19EB8);
    sub_267AECDB8(v1, &v6[*(v34 + 44)]);
    sub_267AED784(v6, v53, &qword_280210EE0, &qword_267B19E98);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_4(&qword_280210F08, &qword_280210EF0, &qword_267B19EA8);
    OUTLINED_FUNCTION_1_5();
    sub_267ADCE94(v35, &qword_280210EE0, &qword_267B19E98);
    sub_267B17080();
    return sub_267AEC1D4(v6, &qword_280210EE0, &qword_267B19E98);
  }

  else
  {
    (*(v25 + 32))(v32, v21, v22);
    (*(v25 + 16))(v30, v32, v22);
    v37 = v48;
    sub_267AED384(v1, v48);
    v38 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v39 = swift_allocObject();
    sub_267AED5D8(v37, v39 + v38);
    OUTLINED_FUNCTION_1_5();
    sub_267ADCE94(v40, v41, v42);
    v43 = v49;
    sub_267B172E0();

    v44 = v50;
    v45 = v52;
    (*(v50 + 16))(v53, v43, v52);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_4(&qword_280210F08, &qword_280210EF0, &qword_267B19EA8);
    sub_267B17080();
    (*(v44 + 8))(v43, v45);
    return (*(v25 + 8))(v32, v22);
  }
}

uint64_t sub_267AECD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_267B16FA0();
  *(a2 + 8) = 0x4018000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F00, &unk_267B19EB8);
  return sub_267AECDB8(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_267AECDB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F18, &qword_267B19EC8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v57 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F20, &qword_267B19ED0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v57 - v12;
  v73 = sub_267B12348();
  v74 = v14;
  sub_267ADCFA4();
  v68 = sub_267B17340();
  v67 = v15;
  v17 = v16;
  v69 = v18;
  KeyPath = swift_getKeyPath();
  sub_267B17250();
  sub_267B17220();
  v64 = sub_267B17270();

  v19 = swift_getKeyPath();
  v20 = v17 & 1;
  LOBYTE(v73) = v20;
  LOBYTE(__src[0]) = 0;
  v63 = sub_267AEC66C();
  v21 = a1 + *(type metadata accessor for Snapshot() + 20);
  v22 = 1;
  v23 = *v21 >= 2uLL;
  v71 = v20;
  v70 = v19;
  if (v23 && (*(v21 + 16) & 1) == 0 && *(v21 + 8) >= 1)
  {
    if (qword_280210870 != -1)
    {
      swift_once();
    }

    v24 = qword_280210EC8;
    v25 = sub_267B17A60();
    v26 = [v24 stringForObjectValue_];

    if (v26)
    {
      v27 = sub_267B17980();
      v29 = v28;

      v73 = v27;
      v74 = v29;
      v30 = sub_267B17340();
      v32 = v31;
      v34 = v33;
      v35 = *(a1 + *(type metadata accessor for MessageListHeaderView() + 20));
      v59 = sub_267B17320();
      v58 = v36;
      v38 = v37;
      sub_267AEC140(v30, v32, v34 & 1);

      sub_267B174F0();
      v39 = v59;
      v40 = v58;
      v61 = sub_267B17300();
      v60 = v41;
      v43 = v42;
      v62 = v44;

      sub_267AEC140(v39, v40, v38 & 1);

      v45 = &v6[*(v3 + 36)];
      v46 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F38, &qword_267B19F48) + 28);
      sub_267B16DD0();
      *v45 = swift_getKeyPath();
      v47 = v60;
      *v6 = v61;
      *(v6 + 1) = v47;
      v6[16] = v43 & 1;
      *(v6 + 3) = v62;
      sub_267AED80C(v6, v13);
      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v19 = v70;
    LOBYTE(v20) = v71;
  }

  __swift_storeEnumTagSinglePayload(v13, v22, 1, v3);
  sub_267AED784(v13, v11, &qword_280210F20, &qword_267B19ED0);
  v48 = v68;
  __src[0] = v68;
  v62 = v13;
  v49 = v67;
  __src[1] = v67;
  LOBYTE(__src[2]) = v20;
  *(&__src[2] + 1) = *v87;
  HIDWORD(__src[2]) = *&v87[3];
  v50 = v69;
  v51 = KeyPath;
  __src[3] = v69;
  __src[4] = KeyPath;
  __src[5] = 1;
  LOBYTE(__src[6]) = 0;
  *(&__src[6] + 1) = *v86;
  HIDWORD(__src[6]) = *&v86[3];
  v52 = v64;
  __src[7] = v19;
  __src[8] = v64;
  v53 = v63;
  __src[9] = v63;
  __src[10] = 0x3FE999999999999ALL;
  v54 = v65;
  memcpy(v65, __src, 0x58uLL);
  v54[11] = 0;
  *(v54 + 96) = 1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F28, &qword_267B19F38);
  sub_267AED784(v11, v54 + *(v55 + 64), &qword_280210F20, &qword_267B19ED0);
  sub_267AED784(__src, &v73, &qword_280210F30, &qword_267B19F40);
  sub_267AEC1D4(v62, &qword_280210F20, &qword_267B19ED0);
  sub_267AEC1D4(v11, &qword_280210F20, &qword_267B19ED0);
  v73 = v48;
  v74 = v49;
  v75 = v71;
  *v76 = *v87;
  *&v76[3] = *&v87[3];
  v77 = v50;
  v78 = v51;
  v79 = 1;
  v80 = 0;
  *v81 = *v86;
  *&v81[3] = *&v86[3];
  v82 = v70;
  v83 = v52;
  v84 = v53;
  v85 = 0x3FE999999999999ALL;
  return sub_267AEC1D4(&v73, &qword_280210F30, &qword_267B19F40);
}

uint64_t sub_267AED384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageListHeaderView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267AED3E8()
{
  v1 = type metadata accessor for MessageListHeaderView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  if (*(v0 + v3 + 16) >= 6uLL)
  {
  }

  v7 = type metadata accessor for WidgetMailbox();
  v8 = v7[6];
  v9 = sub_267B16500();
  if (!__swift_getEnumTagSinglePayload(v5 + v8, 1, v9))
  {
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  OUTLINED_FUNCTION_4_2(v7[7]);
  OUTLINED_FUNCTION_4_2(v7[8]);
  OUTLINED_FUNCTION_4_2(v7[9]);
  OUTLINED_FUNCTION_4_2(v7[10]);
  OUTLINED_FUNCTION_4_2(v7[11]);
  OUTLINED_FUNCTION_4_2(v7[12]);
  if (*(v5 + *(type metadata accessor for Snapshot() + 20)) >= 2uLL)
  {
  }

  v10 = *(v5 + *(v1 + 20));

  v11 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_267B16C80();
    OUTLINED_FUNCTION_0(v12);
    (*(v13 + 8))(v5 + v11);
  }

  else
  {
    v14 = *(v5 + v11);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267AED5D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageListHeaderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267AED63C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessageListHeaderView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_267AECD60(v4, a1);
}

uint64_t sub_267AED6AC(uint64_t a1)
{
  v2 = sub_267B16DE0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_267B16EC0();
}

uint64_t sub_267AED784(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267AED80C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F18, &qword_267B19EC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_267AED880()
{
  result = qword_280210F40;
  if (!qword_280210F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210F48, &unk_267B19F80);
    sub_267ADCE94(&qword_280210F08, &qword_280210EF0, &qword_267B19EA8);
    sub_267ADCE94(&qword_280210F10, &qword_280210EE0, &qword_267B19E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280210F40);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_267ADCE94(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_4_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t sub_267AED9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_267B16680();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_267AEDA60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for WidgetMessage();
  v6 = v5;
  if (v4)
  {
    sub_267AF3E24(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, type metadata accessor for WidgetMessage);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_267AEDB18()
{
  v2[3] = &type metadata for Features;
  v2[4] = sub_267AE7B88();
  LOBYTE(v2[0]) = 2;
  v0 = sub_267B16630();
  result = __swift_destroy_boxed_opaque_existential_1(v2);
  byte_280210F50 = v0 & 1;
  return result;
}

void MessageListView.init(mode:messages:numberOfSummaryLines:searchTerm:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v82 = a4;
  v83 = a5;
  v73 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F58, &qword_267B19F90);
  v10 = OUTLINED_FUNCTION_16_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v84 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_1();
  v81 = v15;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_1();
  v80 = v17;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_1();
  v79 = v19;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_1();
  v78 = v21;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_1();
  v77 = v23;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_1();
  v76 = v25;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_1();
  v75 = v27;
  OUTLINED_FUNCTION_5_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_1();
  v74 = v29;
  OUTLINED_FUNCTION_5_1();
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v73 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v73 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v73 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v73 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v73 - v43;
  sub_267B17910();
  sub_267AF2CA8(&qword_280211600, MEMORY[0x277D63F60]);
  *a6 = sub_267B16E00();
  a6[1] = v45;
  v46 = type metadata accessor for MessageListView();
  v47 = a6 + v46[5];
  _s10SiriMailUI15MessageListViewV20_interactionDelegate33_BAF068263784C23372CA04067282950407SnippetC0011InteractionH0Vvpfi_0();
  v48 = v46[24];
  *(a6 + v48) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
  swift_storeEnumTagMultiPayload();
  *(a6 + v46[6]) = a1;
  *(a6 + v46[7]) = a2;
  sub_267AEDA60(a2, v44);
  v49 = type metadata accessor for WidgetMessage();
  OUTLINED_FUNCTION_0_2(v44);
  if (v50)
  {

    sub_267AF3430(v44, &qword_280210F58);
    v51 = 0;
  }

  else
  {
    v51 = v44[v49[18]];

    sub_267AEB1F8(v44);
  }

  *(a6 + v46[8]) = v51;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_2(v42);
  if (v50)
  {
    sub_267AF3430(v42, &qword_280210F58);
    v52 = 0;
  }

  else
  {
    v52 = v42[v49[15]];
    sub_267AEB1F8(v42);
  }

  v53 = v75;
  *(a6 + v46[9]) = v52;
  *(a6 + v46[10]) = v73;
  sub_267AEDA60(a2, v39);
  OUTLINED_FUNCTION_0_2(v39);
  if (v50)
  {
    sub_267AF3430(v39, &qword_280210F58);
    v56 = 0;
    v55 = 0xE000000000000000;
  }

  else
  {
    v54 = &v39[v49[22]];
    v56 = *v54;
    v55 = *(v54 + 1);

    sub_267AEB1F8(v39);
  }

  v57 = (a6 + v46[11]);
  *v57 = v56;
  v57[1] = v55;
  sub_267AEDA60(a2, v36);
  OUTLINED_FUNCTION_0_2(v36);
  if (v50)
  {
    sub_267AF3430(v36, &qword_280210F58);
    v60 = 0;
    v59 = 0xE000000000000000;
  }

  else
  {
    v58 = &v36[v49[23]];
    v60 = *v58;
    v59 = *(v58 + 1);

    sub_267AEB1F8(v36);
  }

  v61 = v81;
  v62 = (a6 + v46[12]);
  *v62 = v60;
  v62[1] = v59;
  sub_267AEDA60(a2, v33);
  OUTLINED_FUNCTION_0_2(v33);
  if (v50)
  {
    sub_267AF3430(v33, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_12_0(&v33[v49[24]]);
    sub_267AEB1F8(v33);
  }

  OUTLINED_FUNCTION_3_1(v46[13]);
  v63 = v74;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_2(v63);
  v64 = v79;
  if (v50)
  {
    sub_267AF3430(v63, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_11_0(v49[25]);
    sub_267AEB1F8(v63);
  }

  OUTLINED_FUNCTION_3_1(v46[14]);
  sub_267AEDA60(a2, v53);
  OUTLINED_FUNCTION_0_2(v53);
  if (v50)
  {
    sub_267AF3430(v53, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_12_0((v53 + v49[26]));
    sub_267AEB1F8(v53);
  }

  OUTLINED_FUNCTION_3_1(v46[15]);
  v65 = v76;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_2(v65);
  if (v50)
  {
    sub_267AF3430(v65, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_11_0(v49[27]);
    sub_267AEB1F8(v65);
  }

  v66 = v77;
  OUTLINED_FUNCTION_3_1(v46[16]);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0_2(v66);
  if (v50)
  {
    sub_267AF3430(v66, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_11_0(v49[28]);
    sub_267AEB1F8(v66);
  }

  OUTLINED_FUNCTION_3_1(v46[17]);
  v67 = v78;
  sub_267AEDA60(a2, v78);
  OUTLINED_FUNCTION_0_2(v67);
  if (v50)
  {
    sub_267AF3430(v67, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_12_0((v67 + v49[29]));
    sub_267AEB1F8(v67);
  }

  v68 = v80;
  OUTLINED_FUNCTION_3_1(v46[18]);
  sub_267AEDA60(a2, v64);
  OUTLINED_FUNCTION_0_2(v64);
  if (v50)
  {
    sub_267AF3430(v64, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_12_0((v64 + v49[30]));
    sub_267AEB1F8(v64);
  }

  OUTLINED_FUNCTION_3_1(v46[19]);
  sub_267AEDA60(a2, v68);
  OUTLINED_FUNCTION_0_2(v68);
  if (v50)
  {
    sub_267AF3430(v68, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_12_0((v68 + v49[31]));
    sub_267AEB1F8(v68);
  }

  OUTLINED_FUNCTION_3_1(v46[20]);
  sub_267AEDA60(a2, v61);
  OUTLINED_FUNCTION_0_2(v61);
  if (v50)
  {
    sub_267AF3430(v61, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    OUTLINED_FUNCTION_12_0((v61 + v49[32]));
    sub_267AEB1F8(v61);
  }

  OUTLINED_FUNCTION_3_1(v46[21]);
  v69 = v84;
  sub_267AEDA60(a2, v84);

  OUTLINED_FUNCTION_0_2(v69);
  if (v50)
  {
    sub_267AF3430(v84, &qword_280210F58);
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    v70 = v84;
    OUTLINED_FUNCTION_11_0(v49[33]);
    sub_267AEB1F8(v70);
  }

  OUTLINED_FUNCTION_3_1(v46[22]);
  v71 = (a6 + v46[23]);
  v72 = v83;
  *v71 = v82;
  v71[1] = v72;
}

uint64_t type metadata accessor for MessageListView()
{
  result = qword_280210F68;
  if (!qword_280210F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessageListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_267B17050();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F60, &qword_267B19FD0);
  return sub_267AEE3D8(v1, a1 + *(v3 + 44));
}

uint64_t sub_267AEE3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v238 = a2;
  v3 = sub_267B165F0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v209 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_267B17770();
  v211 = *(v219 - 8);
  v6 = *(v211 + 64);
  MEMORY[0x28223BE20](v219);
  v210 = &v194 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210F98, &qword_267B1A050);
  v212 = *(v221 - 8);
  v8 = *(v212 + 64);
  MEMORY[0x28223BE20](v221);
  v215 = &v194 - v9;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FA0, &qword_267B1A058);
  v10 = *(*(v234 - 8) + 64);
  MEMORY[0x28223BE20](v234);
  v237 = (&v194 - v11);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FA8, &qword_267B1A060);
  v12 = *(*(v217 - 8) + 64);
  MEMORY[0x28223BE20](v217);
  v218 = &v194 - v13;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FB0, &qword_267B1A068);
  v14 = *(*(v236 - 8) + 64);
  MEMORY[0x28223BE20](v236);
  v220 = &v194 - v15;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FB8, &qword_267B1A070);
  v16 = *(*(v203 - 8) + 64);
  MEMORY[0x28223BE20](v203);
  v207 = &v194 - v17;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FC0, &qword_267B1A078);
  v18 = *(*(v214 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v214);
  v206 = &v194 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v205 = &v194 - v21;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FC8, &qword_267B1A080);
  v22 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202);
  v204 = &v194 - v23;
  v200 = sub_267B176E0();
  v199 = *(v200 - 8);
  v24 = *(v199 + 64);
  MEMORY[0x28223BE20](v200);
  v198 = &v194 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FD0, &qword_267B1A088);
  v196 = *(v197 - 8);
  v26 = *(v196 + 64);
  MEMORY[0x28223BE20](v197);
  v195 = &v194 - v27;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FD8, &qword_267B1A090);
  v28 = *(*(v201 - 8) + 64);
  MEMORY[0x28223BE20](v201);
  v208 = &v194 - v29;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FE0, &qword_267B1A098);
  v30 = *(*(v216 - 8) + 64);
  MEMORY[0x28223BE20](v216);
  v213 = &v194 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FE8, &qword_267B1A0A0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v235 = &v194 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v246 = &v194 - v36;
  v37 = type metadata accessor for MessageListView();
  v228 = *(v37 - 1);
  v38 = *(v228 + 64);
  MEMORY[0x28223BE20](v37);
  v240 = v39;
  v229 = &v194 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FF0, &qword_267B1A0A8);
  v232 = *(v233 - 8);
  v40 = *(v232 + 64);
  v41 = MEMORY[0x28223BE20](v233);
  v231 = &v194 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v245 = &v194 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FF8, &qword_267B1A0B0);
  v45 = *(v44 - 8);
  *&v242 = v44 - 8;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v223 = &v194 - v47;
  *&v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211000, &qword_267B1A0B8);
  v48 = *(*(v224 - 8) + 64);
  MEMORY[0x28223BE20](v224);
  v227 = &v194 - v49;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211008, &qword_267B1A0C0);
  v50 = *(*(v226 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v226);
  v230 = &v194 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v225 = &v194 - v54;
  MEMORY[0x28223BE20](v53);
  v247 = &v194 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211010, &qword_267B1A0C8);
  v57 = *(v56 - 8);
  v243 = (v56 - 8);
  v58 = *(v57 + 64);
  v59 = MEMORY[0x28223BE20](v56 - 8);
  v244 = &v194 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v62 = (&v194 - v61);
  v63 = type metadata accessor for WidgetMailbox();
  v64 = v63[6];
  v65 = sub_267B16500();
  __swift_storeEnumTagSinglePayload(v62 + v64, 1, 1, v65);
  v66 = (a1 + v37[14]);
  v67 = *v66;
  v68 = v66[1];
  v69 = (a1 + v37[15]);
  v70 = *v69;
  v71 = v69[1];
  v72 = (a1 + v37[16]);
  v73 = *v72;
  v74 = v72[1];
  v75 = (a1 + v37[17]);
  v76 = *v75;
  v77 = v75[1];
  v78 = (a1 + v37[18]);
  v79 = *v78;
  v80 = v78[1];
  v81 = (a1 + v37[19]);
  v82 = *v81;
  v83 = v81[1];
  *v62 = 0;
  v62[1] = 0;
  v62[2] = 1;
  v84 = (v62 + v63[7]);
  *v84 = v67;
  v84[1] = v68;
  v85 = (v62 + v63[8]);
  *v85 = v70;
  v85[1] = v71;
  v86 = (v62 + v63[9]);
  *v86 = v73;
  v86[1] = v74;
  v87 = (v62 + v63[10]);
  *v87 = v76;
  v87[1] = v77;
  v88 = (v62 + v63[11]);
  *v88 = v79;
  v88[1] = v80;
  v89 = (v62 + v63[12]);
  *v89 = v82;
  v89[1] = v83;
  v90 = *(a1 + v37[7]);
  v239 = v37;
  v91 = v37[9];
  v241 = a1;
  if (*(a1 + v91))
  {
    v92 = 257;
  }

  else
  {
    v92 = 1;
  }

  v93 = v62 + *(type metadata accessor for Snapshot() + 20);
  *v93 = v90;
  *(v93 + 1) = 0;
  *(v93 + 8) = v92;
  v94 = type metadata accessor for MessageListHeaderView();
  v95 = *(v94 + 20);

  v96 = v223;

  *(v62 + v95) = sub_267B172B0();
  v97 = *(v94 + 24);
  *(v62 + v97) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v97) = sub_267B171A0();
  v98 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211018, &qword_267B1A0D0) + 36);
  *v98 = v97;
  *(v98 + 8) = 0u;
  *(v98 + 24) = 0u;
  v98[40] = 1;
  LOBYTE(v97) = sub_267B17180();
  v99 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211020, &qword_267B1A0D8) + 36);
  *v99 = v97;
  *(v99 + 8) = 0u;
  *(v99 + 24) = 0u;
  v99[40] = 1;
  sub_267B17680();
  sub_267B16D20();
  v100 = *(v243 + 11);
  v243 = v62;
  v101 = (v62 + v100);
  v102 = v257;
  *v101 = v256;
  v101[1] = v102;
  v101[2] = v258;
  sub_267B17610();
  v103 = sub_267B171A0();
  v104 = v96 + *(v242 + 44);
  *v104 = v103;
  *(v104 + 8) = 0u;
  v242 = 0u;
  *(v104 + 24) = 0u;
  *(v104 + 40) = 1;
  v105 = sub_267B17180();
  if (qword_280210878 != -1)
  {
    swift_once();
  }

  v106 = byte_280210F50;
  v107 = 0uLL;
  if (byte_280210F50 == 1)
  {
    sub_267B16C00();
    *(&v107 + 1) = v108;
    *(&v110 + 1) = v109;
    v242 = v110;
  }

  v222 = v107;
  v111 = v227;
  sub_267AF3EE4(v96, v227, &qword_280210FF8, &qword_267B1A0B0);
  v112 = v111 + *(v224 + 36);
  *v112 = v105;
  *(v112 + 24) = v222;
  *(v112 + 8) = v242;
  *(v112 + 40) = v106 ^ 1;
  v242 = 0u;
  v113 = sub_267B17190();
  v114 = 0uLL;
  v115 = v241;
  v116 = v229;
  if (((v106 ^ 1) & 1) == 0)
  {
    sub_267B16C00();
    *(&v114 + 1) = v117;
    *(&v119 + 1) = v118;
    v242 = v119;
  }

  v224 = v114;
  v120 = v111;
  v121 = v225;
  sub_267AF3EE4(v120, v225, &qword_280211000, &qword_267B1A0B8);
  v122 = v121 + *(v226 + 36);
  *v122 = v113;
  *(v122 + 24) = v224;
  *(v122 + 8) = v242;
  *(v122 + 40) = v106 ^ 1;
  sub_267AF3EE4(v121, v247, &qword_280211008, &qword_267B1A0C0);
  sub_267AF3E24(v115, v116, type metadata accessor for MessageListView);
  v123 = (*(v228 + 80) + 16) & ~*(v228 + 80);
  v124 = swift_allocObject();
  sub_267AF26D4(v116, v124 + v123);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211028, &qword_267B1A0E0);
  sub_267AF27A4();
  sub_267B17710();
  v125 = *(v115 + v239[6]);
  if (v125 == 1)
  {
    v158 = (v115 + v239[13]);
    v160 = *v158;
    v159 = v158[1];
    v254 = MEMORY[0x277D837D0];
    v255 = MEMORY[0x277D63F80];
    v252 = v160;
    v253 = v159;
    v251 = 0;
    v249 = 0u;
    v250 = 0u;

    sub_267B165D0();
    v248[3] = sub_267B176F0();
    v248[4] = MEMORY[0x277D63B10];
    __swift_allocate_boxed_opaque_existential_1(v248);
    sub_267B17700();
    v161 = v210;
    sub_267B17760();
    sub_267AF3E24(v115, v116, type metadata accessor for MessageListView);
    v162 = swift_allocObject();
    sub_267AF26D4(v116, v162 + v123);
    v163 = sub_267AF2CA8(&qword_2802110A0, MEMORY[0x277D63CD0]);
    v164 = v215;
    v165 = v219;
    sub_267B173B0();

    (*(v211 + 8))(v161, v165);
    v166 = v212;
    v167 = v164;
    v168 = v221;
    (*(v212 + 16))(v218, v167, v221);
    swift_storeEnumTagMultiPayload();
    sub_267AF2ABC();
    v252 = v165;
    v253 = v163;
    swift_getOpaqueTypeConformance2();
    v169 = v220;
    sub_267B17080();
    sub_267AF2D08(v169, v237, &qword_280210FB0, &qword_267B1A068);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211070, &qword_267B1A0F8);
    sub_267AF29C8();
    sub_267AF3DE0(&qword_2802110A8, &qword_280211070);
    v170 = v246;
    sub_267B17080();
    sub_267AF3430(v169, &qword_280210FB0);
    (*(v166 + 8))(v215, v168);
  }

  else if (v125)
  {
    v171 = sub_267B16FB0();
    v172 = v237;
    *v237 = v171;
    v172[1] = 0;
    *(v172 + 16) = 1;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211070, &qword_267B1A0F8);
    sub_267AF29C8();
    sub_267AF3DE0(&qword_2802110A8, &qword_280211070);
    v170 = v246;
    sub_267B17080();
  }

  else
  {
    v126 = 1;
    if (*(v115 + v239[8]) == 1)
    {
      v127 = (v115 + v239[11]);
      v128 = v127[1];
      v252 = *v127;
      v253 = v128;
      *&v242 = type metadata accessor for MessageListView;
      sub_267AF3E24(v115, v116, type metadata accessor for MessageListView);
      v129 = swift_allocObject();
      sub_267AF26D4(v116, v129 + v123);
      v228 = sub_267ADCFA4();

      v130 = v195;
      sub_267B175B0();
      v131 = v199;
      v132 = v198;
      v133 = v200;
      (*(v199 + 104))(v198, *MEMORY[0x277D63A90], v200);
      sub_267AF3DE0(&qword_2802110B8, &qword_280210FD0);
      v134 = v208;
      v135 = v197;
      sub_267B17370();
      (*(v131 + 8))(v132, v133);
      (*(v196 + 8))(v130, v135);
      v136 = v116;
      v137 = (v134 + *(v201 + 36));
      v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E60, &qword_267B19DC0);
      v139 = v137 + *(v138 + 28);
      sub_267B16DC0();
      *v137 = swift_getKeyPath();
      v140 = (v241 + v239[12]);
      v141 = v140[1];
      v252 = *v140;
      v253 = v141;
      sub_267AF3E24(v241, v136, v242);
      v142 = swift_allocObject();
      sub_267AF26D4(v136, v142 + v123);

      v143 = v204;
      sub_267B175B0();
      v144 = (v143 + *(v202 + 36));
      v145 = v144 + *(v138 + 28);
      sub_267B16DC0();
      *v144 = swift_getKeyPath();
      sub_267AF3224();
      v146 = sub_267B17350();
      v147 = MEMORY[0x277CE11C8];
      v148 = MEMORY[0x277D63A60];
      v254 = MEMORY[0x277CE11C8];
      v255 = MEMORY[0x277D63A60];
      v252 = v146;
      sub_267AF334C();
      v149 = sub_267B17350();
      *(&v250 + 1) = v147;
      v251 = v148;
      *&v249 = v149;
      v150 = v207;
      sub_267B17720();
      v151 = sub_267B171A0();
      v152 = v150 + *(v203 + 36);
      *v152 = v151;
      *(v152 + 8) = 0u;
      *(v152 + 24) = 0u;
      *(v152 + 40) = 1;
      if (v106)
      {
        v153 = sub_267B171C0();
        v154 = sub_267B171B0();
        sub_267B171B0();
        v155 = sub_267B171B0();
        v156 = v206;
        v157 = v205;
        if (v155 != v153)
        {
          v154 = sub_267B171B0();
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E18, &qword_267B1A140);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_267B19C10;
        v174 = sub_267B17190();
        *(inited + 32) = v174;
        v175 = sub_267B171C0();
        *(inited + 33) = v175;
        v154 = sub_267B171B0();
        sub_267B171B0();
        if (sub_267B171B0() != v174)
        {
          v154 = sub_267B171B0();
        }

        sub_267B171B0();
        if (sub_267B171B0() != v175)
        {
          v154 = sub_267B171B0();
        }

        v156 = v206;
        v157 = v205;
      }

      sub_267AF3430(v143, &qword_280210FC8);
      sub_267AF3430(v208, &qword_280210FD8);
      sub_267AF3EE4(v150, v156, &qword_280210FB8, &qword_267B1A070);
      v176 = v156 + *(v214 + 36);
      *v176 = v154;
      *(v176 + 8) = 0u;
      *(v176 + 24) = 0u;
      *(v176 + 40) = 1;
      sub_267AF3EE4(v156, v157, &qword_280210FC0, &qword_267B1A078);
      sub_267AF3EE4(v157, v213, &qword_280210FC0, &qword_267B1A078);
      v126 = 0;
    }

    v177 = v213;
    __swift_storeEnumTagSinglePayload(v213, v126, 1, v214);
    sub_267AF2D08(v177, v218, &qword_280210FE0, &qword_267B1A098);
    swift_storeEnumTagMultiPayload();
    sub_267AF2ABC();
    v178 = sub_267AF2CA8(&qword_2802110A0, MEMORY[0x277D63CD0]);
    v252 = v219;
    v253 = v178;
    swift_getOpaqueTypeConformance2();
    v179 = v220;
    sub_267B17080();
    sub_267AF2D08(v179, v237, &qword_280210FB0, &qword_267B1A068);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211070, &qword_267B1A0F8);
    sub_267AF29C8();
    sub_267AF3DE0(&qword_2802110A8, &qword_280211070);
    v180 = v246;
    sub_267B17080();
    v181 = v179;
    v170 = v180;
    sub_267AF3430(v181, &qword_280210FB0);
    sub_267AF3430(v177, &qword_280210FE0);
  }

  v182 = v244;
  sub_267AF2D08(v243, v244, &qword_280211010, &qword_267B1A0C8);
  v183 = v230;
  sub_267AF2D08(v247, v230, &qword_280211008, &qword_267B1A0C0);
  v184 = v232;
  v185 = *(v232 + 16);
  v186 = v231;
  v187 = v245;
  v188 = v233;
  v185(v231, v245, v233);
  v189 = v235;
  sub_267AF2D08(v170, v235, &qword_280210FE8, &qword_267B1A0A0);
  v190 = v238;
  sub_267AF2D08(v182, v238, &qword_280211010, &qword_267B1A0C8);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802110B0, &unk_267B1A100);
  sub_267AF2D08(v183, v190 + v191[12], &qword_280211008, &qword_267B1A0C0);
  v185((v190 + v191[16]), v186, v188);
  sub_267AF2D08(v189, v190 + v191[20], &qword_280210FE8, &qword_267B1A0A0);
  sub_267AF3430(v246, &qword_280210FE8);
  v192 = *(v184 + 8);
  v192(v187, v188);
  sub_267AF3430(v247, &qword_280211008);
  sub_267AF3430(v243, &qword_280211010);
  sub_267AF3430(v189, &qword_280210FE8);
  v192(v186, v188);
  sub_267AF3430(v183, &qword_280211008);
  return sub_267AF3430(v244, &qword_280211010);
}

uint64_t sub_267AEFF04(uint64_t a1)
{
  v2 = type metadata accessor for MessageListView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v10[1] = sub_267AF3860(*(a1 + *(v5 + 36)));
  swift_getKeyPath();
  sub_267AF3E24(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MessageListView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_267AF26D4(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_267AF3D54;
  *(v8 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211118, &qword_267B1A1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211040, &qword_267B1A0E8);
  sub_267AF3DE0(&qword_280211120, &qword_280211118);
  sub_267AF2828();
  return sub_267B17630();
}

uint64_t sub_267AF0100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a2;
  *&v85 = a1;
  v91 = a4;
  *&v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DF8, &qword_267B19D10);
  v5 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v7 = (&v79 - v6);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211130, &qword_267B1A1E0);
  v8 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v90 = &v79 - v9;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211050, &qword_267B1A0F0);
  v10 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v84 = &v79 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FF8, &qword_267B1A0B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v79 - v14;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211000, &qword_267B1A0B8);
  v16 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v81 = &v79 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211008, &qword_267B1A0C0);
  v18 = *(*(v80 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v80);
  v82 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v79 - v22;
  MEMORY[0x28223BE20](v21);
  v83 = &v79 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E00, &qword_267B19D18);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = (&v79 - v31);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v79 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = (&v79 - v36);
  if (*(*(a3 + *(type metadata accessor for MessageListView() + 28)) + 16) - 1 <= v85)
  {
    sub_267AF0A14(v86, v7);
    v67 = sub_267B171A0();
    sub_267B16C00();
    v68 = v7 + *(v87 + 36);
    *v68 = v67;
    *(v68 + 1) = v69;
    *(v68 + 2) = v70;
    *(v68 + 3) = v71;
    *(v68 + 4) = v72;
    v68[40] = 0;
    if (qword_280210878 != -1)
    {
      swift_once();
    }

    if (byte_280210F50 == 1)
    {
      v73 = sub_267B171C0();
      v74 = sub_267B171B0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E18, &qword_267B1A140);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_267B19C10;
      v76 = sub_267B17190();
      *(inited + 32) = v76;
      v73 = sub_267B171C0();
      *(inited + 33) = v73;
      v74 = sub_267B171B0();
      sub_267B171B0();
      if (sub_267B171B0() != v76)
      {
        v74 = sub_267B171B0();
      }
    }

    sub_267B171B0();
    if (sub_267B171B0() != v73)
    {
      v74 = sub_267B171B0();
    }

    sub_267AF3EE4(v7, v29, &qword_280210DF8, &qword_267B19D10);
    v77 = &v29[*(v25 + 36)];
    *v77 = v74;
    *(v77 + 8) = 0u;
    *(v77 + 24) = 0u;
    v77[40] = 1;
    sub_267AF3EE4(v29, v32, &qword_280210E00, &qword_267B19D18);
    sub_267AF2D08(v32, v90, &qword_280210E00, &qword_267B19D18);
    swift_storeEnumTagMultiPayload();
    sub_267AF3DE0(&qword_280211048, &qword_280211050);
    sub_267AF2B6C(&qword_280211058, &qword_280210E00, &qword_267B19D18, sub_267AF290C);
    sub_267B17080();
  }

  else
  {
    sub_267AF0A14(v86, v37);
    v38 = sub_267B171A0();
    sub_267B16C00();
    v39 = v37 + *(v87 + 36);
    *v39 = v38;
    *(v39 + 1) = v40;
    *(v39 + 2) = v41;
    *(v39 + 3) = v42;
    *(v39 + 4) = v43;
    v39[40] = 0;
    v44 = sub_267B171C0();
    v45 = v37 + *(v25 + 36);
    *v45 = v44;
    *(v45 + 8) = 0u;
    *(v45 + 24) = 0u;
    v45[40] = 1;
    sub_267B17610();
    v46 = sub_267B171A0();
    v47 = &v15[*(v12 + 36)];
    *v47 = v46;
    *(v47 + 8) = 0u;
    v87 = 0u;
    *(v47 + 24) = 0u;
    v47[40] = 1;
    v48 = sub_267B17180();
    v86 = v25;
    if (qword_280210878 != -1)
    {
      swift_once();
    }

    v49 = byte_280210F50;
    v50 = 0uLL;
    v51 = v81;
    if (byte_280210F50 == 1)
    {
      sub_267B16C00();
      *(&v50 + 1) = v52;
      *(&v54 + 1) = v53;
      v87 = v54;
    }

    v85 = v50;
    v55 = v49 ^ 1;
    sub_267AF3EE4(v15, v51, &qword_280210FF8, &qword_267B1A0B0);
    v56 = v51 + *(v79 + 36);
    *v56 = v48;
    *(v56 + 24) = v85;
    *(v56 + 8) = v87;
    *(v56 + 40) = v55;
    v87 = 0u;
    v57 = sub_267B17190();
    v58 = 0uLL;
    if ((v55 & 1) == 0)
    {
      sub_267B16C00();
      *(&v58 + 1) = v59;
      *(&v61 + 1) = v60;
      v87 = v61;
    }

    v85 = v58;
    sub_267AF3EE4(v51, v23, &qword_280211000, &qword_267B1A0B8);
    v62 = &v23[*(v80 + 36)];
    *v62 = v57;
    *(v62 + 24) = v85;
    *(v62 + 8) = v87;
    v62[40] = v55;
    v63 = v83;
    sub_267AF3EE4(v23, v83, &qword_280211008, &qword_267B1A0C0);
    sub_267AF2D08(v37, v35, &qword_280210E00, &qword_267B19D18);
    v64 = v82;
    sub_267AF2D08(v63, v82, &qword_280211008, &qword_267B1A0C0);
    v65 = v84;
    sub_267AF2D08(v35, v84, &qword_280210E00, &qword_267B19D18);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211138, &qword_267B1A1E8);
    sub_267AF2D08(v64, v65 + *(v66 + 48), &qword_280211008, &qword_267B1A0C0);
    sub_267AF3430(v64, &qword_280211008);
    sub_267AF3430(v35, &qword_280210E00);
    sub_267AF2D08(v65, v90, &qword_280211050, &qword_267B1A0F0);
    swift_storeEnumTagMultiPayload();
    sub_267AF3DE0(&qword_280211048, &qword_280211050);
    sub_267AF2B6C(&qword_280211058, &qword_280210E00, &qword_267B19D18, sub_267AF290C);
    sub_267B17080();
    sub_267AF3430(v65, &qword_280211050);
    sub_267AF3430(v63, &qword_280211008);
    v32 = v37;
  }

  return sub_267AF3430(v32, &qword_280210E00);
}

uint64_t sub_267AF0A14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = sub_267B172D0();
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v37);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MessageView();
  sub_267AF3E24(a1, a2 + v9[5], type metadata accessor for WidgetMessage);
  v10 = type metadata accessor for MessageListView();
  v36 = *(v2 + v10[10]);
  v35 = *(a1 + *(type metadata accessor for WidgetMessage() + 40));
  v11 = (v2 + v10[20]);
  v12 = *v11;
  v13 = v11[1];
  v14 = (v2 + v10[21]);
  v15 = *v14;
  v16 = v14[1];
  v17 = (v2 + v10[22]);
  v18 = v17[1];
  v33 = *v17;
  v34 = v15;
  sub_267B17910();
  sub_267AF2CA8(&qword_280211600, MEMORY[0x277D63F60]);

  *a2 = sub_267B16E00();
  a2[1] = v19;
  *(a2 + v9[6]) = v36;
  *(a2 + v9[7]) = v35;
  v20 = (a2 + v9[8]);
  *v20 = v12;
  v20[1] = v13;
  v21 = (a2 + v9[9]);
  v22 = v33;
  *v21 = v34;
  v21[1] = v16;
  v23 = (a2 + v9[10]);
  *v23 = v22;
  v23[1] = v18;
  v24 = v9[11];
  v39 = 0x4030000000000000;
  (*(v5 + 104))(v8, *MEMORY[0x277CE0A58], v37);
  sub_267AEB9E0();
  sub_267B16CC0();
  v25 = (a2 + v9[12]);
  v38 = 0;
  sub_267B17550();
  v26 = v40;
  *v25 = v39;
  v25[1] = v26;
  v27 = (a2 + v9[13]);
  v38 = 0;
  sub_267B17550();
  v28 = v40;
  *v27 = v39;
  v27[1] = v28;
  v29 = (a2 + v9[14]);
  v38 = 0;
  sub_267B17550();
  v30 = v40;
  *v29 = v39;
  v29[1] = v30;
  v31 = v9[15];
  *(a2 + v31) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E10, &unk_267B19D50);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_267AF0D14(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211128, &qword_267B1A1D8);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_267AF0D80(uint64_t a1)
{
  if (*a1)
  {
    v1 = *a1;
    sub_267B17930();
    sub_267B17900();
  }

  else
  {
    v3 = *(a1 + 8);
    sub_267B17910();
    sub_267AF2CA8(&qword_280211600, MEMORY[0x277D63F60]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

uint64_t sub_267AF0E74(uint64_t a1)
{
  v2 = sub_267B165B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v7 = *a1;
    sub_267B165A0();
    sub_267B178F0();

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v9 = *(a1 + 8);
    sub_267B17910();
    sub_267AF2CA8(&qword_280211600, MEMORY[0x277D63F60]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

uint64_t sub_267AF0FE0(uint64_t a1)
{
  v2 = sub_267B17850();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_267B165B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MessageListView();
  v13 = (a1 + *(v12 + 92));
  v14 = v13[1];
  if (v14)
  {
    v15 = v12;
    sub_267AF1244(*v13, v14);
    v16 = a1 + *(v15 + 20);
    sub_267B177A0();
    v17 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
    sub_267B17840();

    return (*(v3 + 8))(v6, v2);
  }

  else if (*a1)
  {
    v19 = *a1;
    sub_267B165A0();
    sub_267B178F0();

    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    v20 = *(a1 + 8);
    sub_267B17910();
    sub_267AF2CA8(&qword_280211600, MEMORY[0x277D63F60]);
    result = sub_267B16DF0();
    __break(1u);
  }

  return result;
}

uint64_t sub_267AF1244(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802110D0, &qword_267B1A148);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_267B17A50();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  sub_267B17A30();

  v9 = sub_267B17A20();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  v10[5] = a2;
  sub_267AF1F90(0, 0, v7, &unk_267B1A158, v10);
}

uint64_t sub_267AF1348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_267B16AD0();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802110D8, &qword_267B1A178) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v10 = sub_267B164C0();
  v5[14] = v10;
  v11 = *(v10 - 8);
  v5[15] = v11;
  v12 = *(v11 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v13 = sub_267B16B00();
  v5[19] = v13;
  v14 = *(v13 - 8);
  v5[20] = v14;
  v15 = *(v14 + 64) + 15;
  v5[21] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802110E0, &qword_267B1A180) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v17 = sub_267B16B30();
  v5[23] = v17;
  v18 = *(v17 - 8);
  v5[24] = v18;
  v19 = *(v18 + 64) + 15;
  v5[25] = swift_task_alloc();
  sub_267B17A30();
  v5[26] = sub_267B17A20();
  v21 = sub_267B17A10();
  v5[27] = v21;
  v5[28] = v20;

  return MEMORY[0x2822009F8](sub_267AF15D8, v21, v20);
}

uint64_t sub_267AF15D8()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[20];
  v5 = v0[21];
  v37 = v0[17];
  v6 = v0[15];
  v38 = v0[16];
  v39 = v0[19];
  v35 = v0[18];
  v36 = v0[14];
  v7 = v0[9];
  v33 = v0[23];
  v34 = v0[8];
  v8 = [objc_opt_self() defaultEnvironment];
  v9 = sub_267AF37C8();
  v0[2] = v8;
  v10 = MEMORY[0x277CEB188];
  v0[5] = v9;
  v0[6] = v10;
  sub_267B16AF0();
  (*(v4 + 104))(v5, *MEMORY[0x277CEB068], v39);
  sub_267B16B20();
  v11 = sub_267B16B10();
  v40 = v12;
  v0[29] = v11;
  (*(v2 + 8))(v1, v33);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  sub_267B164B0();
  v13 = *(v6 + 16);
  v13(v37, v35, v36);
  v13(v38, v37, v36);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802110F0, &qword_267B1A188);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_267B16B40();
  v0[30] = v17;
  v18 = *(v6 + 8);
  v0[31] = v18;
  v0[32] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v37, v36);
  if (qword_280210880 != -1)
  {
    swift_once();
  }

  v19 = sub_267B16BA0();
  v0[33] = __swift_project_value_buffer(v19, static Logger.siriMail);
  v20 = sub_267B16B80();
  v21 = sub_267B17A80();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_267ADA000, v20, v21, "#MoreInMail Searching Mail now...", v22, 2u);
    MEMORY[0x26D600E60](v22, -1, -1);
  }

  v23 = v0[12];

  ObjectType = swift_getObjectType();
  v0[7] = v17;
  sub_267AF380C();
  sub_267AF1E18();
  v25 = sub_267AF1F50();
  v27 = v26;
  v0[34] = v25;
  v28 = *(MEMORY[0x277CEB000] + 4);
  v29 = swift_task_alloc();
  v0[35] = v29;
  *v29 = v0;
  v29[1] = sub_267AF1994;
  v31 = v0[12];
  v30 = v0[13];

  return MEMORY[0x28213DAA0](v30, v0 + 7, v31, v25, v27, ObjectType, &type metadata for SearchMailIntent, v40);
}

uint64_t sub_267AF1994()
{
  OUTLINED_FUNCTION_17();
  v3 = v2;
  v4 = v2[35];
  v5 = *v1;
  OUTLINED_FUNCTION_4_3();
  *v6 = v5;

  if (v0)
  {
    v7 = v3[34];
    v9 = v3[11];
    v8 = v3[12];
    v10 = v3[10];

    swift_unknownObjectRelease();
    (*(v9 + 8))(v8, v10);
    v11 = v3[27];
    v12 = v3[28];
    v13 = sub_267AF1C8C;
  }

  else
  {
    v14 = v3[34];
    (*(v3[11] + 8))(v3[12], v3[10]);
    swift_unknownObjectRelease();
    v11 = v3[27];
    v12 = v3[28];
    v13 = sub_267AF1B00;
  }

  return MEMORY[0x2822009F8](v13, v11, v12);
}

uint64_t sub_267AF1B00()
{
  v4 = v0[26];

  v5 = v0[33];
  v6 = v0[13];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211100, &qword_267B1A190);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  sub_267AF3430(v6, &unk_2802110D8);
  v8 = sub_267B16B80();
  v9 = sub_267B17A80();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[29];
  if (v10)
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    OUTLINED_FUNCTION_19(&dword_267ADA000, v12, v13, "#MoreInMail ✅ succeeded!");
    MEMORY[0x26D600E60](v1, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v0[29];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_7_2();
  v3(v1, v2);

  OUTLINED_FUNCTION_14_0();

  return v15();
}

uint64_t sub_267AF1C8C()
{
  v4 = v0[26];

  v5 = v0[33];
  v6 = v0[13];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211100, &qword_267B1A190);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_267AF3430(v6, &unk_2802110D8);
  v8 = sub_267B16B80();
  v9 = sub_267B17A80();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[29];
  if (v10)
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    OUTLINED_FUNCTION_19(&dword_267ADA000, v12, v13, "#MoreInMail ✅ succeeded!");
    MEMORY[0x26D600E60](v1, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v0[29];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_7_2();
  v3(v1, v2);

  OUTLINED_FUNCTION_14_0();

  return v15();
}

uint64_t sub_267AF1E18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211108, &qword_267B1A198);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211110, &qword_267B1A1A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_267B16B60();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = sub_267B16B50();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  sub_267B16AC0();
  return sub_267B16AB0();
}

uint64_t sub_267AF1F50()
{
  v0 = sub_267B16A90();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_267B16A80();
}

uint64_t sub_267AF1F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802110D0, &qword_267B1A148);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_267AF2D08(a3, v26 - v11, &qword_2802110D0, &qword_267B1A148);
  v13 = sub_267B17A50();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_267AF3430(v12, &qword_2802110D0);
  }

  else
  {
    sub_267B17A40();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_267B17A10();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_267B179A0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_267AF3430(a3, &qword_2802110D0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_267AF3430(a3, &qword_2802110D0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_267AF228C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_267B177C0();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a3[5];
LABEL_8:

    return __swift_getEnumTagSinglePayload(a1 + v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
    v8 = a3[24];
    goto LABEL_8;
  }

  v9 = *(a1 + a3[7]);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_267AF237C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_267B177C0();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a4[5];
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210DB8, &unk_267B19E20);
    v10 = a4[24];
  }

  return __swift_storeEnumTagSinglePayload(a1 + v10, a2, a2, v9);
}

void sub_267AF2454()
{
  sub_267AE0D9C();
  if (v0 <= 0x3F)
  {
    sub_267B177C0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for VRXMode(319);
      if (v2 <= 0x3F)
      {
        sub_267AF2628(319, &qword_280210F78, type metadata accessor for WidgetMessage, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_267AF25D8();
          if (v4 <= 0x3F)
          {
            sub_267AF2628(319, &qword_280210DE0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
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

void sub_267AF25D8()
{
  if (!qword_280210F80)
  {
    v0 = sub_267B17B00();
    if (!v1)
    {
      atomic_store(v0, &qword_280210F80);
    }
  }
}

void sub_267AF2628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_267AF26D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageListView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267AF2738()
{
  v1 = type metadata accessor for MessageListView();
  OUTLINED_FUNCTION_16_0(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_267AEFF04(v3);
}

unint64_t sub_267AF27A4()
{
  result = qword_280211030;
  if (!qword_280211030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211028, &qword_267B1A0E0);
    sub_267AF2828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211030);
  }

  return result;
}

unint64_t sub_267AF2828()
{
  result = qword_280211038;
  if (!qword_280211038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280211040, &qword_267B1A0E8);
    sub_267AF3DE0(&qword_280211048, &unk_280211050);
    sub_267AF2B6C(&qword_280211058, &qword_280210E00, &qword_267B19D18, sub_267AF290C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211038);
  }

  return result;
}

unint64_t sub_267AF290C()
{
  result = qword_280211060;
  if (!qword_280211060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210DF8, &qword_267B19D10);
    sub_267AF2CA8(&qword_280211068, type metadata accessor for MessageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211060);
  }

  return result;
}

unint64_t sub_267AF29C8()
{
  result = qword_280211078;
  if (!qword_280211078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210FB0, &qword_267B1A068);
    sub_267AF2ABC();
    sub_267B17770();
    sub_267AF2CA8(&qword_2802110A0, MEMORY[0x277D63CD0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211078);
  }

  return result;
}

unint64_t sub_267AF2ABC()
{
  result = qword_280211080;
  if (!qword_280211080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210FE0, &qword_267B1A098);
    sub_267AF2B6C(&qword_280211088, &unk_280210FC0, &unk_267B1A078, sub_267AF2BEC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211080);
  }

  return result;
}

uint64_t sub_267AF2B6C(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_15_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_267AF2BEC()
{
  result = qword_280211090;
  if (!qword_280211090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210FB8, &qword_267B1A070);
    sub_267AF2CA8(&qword_280211098, MEMORY[0x277D63C38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280211090);
  }

  return result;
}

uint64_t sub_267AF2CA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_267AF2D08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_7_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_18();
  v9(v8);
  return v4;
}

uint64_t sub_267AF2E38(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_267AF2F30;

  return v7(a1);
}

uint64_t sub_267AF2F30()
{
  OUTLINED_FUNCTION_17();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4_3();
  *v4 = v3;

  OUTLINED_FUNCTION_14_0();

  return v5();
}

uint64_t sub_267AF308C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_267AF31B4(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for MessageListView();
  OUTLINED_FUNCTION_16_0(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

unint64_t sub_267AF3224()
{
  result = qword_2802110C0;
  if (!qword_2802110C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210FD8, &qword_267B1A090);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210FD0, &qword_267B1A088);
    sub_267AF3DE0(&qword_2802110B8, &qword_280210FD0);
    swift_getOpaqueTypeConformance2();
    sub_267AF3DE0(&qword_280210E80, &qword_280210E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802110C0);
  }

  return result;
}

unint64_t sub_267AF334C()
{
  result = qword_2802110C8;
  if (!qword_2802110C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280210FC8, &qword_267B1A080);
    sub_267AF3DE0(&qword_2802110B8, &qword_280210FD0);
    sub_267AF3DE0(&qword_280210E80, &qword_280210E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802110C8);
  }

  return result;
}

uint64_t sub_267AF3430(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_15_0(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_267AF3484()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_267AF34C4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_13_0(v7);
  *v8 = v9;
  v8[1] = sub_267AF357C;

  return sub_267AF1348(a1, v3, v4, v6, v5);
}

uint64_t sub_267AF357C()
{
  OUTLINED_FUNCTION_17();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_4_3();
  *v4 = v3;

  OUTLINED_FUNCTION_14_0();

  return v5();
}

uint64_t sub_267AF3660()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_267AF3698()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_13_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_8_1(v4);

  return v7(v6);
}

uint64_t sub_267AF3730()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_13_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_8_1(v4);

  return v7(v6);
}

unint64_t sub_267AF37C8()
{
  result = qword_2802110E8;
  if (!qword_2802110E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802110E8);
  }

  return result;
}

unint64_t sub_267AF380C()
{
  result = qword_2802110F8;
  if (!qword_2802110F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802110F8);
  }

  return result;
}

uint64_t sub_267AF3860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211128, &qword_267B1A1D8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v4);
  v39 = v9;
  v40 = &v35 - v8;
  v10 = 0;
  v11 = 0;
  v36 = *(v9 + 80);
  v12 = MEMORY[0x277D84F90];
  v37 = (v36 + 32) & ~v36;
  v13 = MEMORY[0x277D84F90] + v37;
  v38 = *(a1 + 16);
  while (1)
  {
    if (v38 == v11)
    {
      v32 = v12[3];
      if (v32 >= 2)
      {
        v33 = v32 >> 1;
        v31 = __OFSUB__(v33, v10);
        v34 = v33 - v10;
        if (v31)
        {
          goto LABEL_35;
        }

        v12[2] = v34;
      }

      return v12;
    }

    v14 = *(type metadata accessor for WidgetMessage() - 8);
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11;
    v16 = *(v2 + 48);
    *v6 = v11;
    sub_267AF3E24(v15, v6 + v16, type metadata accessor for WidgetMessage);
    result = sub_267AF3EE4(v6, v40, &qword_280211128, &qword_267B1A1D8);
    if (v10)
    {
      v17 = v12;
    }

    else
    {
      v18 = v12[3];
      if (((v18 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v19 = a1;
      v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
      if (v20 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211140, &qword_267B1A228);
      v22 = *(v39 + 72);
      v23 = v37;
      v17 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v17);
      if (!v22)
      {
        goto LABEL_33;
      }

      v24 = result - v23;
      if (result - v23 == 0x8000000000000000 && v22 == -1)
      {
        goto LABEL_34;
      }

      v26 = v24 / v22;
      v17[2] = v21;
      v17[3] = 2 * (v24 / v22);
      v27 = v17 + v23;
      v28 = v12[3];
      v29 = (v28 >> 1) * v22;
      if (v12[2])
      {
        if (v17 < v12 || v27 >= v12 + v37 + v29)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v17 != v12)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v12[2] = 0;
      }

      v13 = &v27[v29];
      v10 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - (v28 >> 1);

      a1 = v19;
    }

    v31 = __OFSUB__(v10--, 1);
    if (v31)
    {
      break;
    }

    result = sub_267AF3EE4(v40, v13, &qword_280211128, &qword_267B1A1D8);
    v13 += *(v39 + 72);
    ++v11;
    v12 = v17;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for MessageListView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_267B177C0();
  OUTLINED_FUNCTION_0(v7);
  (*(v8 + 8))(v0 + v3 + v6);
  v9 = *(v0 + v3 + v1[9]);

  OUTLINED_FUNCTION_10_0(v1[13]);
  OUTLINED_FUNCTION_10_0(v1[14]);
  OUTLINED_FUNCTION_10_0(v1[15]);
  OUTLINED_FUNCTION_10_0(v1[16]);
  OUTLINED_FUNCTION_10_0(v1[17]);
  OUTLINED_FUNCTION_10_0(v1[18]);
  OUTLINED_FUNCTION_10_0(v1[19]);
  OUTLINED_FUNCTION_10_0(v1[20]);
  OUTLINED_FUNCTION_10_0(v1[21]);
  OUTLINED_FUNCTION_10_0(v1[22]);
  OUTLINED_FUNCTION_10_0(v1[23]);
  OUTLINED_FUNCTION_10_0(v1[24]);
  OUTLINED_FUNCTION_10_0(v1[25]);
  v10 = v1[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210898, &qword_267B19C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_267B16C80();
    OUTLINED_FUNCTION_0(v11);
    (*(v12 + 8))(v5 + v10);
  }

  else
  {
    v13 = *(v5 + v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_267AF3D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MessageListView();
  OUTLINED_FUNCTION_16_0(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_267AF0100(a1, a2, v9, a3);
}

uint64_t sub_267AF3DE0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_15_0(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_267AF3E24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_18();
  v8(v7);
  return a2;
}

uint64_t sub_267AF3EE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_7_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_18();
  v9(v8);
  return v4;
}

void OUTLINED_FUNCTION_3_1(uint64_t a1@<X8>)
{
  v4 = (v3 + a1);
  *v4 = v2;
  v4[1] = v1;
}

uint64_t OUTLINED_FUNCTION_7_2()
{
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[30];
  v5 = v0[25];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  v11 = v0[13];
  v13 = v0[12];
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_10_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_11_0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v5 = *v3;
  v4 = v3[1];
}

uint64_t OUTLINED_FUNCTION_12_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
}

uint64_t OUTLINED_FUNCTION_14_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_20()
{

  return sub_267AEDA60(v1, v0);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_267AF40F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_267AF4134(uint64_t result, int a2, int a3)
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

uint64_t sub_267AF41AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v155 = a1;
  v138 = sub_267B177D0();
  v3 = OUTLINED_FUNCTION_0_0(v138);
  v137 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_2(v8 - v7);
  v154 = sub_267B177F0();
  v9 = OUTLINED_FUNCTION_0_0(v154);
  v141 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_2(v14 - v13);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211148, &qword_267B1A348);
  OUTLINED_FUNCTION_0(v153);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(v18);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211150, &qword_267B1A350);
  OUTLINED_FUNCTION_0(v149);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_2(v22);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211158, &qword_267B1A358);
  OUTLINED_FUNCTION_0(v151);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_2(v26);
  v147 = sub_267B17730();
  v27 = OUTLINED_FUNCTION_0_0(v147);
  v145 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6_2(v32 - v31);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211160, &unk_267B1A360);
  OUTLINED_FUNCTION_0(v142);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_2(v36);
  v136 = sub_267B176E0();
  v37 = OUTLINED_FUNCTION_0_0(v136);
  v135 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_0();
  v43 = v42 - v41;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210FD0, &qword_267B1A088);
  OUTLINED_FUNCTION_0_0(v44);
  v134 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v48);
  v50 = &v134 - v49;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211168, &qword_267B1A370);
  OUTLINED_FUNCTION_0(v139);
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_2(v54);
  v55 = sub_267B16860();
  v56 = OUTLINED_FUNCTION_0_0(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_0();
  v63 = v62 - v61;
  v162 = *v2;
  v64 = *(&v162 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267B16A50();

  v66 = *(v58 + 88);
  v65 = (v58 + 88);
  v67 = v66(v63, v55);
  if (v67 == *MEMORY[0x277D5CA08])
  {
    v68 = (v64 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_sendLabel);
    swift_beginAccess();
    v69 = *v68;
    v70 = v68[1];
    *&v157 = v69;
    *(&v157 + 1) = v70;
    v71 = v2[1];
    v160 = v2[2];
    v161 = v71;
    v72 = swift_allocObject();
    OUTLINED_FUNCTION_11_1(v72);

    sub_267AED784(&v162, v156, &qword_280211180, &qword_267B1A3C0);
    sub_267AED784(&v161, v156, &qword_280210B28, &qword_267B19308);
    sub_267AED784(&v160, v156, &qword_280210E90, &qword_267B19E00);
    sub_267ADCFA4();
    sub_267B175B0();
    v73 = v135;
    v74 = v136;
    (*(v135 + 104))(v43, *MEMORY[0x277D63A90], v136);
    sub_267ADCE94(&qword_2802110B8, &qword_280210FD0, &qword_267B1A088);
    v75 = v148;
    sub_267B17370();
    (*(v73 + 8))(v43, v74);
    (*(v134 + 8))(v50, v44);
    v76 = sub_267AF4FF0();
    KeyPath = swift_getKeyPath();
    v78 = swift_allocObject();
    *(v78 + 16) = v76;
    v79 = (v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211188, &unk_267B1A3F8) + 36));
    *v79 = KeyPath;
    v79[1] = sub_267AF537C;
    v79[2] = v78;
    v80 = (v75 + *(v139 + 36));
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E60, &qword_267B19DC0);
    v82 = v80 + *(v81 + 28);
    sub_267B16DC0();
    *v80 = swift_getKeyPath();
    v83 = (v64 + OBJC_IVAR____TtC10SiriMailUI13SiriMailModel_cancelLabel);
    swift_beginAccess();
    v84 = *v83;
    v85 = v83[1];
    *&v157 = v84;
    *(&v157 + 1) = v85;
    v86 = swift_allocObject();
    OUTLINED_FUNCTION_11_1(v86);
    sub_267AED784(&v162, v156, &qword_280211180, &qword_267B1A3C0);
    sub_267AED784(&v161, v156, &qword_280210B28, &qword_267B19308);
    sub_267AED784(&v160, v156, &qword_280210E90, &qword_267B19E00);

    v87 = v143;
    sub_267B175B0();
    v157 = v160;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280210E90, &qword_267B19E00);
    sub_267B17560();
    v88 = v156[0];
    v89 = swift_getKeyPath();
    v90 = swift_allocObject();
    *(v90 + 16) = v88;
    v91 = (v87 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280211190, &qword_267B1A438) + 36));
    *v91 = v89;
    v91[1] = sub_267AF5840;
    v91[2] = v90;
    v92 = (v87 + *(v142 + 36));
    v93 = v92 + *(v81 + 28);
    sub_267B16DC0();
    *v92 = swift_getKeyPath();
    sub_267AF5414(&qword_280211198, &qword_280211168, &qword_267B1A370, sub_267AF54C4);
    v94 = sub_267B17350();
    v95 = MEMORY[0x277CE11C8];
    v96 = MEMORY[0x277D63A60];
    v158 = MEMORY[0x277CE11C8];
    v159 = MEMORY[0x277D63A60];
    *&v157 = v94;
    sub_267AF5414(&qword_2802111B8, &qword_280211160, &unk_267B1A360, sub_267AF55EC);
    v97 = sub_267B17350();
    v156[3] = v95;
    v156[4] = v96;
    v156[0] = v97;
    v98 = v144;
    sub_267B17720();
    v99 = v145;
    v100 = v147;
    (*(v145 + 16))(v150, v98, v147);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_4();
    sub_267AF5730(v101, v102);
    OUTLINED_FUNCTION_0_3();
    sub_267AF5730(v103, v104);
    v105 = v146;
    sub_267B17080();
    sub_267AED784(v105, v152, &qword_280211158, &qword_267B1A358);
    swift_storeEnumTagMultiPayload();
    sub_267AF5254();
    sub_267B17080();
    sub_267AEC1D4(v105, &qword_280211158, &qword_267B1A358);
    (*(v99 + 8))(v98, v100);
    sub_267AEC1D4(v87, &qword_280211160, &unk_267B1A360);
    return sub_267AF56D0(v148);
  }

  else
  {
    v107 = v150;
    v108 = v152;
    v109 = v154;
    if (v67 == *MEMORY[0x277D5CA18] || v67 == *MEMORY[0x277D5CA00])
    {
      OUTLINED_FUNCTION_10_1();
      v111 = *v65;
      v112 = v65[1];
      v158 = MEMORY[0x277D837D0];
      v159 = MEMORY[0x277D63F80];
      *&v157 = v111;
      *(&v157 + 1) = v112;
      v113 = *MEMORY[0x277D63D60];
      v114 = OUTLINED_FUNCTION_7_3();
      v115(v114);

      v116 = v140;
      sub_267B177E0();
      v117 = v141;
      (*(v141 + 16))(v107, v116, v109);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_4();
      sub_267AF5730(v118, v119);
      OUTLINED_FUNCTION_0_3();
      sub_267AF5730(v120, v121);
      v122 = v146;
      sub_267B17080();
      sub_267AED784(v122, v108, &qword_280211158, &qword_267B1A358);
      swift_storeEnumTagMultiPayload();
      sub_267AF5254();
      sub_267B17080();
      sub_267AEC1D4(v122, &qword_280211158, &qword_267B1A358);
      return (*(v117 + 8))(v116, v109);
    }

    else if (v67 == *MEMORY[0x277D5CA20] || v67 == *MEMORY[0x277D5CA10])
    {
      v124 = v152;
      OUTLINED_FUNCTION_10_1();
      v125 = *v65;
      v126 = v65[1];
      v158 = MEMORY[0x277D837D0];
      v159 = MEMORY[0x277D63F80];
      *&v157 = v125;
      *(&v157 + 1) = v126;
      v127 = *MEMORY[0x277D63D70];
      v128 = OUTLINED_FUNCTION_7_3();
      v129(v128);

      v130 = v140;
      sub_267B177E0();
      v131 = v141;
      (*(v141 + 16))(v124, v130, v109);
      swift_storeEnumTagMultiPayload();
      sub_267AF5254();
      OUTLINED_FUNCTION_0_3();
      sub_267AF5730(v132, v133);
      sub_267B17080();
      return (*(v131 + 8))(v130, v109);
    }

    else
    {
      result = sub_267B17D50();
      __break(1u);
    }
  }

  return result;
}