uint64_t OUTLINED_FUNCTION_36_1()
{

  return sub_1DD336830();
}

uint64_t OUTLINED_FUNCTION_36_3(uint64_t a1)
{
  *(v2 - 152) = v1;

  return MEMORY[0x1EEE69108](v1, a1);
}

uint64_t OUTLINED_FUNCTION_36_5()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_36_7()
{

  return swift_once();
}

uint64_t type metadata accessor for RRSQLiteStorage()
{
  result = qword_1EE029080;
  if (!qword_1EE029080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ExpressionType.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DD289A78();
  v7 = v6;
  v9 = v8;

  v10 = *(a4 + 40);
  v11 = MEMORY[0x1E69E7CC0];

  return v10(v7, v9, v11, a3, a4);
}

uint64_t sub_1DD292C50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t Expression.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_95()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_95_0(uint64_t a1, const char *a2)
{
  v4 = *(v2 - 200);

  return [v4 a2];
}

id OUTLINED_FUNCTION_95_1()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_89(uint64_t a1, uint64_t a2)
{

  return ExpressionType.init(_:)(a1, a2, v3, v2);
}

id OUTLINED_FUNCTION_89_0()
{
  v3 = *(v0 + 56);

  return [v1 v3];
}

uint64_t OUTLINED_FUNCTION_89_1()
{

  return sub_1DD27DBF0(v0, v1, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_89_2()
{
}

uint64_t OUTLINED_FUNCTION_89_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_94(uint64_t a1, uint64_t a2)
{

  return ExpressionType.init(_:)(a1, a2, v3, v2);
}

uint64_t OUTLINED_FUNCTION_94_0()
{

  return __swift_destroy_boxed_opaque_existential_1((v0 - 144));
}

uint64_t OUTLINED_FUNCTION_94_1()
{
  v2 = *(v0 - 208);

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_94_3()
{

  return sub_1DD336AD0();
}

uint64_t OUTLINED_FUNCTION_110_2()
{

  return sub_1DD336AD0();
}

void *OUTLINED_FUNCTION_109_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char __dst, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char __src)
{

  return memcpy(&__dst, &__src, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_85_2()
{

  return sub_1DD2B3464(v0);
}

uint64_t OUTLINED_FUNCTION_85_3(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];

  return sub_1DD336AD0();
}

uint64_t OUTLINED_FUNCTION_107()
{
  v2 = **(v1 - 232);
  result = v0;
  v4 = *(v1 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_107_1()
{

  return sub_1DD28C838(v0, v1);
}

uint64_t OUTLINED_FUNCTION_42_1(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return sub_1DD335FC0();
}

uint64_t OUTLINED_FUNCTION_42_3@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256) == 0;
  v5 = *(v2 - 232);

  return sub_1DD2A34A0(v1, v4, v5);
}

void *OUTLINED_FUNCTION_42_4(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v3;
  result[5] = v1;
  result[6] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_5(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 144) = a5;
  *(v6 - 136) = a6;
  *(v6 - 72) = a3;
  *(v6 - 128) = result;
  return result;
}

id OUTLINED_FUNCTION_42_6(void *a1)
{

  return [a1 mediaSubType];
}

void Row.get<A>(_:)()
{
  OUTLINED_FUNCTION_54_0();
  v29 = v3;
  v30 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1DD336AD0();
  OUTLINED_FUNCTION_8_9();
  v28 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v16 = *v7;
  v15 = v7[1];
  v17 = v7[2];
  v37 = *v0;
  type metadata accessor for Expression();
  v31 = v16;
  v32 = v15;
  v33 = v17;
  type metadata accessor for Expression();

  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_83_1();
  ExpressionType.init<A>(_:)(v19, v20, v21, WitnessTable, v22);
  v31 = v34;
  v32 = v35;
  v33 = v36;
  Row.get<A>(_:)(&v31, v5, v30, v14);

  if (!v1)
  {
    v24 = v28;
    v23 = v29;
    if (__swift_getEnumTagSinglePayload(v14, 1, v5) == 1)
    {
      (*(v24 + 8))(v14, v8);
      sub_1DD3134EC();
      swift_allocError();
      *v25 = v16;
      *(v25 + 8) = v15;
      *(v25 + 16) = 0;
      *(v25 + 24) = 3;
      swift_willThrow();
    }

    else
    {
      OUTLINED_FUNCTION_22(v5);
      (*(v26 + 32))(v23, v14, v5);
    }
  }

  OUTLINED_FUNCTION_53();
}

uint64_t ExpressionType.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(a5 + 24))(a3, a5);
  v12 = v11;
  v13 = (*(a5 + 32))(a3, a5);
  (*(a4 + 40))(v10, v12, v13, a2, a4);
  OUTLINED_FUNCTION_22(a3);
  v15 = *(v14 + 8);

  return v15(a1, a3);
}

uint64_t Row.get<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v46 = a1[2];
  v10 = *v4;
  v11 = v4[1];
  swift_bridgeObjectRetain_n();
  v47 = v9;
  v12 = OUTLINED_FUNCTION_62_4();
  v14 = sub_1DD293628(v12, v13, v10);
  if ((v15 & 1) == 0)
  {
    v28 = v14;
    swift_bridgeObjectRelease_n();
    v29 = a4;
    v30 = v28;
    v31 = v11;
    v32 = a2;
    return sub_1DD293740(v30, v31, v32, a3, v29);
  }

  v40 = v11;
  v44 = v8;

  v41 = v10;
  result = sub_1DD312C88(v16);
  v18 = result;
  v19 = 0;
  v45 = *(result + 16);
  v20 = (result + 40);
  v21 = MEMORY[0x1E69E7CC0];
  v42 = a3;
  v43 = a2;
  while (v45 != v19)
  {
    if (v19 >= *(v18 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v23 = *(v20 - 1);
    v22 = *v20;
    v48[0] = v23;
    v48[1] = v22;

    if (sub_1DD312D14(v48, v47, v44))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v49 = v21;
      if ((result & 1) == 0)
      {
        result = sub_1DD28E6F4(0, *(v21 + 2) + 1, 1);
        v21 = v49;
      }

      v25 = *(v21 + 2);
      v24 = *(v21 + 3);
      if (v25 >= v24 >> 1)
      {
        v27 = OUTLINED_FUNCTION_45(v24);
        result = sub_1DD28E6F4(v27, v25 + 1, 1);
        v21 = v49;
      }

      *(v21 + 2) = v25 + 1;
      v26 = &v21[16 * v25];
      *(v26 + 4) = v23;
      *(v26 + 5) = v22;
      a3 = v42;
    }

    else
    {
    }

    v20 += 2;
    ++v19;
  }

  v33 = *(v21 + 2);

  if (!v33)
  {

    v21 = sub_1DD312D8C(v41);
    v38 = 1;
LABEL_22:
    sub_1DD3134EC();
    swift_allocError();
    *v39 = v47;
    *(v39 + 8) = v44;
    *(v39 + 16) = v21;
    *(v39 + 24) = v38;
    return swift_willThrow();
  }

  if (v33 != 1)
  {
    v38 = 2;
    goto LABEL_22;
  }

  if (!*(v21 + 2))
  {
    goto LABEL_24;
  }

  v34 = *(v21 + 4);
  v35 = *(v21 + 5);

  sub_1DD293628(v34, v35, v41);
  v37 = v36;

  if ((v37 & 1) == 0)
  {

    v30 = OUTLINED_FUNCTION_34_7();
    v31 = v40;
    v32 = v43;
    return sub_1DD293740(v30, v31, v32, a3, v29);
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1DD293628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DD28EFFC();
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

double OUTLINED_FUNCTION_63_6@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 88) = a2;
  *(v2 + 96) = a1;
  result = 0.0;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0;
  return result;
}

uint64_t *OUTLINED_FUNCTION_63_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = a1;
  a12 = a2;
  a8 = v16;
  a9 = v14;
  a10 = v15;
  v18 = *(v12 + 8);
  a6 = v13;
  a7 = v18;

  return __swift_allocate_boxed_opaque_existential_1(&a3);
}

uint64_t sub_1DD293740@<X0>(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v27 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v25 = &v25 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_1DD336AD0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v25 - v16;
  v18 = *(v11 - 8);
  v19 = *(v18 + 64);
  result = MEMORY[0x1EEE9AC00](v15);
  v22 = &v25 - v21;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_1DD2892A8(a2 + 40 * a1 + 32, v28, &qword_1ECCD7090, &qword_1DD33CA20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7090, &qword_1DD33CA20);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v11);
    (*(v18 + 32))(v22, v17, v11);
    (*(a4 + 48))(v22, a3, a4);
    (*(v18 + 8))(v22, v11);
    v23 = v27;
    v24 = swift_dynamicCast() ^ 1;
  }

  else
  {
    v24 = 1;
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v11);
    (*(v13 + 8))(v17, v12);
    v23 = v27;
  }

  return __swift_storeEnumTagSinglePayload(v23, v24, 1, a3);
}

uint64_t sub_1DD293A48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Data.fromDatatypeValue(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t static Data.fromDatatypeValue(_:)(uint64_t *a1)
{
  v1 = *a1;

  return sub_1DD293A9C(v2);
}

uint64_t sub_1DD293A9C(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7050, &unk_1DD33BA50);
  v8 = sub_1DD293B40();
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_1DD293BA4(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

unint64_t sub_1DD293B40()
{
  result = qword_1EE027EC8;
  if (!qword_1EE027EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCD7050, &unk_1DD33BA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE027EC8);
  }

  return result;
}

uint64_t sub_1DD293BA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1DD334730();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1E12AA590]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1E12AA5A0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_88_2()
{

  return sub_1DD334C30();
}

void *OUTLINED_FUNCTION_88_4()
{

  return memcpy((v1 - 248), v0, 0xA8uLL);
}

uint64_t Row.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *v4;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = v5;
  return Row.get<A>(_:)(&v7, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_112_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, __int128 a33)
{

  return sub_1DD3148E8(&a33, &a17);
}

unint64_t sub_1DD293D4C()
{
  result = qword_1EE027F20;
  if (!qword_1EE027F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCD6618, &qword_1DD339320);
    sub_1DD28AEE0(&qword_1EE027F40, MEMORY[0x1E69D28B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE027F20);
  }

  return result;
}

uint64_t sub_1DD293E38@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = String.datatypeValue.getter();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_56_3()
{
  v3 = *(v0 + 56);
  v4 = (*(v0 + 48) + 16 * v1);
  v5 = *v4;
  v6 = v4[1];

  return sub_1DD3360E0();
}

uint64_t OUTLINED_FUNCTION_56_6()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_56_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  *v11 = a10;
  *(v11 + 8) = a11;

  return __swift_destroy_boxed_opaque_existential_1((v12 - 120));
}

uint64_t OUTLINED_FUNCTION_56_8(uint64_t a1)
{

  return sub_1DD28C87C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_93()
{
  v2 = *(v0 - 256);
  v3 = *(v0 - 312);

  return sub_1DD28B488(v2, v3);
}

uint64_t OUTLINED_FUNCTION_93_0()
{
  v2 = *(v0 - 256);
  v3 = *(v0 - 376);
}

uint64_t OUTLINED_FUNCTION_93_2()
{

  return sub_1DD336AD0();
}

double sub_1DD293FA8@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_1DD293FB4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  static Date.fromDatatypeValue(_:)();
}

void static Date.fromDatatypeValue(_:)()
{
  if (qword_1EE027F28 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  swift_beginAccess();
  v0 = qword_1EE027F30;
  v1 = sub_1DD3365A0();
  v2 = [v0 dateFromString_];

  if (v2)
  {
    sub_1DD3347F0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t OUTLINED_FUNCTION_40_1()
{

  return sub_1DD336E00();
}

uint64_t OUTLINED_FUNCTION_40_2()
{

  return sub_1DD28B488(v0, v1);
}

uint64_t OUTLINED_FUNCTION_40_4()
{
  v2 = *(v0 - 248);
  v3 = *(v0 - 296);

  return sub_1DD336040();
}

void OUTLINED_FUNCTION_40_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_55_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;
  *(v3 - 296) = v2;

  return sub_1DD335F10();
}

uint64_t OUTLINED_FUNCTION_55_4()
{
  *(v1 - 96) = v0;

  return sub_1DD336550();
}

uint64_t OUTLINED_FUNCTION_55_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_55_6(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];

  return sub_1DD336AD0();
}

uint64_t OUTLINED_FUNCTION_132(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

void sub_1DD294278(void *a1, void *a2, uint64_t (*a3)(unint64_t), uint64_t (*a4)(unint64_t))
{
  v198 = a3;
  v203 = sub_1DD334C50();
  v7 = OUTLINED_FUNCTION_1_0(v203);
  v192 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v13 = v12 - v11;
  v201 = sub_1DD334830();
  v14 = OUTLINED_FUNCTION_1_0(v201);
  v180 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v179 = v18;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_32_1();
  v184 = v20;
  v197 = sub_1DD335E90();
  v21 = OUTLINED_FUNCTION_1_0(v197);
  v191 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_12();
  v196 = v26 - v25;
  v199 = sub_1DD3360E0();
  v27 = OUTLINED_FUNCTION_1_0(v199);
  v189 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_6();
  v205 = v31;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_32_1();
  v187 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6EA0, &unk_1DD33AB18);
  v35 = OUTLINED_FUNCTION_36(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_6();
  v202 = v38;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_32_1();
  v204 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  v42 = OUTLINED_FUNCTION_36(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_6();
  v183 = v45;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v46);
  v195 = &v178 - v47;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v48);
  v200 = &v178 - v49;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_32_1();
  v194 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  v53 = OUTLINED_FUNCTION_36(v52);
  v55 = *(v54 + 64);
  v56 = MEMORY[0x1EEE9AC00](v53);
  v58 = &v178 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_32_1();
  v193 = v59;
  v178 = sub_1DD335ED0();
  v60 = sub_1DD3360A0();
  v61 = sub_1DD3360A0();
  v206 = v60;
  sub_1DD295230(v61);
  sub_1DD2953AC();
  v63 = sub_1DD295CF4(v62);
  v64 = sub_1DD336010();
  v66 = v65;
  v68 = v64 == sub_1DD336010() && v66 == v67;
  v185 = a1;
  if (v68)
  {
  }

  else
  {
    v69 = sub_1DD336E00();

    if ((v69 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (sub_1DD335F20() == 0xD000000000000010 && 0x80000001DD33D1A0 == v73)
  {
    v76 = a2;
    goto LABEL_16;
  }

  v75 = OUTLINED_FUNCTION_4_10();

  if (v75)
  {
LABEL_14:
    v76 = a2;
LABEL_17:

    if (sub_1DD335F20() == 0xD000000000000010 && 0x80000001DD33D1A0 == v77)
    {

      v80 = a1;
      v81 = v76;
    }

    else
    {
      v79 = OUTLINED_FUNCTION_4_10();

      if (v79)
      {
        v80 = a1;
      }

      else
      {
        v80 = v76;
      }

      if (v79)
      {
        v81 = v76;
      }

      else
      {
        v81 = a1;
      }
    }

    v82 = a1;
    v83 = v76;
    sub_1DD335ED0();
    v84 = sub_1DD335700();
    v86 = v85;

    v87 = sub_1DD334CA0();
    v88 = *(v87 + 48);
    v89 = *(v87 + 52);
    swift_allocObject();
    v90 = MEMORY[0x1E12AAAE0](v84, v86);
    sub_1DD335ED0();
    v198 = v90;
    OUTLINED_FUNCTION_14_10(v90);

    sub_1DD335ED0();
    v91 = sub_1DD3356F0();

    v92 = *(v91 + 16);
    v93 = v81;
    if (!v92)
    {

LABEL_42:
      v105 = MEMORY[0x1E12AABB0](v198);
      if (v105)
      {
        v106 = v105;

        v178 = v106;
      }

      sub_1DD3360A0();
      sub_1DD2953AC();
      v108 = v107;
      sub_1DD3360A0();
      sub_1DD2953AC();
      v110 = sub_1DD2FC7F8(v109, v108);
      v203 = sub_1DD295CF4(v110);

      goto LABEL_56;
    }

    v186 = v81;
    v188 = v80;
    v190 = v58;
    v94 = v192 + 16;
    v95 = *(v192 + 16);
    v96 = (*(v192 + 80) + 32) & ~*(v192 + 80);
    v192 = v91;
    v97 = v91 + v96;
    v98 = *(v94 + 56);
    v99 = (v94 - 8);
    v100 = v203;
    while (1)
    {
      v95(v13, v97, v100);
      v101 = sub_1DD334C40();
      if (v102)
      {
        if (v101 == 0x69746E655F707061 && v102 == 0xEF657079745F7974)
        {
        }

        else
        {
          v104 = sub_1DD336E00();

          if ((v104 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        sub_1DD334BA0();
      }

LABEL_39:
      v100 = v203;
      (*v99)(v13, v203);
      v97 += v98;
      if (!--v92)
      {

        v58 = v190;
        v80 = v188;
        v93 = v186;
        goto LABEL_42;
      }
    }
  }

  v76 = a2;
  if (sub_1DD335F20() == 0xD000000000000010 && 0x80000001DD33D1A0 == v111)
  {
LABEL_16:

    goto LABEL_17;
  }

  v113 = OUTLINED_FUNCTION_4_10();

  if (v113)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1DD335ED0();
  sub_1DD334AA0();
  sub_1DD334DC0();
  v70 = v206;

  if (v70)
  {

    v71 = a1;
    v72 = a2;
  }

  else
  {
    sub_1DD335ED0();
    sub_1DD334DC0();
    v114 = v206;

    if (!v114)
    {
      goto LABEL_55;
    }

    v71 = a2;
    v72 = a1;
  }

  v115 = sub_1DD2FCA14(v71, v72, v198, a4);
  if (v115)
  {
    v116 = v115;

    v206 = v63;
    sub_1DD335860();

    sub_1DD295230(v117);
    sub_1DD2953AC();
    v203 = sub_1DD295CF4(v118);

    v93 = a1;
    v80 = a2;
    v178 = v116;
    goto LABEL_56;
  }

LABEL_55:
  v93 = a1;
  v80 = a2;
  v203 = v63;
LABEL_56:
  v192 = sub_1DD336010();
  v190 = v119;
  v198 = sub_1DD335F20();
  v194 = v120;
  v121 = sub_1DD336030();
  if (v122 >> 60 != 15)
  {
    sub_1DD28B488(v121, v122);
  }

  v186 = sub_1DD336080();
  v188 = v123;
  v124 = sub_1DD336030();
  if (v125 >> 60 != 15)
  {
    sub_1DD28B488(v124, v125);
  }

  sub_1DD336030();
  sub_1DD336040();
  v126 = sub_1DD335E60();
  __swift_getEnumTagSinglePayload(v58, 1, v126);
  sub_1DD296084(v58, &qword_1ECCD6350, &unk_1DD3396F0);
  sub_1DD336040();
  sub_1DD336050();
  sub_1DD335F90();
  sub_1DD335FD0();
  if (v127)
  {
    sub_1DD335FD0();
  }

  sub_1DD335F10();

  objc_allocWithZone(sub_1DD3360C0());
  sub_1DD335860();
  v198 = sub_1DD336000();
  v128 = sub_1DD335F10();

  v129 = 0;
  v131 = v128 + 64;
  v130 = *(v128 + 64);
  v188 = v128;
  v132 = 1 << *(v128 + 32);
  v133 = -1;
  if (v132 < 64)
  {
    v133 = ~(-1 << v132);
  }

  v134 = v133 & v130;
  v135 = (v132 + 63) >> 6;
  v186 = v189 + 16;
  v203 = (v189 + 32);
  LODWORD(v193) = *MEMORY[0x1E69D2868];
  v136 = v191++;
  v192 = (v136 + 13);
  v190 = (v189 + 8);
  v182 = (v180 + 4);
  ++v180;
  v137 = v199;
  v138 = v202;
  v139 = v204;
  v194 = v128 + 64;
  v181 = v135;
  if (!v134)
  {
    goto LABEL_82;
  }

  do
  {
    v165 = v129;
LABEL_86:
    v166 = __clz(__rbit64(v134));
    v134 &= v134 - 1;
    v167 = v166 | (v165 << 6);
    v168 = (v188[6] + 16 * v167);
    v170 = *v168;
    v169 = v168[1];
    v171 = v189;
    v172 = v187;
    (*(v189 + 16))(v187, v188[7] + *(v189 + 72) * v167, v137);
    v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD68E0, &qword_1DD339C68);
    v174 = *(v173 + 48);
    v175 = v202;
    *v202 = v170;
    *(v175 + 1) = v169;
    v176 = v172;
    v138 = v175;
    (*(v171 + 32))(&v175[v174], v176, v137);
    __swift_storeEnumTagSinglePayload(v138, 0, 1, v173);

    v139 = v204;
LABEL_87:
    sub_1DD2FF7D0(v138, v139);
    v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD68E0, &qword_1DD339C68);
    if (__swift_getEnumTagSinglePayload(v139, 1, v177) == 1)
    {

      return;
    }

    v140 = *v139;
    v141 = v139[1];
    (*v203)(v205, v139 + *(v177 + 48), v137);
    v142 = v196;
    v143 = v197;
    (*v192)(v196, v193, v197);
    v144 = sub_1DD335E80();
    v146 = v145;
    (*v191)(v142, v143);
    if (v140 == v144 && v141 == v146)
    {

      v139 = v204;
    }

    else
    {
      OUTLINED_FUNCTION_8_7();
      v148 = sub_1DD336E00();

      v139 = v204;
      if ((v148 & 1) == 0)
      {
        v149 = v195;
        v150 = v205;
        sub_1DD3360D0();
        OUTLINED_FUNCTION_8_7();
        sub_1DD335F80();
        v151 = v150;

        sub_1DD296084(v149, &qword_1ECCD62A0, &unk_1DD338D70);
        goto LABEL_80;
      }
    }

    v152 = v200;
    sub_1DD335EE0();
    v153 = v201;
    if (__swift_getEnumTagSinglePayload(v152, 1, v201) != 1)
    {
      v154 = *v182;
      v155 = v184;
      (*v182)(v184, v200, v153);
      v152 = v183;
      sub_1DD3360D0();
      v156 = v201;
      if (__swift_getEnumTagSinglePayload(v152, 1, v201) != 1)
      {
        v160 = v179;
        v154(v179, v152, v156);
        v161 = v156;
        sub_1DD3347E0();
        sub_1DD3347E0();
        v162 = v195;
        sub_1DD334790();
        __swift_storeEnumTagSinglePayload(v162, 0, 1, v156);
        OUTLINED_FUNCTION_8_7();
        sub_1DD335F80();

        sub_1DD296084(v162, &qword_1ECCD62A0, &unk_1DD338D70);
        v163 = *v180;
        v164 = v160;
        v139 = v204;
        (*v180)(v164, v161);
        v163(v184, v161);
        v151 = v205;
        v135 = v181;
        goto LABEL_79;
      }

      (*v180)(v155, v156);
      v139 = v204;
      v135 = v181;
    }

    sub_1DD296084(v152, &qword_1ECCD62A0, &unk_1DD338D70);
    v157 = v195;
    v158 = v205;
    sub_1DD3360D0();
    OUTLINED_FUNCTION_8_7();
    sub_1DD335F80();
    v151 = v158;

    sub_1DD296084(v157, &qword_1ECCD62A0, &unk_1DD338D70);
LABEL_79:
    v138 = v202;
LABEL_80:
    v137 = v199;
    (*v190)(v151, v199);
    v131 = v194;
  }

  while (v134);
LABEL_82:
  while (1)
  {
    v165 = v129 + 1;
    if (__OFADD__(v129, 1))
    {
      break;
    }

    if (v165 >= v135)
    {
      v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD68E0, &qword_1DD339C68);
      __swift_storeEnumTagSinglePayload(v138, 1, 1, v159);
      v134 = 0;
      goto LABEL_87;
    }

    v134 = *(v131 + 8 * v165);
    ++v129;
    if (v134)
    {
      v129 = v165;
      goto LABEL_86;
    }
  }

  __break(1u);
}

uint64_t sub_1DD295230(uint64_t a1)
{
  result = OUTLINED_FUNCTION_87(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DD295334(result, 1, sub_1DD281748);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1DD335CE0();
  v8 = *(result - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v5)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DD295334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_1DD2953AC()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_83_2();
  v4 = sub_1DD335CE0();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_105_0();
  sub_1DD295558(&qword_1EE0275E0, MEMORY[0x1E69D2800]);
  OUTLINED_FUNCTION_91_0();
  v12 = v0[2];
  if (v12)
  {
    OUTLINED_FUNCTION_50_1();
    do
    {
      v2(v10, v1, v4);
      sub_1DD2955E8();
      v13 = *v0;
      v14 = OUTLINED_FUNCTION_85_0();
      v15(v14);
      v1 += v3;
      --v12;
    }

    while (v12);
  }

  else
  {
    OUTLINED_FUNCTION_32_0();
  }

  OUTLINED_FUNCTION_24_1();
}

uint64_t OUTLINED_FUNCTION_87_1()
{

  return sub_1DD334BA0();
}

uint64_t OUTLINED_FUNCTION_87_3()
{
  *(v2 - 160) = *(v2 - 184);
  *(v2 - 152) = v1;
  *(v2 - 144) = v0;
}

uint64_t sub_1DD295558(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD2955A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DD2955E8()
{
  OUTLINED_FUNCTION_23_0();
  v4 = sub_1DD335CE0();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_11_4();
  sub_1DD295864(v8, v9);
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_15_6();
  while (1)
  {
    OUTLINED_FUNCTION_20_7(v10);
    if (v11)
    {
      v15 = *v24;
      swift_isUniquelyReferenced_nonNull_native();
      v16 = OUTLINED_FUNCTION_35_6();
      v17(v16);
      v18 = OUTLINED_FUNCTION_33_6();
      sub_1DD295958(v18, v19, v20);
      v21 = OUTLINED_FUNCTION_32_6();
      v22(v21);
      goto LABEL_7;
    }

    v12 = OUTLINED_FUNCTION_17_8();
    v3(v12);
    OUTLINED_FUNCTION_11_4();
    sub_1DD295864(&qword_1EE0275D8, v13);
    OUTLINED_FUNCTION_54_5();
    v14 = OUTLINED_FUNCTION_46_6();
    v1(v14);
    if (v0)
    {
      break;
    }

    v10 = v2 + 1;
  }

  (v1)(v25, v4);
  v23 = OUTLINED_FUNCTION_27_5();
  v3(v23);
LABEL_7:
  OUTLINED_FUNCTION_24_1();
}

void OUTLINED_FUNCTION_46_1()
{
  v2 = *(v0 - 232);
  v3 = *(v0 - 224);
  v4 = *(v0 - 208);
  v5 = *(v0 - 184);

  sub_1DD2D2174();
}

uint64_t OUTLINED_FUNCTION_46_3@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return sub_1DD335A90();
}

void OUTLINED_FUNCTION_46_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_46_6()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 128);
  return result;
}

uint64_t sub_1DD295864(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_53_0()
{

  return sub_1DD3365D0();
}

uint64_t OUTLINED_FUNCTION_53_1()
{
  v1 = *(v0 - 240);
  v2 = *(*(v0 - 248) + 8);
  return *(v0 - 232);
}

void OUTLINED_FUNCTION_53_2()
{
  v1 = *(v0 - 984);
  v2 = *(v0 - 440);
  v3 = *(v0 - 416);
}

uint64_t OUTLINED_FUNCTION_53_5()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_53_6()
{
  *(v0 + 264) = 0;
  result = 0.0;
  *(v0 + 248) = 0u;
  *(v0 + 232) = 0u;
  return result;
}

uint64_t sub_1DD295958(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v6 = sub_1DD335CE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1DD2E0D90(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_1DD2E296C(v11 + 1);
LABEL_8:
      v23 = v3;
      v13 = *v3;
      v14 = *(*v3 + 40);
      sub_1DD295864(&qword_1EE0275E0, MEMORY[0x1E69D2800]);
      v15 = sub_1DD336550();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_1DD295864(&qword_1EE0275D8, MEMORY[0x1E69D2800]);
        v17 = sub_1DD336590();
        (*(v7 + 8))(v10, v6);
        if (v17)
        {
          goto LABEL_16;
        }

        v15 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1DD2E24B0();
  }

LABEL_13:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v18 + 48) + *(v7 + 72) * a2, v24, v6);
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1DD336E20();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v22;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_83_5()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_83_6()
{
}

uint64_t OUTLINED_FUNCTION_44_0@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 280) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_44_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_44_4()
{
}

size_t sub_1DD295CF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = *(a1 + 16);
  v4 = sub_1DD295DBC();
  v5 = *(sub_1DD335CE0() - 8);
  v6 = sub_1DD295DE4(&v8, (v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80))), v2, a1);
  sub_1DD29607C();
  if (v6 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

unint64_t sub_1DD295DE4(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1DD335CE0();
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v33 - v13;
  v15 = a4 + 56;
  v14 = *(a4 + 56);
  v39 = -1 << *(a4 + 32);
  if (-v39 < 64)
  {
    v16 = ~(-1 << -v39);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  if (!a2)
  {
    v20 = 0;
    result = 0;
LABEL_22:
    v32 = ~v39;
    *a1 = a4;
    a1[1] = v15;
    a1[2] = v32;
    a1[3] = v20;
    a1[4] = v17;
    return result;
  }

  result = a3;
  if (!a3)
  {
    v20 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = a1;
    v35 = a4 + 56;
    v19 = 0;
    v20 = 0;
    v21 = (63 - v39) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    v38 = result;
    while (v19 < result)
    {
      if (__OFADD__(v19, 1))
      {
        goto LABEL_26;
      }

      if (!v17)
      {
        v15 = v35;
        while (1)
        {
          v22 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
            v17 = 0;
            result = v19;
            a1 = v34;
            goto LABEL_22;
          }

          v17 = *(v35 + 8 * v22);
          ++v20;
          if (v17)
          {
            v44 = v19 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v44 = v19 + 1;
      v22 = v20;
LABEL_17:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = a4;
      v25 = *(a4 + 48);
      v27 = v42;
      v26 = v43;
      v28 = *(v43 + 72);
      v29 = v41;
      (*(v43 + 16))(v41, v25 + v28 * (v23 | (v22 << 6)), v42);
      v30 = *(v26 + 32);
      v31 = v40;
      v30(v40, v29, v27);
      v30(a2, v31, v27);
      result = v38;
      v19 = v44;
      if (v44 == v38)
      {
        v20 = v22;
        a1 = v34;
        v15 = v35;
        a4 = v24;
        goto LABEL_22;
      }

      a2 += v28;
      v20 = v22;
      a4 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD296084(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1DD2960E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1DD336AD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = *a1;
  v14 = type metadata accessor for Expression();
  *(a4 + 24) = v14;
  *(a4 + 32) = &protocol witness table for Expression<A>;
  *a4 = v13;
  *(a4 + 8) = *(a1 + 1);
  (*(v9 + 16))(v12, a2, v8);
  *(a4 + 64) = v14;
  *(a4 + 72) = &protocol witness table for Expression<A>;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  ExpressionType<>.init(value:)(v12, v14, WitnessTable, a3, a4 + 40);
  return (*(v9 + 8))(a2, v8);
}

uint64_t ExpressionType<>.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v31 = a3;
  v29[1] = a5;
  v30 = a2;
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1DD336AD0();
  v9 = OUTLINED_FUNCTION_1_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = v29 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v17 = OUTLINED_FUNCTION_1_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v23 = v29 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DD339380;
  v25 = *(v11 + 16);
  v32 = a1;
  v25(v15, a1, v8);
  if (__swift_getEnumTagSinglePayload(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v15, v8);
    *(v24 + 64) = 0;
    *(v24 + 32) = 0u;
    *(v24 + 48) = 0u;
  }

  else
  {
    (*(a4 + 56))(AssociatedTypeWitness, a4);
    OUTLINED_FUNCTION_22(AssociatedTypeWitness);
    (*(v26 + 8))(v15, AssociatedTypeWitness);
    *(v24 + 56) = v16;
    *(v24 + 64) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v24 + 32));
    (*(v19 + 32))(boxed_opaque_existential_1, v23, v16);
  }

  (*(v31 + 40))(63, 0xE100000000000000, v24, v30);
  return (*(v11 + 8))(v32, v8);
}

uint64_t sub_1DD296568@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  result = String.datatypeValue.getter();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t Data.datatypeValue.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x1DD29669CLL);
      }

      sub_1DD28B4F8(a1, a2);
      v9 = a3;
      v10 = v4;
      v11 = v4 >> 32;
      return sub_1DD2966B4(v10, v11, v4, a2, v9);
    case 2uLL:
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      sub_1DD28B4F8(a1, a2);
      v9 = a3;
      v10 = v7;
      v11 = v8;
      return sub_1DD2966B4(v10, v11, v4, a2, v9);
    case 3uLL:
      a1 = 0;
      v6 = 0;
      return sub_1DD30ECF4(a1, v6, v4, a2, a3);
    default:
      v6 = a2 & 0xFFFFFFFFFFFFFFLL;
      return sub_1DD30ECF4(a1, v6, v4, a2, a3);
  }
}

uint64_t sub_1DD2966B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, void *a5@<X8>)
{
  result = sub_1DD3344A0();
  v11 = result;
  if (result)
  {
    result = sub_1DD3344C0();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v11 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_1DD3344B0();
    sub_1DD296774(v11, a3, a4, a5);
    return sub_1DD290274(a3, a4);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

void *sub_1DD296774@<X0>(void *result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, void *a4@<X8>)
{
  if (!result)
  {
    goto LABEL_12;
  }

  v4 = MEMORY[0x1E69E7CC0];
  v5 = result;
  switch(a3 >> 62)
  {
    case 1uLL:
      if (__OFSUB__(HIDWORD(a2), a2))
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        JUMPOUT(0x1DD29683CLL);
      }

      v7 = HIDWORD(a2) - a2;
LABEL_7:
      if (v7)
      {
        v4 = sub_1DD29684C(v7, 0);
        result = memcpy(v4 + 4, v5, v7);
      }

LABEL_9:
      *a4 = v4;
      return result;
    case 2uLL:
      v9 = *(a2 + 16);
      v8 = *(a2 + 24);
      v7 = v8 - v9;
      if (!__OFSUB__(v8, v9))
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    case 3uLL:
      goto LABEL_9;
    default:
      v7 = BYTE6(a3);
      goto LABEL_7;
  }
}

void *sub_1DD29684C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6688, &qword_1DD339378);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

RRSQLite::Update __swiftcall QueryType.update(_:)(Swift::OpaquePointer a1)
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v65 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7078, &qword_1DD33BAC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD33A620;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = 0x455441445055;
  *(inited + 40) = 0xE600000000000000;
  v11 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = v10;
  sub_1DD28C4F0();
  *(inited + 136) = v10;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 5522771;
  *(inited + 120) = 0xE300000000000000;
  *(inited + 128) = v11;
  v19 = *(v7 + 16);
  if (v19)
  {
    v59 = v5;
    v61 = v3;
    v63 = v1;
    *&v71 = v11;
    sub_1DD296F20();
    v20 = v7 + 32;
    v68 = xmmword_1DD3391F0;
    do
    {
      sub_1DD28B704(v20, &v81);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
      v21 = swift_initStackObject();
      *(v21 + 16) = v68;
      sub_1DD2855A0(&v81, v21 + 32);
      sub_1DD2855A0(&v84, v21 + 72);
      sub_1DD284AFC(v21, 2112800, 0xE300000000000000, v22, v23, v24, v25, v26, v59, v61, v63, v65, v68, *(&v68 + 1), v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v80);
      swift_setDeallocating();
      v27 = OUTLINED_FUNCTION_34_7();
      sub_1DD284AB0(v27, v28);
      sub_1DD28C49C(&v81);
      *&v71 = v11;
      v30 = *(v11 + 16);
      v29 = *(v11 + 24);
      if (v30 >= v29 >> 1)
      {
        OUTLINED_FUNCTION_45(v29);
        sub_1DD296F20();
        v11 = v71;
      }

      *(v11 + 16) = v30 + 1;
      sub_1DD289CE4(&v85, v11 + 40 * v30 + 32);
      v20 += 80;
      --v19;
    }

    while (v19);
  }

  OUTLINED_FUNCTION_84_5(v11, v12, v13, v14, v15, v16, v17, v18, v59, v61, v63, v65, v68, *(&v68 + 1), v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v80);

  OUTLINED_FUNCTION_62_4();
  sub_1DD28C6EC(v31, v32);
  v33 = OUTLINED_FUNCTION_62_4();
  sub_1DD29709C(v33, v34, v35);
  OUTLINED_FUNCTION_62_4();
  sub_1DD297224(v36, v37);
  v38 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 312; i += 40)
  {
    sub_1DD2892A8(inited + i, &v81, &qword_1ECCD7070, &qword_1DD33BAB8);
    v71 = v81;
    v72 = v82;
    v73 = v83;
    if (*(&v82 + 1))
    {
      sub_1DD289CE4(&v71, &v85);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_1_11();
        sub_1DD28C3A8();
        v38 = v44;
      }

      v41 = *(v38 + 16);
      v40 = *(v38 + 24);
      if (v41 >= v40 >> 1)
      {
        OUTLINED_FUNCTION_45(v40);
        OUTLINED_FUNCTION_18_2();
        sub_1DD28C3A8();
        v38 = v45;
      }

      *(v38 + 16) = v41 + 1;
      sub_1DD289CE4(&v85, v38 + 40 * v41 + 32);
    }

    else
    {
      OUTLINED_FUNCTION_83_1();
      sub_1DD3147D8(v42, v43);
    }
  }

  swift_setDeallocating();
  v46 = sub_1DD284AB0(&qword_1ECCD7070, &qword_1DD33BAB8);
  OUTLINED_FUNCTION_22_9(v46, v47, v48, v49, v50, v51, v52, v53, v60, v62, v64, v66, v69, v70, v71, *(&v71 + 1), v72, *(&v72 + 1), v73, v74, v75, v76, v77, v78, v79, v80);

  v54 = *(&v82 + 1);
  v55 = v83;
  __swift_project_boxed_opaque_existential_1(&v81, *(&v82 + 1));
  (*(v55 + 8))(&v85, v54, v55);
  *v67 = v85;
  *(v67 + 8) = v86;
  __swift_destroy_boxed_opaque_existential_1(&v81);
  OUTLINED_FUNCTION_24_1();
  result.bindings._rawValue = v58;
  result.template._object = v57;
  result.template._countAndFlagsBits = v56;
  return result;
}

uint64_t sub_1DD296C9C@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  OUTLINED_FUNCTION_50_5();
  sub_1DD289A78();
  v5 = v4;
  v7 = v6;
  v8 = *(a1 + 16);
  v9 = OUTLINED_FUNCTION_47();
  v10(v9);
  v11 = v40[7];

  sub_1DD288AB8(v40);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD3391F0;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    *(inited + 56) = v13;
    *(inited + 64) = &protocol witness table for Expression<A>;
    OUTLINED_FUNCTION_50_5();
    sub_1DD289A78();
    v15 = v14;
    v17 = v16;

    *(inited + 32) = v15;
    *(inited + 40) = v17;
    v18 = MEMORY[0x1E69E7CC0];
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 96) = v13;
    *(inited + 104) = &protocol witness table for Expression<A>;
    *(inited + 72) = v5;
    *(inited + 80) = v7;
    *(inited + 88) = v18;
    sub_1DD284AFC(inited, 46, 0xE100000000000000, v19, v20, v21, v22, v23, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40[0], v40[1], v40[2]);
    swift_setDeallocating();
    return sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    a2[4] = &protocol witness table for Expression<A>;
    *a2 = v5;
    a2[1] = v7;
    a2[2] = MEMORY[0x1E69E7CC0];
    a2[3] = result;
  }

  return result;
}

void sub_1DD296E2C()
{
  OUTLINED_FUNCTION_66_6();
  if (v7)
  {
    OUTLINED_FUNCTION_6_0();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_30_2();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_1();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    v13 = OUTLINED_FUNCTION_78_3();
    v14 = _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_67_5(v14);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v3)
  {
    if (v13 != v0 || &v0[40 * v11 + 32] <= v13 + 32)
    {
      v16 = OUTLINED_FUNCTION_31_2();
      memmove(v16, v17, v18);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_31_2();
    swift_arrayInitWithCopy();
  }
}

void sub_1DD296F20()
{
  v1 = *v0;
  sub_1DD296E2C();
  *v0 = v2;
}

uint64_t sub_1DD296F60@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD339380;
  *(v6 + 56) = &type metadata for Blob;
  *(v6 + 64) = &protocol witness table for Blob;
  sub_1DD28B4F8(a1, a2);
  Data.datatypeValue.getter(a1, a2, (v6 + 32));
  result = sub_1DD290274(a1, a2);
  *a3 = 63;
  a3[1] = 0xE100000000000000;
  a3[2] = v6;
  return result;
}

double sub_1DD297014@<D0>(void *a1@<X8>, double a2@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7140, &qword_1DD33CC30);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1DD339380;
  *(v4 + 56) = MEMORY[0x1E69E63B0];
  *(v4 + 64) = &protocol witness table for Double;
  *(v4 + 32) = a2;
  *a1 = 63;
  a1[1] = 0xE100000000000000;
  a1[2] = v4;
  return result;
}

double sub_1DD29709C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  (v6)(v56);
  v7 = v56[16];

  sub_1DD288AB8(v56);
  v8 = *(v7 + 16);

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD3391F0;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
    *(inited + 64) = &protocol witness table for Expression<A>;
    *(inited + 32) = 0x594220524544524FLL;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = MEMORY[0x1E69E7CC0];
    *(inited + 56) = v10;
    v6(&v51, a1, a2);
    v11 = v55;

    sub_1DD288AB8(&v51);
    sub_1DD284AFC(v11, 8236, 0xE200000000000000, v12, v13, v14, v15, v16, v23, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v52, v53, v54);

    sub_1DD284AFC(inited, 32, 0xE100000000000000, v17, v18, v19, v20, v21, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v51, v52, v53, v54);
    swift_setDeallocating();
    sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DD297224@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v30);
  result = sub_1DD288AB8(v30);
  if (v32)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v4 = v31;
    v5 = v30[18];
    v6 = sub_1DD336DC0();
    MEMORY[0x1E12AC540](v6);

    if (v4)
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
      *(a2 + 32) = &protocol witness table for Expression<A>;
      *a2 = 0x2054494D494CLL;
      *(a2 + 8) = 0xE600000000000000;
      *(a2 + 16) = MEMORY[0x1E69E7CC0];
      *(a2 + 24) = result;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7058, &qword_1DD33BAA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD3391F0;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD7060, &qword_1DD33BAA8);
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 32) = 0x2054494D494CLL;
      *(inited + 40) = 0xE600000000000000;
      v9 = MEMORY[0x1E69E7CC0];
      *(inited + 48) = MEMORY[0x1E69E7CC0];
      *(inited + 56) = v8;
      v10 = sub_1DD336DC0();
      MEMORY[0x1E12AC540](v10);

      *(inited + 96) = v8;
      *(inited + 104) = &protocol witness table for Expression<A>;
      *(inited + 72) = 0x2054455346464FLL;
      *(inited + 80) = 0xE700000000000000;
      *(inited + 88) = v9;
      sub_1DD284AFC(inited, 32, 0xE100000000000000, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v5, 0x2054455346464FLL, 0xE700000000000000, v30[0]);
      swift_setDeallocating();
      return sub_1DD284AB0(&qword_1ECCD7170, &qword_1DD33C120);
    }
  }

  return result;
}

uint64_t sub_1DD2974FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD29AFC8();
  *a1 = result;
  return result;
}

uint64_t sub_1DD297528()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD297560()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DD297644()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD297684(uint64_t a1, int a2)
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

uint64_t sub_1DD2976A4(uint64_t result, int a2, int a3)
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

uint64_t sub_1DD2976E8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD297720()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1DD2977FC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DD297868@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DD2A8354();
  *a2 = result;
  return result;
}

uint64_t sub_1DD2978C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SiriEnvironment.scopedReferenceResolutionData.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1DD2978F0()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD297924()
{
  OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1DD297958()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD297998()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1DD2979DC()
{
  v1 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 72) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 2);

  v9 = *(v0 + 3);

  v10 = *(v0 + 4);

  v11 = *(v0 + 6);

  v12 = *(v0 + 7);

  v13 = *(v0 + 8);

  (*(v3 + 8))(&v0[v5], v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1DD297ABC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1DD297B08()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD297B40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DD297B88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD67B8, &qword_1DD339820);
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1DD297C94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DD2BC71C();
  *a2 = result;
  return result;
}

uint64_t sub_1DD297CC4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD297CFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD297D40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1DD297DA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD3365A0();
  [a3 setSwiftClassName_];
}

uint64_t sub_1DD297E88()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DD297ED0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DD335CA0();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1DD297F58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DD335CA0();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DD297FD8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD298010()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1DD298078@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DD2D7EB8();
  *a2 = result;
  return result;
}

uint64_t sub_1DD2980C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DD2A8354();
  *a2 = result;
  return result;
}

uint64_t sub_1DD298120@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SiriEnvironment.salientEntitiesProvider.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1DD298150()
{
  sub_1DD2BED74(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1DD29818C()
{
  v1 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1DD298268@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DD2DB8A8();
  *a2 = result;
  return result;
}

uint64_t sub_1DD298298()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD2982DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD298314()
{
  v1 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);

  v9 = *(v0 + 48);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1DD2983E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13 + 8) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  v17 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v15, v16 | 7);
}

uint64_t sub_1DD29853C()
{
  sub_1DD2BED74(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1DD298578()
{
  v1 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);

  v8 = *(v0 + 24);

  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1DD29864C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD298684()
{
  v1 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  v9 = *(v0 + 24);

  (*(v3 + 8))(v0 + v5, v1);
  v10 = *(v0 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_1DD298774()
{
  v1 = sub_1DD334830();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6D10, &unk_1DD33A940);
  OUTLINED_FUNCTION_1_0(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  v17 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v15, v16 | 7);
}

uint64_t sub_1DD2988B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DD334BC0();
  *a2 = result;
  return result;
}

uint64_t sub_1DD2988F4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD298944()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DD2989A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD2989DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_69_0(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);

  v8 = *(v0 + 24);

  v9 = sub_1DD336240();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v9))
  {
    (*(*(v9 - 8) + 8))(v0 + v4, v9);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v6, v3 | 7);
}

uint64_t sub_1DD298B7C()
{
  v1 = sub_1DD334890();
  OUTLINED_FUNCTION_1_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 44) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1DD298C48()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1DD298C90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD298CC8()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD298CFC()
{
  OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1DD298D30()
{
  OUTLINED_FUNCTION_60();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1DD298D64()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  OUTLINED_FUNCTION_83();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1DD298DA8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_83();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1DD298DE4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DD2991F0()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_72_4();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DD2992E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = Statement.columnCount.getter();
  *a2 = result;
  return result;
}

int64_t sub_1DD29933C@<X0>(uint64_t *a1@<X0>, int64_t *a2@<X8>)
{
  v3 = *a1;
  result = Statement.columnNames.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1DD299374()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DD2993CC@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23SiriReferenceResolution25RRBiomeNearbyPeoplePuller____lazy_storage___contactStore;
  swift_beginAccess();
  sub_1DD29B658(v1 + v3, &v6);
  if (v7)
  {
    return sub_1DD289CE4(&v6, a1);
  }

  sub_1DD296084(&v6, &qword_1ECCD62B8, "de");
  v5 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  a1[3] = sub_1DD27D80C(0, &qword_1ECCD6338, 0x1E695CE18);
  a1[4] = &protocol witness table for CNContactStore;
  *a1 = v5;
  sub_1DD28191C(a1, &v6);
  swift_beginAccess();
  sub_1DD29B6C8(&v6, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1DD2994D4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC23SiriReferenceResolution25RRBiomeNearbyPeoplePuller____lazy_storage___contactStore;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v2 + OBJC_IVAR____TtC23SiriReferenceResolution25RRBiomeNearbyPeoplePuller_stream) = a1;
  v5 = OBJC_IVAR____TtC23SiriReferenceResolution25RRBiomeNearbyPeoplePuller_logger;
  v6 = sub_1DD335CD0();
  OUTLINED_FUNCTION_1(v6);
  (*(v7 + 32))(v2 + v5, a2);
  return v2;
}

uint64_t RRBiomeNearbyPeoplePuller.__allocating_init()()
{
  v1 = sub_1DD335CD0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [BiomeLibrary() ContextualUnderstanding];
  OUTLINED_FUNCTION_6_2();
  swift_unknownObjectRelease();
  v6 = [v0 PeopleDiscovery];
  swift_unknownObjectRelease();
  v7 = type metadata accessor for RRBiomeNearbyPeoplePuller();
  v12[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6298, &qword_1DD338D60);
  sub_1DD336630();
  sub_1DD335CC0();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_6_2();
  sub_1DD2994D4(v10, v4);
  return v7;
}

uint64_t sub_1DD2996D4()
{
  OUTLINED_FUNCTION_4();
  v1[9] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = sub_1DD335CA0();
  v1[12] = v3;
  v4 = *(v3 - 8);
  v1[13] = v4;
  v5 = *(v4 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD2997D4, 0, 0);
}

uint64_t sub_1DD2997D4()
{
  if (qword_1ECCD6248 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[9];
  v3 = qword_1ECCD7290;
  sub_1DD335C90();
  sub_1DD336A40();
  v4 = qword_1ECCD7290;
  v5 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5();
  sub_1DD335C70();

  v6 = sub_1DD335CB0();
  v7 = sub_1DD336940();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DD27A000, v6, v7, "Entering RRBiomeNearbyPeoplePuller...", v8, 2u);
    MEMORY[0x1E12ADA30](v8, -1, -1);
  }

  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];

  v12 = swift_allocObject();
  v0[15] = v12;
  *(v12 + 16) = v5;
  v13 = *(v11 + OBJC_IVAR____TtC23SiriReferenceResolution25RRBiomeNearbyPeoplePuller_stream);
  v14 = sub_1DD334830();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v14);
  v15 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v16 = v13;
  v17 = sub_1DD29AC8C(v9, v10, 1, 1, 0);
  v18 = [v16 publisherWithOptions_];
  v0[16] = v18;

  v0[6] = OUTLINED_FUNCTION_2_0;
  v0[7] = 0;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1DD299F64;
  v0[5] = &block_descriptor;
  v19 = _Block_copy(v0 + 2);
  v20 = [v18 filterWithIsIncluded_];
  v0[17] = v20;
  _Block_release(v19);
  v21 = swift_task_alloc();
  v0[18] = v21;
  v21[2] = v20;
  v21[3] = v11;
  v21[4] = v12;
  v22 = *(MEMORY[0x1E69E8920] + 4);
  v23 = swift_task_alloc();
  v0[19] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A8, "be");
  *v23 = v0;
  v23[1] = sub_1DD299B64;

  return MEMORY[0x1EEE6DE38](v0 + 8, 0, 0, 0x3A7461286C6C7570, 0xE900000000000029, sub_1DD29B350, v21, v24);
}

uint64_t sub_1DD299B64()
{
  OUTLINED_FUNCTION_4();
  v3 = *(*v1 + 152);
  v2 = *v1;
  OUTLINED_FUNCTION_0();
  *v4 = v2;
  *(v2 + 160) = v0;

  if (v0)
  {
    v5 = sub_1DD299D50;
  }

  else
  {
    v6 = *(v2 + 144);

    v5 = sub_1DD299C74;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD299C74()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);

  v9 = *(v0 + 64);
  sub_1DD299E34();
  (*(v5 + 8))(v2, v4);

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_1DD299D50()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);

  sub_1DD299E34();
  (*(v5 + 8))(v4, v6);

  v10 = *(v0 + 8);
  v11 = *(v0 + 160);

  return v10();
}

void sub_1DD299E34()
{
  sub_1DD336A30();
  if (qword_1ECCD6248 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECCD7290;
  sub_1DD335C80();

  oslog = sub_1DD335CB0();
  v1 = sub_1DD336940();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DD27A000, oslog, v1, "Exiting RRBiomeNearbyPeoplePuller...", v2, 2u);
    MEMORY[0x1E12ADA30](v2, -1, -1);
  }
}

uint64_t sub_1DD299F64(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1DD335860();
  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

void sub_1DD299FBC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &aBlock - v11;
  (*(v9 + 16))(&aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  (*(v9 + 32))(v14 + v13, v12, v8);
  *(v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v23 = sub_1DD29B738;
  v24 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1DD2E5EF4;
  v22 = &block_descriptor_28;
  v15 = _Block_copy(&aBlock);
  sub_1DD335860();
  sub_1DD335860();

  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v23 = sub_1DD29B7E4;
  v24 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1DD29AA08;
  v22 = &block_descriptor_34;
  v17 = _Block_copy(&aBlock);
  sub_1DD335860();
  sub_1DD335860();

  v18 = [a2 sinkWithCompletion:v15 receiveInput:v17];
  _Block_release(v17);
  _Block_release(v15);
}

uint64_t sub_1DD29A250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DD335CB0();
  v6 = sub_1DD336940();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DD27A000, v5, v6, "Finished pulling notification stream successfully", v7, 2u);
    MEMORY[0x1E12ADA30](v7, -1, -1);
  }

  swift_beginAccess();
  v9 = *(a4 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  return sub_1DD3368B0();
}

void sub_1DD29A348(void *a1, uint64_t a2, uint64_t a3)
{
  v78 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v69 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v69 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v69 - v15;
  v17 = sub_1DD336220();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 eventBody];
  if (v22)
  {
    v23 = v22;
    v70 = v16;
    v71 = v12;
    v72 = v21;
    v73 = v8;
    v74 = v18;
    v75 = v17;
    v76 = a3;
    v24 = [v22 discoveredPersons];

    sub_1DD27D80C(0, &qword_1ECCD6358, 0x1E698EB58);
    v25 = sub_1DD336810();

    v26 = objc_allocWithZone(MEMORY[0x1E698EB58]);
    v27 = sub_1DD29ADC8(0, 0, 0, 0, 0, 0, 0, 0, 0);
    v28 = sub_1DD287354();
    if (v28)
    {
      v29 = v28;
      v30 = 0;
      v31 = OBJC_IVAR____TtC23SiriReferenceResolution25RRBiomeNearbyPeoplePuller_logger;
      v32 = v25 & 0xC000000000000001;
      v33 = v25 & 0xFFFFFFFFFFFFFF8;
      v79 = 1000;
      v34 = &off_1E8651000;
      v77 = v25;
      while (1)
      {
        if (v32)
        {
          v35 = MEMORY[0x1E12ACA60](v30, v25);
        }

        else
        {
          if (v30 >= *(v33 + 16))
          {
            goto LABEL_28;
          }

          v35 = *(v25 + 8 * v30 + 32);
        }

        v36 = v35;
        v37 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        sub_1DD29B7EC(v35);
        if (v38 && (, -[NSObject hasActivityLevel](v36, sel_hasActivityLevel)) && (v39 = [v36 v34[508]], v79 > v39))
        {

          v79 = [v36 v34[508]];
          v40 = sub_1DD335CB0();
          v41 = sub_1DD336940();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = v33;
            v43 = v31;
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&dword_1DD27A000, v40, v41, "Added a nearby person", v44, 2u);
            v45 = v44;
            v31 = v43;
            v33 = v42;
            v25 = v77;
            MEMORY[0x1E12ADA30](v45, -1, -1);
          }
        }

        else
        {
          v40 = v36;
          v36 = v27;
        }

        ++v30;
        v27 = v36;
        v34 = &off_1E8651000;
        if (v37 == v29)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    v36 = v27;
LABEL_18:
    v46 = sub_1DD3350C0();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v49 = sub_1DD3350B0();
    v50 = sub_1DD335630();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    sub_1DD335620();
    v53 = [v36 contactID];
    if (v53)
    {
      v54 = v53;
      v55 = sub_1DD3365D0();
      v57 = v56;

      sub_1DD2993CC(v80);
      v58 = v81;
      v59 = v82;
      __swift_project_boxed_opaque_existential_1(v80, v81);
      (*(v59 + 8))(v55, v57, v58, v59);
      if (v60)
      {
        __swift_destroy_boxed_opaque_existential_1(v80);
        sub_1DD3350A0();
        if (MEMORY[0x1E12AABB0](v49))
        {
          sub_1DD335860();

          v61 = sub_1DD335E60();
          __swift_storeEnumTagSinglePayload(v70, 1, 1, v61);
          v62 = v72;
          sub_1DD3361F0();
          v63 = sub_1DD336240();
          v64 = v71;
          __swift_storeEnumTagSinglePayload(v71, 1, 1, v63);
          sub_1DD336190();
          sub_1DD296084(v64, &qword_1ECCD6348, &unk_1DD338E20);
          v65 = v73;
          sub_1DD334820();
          v66 = sub_1DD334830();
          __swift_storeEnumTagSinglePayload(v65, 0, 1, v66);
          sub_1DD3360B0();
          v67 = v76;
          v68 = swift_beginAccess();
          MEMORY[0x1E12AC640](v68);
          sub_1DD2A27E0(*((*(v67 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_1DD336860();
          swift_endAccess();

          (*(v74 + 8))(v62, v75);
          return;
        }

        goto LABEL_29;
      }

      __swift_destroy_boxed_opaque_existential_1(v80);
    }

    else
    {
    }
  }
}

void sub_1DD29AA08(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1DD335860();
  v5 = a2;
  v4();
}

uint64_t RRBiomeNearbyPeoplePuller.deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution25RRBiomeNearbyPeoplePuller_logger;
  v2 = sub_1DD335CD0();
  OUTLINED_FUNCTION_1(v2);
  (*(v3 + 8))(v0 + v1);

  sub_1DD296084(v0 + OBJC_IVAR____TtC23SiriReferenceResolution25RRBiomeNearbyPeoplePuller____lazy_storage___contactStore, &qword_1ECCD62B8, "de");
  return v0;
}

uint64_t RRBiomeNearbyPeoplePuller.__deallocating_deinit()
{
  RRBiomeNearbyPeoplePuller.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD29AB50()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DD2836AC;

  return sub_1DD2996D4();
}

uint64_t type metadata accessor for RRBiomeNearbyPeoplePuller()
{
  result = qword_1ECCD6328;
  if (!qword_1ECCD6328)
  {
    return swift_getSingletonMetadata();
  }

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

id sub_1DD29AC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_1DD334830();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_1DD3347A0();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1DD3347A0();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

id sub_1DD29ADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9)
{
  v10 = v9;
  if (a2)
  {
    v15 = sub_1DD3365A0();
  }

  else
  {
    v15 = 0;
  }

  if (!a4)
  {
    v16 = 0;
    if (a6)
    {
      goto LABEL_6;
    }

LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v16 = sub_1DD3365A0();

  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_6:
  v17 = sub_1DD3365A0();

LABEL_9:
  v18 = [v10 initWithContactID:v15 identifier:v16 name:v17 flags:a7 activityLevel:a8 proximity:a9];

  return v18;
}

uint64_t sub_1DD29AED4(uint64_t a1, id *a2)
{
  result = sub_1DD3365B0();
  *a2 = 0;
  return result;
}

uint64_t sub_1DD29AF48(uint64_t a1, id *a2)
{
  v3 = sub_1DD3365C0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DD29AFC8()
{
  sub_1DD3365D0();
  v0 = sub_1DD3365A0();

  return v0;
}

uint64_t sub_1DD29B000()
{
  v0 = sub_1DD3365D0();
  v1 = MEMORY[0x1E12AC5A0](v0);

  return v1;
}

uint64_t sub_1DD29B038()
{
  sub_1DD3365D0();
  sub_1DD3366B0();
}

uint64_t sub_1DD29B08C()
{
  sub_1DD3365D0();
  sub_1DD336EC0();
  sub_1DD3366B0();
  v0 = sub_1DD336EF0();

  return v0;
}

uint64_t sub_1DD29B10C()
{
  OUTLINED_FUNCTION_3_0();
  result = sub_1DD29B234();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DD29B134(uint64_t a1)
{
  v2 = sub_1DD29B974(&qword_1ECCD63A8, type metadata accessor for NSTextCheckingKey);
  v3 = sub_1DD29B974(&qword_1ECCD63B0, type metadata accessor for NSTextCheckingKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DD29B1F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_1DD3365A0();
  OUTLINED_FUNCTION_6_2();

  *a2 = v2;
  return result;
}

uint64_t sub_1DD29B238(uint64_t a1)
{
  v2 = sub_1DD29B974(&qword_1ECCD63B8, type metadata accessor for IOSurfacePropertyKey);
  v3 = sub_1DD29B974(&qword_1ECCD63C0, type metadata accessor for IOSurfacePropertyKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DD29B2F4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1DD3360C0();
      result = sub_1DD336850();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1DD29B364()
{
  result = sub_1DD335CD0();
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

uint64_t dispatch thunk of RRBiomeNearbyPeoplePuller.pull(at:)(uint64_t a1)
{
  v4 = *(*v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DD29B568;

  return v8(a1);
}

uint64_t sub_1DD29B568()
{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t sub_1DD29B658(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62B8, "de");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD29B6C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62B8, "de");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD29B738(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DD29A250(a1, v5, v1 + v4, v6);
}

uint64_t sub_1DD29B7EC(void *a1)
{
  v1 = [a1 contactID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD3365D0();

  return v3;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD29B884(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD29B8A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1DD29B974(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DD29BB04(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1DD29BB88()
{
  MEMORY[0x1E12AC640]();
  sub_1DD2A27E0(*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10));

  return sub_1DD336860();
}

void sub_1DD29BBE0()
{
  OUTLINED_FUNCTION_54_0();
  v3 = sub_1DD334720();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_72();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_27();
  sub_1DD29BD74();
  if (!v0)
  {
    sub_1DD3346D0();
    OUTLINED_FUNCTION_46();
    sub_1DD3346D0();
    v14 = *(v6 + 8);
    v14(v11, v3);
    sub_1DD3346E0();
    v14(v1, v3);
    v14(v2, v3);
  }

  OUTLINED_FUNCTION_53();
}

void sub_1DD29BD74()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v6[0] = 0;
  v1 = [v0 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:v6];

  v2 = v6[0];
  if (v1)
  {
    sub_1DD334700();
    v3 = v2;
  }

  else
  {
    v4 = v6[0];
    sub_1DD334670();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
}

void RRSQLiteStorage.__allocating_init()()
{
  OUTLINED_FUNCTION_54_0();
  v121 = v1;
  v122[1] = *MEMORY[0x1E69E9840];
  type metadata accessor for Connection.Location();
  v115 = v6;
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v113 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  v114 = (v12 - v11);
  OUTLINED_FUNCTION_31_1();
  v13 = sub_1DD335CD0();
  v14 = OUTLINED_FUNCTION_1_0(v13);
  v116 = v15;
  v117 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_74();
  v19 = sub_1DD334720();
  v20 = OUTLINED_FUNCTION_1_0(v19);
  v119 = v21;
  v120 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_72();
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v103 - v26;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_118();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_35();
  v118 = v30;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v103 - v32;
  v34 = type metadata accessor for RRSQLiteStorage();
  v35 = v121;
  sub_1DD29BBE0();
  if (!v35)
  {
    v110 = v4;
    v111 = v27;
    v104 = v2;
    v105 = v3;
    v106 = 0;
    v107 = v0;
    v122[0] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6560, &unk_1DD339220);
    sub_1DD336630();
    sub_1DD335CC0();
    v36 = v120;
    v108 = v119[2];
    v109 = v119 + 2;
    v108(v118, v33, v120);
    v112 = v5;
    v37 = sub_1DD335CB0();
    v38 = sub_1DD336950();
    if (os_log_type_enabled(v37, v38))
    {
      OUTLINED_FUNCTION_34_0();
      v39 = swift_slowAlloc();
      OUTLINED_FUNCTION_26();
      v40 = swift_slowAlloc();
      OUTLINED_FUNCTION_125(v40);
      *v39 = 136315138;
      v41 = v118;
      v42 = sub_1DD334710();
      v103 = v33;
      v44 = v43;
      OUTLINED_FUNCTION_119();
      v45(v41);
      v46 = sub_1DD27DBF0(v42, v44, v122);
      v33 = v103;

      *(v39 + 4) = v46;
      _os_log_impl(&dword_1DD27A000, v37, v38, "Trying to create directory at: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1("com.apple.frontboard.visibility");
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
      v36 = v120;
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    else
    {

      OUTLINED_FUNCTION_119();
      v47();
    }

    v48 = v110;
    v49 = [objc_opt_self() defaultManager];
    sub_1DD3346F0();
    v50 = sub_1DD3346C0();
    v121(v48, v36);
    v122[0] = 0;
    v51 = v36;
    LODWORD(v48) = [v49 createDirectoryAtURL:v50 withIntermediateDirectories:1 attributes:0 error:v122];

    v52 = v122[0];
    v53 = v116;
    v54 = v111;
    if (v48)
    {
      v118 = v34;
      v119 = v3;
      v55 = v108;
      v108(v104, v33, v51);
      v55(v54, v33, v51);
      v56 = v52;
      v57 = sub_1DD335CB0();
      v58 = sub_1DD336950();
      v59 = v51;
      if (os_log_type_enabled(v57, v58))
      {
        OUTLINED_FUNCTION_40();
        v60 = swift_slowAlloc();
        OUTLINED_FUNCTION_80();
        v110 = swift_slowAlloc();
        v122[0] = v110;
        *v60 = 136315394;
        v61 = sub_1DD334710();
        LODWORD(v103) = v58;
        v62 = v61;
        v63 = OUTLINED_FUNCTION_111();
        v64 = v121;
        (v121)(v63);
        v65 = OUTLINED_FUNCTION_123();
        sub_1DD27DBF0(v65, v66, v67);
        OUTLINED_FUNCTION_126();

        *(v60 + 4) = v62;
        *(v60 + 12) = 2080;
        v68 = sub_1DD334710();
        v64(v54, v59);
        v53 = v116;
        v69 = v118;
        v70 = OUTLINED_FUNCTION_123();
        sub_1DD27DBF0(v70, v71, v72);
        OUTLINED_FUNCTION_126();

        *(v60 + 14) = v68;
        _os_log_impl(&dword_1DD27A000, v57, v103, "Created directory at: %s. Now connecting to DB file at %s", v60, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();

        v73 = v107;
        v75 = v114;
        v74 = v115;
        v76 = v113;
      }

      else
      {

        v79 = v121;
        v121(v54, v51);
        v80 = OUTLINED_FUNCTION_111();
        v79(v80);
        v73 = v107;
        v75 = v114;
        v74 = v115;
        v76 = v113;
        v69 = v118;
      }

      *v75 = sub_1DD334710();
      v75[1] = v81;
      (*(v76 + 104))(v75, 0, v74);
      v82 = *(v69 + 12);
      v83 = *(v69 + 26);
      swift_allocObject();
      v84 = sub_1DD29C70C(v75);
      v85 = v105;
      if (v84)
      {
        (*(v53 + 16))(v73, v84 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_logger, v117);
        v86 = v120;
        v108(v85, v33, v120);
        v87 = v85;
        v88 = sub_1DD335CB0();
        v89 = sub_1DD336940();
        if (os_log_type_enabled(v88, v89))
        {
          OUTLINED_FUNCTION_34_0();
          v90 = swift_slowAlloc();
          v115 = v90;
          OUTLINED_FUNCTION_26();
          v118 = swift_slowAlloc();
          v122[0] = v118;
          *v90 = 136315138;
          v91 = sub_1DD334710();
          v92 = v121;
          v93 = v91;
          v103 = v33;
          v95 = v94;
          v121(v87, v86);
          v96 = sub_1DD27DBF0(v93, v95, v122);

          v97 = v115;
          *(v115 + 1) = v96;
          _os_log_impl(&dword_1DD27A000, v88, v89, "Connected to database file %s", v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v118);
          OUTLINED_FUNCTION_20();
          MEMORY[0x1E12ADA30]();
          OUTLINED_FUNCTION_20();
          MEMORY[0x1E12ADA30]();

          v98 = *(v53 + 8);
          v99 = v117;
          v98(v107, v117);
          v98(v112, v99);
          v92(v103, v120);
        }

        else
        {

          v100 = v121;
          v121(v87, v86);
          v101 = *(v53 + 8);
          v102 = v117;
          v101(v73, v117);
          v101(v112, v102);
          v100(v33, v86);
        }
      }

      else
      {
        (*(v53 + 8))(v112, v117);
        v121(v33, v120);
      }
    }

    else
    {
      v77 = v122[0];
      OUTLINED_FUNCTION_126();
      sub_1DD334670();

      swift_willThrow();
      (*(v53 + 8))(v112, v117);
      v121(v33, v51);
    }
  }

  v78 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_53();
}

uint64_t sub_1DD29C70C(uint64_t a1)
{
  v2 = v1;
  v250 = a1;
  type metadata accessor for Result();
  v247 = v3;
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v231 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_35();
  v245 = v9;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_32_1();
  v243 = v11;
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for Connection.Location();
  v13 = OUTLINED_FUNCTION_1_0(v12);
  v248 = v14;
  v249 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  v246 = (v18 - v17);
  OUTLINED_FUNCTION_31_1();
  v19 = sub_1DD335CD0();
  v20 = OUTLINED_FUNCTION_1_0(v19);
  v252 = v21;
  v253 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v226 - v28;
  v254 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_logger;
  v242 = type metadata accessor for RRSQLiteStorage();
  v259 = v242;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6560, &unk_1DD339220);
  sub_1DD336630();
  sub_1DD335CC0();
  v30 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_idColumn;
  v31 = OUTLINED_FUNCTION_41();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  OUTLINED_FUNCTION_83_1();
  sub_1DD292C50(v34, v35, v36);
  v240 = v30;
  OUTLINED_FUNCTION_75();
  ExpressionType.init(_:)(v37, v38, v39, v40);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_66_1(v41);
  OUTLINED_FUNCTION_75();
  v239 = v33;
  ExpressionType.init(_:)(v42, v43, v44, v45);
  v46 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_usoEntityColumn;
  v47 = OUTLINED_FUNCTION_41();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
  OUTLINED_FUNCTION_83_1();
  sub_1DD292C50(v50, v51, v52);
  v53 = OUTLINED_FUNCTION_78();
  v238 = v46;
  v237 = v49;
  ExpressionType.init(_:)(v53, 0xE900000000000079, v49, v54);
  v55 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_typedValueColumn;
  v56 = OUTLINED_FUNCTION_41();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
  OUTLINED_FUNCTION_83_1();
  v62 = sub_1DD292C50(v59, v60, v61);
  v63 = OUTLINED_FUNCTION_102();
  v236 = v55;
  OUTLINED_FUNCTION_94(v63, 0xEA00000000006575);
  v64 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_dataTypeColumn;
  v65 = OUTLINED_FUNCTION_41();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(v65, v66);
  OUTLINED_FUNCTION_83_1();
  sub_1DD292C50(v68, v69, v70);
  OUTLINED_FUNCTION_101_0();
  v235 = v64;
  OUTLINED_FUNCTION_75();
  ExpressionType.init(_:)(v71, v72, v73, v74);
  OUTLINED_FUNCTION_66_1(OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_dataColumn);
  OUTLINED_FUNCTION_94(1635017060, 0xE400000000000000);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_66_1(v75);
  OUTLINED_FUNCTION_75();
  ExpressionType.init(_:)(v76, v77, v78, v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65C8, &qword_1DD339280);
  sub_1DD292C50(&qword_1EE028750, &qword_1ECCD65C8, &qword_1DD339280);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_120(&v260);
  v234 = v80;
  ExpressionType.init(_:)(v81, 0xE800000000000000, v80, v82);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_66_1(v83);
  OUTLINED_FUNCTION_94(v84, 0xE800000000000000);
  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_66_1(v85);
  ExpressionType.init(_:)(v86, v87, v58, v62);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65D0, &qword_1DD339288);
  OUTLINED_FUNCTION_106_0();
  sub_1DD292C50(v89, v90, v91);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_120(v257);
  v233 = v88;
  ExpressionType.init(_:)(v92, v93, v88, v94);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65D8, &qword_1DD339290);
  OUTLINED_FUNCTION_106_0();
  sub_1DD292C50(v96, v97, v98);
  OUTLINED_FUNCTION_120(&v256);
  v232 = v95;
  ExpressionType.init(_:)(0xD000000000000012, 0x80000001DD33D1E0, v95, v99);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65E0, &qword_1DD339298);
  OUTLINED_FUNCTION_106_0();
  v101 = v252;
  sub_1DD292C50(v102, v103, v104);
  OUTLINED_FUNCTION_120(&v255);
  v244 = v100;
  ExpressionType.init(_:)(0xD00000000000001ALL, 0x80000001DD33D200, v100, v105);
  OUTLINED_FUNCTION_66_1(OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_userIdColumn);
  OUTLINED_FUNCTION_75();
  v241 = v67;
  ExpressionType.init(_:)(v106, v107, v108, v109);
  v110 = *(v101 + 16);
  v110(v29, v2 + v254, v253);
  v111 = sub_1DD335CB0();
  v112 = sub_1DD336940();
  v113 = OUTLINED_FUNCTION_64_1();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    *v115 = 0;
    _os_log_impl(&dword_1DD27A000, v111, v112, "Initializing DB connection.", v115, 2u);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  v117 = *(v101 + 8);
  v116 = v101 + 8;
  v118 = OUTLINED_FUNCTION_84();
  v251 = v119;
  (v119)(v118, v29);
  v120 = v246;
  (*(v248 + 16))(v246, v250, v249);
  v121 = type metadata accessor for Connection();
  OUTLINED_FUNCTION_59(v121);
  swift_allocObject();
  v122 = Connection.init(_:readonly:)(v120, 0);
  v246 = 0;
  v123 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db;
  *(v2 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db) = v122;
  OUTLINED_FUNCTION_115();
  (v110)(v226[1]);
  v124 = sub_1DD335CB0();
  sub_1DD336940();
  v125 = OUTLINED_FUNCTION_64_1();
  if (os_log_type_enabled(v125, v126))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    OUTLINED_FUNCTION_73();
    _os_log_impl(v127, v128, v129, v130, v131, 2u);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  v132 = OUTLINED_FUNCTION_111();
  v251(v132);
  v133 = *(v2 + v123);
  sub_1DD335860();
  Connection.busyTimeout.setter(0.5);

  OUTLINED_FUNCTION_115();
  v134 = v227;
  (v110)(v227);
  v135 = sub_1DD335CB0();
  sub_1DD336940();
  v136 = OUTLINED_FUNCTION_64_1();
  if (os_log_type_enabled(v136, v137))
  {
    OUTLINED_FUNCTION_34_0();
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = 0x3FE0000000000000;
    OUTLINED_FUNCTION_73();
    _os_log_impl(v138, v139, v140, v141, v142, 0xCu);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  (v251)(v134, v29);
  v143 = v246;
  sub_1DD29E808();
  v144 = v143;
  v145 = v247;
  if (!v143)
  {
    v216 = sub_1DD335CB0();
    sub_1DD336940();
    v217 = OUTLINED_FUNCTION_64_1();
    if (os_log_type_enabled(v217, v218))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_73();
      _os_log_impl(v219, v220, v221, v222, v223, 2u);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    v224 = OUTLINED_FUNCTION_71_1();
    v225(v224);
    return v2;
  }

  v259 = v143;
  v146 = v143;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
  v147 = v243;
  v148 = swift_dynamicCast();
  v252 = v116;
  if (!v148)
  {

    OUTLINED_FUNCTION_115();
    v163 = v229;
    (v110)(v229);
    v164 = v144;
    v165 = sub_1DD335CB0();
    v166 = sub_1DD336950();

    if (os_log_type_enabled(v165, v166))
    {
      OUTLINED_FUNCTION_34_0();
      v167 = swift_slowAlloc();
      OUTLINED_FUNCTION_26();
      v29 = swift_slowAlloc();
      v259 = v29;
      *v167 = 136315138;
      swift_getErrorValue();
      v168 = sub_1DD336E40();
      v170 = sub_1DD27DBF0(v168, v169, &v259);

      *(v167 + 4) = v170;
      _os_log_impl(&dword_1DD27A000, v165, v166, "Database connection error: %s", v167, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_84();
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    v171 = OUTLINED_FUNCTION_71_1();
    v172(v171);
    (v251)(v163, v29);
    goto LABEL_17;
  }

  v149 = v231;
  (*(v231 + 32))(v245, v147, v145);
  v150 = *(v149 + 16);
  v151 = v228;
  v152 = OUTLINED_FUNCTION_41();
  v153(v152);
  if (!(*(v149 + 88))(v151, v145))
  {

    (*(v149 + 96))(v151, v145);
    v155 = *v151;
    v154 = *(v151 + 8);
    LODWORD(v243) = *(v151 + 16);
    v156 = *(v151 + 24);

    OUTLINED_FUNCTION_115();
    v157 = v230;
    (v110)(v230);

    v158 = v149;
    v159 = sub_1DD335CB0();
    v160 = sub_1DD336950();

    if (os_log_type_enabled(v159, v160))
    {
      v29 = swift_slowAlloc();
      OUTLINED_FUNCTION_26();
      v161 = swift_slowAlloc();
      v255 = v161;
      *v29 = 136315394;
      v162 = sub_1DD27DBF0(v155, v154, &v255);

      *(v29 + 4) = v162;
      *(v29 + 6) = 1024;
      *(v29 + 14) = v243;
      _os_log_impl(&dword_1DD27A000, v159, v160, "Database connection failed. Error Message: %s, Error code: %d", v29, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v161);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
      OUTLINED_FUNCTION_84();
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    else
    {
    }

    v173 = OUTLINED_FUNCTION_71_1();
    v174(v173);
    (v251)(v157, v29);
    (*(v158 + 8))(v245, v247);

LABEL_17:
    v175 = v244;
    if (v246)
    {
      (v251)(v2 + v254, v29);
      v176 = v239;
      OUTLINED_FUNCTION_22(v239);
      v178 = *(v177 + 8);
      v179 = OUTLINED_FUNCTION_37_0(&v266);
      v178(v179, v176);
      v180 = OUTLINED_FUNCTION_37_0(&v265);
      v178(v180, v176);
      OUTLINED_FUNCTION_22(v237);
      v182 = *(v181 + 8);
      v183 = OUTLINED_FUNCTION_82();
      v184(v183);
      OUTLINED_FUNCTION_22(v58);
      v186 = *(v185 + 8);
      v187 = OUTLINED_FUNCTION_37_0(&v264);
      v186(v187, v58);
      v188 = v241;
      OUTLINED_FUNCTION_22(v241);
      v190 = *(v189 + 8);
      v191 = OUTLINED_FUNCTION_37_0(&v263);
      v190(v191, v188);
      v192 = OUTLINED_FUNCTION_37_0(&v262);
      v186(v192, v58);
      v193 = OUTLINED_FUNCTION_37_0(&v261);
      v190(v193, v188);
      OUTLINED_FUNCTION_22(v234);
      v195 = *(v194 + 8);
      v196 = OUTLINED_FUNCTION_82();
      v197(v196);
      v198 = OUTLINED_FUNCTION_37_0(&v259);
      v186(v198, v58);
      v199 = OUTLINED_FUNCTION_37_0(v258);
      v186(v199, v58);
      OUTLINED_FUNCTION_22(v233);
      v201 = *(v200 + 8);
      v202 = OUTLINED_FUNCTION_82();
      v203(v202);
      OUTLINED_FUNCTION_22(v232);
      v205 = *(v204 + 8);
      v206 = OUTLINED_FUNCTION_82();
      v207(v206);
      OUTLINED_FUNCTION_22(v175);
      v209 = *(v208 + 8);
      v210 = OUTLINED_FUNCTION_82();
      v211(v210, v175);
      v212 = OUTLINED_FUNCTION_37_0(&v254);
      v190(v212, v188);
      v213 = *(*v2 + 48);
      v214 = *(*v2 + 52);
      swift_deallocPartialClassInstance();
    }

    else
    {
    }

    return 0;
  }

  result = sub_1DD336DF0();
  __break(1u);
  return result;
}

uint64_t sub_1DD29D684()
{
  type metadata accessor for Result();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_70();
  type metadata accessor for Table();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_1_0(v6);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_103();
  v13 = OUTLINED_FUNCTION_9_1();
  Table.init(_:database:)(v13);
  v14 = *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db);
  sub_1DD335860();
  SchemaType.drop(ifExists:)(1);
  Connection.run(_:_:)();

  return (*(v10 + 8))(v1, v7);
}

uint64_t sub_1DD29DB6C()
{
  v2 = v0;
  v3 = sub_1DD335CB0();
  v4 = sub_1DD336940();
  v5 = OUTLINED_FUNCTION_64_1();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_34_0();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_26();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    OUTLINED_FUNCTION_46();
    *(v7 + 4) = sub_1DD27DBF0(0xD000000000000011, v9, &v21);
    _os_log_impl(&dword_1DD27A000, v3, v4, "Creating table %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    v10 = OUTLINED_FUNCTION_18();
    MEMORY[0x1E12ADA30](v10);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  v11 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db;
  v12 = *(v2 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db);
  sub_1DD335860();
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v1)
  {
  }

  else
  {

    v14 = sub_1DD335CB0();
    v15 = sub_1DD336940();
    v16 = OUTLINED_FUNCTION_64_1();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_95();
      *v18 = 67109120;
      *(v18 + 4) = 8;
      _os_log_impl(&dword_1DD27A000, v14, v15, "Setting database user_version to %d.", v18, 8u);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    v19 = *(v2 + v11);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1DD335860();
    sub_1DD336C00();

    v21 = 0xD000000000000016;
    v22 = 0x80000001DD33D180;
    v20 = sub_1DD336DC0();
    MEMORY[0x1E12AC540](v20);

    Connection.run(_:_:)();
  }
}

uint64_t sub_1DD29DE28(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6630, &qword_1DD339328);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6638, &qword_1DD339330);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6640, &qword_1DD339338);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6648, &qword_1DD339340);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6650, &qword_1DD339348);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6658, &qword_1DD339350);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v51 - v22;
  v24 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_idColumn;
  v54 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_idColumn;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6588, &qword_1DD339240);
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65A8, &qword_1DD339260);
  v57 = v26;
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v26);
  TableBuilder.column<A>(_:unique:check:defaultValue:)(a2 + v24, 0, v23, v19, MEMORY[0x1E69E6158], &protocol witness table for String);
  sub_1DD28A0C0(v19, &qword_1ECCD6650, &qword_1DD339348);
  sub_1DD28A0C0(v23, &qword_1ECCD6658, &qword_1DD339350);
  v27 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_appBundleIdColumn;
  v53 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_appBundleIdColumn;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v26);
  TableBuilder.column<A>(_:unique:check:defaultValue:)(a2 + v27, 0, v23, v19, MEMORY[0x1E69E6158], &protocol witness table for String);
  sub_1DD28A0C0(v19, &qword_1ECCD6650, &qword_1DD339348);
  sub_1DD28A0C0(v23, &qword_1ECCD6658, &qword_1DD339350);
  v28 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_usoEntityColumn;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65B0, &qword_1DD339268);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)(a2 + v28, 0, v23, v15, MEMORY[0x1E6969080], &protocol witness table for Data);
  sub_1DD28A0C0(v15, &qword_1ECCD6648, &qword_1DD339340);
  sub_1DD28A0C0(v23, &qword_1ECCD6658, &qword_1DD339350);
  v30 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_typedValueColumn;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  v51 = v29;
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)(a2 + v30, 0, v23, v15, MEMORY[0x1E6969080], &protocol witness table for Data);
  sub_1DD28A0C0(v15, &qword_1ECCD6648, &qword_1DD339340);
  sub_1DD28A0C0(v23, &qword_1ECCD6658, &qword_1DD339350);
  v31 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_dataTypeColumn;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  v32 = v57;
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v57);
  TableBuilder.column<A>(_:unique:check:defaultValue:)(a2 + v31, 0, v23, v19, MEMORY[0x1E69E6158], &protocol witness table for String);
  sub_1DD28A0C0(v19, &qword_1ECCD6650, &qword_1DD339348);
  sub_1DD28A0C0(v23, &qword_1ECCD6658, &qword_1DD339350);
  v33 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_dataColumn;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v29);
  TableBuilder.column<A>(_:unique:check:defaultValue:)(a2 + v33, 0, v23, v15, MEMORY[0x1E6969080], &protocol witness table for Data);
  sub_1DD28A0C0(v15, &qword_1ECCD6648, &qword_1DD339340);
  sub_1DD28A0C0(v23, &qword_1ECCD6658, &qword_1DD339350);
  v34 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_groupIdColumn;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v32);
  TableBuilder.column<A>(_:unique:check:defaultValue:)(a2 + v34, 0, v23, v19, MEMORY[0x1E69E6158], &protocol witness table for String);
  sub_1DD28A0C0(v19, &qword_1ECCD6650, &qword_1DD339348);
  sub_1DD28A0C0(v23, &qword_1ECCD6658, &qword_1DD339350);
  v35 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_groupSeqColumn;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6660, &qword_1DD339358);
  v37 = v52;
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v36);
  TableBuilder.column<A>(_:unique:check:defaultValue:)(a2 + v35, 0, v23, v37, MEMORY[0x1E69E6530], &protocol witness table for Int);
  sub_1DD28A0C0(v37, &qword_1ECCD6640, &qword_1DD339338);
  sub_1DD28A0C0(v23, &qword_1ECCD6658, &qword_1DD339350);
  v38 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_metadataColumn;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  v39 = v51;
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v51);
  TableBuilder.column<A>(_:unique:check:defaultValue:)(a2 + v38, 0, v23, v15, MEMORY[0x1E6969080], &protocol witness table for Data);
  sub_1DD28A0C0(v15, &qword_1ECCD6648, &qword_1DD339340);
  sub_1DD28A0C0(v23, &qword_1ECCD6658, &qword_1DD339350);
  v40 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_annotationsColumn;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v39);
  TableBuilder.column<A>(_:unique:check:defaultValue:)(a2 + v40, 0, v23, v15, MEMORY[0x1E6969080], &protocol witness table for Data);
  sub_1DD28A0C0(v15, &qword_1ECCD6648, &qword_1DD339340);
  sub_1DD28A0C0(v23, &qword_1ECCD6658, &qword_1DD339350);
  v41 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_saliencyScoreColumn;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  v58 = 0;
  TableBuilder.column<A>(_:unique:check:defaultValue:)(a2 + v41, 0, v23, &v58, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  sub_1DD28A0C0(v23, &qword_1ECCD6658, &qword_1DD339350);
  v42 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_saliencyComputedAtColumn;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6668, &qword_1DD339360);
  v44 = v55;
  __swift_storeEnumTagSinglePayload(v55, 1, 1, v43);
  v45 = sub_1DD334830();
  TableBuilder.column<A>(_:unique:check:defaultValue:)(a2 + v42, 0, v23, v44, v45, &protocol witness table for Date);
  sub_1DD28A0C0(v44, &qword_1ECCD6638, &qword_1DD339330);
  sub_1DD28A0C0(v23, &qword_1ECCD6658, &qword_1DD339350);
  v46 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_onScreenSaliencyAdjustmentColumn;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65D0, &qword_1DD339288);
  v48 = v56;
  __swift_storeEnumTagSinglePayload(v56, 1, 1, v47);
  TableBuilder.column<A>(_:unique:check:defaultValue:)(a2 + v46, 0, v23, v48, MEMORY[0x1E69E63B0], &protocol witness table for Double);
  sub_1DD28A0C0(v48, &qword_1ECCD6630, &qword_1DD339328);
  sub_1DD28A0C0(v23, &qword_1ECCD6658, &qword_1DD339350);
  v49 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_userIdColumn;
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v25);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v57);
  TableBuilder.column<A>(_:unique:check:defaultValue:)(a2 + v49, 0, v23, v19, MEMORY[0x1E69E6158], &protocol witness table for String);
  sub_1DD28A0C0(v19, &qword_1ECCD6650, &qword_1DD339348);
  sub_1DD28A0C0(v23, &qword_1ECCD6658, &qword_1DD339350);
  return TableBuilder.primaryKey<A, B>(_:_:)((a2 + v54), (a2 + v53));
}

void sub_1DD29E808()
{
  OUTLINED_FUNCTION_54_0();
  type metadata accessor for Result();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v53 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_70();
  type metadata accessor for Connection.TransactionMode();
  v9 = v8;
  v10 = OUTLINED_FUNCTION_1_0(v8);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v17 = (v16 - v15);
  type metadata accessor for Table();
  v19 = v18;
  v20 = OUTLINED_FUNCTION_1_0(v18);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12();
  v27 = v26 - v25;
  OUTLINED_FUNCTION_46();
  v28 = OUTLINED_FUNCTION_9_1();
  Table.init(_:database:)(v28);
  v29 = *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db);
  (*(v12 + 104))(v17, 0, v9);
  sub_1DD335860();
  Connection.transaction(_:block:)(v17, sub_1DD2A2B48);
  if (v1)
  {
    v54 = v22;
    (*(v12 + 8))(v17, v9);

    v30 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
    if (swift_dynamicCast())
    {
      v31 = v53[11];
      v32 = OUTLINED_FUNCTION_61();
      if (!v33(v32))
      {

        v34 = v53[12];
        v35 = OUTLINED_FUNCTION_61();
        v36(v35);
        v38 = *v2;
        v37 = *(v2 + 8);
        v39 = *(v2 + 16);
        v40 = *(v2 + 24);
        sub_1DD335860();

        v41 = sub_1DD335CB0();
        v42 = sub_1DD336960();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          OUTLINED_FUNCTION_80();
          v55 = swift_slowAlloc();
          *v43 = 136315650;
          v44 = sub_1DD27DBF0(v38, v37, &v55);

          *(v43 + 4) = v44;
          *(v43 + 12) = 1024;
          *(v43 + 14) = v39;
          *(v43 + 18) = 2080;
          sub_1DD335860();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6578, &qword_1DD339230);
          v45 = sub_1DD336630();
          v47 = sub_1DD27DBF0(v45, v46, &v55);

          *(v43 + 20) = v47;
          _os_log_impl(&dword_1DD27A000, v41, v42, "Failed to perform db.transaction createElseMigrateTable: %s code: %d statement: %s", v43, 0x1Cu);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_20();
          MEMORY[0x1E12ADA30]();
          OUTLINED_FUNCTION_20();
          MEMORY[0x1E12ADA30]();
        }

        else
        {
        }

        v51 = v19;
        sub_1DD2A2B64();
        OUTLINED_FUNCTION_68_0();
        OUTLINED_FUNCTION_96(v52, 3);

        goto LABEL_11;
      }

      v48 = v53[1];
      v49 = OUTLINED_FUNCTION_61();
      v50(v49);
    }

    v51 = v19;
LABEL_11:

    (*(v54 + 8))(v27, v51);
    goto LABEL_12;
  }

  (*(v12 + 8))(v17, v9);

  (*(v22 + 8))(v27, v19);
LABEL_12:
  OUTLINED_FUNCTION_53();
}

void sub_1DD29ECB4(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  type metadata accessor for Result();
  v55 = v4;
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6678, &qword_1DD339368);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v54 - v10;
  v12 = a1;
  v58 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_logger;
  v13 = sub_1DD335CB0();
  v14 = sub_1DD336940();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DD27A000, v13, v14, "Beginning transaction.", v15, 2u);
    MEMORY[0x1E12ADA30](v15, -1, -1);
  }

  v16 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db;
  v17 = *(v12 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db);
  type metadata accessor for Table();
  sub_1DD335860();
  QueryType.exists.getter();
  Connection.scalar<A>(_:)();
  if (v2)
  {
    (*(v8 + 8))(v11, v7);

    v18 = v56;
    v19 = v57;
    v62[0] = v2;
    v28 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
    v29 = v55;
    if (swift_dynamicCast())
    {
      if ((*(v19 + 88))(v18, v29))
      {
        (*(v19 + 8))(v18, v29);
      }

      else
      {

        (*(v19 + 96))(v18, v29);
        v30 = *v18;
        v31 = *(v18 + 1);
        v32 = *(v18 + 4);
        v33 = *(v18 + 3);
        sub_1DD335860();

        v34 = sub_1DD335CB0();
        v35 = sub_1DD336940();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *&v60 = v58;
          *v36 = 136315906;
          *(v36 + 4) = sub_1DD27DBF0(0xD000000000000011, 0x80000001DD33CFB0, &v60);
          *(v36 + 12) = 2080;
          v37 = sub_1DD27DBF0(v30, v31, &v60);

          *(v36 + 14) = v37;
          *(v36 + 22) = 1024;
          *(v36 + 24) = v32;
          *(v36 + 28) = 2080;
          v63 = v33;
          sub_1DD335860();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6578, &qword_1DD339230);
          v38 = sub_1DD336630();
          v40 = sub_1DD27DBF0(v38, v39, &v60);

          *(v36 + 30) = v40;
          _os_log_impl(&dword_1DD27A000, v34, v35, "Table %s doesn't exist, creating one: %s code: %d statement: %s", v36, 0x26u);
          v41 = v58;
          swift_arrayDestroy();
          MEMORY[0x1E12ADA30](v41, -1, -1);
          MEMORY[0x1E12ADA30](v36, -1, -1);
        }

        else
        {
        }

        sub_1DD29DB6C();
      }
    }

    return;
  }

  (*(v8 + 8))(v11, v7);

  v20 = sub_1DD335CB0();
  v21 = sub_1DD336940();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v62[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1DD27DBF0(0xD000000000000011, 0x80000001DD33CFB0, v62);
    _os_log_impl(&dword_1DD27A000, v20, v21, "Table %s exists.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1E12ADA30](v23, -1, -1);
    MEMORY[0x1E12ADA30](v22, -1, -1);
  }

  v24 = sub_1DD335CB0();
  v25 = sub_1DD336940();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1DD27A000, v24, v25, "Checking database user_version...", v26, 2u);
    MEMORY[0x1E12ADA30](v26, -1, -1);
  }

  v27 = *(v12 + v16);
  sub_1DD335860();
  Connection.scalar(_:_:)();

  if (!v61)
  {
LABEL_34:
    __break(1u);
    return;
  }

  sub_1DD289CE4(&v60, v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6680, &qword_1DD339370);
  swift_dynamicCast();
  v42 = v63;
  if (v63 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v63 > 0x7FFFFFFF)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v43 = sub_1DD335CB0();
  v44 = sub_1DD336940();
  v45 = os_log_type_enabled(v43, v44);
  if (v42 == 8)
  {
    if (v45)
    {
      v46 = swift_slowAlloc();
      *v46 = 67109120;
      *(v46 + 4) = 8;
      _os_log_impl(&dword_1DD27A000, v43, v44, "Current database user_version matches Framework's: %d. No need to migrate.", v46, 8u);
      MEMORY[0x1E12ADA30](v46, -1, -1);
    }
  }

  else
  {
    if (v45)
    {
      v47 = swift_slowAlloc();
      *v47 = 67109376;
      *(v47 + 4) = v42;
      *(v47 + 8) = 1024;
      *(v47 + 10) = 8;
      _os_log_impl(&dword_1DD27A000, v43, v44, "Current database user_version %d does not match Framework's: %d", v47, 0xEu);
      MEMORY[0x1E12ADA30](v47, -1, -1);
    }

    v48 = sub_1DD335CB0();
    v49 = sub_1DD336940();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1DD27A000, v48, v49, "Performing database migration...", v50, 2u);
      MEMORY[0x1E12ADA30](v50, -1, -1);
    }

    sub_1DD29D684();
    sub_1DD29DB6C();
    v51 = sub_1DD335CB0();
    v52 = sub_1DD336940();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1DD27A000, v51, v52, "Finished database migration.", v53, 2u);
      MEMORY[0x1E12ADA30](v53, -1, -1);
    }
  }
}

void sub_1DD29F5B0()
{
  OUTLINED_FUNCTION_54_0();
  v5 = v4;
  v6 = sub_1DD335D60();
  v7 = OUTLINED_FUNCTION_1_0(v6);
  v90 = v8;
  v91 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6();
  v98 = v11;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32_1();
  v89 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6580, &qword_1DD339238);
  OUTLINED_FUNCTION_36(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_30();
  v94 = v18;
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for Row();
  v87 = v19;
  v20 = OUTLINED_FUNCTION_1_0(v19);
  v86 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_50_0(v25);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6588, &qword_1DD339240);
  v26 = OUTLINED_FUNCTION_1_0(v93);
  v96 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_10();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_32_1();
  v92 = v35;
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for Table();
  v100 = v36;
  v37 = OUTLINED_FUNCTION_1_0(v36);
  v97 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_6();
  v99 = v41;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_46();
  v43 = OUTLINED_FUNCTION_9_1();
  Table.init(_:database:)(v43);
  v44 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_appBundleIdColumn;
  v101 = sub_1DD335D30();
  v102 = v45;
  v46 = MEMORY[0x1E69E6158];
  == infix<A>(_:_:)(v0 + v44, &v101, MEMORY[0x1E69E6158], &protocol witness table for String, MEMORY[0x1E69E6180]);

  v47 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_idColumn;
  v88 = v5;
  v101 = sub_1DD335D50();
  v102 = v48;
  == infix<A>(_:_:)(v0 + v47, &v101, v46, &protocol witness table for String, MEMORY[0x1E69E6180]);

  v49 = OUTLINED_FUNCTION_79_0();
  && infix(_:_:)(v49, v50);
  v51 = *(v96 + 8);
  v51(v32, v93);
  v51(v2, v93);
  QueryType.filter(_:)();
  v51(v92, v93);
  v52 = *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db);
  v103 = v100;
  v104 = &protocol witness table for Table;
  v53 = __swift_allocate_boxed_opaque_existential_1(&v101);
  v54 = v97;
  (*(v97 + 16))(v53, v99, v100);
  sub_1DD335860();
  Connection.pluck(_:)(&v101, v94);
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1(&v101);
    v55 = *(v90 + 16);
    v55(v89, v88, v91);
    v55(v98, v88, v91);
    v56 = v1;
    v57 = sub_1DD335CB0();
    v58 = sub_1DD336950();

    if (os_log_type_enabled(v57, v58))
    {
      OUTLINED_FUNCTION_26();
      v59 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *v59 = 136315650;
      swift_getErrorValue();
      v95 = v58;
      v60 = sub_1DD336E40();
      v62 = sub_1DD27DBF0(v60, v61, &v101);

      *(v59 + 4) = v62;
      *(v59 + 12) = 2080;
      v63 = sub_1DD335D30();
      v65 = v64;
      v66 = *(v90 + 8);
      v67 = OUTLINED_FUNCTION_110();
      v66(v67);
      sub_1DD27DBF0(v63, v65, &v101);
      OUTLINED_FUNCTION_124();

      *(v59 + 14) = v63;
      *(v59 + 22) = 2080;
      v68 = sub_1DD335D50();
      v70 = v69;
      v71 = OUTLINED_FUNCTION_110();
      v66(v71);
      sub_1DD27DBF0(v68, v70, &v101);
      OUTLINED_FUNCTION_124();
      v54 = v97;

      *(v59 + 24) = v68;
      _os_log_impl(&dword_1DD27A000, v57, v95, "Failed to retrieve entity. error: %s appBundleId: %s entityId: %s", v59, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    else
    {

      v75 = *(v90 + 8);
      v75(v98, v91);
      v76 = OUTLINED_FUNCTION_110();
      (v75)(v76);
    }

    sub_1DD2A2BB8();
    v77 = OUTLINED_FUNCTION_68_0();
    OUTLINED_FUNCTION_132(v77, v78);

    v79 = *(v54 + 8);
    v79(v99, v100);
    v79(v3, v100);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v101);
    v72 = OUTLINED_FUNCTION_121();
    if (__swift_getEnumTagSinglePayload(v72, v73, v87) == 1)
    {
      v74 = *(v97 + 8);
      v74(v99, v100);
      v74(v3, v100);
      sub_1DD28A0C0(v94, &qword_1ECCD6580, &qword_1DD339238);
    }

    else
    {
      v80 = *(v86 + 32);
      v81 = OUTLINED_FUNCTION_110();
      v82(v81);
      sub_1DD3360C0();
      (*(v86 + 16))(v85, v84, v87);
      sub_1DD290A3C();
      (*(v86 + 8))(v84, v87);
      v83 = *(v97 + 8);
      v83(v99, v100);
      v83(v3, v100);
    }
  }

  OUTLINED_FUNCTION_53();
}

void sub_1DD29FDC4()
{
  OUTLINED_FUNCTION_54_0();
  v73 = v1;
  type metadata accessor for Row();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_1_0(v4);
  v69 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6580, &qword_1DD339238);
  OUTLINED_FUNCTION_36(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v66 - v17;
  type metadata accessor for Table();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_1_0(v19);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_6();
  v74 = v26;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_118();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_46();
  v29 = OUTLINED_FUNCTION_9_1();
  Table.init(_:database:)(v29);
  v30 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_logger;
  v31 = *(v23 + 16);
  v76 = v20;
  v77 = v31;
  v78 = v23 + 16;
  v31(v2, v3, v20);
  v79 = v0;
  v71 = v30;
  v32 = sub_1DD335CB0();
  v70 = sub_1DD336940();
  v33 = v32;
  v34 = os_log_type_enabled(v32, v70);
  v75 = v23;
  if (v34)
  {
    OUTLINED_FUNCTION_34_0();
    v35 = swift_slowAlloc();
    v72 = v3;
    v36 = v35;
    OUTLINED_FUNCTION_26();
    v68 = swift_slowAlloc();
    v81[0] = v68;
    *v36 = 136315138;
    v37 = v76;
    v77(v74, v2, v76);
    v67 = sub_1DD336630();
    v39 = v38;
    v74 = *(v23 + 8);
    v74(v2, v37);
    v40 = sub_1DD27DBF0(v67, v39, v81);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_1DD27A000, v33, v70, "entityTable: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
    v3 = v72;
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();

    v41 = v37;
  }

  else
  {

    v42 = v2;
    v41 = v76;
    v74 = *(v23 + 8);
    v74(v42, v76);
  }

  v43 = *(v79 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db);
  v81[3] = v41;
  v81[4] = &protocol witness table for Table;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v81);
  v77(boxed_opaque_existential_1, v3, v41);
  sub_1DD335860();
  v45 = v73;
  v46 = Connection.prepare(_:)(v81);
  if (v45)
  {
    v47 = v41;

    __swift_destroy_boxed_opaque_existential_1(v81);
    v48 = v45;
    v49 = sub_1DD335CB0();
    v50 = sub_1DD336950();

    if (os_log_type_enabled(v49, v50))
    {
      OUTLINED_FUNCTION_34_0();
      v51 = swift_slowAlloc();
      OUTLINED_FUNCTION_26();
      v52 = v3;
      v53 = swift_slowAlloc();
      v81[0] = v53;
      *v51 = 136315138;
      swift_getErrorValue();
      v54 = sub_1DD336E40();
      v56 = sub_1DD27DBF0(v54, v55, v81);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_1DD27A000, v49, v50, "Failed to get all annotated entities. error: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      v3 = v52;
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    sub_1DD2A2BB8();
    v57 = OUTLINED_FUNCTION_68_0();
    OUTLINED_FUNCTION_132(v57, v58);

    v74(v3, v47);
  }

  else
  {
    v59 = v46;
    v72 = v3;

    __swift_destroy_boxed_opaque_existential_1(v81);
    v77 = v59;
    v78 = MEMORY[0x1E69E7CC0];
    v81[0] = MEMORY[0x1E69E7CC0];
    sub_1DD336C90();
    v60 = (v69 + 32);
    v61 = (v69 + 8);
    while (1)
    {
      sub_1DD336D60();
      if (__swift_getEnumTagSinglePayload(v18, 1, v5) == 1)
      {
        break;
      }

      (*v60)(v12, v18, v5);
      sub_1DD2A03E4(v12, &v80);
      v62 = *v61;
      v63 = OUTLINED_FUNCTION_109();
      v65 = v64(v63);
      if (v80)
      {
        MEMORY[0x1E12AC640](v65);
        if (*((v81[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v78 = *((v81[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1DD336830();
        }

        sub_1DD336860();
        v78 = v81[0];
      }
    }

    v74(v72, v76);
  }

  OUTLINED_FUNCTION_53();
}

void (*sub_1DD2A03E4@<X0>(uint64_t a1@<X0>, void (**a2)(void)@<X8>))(void)
{
  type metadata accessor for Row();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD3360C0();
  (*(v7 + 16))(v10, a1, v6);
  result = sub_1DD290A3C();
  if (v2)
  {
    Row.get<A>(_:)();
    v13 = v25[0];
    v12 = v25[1];

    v14 = v2;
    v15 = sub_1DD335CB0();
    v16 = sub_1DD336960();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = a2;
      v20 = v19;
      v25[0] = v19;
      *v17 = 136315394;
      v21 = sub_1DD27DBF0(v13, v12, v25);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2112;
      v22 = v2;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&dword_1DD27A000, v15, v16, "Skipping entity due to initialization error. ID (if available): %s. Error: %@", v17, 0x16u);
      sub_1DD28A0C0(v18, &qword_1ECCD6598, &unk_1DD339248);
      MEMORY[0x1E12ADA30](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v20);
      v24 = v20;
      a2 = v26;
      MEMORY[0x1E12ADA30](v24, -1, -1);
      MEMORY[0x1E12ADA30](v17, -1, -1);
    }

    else
    {
    }

    result = 0;
  }

  *a2 = result;
  return result;
}

void sub_1DD2A06CC()
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_131();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_1_0(v3);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_46();
  v13 = OUTLINED_FUNCTION_9_1();
  Table.init(_:database:)(v13);
  v14 = *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db);
  v43[3] = v4;
  v43[4] = &protocol witness table for Table;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  v41 = v12;
  (*(v7 + 16))(boxed_opaque_existential_1, v12, v4);
  sub_1DD335860();
  Connection.prepare(_:)(v43);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_1(v43);
    v16 = v2;
    v17 = sub_1DD335CB0();
    v18 = sub_1DD336950();

    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_34_0();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_26();
      v20 = v7;
      v21 = swift_slowAlloc();
      v43[0] = v21;
      OUTLINED_FUNCTION_128(4.8149e-34);
      v22 = sub_1DD336E40();
      v24 = sub_1DD27DBF0(v22, v23, v43);

      *(v19 + 4) = v24;
      OUTLINED_FUNCTION_129(&dword_1DD27A000, v25, v26, "Failed to query. error: %s");
      __swift_destroy_boxed_opaque_existential_1(v21);
      v7 = v20;
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
      v27 = OUTLINED_FUNCTION_18();
      MEMORY[0x1E12ADA30](v27);
    }

    sub_1DD2A2BB8();
    v28 = OUTLINED_FUNCTION_68_0();
    OUTLINED_FUNCTION_132(v28, v29);

    (*(v7 + 8))(v12, v4);
LABEL_7:
    OUTLINED_FUNCTION_76();
    OUTLINED_FUNCTION_53();
  }

  else
  {
    OUTLINED_FUNCTION_124();

    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_1DD3360C0();
    v30 = sub_1DD336CA0();
    v39 = v7;
    v40 = v4;

    v43[0] = MEMORY[0x1E69E7CC0];
    v31 = sub_1DD2881D0(v30);
    v32 = 0;
    v33 = &selRef_createDirectoryAtURL_withIntermediateDirectories_attributes_error_;
    v42 = v31;
    while (1)
    {
      if (v31 == v32)
      {

        (*(v39 + 8))(v41, v40);
        goto LABEL_7;
      }

      if ((v30 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x1E12ACA60](v32, v30);
      }

      else
      {
        if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v34 = *(v30 + 8 * v32 + 32);
      }

      v35 = v34;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if ([v1 v33[1]])
      {
        sub_1DD336C50();
        v36 = v1;
        v37 = v33;
        v38 = *(v43[0] + 16);
        sub_1DD336C70();
        v33 = v37;
        v1 = v36;
        sub_1DD336C80();
        sub_1DD336C60();
        v31 = v42;
      }

      else
      {
      }

      ++v32;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void sub_1DD2A0A94()
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_131();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_1_0(v2);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_46();
  v12 = OUTLINED_FUNCTION_9_1();
  Table.init(_:database:)(v12);
  v13 = *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db);
  v38[3] = v3;
  v38[4] = &protocol witness table for Table;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  v37 = v11;
  (*(v6 + 16))(boxed_opaque_existential_1, v11, v3);
  sub_1DD335860();
  Connection.prepare(_:)(v38);
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1(v38);
    v15 = v1;
    v16 = sub_1DD335CB0();
    v17 = sub_1DD336950();

    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_34_0();
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_26();
      v19 = v6;
      v20 = swift_slowAlloc();
      v38[0] = v20;
      OUTLINED_FUNCTION_128(4.8149e-34);
      v21 = sub_1DD336E40();
      v23 = sub_1DD27DBF0(v21, v22, v38);

      *(v18 + 4) = v23;
      OUTLINED_FUNCTION_129(&dword_1DD27A000, v24, v25, "Failed to query. error: %s");
      __swift_destroy_boxed_opaque_existential_1(v20);
      v6 = v19;
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
      v26 = OUTLINED_FUNCTION_18();
      MEMORY[0x1E12ADA30](v26);
    }

    sub_1DD2A2BB8();
    v27 = OUTLINED_FUNCTION_68_0();
    OUTLINED_FUNCTION_132(v27, v28);

    (*(v6 + 8))(v11, v3);
LABEL_7:
    OUTLINED_FUNCTION_76();
    OUTLINED_FUNCTION_53();
  }

  else
  {
    OUTLINED_FUNCTION_124();

    __swift_destroy_boxed_opaque_existential_1(v38);
    sub_1DD3360C0();
    v29 = sub_1DD336CA0();
    v36 = v6;

    v38[0] = MEMORY[0x1E69E7CC0];
    v30 = sub_1DD2881D0(v29);
    for (i = 0; ; ++i)
    {
      if (v30 == i)
      {

        (*(v36 + 8))(v37, v3);
        goto LABEL_7;
      }

      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1E12ACA60](i, v29);
      }

      else
      {
        if (i >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v32 = *(v29 + 8 * i + 32);
      }

      v33 = v32;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1DD335ED0();
      v34 = sub_1DD335960();

      if (v34)
      {
        sub_1DD336C50();
        v35 = *(v38[0] + 16);
        sub_1DD336C70();
        sub_1DD336C80();
        sub_1DD336C60();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void (*sub_1DD2A0E48@<X0>(void *a1@<X1>, void (**a2)(void)@<X8>))(void)
{
  type metadata accessor for Row();
  v6 = OUTLINED_FUNCTION_1_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_70();
  sub_1DD3360C0();
  v11 = *(v8 + 16);
  OUTLINED_FUNCTION_106_0();
  v12();
  result = sub_1DD290A3C();
  if (v2)
  {
    *a1 = v2;
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD2A0F34(uint64_t a1, uint64_t a2, double a3)
{
  v129 = a2;
  v8 = sub_1DD334830();
  v130 = OUTLINED_FUNCTION_1_0(v8);
  v131 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v130);
  OUTLINED_FUNCTION_12();
  v116 = v13 - v12;
  OUTLINED_FUNCTION_31_1();
  v119 = sub_1DD335D60();
  v14 = OUTLINED_FUNCTION_1_0(v119);
  v121 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v118 = v18;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_32_1();
  v117 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_30();
  v123 = v25;
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for Update();
  v27 = OUTLINED_FUNCTION_1_0(v26);
  v127 = v28;
  v128 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_12();
  v134 = (v32 - v31);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6588, &qword_1DD339240);
  v33 = OUTLINED_FUNCTION_1_0(v122);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_27();
  type metadata accessor for Table();
  v133 = v40;
  v41 = OUTLINED_FUNCTION_1_0(v40);
  v126 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_6();
  v135 = v45;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v115 - v47;
  OUTLINED_FUNCTION_46();
  v49 = OUTLINED_FUNCTION_9_1();
  Table.init(_:database:)(v49);
  v50 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_idColumn;
  v51 = sub_1DD335D50();
  OUTLINED_FUNCTION_104(v51, v52);
  v132 = v4;
  == infix<A>(_:_:)(v4 + v50, v136, MEMORY[0x1E69E6158], &protocol witness table for String, MEMORY[0x1E69E6180]);

  v120 = a1;
  v53 = sub_1DD335D30();
  OUTLINED_FUNCTION_104(v53, v54);
  OUTLINED_FUNCTION_60_0();
  == infix<A>(_:_:)(v55, v56, MEMORY[0x1E69E6158], &protocol witness table for String, MEMORY[0x1E69E6180]);

  v57 = OUTLINED_FUNCTION_61();
  && infix(_:_:)(v57, v58);
  v59 = *(v35 + 8);
  v60 = v3;
  v61 = v122;
  (v59)(v60, v122);
  v62 = OUTLINED_FUNCTION_61();
  v59(v62);
  v125 = v48;
  v63 = v129;
  QueryType.filter(_:)();
  (v59)(v5, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65A0, &qword_1DD339258);
  v64 = type metadata accessor for Setter();
  OUTLINED_FUNCTION_69_0(v64);
  v66 = *(v65 + 72);
  v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1DD3391F0;
  *v136 = a3;
  v70 = v132;
  <- infix<A>(_:_:)(v132 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_saliencyScoreColumn, MEMORY[0x1E69E63B0], &protocol witness table for Double, v69 + v68);
  v71 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_saliencyComputedAtColumn;
  v72 = v123;
  v73 = v63;
  v74 = v130;
  v122 = *(v131 + 16);
  v122(v123, v73, v130);
  __swift_storeEnumTagSinglePayload(v72, 0, 1, v74);
  <- infix<A>(_:_:)((v70 + v71), v72, &protocol witness table for Date, v69 + v68 + v66);
  sub_1DD28A0C0(v72, &qword_1ECCD62A0, &unk_1DD338D70);
  v75 = v134;
  QueryType.update(_:)(v69);

  v76 = *(v70 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db);
  sub_1DD335860();
  v137.template._countAndFlagsBits = v75;
  v77 = Connection.run(_:)(v137);
  if (v78)
  {
  }

  else
  {
    v69 = v77;
    v79 = v122;
    v124 = 0;
    v81 = v119;
    v80 = v120;
    v82 = v117;
    v83 = v118;

    v84 = *(v121 + 16);
    if (v69 == 1)
    {
      v69 = v81;
      v84(v83, v80, v81);
      v79(v116, v129, v130);
      v75 = sub_1DD335CB0();
      v85 = sub_1DD336940();
      if (os_log_type_enabled(v75, v85))
      {
        OUTLINED_FUNCTION_26();
        v69 = swift_slowAlloc();
        OUTLINED_FUNCTION_80();
        v136[0] = swift_slowAlloc();
        *v69 = 136315650;
        LODWORD(v132) = v85;
        sub_1DD335D50();
        v86 = OUTLINED_FUNCTION_38();
        v87(v86, v81);
        v88 = OUTLINED_FUNCTION_41();
        v91 = sub_1DD27DBF0(v88, v89, v90);

        *(v69 + 4) = v91;
        *(v69 + 12) = 2048;
        *(v69 + 14) = a3;
        *(v69 + 22) = 2080;
        sub_1DD28AEE0(&qword_1EE027A40, MEMORY[0x1E6969530]);
        sub_1DD336DC0();
        v92 = OUTLINED_FUNCTION_97();
        v93(v92);
        v94 = OUTLINED_FUNCTION_41();
        v97 = sub_1DD27DBF0(v94, v95, v96);

        *(v69 + 24) = v97;
        _os_log_impl(&dword_1DD27A000, v75, v132, "Successfully updated entity %s's saliencyScore to %f computed at %s", v69, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
      }

      else
      {

        v106 = OUTLINED_FUNCTION_97();
        v107(v106);
        v108 = OUTLINED_FUNCTION_38();
        v109(v108, v81);
      }
    }

    else
    {
      v84(v82, v80, v81);
      v75 = sub_1DD335CB0();
      v98 = sub_1DD336950();
      if (os_log_type_enabled(v75, v98))
      {
        OUTLINED_FUNCTION_40();
        v99 = swift_slowAlloc();
        OUTLINED_FUNCTION_26();
        v100 = swift_slowAlloc();
        v136[0] = v100;
        *v99 = 134218242;
        *(v99 + 4) = v69;
        *(v99 + 12) = 2080;
        v101 = sub_1DD335D50();
        v69 = v102;
        v103 = OUTLINED_FUNCTION_38();
        v104(v103, v81);
        v105 = sub_1DD27DBF0(v101, v69, v136);

        *(v99 + 14) = v105;
        _os_log_impl(&dword_1DD27A000, v75, v98, "Unexpected number of rows (%ld) were updated. entity: %s", v99, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v100);
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
        OUTLINED_FUNCTION_20();
        MEMORY[0x1E12ADA30]();
      }

      else
      {

        v110 = OUTLINED_FUNCTION_38();
        v111(v110, v81);
      }

      sub_1DD2A2BB8();
      OUTLINED_FUNCTION_68_0();
      OUTLINED_FUNCTION_96(v112, 1);
    }
  }

  (*(v127 + 8))(v134, v128);
  v113 = OUTLINED_FUNCTION_81_0();
  (v75)(v113);
  return (v75)(v125, v69);
}

void sub_1DD2A18B4()
{
  OUTLINED_FUNCTION_54_0();
  v3 = v2;
  v5 = v4;
  v19 = sub_1DD335CA0();
  v6 = OUTLINED_FUNCTION_1_0(v19);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_103();
  if (qword_1EE027820 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE02A228;
  sub_1DD335C90();
  sub_1DD336A40();
  v10 = qword_1EE02A228;
  OUTLINED_FUNCTION_88();
  sub_1DD335C70();

  v11 = 0;
  v12 = *(v5 + 16);
  do
  {
    if (v12 == v11)
    {
      break;
    }

    v13 = sub_1DD335D60();
    OUTLINED_FUNCTION_69_0(v13);
    sub_1DD2A1AD0(v5 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v15 + 72) * v11++, v0, v3 & 1);
  }

  while (!v1);
  sub_1DD336A30();
  v16 = qword_1EE02A228;
  sub_1DD335C80();

  v17 = OUTLINED_FUNCTION_98();
  v18(v17, v19);
  OUTLINED_FUNCTION_53();
}

void sub_1DD2A1AD0(uint64_t a1, uint64_t a2, int a3)
{
  v63 = a3;
  v5 = sub_1DD335D60();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v68 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v67 = &v55[-v11];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v55[-v13];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v55[-v15];
  v17 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_logger;
  v18 = v6[2];
  v18(&v55[-v15], a1, v5);
  v65 = a1;
  v59 = v18;
  v18(v14, a1, v5);
  v66 = a2;
  v60 = v17;
  v19 = sub_1DD335CB0();
  v20 = sub_1DD336940();
  v21 = os_log_type_enabled(v19, v20);
  v62 = v6;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v57 = v19;
    v23 = v22;
    v58 = swift_slowAlloc();
    v69 = v58;
    *v23 = 136315394;
    v24 = sub_1DD335D50();
    v56 = v20;
    v26 = v25;
    v27 = v6[1];
    v27(v16, v5);
    v28 = sub_1DD27DBF0(v24, v26, &v69);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    v29 = sub_1DD335D30();
    v31 = v30;
    v61 = v27;
    v27(v14, v5);
    v32 = sub_1DD27DBF0(v29, v31, &v69);

    *(v23 + 14) = v32;
    v33 = v57;
    _os_log_impl(&dword_1DD27A000, v57, v56, "Deleting entity id: %s appBundleId: %s", v23, 0x16u);
    v34 = v58;
    swift_arrayDestroy();
    MEMORY[0x1E12ADA30](v34, -1, -1);
    MEMORY[0x1E12ADA30](v23, -1, -1);
  }

  else
  {

    v35 = v6[1];
    v35(v14, v5);
    v61 = v35;
    v35(v16, v5);
  }

  v36 = v65;
  v37 = v64;
  sub_1DD2A1FFC();
  if (v37)
  {
    v38 = v59;
    v59(v67, v36, v5);
    v38(v68, v36, v5);
    v39 = sub_1DD335CB0();
    v40 = sub_1DD336950();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v69 = v66;
      *v41 = 136315394;
      LODWORD(v65) = v40;
      v42 = v67;
      v43 = sub_1DD335D50();
      v45 = v44;
      v46 = v61;
      v61(v42, v5);
      v47 = sub_1DD27DBF0(v43, v45, &v69);

      *(v41 + 4) = v47;
      *(v41 + 12) = 2080;
      v48 = v68;
      v49 = sub_1DD335D30();
      v51 = v50;
      v46(v48, v5);
      v52 = sub_1DD27DBF0(v49, v51, &v69);

      *(v41 + 14) = v52;
      _os_log_impl(&dword_1DD27A000, v39, v65, "Failed to delete entity id: %s appBundleId: %s", v41, 0x16u);
      v53 = v66;
      swift_arrayDestroy();
      MEMORY[0x1E12ADA30](v53, -1, -1);
      MEMORY[0x1E12ADA30](v41, -1, -1);
    }

    else
    {

      v54 = v61;
      v61(v68, v5);
      v54(v67, v5);
    }

    if (v63)
    {
    }

    else
    {
      swift_willThrow();
    }
  }
}

void sub_1DD2A1FFC()
{
  OUTLINED_FUNCTION_54_0();
  type metadata accessor for Delete();
  v46 = v4;
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v43 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v41 = v10 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6588, &qword_1DD339240);
  v11 = OUTLINED_FUNCTION_1_0(v40);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_32_1();
  v38 = v18;
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for Table();
  v39 = v19;
  v20 = OUTLINED_FUNCTION_1_0(v19);
  v42 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_46();
  v25 = OUTLINED_FUNCTION_9_1();
  Table.init(_:database:)(v25);
  v26 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_idColumn;
  v44 = sub_1DD335D50();
  v45 = v27;
  v28 = v1 + v26;
  v29 = MEMORY[0x1E69E6158];
  == infix<A>(_:_:)(v28, &v44, MEMORY[0x1E69E6158], &protocol witness table for String, MEMORY[0x1E69E6180]);

  v30 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_appBundleIdColumn;
  v44 = sub_1DD335D30();
  v45 = v31;
  == infix<A>(_:_:)(v1 + v30, &v44, v29, &protocol witness table for String, MEMORY[0x1E69E6180]);

  v32 = OUTLINED_FUNCTION_61();
  && infix(_:_:)(v32, v33);
  v34 = *(v13 + 8);
  v34(v0, v40);
  v34(v3, v40);
  QueryType.filter(_:)();
  v34(v38, v40);
  v35 = *(v1 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db);
  sub_1DD335860();
  v47 = QueryType.delete()();
  v47.template._countAndFlagsBits = v41;
  Connection.run(_:)(v47);

  (*(v43 + 8))(v41, v46);
  v36 = *(v42 + 8);
  v37 = OUTLINED_FUNCTION_109();
  v36(v37);
  (v36)(v2, v39);
  OUTLINED_FUNCTION_53();
}

uint64_t RRSQLiteStorage.deinit()
{
  v1 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_logger;
  v2 = sub_1DD335CD0();
  OUTLINED_FUNCTION_4_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_idColumn;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65A8, &qword_1DD339260);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 8);
  v7(v0 + v4, v5);
  v7(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_appBundleIdColumn, v5);
  v8 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_usoEntityColumn;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65B0, &qword_1DD339268);
  OUTLINED_FUNCTION_4_0(v9);
  (*(v10 + 8))(v0 + v8);
  v11 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_typedValueColumn;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65B8, &qword_1DD339270);
  OUTLINED_FUNCTION_1(v12);
  v14 = *(v13 + 8);
  v14(v0 + v11, v12);
  v15 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_dataTypeColumn;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65C0, &qword_1DD339278);
  OUTLINED_FUNCTION_1(v16);
  v18 = *(v17 + 8);
  v18(v0 + v15, v16);
  v14(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_dataColumn, v12);
  v18(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_groupIdColumn, v16);
  v19 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_groupSeqColumn;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65C8, &qword_1DD339280);
  OUTLINED_FUNCTION_4_0(v20);
  (*(v21 + 8))(v0 + v19);
  v14(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_metadataColumn, v12);
  v14(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_annotationsColumn, v12);
  v22 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_saliencyScoreColumn;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65D0, &qword_1DD339288);
  OUTLINED_FUNCTION_4_0(v23);
  (*(v24 + 8))(v0 + v22);
  v25 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_saliencyComputedAtColumn;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65D8, &qword_1DD339290);
  OUTLINED_FUNCTION_4_0(v26);
  (*(v27 + 8))(v0 + v25);
  v28 = OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_onScreenSaliencyAdjustmentColumn;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD65E0, &qword_1DD339298);
  OUTLINED_FUNCTION_4_0(v29);
  (*(v30 + 8))(v0 + v28);
  v18(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_userIdColumn, v16);
  v31 = *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution15RRSQLiteStorage_db);

  return v0;
}

uint64_t RRSQLiteStorage.__deallocating_deinit()
{
  RRSQLiteStorage.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD2A27E0(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1DD336830();
  }

  return result;
}

uint64_t sub_1DD2A280C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DD2A2858(a1, a2);
  sub_1DD2A2970(&unk_1F589A748);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1DD2A2858(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_1DD336730())
  {
    result = sub_1DD29684C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1DD336BF0();
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
          result = sub_1DD336C30();
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

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DD2A2970(uint64_t result)
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

    result = sub_1DD2A2A54(result, v8, 1, v3);
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

char *sub_1DD2A2A54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6688, &qword_1DD339378);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1DD2A2B64()
{
  result = qword_1ECCD6570;
  if (!qword_1ECCD6570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6570);
  }

  return result;
}

unint64_t sub_1DD2A2BB8()
{
  result = qword_1ECCD6590;
  if (!qword_1ECCD6590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6590);
  }

  return result;
}

unint64_t sub_1DD2A2C18(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void (*sub_1DD2A2C3C(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1DD2A2C0C(a3);
  sub_1DD2A2C18(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1E12ACA60](a2, a3);
  }

  *a1 = v7;
  return sub_1DD2A2CC8;
}

uint64_t sub_1DD2A2CD0@<X0>(void *a1@<X8>)
{
  result = sub_1DD2A0E48(&v5, &v6);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6568, &unk_1DD3397B0);
    result = OUTLINED_FUNCTION_68_0();
    *v4 = v5;
  }

  else
  {
    *a1 = v6;
  }

  return result;
}

void sub_1DD2A2D48()
{
  v0 = sub_1DD335CD0();
  if (v1 <= 0x3F)
  {
    v20 = *(v0 - 8) + 64;
    sub_1DD2A32E0(319, &qword_1EE028788);
    if (v3 <= 0x3F)
    {
      v21 = *(v2 - 8) + 64;
      sub_1DD2A32E0(319, &qword_1EE0287B8);
      if (v5 <= 0x3F)
      {
        v22 = *(v4 - 8) + 64;
        sub_1DD2A332C(319, &qword_1EE0287A8, &qword_1ECCD65E8, &qword_1DD3392E8);
        if (v7 <= 0x3F)
        {
          v8 = *(v6 - 8) + 64;
          sub_1DD2A332C(319, &qword_1EE028778, &qword_1ECCD65F0, &qword_1DD3392F0);
          if (v10 <= 0x3F)
          {
            v11 = *(v9 - 8) + 64;
            sub_1DD2A332C(319, &qword_1EE028748, &qword_1ECCD65F8, &qword_1DD3392F8);
            if (v13 <= 0x3F)
            {
              v23 = *(v12 - 8) + 64;
              sub_1DD2A32E0(319, &qword_1EE028768);
              if (v15 <= 0x3F)
              {
                v24 = *(v14 - 8) + 64;
                sub_1DD2A332C(319, &qword_1EE028798, &qword_1ECCD62A0, &unk_1DD338D70);
                if (v17 <= 0x3F)
                {
                  v25 = *(v16 - 8) + 64;
                  sub_1DD2A332C(319, &qword_1EE028758, &qword_1ECCD6600, &unk_1DD339300);
                  if (v19 <= 0x3F)
                  {
                    v26 = *(v18 - 8) + 64;
                    swift_updateClassMetadata2();
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

void sub_1DD2A32E0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Expression();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1DD2A332C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Expression();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DD2A3380()
{
  result = qword_1ECCD6620;
  if (!qword_1ECCD6620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCD6608, &qword_1DD339310);
    sub_1DD28AEE0(&qword_1ECCD6628, MEMORY[0x1E69DAE88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD6620);
  }

  return result;
}

uint64_t sub_1DD2A343C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_127(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_123();
  v9(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_71_1()
{
  v1 = *(v0 - 192);
  v2 = *(*(v0 - 200) + 8);
  return *(v0 - 184);
}

uint64_t OUTLINED_FUNCTION_92()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_96@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_128(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_129(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_131()
{

  type metadata accessor for Table();
}

uint64_t OUTLINED_FUNCTION_133()
{
  v2 = *(v0 - 552);
}

uint64_t OUTLINED_FUNCTION_134(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_1DD2A3680(uint64_t a1)
{
  v2 = sub_1DD335CD0();
  v3 = OUTLINED_FUNCTION_36(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6690, &qword_1DD339390);
  OUTLINED_FUNCTION_36(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - v13;
  sub_1DD27F118(a1, v17 - v13, &qword_1ECCD6690, &qword_1DD339390);
  v17[1] = type metadata accessor for RRBiomeNotificationPuller();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66E8, &qword_1DD339458);
  sub_1DD336630();
  sub_1DD335CC0();
  v15 = sub_1DD2A37D0(v14, v8);
  sub_1DD296084(a1, &qword_1ECCD6690, &qword_1DD339390);
  return v15;
}

uint64_t sub_1DD2A37D0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 96);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6698, &qword_1DD339398);
  __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  swift_beginAccess();
  sub_1DD2A82A8(a1, v2 + v5, &qword_1ECCD6690, &qword_1DD339390);
  swift_endAccess();
  v7 = qword_1EE02A6A0;
  v8 = sub_1DD335CD0();
  (*(*(v8 - 8) + 32))(v2 + v7, a2, v8);
  return v2;
}

uint64_t RRBiomeNotificationPuller.__allocating_init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6690, &qword_1DD339390);
  OUTLINED_FUNCTION_36(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_28_0();
  sub_1DD27D80C(0, &qword_1EE028590, 0x1E698F2B8);
  sub_1DD334A50();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6698, &qword_1DD339398);
  OUTLINED_FUNCTION_20_0(v5);
  v6 = type metadata accessor for RRBiomeNotificationPuller();
  OUTLINED_FUNCTION_51_1(v6);
  return sub_1DD2A3680(v0);
}

uint64_t type metadata accessor for RRBiomeNotificationPuller()
{
  result = qword_1EE028C38;
  if (!qword_1EE028C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD2A39C4()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v27 = v3;
  v4 = sub_1DD334830();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_1();
  v28 = sub_1DD335CA0();
  v10 = OUTLINED_FUNCTION_1_0(v28);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v17 = v16 - v15;
  if (qword_1EE027640 != -1)
  {
    OUTLINED_FUNCTION_14_1();
  }

  v18 = qword_1EE02A1F0;
  sub_1DD335C90();
  sub_1DD336A40();
  v19 = qword_1EE02A1F0;
  OUTLINED_FUNCTION_88();
  sub_1DD335C70();

  v20 = sub_1DD335CB0();
  v21 = sub_1DD336940();
  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_33_0();
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DD27A000, v20, v21, "Entering RRBiomeNotificationPuller...", v22, 2u);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  sub_1DD334790();
  sub_1DD2A3D0C(v0, 30, 0, v27, v2);
  v23 = sub_1DD335CB0();
  v24 = sub_1DD336940();
  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_33_0();
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1DD27A000, v23, v24, "Exiting RRBiomeNotificationPuller...", v25, 2u);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  (*(v7 + 8))(v0, v4);
  sub_1DD336A30();
  v26 = qword_1EE02A1F0;
  sub_1DD335C80();

  (*(v12 + 8))(v17, v28);
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD2A3D0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v40 = a5;
  v38 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66A0, &qword_1DD339410);
  OUTLINED_FUNCTION_1_0(v6);
  v37 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66A8, &qword_1DD339418);
  v13 = OUTLINED_FUNCTION_36(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v37 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = MEMORY[0x1E69E7CC0];
  v22 = OUTLINED_FUNCTION_123();
  sub_1DD2A6CF4(v22, v23, v24, v25, 0, v26);
  sub_1DD27F118(v20, v18, &qword_1ECCD66A8, &qword_1DD339418);
  if (__swift_getEnumTagSinglePayload(v18, 1, v6) == 1)
  {
    sub_1DD296084(v18, &qword_1ECCD66A8, &qword_1DD339418);
    sub_1DD2A80D0();
    v27 = swift_allocError();
    v38(v27, 1);

    v28 = sub_1DD335CB0();
    v29 = sub_1DD336950();
    if (os_log_type_enabled(v28, v29))
    {
      OUTLINED_FUNCTION_33_0();
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1DD27A000, v28, v29, "Failed to pull notificaton events from Biome stream", v30, 2u);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }
  }

  else
  {
    v31 = v37;
    (*(v37 + 32))(v39, v18, v6);
    v32 = swift_allocObject();
    v33 = v38;
    v32[2] = v5;
    v32[3] = v33;
    v32[4] = v40;
    v32[5] = v21;
    v34 = swift_allocObject();
    *(v34 + 16) = v5;
    *(v34 + 24) = v21;
    sub_1DD288794(&qword_1EE027A28, &qword_1ECCD66A0, &qword_1DD339410);
    swift_retain_n();
    swift_retain_n();
    sub_1DD335860();
    v35 = v39;

    (*(v31 + 8))(v35, v6);
  }

  sub_1DD296084(v20, &qword_1ECCD66A8, &qword_1DD339418);
}

BOOL sub_1DD2A40E8(void *a1)
{
  v1 = [a1 eventBody];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1DD2A81E4(v1, &selRef_bundleID);
  if (v3)
  {

    v4 = 0;
    do
    {
      v5 = v4 == 40;
      if (v4 == 40)
      {
        break;
      }

      v6 = *(&unk_1F589A770 + v4 + 32);
      v4 += 8;
    }

    while (v6 != [v2 usageType]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1DD2A419C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void), uint64_t a4, uint64_t a5)
{
  v7 = sub_1DD335CB0();
  v8 = sub_1DD336940();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DD27A000, v7, v8, "Finished pulling notification stream successfully", v9, 2u);
    MEMORY[0x1E12ADA30](v9, -1, -1);
  }

  swift_beginAccess();
  v10 = *(a5 + 16);

  a3(v11, 0);
}

void sub_1DD2A4290()
{
  OUTLINED_FUNCTION_23_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  OUTLINED_FUNCTION_36(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_10_0();
  v16 = OUTLINED_FUNCTION_1_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_1();
  sub_1DD2A76F0();
  if (v19)
  {
    sub_1DD2A81E4(v0, &selRef_bundleID);
    if (v20)
    {
      v21 = [v0 notificationID];
      sub_1DD3365D0();

      v22 = sub_1DD335E60();
      OUTLINED_FUNCTION_9_2(v22);
      sub_1DD335860();
      OUTLINED_FUNCTION_4_2();
      sub_1DD3361F0();
      v23 = sub_1DD336240();
      OUTLINED_FUNCTION_8_1(v23);
      sub_1DD296084(v2, &qword_1ECCD6348, &unk_1DD338E20);
      sub_1DD2A7844(v1);
      v24 = sub_1DD334830();
      OUTLINED_FUNCTION_42_1(v24);

      v25 = OUTLINED_FUNCTION_26_0();
      v26(v25);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_24_1();
}

void sub_1DD2A44D4()
{
  OUTLINED_FUNCTION_23_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_28_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  OUTLINED_FUNCTION_36(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_10_0();
  v16 = OUTLINED_FUNCTION_1_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_1();
  if (sub_1DD2A7998())
  {
    sub_1DD2A81E4(v1, &selRef_bundleID);
    if (v19)
    {
      v20 = sub_1DD335E60();
      OUTLINED_FUNCTION_9_2(v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C0, &qword_1DD339430);
      v21 = sub_1DD335CE0();
      OUTLINED_FUNCTION_1_0(v21);
      v35 = v0;
      v23 = v22;
      v25 = *(v24 + 72);
      v26 = *(v22 + 80);
      OUTLINED_FUNCTION_29_0();
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1DD339380;
      v28 = *MEMORY[0x1E69D28F8];
      v29 = sub_1DD336130();
      OUTLINED_FUNCTION_1(v29);
      (*(v30 + 104))(v27 + v15, v28);
      (*(v23 + 104))(v27 + v15, *MEMORY[0x1E69D27E8], v21);

      sub_1DD335860();
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_4_2();
      sub_1DD3361E0();
      v31 = sub_1DD336240();
      OUTLINED_FUNCTION_8_1(v31);
      sub_1DD296084(v2, &qword_1ECCD6348, &unk_1DD338E20);
      sub_1DD2A7844(v35);
      v32 = sub_1DD334830();
      OUTLINED_FUNCTION_20_0(v32);
      sub_1DD335FC0();

      v33 = OUTLINED_FUNCTION_26_0();
      v34(v33);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_24_1();
}

void sub_1DD2A47E0()
{
  OUTLINED_FUNCTION_23_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_28_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_17_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  OUTLINED_FUNCTION_36(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_10_0();
  v17 = OUTLINED_FUNCTION_1_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_1();
  if (sub_1DD2A7AE8())
  {
    sub_1DD2A81E4(v1, &selRef_bundleID);
    if (v22)
    {
      v23 = [v1 uniqueID];
      sub_1DD3365D0();

      v24 = sub_1DD335E60();
      OUTLINED_FUNCTION_9_2(v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C0, &qword_1DD339430);
      v37 = v2;
      v25 = sub_1DD335CE0();
      OUTLINED_FUNCTION_1_0(v25);
      v27 = v26;
      v29 = *(v28 + 72);
      v30 = *(v26 + 80);
      OUTLINED_FUNCTION_29_0();
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1DD339380;
      v38 = v19;
      v32 = *MEMORY[0x1E69D28F8];
      v33 = sub_1DD336130();
      OUTLINED_FUNCTION_1(v33);
      (*(v34 + 104))(v31 + v16, v32);
      (*(v27 + 104))(v31 + v16, *MEMORY[0x1E69D27E8], v25);
      sub_1DD335860();
      OUTLINED_FUNCTION_27_0();
      OUTLINED_FUNCTION_4_2();
      sub_1DD3361E0();
      v35 = sub_1DD336240();
      __swift_storeEnumTagSinglePayload(v37, 1, 1, v35);
      sub_1DD336190();
      sub_1DD296084(v37, &qword_1ECCD6348, &unk_1DD338E20);
      sub_1DD2A7844(v0);
      v36 = sub_1DD334830();
      OUTLINED_FUNCTION_20_0(v36);
      sub_1DD335FC0();

      (*(v38 + 8))(v3, v16);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_24_1();
}

void sub_1DD2A4B34()
{
  OUTLINED_FUNCTION_23_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A0, &unk_1DD338D70);
  OUTLINED_FUNCTION_36(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6348, &unk_1DD338E20);
  OUTLINED_FUNCTION_36(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6350, &unk_1DD3396F0);
  OUTLINED_FUNCTION_36(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_28();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_10_0();
  v16 = OUTLINED_FUNCTION_1_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_1();
  if (sub_1DD2A7CB8())
  {
    sub_1DD2A81E4(v0, &selRef_title);
    if (v19)
    {
      sub_1DD2A81E4(v0, &selRef_bundleID);
      if (v20)
      {
        v21 = sub_1DD335E60();
        OUTLINED_FUNCTION_9_2(v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C0, &qword_1DD339430);
        v35 = sub_1DD335CE0();
        OUTLINED_FUNCTION_1_0(v35);
        v23 = v22;
        v25 = *(v24 + 72);
        v26 = *(v22 + 80);
        OUTLINED_FUNCTION_29_0();
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1DD339380;
        v28 = *MEMORY[0x1E69D28F8];
        v29 = sub_1DD336130();
        OUTLINED_FUNCTION_1(v29);
        (*(v30 + 104))(v27 + v1, v28);
        (*(v23 + 104))(v27 + v1, *MEMORY[0x1E69D27E8], v35);
        sub_1DD335860();
        OUTLINED_FUNCTION_27_0();
        OUTLINED_FUNCTION_4_2();
        sub_1DD3361E0();
        v31 = sub_1DD336240();
        OUTLINED_FUNCTION_8_1(v31);
        sub_1DD296084(v2, &qword_1ECCD6348, &unk_1DD338E20);
        sub_1DD2A7844(v1);
        v32 = sub_1DD334830();
        OUTLINED_FUNCTION_42_1(v32);

        v33 = OUTLINED_FUNCTION_26_0();
        v34(v33);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD2A4E60()
{
  OUTLINED_FUNCTION_4();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 120) = v3;
  *(v1 + 24) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66A0, &qword_1DD339410);
  *(v1 + 48) = v5;
  OUTLINED_FUNCTION_69_0(v5);
  *(v1 + 56) = v6;
  v8 = *(v7 + 64) + 15;
  *(v1 + 64) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66A8, &qword_1DD339418);
  OUTLINED_FUNCTION_36(v9);
  v11 = *(v10 + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DD2A4F64()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 120);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = swift_allocObject();
  *(v0 + 88) = v8;
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  sub_1DD2A6CF4(v7, v6, v5 & 1, sub_1DD2A552C, 0, v1);
  sub_1DD27F118(v1, v2, &qword_1ECCD66A8, &qword_1DD339418);
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    v9 = *(v0 + 40);
    sub_1DD296084(*(v0 + 72), &qword_1ECCD66A8, &qword_1DD339418);
    v10 = sub_1DD335CB0();
    v11 = sub_1DD336950();
    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_33_0();
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DD27A000, v10, v11, "Failed to pull notificaton events from Biome stream", v12, 2u);
      OUTLINED_FUNCTION_20();
      MEMORY[0x1E12ADA30]();
    }

    v13 = *(v0 + 80);

    sub_1DD2A80D0();
    swift_allocError();
    swift_willThrow();
    sub_1DD296084(v13, &qword_1ECCD66A8, &qword_1DD339418);

    v15 = *(v0 + 72);
    v14 = *(v0 + 80);
    v16 = *(v0 + 64);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 64);
    v20 = *(v0 + 40);
    (*(*(v0 + 56) + 32))(v19, *(v0 + 72), *(v0 + 48));
    v21 = swift_task_alloc();
    *(v0 + 96) = v21;
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = v8;
    v22 = *(MEMORY[0x1E69E8920] + 4);
    v23 = swift_task_alloc();
    *(v0 + 104) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD62A8, "be");
    *v23 = v0;
    v23[1] = sub_1DD2A5270;
    OUTLINED_FUNCTION_30_0();

    return MEMORY[0x1EEE6DE38](v24, v25, v26, 0xD000000000000023, v27, v28, v21, v29);
  }
}

uint64_t sub_1DD2A5270()
{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 96);

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DD2A539C()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  sub_1DD296084(v0[10], &qword_1ECCD66A8, &qword_1DD339418);
  v6 = v0[2];
  (*(v5 + 8))(v3, v4);

  OUTLINED_FUNCTION_47_0();

  return v7(v6);
}

uint64_t sub_1DD2A5470()
{
  OUTLINED_FUNCTION_48();
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_1DD296084(v0[10], &qword_1ECCD66A8, &qword_1DD339418);
  (*(v3 + 8))(v2, v4);

  v5 = v0[14];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

BOOL sub_1DD2A552C(void *a1)
{
  v1 = [a1 eventBody];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1DD2A81E4(v1, &selRef_bundleID);
  if (v3)
  {

    v4 = 0;
    do
    {
      v5 = v4 == 40;
      if (v4 == 40)
      {
        break;
      }

      v6 = *(&unk_1F589A7B8 + v4 + 32);
      v4 += 8;
    }

    while (v6 != [v2 usageType]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1DD2A55E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  (*(v8 + 16))(&v16 - v10, a1, v7);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  swift_retain_n();
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66A0, &qword_1DD339410);
  sub_1DD288794(&qword_1EE027A28, &qword_1ECCD66A0, &qword_1DD339410);
  v15 = sub_1DD334A00();
}

uint64_t sub_1DD2A57F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DD335CB0();
  v6 = sub_1DD336940();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DD27A000, v5, v6, "Finished pulling notification stream successfully", v7, 2u);
    MEMORY[0x1E12ADA30](v7, -1, -1);
  }

  swift_beginAccess();
  v9 = *(a4 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  return sub_1DD3368B0();
}

void sub_1DD2A58F4()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v105 = sub_1DD334690();
  v2 = OUTLINED_FUNCTION_1_0(v105);
  v104 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  v8 = v7 - v6;
  sub_1DD336A80();
  v106 = v1;
  v107 = v8;
  while (1)
  {
    sub_1DD334680();
    if (!v113)
    {
      break;
    }

    sub_1DD2A81D4(&v112, v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66B8, &dword_1DD339420);
    if (swift_dynamicCast())
    {
      v9 = [v110 eventBody];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1DD2A81E4(v9, &selRef_bundleID);
        if (v12)
        {
          v13 = v11;
          v14 = v12;
          sub_1DD2A4290();
          if (!v15)
          {

            v37 = v10;
            v38 = sub_1DD335CB0();
            v39 = sub_1DD336950();

            if (!OUTLINED_FUNCTION_38_0())
            {

              goto LABEL_66;
            }

            OUTLINED_FUNCTION_50();
            v40 = OUTLINED_FUNCTION_18_0();
            dword_1DD339420 = OUTLINED_FUNCTION_39_0(v40).n128_u32[0];
            v41 = [v37 notificationID];
            sub_1DD3365D0();
            OUTLINED_FUNCTION_32_2();

            v42 = OUTLINED_FUNCTION_35_0();

            unk_1DD339424 = v42;
            _os_log_impl(&dword_1DD27A000, v38, v39, "Failed to build RREntity from notification %s, skipping this one", &dword_1DD339420, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v40);
            v1 = v106;
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();

            goto LABEL_62;
          }

          v16 = v15;
          v109 = v13;
          OUTLINED_FUNCTION_11();
          v17 = v16;
          MEMORY[0x1E12AC640]();
          OUTLINED_FUNCTION_13_0();
          if (v18)
          {
            OUTLINED_FUNCTION_36_1();
          }

          OUTLINED_FUNCTION_19_0();
          sub_1DD336860();
          swift_endAccess();
          v19 = v17;
          v20 = sub_1DD335CB0();
          v21 = sub_1DD336930();

          v108 = v19;
          if (os_log_type_enabled(v20, v21))
          {
            OUTLINED_FUNCTION_50();
            v22 = OUTLINED_FUNCTION_18_0();
            dword_1DD339420 = OUTLINED_FUNCTION_39_0(v22).n128_u32[0];
            v23 = sub_1DD336010();
            v25 = sub_1DD27DBF0(v23, v24, v111);

            unk_1DD339424 = v25;
            _os_log_impl(&dword_1DD27A000, v20, v21, "Pulled notification %s successfully", &dword_1DD339420, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v22);
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();
          }

          sub_1DD2A44D4();
          if (v26)
          {
            v27 = v26;
            OUTLINED_FUNCTION_11();
            v28 = v27;
            MEMORY[0x1E12AC640]();
            OUTLINED_FUNCTION_13_0();
            if (v18)
            {
              OUTLINED_FUNCTION_36_1();
            }

            OUTLINED_FUNCTION_19_0();
            sub_1DD336860();
            swift_endAccess();
            v29 = v28;
            v30 = OUTLINED_FUNCTION_37_1();
            v31 = sub_1DD336930();

            if (os_log_type_enabled(v30, v31))
            {
              v32 = OUTLINED_FUNCTION_50();
              v33 = swift_slowAlloc();
              *v32 = OUTLINED_FUNCTION_39_0(v33).n128_u32[0];
              v34 = sub_1DD336010();
              v36 = sub_1DD27DBF0(v34, v35, v111);

              *(v32 + 4) = v36;
              _os_log_impl(&dword_1DD27A000, v30, v31, "Pulled app entity %s successfully", v32, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              OUTLINED_FUNCTION_20();
              MEMORY[0x1E12ADA30]();
              OUTLINED_FUNCTION_20();
              MEMORY[0x1E12ADA30]();
            }

            else
            {
            }
          }

          else
          {
            v43 = v10;
            v44 = OUTLINED_FUNCTION_37_1();
            v45 = sub_1DD336950();

            if (OUTLINED_FUNCTION_38_0())
            {
              v46 = OUTLINED_FUNCTION_50();
              v47 = swift_slowAlloc();
              *v46 = OUTLINED_FUNCTION_39_0(v47).n128_u32[0];
              v48 = [v43 notificationID];
              v49 = sub_1DD3365D0();
              v51 = v50;

              v52 = sub_1DD27DBF0(v49, v51, v111);

              *(v46 + 4) = v52;
              _os_log_impl(&dword_1DD27A000, v44, v45, "Failed to build app RREntity from notification %s, skipping this one", v46, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v47);
              OUTLINED_FUNCTION_20();
              MEMORY[0x1E12ADA30]();
              OUTLINED_FUNCTION_20();
              MEMORY[0x1E12ADA30]();
            }
          }

          v53 = v109;
          OUTLINED_FUNCTION_46_0();
          v55 = v109 == v54 && 0x80000001DD33D2B0 == v14;
          if (v55 || (OUTLINED_FUNCTION_21_1() & 1) != 0 || ((OUTLINED_FUNCTION_46_0(), v109 == v56 + 2) ? (v57 = 0x80000001DD33D2D0 == v14) : (v57 = 0), v57 || (OUTLINED_FUNCTION_21_1() & 1) != 0 || ((OUTLINED_FUNCTION_46_0(), v109 == v58 - 1) ? (v59 = 0x80000001DD33D2F0 == v14) : (v59 = 0), v59 || (OUTLINED_FUNCTION_21_1() & 1) != 0)))
          {
            sub_1DD2A47E0();
            if (!v60)
            {

              v37 = v10;
              v78 = OUTLINED_FUNCTION_37_1();
              v79 = sub_1DD336950();

              if (OUTLINED_FUNCTION_38_0())
              {
                swift_slowAlloc();
                v80 = OUTLINED_FUNCTION_18_0();
                v81 = [v37 notificationID];
                sub_1DD3365D0();
                OUTLINED_FUNCTION_32_2();

                v1 = OUTLINED_FUNCTION_35_0();

                OUTLINED_FUNCTION_15_0();
                [v37 absoluteTimestamp];
                unk_1DD33942E = v82;
                v83 = v79;
                v84 = v78;
                v85 = "Failed to build RREntity from person entity in notification %s with timestamp %f";
                goto LABEL_61;
              }

              goto LABEL_63;
            }

            v61 = v60;
            OUTLINED_FUNCTION_11();
            v62 = v61;
            MEMORY[0x1E12AC640]();
            OUTLINED_FUNCTION_13_0();
            if (v18)
            {
              OUTLINED_FUNCTION_36_1();
            }

            OUTLINED_FUNCTION_19_0();
            sub_1DD336860();
            swift_endAccess();
            v63 = v10;
            v64 = v62;
            v65 = OUTLINED_FUNCTION_37_1();
            v66 = sub_1DD336930();

            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              *&v111[0] = swift_slowAlloc();
              *v67 = 136315650;
              v68 = sub_1DD336010();
              v70 = sub_1DD27DBF0(v68, v69, v111);

              *(v67 + 4) = v70;
              *(v67 + 12) = 2080;
              v71 = [v63 notificationID];
              v72 = sub_1DD3365D0();
              v74 = v73;

              v75 = v72;
              v1 = v106;
              v76 = sub_1DD27DBF0(v75, v74, v111);

              *(v67 + 14) = v76;
              *(v67 + 22) = 2048;
              [v63 absoluteTimestamp];
              *(v67 + 24) = v77;
              _os_log_impl(&dword_1DD27A000, v65, v66, "Pulled person entity %s from notification %s with timestamp %f successfully", v67, 0x20u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_20();
              MEMORY[0x1E12ADA30]();
              OUTLINED_FUNCTION_20();
              MEMORY[0x1E12ADA30]();
            }

            else
            {
            }

            v53 = v109;
          }

          OUTLINED_FUNCTION_46_0();
          if (v53 == v86 && 0x80000001DD33D310 == v14)
          {
          }

          else
          {
            v88 = OUTLINED_FUNCTION_21_1();

            if ((v88 & 1) == 0)
            {

              goto LABEL_66;
            }
          }

          sub_1DD2A4B34();
          if (v89)
          {
            v90 = v89;
            OUTLINED_FUNCTION_11();
            v91 = v90;
            MEMORY[0x1E12AC640]();
            sub_1DD2A27E0(*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
            sub_1DD336860();
            swift_endAccess();
            v92 = v10;
            v93 = OUTLINED_FUNCTION_37_1();
            v94 = sub_1DD336930();

            if (OUTLINED_FUNCTION_38_0())
            {
              swift_slowAlloc();
              v95 = OUTLINED_FUNCTION_18_0();
              v96 = [v92 notificationID];
              v97 = sub_1DD3365D0();
              v99 = v98;

              v1 = sub_1DD27DBF0(v97, v99, v111);

              OUTLINED_FUNCTION_15_0();
              [v92 absoluteTimestamp];
              unk_1DD33942E = v100;
              _os_log_impl(&dword_1DD27A000, v93, v94, "Pulled calendarEvent entity from notification %s with timestamp %f successfully", &dword_1DD339420, 0x16u);
              __swift_destroy_boxed_opaque_existential_1(v95);
              OUTLINED_FUNCTION_20();
              MEMORY[0x1E12ADA30]();
              OUTLINED_FUNCTION_20();
              MEMORY[0x1E12ADA30]();

              goto LABEL_66;
            }

            goto LABEL_65;
          }

          v37 = v10;
          v78 = OUTLINED_FUNCTION_37_1();
          v101 = sub_1DD336950();

          if (OUTLINED_FUNCTION_38_0())
          {
            swift_slowAlloc();
            v80 = OUTLINED_FUNCTION_18_0();
            v102 = [v37 notificationID];
            sub_1DD3365D0();
            OUTLINED_FUNCTION_32_2();

            v1 = OUTLINED_FUNCTION_35_0();

            OUTLINED_FUNCTION_15_0();
            [v37 absoluteTimestamp];
            unk_1DD33942E = v103;
            v83 = v101;
            v84 = v78;
            v85 = "Failed to build RREntity from calendarEvent entity in notification %s with timestamp %f";
LABEL_61:
            _os_log_impl(&dword_1DD27A000, v84, v83, v85, &dword_1DD339420, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v80);
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();
            OUTLINED_FUNCTION_20();
            MEMORY[0x1E12ADA30]();

LABEL_62:
            goto LABEL_66;
          }

LABEL_63:

LABEL_65:
LABEL_66:

          v8 = v107;
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  (*(v104 + 8))(v8, v105);
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD2A6538()
{
  OUTLINED_FUNCTION_4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1DD334830();
  v1[4] = v3;
  OUTLINED_FUNCTION_69_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  v7 = sub_1DD335CA0();
  v1[7] = v7;
  OUTLINED_FUNCTION_69_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64) + 15;
  v1[9] = swift_task_alloc();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DD2A663C()
{
  if (qword_1EE027640 != -1)
  {
    OUTLINED_FUNCTION_14_1();
  }

  v1 = v0[9];
  v2 = v0[3];
  v3 = qword_1EE02A1F0;
  sub_1DD335C90();
  sub_1DD336A40();
  v4 = qword_1EE02A1F0;
  OUTLINED_FUNCTION_88();
  sub_1DD335C70();

  v5 = sub_1DD335CB0();
  v6 = sub_1DD336940();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_33_0();
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1DD27A000, v5, v6, "Entering RRBiomeNotificationPuller...", v7, 2u);
    OUTLINED_FUNCTION_20();
    MEMORY[0x1E12ADA30]();
  }

  v8 = v0[6];
  v9 = v0[2];

  sub_1DD334790();
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_1DD2A6804;
  v11 = v0[6];
  v12 = v0[3];

  return sub_1DD2A4E60();
}

uint64_t sub_1DD2A6804()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v3;
  }

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DD2A691C()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3(v2);
  sub_1DD2A6A74();
  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);

  OUTLINED_FUNCTION_47_0();
  v8 = *(v0 + 96);

  return v7(v8);
}

uint64_t sub_1DD2A69C8()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3(v2);
  sub_1DD2A6A74();
  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);

  v7 = *(v0 + 8);
  v8 = *(v0 + 88);

  return v7();
}

void sub_1DD2A6A74()
{
  sub_1DD336A30();
  if (qword_1EE027640 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE02A1F0;
  sub_1DD335C80();

  oslog = sub_1DD335CB0();
  v1 = sub_1DD336940();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1DD27A000, oslog, v1, "Exiting RRBiomeNotificationPuller...", v2, 2u);
    MEMORY[0x1E12ADA30](v2, -1, -1);
  }
}

uint64_t RRBiomeNotificationPuller.deinit()
{
  v1 = qword_1EE02A6A0;
  v2 = sub_1DD335CD0();
  OUTLINED_FUNCTION_1(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1DD296084(v0 + *(*v0 + 96), &qword_1ECCD6690, &qword_1DD339390);
  return v0;
}

uint64_t RRBiomeNotificationPuller.__deallocating_deinit()
{
  v1 = qword_1EE02A6A0;
  v2 = sub_1DD335CD0();
  OUTLINED_FUNCTION_1(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1DD296084(v0 + *(*v0 + 96), &qword_1ECCD6690, &qword_1DD339390);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t sub_1DD2A6CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v63 = a5;
  v64 = a4;
  v73 = a3;
  v68 = a2;
  v72 = a1;
  v75 = a6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66C8, &qword_1DD339438);
  v67 = *(v71 - 8);
  v8 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v66 = &v58 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66D0, &qword_1DD339440);
  v65 = *(v62 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v69 = &v58 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66D8, &qword_1DD339448);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v58 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6698, &qword_1DD339398);
  v70 = *(v19 - 8);
  v20 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v58 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6690, &qword_1DD339390);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v58 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66E0, &qword_1DD339450);
  v74 = *(v27 - 8);
  v28 = *(v74 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v58 - v32;
  v34 = *(*v7 + 96);
  swift_beginAccess();
  sub_1DD27F118(v7 + v34, v26, &qword_1ECCD6690, &qword_1DD339390);
  if (__swift_getEnumTagSinglePayload(v26, 1, v19))
  {
    sub_1DD296084(v26, &qword_1ECCD6690, &qword_1DD339390);
    v35 = v75;
LABEL_5:
    v40 = sub_1DD335CB0();
    v41 = sub_1DD336930();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1DD27A000, v40, v41, "Notification stream init failed.", v42, 2u);
      MEMORY[0x1E12ADA30](v42, -1, -1);
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66A0, &qword_1DD339410);
    return __swift_storeEnumTagSinglePayload(v35, 1, 1, v43);
  }

  v61 = v16;
  v36 = v18;
  v37 = v70;
  v38 = v71;
  (*(v70 + 16))(v22, v26, v19);
  sub_1DD296084(v26, &qword_1ECCD6690, &qword_1DD339390);
  sub_1DD334780();
  sub_1DD288794(&qword_1EE027A18, &qword_1ECCD6698, &qword_1DD339398);
  sub_1DD334A60();
  (*(v37 + 8))(v22, v19);
  v39 = v74;
  (*(v74 + 32))(v33, v31, v27);
  v35 = v75;
  if (v73)
  {
    (*(v39 + 8))(v33, v27);
    goto LABEL_5;
  }

  v45 = v36;
  v46 = v38;
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v38);
  v47 = v64;
  v60 = v27;
  v59 = v33;
  if (v64)
  {
    sub_1DD288794(&qword_1EE027A20, &qword_1ECCD66E0, &qword_1DD339450);
    sub_1DD335860();
    v48 = v61;
    sub_1DD334A20();
    sub_1DD27EBC8(v47);
  }

  else
  {
    sub_1DD288794(&qword_1EE027A20, &qword_1ECCD66E0, &qword_1DD339450);
    v48 = v61;
    sub_1DD334A20();
  }

  v49 = v65;
  v50 = v66;
  v51 = v69;
  v52 = 1;
  __swift_storeEnumTagSinglePayload(v48, 0, 1, v46);
  sub_1DD2A82A8(v48, v45, &qword_1ECCD66D8, &qword_1DD339448);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v46);
  v54 = v67;
  if (!EnumTagSinglePayload)
  {
    (*(v67 + 16))(v50, v45, v46);
    sub_1DD288794(&qword_1EE027A30, &qword_1ECCD66C8, &qword_1DD339438);
    sub_1DD334A10();
    (*(v54 + 8))(v50, v46);
    v55 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
    sub_1DD27D80C(0, &qword_1EE027550, 0x1E695DF70);
    sub_1DD288794(&qword_1EE027A38, &qword_1ECCD66D0, &qword_1DD339440);
    v56 = v62;
    sub_1DD334A30();

    (*(v49 + 8))(v51, v56);
    v52 = 0;
  }

  (*(v74 + 8))(v59, v60);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66A0, &qword_1DD339410);
  __swift_storeEnumTagSinglePayload(v35, v52, 1, v57);
  return sub_1DD296084(v45, &qword_1ECCD66D8, &qword_1DD339448);
}

uint64_t sub_1DD2A7544()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DD2A75DC;

  return sub_1DD2A6538();
}

uint64_t sub_1DD2A75DC()
{
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  OUTLINED_FUNCTION_47_0();
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

void sub_1DD2A76F0()
{
  OUTLINED_FUNCTION_23_0();
  v1 = v0;
  v2 = sub_1DD334C50();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_31_3();
  v8 = sub_1DD335420();
  OUTLINED_FUNCTION_51_1(v8);
  v9 = sub_1DD335410();
  sub_1DD2A81E4(v1, &selRef_bundleID);
  if (v10)
  {
    v11 = [v1 notificationID];
    sub_1DD3365D0();
    OUTLINED_FUNCTION_32_2();

    sub_1DD334C30();
    sub_1DD334BA0();
    v12 = *(v5 + 8);
    v13 = OUTLINED_FUNCTION_19_0();
    v14(v13);
    MEMORY[0x1E12AABB0](v9);
  }

  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DD2A7844@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DD334830();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  [v2 absoluteTimestamp];
  sub_1DD334770();
  sub_1DD334820();
  LOBYTE(v2) = sub_1DD3347B0();
  v15 = *(v7 + 8);
  v15(v12, v4);
  if (v2)
  {
    return (*(v7 + 32))(a1, v14, v4);
  }

  sub_1DD334820();
  v17 = OUTLINED_FUNCTION_19_0();
  return (v15)(v17);
}

uint64_t sub_1DD2A7998()
{
  v1 = v0;
  v2 = sub_1DD334C50();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_31_3();
  v8 = sub_1DD334E00();
  OUTLINED_FUNCTION_51_1(v8);
  v9 = sub_1DD334DF0();
  sub_1DD2A81E4(v1, &selRef_bundleID);
  if (v10)
  {
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_41_0();
    sub_1DD334C30();
    sub_1DD334BA0();
    v11 = *(v5 + 8);
    v12 = OUTLINED_FUNCTION_19_0();
    v13(v12);
    OUTLINED_FUNCTION_41_0();
    sub_1DD334DE0();

    v14 = MEMORY[0x1E12AABB0](v9);
  }

  else
  {

    return 0;
  }

  return v14;
}

uint64_t sub_1DD2A7AE8()
{
  sub_1DD2A81E4(v0, &selRef_bundleID);
  if (!v1)
  {
    return 0;
  }

  sub_1DD2A81E4(v0, &selRef_threadID);
  if (!v2)
  {
    goto LABEL_5;
  }

  if ([v0 isGroupMessage])
  {

LABEL_5:

    return 0;
  }

  OUTLINED_FUNCTION_41_0();
  if ((sub_1DD336670() & 1) == 0)
  {
    sub_1DD2A81E4(v0, &selRef_title);
    if (v4)
    {
    }
  }

  v5 = [v0 uniqueID];
  sub_1DD3365D0();
  OUTLINED_FUNCTION_32_2();

  OUTLINED_FUNCTION_41_0();
  v6 = sub_1DD335D80();

  if (!v6)
  {
    return 0;
  }

  sub_1DD2A81E4(v0, &selRef_title);
  if (v7)
  {
    sub_1DD336680();
    v8 = sub_1DD336690();

    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_43();
      if ((sub_1DD3366A0() & 1) == 0)
      {
        OUTLINED_FUNCTION_43();
        sub_1DD3350A0();
      }
    }
  }

  if (!sub_1DD335090() && !sub_1DD335060())
  {

    return 0;
  }

  v9 = MEMORY[0x1E12AABB0](v6);

  return v9;
}

uint64_t sub_1DD2A7CB8()
{
  v1 = sub_1DD334C50();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_31_3();
  sub_1DD2A81E4(v0, &selRef_bundleID);
  if (!v7)
  {
    return 0;
  }

  sub_1DD2A81E4(v0, &selRef_title);
  if (!v8)
  {

    return 0;
  }

  v9 = sub_1DD3354F0();
  OUTLINED_FUNCTION_51_1(v9);
  v10 = sub_1DD3354E0();
  sub_1DD3354B0();
  sub_1DD334C30();
  sub_1DD334BA0();
  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_19_0();
  v13(v12);
  v14 = MEMORY[0x1E12AABB0](v10);

  return v14;
}

id sub_1DD2A7E10(void *a1, uint64_t a2)
{
  [a1 addObject_];

  return a1;
}

uint64_t dispatch thunk of RRBiomeNotificationPuller.pull(at:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = *(*v0 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1DD2A7FE4;

  return v8(v3);
}

uint64_t sub_1DD2A7FE4()
{
  OUTLINED_FUNCTION_4();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_0();
  *v5 = v4;

  OUTLINED_FUNCTION_47_0();

  return v6(v2);
}

unint64_t sub_1DD2A80D0()
{
  result = qword_1ECCD66B0;
  if (!qword_1ECCD66B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCD66B0);
  }

  return result;
}

uint64_t sub_1DD2A8130(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6340, &qword_1DD338E18);
  OUTLINED_FUNCTION_69_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1DD2A57F8(a1, v9, v1 + v8, v10);
}

_OWORD *sub_1DD2A81D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DD2A81E4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1DD3365D0();
  }

  return OUTLINED_FUNCTION_123();
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1DD2A828C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DD2A58F4();
}

uint64_t sub_1DD2A82A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_127(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_123();
  v9(v8);
  return v4;
}

uint64_t OUTLINED_FUNCTION_37_1()
{
  v3 = v0 + *(v1 - 176);

  return sub_1DD335CB0();
}

BOOL OUTLINED_FUNCTION_38_0()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t sub_1DD2A8328(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1DD335860();
  return sub_1DD2A838C(v4);
}

uint64_t sub_1DD2A8354()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  return sub_1DD335860();
}

uint64_t sub_1DD2A838C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1DD2A8458@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DD2A84C8();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DD2A8484(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1DD28B474(*a1, *(a1 + 8));
  return sub_1DD2807F0();
}

uint64_t sub_1DD2A84C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66F0, &qword_1DD339470);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_2(&qword_1EE0279F8);
  sub_1DD335830();

  return v1;
}

void (*sub_1DD2A8568(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66F0, &qword_1DD339470);
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  OUTLINED_FUNCTION_1_2(&qword_1EE0279F8);
  v2[6] = sub_1DD335820();
  return sub_1DD2A8630;
}

void sub_1DD2A8630(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1DD2A8698(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66F8, &qword_1DD3394C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1);
  v9 = *a2;
  return sub_1DD2A87C4(v7);
}

uint64_t sub_1DD2A876C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  sub_1DD335860();
  sub_1DD335800();
}

uint64_t sub_1DD2A87C4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66F8, &qword_1DD3394C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  swift_beginAccess();
  v8 = *(v1 + 24);
  (*(v4 + 16))(v7, a1, v3);
  sub_1DD335860();
  sub_1DD335810();

  return (*(v4 + 8))(a1, v3);
}

void (*sub_1DD2A88E4(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD66F8, &qword_1DD3394C0);
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  sub_1DD2A876C();
  return sub_1DD2A89C4;
}

void sub_1DD2A89C4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_1DD2A87C4(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    sub_1DD2A87C4((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1DD2A8B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ScopedReferenceResolutionDataProvider();

  return MEMORY[0x1EEE412A0](a1, v5, a3);
}

uint64_t sub_1DD2A8B98()
{
  type metadata accessor for ScopedReferenceResolutionDataProvider();

  return sub_1DD335860();
}

uint64_t sub_1DD2A8BE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD335860();
  return SiriEnvironment.scopedReferenceResolutionData.setter();
}

uint64_t SiriEnvironment.scopedReferenceResolutionData.setter()
{
  type metadata accessor for ScopedReferenceResolutionDataProvider();
  OUTLINED_FUNCTION_0_1(&qword_1EE0279F0);

  return sub_1DD335770();
}

uint64_t (*SiriEnvironment.scopedReferenceResolutionData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  a1[2] = type metadata accessor for ScopedReferenceResolutionDataProvider();
  a1[3] = OUTLINED_FUNCTION_0_1(&qword_1EE0279F0);
  *a1 = sub_1DD335760();
  return sub_1DD2A8CE4;
}

uint64_t sub_1DD2A8CE4(uint64_t *a1, char a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    v6 = *a1;
    sub_1DD335860();
    sub_1DD335770();
  }

  else
  {
    v8 = *a1;
    return sub_1DD335770();
  }
}

BOOL sub_1DD2A8F28(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t RRContextKitPuller.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  RRContextKitPuller.init()();
  return v3;
}

uint64_t RRContextKitPuller.init()()
{
  v1 = sub_1DD335CD0();
  v2 = OUTLINED_FUNCTION_1_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  v10 = v0 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_featureFlags;
  *(v10 + 24) = &type metadata for SRRFeatureFlagsImpl;
  *(v10 + 32) = &protocol witness table for SRRFeatureFlagsImpl;
  *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_wikiPersons) = MEMORY[0x1E69E7CC0];
  v11 = (v0 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_title);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_rrVisualGroups;
  sub_1DD335E20();
  *(v0 + v12) = sub_1DD336530();
  v13 = [objc_opt_self() clientWithDefaultRequestType_];
  *(v0 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_client) = v13;
  type metadata accessor for RRContextKitPuller();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6700, &unk_1DD3395F0);
  sub_1DD336630();
  sub_1DD335CC0();
  (*(v4 + 32))(v0 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_logger, v9, v1);
  return v0;
}

uint64_t sub_1DD2A91C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v123 = a1;
  v126 = sub_1DD334830();
  v7 = OUTLINED_FUNCTION_1_0(v126);
  v125 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v122 = v11;
  OUTLINED_FUNCTION_6_1(v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = sub_1DD3363A0();
  v12 = OUTLINED_FUNCTION_1_0(v136);
  v135 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(v16);
  v134 = sub_1DD336420();
  v17 = OUTLINED_FUNCTION_1_0(v134);
  v133 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_6_1(v22);
  v23 = sub_1DD3363C0();
  v24 = OUTLINED_FUNCTION_1_0(v23);
  v127 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_3_2();
  v142 = v28;
  v29 = sub_1DD3369C0();
  v30 = OUTLINED_FUNCTION_1_0(v29);
  v140 = v31;
  v141 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(v34);
  v35 = sub_1DD336980();
  v36 = OUTLINED_FUNCTION_1(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(v39);
  v121 = sub_1DD336400();
  v40 = OUTLINED_FUNCTION_1_0(v121);
  v120 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_12();
  v46 = v45 - v44;
  v47 = sub_1DD335CA0();
  v48 = OUTLINED_FUNCTION_1_0(v47);
  v138 = v49;
  v139 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_12();
  v54 = v53 - v52;
  if (qword_1EE027830 != -1)
  {
    OUTLINED_FUNCTION_38_1();
  }

  v143 = a2;
  v144 = v23;
  v146 = a3;
  v55 = qword_1EE02A238;
  sub_1DD335C90();
  sub_1DD336A40();
  v56 = qword_1EE02A238;
  v57 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_55_0();
  v137 = v54;
  sub_1DD335C70();

  v130 = OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_logger;
  v58 = sub_1DD335CB0();
  v59 = sub_1DD336940();
  if (OUTLINED_FUNCTION_51(v59))
  {
    v60 = OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_122(v60);
    OUTLINED_FUNCTION_37(&dword_1DD27A000, v61, v62, "Entering RRContextKitPuller...");
    OUTLINED_FUNCTION_52_0();
  }

  OUTLINED_FUNCTION_60();
  v145 = swift_allocObject();
  *(v145 + 16) = v57;
  v63 = v57;
  v64 = [*(v4 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_client) newRequest];
  [v64 setIncludeStructuredExtractionResults_];
  sub_1DD27D80C(0, &qword_1EE028598, 0x1E69E9610);
  sub_1DD3363E0();
  aBlock = v63;
  sub_1DD295558(&qword_1EE0285A0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6708, &qword_1DD339E50);
  sub_1DD27F454(&qword_1EE0285E8, &qword_1ECCD6708, &qword_1DD339E50);
  sub_1DD336B10();
  (*(v140 + 104))(v129, *MEMORY[0x1E69E8090], v141);
  v119 = v46;
  v65 = sub_1DD336A10();
  OUTLINED_FUNCTION_60();
  v66 = swift_allocObject();
  v67 = dispatch_group_create();
  *(v66 + 16) = v67;
  v128 = (v66 + 16);
  dispatch_group_enter(v67);
  OUTLINED_FUNCTION_60();
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  v69 = swift_allocObject();
  *(v69 + 16) = v68;
  *(v69 + 24) = v66;
  v153 = sub_1DD2B2F30;
  v154 = v69;
  aBlock = MEMORY[0x1E69E9820];
  v150 = 1107296256;
  v151 = sub_1DD2A9E90;
  v152 = &block_descriptor_0;
  v70 = _Block_copy(&aBlock);
  sub_1DD335860();
  sub_1DD335860();

  v129 = v64;
  [v64 executeWithReply_];
  _Block_release(v70);
  OUTLINED_FUNCTION_63();
  v71 = swift_allocObject();
  v71[2] = v4;
  v71[3] = v66;
  v72 = v146;
  v71[4] = v143;
  v71[5] = v72;
  v153 = sub_1DD2B2F38;
  v154 = v71;
  aBlock = MEMORY[0x1E69E9820];
  v150 = 1107296256;
  v118[3] = &v151;
  v151 = sub_1DD2811BC;
  v152 = &block_descriptor_15;
  _Block_copy(&aBlock);
  v148 = MEMORY[0x1E69E7CC0];
  v73 = sub_1DD295558(&qword_1EE027F38, MEMORY[0x1E69E7F60]);
  v140 = v66;
  sub_1DD335860();
  v141 = v4;
  sub_1DD335860();
  sub_1DD335860();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCD6710, &qword_1DD339620);
  OUTLINED_FUNCTION_31_4();
  v78 = sub_1DD27F454(v75, v76, v77);
  v118[1] = v74;
  v118[0] = v78;
  v118[2] = v73;
  sub_1DD336B10();
  v79 = sub_1DD336460();
  OUTLINED_FUNCTION_59(v79);
  v80 = swift_allocObject();
  v81 = sub_1DD336440();

  OUTLINED_FUNCTION_80_0(&v155);
  sub_1DD336410();
  v82 = v132;
  *v132 = 1000;
  v83 = *MEMORY[0x1E69E7F38];
  OUTLINED_FUNCTION_110_0(&v156);
  v85 = v136;
  (*(v84 + 104))(v82);
  v86 = v131;
  v87 = OUTLINED_FUNCTION_113();
  MEMORY[0x1E12AC2C0](v87);
  (*(v80 + 8))(v82, v85);
  v88 = (v133 + 8);
  v89 = *(v133 + 8);
  v90 = v66;
  v91 = v81;
  v92 = v134;
  v89(v90, v134);
  v93 = v65;
  sub_1DD336990();
  v89(v86, v92);
  v94 = v128;
  OUTLINED_FUNCTION_106();
  swift_beginAccess();
  if (*v94)
  {
    v95 = v125;
    v136 = *v94;
    v96 = v124;
    v97 = v126;
    (*(v125 + 16))(v124, v123, v126);
    v98 = (*(v95 + 80) + 72) & ~*(v95 + 80);
    v99 = swift_allocObject();
    v99[2] = v91;
    v99[3] = v68;
    v100 = v143;
    v99[4] = v141;
    v99[5] = v100;
    v101 = v145;
    v102 = v140;
    v99[6] = v146;
    v99[7] = v102;
    v99[8] = v101;
    v103 = v99 + v98;
    v93 = v65;
    (*(v95 + 32))(v103, v96, v97);
    v153 = sub_1DD2B2F44;
    v154 = v99;
    aBlock = MEMORY[0x1E69E9820];
    v150 = 1107296256;
    v151 = sub_1DD2811BC;
    v152 = &block_descriptor_21;
    v88 = _Block_copy(&aBlock);
    sub_1DD335860();
    sub_1DD335860();
    sub_1DD335860();
    sub_1DD335860();
    OUTLINED_FUNCTION_42_2();
    v105 = v104;
    sub_1DD335860();
    sub_1DD335860();
    v106 = v119;
    sub_1DD3363E0();
    v147 = MEMORY[0x1E69E7CC0];
    v107 = v142;
    v108 = v144;
    sub_1DD336B10();
    sub_1DD336970();
    _Block_release(v88);

    OUTLINED_FUNCTION_41_1();
    v109(v107, v108);
    OUTLINED_FUNCTION_21(&aBlock);
    v110(v106, v121);
  }

  v111 = v141 + v130;
  v112 = sub_1DD335CB0();
  v113 = sub_1DD336940();
  if (OUTLINED_FUNCTION_51(v113))
  {
    v114 = OUTLINED_FUNCTION_69();
    OUTLINED_FUNCTION_68(v114);
    _os_log_impl(&dword_1DD27A000, v112, v111, "Exiting RRContextKitPuller...", v88, 2u);
    OUTLINED_FUNCTION_28_1();
  }

  sub_1DD336A30();
  v115 = qword_1EE02A238;
  OUTLINED_FUNCTION_55_0();
  v116 = v137;
  sub_1DD335C80();

  return (*(v138 + 8))(v116, v139);
}

void sub_1DD2A9E14(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;
  v7 = a1;

  swift_beginAccess();
  v8 = *(a3 + 16);
  if (v8)
  {
    dispatch_group_leave(v8);
  }
}

void sub_1DD2A9E90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1DD335860();
  v5 = a2;
  v4(a2);
}

void sub_1DD2A9EFC(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v5 = sub_1DD335CB0();
  v6 = sub_1DD336950();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = 1000;
    _os_log_impl(&dword_1DD27A000, v5, v6, "Pulling on-screen content from ContextKit has timed out after %ld ms", v7, 0xCu);
    MEMORY[0x1E12ADA30](v7, -1, -1);
  }

  swift_beginAccess();
  v8 = *(a2 + 16);
  *(a2 + 16) = 0;

  sub_1DD2B3F80();
  v9 = swift_allocError();
  a3(v9, 1);
}

void sub_1DD2AA01C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1DD336450();
  swift_beginAccess();
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = [v13 error];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1DD335CB0();
      v17 = sub_1DD336950();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v126 = v19;
        *v18 = 136315138;
        swift_getErrorValue();
        v20 = sub_1DD336E40();
        v22 = sub_1DD27DBF0(v20, v21, &v126);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_1DD27A000, v16, v17, "Failed to pull on-screen content from ContextKit, error: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x1E12ADA30](v19, -1, -1);
        MEMORY[0x1E12ADA30](v18, -1, -1);
      }

      sub_1DD2B4028();
      v23 = swift_allocError();
      *v24 = 0;
      a4(v23, 1);

      return;
    }
  }

  swift_beginAccess();
  v25 = *(a2 + 16);
  if (!v25)
  {
    goto LABEL_15;
  }

  v26 = sub_1DD2B3D3C(v25);
  if (!v26)
  {
    goto LABEL_15;
  }

  v114 = v26;
  swift_beginAccess();
  v27 = *(a2 + 16);
  if (!v27)
  {

LABEL_15:
    swift_beginAccess();
    v30 = *(a6 + 16);
    *(a6 + 16) = 0;

    v31 = sub_1DD335CB0();
    v32 = sub_1DD336930();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DD27A000, v31, v32, "ContextKit does not have any on-screen content extracted, returning...", v33, 2u);
      MEMORY[0x1E12ADA30](v33, -1, -1);
    }

    swift_beginAccess();
    v34 = *(a7 + 16);
LABEL_81:

    a4(v110, 0);

    return;
  }

  v116 = 0x6E776F6E6B6E55;
  [v27 availableLayoutSize];
  swift_beginAccess();
  v28 = *(a2 + 16);
  if (v28 && (v29 = sub_1DD2B3CD8(v28)) != 0)
  {
    if (v29[2])
    {
      v116 = v29[4];
      v117 = v29[5];
    }

    else
    {
      v117 = 0xE700000000000000;
    }
  }

  else
  {
    v117 = 0xE700000000000000;
  }

  v35 = sub_1DD335CB0();
  v36 = sub_1DD336940();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_1DD27A000, v35, v36, "Processing results...", v37, 2u);
    MEMORY[0x1E12ADA30](v37, -1, -1);
  }

  v119 = a7;
  v120 = a3;
  v115 = sub_1DD287354();
  if (v115)
  {
    v38 = 0;
    v111 = a8;
    do
    {
      if ((v114 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1E12ACA60](v38, v114);
      }

      else
      {
        if (v38 >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_84;
        }

        v39 = *(v114 + 32 + 8 * v38);
      }

      v40 = v39;
      v41 = __OFADD__(v38, 1);
      v42 = v38 + 1;
      if (v41)
      {
        goto LABEL_83;
      }

      v118 = v42;
      v43 = sub_1DD2AB0A8(v39, v116, v117, a8);
      v44 = v43;
      v113 = v40;
      if (v43)
      {
        if (v43 >> 62)
        {
          v45 = sub_1DD336B60();
          if (v45)
          {
LABEL_32:
            if (v45 < 1)
            {
              goto LABEL_87;
            }

            v46 = 0;
            v122 = v44 & 0xC000000000000001;
            do
            {
              if (v122)
              {
                v47 = MEMORY[0x1E12ACA60](v46, v44);
              }

              else
              {
                v47 = *(v44 + 8 * v46 + 32);
              }

              v48 = v47;
              swift_beginAccess();
              v49 = v48;
              MEMORY[0x1E12AC640]();
              if (*((*(a7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a7 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1DD336830();
              }

              sub_1DD336860();
              swift_endAccess();
              v50 = v49;
              v51 = sub_1DD335CB0();
              v52 = sub_1DD336930();

              if (os_log_type_enabled(v51, v52))
              {
                v53 = swift_slowAlloc();
                v121 = swift_slowAlloc();
                v125[0] = v121;
                *v53 = 136315394;
                v54 = sub_1DD336010();
                v56 = sub_1DD27DBF0(v54, v55, v125);

                *(v53 + 4) = v56;
                *(v53 + 12) = 2080;
                sub_1DD335ED0();
                v57 = sub_1DD335700();
                v58 = v44;
                v59 = v45;
                v61 = v60;

                v62 = v57;
                a3 = v120;
                v63 = sub_1DD27DBF0(v62, v61, v125);
                v45 = v59;
                v44 = v58;

                *(v53 + 14) = v63;
                _os_log_impl(&dword_1DD27A000, v51, v52, "Pulled on-screen content %s of type %s successfully", v53, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x1E12ADA30](v121, -1, -1);
                v64 = v53;
                a7 = v119;
                MEMORY[0x1E12ADA30](v64, -1, -1);
              }

              else
              {
              }

              ++v46;
            }

            while (v45 != v46);

            a8 = v111;
            goto LABEL_44;
          }
        }

        else
        {
          v45 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v45)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        v65 = v40;
        v66 = sub_1DD335CB0();
        v67 = sub_1DD336930();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v125[0] = v69;
          *v68 = 136315138;
          v70 = [v65 title];
          v71 = sub_1DD3365D0();
          v73 = v72;

          v74 = sub_1DD27DBF0(v71, v73, v125);
          a8 = v111;

          *(v68 + 4) = v74;
          a7 = v119;
          _os_log_impl(&dword_1DD27A000, v66, v67, "On-screen content %s does not contain necessary tags, skipping this one", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v69);
          v75 = v69;
          a3 = v120;
          MEMORY[0x1E12ADA30](v75, -1, -1);
          MEMORY[0x1E12ADA30](v68, -1, -1);
        }
      }

LABEL_44:
      v38 = v118;
    }

    while (v118 != v115);
  }

  v76 = *(a3 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_title + 8);
  if (v76)
  {
    v124 = *(a3 + OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_title);
    v77 = OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_wikiPersons;
    swift_beginAccess();
    v78 = *(a3 + v77);
    if (sub_1DD287354())
    {
      v123 = v77;
      v79 = *(a3 + v77);
      v80 = sub_1DD287354();

      for (i = 0; ; ++i)
      {
        if (v80 == i)
        {

          v85 = v123;
          goto LABEL_64;
        }

        if ((v79 & 0xC000000000000001) != 0)
        {
          v82 = MEMORY[0x1E12ACA60](i, v79);
        }

        else
        {
          if (i >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_86;
          }

          v82 = *(v79 + 8 * i + 32);
        }

        v83 = v82;
        if (__OFADD__(i, 1))
        {
          goto LABEL_85;
        }

        v125[0] = v124;
        v125[1] = v76;
        sub_1DD336010();
        sub_1DD2B3FD4();
        v84 = sub_1DD336B00();

        if (v84)
        {
          break;
        }

        a3 = v120;
      }

      a3 = v120;
      v85 = v123;
      v86 = *(v120 + v123);
      *(v120 + v123) = MEMORY[0x1E69E7CC0];

      v87 = swift_beginAccess();
      MEMORY[0x1E12AC640](v87);
      sub_1DD2A27E0(*((*(v119 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1DD336860();
      swift_endAccess();
LABEL_64:
      v88 = *(a3 + v85);
      if (sub_1DD287354())
      {
        v89 = *(a3 + v85);
        swift_beginAccess();

        sub_1DD2AAD4C(v90);
        swift_endAccess();
      }
    }
  }

  v91 = OBJC_IVAR____TtC23SiriReferenceResolution18RRContextKitPuller_rrVisualGroups;
  swift_beginAccess();
  v92 = *(a3 + v91);
  v93 = 1 << *(v92 + 32);
  v94 = -1;
  if (v93 < 64)
  {
    v94 = ~(-1 << v93);
  }

  v95 = v94 & *(v92 + 64);
  v96 = (v93 + 63) >> 6;
  v97 = *(a3 + v91);

  v98 = 0;
  while (v95)
  {
    v99 = v95;
LABEL_75:
    v95 = (v99 - 1) & v99;
    v101 = *(a3 + v91);
    if (*(v101 + 16))
    {
      v102 = (*(v92 + 48) + ((v98 << 10) | (16 * __clz(__rbit64(v99)))));
      v103 = *v102;
      v104 = v102[1];

      v105 = sub_1DD28EFFC();
      v107 = v106;

      if (v107)
      {
        v108 = *(*(v101 + 56) + 8 * v105);
        sub_1DD335860();

        sub_1DD335E00();
      }

      else
      {
      }

      a3 = v120;
    }
  }

  while (1)
  {
    v100 = v98 + 1;
    if (__OFADD__(v98, 1))
    {
      break;
    }

    if (v100 >= v96)
    {

      swift_beginAccess();
      v109 = *(v119 + 16);
      goto LABEL_81;
    }

    v99 = *(v92 + 64 + 8 * v100);
    ++v98;
    if (v99)
    {
      v98 = v100;
      goto LABEL_75;
    }
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}