uint64_t sub_1BFA11E44()
{
  OUTLINED_FUNCTION_43();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *(v2 + 376);
  *v4 = *v1;
  *(v3 + 384) = v0;

  v6 = *(v3 + 208);
  v7 = *(v2 + 216);
  v8 = *(v3 + 224);
  sub_1BF9FC184();
  if (v0)
  {
    v9 = *(v3 + 368);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_2Tm((v3 + 160));
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA11F84()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  if (*(v0[46] + 16))
  {
    v1 = v0[29];
    sub_1BFAAE398();
    v0[49] = v2;
    v3 = swift_task_alloc();
    v0[50] = v3;
    *v3 = v0;
    v3[1] = sub_1BFA120AC;
    v4 = v0[46];
    v5 = v0[32];
    v6 = v0[33];
    v7 = v0[31];
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_112();

    return SiriSuggestionsBaseAPIClient.submitExecutionParams(for:executionParams:)(v8, v9, v10, v11, v12);
  }

  else
  {

    v16 = v0[44];
    v15 = v0[45];
    v18 = v0[40];
    v17 = v0[41];
    v20 = v0[36];
    v19 = v0[37];

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_112();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28);
  }
}

uint64_t sub_1BFA120AC()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 400);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v3[51] = v0;

  if (!v0)
  {
    v9 = v3[49];
    v10 = v3[46];
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BFA121B8()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  v2 = v0[44];
  v1 = v0[45];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[36];
  v5 = v0[37];

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_112();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

void sub_1BFA12248()
{
  OUTLINED_FUNCTION_51();
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 20);
  v1 = v0[48];
  v3 = v0[44];
  v2 = v0[45];
  v5 = v0[40];
  v4 = v0[41];
  v7 = v0[36];
  v6 = v0[37];

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_136();

  __asm { BRAA            X1, X16 }
}

void sub_1BFA122E8()
{
  OUTLINED_FUNCTION_51();
  v1 = v0[49];
  v2 = v0[46];

  v3 = v0[51];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[40];
  v6 = v0[41];
  v9 = v0[36];
  v8 = v0[37];

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_136();

  __asm { BRAA            X1, X16 }
}

SiriSuggestionsAPI::SiriSuggestionsClientPredefinedTypes_optional __swiftcall SiriSuggestionsClientPredefinedTypes.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BFAAFD58();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1BFA12420@<X0>(unint64_t *a1@<X8>)
{
  result = SiriSuggestionsClientPredefinedTypes.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SiriSuggestionsIntentPropertiesTransport.intentProps.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriSuggestionsIntentPropertiesTransport() + 24));
}

uint64_t SiriSuggestionsIntentPropertiesTransport.verb.getter()
{
  v1 = (v0 + *(type metadata accessor for SiriSuggestionsIntentPropertiesTransport() + 28));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriSuggestionsIntentPropertiesTransport.init(intentName:owner:intentProps:verb:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1BFA17BBC(a1, a6, &qword_1EBDFB580, &qword_1BFAB09D8);
  v11 = type metadata accessor for SiriSuggestionsIntentPropertiesTransport();
  result = sub_1BF9FA474(a2, a6 + v11[5]);
  *(a6 + v11[6]) = a3;
  v13 = (a6 + v11[7]);
  *v13 = a4;
  v13[1] = a5;
  return result;
}

uint64_t SiriSuggestionsIntentPropertiesTransport.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB580, &qword_1BFAB09D8);
  OUTLINED_FUNCTION_60_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB588, &unk_1BFAB09E0);
  OUTLINED_FUNCTION_22();
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_107();
  v20 = a1[3];
  v19 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1BFA15584();
  sub_1BFAAFFF8();
  if (!v2)
  {
    v21 = v36;
    sub_1BFAAEC28();
    LOBYTE(v40[0]) = 0;
    OUTLINED_FUNCTION_52();
    sub_1BFAAEE18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB590, &qword_1BFAB2640);
    LOBYTE(v38) = 1;
    OUTLINED_FUNCTION_52();
    sub_1BFAAEE58();
    v22 = v14;
    v23 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB598, &qword_1BFAB09F0);
    LOBYTE(v38) = 2;
    OUTLINED_FUNCTION_52();
    v24 = sub_1BFAAEE38();
    v41 = 3;
    OUTLINED_FUNCTION_52();
    sub_1BFAAEE18();
    v34 = v39;
    v35 = v38;
    v26 = v21;
    sub_1BFA17B2C(v11, v21, &qword_1EBDFB580, &qword_1BFAB09D8);
    v27 = type metadata accessor for SiriSuggestionsIntentPropertiesTransport();
    sub_1BFA177A0(v40, v21 + v27[5]);
    v28 = v23;
    v29 = v22;
    v30 = sub_1BFA128F0(v24);

    __swift_destroy_boxed_opaque_existential_2Tm(v40);
    sub_1BFA007F8(v11, &qword_1EBDFB580, &qword_1BFAB09D8);
    (*(v29 + 8))(v3, v28);
    *(v26 + v27[6]) = v30;
    v31 = (v26 + v27[7]);
    v32 = v34;
    *v31 = v35;
    v31[1] = v32;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v37);
}

unint64_t sub_1BFA128F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB618, &qword_1BFAB11A0);
    v2 = sub_1BFAAFD48();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
LABEL_7:
  if (!v5)
  {
    goto LABEL_9;
  }

  do
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_1BFA17890(*(a1 + 56) + 48 * v11, v31);
    *&v30 = v13;
    *(&v30 + 1) = v14;
    v28[3] = v30;
    v29[0] = v31[0];
    v29[1] = v31[1];
    v29[2] = v31[2];
    v15 = v30;
    sub_1BFA022C0(v29, v24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB598, &qword_1BFAB09F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
    swift_dynamicCast();
    sub_1BFA022C0(v25, v27);
    sub_1BFA022C0(v27, v28);
    sub_1BFA022C0(v28, &v26);
    result = sub_1BFA01764(v15, *(&v15 + 1));
    v16 = result;
    if (v17)
    {
      v21 = v2[6] + 16 * result;
      v22 = *(v21 + 8);
      *v21 = v15;

      v23 = (v2[7] + 48 * v16);
      __swift_destroy_boxed_opaque_existential_2Tm(v23);
      result = sub_1BFA022C0(&v26, v23);
      v8 = v9;
      goto LABEL_7;
    }

    if (v2[2] >= v2[3])
    {
      goto LABEL_20;
    }

    *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v2[6] + 16 * result) = v15;
    result = sub_1BFA022C0(&v26, (v2[7] + 48 * result));
    v18 = v2[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    v2[2] = v20;
    v8 = v9;
  }

  while (v5);
LABEL_9:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1BFA12B9C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5C8, &qword_1BFAB1150);
    v1 = sub_1BFAAFD48();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_1BFA17890(*(a1 + 56) + 48 * v10, v31);
    *&v30 = v12;
    *(&v30 + 1) = v13;
    *&v28[5] = v30;
    v29[0] = v31[0];
    v29[1] = v31[1];
    v29[2] = v31[2];
    v14 = v30;
    sub_1BFA022C0(v29, v24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5D8, &qword_1BFAB1160);
    swift_dynamicCast();
    sub_1BF9FA474(&v25, v27);
    sub_1BF9FA474(v27, v28);
    sub_1BF9FA474(v28, &v26);
    result = sub_1BFA01764(v14, *(&v14 + 1));
    v15 = result;
    if (v16)
    {
      v17 = v1[6] + 16 * result;
      v18 = *(v17 + 8);
      *v17 = v14;

      v19 = (v1[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_2Tm(v19);
      result = sub_1BF9FA474(&v26, v19);
      v7 = v8;
    }

    else
    {
      if (v1[2] >= v1[3])
      {
        goto LABEL_19;
      }

      *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v1[6] + 16 * result) = v14;
      result = sub_1BF9FA474(&v26, v1[7] + 40 * result);
      v20 = v1[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_20;
      }

      v1[2] = v22;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1BFA12E44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5E0, &qword_1BFAB1168);
    v7 = sub_1BFAAFD48();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_63();

  v9 = 0;
  while (v3)
  {
    while (1)
    {
      v10 = v9;
LABEL_10:
      OUTLINED_FUNCTION_79();
      v28 = v4;
      v29 = v5;
      *&v25[5] = MEMORY[0x28];
      v26[0] = MEMORY[0x38];
      v26[1] = MEMORY[0x48];
      v27 = v30;
      v11 = MEMORY[0x30];
      v4 = MEMORY[0x28];
      sub_1BF9FA474(v26, v22);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5D8, &qword_1BFAB1160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5D0, &qword_1BFAB1158);
      OUTLINED_FUNCTION_108();
      sub_1BF9FA474((v6 + 16), v24);
      sub_1BF9FA474(v24, v25);
      sub_1BF9FA474(v25, &v23);
      v12 = OUTLINED_FUNCTION_71();
      result = sub_1BFA01764(v12, v13);
      v5 = result;
      if (v14)
      {
        break;
      }

      if (v7[2] >= v7[3])
      {
        goto LABEL_17;
      }

      *(v21 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      OUTLINED_FUNCTION_122();
      *v15 = v4;
      v15[1] = v11;
      result = sub_1BF9FA474(&v23, v7[7] + 40 * v5);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_18;
      }

      v7[2] = v18;
      v9 = v10;
    }

    OUTLINED_FUNCTION_122();
    v20 = v19[1];
    *v19 = v4;
    v19[1] = v11;

    v4 = (v7[7] + 40 * v5);
    __swift_destroy_boxed_opaque_existential_2Tm(v4);
    result = sub_1BF9FA474(&v23, v4);
    v9 = v10;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v2)
    {

      return v7;
    }

    v3 = *(v1 + 8 * v10);
    ++v9;
    if (v3)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1BFA13064(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5C8, &qword_1BFAB1150);
    v7 = sub_1BFAAFD48();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_63();

  v9 = 0;
  while (v3)
  {
    while (1)
    {
      v10 = v9;
LABEL_10:
      OUTLINED_FUNCTION_79();
      v28 = v4;
      v29 = v5;
      *&v25[5] = MEMORY[0x28];
      v26[0] = MEMORY[0x38];
      v26[1] = MEMORY[0x48];
      v27 = v30;
      v11 = MEMORY[0x30];
      v4 = MEMORY[0x28];
      sub_1BF9FA474(v26, v22);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5D0, &qword_1BFAB1158);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5D8, &qword_1BFAB1160);
      OUTLINED_FUNCTION_108();
      sub_1BF9FA474((v6 + 16), v24);
      sub_1BF9FA474(v24, v25);
      sub_1BF9FA474(v25, &v23);
      v12 = OUTLINED_FUNCTION_71();
      result = sub_1BFA01764(v12, v13);
      v5 = result;
      if (v14)
      {
        break;
      }

      if (v7[2] >= v7[3])
      {
        goto LABEL_17;
      }

      *(v21 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      OUTLINED_FUNCTION_122();
      *v15 = v4;
      v15[1] = v11;
      result = sub_1BF9FA474(&v23, v7[7] + 40 * v5);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_18;
      }

      v7[2] = v18;
      v9 = v10;
    }

    OUTLINED_FUNCTION_122();
    v20 = v19[1];
    *v19 = v4;
    v19[1] = v11;

    v4 = (v7[7] + 40 * v5);
    __swift_destroy_boxed_opaque_existential_2Tm(v4);
    result = sub_1BF9FA474(&v23, v4);
    v9 = v10;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v2)
    {

      return v7;
    }

    v3 = *(v1 + 8 * v10);
    ++v9;
    if (v3)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t SiriSuggestionsIntentPropertiesTransport.encode(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB580, &qword_1BFAB09D8);
  OUTLINED_FUNCTION_60_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v40 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5A0, &qword_1BFAB09F8);
  OUTLINED_FUNCTION_22();
  v40[2] = v12;
  v40[3] = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v15, v16);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v19 = OUTLINED_FUNCTION_93();
  __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_1BFA15584();
  sub_1BFAB0008();
  v44 = 0;
  v21 = OUTLINED_FUNCTION_71();
  sub_1BFA17B2C(v21, v22, &qword_1EBDFB580, &qword_1BFAB09D8);
  v23 = sub_1BFAAEC28();
  if (__swift_getEnumTagSinglePayload(v10, 1, v23) == 1)
  {
    sub_1BFA007F8(v10, &qword_1EBDFB580, &qword_1BFAB09D8);
    v41 = 0u;
    v42 = 0u;
    v43 = 0;
  }

  else
  {
    *(&v42 + 1) = v23;
    v43 = sub_1BFA17B74(&qword_1EDCC64F8, MEMORY[0x1E69D2EF0]);
    __swift_allocate_boxed_opaque_existential_1Tm(&v41);
    OUTLINED_FUNCTION_54(v23);
    (*(v24 + 32))();
  }

  OUTLINED_FUNCTION_84();
  v25 = v40[1];
  sub_1BFAAEE28();
  if (!v25)
  {
    sub_1BFA007F8(&v41, &qword_1EBDFB5A8, &qword_1BFAB0A00);
    v44 = 1;
    v29 = type metadata accessor for SiriSuggestionsIntentPropertiesTransport();
    v30 = (v2 + v29[5]);
    v31 = v30[3];
    v32 = v30[4];
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v33 = *(v32 + 32);
    *(&v42 + 1) = v31;
    v43 = v33;
    __swift_allocate_boxed_opaque_existential_1Tm(&v41);
    OUTLINED_FUNCTION_54(v31);
    (*(v34 + 16))();
    OUTLINED_FUNCTION_84();
    sub_1BFAAEE68();
    __swift_destroy_boxed_opaque_existential_2Tm(&v41);
    LOBYTE(v41) = 2;
    sub_1BFA12B9C(*(v2 + v29[6]));
    sub_1BFAAEE48();

    v44 = 3;
    v35 = (v2 + v29[7]);
    v36 = v35[1];
    if (v36)
    {
      v37 = *v35;
      v38 = MEMORY[0x1E69E6160];
      v39 = MEMORY[0x1E69E6158];
    }

    else
    {
      v37 = 0;
      v39 = 0;
      v38 = 0;
      *&v42 = 0;
    }

    *&v41 = v37;
    *(&v41 + 1) = v36;
    *(&v42 + 1) = v39;
    v43 = v38;

    OUTLINED_FUNCTION_84();
    sub_1BFAAEE28();
  }

  v26 = OUTLINED_FUNCTION_104();
  v27(v26);
  return sub_1BFA007F8(&v41, &qword_1EBDFB5A8, &qword_1BFAB0A00);
}

uint64_t sub_1BFA1366C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E746E65746E69 && a2 == 0xEA0000000000656DLL;
  if (v4 || (OUTLINED_FUNCTION_97(), (sub_1BFAAFF08() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72656E776FLL && a2 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_97(), (sub_1BFAAFF08() & 1) != 0))
    {

      return 1;
    }

    else
    {
      v8 = a1 == OUTLINED_FUNCTION_118() && a2 == v7;
      if (v8 || (OUTLINED_FUNCTION_97(), (sub_1BFAAFF08() & 1) != 0))
      {

        return 2;
      }

      else if (a1 == 1651664246 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        OUTLINED_FUNCTION_97();
        v10 = sub_1BFAAFF08();

        if (v10)
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

uint64_t sub_1BFA137AC(unsigned __int8 a1)
{
  sub_1BFAAFF98();
  MEMORY[0x1BFB611E0](a1);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFA137F4(char a1)
{
  result = 0x614E746E65746E69;
  switch(a1)
  {
    case 1:
      result = 0x72656E776FLL;
      break;
    case 2:
      result = OUTLINED_FUNCTION_118();
      break;
    case 3:
      result = 1651664246;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA13880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA1366C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA138B4(uint64_t a1)
{
  v2 = sub_1BFA15584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA138F0(uint64_t a1)
{
  v2 = sub_1BFA15584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BFA1399C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = *v1;
  sub_1BFA07980();
}

uint64_t sub_1BFA139F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1BF9FDE28;

  return (sub_1BFA07EF4)(a1, a2, a3, a4, a5);
}

uint64_t sub_1BFA13AD4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF9FDF08;

  return (sub_1BFA08A50)(a1, a2);
}

uint64_t sub_1BFA13B88(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF9FDF08;

  return sub_1BFA09EF0(a1, a2);
}

uint64_t sub_1BFA13CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_9();
  v10 = *v9;
  OUTLINED_FUNCTION_12_2(&dword_1BFAB1118);
  v24 = v11;
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_41(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_3_2(v13);
  OUTLINED_FUNCTION_128();

  return v20(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t sub_1BFA13D5C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB1108);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1BFA13DF0()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB10F8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1BFA13F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_9();
  v10 = *v9;
  OUTLINED_FUNCTION_12_2(&dword_1BFAB10B8);
  v24 = v11;
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_41(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_3_2(v13);
  OUTLINED_FUNCTION_128();

  return v20(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t sub_1BFA13F9C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB10A8);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_7_0(v2);

  return v6(v4);
}

uint64_t sub_1BFA1403C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB1098);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1BFA140D0()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB1088);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

BOOL sub_1BFA14164(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_1BFA14274(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = a4(0);
    OUTLINED_FUNCTION_15(v11);
    v14 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v13 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v14 & 1) == 0);
  return v9 != v10;
}

uint64_t sub_1BFA14350()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB1078);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1BFA143E4()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB1068);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1BFA144F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_9();
  v10 = *v9;
  OUTLINED_FUNCTION_12_2(&unk_1BFAB1028);
  v24 = v11;
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_41(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_3_2(v13);
  OUTLINED_FUNCTION_128();

  return v20(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t sub_1BFA14590()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB1018);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_45(v2);
  v4 = OUTLINED_FUNCTION_96();

  return v6(v4);
}

uint64_t sub_1BFA1462C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB1008);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1BFA146C0()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB0FF8);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1BFA147D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_9();
  v10 = *v9;
  OUTLINED_FUNCTION_12_2(&dword_1BFAB0FB8);
  v24 = v11;
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_41(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_3_2(v13);
  OUTLINED_FUNCTION_128();

  return v20(v15, v16, v17, v18, v19, v20, v21, v22, a9, v24);
}

uint64_t sub_1BFA1486C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB0FA8);
  v6 = v0;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_41(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_45(v2);
  v4 = OUTLINED_FUNCTION_96();

  return v6(v4);
}

uint64_t sub_1BFA14908()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB0F98);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1BFA1499C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB0F88);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1BFA14A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_12_2(&dword_1BFAB0F48);
  v22 = v9;
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_41(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_3_2(v11);
  OUTLINED_FUNCTION_128();

  return v18(v13, v14, v15, v16, v17, v18, v19, v20, a9, v22);
}

uint64_t sub_1BFA14AE8()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_12_2(&unk_1BFAB0F38);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_2(v1);

  return v4(v3);
}

uint64_t sub_1BFA14B7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BFAA17CC();
  *a1 = result;
  return result;
}

uint64_t sub_1BFA14BA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BFAA17D4(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1BFA14C10(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1BFA14C5C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1BFA14D50;

  return v6(v2 + 32);
}

uint64_t sub_1BFA14D50()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *(v4 + 16);
  v7 = *v0;
  OUTLINED_FUNCTION_8();
  *v8 = v7;

  *v6 = *(v2 + 32);
  OUTLINED_FUNCTION_36();

  return v9();
}

uint64_t sub_1BFA14E90()
{
  OUTLINED_FUNCTION_51();
  v0 = sub_1BFAAEB98();
  OUTLINED_FUNCTION_15(v0);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_60_0(v5);
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_124();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_77(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_87(v9);
  OUTLINED_FUNCTION_136();

  return sub_1BFA0AFC8(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1BFA14FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v15 = *a4;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1BFA17D18;

  return sub_1BFA0BC94(a2, a3, v15, a5, a6, a7, a8, v19);
}

uint64_t sub_1BFA150B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 16) = a1;
  v13 = *a4;
  v14 = swift_task_alloc();
  *(v7 + 24) = v14;
  *v14 = v7;
  v14[1] = sub_1BFA151A4;

  return sub_1BFA0CB6C(a2, a3, v13, a5, a6, a7 & 1);
}

uint64_t sub_1BFA151A4()
{
  OUTLINED_FUNCTION_40();
  v2 = v1;
  OUTLINED_FUNCTION_42();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_8();
  *v7 = v6;

  *v5 = v2 & 1;
  OUTLINED_FUNCTION_85();

  return v8();
}

uint64_t sub_1BFA152A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v15 = *a4;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1BFA17D18;

  return sub_1BFA0BD78(a2, a3, v15, a5, a6, a7, a8, v19);
}

uint64_t sub_1BFA15390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v16 = *a4;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1BFA17D18;

  return sub_1BFA0CD8C(a2, a3, v16, a5, a6, a7 & 1, a8, a9);
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

uint64_t sub_1BFA154CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB560, &qword_1BFAB5470);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for SiriSuggestionsIntentPropertiesTransport()
{
  result = qword_1EDCC72C8;
  if (!qword_1EDCC72C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BFA15584()
{
  result = qword_1EDCC72E8;
  if (!qword_1EDCC72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC72E8);
  }

  return result;
}

unint64_t sub_1BFA155DC()
{
  result = qword_1EBDFB5B0;
  if (!qword_1EBDFB5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFB5B0);
  }

  return result;
}

unint64_t sub_1BFA15634()
{
  result = qword_1EBDFB5B8;
  if (!qword_1EBDFB5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFB5B8);
  }

  return result;
}

uint64_t dispatch thunk of SiriSuggestionsBaseAPIClient.submitAsync(for:propertyKey:propertyValue:)()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_113();
  v6 = v5;
  v8 = v7;
  v10 = *(v9 + 24);
  OUTLINED_FUNCTION_44();
  v18 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_41(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_45(v15);

  return v18(v8, v6, v4, v3, v2, v1, v0);
}

{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_30();
  v10 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_41(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_45(v6);
  v8 = OUTLINED_FUNCTION_98();

  return v10(v8);
}

uint64_t dispatch thunk of SiriSuggestionsBaseAPIClient.submitAsync(for:properties:)()
{
  OUTLINED_FUNCTION_95();
  v12 = v0;
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_9();
  v2 = *(v1 + 40);
  OUTLINED_FUNCTION_44();
  v11 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_41(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_3_2(v7);

  return v11(v9);
}

void dispatch thunk of SiriSuggestionsBaseAPIClient.flush(for:)()
{
  OUTLINED_FUNCTION_58();
  v4 = *(OUTLINED_FUNCTION_34(v0, v1, v2, v3) + 48);
  OUTLINED_FUNCTION_30();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_41(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_19(v9);
  OUTLINED_FUNCTION_128();

  __asm { BRAA            X4, X16 }
}

uint64_t dispatch thunk of SiriSuggestionsBaseAPIClient.logShown(for:deliveryVehicle:generationId:)()
{
  OUTLINED_FUNCTION_95();
  v12 = v0;
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_9();
  v2 = *(v1 + 56);
  OUTLINED_FUNCTION_44();
  v11 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_41(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_3_2(v7);

  return v11(v9);
}

uint64_t dispatch thunk of SiriSuggestionsBaseAPIClient.warmup()()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_59();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_30();
  v10 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_41(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_7_0(v6);

  return v10(v8);
}

void dispatch thunk of SiriSuggestionsEngagementAPIClient.submitEngagement(for:with:)()
{
  OUTLINED_FUNCTION_58();
  v4 = *(OUTLINED_FUNCTION_34(v0, v1, v2, v3) + 8);
  OUTLINED_FUNCTION_30();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_41(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_19(v9);
  OUTLINED_FUNCTION_128();

  __asm { BRAA            X4, X16 }
}

{
  OUTLINED_FUNCTION_58();
  v4 = *(OUTLINED_FUNCTION_34(v0, v1, v2, v3) + 16);
  OUTLINED_FUNCTION_30();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_41(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_19(v9);
  OUTLINED_FUNCTION_128();

  __asm { BRAA            X4, X16 }
}

{
  OUTLINED_FUNCTION_58();
  v4 = *(OUTLINED_FUNCTION_34(v0, v1, v2, v3) + 24);
  OUTLINED_FUNCTION_30();
  v13 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_41(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_19(v9);
  OUTLINED_FUNCTION_128();

  __asm { BRAA            X4, X16 }
}

uint64_t getEnumTagSinglePayload for DonationPolicy(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for DonationPolicy(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SiriSuggestionsClientConstants(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for SiriSuggestionsClientConstants(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SiriSuggestionsClientPredefinedTypes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriSuggestionsClientPredefinedTypes(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1BFA163F8()
{
  sub_1BFA164D0();
  if (v0 <= 0x3F)
  {
    sub_1BFA16528();
    if (v1 <= 0x3F)
    {
      sub_1BFA16584();
      if (v2 <= 0x3F)
      {
        sub_1BFA17CBC(319, &qword_1EDCC84E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BFA164D0()
{
  if (!qword_1EDCC7038)
  {
    sub_1BFAAEC28();
    v0 = sub_1BFAAFBA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCC7038);
    }
  }
}

unint64_t sub_1BFA16528()
{
  result = qword_1EDCC84F8;
  if (!qword_1EDCC84F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCC84F8);
  }

  return result;
}

void sub_1BFA16584()
{
  if (!qword_1EDCC6470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB550, &qword_1BFAB0970);
    v0 = sub_1BFAAF7F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCC6470);
    }
  }
}

uint64_t getEnumTagSinglePayload for SiriSuggestionsIntentPropertiesTransport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SiriSuggestionsIntentPropertiesTransport.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BFA16760()
{
  result = qword_1EBDFB5C0;
  if (!qword_1EBDFB5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFB5C0);
  }

  return result;
}

unint64_t sub_1BFA167B8()
{
  result = qword_1EDCC72D8;
  if (!qword_1EDCC72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC72D8);
  }

  return result;
}

unint64_t sub_1BFA16810()
{
  result = qword_1EDCC72E0;
  if (!qword_1EDCC72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC72E0);
  }

  return result;
}

uint64_t sub_1BFA16864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_10_0();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_16_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1_0(v15);
  OUTLINED_FUNCTION_61();

  return v25(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BFA168F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_13();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_16_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_0_1(v13);
  OUTLINED_FUNCTION_62();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1BFA169E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v15 = *a4;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1BFA17D18;

  return sub_1BFA0BE5C(a2, a3, v15, a5, a6, a7, a8, v19);
}

uint64_t sub_1BFA16AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v16 = *a4;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1BFA17D18;

  return sub_1BFA0CF8C(a2, a3, v16, a5, a6, a7 & 1, a8, a9);
}

uint64_t sub_1BFA16BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v15 = *a4;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1BFA17D18;

  return sub_1BFA0BF40(a2, a3, v15, a5, a6, a7, a8, v19);
}

uint64_t sub_1BFA16CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v16 = *a4;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1BFA17D18;

  return sub_1BFA0D068(a2, a3, v16, a5, a6, a7 & 1, a8, a9);
}

uint64_t sub_1BFA16DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v15 = *a4;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1BFA17D18;

  return sub_1BFA0C028(a2, a3, v15, a5, a6, a7, a8, v19);
}

uint64_t sub_1BFA16E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 16) = a1;
  v13 = *a4;
  v14 = swift_task_alloc();
  *(v7 + 24) = v14;
  *v14 = v7;
  v14[1] = sub_1BFA17D18;

  return sub_1BFA0D254(a2, a3, v13, a5, a6, a7 & 1);
}

uint64_t sub_1BFA16F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1BFA17D18;

  return sub_1BFA0C10C(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1BFA17070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 16) = a1;
  v17 = swift_task_alloc();
  *(v9 + 24) = v17;
  *v17 = v9;
  v17[1] = sub_1BFA17D18;

  return sub_1BFA0D330(a2, a3, a4, a5, a6, a7 & 1, a8, a9);
}

uint64_t sub_1BFA17164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_66();
  v34 = *(v14 + 24);
  v35 = *(v14 + 16);
  v15 = *(v14 + 72);
  v16 = *(v14 + 80);
  v17 = *(v14 + 88);
  v18 = *(v14 + 96);
  v19 = *(v14 + 104);
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_16_0(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_1_0(v21);
  OUTLINED_FUNCTION_61();

  return v31(v23, v24, v25, v26, v27, v28, v29, v30, a9, v34, v35, a12, a13, a14);
}

uint64_t sub_1BFA17210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_72();
  v15 = v14[3];
  v34 = v14[2];
  v16 = v14[9];
  v17 = v14[10];
  v18 = v14[11];
  v19 = v14[12];
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_16_0(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_0_1(v21);
  OUTLINED_FUNCTION_62();

  return v31(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
}

uint64_t objectdestroy_95Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  sub_1BF9FC184();
  v6 = *(v0 + 72);

  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 80));

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1BFA17310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_10_0();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_16_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1_0(v15);
  OUTLINED_FUNCTION_61();

  return v25(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BFA173A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_13();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_16_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_0_1(v13);
  OUTLINED_FUNCTION_62();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1BFA17434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_10_0();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_16_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1_0(v15);
  OUTLINED_FUNCTION_61();

  return v25(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BFA174C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_13();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_16_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_0_1(v13);
  OUTLINED_FUNCTION_62();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1BFA17558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_10_0();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_16_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1_0(v15);
  OUTLINED_FUNCTION_61();

  return v25(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BFA175EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_13();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_16_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_0_1(v13);
  OUTLINED_FUNCTION_62();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1BFA1767C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_10_0();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_16_0(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_1_0(v15);
  OUTLINED_FUNCTION_61();

  return v25(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1BFA17710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_13();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_16_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_0_1(v13);
  OUTLINED_FUNCTION_62();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1BFA177A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = *(OUTLINED_FUNCTION_123(a1, a2) + 32);
  OUTLINED_FUNCTION_54(v3);
  (*v4)(v2);
  return v2;
}

uint64_t sub_1BFA177F4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB600, &qword_1BFAB7660);
    sub_1BFA17B74(a2, MEMORY[0x1E69D2D78]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BFA17890(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = *(OUTLINED_FUNCTION_123(a1, a2) + 32);
  OUTLINED_FUNCTION_54(v3);
  (*v4)(v2);
  return v2;
}

uint64_t objectdestroy_38Tm()
{
  OUTLINED_FUNCTION_102();
  v1 = sub_1BFAAEB98();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  v4 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_22();
  v9 = v8;
  v10 = (v4 + v6 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  v13 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 32));
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);
  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6BDD0](v14, v15, v16);
}

uint64_t sub_1BFA17A1C()
{
  OUTLINED_FUNCTION_51();
  v0 = sub_1BFAAEB98();
  OUTLINED_FUNCTION_15(v0);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_60_0(v5);
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_124();
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_77(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_87(v9);
  OUTLINED_FUNCTION_136();

  return sub_1BFA11180(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1BFA17B2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_133(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_96();
  v9(v8);
  return v4;
}

uint64_t sub_1BFA17B74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BFA17BBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_133(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_96();
  v9(v8);
  return v4;
}

uint64_t sub_1BFA17C04()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_127();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_20(v1);

  return v4(v3);
}

void sub_1BFA17CBC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_6_1(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = v2[3];
  v4 = v2[4];
  return v2[7];
}

void OUTLINED_FUNCTION_10_0()
{
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
}

void OUTLINED_FUNCTION_13()
{
  v2 = v0[3];
  *(v1 + 24) = v0[2];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
}

uint64_t OUTLINED_FUNCTION_21()
{
  v12 = *(v0 + 800);
  v13 = *(v0 + 808);
  v14 = *(v0 + 784);
  v15 = *(v0 + 792);
  v1 = *(v0 + 760);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);
  v4 = *(v0 + 696);
  v16 = *(v0 + 688);
  v17 = *(v0 + 752);
  v5 = *(v0 + 680);
  v6 = *(v0 + 672);
  v7 = *(v0 + 608);
  v8 = *(v0 + 560);
  v9 = *(v0 + 552);
  sub_1BF9FA474((v0 + 352), v0 + 312);

  return sub_1BFAAFA98();
}

BOOL OUTLINED_FUNCTION_27_1()
{
  result = *(v1 + 48) != 0;
  v3 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_63()
{
  v2 = 1 << *(v0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v0 + 64);
}

uint64_t OUTLINED_FUNCTION_74()
{
  v1 = v0[97];
  result = v0[78];
  v3 = v0[75];
  v4 = v0[73];
  return result;
}

double OUTLINED_FUNCTION_75()
{
  *(v0 + 384) = 0;
  result = 0.0;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_80_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  v3 = *(v0 + 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_82(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_1BFA177A0(v2 + 312, v2 + 392);
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_99()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v1;
  result = *(v0 + 112);
  v3 = *(v0 + 128);
  *(v0 + 48) = result;
  *(v0 + 64) = v3;
  *(v0 + 304) = *(v0 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_104()
{
  v2 = *(v1 - 136);
  v3 = *(*(v1 - 144) + 8);
  return v0;
}

void OUTLINED_FUNCTION_105()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[73];
}

uint64_t OUTLINED_FUNCTION_110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_115()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_119()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  return sub_1BF9FC184();
}

uint64_t OUTLINED_FUNCTION_131(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;

  return sub_1BFAAEB98();
}

uint64_t OUTLINED_FUNCTION_134()
{
  v2 = *(v0 + 16);

  return swift_unknownObjectRelease();
}

void OUTLINED_FUNCTION_135()
{

  sub_1BFA07980();
}

uint64_t ACECommandSuggestionDispatcher.__allocating_init(invocationContext:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC18SiriSuggestionsAPI30ACECommandSuggestionDispatcher_invocationContext;
  v7 = sub_1BFAAEFA8();
  OUTLINED_FUNCTION_0(v7);
  (*(v8 + 32))(v5 + v6, a1);
  return v5;
}

uint64_t ACECommandSuggestionDispatcher.init(invocationContext:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18SiriSuggestionsAPI30ACECommandSuggestionDispatcher_invocationContext;
  v4 = sub_1BFAAEFA8();
  OUTLINED_FUNCTION_0(v4);
  (*(v5 + 32))(v1 + v3, a1);
  return v1;
}

uint64_t ACECommandSuggestionDispatcher.dispatch(suggestion:presentationContext:)(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BFA182FC, 0, 0);
}

uint64_t sub_1BFA182FC()
{
  v1 = v0[7];
  v2 = type metadata accessor for SiriSuggestions.Suggestion(0);
  sub_1BFA184BC(v1 + *(v2 + 40), (v0 + 2));
  if (v0[5])
  {
    v3 = v0[8];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v5 = sub_1BFAAEF78();
    __swift_destroy_boxed_opaque_existential_2Tm(v0 + 2);
    sub_1BFAAE458();
    v6 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_1BFAAE518();

    __swift_destroy_boxed_opaque_existential_2Tm(v0 + 2);
  }

  else
  {
    sub_1BFA1852C((v0 + 2));
    if (qword_1EDCC7470 != -1)
    {
      swift_once();
    }

    v7 = sub_1BFAAF688();
    __swift_project_value_buffer(v7, qword_1EDCC7478);
    v8 = sub_1BFAAF668();
    v9 = sub_1BFAAFB88();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BF9F6000, v8, v9, "Could not get invocation command from suggestion", v10, 2u);
      MEMORY[0x1BFB618C0](v10, -1, -1);
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BFA184BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB658, &unk_1BFAB3CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFA1852C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB658, &unk_1BFAB3CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ACECommandSuggestionDispatcher.deinit()
{
  v1 = OBJC_IVAR____TtC18SiriSuggestionsAPI30ACECommandSuggestionDispatcher_invocationContext;
  v2 = sub_1BFAAEFA8();
  OUTLINED_FUNCTION_0(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t ACECommandSuggestionDispatcher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18SiriSuggestionsAPI30ACECommandSuggestionDispatcher_invocationContext;
  v2 = sub_1BFAAEFA8();
  OUTLINED_FUNCTION_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1BFA18680(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BFA18718;

  return ACECommandSuggestionDispatcher.dispatch(suggestion:presentationContext:)(a1);
}

uint64_t sub_1BFA18718()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1BFA18824@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BFAAEFA8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4);
  v10 = type metadata accessor for ACECommandSuggestionDispatcher();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  result = (*(v5 + 32))(v13 + OBJC_IVAR____TtC18SiriSuggestionsAPI30ACECommandSuggestionDispatcher_invocationContext, v9, v4);
  a2[3] = v10;
  a2[4] = &protocol witness table for ACECommandSuggestionDispatcher;
  *a2 = v13;
  return result;
}

uint64_t type metadata accessor for ACECommandSuggestionDispatcher()
{
  result = qword_1EBDFB660;
  if (!qword_1EBDFB660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BFA189C8()
{
  result = sub_1BFAAEFA8();
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

uint64_t sub_1BFA18B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA18B28()
{
  v12 = v0[12];
  v1 = v0[10];
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6B8, &qword_1BFAB13E0);
  v0[6] = sub_1BFA1B770(&qword_1EDCC6430, &qword_1EDCC64E0);
  v0[7] = sub_1BFA1B770(&qword_1EDCC6438, &qword_1EDCC64E8);
  v0[2] = v1;
  v2 = *(v12 + 24);

  v11 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1BFA18D18;
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];
  v8 = v0[9];
  v9 = OUTLINED_FUNCTION_53(v0[8]);

  return v11(v9);
}

uint64_t sub_1BFA18D18()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_37();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BFA109E0, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_2Tm((v3 + 16));
    OUTLINED_FUNCTION_85();

    return v9();
  }
}

uint64_t sub_1BFA18E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = v5;
  *(v6 + 96) = a2;
  *(v6 + 104) = a4;
  *(v6 + 88) = a1;
  *(v6 + 128) = *a3;
  *(v6 + 144) = *(a3 + 16);
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA18E68()
{
  v1 = v0[16];
  if (v1)
  {
    v3 = v0[17];
    v2 = v0[18];
    v4 = sub_1BFAAE278();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v0[19] = sub_1BFAAE268();
    sub_1BFAAE248();
    v0[8] = v1;
    v0[9] = v3;
    v0[10] = v2;
    sub_1BFA1B854();
    v9 = sub_1BFAAE258();
    v11 = v10;
    v0[20] = v9;
    v0[21] = v10;
    v21 = v0[14];
    v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6C0, &unk_1BFAB13F0);
    v0[6] = sub_1BFA1B8A8(&qword_1EDCC7440, sub_1BFA1B920);
    v0[7] = sub_1BFA1B8A8(&qword_1EDCC7448, sub_1BFA1B974);
    v0[2] = v9;
    v0[3] = v11;
    v12 = *(v21 + 24);
    sub_1BFA1B9C8(v9, v11);
    v20 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    v0[22] = v14;
    *v14 = v0;
    v14[1] = sub_1BFA19100;
    v15 = v0[14];
    v16 = v0[15];
    v17 = v0[12];
    v18 = v0[13];
    v19 = OUTLINED_FUNCTION_53(v0[11]);

    return v20(v19);
  }

  else
  {
    OUTLINED_FUNCTION_36();

    return v7();
  }
}

uint64_t sub_1BFA19100()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_37();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 184) = v0;

  if (v0)
  {
    v9 = sub_1BFA1926C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_2Tm((v3 + 16));
    v9 = sub_1BFA19208;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1BFA19208()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[19];
  sub_1BFA1B9DC(v0[20], v0[21]);

  OUTLINED_FUNCTION_36();

  return v2();
}

uint64_t sub_1BFA1926C()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[19];
  sub_1BFA1B9DC(v0[20], v0[21]);

  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 2);
  OUTLINED_FUNCTION_85();
  v3 = v0[23];

  return v2();
}

uint64_t sub_1BFA192DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA192F8()
{
  sub_1BF9FB4F4(*(v0 + 160), v0 + 104, &qword_1EBDFB6B0, &qword_1BFAB13D0);
  if (*(v0 + 128))
  {
    v14 = *(v0 + 176);
    sub_1BF9FA474((v0 + 104), v0 + 64);
    v1 = *(v0 + 88);
    v2 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v1);
    *(v0 + 40) = v1;
    *(v0 + 48) = *(v2 + 16);
    *(v0 + 56) = *(v2 + 24);
    __swift_allocate_boxed_opaque_existential_1Tm((v0 + 16));
    OUTLINED_FUNCTION_54(v1);
    (*(v3 + 16))();
    v4 = *(v14 + 24);
    OUTLINED_FUNCTION_44();
    v13 = (v5 + *v5);
    v7 = *(v6 + 4);
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_9_0(v8);
    v10 = OUTLINED_FUNCTION_53(v9);

    return v13(v10);
  }

  else
  {
    sub_1BFA007F8(v0 + 104, &qword_1EBDFB6B0, &qword_1BFAB13D0);
    OUTLINED_FUNCTION_36();

    return v12();
  }
}

uint64_t sub_1BFA194F8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_37();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 200) = v0;

  if (v0)
  {
    v9 = sub_1BFA1CABC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_2Tm((v3 + 16));
    v9 = sub_1BFA1CAC0;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1BFA19600()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_37();
  *v4 = v3;
  v6 = *(v5 + 192);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 200) = v0;

  if (v0)
  {
    v9 = sub_1BFA19760;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_2Tm((v3 + 16));
    v9 = sub_1BFA19708;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1BFA19708()
{
  OUTLINED_FUNCTION_40();
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 64));
  OUTLINED_FUNCTION_36();

  return v1();
}

uint64_t sub_1BFA19760()
{
  OUTLINED_FUNCTION_40();
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 8);
  OUTLINED_FUNCTION_85();
  v2 = v0[25];

  return v1();
}

uint64_t SiriSuggestionsBaseAPIClient.getNextSuggestions(requestId:)()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  v1[30] = v2;
  v1[31] = v0;
  v1[28] = v4;
  v1[29] = v5;
  v1[27] = v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0) - 8) + 64) + 15;
  v1[32] = swift_task_alloc();
  v8 = sub_1BFAAE3F8();
  v1[33] = v8;
  v9 = *(v8 - 8);
  OUTLINED_FUNCTION_44();
  v1[34] = v10;
  v12 = *(v11 + 64) + 15;
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v13 = *(v3 - 8);
  v1[38] = v13;
  v14 = *(v13 + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA1994C, 0, 0);
}

void sub_1BFA1994C()
{
  v77 = v0;
  if (qword_1EDCC8BC0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = sub_1BFAAF688();
  __swift_project_value_buffer(v5, qword_1EDCC8B70);
  v6 = *(v2 + 16);
  v6(v1, v3, v4);
  v7 = sub_1BFAAF668();
  v8 = sub_1BFAAFB78();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 336);
  if (v9)
  {
    v11 = *(v0 + 328);
    v73 = v6;
    v12 = *(v0 + 304);
    v13 = *(v0 + 240);
    v14 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v76[0] = v71;
    *v14 = 136315138;
    v73(v11, v10, v13);
    v15 = sub_1BFAAF8B8();
    v17 = v16;
    v18 = v13;
    v19 = *(v12 + 8);
    v19(v10, v18);
    v6 = v73;
    v20 = sub_1BF9F88A8(v15, v17, v76);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1BF9F6000, v7, v8, "unwrapped delegate is of type: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v71);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  else
  {
    v21 = *(v0 + 304);
    v22 = *(v0 + 240);

    v19 = *(v21 + 8);
    v19(v10, v22);
  }

  v6(*(v0 + 320), *(v0 + 248), *(v0 + 240));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB678, &qword_1BFAB1350);
  if (swift_dynamicCast())
  {
    sub_1BF9FA474((v0 + 56), v0 + 16);
    v23 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v24 = *(v23 + 8);
    OUTLINED_FUNCTION_44();
    v74 = v25 + *v25;
    v27 = *(v26 + 4);
    v28 = swift_task_alloc();
    *(v0 + 344) = v28;
    *v28 = v0;
    v28[1] = sub_1BFA1A040;
    v29 = *(v0 + 224);
    v30 = *(v0 + 232);
    v31 = *(v0 + 216);
    OUTLINED_FUNCTION_12_3();

    __asm { BRAA            X5, X16 }
  }

  v34 = *(v0 + 312);
  v36 = *(v0 + 240);
  v35 = *(v0 + 248);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  sub_1BFA007F8(v0 + 56, &qword_1EBDFB680, qword_1BFAB1358);
  v6(v34, v35, v36);
  v37 = sub_1BFAAF668();
  v38 = sub_1BFAAFB88();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = *(v0 + 328);
    v72 = v19;
    v75 = v6;
    v41 = *(v0 + 304);
    v40 = *(v0 + 312);
    v42 = *(v0 + 240);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v76[0] = v44;
    *v43 = 136315138;
    v75(v39, v40, v42);
    v45 = sub_1BFAAF8B8();
    v47 = v46;
    v72(v40, v42);
    v48 = sub_1BF9F88A8(v45, v47, v76);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_1BF9F6000, v37, v38, "Unable to invoke sirisuggestions as this is an unknown client type %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v44);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  else
  {
    v50 = *(v0 + 304);
    v49 = *(v0 + 312);
    v51 = *(v0 + 240);

    v19(v49, v51);
  }

  v53 = *(v0 + 288);
  v52 = *(v0 + 296);
  v55 = *(v0 + 272);
  v54 = *(v0 + 280);
  v56 = *(v0 + 256);
  v57 = *(v0 + 264);
  v58 = sub_1BFAAF288();
  *(v0 + 120) = sub_1BFAAECE8();
  *(v0 + 128) = sub_1BFA1B80C(&qword_1EDCC74A8, MEMORY[0x1E69D2F48]);
  *(v0 + 96) = v58;
  sub_1BFAAE3E8();
  sub_1BF9F94C4(v0 + 96, v0 + 136);
  v59 = *(v55 + 16);
  v59(v53, v52, v57);
  sub_1BF9F94C4(v0 + 136, v0 + 176);
  v59(v54, v53, v57);
  v60 = sub_1BFAAED08();
  __swift_storeEnumTagSinglePayload(v56, 1, 1, v60);
  v76[0] = MEMORY[0x1E69E7CC0];
  sub_1BFA1B5D0(v76);
  v61 = *(v0 + 288);
  v63 = *(v0 + 272);
  v62 = *(v0 + 280);
  v65 = *(v0 + 256);
  v64 = *(v0 + 264);
  v66 = *(v0 + 216);
  v67 = *(v63 + 8);
  v67(*(v0 + 296), v64);
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 96));
  v67(v61, v64);
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 136));
  *v66 = v76[0];
  sub_1BF9FA474((v0 + 176), (v66 + 8));
  v68 = type metadata accessor for SiriSuggestions.SuggestionList();
  (*(v63 + 32))(&v66[v68[6]], v62, v64);
  *&v66[v68[7]] = 0xBFF0000000000000;
  sub_1BFA1B678(v65, &v66[v68[8]]);
  OUTLINED_FUNCTION_7_1();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_12_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1BFA1A040()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 344);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BFA1A12C, 0, 0);
}

uint64_t sub_1BFA1A12C()
{
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));
  OUTLINED_FUNCTION_7_1();

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA1A1DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB688, &qword_1BFAB71E0);
  __swift_allocate_value_buffer(v0, qword_1EDCC6AB8);
  __swift_project_value_buffer(v0, qword_1EDCC6AB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB690, &unk_1BFAB13A0);
  sub_1BFAAEA88();
  return sub_1BFAAE808();
}

uint64_t sub_1BFA1A278@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a2;
  v56 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB698, &qword_1BFAB1A50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v54 = v48 - v7;
  v8 = sub_1BFAAEA78();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v55 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BFAAE428();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v51 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1BFAAE938();
  v16 = *(v50 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v50, v18);
  v49 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v48[0] = v48 - v22;
  v23 = sub_1BFAAF0A8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v26 = sub_1BFAAEF08();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BFAAE7A8();
  sub_1BFAAE798();
  sub_1BFAAE788();

  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v33 = sub_1BFAAE488();
  v34 = *(v27 + 104);
  v35 = MEMORY[0x1E69D30C0];
  if ((v33 & 1) == 0)
  {
    v35 = MEMORY[0x1E69D30C8];
  }

  v36 = *v35;
  v52 = v31;
  v34(v31, v36, v26);
  type metadata accessor for DeviceStateTransformers();
  v48[1] = sub_1BFA1A70C(a1);
  v37 = v48[0];
  sub_1BFAAE948();
  v39 = v49;
  v38 = v50;
  (*(v16 + 104))(v49, *MEMORY[0x1E69D3620], v50);
  sub_1BFAAE928();
  v40 = *(v16 + 8);
  v40(v39, v38);
  v40(v37, v38);
  sub_1BFAAE918();
  sub_1BFAAF098();
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42 = v53;
  sub_1BFAAE478();
  if (v42)
  {
    sub_1BFAAF528();
    v43 = v54;
    sub_1BFAAF4F8();
    v44 = 0;
    v45 = v43;
  }

  else
  {
    v44 = 1;
    v45 = v54;
  }

  v46 = sub_1BFAAE888();
  __swift_storeEnumTagSinglePayload(v45, v44, 1, v46);
  sub_1BFA1B054(v45, v55);
  sub_1BFA007F8(v45, &qword_1EBDFB698, &qword_1BFAB1A50);
  sub_1BFAAEA58();
}

uint64_t sub_1BFA1A70C(void *a1)
{
  v2 = sub_1BFAAEBE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v84 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v83 = &v81 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v82 = &v81 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v81 = &v81 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v81 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v81 - v23;
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v81 - v27;
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v81 - v30;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_1BFAAE468())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6A0, &qword_1BFAB13B0);
    v33 = *(v3 + 72);
    v34 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1BFAB08E0;
    (*(v3 + 104))(v35 + v34, *MEMORY[0x1E69D2E70], v2);
  }

  else
  {
    v36 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (sub_1BFAAE4A8())
    {
      (*(v3 + 104))(v31, *MEMORY[0x1E69D2E40], v2);
      sub_1BFA1F2D0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v35 = v37;
      v39 = *(v37 + 16);
      v38 = *(v37 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1BFA1F2D0(v38 > 1, v39 + 1, 1, v37);
        v35 = v66;
      }

      *(v35 + 16) = v39 + 1;
      (*(v3 + 32))(v35 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v39, v31, v2);
    }

    else
    {
      v35 = MEMORY[0x1E69E7CC0];
    }

    v40 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (sub_1BFAAE498())
    {
      (*(v3 + 104))(v28, *MEMORY[0x1E69D2E30], v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BFA1F2D0(0, *(v35 + 16) + 1, 1, v35);
        v35 = v67;
      }

      v42 = *(v35 + 16);
      v41 = *(v35 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1BFA1F2D0(v41 > 1, v42 + 1, 1, v35);
        v35 = v68;
      }

      *(v35 + 16) = v42 + 1;
      (*(v3 + 32))(v35 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v42, v28, v2);
    }

    v43 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (sub_1BFAAE4E8())
    {
      (*(v3 + 104))(v24, *MEMORY[0x1E69D2E58], v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BFA1F2D0(0, *(v35 + 16) + 1, 1, v35);
        v35 = v69;
      }

      v45 = *(v35 + 16);
      v44 = *(v35 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1BFA1F2D0(v44 > 1, v45 + 1, 1, v35);
        v35 = v70;
      }

      *(v35 + 16) = v45 + 1;
      (*(v3 + 32))(v35 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v45, v24, v2);
    }

    v46 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (sub_1BFAAE4F8())
    {
      (*(v3 + 104))(v20, *MEMORY[0x1E69D2E60], v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BFA1F2D0(0, *(v35 + 16) + 1, 1, v35);
        v35 = v71;
      }

      v48 = *(v35 + 16);
      v47 = *(v35 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1BFA1F2D0(v47 > 1, v48 + 1, 1, v35);
        v35 = v72;
      }

      *(v35 + 16) = v48 + 1;
      (*(v3 + 32))(v35 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v48, v20, v2);
    }

    v49 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (sub_1BFAAE508())
    {
      v50 = v81;
      (*(v3 + 104))(v81, *MEMORY[0x1E69D2E68], v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BFA1F2D0(0, *(v35 + 16) + 1, 1, v35);
        v35 = v73;
      }

      v52 = *(v35 + 16);
      v51 = *(v35 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1BFA1F2D0(v51 > 1, v52 + 1, 1, v35);
        v35 = v74;
      }

      *(v35 + 16) = v52 + 1;
      (*(v3 + 32))(v35 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v52, v50, v2);
    }

    v53 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (sub_1BFAAE4C8())
    {
      v54 = v82;
      (*(v3 + 104))(v82, *MEMORY[0x1E69D2E50], v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BFA1F2D0(0, *(v35 + 16) + 1, 1, v35);
        v35 = v75;
      }

      v56 = *(v35 + 16);
      v55 = *(v35 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1BFA1F2D0(v55 > 1, v56 + 1, 1, v35);
        v35 = v76;
      }

      *(v35 + 16) = v56 + 1;
      (*(v3 + 32))(v35 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v56, v54, v2);
    }

    v57 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (sub_1BFAAE4B8())
    {
      v58 = v83;
      (*(v3 + 104))(v83, *MEMORY[0x1E69D2E38], v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BFA1F2D0(0, *(v35 + 16) + 1, 1, v35);
        v35 = v77;
      }

      v60 = *(v35 + 16);
      v59 = *(v35 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_1BFA1F2D0(v59 > 1, v60 + 1, 1, v35);
        v35 = v78;
      }

      *(v35 + 16) = v60 + 1;
      (*(v3 + 32))(v35 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v60, v58, v2);
    }

    v61 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (sub_1BFAAE4D8())
    {
      v62 = v84;
      (*(v3 + 104))(v84, *MEMORY[0x1E69D2E48], v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BFA1F2D0(0, *(v35 + 16) + 1, 1, v35);
        v35 = v79;
      }

      v64 = *(v35 + 16);
      v63 = *(v35 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_1BFA1F2D0(v63 > 1, v64 + 1, 1, v35);
        v35 = v80;
      }

      *(v35 + 16) = v64 + 1;
      (*(v3 + 32))(v35 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v64, v62, v2);
    }
  }

  return v35;
}

uint64_t sub_1BFA1B054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_1BFAAF688();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB698, &qword_1BFAB1A50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v43 - v11;
  v13 = sub_1BFAAE888();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13, v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v43 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v43 - v25;
  sub_1BF9FB4F4(a1, v12, &qword_1EBDFB698, &qword_1BFAB1A50);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1BFA007F8(v12, &qword_1EBDFB698, &qword_1BFAB1A50);
    sub_1BFAAF228();
    v27 = sub_1BFAAF668();
    v28 = sub_1BFAAFB68();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1BF9F6000, v27, v28, "[warning] Don't have a response mode. Setting to unknown", v29, 2u);
      MEMORY[0x1BFB618C0](v29, -1, -1);
    }

    (*(v44 + 8))(v7, v45);
    v30 = MEMORY[0x1E69D2D38];
    goto LABEL_11;
  }

  (*(v14 + 32))(v26, v12, v13);
  (*(v14 + 16))(v23, v26, v13);
  sub_1BFAAE868();
  sub_1BFA1B80C(&qword_1EDCC6F70, MEMORY[0x1E69D3550]);
  v31 = sub_1BFAAF848();
  v32 = *(v14 + 8);
  v32(v19, v13);
  if (v31)
  {
    v32(v23, v13);
    v32(v26, v13);
    v30 = MEMORY[0x1E69D2D30];
LABEL_11:
    v35 = *v30;
    v36 = sub_1BFAAEA78();
    v37 = *(*(v36 - 8) + 104);
    v38 = v46;
    v39 = v35;
    return v37(v38, v39, v36);
  }

  sub_1BFAAE848();
  v33 = sub_1BFAAF848();
  v32(v19, v13);
  if (v33)
  {
    v32(v23, v13);
    v32(v26, v13);
    v30 = MEMORY[0x1E69D2D20];
    goto LABEL_11;
  }

  sub_1BFAAE858();
  v34 = sub_1BFAAF848();
  v32(v19, v13);
  if (v34)
  {
    v32(v23, v13);
    v32(v26, v13);
    v30 = MEMORY[0x1E69D2D28];
    goto LABEL_11;
  }

  sub_1BFAAE878();
  v41 = sub_1BFAAF848();
  v32(v19, v13);
  v32(v23, v13);
  v32(v26, v13);
  v36 = sub_1BFAAEA78();
  v37 = *(*(v36 - 8) + 104);
  if (v41)
  {
    v42 = MEMORY[0x1E69D2D40];
  }

  else
  {
    v42 = MEMORY[0x1E69D2D38];
  }

  v39 = *v42;
  v38 = v46;
  return v37(v38, v39, v36);
}

uint64_t sub_1BFA1B5D0(size_t *a1)
{
  v2 = *(type metadata accessor for SiriSuggestions.Suggestion(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BFA2FE30(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1BFA1B9F0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1BFA1B678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t sub_1BFA1B770(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB6B8, &qword_1BFAB13E0);
    sub_1BFA1B80C(a2, MEMORY[0x1E69D2F70]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BFA1B80C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BFA1B854()
{
  result = qword_1EDCC7120[0];
  if (!qword_1EDCC7120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCC7120);
  }

  return result;
}

uint64_t sub_1BFA1B8A8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFB6C0, &unk_1BFAB13F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BFA1B920()
{
  result = qword_1EDCC7450;
  if (!qword_1EDCC7450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7450);
  }

  return result;
}

unint64_t sub_1BFA1B974()
{
  result = qword_1EDCC7458;
  if (!qword_1EDCC7458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7458);
  }

  return result;
}

uint64_t sub_1BFA1B9C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BFA006A8(a1, a2);
  }

  return a1;
}

uint64_t sub_1BFA1B9DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BF9FDC2C(a1, a2);
  }

  return a1;
}

uint64_t sub_1BFA1B9F0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BFAAFEC8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for SiriSuggestions.Suggestion(0);
        v6 = sub_1BFAAFA28();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SiriSuggestions.Suggestion(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1BFA1BD1C(v8, v9, a1, v4);
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
    return sub_1BFA1BB20(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BFA1BB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v33 - v15;
  result = MEMORY[0x1EEE9AC00](v14, v17);
  v21 = &v33 - v20;
  v35 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v25 = -v23;
    v26 = a1 - a3;
    v40 = v22;
    v34 = v23;
    v27 = v22 + v23 * a3;
    while (2)
    {
      v38 = v24;
      v39 = a3;
      v36 = v27;
      v37 = v26;
      do
      {
        sub_1BFA1C998(v27, v21);
        sub_1BFA1C998(v24, v16);
        v28 = *(v8 + 44);
        v29 = *&v21[v28];
        v30 = *&v16[v28];
        sub_1BFA1C9FC(v16);
        result = sub_1BFA1C9FC(v21);
        if (v29 >= v30)
        {
          break;
        }

        if (!v40)
        {
          __break(1u);
          return result;
        }

        v31 = v41;
        sub_1BFA1CA58(v27, v41);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1BFA1CA58(v31, v24);
        v24 += v25;
        v27 += v25;
      }

      while (!__CFADD__(v26++, 1));
      a3 = v39 + 1;
      v24 = v38 + v34;
      v26 = v37 - 1;
      v27 = v36 + v34;
      if (v39 + 1 != v35)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BFA1BD1C(int64_t *a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = v4;
  v110 = a1;
  v8 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v118 = *(v8 - 8);
  v9 = *(v118 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v114 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v123 = &v108 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v108 - v18;
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v108 - v22;
  v120 = a3;
  v24 = *(a3 + 8);
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_101:
    a3 = *v110;
    if (!*v110)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v104 = (v26 + 16);
      v103 = *(v26 + 16);
      for (i = v26; v103 >= 2; v26 = i)
      {
        if (!*v120)
        {
          goto LABEL_139;
        }

        v105 = (v26 + 16 * v103);
        v26 = *v105;
        v106 = &v104[2 * v103];
        v107 = v106[1];
        sub_1BFA1C55C(*v120 + *(v118 + 72) * *v105, *v120 + *(v118 + 72) * *v106, *v120 + *(v118 + 72) * v107, a3);
        if (v5)
        {
          break;
        }

        if (v107 < v26)
        {
          goto LABEL_127;
        }

        if (v103 - 2 >= *v104)
        {
          goto LABEL_128;
        }

        *v105 = v26;
        v105[1] = v107;
        if (*v104 < v103)
        {
          goto LABEL_129;
        }

        v103 = *v104 - 1;
        sub_1BFA2FE80(v106 + 2);
        *v104 = v103;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v26 = sub_1BFA2FC4C(v26);
    goto LABEL_103;
  }

  v124 = v21;
  v108 = a4;
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v115 = &v108 - v22;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    v111 = v25;
    if (v25 + 1 < v24)
    {
      i = v26;
      v122 = v25 + 1;
      v109 = v5;
      a3 = *v120;
      v29 = *(v118 + 72);
      v30 = v25;
      v31 = *v120 + v29 * v28;
      v117 = v24;
      sub_1BFA1C998(v31, v23);
      sub_1BFA1C998(a3 + v29 * v30, v19);
      v32 = *(v124 + 44);
      v116 = *&v23[v32];
      v33 = *&v19[v32];
      sub_1BFA1C9FC(v19);
      sub_1BFA1C9FC(v23);
      v34 = v117;
      v35 = v30 + 2;
      v119 = v29;
      v36 = a3 + v29 * (v30 + 2);
      while (1)
      {
        v5 = v35;
        if (++v122 >= v34)
        {
          break;
        }

        a3 = v116 < v33;
        sub_1BFA1C998(v36, v23);
        sub_1BFA1C998(v31, v19);
        v37 = *(v124 + 44);
        v38 = *&v23[v37];
        v39 = *&v19[v37];
        sub_1BFA1C9FC(v19);
        sub_1BFA1C9FC(v23);
        v34 = v117;
        v36 += v119;
        v31 += v119;
        v35 = v5 + 1;
        if (((a3 ^ (v38 >= v39)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v122 = v34;
LABEL_9:
      if (v116 < v33)
      {
        v26 = i;
        v28 = v122;
        v27 = v111;
        if (v122 < v111)
        {
          goto LABEL_133;
        }

        if (v111 >= v122)
        {
          v5 = v109;
          goto LABEL_30;
        }

        if (v34 >= v5)
        {
          v40 = v5;
        }

        else
        {
          v40 = v34;
        }

        v41 = v111;
        v42 = v119 * (v40 - 1);
        v43 = v119 * v40;
        v44 = v111 * v119;
        do
        {
          if (v41 != --v28)
          {
            a3 = *v120;
            if (!*v120)
            {
              goto LABEL_140;
            }

            sub_1BFA1CA58(a3 + v44, v114);
            v45 = v44 < v42 || a3 + v44 >= a3 + v43;
            if (v45)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v44 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1BFA1CA58(v114, a3 + v42);
          }

          ++v41;
          v42 -= v119;
          v43 -= v119;
          v44 += v119;
        }

        while (v41 < v28);
      }

      v5 = v109;
      v26 = i;
      v28 = v122;
      v27 = v111;
    }

LABEL_30:
    v46 = v120[1];
    if (v28 < v46)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_132;
      }

      if (v28 - v27 < v108)
      {
        break;
      }
    }

LABEL_48:
    if (v28 < v27)
    {
      goto LABEL_131;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v122 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v100 = *(v26 + 16);
      sub_1BFA1F1DC();
      v26 = v101;
    }

    a3 = *(v26 + 16);
    v60 = a3 + 1;
    if (a3 >= *(v26 + 24) >> 1)
    {
      sub_1BFA1F1DC();
      v26 = v102;
    }

    *(v26 + 16) = v60;
    v61 = v26 + 32;
    v62 = (v26 + 32 + 16 * a3);
    v63 = v122;
    *v62 = v111;
    v62[1] = v63;
    v119 = *v110;
    if (!v119)
    {
      goto LABEL_141;
    }

    if (a3)
    {
      i = v26;
      while (1)
      {
        v64 = v60 - 1;
        v65 = (v61 + 16 * (v60 - 1));
        v66 = (v26 + 16 * v60);
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v67 = *(v26 + 32);
          v68 = *(v26 + 40);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_69:
          if (v70)
          {
            goto LABEL_118;
          }

          v82 = *v66;
          v81 = v66[1];
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_121;
          }

          v86 = v65[1];
          v87 = v86 - *v65;
          if (__OFSUB__(v86, *v65))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v84, v87))
          {
            goto LABEL_126;
          }

          if (v84 + v87 >= v69)
          {
            if (v69 < v87)
            {
              v64 = v60 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v60 < 2)
        {
          goto LABEL_120;
        }

        v89 = *v66;
        v88 = v66[1];
        v77 = __OFSUB__(v88, v89);
        v84 = v88 - v89;
        v85 = v77;
LABEL_84:
        if (v85)
        {
          goto LABEL_123;
        }

        v91 = *v65;
        v90 = v65[1];
        v77 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v77)
        {
          goto LABEL_125;
        }

        if (v92 < v84)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v64 - 1 >= v60)
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

        if (!*v120)
        {
          goto LABEL_138;
        }

        v96 = (v61 + 16 * (v64 - 1));
        v97 = *v96;
        a3 = v64;
        v98 = (v61 + 16 * v64);
        v26 = v98[1];
        sub_1BFA1C55C(*v120 + *(v118 + 72) * *v96, *v120 + *(v118 + 72) * *v98, *v120 + *(v118 + 72) * v26, v119);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v26 < v97)
        {
          goto LABEL_113;
        }

        v5 = *(i + 16);
        if (a3 > v5)
        {
          goto LABEL_114;
        }

        *v96 = v97;
        v96[1] = v26;
        if (a3 >= v5)
        {
          goto LABEL_115;
        }

        v60 = v5 - 1;
        sub_1BFA2FE80(v98 + 2);
        v26 = i;
        *(i + 16) = v5 - 1;
        v99 = v5 > 2;
        v5 = 0;
        v23 = v115;
        if (!v99)
        {
          goto LABEL_98;
        }
      }

      v71 = v61 + 16 * v60;
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_116;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_117;
      }

      v78 = v66[1];
      v79 = v78 - *v66;
      if (__OFSUB__(v78, *v66))
      {
        goto LABEL_119;
      }

      v77 = __OFADD__(v69, v79);
      v80 = v69 + v79;
      if (v77)
      {
        goto LABEL_122;
      }

      if (v80 >= v74)
      {
        v94 = *v65;
        v93 = v65[1];
        v77 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v77)
        {
          goto LABEL_130;
        }

        if (v69 < v95)
        {
          v64 = v60 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v24 = v120[1];
    v25 = v122;
    if (v122 >= v24)
    {
      goto LABEL_101;
    }
  }

  v47 = v27 + v108;
  if (__OFADD__(v27, v108))
  {
    goto LABEL_134;
  }

  if (v47 >= v46)
  {
    v47 = v120[1];
  }

  if (v47 < v27)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v28 == v47)
  {
    goto LABEL_48;
  }

  i = v26;
  v109 = v5;
  v48 = *v120;
  v49 = *(v118 + 72);
  v50 = *v120 + v49 * (v28 - 1);
  v51 = -v49;
  v52 = v27 - v28;
  v112 = v49;
  v113 = v47;
  v53 = v48 + v28 * v49;
  a3 = v124;
LABEL_39:
  v122 = v28;
  v116 = v53;
  v117 = v52;
  v119 = v50;
  v54 = v50;
  while (1)
  {
    sub_1BFA1C998(v53, v23);
    sub_1BFA1C998(v54, v19);
    v55 = *(a3 + 44);
    v56 = *&v23[v55];
    v57 = *&v19[v55];
    sub_1BFA1C9FC(v19);
    sub_1BFA1C9FC(v23);
    if (v56 >= v57)
    {
      a3 = v124;
LABEL_46:
      v28 = v122 + 1;
      v50 = v119 + v112;
      v52 = v117 - 1;
      v53 = v116 + v112;
      if (v122 + 1 == v113)
      {
        v28 = v113;
        v5 = v109;
        v26 = i;
        v27 = v111;
        goto LABEL_48;
      }

      goto LABEL_39;
    }

    if (!v48)
    {
      break;
    }

    v58 = v123;
    sub_1BFA1CA58(v53, v123);
    a3 = v124;
    swift_arrayInitWithTakeFrontToBack();
    sub_1BFA1CA58(v58, v54);
    v54 += v51;
    v53 += v51;
    v45 = __CFADD__(v52++, 1);
    if (v45)
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

uint64_t sub_1BFA1C55C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = type metadata accessor for SiriSuggestions.Suggestion(0);
  v8 = *(*(v61 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v61, v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = &v53 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_62;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_63;
  }

  v23 = v19 / v18;
  v64 = a1;
  v63 = a4;
  v24 = v21 / v18;
  v59 = a1;
  if (v19 / v18 < v21 / v18)
  {
    sub_1BFA2D8D4(v59, v19 / v18, a4);
    v25 = v59;
    v60 = a4 + v23 * v18;
    v62 = v60;
    v26 = a2;
    while (1)
    {
      if (a4 >= v60 || v26 >= a3)
      {
        goto LABEL_60;
      }

      v28 = a3;
      v29 = v25;
      sub_1BFA1C998(v26, v16);
      sub_1BFA1C998(a4, v12);
      v30 = *(v61 + 44);
      v31 = *&v16[v30];
      v32 = v26;
      v33 = *&v12[v30];
      sub_1BFA1C9FC(v12);
      sub_1BFA1C9FC(v16);
      if (v31 >= v33)
      {
        break;
      }

      v26 = v32 + v18;
      if (v29 < v32 || v29 >= v26)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v36 = v29;
        if (v29 == v32)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v36 = v29;
LABEL_36:
      v25 = v36 + v18;
      v64 = v25;
      a3 = v28;
    }

    v26 = v32;
    if (v29 < a4 || v29 >= a4 + v18)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v36 = v29;
      if (v29 == a4)
      {
LABEL_35:
        v63 = a4 + v18;
        a4 += v18;
        goto LABEL_36;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v36 = v29;
    goto LABEL_35;
  }

  sub_1BFA2D8D4(a2, v21 / v18, a4);
  v37 = a4 + v24 * v18;
  v38 = -v18;
  v39 = v37;
  v57 = -v18;
  v58 = a4;
  v55 = v12;
  v56 = v16;
LABEL_38:
  v60 = a2 + v38;
  v40 = a3;
  v53 = v39;
  while (1)
  {
    if (v37 <= a4)
    {
      v64 = a2;
      v62 = v39;
      goto LABEL_60;
    }

    if (a2 <= v59)
    {
      break;
    }

    v54 = v39;
    a3 = v40 + v38;
    v41 = v37 + v38;
    v42 = v37;
    v43 = v40;
    sub_1BFA1C998(v37 + v38, v16);
    sub_1BFA1C998(v60, v12);
    v44 = *(v61 + 44);
    v45 = *&v16[v44];
    v46 = v12;
    v47 = *&v12[v44];
    sub_1BFA1C9FC(v46);
    sub_1BFA1C9FC(v16);
    if (v45 < v47)
    {
      if (v43 < a2 || a3 >= a2)
      {
        v50 = v60;
        swift_arrayInitWithTakeFrontToBack();
        v39 = v54;
        v12 = v55;
        v38 = v57;
        a4 = v58;
        v16 = v56;
        a2 = v50;
        v37 = v42;
      }

      else
      {
        v12 = v55;
        v39 = v54;
        v20 = v43 == a2;
        v51 = v60;
        a2 = v60;
        v38 = v57;
        a4 = v58;
        v16 = v56;
        v37 = v42;
        if (!v20)
        {
          v52 = v54;
          swift_arrayInitWithTakeBackToFront();
          v37 = v42;
          a2 = v51;
          v39 = v52;
        }
      }

      goto LABEL_38;
    }

    if (v43 < v42 || a3 >= v42)
    {
      swift_arrayInitWithTakeFrontToBack();
      v40 = a3;
      v37 = v41;
      v39 = v41;
      v12 = v55;
      v16 = v56;
      v38 = v57;
      a4 = v58;
    }

    else
    {
      v39 = v41;
      v20 = v42 == v43;
      v40 = a3;
      v37 = v41;
      v12 = v55;
      v16 = v56;
      v38 = v57;
      a4 = v58;
      if (!v20)
      {
        swift_arrayInitWithTakeBackToFront();
        v40 = a3;
        v37 = v41;
        v39 = v41;
      }
    }
  }

  v64 = a2;
  v62 = v53;
LABEL_60:
  sub_1BFA2FC60(&v64, &v63, &v62);
  return 1;
}

uint64_t sub_1BFA1C998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.Suggestion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFA1C9FC(uint64_t a1)
{
  v2 = type metadata accessor for SiriSuggestions.Suggestion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BFA1CA58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.Suggestion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_7_1()
{
  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[36];
  v6 = v0[37];
  v8 = v0[35];
  v9 = v0[32];
}

uint64_t sub_1BFA1CAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1BFA17D30(a1, v17);
    v6 = v18;
    v7 = v19;
    v8 = v20;
    __swift_mutable_project_boxed_opaque_existential_1Tm(v17, v18);
    OUTLINED_FUNCTION_22();
    v10 = *(v9 + 64);
    MEMORY[0x1EEE9AC00](v11, v12);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14);
    sub_1BFA2068C(v14, a2, a3, v3, v6, v7, v8);
    __swift_destroy_boxed_opaque_existential_2Tm(v17);
  }

  else
  {
    sub_1BFA20F44(a1, qword_1EBDFB778, &unk_1BFAB1540);
    sub_1BFA20448(a2, a3, v17);

    return sub_1BFA20F44(v17, qword_1EBDFB778, &unk_1BFAB1540);
  }
}

uint64_t sub_1BFA1CC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB738, &qword_1BFAB1500);
  v9 = OUTLINED_FUNCTION_60_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v26 - v13;
  v15 = sub_1BFAAE748();
  OUTLINED_FUNCTION_22();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v15) == 1)
  {
    sub_1BFA20F44(a1, &qword_1EBDFB738, &qword_1BFAB1500);
    sub_1BFA20544(a2, a3, v14);

    return sub_1BFA20F44(v14, &qword_1EBDFB738, &qword_1BFAB1500);
  }

  else
  {
    (*(v17 + 32))(v23, a1, v15);
    v25 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v27 = *v4;
    sub_1BFA265D0(v23, a2);

    *v4 = v27;
  }

  return result;
}

uint64_t SiriSuggestionsFacade.submitConversationContinuer(for:inIntent:)()
{
  OUTLINED_FUNCTION_40();
  v1[3] = v2;
  v1[4] = v0;
  v4 = OUTLINED_FUNCTION_39_1(v3);
  OUTLINED_FUNCTION_60_0(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_100();
  v7 = sub_1BFAAEB68();
  v1[6] = v7;
  OUTLINED_FUNCTION_15(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_100();
  v11 = sub_1BFAAEB98();
  v1[9] = v11;
  OUTLINED_FUNCTION_15(v11);
  v1[10] = v12;
  v14 = *(v13 + 64);
  v1[11] = OUTLINED_FUNCTION_100();
  v15 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1BFA1CF1C()
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_58();
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];
  *v3 = v10;
  (*(v2 + 104))(v3, *MEMORY[0x1E69D2DD0], v4);
  v11 = v10;
  sub_1BFAAEB78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
  sub_1BFAAF7D8();
  sub_1BFAAEB38();
  v12 = v9[5];
  v13 = v9[6];
  OUTLINED_FUNCTION_38_1(v9 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6C8, &qword_1BFAB1420);
  v14 = *(v7 + 72);
  v15 = *(v7 + 80);
  v16 = OUTLINED_FUNCTION_37_0();
  v0[12] = v16;
  *(v16 + 16) = xmmword_1BFAB08E0;
  (*(v7 + 16))(v16 + v1, v5, v6);
  v17 = swift_task_alloc();
  v0[13] = v17;
  v18 = *(*(v13 + 16) + 8);
  *v17 = v0;
  OUTLINED_FUNCTION_4_3(v17);
  OUTLINED_FUNCTION_29_1();

  return sub_1BFA11398();
}

uint64_t sub_1BFA1D094()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_37();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *(v4 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v9 + 112) = v0;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA1D1AC()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  v0 = OUTLINED_FUNCTION_1_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_7_2();
  v3(v2);

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_112();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1BFA1D23C()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  v1 = OUTLINED_FUNCTION_1_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_7_2();
  v4(v3);

  OUTLINED_FUNCTION_85();
  v5 = *(v0 + 112);
  OUTLINED_FUNCTION_112();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t SiriSuggestionsFacade.submitConversationContinuer(for:tool:)()
{
  OUTLINED_FUNCTION_40();
  v1[3] = v2;
  v1[4] = v0;
  v4 = OUTLINED_FUNCTION_39_1(v3);
  OUTLINED_FUNCTION_60_0(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_100();
  v7 = sub_1BFAAEB68();
  v1[6] = v7;
  OUTLINED_FUNCTION_15(v7);
  v1[7] = v8;
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_100();
  v11 = sub_1BFAAEB98();
  v1[9] = v11;
  OUTLINED_FUNCTION_15(v11);
  v1[10] = v12;
  v14 = *(v13 + 64);
  v1[11] = OUTLINED_FUNCTION_100();
  v15 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1BFA1D3DC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  v10 = sub_1BFAAF758();
  OUTLINED_FUNCTION_14(v10);
  (*(v11 + 16))(v1, v9);
  v12 = *MEMORY[0x1E69D2E10];
  v13 = sub_1BFAAEBA8();
  OUTLINED_FUNCTION_14(v13);
  (*(v14 + 104))(v1, v12);
  (*(v2 + 104))(v1, *MEMORY[0x1E69D2DD8], v4);
  sub_1BFAAEB78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
  sub_1BFAAF7D8();
  sub_1BFAAEB38();
  v15 = *(v8 + 5);
  v16 = *(v8 + 6);
  OUTLINED_FUNCTION_38_1(v8 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6C8, &qword_1BFAB1420);
  v17 = *(v6 + 72);
  v18 = *(v6 + 80);
  v19 = OUTLINED_FUNCTION_37_0();
  v0[12] = v19;
  *(v19 + 16) = xmmword_1BFAB08E0;
  (*(v6 + 16))(&v8[v19], v3, v5);
  v20 = swift_task_alloc();
  v0[13] = v20;
  v21 = *(*(v16 + 16) + 8);
  *v20 = v0;
  OUTLINED_FUNCTION_4_3(v20);

  return sub_1BFA11398();
}

uint64_t SiriSuggestionsFacade.submitConversationContinuer(for:lnAction:appId:)()
{
  OUTLINED_FUNCTION_40();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v6 = OUTLINED_FUNCTION_39_1(v5);
  OUTLINED_FUNCTION_60_0(v6);
  v8 = *(v7 + 64);
  v1[7] = OUTLINED_FUNCTION_100();
  v9 = sub_1BFAAEB68();
  v1[8] = v9;
  OUTLINED_FUNCTION_15(v9);
  v1[9] = v10;
  v12 = *(v11 + 64);
  v1[10] = OUTLINED_FUNCTION_100();
  v13 = sub_1BFAAEB98();
  v1[11] = v13;
  OUTLINED_FUNCTION_15(v13);
  v1[12] = v14;
  v16 = *(v15 + 64);
  v1[13] = OUTLINED_FUNCTION_100();
  v17 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1BFA1D6E8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  v22 = v0[10];
  v23 = v0[8];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[3];
  *v1 = v9;
  v1[1] = v7;
  v1[2] = v8;
  v10 = *MEMORY[0x1E69D2E08];
  v11 = sub_1BFAAEBA8();
  OUTLINED_FUNCTION_14(v11);
  (*(v12 + 104))(v1, v10);
  (*(v2 + 104))(v1, *MEMORY[0x1E69D2DD8], v3);
  v13 = v9;

  sub_1BFAAEB78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
  sub_1BFAAF7D8();
  sub_1BFAAEB38();
  v15 = v6[5];
  v14 = v6[6];
  OUTLINED_FUNCTION_38_1(v6 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6C8, &qword_1BFAB1420);
  v16 = *(v4 + 72);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v18 = swift_allocObject();
  v0[14] = v18;
  *(v18 + 16) = xmmword_1BFAB08E0;
  (*(v4 + 16))(v18 + v17, v22, v23);
  v19 = swift_task_alloc();
  v0[15] = v19;
  v20 = *(*(v14 + 16) + 8);
  *v19 = v0;
  OUTLINED_FUNCTION_4_3(v19);

  return sub_1BFA11398();
}

uint64_t sub_1BFA1D8E4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_37();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *(v4 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v9 + 128) = v0;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA1D9FC()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  v0 = OUTLINED_FUNCTION_27_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_7_2();
  v3(v2);

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_112();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1BFA1DA8C()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  v1 = OUTLINED_FUNCTION_27_2();
  v2(v1);
  v3 = OUTLINED_FUNCTION_7_2();
  v4(v3);

  OUTLINED_FUNCTION_85();
  v5 = *(v0 + 128);
  OUTLINED_FUNCTION_112();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t SiriSuggestionsFacade.submitConversationContinuer(for:suggestionId:suggestionParameters:appId:)()
{
  OUTLINED_FUNCTION_40();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v8 = OUTLINED_FUNCTION_39_1(v7);
  OUTLINED_FUNCTION_60_0(v8);
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_100();
  v11 = sub_1BFAAEB68();
  v1[10] = v11;
  OUTLINED_FUNCTION_15(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_100();
  v15 = sub_1BFAAF178();
  v1[13] = v15;
  OUTLINED_FUNCTION_15(v15);
  v1[14] = v16;
  v18 = *(v17 + 64);
  v1[15] = OUTLINED_FUNCTION_100();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6D0, &qword_1BFAB1440);
  OUTLINED_FUNCTION_60_0(v19);
  v21 = *(v20 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v22 = sub_1BFAAEB98();
  v1[18] = v22;
  OUTLINED_FUNCTION_15(v22);
  v1[19] = v23;
  v25 = *(v24 + 64);
  v1[20] = OUTLINED_FUNCTION_100();
  v26 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v26, v27, v28);
}

uint64_t sub_1BFA1DCC0()
{
  if (v0[7])
  {
    v1 = v0[17];
    v3 = v0[14];
    v2 = v0[15];
    v4 = v0[13];
    v5 = v0[6];
    (*(v3 + 104))(v2, *MEMORY[0x1E69D31C8], v4);
    sub_1BFAAECB8();
    (*(v3 + 8))(v2, v4);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v0[19];
  v8 = v0[20];
  v9 = v0[17];
  v10 = v0[16];
  v11 = v0[11];
  v27 = v0[18];
  v28 = v0[12];
  v29 = v0[10];
  v12 = v0[8];
  v13 = v0[4];
  v14 = v0[5];
  v25 = v0[3];
  v26 = v0[9];
  v15 = sub_1BFAAECC8();
  __swift_storeEnumTagSinglePayload(v9, v6, 1, v15);
  sub_1BFA1EF80(v9, v10, &qword_1EBDFB6D0, &qword_1BFAB1440);

  sub_1BFAAF1A8();
  (*(v7 + 104))(v8, *MEMORY[0x1E69D2DE0], v27);
  sub_1BFAAEB78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
  sub_1BFAAF7D8();
  sub_1BFAAEB38();
  v16 = v12[5];
  v17 = v12[6];
  OUTLINED_FUNCTION_38_1(v12 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6C8, &qword_1BFAB1420);
  v18 = *(v11 + 72);
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = swift_allocObject();
  v0[21] = v20;
  *(v20 + 16) = xmmword_1BFAB08E0;
  (*(v11 + 16))(v20 + v19, v28, v29);
  v21 = swift_task_alloc();
  v0[22] = v21;
  v22 = *(*(v17 + 16) + 8);
  *v21 = v0;
  v21[1] = sub_1BFA1DF6C;
  v23 = v0[2];
  OUTLINED_FUNCTION_36_2();

  return sub_1BFA11398();
}

uint64_t sub_1BFA1DF6C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_37();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *(v4 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v9 + 184) = v0;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA1E084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_58();
  v14 = OUTLINED_FUNCTION_23_0();
  v15(v14);
  sub_1BFA20F44(v12, &qword_1EBDFB6D0, &qword_1BFAB1440);
  (*(v13 + 8))(v11, v10);

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_29_1();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1BFA1E14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_58();
  v15 = OUTLINED_FUNCTION_23_0();
  v16(v15);
  sub_1BFA20F44(v12, &qword_1EBDFB6D0, &qword_1BFAB1440);
  (*(v14 + 8))(v11, v10);

  OUTLINED_FUNCTION_85();
  v17 = *(v13 + 184);
  OUTLINED_FUNCTION_29_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t SiriSuggestionsFacade.submitConversationContinuer(for:customContinuer:)()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  v1[34] = v4;
  v1[35] = v0;
  v5 = sub_1BFAAEB18();
  OUTLINED_FUNCTION_60_0(v5);
  v7 = *(v6 + 64);
  v1[36] = OUTLINED_FUNCTION_100();
  v8 = sub_1BFAAEB68();
  v1[37] = v8;
  OUTLINED_FUNCTION_15(v8);
  v1[38] = v9;
  v11 = *(v10 + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6D8, &qword_1BFAB1450);
  OUTLINED_FUNCTION_60_0(v12);
  v14 = *(v13 + 64);
  v1[41] = OUTLINED_FUNCTION_100();
  v15 = sub_1BFAAF138();
  v1[42] = v15;
  OUTLINED_FUNCTION_15(v15);
  v1[43] = v16;
  v18 = *(v17 + 64);
  v1[44] = OUTLINED_FUNCTION_100();
  v19 = sub_1BFAAEB98();
  v1[45] = v19;
  OUTLINED_FUNCTION_15(v19);
  v1[46] = v20;
  v22 = *(v21 + 64);
  v1[47] = OUTLINED_FUNCTION_100();
  v23 = sub_1BFAAE208();
  v1[48] = v23;
  OUTLINED_FUNCTION_15(v23);
  v1[49] = v24;
  v26 = *(v25 + 64);
  v1[50] = OUTLINED_FUNCTION_100();
  v27 = type metadata accessor for SuggestionPhraseWithIcon();
  v1[51] = v27;
  OUTLINED_FUNCTION_15(v27);
  v1[52] = v28;
  v30 = *(v29 + 64);
  v31 = OUTLINED_FUNCTION_100();
  v32 = *v3;
  v1[53] = v31;
  v1[54] = v32;
  v33 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v33, v34, v35);
}

unint64_t sub_1BFA1E454()
{
  v1 = *(v0 + 432);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 416);
    v79 = *(v0 + 408);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v63 = (*(v0 + 392) + 8);
    v5 = *(v0 + 368);
    v73 = (v5 + 104);
    v6 = *(v0 + 344);
    v65 = (v6 + 16);
    v66 = (v6 + 32);
    v64 = (v6 + 8);
    v70 = (*(v0 + 304) + 16);
    v69 = (v5 + 8);
    v71 = *(v0 + 304);
    v7 = MEMORY[0x1E69E7CC0];
    v8 = *(v0 + 424);
    v67 = *(v3 + 72);
    v72 = *MEMORY[0x1E69D2DE0];
    v68 = v8;
    while (1)
    {
      v74 = v7;
      v75 = v4;
      v76 = v2;
      v9 = *(v0 + 424);
      sub_1BFA1EF1C(v4, v9);
      v10 = (v9 + *(v79 + 24));
      if (v10[1])
      {
        v11 = *v10;
        v12 = v10[1];
      }

      else
      {
        v13 = *(v0 + 400);
        v14 = *(v0 + 384);
        v15 = **(v0 + 424);
        v16 = *(v8 + 8);
        *(v0 + 256) = sub_1BFAAF8D8();
        *(v0 + 264) = v17;
        sub_1BFAAE1E8();
        sub_1BF9F86D0();
        v11 = sub_1BFAAFBB8();
        v12 = v18;
        (*v63)(v13, v14);
      }

      v19 = *(v0 + 424);
      v20 = *(v0 + 376);
      v21 = *(v0 + 328);
      v77 = *(v0 + 360);
      v78 = *(v0 + 336);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB578, &qword_1BFAB09D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BFAB1400;
      *(inited + 32) = 0x4965736143657375;
      *(inited + 40) = 0xE900000000000064;
      *(inited + 48) = v11;
      *(inited + 56) = v12;
      *(inited + 64) = 0xD000000000000010;
      *(inited + 72) = 0x80000001BFAB8AC0;
      v23 = *(v8 + 8);
      *(inited + 80) = *v19;
      *(inited + 88) = v23;

      sub_1BFAAF7D8();
      sub_1BFAAF1B8();
      (*v73)(v20, v72, v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
      v24 = sub_1BFAAF7D8();
      sub_1BFA1EF80(v19 + *(v79 + 20), v21, &qword_1EBDFB6D8, &qword_1BFAB1450);
      if (__swift_getEnumTagSinglePayload(v21, 1, v78) == 1)
      {
        sub_1BFA20F44(*(v0 + 328), &qword_1EBDFB6D8, &qword_1BFAB1450);
      }

      else
      {
        v25 = *(v0 + 336);
        (*v66)(*(v0 + 352), *(v0 + 328), v25);
        *(v0 + 136) = v25;
        v26 = MEMORY[0x1E69D31A8];
        v27 = sub_1BFA21080(&qword_1EBDFB6E0, MEMORY[0x1E69D31A8]);
        *(v0 + 144) = v27;
        v28 = sub_1BFA21080(&qword_1EBDFB6E8, v26);
        *(v0 + 152) = v28;
        __swift_allocate_boxed_opaque_existential_1Tm((v0 + 112));
        v29 = *v65;
        OUTLINED_FUNCTION_36_2();
        v29();
        sub_1BFA17D30((v0 + 112), (v0 + 160));
        __swift_mutable_project_boxed_opaque_existential_1Tm(v0 + 160, *(v0 + 184));
        swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 232) = v25;
        *(v0 + 240) = v27;
        *(v0 + 248) = v28;
        __swift_allocate_boxed_opaque_existential_1Tm((v0 + 208));
        OUTLINED_FUNCTION_36_2();
        v29();
        result = OUTLINED_FUNCTION_21_0();
        if (__OFADD__(v24[2], (v31 & 1) == 0))
        {
          __break(1u);
          return result;
        }

        v32 = result;
        v33 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5F8, &unk_1BFAB1190);
        if (sub_1BFAAFCD8())
        {
          v34 = OUTLINED_FUNCTION_21_0();
          if ((v33 & 1) != (v35 & 1))
          {

            return sub_1BFAAFF38();
          }

          v32 = v34;
        }

        if (v33)
        {
          v36 = (v24[7] + 48 * v32);
          __swift_destroy_boxed_opaque_existential_2Tm(v36);
          sub_1BFA17D30((v0 + 208), v36);
        }

        else
        {
          __swift_mutable_project_boxed_opaque_existential_1Tm(v0 + 208, *(v0 + 232));
          OUTLINED_FUNCTION_22();
          v38 = v37;
          v40 = *(v39 + 64);
          v41 = OUTLINED_FUNCTION_100();
          v42 = *(v38 + 16);
          OUTLINED_FUNCTION_36_2();
          v43();
          sub_1BFA20B8C(v32, 0x6974736567677573, 0xEE006E6F63496E6FLL, v41, v24);
          __swift_destroy_boxed_opaque_existential_2Tm((v0 + 208));
        }

        (*v64)(*(v0 + 352), *(v0 + 336));
        __swift_destroy_boxed_opaque_existential_2Tm((v0 + 160));
      }

      v7 = v74;
      v44 = *(v0 + 376);
      v46 = *(v0 + 312);
      v45 = *(v0 + 320);
      v48 = *(v0 + 288);
      v47 = *(v0 + 296);
      sub_1BFAAEB78();
      sub_1BFAAEB38();
      (*v70)(v46, v45, v47);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BFA1F7D8(0, *(v74 + 16) + 1, 1, v74, sub_1BFAA6A54, MEMORY[0x1E69D2DC0], sub_1BFA2D91C);
        v7 = v56;
      }

      v50 = *(v7 + 16);
      v49 = *(v7 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1BFA1F7D8(v49 > 1, v50 + 1, 1, v7, sub_1BFAA6A54, MEMORY[0x1E69D2DC0], sub_1BFA2D91C);
        v7 = v57;
      }

      v51 = *(v0 + 424);
      v52 = *(v0 + 376);
      v53 = *(v0 + 360);
      v54 = *(v0 + 312);
      v55 = *(v0 + 296);
      (*(v71 + 8))(*(v0 + 320), v55);
      (*v69)(v52, v53);
      *(v7 + 16) = v50 + 1;
      (*(v71 + 32))(v7 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v50, v54, v55);
      sub_1BFA1F310(v51);
      v8 = v68;
      v4 = v75 + v67;
      v2 = v76 - 1;
      if (v76 == 1)
      {
        goto LABEL_23;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_23:
  *(v0 + 440) = v7;
  v58 = *(v0 + 280);
  v59 = v58[6];
  __swift_project_boxed_opaque_existential_1(v58 + 2, v58[5]);
  v60 = swift_task_alloc();
  *(v0 + 448) = v60;
  v61 = *(*(v59 + 16) + 8);
  *v60 = v0;
  v60[1] = sub_1BFA1EC88;
  v62 = *(v0 + 272);

  return sub_1BFA11398();
}

uint64_t sub_1BFA1EC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_42();
  v13 = v12;
  OUTLINED_FUNCTION_37();
  *v14 = v13;
  v16 = *(v15 + 448);
  v17 = *v11;
  OUTLINED_FUNCTION_8();
  *v18 = v17;
  v13[57] = v10;

  if (v10)
  {
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_29_1();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

  else
  {
    v23 = v13[55];
    v24 = v13[53];
    v25 = v13[50];
    v26 = v13[47];
    v27 = v13[44];
    v29 = v13[40];
    v28 = v13[41];
    v30 = v13[39];
    v31 = v13[36];

    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_29_1();

    return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
  }
}

uint64_t sub_1BFA1EE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_0();
  OUTLINED_FUNCTION_58();
  v11 = v10[55];
  v12 = v10[53];
  v13 = v10[50];
  v14 = v10[47];
  v15 = v10[44];
  v17 = v10[40];
  v16 = v10[41];
  v18 = v10[39];
  v19 = v10[36];

  OUTLINED_FUNCTION_85();
  v20 = v10[57];
  OUTLINED_FUNCTION_29_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t type metadata accessor for SuggestionPhraseWithIcon()
{
  result = qword_1EBDFB6F0;
  if (!qword_1EBDFB6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BFA1EF1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestionPhraseWithIcon();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFA1EF80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t SuggestionPhraseWithIcon.init(suggestionPhrase:icon:continuerId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for SuggestionPhraseWithIcon();
  result = sub_1BFA20CD8(a3, a6 + *(v10 + 20));
  v12 = (a6 + *(v10 + 24));
  *v12 = a4;
  v12[1] = a5;
  return result;
}

void sub_1BFA1F044()
{
  OUTLINED_FUNCTION_22_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB718, "ʒ");
      v8 = OUTLINED_FUNCTION_34_0();
      OUTLINED_FUNCTION_17_0(v8);
      OUTLINED_FUNCTION_24_3(v9 / 40);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_5_0();
        sub_1BFA2D8AC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB720, &unk_1BFAB3750);
    OUTLINED_FUNCTION_18_1();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_3_3();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BFA1F110()
{
  OUTLINED_FUNCTION_22_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB728, &unk_1BFAB14F0);
      v8 = OUTLINED_FUNCTION_34_0();
      OUTLINED_FUNCTION_17_0(v8);
      OUTLINED_FUNCTION_24_3(v9 / 40);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_5_0();
        sub_1BFA2D8AC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB730, &qword_1BFAB3760);
    OUTLINED_FUNCTION_18_1();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_3_3();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BFA1F1DC()
{
  OUTLINED_FUNCTION_22_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_1();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB770, &unk_1BFAB1F00);
      v9 = OUTLINED_FUNCTION_33_1();
      v10 = _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_11_0(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_5_0();
        sub_1BFA2FE80(v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy((v9 + 32), (v0 + 32), 16 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_3_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1BFA1F310(uint64_t a1)
{
  v2 = type metadata accessor for SuggestionPhraseWithIcon();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BFA1F36C()
{
  OUTLINED_FUNCTION_22_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB760, &qword_1BFAB1528);
      v8 = OUTLINED_FUNCTION_33_1();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_11_0(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_5_0();
        sub_1BFA025E4(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB768, &unk_1BFAB1530);
    OUTLINED_FUNCTION_18_1();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_3_3();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BFA1F42C()
{
  OUTLINED_FUNCTION_22_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB750, &unk_1BFAB2660);
      v8 = OUTLINED_FUNCTION_34_0();
      OUTLINED_FUNCTION_17_0(v8);
      OUTLINED_FUNCTION_24_3(v9 / 48);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_5_0();
        sub_1BFA2D934(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_18_1();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_3_3();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BFA1F4E8()
{
  OUTLINED_FUNCTION_22_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB758, &qword_1BFAB1520);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_17_0(v8);
      OUTLINED_FUNCTION_24_3(v9 / 32);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_5_0();
        sub_1BFA2D95C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_18_1();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_3_3();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BFA1F5A8()
{
  OUTLINED_FUNCTION_22_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_6_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB748, &unk_1BFAB1510);
      v8 = OUTLINED_FUNCTION_33_1();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_11_0(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_5_0();
        sub_1BFA025E4(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_18_1();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_3_3();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BFA1F7D8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    OUTLINED_FUNCTION_2_1();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_20_0();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_3();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

unint64_t sub_1BFA1F8CC(char a1)
{
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x1BFB611E0](a1 & 1);
  v2 = sub_1BFAAFFE8();

  return sub_1BFA1FBD8(a1 & 1, v2);
}

unint64_t sub_1BFA1F930(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_32_1();
  MEMORY[0x1BFB611E0](a3 & 1);
  sub_1BFAAF908();
  v6 = sub_1BFAAFFE8();

  return sub_1BFA1FC3C(a1, a2, a3 & 1, v6);
}

unint64_t sub_1BFA1F9BC(unint64_t a1)
{
  OUTLINED_FUNCTION_32_1();
  sub_1BFAAFFB8();
  if ((a1 & 0x100000000) == 0)
  {
    sub_1BFAAFFC8();
  }

  v2 = sub_1BFAAFFE8();

  return sub_1BFA1FE74(a1 | ((HIDWORD(a1) & 1) << 32), v2);
}

unint64_t sub_1BFA1FA44(char a1)
{
  OUTLINED_FUNCTION_32_1();
  sub_1BFAA7FA0(v4, a1);
  v2 = sub_1BFAAFFE8();

  return sub_1BFA1FEF8(a1, v2);
}

unint64_t sub_1BFA1FAA8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1BFAAF2C8();
  sub_1BFA21080(&qword_1EBDFB708, MEMORY[0x1E69D3208]);
  v4 = sub_1BFAAF808();
  return sub_1BFA2021C(a1, v4);
}

unint64_t sub_1BFA1FB54(uint64_t a1, uint64_t a2, double a3)
{
  OUTLINED_FUNCTION_32_1();
  sub_1BFAAAC20(a3);
  v6 = sub_1BFAAFFE8();

  return sub_1BFA20314(a3, a1, a2, v6);
}

unint64_t sub_1BFA1FBD8(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

unint64_t sub_1BFA1FC3C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      v10 = *(v4 + 48) + 24 * v6;
      v12 = *v10;
      v11 = *(v10 + 8);
      if (*(v10 + 16))
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_12;
        }

        if (v12 == a1 && v11 == a2)
        {
          goto LABEL_20;
        }

        v14 = sub_1BFAAFF08();
        sub_1BF9FC17C();
        sub_1BF9FC17C();
        sub_1BF9FC184();
        sub_1BF9FC184();
        if (v14)
        {
          return v6;
        }
      }

      else
      {
        if (a3)
        {
LABEL_12:
          sub_1BF9FC17C();
          sub_1BF9FC17C();
          sub_1BF9FC184();
          sub_1BF9FC184();
          goto LABEL_18;
        }

        if (v12 == a1 && v11 == a2)
        {
LABEL_20:
          sub_1BF9FC17C();
          sub_1BF9FC17C();
          sub_1BF9FC184();
          sub_1BF9FC184();
          return v6;
        }

        v16 = sub_1BFAAFF08();
        sub_1BF9FC17C();
        sub_1BF9FC17C();
        sub_1BF9FC184();
        sub_1BF9FC184();
        if (v16)
        {
          return v6;
        }
      }

LABEL_18:
      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1BFA1FE74(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      if (*(v7 + 4))
      {
        if ((a1 & 0x100000000) != 0)
        {
          return result;
        }
      }

      else if ((a1 & 0x100000000) == 0 && *v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1BFA1FEF8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE400000000000000;
      v8 = 1701998445;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000013;
          v7 = 0x80000001BFAB8500;
          break;
        case 2:
          v8 = 0x726F4D6E7261656CLL;
          v7 = 0xE900000000000065;
          break;
        case 3:
          v7 = 0xE900000000000067;
          v8 = 0x6E69796173797274;
          break;
        case 4:
          v8 = 0x746E69726568746FLL;
          v7 = 0xEA00000000006F72;
          break;
        case 5:
          v8 = 0x706C654869726973;
          v9 = 0x726564616548;
          goto LABEL_10;
        case 6:
          v8 = 0xD00000000000001FLL;
          v7 = 0x80000001BFAB8550;
          break;
        case 7:
          v8 = 0x726F707075736E75;
          v9 = 0x707041646574;
LABEL_10:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 8:
          v8 = 0xD000000000000019;
          v7 = 0x80000001BFAB8580;
          break;
        default:
          break;
      }

      v10 = 0xE400000000000000;
      v11 = 1701998445;
      switch(a1)
      {
        case 1:
          v11 = 0xD000000000000013;
          v10 = 0x80000001BFAB8500;
          break;
        case 2:
          v11 = 0x726F4D6E7261656CLL;
          v10 = 0xE900000000000065;
          break;
        case 3:
          v10 = 0xE900000000000067;
          v11 = 0x6E69796173797274;
          break;
        case 4:
          v11 = 0x746E69726568746FLL;
          v10 = 0xEA00000000006F72;
          break;
        case 5:
          v11 = 0x706C654869726973;
          v12 = 0x726564616548;
          goto LABEL_20;
        case 6:
          v11 = 0xD00000000000001FLL;
          v10 = 0x80000001BFAB8550;
          break;
        case 7:
          v11 = 0x726F707075736E75;
          v12 = 0x707041646574;
LABEL_20:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          break;
        case 8:
          v11 = 0xD000000000000019;
          v10 = 0x80000001BFAB8580;
          break;
        default:
          break;
      }

      if (v8 == v11 && v7 == v10)
      {
        break;
      }

      v14 = sub_1BFAAFF08();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1BFA2021C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_1BFAAF2C8();
    v6 = *(*(v2 + 48) + 8 * i);
    sub_1BFA21080(&qword_1EBDFB710, MEMORY[0x1E69D3208]);
    if (sub_1BFAAF848())
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1BFA20314(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = ~v5;
    sub_1BFAAF2C8();
    do
    {
      v9 = *(v4 + 48) + 24 * v6;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);

      if (sub_1BFAAF2B8())
      {
        v13 = sub_1BFAAF2B8();

        if ((v13 & 1) != 0 && v12 == a1)
        {
          return v6;
        }
      }

      else
      {
      }

      v6 = (v6 + 1) & v8;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

double sub_1BFA20448@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1BFA01764(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5F8, &unk_1BFAB1190);
    sub_1BFAAFCD8();
    v12 = *(*(v14 + 48) + 16 * v9 + 8);

    sub_1BFA17D30((*(v14 + 56) + 48 * v9), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
    sub_1BFAAFCF8();
    *v4 = v14;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_1BFA20544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1BFA01764(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB740, &qword_1BFAB1508);
    sub_1BFAAFCD8();
    v12 = *(*(v19 + 48) + 16 * v9 + 8);

    v13 = *(v19 + 56);
    v14 = sub_1BFAAE748();
    (*(*(v14 - 8) + 32))(a3, v13 + *(*(v14 - 8) + 72) * v9, v14);
    sub_1BFAAFCF8();
    *v4 = v19;
    v15 = a3;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = sub_1BFAAE748();
    v15 = a3;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

uint64_t sub_1BFA2068C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1, a1);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v24 - v19;
  (*(v13 + 32))(&v24 - v19);
  v21 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *a4;
  (*(v13 + 16))(v17, v20, a5);
  sub_1BFA2080C(v17, a2, a3, isUniquelyReferenced_nonNull_native, &v25, a5, a6, a7);
  result = (*(v13 + 8))(v20, a5);
  *a4 = v25;
  return result;
}

_OWORD *sub_1BFA2080C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a6;
  v35 = a7;
  v36 = a8;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v33);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a6);
  v16 = *a5;
  v17 = sub_1BFA01764(a2, a3);
  if (__OFADD__(v16[2], (v18 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v17;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5F8, &unk_1BFAB1190);
  if ((sub_1BFAAFCD8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = *a5;
  v22 = sub_1BFA01764(a2, a3);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_10:
    result = sub_1BFAAFF38();
    __break(1u);
    return result;
  }

  v19 = v22;
LABEL_5:
  v24 = *a5;
  if (v20)
  {
    v25 = (v24[7] + 48 * v19);
    __swift_destroy_boxed_opaque_existential_2Tm(v25);
    return sub_1BFA17D30(&v33, v25);
  }

  else
  {
    v27 = v34;
    v28 = __swift_mutable_project_boxed_opaque_existential_1Tm(&v33, v34);
    v29 = *(*(v27 - 8) + 64);
    MEMORY[0x1EEE9AC00](v28, v28);
    v31 = &v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v31);
    sub_1BFA20FA4(v19, a2, a3, v31, v24, a6, a7, a8);

    return __swift_destroy_boxed_opaque_existential_2Tm(&v33);
  }
}

_OWORD *sub_1BFA20A40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1BFAAF118();
  v19 = v10;
  v11 = MEMORY[0x1E69D3178];
  v20 = sub_1BFA21080(&qword_1EBDFB5E8, MEMORY[0x1E69D3178]);
  v21 = sub_1BFA21080(&qword_1EBDFB5F0, v11);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v18);
  (*(*(v10 - 8) + 32))(boxed_opaque_existential_1Tm, a4, v10);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_1BFA17D30(&v18, (a5[7] + 48 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

_OWORD *sub_1BFA20B8C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1BFAAF138();
  v19 = v10;
  v11 = MEMORY[0x1E69D31A8];
  v20 = sub_1BFA21080(&qword_1EBDFB6E0, MEMORY[0x1E69D31A8]);
  v21 = sub_1BFA21080(&qword_1EBDFB6E8, v11);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v18);
  (*(*(v10 - 8) + 32))(boxed_opaque_existential_1Tm, a4, v10);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v13 = (a5[6] + 16 * a1);
  *v13 = a2;
  v13[1] = a3;
  result = sub_1BFA17D30(&v18, (a5[7] + 48 * a1));
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_1BFA20CD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB6D8, &qword_1BFAB1450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFA20D54(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1BFA20D94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BFA20E08()
{
  sub_1BFA20E9C();
  if (v0 <= 0x3F)
  {
    sub_1BFA20EF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BFA20E9C()
{
  if (!qword_1EBDFB700)
  {
    sub_1BFAAF138();
    v0 = sub_1BFAAFBA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDFB700);
    }
  }
}

void sub_1BFA20EF4()
{
  if (!qword_1EDCC84E8)
  {
    v0 = sub_1BFAAFBA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCC84E8);
    }
  }
}

uint64_t sub_1BFA20F44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_1BFA20FA4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a6;
  v22 = a7;
  v23 = a8;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v20);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1Tm, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v15 = (a5[6] + 16 * a1);
  *v15 = a2;
  v15[1] = a3;
  result = sub_1BFA17D30(&v20, (a5[7] + 48 * a1));
  v17 = a5[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v19;
  }

  return result;
}

uint64_t sub_1BFA21080(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_6_2(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

unint64_t OUTLINED_FUNCTION_21_0()
{

  return sub_1BFA01764(0x6974736567677573, 0xEE006E6F63496E6FLL);
}

uint64_t OUTLINED_FUNCTION_27_2()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[7];
  v6 = *(v0[9] + 8);
  return v0[10];
}

uint64_t OUTLINED_FUNCTION_32_1()
{
  v2 = *(v0 + 40);

  return sub_1BFAAFF98();
}

uint64_t SinkDispatcherProvider.__allocating_init(suggestionDispatcherFactory:)()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_0(v4);

  return SinkDispatcherProvider.init(suggestionDispatcherFactory:)(v6);
}

uint64_t sub_1BFA21248()
{
  OUTLINED_FUNCTION_40();
  v2 = v1;
  OUTLINED_FUNCTION_42();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_8();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t SinkDispatcherProvider.init(suggestionDispatcherFactory:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_2(sub_1BFA21378, 0);
}

uint64_t sub_1BFA21378()
{
  OUTLINED_FUNCTION_43();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = *(*v2 + 104);
  v5 = *(v1 + 80);
  v0[5] = v5;
  v6 = *(v5 - 8);
  v0[6] = v6;
  (*(v6 + 16))(&v2[v4], v3, v5);
  v7 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  type metadata accessor for SinkCapture();
  v8 = sub_1BFA21590();
  v0[7] = v8;
  *(v2 + 2) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BFA214A4, v8, 0);
}

uint64_t sub_1BFA214A4()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 56);
  sub_1BFA215C8();

  v2 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA21508()
{
  OUTLINED_FUNCTION_40();
  (*(v0[6] + 8))(v0[2], v0[5]);
  v1 = v0[1];
  v2 = v0[3];

  return v1(v2);
}

uint64_t sub_1BFA21590()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1BFA221DC();
  return v3;
}

uint64_t sub_1BFA215C8()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  type metadata accessor for BaseSink();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = BaseSink.__allocating_init(callback:)(&unk_1BFAB1660, v4);
  v6 = *(*v1 + 104);
  v7 = *(v1 + v6);
  *(v1 + v6) = v5;
}

uint64_t sub_1BFA216A0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_2(sub_1BFA216E4, 0);
}

uint64_t sub_1BFA216E4()
{
  v1 = *(v0[3] + 16);
  v0[5] = v1;
  v0[6] = *(*v1 + 104);
  return OUTLINED_FUNCTION_0_2(sub_1BFA2171C, v1);
}

uint64_t sub_1BFA2171C()
{
  OUTLINED_FUNCTION_40();
  v0[7] = *(v0[5] + v0[6]);

  return MEMORY[0x1EEE6DFA0](sub_1BFA2178C, 0, 0);
}

uint64_t sub_1BFA2178C()
{
  v1 = v0[7];
  if (v1)
  {
    v3 = v0[3];
    v2 = v0[4];
    OUTLINED_FUNCTION_3_0();
    v5 = *(v4 + 104);
    v8 = *(v6 + 80);
    v7 = *(v6 + 88);
    v20 = (*(v7 + 16) + **(v7 + 16));
    v9 = *(*(v7 + 16) + 4);
    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_1BFA219C8;
    v11 = v0[2];

    return v20(v11, v1, v8, v7);
  }

  else
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v13 = sub_1BFAAF688();
    __swift_project_value_buffer(v13, qword_1EDCC7478);
    v14 = sub_1BFAAF668();
    v15 = sub_1BFAAFB88();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = v0[7];
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1BF9F6000, v14, v15, "unable to get sink instance. Have you called start()?", v17, 2u);
      MEMORY[0x1BFB618C0](v17, -1, -1);
    }

    v18 = v0[2];
    *(v18 + 32) = 0;
    *v18 = 0u;
    *(v18 + 16) = 0u;
    OUTLINED_FUNCTION_85();

    return v19();
  }
}

uint64_t sub_1BFA219C8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 64);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA21AAC()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_85();

  return v2();
}

char *SinkDispatcherProvider.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  OUTLINED_FUNCTION_3_0();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v3 + 104)]);
  return v0;
}

uint64_t SinkDispatcherProvider.__deallocating_deinit()
{
  SinkDispatcherProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t SinkCapture.result.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_12_4();
  v5 = *(v4 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_12_4();
  v7 = *(v6 + 80);
  v8 = sub_1BFAAFBA8();
  OUTLINED_FUNCTION_0(v8);
  return (*(v9 + 16))(a1, &v1[v5]);
}

uint64_t SinkCapture.result.setter(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_12_4();
  v5 = *(v4 + 96);
  swift_beginAccess();
  OUTLINED_FUNCTION_12_4();
  v7 = *(v6 + 80);
  v8 = sub_1BFAAFBA8();
  OUTLINED_FUNCTION_0(v8);
  (*(v9 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t (*SinkCapture.result.modify())()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 96);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1BFA21D84(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BFA21DA4, 0, 0);
}

uint64_t sub_1BFA21DA4()
{
  OUTLINED_FUNCTION_43();
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BFA21F08, Strong, 0);
  }

  else
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v3 = sub_1BFAAF688();
    __swift_project_value_buffer(v3, qword_1EDCC7478);
    v4 = sub_1BFAAF668();
    v5 = sub_1BFAAFB88();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1BF9F6000, v4, v5, "SinkCapture is already deallocated.", v6, 2u);
      MEMORY[0x1BFB618C0](v6, -1, -1);
    }

    OUTLINED_FUNCTION_85();

    return v7();
  }
}

uint64_t sub_1BFA21F08()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 56);
  sub_1BFA21FC4(*(v0 + 40));
  v2 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA21F68()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_85();

  return v2();
}

uint64_t sub_1BFA21FC4(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  v4 = *(v3 + 80);
  v5 = sub_1BFAAFBA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  (*(*(v4 - 8) + 16))(&v14 - v9, a1, v4);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v4);
  OUTLINED_FUNCTION_3_0();
  v12 = *(v11 + 96);
  swift_beginAccess();
  (*(v6 + 40))(v1 + v12, v10, v5);
  return swift_endAccess();
}

uint64_t SinkCapture.deinit()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = sub_1BFAAFBA8();
  OUTLINED_FUNCTION_0(v3);
  (*(v4 + 8))(v0 + v1);
  OUTLINED_FUNCTION_3_0();
  v6 = *(v0 + *(v5 + 104));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SinkCapture.__deallocating_deinit()
{
  SinkCapture.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t *sub_1BFA221DC()
{
  v1 = *v0;
  swift_defaultActor_initialize();
  OUTLINED_FUNCTION_3_0();
  __swift_storeEnumTagSinglePayload(v0 + *(v2 + 96), 1, 1, *(v1 + 80));
  OUTLINED_FUNCTION_3_0();
  *(v0 + *(v3 + 104)) = 0;
  return v0;
}

uint64_t sub_1BFA22278(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of SinkDispatcherProvider.__allocating_init(suggestionDispatcherFactory:)()
{
  OUTLINED_FUNCTION_43();
  v1 = *(v0 + 112);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_0(v4);

  return v8(v6);
}

uint64_t dispatch thunk of SinkDispatcherProvider.getDispatcher()()
{
  OUTLINED_FUNCTION_43();
  v1 = v0;
  OUTLINED_FUNCTION_3_0();
  v3 = *(v2 + 120);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_41(v5);
  *v6 = v7;
  v6[1] = sub_1BF9FDE28;

  return v9(v1);
}

uint64_t sub_1BFA22564(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1BFAAFBA8();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BFA22624()
{
  OUTLINED_FUNCTION_43();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_0(v4);

  return sub_1BFA21D84(v6, v1);
}

void *LocalStateStoreClient.__allocating_init(client:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1Tm(a1, v3);
  OUTLINED_FUNCTION_22();
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_1BFA27330(v10, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return v12;
}

uint64_t sub_1BFA227FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_58();
  a16 = v18;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v21 = *(v18 + 16);
  v22 = sub_1BFAAF688();
  __swift_project_value_buffer(v22, qword_1EDCC8B70);

  v23 = sub_1BFAAF668();
  sub_1BFAAFB78();
  OUTLINED_FUNCTION_53_0();
  if (OUTLINED_FUNCTION_52_0())
  {
    v24 = *(v18 + 16);
    OUTLINED_FUNCTION_51_0();
    v25 = OUTLINED_FUNCTION_116();
    a10 = v25;
    *v21 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB880, &qword_1BFAB1938);
    sub_1BFA27F28();
    v26 = sub_1BFAAF7C8();
    v28 = sub_1BF9F88A8(v26, v27, &a10);

    *(v21 + 4) = v28;
    OUTLINED_FUNCTION_28_0(&dword_1BF9F6000, v29, v30, "Clearing down client cache of %s identifiers");
    __swift_destroy_boxed_opaque_existential_2Tm(v25);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_48_0();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
}

void LocalStateStoreClient.__allocating_init(client:cacheClearedListener:)(uint64_t *a1)
{
  swift_allocObject();
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  OUTLINED_FUNCTION_22();
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = OUTLINED_FUNCTION_22_1(v7, v10);
  v9(v8);
  OUTLINED_FUNCTION_35_1();
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  OUTLINED_FUNCTION_56_1();
}

void LocalStateStoreClient.init(client:cacheClearedListener:)(uint64_t *a1)
{
  v2 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  OUTLINED_FUNCTION_22();
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = OUTLINED_FUNCTION_22_1(v7, v10);
  v9(v8);
  OUTLINED_FUNCTION_35_1();
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  OUTLINED_FUNCTION_56_1();
}

uint64_t sub_1BFA22AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 136) = a4;
  *(v5 + 144) = v4;
  *(v5 + 120) = a2;
  *(v5 + 128) = a3;
  *(v5 + 152) = *a1;
  *(v5 + 200) = *(a1 + 16);
  return OUTLINED_FUNCTION_0_2(sub_1BFA22B20, v4);
}

uint64_t sub_1BFA22B20()
{
  v61 = v1;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v2 = *(v1 + 200);
  v4 = *(v1 + 152);
  v3 = *(v1 + 160);
  v5 = *(v1 + 128);
  v6 = sub_1BFAAF688();
  __swift_project_value_buffer(v6, qword_1EDCC8B70);
  OUTLINED_FUNCTION_18_2();
  sub_1BF9FC17C();

  v7 = sub_1BFAAF668();
  v8 = sub_1BFAAFB78();
  OUTLINED_FUNCTION_18_2();
  sub_1BF9FC184();

  os_log_type_enabled(v7, v8);
  OUTLINED_FUNCTION_17_1();
  if (v9)
  {
    v0 = *(v1 + 200);
    v10 = *(v1 + 160);
    v11 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v11 = 136315394;
    v13 = *(v1 + 152);
    v12 = *(v1 + 160);
    if (v0)
    {
      OUTLINED_FUNCTION_46_1();
      v59 = v14;
      v60 = 0xEC000000203A6449;
      OUTLINED_FUNCTION_14_0();
      sub_1BF9FC17C();
      OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_14_0();
      sub_1BF9FC184();
      OUTLINED_FUNCTION_17_1();
    }

    else
    {
      OUTLINED_FUNCTION_17_1();
      v59 = v0;
      v60 = 0xEC000000203A6449;
      OUTLINED_FUNCTION_14_0();
      sub_1BF9FC17C();
      OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_31_0();
      OUTLINED_FUNCTION_14_0();
      sub_1BF9FC184();
      v15 = v0;
    }

    v17 = *(v1 + 120);
    v16 = *(v1 + 128);
    v18 = sub_1BF9F88A8(v15, 0xEC000000203A6449, &v58);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2080;
    v19 = OUTLINED_FUNCTION_14_0();
    *(v11 + 14) = sub_1BF9F88A8(v19, v20, v21);
    _os_log_impl(&dword_1BF9F6000, v7, v8, "Submitting local state to %s for %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  else
  {
  }

  v22 = *(v1 + 200);
  v23 = *(v1 + 144);
  OUTLINED_FUNCTION_27_3();
  v24 = *(v23 + 112);
  if (*(v24 + 16) && (v25 = sub_1BFA1F8CC(v22), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 8 * v25);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC8];
  }

  *(v1 + 168) = v27;
  v28 = *(v1 + 152);
  v29 = *(v1 + 160);
  *(v1 + 112) = v27;
  if (sub_1BFA234C8(v28, v29, v22, v27))
  {

    if (*(v27 + 16))
    {
      v30 = sub_1BFA1F930(*(v1 + 152), *(v1 + 160), *(v1 + 200));
      if (v31)
      {
        v32 = *(*(v27 + 56) + 8 * v30);

LABEL_22:
        *(v1 + 184) = v32;
        v45 = swift_task_alloc();
        *(v1 + 192) = v45;
        *v45 = v1;
        v46 = OUTLINED_FUNCTION_9_1(v45);

        return sub_1BFA26154(v46, v47, v48);
      }
    }

LABEL_21:
    type metadata accessor for StoreCache();
    v32 = swift_allocObject();
    swift_defaultActor_initialize();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
    *(v32 + 112) = sub_1BFAAF7D8();
    goto LABEL_22;
  }

  if (!*(v27 + 16))
  {
    goto LABEL_21;
  }

  v33 = v0;
  v34 = *(v1 + 200);
  v36 = *(v1 + 152);
  v35 = *(v1 + 160);
  OUTLINED_FUNCTION_18_2();
  sub_1BF9FC17C();
  v37 = sub_1BFAAF668();
  v38 = sub_1BFAAFB68();
  OUTLINED_FUNCTION_18_2();
  sub_1BF9FC184();
  if (os_log_type_enabled(v37, v38))
  {
    v57 = v38;
    v39 = *(v1 + 200);
    v40 = *(v1 + 160);
    v41 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v41 = 136315394;
    v43 = *(v1 + 152);
    v42 = *(v1 + 160);
    if (v39)
    {
      OUTLINED_FUNCTION_46_1();
      v59 = v44;
    }

    else
    {
      v59 = v33;
    }

    v60 = 0xEC000000203A6449;
    OUTLINED_FUNCTION_14_0();
    sub_1BF9FC17C();
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_14_0();
    sub_1BF9FC184();
    v50 = sub_1BF9F88A8(v59, v60, &v58);

    *(v41 + 4) = v50;
    *(v41 + 12) = 2080;
    type metadata accessor for StoreCache();
    sub_1BFA27588();

    v51 = sub_1BFAAF7C8();
    v53 = v52;

    v54 = sub_1BF9F88A8(v51, v53, &v58);

    *(v41 + 14) = v54;
    _os_log_impl(&dword_1BF9F6000, v37, v57, "Session id: %s is different to the one in the store (%s). Clearing store as we dont support state spanning over multiple sessions", v41, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  v55 = swift_task_alloc();
  *(v1 + 176) = v55;
  *v55 = v1;
  v55[1] = sub_1BFA230A8;
  v56 = *(v1 + 144);

  return sub_1BFA24D04();
}

uint64_t sub_1BFA230A8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 176);
  v3 = *(v1 + 144);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_54_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BFA231A0()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 168);
  swift_beginAccess();
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + 112) = MEMORY[0x1E69E7CC8];

  if (*(v2 + 16) && (v3 = MEMORY[0x1E69E7CC8], v4 = sub_1BFA1F930(*(v0 + 152), *(v0 + 160), *(v0 + 200)), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    type metadata accessor for StoreCache();
    v6 = swift_allocObject();
    swift_defaultActor_initialize();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
    *(v6 + 112) = sub_1BFAAF7D8();
  }

  *(v0 + 184) = v6;
  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *v7 = v0;
  v8 = OUTLINED_FUNCTION_9_1(v7);

  return sub_1BFA26154(v8, v9, v10);
}

uint64_t sub_1BFA232C0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 192);
  v3 = *(v1 + 144);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_54_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BFA233B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_58();
  v10 = *(v9 + 184);
  v11 = *(v9 + 200);
  v13 = *(v9 + 152);
  v12 = *(v9 + 160);
  v14 = *(v9 + 144);
  OUTLINED_FUNCTION_50_0();

  v15 = *(v9 + 112);
  swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v9 + 112);
  sub_1BFA26470(v10, v13, v12, v11);
  v16 = v27;
  swift_endAccess();
  OUTLINED_FUNCTION_50_0();

  v17 = *(v14 + 112);
  swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v14 + 112);
  sub_1BFA2634C(v16, v11);
  *(v14 + 112) = v28;
  swift_endAccess();

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_48_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v28);
}

uint64_t sub_1BFA234C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v5 = sub_1BFA1F930(a1, a2, a3 & 1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a4 + 56) + 8 * v5);
}

double sub_1BFA2351C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1BFA01764(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1BF9F8B40(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_1BFA23580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1BFA01764(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_1BFAAEBF8();
    OUTLINED_FUNCTION_0(v10);
    (*(v11 + 16))(a4, v9 + *(v11 + 72) * v8, v10);
    v12 = a4;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = sub_1BFAAEBF8();
    v12 = a4;
    v13 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
}

uint64_t sub_1BFA2363C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1BFA01764(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_1BFA2368C(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1BFA1FA44(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = (*(a2 + 56) + 16 * v3);
  v6 = *v5;
  v7 = v5[1];

  return v6;
}

uint64_t sub_1BFA236E4(uint64_t a1)
{
  *(v2 + 64) = v1;
  *(v2 + 72) = *a1;
  *(v2 + 96) = *(a1 + 16);
  return OUTLINED_FUNCTION_0_2(sub_1BFA23710, v1);
}

uint64_t sub_1BFA23710()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_27_3();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_7;
  }

  v3 = *(v0 + 96);
  v4 = sub_1BFA1F8CC(v3);
  if ((v5 & 1) == 0 || (v7 = *(v0 + 72), v6 = *(v0 + 80), v8 = *(*(v2 + 56) + 8 * v4), , v9 = sub_1BFA234C8(v7, v6, v3, v8), *(v0 + 88) = v9, , !v9))
  {
LABEL_7:
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_112();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA2380C()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 88);
  swift_beginAccess();
  v2 = *(v1 + 112);

  OUTLINED_FUNCTION_24_0();

  return v3(v2);
}

uint64_t sub_1BFA2388C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2(sub_1BFA238AC, v3);
}

uint64_t sub_1BFA238AC()
{
  OUTLINED_FUNCTION_40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
  v0[6] = sub_1BFAAF7D8();
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[7] = v1;
  *v1 = v2;
  v1[1] = sub_1BFA23984;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  return sub_1BFA24FDC();
}

uint64_t sub_1BFA23984()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  OUTLINED_FUNCTION_85();

  return v6();
}

uint64_t sub_1BFA23A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  return OUTLINED_FUNCTION_0_2(sub_1BFA23AA0, v3);
}

uint64_t sub_1BFA23AA0()
{
  v49 = v1;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v2 = *(v1 + 144);
  v3 = sub_1BFAAF688();
  *(v1 + 168) = __swift_project_value_buffer(v3, qword_1EDCC8B70);

  v4 = sub_1BFAAF668();
  sub_1BFAAFB78();
  OUTLINED_FUNCTION_53_0();
  if (OUTLINED_FUNCTION_52_0())
  {
    v6 = *(v1 + 136);
    v5 = *(v1 + 144);
    v7 = OUTLINED_FUNCTION_51_0();
    v8 = swift_slowAlloc();
    v48[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1BF9F88A8(v6, v5, v48);
    _os_log_impl(&dword_1BF9F6000, v4, v0, "Checking for claim against: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_2Tm(v8);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  v9 = *(v1 + 144);
  v10 = *(v1 + 152);
  v11 = *(v1 + 136);
  v12 = *(v10 + 40);
  sub_1BFAAFF98();
  MEMORY[0x1BFB611E0](0);

  sub_1BFAAF908();
  v13 = sub_1BFAAFFE8();
  v14 = v10 + 56;
  v15 = -1 << *(v10 + 32);
  v16 = v13 & ~v15;
  if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
LABEL_15:
    v26 = *(v1 + 152);
    v27 = *(v1 + 136);
    swift_isUniquelyReferenced_nonNull_native();
    v48[0] = v26;
    OUTLINED_FUNCTION_39_2();
    sub_1BFA26C58(v28, v29, v30, v16, v31);
    v32 = v48[0];
    goto LABEL_19;
  }

  v17 = ~v15;
  v18 = *(v1 + 152);
  while (1)
  {
    v19 = *(v18 + 48) + 24 * v16;
    if (*(v19 + 16))
    {
      v21 = *(v1 + 136);
      v20 = *(v1 + 144);

      OUTLINED_FUNCTION_42_0();
      sub_1BF9FC17C();
      OUTLINED_FUNCTION_42_0();
      sub_1BF9FC184();
      OUTLINED_FUNCTION_39_2();
      sub_1BF9FC184();
      goto LABEL_14;
    }

    if (*v19 == *(v1 + 136) && *(v19 + 8) == v9)
    {

      OUTLINED_FUNCTION_39_2();
      sub_1BF9FC184();
      OUTLINED_FUNCTION_39_2();
      sub_1BF9FC184();
      goto LABEL_18;
    }

    v23 = v14;
    v24 = v17;
    v25 = *(v1 + 144);
    OUTLINED_FUNCTION_42_0();
    v47 = sub_1BFAAFF08();
    v17 = v24;
    v14 = v23;

    OUTLINED_FUNCTION_42_0();
    sub_1BF9FC17C();
    OUTLINED_FUNCTION_42_0();
    sub_1BF9FC184();
    OUTLINED_FUNCTION_39_2();
    sub_1BF9FC184();
    if (v47)
    {
      break;
    }

LABEL_14:
    v16 = (v16 + 1) & v17;
    if (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v33 = *(v1 + 144);

LABEL_18:
  v32 = *(v1 + 152);
LABEL_19:
  *(v1 + 176) = v32;
  v34 = *(v32 + 32);
  *(v1 + 129) = v34;
  v35 = -1;
  v36 = -1 << v34;
  if (-(-1 << v34) < 64)
  {
    v35 = ~(-1 << -(-1 << v34));
  }

  v37 = v35 & *(v32 + 56);
  if (v37)
  {
    v38 = 0;
  }

  else
  {
    v39 = 0;
    v40 = ((63 - v36) >> 6) - 1;
    do
    {
      if (v40 == v39)
      {

        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_36_3();

        __asm { BRAA            X2, X16 }
      }

      v38 = v39 + 1;
      v37 = *(v32 + 8 * v39++ + 64);
    }

    while (!v37);
  }

  *(v1 + 184) = v37;
  *(v1 + 192) = v38;
  OUTLINED_FUNCTION_13_0(v32, __clz(__rbit64(v37)) | (v38 << 6));
  v41 = swift_task_alloc();
  *(v1 + 216) = v41;
  *v41 = v1;
  OUTLINED_FUNCTION_11_1(v41);
  OUTLINED_FUNCTION_36_3();

  return sub_1BFA236E4(v42);
}

uint64_t sub_1BFA23E6C()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_37();
  *v2 = v1;
  v4 = v3[27];
  v5 = *(v1 + 130);
  v6 = v3[26];
  v7 = v3[25];
  v8 = v3[20];
  v9 = *v0;
  OUTLINED_FUNCTION_8();
  *v10 = v9;
  *(v12 + 224) = v11;

  sub_1BF9FC184();

  return MEMORY[0x1EEE6DFA0](sub_1BFA23FB4, v8, 0);
}

uint64_t sub_1BFA23FB4()
{
  OUTLINED_FUNCTION_51();
  v1 = (v0 + 16);
  v2 = *(v0 + 224);
  if (v2)
  {
    if (*(v2 + 16))
    {
      v3 = *(v0 + 224);

      v4 = sub_1BFA01764(0xD000000000000010, 0x80000001BFAB83E0);
      v6 = v5;

      if (v6)
      {
        goto LABEL_7;
      }
    }

    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *v1 = 0u;
    sub_1BF9FAB40(v0 + 16, qword_1EBDFB778, &unk_1BFAB1540);
    if (*(v2 + 16))
    {
      v7 = sub_1BFA01764(0xD000000000000010, 0x80000001BFAB8400);
      if (v8)
      {
        v4 = v7;
        v1 = (v0 + 64);
LABEL_7:
        sub_1BFA27F7C(*(v2 + 56) + 48 * v4, v1);

        sub_1BF9FAB40(v1, qword_1EBDFB778, &unk_1BFAB1540);
        v9 = *(v0 + 168);
        v10 = sub_1BFAAF668();
        v11 = sub_1BFAAFB78();
        v12 = os_log_type_enabled(v10, v11);
        v13 = *(v0 + 176);
        if (v12)
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_1BF9F6000, v10, v11, "Found claim in local state store", v14, 2u);
          OUTLINED_FUNCTION_94();
        }

LABEL_22:
        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_112();

        __asm { BRAA            X2, X16 }
      }
    }
  }

  else
  {
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *v1 = 0u;
    sub_1BF9FAB40(v0 + 16, qword_1EBDFB778, &unk_1BFAB1540);
  }

  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 64) = 0u;
  result = sub_1BF9FAB40(v0 + 64, qword_1EBDFB778, &unk_1BFAB1540);
  v16 = *(v0 + 192);
  v17 = (*(v0 + 184) - 1) & *(v0 + 184);
  if (v17)
  {
    result = *(v0 + 176);
    goto LABEL_18;
  }

  do
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return result;
    }

    result = *(v0 + 176);
    if (v18 >= (((1 << *(v0 + 129)) + 63) >> 6))
    {

      goto LABEL_22;
    }

    v17 = *(result + 8 * v18 + 56);
    ++v16;
  }

  while (!v17);
  v16 = v18;
LABEL_18:
  *(v0 + 184) = v17;
  *(v0 + 192) = v16;
  OUTLINED_FUNCTION_13_0(result, __clz(__rbit64(v17)) | (v16 << 6));
  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  *v19 = v0;
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_112();

  return sub_1BFA236E4(v20);
}

uint64_t sub_1BFA24274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[58] = a4;
  v5[59] = v4;
  v5[56] = a2;
  v5[57] = a3;
  v5[55] = a1;
  return OUTLINED_FUNCTION_0_2(sub_1BFA24298, v4);
}

uint64_t sub_1BFA24298()
{
  v59 = v0;
  if (*(v0 + 464))
  {
    v1 = *(v0 + 464);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
    v1 = sub_1BFAAF7D8();
  }

  v56 = v1;
  v2 = qword_1EDCC8BC0;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v4 = *(v0 + 448);
  v3 = *(v0 + 456);
  v5 = sub_1BFAAF688();
  __swift_project_value_buffer(v5, qword_1EDCC8B70);

  v6 = sub_1BFAAF668();
  v7 = sub_1BFAAFB78();

  v57 = v0;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 456);
    v9 = *(v0 + 448);
    v10 = *(v0 + 440);
    v11 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = OUTLINED_FUNCTION_14_0();
    *(v11 + 4) = sub_1BF9F88A8(v12, v13, v14);
    *(v11 + 12) = 2080;
    sub_1BFA27588();
    v15 = sub_1BFAAFB58();
    v17 = sub_1BF9F88A8(v15, v16, v58);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_1BF9F6000, v6, v7, "Getting local cache state properties for requestIds %s and relatedIds: %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  v18 = *(v0 + 448);
  v19 = *(v0 + 456);
  v20 = *(v0 + 440);
  v21 = *(v19 + 40);
  sub_1BFAAFF98();
  MEMORY[0x1BFB611E0](0);

  sub_1BFAAF908();
  v22 = sub_1BFAAFFE8();
  v23 = v19 + 56;
  v24 = -1 << *(v19 + 32);
  v25 = v22 & ~v24;
  if (((*(v23 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
  {
LABEL_18:
    v35 = *(v0 + 456);
    v36 = *(v0 + 440);
    swift_isUniquelyReferenced_nonNull_native();
    v58[0] = v35;
    OUTLINED_FUNCTION_43_1();
    sub_1BFA26C58(v37, v38, v39, v25, v40);
    v41 = v58[0];
    goto LABEL_22;
  }

  v26 = ~v24;
  v27 = *(v0 + 456);
  while (1)
  {
    v28 = *(v27 + 48) + 24 * v25;
    if (*(v28 + 16))
    {
      v30 = *(v0 + 440);
      v29 = *(v0 + 448);

      OUTLINED_FUNCTION_41_0();
      sub_1BF9FC17C();
      OUTLINED_FUNCTION_41_0();
      sub_1BF9FC184();
      OUTLINED_FUNCTION_43_1();
      sub_1BF9FC184();
      goto LABEL_17;
    }

    if (*v28 == *(v0 + 440) && *(v28 + 8) == v18)
    {

      OUTLINED_FUNCTION_43_1();
      sub_1BF9FC184();
      OUTLINED_FUNCTION_43_1();
      sub_1BF9FC184();
      goto LABEL_21;
    }

    v32 = v26;
    v33 = *(v57 + 448);
    OUTLINED_FUNCTION_41_0();
    v34 = sub_1BFAAFF08();
    v26 = v32;
    v0 = v57;

    OUTLINED_FUNCTION_41_0();
    sub_1BF9FC17C();
    OUTLINED_FUNCTION_41_0();
    sub_1BF9FC184();
    OUTLINED_FUNCTION_43_1();
    sub_1BF9FC184();
    if (v34)
    {
      break;
    }

LABEL_17:
    v25 = (v25 + 1) & v26;
    if (((*(v23 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v42 = *(v57 + 448);

LABEL_21:
  v41 = *(v0 + 456);
LABEL_22:
  *(v0 + 480) = v41;
  v43 = *(v41 + 32);
  *(v0 + 425) = v43;
  v44 = -1;
  v45 = -1 << v43;
  if (-(-1 << v43) < 64)
  {
    v44 = ~(-1 << -v45);
  }

  v46 = v44 & *(v41 + 56);
  *(v0 + 488) = v56;

  if (v46)
  {
    v47 = 0;
  }

  else
  {
    v48 = 0;
    do
    {
      if (((63 - v45) >> 6) - 1 == v48)
      {

        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_36_3();

        __asm { BRAA            X2, X16 }
      }

      v47 = v48 + 1;
      v46 = *(v41 + 8 * v48++ + 64);
    }

    while (!v46);
  }

  *(v0 + 496) = v46;
  *(v0 + 504) = v47;
  OUTLINED_FUNCTION_15_1(__clz(__rbit64(v46)) | (v47 << 6));
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 528) = v49;
  *v49 = v50;
  OUTLINED_FUNCTION_10_1(v49);
  OUTLINED_FUNCTION_36_3();

  return sub_1BFA236E4(v51);
}

uint64_t sub_1BFA24750()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_37();
  *v2 = v1;
  v4 = v3[66];
  v5 = *(v1 + 426);
  v6 = v3[65];
  v7 = v3[64];
  v8 = v3[59];
  v9 = *v0;
  OUTLINED_FUNCTION_8();
  *v10 = v9;
  *(v12 + 536) = v11;

  sub_1BF9FC184();

  return MEMORY[0x1EEE6DFA0](sub_1BFA24898, v8, 0);
}

uint64_t sub_1BFA24898()
{
  v1 = *(v0 + 536);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
    v1 = sub_1BFAAF7D8();
  }

  v2 = *(v0 + 488);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 432) = v2;
  sub_1BFAA44D8(v1, sub_1BFA272F8, 0);
  v4 = *(v0 + 216);
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  v50 = *(v0 + 248);
  v52 = *(v0 + 256);
  v53 = *(v0 + 208);
  v7 = (*(v0 + 224) + 64) >> 6;
  v8 = *(v0 + 488);

  v10 = v5;
  v51 = v4;
  v49 = v7;
  while (1)
  {
    v11 = v6;
    if (!v6)
    {
      v12 = v5;
      while (1)
      {
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v10 >= v7)
        {
          goto LABEL_23;
        }

        v11 = *(v4 + 8 * v10);
        ++v12;
        if (v11)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_9:
    v13 = isUniquelyReferenced_nonNull_native;
    v14 = __clz(__rbit64(v11)) | (v10 << 6);
    v15 = (*(v53 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_1BFA27F7C(*(v53 + 56) + 48 * v14, v0 + 264);
    *(v0 + 80) = v16;
    *(v0 + 88) = v17;
    sub_1BFA17D30((v0 + 264), (v0 + 96));
    v18 = *(v0 + 80);
    v19 = *(v0 + 88);

    if (!v19)
    {
      break;
    }

    *(v0 + 144) = v18;
    *(v0 + 152) = v19;
    v20 = *(v0 + 112);
    *(v0 + 160) = *(v0 + 96);
    *(v0 + 176) = v20;
    *(v0 + 192) = *(v0 + 128);
    v50(v0 + 144);
    sub_1BF9FAB40(v0 + 144, &qword_1EBDFB8A8, &qword_1BFAB5050);
    v21 = *(v0 + 24);
    if (!v21)
    {
      goto LABEL_24;
    }

    v22 = *(v0 + 16);
    sub_1BFA17D30((v0 + 32), (v0 + 312));
    v24 = sub_1BFA01764(v22, v21);
    v25 = v8[2];
    v26 = (v23 & 1) == 0;
    result = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_41;
    }

    v27 = v23;
    if (v8[3] >= result)
    {
      if ((v13 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5F8, &unk_1BFAB1190);
        sub_1BFAAFCE8();
      }
    }

    else
    {
      sub_1BFAAB4D0(result);
      v28 = *(v0 + 432);
      sub_1BFA01764(v22, v21);
      OUTLINED_FUNCTION_16_2();
      if (!v30)
      {
        OUTLINED_FUNCTION_47_0();

        return sub_1BFAAFF38();
      }

      v24 = v29;
    }

    v7 = v49;
    if (v27)
    {

      v8 = *(v0 + 432);
      sub_1BFA27F7C(v8[7] + 48 * v24, v0 + 360);
      __swift_destroy_boxed_opaque_existential_2Tm((v0 + 312));
      v31 = (v8[7] + 48 * v24);
      __swift_destroy_boxed_opaque_existential_2Tm(v31);
      result = sub_1BFA17D30((v0 + 360), v31);
    }

    else
    {
      v8 = *(v0 + 432);
      v8[(v24 >> 6) + 8] |= 1 << v24;
      v32 = (v8[6] + 16 * v24);
      *v32 = v22;
      v32[1] = v21;
      result = sub_1BFA17D30((v0 + 312), (v8[7] + 48 * v24));
      v33 = v8[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_42;
      }

      v8[2] = v35;
    }

    v6 = (v11 - 1) & v11;
    isUniquelyReferenced_nonNull_native = 1;
    v5 = v10;
    v4 = v51;
  }

LABEL_23:
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_24:
  sub_1BFA27FF0();

  v37 = *(v0 + 496);
  v36 = *(v0 + 504);
  *(v0 + 488) = v8;
  v38 = (v37 - 1) & v37;
  if (!v38)
  {
    while (1)
    {
      v40 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v40 >= (((1 << *(v0 + 425)) + 63) >> 6))
      {
        v45 = *(v0 + 480);

        OUTLINED_FUNCTION_24_0();
        OUTLINED_FUNCTION_47_0();

        __asm { BRAA            X2, X16 }
      }

      v38 = *(*(v0 + 480) + 8 * v40 + 56);
      ++v36;
      if (v38)
      {
        v36 = v40;
        goto LABEL_30;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  v39 = *(v0 + 480);
LABEL_30:
  *(v0 + 496) = v38;
  *(v0 + 504) = v36;
  OUTLINED_FUNCTION_15_1(__clz(__rbit64(v38)) | (v36 << 6));
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 528) = v41;
  *v41 = v42;
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_47_0();

  return sub_1BFA236E4(v43);
}

uint64_t sub_1BFA24D20()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[8];
  v2 = v1[20];
  v3 = v1[21];
  swift_beginAccess();
  v4 = v1[14];
  v0[9] = v4;

  v8 = (v2 + *v2);
  v5 = v2[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_45(v6);

  return v8(v4);
}

uint64_t sub_1BFA24E34()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = v1[10];
  v3 = v1[9];
  v4 = v1[8];
  v5 = *v0;
  OUTLINED_FUNCTION_8();
  *v6 = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BFA24F50, v4, 0);
}

uint64_t sub_1BFA24F50()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_50_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8C0, &unk_1BFAB1980);
  sub_1BFAAF7E8();
  swift_endAccess();
  OUTLINED_FUNCTION_85();

  return v2();
}

uint64_t sub_1BFA24FDC()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_21_1();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = swift_task_alloc();
  v1[7] = v6;
  *v6 = v1;
  OUTLINED_FUNCTION_4_4(v6);
  OUTLINED_FUNCTION_112();

  return sub_1BFA24274(v7, v8, v9, v10);
}

uint64_t sub_1BFA2507C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_37();
  *v2 = v1;
  v4 = *(v3 + 56);
  v5 = *(v3 + 48);
  v6 = *v0;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v9 + 64) = v8;

  v10 = OUTLINED_FUNCTION_54_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA25178()
{
  v28 = v0;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v1 = v0[8];
  v2 = sub_1BFAAF688();
  __swift_project_value_buffer(v2, qword_1EDCC8B70);

  v3 = sub_1BFAAF668();
  sub_1BFAAFB68();
  OUTLINED_FUNCTION_53_0();
  if (OUTLINED_FUNCTION_52_0())
  {
    v4 = v0[8];
    OUTLINED_FUNCTION_51_0();
    v5 = OUTLINED_FUNCTION_116();
    v27 = v5;
    *v1 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
    v6 = sub_1BFAAF7C8();
    v8 = sub_1BF9F88A8(v6, v7, &v27);

    *(v1 + 4) = v8;
    OUTLINED_FUNCTION_28_0(&dword_1BF9F6000, v9, v10, "Calling into downstream client with properties: %s");
    __swift_destroy_boxed_opaque_existential_2Tm(v5);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  v11 = v0[8];
  if (!*(v11 + 16))
  {
    v12 = v0[8];

    v11 = 0;
  }

  v0[9] = v11;
  v13 = v0[6];
  v14 = v13[18];
  v15 = v13[19];
  __swift_project_boxed_opaque_existential_1(v13 + 15, v14);
  v16 = *(*(v15 + 24) + 16);
  v17 = *(v16 + 16);
  v26 = (v17 + *v17);
  v18 = v17[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v0[10] = v19;
  *v19 = v20;
  v19[1] = sub_1BFA253DC;
  v21 = v0[4];
  v22 = v0[5];
  v23 = v0[2];
  v24 = v0[3];

  return v26(v23, v24, v21, v22, v11, v14, v16);
}

uint64_t sub_1BFA253DC()
{
  OUTLINED_FUNCTION_43();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = v1[10];
  v5 = v1[9];
  v6 = *v0;
  *v3 = *v0;

  v7 = swift_task_alloc();
  v2[11] = v7;
  *v7 = v6;
  v7[1] = sub_1BFA2552C;
  v8 = v1[6];

  return sub_1BFA24D04();
}

uint64_t sub_1BFA2552C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  OUTLINED_FUNCTION_85();

  return v5();
}

uint64_t sub_1BFA2560C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2(sub_1BFA2562C, v2);
}

uint64_t sub_1BFA2562C()
{
  OUTLINED_FUNCTION_40();
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
  v1 = sub_1BFAAF7D8();
  v0[6] = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1BFA2570C;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = MEMORY[0x1E69E7CD0];

  return sub_1BFA24274(v5, v3, v6, v1);
}

uint64_t sub_1BFA2570C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_37();
  *v2 = v1;
  v4 = v3[7];
  v5 = v3[6];
  v6 = v3[4];
  v7 = *v0;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v10 + 64) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BFA2582C, v6, 0);
}

uint64_t sub_1BFA2582C()
{
  v25 = v0;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v1 = v0[8];
  v2 = sub_1BFAAF688();
  __swift_project_value_buffer(v2, qword_1EDCC8B70);

  v3 = sub_1BFAAF668();
  sub_1BFAAFB68();
  OUTLINED_FUNCTION_53_0();
  if (OUTLINED_FUNCTION_52_0())
  {
    v4 = v0[8];
    v5 = v0[5];
    OUTLINED_FUNCTION_51_0();
    v6 = OUTLINED_FUNCTION_116();
    v24 = v6;
    *v1 = 136315138;
    v7 = sub_1BFAAF7C8();
    v9 = sub_1BF9F88A8(v7, v8, &v24);

    *(v1 + 4) = v9;
    OUTLINED_FUNCTION_28_0(&dword_1BF9F6000, v10, v11, "Calling into downstream client with properties: %s");
    __swift_destroy_boxed_opaque_existential_2Tm(v6);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  v12 = v0[8];
  v13 = v0[4];
  v14 = v13[18];
  v15 = v13[19];
  __swift_project_boxed_opaque_existential_1(v13 + 15, v14);
  v16 = *(*(v15 + 16) + 8);
  v17 = *(v16 + 40);
  v23 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[9] = v19;
  *v19 = v0;
  v19[1] = sub_1BFA25A68;
  v21 = v0[2];
  v20 = v0[3];

  return v23(v21, v20, v12, v14, v16);
}

uint64_t sub_1BFA25A68()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_37();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    v9 = v3[4];

    return MEMORY[0x1EEE6DFA0](sub_1BFA25CAC, v9, 0);
  }

  else
  {
    v10 = v3[8];

    v11 = swift_task_alloc();
    v3[11] = v11;
    *v11 = v7;
    v11[1] = sub_1BFA25BC8;
    v12 = v3[4];

    return sub_1BFA24D04();
  }
}

uint64_t sub_1BFA25BC8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  OUTLINED_FUNCTION_85();

  return v5();
}

uint64_t sub_1BFA25CAC()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_85();
  v3 = *(v0 + 80);

  return v2();
}

void *LocalStateStoreClient.deinit()
{
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 15);
  v2 = v0[21];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t LocalStateStoreClient.__deallocating_deinit()
{
  LocalStateStoreClient.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BFA25D90()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_45_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_41(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_4_4(v3);
  OUTLINED_FUNCTION_112();

  return sub_1BFA22AF0(v5, v6, v7, v8);
}

uint64_t sub_1BFA25E24(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF9FDF08;

  return sub_1BFA2560C(a1, a2);
}

uint64_t sub_1BFA25ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1BF9FDE28;

  return (sub_1BFAADC04)(a1, a2, a3, a4, a5);
}

uint64_t sub_1BFA25FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BF9FDF08;

  return sub_1BFA2388C(a1, a2, a3);
}

uint64_t sub_1BFA26088()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDE28;

  return sub_1BFA24FDC();
}

uint64_t sub_1BFA26154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  return OUTLINED_FUNCTION_0_2(sub_1BFA26174, v3);
}

uint64_t sub_1BFA26174()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  sub_1BFA27F7C(v0[13], (v0 + 2));
  OUTLINED_FUNCTION_50_0();

  sub_1BFA1CAE8((v0 + 2), v3, v2);
  swift_endAccess();
  OUTLINED_FUNCTION_85();

  return v4();
}

uint64_t sub_1BFA26228()
{
  OUTLINED_FUNCTION_43();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_27_3();
  v2 = *(v1 + 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB550, &qword_1BFAB0970);
  v3 = sub_1BFAAF7C8();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t StoreCache.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t StoreCache.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1BFA2634C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1BFA1F8CC(a2 & 1);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8B0, &qword_1BFAB1970);
  if ((sub_1BFAAFCD8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_1BFA1F8CC(a2 & 1);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_1BFAAFF38();
    __break(1u);
    return result;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = v14[7];
    v16 = *(v15 + 8 * v9);
    *(v15 + 8 * v9) = a1;
  }

  else
  {

    return sub_1BFAABF28(v9, a2 & 1, a1, v14);
  }
}

uint64_t sub_1BFA26470(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BFA1F930(a2, a3, a4 & 1);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8B8, &qword_1BFAB1978);
  if ((sub_1BFAAFCD8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *v5;
  v16 = sub_1BFA1F930(a2, a3, a4 & 1);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_1BFAAFF38();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = *(v18 + 56);
    v20 = *(v19 + 8 * v13);
    *(v19 + 8 * v13) = a1;
  }

  else
  {
    sub_1BFAABF70(v13, a2, a3, a4 & 1, a1, v18);

    return sub_1BF9FC17C();
  }
}

uint64_t sub_1BFA265D0(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  v7 = OUTLINED_FUNCTION_3_4(a1, a2);
  v9 = sub_1BFA01764(v7, v8);
  OUTLINED_FUNCTION_5_1(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = sub_1BFAAFF38();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB740, &qword_1BFAB1508);
  OUTLINED_FUNCTION_34_1();
  if (sub_1BFAAFCD8())
  {
    v16 = *v3;
    sub_1BFA01764(v5, v4);
    OUTLINED_FUNCTION_16_2();
    if (!v18)
    {
      goto LABEL_14;
    }

    v14 = v17;
  }

  v19 = *v6;
  if (v15)
  {
    v20 = *(v19 + 56);
    v21 = sub_1BFAAE748();
    OUTLINED_FUNCTION_0(v21);
    v23 = *(v22 + 40);
    v24 = v20 + *(v22 + 72) * v14;
    OUTLINED_FUNCTION_56_1();

    __asm { BRAA            X3, X16 }
  }

  sub_1BFAABFB8(v14, v5, v4, v2, v19);
  OUTLINED_FUNCTION_56_1();
}

_OWORD *sub_1BFA26704(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  v7 = OUTLINED_FUNCTION_3_4(a1, a2);
  v9 = sub_1BFA01764(v7, v8);
  OUTLINED_FUNCTION_5_1(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
  OUTLINED_FUNCTION_34_1();
  if ((sub_1BFAAFCD8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v3;
  v17 = sub_1BFA01764(v5, v4);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_1BFAAFF38();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v6;
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_2Tm((*(v19 + 56) + 32 * v14));
    OUTLINED_FUNCTION_56_1();

    return sub_1BFA27FE0(v20, v21);
  }

  else
  {
    sub_1BFAAC048(v14, v5, v4, v2, v19);
    OUTLINED_FUNCTION_56_1();
  }
}

uint64_t sub_1BFA2681C(uint64_t a1, uint64_t a2, double a3)
{
  v7 = v4;
  v9 = OUTLINED_FUNCTION_3_4(a1, a2);
  v12 = sub_1BFA1FB54(v9, v10, v11);
  OUTLINED_FUNCTION_5_1(v12, v13);
  if (v16)
  {
    __break(1u);
LABEL_14:
    result = sub_1BFAAFF38();
    __break(1u);
    return result;
  }

  v17 = v14;
  v18 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB898, &qword_1BFAB7AF0);
  OUTLINED_FUNCTION_34_1();
  if (sub_1BFAAFCD8())
  {
    v19 = *v4;
    sub_1BFA1FB54(v6, v5, a3);
    OUTLINED_FUNCTION_16_2();
    if (!v21)
    {
      goto LABEL_14;
    }

    v17 = v20;
  }

  v22 = *v7;
  if (v18)
  {
    v23 = *(v22 + 56);
    v24 = sub_1BFAAEDF8();
    v25 = OUTLINED_FUNCTION_0(v24);
    v27 = *(v26 + 40);
    v28 = v25;
    v29 = v23 + *(v26 + 72) * v17;

    return v27(v29, v3, v28);
  }

  else
  {
    sub_1BFAAC098(v17, v6, v5, v3, v22);
  }
}

uint64_t sub_1BFA26978(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1BFAB1670;
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

uint64_t sub_1BFA269DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB890, &unk_1BFAB1950);
  result = sub_1BFAAFC18();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_1BFA26978(0, (v31 + 63) >> 6, v8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(v3 + 48) + 24 * (v14 | (v7 << 6));
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v6 + 40);
    sub_1BFAAFF98();
    MEMORY[0x1BFB611E0](v20);
    sub_1BFAAF908();
    result = sub_1BFAAFFE8();
    v22 = -1 << *(v6 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = *(v6 + 48) + 24 * v25;
    *v30 = v18;
    *(v30 + 8) = v19;
    *(v30 + 16) = v20;
    ++*(v6 + 16);
    v3 = v33;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v13 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}