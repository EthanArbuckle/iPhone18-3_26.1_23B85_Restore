id sub_1DAE32598()
{
  v1 = v0;
  v2 = sub_1DAECDD8C();
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09540, &qword_1DAED9BE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v39 - v7;
  v40 = sub_1DAECDDEC();
  v8 = *(v40 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DAECDDAC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - v18;
  v20 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1DAE319EC(v19);
  v21 = sub_1DAECDD6C();
  v22 = *(v13 + 8);
  v22(v19, v12);
  [v20 setLocale_];

  sub_1DAE317E4(v11);
  v23 = sub_1DAECDDBC();
  v24 = v11;
  v25 = v41;
  (*(v8 + 8))(v24, v40);
  v26 = v1;
  [v20 setTimeZone_];

  [v20 setFormattingContext_];
  sub_1DAE319EC(v17);
  v27 = v42;
  sub_1DAECDD9C();
  v22(v17, v12);
  sub_1DAECDD7C();
  (*(v43 + 8))(v27, v44);
  v28 = sub_1DAECDD5C();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v25, 1, v28) != 1)
  {
    v31 = sub_1DAECDD4C();
    v33 = v32;
    (*(v29 + 8))(v25, v28);
    if (v31 == 28261 && v33 == 0xE200000000000000)
    {
    }

    else
    {
      v34 = sub_1DAED289C();

      if ((v34 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v35 = sub_1DAED1CBC();
    v36 = &selRef_setDateFormat_;
    goto LABEL_12;
  }

  sub_1DAD64398(v25, &qword_1ECC09540, &qword_1DAED9BE0);
LABEL_3:
  if (*v26)
  {
    v30 = [*v26 _effectiveDateFormat];
    sub_1DAED1CEC();
  }

  else
  {
    v37 = *MEMORY[0x1E69941F0];
    sub_1DAED1CEC();
  }

  v35 = sub_1DAED1CBC();

  v36 = &selRef_setLocalizedDateFormatFromTemplate_;
LABEL_12:
  [v20 *v36];

  return v20;
}

uint64_t sub_1DAE32A58()
{
  v0 = sub_1DAED20CC();
  v20 = *(v0 - 8);
  v21 = v0;
  v1 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DAED220C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09500, &qword_1DAED9BA0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  v14 = [objc_opt_self() defaultCenter];
  v15 = *MEMORY[0x1E69DDB88];
  sub_1DAED221C();

  sub_1DAED20BC();
  sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v16 = sub_1DAED20EC();
  v22 = v16;
  sub_1DAE34E60(&qword_1EE0055B0, MEMORY[0x1E6969F20]);
  sub_1DAD88828();
  sub_1DAECEFDC();

  (*(v20 + 8))(v3, v21);
  (*(v5 + 8))(v8, v4);
  sub_1DAD64B94(&qword_1EE005D40, &qword_1ECC09500, &qword_1DAED9BA0);
  v17 = sub_1DAECEF6C();
  (*(v10 + 8))(v13, v9);
  return v17;
}

uint64_t sub_1DAE32D74(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DAECDCEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for InlineDateModifier(0);
  v12 = a2 + *(v11 + 20);
  v13 = sub_1DAECEDCC();
  v14 = sub_1DAED203C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DAD61000, v13, v14, "Significant time changed - reloading inline date modifier", v15, 2u);
    MEMORY[0x1E127F100](v15, -1, -1);
  }

  sub_1DAECDCDC();
  v16 = *(v11 + 24);
  (*(v4 + 16))(v8, v10, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094D0, &qword_1DAED9A90);
  sub_1DAED078C();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_1DAE32F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  *a3 = sub_1DAECF8FC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094F0, &qword_1DAED9B90);
  sub_1DAE31BF4(v3, a1, a3 + *(v8 + 44));
  v9 = sub_1DAE32A58();
  sub_1DAE353FC(v3, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InlineDateModifier);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  sub_1DAE35464(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for InlineDateModifier);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC094F8, &qword_1DAED9B98);
  *(a3 + *(result + 52)) = v9;
  v13 = (a3 + *(result + 56));
  *v13 = sub_1DAE354CC;
  v13[1] = v11;
  return result;
}

uint64_t sub_1DAE330B0@<X0>(void *a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC093C8, &qword_1DAED9758);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC093D0, &qword_1DAED9760);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - v12;
  if (!a1)
  {
    goto LABEL_6;
  }

  v14 = [a1 symbolScale];
  if (v14 == 3)
  {
    v15 = MEMORY[0x1E69816C0];
    goto LABEL_9;
  }

  if (v14 == 2)
  {
    v15 = MEMORY[0x1E69816E0];
    goto LABEL_9;
  }

  if (v14 != 1)
  {
LABEL_6:
    v16 = sub_1DAED074C();
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
    goto LABEL_10;
  }

  v15 = MEMORY[0x1E69816C8];
LABEL_9:
  v17 = *v15;
  v18 = sub_1DAED074C();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v9, v17, v18);
  (*(v19 + 56))(v9, 0, 1, v18);
LABEL_10:
  sub_1DAE33380(v9, v13);
  sub_1DAD64398(v9, &qword_1ECC093C8, &qword_1DAED9758);
  if ((a2 & 1) == 0)
  {
    if (!a1)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (!a1)
  {
    goto LABEL_17;
  }

  if (![a1 foregroundDateColor])
  {
LABEL_15:
    if ([a1 foregroundColor])
    {
      goto LABEL_16;
    }

LABEL_17:
    v20 = sub_1DAED066C();
    goto LABEL_18;
  }

LABEL_16:
  v20 = sub_1DAED06DC();
LABEL_18:
  v21 = v20;
  KeyPath = swift_getKeyPath();
  sub_1DAD7C48C(v13, a3, &qword_1ECC093D0, &qword_1DAED9760);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC093D8, &qword_1DAED9798);
  v24 = (a3 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = v21;
  return result;
}

uint64_t sub_1DAE33380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC093E0, &qword_1DAED97A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - v5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC093E8, &qword_1DAED97A8);
  v7 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC093C8, &qword_1DAED9758);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - v12;
  v14 = sub_1DAED074C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAD6495C(a1, v13, &qword_1ECC093C8, &qword_1DAED9758);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1DAD64398(v13, &qword_1ECC093C8, &qword_1DAED9758);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC093F0, &qword_1DAED97B0);
    (*(*(v19 - 8) + 16))(v6, v26, v19);
    swift_storeEnumTagMultiPayload();
    sub_1DAE34194();
    sub_1DAD64B94(&qword_1EE0058F8, &qword_1ECC093F0, &qword_1DAED97B0);
    return sub_1DAECFB1C();
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    KeyPath = swift_getKeyPath();
    v22 = &v9[*(v27 + 36)];
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC093F8, &qword_1DAED97B8);
    (*(v15 + 16))(v22 + *(v23 + 28), v18, v14);
    *v22 = KeyPath;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC093F0, &qword_1DAED97B0);
    (*(*(v24 - 8) + 16))(v9, v26, v24);
    sub_1DAD6495C(v9, v6, &qword_1ECC093E8, &qword_1DAED97A8);
    swift_storeEnumTagMultiPayload();
    sub_1DAE34194();
    sub_1DAD64B94(&qword_1EE0058F8, &qword_1ECC093F0, &qword_1DAED97B0);
    sub_1DAECFB1C();
    sub_1DAD64398(v9, &qword_1ECC093E8, &qword_1DAED97A8);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_1DAE337C8(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 fontSpecification];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 name];
      if (v5)
      {
        v6 = v5;
        sub_1DAED1CEC();

        v7 = [v4 size];
        if (v7)
        {
          v8 = v7;
          [v7 doubleValue];
          v9 = sub_1DAED013C();
        }

        else
        {
          v14 = [objc_opt_self() preferredFontForTextStyle_];
          [v14 pointSize];

          v9 = sub_1DAED013C();
        }

        return v9;
      }

      else
      {
        v11 = [v4 size];
        if (v11)
        {
          v12 = v11;
          [v11 doubleValue];
          [v4 design];
          v13 = sub_1DAE34348(a1);
        }

        else
        {
          v15 = [objc_opt_self() preferredFontForTextStyle_];
          [v15 pointSize];

          [v4 design];
          v13 = sub_1DAE34348(a1);
        }

        return v13;
      }
    }
  }

  return sub_1DAED00AC();
}

unint64_t sub_1DAE33A18(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    return a2;
  }

  result = sub_1DAED247C();
  v4 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E127E1F0](v5, v3);
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      [v6 type];
      [v7 selector];
      v8 = sub_1DAED019C();
    }

    while (v4 != v5);
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAE33B2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF58C();
  *a1 = result;
  return result;
}

uint64_t sub_1DAE33B58(uint64_t *a1)
{
  v1 = *a1;

  return sub_1DAECF59C();
}

unint64_t sub_1DAE33B84()
{
  result = qword_1EE005A60;
  if (!qword_1EE005A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC093B0, &qword_1DAED94B8);
    sub_1DAE33C10();
    sub_1DAE33CF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A60);
  }

  return result;
}

unint64_t sub_1DAE33C10()
{
  result = qword_1EE005B30;
  if (!qword_1EE005B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC093A8, &qword_1DAED94B0);
    sub_1DAE34E60(&qword_1EE0056D0, MEMORY[0x1E69859F0]);
    sub_1DAD64B94(&qword_1EE005898, &qword_1ECC09328, &qword_1DAED9398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005B30);
  }

  return result;
}

unint64_t sub_1DAE33CF8()
{
  result = qword_1EE006938[0];
  if (!qword_1EE006938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE006938);
  }

  return result;
}

unint64_t sub_1DAE33D4C()
{
  result = qword_1EE005A30;
  if (!qword_1EE005A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09388, &qword_1DAED9490);
    sub_1DAE33B84();
    sub_1DAE33DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A30);
  }

  return result;
}

unint64_t sub_1DAE33DD8()
{
  result = qword_1EE0060F8;
  if (!qword_1EE0060F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0060F8);
  }

  return result;
}

void sub_1DAE33EAC()
{
  sub_1DAECFE7C();
  if (v0 <= 0x3F)
  {
    sub_1DADA6EF8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DAE33F60()
{
  sub_1DAECFDDC();
  if (v0 <= 0x3F)
  {
    sub_1DADA6EF8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1DAE33FEC()
{
  result = qword_1EE005958;
  if (!qword_1EE005958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC093C0, &qword_1DAED9628);
    sub_1DAE33B84();
    sub_1DAE33D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005958);
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

uint64_t sub_1DAE3409C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DAE340F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1DAE34194()
{
  result = qword_1EE005AD8;
  if (!qword_1EE005AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC093E8, &qword_1DAED97A8);
    sub_1DAD64B94(&qword_1EE0058F8, &qword_1ECC093F0, &qword_1DAED97B0);
    sub_1DAD64B94(&qword_1EE005888, &qword_1ECC093F8, &qword_1DAED97B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005AD8);
  }

  return result;
}

uint64_t sub_1DAE34278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1DAE34348(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08598, &qword_1DAED6970);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09430, &qword_1DAED9838);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - v8;
  v10 = sub_1DAED009C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    sub_1DAD64398(v9, &qword_1ECC09430, &qword_1DAED9838);
    goto LABEL_18;
  }

  v15 = a1;
  v16 = [v15 fontSpecification];
  if (!v16)
  {

    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_12:
    sub_1DAD64398(v9, &qword_1ECC09430, &qword_1DAED9838);
    v20 = v15;
    v21 = [v20 fontSpecification];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 design];

      v24 = sub_1DAED00EC();
      if (v23 == 1)
      {
        v25 = MEMORY[0x1E6980E08];
      }

      else if (v23 == 2)
      {
        v25 = MEMORY[0x1E6980E28];
      }

      else if (v23 == 3)
      {
        v25 = MEMORY[0x1E6980E10];
      }

      else
      {
        v25 = MEMORY[0x1E6980E20];
      }

      (*(*(v24 - 8) + 104))(v5, *v25, v24);
      goto LABEL_23;
    }

LABEL_18:
    v26 = *MEMORY[0x1E6980E20];
    v24 = sub_1DAED00EC();
    (*(*(v24 - 8) + 104))(v5, v26, v24);
LABEL_23:
    sub_1DAED00EC();
    (*(*(v24 - 8) + 56))(v5, 0, 1, v24);
    v19 = sub_1DAED015C();
    sub_1DAD64398(v5, &qword_1ECC08598, &qword_1DAED6970);
    return v19;
  }

  v17 = v16;
  v18 = [v16 design];
  if (v18 == 4)
  {
    sub_1DAED008C();
    goto LABEL_9;
  }

  if (v18 != 5)
  {
    (*(v11 + 56))(v9, 1, 1, v10);

    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  sub_1DAED007C();
LABEL_9:

  (*(v11 + 56))(v9, 0, 1, v10);
LABEL_10:
  (*(v11 + 32))(v14, v9, v10);
  sub_1DAED012C();
  v19 = sub_1DAED014C();
  (*(v11 + 8))(v14, v10);
  return v19;
}

unint64_t sub_1DAE347F0()
{
  result = qword_1EE005B28;
  if (!qword_1EE005B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC093D8, &qword_1DAED9798);
    sub_1DAE348A8();
    sub_1DAD64B94(&qword_1EE005890, &qword_1ECC09438, &qword_1DAED9878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005B28);
  }

  return result;
}

unint64_t sub_1DAE348A8()
{
  result = qword_1EE0059B0;
  if (!qword_1EE0059B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC093D0, &qword_1DAED9760);
    sub_1DAE34194();
    sub_1DAD64B94(&qword_1EE0058F8, &qword_1ECC093F0, &qword_1DAED97B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0059B0);
  }

  return result;
}

unint64_t sub_1DAE34960()
{
  result = qword_1ECC09440;
  if (!qword_1ECC09440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09400, &qword_1DAED97F0);
    sub_1DAD64B94(&qword_1ECC09448, &qword_1ECC09450, &qword_1DAED9880);
    sub_1DAD64B94(&qword_1ECC09458, &qword_1ECC09408, &qword_1DAED97F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09440);
  }

  return result;
}

unint64_t sub_1DAE34A48()
{
  result = qword_1ECC09460;
  if (!qword_1ECC09460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09460);
  }

  return result;
}

unint64_t sub_1DAE34AA0()
{
  result = qword_1ECC09468;
  if (!qword_1ECC09468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09468);
  }

  return result;
}

unint64_t sub_1DAE34B3C()
{
  result = qword_1EE005AA8;
  if (!qword_1EE005AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09478, &qword_1DAED99A8);
    sub_1DAD64B94(&qword_1EE005B70, &qword_1ECC09480, &qword_1DAED99B0);
    sub_1DAD64B94(&qword_1EE0058A8, &qword_1ECC09488, &qword_1DAED99B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005AA8);
  }

  return result;
}

uint64_t sub_1DAE34C60(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1DAECF1AC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DAECF1EC();
  sub_1DAE34E60(&qword_1ECC094C8, MEMORY[0x1E697E3C0]);
  sub_1DAED1FBC();
  sub_1DAED1FDC();
  result = sub_1DAED1FCC();
  if (result == 1)
  {
    sub_1DAECF1FC();
    sub_1DAED099C();
    v18 = 0;
    v17[0] = 0;
    sub_1DAE2FA38(*&a4, 0, *&a5, 0, a1, a7);
    v18 = 0;
    v17[0] = 0;
    sub_1DAECF19C();
    return (*(v12 + 8))(v15, v11);
  }

  return result;
}

uint64_t sub_1DAE34E60(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DAE34ED0()
{
  sub_1DADA6EF8();
  if (v0 <= 0x3F)
  {
    sub_1DAECEDEC();
    if (v1 <= 0x3F)
    {
      sub_1DAE3502C(319, &qword_1EE005858, MEMORY[0x1E6969530], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1DAE3502C(319, &qword_1EE005BA8, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1DAE3502C(319, &qword_1EE005BB0, MEMORY[0x1E6969770], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1DAE3502C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_36Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAECFF0C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_1DAECEDEC();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_37Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DAECFF0C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = sub_1DAECEDEC();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

unint64_t sub_1DAE3530C()
{
  result = qword_1EE005988;
  if (!qword_1EE005988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC094E8, qword_1DAED9AE8);
    sub_1DAE34B3C();
    sub_1DAD64B94(&qword_1EE005B70, &qword_1ECC09480, &qword_1DAED99B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005988);
  }

  return result;
}

uint64_t sub_1DAE353FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAE35464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAE354CC(uint64_t a1)
{
  v3 = *(type metadata accessor for InlineDateModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1DAE32D74(a1, v4);
}

unint64_t sub_1DAE3553C()
{
  result = qword_1EE005A90;
  if (!qword_1EE005A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09530, &qword_1DAED9BD0);
    sub_1DAE33CF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A90);
  }

  return result;
}

uint64_t sub_1DAE35634(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_1DAE356CC()
{
  result = qword_1ECC09598;
  if (!qword_1ECC09598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09588, &qword_1DAED9C28);
    sub_1DAE34E60(&qword_1EE0061A8, type metadata accessor for MetadataInlineTextGraphicView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09598);
  }

  return result;
}

uint64_t sub_1DAE35788(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1DAE35810()
{
  sub_1DAE3502C(319, &qword_1EE0058B8, MEMORY[0x1E697CAE8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1DAE3502C(319, &qword_1EE0058B0, MEMORY[0x1E697CB10], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1DADA6EF8();
      if (v2 <= 0x3F)
      {
        sub_1DAECEDEC();
        if (v3 <= 0x3F)
        {
          sub_1DAE3502C(319, &qword_1EE0058C0, MEMORY[0x1E697CA90], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1DAE35994()
{
  result = sub_1DAECFF0C();
  if (v1 <= 0x3F)
  {
    result = sub_1DAECDD3C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DAE35A18()
{
  result = qword_1EE005938;
  if (!qword_1EE005938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC095B0, &qword_1DAED9C78);
    sub_1DAD64B94(&qword_1EE005B78, &qword_1ECC09550, &qword_1DAED9BF0);
    sub_1DAE34E60(&qword_1EE0061A8, type metadata accessor for MetadataInlineTextGraphicView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005938);
  }

  return result;
}

unint64_t sub_1DAE35B64()
{
  result = qword_1EE005A68;
  if (!qword_1EE005A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09660, &qword_1DAED9DA8);
    sub_1DAE35C1C();
    sub_1DAD64B94(&qword_1EE005880, &qword_1ECC09668, &qword_1DAED9DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A68);
  }

  return result;
}

unint64_t sub_1DAE35C1C()
{
  result = qword_1EE005B38;
  if (!qword_1EE005B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09658, &qword_1DAED9DA0);
    sub_1DAE34E60(qword_1EE0079C8, type metadata accessor for MetadataTextView);
    sub_1DAE33CF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005B38);
  }

  return result;
}

unint64_t sub_1DAE35CD8()
{
  result = qword_1EE005A18;
  if (!qword_1EE005A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC095E8, &qword_1DAED9D30);
    sub_1DAE35D64();
    sub_1DAE35F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A18);
  }

  return result;
}

unint64_t sub_1DAE35D64()
{
  result = qword_1EE005A38;
  if (!qword_1EE005A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC095D8, &qword_1DAED9D20);
    sub_1DAE35DF0();
    sub_1DAE35F40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A38);
  }

  return result;
}

unint64_t sub_1DAE35DF0()
{
  result = qword_1EE005A80;
  if (!qword_1EE005A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC095D0, &qword_1DAED9D18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC095C0, &qword_1DAED9D08);
    sub_1DAD64B94(&qword_1EE005818, &qword_1ECC095C0, &qword_1DAED9D08);
    swift_getOpaqueTypeConformance2();
    sub_1DAE35EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A80);
  }

  return result;
}

unint64_t sub_1DAE35EEC()
{
  result = qword_1EE0067D0[0];
  if (!qword_1EE0067D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0067D0);
  }

  return result;
}

unint64_t sub_1DAE35F40()
{
  result = qword_1EE0067C8;
  if (!qword_1EE0067C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0067C8);
  }

  return result;
}

unint64_t sub_1DAE35F94()
{
  result = qword_1EE006100[0];
  if (!qword_1EE006100[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE006100);
  }

  return result;
}

uint64_t View.conditionalDebugMarginsView(metrics:showsBackground:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DebugOverlayObserver();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1DAD79620();
  sub_1DAE37250(&qword_1EE006D80, type metadata accessor for DebugOverlayObserver);
  v13 = a1;
  v14 = a2;
  v15 = sub_1DAECF21C();
  v16 = v11;
  MEMORY[0x1E127C210](&v13, a3, &type metadata for DebugMarginsViewModifier, a4);
}

unint64_t sub_1DAE360E4()
{
  result = qword_1ECC09670;
  if (!qword_1ECC09670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09670);
  }

  return result;
}

__n128 sub_1DAE36160@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DAED00CC();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAECF96C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1DAECF95C();
  sub_1DAECF94C();
  v33 = a1 % 1000;
  sub_1DAECF92C();
  sub_1DAECF94C();
  sub_1DAECF98C();
  v10 = sub_1DAED033C();
  v12 = v11;
  v14 = v13;
  v33 = sub_1DAED066C();
  v30 = sub_1DAED023C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1DADEA34C(v10, v12, v14 & 1);

  v21 = sub_1DAED060C();
  LOBYTE(v10) = sub_1DAED004C();
  sub_1DAED01BC();
  sub_1DAED00BC();
  v22 = sub_1DAED00DC();

  (*(v31 + 8))(v7, v32);
  KeyPath = swift_getKeyPath();
  v18 &= 1u;
  LOBYTE(v33) = v18;
  v24 = sub_1DAED004C();
  *a2 = v30;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18;
  *(a2 + 24) = v20;
  *(a2 + 32) = v21;
  *(a2 + 40) = v10;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = v22;
  *(a2 + 64) = v24;
  __asm { FMOV            V0.2D, #2.0 }

  *(a2 + 72) = result;
  *(a2 + 88) = result;
  *(a2 + 104) = 0;
  return result;
}

double sub_1DAE36418@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DAED00CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DAECFA2C();
  v30 = 1;
  sub_1DAE366A4(a1, &v20);
  v36 = v25;
  v37 = v26;
  v38 = v27;
  v33 = v22;
  v34 = v23;
  v35 = v24;
  v31 = v20;
  v32 = v21;
  v40[6] = v26;
  v40[7] = v27;
  v40[2] = v22;
  v40[3] = v23;
  v40[4] = v24;
  v40[5] = v25;
  v39 = v28;
  v41 = v28;
  v40[0] = v20;
  v40[1] = v21;
  sub_1DAD6495C(&v31, &v19, &qword_1ECC09680, &qword_1DAED9E40);
  sub_1DAD64398(v40, &qword_1ECC09680, &qword_1DAED9E40);
  *(&v29[5] + 7) = v36;
  *(&v29[6] + 7) = v37;
  *(&v29[7] + 7) = v38;
  *(&v29[1] + 7) = v32;
  *(&v29[2] + 7) = v33;
  *(&v29[3] + 7) = v34;
  *(&v29[4] + 7) = v35;
  *(&v29[8] + 7) = v39;
  *(v29 + 7) = v31;
  v9 = v30;
  sub_1DAED01BC();
  sub_1DAED00BC();
  v10 = sub_1DAED00DC();

  (*(v5 + 8))(v8, v4);
  KeyPath = swift_getKeyPath();
  v12 = sub_1DAED062C();
  v13 = v29[4];
  *(a2 + 97) = v29[5];
  v14 = v29[7];
  *(a2 + 113) = v29[6];
  *(a2 + 129) = v14;
  *(a2 + 144) = *(&v29[7] + 15);
  v15 = v29[0];
  *(a2 + 33) = v29[1];
  result = *&v29[2];
  v17 = v29[3];
  *(a2 + 49) = v29[2];
  *(a2 + 65) = v17;
  *(a2 + 81) = v13;
  *a2 = v18;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 17) = v15;
  *(a2 + 160) = KeyPath;
  *(a2 + 168) = v10;
  *(a2 + 176) = v12;
  return result;
}

uint64_t sub_1DAE366A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v87 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v93 = &v85 - v5;
  v100 = sub_1DAECDCEC();
  v94 = *(v100 - 8);
  v6 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v92 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAECF96C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09678, &qword_1DAED9DF8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v85 - v15;
  v17 = sub_1DAED0DDC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v99 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v85 - v22;
  sub_1DAD6495C(a1, v16, &qword_1ECC09678, &qword_1DAED9DF8);
  v24 = *(v18 + 48);
  v25 = v24(v16, 1, v17);
  v88 = a1;
  if (v25 == 1)
  {
    sub_1DAD64398(v16, &qword_1ECC09678, &qword_1DAED9DF8);
    v26 = type metadata accessor for DebugInfo();
    sub_1DAD6495C(a1 + *(v26 + 20), v14, &qword_1ECC09678, &qword_1DAED9DF8);
    if (v24(v14, 1, v17) == 1)
    {
      sub_1DAD64398(v14, &qword_1ECC09678, &qword_1DAED9DF8);
      v98 = 0;
      v99 = 0;
      v96 = 0;
      v97 = 0;
      v95 = 255;
    }

    else
    {
      v30 = v99;
      (*(v18 + 32))(v99, v14, v17);
      sub_1DAECF95C();
      sub_1DAECF94C();
      sub_1DAED0D8C();
      sub_1DAECF93C();

      sub_1DAECF94C();
      sub_1DAECF98C();
      v101 = sub_1DAED033C();
      v102 = v31;
      v103 = v32 & 1;
      v104 = v33;
      v105 = 1;
      sub_1DAECFB1C();
      (*(v18 + 8))(v30, v17);
      v98 = v109;
      v99 = v106;
      v96 = v108;
      v97 = v107;
      v95 = v110;
      sub_1DAE37138(v106, v107, v108);
    }
  }

  else
  {
    (*(v18 + 32))(v23, v16, v17);
    sub_1DAECF95C();
    sub_1DAECF94C();
    sub_1DAED0D8C();
    sub_1DAECF93C();

    sub_1DAECF94C();
    sub_1DAECF98C();
    v101 = sub_1DAED033C();
    v102 = v27;
    v103 = v28 & 1;
    v104 = v29;
    v105 = 0;
    sub_1DAECFB1C();
    (*(v18 + 8))(v23, v17);
    v98 = v109;
    v99 = v106;
    v96 = v108;
    v97 = v107;
    v95 = v110;
    sub_1DAE37138(v106, v107, v108);
  }

  v34 = v94;
  v35 = type metadata accessor for DebugInfo();
  v36 = v88;
  v37 = v93;
  sub_1DAD6495C(v88 + v35[6], v93, &qword_1ECC07CE8, &qword_1DAED6F60);
  v38 = v100;
  if ((*(v34 + 48))(v37, 1, v100) == 1)
  {
    sub_1DAD64398(v37, &qword_1ECC07CE8, &qword_1DAED6F60);
    v94 = 0;
    v100 = 0;
    v90 = 0;
    v91 = 0;
  }

  else
  {
    v39 = v92;
    (*(v34 + 32))(v92, v37, v38);
    sub_1DAECF95C();
    sub_1DAECF94C();
    sub_1DAE37250(&qword_1EE00A6E8, MEMORY[0x1E6969530]);
    sub_1DAECF91C();
    sub_1DAECF94C();
    sub_1DAECF98C();
    v40 = sub_1DAED033C();
    v41 = v35;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    (*(v34 + 8))(v39, v38);
    v94 = v40;
    v100 = v43;
    v48 = v43;
    v35 = v41;
    v90 = v45 & 1;
    sub_1DAE17A34(v40, v48, v45 & 1);
    v91 = v47;
  }

  v49 = (v36 + v35[7]);
  if (v49[1])
  {
    v50 = *v49;
    sub_1DAECF95C();
    sub_1DAECF94C();
    sub_1DAECF93C();
    sub_1DAECF94C();
    sub_1DAECF98C();
    v51 = sub_1DAED033C();
    v53 = v52;
    v89 = v51;
    v56 = v55;
    v92 = (v54 & 1);
    sub_1DAE17A34(v51, v55, v54 & 1);
    v93 = v53;
  }

  else
  {
    v89 = 0;
    v56 = 0;
    v92 = 0;
    v93 = 0;
  }

  v57 = (v36 + v35[8]);
  v58 = v57[1];
  if (v58)
  {
    v59 = *v57;
    sub_1DAECF95C();
    sub_1DAECF94C();
    sub_1DAECF93C();
    sub_1DAECF94C();
    sub_1DAECF98C();
    v60 = sub_1DAED033C();
    v62 = v61;
    v58 = v60;
    v65 = v64;
    v66 = v63 & 1;
    sub_1DAE17A34(v60, v64, v63 & 1);
    v88 = v62;
  }

  else
  {
    v65 = 0;
    v66 = 0;
    v88 = 0;
  }

  sub_1DAE37120(v99, v97, v96, v98, v95);
  v67 = v90;
  v68 = v91;
  sub_1DAE37174(v94, v100, v90, v91);
  v69 = v89;
  v86 = v56;
  v70 = v92;
  v71 = v93;
  sub_1DAE37174(v89, v56, v92, v93);
  v72 = v88;
  sub_1DAE37174(v58, v65, v66, v88);
  sub_1DAE371B8(v69, v56, v70, v71);
  v73 = v68;
  v91 = v68;
  sub_1DAE371B8(v94, v100, v67, v68);
  v74 = v98;
  v75 = v99;
  v76 = v96;
  v77 = v97;
  LOBYTE(v69) = v95;
  sub_1DAE371FC(v99, v97, v96, v98, v95);
  sub_1DAE371B8(v58, v65, v66, v72);
  v78 = v87;
  *v87 = v75;
  v78[1] = v77;
  v78[2] = v76;
  v78[3] = v74;
  *(v78 + 32) = v69;
  v79 = v93;
  v80 = v94;
  v81 = v100;
  v78[5] = v94;
  v78[6] = v81;
  LOBYTE(v69) = v90;
  v78[7] = v90;
  v78[8] = v73;
  v82 = v89;
  v83 = v86;
  v78[9] = v89;
  v78[10] = v83;
  LOBYTE(v76) = v92;
  v78[11] = v92;
  v78[12] = v79;
  v78[13] = v58;
  v78[14] = v65;
  v78[15] = v66;
  v78[16] = v72;
  sub_1DAE371B8(v58, v65, v66, v72);
  sub_1DAE371B8(v82, v83, v76, v79);
  sub_1DAE371B8(v80, v100, v69, v91);
  return sub_1DAE371FC(v99, v97, v96, v98, v95);
}

uint64_t sub_1DAE37120(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1DAE37138(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1DAE37138(uint64_t a1, uint64_t a2, char a3)
{
  sub_1DAE17A34(a1, a2, a3 & 1);
}

uint64_t sub_1DAE37174(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1DAE17A34(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1DAE371B8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1DADEA34C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1DAE371FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1DAE37214(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1DAE37214(uint64_t a1, uint64_t a2, char a3)
{
  sub_1DADEA34C(a1, a2, a3 & 1);
}

uint64_t sub_1DAE37250(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LiveWidgetEntryView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09AF0, &unk_1DAED7740);
  sub_1DAED076C();
  *(a2 + 16) = v9;
  sub_1DAED076C();
  *(a2 + 32) = v9;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
  v5 = *(type metadata accessor for LiveWidgetEntryView() + 36);
  v6 = sub_1DAECEDEC();
  (*(*(v6 - 8) + 16))(a2 + v5, a1 + v4, v6);
  type metadata accessor for LiveWidgetEntryViewModel(0);
  sub_1DAD7305C(&qword_1EE009E48, type metadata accessor for LiveWidgetEntryViewModel);
  result = sub_1DAECF21C();
  *a2 = result;
  *(a2 + 8) = v8;
  return result;
}

uint64_t LiveWidgetEntryView.customBackgroundView<A>(isEnabled:background:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = a1;
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  result = sub_1DAD76078(v8, a4);
  if (v5)
  {
    a2(result);
    v10 = sub_1DAED087C();
    v11 = *(a4 + 56);

    *(a4 + 56) = v10;
  }

  return result;
}

uint64_t LiveWidgetEntryView.clippedToShape(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1DAD76078(v2, a2);
  *(a2 + 48) = a1;
  return result;
}

uint64_t sub_1DAE374D8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097D8, &qword_1DAEDA4A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09770, &qword_1DAEDA250);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22[-v10];
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v12 = sub_1DAECE06C();

  if (v12)
  {
    v13 = sub_1DAED08FC();
    v15 = v14;
    sub_1DAE36160(a1, &v23);
    v34 = v27;
    v35 = v28;
    v36 = v29;
    v30 = v23;
    v31 = v24;
    v32 = v25;
    v33 = v26;
    *&v37 = v13;
    *(&v37 + 1) = v15;
    sub_1DAD6495C(v2, v11, &qword_1ECC09720, &qword_1DAED9EF0);
    v16 = &v11[*(v8 + 36)];
    v17 = v35;
    v16[4] = v34;
    v16[5] = v17;
    v18 = v37;
    v16[6] = v36;
    v16[7] = v18;
    v19 = v31;
    *v16 = v30;
    v16[1] = v19;
    v20 = v33;
    v16[2] = v32;
    v16[3] = v20;
    v38[0] = v23;
    v38[1] = v24;
    v38[5] = v28;
    v38[6] = v29;
    v38[3] = v26;
    v38[4] = v27;
    v38[2] = v25;
    v39 = v13;
    v40 = v15;
    sub_1DAD6495C(&v30, v22, &qword_1ECC09788, &qword_1DAEDA268);
    sub_1DAD64398(v38, &qword_1ECC09788, &qword_1DAEDA268);
    sub_1DAD6495C(v11, v7, &qword_1ECC09770, &qword_1DAEDA250);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09720, &qword_1DAED9EF0);
    sub_1DAE38AA0();
    sub_1DAE38B58();
    sub_1DAECFB1C();
    return sub_1DAD64398(v11, &qword_1ECC09770, &qword_1DAEDA250);
  }

  else
  {
    sub_1DAD6495C(v1, v7, &qword_1ECC09720, &qword_1DAED9EF0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09720, &qword_1DAED9EF0);
    sub_1DAE38AA0();
    sub_1DAE38B58();
    return sub_1DAECFB1C();
  }
}

uint64_t sub_1DAE377C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097E0, &unk_1DAEDA4B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09778, &qword_1DAEDA258);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v26 - v12;
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v14 = sub_1DAECE09C();

  if (v14)
  {
    v26[1] = a2;
    v15 = sub_1DAED08FC();
    v17 = v16;
    sub_1DAE36418(a1, &v28);
    v48 = v36;
    v49 = v37;
    v50 = v38;
    v44 = v32;
    v45 = v33;
    v46 = v34;
    v47 = v35;
    v40 = v28;
    v41 = v29;
    v42 = v30;
    v43 = v31;
    *&v51 = v39;
    *(&v51 + 1) = v15;
    v52 = v17;
    sub_1DAD6495C(v3, v13, &qword_1ECC09718, &qword_1DAED9EE8);
    v18 = &v13[*(v10 + 36)];
    v19 = v51;
    *(v18 + 10) = v50;
    *(v18 + 11) = v19;
    *(v18 + 24) = v52;
    v20 = v47;
    *(v18 + 6) = v46;
    *(v18 + 7) = v20;
    v21 = v49;
    *(v18 + 8) = v48;
    *(v18 + 9) = v21;
    v22 = v43;
    *(v18 + 2) = v42;
    *(v18 + 3) = v22;
    v23 = v45;
    *(v18 + 4) = v44;
    *(v18 + 5) = v23;
    v24 = v41;
    *v18 = v40;
    *(v18 + 1) = v24;
    v53[8] = v36;
    v53[9] = v37;
    v53[10] = v38;
    v53[4] = v32;
    v53[5] = v33;
    v53[6] = v34;
    v53[7] = v35;
    v53[0] = v28;
    v53[1] = v29;
    v53[2] = v30;
    v53[3] = v31;
    v54 = v39;
    v55 = v15;
    v56 = v17;
    sub_1DAD6495C(&v40, &v27, &qword_1ECC09780, &qword_1DAEDA260);
    sub_1DAD64398(v53, &qword_1ECC09780, &qword_1DAEDA260);
    sub_1DAD6495C(v13, v9, &qword_1ECC09778, &qword_1DAEDA258);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09718, &qword_1DAED9EE8);
    sub_1DAE38BE4();
    sub_1DAE38C9C();
    sub_1DAECFB1C();
    return sub_1DAD64398(v13, &qword_1ECC09778, &qword_1DAEDA258);
  }

  else
  {
    sub_1DAD6495C(v2, v9, &qword_1ECC09718, &qword_1DAED9EE8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09718, &qword_1DAED9EE8);
    sub_1DAE38BE4();
    sub_1DAE38C9C();
    return sub_1DAECFB1C();
  }
}

uint64_t sub_1DAE37B10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF6DC();
  *a1 = result;
  return result;
}

uint64_t sub_1DAE37B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v16 - v13;
  sub_1DAD6495C(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t sub_1DAE37C18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF4BC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAE37C70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF54C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAE37CC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v2 = *(a2 + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC084C8, &qword_1DAED68A8);
  result = sub_1DAED077C();
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1DAED078C();
  }

  return result;
}

uint64_t LiveWidgetEntryLaunchHandlingModifier.init(viewModel:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LiveWidgetEntryViewModel(0);
  sub_1DAD7305C(&qword_1EE009E48, type metadata accessor for LiveWidgetEntryViewModel);
  result = sub_1DAECF21C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DAE37DD8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v3 = sub_1DAED05EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09820, &qword_1DAEDA4F8);
  v9 = *(v8 - 8);
  v58 = v8 - 8;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v15 = sub_1DAED15AC();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09828, &qword_1DAEDA500);
  v59 = *(v61 - 8);
  v20 = *(v59 + 64);
  v21 = MEMORY[0x1EEE9AC00](v61);
  v60 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v66 = &v52 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v64 = &v52 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v65 = &v52 - v27;
  v57 = *a1;
  *&v68 = v57;
  v28 = *MEMORY[0x1E6985740];
  v56 = v16[13];
  v54 = v15;
  v56(v19, v28, v15);
  sub_1DAED039C();
  v55 = v16[1];
  v55(v19, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09830, &qword_1DAEDA508);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1DAED64C0;
  v30 = *MEMORY[0x1E69814D8];
  v31 = *(v4 + 104);
  v31(v7, v30, v3);
  sub_1DAED06EC();
  *(v29 + 32) = sub_1DAED08CC();
  *(v29 + 40) = v32;
  v31(v7, v30, v3);
  sub_1DAED06EC();
  *(v29 + 48) = sub_1DAED08CC();
  *(v29 + 56) = v33;
  sub_1DAED09AC();
  sub_1DAED09BC();
  sub_1DAED08DC();
  sub_1DAECF20C();
  v34 = *(v58 + 44);
  v35 = *MEMORY[0x1E6981DF8];
  v36 = sub_1DAED096C();
  (*(*(v36 - 8) + 104))(&v14[v34], v35, v36);
  v37 = v69;
  v38 = v14;
  *v14 = v68;
  *(v14 + 1) = v37;
  *(v14 + 4) = v70;
  v53 = v14;
  v67 = v57;
  v39 = v54;
  v56(v19, *MEMORY[0x1E6985748], v54);
  v40 = v64;
  sub_1DAED039C();
  v55(v19, v39);
  v41 = v59;
  v42 = *(v59 + 16);
  v43 = v66;
  v44 = v61;
  v42(v66, v65, v61);
  v45 = v38;
  v46 = v62;
  sub_1DAD6495C(v45, v62, &qword_1ECC09820, &qword_1DAEDA4F8);
  v47 = v60;
  v42(v60, v40, v44);
  v48 = v63;
  v42(v63, v43, v44);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09838, &unk_1DAEDA510);
  sub_1DAD6495C(v46, &v48[*(v49 + 48)], &qword_1ECC09820, &qword_1DAEDA4F8);
  v42(&v48[*(v49 + 64)], v47, v44);
  v50 = *(v41 + 8);
  v50(v64, v44);
  sub_1DAD64398(v53, &qword_1ECC09820, &qword_1DAEDA4F8);
  v50(v65, v44);
  v50(v47, v44);
  sub_1DAD64398(v46, &qword_1ECC09820, &qword_1DAEDA4F8);
  return (v50)(v66, v44);
}

uint64_t LiveWidgetEntryLaunchHandlingModifier.viewModel.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t LiveWidgetEntryLaunchHandlingModifier.$viewModel.getter()
{
  v1 = *v0;
  v2 = v0[1];
  type metadata accessor for LiveWidgetEntryViewModel(0);
  sub_1DAD7305C(&qword_1EE009E48, type metadata accessor for LiveWidgetEntryViewModel);

  return sub_1DAECF22C();
}

uint64_t sub_1DAE3851C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

uint64_t sub_1DAE385F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  *a2 = v5;
  return result;
}

uint64_t sub_1DAE38684(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

unint64_t sub_1DAE386F4()
{
  result = qword_1EE005AE8;
  if (!qword_1EE005AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09698, &qword_1DAED9E68);
    sub_1DAE387AC();
    sub_1DAD64B94(&qword_1EE005878, &qword_1ECC09750, &qword_1DAED9F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005AE8);
  }

  return result;
}

unint64_t sub_1DAE387AC()
{
  result = qword_1EE005918;
  if (!qword_1EE005918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09738, &qword_1DAED9F40);
    sub_1DAE38838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005918);
  }

  return result;
}

unint64_t sub_1DAE38838()
{
  result = qword_1EE005930;
  if (!qword_1EE005930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09740, &qword_1DAED9F48);
    sub_1DAD64B94(&qword_1EE005808, &qword_1ECC09748, &qword_1DAED9F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005930);
  }

  return result;
}

unint64_t sub_1DAE38958()
{
  result = qword_1EE005B00;
  if (!qword_1EE005B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09690, &qword_1DAED9E60);
    sub_1DAE38A14();
    sub_1DAD7305C(qword_1EE00C130, type metadata accessor for WidgetURLReaderModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005B00);
  }

  return result;
}

unint64_t sub_1DAE38A14()
{
  result = qword_1EE005968;
  if (!qword_1EE005968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09728, &qword_1DAED9EF8);
    sub_1DAE38AA0();
    sub_1DAE38B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005968);
  }

  return result;
}

unint64_t sub_1DAE38AA0()
{
  result = qword_1EE005B18;
  if (!qword_1EE005B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09770, &qword_1DAEDA250);
    sub_1DAE38B58();
    sub_1DAD64B94(&qword_1EE0059D8, &qword_1ECC09788, &qword_1DAEDA268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005B18);
  }

  return result;
}

unint64_t sub_1DAE38B58()
{
  result = qword_1EE005948;
  if (!qword_1EE005948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09720, &qword_1DAED9EF0);
    sub_1DAE38BE4();
    sub_1DAE38C9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005948);
  }

  return result;
}

unint64_t sub_1DAE38BE4()
{
  result = qword_1EE005A48;
  if (!qword_1EE005A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09778, &qword_1DAEDA258);
    sub_1DAE38C9C();
    sub_1DAD64B94(&qword_1EE0059E0, &qword_1ECC09780, &qword_1DAEDA260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A48);
  }

  return result;
}

unint64_t sub_1DAE38C9C()
{
  result = qword_1EE005A98;
  if (!qword_1EE005A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09718, &qword_1DAED9EE8);
    sub_1DAD64B94(&qword_1EE0059E8, &qword_1ECC09710, &qword_1DAED9EE0);
    sub_1DAD7305C(&qword_1EE00BCD0, type metadata accessor for InteractiveWidgetSetupViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A98);
  }

  return result;
}

uint64_t sub_1DAE38D88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DAE3851C();
}

unint64_t sub_1DAE38DA8()
{
  result = qword_1EE005AF0;
  if (!qword_1EE005AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09790, &qword_1DAEDA270);
    sub_1DAE38E34();
    sub_1DAD715D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005AF0);
  }

  return result;
}

unint64_t sub_1DAE38E34()
{
  result = qword_1EE005970;
  if (!qword_1EE005970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09730, &unk_1DAED9F00);
    sub_1DAE38958();
    sub_1DAE38A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005970);
  }

  return result;
}

unint64_t sub_1DAE38EC0()
{
  result = qword_1EE005978;
  if (!qword_1EE005978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC097B0, &qword_1DAEDA290);
    sub_1DAD716DC();
    sub_1DAD71798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005978);
  }

  return result;
}

uint64_t sub_1DAE38F58()
{
  type metadata accessor for WatchComplicationsWidgetViewModel(0);
  sub_1DAE3A188();

  return sub_1DAECF21C();
}

uint64_t WatchComplicationWidgetView.init(viewModel:content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  type metadata accessor for WatchComplicationsWidgetViewModel(0);
  sub_1DAE3A188();
  result = sub_1DAECF21C();
  *a3 = result;
  a3[1] = v7;
  a3[2] = a1;
  a3[3] = a2;
  return result;
}

uint64_t WatchComplicationWidgetView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v138 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09840, &unk_1DAEDA520);
  v115 = *(v5 - 8);
  v6 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v123 = &v112 - v7;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v163 = MEMORY[0x1E6981E70];
  v164 = v9;
  v165 = MEMORY[0x1E6981E60];
  v166 = v8;
  v10 = sub_1DAECEB8C();
  v128 = v5;
  v11 = sub_1DAECFB2C();
  v124 = *(v11 - 8);
  v12 = *(v124 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v127 = &v112 - v14;
  v136 = v10;
  v114 = *(v10 - 8);
  v15 = *(v114 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v113 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v122 = &v112 - v18;
  v131 = sub_1DAECEC4C();
  v130 = *(v131 - 1);
  v19 = *(v130 + 64);
  v20 = MEMORY[0x1EEE9AC00](v131);
  v116 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v129 = &v112 - v22;
  v140 = v8;
  v23 = sub_1DAECEB0C();
  v112 = *(v23 - 8);
  v24 = *(v112 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v119 = &v112 - v28;
  v120 = sub_1DAECEBEC();
  v118 = *(v120 - 8);
  v29 = *(v118 + 64);
  v30 = MEMORY[0x1EEE9AC00](v120);
  v32 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v117 = &v112 - v33;
  v139 = v23;
  v34 = sub_1DAECFB2C();
  v121 = *(v34 - 8);
  v35 = *(v121 + 64);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v126 = (&v112 - v37);
  v125 = v9;
  v38 = *(v9 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x1EEE9AC00](v36);
  v42 = &v112 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v112 - v43;
  v45 = type metadata accessor for WatchComplicationsWidgetViewModel.Style(0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v112 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v34;
  v137 = v11;
  v135 = sub_1DAECFB2C();
  v134 = *(v135 - 8);
  v49 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v112 - v50;
  v51 = v3[1];
  v52 = v3[2];
  v53 = v3[3];

  sub_1DAEA888C(v48);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v52();
      v97 = v125;
      v59 = v140;
      sub_1DADB6258(v42, v125, v140);
      v131 = *(v38 + 8);
      v131(v42, v97);
      sub_1DADB6258(v44, v97, v59);
      WitnessTable = swift_getWitnessTable();
      sub_1DAE26A88(v42, v97);
      v143 = v59;
      v144 = WitnessTable;
      v99 = v132;
      v130 = swift_getWitnessTable();
      v100 = swift_getWitnessTable();
      v101 = sub_1DAE39FF8();
      v141 = v100;
      v142 = v101;
      swift_getWitnessTable();
      v67 = v133;
      v102 = v126;
      sub_1DAE26A88(v126, v99);
      (*(v121 + 8))(v102, v99);
      v103 = v131;
      v131(v42, v97);
      v103(v44, v97);
      goto LABEL_10;
    }

    v69 = v130;
    v70 = v129;
    v71 = v131;
    (*(v130 + 32))(v129, v48, v131);
    (*(v69 + 16))(v116, v70, v71);
    v72 = v123;
    sub_1DAECEB6C();
    v73 = v136;
    v74 = swift_getWitnessTable();
    v75 = sub_1DAE39FF8();
    v76 = v127;
    sub_1DAE26B80(v72, v73, v128);
    v77 = swift_getWitnessTable();
    v59 = v140;
    v161 = v140;
    v162 = v77;
    v78 = v132;
    swift_getWitnessTable();
    v159 = v74;
    v160 = v75;
    v79 = v137;
    swift_getWitnessTable();
    v67 = v133;
    sub_1DAE26B80(v76, v78, v79);
    (*(v124 + 8))(v76, v79);
    (*(v115 + 8))(v123, v128);
LABEL_7:
    (*(v130 + 8))(v129, v131);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    v80 = &v48[*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC09850, &unk_1DAEDE9F0) + 48)];
    v81 = *v80;
    v82 = *(v80 + 1);
    v83 = v130;
    v84 = v129;
    v85 = v131;
    (*(v130 + 32))(v129, v48, v131);
    (*(v83 + 16))(v116, v84, v85);

    v86 = v113;
    v87 = v140;
    sub_1DAECEB7C();
    v88 = v136;
    v89 = swift_getWitnessTable();
    v90 = v122;
    sub_1DADB6258(v86, v88, v89);
    v126 = *(v114 + 8);
    (v126)(v86, v88);
    sub_1DADB6258(v90, v88, v89);
    v91 = sub_1DAE39FF8();
    sub_1DAE26A88(v86, v88);
    v92 = swift_getWitnessTable();
    v151 = v87;
    v152 = v92;
    v93 = v132;
    swift_getWitnessTable();
    v149 = v89;
    v150 = v91;
    v94 = v137;
    swift_getWitnessTable();
    v95 = v127;
    v67 = v133;
    sub_1DAE26B80(v127, v93, v94);
    (*(v124 + 8))(v95, v94);
    v96 = v126;
    (v126)(v86, v88);
    v96(v122, v88);
    v59 = v140;
    goto LABEL_7;
  }

  v55 = v118;
  v56 = v117;
  v57 = v120;
  (*(v118 + 32))(v117, v48, v120);
  (*(v55 + 16))(v32, v56, v57);

  v58 = v125;
  v59 = v140;
  sub_1DAECEAFC();
  v60 = v139;
  v61 = swift_getWitnessTable();
  v62 = v119;
  sub_1DADB6258(v27, v60, v61);
  v131 = *(v112 + 8);
  v131(v27, v60);
  sub_1DADB6258(v62, v60, v61);
  v63 = v126;
  sub_1DAE26B80(v27, v58, v60);
  v147 = v59;
  v148 = v61;
  v64 = v132;
  v130 = swift_getWitnessTable();
  v65 = swift_getWitnessTable();
  v66 = sub_1DAE39FF8();
  v145 = v65;
  v146 = v66;
  swift_getWitnessTable();
  v67 = v133;
  sub_1DAE26A88(v63, v64);
  (*(v121 + 8))(v63, v64);
  v68 = v131;
  v131(v27, v60);
  v68(v119, v60);
  (*(v118 + 8))(v117, v120);
LABEL_10:
  v104 = swift_getWitnessTable();
  v157 = v59;
  v158 = v104;
  v105 = swift_getWitnessTable();
  v106 = swift_getWitnessTable();
  v107 = sub_1DAE39FF8();
  v155 = v106;
  v156 = v107;
  v108 = swift_getWitnessTable();
  v153 = v105;
  v154 = v108;
  v109 = v135;
  v110 = swift_getWitnessTable();
  sub_1DADB6258(v67, v109, v110);
  return (*(v134 + 8))(v67, v109);
}

unint64_t sub_1DAE39FF8()
{
  result = qword_1ECC09848;
  if (!qword_1ECC09848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09840, &unk_1DAEDA520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09848);
  }

  return result;
}

uint64_t sub_1DAE3A0A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DAE3A0E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DAE3A130(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1DAE3A188()
{
  result = qword_1ECC09B10;
  if (!qword_1ECC09B10)
  {
    type metadata accessor for WatchComplicationsWidgetViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09B10);
  }

  return result;
}

uint64_t sub_1DAE3A1E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC14WidgetRenderer33WidgetRendererClientInterfaceMock_systemEnvironment;
  v4 = sub_1DAECF8EC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer33WidgetRendererClientInterfaceMock_descriptorsDidChangePublisher);

  v6 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer33WidgetRendererClientInterfaceMock_timelineReloadedPublisher);

  v7 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer33WidgetRendererClientInterfaceMock_snapshotReloadedPublisher);

  v8 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer33WidgetRendererClientInterfaceMock_placeholderReloadedPublisher);

  v9 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer33WidgetRendererClientInterfaceMock__configurationsDidChangePublisher);

  v10 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer33WidgetRendererClientInterfaceMock_configurationsByHostIdentifier);

  v11 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer33WidgetRendererClientInterfaceMock__widgetDescriptorPublisher);

  v12 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer33WidgetRendererClientInterfaceMock__extensionPublisher);

  return v0;
}

uint64_t sub_1DAE3A2D0()
{
  sub_1DAE3A1E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WidgetRendererClientInterfaceMock()
{
  result = qword_1ECC098F0;
  if (!qword_1ECC098F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE3A37C()
{
  result = sub_1DAECF8EC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DAE3A47C()
{
  v2 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09928, &qword_1DAEDF150);
  sub_1DAE3A838(&unk_1EE005C10, &qword_1ECC09928, &qword_1DAEDF150);
  return sub_1DAECEF6C();
}

uint64_t sub_1DAE3A574@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer33WidgetRendererClientInterfaceMock_systemEnvironment;
  v5 = sub_1DAECF8EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1DAE3A5F0()
{
  v2 = *(*v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3E0, &qword_1DAEDA740);
  sub_1DAE3A838(&unk_1EE00ABE0, &unk_1ECC0A3E0, &qword_1DAEDA740);
  return sub_1DAECEF6C();
}

uint64_t sub_1DAE3A690(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v11 = *(*v6 + *a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_1DAE3A838(a6, a4, a5);
  return sub_1DAECEF6C();
}

uint64_t sub_1DAE3A768(void *a1)
{
  a1[1] = sub_1DAE3A7F4(&qword_1ECC09908);
  a1[2] = sub_1DAE3A7F4(&qword_1ECC09910);
  result = sub_1DAE3A7F4(&qword_1ECC09918);
  a1[3] = result;
  return result;
}

uint64_t sub_1DAE3A7F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WidgetRendererClientInterfaceMock();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAE3A838(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_1DAE3A88C(void *a1)
{
  v2 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configuration;
  v3 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configuration);
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configuration) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!v3)
  {
    v9 = a1;
    goto LABEL_9;
  }

  v4 = v1;
  sub_1DAD674D4(0, &unk_1EE005500, 0x1E6994238);
  v5 = a1;
  v6 = v3;
  v7 = sub_1DAED228C();

  if ((v7 & 1) == 0)
  {
    if (!*(v4 + v2))
    {
LABEL_10:

      v8 = a1;
      goto LABEL_11;
    }

LABEL_9:
    sub_1DADAC950();
    sub_1DADAD358();
    goto LABEL_10;
  }

  v8 = v6;
LABEL_11:
}

uint64_t sub_1DAE3A984()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  sub_1DAD6EAB8();
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModelSubscriber))
  {

    sub_1DAECEE2C();
  }

  sub_1DAE3AB7C();
  v9 = sub_1DAECE55C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_visibility;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v10, v6, &qword_1ECC07CD0, &qword_1DAED6560);
  swift_beginAccess();
  sub_1DAD901C4(v8, v1 + v10, &qword_1ECC07CD0, &qword_1DAED6560);
  swift_endAccess();
  sub_1DAD6BD68(v6);
  sub_1DAD64398(v6, &qword_1ECC07CD0, &qword_1DAED6560);
  sub_1DAD64398(v8, &qword_1ECC07CD0, &qword_1DAED6560);
  v11 = v1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogService;
  swift_beginAccess();
  if (*(v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  *(v11 + 32) = 0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  return swift_endAccess();
}

uint64_t sub_1DAE3AB7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08850, &qword_1DAED7280);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_1DAED12CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogService;
  result = swift_beginAccess();
  if (*(v11 + 24))
  {
    result = sub_1DAD648F8(v11, &v18);
    if (!*(&v19 + 1))
    {
      return result;
    }
  }

  else
  {
    v13 = *(v11 + 16);
    v18 = *v11;
    v19 = v13;
    v20 = *(v11 + 32);
    if (!*(&v13 + 1))
    {
      return result;
    }
  }

  sub_1DAD657D8(&v18, v21);
  v14 = v1[5];
  v15 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v14);
  (*(v15 + 8))(&v18, v14, v15);
  if ((v20 & 1) == 0)
  {
    v16 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogWidgetViewIdentity;
    swift_beginAccess();
    sub_1DAD6495C(v1 + v16, v5, &qword_1ECC08850, &qword_1DAED7280);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1DAD64398(v5, &qword_1ECC08850, &qword_1DAED7280);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      __swift_project_boxed_opaque_existential_1(v21, v22);
      sub_1DAED117C();
      __swift_project_boxed_opaque_existential_1(v21, v22);
      sub_1DAED118C();
      __swift_project_boxed_opaque_existential_1(v21, v22);
      sub_1DAED116C();
      __swift_project_boxed_opaque_existential_1(v21, v22);
      sub_1DAED119C();
      (*(v7 + 8))(v10, v6);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v21);
}

uint64_t sub_1DAE3AE8C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  swift_weakDestroy();
  v1 = *(v0 + 72);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationHostIdentifier, &qword_1ECC08358, &qword_1DAED6568);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModel));
  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModelSubscriber);

  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogService + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogService));
  }

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogWidgetViewIdentity, &qword_1ECC08850, &qword_1DAED7280);
  v3 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewEntry);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewRecorder));
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetWidgetViewIdentity, &qword_1ECC09958, &unk_1DAEDA888);
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_visibility, &qword_1ECC07CD0, &qword_1DAED6560);
  return v0;
}

uint64_t sub_1DAE3AFA4()
{
  sub_1DAE3AE8C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE3B004(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAE3B094@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer42ActivityRendererSessionSubscriptionRequest_priority;
  swift_beginAccess();
  v5 = sub_1DAECE20C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1DAE3B120(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1DAECE20C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC14WidgetRenderer42ActivityRendererSessionSubscriptionRequest_priority;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1DAE3B238@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer42ActivityRendererSessionSubscriptionRequest_priority;
  swift_beginAccess();
  v4 = sub_1DAECE20C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1DAE3B2C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer42ActivityRendererSessionSubscriptionRequest_priority;
  swift_beginAccess();
  v4 = sub_1DAECE20C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t ActivityRendererSessionSubscriptionRequest.__allocating_init(sessionKey:priority:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = OBJC_IVAR____TtC14WidgetRenderer42ActivityRendererSessionSubscriptionRequest_priority;
  v9 = sub_1DAECE20C();
  (*(*(v9 - 8) + 32))(v7 + v8, a2, v9);
  return v7;
}

uint64_t ActivityRendererSessionSubscriptionRequest.init(sessionKey:priority:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer42ActivityRendererSessionSubscriptionRequest_priority;
  v5 = sub_1DAECE20C();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t sub_1DAE3B4CC()
{
  if (*v0)
  {
    result = 0x797469726F697270;
  }

  else
  {
    result = 0x4B6E6F6973736573;
  }

  *v0;
  return result;
}

uint64_t sub_1DAE3B50C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4B6E6F6973736573 && a2 == 0xEA00000000007965;
  if (v6 || (sub_1DAED289C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DAED289C();

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

uint64_t sub_1DAE3B608(uint64_t a1)
{
  v2 = sub_1DAE3C1DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAE3B644(uint64_t a1)
{
  v2 = sub_1DAE3C1DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityRendererSessionSubscriptionRequest.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC14WidgetRenderer42ActivityRendererSessionSubscriptionRequest_priority;
  v3 = sub_1DAECE20C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t ActivityRendererSessionSubscriptionRequest.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC14WidgetRenderer42ActivityRendererSessionSubscriptionRequest_priority;
  v3 = sub_1DAECE20C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE3B78C(void *a1)
{
  v3 = v1;
  v5 = sub_1DAECE20C();
  v21 = *(v5 - 8);
  v22 = v5;
  v6 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09968, &qword_1DAEDA8A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAE3C1DC();
  sub_1DAED29BC();
  v23 = *(v3 + 16);
  v24 = 0;
  type metadata accessor for ActivityRendererSessionKey();
  sub_1DAE3C674(&qword_1EE008CD8, type metadata accessor for ActivityRendererSessionKey);
  sub_1DAED284C();
  if (!v2)
  {
    v15 = OBJC_IVAR____TtC14WidgetRenderer42ActivityRendererSessionSubscriptionRequest_priority;
    swift_beginAccess();
    v16 = v21;
    v17 = v3 + v15;
    v18 = v22;
    (*(v21 + 16))(v8, v17, v22);
    v24 = 1;
    sub_1DAE3C674(&qword_1EE00BCE0, MEMORY[0x1E6993FA8]);
    sub_1DAED284C();
    (*(v16 + 8))(v8, v18);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t ActivityRendererSessionSubscriptionRequest.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ActivityRendererSessionSubscriptionRequest.init(from:)(a1);
  return v5;
}

uint64_t ActivityRendererSessionSubscriptionRequest.init(from:)(uint64_t *a1)
{
  v3 = sub_1DAECE20C();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09970, &qword_1DAEDA8A8);
  v7 = *(v24 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAE3C1DC();
  sub_1DAED29AC();
  if (v1)
  {
    v12 = v25;
    type metadata accessor for ActivityRendererSessionSubscriptionRequest();
    v18 = *(*v12 + 48);
    v19 = *(*v12 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v7;
    v14 = v6;
    v22 = v3;
    type metadata accessor for ActivityRendererSessionKey();
    v27 = 0;
    sub_1DAE3C674(&qword_1EE008CD0, type metadata accessor for ActivityRendererSessionKey);
    v15 = v24;
    sub_1DAED280C();
    v12 = v25;
    *(v25 + 16) = v28;
    v26 = 1;
    sub_1DAE3C674(&unk_1EE00A6A8, MEMORY[0x1E6993FA8]);
    v16 = v14;
    v17 = v22;
    sub_1DAED280C();
    (*(v13 + 8))(v10, v15);
    (*(v23 + 32))(v12 + OBJC_IVAR____TtC14WidgetRenderer42ActivityRendererSessionSubscriptionRequest_priority, v16, v17);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t sub_1DAE3BE14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ActivityRendererSessionSubscriptionRequest();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = ActivityRendererSessionSubscriptionRequest.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

BOOL _s14WidgetRenderer08ActivityB26SessionSubscriptionRequestC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAECE20C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - v10;
  v12 = *(a1 + 16);
  v13 = *(a2 + 16);
  v14 = *(v12 + 16) == *(v13 + 16) && *(v12 + 24) == *(v13 + 24);
  if (!v14 && (sub_1DAED289C() & 1) == 0)
  {
    return 0;
  }

  v30 = a1;
  v31 = a2;
  v32 = v11;
  v33 = v9;
  v34 = v5;
  sub_1DAED0B1C();
  sub_1DAED0F0C();
  v15 = MEMORY[0x1E6993CE0];
  sub_1DAE3C674(&qword_1EE00AB60, MEMORY[0x1E6993CE0]);
  sub_1DAE3C674(&qword_1EE00AB68, v15);
  v16 = MEMORY[0x1E6993E40];
  sub_1DAE3C674(&qword_1EE00AB40, MEMORY[0x1E6993E40]);
  sub_1DAE3C674(&qword_1EE00AB48, v16);
  if ((sub_1DAED0E2C() & 1) == 0)
  {
    return 0;
  }

  v17 = OBJC_IVAR____TtC14WidgetRenderer42ActivityRendererSessionSubscriptionRequest_priority;
  v18 = v30;
  swift_beginAccess();
  v19 = v34;
  v20 = *(v34 + 16);
  v21 = v18 + v17;
  v22 = v32;
  v20(v32, v21, v4);
  v23 = OBJC_IVAR____TtC14WidgetRenderer42ActivityRendererSessionSubscriptionRequest_priority;
  v24 = v31;
  swift_beginAccess();
  v25 = v24 + v23;
  v26 = v33;
  v20(v33, v25, v4);
  sub_1DAE3C674(&qword_1ECC09980, MEMORY[0x1E6993FA8]);
  sub_1DAED1E4C();
  sub_1DAED1E4C();
  v27 = *(v19 + 8);
  v27(v26, v4);
  v27(v22, v4);
  return v36 == v35;
}

unint64_t sub_1DAE3C1DC()
{
  result = qword_1EE00B908[0];
  if (!qword_1EE00B908[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE00B908);
  }

  return result;
}

uint64_t type metadata accessor for ActivityRendererSessionSubscriptionRequest()
{
  result = qword_1EE00B8E8;
  if (!qword_1EE00B8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE3C284()
{
  result = sub_1DAECE20C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetRenderEngine(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetRenderEngine(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAE3C570()
{
  result = qword_1ECC09978;
  if (!qword_1ECC09978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09978);
  }

  return result;
}

unint64_t sub_1DAE3C5C8()
{
  result = qword_1EE00B8F8;
  if (!qword_1EE00B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B8F8);
  }

  return result;
}

unint64_t sub_1DAE3C620()
{
  result = qword_1EE00B900;
  if (!qword_1EE00B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B900);
  }

  return result;
}

uint64_t sub_1DAE3C674(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1DAE3C6E0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_1DAE3C6F8()
{
  sub_1DAED294C();
  sub_1DAED1D9C();
  return sub_1DAED297C();
}

uint64_t sub_1DAE3C77C()
{
  sub_1DAED294C();
  sub_1DAED1D9C();
  return sub_1DAED297C();
}

uint64_t sub_1DAE3C7D8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DAED27CC();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1DAE3C878@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DAED27CC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DAE3C8DC(uint64_t a1)
{
  v2 = sub_1DADB2F58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAE3C918(uint64_t a1)
{
  v2 = sub_1DADB2F58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetRendererSessionSubscriptionResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09988, &qword_1DAEDAB00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DADB2F58();
  sub_1DAED29BC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t WidgetRendererSessionSubscriptionResponse.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09990, &qword_1DAEDAB08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DADB2F58();
  sub_1DAED29AC();
  if (!v1)
  {
    (*(v4 + 8))(v7, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1DAE3CBA4()
{
  result = qword_1ECC09998;
  if (!qword_1ECC09998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09998);
  }

  return result;
}

uint64_t sub_1DAE3CC00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x54746E65746E6F63;
    }

    else
    {
      v3 = 0x4B6E6F6973736573;
    }

    if (v2)
    {
      v4 = 0xEB00000000657079;
    }

    else
    {
      v4 = 0xEA00000000007965;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x797469726F697270;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000014;
    v4 = 0x80000001DAEE0250;
  }

  else
  {
    v3 = 0x53796C6269736976;
    v4 = 0xEE0064656C747465;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x54746E65746E6F63;
    }

    else
    {
      v6 = 0x4B6E6F6973736573;
    }

    if (a2)
    {
      v5 = 0xEB00000000657079;
    }

    else
    {
      v5 = 0xEA00000000007965;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x797469726F697270)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001DAEE0250;
    if (v3 != 0xD000000000000014)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEE0064656C747465;
    if (v3 != 0x53796C6269736976)
    {
LABEL_31:
      v7 = sub_1DAED289C();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t WidgetRendererSessionSubscriptionRequest.__allocating_init(sessionKey:contentType:priority:environmentModifiers:visiblySettled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_priority;
  v15 = sub_1DAECE20C();
  (*(*(v15 - 8) + 32))(v13 + v14, a3, v15);
  v16 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_environmentModifiers;
  v17 = sub_1DAED10DC();
  (*(*(v17 - 8) + 32))(v13 + v16, a4, v17);
  *(v13 + OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled) = a5;
  return v13;
}

uint64_t sub_1DAE3CF4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  v8 = a3(0);
  return (*(*(v8 - 8) + 16))(a4, v6 + v7, v8);
}

uint64_t sub_1DAE3CFDC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6)
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = *a2;
  v15 = *a6;
  swift_beginAccess();
  (*(v10 + 40))(v14 + v15, v13, v9);
  return swift_endAccess();
}

uint64_t sub_1DAE3D114(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t sub_1DAE3D208(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t WidgetRendererSessionSubscriptionRequest.init(sessionKey:contentType:priority:environmentModifiers:visiblySettled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_priority;
  v10 = sub_1DAECE20C();
  (*(*(v10 - 8) + 32))(v5 + v9, a3, v10);
  v11 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_environmentModifiers;
  v12 = sub_1DAED10DC();
  (*(*(v12 - 8) + 32))(v5 + v11, a4, v12);
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_visiblySettled) = a5;
  return v5;
}

uint64_t sub_1DAE3D398()
{
  v1 = *v0;
  sub_1DAED294C();
  sub_1DAED1D9C();

  return sub_1DAED297C();
}

uint64_t sub_1DAE3D498()
{
  *v0;
  *v0;
  *v0;
  sub_1DAED1D9C();
}

uint64_t sub_1DAE3D584()
{
  v1 = *v0;
  sub_1DAED294C();
  sub_1DAED1D9C();

  return sub_1DAED297C();
}

uint64_t sub_1DAE3D680@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAE3DB38();
  *a2 = result;
  return result;
}

void sub_1DAE3D6B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007965;
  v4 = 0x4B6E6F6973736573;
  v5 = 0xE800000000000000;
  v6 = 0x797469726F697270;
  v7 = 0x80000001DAEE0250;
  v8 = 0xD000000000000014;
  if (v2 != 3)
  {
    v8 = 0x53796C6269736976;
    v7 = 0xEE0064656C747465;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x54746E65746E6F63;
    v3 = 0xEB00000000657079;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DAE3D76C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAE3DB38();
  *a1 = result;
  return result;
}

uint64_t sub_1DAE3D7A0(uint64_t a1)
{
  v2 = sub_1DADA64C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAE3D7DC(uint64_t a1)
{
  v2 = sub_1DADA64C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetRendererSessionSubscriptionRequest.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  WidgetRendererSessionSubscriptionRequest.init(from:)(a1);
  return v5;
}

unint64_t sub_1DAE3D868()
{
  result = qword_1ECC099B0;
  if (!qword_1ECC099B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC099A8, &qword_1DAEDACF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC099B0);
  }

  return result;
}

uint64_t WidgetRendererSessionSubscriptionRequest.deinit()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_priority;
  v2 = sub_1DAECE20C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_environmentModifiers;
  v4 = sub_1DAED10DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

unint64_t sub_1DAE3DAE4()
{
  result = qword_1ECC099B8;
  if (!qword_1ECC099B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC099B8);
  }

  return result;
}

uint64_t sub_1DAE3DB38()
{
  v0 = sub_1DAED27CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAE3DC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 80);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1DAE03864;

  return v13(a1, a2, a3, a4);
}

void sub_1DAE3DD7C()
{
  v0 = sub_1DAED0B1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1DAD648F8(Strong + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client, aBlock);
    v7 = v17;
    __swift_project_boxed_opaque_existential_1(aBlock, v16);
    v8 = *(v7 + 1);
    if (sub_1DAED12EC())
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
      MEMORY[0x1E127CAC0](v9);
      v10 = sub_1DAED103C();

      (*(v1 + 8))(v4, v0);
    }

    else
    {
      v10 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v11 = swift_allocObject();
    *(v11 + 16) = v6;
    *(v11 + 24) = v10;
    v17 = sub_1DAE3FE88;
    v18 = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    v16 = &block_descriptor_11;
    v12 = _Block_copy(aBlock);
    v13 = v10;

    BSDispatchMain();
    _Block_release(v12);
  }
}

uint64_t sub_1DAE3DFB8()
{
  v1 = v0;
  if (qword_1EE005E70 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE011790);

  v3 = sub_1DAECEDCC();
  v4 = sub_1DAED200C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v7 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
    v8 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier + 8);

    v9 = sub_1DAD6482C(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DAD61000, v3, v4, "[%{public}s] Destroyed", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E127F100](v6, -1, -1);
    MEMORY[0x1E127F100](v5, -1, -1);
  }

  v10 = *(v1 + 16);

  v11 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_taskPriority;
  v12 = sub_1DAECE20C();
  (*(*(v12 - 8) + 8))(v1 + v11, v12);
  sub_1DAD64398(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_environmentProvider, &qword_1ECC099D0, &qword_1DAEDB028);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__baseEnvironmentProvider));
  sub_1DAD64398(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__activityEntryAssertion, &qword_1ECC099C0, &qword_1DAEDCB90);
  v13 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier + 8);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client));
  v14 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__archiveService);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__keybagStateProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__dataProtectionMonitor));
  v15 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__cancellables);

  return v1;
}

uint64_t sub_1DAE3E22C()
{
  sub_1DAE3DFB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for _DefaultActivityRendererSession()
{
  result = qword_1EE00A308;
  if (!qword_1EE00A308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE3E2D8()
{
  result = sub_1DAECE20C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1DAE3E3BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099C8, &qword_1DAEDB020);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v44 - v3;
  v5 = sub_1DAECE20C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v44 - v13;
  result = BSDispatchQueueAssertMain();
  if ((*(v0 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__invalidated) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__started) & 1) == 0)
  {
    v44 = v9;
    v47 = v4;
    if (qword_1EE005E70 != -1)
    {
      swift_once();
    }

    v45 = v6;
    v46 = v5;
    v16 = sub_1DAECEDEC();
    __swift_project_value_buffer(v16, qword_1EE011790);

    v17 = sub_1DAECEDCC();
    v18 = sub_1DAED203C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v49[0] = v20;
      *v19 = 136446210;
      v21 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
      v22 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier + 8);

      v23 = sub_1DAD6482C(v21, v22, v49);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1DAD61000, v17, v18, "[%{public}s] Subscribing", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1E127F100](v20, -1, -1);
      MEMORY[0x1E127F100](v19, -1, -1);
    }

    sub_1DAD648F8(v0 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__baseEnvironmentProvider, v49);
    v24 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_environmentProvider;
    swift_beginAccess();
    sub_1DAD94438(v49, v0 + v24, &qword_1ECC099D0, &qword_1DAEDB028);
    swift_endAccess();
    v25 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__archiveService);
    v26 = *(v0 + 16);
    (*(v11 + 16))(v14, v26 + OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey, v10);
    v27 = *(v25 + 56);
    v28 = *&v27[OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock];
    v29 = *(v28 + 16);

    os_unfair_lock_lock(v29);
    sub_1DAE10FC0(v27, v14, 0xD000000000000025, 0x80000001DAEE3690, v49);
    os_unfair_lock_unlock(*(v28 + 16));

    (*(v11 + 8))(v14, v10);

    sub_1DAD648F8(v49, v48);
    v30 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__activityEntryAssertion;
    swift_beginAccess();
    sub_1DAD94438(v48, v0 + v30, &qword_1ECC099C0, &qword_1DAEDCB90);
    swift_endAccess();
    v32 = v44;
    v31 = v45;
    v33 = v46;
    (*(v45 + 16))(v44, v0 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_taskPriority, v46);
    v34 = type metadata accessor for ActivityRendererSessionSubscriptionRequest();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    v37 = swift_allocObject();
    *(v37 + 16) = v26;
    (*(v31 + 32))(v37 + OBJC_IVAR____TtC14WidgetRenderer42ActivityRendererSessionSubscriptionRequest_priority, v32, v33);
    v38 = sub_1DAED1F2C();
    v39 = v47;
    (*(*(v38 - 8) + 56))(v47, 1, 1, v38);
    sub_1DAD648F8(v49, v48);
    sub_1DAED1F0C();

    v40 = v0;
    v41 = sub_1DAED1EFC();
    v42 = swift_allocObject();
    v43 = MEMORY[0x1E69E85E0];
    v42[2] = v41;
    v42[3] = v43;
    v42[4] = v40;
    v42[5] = v37;
    sub_1DAD657D8(v48, (v42 + 6));
    sub_1DAE61C60(0, 0, v39, &unk_1DAEDB038, v42);

    return __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  return result;
}

uint64_t sub_1DAE3E99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[28] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D68, &unk_1DAED8020) - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v6[32] = v8;
  v9 = *(v8 - 8);
  v6[33] = v9;
  v10 = *(v9 + 64) + 15;
  v6[34] = swift_task_alloc();
  sub_1DAED1F0C();
  v6[35] = sub_1DAED1EFC();
  v12 = sub_1DAED1ECC();
  v6[36] = v12;
  v6[37] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1DAE3EAD8, v12, v11);
}

uint64_t sub_1DAE3EAD8()
{
  v1 = v0[28];
  v2 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__started;
  v0[38] = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__started;
  *(v1 + v2) = 1;
  sub_1DAD648F8(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = sub_1DAE40000(&qword_1EE008C60, type metadata accessor for ActivityRendererClient);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for ActivityRendererClient();
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[39] = v7;
  *v7 = v0;
  v7[1] = sub_1DAE3EC7C;
  v8 = v0[29];

  return (v10)(v0 + 41, v8, v5, v3);
}

uint64_t sub_1DAE3EC7C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 296);
  v6 = *(v2 + 288);
  if (v0)
  {
    v7 = sub_1DAE3F1DC;
  }

  else
  {
    v7 = sub_1DAE3EDB8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1DAE3EDB8()
{
  v39 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 224);

  v3 = *(v0 + 328);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__invalidated) == 1)
  {
    if (qword_1EE005E70 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 224);
    v5 = sub_1DAECEDEC();
    __swift_project_value_buffer(v5, qword_1EE011790);

    v6 = sub_1DAECEDCC();
    v7 = sub_1DAED203C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 224);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v38 = v10;
      *v9 = 136446210;
      v11 = v8 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier;
      v12 = *(v8 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
      v13 = *(v11 + 8);

      v14 = sub_1DAD6482C(v12, v13, &v38);

      *(v9 + 4) = v14;
      v15 = "[%{public}s] Ignoring subscription result; we were invalidated while subscribing.";
LABEL_10:
      _os_log_impl(&dword_1DAD61000, v6, v7, v15, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E127F100](v10, -1, -1);
      MEMORY[0x1E127F100](v9, -1, -1);
    }
  }

  else
  {
    v17 = *(v0 + 264);
    v16 = *(v0 + 272);
    v19 = *(v0 + 248);
    v18 = *(v0 + 256);
    v20 = *(v0 + 232);
    v21 = *(v0 + 224);
    v22 = *(*__swift_project_boxed_opaque_existential_1(*(v0 + 240), *(*(v0 + 240) + 24)) + 16);

    sub_1DAED0D0C();

    v23 = *(v21 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__archiveService);
    (*(v17 + 16))(v16, *(v20 + 16) + OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey, v18);
    v24 = *(*(v23 + 56) + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock);
    v25 = *(v24 + 16);

    os_unfair_lock_lock(v25);
    v26 = type metadata accessor for ActivityContentDidChangeEvent();
    (*(*(v26 - 8) + 56))(v19, 1, 1, v26);
    sub_1DAE13360(v16, v19);
    sub_1DAD64398(v19, &qword_1ECC08D68, &unk_1DAED8020);
    os_unfair_lock_unlock(*(v24 + 16));

    (*(v17 + 8))(v16, v18);

    if (qword_1EE005E70 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 224);
    v28 = sub_1DAECEDEC();
    __swift_project_value_buffer(v28, qword_1EE011790);

    v6 = sub_1DAECEDCC();
    v7 = sub_1DAED203C();

    if (os_log_type_enabled(v6, v7))
    {
      v29 = *(v0 + 224);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v38 = v10;
      *v9 = 136446210;
      v30 = v29 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier;
      v31 = *(v29 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
      v32 = *(v30 + 8);

      v33 = sub_1DAD6482C(v31, v32, &v38);

      *(v9 + 4) = v33;
      v15 = "[%{public}s] Subscribed";
      goto LABEL_10;
    }
  }

  v34 = *(v0 + 272);
  v35 = *(v0 + 248);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1DAE3F1DC()
{
  v30 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 224);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  *(v3 + v1) = 0;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__activityEntryAssertion;
  swift_beginAccess();
  sub_1DAE3FECC(v3 + v4, v0 + 56);
  if (*(v0 + 80))
  {
    sub_1DAD648F8(v0 + 56, v0 + 136);
    sub_1DAD64398(v0 + 56, &qword_1ECC099C0, &qword_1DAEDCB90);
    v5 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    v6 = *(v5 + 8);
    sub_1DAED144C();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  }

  else
  {
    sub_1DAD64398(v0 + 56, &qword_1ECC099C0, &qword_1DAEDCB90);
  }

  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  swift_beginAccess();
  sub_1DAD94438(v0 + 96, v3 + v4, &qword_1ECC099C0, &qword_1DAEDCB90);
  swift_endAccess();
  if (qword_1EE005E70 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 320);
  v8 = *(v0 + 224);
  v9 = sub_1DAECEDEC();
  __swift_project_value_buffer(v9, qword_1EE011790);

  v10 = v7;
  v11 = sub_1DAECEDCC();
  v12 = sub_1DAED201C();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 320);
  if (v13)
  {
    v15 = *(v0 + 224);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v18;
    *v16 = 136446466;
    v19 = v15 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier;
    v20 = *(v15 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
    v21 = *(v19 + 8);

    v22 = sub_1DAD6482C(v20, v21, &v29);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2114;
    v23 = v14;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v24;
    *v17 = v24;
    _os_log_impl(&dword_1DAD61000, v11, v12, "[%{public}s] Error subscribing to session: %{public}@", v16, 0x16u);
    sub_1DAD64398(v17, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E127F100](v18, -1, -1);
    MEMORY[0x1E127F100](v16, -1, -1);
  }

  else
  {
  }

  v25 = *(v0 + 272);
  v26 = *(v0 + 248);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_1DAE3F520(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1DAED1F0C();
  v3[5] = sub_1DAED1EFC();
  v5 = sub_1DAED1ECC();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1DAE3F5BC, v5, v4);
}

uint64_t sub_1DAE3F5BC()
{
  v24 = v0;
  v1 = v0[4];
  BSDispatchQueueAssertMain();
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__invalidated) == 1)
  {
    v2 = v0[5];

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_1EE005E70 != -1)
    {
      swift_once();
    }

    v5 = v0[4];
    v6 = sub_1DAECEDEC();
    __swift_project_value_buffer(v6, qword_1EE011790);

    v7 = sub_1DAECEDCC();
    v8 = sub_1DAED203C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[4];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136446210;
      v12 = v9 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier;
      v13 = *(v9 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
      v14 = *(v12 + 8);

      v15 = sub_1DAD6482C(v13, v14, &v23);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1DAD61000, v7, v8, "[%{public}s] Handle action", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1E127F100](v11, -1, -1);
      MEMORY[0x1E127F100](v10, -1, -1);
    }

    v16 = v0[4];
    v17 = __swift_project_boxed_opaque_existential_1((v16 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client), *(v16 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client + 24));
    v18 = *(v16 + 16);
    v19 = *v17;
    v20 = swift_task_alloc();
    v0[8] = v20;
    *v20 = v0;
    v20[1] = sub_1DAE3F824;
    v22 = v0[2];
    v21 = v0[3];

    return sub_1DAE809AC(v18, v21, v22);
  }
}

uint64_t sub_1DAE3F824()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_1DAE3F9C4;
  }

  else
  {
    v7 = sub_1DAE3F960;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1DAE3F960()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DAE3F9C4()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1DAE3FA28()
{
  v1 = v0;
  if (qword_1EE005E70 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v2 = sub_1DAECEDEC();
    __swift_project_value_buffer(v2, qword_1EE011790);

    v3 = sub_1DAECEDCC();
    v4 = sub_1DAED203C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v37[0] = v6;
      *v5 = 136446210;
      v7 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
      v8 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier + 8);

      v9 = sub_1DAD6482C(v7, v8, v37);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1DAD61000, v3, v4, "[%{public}s] Invalidated", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x1E127F100](v6, -1, -1);
      MEMORY[0x1E127F100](v5, -1, -1);
    }

    result = BSDispatchQueueAssertMain();
    v11 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__invalidated;
    if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__invalidated))
    {
      return result;
    }

    v12 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__activityEntryAssertion;
    swift_beginAccess();
    sub_1DAE3FECC(v1 + v12, v37);
    if (v38)
    {
      sub_1DAD648F8(v37, v36);
      sub_1DAD64398(v37, &qword_1ECC099C0, &qword_1DAEDCB90);
      v13 = v36[4];
      __swift_project_boxed_opaque_existential_1(v36, v36[3]);
      v14 = *(v13 + 8);
      sub_1DAED144C();
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
    }

    else
    {
      sub_1DAD64398(v37, &qword_1ECC099C0, &qword_1DAEDCB90);
    }

    *(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__started) = 0;
    *(v1 + v11) = 1;
    v15 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__cancellables;
    swift_beginAccess();
    v35 = v15;
    v16 = *(v1 + v15);
    if ((v16 & 0xC000000000000001) != 0)
    {
      if (v16 < 0)
      {
        v17 = *(v1 + v15);
      }

      swift_unknownObjectRetain();
      sub_1DAED242C();
      sub_1DAECEE3C();
      sub_1DAE40000(&qword_1EE005C50, MEMORY[0x1E695BF10]);
      sub_1DAED1F9C();
      v19 = v37[0];
      v18 = v37[1];
      v20 = v37[2];
      v21 = v38;
      v22 = v39;
    }

    else
    {
      v23 = -1 << *(v16 + 32);
      v18 = v16 + 56;
      v20 = ~v23;
      v24 = -v23;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v22 = v25 & *(v16 + 56);
      swift_bridgeObjectRetain_n();
      v21 = 0;
      v19 = v16;
    }

    for (i = (v20 + 64) >> 6; v19 < 0; v22 = v30)
    {
      v32 = sub_1DAED24BC();
      if (!v32)
      {
        goto LABEL_27;
      }

      v36[5] = v32;
      sub_1DAECEE3C();
      swift_dynamicCast();
      v29 = v21;
      v30 = v22;
      if (!v36[6])
      {
        goto LABEL_27;
      }

LABEL_25:
      sub_1DAECEE2C();

      v21 = v29;
    }

    v27 = v21;
    v28 = v22;
    v29 = v21;
    if (v22)
    {
LABEL_21:
      v30 = (v28 - 1) & v28;
      v31 = *(*(v19 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));

      if (v31)
      {
        goto LABEL_25;
      }

LABEL_27:
      sub_1DAD70B20();

      v33 = *(v1 + v35);
      *(v1 + v35) = MEMORY[0x1E69E7CD0];

      v34 = *__swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client), *(v1 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client + 24));
      return sub_1DAE7FBA4(*(v1 + 16));
    }

    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= i)
      {
        goto LABEL_27;
      }

      v28 = *(v18 + 8 * v29);
      ++v27;
      if (v28)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }
}

void sub_1DAE3FE88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + 24);
  *(v1 + 24) = v2;
  v3 = v2;
}

uint64_t sub_1DAE3FECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099C0, &qword_1DAEDCB90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE3FF3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAE03864;

  return sub_1DAE3E99C(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1DAE40000(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAE4005C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v103 = a2;
  v4 = sub_1DAED0B1C();
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v94 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAECDD3C();
  v99 = *(v7 - 8);
  v100 = v7;
  v8 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v105 = *(v11 - 8);
  v12 = v105;
  v13 = *(v105 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v98 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v94 - v16;
  v97 = *(v12 + 16);
  v97(&v94 - v16, a1, v11);
  sub_1DAD648F8(v2 + 16, v112);
  v104 = *(v2 + 56);
  sub_1DAD648F8(v2 + 64, v111);
  sub_1DAD648F8(v2 + 104, v110);
  sub_1DAD648F8(v2 + 144, v109);
  v18 = v113;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v112, v113);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v22;
  v25 = type metadata accessor for ActivityRendererClient();
  v108[3] = v25;
  v26 = sub_1DAE40B24();
  v108[4] = v26;
  v108[0] = v24;
  v27 = type metadata accessor for _DefaultActivityRendererSession();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v101 = v27;
  v30 = swift_allocObject();
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v108, v25);
  v32 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = (&v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  v107[3] = v25;
  v107[4] = v26;
  v107[0] = v36;
  *(v30 + 24) = 0;
  v37 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_taskPriority;
  v38 = *MEMORY[0x1E6993F90];
  v39 = sub_1DAECE20C();
  (*(*(v39 - 8) + 104))(v30 + v37, v38, v39);
  v40 = v30 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_environmentProvider;
  *v40 = 0u;
  *(v40 + 16) = 0u;
  *(v40 + 32) = 0;
  v41 = v30 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__activityEntryAssertion;
  *(v41 + 32) = 0;
  *v41 = 0u;
  *(v41 + 16) = 0u;
  *(v30 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__invalidated) = 0;
  *(v30 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__cancellables) = MEMORY[0x1E69E7CD0];
  *(v30 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__started) = 0;
  v42 = v98;
  v102 = v17;
  v97(v98, v17, v11);
  v43 = type metadata accessor for ActivityRendererSessionKey();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  v47 = v104;

  sub_1DAECDD2C();
  v48 = sub_1DAECDCFC();
  v50 = v49;
  (*(v99 + 8))(v10, v100);
  *(v46 + 16) = v48;
  *(v46 + 24) = v50;
  (*(v105 + 32))(v46 + OBJC_IVAR____TtC14WidgetRenderer26ActivityRendererSessionKey_contentKey, v42, v11);
  v51 = sub_1DAE93AA4();
  v52 = (v30 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
  *v52 = v51;
  v52[1] = v53;
  *(v30 + 16) = v46;
  sub_1DAD648F8(v107, v30 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client);
  *(v30 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__archiveService) = v47;
  sub_1DAD648F8(v111, v30 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__keybagStateProvider);
  sub_1DAD648F8(v110, v30 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__dataProtectionMonitor);
  sub_1DAD648F8(v109, v30 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__baseEnvironmentProvider);
  v54 = *(v30 + 24);
  *(v30 + 24) = 0;

  v55 = sub_1DAE93AA4();
  v56 = (v30 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier);
  v57 = *(v30 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_logIdentifier + 8);
  *v56 = v55;
  v56[1] = v58;

  if (qword_1EE005E70 != -1)
  {
    swift_once();
  }

  v59 = sub_1DAECEDEC();
  __swift_project_value_buffer(v59, qword_1EE011790);

  v60 = sub_1DAECEDCC();
  v61 = sub_1DAED203C();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v106[0] = v63;
    *v62 = 136446210;
    v64 = v11;
    v66 = *v56;
    v65 = v56[1];

    v67 = sub_1DAD6482C(v66, v65, v106);

    *(v62 + 4) = v67;
    v11 = v64;
    _os_log_impl(&dword_1DAD61000, v60, v61, "[%{public}s] Created", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x1E127F100](v63, -1, -1);
    MEMORY[0x1E127F100](v62, -1, -1);
  }

  v68 = (v30 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client);
  v70 = *(v30 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client + 24);
  v69 = *(v30 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client + 32);
  v71 = __swift_project_boxed_opaque_existential_1((v30 + OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__client), v70);
  v72 = *(v70 - 8);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v75 = &v94 - v74;
  (*(v72 + 16))(&v94 - v74);
  v76 = *(v69 + 8);
  v77 = sub_1DAED12EC();
  (*(v72 + 8))(v75, v70);
  if (v77)
  {
    v78 = v94;
    MEMORY[0x1E127CAC0](v11);
    v79 = sub_1DAED103C();

    (*(v95 + 8))(v78, v96);
  }

  else
  {
    v79 = 0;
  }

  v80 = *(v30 + 24);
  *(v30 + 24) = v79;

  v81 = v68[3];
  v82 = v68[4];
  v83 = __swift_project_boxed_opaque_existential_1(v68, v81);
  v84 = *(v81 - 8);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v87 = &v94 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v84 + 16))(v87);
  v88 = *(*(v82 + 8) + 8);
  v89 = sub_1DAED0F8C();
  (*(v84 + 8))(v87, v81);
  v106[0] = v89;
  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  *(v91 + 16) = v90;
  *(v91 + 24) = v46;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08178, &qword_1DAED6490);
  sub_1DAE40B84();
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v109);
  __swift_destroy_boxed_opaque_existential_1Tm(v110);
  __swift_destroy_boxed_opaque_existential_1Tm(v111);
  (*(v105 + 8))(v102, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v107);
  __swift_destroy_boxed_opaque_existential_1Tm(v108);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v112);
  v93 = v103;
  v103[3] = v101;
  v93[4] = &off_1F56B3600;
  *v93 = v30;
  return result;
}

uint64_t sub_1DAE40AA8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);

  return swift_deallocClassInstance();
}

unint64_t sub_1DAE40B24()
{
  result = qword_1EE008C60;
  if (!qword_1EE008C60)
  {
    type metadata accessor for ActivityRendererClient();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE008C60);
  }

  return result;
}

void sub_1DAE40B7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DAE3DD7C();
}

unint64_t sub_1DAE40B84()
{
  result = qword_1EE005C68;
  if (!qword_1EE005C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08178, &qword_1DAED6490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005C68);
  }

  return result;
}

uint64_t TintedWidgetViewModel.__allocating_init(tintParameters:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_beginAccess();
  sub_1DADA657C();
  sub_1DAECEEFC();
  swift_endAccess();
  return v3;
}

uint64_t TintedWidgetView.init(fullColorView:tintedView:tintedWidgetViewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for TintedWidgetView();
  v7 = *(v6 + 52);
  v8 = sub_1DAED233C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(a3 + v7, a1, v8);
  v10 = *(v6 + 56);
  v11 = sub_1DAED233C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(a3 + v10, a2, v11);
  type metadata accessor for TintedWidgetViewModel();
  sub_1DADABB28();
  v13 = sub_1DAECF21C();
  v15 = v14;
  (*(v12 + 8))(a2, v11);
  result = (*(v9 + 8))(a1, v8);
  *a3 = v13;
  a3[1] = v15;
  return result;
}

uint64_t sub_1DAE40E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v33 = *(a2 - 8);
  v7 = *(v33 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v32 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = sub_1DAECF2AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  v20 = sub_1DAECFB2C();
  v21 = *(v20 - 8);
  v35 = v20;
  v36 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v32 - v23;
  if (a1)
  {

    sub_1DAED046C();
    v38 = a3;
    v39 = MEMORY[0x1E697FAF8];
    WitnessTable = swift_getWitnessTable();
    sub_1DADB6258(v17, v12, WitnessTable);
    v26 = *(v13 + 8);
    v26(v17, v12);
    sub_1DADB6258(v19, v12, WitnessTable);
    sub_1DAE26A88(v17, v12);

    v26(v17, v12);
    v26(v19, v12);
  }

  else
  {
    sub_1DADB6258(v34, a2, a3);
    v27 = v32;
    sub_1DADB6258(v11, a2, a3);
    v44 = a3;
    v45 = MEMORY[0x1E697FAF8];
    swift_getWitnessTable();
    sub_1DAE26B80(v27, v12, a2);
    v28 = *(v33 + 8);
    v28(v27, a2);
    v28(v11, a2);
  }

  v42 = a3;
  v43 = MEMORY[0x1E697FAF8];
  v40 = swift_getWitnessTable();
  v41 = a3;
  v29 = v35;
  v30 = swift_getWitnessTable();
  sub_1DADB6258(v24, v29, v30);
  return (*(v36 + 8))(v24, v29);
}

uint64_t sub_1DAE41244()
{
  v3 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A68, &qword_1DAEDB600);
  sub_1DAED077C();
  return v2;
}

uint64_t sub_1DAE41294()
{
  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A68, &qword_1DAEDB600);
  return sub_1DAED078C();
}

uint64_t sub_1DAE412E8(uint64_t a1, unint64_t a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1DAED05EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_8;
  }

  v10 = v7;
  if ((sub_1DAED1DFC() & 1) == 0)
  {
    goto LABEL_8;
  }

  v11 = sub_1DAED1DCC();
  v12 = sub_1DAD8D2CC(v11, a1, a2);
  MEMORY[0x1E127DA00](v12);

  if (sub_1DAED1DAC() != 8)
  {

LABEL_8:
    result = 0;
    goto LABEL_9;
  }

  v13 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v14 = sub_1DAED1CBC();

  v15 = [v13 initWithString_];

  v19[0] = 0;
  if (![v15 scanHexLongLong_])
  {

    goto LABEL_8;
  }

  (*(v5 + 104))(v9, *MEMORY[0x1E69814D8], v10);
  v16 = sub_1DAED06EC();

  result = v16;
LABEL_9:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DAE41540()
{
  v3 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A68, &qword_1DAEDB600);
  sub_1DAED077C();
  return v2;
}

uint64_t sub_1DAE41590()
{
  v2 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A68, &qword_1DAEDB600);
  return sub_1DAED078C();
}

float sub_1DAE415E4()
{
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A60, &unk_1DAEDB5F0);
  sub_1DAED077C();
  return v2;
}

uint64_t sub_1DAE4163C()
{
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A60, &unk_1DAEDB5F0);
  return sub_1DAED078C();
}

double sub_1DAE41694()
{
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A58, &qword_1DAEDB5E8);
  sub_1DAED077C();
  return v2;
}

uint64_t sub_1DAE416EC()
{
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A58, &qword_1DAEDB5E8);
  return sub_1DAED078C();
}

uint64_t sub_1DAE41744()
{
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BB8, &unk_1DAED7960);
  sub_1DAED077C();
  return v2;
}

uint64_t sub_1DAE4179C()
{
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BB8, &unk_1DAED7960);
  return sub_1DAED078C();
}

uint64_t sub_1DAE417F8()
{
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BB8, &unk_1DAED7960);
  sub_1DAED077C();
  return v2;
}

void *sub_1DAE41850()
{
  v1 = sub_1DAECF8EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 176);
  if (*(v0 + 184) == 1)
  {
    v7 = v6;
  }

  else
  {
    v8 = *(v0 + 176);

    sub_1DAED202C();
    v9 = sub_1DAED001C();
    sub_1DAECECEC();

    sub_1DAECF8DC();
    swift_getAtKeyPath();
    sub_1DAE48184(v6, 0);
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v6;
}

uint64_t sub_1DAE419A0()
{
  v1 = sub_1DAECF8EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 192);
  if (*(v0 + 200) != 1)
  {
    v7 = *(v0 + 192);

    sub_1DAED202C();
    v8 = sub_1DAED001C();
    sub_1DAECECEC();

    sub_1DAECF8DC();
    swift_getAtKeyPath();
    sub_1DAE48190(v6, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v10[15];
  }

  return v6 & 1;
}

uint64_t sub_1DAE41AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DAECF8EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A10, &qword_1DAEDB488);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v17 - v12);
  sub_1DAD6495C(v2 + *(a1 + 84), &v17 - v12, &qword_1ECC09A10, &qword_1DAEDB488);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v6 + 32))(a2, v13, v5);
  }

  v15 = *v13;
  sub_1DAED202C();
  v16 = sub_1DAED001C();
  sub_1DAECECEC();

  sub_1DAECF8DC();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DAE41CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a1;
  v126 = a2;
  v142 = *(a1 - 8);
  v3 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v141 = v4;
  v139 = v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = *(v5 + 16);
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  v121 = sub_1DAECFB2C();
  v125 = sub_1DAECF2AC();
  v122 = sub_1DAECF2AC();
  v128 = sub_1DAECF2AC();
  v130 = sub_1DAECFB2C();
  v127 = sub_1DAECFB2C();
  sub_1DAECFFFC();
  v136 = sub_1DAECF2AC();
  v103[0] = sub_1DAECFB2C();
  v6 = sub_1DAED072C();
  v132 = *(v6 - 8);
  v7 = *(v132 + 8);
  MEMORY[0x1EEE9AC00](v6);
  v131 = v103 - v8;
  v9 = sub_1DAECF2AC();
  v124 = *(v9 - 8);
  v10 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v123 = v103 - v11;
  v135 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09A40, &unk_1DAEDB5C8);
  v129 = MEMORY[0x1E695BED8];
  v134 = sub_1DAD64B94(&unk_1EE005C90, &qword_1ECC09A40, &unk_1DAEDB5C8);
  v12 = *(a1 + 24);
  v173 = v12;
  v174 = MEMORY[0x1E69802C0];
  v138 = v12;
  WitnessTable = swift_getWitnessTable();
  v14 = MEMORY[0x1E6980AC8];
  v171 = WitnessTable;
  v172 = MEMORY[0x1E6980AC8];
  v15 = swift_getWitnessTable();
  v16 = MEMORY[0x1E697FAF8];
  v169 = v15;
  v170 = MEMORY[0x1E697FAF8];
  v167 = swift_getWitnessTable();
  v168 = v15;
  v17 = swift_getWitnessTable();
  v165 = WitnessTable;
  v166 = MEMORY[0x1E6980308];
  v163 = swift_getWitnessTable();
  v164 = v14;
  v18 = swift_getWitnessTable();
  v161 = v18;
  v162 = v16;
  v19 = v137;
  v159 = swift_getWitnessTable();
  v160 = v18;
  v20 = swift_getWitnessTable();
  v157 = v17;
  v158 = v20;
  v21 = swift_getWitnessTable();
  v155 = v12;
  v156 = MEMORY[0x1E6980C38];
  v22 = swift_getWitnessTable();
  v153 = v21;
  v154 = v22;
  v152 = swift_getWitnessTable();
  v136 = v6;
  v130 = swift_getWitnessTable();
  v150 = v130;
  v151 = MEMORY[0x1E697E5C0];
  v23 = swift_getWitnessTable();
  v24 = v135;
  v146 = v135;
  v147 = v9;
  v125 = v9;
  v25 = v134;
  v148 = v134;
  v149 = v23;
  v103[1] = v23;
  v26 = sub_1DAECF34C();
  v108 = *(v26 - 8);
  v27 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v104 = v103 - v28;
  v29 = swift_getWitnessTable();
  v146 = v24;
  v147 = v26;
  v111 = v26;
  v148 = v25;
  v149 = v29;
  v103[2] = v29;
  v30 = sub_1DAECF34C();
  v115 = *(v30 - 8);
  v31 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v127 = v103 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC08898, &qword_1DAED8240);
  v34 = sub_1DAD64B94(&qword_1EE00AC00, &qword_1ECC08898, &qword_1DAED8240);
  v35 = swift_getWitnessTable();
  v103[6] = v33;
  v146 = v33;
  v147 = v30;
  v117 = v30;
  v103[3] = v35;
  v103[4] = v34;
  v148 = v34;
  v149 = v35;
  v36 = sub_1DAECF34C();
  v119 = *(v36 - 8);
  v37 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v128 = v103 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09A48, &qword_1DAEDB5D8);
  v40 = sub_1DAD64B94(&qword_1EE005C70, &qword_1ECC09A48, &qword_1DAEDB5D8);
  v41 = swift_getWitnessTable();
  v107 = v39;
  v146 = v39;
  v147 = v36;
  v120 = v36;
  v105 = v40;
  v148 = v40;
  v149 = v41;
  v103[5] = v41;
  v42 = sub_1DAECF34C();
  v121 = *(v42 - 8);
  v43 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v118 = v103 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09A50, &qword_1DAEDB5E0);
  v46 = v131;
  v47 = sub_1DAD64B94(&qword_1EE005C78, &qword_1ECC09A50, &qword_1DAEDB5E0);
  v48 = swift_getWitnessTable();
  v113 = v45;
  v146 = v45;
  v147 = v42;
  v122 = v42;
  v110 = v47;
  v148 = v47;
  v149 = v48;
  v106 = v48;
  v116 = sub_1DAECF34C();
  v114 = *(v116 - 8);
  v49 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v109 = v103 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v112 = v103 - v52;
  v53 = v138;
  v143 = v140;
  v144 = v138;
  v145 = v19;
  sub_1DAED071C();
  v54 = v133;
  if (sub_1DAE44A24())
  {
    sub_1DAE41694();
  }

  v55 = v123;
  v56 = v136;
  sub_1DAED056C();
  (*(v132 + 1))(v46, v56);
  v130 = sub_1DAECE1DC();
  sub_1DAECE1AC();
  v57 = sub_1DAECE13C();

  v146 = v57;
  v58 = v142;
  v59 = *(v142 + 16);
  v136 = v142 + 16;
  v132 = v59;
  v60 = v139;
  v61 = v54;
  v59(v139, v19, v54);
  v131 = *(v58 + 80);
  v62 = (v131 + 32) & ~v131;
  v63 = swift_allocObject();
  *(v63 + 16) = v140;
  *(v63 + 24) = v53;
  v64 = *(v58 + 32);
  v142 = v58 + 32;
  v129 = v64;
  v64(v63 + v62, v60, v54);
  v65 = v104;
  v66 = v125;
  sub_1DAED05CC();

  (*(v124 + 8))(v55, v66);
  sub_1DAECE1AC();
  v67 = sub_1DAECE15C();

  v146 = v67;
  v68 = v139;
  v69 = v137;
  v70 = v61;
  v132(v139, v137, v61);
  v71 = swift_allocObject();
  v72 = v140;
  v73 = v138;
  *(v71 + 16) = v140;
  *(v71 + 24) = v73;
  v129(v71 + v62, v68, v70);
  v74 = v111;
  sub_1DAED05CC();

  (*(v108 + 8))(v65, v74);
  sub_1DAECE1AC();
  v75 = sub_1DAECE18C();

  v146 = v75;
  v76 = v139;
  v78 = v132;
  v77 = v133;
  v132(v139, v69, v133);
  v103[0] = v62;
  v79 = swift_allocObject();
  v80 = v138;
  *(v79 + 16) = v72;
  *(v79 + 24) = v80;
  v81 = v129;
  v129(v79 + v62, v76, v77);
  v82 = v127;
  v83 = v117;
  sub_1DAED05CC();

  (*(v115 + 8))(v82, v83);
  sub_1DAECE1AC();
  v84 = sub_1DAECE1CC();

  v146 = v84;
  v85 = v139;
  v86 = v133;
  v78(v139, v137, v133);
  v87 = v103[0];
  v88 = swift_allocObject();
  *(v88 + 16) = v140;
  *(v88 + 24) = v80;
  v89 = v86;
  v81(v88 + v87, v85, v86);
  v90 = v118;
  v91 = v120;
  v92 = v128;
  sub_1DAED05CC();

  (*(v119 + 8))(v92, v91);
  sub_1DAECE1AC();
  v93 = sub_1DAECE04C();

  v146 = v93;
  v132(v85, v137, v89);
  v94 = swift_allocObject();
  v95 = v138;
  *(v94 + 16) = v140;
  *(v94 + 24) = v95;
  v129(v94 + v87, v85, v89);
  v96 = v109;
  v97 = v122;
  sub_1DAED05CC();

  (*(v121 + 8))(v90, v97);
  v98 = v116;
  v99 = swift_getWitnessTable();
  v100 = v112;
  sub_1DADB6258(v96, v98, v99);
  v101 = *(v114 + 8);
  v101(v96, v98);
  sub_1DADB6258(v100, v98, v99);
  return (v101)(v100, v98);
}

uint64_t sub_1DAE42BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v118 = a4;
  v7 = sub_1DAECFFFC();
  v108 = *(v7 - 8);
  v8 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v106 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v10;
  v11 = sub_1DAECF2AC();
  v110 = *(v11 - 8);
  v12 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v114 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v103 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v113 = &v103 - v17;
  v112 = *(a2 - 8);
  v18 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v111 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v103 = &v103 - v22;
  v23 = sub_1DAECF2AC();
  v24 = sub_1DAECF2AC();
  v25 = sub_1DAECF2AC();
  v120 = v24;
  v121 = v25;
  v26 = sub_1DAECFB2C();
  v123 = sub_1DAECF2AC();
  v27 = sub_1DAECF2AC();
  v28 = sub_1DAECF2AC();
  v125 = v27;
  v126 = v28;
  v29 = sub_1DAECFB2C();
  v122 = v26;
  v127 = v29;
  v30 = sub_1DAECFB2C();
  v105 = *(v30 - 8);
  v31 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v104 = &v103 - v35;
  v117 = v11;
  v36 = sub_1DAECFB2C();
  v115 = *(v36 - 8);
  v116 = v36;
  v37 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v124 = &v103 - v38;
  v39 = a3;
  v40 = type metadata accessor for TintedWidgetAccentedView();
  v41 = sub_1DAE437E4();
  v42 = *(a1 + 8);
  v43 = *(a1 + 16);
  v119 = v23;
  if (v41)
  {
    v44 = v103;
    v42();
    v45 = v40;
    v46 = v39;
    sub_1DAE439D4(v44, v45, a2, v39, v33);
    (*(v112 + 8))(v44, a2);
    v146 = v39;
    v147 = MEMORY[0x1E69802C0];
    WitnessTable = swift_getWitnessTable();
    v144 = WitnessTable;
    v48 = MEMORY[0x1E6980AC8];
    v145 = MEMORY[0x1E6980AC8];
    v49 = swift_getWitnessTable();
    v142 = v49;
    v50 = MEMORY[0x1E697FAF8];
    v143 = MEMORY[0x1E697FAF8];
    v140 = swift_getWitnessTable();
    v141 = v49;
    v51 = swift_getWitnessTable();
    v138 = WitnessTable;
    v139 = MEMORY[0x1E6980308];
    v136 = swift_getWitnessTable();
    v137 = v48;
    v52 = swift_getWitnessTable();
    v134 = v52;
    v135 = v50;
    v132 = swift_getWitnessTable();
    v133 = v52;
    v53 = swift_getWitnessTable();
    v130 = v51;
    v131 = v53;
    v54 = swift_getWitnessTable();
    v55 = v104;
    sub_1DADB6258(v33, v30, v54);
    v56 = *(v105 + 8);
    v56(v33, v30);
    sub_1DADB6258(v55, v30, v54);
    v128 = v46;
    v129 = MEMORY[0x1E6980C38];
    swift_getWitnessTable();
    sub_1DAE26A88(v33, v30);
    v56(v33, v30);
    v56(v55, v30);
  }

  else
  {
    v103 = a2;
    v104 = v30;
    v105 = v39;
    v42();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09A70, &qword_1DAEDB608);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08118, qword_1DAEDB610);
    v58 = *(*(v57 - 8) + 72);
    v59 = (*(*(v57 - 8) + 80) + 32) & ~*(*(v57 - 8) + 80);
    v60 = 2 * v58;
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1DAED8CA0;
    v62 = v61 + v59;
    v63 = (v62 + *(v57 + 48));
    sub_1DAECFB5C();
    sub_1DAE445AC(v40, v190);
    v64 = v190[3];
    v63[2] = v190[2];
    v63[3] = v64;
    v63[4] = v190[4];
    v65 = v190[1];
    *v63 = v190[0];
    v63[1] = v65;
    v66 = (v62 + v58 + *(v57 + 48));
    sub_1DAECFB6C();
    sub_1DAE44778(v40, v191);
    v67 = v191[3];
    v66[2] = v191[2];
    v66[3] = v67;
    v66[4] = v191[4];
    v68 = v191[1];
    *v66 = v191[0];
    v66[1] = v68;
    v69 = v62 + v60 + *(v57 + 48);
    sub_1DAECFB7C();
    *v69 = 1065353216;
    *(v69 + 12) = 0;
    *(v69 + 4) = 0;
    *(v69 + 20) = 0x3F80000000000000;
    *(v69 + 36) = 0;
    *(v69 + 28) = 0;
    *(v69 + 44) = 0x3F80000000000000;
    *(v69 + 60) = 0;
    *(v69 + 52) = 0;
    *(v69 + 68) = 0;
    *(v69 + 72) = 1065353216;
    sub_1DADDCAA0(v61);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (sub_1DAE41744())
    {
      sub_1DAECFFEC();
    }

    else
    {
      sub_1DAECFFDC();
    }

    v46 = v105;
    v70 = v106;
    v71 = v117;
    v72 = MEMORY[0x1E6980C38];
    v73 = v103;
    sub_1DAED000C();
    v74 = v107;
    v75 = v109;
    v76 = v111;
    MEMORY[0x1E127C210](v70, v73, v109, v46);
    (*(v108 + 8))(v70, v75);
    (*(v112 + 8))(v76, v73);
    v188 = v46;
    v189 = v72;
    v77 = swift_getWitnessTable();
    v78 = v113;
    v112 = v77;
    sub_1DADB6258(v74, v71, v77);
    v117 = *(v110 + 8);
    v117(v74, v71);
    sub_1DADB6258(v78, v71, v77);
    v186 = v46;
    v187 = MEMORY[0x1E69802C0];
    v79 = swift_getWitnessTable();
    v184 = v79;
    v80 = MEMORY[0x1E6980AC8];
    v185 = MEMORY[0x1E6980AC8];
    v81 = swift_getWitnessTable();
    v182 = v81;
    v82 = MEMORY[0x1E697FAF8];
    v183 = MEMORY[0x1E697FAF8];
    v180 = swift_getWitnessTable();
    v181 = v81;
    v83 = swift_getWitnessTable();
    v178 = v79;
    v179 = MEMORY[0x1E6980308];
    v176 = swift_getWitnessTable();
    v177 = v80;
    v84 = swift_getWitnessTable();
    v174 = v84;
    v175 = v82;
    v172 = swift_getWitnessTable();
    v173 = v84;
    v85 = swift_getWitnessTable();
    v170 = v83;
    v171 = v85;
    v86 = v104;
    swift_getWitnessTable();
    v87 = v114;
    sub_1DAE26B80(v114, v86, v71);
    v88 = v87;
    v89 = v117;
    v117(v88, v71);
    v89(v113, v71);
  }

  v168 = v46;
  v169 = MEMORY[0x1E69802C0];
  v90 = swift_getWitnessTable();
  v166 = v90;
  v91 = MEMORY[0x1E6980AC8];
  v167 = MEMORY[0x1E6980AC8];
  v92 = swift_getWitnessTable();
  v164 = v92;
  v93 = MEMORY[0x1E697FAF8];
  v165 = MEMORY[0x1E697FAF8];
  v162 = swift_getWitnessTable();
  v163 = v92;
  v94 = swift_getWitnessTable();
  v160 = v90;
  v161 = MEMORY[0x1E6980308];
  v158 = swift_getWitnessTable();
  v159 = v91;
  v95 = swift_getWitnessTable();
  v156 = v95;
  v157 = v93;
  v154 = swift_getWitnessTable();
  v155 = v95;
  v96 = swift_getWitnessTable();
  v152 = v94;
  v153 = v96;
  v97 = swift_getWitnessTable();
  v150 = v46;
  v151 = MEMORY[0x1E6980C38];
  v98 = swift_getWitnessTable();
  v148 = v97;
  v149 = v98;
  v99 = v116;
  v100 = swift_getWitnessTable();
  v101 = v124;
  sub_1DADB6258(v124, v99, v100);
  return (*(v115 + 8))(v101, v99);
}

uint64_t sub_1DAE437E4()
{
  v1 = v0;
  v2 = sub_1DAE41850();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 extensionIdentity];

    v5 = *MEMORY[0x1E69941B8];
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08390, &unk_1DAED7DA0);
    sub_1DAECE26C();
    v7 = v6;
    swift_endAccess();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1DAE41850();
  if (!v8 || (v9 = v8, v10 = [v8 supportsAccentedContent], v9, (v10 & 1) != 0) || !objc_msgSend(*v1, sel_wantsGlassMaterial))
  {
    if (sub_1DAE417F8())
    {
      if (v7)
      {

        v11 = sub_1DAED1DFC();

        if ((v11 & 1) == 0)
        {

          v12 = sub_1DAED1DFC();

          if ((v12 & 1) == 0)
          {
            v13 = sub_1DAED1DFC();

            return v13 & 1;
          }
        }

        goto LABEL_11;
      }
    }

    else
    {
    }

    v13 = 0;
    return v13 & 1;
  }

LABEL_11:

  v13 = 1;
  return v13 & 1;
}

uint64_t sub_1DAE439D4@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v108 = a4;
  v93 = a3;
  v94 = a1;
  v102 = a5;
  v103 = a2;
  v5 = sub_1DAECF2AC();
  v6 = sub_1DAECF2AC();
  v87 = *(v6 - 8);
  v7 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v81 - v8;
  v9 = sub_1DAECF2AC();
  v89 = *(v9 - 8);
  v10 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v81 - v11;
  v109 = sub_1DAECF2AC();
  v110 = v9;
  v12 = sub_1DAECFB2C();
  v92 = *(v12 - 8);
  v13 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v91 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v81 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v81 - v18;
  v19 = *(v5 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v81 - v22;
  v24 = sub_1DAECF2AC();
  v82 = *(v24 - 8);
  v25 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v81 - v26;
  v28 = sub_1DAECF2AC();
  v106 = v24;
  v29 = sub_1DAECFB2C();
  v86 = *(v29 - 8);
  v30 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v84 = &v81 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v81 = &v81 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v95 = &v81 - v36;
  v96 = v35;
  v100 = v12;
  v37 = sub_1DAECFB2C();
  v97 = *(v37 - 8);
  v98 = v37;
  v38 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v107 = &v81 - v39;
  LOBYTE(v12) = sub_1DAE41744();
  v40 = v108;
  sub_1DAED04BC();
  v101 = v6;
  v99 = v5;
  v104 = v28;
  if (v12)
  {
    v125 = v40;
    v126 = MEMORY[0x1E69802C0];
    WitnessTable = swift_getWitnessTable();
    v161 = xmmword_1DAEDB130;
    v162 = xmmword_1DAEDB140;
    v163 = xmmword_1DAEDB150;
    v164 = xmmword_1DAEDB160;
    v165 = xmmword_1DAEDB170;
    MEMORY[0x1E127C210](&v161, v5, MEMORY[0x1E6980AD0], WitnessTable);
    (*(v19 + 8))(v23, v5);
    if ([*v105 filterStyle] == 6)
    {
      v42 = sub_1DAE44C8C(v103);
    }

    else
    {
      v42 = 0;
    }

    v49 = v106;
    v50 = MEMORY[0x1E697FAF8];
    v123 = WitnessTable;
    v124 = MEMORY[0x1E6980AC8];
    v51 = swift_getWitnessTable();
    v94 = WitnessTable;
    v52 = v81;
    sub_1DAE40E2C(v42, v49, v51, v81);

    (*(v82 + 8))(v27, v49);
    v121 = v51;
    v122 = v50;
    v119 = swift_getWitnessTable();
    v120 = v51;
    v105 = MEMORY[0x1E697F968];
    v53 = v96;
    v54 = swift_getWitnessTable();
    v55 = v95;
    sub_1DADB6258(v52, v53, v54);
    v103 = *(v86 + 8);
    v103(v52, v53);
    v56 = v84;
    sub_1DADB6258(v55, v53, v54);
    v117 = v94;
    v118 = MEMORY[0x1E6980308];
    v115 = swift_getWitnessTable();
    v116 = MEMORY[0x1E6980AC8];
    v57 = swift_getWitnessTable();
    v113 = v57;
    v114 = v50;
    v111 = swift_getWitnessTable();
    v112 = v57;
    swift_getWitnessTable();
    sub_1DAE26A88(v56, v53);
    v58 = v56;
    v59 = v103;
    v103(v58, v53);
    v59(v95, v53);
  }

  else
  {
    v159 = v40;
    v160 = MEMORY[0x1E69802C0];
    v43 = MEMORY[0x1E6980308];
    v44 = swift_getWitnessTable();
    v45 = v85;
    sub_1DAED04CC();
    (*(v19 + 8))(v23, v5);
    v95 = v44;
    v157 = v44;
    v158 = v43;
    v46 = swift_getWitnessTable();
    v161 = xmmword_1DAEDB0E0;
    v162 = xmmword_1DAEDB0F0;
    v163 = xmmword_1DAEDB100;
    v164 = xmmword_1DAEDB110;
    v165 = xmmword_1DAEDB120;
    v47 = v83;
    MEMORY[0x1E127C210](&v161, v6, MEMORY[0x1E6980AD0], v46);
    (*(v87 + 8))(v45, v6);
    if ([*v105 filterStyle] == 6)
    {
      v48 = sub_1DAE44C8C(v103);
    }

    else
    {
      v48 = 0;
    }

    v60 = v110;
    v61 = v100;
    v155 = v46;
    v156 = MEMORY[0x1E6980AC8];
    v62 = swift_getWitnessTable();
    v63 = v88;
    sub_1DAE40E2C(v48, v60, v62, v88);

    (*(v89 + 8))(v47, v60);
    v153 = v62;
    v154 = MEMORY[0x1E697FAF8];
    v151 = swift_getWitnessTable();
    v152 = v62;
    v64 = swift_getWitnessTable();
    v65 = v90;
    sub_1DADB6258(v63, v61, v64);
    v66 = *(v92 + 8);
    v66(v63, v61);
    v67 = v91;
    sub_1DADB6258(v65, v61, v64);
    v149 = v95;
    v150 = MEMORY[0x1E6980AC8];
    v68 = swift_getWitnessTable();
    v147 = v68;
    v148 = MEMORY[0x1E697FAF8];
    v145 = swift_getWitnessTable();
    v146 = v68;
    v69 = v96;
    swift_getWitnessTable();
    sub_1DAE26B80(v67, v69, v61);
    v66(v67, v61);
    v66(v65, v61);
  }

  v143 = v108;
  v144 = MEMORY[0x1E69802C0];
  v70 = swift_getWitnessTable();
  v141 = v70;
  v71 = MEMORY[0x1E6980AC8];
  v142 = MEMORY[0x1E6980AC8];
  v72 = swift_getWitnessTable();
  v139 = v72;
  v73 = MEMORY[0x1E697FAF8];
  v140 = MEMORY[0x1E697FAF8];
  v137 = swift_getWitnessTable();
  v138 = v72;
  v74 = swift_getWitnessTable();
  v135 = v70;
  v136 = MEMORY[0x1E6980308];
  v133 = swift_getWitnessTable();
  v134 = v71;
  v75 = swift_getWitnessTable();
  v131 = v75;
  v132 = v73;
  v129 = swift_getWitnessTable();
  v130 = v75;
  v76 = swift_getWitnessTable();
  v127 = v74;
  v128 = v76;
  v77 = v98;
  v78 = swift_getWitnessTable();
  v79 = v107;
  sub_1DADB6258(v107, v77, v78);
  return (*(v97 + 8))(v79, v77);
}

double sub_1DAE445AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DAECF8EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  if (!sub_1DAE41540() && !sub_1DAE41244())
  {
    sub_1DAE452F0(a1);
  }

  [*v2 fraction];
  v14 = v13;
  sub_1DAE41AE8(a1, v12);
  (*(v6 + 16))(v9, v12, v5);
  sub_1DAECF14C();
  (*(v6 + 8))(v12, v5);
  v15 = v23;
  v16 = v24;
  v17 = v26;
  v18 = v22 * v14;
  v19 = v25 * v14;
  v20 = v29 * v14;
  *a2 = 0;
  *(a2 + 4) = v15;
  *(a2 + 12) = v18;
  *(a2 + 16) = v16;
  *(a2 + 24) = 0;
  *(a2 + 28) = v17;
  *(a2 + 32) = v19;
  *(a2 + 36) = v27;
  *(a2 + 44) = v28;
  *(a2 + 48) = 0;
  *(a2 + 52) = v20;
  *(a2 + 72) = v31;
  result = *&v30;
  *(a2 + 56) = v30;
  return result;
}

void sub_1DAE44778(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DAECF8EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = &v25 - v12;
  v14 = *v2;
  if (([*v2 isClearGlass] & 1) != 0 || objc_msgSend(v14, sel_isAccentedGlass))
  {
    sub_1DAE44C8C(a1);
    sub_1DAE41AE8(a1, v13);
    (*(v6 + 16))(v9, v13, v5);
    sub_1DAECF14C();
    (*(v6 + 8))(v13, v5);
    v15 = v32;
    v16 = v25;
    v17 = v26;
    v18 = v27;
    v20 = v28;
    v19 = v29;
    v37 = v30;
    v38 = v31;
    v36 = v33;
    v21 = v35;
    v22 = sub_1DAE415E4();
  }

  else
  {
    sub_1DAE44C8C(a1);
    [v14 fraction];
    v24 = v23;
    sub_1DAE41AE8(a1, v13);
    (*(v6 + 16))(v9, v13, v5);
    sub_1DAECF14C();
    (*(v6 + 8))(v13, v5);
    v17 = v26;
    v18 = v27;
    v19 = v29;
    v37 = v30;
    v38 = v31;
    v36 = v33;
    v16 = v25 * v24;
    v20 = v28 * v24;
    v15 = v32 * v24;
    v22 = v34;
    v21 = v35;
  }

  *a2 = 0;
  *(a2 + 4) = v17;
  *(a2 + 12) = v16;
  *(a2 + 16) = v18;
  *(a2 + 24) = 0;
  *(a2 + 28) = v19;
  *(a2 + 32) = v20;
  *(a2 + 36) = v37;
  *(a2 + 44) = v38;
  *(a2 + 52) = v15;
  *(a2 + 56) = v36;
  *(a2 + 72) = v22;
  *(a2 + 76) = v21;
}

id sub_1DAE44A24()
{
  v1 = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A28, &qword_1DAEDB500);
  sub_1DAECF04C();
  if (v4 == 2 || (v4 & 1) == 0)
  {
    v2 = *v0;
    result = [*v0 wantsSubduedGlass];
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v2 = *v0;
  }

  return [v2 wantsGlassMaterial];
}

uint64_t sub_1DAE44AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = sub_1DAE412E8(*a1, *(a1 + 8));
  v7 = type metadata accessor for TintedWidgetAccentedView();
  return a5(v6, v7);
}

uint64_t sub_1DAE44B20()
{
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  sub_1DAECE17C();

  type metadata accessor for TintedWidgetAccentedView();
  return sub_1DAE4179C();
}

uint64_t sub_1DAE44B9C()
{
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  sub_1DAECE1BC();

  type metadata accessor for TintedWidgetAccentedView();
  return sub_1DAE4163C();
}

uint64_t sub_1DAE44C14()
{
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  sub_1DAECE03C();

  type metadata accessor for TintedWidgetAccentedView();
  return sub_1DAE416EC();
}

uint64_t sub_1DAE44C8C(uint64_t a1)
{
  v3 = sub_1DAECF8EC();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAED05EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DAE419A0();
  v13 = *v1;
  if (v12)
  {
    if (![*v1 secondaryTintColor])
    {
      if ([v13 filterStyle] == 1)
      {
        (*(v8 + 104))(v11, *MEMORY[0x1E69814D8], v7);
        v14 = sub_1DAED06FC();
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_6:
    v14 = sub_1DAED06DC();
    goto LABEL_8;
  }

  if ([*v1 primaryTintColor])
  {
    goto LABEL_6;
  }

LABEL_7:
  v14 = sub_1DAED066C();
LABEL_8:
  v31 = v14;
  v15 = [v13 filterStyle];
  if ((v15 - 3) >= 3)
  {
    if (v15 == 6)
    {
      v18 = [v13 primaryTintColor];
      v29 = v8;
      if (v18)
      {
        v19 = sub_1DAED06DC();
      }

      else
      {
        v19 = sub_1DAED066C();
      }

      v22 = v19;
      sub_1DAE41AE8(a1, v6);
      sub_1DAED068C();
      v27 = v3;
      v28 = v22;
      v23 = *(v30 + 8);
      v23(v6, v3);
      sub_1DAED06AC();
      sub_1DAED06CC();
      sub_1DAED06BC();
      LODWORD(v30) = *MEMORY[0x1E69814D8];
      v29 = *(v29 + 104);
      (v29)(v11);
      sub_1DAED06EC();
      sub_1DAE41AE8(a1, v6);
      sub_1DAED068C();
      v24 = v27;
      v23(v6, v27);
      sub_1DAE41AE8(a1, v6);
      sub_1DAED068C();
      sub_1DAE47778();
      sub_1DAED06AC();
      sub_1DAED06CC();
      sub_1DAED06BC();
      (v29)(v11, v30, v7);
      v25 = sub_1DAED06EC();

      v23(v6, v24);
      return v25;
    }

    else
    {
      v20 = sub_1DAE41244();
      if (v20)
      {
        v21 = v20;

        return v21;
      }

      else
      {
        return v31;
      }
    }
  }

  else
  {
    sub_1DAED066C();
    v16 = sub_1DAED067C();

    return v16;
  }
}

uint64_t CHSWidgetTintParameters.resolvedPrimaryTintColor.getter()
{
  if ([v0 primaryTintColor])
  {

    return sub_1DAED06DC();
  }

  else
  {

    return sub_1DAED066C();
  }
}

uint64_t CHSWidgetTintParameters.resolvedSecondaryTintColor.getter()
{
  v1 = v0;
  v2 = sub_1DAED05EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 secondaryTintColor])
  {

    return sub_1DAED06DC();
  }

  else if ([v1 filterStyle] == 1)
  {
    (*(v3 + 104))(v7, *MEMORY[0x1E69814D8], v2);
    return sub_1DAED06FC();
  }

  else
  {

    return sub_1DAED066C();
  }
}

uint64_t sub_1DAE452F0(uint64_t a1)
{
  v3 = sub_1DAED05EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAE419A0();
  v9 = *v1;
  if (v8)
  {
    if (![*v1 primaryTintColor])
    {
      goto LABEL_8;
    }

LABEL_5:
    v10 = sub_1DAED06DC();
    goto LABEL_9;
  }

  if ([*v1 secondaryTintColor])
  {
    goto LABEL_5;
  }

  if ([v9 filterStyle] == 1)
  {
    (*(v4 + 104))(v7, *MEMORY[0x1E69814D8], v3);
    v10 = sub_1DAED06FC();
    goto LABEL_9;
  }

LABEL_8:
  v10 = sub_1DAED066C();
LABEL_9:
  v11 = v10;
  v12 = [v9 filterStyle];
  if ((v12 - 3) < 3)
  {
    v13 = sub_1DAED066C();
LABEL_13:
    v14 = v13;

    return v14;
  }

  if (v12 == 6)
  {
    v13 = sub_1DAE44C8C(a1);
    goto LABEL_13;
  }

  return v11;
}

uint64_t sub_1DAE454A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DAECF8EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A10, &qword_1DAEDB488);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v17 - v12);
  sub_1DAD6495C(v2 + *(a1 + 52), &v17 - v12, &qword_1ECC09A10, &qword_1DAEDB488);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v6 + 32))(a2, v13, v5);
  }

  v15 = *v13;
  sub_1DAED202C();
  v16 = sub_1DAED001C();
  sub_1DAECECEC();

  sub_1DAECF8DC();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DAE45688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = *(a1 + 16);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v69[0] = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v7;
  v8 = *(v7 + 24);
  *&v95 = v3;
  *(&v95 + 1) = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  v10 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v77 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v75 = v69 - v13;
  v74 = sub_1DAECF90C();
  v71 = *(v74 - 8);
  v14 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v3;
  *&v95 = v3;
  *(&v95 + 1) = v8;
  v80 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1DAECF36C();
  v16 = sub_1DAECF2AC();
  v72 = *(v16 - 8);
  v17 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v69 - v18;
  WitnessTable = swift_getWitnessTable();
  v93 = MEMORY[0x1E6981580];
  v94 = WitnessTable;
  v21 = swift_getWitnessTable();
  *&v95 = v16;
  *(&v95 + 1) = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v70 = v69 - v25;
  *&v95 = v16;
  *(&v95 + 1) = v21;
  v69[1] = v21;
  v26 = swift_getOpaqueTypeConformance2();
  v88 = v22;
  *&v95 = v22;
  *(&v95 + 1) = v26;
  v84 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v69 - v33;
  v79 = v35;
  v87 = OpaqueTypeMetadata2;
  v36 = sub_1DAECFB2C();
  v83 = *(v36 - 8);
  v37 = *(v83 + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v81 = v69 - v39;
  if (*(v2 + 8) == 1)
  {
    v40 = sub_1DAED063C();
    v76 = v23;
    *&v95 = v40;
    MEMORY[0x1EEE9AC00](v40);
    v77 = v36;
    v41 = v80;
    v69[-4] = v82;
    v69[-3] = v41;
    v69[-2] = v2;
    sub_1DAED091C();
    v80 = v2;
    sub_1DAED057C();
    v82 = v34;
    v42 = v88;

    v43 = v71;
    v44 = v28;
    v45 = v73;
    v46 = v74;
    (*(v71 + 104))(v73, *MEMORY[0x1E697F3A0], v74);
    v47 = v70;
    sub_1DAED044C();
    (*(v43 + 8))(v45, v46);
    (*(v72 + 8))(v19, v16);
    v48 = *v80;
    sub_1DAE46344(v78, &v95);
    v49 = v84;
    sub_1DAED041C();
    v50 = v47;
    v51 = OpaqueTypeConformance2;
    (*(v76 + 8))(v50, v42);
    v91 = v42;
    v92 = v49;
    v52 = swift_getOpaqueTypeConformance2();
    v53 = v82;
    v54 = v79;
    sub_1DADB6258(v31, v79, v52);
    v55 = *(v44 + 8);
    v55(v31, v54);
    sub_1DADB6258(v53, v54, v52);
    v56 = v81;
    v36 = v77;
    sub_1DAE26A88(v31, v54);
    v55(v31, v54);
    v55(v53, v54);
  }

  else
  {
    v57 = *(v2 + 32);
    v58 = v69[0];
    (*(v2 + 24))(v38);
    v59 = *(v2 + 16);
    v60 = *(v2 + 12);
    v61 = *(v2 + 20) - v59;
    *&v95 = (1.0 - v60) + (v60 * (v61 * 0.21265));
    *(&v95 + 4) = vmul_n_f32(vmul_n_f32(0x3D93E0013F371FFFLL, v61), v60);
    HIDWORD(v95) = 0;
    v96 = v59 * v60;
    v97 = v60 * (v61 * 0.21265);
    v99 = DWORD2(v95);
    v98 = (1.0 - v60) + *(&v95 + 1);
    v100 = 0;
    v101 = v59 * v60;
    v102 = v97;
    v103 = DWORD1(v95);
    v104 = (1.0 - v60) + *(&v95 + 2);
    v105 = 0;
    v106 = v59 * v60;
    v107 = xmmword_1DAEDB180;
    v108 = 0;
    v62 = v77;
    v63 = v82;
    sub_1DAED041C();
    (*(v4 + 8))(v58, v63);
    v64 = v75;
    v51 = OpaqueTypeConformance2;
    v65 = v87;
    sub_1DADB6258(v62, v87, OpaqueTypeConformance2);
    v66 = *(v76 + 8);
    v66(v62, v65);
    sub_1DADB6258(v64, v65, v51);
    v49 = v84;
    v91 = v88;
    v92 = v84;
    swift_getOpaqueTypeConformance2();
    v56 = v81;
    sub_1DAE26B80(v62, v79, v65);
    v66(v62, v65);
    v66(v64, v65);
  }

  v91 = v88;
  v92 = v49;
  v89 = swift_getOpaqueTypeConformance2();
  v90 = v51;
  v67 = swift_getWitnessTable();
  sub_1DADB6258(v56, v36, v67);
  return (*(v83 + 8))(v56, v36);
}

uint64_t sub_1DAE4608C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29[1] = a4;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = v11;
  *(&v30 + 1) = v12;
  v29[0] = MEMORY[0x1E69811F8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v29 - v20;
  v22 = *(a1 + 32);
  (*(a1 + 24))(v19);
  v23 = *(a1 + 16);
  v24 = *(a1 + 12);
  v25 = *(a1 + 20) - v23;
  *&v30 = (1.0 - v24) + (v24 * (v25 * 0.21265));
  *(&v30 + 4) = vmul_n_f32(vmul_n_f32(0x3D93E0013F371FFFLL, v25), v24);
  HIDWORD(v30) = 0;
  v31 = v23 * v24;
  v32 = v24 * (v25 * 0.21265);
  v34 = DWORD2(v30);
  v33 = (1.0 - v24) + *(&v30 + 1);
  v35 = 0;
  v36 = v23 * v24;
  v37 = v32;
  v38 = DWORD1(v30);
  v39 = (1.0 - v24) + *(&v30 + 2);
  v40 = 0;
  v41 = v23 * v24;
  v42 = xmmword_1DAEDB180;
  v43 = 0;
  sub_1DAED041C();
  (*(v7 + 8))(v10, a2);
  v29[2] = a2;
  v29[3] = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1DADB6258(v17, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v27 = *(v14 + 8);
  v27(v17, OpaqueTypeMetadata2);
  sub_1DADB6258(v21, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v27)(v21, OpaqueTypeMetadata2);
}

double sub_1DAE46344@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1DAECF8EC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1DAE454A4(a1, v7);
  sub_1DAECF14C();
  v8 = v18;
  v9 = v20;
  v10 = v19;
  v12 = v21;
  v11 = v22;
  v13 = v23;
  v14 = v24;
  v15 = v26;
  v16 = v25;
  *a2 = 0;
  *(a2 + 4) = v10;
  *(a2 + 12) = v9;
  *(a2 + 16) = v8;
  *(a2 + 20) = v12;
  *(a2 + 24) = 0;
  *(a2 + 28) = v13;
  *(a2 + 36) = v11;
  *(a2 + 40) = v14;
  *(a2 + 48) = 0;
  *(a2 + 52) = vrev64_s32(v16);
  result = 0.000352859321;
  *(a2 + 60) = xmmword_1DAEDB190;
  *(a2 + 76) = v15;
  return result;
}

uint64_t sub_1DAE46454@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v5 = sub_1DAED05EC();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A08, &qword_1DAEDB400);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v14 = [a2 filterStyle];
  v15 = [a2 primaryTintColor];
  if (v14 == 2)
  {
    if (v15)
    {
      v17 = sub_1DAED06DC();
      v32 = 1;
    }

    else
    {
      v32 = 1;
      v17 = sub_1DAED066C();
    }
  }

  else
  {
    if (v15)
    {
      v16 = sub_1DAED06DC();
    }

    else
    {
      v16 = sub_1DAED066C();
    }

    v17 = v16;
    v32 = 0;
  }

  if ([a2 primaryTintColor])
  {
    sub_1DAED06DC();
  }

  else
  {
    sub_1DAED066C();
  }

  sub_1DAE46CE4();
  v19 = v18;

  if ([a2 secondaryTintColor])
  {
    sub_1DAED06DC();
  }

  else if ([a2 filterStyle] == 1)
  {
    (*(v31 + 104))(v8, *MEMORY[0x1E69814D8], v5);
    sub_1DAED06FC();
  }

  else
  {
    sub_1DAED066C();
  }

  v20 = v19;
  sub_1DAE46CE4();
  v22 = v21;

  v23 = v22;
  [a2 fraction];
  v25 = v24;

  (*(v10 + 16))(v13, v33, v9);
  v26 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v27 = swift_allocObject();
  (*(v10 + 32))(v27 + v26, v13, v9);
  KeyPath = swift_getKeyPath();
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099E0, &qword_1DAEDB3D8) + 52)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A10, &qword_1DAEDB488);
  result = swift_storeEnumTagMultiPayload();
  *a3 = v17;
  *(a3 + 8) = v32;
  *&v25 = v25;
  *(a3 + 12) = LODWORD(v25);
  *(a3 + 16) = v23;
  *(a3 + 20) = v20;
  *(a3 + 24) = sub_1DAE485B4;
  *(a3 + 32) = v27;
  return result;
}

uint64_t sub_1DAE46804@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A08, &qword_1DAEDB400);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v41 - v9;
  (*(v7 + 16))(&v41 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  sub_1DAECE1DC();
  v46 = a2;
  sub_1DAECE1AC();
  v13 = sub_1DAECE12C();
  v42 = v14;
  v43 = v13;

  sub_1DAECE1AC();
  v15 = sub_1DAECE12C();
  v17 = v16;

  v41 = sub_1DAE412E8(v15, v17);

  sub_1DAECE1AC();
  v18 = sub_1DAECE14C();
  v44 = v19;
  v45 = v18;

  sub_1DAECE1AC();
  v20 = sub_1DAECE14C();
  v22 = v21;

  v23 = sub_1DAE412E8(v20, v22);

  sub_1DAECE1AC();
  sub_1DAECE1BC();
  v25 = v24;

  sub_1DAECE1AC();
  sub_1DAECE03C();
  v27 = v26;

  sub_1DAECE1AC();
  LOBYTE(v20) = sub_1DAECE17C();

  sub_1DAECE1AC();
  LOBYTE(a2) = sub_1DAECE10C();

  v28 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v29 = sub_1DAED1CBC();
  [v28 initWithSuiteName_];

  v30 = sub_1DAECF05C();
  KeyPath = swift_getKeyPath();
  v32 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A00, &qword_1DAEDB3F8) + 84)) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A10, &qword_1DAEDB488);
  swift_storeEnumTagMultiPayload();
  *a3 = v46;
  *(a3 + 8) = sub_1DAE4801C;
  *(a3 + 16) = v12;
  v47 = v43;
  v48 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A18, &unk_1DAEDB490);
  sub_1DAED076C();
  v34 = v50;
  *(a3 + 24) = v49;
  *(a3 + 40) = v34;
  v47 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08678, &qword_1DAED6CB8);
  sub_1DAED076C();
  *(a3 + 48) = v49;
  v47 = v45;
  v48 = v44;
  sub_1DAED076C();
  v35 = v50;
  *(a3 + 64) = v49;
  *(a3 + 80) = v35;
  v47 = v23;
  sub_1DAED076C();
  *(a3 + 88) = v49;
  LODWORD(v47) = v25;
  sub_1DAED076C();
  v36 = *(&v49 + 1);
  *(a3 + 104) = v49;
  *(a3 + 112) = v36;
  v47 = v27;
  sub_1DAED076C();
  v37 = *(&v49 + 1);
  *(a3 + 120) = v49;
  *(a3 + 128) = v37;
  LOBYTE(v47) = v20 & 1;
  sub_1DAED076C();
  v38 = *(&v49 + 1);
  *(a3 + 136) = v49;
  *(a3 + 144) = v38;
  LOBYTE(v47) = a2 & 1;
  result = sub_1DAED076C();
  v40 = *(&v49 + 1);
  *(a3 + 152) = v49;
  *(a3 + 160) = v40;
  *(a3 + 168) = v30;
  *(a3 + 176) = KeyPath;
  *(a3 + 184) = 0;
  *(a3 + 192) = v32;
  *(a3 + 200) = 0;
  return result;
}

void sub_1DAE46CE4()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1DAED05DC();
  if (v0)
  {
    v1 = v0;
    v6 = 0;
    v7[0] = 0;
    v4 = 0;
    v5 = 0;
    v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];
    [v2 getRed:v7 green:&v6 blue:&v5 alpha:&v4];
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DAE46DDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v1;
}

uint64_t sub_1DAE46E50()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

void (*sub_1DAE46EC0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1DAECEF2C();
  return sub_1DAE46F64;
}

void sub_1DAE46F64(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1DAE46FCC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08930, qword_1DAED73A8);
  sub_1DAECEF0C();
  return swift_endAccess();
}

uint64_t sub_1DAE47044(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08928, &qword_1DAED73A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08930, qword_1DAED73A8);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_1DAE471C8()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08930, qword_1DAED73A8);
  sub_1DAECEF0C();
  return swift_endAccess();
}

uint64_t sub_1DAE4723C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08928, &qword_1DAED73A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08930, qword_1DAED73A8);
  sub_1DAECEF1C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_1DAE47374(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08928, &qword_1DAED73A0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC14WidgetRenderer21TintedWidgetViewModel__tintParameters;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08930, qword_1DAED73A8);
  sub_1DAECEF0C();
  swift_endAccess();
  return sub_1DAE474E4;
}

void sub_1DAE474E4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_1DAECEF1C();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_1DAECEF1C();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t TintedWidgetViewModel.init(tintParameters:)()
{
  swift_beginAccess();
  sub_1DADA657C();
  sub_1DAECEEFC();
  swift_endAccess();
  return v0;
}

uint64_t TintedWidgetViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer21TintedWidgetViewModel__tintParameters;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08930, qword_1DAED73A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1DAE4772C()
{
  type metadata accessor for TintedWidgetViewModel();
  sub_1DADABB28();

  return sub_1DAECF21C();
}

uint64_t sub_1DAE47778()
{
  v0 = sub_1DAED05EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAED06AC();
  sub_1DAED06CC();
  sub_1DAED06BC();
  (*(v1 + 104))(v4, *MEMORY[0x1E69814D8], v0);
  return sub_1DAED069C();
}

uint64_t sub_1DAE47A60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v6 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v13;
  }

  v14 = *(v4 + 80);
  v15 = *(v8 + 80);
  v16 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v16;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_39;
  }

  v18 = v16 + ((v13 + v15 + ((v14 + 16) & ~v14)) & ~v15);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v21 < 2)
    {
LABEL_39:
      if ((v11 & 0x80000000) == 0)
      {
        v25 = *(a1 + 1);
        if (v25 >= 0xFFFFFFFF)
        {
          LODWORD(v25) = -1;
        }

        return (v25 + 1);
      }

      v27 = (a1 + v14 + 16) & ~v14;
      if (v6 == v12)
      {
        if (v5 < 2)
        {
          return 0;
        }

        v28 = (*(v4 + 48))(v27);
      }

      else
      {
        v28 = (*(v8 + 48))((v27 + v13 + v15) & ~v15, v9, v7);
      }

      if (v28 >= 2)
      {
        return v28 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_39;
  }

LABEL_26:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = v18;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v12 + (v24 | v22) + 1;
}

void sub_1DAE47CDC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  if (v8)
  {
    v11 = v8 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v9 - 8);
  v13 = *(v10 + 84);
  v14 = *(v7 + 80);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  v17 = v13 - 1;
  if (!v13)
  {
    v17 = 0;
  }

  if (v11 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (v8)
  {
    v20 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v20 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  if (v13)
  {
    v21 = v16;
  }

  else
  {
    v21 = v16 + 1;
  }

  v22 = ((v20 + v15 + ((v14 + 16) & ~v14)) & ~v15) + v21;
  v23 = a3 >= v19;
  v24 = a3 - v19;
  if (v24 == 0 || !v23)
  {
LABEL_30:
    if (v19 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  if (v22 > 3)
  {
    v6 = 1;
    if (v19 < a2)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  v25 = ((v24 + ~(-1 << (8 * v22))) >> (8 * v22)) + 1;
  if (!HIWORD(v25))
  {
    if (v25 < 0x100)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v25 >= 2)
    {
      v6 = v26;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_30;
  }

  v6 = 4;
  if (v19 < a2)
  {
LABEL_31:
    v27 = ~v19 + a2;
    if (v22 < 4)
    {
      v28 = (v27 >> (8 * v22)) + 1;
      if (v22)
      {
        v29 = v27 & ~(-1 << (8 * v22));
        bzero(a1, v22);
        if (v22 != 3)
        {
          if (v22 == 2)
          {
            *a1 = v29;
            if (v6 > 1)
            {
LABEL_66:
              if (v6 == 2)
              {
                *&a1[v22] = v28;
              }

              else
              {
                *&a1[v22] = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v6 > 1)
            {
              goto LABEL_66;
            }
          }

          goto LABEL_63;
        }

        *a1 = v29;
        a1[2] = BYTE2(v29);
      }

      if (v6 > 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v27;
      v28 = 1;
      if (v6 > 1)
      {
        goto LABEL_66;
      }
    }

LABEL_63:
    if (v6)
    {
      a1[v22] = v28;
    }

    return;
  }

LABEL_40:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

    *&a1[v22] = 0;
  }

  else if (v6)
  {
    a1[v22] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!a2)
  {
    return;
  }

LABEL_47:
  if ((v18 & 0x80000000) != 0)
  {
    v30 = &a1[v14 + 16] & ~v14;
    if (v11 == v19)
    {
      if (v8 >= 2)
      {
        v31 = *(v7 + 56);
        v32 = a2 + 1;

        v31(v30, v32);
      }
    }

    else
    {
      v33 = *(v12 + 56);
      v34 = (v30 + v20 + v15) & ~v15;
      v35 = a2 + 1;

      v33(v34, v35, v13, v9);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1DAE48020@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A08, &qword_1DAEDB400);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

void sub_1DAE48184(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1DAE48190(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1DAE481CC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for TintedWidgetAccentedView() - 8);
  return sub_1DAE44AB0(a1, v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v6, a2);
}

uint64_t sub_1DAE4825C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for TintedWidgetAccentedView() - 8) + 80);

  return sub_1DAE44B20();
}

uint64_t sub_1DAE482E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for TintedWidgetAccentedView() - 8) + 80);

  return sub_1DAE44B9C();
}

uint64_t objectdestroy_43Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for TintedWidgetAccentedView() - 8);
  v4 = *(*v3 + 64);
  v5 = v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80));

  v6 = *(v5 + 16);

  v7 = *(v5 + 32);

  v8 = *(v5 + 40);

  v9 = *(v5 + 48);

  v10 = *(v5 + 56);

  v11 = *(v5 + 72);

  v12 = *(v5 + 80);

  v13 = *(v5 + 88);

  v14 = *(v5 + 96);

  v15 = *(v5 + 112);

  v16 = *(v5 + 128);

  v17 = *(v5 + 144);

  v18 = *(v5 + 160);

  v19 = *(v5 + 168);

  sub_1DAE48184(*(v5 + 176), *(v5 + 184));
  sub_1DAE48190(*(v5 + 192), *(v5 + 200));
  v20 = v3[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A10, &qword_1DAEDB488);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_1DAECF8EC();
    (*(*(v21 - 8) + 8))(v5 + v20, v21);
  }

  else
  {
    v22 = *(v5 + v20);
  }

  return swift_deallocObject();
}

uint64_t sub_1DAE4851C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for TintedWidgetAccentedView() - 8) + 80);

  return sub_1DAE44C14();
}

uint64_t sub_1DAE485B8(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1DAE4A0F8(a1, a2);

  return v6;
}

void sub_1DAE48610()
{
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchViewModel);
    v3 = [*(Strong + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchScene) cornerPosition];
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        v4 = 0;
        v5 = 2;
        goto LABEL_12;
      }

      if (v3 == 4)
      {
        v4 = 0;
        v5 = 3;
        goto LABEL_12;
      }
    }

    else
    {
      if (v3 == 1)
      {
        v5 = 0;
        v4 = 0;
        goto LABEL_12;
      }

      if (v3 == 2)
      {
        v4 = 0;
        v5 = 1;
LABEL_12:
        v6 = v2 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerPosition;
        v7 = swift_beginAccess();
        *v6 = v5;
        *(v6 + 8) = v4;
        sub_1DAEAFEE0(v7);

        return;
      }
    }

    v5 = 0;
    v4 = 1;
    goto LABEL_12;
  }
}

void sub_1DAE48728()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088F8, &qword_1DAEDE860);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v13[-v2];
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchViewModel);
    v7 = [*(Strong + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchScene) curvedLabelMetrics];
    if (v7)
    {
      v8 = v7;
      CHSWatchComplicationsCurvedLabelMetrics.complicationCurvedTextConfiguration.getter();

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = sub_1DAECEC2C();
    (*(*(v10 - 8) + 56))(v3, v9, 1, v10);
    v11 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_curvedTextConfiguration;
    swift_beginAccess();
    sub_1DAE4AC34(v3, v6 + v11);
    v12 = swift_endAccess();
    sub_1DAEAFEE0(v12);
    sub_1DAE4ACA4(v3);
  }
}

uint64_t sub_1DAE488A0()
{
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchViewModel);
    v2 = *(result + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchScene);
    v3 = result;

    [v2 bezelContentCenter];
    v5 = v4;
    v7 = v6;
    v8 = v1 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_bezelContentCenter;
    v9 = swift_beginAccess();
    *v8 = v5;
    *(v8 + 8) = v7;
    *(v8 + 16) = 0;
    sub_1DAEAFEE0(v9);
  }

  return result;
}

void sub_1DAE48974()
{
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(Strong + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchScene) includeAccessoryViews];
    v1[OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__useWatchContentView] = v2;
    sub_1DAE4945C();
  }
}

void sub_1DAE489F0()
{
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1DAE48C94();
  }
}

id sub_1DAE48A48()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {

    return [result setCurvedTextAngularWidth_];
  }

  return result;
}

void sub_1DAE48AAC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

void sub_1DAE48AF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1DAE48C94();
  }
}

void sub_1DAE48B4C()
{
  sub_1DAE0DC6C();
  v1 = OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__sceneSettingsDiffInspector;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__sceneSettingsDiffInspector))
  {
    [*(v0 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_scene) _unregisterSettingsDiffActionArrayForKey_];
    v2 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

uint64_t sub_1DAE48C94()
{
  v1 = sub_1DAED09DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAED0A3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = BSDispatchQueueAssertMain();
  if ((*(v0 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__snapshotMetadataDirty) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__snapshotMetadataDirty) = 1;
    sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
    v16 = v6;
    v15 = sub_1DAED20EC();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1DAE4AE64;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    aBlock[3] = &block_descriptor_85;
    v13 = _Block_copy(aBlock);

    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1DAE4AD2C(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
    sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
    sub_1DAED23CC();
    v14 = v15;
    MEMORY[0x1E127DD70](0, v10, v5, v13);
    _Block_release(v13);

    (*(v2 + 8))(v5, v1);
    return (*(v7 + 8))(v10, v16);
  }

  return result;
}

void sub_1DAE48FA8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1DAE48FFC();
  }
}

void sub_1DAE48FFC()
{
  BSDispatchQueueAssertMain();
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__snapshotMetadataDirty) != 1)
  {
    return;
  }

  *(v0 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__snapshotMetadataDirty) = 0;
  if (![*(v0 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchScene) generateSnapshotMetadata])
  {
    return;
  }

  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchViewModel);
  v2 = OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__snapshotMetadata;
  v3 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__snapshotMetadata);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel__snapshotMetadata);
  }

  else
  {
    v5 = v0;
    v6 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchViewModel);
    v7 = sub_1DADFF0CC();
    v0 = v5;
    v8 = *(v1 + v2);
    *(v1 + v2) = v7;
    v4 = v7;
  }

  v9 = OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__lastSnapshotMetadata;
  v10 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__lastSnapshotMetadata);
  if (!v10)
  {
    v15 = v3;
    v16 = v4;
    v17 = 0;
LABEL_13:
    *(v0 + v9) = v4;

    v18 = [objc_allocWithZone(MEMORY[0x1E69944F8]) initWithMetadata:v4 completion:0];
    v19 = [*(v0 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_scene) _FBSScene];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DAED64D0;
    *(inited + 32) = v18;
    v21 = v18;
    sub_1DAE89C08(inited);
    swift_setDeallocating();
    v22 = *(inited + 16);
    swift_arrayDestroy();
    sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
    sub_1DAE4ADFC();
    v23 = sub_1DAED1F5C();

    [v19 sendActions_];

    return;
  }

  v11 = v0;
  sub_1DAD674D4(0, &qword_1ECC08918, 0x1E6994520);
  v12 = v3;
  v24 = v4;
  v13 = v10;
  v14 = sub_1DAED228C();

  if ((v14 & 1) == 0)
  {
    v0 = v11;
    v17 = *(v11 + v9);
    goto LABEL_13;
  }
}

uint64_t sub_1DAE49274(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1DAE48FFC();
  }

  return a2();
}

void sub_1DAE4945C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09AE8, &qword_1DAEDFB80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v22[-2] - v4);
  v6 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__useWatchContentView) == 1)
  {
    v7 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchViewModel);
    v8 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__rootViewModel);

    sub_1DAE497FC(v6, v22);
    type metadata accessor for _RootContentViewModel();
    sub_1DAE4AD2C(&qword_1EE006B90, type metadata accessor for _RootContentViewModel);
    *&v21 = sub_1DAECF21C();
    *(&v21 + 1) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09B00, &qword_1DAEDB698);
    sub_1DAD64B94(&qword_1ECC09B08, &qword_1ECC09B00, &qword_1DAEDB698);
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__rootViewModel);
    v11 = v5 + *(v3 + 36);
    v23 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09AF0, &unk_1DAED7740);
    sub_1DAED076C();
    *(v11 + 1) = v21;
    v23 = 0;
    sub_1DAED076C();
    *(v11 + 2) = v21;
    v11[48] = 0;
    *(v11 + 7) = 0;
    v12 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
    v13 = *(type metadata accessor for LiveWidgetEntryView() + 36);
    v14 = sub_1DAECEDEC();
    (*(*(v14 - 8) + 16))(&v11[v13], v6 + v12, v14);
    type metadata accessor for LiveWidgetEntryViewModel(0);
    sub_1DAE4AD2C(&qword_1EE009E48, type metadata accessor for LiveWidgetEntryViewModel);
    *v11 = sub_1DAECF21C();
    *(v11 + 1) = v15;
    type metadata accessor for _RootContentViewModel();
    sub_1DAE4AD2C(&qword_1EE006B90, type metadata accessor for _RootContentViewModel);
    *v5 = sub_1DAECF21C();
    v5[1] = v16;
    sub_1DAD64B94(qword_1EE0078A8, &qword_1ECC09AE8, &qword_1DAEDFB80);
  }

  v17 = sub_1DAED087C();
  v18 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v19 = *(v0 + v18);
  v23 = v17;
  v20 = v19;

  sub_1DAECFABC();
}

uint64_t sub_1DAE497FC@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for WatchComplicationsWidgetViewModel(0);
  sub_1DAE4AD2C(&qword_1ECC09B10, type metadata accessor for WatchComplicationsWidgetViewModel);

  v4 = sub_1DAECF21C();
  v6 = v5;
  type metadata accessor for LiveWidgetEntryViewModel(0);
  sub_1DAE4AD2C(&qword_1EE009E48, type metadata accessor for LiveWidgetEntryViewModel);

  v7 = sub_1DAECF21C();
  v9 = v8;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  *a2 = v4;
  a2[1] = v6;
  a2[2] = sub_1DAE4AD74;
  a2[3] = a1;
  a2[4] = v7;
  a2[5] = v9;
  a2[6] = sub_1DAE4AD7C;
  a2[7] = v10;
  a2[8] = sub_1DAE4AD84;
  a2[9] = v11;
  return result;
}

uint64_t sub_1DAE4999C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09AF0, &unk_1DAED7740);
  sub_1DAED076C();
  *(a2 + 16) = v9;
  sub_1DAED076C();
  *(a2 + 32) = v9;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
  v5 = *(type metadata accessor for LiveWidgetEntryView() + 36);
  v6 = sub_1DAECEDEC();
  (*(*(v6 - 8) + 16))(a2 + v5, a1 + v4, v6);
  type metadata accessor for LiveWidgetEntryViewModel(0);
  sub_1DAE4AD2C(&qword_1EE009E48, type metadata accessor for LiveWidgetEntryViewModel);

  result = sub_1DAECF21C();
  *a2 = result;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_1DAE49AD8(uint64_t a1)
{
  v2 = sub_1DAECEBAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = [*(result + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_scene) _FBSScene];
    (*(v3 + 16))(&aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v9 = swift_allocObject();
    (*(v3 + 32))(v9 + v8, &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1DAE4AD8C;
    *(v10 + 24) = v9;
    aBlock[4] = sub_1DAD93F90;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAE48AAC;
    aBlock[3] = &block_descriptor_81;
    v11 = _Block_copy(aBlock);

    [v7 updateClientSettingsWithBlock_];

    _Block_release(v11);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1DAE49D4C(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v7 = a1;
    sub_1DAECEB9C();
    v5 = v4;
    sub_1DAECEB9C();
    [v3 setCurvedTextAngularWidth_];
  }
}

void sub_1DAE49E00(__int128 *a1)
{
  v9 = *a1;
  v10 = a1[1];
  v1 = *(a1 + 32);
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong;
    if (v1 == 255)
    {
      v5 = 0;
    }

    else
    {
      v5 = sub_1DAED01EC();
    }

    v6 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape;
    swift_beginAccess();
    v7 = *&v3[v6];
    *&v3[v6] = v5;
    v8 = v5;
    sub_1DAECCA24(v7);
  }
}

uint64_t sub_1DAE49EE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchViewModel);

  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__subscriptions);
}

id sub_1DAE49F64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchComplicationsWidgetSceneContentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WatchComplicationsWidgetSceneContentViewController()
{
  result = qword_1ECC09AB8;
  if (!qword_1ECC09AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE4A0F8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088F8, &qword_1DAEDE860);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v81[-v8];
  v10 = sub_1DAECDD3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v81[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__sceneSettingsDiffInspector;
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__sceneSettingsDiffInspector) = 0;
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__lastSnapshotMetadata) = 0;
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__snapshotMetadataDirty) = 1;
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__useWatchContentView) = 0;
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__subscriptions) = MEMORY[0x1E69E7CD0];
  objc_opt_self();
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchScene) = swift_dynamicCastObjCClassUnconditional();
  v16 = a1;

  v17 = [v16 metrics];
  v18 = type metadata accessor for WatchComplicationsLiveWidgetViewModel();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchViewModel) = WatchComplicationsLiveWidgetViewModel.init(widgetViewModel:metrics:)(a2, v17);
  aBlock = 0;
  v83 = 0xE000000000000000;
  sub_1DAED256C();
  MEMORY[0x1E127DA50](0xD000000000000033, 0x80000001DAEE38F0);
  sub_1DAECDD2C();
  sub_1DAE4AD2C(&unk_1ECC09AD0, MEMORY[0x1E69695A8]);
  v21 = sub_1DAED287C();
  MEMORY[0x1E127DA50](v21);

  (*(v11 + 8))(v14, v10);
  MEMORY[0x1E127DA50](41, 0xE100000000000000);
  v22 = sub_1DAED1CBC();

  *(v3 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__uniqueSceneDiffActionKey) = v22;
  v23 = [objc_allocWithZone(MEMORY[0x1E6994518]) init];
  v24 = *(v3 + v15);
  *(v3 + v15) = v23;

  v25 = v16;

  v26 = sub_1DADA38A8(v25, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1DAED64D0;
  *(v27 + 32) = v26;
  v28 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09AE0, &unk_1DAED67B0);
  v29 = sub_1DAED1E6C();

  [v25 _registerSettingsDiffActionArray_forKey_];

  v30 = OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__sceneSettingsDiffInspector;
  v31 = *&v28[OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__sceneSettingsDiffInspector];
  if (v31)
  {
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v86 = sub_1DAE4AC24;
    v87 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v83 = 1107296256;
    v84 = sub_1DAD69AE8;
    v85 = &block_descriptor_12;
    v33 = _Block_copy(&aBlock);
    v34 = v31;

    [v34 observeCornerPositionWithBlock_];
    _Block_release(v33);
  }

  v35 = OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchViewModel;
  v36 = *&v28[OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchViewModel];
  v37 = OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchScene;
  v38 = [*&v28[OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__watchScene] cornerPosition];
  if (v38 > 2)
  {
    if (v38 != 3)
    {
      if (v38 == 4)
      {
        v39 = 0;
        v40 = 3;
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    v39 = 0;
    v40 = 2;
  }

  else
  {
    if (v38 != 1)
    {
      if (v38 == 2)
      {
        v39 = 0;
        v40 = 1;
        goto LABEL_13;
      }

LABEL_10:
      v40 = 0;
      v39 = 1;
      goto LABEL_13;
    }

    v40 = 0;
    v39 = 0;
  }

LABEL_13:
  v41 = v36 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_cornerPosition;
  v42 = swift_beginAccess();
  *v41 = v40;
  *(v41 + 8) = v39;
  sub_1DAEAFEE0(v42);
  v43 = *&v28[v30];
  if (v43)
  {
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v86 = sub_1DAE4AC2C;
    v87 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v83 = 1107296256;
    v84 = sub_1DAD69AE8;
    v85 = &block_descriptor_54_1;
    v45 = _Block_copy(&aBlock);
    v46 = v43;

    [v46 observeCurvedLabelMetricsWithBlock_];
    _Block_release(v45);
  }

  v47 = *&v28[v35];
  v48 = *&v28[v37];

  v49 = [v48 curvedLabelMetrics];
  if (v49)
  {
    v50 = v49;
    CHSWatchComplicationsCurvedLabelMetrics.complicationCurvedTextConfiguration.getter();

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = sub_1DAECEC2C();
  (*(*(v52 - 8) + 56))(v9, v51, 1, v52);
  v53 = OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_curvedTextConfiguration;
  swift_beginAccess();
  sub_1DAE4AC34(v9, v47 + v53);
  v54 = swift_endAccess();
  sub_1DAEAFEE0(v54);

  sub_1DAE4ACA4(v9);
  v55 = *&v28[v30];
  if (v55)
  {
    v56 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v86 = sub_1DAE4AD0C;
    v87 = v56;
    aBlock = MEMORY[0x1E69E9820];
    v83 = 1107296256;
    v84 = sub_1DAD69AE8;
    v85 = &block_descriptor_58;
    v57 = _Block_copy(&aBlock);
    v58 = v55;

    [v58 observeBezelContentCenterWithBlock_];
    _Block_release(v57);
  }

  v59 = *&v28[v35];
  v60 = *&v28[v37];

  [v60 bezelContentCenter];
  v62 = v61;
  v64 = v63;
  v65 = v59 + OBJC_IVAR____TtC14WidgetRenderer33WatchComplicationsWidgetViewModel_bezelContentCenter;
  v66 = swift_beginAccess();
  *v65 = v62;
  *(v65 + 8) = v64;
  *(v65 + 16) = 0;
  sub_1DAEAFEE0(v66);

  v67 = *&v28[v30];
  if (v67)
  {
    v68 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v86 = sub_1DAE4AD14;
    v87 = v68;
    aBlock = MEMORY[0x1E69E9820];
    v83 = 1107296256;
    v84 = sub_1DAD69AE8;
    v85 = &block_descriptor_62;
    v69 = _Block_copy(&aBlock);
    v70 = v67;

    [v70 observeIncludeAccessoryViewsWithBlock_];
    _Block_release(v69);
  }

  v71 = [*&v28[v37] includeAccessoryViews];
  v28[OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__useWatchContentView] = v71;
  v72 = *&v28[v30];
  if (v72)
  {
    v73 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v86 = sub_1DAE4AD1C;
    v87 = v73;
    aBlock = MEMORY[0x1E69E9820];
    v83 = 1107296256;
    v84 = sub_1DAD69AE8;
    v85 = &block_descriptor_66;
    v74 = _Block_copy(&aBlock);
    v75 = v72;

    [v75 observeGenerateSnapshotMetadataWithBlock_];
    _Block_release(v74);
  }

  v76 = *&v28[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_scene];
  v77 = v28;
  v78 = [v76 _FBSScene];
  v86 = sub_1DAE48A48;
  v87 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v83 = 1107296256;
  v84 = sub_1DAE48AAC;
  v85 = &block_descriptor_69;
  v79 = _Block_copy(&aBlock);

  [v78 updateClientSettingsWithBlock_];

  _Block_release(v79);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    aBlock = *(*&v28[v35] + OBJC_IVAR____TtC14WidgetRenderer37WatchComplicationsLiveWidgetViewModel_snapshotMetadataPublisher);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1DAECEEDC();
    sub_1DAECF00C();

    swift_beginAccess();
    sub_1DAECEE0C();
    swift_endAccess();

    sub_1DAE48FFC();
    sub_1DAE4945C();
    return v77;
  }

  return result;
}

uint64_t sub_1DAE4AC34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088F8, &qword_1DAEDE860);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE4ACA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088F8, &qword_1DAEDE860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAE4AD2C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DAE4AD8C(void *a1)
{
  v2 = *(*(sub_1DAECEBAC() - 8) + 80);

  sub_1DAE49D4C(a1);
}

unint64_t sub_1DAE4ADFC()
{
  result = qword_1EE00A870;
  if (!qword_1EE00A870)
  {
    sub_1DAD674D4(255, &unk_1EE00A880, 0x1E698E5F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00A870);
  }

  return result;
}

void sub_1DAE4AE78(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v18 = v9;
      v10 = a3;
      v9 = v18;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *(v4 + OBJC_IVAR____TtC14WidgetRenderer50WatchComplicationsWidgetSceneContentViewController__sceneSettingsDiffInspector);
  if (v11)
  {
    v12 = a2 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v19 = v9;
    if (!a1)
    {
      __break(1u);
      return;
    }

    v13 = v11;
    v14 = a2;
    v15 = [a1 settings];
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = [objc_allocWithZone(MEMORY[0x1E6994510]) initWithPreviousSettings:v19 currentSettings:v16 transitionContext:a4];
      [v13 inspectDiff:v14 withContext:v17];

      v13 = v15;
      v14 = v17;
    }

    else
    {
      v17 = v19;
      v19 = v15;
    }

    v9 = v19;
  }
}

uint64_t sub_1DAE4B018()
{
  v1 = v0;
  v2 = sub_1DAECE85C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != *MEMORY[0x1E6989BA0])
  {
    if (v7 == *MEMORY[0x1E6989BB8])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08C70, qword_1DAED7AD8);
      v8 = sub_1DAED182C();
      v9 = *(v8 - 8);
      v15 = *(v9 + 72);
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v12 = swift_allocObject();
      v13 = v12;
      *(v12 + 16) = xmmword_1DAED6200;
      v14 = 2;
      goto LABEL_5;
    }

    if (v7 == *MEMORY[0x1E6989B98])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08C70, qword_1DAED7AD8);
      v17 = sub_1DAED182C();
      v18 = *(v17 - 8);
      v19 = *(v18 + 72);
      v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1DAED64C0;
      v21 = (v13 + v20);
      *v21 = 1;
      v22 = *MEMORY[0x1E6985910];
      v23 = *(v18 + 104);
      v23(v21, v22, v17);
      v21[v19] = 2;
      v23(&v21[v19], v22, v17);
      return v13;
    }

    if (v7 == *MEMORY[0x1E6989BA8])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08C70, qword_1DAED7AD8);
      v8 = sub_1DAED182C();
      v9 = *(v8 - 8);
      v24 = *(v9 + 72);
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v12 = swift_allocObject();
      v13 = v12;
      *(v12 + 16) = xmmword_1DAED6200;
      v14 = 3;
      goto LABEL_5;
    }

    if (v7 == *MEMORY[0x1E6989BB0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08C70, qword_1DAED7AD8);
      v8 = sub_1DAED182C();
      v9 = *(v8 - 8);
      v25 = *(v9 + 72);
      v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v12 = swift_allocObject();
      v13 = v12;
      *(v12 + 16) = xmmword_1DAED6200;
      *(v12 + v11) = 0;
      goto LABEL_6;
    }

    (*(v3 + 8))(v6, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08C70, qword_1DAED7AD8);
  v8 = sub_1DAED182C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v13 = v12;
  *(v12 + 16) = xmmword_1DAED6200;
  v14 = 1;
LABEL_5:
  *(v12 + v11) = v14;
LABEL_6:
  (*(v9 + 104))(v12 + v11, *MEMORY[0x1E6985910], v8);
  return v13;
}

uint64_t InProcessJindoActivityInstanceView.init(instance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = swift_getKeyPath();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  return result;
}

uint64_t InProcessJindoActivityInstanceView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1DAE4B5D8(*v1, *(v1 + 8), *(v1 + 16), a1);
  v3 = sub_1DAE4C194();
  v4 = sub_1DAED004C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09B18, &qword_1DAEDB6D0);
  v6 = a1 + *(result + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

uint64_t sub_1DAE4B5D8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a2;
  v61 = a1;
  v66 = a4;
  v54 = sub_1DAECDD3C();
  v52 = *(v54 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1DAED182C();
  v55 = *(v56 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for _InProcessActivityInstanceView();
  v9 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v50 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09B70, &qword_1DAEDB808);
  v14 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v50 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09B50, &qword_1DAEDB7F8);
  v16 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v59 = (&v50 - v17);
  v18 = sub_1DAECE85C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  swift_getKeyPath();
  v26 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance___observationRegistrar;
  v72 = a3;
  v27 = sub_1DAE4C68C(&qword_1ECC08C40, type metadata accessor for InProcessJindoActivityInstance);

  v57 = v27;
  v58 = v26;
  sub_1DAECDEFC();

  v28 = OBJC_IVAR____TtC14WidgetRenderer30InProcessJindoActivityInstance__jindoState;
  swift_beginAccess();
  v29 = *(v19 + 16);
  v67 = a3;
  v29(v25, a3 + v28, v18);
  (*(v19 + 104))(v22, *MEMORY[0x1E6989B98], v18);
  LOBYTE(v26) = sub_1DAECE84C();
  v30 = *(v19 + 8);
  v30(v22, v18);
  v30(v25, v18);
  if (v26)
  {
    v31 = v67;

    v32 = sub_1DAECF8FC();
    v33 = v59;
    *v59 = v32;
    *(v33 + 8) = 0;
    *(v33 + 16) = 1;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09B78, &qword_1DAEDB868);
    sub_1DAE4BD64(v31, v33 + *(v34 + 44));
    sub_1DAE4C794(v33, v64);
    swift_storeEnumTagMultiPayload();
    sub_1DAD64B94(&qword_1ECC09B48, &qword_1ECC09B50, &qword_1DAEDB7F8);
    sub_1DAE4C68C(&qword_1ECC09B58, type metadata accessor for _InProcessActivityInstanceView);
    sub_1DAECFB1C();
    return sub_1DAE4C804(v33);
  }

  else
  {
    v61 = v13;
    swift_getKeyPath();
    v36 = v67;
    *&v70 = v67;
    sub_1DAECDEFC();

    v29(v25, v36 + v28, v18);
    v37 = sub_1DAE4B018();
    v30(v25, v18);
    if (*(v37 + 16))
    {
      v38 = v55;
      v39 = v53;
      v40 = v56;
      (*(v55 + 16))(v53, v37 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), v56);

      v41 = v51;
      sub_1DAECDD2C();
      v42 = sub_1DAECDCFC();
      v44 = v43;
      (*(v52 + 8))(v41, v54);
      v68 = v42;
      v69 = v44;
      sub_1DAED076C();
      v45 = v71;
      v46 = v50;
      *(v50 + 2) = v70;
      *(v46 + 48) = v45;
      v47 = v65;
      v48 = v67;
      *(v46 + *(v65 + 28)) = v67;
      *v46 = swift_getKeyPath();
      *(v46 + 8) = 0;
      *(v46 + 16) = 0;
      *(v46 + 24) = v48;
      (*(v38 + 32))(v46 + *(v47 + 24), v39, v40);
      v49 = v61;
      sub_1DADF714C(v46, v61);
      sub_1DAE4C6D4(v49, v64);
      swift_storeEnumTagMultiPayload();
      sub_1DAD64B94(&qword_1ECC09B48, &qword_1ECC09B50, &qword_1DAEDB7F8);
      sub_1DAE4C68C(&qword_1ECC09B58, type metadata accessor for _InProcessActivityInstanceView);

      sub_1DAECFB1C();
      return sub_1DAE4C738(v49);
    }

    else
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DAE4BD64@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_1DAECDD3C();
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _InProcessActivityInstanceView();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  v20 = *(v9 + 32);
  *(&v42 + v20 - v18) = 1;
  v46 = *MEMORY[0x1E6985910];
  v21 = v46;
  v22 = sub_1DAED182C();
  v23 = *(v22 - 8);
  v45 = *(v23 + 104);
  v47 = v23 + 104;
  v45(&v19[v20], v21, v22);
  swift_retain_n();
  sub_1DAECDD2C();
  v24 = sub_1DAECDCFC();
  v26 = v25;
  v27 = *(v52 + 8);
  v52 += 8;
  v27(v7, v51);
  *&v55 = v24;
  *(&v55 + 1) = v26;
  sub_1DAED076C();
  v28 = v58;
  *(v19 + 2) = v57;
  *(v19 + 6) = v28;
  *&v19[*(v9 + 36)] = a1;
  *v19 = swift_getKeyPath();
  *(v19 + 1) = 0;
  v19[16] = 0;
  *(v19 + 3) = a1;

  sub_1DAED091C();
  sub_1DAECF15C();
  v29 = v57;
  v44 = v58;
  v43 = v60;
  v42 = v61;
  v64 = 1;
  v63 = BYTE8(v57);
  v62 = v59;
  v30 = *(v9 + 32);
  v16[v30] = 2;
  v45(&v16[v30], v46, v22);
  sub_1DAECDD2C();
  v31 = sub_1DAECDCFC();
  v33 = v32;
  v27(v7, v51);
  v53 = v31;
  v54 = v33;
  sub_1DAED076C();
  v34 = v56;
  *(v16 + 2) = v55;
  *(v16 + 6) = v34;
  *&v16[*(v9 + 36)] = a1;
  *v16 = swift_getKeyPath();
  *(v16 + 1) = 0;
  v16[16] = 0;
  *(v16 + 3) = a1;
  v35 = v48;
  sub_1DAE4C6D4(v19, v48);
  LOBYTE(v7) = v64;
  LOBYTE(v31) = v63;
  LOBYTE(v33) = v62;
  v36 = v49;
  sub_1DAE4C6D4(v16, v49);
  v37 = v50;
  sub_1DAE4C6D4(v35, v50);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09B80, &qword_1DAEDB870);
  v39 = v37 + *(v38 + 48);
  *v39 = 0;
  *(v39 + 8) = v7;
  *(v39 + 16) = v29;
  *(v39 + 24) = v31;
  *(v39 + 32) = v44;
  *(v39 + 40) = v33;
  v40 = v42;
  *(v39 + 48) = v43;
  *(v39 + 56) = v40;
  sub_1DAE4C6D4(v36, v37 + *(v38 + 64));

  sub_1DAE4C738(v16);
  sub_1DAE4C738(v19);
  sub_1DAE4C738(v36);
  return sub_1DAE4C738(v35);
}

uint64_t sub_1DAE4C194()
{
  v1 = sub_1DAECF8EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1DAED202C();
    v8 = sub_1DAED001C();
    sub_1DAECECEC();

    sub_1DAECF8DC();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v5, v1);
    v6 = v11;
  }

  if (!v6)
  {
    v11 = sub_1DAED063C();
    return sub_1DAECF16C();
  }

  return v6;
}

uint64_t sub_1DAE4C300@<X0>(uint64_t a1@<X8>)
{
  sub_1DAE4B5D8(*v1, *(v1 + 8), *(v1 + 16), a1);
  v3 = sub_1DAE4C194();
  v4 = sub_1DAED004C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09B18, &qword_1DAEDB6D0);
  v6 = a1 + *(result + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DAE4C3CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAE4C414(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1DAE4C464()
{
  result = qword_1ECC09B20;
  if (!qword_1ECC09B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09B18, &qword_1DAEDB6D0);
    sub_1DAE4C51C();
    sub_1DAD64B94(&qword_1ECC09B60, &qword_1ECC09B68, &qword_1DAEDB800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09B20);
  }

  return result;
}

unint64_t sub_1DAE4C51C()
{
  result = qword_1ECC09B28;
  if (!qword_1ECC09B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09B30, &qword_1DAEDB7E8);
    sub_1DAE4C5A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09B28);
  }

  return result;
}

unint64_t sub_1DAE4C5A0()
{
  result = qword_1ECC09B38;
  if (!qword_1ECC09B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09B40, &qword_1DAEDB7F0);
    sub_1DAD64B94(&qword_1ECC09B48, &qword_1ECC09B50, &qword_1DAEDB7F8);
    sub_1DAE4C68C(&qword_1ECC09B58, type metadata accessor for _InProcessActivityInstanceView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09B38);
  }

  return result;
}

uint64_t sub_1DAE4C68C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAE4C6D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _InProcessActivityInstanceView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE4C738(uint64_t a1)
{
  v2 = type metadata accessor for _InProcessActivityInstanceView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAE4C794(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09B50, &qword_1DAEDB7F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE4C804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09B50, &qword_1DAEDB7F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WidgetActivityInstanceContentConfiguration.preferredColorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WidgetActivityInstanceContentConfiguration() + 24);

  return sub_1DAD69C4C(v3, a1);
}

uint64_t type metadata accessor for WidgetActivityInstanceContentConfiguration()
{
  result = qword_1ECC09B88;
  if (!qword_1ECC09B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WidgetActivityInstanceContentConfiguration.preferredColorScheme.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WidgetActivityInstanceContentConfiguration() + 24);

  return sub_1DAD69CBC(a1, v3);
}

uint64_t WidgetActivityInstanceContentConfiguration.inheritedColorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WidgetActivityInstanceContentConfiguration() + 28);

  return sub_1DAD69C4C(v3, a1);
}

uint64_t WidgetActivityInstanceContentConfiguration.inheritedColorScheme.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for WidgetActivityInstanceContentConfiguration() + 28);

  return sub_1DAD69CBC(a1, v3);
}

uint64_t WidgetActivityInstanceContentConfiguration.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for WidgetActivityInstanceContentConfiguration();
  v3 = *(v2 + 24);
  v4 = sub_1DAECF0AC();
  v7 = *(*(v4 - 8) + 56);
  (v7)((v4 - 8), &a1[v3], 1, 1, v4);
  v5 = &a1[*(v2 + 28)];

  return v7(v5, 1, 1, v4);
}

void sub_1DAE4CBA0()
{
  sub_1DAD69A3C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1DAE4CC1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_1DADBD36C();
  os_unfair_lock_unlock(v1 + 4);

  if (qword_1EE00AC70 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE011BA0);
  v3 = sub_1DAECEDCC();
  v4 = sub_1DAED203C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DAD61000, v3, v4, "Application suspending", v5, 2u);
    MEMORY[0x1E127F100](v5, -1, -1);
  }

  return sub_1DAD66680();
}

id sub_1DAE4CDD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataProtectionSuspensionMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *LayerSnapshotter.__allocating_init(renderBoxFormat:coreAnimationFormat:logger:screenshotManager:dataProtectionMonitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v48 = a4;
  v49 = a5;
  v8 = sub_1DAECEDEC();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v15 = type metadata accessor for RBImageSnapshotter(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RBLayer.SnapshotFormat(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  sub_1DAD932D0(a1, v22, type metadata accessor for RBLayer.SnapshotFormat);
  sub_1DAD933A0(v22, v18, type metadata accessor for RBImageSnapshotter.RBImageOptions);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08148, &unk_1DAEDB950);
  v23 = swift_allocObject();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08150, &unk_1DAED6460);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  sub_1DAD933A0(v18, v27 + *(*v27 + 128), type metadata accessor for RBImageSnapshotter);
  *(v23 + 16) = v27;
  v46 = a2;
  v43 = sub_1DAD93568();
  v28 = v9[2];
  v45 = a3;
  v28(v14, a3, v8);
  sub_1DAD648F8(v49, v50);
  if (qword_1EE00B1D0 != -1)
  {
    swift_once();
  }

  v29 = qword_1EE011BC8;
  v30 = type metadata accessor for LayerSnapshotter(0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  *(v33 + 5) = MEMORY[0x1E69E7CD0];
  type metadata accessor for UnfairLock();
  v34 = swift_allocObject();
  v35 = v29;
  v36 = swift_slowAlloc();
  *v36 = 0;
  *(v34 + 16) = v36;
  *(v33 + 6) = v34;
  v37 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08158, &unk_1DAEDB960);
  v38 = swift_allocObject();
  *(v38 + 16) = v23;
  *(v37 + 16) = v38;
  *(v33 + 3) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08160, &unk_1DAED6470);
  v39 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08168, &unk_1DAEDB970);
  v40 = swift_allocObject();
  *(v40 + 16) = v43;
  *(v39 + 16) = v40;
  *(v33 + 2) = v39;
  v28(&v33[OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_logger], v14, v8);
  v28(v44, v14, v8);
  sub_1DAECED4C();
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  v41 = v9[1];
  v41(v45, v8);
  sub_1DAE4D868(v46, type metadata accessor for CALayer.SnapshotFormat);
  sub_1DAE4D868(v47, type metadata accessor for RBLayer.SnapshotFormat);
  v41(v14, v8);
  *(v33 + 4) = v48;
  sub_1DADD7B84(v50, &v33[OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_dataProtectionMonitor]);
  *(v33 + 7) = v35;
  return v33;
}

uint64_t static RBImageSnapshotter.RBImageOptions.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE00B170 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE00B178);
  swift_beginAccess();
  return sub_1DAD932D0(v3, a1, type metadata accessor for RBImageSnapshotter.RBImageOptions);
}

uint64_t static RBImageSnapshotter.RBImageOptions.default.setter(uint64_t a1)
{
  if (qword_1EE00B170 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE00B178);
  swift_beginAccess();
  sub_1DAE4D8C8(a1, v3);
  swift_endAccess();
  return sub_1DAE4D868(a1, type metadata accessor for RBImageSnapshotter.RBImageOptions);
}

uint64_t (*static RBImageSnapshotter.RBImageOptions.default.modify())()
{
  if (qword_1EE00B170 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  __swift_project_value_buffer(v0, qword_1EE00B178);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1DAE4D508()
{
  v0 = sub_1DAECDFCC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
  __swift_allocate_value_buffer(v5, qword_1ECC09BD8);
  v6 = __swift_project_value_buffer(v5, qword_1ECC09BD8);
  *v4 = 0x3FE999999999999ALL;
  (*(v1 + 104))(v4, *MEMORY[0x1E6993F68], v0);
  v7 = sub_1DADDC83C(MEMORY[0x1E69E7CC0]);
  *v6 = 1;
  result = (*(v1 + 32))(&v6[*(v5 + 20)], v4, v0);
  *&v6[*(v5 + 24)] = v7;
  return result;
}

uint64_t static CAMLSnapshotter.CAMLOptions.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC07A28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
  v3 = __swift_project_value_buffer(v2, qword_1ECC09BD8);
  return sub_1DAD932D0(v3, a1, type metadata accessor for CAMLSnapshotter.CAMLOptions);
}

uint64_t static RBLayer.SnapshotFormat.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE00A940 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RBLayer.SnapshotFormat(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE00A948);
  return sub_1DAD932D0(v3, a1, type metadata accessor for RBLayer.SnapshotFormat);
}

uint64_t sub_1DAE4D754()
{
  v0 = type metadata accessor for CALayer.SnapshotFormat(0);
  __swift_allocate_value_buffer(v0, qword_1ECC09BF0);
  v1 = __swift_project_value_buffer(v0, qword_1ECC09BF0);
  v2 = type metadata accessor for CAMLSnapshotter.CAMLOptions(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static CALayer.SnapshotFormat.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC07A38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CALayer.SnapshotFormat(0);
  v3 = __swift_project_value_buffer(v2, qword_1ECC09BF0);
  return sub_1DAD932D0(v3, a1, type metadata accessor for CALayer.SnapshotFormat);
}

uint64_t sub_1DAE4D868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAE4D8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1DAE4D92C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

id sub_1DAE4D984()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void sub_1DAE4D9C8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_1DAE4DB00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  v8 = a3(0);
  return (*(*(v8 - 8) + 16))(a4, v6 + v7, v8);
}

uint64_t sub_1DAE4DB90(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6)
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  (*(v10 + 16))(&v17 - v12, a1, v9);
  v14 = *a2;
  v15 = *a6;
  swift_beginAccess();
  (*(v10 + 40))(v14 + v15, v13, v9);
  return swift_endAccess();
}

uint64_t sub_1DAE4DCC8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_1DAE4DD74(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = a3(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t sub_1DAE4DE68(uint64_t a1, uint64_t *a2)
{
  sub_1DAD648F8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_dataProtectionMonitor;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + v4));
  sub_1DADD7B84(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1DAE4DED4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_dataProtectionMonitor;
  swift_beginAccess();
  return sub_1DAD648F8(v1 + v3, a1);
}

uint64_t sub_1DAE4DF2C(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_dataProtectionMonitor;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v3));
  sub_1DADD7B84(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t LayerSnapshotter.Result.description.getter()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    v5 = 0;
    sub_1DAED256C();
    MEMORY[0x1E127DA50](0xD000000000000022, 0x80000001DAEE3B60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087B8, &unk_1DAED7200);
    sub_1DAED264C();
LABEL_7:
    MEMORY[0x1E127DA50](41, 0xE100000000000000);
    return v5;
  }

  v2 = *(v0 + 8);
  if (*(v0 + 16) != 1)
  {
    sub_1DAED256C();

    v5 = 0xD000000000000020;
    MEMORY[0x1E127DA50](v1, v2);
    goto LABEL_7;
  }

  result = 0xD00000000000001BLL;
  if (!v1)
  {
    return result;
  }

  v5 = 0;
  v4 = v1;
  sub_1DAED256C();
  MEMORY[0x1E127DA50](0xD000000000000034, 0x80000001DAEE3B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087B8, &unk_1DAED7200);
  sub_1DAED264C();
  MEMORY[0x1E127DA50](41, 0xE100000000000000);
  sub_1DADE62C4(v1, v2, 1u);
  return v5;
}