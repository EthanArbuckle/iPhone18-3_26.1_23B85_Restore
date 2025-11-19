uint64_t sub_1C8DC7678(const void *a1, uint64_t a2)
{
  v5 = a2 + 64;
  v4 = *(a2 + 64);
  v6 = *(a2 + 32);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  v13 = 0;
  for (i = 0; v9; v13 ^= result)
  {
    v15 = i;
LABEL_7:
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v17 = v16 | (v15 << 6);
    v18 = (*(a2 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(*(a2 + 56) + 8 * v17);
    memcpy(__dst, a1, sizeof(__dst));

    sub_1C9063FBC();

    sub_1C8D39A08(__dst, v21);

    result = sub_1C9064DBC();
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      return MEMORY[0x1CCA82810](v13);
    }

    v9 = *(v5 + 8 * v15);
    ++i;
    if (v9)
    {
      i = v15;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8DC77B8(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v3 = *(a2 + 64);
  v5 = *(a2 + 32);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v31 = v11;

  v13 = 0;
  v14 = 0;
  while (1)
  {
    v32 = v13;
    if (!v8)
    {
      break;
    }

LABEL_7:
    v16 = __clz(__rbit64(v8)) | (v14 << 6);
    v17 = (*(v31 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(v31 + 56) + 24 * v16;
    v22 = *v20;
    v21 = *(v20 + 8);
    v23 = *(v20 + 16);

    sub_1C8DC8514(v22, v21, v23);
    if (!v18)
    {
LABEL_19:

      return MEMORY[0x1CCA82810](v32);
    }

    memcpy(__dst, a1, sizeof(__dst));
    sub_1C9063FBC();

    if (!v23)
    {
      v28 = v23;
LABEL_16:
      v29 = v32;
      MEMORY[0x1CCA82810](v28);
      sub_1C9063FBC();
      goto LABEL_18;
    }

    if (v23 != 1)
    {
      v28 = 2;
      goto LABEL_16;
    }

    LOBYTE(v23) = 1;
    MEMORY[0x1CCA82810](1);
    MEMORY[0x1CCA82810](*(v22 + 16));
    v24 = *(v22 + 16);
    if (v24)
    {
      v30 = a1;
      v25 = (v22 + 40);
      do
      {
        v26 = *(v25 - 1);
        v27 = *v25;

        sub_1C9063FBC();

        v25 += 2;
        --v24;
      }

      while (v24);
      LOBYTE(v23) = 1;
      a1 = v30;
    }

    v29 = v32;
LABEL_18:
    v8 &= v8 - 1;
    sub_1C8DC853C(v22, v21, v23);
    result = sub_1C9064DBC();
    v13 = result ^ v29;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      goto LABEL_19;
    }

    v8 = *(v4 + 8 * v15);
    ++v14;
    if (v8)
    {
      v14 = v15;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8DC79AC(const void *a1, uint64_t a2)
{
  v57 = a1;
  v50 = type metadata accessor for TypedValue.ID(0);
  v3 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ConcreteResolvable();
  v53 = *(v56 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F48, &unk_1C907AA90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v49 - v17);
  v19 = a2 + 64;
  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a2 + 64);
  v23 = (v20 + 63) >> 6;
  v54 = a2;

  v25 = 0;
  v26 = 0;
  v51 = v9;
  v58 = v15;
  while (1)
  {
    v59 = v25;
    if (!v22)
    {
      break;
    }

    v27 = v26;
LABEL_10:
    v28 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v29 = v28 | (v27 << 6);
    v30 = (*(v54 + 48) + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    v33 = v52;
    sub_1C8DC80D4(*(v54 + 56) + *(v53 + 72) * v29, v52);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F40, &unk_1C90720D0);
    v35 = *(v34 + 48);
    v36 = v58;
    *v58 = v32;
    *(v36 + 1) = v31;
    v15 = v36;
    sub_1C8DC8618(v33, &v36[v35]);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v34);

    v9 = v51;
LABEL_11:
    sub_1C8DC8670(v15, v18);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F40, &unk_1C90720D0);
    if (__swift_getEnumTagSinglePayload(v18, 1, v37) == 1)
    {

      return MEMORY[0x1CCA82810](v59);
    }

    v38 = *(v37 + 48);
    v39 = *v18;
    v40 = v18[1];
    sub_1C8DC8618(v18 + v38, v9);
    memcpy(__dst, v57, sizeof(__dst));
    sub_1C9063FBC();

    v41 = v55;
    sub_1C8DC80D4(v9, v55);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = v49;
      sub_1C8DC8618(v41, v49);
      MEMORY[0x1CCA82810](1);
      sub_1C906204C();
      sub_1C8DC82D8(&qword_1EDA666F0, MEMORY[0x1E69695A8]);
      sub_1C9063E7C();
      v43 = v50;
      v44 = (v42 + *(v50 + 20));
      v45 = *v44;
      v46 = v44[1];
      sub_1C9061F4C();
      v60 = *(v42 + *(v43 + 24));

      TypeInstance.hash(into:)();
      sub_1C8DC86E0();
      v15 = v58;
    }

    else
    {
      v47 = *v41;
      MEMORY[0x1CCA82810](0);
      v60 = v47;
      TypedValue.hash(into:)();
    }

    sub_1C8DC86E0();

    result = sub_1C9064DBC();
    v25 = result ^ v59;
  }

  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v23)
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F40, &unk_1C90720D0);
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v48);
      v22 = 0;
      goto LABEL_11;
    }

    v22 = *(v19 + 8 * v27);
    ++v26;
    if (v22)
    {
      v26 = v27;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C8DC7F1C()
{
  result = qword_1EC314E40;
  if (!qword_1EC314E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314E40);
  }

  return result;
}

unint64_t sub_1C8DC7F70()
{
  result = qword_1EDA60580;
  if (!qword_1EDA60580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC314E48, &qword_1C907A7C0);
    sub_1C8DC82D8(&qword_1EDA60A90, type metadata accessor for ConcreteResolvable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60580);
  }

  return result;
}

unint64_t sub_1C8DC802C()
{
  result = qword_1EDA624E8;
  if (!qword_1EDA624E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA624E8);
  }

  return result;
}

unint64_t sub_1C8DC8080()
{
  result = qword_1EDA63360;
  if (!qword_1EDA63360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63360);
  }

  return result;
}

uint64_t sub_1C8DC80D4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_257();
  v5 = v4(v3);
  OUTLINED_FUNCTION_13_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

unint64_t sub_1C8DC812C()
{
  result = qword_1EDA62E88;
  if (!qword_1EDA62E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC314E48, &qword_1C907A7C0);
    sub_1C8DC82D8(&qword_1EDA63650, type metadata accessor for ConcreteResolvable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62E88);
  }

  return result;
}

unint64_t sub_1C8DC81E8()
{
  result = qword_1EDA662F8;
  if (!qword_1EDA662F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA662F8);
  }

  return result;
}

unint64_t sub_1C8DC823C()
{
  result = qword_1EDA63368;
  if (!qword_1EDA63368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63368);
  }

  return result;
}

uint64_t sub_1C8DC82D8(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ToolInvocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8DC8410()
{
  result = qword_1EC314E60;
  if (!qword_1EC314E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314E60);
  }

  return result;
}

unint64_t sub_1C8DC8468()
{
  result = qword_1EC314E68;
  if (!qword_1EC314E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314E68);
  }

  return result;
}

unint64_t sub_1C8DC84C0()
{
  result = qword_1EC314E70;
  if (!qword_1EC314E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314E70);
  }

  return result;
}

uint64_t sub_1C8DC8514(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 2 || a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1C8DC853C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 2 || a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1C8DC8564(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_10_0(v3);
  (*v4)(a2);
  return a2;
}

unint64_t sub_1C8DC85C4()
{
  result = qword_1EC314E80;
  if (!qword_1EC314E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314E80);
  }

  return result;
}

uint64_t sub_1C8DC8618(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_257();
  v5 = v4(v3);
  OUTLINED_FUNCTION_13_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

uint64_t sub_1C8DC8670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F48, &unk_1C907AA90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8DC86E0()
{
  v1 = OUTLINED_FUNCTION_258();
  v3 = v2(v1);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void OUTLINED_FUNCTION_23_14()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 1;
  *(v0 + 40) = 0;
  v2 = *(v1 + 32);
}

uint64_t OUTLINED_FUNCTION_50_7()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);

  return sub_1C8D63F84(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_51_6()
{
  *(v3 - 224) = v1;

  return sub_1C8DC8564(v0 + 40 * v2, v3 - 128);
}

uint64_t OUTLINED_FUNCTION_52_7()
{

  return sub_1C8DC8564(v0 - 168, v0 - 208);
}

uint64_t AnyPredicate.init(predicate:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E90, &qword_1C907AAA0);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ComparisonPredicate(0);
  v12 = OUTLINED_FUNCTION_13_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_46_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E98, &qword_1C907AAA8);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_63_5(v10, 0);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1C8DCDD7C(v10, v2);
    v15 = OUTLINED_FUNCTION_336();
    sub_1C8DCDD7C(v15, v16);
    OUTLINED_FUNCTION_16_14();
    return swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_63_5(v10, 1);
  sub_1C8D16D78(v10, &qword_1EC314E90, &qword_1C907AAA0);
  OUTLINED_FUNCTION_46_6();
  if (OUTLINED_FUNCTION_26_8())
  {
    v17 = v25;
    v18 = v26;
    __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v17;
    *(a2 + 8) = v18;
    OUTLINED_FUNCTION_16_14();
    return swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_46_6();
  if (OUTLINED_FUNCTION_26_8())
  {
    v19 = v25;
    v20 = v26;
    __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v19;
    *(a2 + 8) = v20;
    OUTLINED_FUNCTION_16_14();
    return swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_46_6();
  if (OUTLINED_FUNCTION_26_8())
  {
    v21 = v25;
    v24 = v26;
    __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v21;
    *(a2 + 8) = v24;
    OUTLINED_FUNCTION_16_14();
    return swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_46_6();
  if (OUTLINED_FUNCTION_26_8())
  {
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_46_6();
  if (OUTLINED_FUNCTION_28_9() & 1) != 0 || (OUTLINED_FUNCTION_46_6(), (OUTLINED_FUNCTION_28_9()) || (OUTLINED_FUNCTION_46_6(), (OUTLINED_FUNCTION_28_9()))
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    OUTLINED_FUNCTION_16_14();
    return swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_46_6();
  if (OUTLINED_FUNCTION_26_8())
  {
LABEL_16:
    v22 = v25;
    __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = v22;
    OUTLINED_FUNCTION_16_14();
    return swift_storeEnumTagMultiPayload();
  }

  result = sub_1C906491C();
  __break(1u);
  return result;
}

unint64_t sub_1C8DC8B78@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AnyPredicate(0);
  v3 = OUTLINED_FUNCTION_13_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_0_40();
  v9 = OUTLINED_FUNCTION_206();
  sub_1C8DCDFE0(v9, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v19 = *v8;
      v20 = *(v8 + 8);
      a1[3] = &type metadata for CompoundPredicate;
      result = sub_1C8DCFA84();
      a1[4] = result;
      *a1 = v19;
      a1[1] = v20;
      return result;
    case 2u:
      v17 = *v8;
      v16 = *(v8 + 8);
      a1[3] = &type metadata for StringSearchPredicate;
      result = sub_1C8DCFA30();
      a1[4] = result;
      *a1 = v17;
      a1[1] = v16;
      return result;
    case 3u:
      v18 = *v8;
      a1[3] = &type metadata for IdSearchPredicate;
      result = sub_1C8D0C294();
      a1[4] = result;
      *a1 = v18;
      *(a1 + 1) = *(v8 + 8);
      return result;
    case 4u:
      v15 = *v8;
      a1[3] = &type metadata for SearchableItemPredicate;
      result = sub_1C8DCF9DC();
      goto LABEL_12;
    case 5u:
      a1[3] = &type metadata for AllPredicate;
      result = sub_1C8DCF988();
      goto LABEL_10;
    case 6u:
      a1[3] = &type metadata for ValidPredicate;
      result = sub_1C8DCF8E0();
      goto LABEL_10;
    case 7u:
      a1[3] = &type metadata for SuggestedPredicate;
      result = sub_1C8DCF934();
LABEL_10:
      a1[4] = result;
      break;
    case 8u:
      v15 = *v8;
      a1[3] = &type metadata for ValueSearchPredicate;
      result = sub_1C8DCF88C();
LABEL_12:
      a1[4] = result;
      *a1 = v15;
      break;
    default:
      a1[3] = type metadata accessor for ComparisonPredicate(0);
      OUTLINED_FUNCTION_15_14();
      a1[4] = sub_1C8DCDF78(v11, v12);
      __swift_allocate_boxed_opaque_existential_1(a1);
      OUTLINED_FUNCTION_14_18();
      result = sub_1C8DCDD7C(v8, v13);
      break;
  }

  return result;
}

uint64_t AnyPredicate.debugDescription.getter()
{
  v2 = 0;
  v3 = 0xE000000000000000;
  sub_1C8DC8B78(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E98, &qword_1C907AAA8);
  sub_1C90648BC();
  __swift_destroy_boxed_opaque_existential_1(v1);
  return v2;
}

uint64_t static AnyPredicate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v5 = type metadata accessor for ComparisonPredicate(0);
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v68 = (v10 - v9);
  v11 = type metadata accessor for AnyPredicate(0);
  v12 = OUTLINED_FUNCTION_13_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v68 - v19);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_35_10();
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v68 - v23);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v68 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314EA0, &qword_1C907AAB0);
  OUTLINED_FUNCTION_9(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v32);
  v35 = (&v68 + *(v34 + 56) - v33);
  v36 = a1;
  v37 = &v68 - v33;
  sub_1C8DCDFE0(v36, &v68 - v33);
  sub_1C8DCDFE0(v69, v35);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_40();
      sub_1C8DCDFE0(v37, v2);
      v58 = *(v2 + 1);
      OUTLINED_FUNCTION_206();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_33;
      }

      v59 = v35[1];
      if (*v2 != *v35)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_94();
      sub_1C8CEC394();
      goto LABEL_40;
    case 2u:
      OUTLINED_FUNCTION_0_40();
      v42 = OUTLINED_FUNCTION_336();
      sub_1C8DCDFE0(v42, v43);
      v45 = *v24;
      v44 = v24[1];
      OUTLINED_FUNCTION_206();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_33;
      }

      if (v45 == *v35 && v44 == v35[1])
      {

        goto LABEL_41;
      }

      v47 = v35[1];
      v48 = sub_1C9064C2C();
LABEL_40:
      v64 = v48;

      if (v64)
      {
        goto LABEL_41;
      }

      goto LABEL_45;
    case 3u:
      OUTLINED_FUNCTION_0_40();
      sub_1C8DCDFE0(v37, v3);
      v50 = *v3;
      v49 = v3[1];
      v51 = v3[2];
      OUTLINED_FUNCTION_206();
      if (swift_getEnumCaseMultiPayload() != 3)
      {

LABEL_33:

        goto LABEL_34;
      }

      v52 = *v35;
      v53 = v35[1];
      v54 = v35[2];
      v55 = v50 == v52 && v49 == v53;
      if (v55 || (sub_1C9064C2C() & 1) != 0)
      {
        sub_1C8CEB10C(v51, v54);
        v57 = v56;

        if (v57)
        {
LABEL_41:
          OUTLINED_FUNCTION_3_24();
          sub_1C8DCD790(v37, v65);
          v41 = 1;
          return v41 & 1;
        }
      }

      else
      {

LABEL_44:
      }

LABEL_45:
      OUTLINED_FUNCTION_3_24();
      sub_1C8DCD790(v37, v67);
      goto LABEL_35;
    case 4u:
      OUTLINED_FUNCTION_0_40();
      sub_1C8DCDFE0(v37, v20);
      v39 = *v20;
      OUTLINED_FUNCTION_206();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v40 = *v35;
        sub_1C8DC92EC();
        v41 = sub_1C90645BC();

        goto LABEL_37;
      }

      goto LABEL_34;
    case 5u:
      OUTLINED_FUNCTION_206();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_41;
      }

      goto LABEL_34;
    case 6u:
      OUTLINED_FUNCTION_206();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_41;
      }

      goto LABEL_34;
    case 7u:
      OUTLINED_FUNCTION_206();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_41;
      }

      goto LABEL_34;
    case 8u:
      OUTLINED_FUNCTION_0_40();
      sub_1C8DCDFE0(v37, v17);
      v60 = *v17;
      OUTLINED_FUNCTION_206();
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_33;
      }

      v41 = sub_1C8CEC2D4(v60, *v35);

      goto LABEL_37;
    default:
      OUTLINED_FUNCTION_0_40();
      sub_1C8DCDFE0(v37, v28);
      OUTLINED_FUNCTION_206();
      if (swift_getEnumCaseMultiPayload())
      {
        OUTLINED_FUNCTION_13_14();
        sub_1C8DCD790(v28, v38);
LABEL_34:
        sub_1C8D16D78(v37, &qword_1EC314EA0, &qword_1C907AAB0);
LABEL_35:
        v41 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_14_18();
        v61 = v35;
        v62 = v68;
        sub_1C8DCDD7C(v61, v68);
        v41 = static ComparisonPredicate.== infix(_:_:)(v28, v62);
        sub_1C8DCD790(v62, type metadata accessor for ComparisonPredicate);
        sub_1C8DCD790(v28, type metadata accessor for ComparisonPredicate);
LABEL_37:
        OUTLINED_FUNCTION_3_24();
        sub_1C8DCD790(v37, v63);
      }

      return v41 & 1;
  }
}

unint64_t sub_1C8DC92EC()
{
  result = qword_1EDA60460;
  if (!qword_1EDA60460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDA60460);
  }

  return result;
}

uint64_t sub_1C8DC9330(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73697261706D6F63 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646E756F706D6F63 && a2 == 0xE800000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6553676E69727473 && a2 == 0xEC00000068637261;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6863726165536469 && a2 == 0xE800000000000000;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6261686372616573 && a2 == 0xEE006D657449656CLL;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 7105633 && a2 == 0xE300000000000000;
            if (v10 || (sub_1C9064C2C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x64696C6176 && a2 == 0xE500000000000000;
              if (v11 || (sub_1C9064C2C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6574736567677573 && a2 == 0xE900000000000064;
                if (v12 || (sub_1C9064C2C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x61655365756C6176 && a2 == 0xEB00000000686372)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1C9064C2C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C8DC9614(char a1)
{
  result = 0x73697261706D6F63;
  switch(a1)
  {
    case 1:
      result = 0x646E756F706D6F63;
      break;
    case 2:
      result = 0x6553676E69727473;
      break;
    case 3:
      result = 0x6863726165536469;
      break;
    case 4:
      result = 0x6261686372616573;
      break;
    case 5:
      result = 7105633;
      break;
    case 6:
      result = 0x64696C6176;
      break;
    case 7:
      result = 0x6574736567677573;
      break;
    case 8:
      result = 0x61655365756C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8DC9728(uint64_t a1)
{
  v2 = sub_1C8DCD9E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DC9764(uint64_t a1)
{
  v2 = sub_1C8DCD9E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DC97A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DC9330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DC97D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8DC960C();
  *a1 = result;
  return result;
}

uint64_t sub_1C8DC97F8(uint64_t a1)
{
  v2 = sub_1C8DCD7E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DC9834(uint64_t a1)
{
  v2 = sub_1C8DCD7E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DC9870(uint64_t a1)
{
  v2 = sub_1C8DCDCD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DC98AC(uint64_t a1)
{
  v2 = sub_1C8DCDCD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DC98E8(uint64_t a1)
{
  v2 = sub_1C8DCDC2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DC9924(uint64_t a1)
{
  v2 = sub_1C8DCDC2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DC9960(uint64_t a1)
{
  v2 = sub_1C8DCDB30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DC999C(uint64_t a1)
{
  v2 = sub_1C8DCDB30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DC99D8(uint64_t a1)
{
  v2 = sub_1C8DCDA88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DC9A14(uint64_t a1)
{
  v2 = sub_1C8DCDA88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DC9A50(uint64_t a1)
{
  v2 = sub_1C8DCDB84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DC9A8C(uint64_t a1)
{
  v2 = sub_1C8DCDB84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DC9AC8(uint64_t a1)
{
  v2 = sub_1C8DCD8E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DC9B04(uint64_t a1)
{
  v2 = sub_1C8DCD8E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DC9B40(uint64_t a1)
{
  v2 = sub_1C8DCD938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DC9B7C(uint64_t a1)
{
  v2 = sub_1C8DCD938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DC9BB8(uint64_t a1)
{
  v2 = sub_1C8DCD83C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DC9BF4(uint64_t a1)
{
  v2 = sub_1C8DCD83C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AnyPredicate.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v24;
  a20 = v25;
  a10 = v22;
  v162 = v21;
  v27 = v26;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314EA8, &qword_1C907AAB8);
  OUTLINED_FUNCTION_11(v160);
  v141[5] = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_97();
  v159 = v32;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314EB0, &qword_1C907AAC0);
  OUTLINED_FUNCTION_11(v158);
  v141[4] = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_97();
  v157 = v37;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314EB8, &qword_1C907AAC8);
  OUTLINED_FUNCTION_11(v156);
  v141[3] = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_97();
  v155 = v42;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314EC0, &qword_1C907AAD0);
  OUTLINED_FUNCTION_11(v154);
  v141[2] = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_97();
  v153 = v47;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314EC8, &qword_1C907AAD8);
  OUTLINED_FUNCTION_11(v152);
  v141[1] = v48;
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_97();
  v151 = v52;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314ED0, &qword_1C907AAE0);
  OUTLINED_FUNCTION_11(v150);
  v141[0] = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_97();
  v149 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314ED8, &qword_1C907AAE8);
  v59 = OUTLINED_FUNCTION_11(v58);
  v147 = v60;
  v148 = v59;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_97();
  v146 = v64;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314EE0, &qword_1C907AAF0);
  OUTLINED_FUNCTION_11(v145);
  v144 = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_97();
  v142 = v69;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314EE8, &qword_1C907AAF8);
  OUTLINED_FUNCTION_11(v143);
  v141[6] = v70;
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v73);
  v74 = OUTLINED_FUNCTION_48_6();
  v75 = type metadata accessor for ComparisonPredicate(v74);
  v76 = OUTLINED_FUNCTION_13_1(v75);
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_15();
  v79 = OUTLINED_FUNCTION_288_0();
  v80 = type metadata accessor for AnyPredicate(v79);
  v81 = OUTLINED_FUNCTION_13_1(v80);
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_15();
  v86 = v85 - v84;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314EF0, &qword_1C907AB00);
  OUTLINED_FUNCTION_11(v164);
  v161 = v87;
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v90);
  v92 = v141 - v91;
  v93 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1C8DCD7E8();
  v163 = v92;
  sub_1C9064E1C();
  OUTLINED_FUNCTION_0_40();
  sub_1C8DCDFE0(v162, v86);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v130 = *v86;
      v131 = *(v86 + 8);
      LOBYTE(v165) = 1;
      sub_1C8DCDC2C();
      v132 = v142;
      v133 = v163;
      v134 = v164;
      OUTLINED_FUNCTION_27_9();
      sub_1C9064ACC();
      LOBYTE(v165) = v130;
      v166 = v131;
      sub_1C8DCDC80();
      v135 = v145;
      OUTLINED_FUNCTION_65_3();
      OUTLINED_FUNCTION_296(&a16);
      v136(v132, v135);
      (*(v161 + 8))(v133, v134);
      goto LABEL_14;
    case 2u:
      v109 = *v86;
      v108 = *(v86 + 8);
      LOBYTE(v165) = 2;
      sub_1C8DCDB84();
      v110 = v146;
      v111 = v164;
      OUTLINED_FUNCTION_44_11();
      sub_1C9064ACC();
      v165 = v109;
      v166 = v108;
      sub_1C8DCDBD8();
      v112 = v148;
      OUTLINED_FUNCTION_65_3();
      (*(v147 + 8))(v110, v112);
      v113 = OUTLINED_FUNCTION_241();
      v115 = v111;
      goto LABEL_13;
    case 3u:
      v117 = *v86;
      v116 = *(v86 + 8);
      v118 = *(v86 + 16);
      LOBYTE(v165) = 3;
      sub_1C8DCDB30();
      v119 = v149;
      sub_1C9064ACC();
      v165 = v117;
      v166 = v116;
      v167 = v118;
      sub_1C8D0C034();
      v120 = v150;
      sub_1C9064B8C();
      OUTLINED_FUNCTION_296(&v167);
      v121(v119, v120);
      v122 = *(v161 + 8);
      v123 = OUTLINED_FUNCTION_203();
      v124(v123);

      goto LABEL_14;
    case 4u:
      v103 = *v86;
      LOBYTE(v165) = 4;
      sub_1C8DCDA88();
      OUTLINED_FUNCTION_51_7();
      v165 = v103;
      sub_1C8DCDADC();
      OUTLINED_FUNCTION_65_3();
      OUTLINED_FUNCTION_296(&v168);
      v104 = OUTLINED_FUNCTION_203();
      v105(v104);
      v106 = OUTLINED_FUNCTION_17_3();
      v107(v106);

      goto LABEL_15;
    case 5u:
      LOBYTE(v165) = 5;
      sub_1C8DCD9E0();
      v125 = v153;
      v127 = v163;
      v126 = v164;
      OUTLINED_FUNCTION_27_9();
      sub_1C9064ACC();
      sub_1C8DCDA34();
      v128 = v154;
      OUTLINED_FUNCTION_42_7();
      v129 = &a9;
      goto LABEL_10;
    case 6u:
      LOBYTE(v165) = 6;
      sub_1C8DCD938();
      v125 = v155;
      v127 = v163;
      v126 = v164;
      OUTLINED_FUNCTION_27_9();
      sub_1C9064ACC();
      sub_1C8DCD98C();
      v128 = v156;
      OUTLINED_FUNCTION_42_7();
      v129 = &a10;
      goto LABEL_10;
    case 7u:
      LOBYTE(v165) = 7;
      sub_1C8DCD8E4();
      v125 = v157;
      v127 = v163;
      v126 = v164;
      OUTLINED_FUNCTION_27_9();
      sub_1C9064ACC();
      sub_1C8D94414();
      v128 = v158;
      OUTLINED_FUNCTION_42_7();
      v129 = &a11;
LABEL_10:
      OUTLINED_FUNCTION_296(v129);
      v137(v125, v128);
      v101 = *(v161 + 8);
      v100 = v127;
      v102 = v126;
      goto LABEL_11;
    case 8u:
      v138 = *v86;
      LOBYTE(v165) = 8;
      sub_1C8DCD83C();
      OUTLINED_FUNCTION_51_7();
      v165 = v138;
      sub_1C8DCD890();
      OUTLINED_FUNCTION_65_3();
      OUTLINED_FUNCTION_296(&a12);
      v139 = OUTLINED_FUNCTION_203();
      v140(v139);
      v113 = OUTLINED_FUNCTION_17_3();
LABEL_13:
      v114(v113, v115);
LABEL_14:

      goto LABEL_15;
    default:
      sub_1C8DCDD7C(v86, v23);
      LOBYTE(v165) = 0;
      sub_1C8DCDCD4();
      v94 = v164;
      OUTLINED_FUNCTION_44_11();
      sub_1C9064ACC();
      OUTLINED_FUNCTION_15_14();
      sub_1C8DCDF78(v95, v96);
      v97 = v143;
      sub_1C9064B8C();
      OUTLINED_FUNCTION_296(&a13);
      v98(v20, v97);
      OUTLINED_FUNCTION_13_14();
      sub_1C8DCD790(v23, v99);
      v100 = OUTLINED_FUNCTION_241();
      v102 = v94;
LABEL_11:
      v101(v100, v102);
LABEL_15:
      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_198();
      return;
  }
}

void AnyPredicate.hash(into:)()
{
  v2 = OUTLINED_FUNCTION_257();
  v3 = type metadata accessor for ComparisonPredicate(v2);
  v4 = OUTLINED_FUNCTION_9(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v7 = OUTLINED_FUNCTION_48_6();
  v8 = type metadata accessor for AnyPredicate(v7);
  v9 = OUTLINED_FUNCTION_13_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v14 = (v13 - v12);
  OUTLINED_FUNCTION_0_40();
  sub_1C8DCDFE0(v1, v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = *v14;
      v24 = v14[1];
      MEMORY[0x1CCA82810](1);
      MEMORY[0x1CCA82810](v23);
      sub_1C8D0389C();
      goto LABEL_13;
    case 2u:
      v17 = *v14;
      v18 = v14[1];
      MEMORY[0x1CCA82810](2);
      sub_1C9063FBC();
      goto LABEL_13;
    case 3u:
      v19 = *v14;
      v20 = v14[1];
      v21 = v14[2];
      MEMORY[0x1CCA82810](3);
      sub_1C9063FBC();
      sub_1C8CC1590(v1, v21);

      goto LABEL_13;
    case 4u:
      v16 = *v14;
      MEMORY[0x1CCA82810](4);
      sub_1C90645CC();

      return;
    case 5u:
      v22 = 5;
      goto LABEL_11;
    case 6u:
      v22 = 6;
      goto LABEL_11;
    case 7u:
      v22 = 7;
LABEL_11:
      MEMORY[0x1CCA82810](v22);
      break;
    case 8u:
      v25 = *v14;
      MEMORY[0x1CCA82810](8);
      sub_1C8D03430(v1, v25);
LABEL_13:

      break;
    default:
      OUTLINED_FUNCTION_14_18();
      sub_1C8DCDD7C(v14, v0);
      MEMORY[0x1CCA82810](0);
      ComparisonPredicate.hash(into:)();
      OUTLINED_FUNCTION_13_14();
      sub_1C8DCD790(v0, v15);
      break;
  }
}

void AnyPredicate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_196();
  a19 = v24;
  a20 = v25;
  a10 = v20;
  v27 = v26;
  v208 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314F58, &qword_1C907AB08);
  v30 = OUTLINED_FUNCTION_11(v29);
  v198 = v31;
  v199 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_97();
  v207 = v35;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314F60, &qword_1C907AB10);
  OUTLINED_FUNCTION_11(v197);
  v196 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_97();
  v206 = v40;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314F68, &qword_1C907AB18);
  OUTLINED_FUNCTION_11(v195);
  v194 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_97();
  v205 = v45;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314F70, &qword_1C907AB20);
  OUTLINED_FUNCTION_11(v193);
  v192 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_97();
  v204 = v50;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314F78, &qword_1C907AB28);
  OUTLINED_FUNCTION_11(v190);
  v191 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_97();
  v213 = v55;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314F80, &qword_1C907AB30);
  OUTLINED_FUNCTION_11(v189);
  v188 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_97();
  v203 = v60;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314F88, &qword_1C907AB38);
  OUTLINED_FUNCTION_11(v182);
  v187 = v61;
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_97();
  v202 = v65;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314F90, &qword_1C907AB40);
  OUTLINED_FUNCTION_11(v186);
  v185 = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_97();
  v200 = v70;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314F98, &qword_1C907AB48);
  OUTLINED_FUNCTION_11(v184);
  v183 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_97();
  v201 = v75;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314FA0, &unk_1C907AB50);
  OUTLINED_FUNCTION_11(v212);
  v209 = v76;
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v79);
  v80 = OUTLINED_FUNCTION_58_6();
  v211 = type metadata accessor for AnyPredicate(v80);
  v81 = OUTLINED_FUNCTION_13_1(v211);
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_216();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_216();
  v210 = v88;
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_35_10();
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v172 - v91;
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v172 - v94;
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v172 - v98;
  v101 = v27[3];
  v100 = v27[4];
  v215 = v27;
  __swift_project_boxed_opaque_existential_1(v27, v101);
  sub_1C8DCD7E8();
  v214 = v22;
  v102 = a10;
  sub_1C9064DEC();
  if (v102)
  {
    goto LABEL_8;
  }

  v174 = v95;
  v177 = v21;
  v175 = v92;
  v176 = v23;
  v104 = v210;
  v103 = v211;
  v105 = v212;
  v106 = v213;
  a10 = v99;
  v107 = v214;
  v108 = sub_1C9064A9C();
  sub_1C8CB8914(v108, 0);
  if (v110 == v111 >> 1)
  {
LABEL_7:
    v118 = v107;
    v119 = v105;
    v120 = sub_1C90647DC();
    swift_allocError();
    v122 = v121;
    v123 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v122 = v103;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    v124 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v120);
    (*(v125 + 104))(v122);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_40_8();
    v126(v118, v119);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v215);
LABEL_9:
    OUTLINED_FUNCTION_198();
    return;
  }

  v173 = 0;
  if (v110 < (v111 >> 1))
  {
    v172 = *(v109 + v110);
    sub_1C8CB891C(v110 + 1);
    v113 = v112;
    v115 = v114;
    swift_unknownObjectRelease();
    if (v113 == v115 >> 1)
    {
      v116 = v208;
      switch(v172)
      {
        case 1:
          LOBYTE(v216) = 1;
          sub_1C8DCDC2C();
          v129 = v200;
          OUTLINED_FUNCTION_10_18();
          sub_1C8DCDF24();
          v130 = v186;
          sub_1C9064A6C();
          OUTLINED_FUNCTION_8_21();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296(&v217);
          v155(v129, v130);
          v156 = OUTLINED_FUNCTION_18_11();
          v157(v156);
          v158 = v217;
          v146 = v174;
          *v174 = v216;
          v146[1] = v158;
          OUTLINED_FUNCTION_210();
          goto LABEL_18;
        case 2:
          LOBYTE(v216) = 2;
          sub_1C8DCDB84();
          OUTLINED_FUNCTION_9_16();
          sub_1C8DCDED0();
          OUTLINED_FUNCTION_23_15();
          OUTLINED_FUNCTION_8_21();
          swift_unknownObjectRelease();
          v141 = OUTLINED_FUNCTION_19_13(&v218);
          v142(v141);
          v143 = OUTLINED_FUNCTION_18_11();
          v144(v143);
          v145 = v217;
          v146 = v175;
          *v175 = v216;
          v146[1] = v145;
          OUTLINED_FUNCTION_210();
          goto LABEL_18;
        case 3:
          LOBYTE(v216) = 3;
          sub_1C8DCDB30();
          OUTLINED_FUNCTION_9_16();
          sub_1C8D0BFE0();
          OUTLINED_FUNCTION_23_15();
          OUTLINED_FUNCTION_8_21();
          swift_unknownObjectRelease();
          v147 = OUTLINED_FUNCTION_19_13(&a9);
          v148(v147);
          v149 = OUTLINED_FUNCTION_18_11();
          v150(v149);
          v146 = v176;
          *v176 = v216;
          *(v146 + 1) = v217;
          OUTLINED_FUNCTION_210();
          goto LABEL_18;
        case 4:
          LOBYTE(v216) = 4;
          sub_1C8DCDA88();
          v127 = v106;
          OUTLINED_FUNCTION_9_16();
          sub_1C8DCDE7C();
          v128 = v190;
          OUTLINED_FUNCTION_44_11();
          sub_1C9064A6C();
          v173 = 0;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296(&a12);
          v137(v127, v128);
          OUTLINED_FUNCTION_40_8();
          v138(v107, v105);
          *v104 = v216;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_36();
          v139 = a10;
          sub_1C8DCDD7C(v104, a10);
          v140 = v215;
          v116 = v208;
          goto LABEL_20;
        case 5:
          LOBYTE(v216) = 5;
          sub_1C8DCD9E0();
          OUTLINED_FUNCTION_9_16();
          sub_1C8DCDE28();
          OUTLINED_FUNCTION_23_15();
          OUTLINED_FUNCTION_8_21();
          swift_unknownObjectRelease();
          v162 = OUTLINED_FUNCTION_19_13(&a13);
          v163(v162);
          v164 = OUTLINED_FUNCTION_18_11();
          v165(v164);
          v146 = v178;
          OUTLINED_FUNCTION_210();
          goto LABEL_18;
        case 6:
          LOBYTE(v216) = 6;
          sub_1C8DCD938();
          OUTLINED_FUNCTION_9_16();
          sub_1C8DCDDD4();
          OUTLINED_FUNCTION_23_15();
          OUTLINED_FUNCTION_8_21();
          swift_unknownObjectRelease();
          v166 = OUTLINED_FUNCTION_19_13(&a15);
          v167(v166);
          v168 = OUTLINED_FUNCTION_18_11();
          v169(v168);
          v146 = v179;
          OUTLINED_FUNCTION_210();
          goto LABEL_18;
        case 7:
          LOBYTE(v216) = 7;
          sub_1C8DCD8E4();
          OUTLINED_FUNCTION_9_16();
          sub_1C8D943C0();
          OUTLINED_FUNCTION_23_15();
          OUTLINED_FUNCTION_8_21();
          swift_unknownObjectRelease();
          v151 = OUTLINED_FUNCTION_19_13(&a17);
          v152(v151);
          v153 = OUTLINED_FUNCTION_18_11();
          v154(v153);
          v146 = v180;
          OUTLINED_FUNCTION_210();
          goto LABEL_18;
        case 8:
          LOBYTE(v216) = 8;
          sub_1C8DCD83C();
          v131 = v207;
          OUTLINED_FUNCTION_9_16();
          sub_1C8DCDD28();
          v136 = v199;
          OUTLINED_FUNCTION_23_15();
          OUTLINED_FUNCTION_8_21();
          swift_unknownObjectRelease();
          (*(v198 + 8))(v131, v136);
          v170 = OUTLINED_FUNCTION_18_11();
          v171(v170);
          v146 = v181;
          *v181 = v216;
          OUTLINED_FUNCTION_210();
LABEL_18:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_36();
          v161 = v146;
          break;
        default:
          LOBYTE(v216) = 0;
          sub_1C8DCDCD4();
          v117 = v201;
          OUTLINED_FUNCTION_10_18();
          type metadata accessor for ComparisonPredicate(0);
          OUTLINED_FUNCTION_15_14();
          sub_1C8DCDF78(v132, v133);
          v134 = v177;
          v135 = v184;
          sub_1C9064A6C();
          v173 = 0;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_296(&v215);
          v159(v117, v135);
          OUTLINED_FUNCTION_40_8();
          v160(v214, v105);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_36();
          v161 = v134;
          break;
      }

      v139 = a10;
      sub_1C8DCDD7C(v161, a10);
      v140 = v215;
LABEL_20:
      OUTLINED_FUNCTION_1_36();
      sub_1C8DCDD7C(v139, v116);
      __swift_destroy_boxed_opaque_existential_1(v140);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t Predicate.toAny()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7[3] = a1;
  v7[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_10_0(a1);
  (*(v5 + 16))();
  return AnyPredicate.init(predicate:)(v7, a3);
}

uint64_t AnyPredicateTemplate.init(predicateTemplate:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314FC8, &qword_1C907AB60);
  OUTLINED_FUNCTION_9(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_32_7();
  v11 = type metadata accessor for ComparisonPredicate.Template(v10);
  v12 = OUTLINED_FUNCTION_13_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_46_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314FD0, &qword_1C907AB68);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_63_5(v2, 0);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1C8DCDD7C(v2, v3);
    v15 = OUTLINED_FUNCTION_336();
    sub_1C8DCDD7C(v15, v16);
    OUTLINED_FUNCTION_64_2();
    return swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_63_5(v2, 1);
  sub_1C8D16D78(v2, &qword_1EC314FC8, &qword_1C907AB60);
  OUTLINED_FUNCTION_46_6();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    OUTLINED_FUNCTION_64_2();
    return swift_storeEnumTagMultiPayload();
  }

  sub_1C8DC8564(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E98, &qword_1C907AAA8);
  if (swift_dynamicCast())
  {
    sub_1C8D04FA4(v18, v21);
    sub_1C8DC8564(v21, v20);
    AnyPredicate.init(predicate:)(v20, a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_64_2();
    return swift_storeEnumTagMultiPayload();
  }

  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_1C8D16D78(v18, &qword_1EC314FD8, &qword_1C907AB70);
  result = sub_1C906491C();
  __break(1u);
  return result;
}

void AnyPredicateTemplate.instantiate(with:)()
{
  OUTLINED_FUNCTION_196();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for AnyPredicate(0);
  v6 = OUTLINED_FUNCTION_13_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  v9 = type metadata accessor for AnyPredicateTemplate(0);
  v10 = OUTLINED_FUNCTION_13_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_2_27();
  v16 = OUTLINED_FUNCTION_114();
  sub_1C8DCDFE0(v16, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = &type metadata for StringSearchPredicate.Template;
      v30 = sub_1C8DCE088();
    }

    else
    {
      OUTLINED_FUNCTION_1_36();
      v22 = OUTLINED_FUNCTION_203();
      sub_1C8DCDD7C(v22, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314FD0, &qword_1C907AB68);
      swift_dynamicCast();
    }
  }

  else
  {
    v29 = type metadata accessor for ComparisonPredicate.Template(0);
    OUTLINED_FUNCTION_12_13();
    v30 = sub_1C8DCDF78(v19, v20);
    __swift_allocate_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_5_20();
    sub_1C8DCDD7C(v15, v21);
  }

  v24 = v29;
  v25 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v26 = *(v25 + 56);
  v27[3] = swift_getAssociatedTypeWitness();
  v27[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v27);
  v26(v2, v24, v25);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_deallocate_boxed_opaque_existential_1(v27);
  }

  else
  {
    AnyPredicate.init(predicate:)(v27, v4);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t AnyPredicateTemplate.debugDescription.getter()
{
  v4 = type metadata accessor for AnyPredicate(0);
  v5 = OUTLINED_FUNCTION_13_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = OUTLINED_FUNCTION_48_6();
  v9 = type metadata accessor for ComparisonPredicate.Template(v8);
  v10 = OUTLINED_FUNCTION_13_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = OUTLINED_FUNCTION_32_7();
  v14 = type metadata accessor for AnyPredicateTemplate(v13);
  v15 = OUTLINED_FUNCTION_13_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_2_27();
  sub_1C8DCDFE0(v1, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_5_20();
    sub_1C8DCDD7C(v3, v2);
    sub_1C90648BC();
    OUTLINED_FUNCTION_11_16();
    v20 = v2;
LABEL_6:
    sub_1C8DCD790(v20, v19);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v21 = OUTLINED_FUNCTION_336();
    sub_1C8DCDD7C(v21, v22);
    sub_1C90648BC();
    OUTLINED_FUNCTION_3_24();
    v20 = v0;
    goto LABEL_6;
  }

  sub_1C90648BC();
  return 0;
}

uint64_t static AnyPredicateTemplate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for AnyPredicate(0);
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  v13 = type metadata accessor for ComparisonPredicate.Template(0);
  v14 = OUTLINED_FUNCTION_9(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v17 = OUTLINED_FUNCTION_32_7();
  v18 = type metadata accessor for AnyPredicateTemplate(v17);
  v19 = OUTLINED_FUNCTION_13_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_311();
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v40 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314FF0, &qword_1C907AB78);
  OUTLINED_FUNCTION_9(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v40 - v29;
  v32 = *(v31 + 56);
  sub_1C8DCDFE0(a1, &v40 - v29);
  sub_1C8DCDFE0(a2, &v30[v32]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_2_27();
    sub_1C8DCDFE0(v30, v24);
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_5_20();
      sub_1C8DCDD7C(&v30[v32], v2);
      v34 = static ComparisonPredicate.Template.== infix(_:_:)(v24, v2);
      sub_1C8DCD790(v2, type metadata accessor for ComparisonPredicate.Template);
      v37 = v24;
      v38 = type metadata accessor for ComparisonPredicate.Template;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_11_16();
    v36 = v24;
LABEL_10:
    sub_1C8DCD790(v36, v35);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_2_27();
    sub_1C8DCDFE0(v30, v3);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      OUTLINED_FUNCTION_1_36();
      sub_1C8DCDD7C(&v30[v32], v12);
      v34 = static AnyPredicate.== infix(_:_:)(v3, v12);
      sub_1C8DCD790(v12, type metadata accessor for AnyPredicate);
      v37 = v3;
      v38 = type metadata accessor for AnyPredicate;
LABEL_13:
      sub_1C8DCD790(v37, v38);
      OUTLINED_FUNCTION_31_8();
      return v34 & 1;
    }

    OUTLINED_FUNCTION_3_24();
    v36 = v3;
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_11:
    sub_1C8D16D78(v30, &qword_1EC314FF0, &qword_1C907AB78);
    v34 = 0;
    return v34 & 1;
  }

  OUTLINED_FUNCTION_31_8();
  v34 = 1;
  return v34 & 1;
}

uint64_t sub_1C8DCC2BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73697261706D6F63 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6553676E69727473 && a2 == 0xEC00000068637261;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8DCC3E0(char a1)
{
  if (!a1)
  {
    return 0x73697261706D6F63;
  }

  if (a1 == 1)
  {
    return 0x6553676E69727473;
  }

  return 0x7461636964657270;
}

uint64_t sub_1C8DCC448(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9064C2C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C8DCC4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DCC2BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DCC4E8(uint64_t a1)
{
  v2 = sub_1C8DCE0DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DCC524(uint64_t a1)
{
  v2 = sub_1C8DCE0DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DCC560(uint64_t a1)
{
  v2 = sub_1C8DCE22C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DCC59C(uint64_t a1)
{
  v2 = sub_1C8DCE22C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DCC5D8(uint64_t a1)
{
  v2 = sub_1C8DCE130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DCC614(uint64_t a1)
{
  v2 = sub_1C8DCE130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DCC650(uint64_t a1)
{
  v2 = sub_1C8DCE184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DCC68C(uint64_t a1)
{
  v2 = sub_1C8DCE184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AnyPredicateTemplate.encode(to:)()
{
  OUTLINED_FUNCTION_196();
  v74 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314FF8, &qword_1C907AB80);
  v4 = OUTLINED_FUNCTION_11(v3);
  v72 = v5;
  v73 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_97();
  v71 = v9;
  v69 = type metadata accessor for AnyPredicate(0);
  v10 = OUTLINED_FUNCTION_13_1(v69);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v70 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315000, &qword_1C907AB88);
  v16 = OUTLINED_FUNCTION_11(v15);
  v67[3] = v17;
  v68 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315008, &qword_1C907AB90);
  v24 = OUTLINED_FUNCTION_11(v23);
  v67[1] = v25;
  v67[2] = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  v29 = OUTLINED_FUNCTION_288_0();
  v67[0] = type metadata accessor for ComparisonPredicate.Template(v29);
  v30 = OUTLINED_FUNCTION_13_1(v67[0]);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_15();
  v35 = v34 - v33;
  v36 = type metadata accessor for AnyPredicateTemplate(0);
  v37 = OUTLINED_FUNCTION_13_1(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_15();
  v42 = v41 - v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315010, &qword_1C907AB98);
  v44 = OUTLINED_FUNCTION_11(v43);
  v75 = v45;
  v76 = v44;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_146();
  v49 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C8DCE0DC();
  sub_1C9064E1C();
  OUTLINED_FUNCTION_2_27();
  sub_1C8DCDFE0(v74, v42);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1C8DCDD7C(v42, v35);
    sub_1C8DCE22C();
    v57 = v76;
    OUTLINED_FUNCTION_44_11();
    sub_1C9064ACC();
    OUTLINED_FUNCTION_12_13();
    sub_1C8DCDF78(v58, v59);
    sub_1C9064B8C();
    v60 = OUTLINED_FUNCTION_17_3();
    v61(v60);
    v62 = type metadata accessor for ComparisonPredicate.Template;
LABEL_6:
    sub_1C8DCD790(v35, v62);
    v54 = OUTLINED_FUNCTION_241();
    v56 = v57;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v35 = v70;
    sub_1C8DCDD7C(v42, v70);
    sub_1C8DCE130();
    v57 = v76;
    OUTLINED_FUNCTION_44_11();
    sub_1C9064ACC();
    OUTLINED_FUNCTION_29_10();
    sub_1C8DCDF78(v63, v64);
    sub_1C9064B8C();
    v65 = OUTLINED_FUNCTION_17_3();
    v66(v65);
    v62 = type metadata accessor for AnyPredicate;
    goto LABEL_6;
  }

  sub_1C8DCE184();
  v51 = v76;
  OUTLINED_FUNCTION_44_11();
  sub_1C9064ACC();
  sub_1C8DCE1D8();
  v52 = v68;
  sub_1C9064B8C();
  OUTLINED_FUNCTION_40_8();
  v53(v22, v52);
  v54 = OUTLINED_FUNCTION_241();
  v56 = v51;
LABEL_7:
  v55(v54, v56);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_198();
}

uint64_t AnyPredicateTemplate.hash(into:)()
{
  v4 = type metadata accessor for AnyPredicate(0);
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = OUTLINED_FUNCTION_288_0();
  v9 = type metadata accessor for ComparisonPredicate.Template(v8);
  v10 = OUTLINED_FUNCTION_13_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = OUTLINED_FUNCTION_32_7();
  v14 = type metadata accessor for AnyPredicateTemplate(v13);
  v15 = OUTLINED_FUNCTION_13_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_2_27();
  sub_1C8DCDFE0(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return MEMORY[0x1CCA82810](1);
    }

    else
    {
      OUTLINED_FUNCTION_1_36();
      sub_1C8DCDD7C(v3, v2);
      MEMORY[0x1CCA82810](2);
      AnyPredicate.hash(into:)();
      OUTLINED_FUNCTION_3_24();
      return sub_1C8DCD790(v2, v37);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_20();
    sub_1C8DCDD7C(v3, v1);
    MEMORY[0x1CCA82810](0);
    v20 = *v1;
    v21 = v1[1];
    v22 = v1[2];
    v23 = v1[3];
    v24 = v1[4];
    sub_1C9063FBC();
    OUTLINED_FUNCTION_94();
    sub_1C9063FBC();
    TypeInstance.hash(into:)();
    v48 = v1[5];
    ComparisonPredicate.Comparison.Template.hash(into:)();
    v25 = *(v9 + 24);
    sub_1C906204C();
    sub_1C8DCDF78(&qword_1EDA666F0, MEMORY[0x1E69695A8]);
    sub_1C9063E7C();
    v26 = v1 + *(v9 + 28);
    v27 = *v26;
    v28 = *(v26 + 1);
    v29 = *(v26 + 2);
    v30 = *(v26 + 3);
    v31 = v26[32];
    switch(v31)
    {
      case 1u:
        MEMORY[0x1CCA82810](1);
        v38 = OUTLINED_FUNCTION_17_11();
        v42 = 1;
        goto LABEL_11;
      case 2u:
        MEMORY[0x1CCA82810](2);
        v38 = OUTLINED_FUNCTION_17_11();
        v42 = 2;
LABEL_11:
        sub_1C8D06F98(v38, v39, v40, v41, v42);
        sub_1C9063FBC();
        goto LABEL_12;
      case 3u:
        MEMORY[0x1CCA82810](3);
        v32 = OUTLINED_FUNCTION_17_11();
        v36 = 3;
        goto LABEL_9;
      default:
        MEMORY[0x1CCA82810](0);
        v32 = OUTLINED_FUNCTION_17_11();
        v36 = 0;
LABEL_9:
        sub_1C8D06F98(v32, v33, v34, v35, v36);
LABEL_12:
        sub_1C9063FBC();
        OUTLINED_FUNCTION_11_16();
        sub_1C8DCD790(v1, v43);
        v44 = OUTLINED_FUNCTION_17_11();
        result = sub_1C8D06FF4(v44, v45, v46, v47, v31);
        break;
    }
  }

  return result;
}

uint64_t sub_1C8DCCEE0(void (*a1)(_BYTE *))
{
  sub_1C9064D7C();
  a1(v3);
  return sub_1C9064DBC();
}

void AnyPredicateTemplate.init(from:)()
{
  OUTLINED_FUNCTION_196();
  v112 = v0;
  v4 = v3;
  v107 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315038, &qword_1C907ABA0);
  v103 = OUTLINED_FUNCTION_11(v6);
  v104 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_97();
  v110 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315040, &qword_1C907ABA8);
  v13 = OUTLINED_FUNCTION_11(v12);
  v101 = v14;
  v102 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_97();
  v106 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315048, &qword_1C907ABB0);
  v20 = OUTLINED_FUNCTION_11(v19);
  v99 = v21;
  v100 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_97();
  v105 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315050, &qword_1C907ABB8);
  v27 = OUTLINED_FUNCTION_11(v26);
  v108 = v28;
  v109 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v31);
  v32 = OUTLINED_FUNCTION_58_6();
  v33 = type metadata accessor for AnyPredicateTemplate(v32);
  v34 = OUTLINED_FUNCTION_13_1(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_25();
  v39 = v37 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = v94 - v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_35_10();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v94 - v45;
  v48 = v4[3];
  v47 = v4[4];
  v111 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v48);
  sub_1C8DCE0DC();
  v49 = v112;
  sub_1C9064DEC();
  if (v49)
  {
    goto LABEL_10;
  }

  v95 = v42;
  v96 = v39;
  v97 = v2;
  v98 = v33;
  v50 = v109;
  v112 = 0;
  v51 = sub_1C9064A9C();
  sub_1C8CB8914(v51, 0);
  if (v53 == v54 >> 1)
  {
LABEL_9:
    v64 = sub_1C90647DC();
    swift_allocError();
    v66 = v65;
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v66 = v98;
    sub_1C906499C();
    OUTLINED_FUNCTION_411();
    v68 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_10_0(v64);
    (*(v69 + 104))(v66);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v108 + 8))(v1, v50);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v111);
LABEL_11:
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_198();
    return;
  }

  if (v53 < (v54 >> 1))
  {
    v55 = v1;
    v56 = *(v52 + v53);
    v57 = sub_1C8CB891C(v53 + 1);
    v59 = v58;
    v61 = v60;
    swift_unknownObjectRelease();
    v94[1] = v57;
    if (v59 == v61 >> 1)
    {
      if (v56)
      {
        v62 = v107;
        if (v56 != 1)
        {
          sub_1C8DCE130();
          OUTLINED_FUNCTION_43_9();
          type metadata accessor for AnyPredicate(0);
          OUTLINED_FUNCTION_29_10();
          sub_1C8DCDF78(v73, v74);
          v75 = v96;
          v76 = v103;
          sub_1C9064A6C();
          v77 = v108;
          v112 = 0;
          swift_unknownObjectRelease();
          v88 = OUTLINED_FUNCTION_241();
          v89(v88, v76);
          v90 = *(v77 + 8);
          v91 = OUTLINED_FUNCTION_114();
          v92(v91);
          swift_storeEnumTagMultiPayload();
          v93 = v75;
          v63 = v111;
          v62 = v107;
LABEL_15:
          sub_1C8DCDD7C(v93, v46);
          sub_1C8DCDD7C(v46, v62);
          __swift_destroy_boxed_opaque_existential_1(v63);
          goto LABEL_11;
        }

        sub_1C8DCE184();
        OUTLINED_FUNCTION_43_9();
        v63 = v111;
        sub_1C8DCE280();
        sub_1C9064A6C();
        v112 = 0;
        swift_unknownObjectRelease();
        v78 = OUTLINED_FUNCTION_59_6();
        v79(v78);
        v80 = OUTLINED_FUNCTION_22_16();
        v81(v80);
        v82 = v95;
      }

      else
      {
        sub_1C8DCE22C();
        OUTLINED_FUNCTION_43_9();
        v62 = v107;
        type metadata accessor for ComparisonPredicate.Template(0);
        OUTLINED_FUNCTION_12_13();
        sub_1C8DCDF78(v70, v71);
        sub_1C9064A6C();
        v63 = v111;
        v72 = v108;
        v112 = 0;
        swift_unknownObjectRelease();
        v83 = OUTLINED_FUNCTION_60_5();
        v84(v83);
        v85 = *(v72 + 8);
        v86 = OUTLINED_FUNCTION_114();
        v87(v86);
        v82 = v97;
      }

      swift_storeEnumTagMultiPayload();
      v93 = v82;
      goto LABEL_15;
    }

    v1 = v55;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1C8DCD718(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1C9064D7C();
  a4(v6);
  return sub_1C9064DBC();
}

uint64_t sub_1C8DCD790(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C8DCD7E8()
{
  result = qword_1EDA60DB0;
  if (!qword_1EDA60DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60DB0);
  }

  return result;
}

unint64_t sub_1C8DCD83C()
{
  result = qword_1EC314EF8;
  if (!qword_1EC314EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314EF8);
  }

  return result;
}

unint64_t sub_1C8DCD890()
{
  result = qword_1EC314F00;
  if (!qword_1EC314F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F00);
  }

  return result;
}

unint64_t sub_1C8DCD8E4()
{
  result = qword_1EC314F08;
  if (!qword_1EC314F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F08);
  }

  return result;
}

unint64_t sub_1C8DCD938()
{
  result = qword_1EDA60D88;
  if (!qword_1EDA60D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D88);
  }

  return result;
}

unint64_t sub_1C8DCD98C()
{
  result = qword_1EDA60BF8;
  if (!qword_1EDA60BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60BF8);
  }

  return result;
}

unint64_t sub_1C8DCD9E0()
{
  result = qword_1EC314F10;
  if (!qword_1EC314F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F10);
  }

  return result;
}

unint64_t sub_1C8DCDA34()
{
  result = qword_1EDA638A0;
  if (!qword_1EDA638A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA638A0);
  }

  return result;
}

unint64_t sub_1C8DCDA88()
{
  result = qword_1EC314F18;
  if (!qword_1EC314F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F18);
  }

  return result;
}

unint64_t sub_1C8DCDADC()
{
  result = qword_1EC314F20;
  if (!qword_1EC314F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F20);
  }

  return result;
}

unint64_t sub_1C8DCDB30()
{
  result = qword_1EC314F28;
  if (!qword_1EC314F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F28);
  }

  return result;
}

unint64_t sub_1C8DCDB84()
{
  result = qword_1EC314F30;
  if (!qword_1EC314F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F30);
  }

  return result;
}

unint64_t sub_1C8DCDBD8()
{
  result = qword_1EC314F38;
  if (!qword_1EC314F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F38);
  }

  return result;
}

unint64_t sub_1C8DCDC2C()
{
  result = qword_1EC314F40;
  if (!qword_1EC314F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F40);
  }

  return result;
}

unint64_t sub_1C8DCDC80()
{
  result = qword_1EC314F48;
  if (!qword_1EC314F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F48);
  }

  return result;
}

unint64_t sub_1C8DCDCD4()
{
  result = qword_1EC314F50;
  if (!qword_1EC314F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314F50);
  }

  return result;
}

unint64_t sub_1C8DCDD28()
{
  result = qword_1EC314FA8;
  if (!qword_1EC314FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314FA8);
  }

  return result;
}

uint64_t sub_1C8DCDD7C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_257();
  v5 = v4(v3);
  OUTLINED_FUNCTION_13_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

unint64_t sub_1C8DCDDD4()
{
  result = qword_1EDA63780;
  if (!qword_1EDA63780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63780);
  }

  return result;
}

unint64_t sub_1C8DCDE28()
{
  result = qword_1EDA63898;
  if (!qword_1EDA63898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63898);
  }

  return result;
}

unint64_t sub_1C8DCDE7C()
{
  result = qword_1EC314FB0;
  if (!qword_1EC314FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314FB0);
  }

  return result;
}

unint64_t sub_1C8DCDED0()
{
  result = qword_1EC314FB8;
  if (!qword_1EC314FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314FB8);
  }

  return result;
}

unint64_t sub_1C8DCDF24()
{
  result = qword_1EC314FC0;
  if (!qword_1EC314FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314FC0);
  }

  return result;
}

uint64_t sub_1C8DCDF78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C8DCDFE0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_257();
  v5 = v4(v3);
  OUTLINED_FUNCTION_13_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return a2;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1CCA833A0);
  }

  return result;
}

unint64_t sub_1C8DCE088()
{
  result = qword_1EC314FE0;
  if (!qword_1EC314FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC314FE0);
  }

  return result;
}

unint64_t sub_1C8DCE0DC()
{
  result = qword_1EC315018;
  if (!qword_1EC315018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315018);
  }

  return result;
}

unint64_t sub_1C8DCE130()
{
  result = qword_1EC315020;
  if (!qword_1EC315020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315020);
  }

  return result;
}

unint64_t sub_1C8DCE184()
{
  result = qword_1EC315028;
  if (!qword_1EC315028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315028);
  }

  return result;
}

unint64_t sub_1C8DCE1D8()
{
  result = qword_1EDA63240;
  if (!qword_1EDA63240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63240);
  }

  return result;
}

unint64_t sub_1C8DCE22C()
{
  result = qword_1EC315030;
  if (!qword_1EC315030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315030);
  }

  return result;
}

unint64_t sub_1C8DCE280()
{
  result = qword_1EDA63238;
  if (!qword_1EDA63238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA63238);
  }

  return result;
}

uint64_t sub_1C8DCE2D4(void *a1)
{
  a1[1] = sub_1C8DCDF78(&qword_1EC315060, type metadata accessor for AnyPredicate);
  a1[2] = sub_1C8DCDF78(&qword_1EC315058, type metadata accessor for AnyPredicate);
  a1[3] = sub_1C8DCDF78(&qword_1EDA60D10, type metadata accessor for AnyPredicate);
  result = sub_1C8DCDF78(&qword_1EC315068, type metadata accessor for AnyPredicate);
  a1[4] = result;
  return result;
}

uint64_t sub_1C8DCE438(void *a1)
{
  a1[1] = sub_1C8DCDF78(&qword_1EC315080, type metadata accessor for AnyPredicateTemplate);
  a1[2] = sub_1C8DCDF78(&qword_1EC315088, type metadata accessor for AnyPredicateTemplate);
  a1[3] = sub_1C8DCDF78(&qword_1EC315090, type metadata accessor for AnyPredicateTemplate);
  result = sub_1C8DCDF78(&qword_1EC315098, type metadata accessor for AnyPredicateTemplate);
  a1[4] = result;
  return result;
}

uint64_t sub_1C8DCE554()
{
  result = type metadata accessor for ComparisonPredicate(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C8DCE604()
{
  result = type metadata accessor for ComparisonPredicate.Template(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AnyPredicate(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnyPredicateTemplate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TypeRecord.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AnyPredicate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C8DCE970(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8DCEA20()
{
  result = qword_1EC3150B8;
  if (!qword_1EC3150B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3150B8);
  }

  return result;
}

unint64_t sub_1C8DCEA78()
{
  result = qword_1EC3150C0;
  if (!qword_1EC3150C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3150C0);
  }

  return result;
}

unint64_t sub_1C8DCEAD0()
{
  result = qword_1EC3150C8;
  if (!qword_1EC3150C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3150C8);
  }

  return result;
}

unint64_t sub_1C8DCEB28()
{
  result = qword_1EC3150D0;
  if (!qword_1EC3150D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3150D0);
  }

  return result;
}

unint64_t sub_1C8DCEB80()
{
  result = qword_1EC3150D8;
  if (!qword_1EC3150D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3150D8);
  }

  return result;
}

unint64_t sub_1C8DCEBD8()
{
  result = qword_1EC3150E0;
  if (!qword_1EC3150E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3150E0);
  }

  return result;
}

unint64_t sub_1C8DCEC30()
{
  result = qword_1EC3150E8;
  if (!qword_1EC3150E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3150E8);
  }

  return result;
}

unint64_t sub_1C8DCEC88()
{
  result = qword_1EC3150F0;
  if (!qword_1EC3150F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3150F0);
  }

  return result;
}

unint64_t sub_1C8DCECE0()
{
  result = qword_1EC3150F8;
  if (!qword_1EC3150F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3150F8);
  }

  return result;
}

unint64_t sub_1C8DCED38()
{
  result = qword_1EC315100;
  if (!qword_1EC315100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315100);
  }

  return result;
}

unint64_t sub_1C8DCED90()
{
  result = qword_1EC315108;
  if (!qword_1EC315108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315108);
  }

  return result;
}

unint64_t sub_1C8DCEDE8()
{
  result = qword_1EC315110;
  if (!qword_1EC315110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315110);
  }

  return result;
}

unint64_t sub_1C8DCEE40()
{
  result = qword_1EC315118;
  if (!qword_1EC315118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315118);
  }

  return result;
}

unint64_t sub_1C8DCEE98()
{
  result = qword_1EC315120;
  if (!qword_1EC315120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315120);
  }

  return result;
}

unint64_t sub_1C8DCEEF0()
{
  result = qword_1EC315128;
  if (!qword_1EC315128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315128);
  }

  return result;
}

unint64_t sub_1C8DCEF48()
{
  result = qword_1EC315130;
  if (!qword_1EC315130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315130);
  }

  return result;
}

unint64_t sub_1C8DCEFA0()
{
  result = qword_1EC315138;
  if (!qword_1EC315138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315138);
  }

  return result;
}

unint64_t sub_1C8DCEFF8()
{
  result = qword_1EC315140;
  if (!qword_1EC315140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315140);
  }

  return result;
}

unint64_t sub_1C8DCF050()
{
  result = qword_1EC315148;
  if (!qword_1EC315148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315148);
  }

  return result;
}

unint64_t sub_1C8DCF0A8()
{
  result = qword_1EC315150;
  if (!qword_1EC315150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315150);
  }

  return result;
}

unint64_t sub_1C8DCF100()
{
  result = qword_1EC315158;
  if (!qword_1EC315158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315158);
  }

  return result;
}

unint64_t sub_1C8DCF158()
{
  result = qword_1EC315160;
  if (!qword_1EC315160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315160);
  }

  return result;
}

unint64_t sub_1C8DCF1B0()
{
  result = qword_1EDA60D38;
  if (!qword_1EDA60D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D38);
  }

  return result;
}

unint64_t sub_1C8DCF208()
{
  result = qword_1EDA60D40;
  if (!qword_1EDA60D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D40);
  }

  return result;
}

unint64_t sub_1C8DCF260()
{
  result = qword_1EDA60D68;
  if (!qword_1EDA60D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D68);
  }

  return result;
}

unint64_t sub_1C8DCF2B8()
{
  result = qword_1EDA60D70;
  if (!qword_1EDA60D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D70);
  }

  return result;
}

unint64_t sub_1C8DCF310()
{
  result = qword_1EDA60D30;
  if (!qword_1EDA60D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D30);
  }

  return result;
}

unint64_t sub_1C8DCF368()
{
  result = qword_1EDA60D28;
  if (!qword_1EDA60D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D28);
  }

  return result;
}

unint64_t sub_1C8DCF3C0()
{
  result = qword_1EDA60D58;
  if (!qword_1EDA60D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D58);
  }

  return result;
}

unint64_t sub_1C8DCF418()
{
  result = qword_1EDA60D60;
  if (!qword_1EDA60D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D60);
  }

  return result;
}

unint64_t sub_1C8DCF470()
{
  result = qword_1EDA60D18;
  if (!qword_1EDA60D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D18);
  }

  return result;
}

unint64_t sub_1C8DCF4C8()
{
  result = qword_1EDA60D20;
  if (!qword_1EDA60D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D20);
  }

  return result;
}

unint64_t sub_1C8DCF520()
{
  result = qword_1EDA60D90;
  if (!qword_1EDA60D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D90);
  }

  return result;
}

unint64_t sub_1C8DCF578()
{
  result = qword_1EDA60D98;
  if (!qword_1EDA60D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D98);
  }

  return result;
}

unint64_t sub_1C8DCF5D0()
{
  result = qword_1EDA60D78;
  if (!qword_1EDA60D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D78);
  }

  return result;
}

unint64_t sub_1C8DCF628()
{
  result = qword_1EDA60D80;
  if (!qword_1EDA60D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D80);
  }

  return result;
}

unint64_t sub_1C8DCF680()
{
  result = qword_1EDA60D48;
  if (!qword_1EDA60D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D48);
  }

  return result;
}

unint64_t sub_1C8DCF6D8()
{
  result = qword_1EDA60D50;
  if (!qword_1EDA60D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60D50);
  }

  return result;
}

unint64_t sub_1C8DCF730()
{
  result = qword_1EC315168;
  if (!qword_1EC315168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315168);
  }

  return result;
}

unint64_t sub_1C8DCF788()
{
  result = qword_1EC315170;
  if (!qword_1EC315170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315170);
  }

  return result;
}

unint64_t sub_1C8DCF7E0()
{
  result = qword_1EDA60DA0;
  if (!qword_1EDA60DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60DA0);
  }

  return result;
}

unint64_t sub_1C8DCF838()
{
  result = qword_1EDA60DA8;
  if (!qword_1EDA60DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60DA8);
  }

  return result;
}

unint64_t sub_1C8DCF88C()
{
  result = qword_1EC315178;
  if (!qword_1EC315178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315178);
  }

  return result;
}

unint64_t sub_1C8DCF8E0()
{
  result = qword_1EDA60BD8;
  if (!qword_1EDA60BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA60BD8);
  }

  return result;
}

unint64_t sub_1C8DCF934()
{
  result = qword_1EC315180;
  if (!qword_1EC315180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315180);
  }

  return result;
}

unint64_t sub_1C8DCF988()
{
  result = qword_1EC315188;
  if (!qword_1EC315188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315188);
  }

  return result;
}

unint64_t sub_1C8DCF9DC()
{
  result = qword_1EC315190;
  if (!qword_1EC315190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315190);
  }

  return result;
}

unint64_t sub_1C8DCFA30()
{
  result = qword_1EC315198;
  if (!qword_1EC315198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315198);
  }

  return result;
}

unint64_t sub_1C8DCFA84()
{
  result = qword_1EC3151A0;
  if (!qword_1EC3151A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3151A0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_15()
{

  return sub_1C9064A6C();
}

uint64_t OUTLINED_FUNCTION_51_7()
{
  v3 = *(v0 - 128);
  v2 = *(v0 - 120);

  return sub_1C9064ACC();
}

uint64_t sub_1C8DCFB58()
{
  v0 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v0, qword_1EC390940);
  v1 = __swift_project_value_buffer(v0, qword_1EC390940);
  if (qword_1EC3112C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC390958);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1C8DCFC20(uint64_t result)
{
  if (result >= 9u)
  {
    return 9;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1C8DCFC4C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C8DCFC20(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C8DCFC78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8DD2414();
  v5 = MEMORY[0x1E69A01E0];

  return MEMORY[0x1EEE096B8](a1, a2, v4, v5);
}

uint64_t sub_1C8DCFD84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v7 || (sub_1C9064C2C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001C90C98E0 == a2;
        if (v8 || (sub_1C9064C2C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x46656D69746E7572 && a2 == 0xEC0000007367616CLL;
          if (v9 || (sub_1C9064C2C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x80000001C90CAB00 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C9064C2C();

            if (v11)
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

unint64_t sub_1C8DCFF70(char a1)
{
  result = 0x6449776F72;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x46656D69746E7572;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C8DD0020(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3151E8, &qword_1C907C098);
  OUTLINED_FUNCTION_11(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v12 = *v1;
  v11 = v1[1];
  v23 = v1[2];
  v22 = *(v1 + 24);
  v13 = v1[4];
  v20 = v1[5];
  v21 = v13;
  v19 = *(v1 + 48);
  v18 = v1[7];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DD1C78();
  sub_1C9064E1C();
  LOBYTE(v26) = 0;
  v15 = v24;
  sub_1C9064B2C();
  if (!v15)
  {
    v16 = v22;
    v26 = v23;
    v25 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3151E0, &qword_1C907C090);
    sub_1C8DD1DC0(&qword_1EC3151F0);
    OUTLINED_FUNCTION_7_19();
    sub_1C9064B8C();

    LOBYTE(v26) = v16;
    v25 = 2;
    sub_1C8DD1E28();
    sub_1C9064B8C();
    LOBYTE(v26) = 3;
    sub_1C9064B9C();
    LOBYTE(v26) = 4;
    sub_1C9064AFC();
    v26 = v18;
    v25 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131B8, &unk_1C906B520);
    sub_1C8DD1D20(&qword_1EC3131E0);
    OUTLINED_FUNCTION_7_19();
    sub_1C9064B0C();
  }

  return (*(v5 + 8))(v10, v3);
}

uint64_t sub_1C8DD030C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3151D8, &qword_1C907C088);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DD1C78();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v28[0]) = 0;
  OUTLINED_FUNCTION_9_17();
  v10 = sub_1C9064A0C();
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3151E0, &qword_1C907C090);
  sub_1C8DD1DC0(&qword_1EDA69118);
  OUTLINED_FUNCTION_7_19();
  sub_1C9064A6C();
  v23 = v28[0];
  LOBYTE(v24) = 2;
  sub_1C8DD1CCC();
  sub_1C9064A6C();
  OUTLINED_FUNCTION_9_17();
  v22 = sub_1C9064A7C();
  LOBYTE(v28[0]) = 4;
  OUTLINED_FUNCTION_9_17();
  v21 = sub_1C90649DC();
  v35 = v13 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131B8, &unk_1C906B520);
  v36 = 5;
  sub_1C8DD1D20(&qword_1EDA69140);
  OUTLINED_FUNCTION_7_19();
  sub_1C90649EC();
  v14 = OUTLINED_FUNCTION_5_9();
  v15(v14);
  v20 = v34;
  *&v24 = v10;
  *(&v24 + 1) = v12;
  *&v25 = v23;
  BYTE8(v25) = 0;
  *&v26 = v22;
  *(&v26 + 1) = v21;
  v19 = v35;
  LOBYTE(v27) = v35;
  *(&v27 + 1) = v34;
  v16 = v25;
  *a2 = v24;
  a2[1] = v16;
  v17 = v27;
  a2[2] = v26;
  a2[3] = v17;
  sub_1C8DD1D88(&v24, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v28[0] = v10;
  v28[1] = v12;
  v28[2] = v23;
  v29 = 0;
  v30 = v22;
  v31 = v21;
  v32 = v19;
  v33 = v20;
  return sub_1C8D167C0(v28);
}

uint64_t sub_1C8DD06AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DCFD84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DD06D4(uint64_t a1)
{
  v2 = sub_1C8DD1C78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DD0710(uint64_t a1)
{
  v2 = sub_1C8DD1C78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DD0760()
{
  sub_1C8DD1B44();

  return sub_1C9062B4C();
}

uint64_t sub_1C8DD0884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8D16814();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C8DD08E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C8DD1B98();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C8DD099C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C9062E6C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_1C8DD1C78();
  return sub_1C9062E8C();
}

uint64_t sub_1C8DD0A18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_142();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315238, &qword_1C907C0B0);
  __swift_allocate_value_buffer(v5, qword_1EC3909E8);
  v6 = OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_3_25(v6);
  sub_1C8D24BA0();
  OUTLINED_FUNCTION_0_41();
  sub_1C906254C();
  return sub_1C8DD1ED0(v0);
}

uint64_t sub_1C8DD0AD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_142();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315228, &unk_1C9084E30);
  __swift_allocate_value_buffer(v5, qword_1EC390A00);
  v6 = OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_3_25(v6);
  sub_1C8DD2054();
  OUTLINED_FUNCTION_0_41();
  sub_1C906251C();
  return sub_1C8DD1ED0(v0);
}

uint64_t sub_1C8DD0B98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_142();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315218, &qword_1C907C0A8);
  __swift_allocate_value_buffer(v5, qword_1EC390A18);
  v6 = OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_3_25(v6);
  sub_1C8DD2000();
  OUTLINED_FUNCTION_0_41();
  sub_1C906251C();
  return sub_1C8DD1ED0(v0);
}

uint64_t sub_1C8DD0C58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_142();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315240, &qword_1C907C0B8);
  __swift_allocate_value_buffer(v5, qword_1EC390A30);
  v6 = OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_3_25(v6);
  sub_1C8DD20A8();
  OUTLINED_FUNCTION_0_41();
  sub_1C906251C();
  return sub_1C8DD1ED0(v0);
}

uint64_t sub_1C8DD0D18()
{
  v0 = sub_1C9062E6C();
  v1 = OUTLINED_FUNCTION_11(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_55_1();
  if (qword_1EC311208 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EC3907B0);
  v6 = OUTLINED_FUNCTION_56();
  v7(v6);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_58(v9);
  result = v11(v10);
  qword_1EC390A48 = sub_1C8DD1F50;
  unk_1EC390A50 = v5;
  return result;
}

uint64_t sub_1C8DD0E40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_142();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315210, &qword_1C907C0A0);
  __swift_allocate_value_buffer(v5, qword_1EC390A58);
  v6 = OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_3_25(v6);
  sub_1C8D24E00();
  OUTLINED_FUNCTION_0_41();
  sub_1C906251C();
  return sub_1C8DD1ED0(v0);
}

uint64_t sub_1C8DD0F00()
{
  v0 = sub_1C9062E6C();
  v1 = OUTLINED_FUNCTION_11(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_55_1();
  if (qword_1EC312118 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_1EC391058);
  v6 = OUTLINED_FUNCTION_56();
  v7(v6);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_58(v9);
  result = v11(v10);
  qword_1EC390A70 = sub_1C8DD1F38;
  *algn_1EC390A78 = v5;
  return result;
}

uint64_t sub_1C8DD1028()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_142();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315200, &unk_1C9084E10);
  __swift_allocate_value_buffer(v5, qword_1EC390A80);
  v6 = OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_3_25(v6);
  sub_1C8DD1E7C();
  OUTLINED_FUNCTION_0_41();
  sub_1C90624EC();
  return sub_1C8DD1ED0(v0);
}

uint64_t String.init(typeIdentifier:)(uint64_t *a1)
{
  v2 = *a1;
  switch(*a1 >> 61)
  {
    case 1uLL:
      v14 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      switch(v14)
      {
        case 0uLL:
        case 3uLL:
        case 5uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xDuLL:
          OUTLINED_FUNCTION_2_28();
          break;
        case 1uLL:
        case 0xFuLL:

          OUTLINED_FUNCTION_14_19();
          OUTLINED_FUNCTION_16();
          v1 = v15 | 3;
          break;
        case 2uLL:
        case 4uLL:
        case 6uLL:
        case 0xEuLL:
          OUTLINED_FUNCTION_12_14();

          OUTLINED_FUNCTION_14_19();
          break;
        case 7uLL:

          OUTLINED_FUNCTION_14_19();
          goto LABEL_54;
        case 8uLL:

          OUTLINED_FUNCTION_14_19();
          goto LABEL_31;
        case 0xBuLL:

          OUTLINED_FUNCTION_14_19();
          goto LABEL_49;
        case 0xCuLL:

          OUTLINED_FUNCTION_14_19();
          goto LABEL_45;
        default:
          v16 = *(v14 + 16);
          v27 = 0;
          sub_1C8D3F120(v14);

          sub_1C906478C();
          MEMORY[0x1CCA81A90](0x2E6E69746C697562, 0xEE002E7972657571);
          sub_1C90648BC();

          sub_1C8D3F130(v14);
          goto LABEL_6;
      }

      break;
    case 2uLL:
      v4 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v27 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v28 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      OUTLINED_FUNCTION_18_12();
      MEMORY[0x1CCA81A90](v4, v5);
LABEL_6:

      goto LABEL_13;
    case 3uLL:
      v7 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v9 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v8 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x68);
      v11 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0xE0);
      v10 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0xE8);

      sub_1C906478C();

      v27 = 0x7475626972747461;
      if (v8)
      {
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

      if (!v8)
      {
        v8 = 0xE000000000000000;
      }

      MEMORY[0x1CCA81A90](v12, v8);

      OUTLINED_FUNCTION_18_12();
      MEMORY[0x1CCA81A90](v7, v6);

      OUTLINED_FUNCTION_18_12();
      MEMORY[0x1CCA81A90](v11, v10);

LABEL_13:
      v1 = v27;
      break;
    case 4uLL:
      v1 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v3 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

LABEL_4:

      break;
    default:
      switch(*(v2 + 16))
      {
        case 1:
        case 9:
        case 0x21:
          OUTLINED_FUNCTION_12_14();
          OUTLINED_FUNCTION_1_37(v21);
          goto LABEL_4;
        case 2:
        case 0x12:
          OUTLINED_FUNCTION_1_37(v2);

LABEL_45:
          OUTLINED_FUNCTION_16();
          return v22 | 7;
        case 4:
        case 8:
        case 0x14:
          OUTLINED_FUNCTION_1_37(v2);

LABEL_49:
          OUTLINED_FUNCTION_16();
          return v23 | 1;
        case 6:
        case 0x15:
        case 0x2E:
          OUTLINED_FUNCTION_1_37(v2);

          OUTLINED_FUNCTION_16();
          return v26 | 4;
        case 7:
          OUTLINED_FUNCTION_1_37(v2);

          OUTLINED_FUNCTION_16();
          return v20 | 8;
        case 0xA:
          OUTLINED_FUNCTION_1_37(v2);

          v17 = 13;
          goto LABEL_47;
        case 0xB:
          OUTLINED_FUNCTION_1_37(v2);

          OUTLINED_FUNCTION_16();
          return v19 | 6;
        case 0xC:
        case 0x11:
          OUTLINED_FUNCTION_1_37(v2);

          v17 = 10;
          goto LABEL_47;
        case 0xD:
          OUTLINED_FUNCTION_1_37(v2);

          v17 = 11;
          goto LABEL_47;
        case 0xE:
          OUTLINED_FUNCTION_1_37(v2);

          OUTLINED_FUNCTION_16();
          return v18 + 23;
        case 0xF:
        case 0x13:
          OUTLINED_FUNCTION_1_37(v2);

          OUTLINED_FUNCTION_16();
          return v25 | 0xE;
        case 0x10:
          OUTLINED_FUNCTION_1_37(v2);

LABEL_31:
          v17 = 5;
LABEL_47:
          v1 = v17 | 0xD000000000000010;
          break;
        case 0x17:

          v1 = 1701736302;
          break;
        case 0x18:

          v1 = 1819242338;
          break;
        case 0x19:

          v1 = 7630441;
          break;
        case 0x1A:

          v1 = 0x7265626D756ELL;
          break;
        case 0x1B:

          v1 = 0x6C616D69636564;
          break;
        case 0x1C:

          v1 = 0x676E69727473;
          break;
        case 0x1D:

          v1 = 1702125924;
          break;
        case 0x1E:

          v1 = 0x706D6F4365746164;
          break;
        case 0x1F:

          v1 = 7107189;
          break;
        case 0x20:

          v1 = 0x616E6F6974636964;
          break;
        case 0x22:

          v1 = 0x79636E6572727563;
          break;
        case 0x23:

          v1 = 0x4D746E656D796170;
          break;
        case 0x24:

          v1 = 0x72616D6563616C70;
          break;
        case 0x25:

          v1 = 0x6E6F73726570;
          break;
        case 0x26:

          v1 = 1701603686;
          break;
        case 0x27:

          v1 = 7368801;
          break;
        case 0x28:

          v1 = 0x6261686372616573;
          break;
        case 0x29:

          v1 = 0x6E65727275636572;
          break;
        case 0x2A:

          v1 = 0x4673746E65746E69;
          break;
        case 0x2B:

          v1 = 0x74756374726F6873;
          break;
        case 0x2C:

          v1 = 0x65746E4965746164;
          break;
        case 0x2D:

          v1 = 0x6E6F697461727564;
          break;
        default:
          OUTLINED_FUNCTION_1_37(v2);

LABEL_54:
          OUTLINED_FUNCTION_16();
          v1 = v24 | 2;
          break;
      }

      break;
  }

  return v1;
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

uint64_t sub_1C8DD19B4(uint64_t a1, int a2)
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

uint64_t sub_1C8DD19F4(uint64_t result, int a2, int a3)
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

unint64_t sub_1C8DD1A58()
{
  result = qword_1EC3151B0;
  if (!qword_1EC3151B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3151B0);
  }

  return result;
}

unint64_t sub_1C8DD1AB0(void *a1)
{
  a1[1] = sub_1C8DD1AF0();
  a1[2] = sub_1C8DD1B44();
  a1[3] = sub_1C8D16814();
  result = sub_1C8DD1B98();
  a1[4] = result;
  return result;
}

unint64_t sub_1C8DD1AF0()
{
  result = qword_1EC3151B8;
  if (!qword_1EC3151B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3151B8);
  }

  return result;
}

unint64_t sub_1C8DD1B44()
{
  result = qword_1EC3151C0;
  if (!qword_1EC3151C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3151C0);
  }

  return result;
}

unint64_t sub_1C8DD1B98()
{
  result = qword_1EC3151C8;
  if (!qword_1EC3151C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3151C8);
  }

  return result;
}

unint64_t sub_1C8DD1BF8(uint64_t a1)
{
  result = sub_1C8DD1C20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C8DD1C20()
{
  result = qword_1EC3151D0;
  if (!qword_1EC3151D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3151D0);
  }

  return result;
}

unint64_t sub_1C8DD1C78()
{
  result = qword_1EDA66B28[0];
  if (!qword_1EDA66B28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA66B28);
  }

  return result;
}

unint64_t sub_1C8DD1CCC()
{
  result = qword_1EDA66B08;
  if (!qword_1EDA66B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66B08);
  }

  return result;
}

uint64_t sub_1C8DD1D20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3131B8, &unk_1C906B520);
    sub_1C8D21FDC();
    sub_1C8D22030();
    result = OUTLINED_FUNCTION_43();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C8DD1DC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3151E0, &qword_1C907C090);
    sub_1C8CB892C();
    sub_1C8C9FB9C();
    result = OUTLINED_FUNCTION_43();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C8DD1E28()
{
  result = qword_1EC3151F8;
  if (!qword_1EC3151F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3151F8);
  }

  return result;
}

unint64_t sub_1C8DD1E7C()
{
  result = qword_1EC315208;
  if (!qword_1EC315208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315208);
  }

  return result;
}

uint64_t sub_1C8DD1ED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3131F8, &qword_1C90A6B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C8DD1F68(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_1C9062E6C();
  OUTLINED_FUNCTION_9(v6);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a3(a1, a2, v8);
}

unint64_t sub_1C8DD2000()
{
  result = qword_1EC315220;
  if (!qword_1EC315220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315220);
  }

  return result;
}

unint64_t sub_1C8DD2054()
{
  result = qword_1EC315230;
  if (!qword_1EC315230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315230);
  }

  return result;
}

unint64_t sub_1C8DD20A8()
{
  result = qword_1EC315248;
  if (!qword_1EC315248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315248);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TypeRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TypeRecord.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C8DD22B8()
{
  result = qword_1EC315250;
  if (!qword_1EC315250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315250);
  }

  return result;
}

unint64_t sub_1C8DD2310()
{
  result = qword_1EC315258;
  if (!qword_1EC315258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315258);
  }

  return result;
}

unint64_t sub_1C8DD2368()
{
  result = qword_1EDA66B18;
  if (!qword_1EDA66B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66B18);
  }

  return result;
}

unint64_t sub_1C8DD23C0()
{
  result = qword_1EDA66B20;
  if (!qword_1EDA66B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66B20);
  }

  return result;
}

unint64_t sub_1C8DD2414()
{
  result = qword_1EDA66B10;
  if (!qword_1EDA66B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA66B10);
  }

  return result;
}

uint64_t sub_1C8DD2468()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315270, &qword_1C907C340);
  __swift_allocate_value_buffer(v0, qword_1EC390A98);
  __swift_project_value_buffer(v0, qword_1EC390A98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315280, &unk_1C907C3F0);
  return sub_1C906330C();
}

uint64_t ActionProvider.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315260, &qword_1C907C330);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315268, &qword_1C907C338);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31[-v13];
  OUTLINED_FUNCTION_1_3();
  v16 = a1 == 0xD000000000000014 && v15 == a2;
  if (v16 || (OUTLINED_FUNCTION_2_29() & 1) != 0)
  {

    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  OUTLINED_FUNCTION_1_3();
  v19 = a1 == 0xD000000000000016 && v18 == a2;
  if (v19 || (OUTLINED_FUNCTION_2_29() & 1) != 0)
  {

    v20 = xmmword_1C90747F0;
LABEL_13:
    *a3 = v20;
    return result;
  }

  OUTLINED_FUNCTION_1_3();
  v22 = a1 == 0xD000000000000017 && v21 == a2;
  if (v22 || (OUTLINED_FUNCTION_2_29() & 1) != 0)
  {

    v20 = xmmword_1C907C320;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_1_3();
  v24 = a1 == 0xD00000000000001BLL && v23 == a2;
  if (v24 || (OUTLINED_FUNCTION_2_29() & 1) != 0)
  {

    v20 = xmmword_1C907C310;
    goto LABEL_13;
  }

  v26 = a1 == OUTLINED_FUNCTION_3_26() && a2 == v25;
  if (v26 || (OUTLINED_FUNCTION_2_29() & 1) != 0)
  {

    v20 = xmmword_1C907C300;
    goto LABEL_13;
  }

  if (qword_1EC311330 != -1)
  {
    swift_once();
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315270, &qword_1C907C340);
  __swift_project_value_buffer(v27, qword_1EC390A98);
  sub_1C8DD283C();

  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    result = sub_1C8DD29F8(v9);
    v20 = xmmword_1C907C2F0;
    goto LABEL_13;
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C906335C();

  v28 = MEMORY[0x1CCA81A20](v32, v33, v34, v35);
  v30 = v29;

  result = (*(v11 + 8))(v14, v10);
  *a3 = v28;
  a3[1] = v30;
  return result;
}

uint64_t sub_1C8DD283C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315270, &qword_1C907C340);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - v3;
  sub_1C8DD2C8C();
  sub_1C8DD2CC0();
  sub_1C90632EC();
  sub_1C906333C();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_1C8DD29F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315260, &qword_1C907C330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ActionProvider.rawValue.getter()
{
  v1 = v0[1];
  OUTLINED_FUNCTION_3_26();
  switch(v1)
  {
    case 0:
      OUTLINED_FUNCTION_1_3();
      break;
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_0_42();
      break;
    case 4:
      return;
    default:
      v2 = *v0;
      sub_1C906478C();

      strcpy(v3, "remoteDevice(");
      MEMORY[0x1CCA81A90](v2, v1);
      MEMORY[0x1CCA81A90](41, 0xE100000000000000);
      break;
  }
}

void sub_1C8DD2B90(void *a1@<X8>)
{
  ActionProvider.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t get_enum_tag_for_layout_string_7ToolKit14ActionProviderO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C8DD2BD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8DD2C28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_1C8DD2CC0()
{
  result = qword_1EC315278;
  if (!qword_1EC315278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC315270, &qword_1C907C340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315278);
  }

  return result;
}

ToolKit::IntentStateChange sub_1C8DD2EF8@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = IntentStateChange.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C8DD2F38@<X0>(uint64_t *a1@<X8>)
{
  result = IntentStateChange.rawValue.getter();
  *a1 = result;
  return result;
}

void IntentSideEffect.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 effect];
  if (v4 == 1)
  {
    v6 = [a1 changeEffect];

    v7 = 0;
    if (v6 == -1)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0;
    }

    if ((v6 & 1) != 0 && v6 + 1 != 0)
    {
      v8 = 1;
    }

    v10 = v8 | v6 & 0x100;
    v11 = (v8 >> 9) & 1;
    if ((v6 & 0x200) == 0)
    {
      LODWORD(v11) = 1;
    }

    if (v11)
    {
      v5 = v10;
    }

    else
    {
      v5 = v10 | 0x200;
    }

    goto LABEL_20;
  }

  if (!v4)
  {

    v5 = 1;
LABEL_19:
    v7 = 1;
LABEL_20:
    *a2 = v5;
    *(a2 + 8) = v7;
    return;
  }

  if (v4 == -1)
  {

    v5 = 0;
    goto LABEL_19;
  }

  sub_1C906491C();
  __break(1u);
}

uint64_t static IntentSideEffect.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C8DD30B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701736302 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6168436574617473 && a2 == 0xEB0000000065676ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8DD31C4(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 1701736302;
  }

  return 0x6168436574617473;
}

uint64_t sub_1C8DD3224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DD30B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DD324C(uint64_t a1)
{
  v2 = sub_1C8DD3EE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DD3288(uint64_t a1)
{
  v2 = sub_1C8DD3EE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DD32C4(uint64_t a1)
{
  v2 = sub_1C8DD3FDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DD3300(uint64_t a1)
{
  v2 = sub_1C8DD3FDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DD333C(uint64_t a1)
{
  v2 = sub_1C8DD3F34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DD3378(uint64_t a1)
{
  v2 = sub_1C8DD3F34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8DD33B4(uint64_t a1)
{
  v2 = sub_1C8DD4030();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DD33F0(uint64_t a1)
{
  v2 = sub_1C8DD4030();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntentSideEffect.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315288, &qword_1C907C400);
  v4 = OUTLINED_FUNCTION_11(v3);
  v49 = v5;
  v50 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_97();
  v48 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315290, &qword_1C907C408);
  v11 = OUTLINED_FUNCTION_11(v10);
  v46 = v12;
  v47 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_97();
  v45 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315298, &qword_1C907C410);
  v18 = OUTLINED_FUNCTION_11(v17);
  v43 = v19;
  v44 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_97();
  v42 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3152A0, &qword_1C907C418);
  OUTLINED_FUNCTION_11(v24);
  v26 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v41 - v30;
  v32 = *v1;
  v33 = *(v1 + 8);
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DD3EE0();
  sub_1C9064E1C();
  if (v33 == 1)
  {
    if (v32)
    {
      v53 = 1;
      sub_1C8DD3FDC();
      v35 = v45;
      OUTLINED_FUNCTION_6_17();
      v37 = v46;
      v36 = v47;
    }

    else
    {
      v52 = 0;
      sub_1C8DD4030();
      v35 = v42;
      OUTLINED_FUNCTION_6_17();
      v37 = v43;
      v36 = v44;
    }

    (*(v37 + 8))(v35, v36);
    return (*(v26 + 8))(v31, v24);
  }

  else
  {
    v54 = 2;
    sub_1C8DD3F34();
    v38 = v48;
    OUTLINED_FUNCTION_6_17();
    v51 = v32;
    sub_1C8DD3F88();
    v39 = v50;
    sub_1C9064B8C();
    (*(v49 + 8))(v38, v39);
    return (*(v26 + 8))(v31, v24);
  }
}

uint64_t IntentSideEffect.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1CCA82810](2);
  }

  return MEMORY[0x1CCA82810](v1);
}

uint64_t IntentSideEffect.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C9064D7C();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1CCA82810](2);
  }

  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

uint64_t IntentSideEffect.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3152C0, &qword_1C907C420);
  OUTLINED_FUNCTION_11(v66);
  v68 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_97();
  v70 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3152C8, &qword_1C907C428);
  v64 = OUTLINED_FUNCTION_11(v8);
  v65 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3152D0, &qword_1C907C430);
  OUTLINED_FUNCTION_11(v15);
  v63 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v60 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3152D8, &unk_1C907C438);
  OUTLINED_FUNCTION_11(v22);
  v69 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v60 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DD3EE0();
  v30 = v71;
  sub_1C9064DEC();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v61 = v15;
  v62 = v21;
  v31 = v70;
  v71 = a1;
  v32 = v28;
  v33 = sub_1C9064A9C();
  result = sub_1C8CB8914(v33, 0);
  if (v36 == v37 >> 1)
  {
LABEL_9:
    v48 = sub_1C90647DC();
    swift_allocError();
    v50 = v49;
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312570, &unk_1C90669A0) + 48);
    *v50 = &type metadata for IntentSideEffect;
    sub_1C906499C();
    sub_1C90647CC();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x1E69E6AF8], v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v69 + 8))(v32, v22);
    a1 = v71;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v60[1] = 0;
  if (v36 < (v37 >> 1))
  {
    v38 = v28;
    v39 = *(v35 + v36);
    sub_1C8CB891C(v36 + 1);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    v44 = v68;
    if (v41 == v43 >> 1)
    {
      if (v39)
      {
        if (v39 != 1)
        {
          v75 = 2;
          sub_1C8DD3F34();
          OUTLINED_FUNCTION_4_20();
          v53 = v67;
          sub_1C8DD4084();
          v56 = v66;
          sub_1C9064A6C();
          swift_unknownObjectRelease();
          (*(v44 + 8))(v31, v56);
          v57 = OUTLINED_FUNCTION_1_38();
          v58(v57);
          v59 = 0;
          v47 = v72;
LABEL_14:
          *v53 = v47;
          *(v53 + 8) = v59;
          return __swift_destroy_boxed_opaque_existential_1(v71);
        }

        v74 = 1;
        sub_1C8DD3FDC();
        OUTLINED_FUNCTION_4_20();
        swift_unknownObjectRelease();
        (*(v65 + 8))(v14, v64);
        v45 = OUTLINED_FUNCTION_5_21();
        v46(v45);
        v47 = 1;
      }

      else
      {
        v73 = 0;
        sub_1C8DD4030();
        v52 = v62;
        OUTLINED_FUNCTION_4_20();
        swift_unknownObjectRelease();
        (*(v63 + 8))(v52, v61);
        v54 = OUTLINED_FUNCTION_5_21();
        v55(v54);
        v47 = 0;
      }

      v59 = 1;
      v53 = v67;
      goto LABEL_14;
    }

    v32 = v38;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8DD3E74()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C9064D7C();
  if (v2 == 1)
  {
    v1 = v1 != 0;
  }

  else
  {
    MEMORY[0x1CCA82810](2);
  }

  MEMORY[0x1CCA82810](v1);
  return sub_1C9064DBC();
}

unint64_t sub_1C8DD3EE0()
{
  result = qword_1EDA69BA0;
  if (!qword_1EDA69BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69BA0);
  }

  return result;
}

unint64_t sub_1C8DD3F34()
{
  result = qword_1EC3152A8;
  if (!qword_1EC3152A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3152A8);
  }

  return result;
}

unint64_t sub_1C8DD3F88()
{
  result = qword_1EC3152B0;
  if (!qword_1EC3152B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3152B0);
  }

  return result;
}

unint64_t sub_1C8DD3FDC()
{
  result = qword_1EC3152B8;
  if (!qword_1EC3152B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3152B8);
  }

  return result;
}

unint64_t sub_1C8DD4030()
{
  result = qword_1EDA69B78;
  if (!qword_1EDA69B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B78);
  }

  return result;
}

unint64_t sub_1C8DD4084()
{
  result = qword_1EC3152E0;
  if (!qword_1EC3152E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3152E0);
  }

  return result;
}

unint64_t sub_1C8DD40DC()
{
  result = qword_1EC3152E8;
  if (!qword_1EC3152E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3152E8);
  }

  return result;
}

unint64_t sub_1C8DD4134()
{
  result = qword_1EC3152F0;
  if (!qword_1EC3152F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3152F0);
  }

  return result;
}

unint64_t sub_1C8DD4188()
{
  result = qword_1EC3152F8;
  if (!qword_1EC3152F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3152F8);
  }

  return result;
}

unint64_t sub_1C8DD41E0()
{
  result = qword_1EC315300;
  if (!qword_1EC315300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315300);
  }

  return result;
}

unint64_t sub_1C8DD4238()
{
  result = qword_1EC315308;
  if (!qword_1EC315308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315308);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntentStateChange(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IntentSideEffect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntentSideEffect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C8DD4320(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C8DD433C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentSideEffect.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for IntentSideEffect.StateChangeCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C8DD4518()
{
  result = qword_1EC315310;
  if (!qword_1EC315310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315310);
  }

  return result;
}

unint64_t sub_1C8DD4570()
{
  result = qword_1EC315318;
  if (!qword_1EC315318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315318);
  }

  return result;
}

unint64_t sub_1C8DD45C8()
{
  result = qword_1EDA69B68;
  if (!qword_1EDA69B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B68);
  }

  return result;
}

unint64_t sub_1C8DD4620()
{
  result = qword_1EDA69B70;
  if (!qword_1EDA69B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B70);
  }

  return result;
}

unint64_t sub_1C8DD4678()
{
  result = qword_1EDA69B80;
  if (!qword_1EDA69B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B80);
  }

  return result;
}

unint64_t sub_1C8DD46D0()
{
  result = qword_1EDA69B88;
  if (!qword_1EDA69B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B88);
  }

  return result;
}

unint64_t sub_1C8DD4728()
{
  result = qword_1EDA69B58;
  if (!qword_1EDA69B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B58);
  }

  return result;
}

unint64_t sub_1C8DD4780()
{
  result = qword_1EDA69B60;
  if (!qword_1EDA69B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B60);
  }

  return result;
}

unint64_t sub_1C8DD47D8()
{
  result = qword_1EDA69B90;
  if (!qword_1EDA69B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B90);
  }

  return result;
}

unint64_t sub_1C8DD4830()
{
  result = qword_1EDA69B98;
  if (!qword_1EDA69B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA69B98);
  }

  return result;
}

uint64_t sub_1C8DD4888(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_1C8DD48C4(a1);
}

uint64_t sub_1C8DD49A8()
{
  v0 = sub_1C8DD4938();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Cache.__allocating_init()()
{
  v0 = swift_allocObject();
  Cache.init()();
  return v0;
}

void *Cache.init()()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC315320, qword_1C907CB28);
  v3 = v2[10];
  v4 = v2[11];
  v5 = v2[12];
  type metadata accessor for Cache.Box();
  type metadata accessor for Cache.Box();
  v1[2] = sub_1C8DD4B08();
  return v1;
}

id sub_1C8DD4B08()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1C8DD4B58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v9 = sub_1C906464C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = *(*(v8 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - v17;
  (*(v19 + 16))(&v22 - v17, a3, v8, v16);
  (*(v10 + 16))(v13, a1, v9);
  v20 = *a2;
  return sub_1C8DD4E90(v13, v18);
}

uint64_t sub_1C8DD4CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v17 - v8;
  v10 = v2[2];
  v12 = *(v11 + 88);
  v13 = *(v11 + 96);
  v17[0] = v5;
  v17[1] = v12;
  v17[2] = v5;
  v17[3] = v13;
  type metadata accessor for Cache.Box();
  (*(v6 + 16))(v9, a1, v5);
  v14 = [v10 objectForKey_];

  if (v14)
  {
    (*(*(v12 - 8) + 16))(a2, &v14[*(*v14 + 112)], v12);

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v15, 1, v12);
}

uint64_t sub_1C8DD4E90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a1;
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = sub_1C906464C();
  OUTLINED_FUNCTION_16_3();
  v45 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  OUTLINED_FUNCTION_16_3();
  v44 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v46 = &v42 - v20;
  v21 = *(v5 + 80);
  OUTLINED_FUNCTION_16_3();
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v42 - v27;
  v29 = *(v5 + 96);
  v50 = v21;
  v51 = v6;
  v52 = v21;
  v53 = v29;
  type metadata accessor for Cache.Box();
  v30 = *(v23 + 16);
  v48 = a2;
  v31 = a2;
  v32 = v45;
  v30(v28, v31, v21);
  v33 = sub_1C8DD4888(v28);
  v34 = *(v32 + 16);
  v47 = v7;
  v34(v13, v49, v7);
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) == 1)
  {
    v35 = *(v32 + 8);
    v36 = v47;
    v35(v13, v47);
    [v3[2] removeObjectForKey_];

    (*(v23 + 8))(v48, v21);
    return (v35)(v49, v36);
  }

  else
  {
    v38 = v44;
    (*(v44 + 32))(v46, v13, v6);
    v39 = v3[2];
    v50 = v21;
    v51 = v6;
    v52 = v6;
    v53 = v29;
    type metadata accessor for Cache.Box();
    v40 = v43;
    v41 = v46;
    (*(v38 + 16))(v43, v46, v6);
    [v39 setObject:sub_1C8DD4888(v40) forKey:v33];

    (*(v23 + 8))(v48, v21);
    (*(v32 + 8))(v49, v47);
    return (*(v38 + 8))(v41, v6);
  }
}

void (*sub_1C8DD524C(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v5;
  *v5 = v2;
  v6 = *v2;
  v7 = *(*v2 + 88);
  v8 = sub_1C906464C();
  v5[1] = v8;
  v9 = *(v8 - 8);
  v5[2] = v9;
  v10 = *(v9 + 64);
  v5[3] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v5[4] = v11;
  v5[5] = *(v6 + 80);
  OUTLINED_FUNCTION_16_3();
  v13 = v12;
  v5[6] = v12;
  v15 = *(v14 + 64);
  v5[7] = __swift_coroFrameAllocStub(v15);
  v5[8] = __swift_coroFrameAllocStub(v15);
  (*(v13 + 16))();
  sub_1C8DD4CC8(a2, v11);
  return sub_1C8DD53E0;
}

void sub_1C8DD53E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  if (a2)
  {
    v5 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v7 = v2[4];
    v9 = v2[1];
    v10 = v2[2];
    v11 = *v2;
    (*(v10 + 16))(v8, v7, v9);
    (*(v6 + 32))(v3, v4, v5);
    sub_1C8DD4E90(v8, v3);
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    v12 = *v2;
    sub_1C8DD4E90(v7, v4);
  }

  free(v4);
  free(v3);
  free(v7);
  free(v8);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1C8DD5518@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(__n128)@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *(*(sub_1C906464C() - 8) + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = *(v6 + 80);
  OUTLINED_FUNCTION_16_3();
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  v24 = a3;
  v21 = v25;
  result = a2(v18);
  if (!v21)
  {
    (*(v14 + 16))(v20, v23, v12);
    (*(*(v7 - 8) + 16))(v11, v24, v7);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v7);
    return sub_1C8DD4E90(v11, v20);
  }

  return result;
}

uint64_t sub_1C8DD56D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = v4;
  v6[3] = a2;
  v6[4] = v3;
  v6[2] = a1;
  v8 = *v3;
  v6[5] = *(*v3 + 88);
  v9 = *(*(sub_1C906464C() - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v6[7] = *(v8 + 80);
  OUTLINED_FUNCTION_16_3();
  v6[8] = v10;
  v12 = *(v11 + 64) + 15;
  v6[9] = swift_task_alloc();
  v16 = (a3 + *a3);
  v13 = a3[1];
  v14 = swift_task_alloc();
  v6[10] = v14;
  *v14 = v6;
  v14[1] = sub_1C8DD5890;

  return v16(a1);
}

uint64_t sub_1C8DD5890()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 72);
    v6 = *(v2 + 48);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C8DD59E8, 0, 0);
  }
}

uint64_t sub_1C8DD59E8()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  (*(v0[8] + 16))(v1, v0[3], v0[7]);
  (*(*(v4 - 8) + 16))(v2, v5, v4);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  sub_1C8DD4E90(v2, v1);

  v6 = v0[1];

  return v6();
}

uint64_t Cache.__deallocating_deinit()
{
  Cache.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t dispatch thunk of Cache.set(key:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 152);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1C8D1D644;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_1C8DD5DA4(uint64_t a1)
{
  v1 = *(a1 + 96);
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

uint64_t type metadata accessor for Query()
{
  result = qword_1EDA6D098;
  if (!qword_1EDA6D098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Query.limit.getter()
{
  v1 = (v0 + *(type metadata accessor for Query() + 24));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t Query.init(predicate:sort:limit:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_1C8D04FBC(a1, v12);
  AnyPredicate.init(predicate:)(v12, a5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  result = type metadata accessor for Query();
  *(a5 + *(result + 20)) = a2 & 1;
  v11 = a5 + *(result + 24);
  *v11 = a3;
  *(v11 + 8) = a4 & 1;
  return result;
}

uint64_t Query.debugDescription.getter()
{
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_1C906478C();
  v9 = 0;
  v10 = 0xE000000000000000;
  MEMORY[0x1CCA81A90](0xD000000000000011, 0x80000001C90CABC0);
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_1C8DC8B78(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC314E98, &qword_1C907AAA8);
  sub_1C90648BC();
  __swift_destroy_boxed_opaque_existential_1(v6);
  MEMORY[0x1CCA81A90](v7, v8);

  MEMORY[0x1CCA81A90](0x3D74726F7320, 0xE600000000000000);
  v1 = type metadata accessor for Query();
  LOBYTE(v6[0]) = *(v0 + *(v1 + 20));
  sub_1C90648BC();
  MEMORY[0x1CCA81A90](0x3D74696D696C20, 0xE700000000000000);
  v2 = v0 + *(v1 + 24);
  if (*(v2 + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = *v2;
  }

  v6[0] = v3;
  v4 = sub_1C9064BDC();
  MEMORY[0x1CCA81A90](v4);

  MEMORY[0x1CCA81A90](62, 0xE100000000000000);
  return v9;
}

uint64_t static Query.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static AnyPredicate.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Query();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if ((sub_1C90623DC() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v4 + 24);
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 8);
  if (v10)
  {
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1C8DD61CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9064C2C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1953656691 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C9064C2C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9064C2C();

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

uint64_t sub_1C8DD62E0(char a1)
{
  if (!a1)
  {
    return 0x7461636964657270;
  }

  if (a1 == 1)
  {
    return 1953656691;
  }

  return 0x74696D696CLL;
}

uint64_t sub_1C8DD6338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C8DD61CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C8DD6360(uint64_t a1)
{
  v2 = sub_1C8DD65C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8DD639C(uint64_t a1)
{
  v2 = sub_1C8DD65C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Query.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315428, &qword_1C907CB90);
  v6 = OUTLINED_FUNCTION_11(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DD65C4();
  sub_1C9064E1C();
  v21[15] = 0;
  type metadata accessor for AnyPredicate(0);
  OUTLINED_FUNCTION_0_43();
  sub_1C8DD6BE4(v14, v15);
  sub_1C9064B8C();
  if (!v2)
  {
    v16 = type metadata accessor for Query();
    v21[14] = *(v3 + *(v16 + 20));
    v21[13] = 1;
    sub_1C8DD6618();
    sub_1C9064B8C();
    v17 = (v3 + *(v16 + 24));
    v18 = *v17;
    v19 = *(v17 + 8);
    v21[12] = 2;
    sub_1C9064AFC();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_1C8DD65C4()
{
  result = qword_1EDA605C8;
  if (!qword_1EDA605C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA605C8);
  }

  return result;
}

unint64_t sub_1C8DD6618()
{
  result = qword_1EDA62CC8;
  if (!qword_1EDA62CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA62CC8);
  }

  return result;
}

uint64_t Query.hash(into:)()
{
  AnyPredicate.hash(into:)();
  v1 = type metadata accessor for Query();
  v2 = *(v0 + *(v1 + 20));
  sub_1C90623EC();
  v3 = (v0 + *(v1 + 24));
  if (*(v3 + 8) == 1)
  {
    return sub_1C9064D9C();
  }

  v5 = *v3;
  sub_1C9064D9C();
  return MEMORY[0x1CCA82810](v5);
}

uint64_t Query.hashValue.getter()
{
  sub_1C9064D7C();
  Query.hash(into:)();
  return sub_1C9064DBC();
}

uint64_t Query.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30[0] = a2;
  v4 = type metadata accessor for AnyPredicate(0);
  v5 = OUTLINED_FUNCTION_13_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v31 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315430, &qword_1C907CB98);
  v10 = OUTLINED_FUNCTION_11(v9);
  v30[1] = v11;
  v30[2] = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = type metadata accessor for Query();
  v15 = OUTLINED_FUNCTION_13_1(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C8DD65C4();
  sub_1C9064DEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = 0;
  OUTLINED_FUNCTION_0_43();
  sub_1C8DD6BE4(v21, v22);
  sub_1C9064A6C();
  sub_1C8D28774(v31, v19);
  v33 = 1;
  sub_1C8DD6A90();
  sub_1C9064A6C();
  v19[*(v14 + 20)] = v34;
  v32 = 2;
  v24 = sub_1C90649DC();
  v26 = v25;
  v27 = OUTLINED_FUNCTION_2_30();
  v28(v27);
  v29 = &v19[*(v14 + 24)];
  *v29 = v24;
  v29[8] = v26 & 1;
  sub_1C8DD6AE4(v19, v30[0], type metadata accessor for Query);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1C8DD6B44(v19, type metadata accessor for Query);
}

uint64_t sub_1C8DD6A54()
{
  sub_1C9064D7C();
  Query.hash(into:)();
  return sub_1C9064DBC();
}

unint64_t sub_1C8DD6A90()
{
  result = qword_1EC315438;
  if (!qword_1EC315438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315438);
  }

  return result;
}

uint64_t sub_1C8DD6AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C8DD6B44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C8DD6BE4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C8DD6C8C()
{
  type metadata accessor for AnyPredicate(319);
  if (v0 <= 0x3F)
  {
    sub_1C8DD6D18();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8DD6D18()
{
  if (!qword_1EDA6CBC0)
  {
    v0 = sub_1C906464C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA6CBC0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Query.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C8DD6E48()
{
  result = qword_1EC315448;
  if (!qword_1EC315448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315448);
  }

  return result;
}

unint64_t sub_1C8DD6EA0()
{
  result = qword_1EDA605B8;
  if (!qword_1EDA605B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA605B8);
  }

  return result;
}

unint64_t sub_1C8DD6EF8()
{
  result = qword_1EDA605C0;
  if (!qword_1EDA605C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA605C0);
  }

  return result;
}

void SystemTypeProtocol.init(protobuf:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v127 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313668, &qword_1C906BC48);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v6);
  v129 = &v119 - v7;
  OUTLINED_FUNCTION_111();
  v135 = sub_1C9063C4C();
  v8 = OUTLINED_FUNCTION_11(v135);
  v125 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7_0();
  v124 = v12;
  v13 = OUTLINED_FUNCTION_111();
  v14 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(v13);
  v15 = OUTLINED_FUNCTION_9(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_7_0();
  v126 = v18;
  v19 = OUTLINED_FUNCTION_111();
  v20 = type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(v19);
  v21 = OUTLINED_FUNCTION_9(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7_0();
  v123 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_9(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v28);
  v122 = (&v119 - v29);
  v30 = OUTLINED_FUNCTION_111();
  v31 = type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(v30);
  v32 = OUTLINED_FUNCTION_9(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A68, &qword_1C9074DB0);
  OUTLINED_FUNCTION_9(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v119 - v41;
  v43 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v44 = OUTLINED_FUNCTION_13_1(v43);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v119 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v119 - v50;
  sub_1C8CC0620(a1, v42, &qword_1EC312A68, &qword_1C9074DB0);
  if (__swift_getEnumTagSinglePayload(v42, 1, v43) == 1)
  {
    sub_1C8D16D78(v42, &qword_1EC312A68, &qword_1C9074DB0);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315450, &qword_1C907CDB8);
    sub_1C8DD7858();
    swift_allocError();
    *v53 = v43;
    (*(*(v52 - 8) + 104))(v53, *MEMORY[0x1E69E08B0], v52);
    swift_willThrow();
    OUTLINED_FUNCTION_1_39();
    sub_1C8DD8068(a1, v54);
  }

  else
  {
    v121 = a1;
    OUTLINED_FUNCTION_5_22();
    sub_1C8DD8008(v42, v51, v55);
    sub_1C8DD78BC(v51, v48);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v57 = v129;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_1C8DD8008(v48, v36, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
        sub_1C8CC0620(v36, v122, &qword_1EC313F20, &unk_1C9074D20);
        sub_1C8D60A64();
        v101 = v128;
        sub_1C906351C();
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v121, v102);
        sub_1C8DD8068(v36, type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v51, v103);
        if (!v101)
        {
          v65 = 0;
          v61 = v130;
          v48 = v131;
          v63 = v132;
          v64 = v133;
          v62 = v134;
          goto LABEL_35;
        }

        return;
      case 2:
        v120 = v51;
        v78 = v48;
        v48 = v126;
        sub_1C8DD8008(v78, v126, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
        v79 = 0;
        v80 = *v48;
        v81 = *(*v48 + 16);
        v122 = (v125 + 32);
        v82 = v80 + 40;
        v123 = MEMORY[0x1E69E7CC0];
        v119 = v80 + 40;
        break;
      case 3:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v121, v97);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v51, v98);
        v61 = 0;
        v48 = 0;
        v62 = 0;
        v63 = 0uLL;
        goto LABEL_31;
      case 4:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v121, v72);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v51, v73);
        *&v63 = OUTLINED_FUNCTION_2_1();
        v61 = 1;
        goto LABEL_34;
      case 5:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v121, v106);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v51, v107);
        *&v63 = OUTLINED_FUNCTION_2_1();
        v61 = 2;
        goto LABEL_34;
      case 6:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v121, v110);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v51, v111);
        v48 = 0;
        v62 = 0;
        v63 = 0uLL;
        v61 = 3;
LABEL_31:
        v65 = 3;
        goto LABEL_34;
      case 7:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v121, v99);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v51, v100);
        *&v63 = OUTLINED_FUNCTION_2_1();
        v61 = 4;
        goto LABEL_34;
      case 8:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v121, v114);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v51, v115);
        *&v63 = OUTLINED_FUNCTION_2_1();
        v61 = 5;
        goto LABEL_34;
      case 9:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v121, v76);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v51, v77);
        *&v63 = OUTLINED_FUNCTION_2_1();
        v61 = 6;
        goto LABEL_34;
      case 10:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v121, v112);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v51, v113);
        *&v63 = OUTLINED_FUNCTION_2_1();
        v61 = 7;
        goto LABEL_34;
      case 11:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v121, v70);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v51, v71);
        *&v63 = OUTLINED_FUNCTION_2_1();
        v61 = 9;
        goto LABEL_34;
      case 12:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v121, v74);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v51, v75);
        *&v63 = OUTLINED_FUNCTION_2_1();
        v61 = 12;
        goto LABEL_34;
      case 13:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v121, v108);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v51, v109);
        *&v63 = OUTLINED_FUNCTION_2_1();
        v61 = 13;
        goto LABEL_34;
      case 14:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v121, v68);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v51, v69);
        *&v63 = OUTLINED_FUNCTION_2_1();
        v61 = 14;
        goto LABEL_34;
      case 15:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v121, v95);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v51, v96);
        *&v63 = OUTLINED_FUNCTION_2_1();
        v61 = 10;
        goto LABEL_34;
      case 16:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v121, v66);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v51, v67);
        *&v63 = OUTLINED_FUNCTION_2_1();
        v61 = 8;
        goto LABEL_34;
      case 17:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v121, v104);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v51, v105);
        *&v63 = OUTLINED_FUNCTION_2_1();
        v61 = 11;
LABEL_34:
        v64 = 0uLL;
        goto LABEL_35;
      default:
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v121, v58);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v51, v59);
        v60 = v123;
        sub_1C8DD8008(v48, v123, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
        v61 = *v60;
        v48 = v60[1];

        sub_1C8DD8068(v60, type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity);
        v65 = 1;
LABEL_35:
        v116 = v127;
        *v127 = v61;
        v116[1] = v48;
        *(v116 + 1) = v63;
        *(v116 + 2) = v64;
        v116[6] = v62;
        *(v116 + 56) = v65;
        return;
    }

LABEL_12:
    v83 = (v82 + 16 * v79);
    v84 = v121;
    while (1)
    {
      if (v81 == v79)
      {
        OUTLINED_FUNCTION_1_39();
        sub_1C8DD8068(v84, v117);
        OUTLINED_FUNCTION_0_44();
        sub_1C8DD8068(v120, v118);
        sub_1C8DD8068(v126, type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable);
        v65 = 2;
        v61 = v123;
        goto LABEL_35;
      }

      if (v79 >= *(v80 + 16))
      {
        break;
      }

      v48 = *(v83 - 1);
      v85 = *v83;

      sub_1C9063C2C();
      if (__swift_getEnumTagSinglePayload(v57, 1, v135) != 1)
      {
        v86 = *v122;
        (*v122)(v124, v57, v135);
        v87 = v123;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = *(v87 + 16);
          sub_1C8CACA10();
          v87 = v93;
        }

        v89 = *(v87 + 16);
        v88 = *(v87 + 24);
        v123 = v87;
        v48 = (v89 + 1);
        if (v89 >= v88 >> 1)
        {
          sub_1C8CACA10();
          v123 = v94;
        }

        ++v79;
        v91 = v123;
        v90 = v124;
        v123[2] = v48;
        v86(v91 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v89, v90, v135);
        v82 = v119;
        goto LABEL_12;
      }

      sub_1C8D16D78(v57, &qword_1EC313668, &qword_1C906BC48);
      v83 += 2;
      ++v79;
    }

    __break(1u);
  }
}

unint64_t sub_1C8DD7858()
{
  result = qword_1EC315458;
  if (!qword_1EC315458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC315450, &qword_1C907CDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC315458);
  }

  return result;
}

uint64_t sub_1C8DD78BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SystemTypeProtocol.protobuf(useCase:)@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v77 = sub_1C9063C4C();
  v2 = OUTLINED_FUNCTION_11(v77);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_7_0();
  v76 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F28, &qword_1C9072058);
  OUTLINED_FUNCTION_9(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v69 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313F20, &unk_1C9074D20);
  OUTLINED_FUNCTION_9(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_82();
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v69 - v18);
  v20 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v21 = OUTLINED_FUNCTION_13_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v24);
  v72 = &v69 - v27;
  v28 = *v1;
  v29 = v1[1];
  v31 = v1[2];
  v30 = v1[3];
  v33 = v1[4];
  v32 = v1[5];
  v34 = v1[6];
  switch(*(v1 + 56))
  {
    case 1:
      v63 = *v1;
      v64 = *(type metadata accessor for ToolKitProtoSystemTypeProtocol.IntentUpdatableEntity(0) + 20);

      v34 = v72;
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v34 = v63;
      *(v34 + 8) = v29;
      goto LABEL_28;
    case 2:
      v69 = v26;
      v70 = v25;
      v43 = *(v28 + 16);
      v44 = MEMORY[0x1E69E7CC0];
      if (v43)
      {
        v78 = MEMORY[0x1E69E7CC0];
        v45 = v28;
        sub_1C8CA6480();
        v44 = v78;
        v47 = *(v4 + 16);
        v46 = v4 + 16;
        v48 = v45 + ((*(v46 + 64) + 32) & ~*(v46 + 64));
        v73 = *(v46 + 56);
        v74 = v47;
        v75 = v46;
        v49 = (v46 - 8);
        do
        {
          v50 = v76;
          v51 = v77;
          v74(v76, v48, v77);
          v52 = sub_1C9063C1C();
          v54 = v53;
          (*v49)(v50, v51);
          v78 = v44;
          v55 = *(v44 + 16);
          if (v55 >= *(v44 + 24) >> 1)
          {
            sub_1C8CA6480();
            v44 = v78;
          }

          *(v44 + 16) = v55 + 1;
          v56 = v44 + 16 * v55;
          *(v56 + 32) = v52;
          *(v56 + 40) = v54;
          v48 += v73;
          --v43;
        }

        while (v43);
      }

      v57 = type metadata accessor for ToolKitProtoSystemTypeProtocol.PersistentFileIdentifiable(0);
      v58 = v69;
      v59 = v69 + *(v57 + 20);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v58 = v44;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_22();
      v34 = v72;
      sub_1C8DD8008(v58, v72, v60);
      goto LABEL_29;
    case 3:
      v61 = v33 | v32 | v34;
      if (v31 | v29 | v28 | v30 | v61)
      {
        v62 = v31 | v29 | v30 | v61;
        v34 = v72;
        if ((v28 != 1 || v62) && (v28 != 2 || v62) && (v28 != 3 || v62) && (v28 != 4 || v62) && (v28 != 5 || v62) && (v28 != 6 || v62) && (v28 != 7 || v62) && (v28 != 8 || v62) && (v28 != 9 || v62) && (v28 != 10 || v62) && (v28 != 11 || v62))
        {
          v68 = *v1;
          OUTLINED_FUNCTION_8_22();
        }
      }

      else
      {
        OUTLINED_FUNCTION_8_22();
      }

      goto LABEL_28;
    default:
      v70 = v25;
      v35 = v28;
      v77 = v32;
      v36 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
      v37 = *(v36 + 28);

      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v13 = v31;
      v13[1] = v30;
      v13[2] = v33;
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v36);
      v38 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
      v39 = *(v38 + 24);
      __swift_storeEnumTagSinglePayload(v19 + v39, 1, 1, v36);
      v40 = v19 + *(v38 + 28);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      *v19 = v35;
      v19[1] = v29;
      sub_1C8D61094(v13, v19 + v39, &qword_1EC313F28, &qword_1C9072058);
      v19[2] = v77;
      v19[3] = v34;
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v38);
      v41 = OUTLINED_FUNCTION_8_22();
      __swift_storeEnumTagSinglePayload(v41, 1, 1, v38);
      v42 = v34 + *(type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0) + 20);
      _s7ToolKit0aB17ProtoAllPredicateVACycfC_0();
      sub_1C8D61094(v19, v34, &qword_1EC313F20, &unk_1C9074D20);
LABEL_28:
      swift_storeEnumTagMultiPayload();
LABEL_29:
      v65 = type metadata accessor for ToolKitProtoSystemTypeProtocol(0);
      MEMORY[0x1EEE9AC00](v65);
      *(&v69 - 2) = v34;
      sub_1C8DD80DC();
      sub_1C9063ACC();
      OUTLINED_FUNCTION_0_44();
      return sub_1C8DD8068(v34, v66);
  }
}

uint64_t sub_1C8DD7F68(uint64_t a1, uint64_t a2)
{
  sub_1C8D16D78(a1, &qword_1EC312A68, &qword_1C9074DB0);
  sub_1C8DD78BC(a2, a1);
  v4 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t sub_1C8DD8008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_13_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C8DD8068(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_13_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_1C8DD80DC()
{
  result = qword_1EDA64710[0];
  if (!qword_1EDA64710[0])
  {
    type metadata accessor for ToolKitProtoSystemTypeProtocol(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA64710);
  }

  return result;
}

uint64_t sub_1C8DD8138()
{
  v0 = sub_1C9063D3C();
  __swift_allocate_value_buffer(v0, qword_1EC315460);
  __swift_project_value_buffer(v0, qword_1EC315460);
  return sub_1C9063D2C();
}

uint64_t static ToolSummaryComponent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    if ((v7 & 1) == 0)
    {
      v25 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_1C9064C2C();
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_143_1();
        v27 = OUTLINED_FUNCTION_143_1();
        j_j__OUTLINED_FUNCTION_265(v27, v28, 0);
        v16 = OUTLINED_FUNCTION_100();
        v18 = 0;
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_143_1();
      v37 = OUTLINED_FUNCTION_143_1();
      j_j__OUTLINED_FUNCTION_265(v37, v38, 0);
      j_j__OUTLINED_FUNCTION_265(v3, v2, 0);
      return 1;
    }

LABEL_9:
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_143_1();
    v19 = OUTLINED_FUNCTION_143_1();
    j_j__OUTLINED_FUNCTION_265(v19, v20, v4);
    v21 = OUTLINED_FUNCTION_100();
    j_j__OUTLINED_FUNCTION_265(v21, v22, v7);
    return 0;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (v3 == v6 && v2 == v5)
  {
    v23 = 1;
    v29 = OUTLINED_FUNCTION_56_1();
    j_j__OUTLINED_FUNCTION_264(v29);
    v30 = OUTLINED_FUNCTION_56_1();
    j_j__OUTLINED_FUNCTION_264(v30);
    v31 = OUTLINED_FUNCTION_56_1();
    j_j__OUTLINED_FUNCTION_265(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_56_1();
    j_j__OUTLINED_FUNCTION_265(v34, v35, v36);
    return v23;
  }

  v9 = *a1;
  v10 = sub_1C9064C2C();
  v11 = OUTLINED_FUNCTION_100();
  j_j__OUTLINED_FUNCTION_264(v11);
  v12 = OUTLINED_FUNCTION_56_1();
  j_j__OUTLINED_FUNCTION_264(v12);
  v13 = OUTLINED_FUNCTION_56_1();
  j_j__OUTLINED_FUNCTION_265(v13, v14, v15);
  v16 = OUTLINED_FUNCTION_100();
  v18 = 1;
LABEL_16:
  j_j__OUTLINED_FUNCTION_265(v16, v17, v18);
  return v10 & 1;
}

uint64_t ToolSummaryComponent.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1CCA82810](*(v0 + 16));
  OUTLINED_FUNCTION_145();

  return sub_1C9063FBC();
}

uint64_t ToolSummaryComponent.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](v3);
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

uint64_t sub_1C8DD83EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1C9064D7C();
  MEMORY[0x1CCA82810](v3);
  sub_1C9063FBC();
  return sub_1C9064DBC();
}

void static ToolSummaryString.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1C8CF1698();
}

uint64_t ToolSummaryString.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x1CCA82810](v2);
  if (v2)
  {
    v4 = (v1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v4 += 24;
      MEMORY[0x1CCA82810](v7);

      sub_1C9063FBC();
      result = j_j__OUTLINED_FUNCTION_265(v5, v6, v7);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t ToolSummaryString.hashValue.getter()
{
  v1 = *v0;
  sub_1C9064D7C();
  sub_1C8D04B00(v3, v1);
  return sub_1C9064DBC();
}

uint64_t sub_1C8DD8548()
{
  v1 = *v0;
  sub_1C9064D7C();
  sub_1C8D04B00(v3, v1);
  return sub_1C9064DBC();
}

uint64_t ToolInvocationSignature.visibleParameterKeys.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ToolInvocationSignature.invisibleParameterKeys.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ToolInvocationSignature.valueConstraints.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

void static ToolInvocationSignature.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (sub_1C8D2A650(*a1, *a2) & 1) != 0 && (sub_1C8D2A650(v2, v4))
  {
    OUTLINED_FUNCTION_94();

    sub_1C8F582DC();
  }
}

uint64_t ToolInvocationSignature.hash(into:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1C8D39BF8(a1, v2);
  v5 = OUTLINED_FUNCTION_145();
  sub_1C8D39BF8(v5, v6);
  v7 = OUTLINED_FUNCTION_94();

  return sub_1C8DC7678(v7, v8);
}

uint64_t ToolInvocationSignature.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C9064D7C();
  sub_1C8D39BF8(__src, v1);
  sub_1C8D39BF8(__src, v2);
  sub_1C8DC7678(__src, v3);
  return sub_1C9064DBC();
}

uint64_t sub_1C8DD87C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C9064D7C();
  sub_1C8D39BF8(__src, v1);
  sub_1C8D39BF8(__src, v2);
  sub_1C8DC7678(__src, v3);
  return sub_1C9064DBC();
}

void ToolInvocationSignature.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = sub_1C8DD8EA4(v1);
  v4 = v3;
  v5 = *(v3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = 0;
    v68 = v3 + 32;
    v8 = MEMORY[0x1E69E7CC0];
    v63 = v3;
    v64 = v2;
    v65 = *(v3 + 16);
    while (v7 < *(v4 + 16))
    {
      if (*(v2 + 16))
      {
        v9 = (v68 + 16 * v7);
        v11 = *v9;
        v10 = v9[1];

        v12 = sub_1C8CAE064();
        if (v13)
        {
          v67 = v7;
          v14 = *(*(v2 + 56) + 8 * v12);
          if (*(v14 + 16))
          {
            v66 = v8;
            v82 = v11;
            v83 = v10;

            MEMORY[0x1CCA81A90](8250, 0xE200000000000000);
            v15 = *(v14 + 16);
            if (v15)
            {
              sub_1C8CA6480();
              v75 = v6;
              v18 = sub_1C8D3F274(v14);
              v19 = 0;
              v74 = v14 + 56;
              if ((v18 & 0x8000000000000000) == 0)
              {
                while (v18 < 1 << *(v14 + 32))
                {
                  v20 = v18 >> 6;
                  if ((*(v74 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
                  {
                    goto LABEL_60;
                  }

                  if (*(v14 + 36) != v16)
                  {
                    goto LABEL_61;
                  }

                  v21 = v18 & 0x3F;
                  v22 = *(v14 + 48) + 16 * v18;
                  v23 = *v22;
                  v24 = *(v22 + 8);
                  v25 = v15;
                  v73 = v19 + 1;
                  switch(v24 >> 5)
                  {
                    case 1u:
                      v26 = 15649;
                      goto LABEL_22;
                    case 2u:
                      v69 = v18 & 0x3F;
                      v71 = v17;
                      v28 = v16;
                      if (v24)
                      {
                        v29 = 15678;
                        goto LABEL_19;
                      }

                      v36 = 62;
                      goto LABEL_30;
                    case 3u:
                      v69 = v18 & 0x3F;
                      v71 = v17;
                      v28 = v16;
                      if (v24)
                      {
                        v29 = 15676;
LABEL_19:
                        v78 = v29;
                        v30 = 0xE200000000000000;
                      }

                      else
                      {
                        v36 = 60;
LABEL_30:
                        v78 = v36;
                        v30 = 0xE100000000000000;
                      }

                      v80 = v30;
                      sub_1C8DDC4F8();
                      v37 = sub_1C906433C();
                      MEMORY[0x1CCA81A90](v37);

                      v34 = v78;
                      v35 = v80;
                      v16 = v28;
                      v17 = v71;
                      v21 = v69;
LABEL_32:
                      v38 = v75;
                      v81 = v75;
                      v39 = *(v75 + 16);
                      if (v39 >= *(v75 + 24) >> 1)
                      {
                        v76 = v16;
                        v72 = v17;
                        v70 = v21;
                        sub_1C8CA6480();
                        v21 = v70;
                        v17 = v72;
                        v16 = v76;
                        v38 = v81;
                      }

                      *(v38 + 16) = v39 + 1;
                      v40 = v38 + 16 * v39;
                      *(v40 + 32) = v34;
                      *(v40 + 40) = v35;
                      if (v17)
                      {
                        goto LABEL_66;
                      }

                      v41 = 1 << *(v14 + 32);
                      if (v18 >= v41)
                      {
                        goto LABEL_62;
                      }

                      v42 = *(v74 + 8 * v20);
                      if ((v42 & (1 << v18)) == 0)
                      {
                        goto LABEL_63;
                      }

                      v75 = v38;
                      if (*(v14 + 36) != v16)
                      {
                        goto LABEL_64;
                      }

                      v43 = v42 & (-2 << v21);
                      if (v43)
                      {
                        v41 = __clz(__rbit64(v43)) | v18 & 0x7FFFFFFFFFFFFFC0;
                        v15 = v25;
                        goto LABEL_45;
                      }

                      v44 = v20 << 6;
                      v45 = v20 + 1;
                      v46 = (v14 + 64 + 8 * v20);
                      v15 = v25;
                      break;
                    case 4u:
                      v77 = 126;
                      v27 = 0xE100000000000000;
                      goto LABEL_23;
                    case 5u:
                      v26 = 32289;
                      goto LABEL_22;
                    case 6u:
                      if (v23 | v24 ^ 0xC0)
                      {
                        v34 = 0x656E6F4E7369;
                      }

                      else
                      {
                        v34 = 0x656D6F537369;
                      }

                      v35 = 0xE600000000000000;
                      goto LABEL_32;
                    default:
                      v26 = 15677;
LABEL_22:
                      v77 = v26;
                      v27 = 0xE200000000000000;
LABEL_23:
                      v79 = v27;
                      v31 = v16;
                      v32 = v17;
                      sub_1C8DDC4F8();
                      v33 = sub_1C906433C();
                      MEMORY[0x1CCA81A90](v33);

                      v21 = v18 & 0x3F;
                      v17 = v32;
                      v16 = v31;
                      v34 = v77;
                      v35 = v79;
                      goto LABEL_32;
                  }

                  while (v45 < (v41 + 63) >> 6)
                  {
                    v48 = *v46++;
                    v47 = v48;
                    v44 += 64;
                    ++v45;
                    if (v48)
                    {
                      sub_1C8CAF698(v18, v16, 0);
                      v41 = __clz(__rbit64(v47)) + v44;
                      goto LABEL_45;
                    }
                  }

                  sub_1C8CAF698(v18, v16, 0);
LABEL_45:
                  v19 = v73;
                  if (v73 == v15)
                  {

                    v4 = v63;
                    goto LABEL_52;
                  }

                  v17 = 0;
                  v16 = *(v14 + 36);
                  v18 = v41;
                  if (v41 < 0)
                  {
                    break;
                  }
                }
              }

              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
              break;
            }

LABEL_52:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312558, &qword_1C9066990);
            OUTLINED_FUNCTION_0_0();
            sub_1C8D28184(&qword_1EDA6D4A0, &qword_1EC312558, &qword_1C9066990);
            sub_1C9063E9C();

            v49 = OUTLINED_FUNCTION_145();
            MEMORY[0x1CCA81A90](v49);

            v8 = v66;
            v5 = v65;
            v7 = v67;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v53 = *(v66 + 16);
              OUTLINED_FUNCTION_7_20();
              sub_1C8D00CA4();
              v8 = v54;
            }

            v2 = v64;
            v6 = MEMORY[0x1E69E7CC0];
            v51 = *(v8 + 16);
            v50 = *(v8 + 24);
            if (v51 >= v50 >> 1)
            {
              OUTLINED_FUNCTION_4_21(v50);
              sub_1C8D00CA4();
              v8 = v55;
            }

            *(v8 + 16) = v51 + 1;
            v52 = v8 + 16 * v51;
            *(v52 + 32) = v82;
            *(v52 + 40) = v83;
          }

          else
          {

            v5 = v65;
            v7 = v67;
          }
        }

        else
        {
        }
      }

      if (++v7 == v5)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
  }

  else
  {
LABEL_58:
    v56 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
    OUTLINED_FUNCTION_0_0();
    sub_1C8D28184(v58, &qword_1EC312558, &qword_1C9066990);
    v59 = sub_1C9063E9C();
    v61 = v60;

    MEMORY[0x1CCA81A90](v59, v61);

    MEMORY[0x1CCA81A90](31520, 0xE200000000000000);
    sub_1C9063E9C();

    v62 = OUTLINED_FUNCTION_145();
    MEMORY[0x1CCA81A90](v62);

    MEMORY[0x1CCA81A90](10621, 0xE200000000000000);
  }
}

uint64_t sub_1C8DD8EA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_1C8D01FC4(*(a1 + 16), 0);
  sub_1C8D7C438();
  v4 = v3;

  sub_1C8C9E7E4();
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v2 = MEMORY[0x1E69E7CC0];
  }

  v6 = v2;
  sub_1C8DDB388(&v6);
  return v6;
}

uint64_t sub_1C8DD8F8C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC312A00, &qword_1C9068DE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C906A950;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC315490, &unk_1C907D0C0);
  v4 = sub_1C9063E2C();
  v5 = MEMORY[0x1E69E7CD0];
  *(inited + 32) = MEMORY[0x1E69E7CD0];
  *(inited + 40) = v5;
  *(inited + 48) = v4;
  v106 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = 0;
  v7 = 0;
  if (v106)
  {
    v8 = 0;
    v107 = a1 + 32;
    v9 = inited;
    while (1)
    {
      v108 = v8;
      memcpy(__dst, (v107 + 136 * v8), sizeof(__dst));
      v112 = *(v9 + 16);
      if (v112)
      {
        break;
      }

      inited = MEMORY[0x1E69E7CC0];
LABEL_53:
      v8 = v108 + 1;
      v9 = inited;
      if (v108 + 1 == v106)
      {
        goto LABEL_54;
      }
    }

    v10 = *&__dst[64];
    v115 = *&__dst[8];
    v116 = *__dst;
    v114 = *(*&__dst[64] + 16);
    v111 = v9 + 32;
    sub_1C8D07294(__dst, &v134);

    v11 = 0;
    v118 = v10;
    v109 = (v10 + 56);
    v119 = MEMORY[0x1E69E7CC0];
    v110 = v9;
    while (v11 < *(v9 + 16))
    {
      v113 = v11;
      v12 = (v111 + 24 * v11);
      v13 = *v12;
      v1 = v12[1];
      v14 = v12[2];
      *&v134 = *v12;
      *(&v134 + 1) = v1;
      v135 = v14;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      sub_1C8D8634C(v133, v116, v115);

      if (v114)
      {
        v117 = v13;

        v15 = 0;
        v16 = v109;
        v124 = v14;
        buf = v1;
        while (1)
        {
          if (v15 >= *(v118 + 16))
          {
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          *&v129 = v15;
          v18 = *(v16 - 3);
          v17 = *(v16 - 2);
          v19 = *(v16 - 1);
          v20 = *v16;

          sub_1C8D07154(v19, v20);

          sub_1C8D8634C(v133, v18, v17);

          v21 = OUTLINED_FUNCTION_93();
          sub_1C8F1E700(v21, v22);

          sub_1C8D07154(v19, v20);
          sub_1C8CC7E94(isUniquelyReferenced_nonNull_native);
          v23 = v135;
          swift_isUniquelyReferenced_nonNull_native();
          *v133 = v23;
          OUTLINED_FUNCTION_93();
          v24 = sub_1C8CAE064();
          v26 = *(v23 + 16);
          v27 = (v25 & 1) == 0;
          isUniquelyReferenced_nonNull_native = v26 + v27;
          if (__OFADD__(v26, v27))
          {
            goto LABEL_62;
          }

          v28 = v24;
          v29 = v25;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313FA0, &unk_1C9072430);
          v30 = sub_1C90648EC();
          v31 = *v133;
          if (v30)
          {
            OUTLINED_FUNCTION_93();
            v32 = sub_1C8CAE064();
            v34 = v117;
            if ((v29 & 1) != (v33 & 1))
            {
              goto LABEL_82;
            }

            v28 = v32;
          }

          else
          {
            v34 = v117;
          }

          v135 = v31;
          if (v29)
          {
          }

          else
          {
            sub_1C8D64CA4(v28, v18, v17, MEMORY[0x1E69E7CD0], v31);
          }

          *&v129 = v129 + 1;
          v35 = *(v31 + 56) + 8 * v28;
          sub_1C8D87080(v133, v19, v20);
          sub_1C8D07168(*v133, v133[8]);
          *v133 = v34;
          *&v133[8] = buf;
          *&v133[16] = v124;

          sub_1C8D8634C(v132, v116, v115);

          sub_1C8F1E700(v116, v115);

          v36 = 32;
          v37 = v19;
          switch(v20 >> 5)
          {
            case 1u:
              v36 = 0;
              goto LABEL_24;
            case 2u:
              v38 = ~v20;
              v39 = 96;
              goto LABEL_22;
            case 3u:
              v38 = ~v20;
              v39 = 64;
LABEL_22:
              v36 = v39 & 0xFFFFFFFE | v38 & 1;
              goto LABEL_24;
            case 4u:
              v36 = 160;
              goto LABEL_24;
            case 5u:
              v36 = 128;
LABEL_24:
              v37 = v19;
              break;
            case 6u:
              v37 = (v19 | v20 ^ 0xC0) == 0;
              v36 = 192;
              break;
            default:
              break;
          }

          sub_1C8D07154(v19, v20);
          sub_1C8CC7E94(v7);
          v40 = *&v133[16];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v132 = v40;
          OUTLINED_FUNCTION_93();
          v41 = sub_1C8CAE064();
          v7 = v42;
          if (__OFADD__(*(v40 + 16), (v42 & 1) == 0))
          {
            goto LABEL_63;
          }

          v43 = v41;
          v44 = sub_1C90648EC();
          v45 = *v132;
          if (v44)
          {
            OUTLINED_FUNCTION_93();
            v46 = sub_1C8CAE064();
            if ((v7 & 1) != (v47 & 1))
            {
LABEL_82:
              sub_1C9064CBC();
              __break(1u);

              __break(1u);
              return result;
            }

            v43 = v46;
          }

          *&v133[16] = v45;
          if (v7)
          {
          }

          else
          {
            sub_1C8D64CA4(v43, v18, v17, MEMORY[0x1E69E7CD0], v45);
          }

          v48 = *(v45 + 56) + 8 * v43;
          sub_1C8D87080(v132, v37, v36);

          sub_1C8D07168(v19, v20);
          sub_1C8D07168(*v132, v132[8]);
          v130 = *v133;
          v131 = v45;
          sub_1C8DD9C40(&v130, v132);

          v49 = *v132;
          if (*v132)
          {
            v122 = *&v132[8];
            v50 = v119;
            v1 = buf;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v54 = *(v119 + 16);
              OUTLINED_FUNCTION_7_20();
              sub_1C8D014F4();
              v50 = v55;
            }

            v52 = *(v50 + 16);
            v51 = *(v50 + 24);
            if (v52 >= v51 >> 1)
            {
              OUTLINED_FUNCTION_4_21(v51);
              sub_1C8D014F4();
              v50 = v56;
            }

            *(v50 + 16) = v52 + 1;
            v119 = v50;
            v53 = v50 + 24 * v52;
            *(v53 + 32) = v49;
            *(v53 + 40) = v122;
          }

          else
          {
            v1 = buf;
          }

          OUTLINED_FUNCTION_3_27();
          isUniquelyReferenced_nonNull_native = sub_1C8DDC7A8;
          if (v114 == v15)
          {

            OUTLINED_FUNCTION_3_27();
            isUniquelyReferenced_nonNull_native = sub_1C8DDC7A8;
            goto LABEL_43;
          }
        }
      }

LABEL_43:
      *v132 = v134;
      *&v132[16] = v135;
      sub_1C8DD9C40(v132, v133);

      v57 = *v133;
      if (*v133)
      {
        v129 = *&v133[8];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = *(v119 + 16);
          OUTLINED_FUNCTION_7_20();
          sub_1C8D014F4();
          v119 = v63;
        }

        v59 = *(v119 + 16);
        v58 = *(v119 + 24);
        v60 = v113;
        if (v59 >= v58 >> 1)
        {
          OUTLINED_FUNCTION_4_21(v58);
          sub_1C8D014F4();
          v60 = v113;
          v119 = v64;
        }

        *(v119 + 16) = v59 + 1;
        v61 = v119 + 24 * v59;
        *(v61 + 32) = v57;
        *(v61 + 40) = v129;
      }

      else
      {
        v60 = v113;
      }

      v11 = v60 + 1;
      v9 = v110;
      if (v11 == v112)
      {

        sub_1C8D072F0(__dst);

        inited = v119;
        goto LABEL_53;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_54:
    v65 = *(inited + 16);
    *&v129 = v7;
    if (!v65)
    {
LABEL_64:

      v1 = MEMORY[0x1E69E7CC0];
LABEL_65:
      if (qword_1EC311338 == -1)
      {
        goto LABEL_66;
      }

      goto LABEL_81;
    }

    *v133 = MEMORY[0x1E69E7CC0];

    sub_1C8D09C74(0, v65, 0);
    v66 = 0;
    v1 = *v133;
    v120 = inited;
    v7 = inited + 48;
    while (v66 < *(v120 + 16))
    {
      v67 = *(v7 - 8);
      v68 = *v7;
      *&v134 = *(v7 - 16);
      *(&v134 + 1) = v67;
      v135 = v68;

      sub_1C8DDAA4C(&v134, __dst);

      v69 = *__dst;
      v70 = *&__dst[16];
      *v133 = v1;
      v72 = v1[2];
      v71 = v1[3];
      if (v72 >= v71 >> 1)
      {
        *bufb = *__dst;
        sub_1C8D09C74((v71 > 1), v72 + 1, 1);
        v69 = *bufb;
        v1 = *v133;
      }

      ++v66;
      v1[2] = v72 + 1;
      v73 = &v1[3 * v72];
      *(v73 + 2) = v69;
      v73[6] = v70;
      v7 += 24;
      if (v65 == v66)
      {
        swift_bridgeObjectRelease_n();
        v7 = v129;
        goto LABEL_65;
      }
    }
  }

  __break(1u);
LABEL_81:
  swift_once();
LABEL_66:
  v74 = sub_1C9063D3C();
  __swift_project_value_buffer(v74, qword_1EC315460);
  v75 = sub_1C9063D1C();
  v76 = sub_1C906442C();
  if (os_log_type_enabled(v75, v76))
  {
    v125 = v76;
    v77 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *&v134 = v123;
    bufa = v77;
    *v77 = 136315138;
    v78 = v1[2];
    v79 = MEMORY[0x1E69E7CC0];
    if (v78)
    {
      v121 = v75;
      *v133 = MEMORY[0x1E69E7CC0];

      sub_1C8CA6480();
      v79 = *v133;
      v80 = v1 + 6;
      do
      {
        v81 = *v80;
        *__dst = *(v80 - 1);
        *&__dst[16] = v81;
        ToolInvocationSignature.debugDescription.getter();
        v83 = v82;
        v85 = v84;
        *v133 = v79;
        v86 = *(v79 + 16);
        if (v86 >= *(v79 + 24) >> 1)
        {
          sub_1C8CA6480();
          v79 = *v133;
        }

        *(v79 + 16) = v86 + 1;
        v87 = v79 + 16 * v86;
        *(v87 + 32) = v83;
        *(v87 + 40) = v85;
        v80 += 3;
        --v78;
      }

      while (v78);

      v75 = v121;
    }

    *__dst = v79;
    v88 = OUTLINED_FUNCTION_94();
    __swift_instantiateConcreteTypeFromMangledNameV2(v88, v89);
    OUTLINED_FUNCTION_0_0();
    sub_1C8D28184(v90, &qword_1EC312558, &qword_1C9066990);
    sub_1C9063E9C();

    v91 = OUTLINED_FUNCTION_94();
    v94 = sub_1C8CACE04(v91, v92, v93);

    *(bufa + 1) = v94;
    _os_log_impl(&dword_1C8C9B000, v75, v125, "initial signatures: %s", bufa, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v123);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_25_0();

    v7 = v129;
  }

  else
  {
  }

  v96 = sub_1C8DDAC0C(v95);
  swift_bridgeObjectRelease_n();

  v97 = sub_1C9063D1C();
  v98 = sub_1C906442C();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *__dst = v100;
    *v99 = 136315138;
    v101 = sub_1C8DDB20C(v96);
    v103 = v102;

    v104 = sub_1C8CACE04(v101, v103, __dst);

    *(v99 + 4) = v104;
    _os_log_impl(&dword_1C8C9B000, v97, v98, "merged signatures: %s", v99, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v100);
    OUTLINED_FUNCTION_25_0();
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
  }

  sub_1C8CC7E94(isUniquelyReferenced_nonNull_native);
  sub_1C8CC7E94(v7);
  return v96;
}

uint64_t sub_1C8DD9C40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v129 = a2;
  v144 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v128 = *a1;

  v127 = v4;

  swift_bridgeObjectRetain_n();
  v11 = 0;
  v134 = v5;
  v132 = v10;
  v131 = v5 + 64;
  if (!v9)
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        v111 = v129;
        v112 = v127;
        *v129 = v128;
        v111[1] = v112;
        v111[2] = v5;
        goto LABEL_113;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_9;
      }
    }

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
    swift_once();
    goto LABEL_105;
  }

LABEL_9:
  while (1)
  {
    v13 = __clz(__rbit64(v9)) | (v11 << 6);
    v14 = *(v134 + 56);
    v15 = (*(v134 + 48) + 16 * v13);
    v16 = v15[1];
    v137 = *v15;
    v17 = *(v14 + 8 * v13);
    v141 = v17;
    v18 = *(v17 + 16);
    v135 = v16;
    if (v18)
    {
      v19 = *(v17 + 40);
      sub_1C9064D7C();
      MEMORY[0x1CCA82810](1);
      v20 = sub_1C9064DBC();
      v21 = v17 + 56;
      v22 = -1 << *(v17 + 32);
      v23 = v20 & ~v22;
      if ((*(v17 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
      {
        break;
      }
    }

    swift_bridgeObjectRetain_n();

LABEL_18:
    v136 = (v9 - 1) & v9;
    v140 = MEMORY[0x1E69E7CD0];
    v27 = v17 + 56;
    v28 = 1 << *(v17 + 32);
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(v17 + 56);
    v31 = (v28 + 63) >> 6;

    v32 = 0;
    v138 = MEMORY[0x1E69E7CC0];
    while (v30)
    {
LABEL_27:
      v34 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v35 = *(v17 + 48) + ((v32 << 10) | (16 * v34));
      v2 = *v35;
      v36 = *(v35 + 8);
      if (v36 <= 0x1F)
      {
        v133 = v17;

        v38 = v5;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v39 = v138;
        }

        else
        {
          v41 = *(v138 + 16);
          sub_1C8D01430();
          v39 = v42;
        }

        v40 = *(v39 + 16);
        if (v40 >= *(v39 + 24) >> 1)
        {
          sub_1C8D01430();
          v39 = v43;
        }

        *(v39 + 16) = v40 + 1;
        v138 = v39;
        *(v39 + 8 * v40 + 32) = v2;
        v5 = v38;
        v17 = v133;
      }

      else if ((v36 & 0xE0) == 0x20)
      {

        sub_1C903667C(v37);
      }
    }

    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:

        goto LABEL_112;
      }

      if (v33 >= v31)
      {
        break;
      }

      v30 = *(v27 + 8 * v33);
      ++v32;
      if (v30)
      {
        v32 = v33;
        goto LABEL_27;
      }
    }

    v44 = v17;
    v45 = *(v138 + 16);
    if (v45)
    {
      v133 = v44;
      v130 = v5;
      v46 = *(v138 + 32);

      v47 = 32;
      do
      {
        v48 = *(v138 + v47);
        v49 = *(v46 + 32);
        v50 = v49 & 0x3F;
        v51 = ((1 << v49) + 63) >> 6;
        swift_bridgeObjectRetain_n();

        if (v50 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
        {
          MEMORY[0x1EEE9AC00](isStackAllocationSafe);
          v53 = (&v126 - ((8 * v51 + 15) & 0x3FFFFFFFFFFFFFF0));
          sub_1C8D8D3E0(0, v51, v53);
          sub_1C8DDC160(v53, v51, v46, v48);
          v55 = v54;
        }

        else
        {
          v56 = swift_slowAlloc();

          v55 = sub_1C8DDC0D0(v56, v51, v46, v48);

          swift_bridgeObjectRelease_n();
          MEMORY[0x1CCA833A0](v56, -1, -1);
        }

        v46 = v55;

        v47 += 8;
        --v45;
      }

      while (v45);
      v139 = v55;
      v2 = v140;
      v57 = v140 + 56;
      v58 = 1 << *(v140 + 32);
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      else
      {
        v59 = -1;
      }

      v60 = v59 & *(v140 + 56);
      v61 = (v58 + 63) >> 6;

      if (v60)
      {
        while (1)
        {
          v62 = v45;
LABEL_53:
          v63 = __clz(__rbit64(v60));
          v60 &= v60 - 1;
          v64 = *(*(v2 + 48) + ((v62 << 9) | (8 * v63)));

          sub_1C8F1E624(v64);

          sub_1C8D2B114(v142);
          if (!v60)
          {
            goto LABEL_49;
          }
        }
      }

      while (1)
      {
LABEL_49:
        v62 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_115;
        }

        if (v62 >= v61)
        {
          break;
        }

        v60 = *(v57 + 8 * v62);
        ++v45;
        if (v60)
        {
          v45 = v62;
          goto LABEL_53;
        }
      }

      v65 = v133;
      v66 = *(v133 + 32);
      v67 = v66 & 0x3F;
      v68 = ((1 << v66) + 63) >> 6;
      v69 = 8 * v68;

      v5 = v130;
      if (v67 <= 0xD)
      {
LABEL_56:

        MEMORY[0x1EEE9AC00](v70);
        v2 = &v126 - ((v69 + 15) & 0x3FFFFFFFFFFFFFF0);
        sub_1C8D8D3E0(0, v68, v2);
        v71 = 0;
        v72 = 0;
        v73 = 1 << *(v65 + 32);
        if (v73 < 64)
        {
          v74 = ~(-1 << v73);
        }

        else
        {
          v74 = -1;
        }

        v75 = v74 & *(v65 + 56);
        v76 = (v73 + 63) >> 6;
        while (v75)
        {
          v77 = __clz(__rbit64(v75));
          v75 &= v75 - 1;
          v78 = v77 | (v72 << 6);
LABEL_67:
          if (*(*(v65 + 48) + 16 * v78 + 8) >= 0x40u)
          {
            *(v2 + ((v78 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v78;
            v81 = __OFADD__(v71++, 1);
            if (v81)
            {
              goto LABEL_123;
            }
          }
        }

        v79 = v72;
        while (1)
        {
          v72 = v79 + 1;
          if (__OFADD__(v79, 1))
          {
            goto LABEL_116;
          }

          if (v72 >= v76)
          {
            sub_1C904488C((&v126 - ((v69 + 15) & 0x3FFFFFFFFFFFFFF0)), v68, v71, v65);
            v83 = v82;
            goto LABEL_72;
          }

          v80 = *(v27 + 8 * v72);
          ++v79;
          if (v80)
          {
            v75 = (v80 - 1) & v80;
            v78 = __clz(__rbit64(v80)) | (v72 << 6);
            goto LABEL_67;
          }
        }
      }

      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_56;
      }

      v109 = swift_slowAlloc();

      v83 = sub_1C8DDC040(v109, v68, v65, sub_1C8DDB368);

      swift_bridgeObjectRelease_n();
      MEMORY[0x1CCA833A0](v109, -1, -1);
LABEL_72:
      v84 = v135;
      v141 = v83;
      v85 = v139;
      if (v139[2])
      {

        sub_1C8D87080(&v142, v85, 0);
        sub_1C8D07168(v142, v143);
        goto LABEL_75;
      }

      if (qword_1EC311338 != -1)
      {
        swift_once();
      }

      v116 = sub_1C9063D3C();
      __swift_project_value_buffer(v116, qword_1EC315460);

      v2 = sub_1C9063D1C();
      v117 = sub_1C906442C();

      if (os_log_type_enabled(v2, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v142 = v119;
        *v118 = 136315138;
        sub_1C8DDC704();
        v120 = sub_1C906433C();
        v122 = v121;

        v123 = sub_1C8CACE04(v120, v122, &v142);

        *(v118 + 4) = v123;
        _os_log_impl(&dword_1C8C9B000, v2, v117, "Signature invalid: equality check constraints in conflict: %s", v118, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v119);
        MEMORY[0x1CCA833A0](v119, -1, -1);
        MEMORY[0x1CCA833A0](v118, -1, -1);

        goto LABEL_111;
      }

      goto LABEL_117;
    }

    v84 = v135;
LABEL_75:
    v86 = v141;
    swift_isUniquelyReferenced_nonNull_native();
    v142 = v5;
    v87 = sub_1C8CAE064();
    if (__OFADD__(*(v5 + 16), (v88 & 1) == 0))
    {
      goto LABEL_121;
    }

    v2 = v87;
    v89 = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC313FA0, &unk_1C9072430);
    if (sub_1C90648EC())
    {
      v90 = sub_1C8CAE064();
      v10 = v132;
      if ((v89 & 1) != (v91 & 1))
      {
        sub_1C9064CBC();
        __break(1u);

        swift_bridgeObjectRelease_n();
        result = MEMORY[0x1CCA833A0](v10, -1, -1);
        __break(1u);
        return result;
      }

      v2 = v90;
    }

    else
    {
      v10 = v132;
    }

    v5 = v142;
    if (v89)
    {
      v92 = *(v142 + 56);
      v93 = *(v92 + 8 * v2);
      *(v92 + 8 * v2) = v86;
    }

    else
    {
      *(v142 + 8 * (v2 >> 6) + 64) |= 1 << v2;
      v94 = (*(v5 + 48) + 16 * v2);
      *v94 = v137;
      v94[1] = v84;
      *(*(v5 + 56) + 8 * v2) = v86;
      v95 = *(v5 + 16);
      v81 = __OFADD__(v95, 1);
      v96 = v95 + 1;
      if (v81)
      {
        goto LABEL_122;
      }

      *(v5 + 16) = v96;
    }

    v6 = v131;
    v9 = v136;
    if (!v136)
    {
      goto LABEL_5;
    }
  }

  v24 = ~v22;
  swift_bridgeObjectRetain_n();

  while (1)
  {
    v25 = *(v17 + 48) + 16 * v23;
    v26 = *v25;
    v2 = *(v25 + 8);
    if (v2 >= 0xC0)
    {
      break;
    }

LABEL_15:
    sub_1C8D07168(v26, v2);
    sub_1C8D07168(1, 0xC0u);
    v23 = (v23 + 1) & v24;
    if (((*(v21 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if (!(v26 | v2 ^ 0xC0))
  {
    goto LABEL_15;
  }

  v136 = v9;
  v97 = v17;
  v98 = v5;
  sub_1C8D07168(v26, v2);
  sub_1C8D07168(1, 0xC0u);
  v99 = 1 << *(v97 + 32);
  if (v99 < 64)
  {
    v100 = ~(-1 << v99);
  }

  else
  {
    v100 = -1;
  }

  v101 = v100 & *(v97 + 56);
  v102 = (v99 + 63) >> 6;
  v103 = v97;

  v104 = 0;
  if (!v101)
  {
LABEL_91:
    while (1)
    {
      v105 = v104 + 1;
      if (__OFADD__(v104, 1))
      {
        goto LABEL_120;
      }

      if (v105 >= v102)
      {

        v5 = v98;
        v17 = v103;
        v9 = v136;
        goto LABEL_18;
      }

      v101 = *(v21 + 8 * v105);
      ++v104;
      if (v101)
      {
        goto LABEL_94;
      }
    }
  }

  while (1)
  {
    v105 = v104;
LABEL_94:
    v106 = __clz(__rbit64(v101));
    v101 &= v101 - 1;
    v107 = *(v103 + 48) + ((v105 << 10) | (16 * v106));
    v2 = *v107;
    v108 = *(v107 + 8);
    if (v108 >> 5 != 6)
    {
      sub_1C8D07154(*v107, *(v107 + 8));

      sub_1C8D07168(v2, v108);
      goto LABEL_104;
    }

    if (!(v2 | v108 ^ 0xC0))
    {
      break;
    }

    sub_1C8D07168(v2, v108);
    sub_1C8D07168(1, 0xC0u);
    v104 = v105;
    if (!v101)
    {
      goto LABEL_91;
    }
  }

LABEL_104:
  sub_1C8D07168(v2, v108);
  sub_1C8D07168(1, 0xC0u);

  swift_bridgeObjectRelease_n();
  if (qword_1EC311338 != -1)
  {
    goto LABEL_124;
  }

LABEL_105:
  v113 = sub_1C9063D3C();
  __swift_project_value_buffer(v113, qword_1EC315460);
  v2 = sub_1C9063D1C();
  v114 = sub_1C906442C();
  if (os_log_type_enabled(v2, v114))
  {
    v115 = swift_slowAlloc();
    *v115 = 0;
    _os_log_impl(&dword_1C8C9B000, v2, v114, "Signature invalid: isNone but contains other constraints", v115, 2u);
    MEMORY[0x1CCA833A0](v115, -1, -1);
  }

LABEL_111:

LABEL_112:

  v124 = v129;
  *v129 = 0;
  v124[1] = 0;
  v124[2] = 0;
LABEL_113:
  v125 = *MEMORY[0x1E69E9840];
  return result;
}