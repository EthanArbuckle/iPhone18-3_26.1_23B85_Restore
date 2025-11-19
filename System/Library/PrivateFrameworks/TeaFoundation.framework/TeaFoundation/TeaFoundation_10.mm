uint64_t sub_1BF0B8DA8(uint64_t a1)
{
  v34[1] = *MEMORY[0x1E69E9840];
  sub_1BF028120(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1BF17923C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BF03BE14(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v5, v6);
    v12 = *(a1 + *(*a1 + 168));
    sub_1BF1791DC();
    v13 = sub_1BF17A07C();

    v14 = [v12 fileExistsAtPath_];

    if (v14)
    {
      v15 = *(*a1 + 176);
      v16 = sub_1BF1797DC();
      v17 = sub_1BF17ACDC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1BEFE0000, v16, v17, "SingleValueStore resetting state", v18, 2u);
        MEMORY[0x1BFB547B0](v18, -1, -1);
      }

      v19 = sub_1BF17916C();
      v34[0] = 0;
      v20 = [v12 removeItemAtURL:v19 error:v34];

      if (v20)
      {
        v21 = *(v7 + 8);
        v22 = v34[0];
        result = v21(v10, v6);
        goto LABEL_12;
      }

      v23 = v34[0];
      v24 = sub_1BF17911C();

      swift_willThrow();
      v25 = v24;
      v26 = sub_1BF1797DC();
      v27 = sub_1BF17ACBC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138543362;
        v30 = v24;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v31;
        *v29 = v31;
        _os_log_impl(&dword_1BEFE0000, v26, v27, "SingleValueStore failed to reset state with error: %{public}@", v28, 0xCu);
        sub_1BF00B048(v29, sub_1BF082F84);
        MEMORY[0x1BFB547B0](v29, -1, -1);
        MEMORY[0x1BFB547B0](v28, -1, -1);
      }

      else
      {
      }
    }

    result = (*(v7 + 8))(v10, v6);
    goto LABEL_12;
  }

  result = sub_1BF00B048(v5, sub_1BF028120);
LABEL_12:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

char *SingleValueStore.deinit()
{
  v1 = *v0;
  sub_1BF00B048(&v0[qword_1ED8EE210], sub_1BF028120);
  v2 = *&v0[qword_1ED8EE208 + 8];

  v3 = *&v0[qword_1ED8EE1F8 + 8];

  v4 = *&v0[qword_1ED8EE200];

  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 152);
  v7 = *(v1 + 80);
  v8 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_12(v8);
  (*(v9 + 8))(&v0[v6]);
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_29();
  v12 = *(v11 + 176);
  v13 = sub_1BF1797FC();
  OUTLINED_FUNCTION_12(v13);
  (*(v14 + 8))(&v0[v12]);
  OUTLINED_FUNCTION_29();
  sub_1BF00B048(&v0[*(v15 + 184)], sub_1BF027464);
  return v0;
}

uint64_t SingleValueStore.__deallocating_deinit()
{
  SingleValueStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void Reference.init(value:type:keyPath:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a4;
  v46 = a3;
  v6 = *(*a3 + *MEMORY[0x1E69E77B0]);
  v7 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  OUTLINED_FUNCTION_2_3();
  v16 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v22 = type metadata accessor for Reference();
  OUTLINED_FUNCTION_1(v22);
  v45 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v43 - v27;
  v29 = *a2;
  v30 = a2[1];
  v44 = v29;
  v31 = *(v9 + 16);
  v47 = a1;
  v31(v14, a1, v7);
  if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
  {
    v32 = *(v9 + 8);
    v33 = OUTLINED_FUNCTION_6_14();
    v32(v33);

    (v32)(v14, v7);
    v34 = 1;
    v35 = v48;
  }

  else
  {
    (*(v16 + 32))(v21, v14, v6);
    (*(v16 + 16))(v28, v21, v6);
    v36 = &v28[*(v22 + 32)];
    *v36 = v44;
    *(v36 + 1) = v30;
    swift_getAtKeyPath();

    v37 = *(v9 + 8);
    v38 = OUTLINED_FUNCTION_6_14();
    v39(v38);
    (*(v16 + 8))(v21, v6);
    v40 = v50;
    v41 = &v28[*(v22 + 28)];
    *v41 = v49;
    *(v41 + 1) = v40;
    v41[16] = 0;
    v42 = v48;
    (*(v45 + 32))(v48, v28, v22);
    v34 = 0;
    v35 = v42;
  }

  __swift_storeEnumTagSinglePayload(v35, v34, 1, v22);
  OUTLINED_FUNCTION_26_2();
}

void Reference.init(value:type:identifier:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a3;
  v41 = a4;
  OUTLINED_FUNCTION_2_3();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = type metadata accessor for Reference();
  OUTLINED_FUNCTION_1(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v38 - v24;
  v26 = a2[1];
  if (__swift_getEnumTagSinglePayload(a1, 1, a5) == 1)
  {

    v27 = sub_1BF17AE6C();
    (*(*(v27 - 8) + 8))(a1, v27);
    OUTLINED_FUNCTION_26_2();

    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }

  else
  {
    v39 = *a2;
    v33 = *(v11 + 32);
    v33(v17, a1, a5);
    v33(v25, v17, a5);
    v34 = &v25[*(v18 + 32)];
    v35 = v40;
    *v34 = v39;
    *(v34 + 1) = v26;
    v36 = &v25[*(v18 + 28)];
    v37 = v41;
    *v36 = v35;
    *(v36 + 1) = v37;
    v36[16] = 0;
    (*(v20 + 32))(a6, v25, v18);
    __swift_storeEnumTagSinglePayload(a6, 0, 1, v18);
    OUTLINED_FUNCTION_26_2();
  }
}

uint64_t Reference<A>.init(value:type:elementKeyPath:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  OUTLINED_FUNCTION_2_3();
  v14 = v13;
  (*(v15 + 16))(a6, a1, v16);
  v17 = type metadata accessor for Reference();
  v18 = (a6 + *(v17 + 32));
  *v18 = v11;
  v18[1] = v12;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a3;
  v20 = sub_1BF03CFB4(sub_1BF0B9F10, v23, a4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], a5, MEMORY[0x1E69E7410], v19);

  result = (*(v14 + 8))(a1, a4);
  v22 = a6 + *(v17 + 28);
  *v22 = v20;
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  return result;
}

void Reference<A>.init(value:type:elementKeyPath:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a5;
  v54 = a3;
  v55 = a6;
  v9 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  OUTLINED_FUNCTION_2_3();
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  v25 = type metadata accessor for Reference();
  OUTLINED_FUNCTION_1(v25);
  v51 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v49 - v30;
  v32 = *a2;
  v33 = a2[1];
  v50 = v32;
  v34 = *(v11 + 16);
  v53 = a1;
  v34(v16, a1, v9);
  if (__swift_getEnumTagSinglePayload(v16, 1, a4) == 1)
  {
    v35 = *(v11 + 8);
    v36 = OUTLINED_FUNCTION_6_14();
    v35(v36);

    (v35)(v16, v9);
    v37 = 1;
    v38 = v55;
  }

  else
  {
    (*(v18 + 32))(v24, v16, a4);
    v39 = (*(v18 + 16))(v31, v24, a4);
    v49 = &v49;
    v40 = &v31[*(v25 + 32)];
    *v40 = v50;
    *(v40 + 1) = v33;
    MEMORY[0x1EEE9AC00](v39);
    v41 = v52;
    *(&v49 - 4) = a4;
    *(&v49 - 3) = v41;
    *(&v49 - 2) = v54;
    v43 = sub_1BF03CFB4(sub_1BF0B9DAC, (&v49 - 6), a4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v41, MEMORY[0x1E69E7410], v42);

    v44 = *(v11 + 8);
    v45 = OUTLINED_FUNCTION_6_14();
    v46(v45);
    (*(v18 + 8))(v24, a4);
    v47 = &v31[*(v25 + 28)];
    *v47 = v43;
    *(v47 + 1) = 0;
    v47[16] = 1;
    v48 = v55;
    (*(v51 + 32))(v55, v31, v25);
    v37 = 0;
    v38 = v48;
  }

  __swift_storeEnumTagSinglePayload(v38, v37, 1, v25);
  OUTLINED_FUNCTION_26_2();
}

uint64_t Reference.encode(to:)(void *a1, uint64_t a2)
{
  v4 = v2;
  v6 = *(a2 + 16);
  v7 = type metadata accessor for ReferenceEncodingContainer();
  OUTLINED_FUNCTION_1(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1BF0B5B38(v6, v15, v14);
  if (!v3)
  {
    sub_1BF0D52D0(v4, v7);
    return (*(v9 + 8))(v14, v7);
  }

  return result;
}

uint64_t sub_1BF0B9F28(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1BF17A2EC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF0B9F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1BF075098(a1);
  if (v6)
  {
    goto LABEL_10;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    v7 = 1;
  }

  else
  {
    sub_1BF0BB164(result, v5, a1, a2);
    v7 = 0;
  }

  v8 = type metadata accessor for AuthToken();

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v8);
}

unint64_t sub_1BF0BA008(unint64_t result, uint64_t a2, unint64_t a3)
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
    OUTLINED_FUNCTION_11_8();
    result = sub_1BF17A1EC();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_1BF17A31C();
      OUTLINED_FUNCTION_7_11();
      return OUTLINED_FUNCTION_10_15();
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall JSONPointer.append(_:)(TeaFoundation::JSONPointer::Component a1)
{
  v3 = *a1.unescapedValue._countAndFlagsBits;
  v2 = *(a1.unescapedValue._countAndFlagsBits + 8);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF071B6C();
  v4 = *(*v1 + 16);
  sub_1BF071DA8(v4);
  v5 = *v1;
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 16 * v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  *v1 = v5;
}

TeaFoundation::JSONPointer __swiftcall JSONPointer.appending(_:)(TeaFoundation::JSONPointer::Component a1)
{
  v3 = v1;
  v5 = *a1.unescapedValue._countAndFlagsBits;
  v4 = *(a1.unescapedValue._countAndFlagsBits + 8);
  *v1 = *v2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF071B6C();
  v6 = *(*v3 + 16);
  result.components._rawValue = sub_1BF071DA8(v6);
  v8 = *v3;
  *(v8 + 16) = v6 + 1;
  v9 = v8 + 16 * v6;
  *(v9 + 32) = v5;
  *(v9 + 40) = v4;
  return result;
}

uint64_t JSONPointer.rawValue.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = 47;
  if (!v2)
  {
    v3 = 0;
  }

  v17 = v3;
  if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1BF00DD60();
    sub_1BF013170();
    v4 = (v1 + 40);
    do
    {
      v14 = *(v4 - 1);
      v15 = *v4;
      OUTLINED_FUNCTION_0_25();
      sub_1BF17AF5C();
      OUTLINED_FUNCTION_0_25();
      v5 = sub_1BF17AF5C();
      v7 = v6;

      v8 = *(v16 + 16);
      if (v8 >= *(v16 + 24) >> 1)
      {
        sub_1BF00DD60();
      }

      *(v16 + 16) = v8 + 1;
      v9 = v16 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v7;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  sub_1BF02027C();
  sub_1BF01B738();
  v10 = sub_1BF179F7C();
  v12 = v11;

  MEMORY[0x1BFB52000](v10, v12);

  return v17;
}

uint64_t JSONPointer.Component.jsonEscaped.getter()
{
  v20 = *v0;
  v22 = v0[1];
  v1 = sub_1BF013170();
  OUTLINED_FUNCTION_4_12(v1, v2, v3, v4, v5, v6, v7, v8, MEMORY[0x1E69E6158], v1, v1, v1, 12414, 0xE200000000000000, 126);
  OUTLINED_FUNCTION_0_25();
  v21 = sub_1BF17AF5C();
  OUTLINED_FUNCTION_4_12(v21, v9, v10, v11, v12, v13, v14, v15, v18, v19, v1, v1, 12670, 0xE200000000000000, 47);
  OUTLINED_FUNCTION_0_25();
  v16 = sub_1BF17AF5C();

  return v16;
}

TeaFoundation::JSONPointer_optional __swiftcall JSONPointer.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = sub_1BF0B9F28(rawValue._countAndFlagsBits, rawValue._object);
  if (!v6)
  {
LABEL_7:

    v11 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v11 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = 0;
LABEL_21:
      *v4 = v12;
      goto LABEL_23;
    }

LABEL_20:
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  if (v5 == 47 && v6 == 0xE100000000000000)
  {
  }

  else
  {
    v8 = sub_1BF17B86C();

    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v13 = sub_1BF0BA008(1uLL, countAndFlagsBits, object);
  *&v46 = 47;
  *(&v46 + 1) = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v13);
  v34 = &v46;
  v18 = sub_1BF01A1B0(0x7FFFFFFFFFFFFFFFLL, 0, sub_1BF01C1EC, &v32, v14, v15, v16, v17);
  v19 = *(v18 + 16);
  if (!v19)
  {

    goto LABEL_20;
  }

  v37 = v4;
  v49 = MEMORY[0x1E69E7CC0];
  sub_1BF0705E8();
  v12 = v49;
  v20 = sub_1BF0BB054();
  v21 = sub_1BF013170();
  v36 = v18;
  v22 = (v18 + 56);
  v38 = v20;
  while (1)
  {
    v39 = v19;
    v23 = *(v22 - 1);
    v24 = *v22;
    v46 = *(v22 - 3);
    v47 = v23;
    v48 = v24;
    v44 = 47;
    v45 = 0xE100000000000000;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v25 = MEMORY[0x1E69E6158];
    v9 = sub_1BF17AF8C();
    if (v9)
    {
      break;
    }

    v43 = 0xE100000000000000;
    v44 = 12670;
    v45 = 0xE200000000000000;
    v42 = 47;
    v34 = v21;
    v35 = v21;
    v32 = v25;
    v33 = v20;
    OUTLINED_FUNCTION_0_25();
    v44 = sub_1BF17AF5C();
    v45 = v26;
    v41 = 0xE100000000000000;
    v42 = 12414;
    v43 = 0xE200000000000000;
    v40 = 126;
    v34 = v21;
    v35 = v21;
    v32 = v25;
    v33 = v21;
    OUTLINED_FUNCTION_0_25();
    v27 = sub_1BF17AF5C();
    v29 = v28;

    v49 = v12;
    v30 = *(v12 + 16);
    if (v30 >= *(v12 + 24) >> 1)
    {
      sub_1BF0705E8();
      v12 = v49;
    }

    *(v12 + 16) = v30 + 1;
    v31 = v12 + 16 * v30;
    *(v31 + 32) = v27;
    *(v31 + 40) = v29;
    v22 += 4;
    v20 = v38;
    v19 = v39 - 1;
    if (v39 == 1)
    {

      v4 = v37;
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  result.value.components._rawValue = v9;
  result.is_nil = v10;
  return result;
}

uint64_t JSONPointer.Component.init<A>(jsonEscaped:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1BF013170();
  v9 = MEMORY[0x1E69E6158];
  result = sub_1BF17AF8C();
  if (result)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_25();
    v21 = sub_1BF17AF5C();
    OUTLINED_FUNCTION_4_12(v21, v11, v12, v13, v14, v15, v16, v17, v9, a3, v8, v8, 126, 0xE100000000000000, 126);
    OUTLINED_FUNCTION_0_25();
    v18 = sub_1BF17AF5C();
    v20 = v19;
    (*(*(a2 - 8) + 8))(a1, a2);

    *a4 = v18;
    a4[1] = v20;
  }

  return result;
}

uint64_t sub_1BF0BA894@<X0>(uint64_t *a1@<X8>)
{
  result = JSONPointer.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static JSONPointer.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v10 = *a1;
  v3 = JSONPointer.rawValue.getter();
  v5 = v4;
  if (v3 == JSONPointer.rawValue.getter() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BF17B86C();
  }

  return v8 & 1;
}

uint64_t JSONPointer.hash(into:)()
{
  v2 = *v0;
  JSONPointer.rawValue.getter();
  sub_1BF179F3C();
}

uint64_t JSONPointer.Component.unescapedValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t JSONPointer.Component.unescapedValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static JSONPointer.Component.index(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1BF17B6FC();
    *a2 = result;
    a2[1] = v3;
  }

  return result;
}

uint64_t JSONPointer.Component.index.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = HIBYTE(v1) & 0xF;
  v4 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v5 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v41 = *v0;
  v42 = v1;
  v43 = 0;
  v44 = v5;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  while (1)
  {
    v6 = sub_1BF17A23C();
    if (!v7)
    {

      v14 = v2 == 48 && v1 == 0xE100000000000000;
      if (v14 || (OUTLINED_FUNCTION_129(), OUTLINED_FUNCTION_9_14(), result = sub_1BF17B86C(), (result & 1) != 0) || (v15 = OUTLINED_FUNCTION_129(), result = sub_1BF0B9F28(v15, v16), !v17))
      {
        if (v5)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (result != 48 || v17 != 0xE100000000000000)
        {
          OUTLINED_FUNCTION_9_14();
          v19 = sub_1BF17B86C();

          result = 0;
          if ((v19 & 1) != 0 || !v5)
          {
            return result;
          }

LABEL_33:
          if ((v1 & 0x1000000000000000) != 0)
          {
            goto LABEL_106;
          }

          if ((v1 & 0x2000000000000000) != 0)
          {
            v41 = v2;
            v42 = v1 & 0xFFFFFFFFFFFFFFLL;
            if (v2 == 43)
            {
              if (v3)
              {
                if (v3 != 1)
                {
                  OUTLINED_FUNCTION_8_11();
                  while (1)
                  {
                    OUTLINED_FUNCTION_15();
                    if (!v10 & v22)
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_1_22();
                    if (!v10)
                    {
                      break;
                    }

                    v21 = v31 + v30;
                    if (__OFADD__(v31, v30))
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_44();
                    if (v10)
                    {
                      goto LABEL_99;
                    }
                  }
                }

                goto LABEL_98;
              }

LABEL_111:
              __break(1u);
              return result;
            }

            if (v2 != 45)
            {
              if (v3)
              {
                v21 = 0;
                v34 = &v41;
                while (1)
                {
                  v35 = *v34 - 48;
                  if (v35 > 9)
                  {
                    break;
                  }

                  v36 = 10 * v21;
                  if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                  {
                    break;
                  }

                  v21 = v36 + v35;
                  if (__OFADD__(v36, v35))
                  {
                    break;
                  }

                  ++v34;
                  if (!--v3)
                  {
                    goto LABEL_97;
                  }
                }
              }

              goto LABEL_98;
            }

            if (v3)
            {
              if (v3 != 1)
              {
                OUTLINED_FUNCTION_8_11();
                while (1)
                {
                  OUTLINED_FUNCTION_15();
                  if (!v10 & v22)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_1_22();
                  if (!v10)
                  {
                    break;
                  }

                  v21 = v27 - v26;
                  if (__OFSUB__(v27, v26))
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_44();
                  if (v10)
                  {
                    goto LABEL_99;
                  }
                }
              }

              goto LABEL_98;
            }
          }

          else
          {
            if ((v2 & 0x1000000000000000) != 0)
            {
              result = (v1 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              OUTLINED_FUNCTION_129();
              result = sub_1BF17B2FC();
              v4 = v40;
            }

            v20 = *result;
            if (v20 == 43)
            {
              if (v4 >= 1)
              {
                if (v4 != 1)
                {
                  v21 = 0;
                  if (result)
                  {
                    while (1)
                    {
                      OUTLINED_FUNCTION_15();
                      if (!v10 & v22)
                      {
                        goto LABEL_98;
                      }

                      OUTLINED_FUNCTION_1_22();
                      if (!v10)
                      {
                        goto LABEL_98;
                      }

                      v21 = v29 + v28;
                      if (__OFADD__(v29, v28))
                      {
                        goto LABEL_98;
                      }

                      OUTLINED_FUNCTION_44();
                      if (v10)
                      {
                        goto LABEL_99;
                      }
                    }
                  }

                  goto LABEL_97;
                }

                goto LABEL_98;
              }

              goto LABEL_110;
            }

            if (v20 != 45)
            {
              if (v4)
              {
                v21 = 0;
                if (result)
                {
                  while (1)
                  {
                    v32 = *result - 48;
                    if (v32 > 9)
                    {
                      goto LABEL_98;
                    }

                    v33 = 10 * v21;
                    if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                    {
                      goto LABEL_98;
                    }

                    v21 = v33 + v32;
                    if (__OFADD__(v33, v32))
                    {
                      goto LABEL_98;
                    }

                    ++result;
                    if (!--v4)
                    {
                      goto LABEL_97;
                    }
                  }
                }

                goto LABEL_97;
              }

LABEL_98:
              v21 = 0;
              v25 = 1;
              goto LABEL_99;
            }

            if (v4 >= 1)
            {
              if (v4 != 1)
              {
                v21 = 0;
                if (result)
                {
                  while (1)
                  {
                    OUTLINED_FUNCTION_15();
                    if (!v10 & v22)
                    {
                      goto LABEL_98;
                    }

                    OUTLINED_FUNCTION_1_22();
                    if (!v10)
                    {
                      goto LABEL_98;
                    }

                    v21 = v24 - v23;
                    if (__OFSUB__(v24, v23))
                    {
                      goto LABEL_98;
                    }

                    OUTLINED_FUNCTION_44();
                    if (v10)
                    {
                      goto LABEL_99;
                    }
                  }
                }

LABEL_97:
                v25 = 0;
LABEL_99:
                v37 = v25;
                goto LABEL_100;
              }

              goto LABEL_98;
            }

            __break(1u);
          }

          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

LABEL_50:
      }

      return 0;
    }

    v8 = v6;
    v9 = v7;
    OUTLINED_FUNCTION_9_14();
    if (sub_1BF17B86C())
    {
      break;
    }

    v10 = v8 == 48 && v9 == 0xE100000000000000;
    if (v10)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_9_14();
    if (sub_1BF17B86C())
    {

      goto LABEL_50;
    }

    if (v8 == 57 && v9 == 0xE100000000000000)
    {
    }

    else
    {
LABEL_16:
      v12 = sub_1BF17B86C();

      if (v12)
      {
        goto LABEL_50;
      }
    }
  }

  __break(1u);
LABEL_106:
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_129();
  sub_1BF0750D8();
  v21 = v38;
  v37 = v39;

LABEL_100:
  if (v37)
  {
    return 0;
  }

  else
  {
    return v21;
  }
}

uint64_t static JSONPointer.Component.name(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t static JSONPointer.Component.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BF17B86C();
  }
}

unint64_t JSONPointer.debugDescription.getter()
{
  v1 = *v0;
  sub_1BF17B1EC();

  v2 = MEMORY[0x1BFB522D0](v1, &type metadata for JSONPointer.Component);
  MEMORY[0x1BFB52000](v2);

  MEMORY[0x1BFB52000](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_1BF0BB054()
{
  result = qword_1EBDCBC00;
  if (!qword_1EBDCBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBC00);
  }

  return result;
}

unint64_t sub_1BF0BB0AC()
{
  result = qword_1EBDCBC08;
  if (!qword_1EBDCBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBC08);
  }

  return result;
}

unint64_t sub_1BF0BB110()
{
  result = qword_1EBDCBC10;
  if (!qword_1EBDCBC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBC10);
  }

  return result;
}

uint64_t sub_1BF0BB164@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 56);
  v6 = v5 + *(*(type metadata accessor for AuthToken() - 8) + 72) * result;

  return sub_1BF0A8AC8(v6, a4);
}

uint64_t Promise.timeout(after:on:message:)()
{
  v1 = v0;
  v2 = *v0;
  sub_1BF041640();
  OUTLINED_FUNCTION_85();
  swift_allocObject();
  v3 = sub_1BF17A50C();
  v5 = v4;
  *v4 = v1;
  v6 = *(v2 + 80);

  v5[1] = static Promise.timeout<A>(after:on:message:)();
  sub_1BF00CD7C();
  static Promise.race(_:)(v3);
  OUTLINED_FUNCTION_65();
  return v2;
}

{
  v2 = v0;
  OUTLINED_FUNCTION_0_26();
  v4 = v3;
  v5 = *v0;
  sub_1BF041640();
  OUTLINED_FUNCTION_85();
  swift_allocObject();
  v6 = sub_1BF17A50C();
  v8 = v7;
  *v7 = v2;
  v9 = *(v5 + 80);

  v8[1] = static Promise.timeout<A>(after:on:message:)(v4, v1);
  sub_1BF00CD7C();
  static Promise.race(_:)(v6);
  OUTLINED_FUNCTION_65();
  return v5;
}

void sub_1BF0BB304(void (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0x80000001BF18D3E0;
  }

  sub_1BF095D40();
  v7 = swift_allocError();
  *v8 = v5;
  *(v8 + 8) = v6;
  *(v8 + 16) = 0;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  a1(v7);
}

uint64_t static Promise.timeout<A>(after:on:message:)()
{
  OUTLINED_FUNCTION_0_26();
  v1 = v0;
  v2 = sub_1BF179BEC();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  sub_1BF179BDC();
  sub_1BF179C6C();
  v13 = *(v5 + 8);
  v13(v10, v2);
  v14 = static Promise.timeout<A>(after:on:message:)(v12, v1);
  v13(v12, v2);
  return v14;
}

uint64_t static Promise.timeout<A>(after:on:promise:message:)()
{
  OUTLINED_FUNCTION_0_26();
  v2 = *(*v1 + 80);
  v3 = type metadata accessor for Promise();
  sub_1BF041640();
  OUTLINED_FUNCTION_85();
  swift_allocObject();
  v4 = sub_1BF17A50C();
  v6 = v5;
  *v5 = v0;

  v6[1] = static Promise.timeout<A>(after:on:message:)();
  sub_1BF00CD7C();
  static Promise.race(_:)(v4);
  OUTLINED_FUNCTION_65();
  return v3;
}

uint64_t URLHandlerPattern.scheme.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return OUTLINED_FUNCTION_36();
}

uint64_t URLHandlerPattern.host.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return OUTLINED_FUNCTION_36();
}

uint64_t URLHandlerPattern.path.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return OUTLINED_FUNCTION_36();
}

uint64_t URLHandlerPattern.fragment.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return OUTLINED_FUNCTION_36();
}

uint64_t URLHandlerPattern.init(scheme:host:path:fragment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = 0;
  sub_1BF0BB810();
  result = sub_1BF179DAC();
  a9[9] = result;
  return result;
}

void sub_1BF0BB810()
{
  if (!qword_1ED8EAE70)
  {
    v0 = sub_1BF17A65C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EAE70);
    }
  }
}

uint64_t sub_1BF0BB868(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1BF0BB8A8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BF0BB91C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 33))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0BB95C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t AuthToken.fetchDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BF1794AC();
  v4 = OUTLINED_FUNCTION_12(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t AuthToken.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AuthToken() + 20);
  v4 = sub_1BF17923C();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t AuthToken.token.getter()
{
  v1 = (v0 + *(type metadata accessor for AuthToken() + 24));
  v2 = *v1;
  v3 = v1[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v2;
}

uint64_t AuthToken.init(fetchDate:url:token:expirationUtc:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v12 = sub_1BF1794AC();
  OUTLINED_FUNCTION_12(v12);
  (*(v13 + 32))(a5, a1);
  v14 = type metadata accessor for AuthToken();
  v15 = v14[5];
  v16 = sub_1BF17923C();
  OUTLINED_FUNCTION_12(v16);
  result = (*(v17 + 32))(a5 + v15, a2);
  v19 = (a5 + v14[6]);
  *v19 = a3;
  v19[1] = a4;
  *(a5 + v14[7]) = a6;
  return result;
}

BOOL AuthToken.isExpired.getter()
{
  v1 = sub_1BF1794AC();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = *(v0 + *(type metadata accessor for AuthToken() + 28));
  _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
  sub_1BF17944C();
  v12 = v11;
  (*(v4 + 8))(v9, v1);
  return v10 <= v12;
}

uint64_t sub_1BF0BBCB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446863746566 && a2 == 0xE900000000000065;
  if (v4 || (sub_1BF17B86C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7107189 && a2 == 0xE300000000000000;
    if (v6 || (sub_1BF17B86C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
      if (v7 || (sub_1BF17B86C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6974617269707865 && a2 == 0xED00006374556E6FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BF17B86C();

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

uint64_t sub_1BF0BBE1C(char a1)
{
  result = 0x7461446863746566;
  switch(a1)
  {
    case 1:
      result = 7107189;
      break;
    case 2:
      result = 0x6E656B6F74;
      break;
    case 3:
      result = 0x6974617269707865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF0BBEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF0BBCB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF0BBED4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BF0BBE14();
  *a1 = result;
  return result;
}

uint64_t sub_1BF0BBEFC(uint64_t a1)
{
  v2 = sub_1BF0BC1A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF0BBF38(uint64_t a1)
{
  v2 = sub_1BF0BC1A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AuthToken.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1BF0BC690(0, &qword_1ED8E9B58, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_1(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v26[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF0BC1A8();
  sub_1BF17BC1C();
  v26[15] = 0;
  sub_1BF1794AC();
  OUTLINED_FUNCTION_2_18();
  sub_1BF0BC6F4(v15, v16);
  OUTLINED_FUNCTION_7_12();
  sub_1BF17B69C();
  if (!v2)
  {
    v17 = type metadata accessor for AuthToken();
    v18 = v17[5];
    v26[14] = 1;
    sub_1BF17923C();
    OUTLINED_FUNCTION_3_13();
    sub_1BF0BC6F4(v19, v20);
    OUTLINED_FUNCTION_7_12();
    sub_1BF17B69C();
    v21 = (v3 + v17[6]);
    v22 = *v21;
    v23 = v21[1];
    v26[13] = 2;
    OUTLINED_FUNCTION_7_12();
    sub_1BF17B66C();
    v24 = *(v3 + v17[7]);
    v26[12] = 3;
    OUTLINED_FUNCTION_7_12();
    sub_1BF17B67C();
  }

  return (*(v9 + 8))(v13, v6);
}

unint64_t sub_1BF0BC1A8()
{
  result = qword_1ED8E9CD0;
  if (!qword_1ED8E9CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E9CD0);
  }

  return result;
}

uint64_t AuthToken.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_1BF17923C();
  v4 = OUTLINED_FUNCTION_1(v3);
  v54 = v5;
  v55 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_1BF1794AC();
  v12 = OUTLINED_FUNCTION_1(v11);
  v58 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  v59 = v17 - v16;
  sub_1BF0BC690(0, &qword_1ED8E9B80, MEMORY[0x1E69E6F48]);
  v19 = OUTLINED_FUNCTION_1(v18);
  v56 = v20;
  v57 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v53 - v23;
  v25 = type metadata accessor for AuthToken();
  v26 = OUTLINED_FUNCTION_12(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_0();
  v31 = v30 - v29;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF0BC1A8();
  v60 = v24;
  v33 = v61;
  sub_1BF17BBDC();
  if (v33)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v61 = v25;
  v34 = v58;
  v35 = v55;
  v65 = 0;
  OUTLINED_FUNCTION_2_18();
  sub_1BF0BC6F4(v36, v37);
  sub_1BF17B5FC();
  v38 = *(v34 + 32);
  v39 = v31;
  v40 = v59;
  v59 = v11;
  v38(v31, v40, v11);
  v64 = 1;
  OUTLINED_FUNCTION_3_13();
  sub_1BF0BC6F4(v41, v42);
  sub_1BF17B5FC();
  (*(v54 + 32))(v31 + *(v61 + 20), v10, v35);
  v63 = 2;
  v43 = sub_1BF17B5CC();
  v44 = a1;
  v45 = v61;
  v46 = (v39 + *(v61 + 24));
  *v46 = v43;
  v46[1] = v47;
  v62 = 3;
  sub_1BF17B5DC();
  v49 = v48;
  v50 = OUTLINED_FUNCTION_5_12();
  v51(v50);
  *(v39 + *(v45 + 28)) = v49;
  sub_1BF0A8AC8(v39, v53);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return sub_1BF0A8B2C(v39);
}

void sub_1BF0BC690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BF0BC1A8();
    v7 = a3(a1, &type metadata for AuthToken.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BF0BC6F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for Scope(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AuthToken.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF0BC8FC()
{
  result = qword_1EBDCBC18;
  if (!qword_1EBDCBC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBC18);
  }

  return result;
}

unint64_t sub_1BF0BC954()
{
  result = qword_1ED8E9CC0;
  if (!qword_1ED8E9CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E9CC0);
  }

  return result;
}

unint64_t sub_1BF0BC9AC()
{
  result = qword_1ED8E9CC8;
  if (!qword_1ED8E9CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E9CC8);
  }

  return result;
}

uint64_t ReferenceDecodingPool.__allocating_init(references:)(uint64_t a1)
{
  OUTLINED_FUNCTION_19();
  v2 = swift_allocObject();
  ReferenceDecodingPool.init(references:)(a1);
  return v2;
}

void sub_1BF0BCB00(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v67 = sub_1BF17AE6C();
  v10 = OUTLINED_FUNCTION_1(v67);
  v64 = v11;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v10);
  v63 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v60 - v16;
  v19 = *a1;
  v18 = a1[1];
  v20 = *(a2 + 16);
  if (!v20)
  {
    *&v66[0] = MEMORY[0x1E69E7CC0];
    v21 = OUTLINED_FUNCTION_1_24();
    sub_1BF0BD690(v21, v22, v23);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_16_5(v17, 0);
      OUTLINED_FUNCTION_20(a3);
      (*(v24 + 32))(a4, v17, a3);
      return;
    }

    OUTLINED_FUNCTION_16_5(v17, 1);
    (*(v64 + 8))(v17, v67);
  }

  swift_beginAccess();
  v25 = sub_1BF04FEBC(v19, v18, *(v4 + 16));
  if (v25)
  {
    v26 = v25;
    v60[0] = a4;
    v60[1] = v5;
    v61 = v19;
    v62 = v18;
    swift_endAccess();
    v27 = (a2 + 40);
    v28 = MEMORY[0x1E69E7CC0];
    for (i = v20; i; --i)
    {
      if (*(v26 + 16))
      {
        v30 = *(v27 - 1);
        v31 = *v27;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        OUTLINED_FUNCTION_77_0();
        v32 = sub_1BF014CA8();
        if (v33)
        {
          sub_1BF0075BC(*(v26 + 56) + 32 * v32, v65);

          sub_1BEFF9A40(v65, v66);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = *(v28 + 16);
            sub_1BF0A658C();
            v28 = v36;
          }

          v34 = *(v28 + 16);
          if (v34 >= *(v28 + 24) >> 1)
          {
            sub_1BF0A658C();
            v28 = v37;
          }

          *(v28 + 16) = v34 + 1;
          sub_1BEFF9A40(v66, (v28 + 32 * v34 + 32));
        }

        else
        {
        }
      }

      v27 += 2;
    }

    if (*(v28 + 16) == v20)
    {
      *&v66[0] = v28;
      v38 = OUTLINED_FUNCTION_1_24();
      sub_1BF0BD690(v38, v39, v40);
      v41 = v63;
      if (swift_dynamicCast())
      {

        OUTLINED_FUNCTION_16_5(v41, 0);
        OUTLINED_FUNCTION_20(a3);
        (*(v42 + 32))(v60[0], v41, a3);
        return;
      }

      OUTLINED_FUNCTION_16_5(v41, 1);
      (*(v64 + 8))(v41, v67);
    }

    else
    {
    }

    v44 = 0;
    v45 = a2 + 40;
    v46 = MEMORY[0x1E69E7CC0];
LABEL_23:
    for (j = (v45 + 16 * v44); ; j += 2)
    {
      if (v20 == v44)
      {

        sub_1BF0B5F00();
        swift_allocError();
        v58 = v62;
        *v59 = v61;
        *(v59 + 8) = v58;
        *(v59 + 16) = v46;
        *(v59 + 24) = 0;
        *(v59 + 32) = 1;
        goto LABEL_36;
      }

      if (v44 >= v20)
      {
        break;
      }

      if (__OFADD__(v44, 1))
      {
        goto LABEL_38;
      }

      v49 = *(j - 1);
      v48 = *j;
      v50 = *(v26 + 16);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (!v50 || (OUTLINED_FUNCTION_8_13(), v51 = sub_1BF014CA8(), (v52 & 1) == 0))
      {
        memset(v66, 0, sizeof(v66));
        sub_1BEFFD168(v66);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = *(v46 + 16);
          OUTLINED_FUNCTION_13_10();
          sub_1BF0201A4();
          v46 = v56;
        }

        v53 = *(v46 + 16);
        if (v53 >= *(v46 + 24) >> 1)
        {
          OUTLINED_FUNCTION_13_10();
          sub_1BF0201A4();
          v46 = v57;
        }

        *(v46 + 16) = v53 + 1;
        v54 = v46 + 16 * v53;
        *(v54 + 32) = v49;
        *(v54 + 40) = v48;
        ++v44;
        goto LABEL_23;
      }

      sub_1BF0075BC(*(v26 + 56) + 32 * v51, v66);

      sub_1BEFFD168(v66);
      ++v44;
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
    swift_endAccess();
    sub_1BF0B5F00();
    swift_allocError();
    *v43 = v19;
    *(v43 + 8) = v18;
    *(v43 + 16) = a2;
    *(v43 + 24) = 0;
    *(v43 + 32) = 1;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
LABEL_36:
    swift_willThrow();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

uint64_t ReferenceDecodingPool.__allocating_init()()
{
  OUTLINED_FUNCTION_19();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t ReferenceDecodingPool.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  return result;
}

uint64_t ReferenceDecodingPool.__allocating_init(references:)(Swift::OpaquePointer a1)
{
  OUTLINED_FUNCTION_19();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC8];
  ReferenceDecodingPool.insert(contentsOf:)(a1);

  return v2;
}

uint64_t ReferenceDecodingPool.init(references:)(Swift::OpaquePointer a1)
{
  *(v1 + 16) = MEMORY[0x1E69E7CC8];
  ReferenceDecodingPool.insert(contentsOf:)(a1);

  return v1;
}

uint64_t ReferenceDecodingPool.insert<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Reference();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  AnyReference.init<A>(reference:)(v9, a2, v13);
  ReferenceDecodingPool.insert(_:)(v13);
  return sub_1BF0BD19C(v13);
}

uint64_t ReferenceDecodingPool.insert<A>(contentsOf:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Reference();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v15 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v14 - v9;
  OUTLINED_FUNCTION_77_0();
  v11 = sub_1BF17A4EC();
  v17 = v11;
  OUTLINED_FUNCTION_77_0();
  result = sub_1BF17A5AC();
  if (v11 != result)
  {
    do
    {
      OUTLINED_FUNCTION_77_0();
      v13 = sub_1BF17A58C();
      sub_1BF17A51C();
      if (v13)
      {
        (*(v7 + 16))(v10, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v4);
      }

      else
      {
        result = sub_1BF17B23C();
        if (v15 != 8)
        {
          __break(1u);
          return result;
        }

        v16 = result;
        (*(v7 + 16))(v10, &v16, v4);
        swift_unknownObjectRelease();
      }

      sub_1BF17A62C();
      ReferenceDecodingPool.insert<A>(_:)(v10, a2);
      (*(v7 + 8))(v10, v4);
      OUTLINED_FUNCTION_77_0();
      result = sub_1BF17A5AC();
      v11 = v17;
    }

    while (v17 != result);
  }

  return result;
}

uint64_t ReferenceDecodingPool.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

unint64_t ReferenceDecodingPool.description.getter()
{
  sub_1BF17B1EC();

  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1BF0BD5D0(0, &qword_1ED8EAE98, MEMORY[0x1E69E5E28]);
  sub_1BF0264F8();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF179D6C();

  v2 = OUTLINED_FUNCTION_77_0();
  MEMORY[0x1BFB52000](v2);

  MEMORY[0x1BFB52000](41, 0xE100000000000000);
  return 0xD000000000000021;
}

void sub_1BF0BD508(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_0_29(a1, a2, a3, a4, a5);
  v8 = (v7 + (v5 << 6));
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v11 = v9[3];
  v8[2] = v9[2];
  v8[3] = v11;
  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_17(v6, v14);
  }
}

void sub_1BF0BD55C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  *(v5[6] + 8 * v4) = v6;
  *(v5[7] + v4) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_7_13(v5, v10);
  }
}

void sub_1BF0BD594(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_2_19(a1, a2, a3, a4);
  *(v5[6] + 8 * v4) = v6;
  *(v5[7] + v4) = v7 & 1;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_7_13(v5, v10);
  }
}

void sub_1BF0BD5D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t dispatch thunk of ReferenceDecodingPool.__allocating_init(references:)()
{
  return (*(v0 + 96))();
}

{
  return (*(v0 + 104))();
}

void sub_1BF0BD690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA0] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t SyncObservable.__allocating_init<A>(initialValue:)(uint64_t a1)
{
  OUTLINED_FUNCTION_78();
  v2 = swift_allocObject();
  SyncObservable.init<A>(initialValue:)(a1);
  return v2;
}

uint64_t sub_1BF0BD720(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a8 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
    if (a5)
    {
      SyncObservable.uncheckedValue.getter();
      v20 = a5(v16, v18);
      (*(v12 + 8))(v16, a8);
    }

    else
    {
      v20 = 0;
    }

    SyncObservable.next(value:quiet:)(v18, v20 & 1);

    return (*(v12 + 8))(v18, a8);
  }

  return result;
}

uint64_t sub_1BF0BD8D4()
{
  sub_1BF17A75C();
  sub_1BF17B15C();

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1BF0BD954()
{
  sub_1BF042FB8(v0 + 16);
  v1 = *(v0 + 32);

  return v0;
}

uint64_t sub_1BF0BD97C()
{
  v0 = sub_1BF0BD954();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1BF0BD9F0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  return sub_1BF17A05C() & 1;
}

uint64_t static ApplicationStateLaunchOptionKey.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 0);
      v7 = 0;
      goto LABEL_34;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_27;
      }

      v8 = 1;
      v9 = OUTLINED_FUNCTION_0_31(*a1, 1uLL);
      sub_1BF0BDD2C(v9, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 2uLL);
      v7 = 2;
      goto LABEL_34;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 3uLL);
      v7 = 3;
      goto LABEL_34;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 4uLL);
      v7 = 4;
      goto LABEL_34;
    case 5uLL:
      if (v5 != 5)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 5uLL);
      v7 = 5;
      goto LABEL_34;
    case 6uLL:
      if (v5 != 6)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 6uLL);
      v7 = 6;
      goto LABEL_34;
    case 7uLL:
      if (v5 != 7)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 7uLL);
      v7 = 7;
      goto LABEL_34;
    case 8uLL:
      if (v5 != 8)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 8uLL);
      v7 = 8;
      goto LABEL_34;
    case 9uLL:
      if (v5 != 9)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 9uLL);
      v7 = 9;
      goto LABEL_34;
    case 0xAuLL:
      if (v5 != 10)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 0xAuLL);
      v7 = 10;
      goto LABEL_34;
    case 0xBuLL:
      if (v5 != 11)
      {
        goto LABEL_27;
      }

      v6 = OUTLINED_FUNCTION_0_31(*a1, 0xBuLL);
      v7 = 11;
      goto LABEL_34;
    default:
      if (v5 >= 0xC)
      {
        v15 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v17 = sub_1BF17B86C();
          sub_1BF0BDD18(v4, v5);
          v18 = OUTLINED_FUNCTION_1_25();
          sub_1BF0BDD18(v18, v19);
          v20 = OUTLINED_FUNCTION_1_25();
          v22 = OUTLINED_FUNCTION_0_31(v20, v21);
          sub_1BF0BDD2C(v22, v5);
          return v17 & 1;
        }

        sub_1BF0BDD18(v15, v3);
        v24 = OUTLINED_FUNCTION_1_25();
        sub_1BF0BDD18(v24, v25);
        v26 = OUTLINED_FUNCTION_1_25();
        sub_1BF0BDD2C(v26, v27);
        v6 = OUTLINED_FUNCTION_1_25();
LABEL_34:
        sub_1BF0BDD2C(v6, v7);
        return 1;
      }

      else
      {
LABEL_27:
        sub_1BF0BDD18(*a2, *(a2 + 8));
        v10 = OUTLINED_FUNCTION_1_25();
        sub_1BF0BDD18(v10, v11);
        v12 = OUTLINED_FUNCTION_1_25();
        v14 = OUTLINED_FUNCTION_0_31(v12, v13);
        sub_1BF0BDD2C(v14, v5);
        return 0;
      }
  }
}

uint64_t sub_1BF0BDD18(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

uint64_t sub_1BF0BDD2C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t ApplicationStateLaunchOptionKey.hash(into:)()
{
  switch(v0[1])
  {
    case 0:
      v1 = 0;
      goto LABEL_14;
    case 1:
      v1 = 1;
      goto LABEL_14;
    case 2:
      v1 = 2;
      goto LABEL_14;
    case 3:
      v1 = 3;
      goto LABEL_14;
    case 4:
      v1 = 4;
      goto LABEL_14;
    case 5:
      v1 = 5;
      goto LABEL_14;
    case 6:
      v1 = 6;
      goto LABEL_14;
    case 7:
      v1 = 7;
      goto LABEL_14;
    case 8:
      v1 = 8;
      goto LABEL_14;
    case 9:
      v1 = 9;
      goto LABEL_14;
    case 10:
      v1 = 10;
      goto LABEL_14;
    case 11:
      v1 = 11;
LABEL_14:
      result = MEMORY[0x1BFB53950](v1);
      break;
    default:
      v3 = *v0;
      MEMORY[0x1BFB53950](12);

      result = sub_1BF179F3C();
      break;
  }

  return result;
}

uint64_t ApplicationStateLaunchOptionKey.hashValue.getter()
{
  v2 = *v0;
  sub_1BF17BB6C();
  ApplicationStateLaunchOptionKey.hash(into:)();
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0BDE8C()
{
  v2 = *v0;
  sub_1BF17BB6C();
  ApplicationStateLaunchOptionKey.hash(into:)();
  return sub_1BF17BB9C();
}

uint64_t ApplicationStateManagerIOS.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ApplicationStateManagerIOS.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

void sub_1BF0BDF68(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF107154(v5);
    v5 = v10;
  }

  v6 = *(v5 + 16);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(type metadata accessor for ManualClock.WakeUp() - 8);
    v8 = *(v7 + 72);
    v9 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v8 * a1;
    sub_1BF0BE5BC(v9, a2);
    sub_1BF0A6F14(v9 + v8, v6 - 1 - a1, v9);
    *(v5 + 16) = v6 - 1;
    *v2 = v5;
  }
}

uint64_t sub_1BF0BE058(unint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t, unint64_t))
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v7 < 0 || (v7 & 0x4000000000000000) != 0)
  {
    result = a2(v7);
    v7 = result;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v9 - 1 - a1;
    v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v13 = *(v12 + 0x20);
    a3(v12 + 40, v11);
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
    *v3 = v7;
    return v13;
  }

  return result;
}

uint64_t ApplicationStateManagerIOS.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ApplicationStateManagerIOS.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1BF0BE14C()
{
  OUTLINED_FUNCTION_77();
  v5 = v4;
  OUTLINED_FUNCTION_2_20();
  v6 = *(v5 + 16);
  v7 = sub_1BEFE90AC(v6);
  if (v7)
  {
    v0 = v7;
    if (v7 < 1)
    {
      goto LABEL_26;
    }

    v2 = v6 & 0xC000000000000001;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v0; ++i)
    {
      if (v2)
      {
        OUTLINED_FUNCTION_8_14();
        v1 = v9;
      }

      else
      {
        OUTLINED_FUNCTION_3_15();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v10 = *(v1 + 24);
          ObjectType = swift_getObjectType();
          (*(v10 + 16))(ObjectType, v10);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
  sub_1BEFE90AC(*(v5 + 16));
  OUTLINED_FUNCTION_7_14();
  for (j = 0; ; ++j)
  {
    if (v0 == j)
    {

      v14 = *(v5 + 16);
      *(v5 + 16) = v15;

      OUTLINED_FUNCTION_76_0();
      return;
    }

    if (v2)
    {
      OUTLINED_FUNCTION_8_14();
    }

    else
    {
      if (j >= *(v3 + 16))
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_3_15();
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      v13 = *(v15 + 16);
      OUTLINED_FUNCTION_4_13();
      sub_1BF17B36C();
      OUTLINED_FUNCTION_4_13();
      sub_1BF17B37C();
      sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t _s13TeaFoundation26ApplicationStateManagerIOSC6remove7monitoryAA0cD7Monitor_p_tF_0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = sub_1BEFE90AC(v3);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      swift_unknownObjectRelease();
      if (v9 == a1)
      {

        swift_beginAccess();
        sub_1BF0BE058(i, sub_1BF108F40, sub_1BF04D094);
        swift_endAccess();
      }
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation31ApplicationStateLaunchOptionKeyO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF0BE470(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 16))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 11;
  if (v4 >= 0xD)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF0BE4C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 11;
    }
  }

  return result;
}

uint64_t sub_1BF0BE5BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManualClock.WakeUp();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RemoteNotificationFetchResult.hashValue.getter()
{
  v1 = *v0;
  sub_1BF17BB6C();
  MEMORY[0x1BFB53950](v1);
  return sub_1BF17BB9C();
}

uint64_t RemoteNotificationManager.__allocating_init()()
{
  OUTLINED_FUNCTION_0_1();
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC0];
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = v1;
  return result;
}

uint64_t RemoteNotificationManager.init()()
{
  result = v0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = v2;
  return result;
}

uint64_t RemoteNotificationManager.handleRemoteNotification(userInfo:)(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7CC0];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF0BE7F4(v1, a1, &v7);
  v3 = v7;
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  sub_1BF09E504(off_1ED8F0218, v3);
  sub_1BF099F10();
  v5 = v4;

  return v5;
}

uint64_t sub_1BF0BE7F4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  result = sub_1BEFE90AC(v4);
  if (!result)
  {
    goto LABEL_37;
  }

  v6 = result;
  if (result >= 1)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v7 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB53020](v7, v4);
      }

      else
      {
        v8 = *(v4 + 8 * v7 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          break;
        }
      }

LABEL_35:
      if (v6 == ++v7)
      {

LABEL_37:
        v18 = *(a1 + 16);
        v27[0] = MEMORY[0x1E69E7CC0];
        v19 = sub_1BEFE90AC(v18);
        result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        for (i = 0; ; ++i)
        {
          if (v19 == i)
          {

            v23 = *(a1 + 16);
            *(a1 + 16) = v27[0];
          }

          if ((v18 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x1BFB53020](i, v18);
          }

          else
          {
            if (i >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_50;
            }

            v21 = *(v18 + 8 * i + 32);
          }

          if (__OFADD__(i, 1))
          {
            break;
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_unknownObjectRelease();
            sub_1BF17B32C();
            v22 = *(v27[0] + 16);
            sub_1BF17B36C();
            sub_1BF17B37C();
            result = sub_1BF17B33C();
          }

          else
          {
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    v9 = v8[3];
    v10 = v8[5];
    if (!v10)
    {
      goto LABEL_32;
    }

    v25 = v8[4];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF17B14C();
    if (*(a2 + 16) && (v11 = sub_1BF082068(v27), (v12 & 1) != 0))
    {
      sub_1BF0075BC(*(a2 + 56) + 32 * v11, &v28);
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    sub_1BF083C34(v27);
    if (*(&v29 + 1))
    {
      sub_1BF008D6C();
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_30:

        swift_unknownObjectRelease();
        goto LABEL_35;
      }

      sub_1BF17B14C();
      if (MEMORY[0x737071] && (v13 = sub_1BF082068(v27), (v14 & 1) != 0))
      {
        sub_1BF0075BC(MEMORY[0x737099] + 32 * v13, &v28);
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
      }

      sub_1BF083C34(v27);
      if (*(&v29 + 1))
      {
        if (swift_dynamicCast())
        {
          if (v25 == 0x79726F6765746163 && v10 == 0xE800000000000000)
          {

LABEL_32:
            ObjectType = swift_getObjectType();
            (*(v9 + 8))(a2, ObjectType, v9);
            MEMORY[0x1BFB52290]();
            if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BF17A53C();
            }

            sub_1BF17A59C();

            swift_unknownObjectRelease();

            goto LABEL_35;
          }

          v16 = sub_1BF17B86C();

          if (v16)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_30;
      }
    }

    sub_1BEFFD168(&v28);
    goto LABEL_30;
  }

LABEL_51:
  __break(1u);
  return result;
}

BOOL sub_1BF0BEC54@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BF0FCF04(1u, *a1);
  *a2 = result;
  return result;
}

uint64_t RemoteNotificationManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t RemoteNotificationManager.__deallocating_deinit()
{
  RemoteNotificationManager.deinit();
  v0 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF0BECFC()
{
  sub_1BF042FB8(v0 + 16);
  v1 = *(v0 + 40);

  sub_1BF042FB8(v0 + 48);
  return v0;
}

uint64_t sub_1BF0BED2C()
{
  v0 = sub_1BF0BECFC();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

unint64_t sub_1BF0BEDA8()
{
  result = qword_1EBDCBC20;
  if (!qword_1EBDCBC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBC20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoteNotificationFetchResult(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t SafeCollection.subscript.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF055C60(a1, a2);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_26();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_2_21();
    v7 = sub_1BF17AC8C();
    if ((sub_1BF056074(a1 + *(v7 + 36), a2) & 0x8000000000000000) == 0)
    {
      sub_1BF17ABEC();
    }
  }

  OUTLINED_FUNCTION_1_26();
  swift_getAssociatedTypeWitness();
  v8 = OUTLINED_FUNCTION_0_32();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

{
  v4 = sub_1BF055C60(a1, a2);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_26();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_2_21();
    v7 = sub_1BF17A04C();
    if (sub_1BF056074(a1 + *(v7 + 36), a2) >= 1)
    {
      swift_getWitnessTable();
      sub_1BF17AB9C();
    }
  }

  OUTLINED_FUNCTION_1_26();
  swift_getAssociatedTypeWitness();
  v8 = OUTLINED_FUNCTION_0_32();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_1BF0BF134(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
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

  return v5 + (v6 | v11) + 1;
}

void sub_1BF0BF270(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1BF0BF474()
{
  sub_1BEFF6E88();
  v0 = sub_1BF17AD5C();
  type metadata accessor for ThrottleScheduler();
  result = swift_allocObject();
  *(result + 16) = v0;
  *(result + 24) = 0;
  qword_1EBDCABD0 = result;
  return result;
}

uint64_t static ThrottleScheduler.main.getter()
{
  if (qword_1EBDCABC8 != -1)
  {
    swift_once();
  }
}

uint64_t ThrottleScheduler.__allocating_init(label:qos:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BF17AD4C();
  v6 = OUTLINED_FUNCTION_1(v5);
  v41 = v7;
  v42 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v40 = v11 - v10;
  v39 = sub_1BF17AD1C();
  v12 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_0();
  v13 = sub_1BF179BBC();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v22 = sub_1BF1794FC();
  v23 = OUTLINED_FUNCTION_1(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_0();
  v30 = v29 - v28;
  if (!a2)
  {
    sub_1BF17B1EC();

    sub_1BF1794EC();
    v31 = sub_1BF1794BC();
    v32 = v13;
    v34 = v33;
    (*(v25 + 8))(v30, v22);
    MEMORY[0x1BFB52000](v31, v34);
    v13 = v32;
  }

  sub_1BEFF6E88();
  (*(v16 + 16))(v21, a3, v13);
  v35 = a3;
  v36 = MEMORY[0x1E69E8030];
  sub_1BF00AEF4(&qword_1ED8F0BE0, MEMORY[0x1E69E8030]);
  sub_1BF026E14(0, qword_1ED8F0BF0, v36);
  sub_1BF0BF8CC(&qword_1ED8F0BE8, qword_1ED8F0BF0, v36);
  sub_1BF17B0BC();
  (*(v41 + 104))(v40, *MEMORY[0x1E69E8090], v42);
  v37 = sub_1BF17AD9C();
  (*(v16 + 8))(v35, v13);
  result = swift_allocObject();
  *(result + 16) = v37;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1BF0BF8CC(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1BF026E14(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ThrottleScheduler.precondition(block:)(void (*a1)(uint64_t *))
{
  v3 = *v1;
  v4 = sub_1BF179C5C();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = v1[2];
  *(v11 - v10) = v13;
  (*(v7 + 104))(v11 - v10, *MEMORY[0x1E69E8020], v4);
  v14 = v13;
  LOBYTE(v13) = sub_1BF179C8C();
  result = (*(v7 + 8))(v12, v4);
  if (v13)
  {
    v16[3] = v3;
    v16[4] = &protocol witness table for ThrottleScheduler;
    v16[0] = v1;

    a1(v16);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ThrottleScheduler.schedule(delay:block:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF179BEC();
  v5 = OUTLINED_FUNCTION_1(v4);
  v30 = v6;
  v31 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v14 = sub_1BF179B5C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_4;
  _Block_copy(aBlock);
  v32 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7F60];
  sub_1BF00AEF4(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60]);
  sub_1BF026E14(0, &qword_1ED8EFBE0, v16);
  sub_1BF0BF8CC(&qword_1ED8EFBD0, &qword_1ED8EFBE0, v16);

  sub_1BF17B0BC();
  v17 = sub_1BF179C4C();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_1BF179C2C();

  v21 = v29;
  v22 = *(v29 + 24);
  *(v29 + 24) = v20;
  v23 = v21;

  v24 = *(v23 + 16);
  sub_1BF179BDC();
  sub_1BF179C6C();
  v25 = *(v30 + 8);
  v26 = v11;
  v27 = v31;
  v25(v26, v31);
  sub_1BF17AD3C();

  return (v25)(v13, v27);
}

Swift::Void __swiftcall ThrottleScheduler.cancel()()
{
  if (*(v0 + 24))
  {

    sub_1BF179C3C();
  }
}

uint64_t ThrottleScheduler.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ThrottleScheduler.__deallocating_deinit()
{
  ThrottleScheduler.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t NSURLSession.downloadData(from:completion:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = (v8 + 16);
  v10 = sub_1BF178C0C();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v8;
  v24[4] = sub_1BF0C023C;
  v24[5] = v11;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = sub_1BF0C0248;
  v24[3] = &block_descriptor_5;
  v12 = _Block_copy(v24);

  v13 = [v4 dataTaskWithRequest:v10 completionHandler:v12];
  _Block_release(v12);

  swift_beginAccess();
  v14 = *(v8 + 16);
  *(v8 + 16) = v13;

  if (qword_1ED8EE9F0 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v15 = sub_1BF1797FC();
  __swift_project_value_buffer(v15, qword_1ED8F5298);

  v16 = sub_1BF1797DC();
  v17 = sub_1BF17ACDC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134349056;
    if (!*v9)
    {
LABEL_13:

      __break(1u);
      return result;
    }

    *(v18 + 4) = [*v9 taskIdentifier];

    _os_log_impl(&dword_1BEFE0000, v16, v17, "Scheduling URLSession data task. id=%{public}ld", v18, 0xCu);
    MEMORY[0x1BFB547B0](v18, -1, -1);
  }

  else
  {
  }

  if (!*v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  [*v9 resume];
  v19 = *v9;
  if (*v9)
  {
    v20 = sub_1BF0C06AC();
    v21 = &protocol witness table for NSURLSessionTask;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  *a3 = v19;
  a3[3] = v20;
  a3[4] = v21;
  v22 = v19;
}

void sub_1BF0C0188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, id, uint64_t), uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  v13 = *(a7 + 16);
  if (v13)
  {
    v14 = [v13 _incompleteTaskMetrics];
  }

  else
  {
    v14 = 0;
  }

  a5(a1, a2, a3, v14, a4);
}

uint64_t sub_1BF0C0248(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_1BF17935C();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_1BF00F5F4(v6, v11);
}

void NSURLSession.downloadData(from:operationID:earliestBeginDate:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = v4;
  v10 = sub_1BF1794AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BF178C0C();
  v16 = [v5 downloadTaskWithRequest_];

  v17 = v16;
  v18 = sub_1BF1793FC();
  [v17 setEarliestBeginDate_];

  sub_1BF0C06F0(a1, a2, v17);
  if (qword_1ED8EE9F0 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v19 = sub_1BF1797FC();
  __swift_project_value_buffer(v19, qword_1ED8F5298);
  (*(v11 + 16))(v14, a3, v10);
  v20 = v17;
  v21 = sub_1BF1797DC();
  v22 = sub_1BF17ACDC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v35 = a4;
    v36 = v24;
    v25 = v24;
    *v23 = 134349570;
    *(v23 + 4) = [v20 taskIdentifier];
    *(v23 + 12) = 2082;
    v26 = sub_1BF17948C();
    v28 = v27;
    (*(v11 + 8))(v14, v10);
    v29 = sub_1BF01A7AC(v26, v28, &v36);

    *(v23 + 14) = v29;
    *(v23 + 22) = 2082;

    v30 = sub_1BF083158(v20);
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v30 = 7104878;
      v32 = 0xE300000000000000;
    }

    v33 = sub_1BF01A7AC(v30, v32, &v36);

    *(v23 + 24) = v33;
    _os_log_impl(&dword_1BEFE0000, v21, v22, "Scheduling URLSession download task. id=%{public}ld, beginData=%{public}s, description=%{public}s", v23, 0x20u);
    swift_arrayDestroy();
    v34 = v25;
    a4 = v35;
    MEMORY[0x1BFB547B0](v34, -1, -1);
    MEMORY[0x1BFB547B0](v23, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  [v20 resume];
  a4[3] = sub_1BF0C06AC();
  a4[4] = &protocol witness table for NSURLSessionTask;

  *a4 = v20;
}

unint64_t sub_1BF0C06AC()
{
  result = qword_1ED8EDD28;
  if (!qword_1ED8EDD28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8EDD28);
  }

  return result;
}

void sub_1BF0C06F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BF17A07C();
  [a3 setTaskDescription_];
}

uint64_t sub_1BF0C0770()
{
  v0 = sub_1BF1797FC();
  __swift_allocate_value_buffer(v0, qword_1EBDCBC28);
  __swift_project_value_buffer(v0, qword_1EBDCBC28);
  v1 = [objc_opt_self() mainBundle];
  sub_1BF009264(v1);
  return sub_1BF1797EC();
}

uint64_t static Logger.networkActivities.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBDCAFD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BF1797FC();
  v3 = __swift_project_value_buffer(v2, qword_1EBDCBC28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t StateMachineTransition.__allocating_init(state:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_22();
  v2 = swift_allocObject();
  StateMachineTransition.init(state:)(a1);
  return v2;
}

double StateMachineTransition.__allocating_init(states:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_22();
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 16) = a1;
  return result;
}

uint64_t StateMachineTransition.init(states:)(uint64_t a1)
{
  *(v1 + 120) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t StateMachineTransition.canTry(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v4 = *(v2 + 32);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  OUTLINED_FUNCTION_0_33(v5);
}

uint64_t StateMachineTransition.willEnter(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  v4 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  OUTLINED_FUNCTION_0_33(v5);
}

uint64_t StateMachineTransition.willEnterFailed(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  OUTLINED_FUNCTION_0_33(v5);
}

uint64_t StateMachineTransition.willExit(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);
  v4 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  OUTLINED_FUNCTION_0_33(v5);
}

uint64_t StateMachineTransition.willExitFailed(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);
  v4 = *(v2 + 112);
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  OUTLINED_FUNCTION_0_33(v5);
}

uint64_t StateMachineTransition.didExit(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);
  v4 = *(v2 + 128);
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  OUTLINED_FUNCTION_0_33(v5);
}

uint64_t sub_1BF0C0B00(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!v2)
  {
    return 1;
  }

  v4 = *(v1 + 32);

  LOBYTE(a1) = v2(a1);
  v5 = OUTLINED_FUNCTION_36();
  sub_1BEFE52DC(v5);
  return a1 & 1;
}

uint64_t sub_1BF0C0B60(uint64_t result)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 48);

    v2(v3);
    v5 = OUTLINED_FUNCTION_36();
    return sub_1BEFE52DC(v5);
  }

  return result;
}

uint64_t sub_1BF0C0BB8(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (v3)
  {
    v5 = result;
    v6 = *(v2 + 64);

    v3(v5, a2);
    v7 = OUTLINED_FUNCTION_36();

    return sub_1BEFE52DC(v7);
  }

  return result;
}

uint64_t sub_1BF0C0C2C(uint64_t result)
{
  v2 = *(v1 + 72);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 80);

    v2(v3);
    v5 = OUTLINED_FUNCTION_36();

    return sub_1BEFE52DC(v5);
  }

  return result;
}

uint64_t sub_1BF0C0C98(uint64_t result)
{
  v2 = *(v1 + 88);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 96);

    v2(v3);
    v5 = OUTLINED_FUNCTION_36();
    return sub_1BEFE52DC(v5);
  }

  return result;
}

uint64_t sub_1BF0C0CF0(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 104);
  if (v3)
  {
    v5 = result;
    v6 = *(v2 + 112);

    v3(v5, a2);
    v7 = OUTLINED_FUNCTION_36();

    return sub_1BEFE52DC(v7);
  }

  return result;
}

uint64_t sub_1BF0C0D64(uint64_t result)
{
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 128);

    v2(v3);
    v5 = OUTLINED_FUNCTION_36();

    return sub_1BEFE52DC(v5);
  }

  return result;
}

void *StateMachineTransition.deinit()
{
  v1 = v0[2];

  v2 = v0[4];
  sub_1BEFE52DC(v0[3]);
  v3 = v0[6];
  sub_1BEFE52DC(v0[5]);
  v4 = v0[8];
  sub_1BEFE52DC(v0[7]);
  v5 = v0[10];
  sub_1BEFE52DC(v0[9]);
  v6 = v0[12];
  sub_1BEFE52DC(v0[11]);
  v7 = v0[14];
  sub_1BEFE52DC(v0[13]);
  v8 = v0[16];
  sub_1BEFE52DC(v0[15]);
  return v0;
}

uint64_t StateMachineTransition.__deallocating_deinit()
{
  StateMachineTransition.deinit();
  v0 = OUTLINED_FUNCTION_2_22();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF0C0E94(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    sub_1BF014DC0(a1, a2 & 0xDFFFFFFFFFFFFFFFLL);

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  else
  {

    return sub_1BF014DC0(a1, a2);
  }
}

uint64_t Throttle.__allocating_init(delay:scheduler:)(double a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Throttle.init(delay:scheduler:)(a1);
  return v5;
}

uint64_t *Throttle.init(delay:scheduler:)(double a1)
{
  v2 = *v1;
  *(v1 + 24) = 0;
  v1[4] = 0;
  v1[5] = 0;
  *(v1 + 2) = a1;
  OUTLINED_FUNCTION_0();
  (*(*(*(v4 + 80) - 8) + 32))(v1 + *(v3 + 120));
  return v1;
}

uint64_t Throttle.throttle(block:)()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  v3 = *(v2 + 120);
  v12 = v0;
  v13 = v4;
  v14 = v5;
  OUTLINED_FUNCTION_0();
  v7 = *(*(v6 + 88) + 8);
  OUTLINED_FUNCTION_0();
  return v9(sub_1BF0C11C8, &v11, *(v8 + 80));
}

uint64_t sub_1BF0C1040(void *a1, uint64_t *a2, void (*a3)(void), uint64_t a4)
{
  if (*(a2 + 24) == 1)
  {
    v5 = a2[4];
    v6 = a2[5];
    a2[4] = a3;
    a2[5] = a4;
    sub_1BEFE52DC(v5);
  }

  else
  {
    v9 = *a2;
    *(a2 + 24) = 1;
    a3();
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = *(a2 + 2);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = *(v9 + 80);
    v14[3] = *(v9 + 88);
    v14[4] = v13;
    v15 = *(v11 + 8);

    v15(sub_1BF0C1530, v14, v10, v11, v12);
  }
}

uint64_t sub_1BF0C11D4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 32);
    *(result + 24) = 0;
    if (v1)
    {
      v2 = *(result + 40);
      *(result + 32) = 0;
      *(result + 40) = 0;
      Throttle.throttle(block:)(v1, v2);

      return sub_1BEFE52DC(v1);
    }

    else
    {
    }
  }

  return result;
}

Swift::Void __swiftcall Throttle.reset()()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  v3 = *(v2 + 120);
  v5 = *(*(v4 + 88) + 8);
  OUTLINED_FUNCTION_0();
  v7 = *(v6 + 80);
  v8(sub_1BF0C1354);
}

uint64_t sub_1BF0C12F0(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 16))(v3, v4);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  result = sub_1BEFE52DC(v5);
  *(a2 + 24) = 0;
  return result;
}

uint64_t *Throttle.deinit()
{
  v1 = *v0;
  v2 = v0[5];
  sub_1BEFE52DC(v0[4]);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t Throttle.__deallocating_deinit()
{
  Throttle.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF0C1434(uint64_t a1)
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

uint64_t sub_1BF0C1530()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1BF0C11D4();
}

uint64_t ThreadsafeSet.isEmpty.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[2];
  UnfairLock.lock()();
  OUTLINED_FUNCTION_1_27();
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_0_35();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_0_35();
  v8 = *(v7 + 88);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  LOBYTE(v8) = sub_1BF17A96C();

  sub_1BEFF99D8(v1);
  return v8 & 1;
}

uint64_t ThreadsafeSet.__allocating_init()()
{
  v0 = swift_allocObject();
  ThreadsafeSet.init()();
  return v0;
}

void ThreadsafeSet.remove(_:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[2];
  UnfairLock.lock()();
  swift_beginAccess();
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  sub_1BF17A9AC();
  sub_1BF17A95C();
  swift_endAccess();
  sub_1BEFF99D8(v1);
}

uint64_t ThreadsafeSet.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t ThreadsafeSet.__deallocating_deinit()
{
  ThreadsafeSet.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

id DiagnosticFileCollector.init(diagnosticDumpDir:diagnosticFileListURL:logger:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_1BF17923C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR___TFDiagnosticFileCollector_diagnosticFileProviders] = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR___TFDiagnosticFileCollector_lock;
  v31 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v3[v14] = UnfairLock.init(options:)(&v31);
  v15 = *(v10 + 16);
  v15(&v3[OBJC_IVAR___TFDiagnosticFileCollector_diagnosticDumpDir], a1, v9);
  v15(&v3[OBJC_IVAR___TFDiagnosticFileCollector_diagnosticFileListURL], a2, v9);
  v16 = [objc_opt_self() defaultManager];
  v17 = [v16 temporaryDirectory];

  sub_1BF1791BC();
  v18 = type metadata accessor for DiagnosticAttachmentResolver();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  (*(v10 + 32))(v21 + OBJC_IVAR____TtC13TeaFoundation28DiagnosticAttachmentResolver_temporaryDirectory, v13, v9);
  v22 = &v4[OBJC_IVAR___TFDiagnosticFileCollector_diagnosticAttachmentResolver];
  v22[3] = v18;
  v22[4] = &off_1F3DBBD78;
  *v22 = v21;
  v23 = OBJC_IVAR___TFDiagnosticFileCollector_logger;
  v24 = sub_1BF1797FC();
  v25 = *(v24 - 8);
  (*(v25 + 16))(&v4[v23], a3, v24);
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v30, sel_init);
  (*(v25 + 8))(a3, v24);
  v27 = *(v10 + 8);
  v27(a2, v9);
  v27(a1, v9);
  return v26;
}

void DiagnosticFileCollector.add(diagnosticFileProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___TFDiagnosticFileCollector_lock);
  UnfairLock.lock()();
  v6 = OBJC_IVAR___TFDiagnosticFileCollector_diagnosticFileProviders;
  swift_beginAccess();
  sub_1BF071BCC();
  v7 = *(*(v2 + v6) + 16);
  sub_1BF071E08(v7);
  v8 = *(v2 + v6);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v2 + v6) = v8;
  swift_endAccess();
  v10 = *(v5 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v10);
}

void DiagnosticFileCollector.remove(diagnosticFileProvider:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___TFDiagnosticFileCollector_lock);
  UnfairLock.lock()();
  v5 = OBJC_IVAR___TFDiagnosticFileCollector_diagnosticFileProviders;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v6 = sub_1BF0C42EC((v2 + v5), a1);
  v7 = *(*(v2 + v5) + 16);
  if (v7 < v6)
  {
    __break(1u);
    swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_1BF0C403C(v6, v7);
    swift_endAccess();
    os_unfair_lock_unlock(*(v4 + 16));
  }
}

uint64_t DiagnosticFileCollector.collectDiagnosticFiles()()
{
  *(v1 + 48) = v0;
  v2 = OUTLINED_FUNCTION_13_3();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BF0C1C28()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[6];
  v2 = *(v1 + OBJC_IVAR___TFDiagnosticFileCollector_lock);
  UnfairLock.lock()();
  v3 = OBJC_IVAR___TFDiagnosticFileCollector_diagnosticFileProviders;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v0[7] = v4;
  v5 = *(v2 + 16);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  os_unfair_lock_unlock(v5);
  OUTLINED_FUNCTION_7_15();
  sub_1BF0C4AFC(0, v6, v7, MEMORY[0x1E69E62F8]);
  v9 = v8;
  v10 = swift_task_alloc();
  v0[8] = v10;
  *(v10 + 16) = v4;
  *(v10 + 24) = v1;
  v11 = *(MEMORY[0x1E69E87D8] + 4);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_1BF0C1D84;

  return MEMORY[0x1EEE6DBF8](v0 + 5, v9, v9, 0, 0, &unk_1BF181F50, v10, v9);
}

uint64_t sub_1BF0C1D84()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  v2 = v1[9];
  v3 = v1[8];
  v4 = v1[7];
  v5 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  v7 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BF0C1EA0()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[5];
  v2 = v0[6];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v3 = sub_1BF1797DC();
  v4 = sub_1BF17AC9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v1 + 16);

    _os_log_impl(&dword_1BEFE0000, v3, v4, "Collected %ld diagnostic files", v5, 0xCu);
    MEMORY[0x1BFB547B0](v5, -1, -1);
  }

  else
  {
  }

  v6 = v0[1];

  return v6(v1);
}

uint64_t sub_1BF0C1FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[23] = a1;
  v4[24] = a2;
  sub_1BF0C4AFC(0, &qword_1ED8EF890, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF0C20A8, 0, 0);
}

uint64_t sub_1BF0C20A8()
{
  v3 = *(v0 + 200);
  v4 = *(v3 + 16);
  if (v4)
  {
    v90 = v0 + 48;
    v93 = v0 + 16;
    v87 = (v0 + 80);
    v103 = **(v0 + 192);
    v5 = (v3 + 32);
    v6 = sub_1BF17A77C();
    v96 = v6 - 8;
    do
    {
      v99 = v4;
      v8 = *(v0 + 248);
      v7 = *(v0 + 256);
      v111 = *v5;
      OUTLINED_FUNCTION_14_10(v7);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_3_16(v9, v10, v11, v12, v13, v14, v15, v16, v87, v90, v93, v96, v99, v103, v106, v109, v17);
      sub_1BF047B30(v7, v8);
      OUTLINED_FUNCTION_19_6(v8);
      swift_unknownObjectRetain_n();
      v18 = *(v0 + 248);
      if (v8 == 1)
      {
        OUTLINED_FUNCTION_0_36();
        sub_1BF0C4848(v18, &qword_1ED8EF890, v19, MEMORY[0x1E69E6720]);
      }

      else
      {
        sub_1BF17A76C();
        OUTLINED_FUNCTION_13_11();
        (*(v20 + 8))(v18, v6);
      }

      if (*v1)
      {
        v21 = *(v2 + 24);
        v22 = *v1;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = sub_1BF17A6AC();
        v25 = v24;
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      OUTLINED_FUNCTION_58();
      v26 = swift_allocObject();
      *(v26 + 16) = &unk_1BF181FC0;
      *(v26 + 24) = v2;
      sub_1BF0C4AFC(0, &qword_1ED8E9C68, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
      v107 = v27;

      if (v25 | v23)
      {
        v28 = v94;
        *v94 = 0;
        v94[1] = 0;
        *(v0 + 32) = v23;
        *(v0 + 40) = v25;
      }

      else
      {
        v28 = 0;
      }

      v29 = *(v0 + 256);
      v30 = *(v0 + 232);
      v31 = *(v0 + 240);
      v32 = *(v0 + 208);
      *(v0 + 112) = 1;
      *(v0 + 120) = v28;
      *(v0 + 128) = v104;
      v33 = swift_task_create();

      OUTLINED_FUNCTION_0_36();
      sub_1BF0C4848(v29, &qword_1ED8EF890, v34, MEMORY[0x1E69E6720]);
      OUTLINED_FUNCTION_14_10(v31);
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_3_16(v35, v36, v37, v38, v39, v40, v41, v42, v88, v91, v94, v97, v100, v104, v107, v111, v43);
      *(v44 + 48) = v32;
      sub_1BF047B30(v31, v30);
      OUTLINED_FUNCTION_19_6(v30);
      swift_unknownObjectRetain();
      v45 = v32;
      v46 = *(v0 + 232);
      if (v33 == 1)
      {
        OUTLINED_FUNCTION_0_36();
        sub_1BF0C4848(v46, &qword_1ED8EF890, v47, MEMORY[0x1E69E6720]);
      }

      else
      {
        sub_1BF17A76C();
        OUTLINED_FUNCTION_13_11();
        (*(v48 + 8))(v46, v6);
      }

      if (*v29)
      {
        v49 = *(v2 + 24);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v50 = sub_1BF17A6AC();
        v52 = v51;
        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0;
        v52 = 0;
      }

      OUTLINED_FUNCTION_58();
      v53 = swift_allocObject();
      *(v53 + 16) = &unk_1BF181FD0;
      *(v53 + 24) = v2;

      if (v52 | v50)
      {
        v54 = v92;
        *v92 = 0;
        v92[1] = 0;
        *(v0 + 64) = v50;
        *(v0 + 72) = v52;
      }

      else
      {
        v54 = 0;
      }

      v55 = *(v0 + 240);
      v56 = *(v0 + 216);
      v57 = *(v0 + 224);
      v58 = *(v0 + 208);
      *(v0 + 136) = 1;
      *(v0 + 144) = v54;
      *(v0 + 152) = v105;
      v59 = swift_task_create();

      OUTLINED_FUNCTION_0_36();
      sub_1BF0C4848(v55, &qword_1ED8EF890, v60, MEMORY[0x1E69E6720]);
      OUTLINED_FUNCTION_14_10(v57);
      v61 = swift_allocObject();
      OUTLINED_FUNCTION_3_16(v61, v62, v63, v64, v65, v66, v67, v68, v89, v92, v95, v98, v101, v105, v108, v110, v69);
      *(v70 + 48) = v58;
      sub_1BF047B30(v57, v56);
      OUTLINED_FUNCTION_19_6(v56);
      swift_unknownObjectRetain();
      v71 = v58;
      v72 = *(v0 + 216);
      if (v59 == 1)
      {
        OUTLINED_FUNCTION_0_36();
        sub_1BF0C4848(v72, &qword_1ED8EF890, v73, MEMORY[0x1E69E6720]);
      }

      else
      {
        sub_1BF17A76C();
        OUTLINED_FUNCTION_13_11();
        (*(v74 + 8))(v72, v6);
      }

      if (*v55)
      {
        v75 = *(v2 + 24);
        v76 = *v55;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v77 = sub_1BF17A6AC();
        v79 = v78;
        swift_unknownObjectRelease();
      }

      else
      {
        v77 = 0;
        v79 = 0;
      }

      OUTLINED_FUNCTION_58();
      v80 = swift_allocObject();
      *(v80 + 16) = &unk_1BF181FE0;
      *(v80 + 24) = v2;
      v1 = (v79 | v77);

      if (v79 | v77)
      {
        v81 = v87;
        *v87 = 0;
        v87[1] = 0;
        *(v0 + 96) = v77;
        *(v0 + 104) = v79;
      }

      else
      {
        v81 = 0;
      }

      v82 = *(v0 + 224);
      *(v0 + 160) = 1;
      *(v0 + 168) = v81;
      *(v0 + 176) = v103;
      swift_task_create();

      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_0_36();
      sub_1BF0C4848(v82, &qword_1ED8EF890, v83, MEMORY[0x1E69E6720]);
      ++v5;
      v4 = v102 - 1;
    }

    while (v102 != 1);
  }

  v84 = **(v0 + 192);
  v85 = swift_task_alloc();
  *(v0 + 264) = v85;
  *v85 = v0;
  v85[1] = sub_1BF0C2780;

  return sub_1BF0AFA9C();
}

void sub_1BF0C2780()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v3 = v2;
  v5 = *(v4 + 264);
  *v3 = *v1;
  *(v2 + 272) = v6;

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1BF0C2898, 0, 0);
  }
}

void sub_1BF0C2898()
{
  v1 = 0;
  v2 = v0[34];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v5 = *(v2 + 32 + 8 * v1);
    v6 = *(v5 + 16);
    v7 = *(v4 + 16);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      goto LABEL_22;
    }

    v9 = *(v2 + 32 + 8 * v1);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 24) >> 1)
    {
      if (v7 <= v8)
      {
        v11 = v7 + v6;
      }

      else
      {
        v11 = v7;
      }

      sub_1BF0A6444(isUniquelyReferenced_nonNull_native, v11, 1, v4);
      v4 = v12;
    }

    if (*(v5 + 16))
    {
      v13 = (*(v4 + 24) >> 1) - *(v4 + 16);
      v14 = *(sub_1BF17923C() - 8);
      if (v13 < v6)
      {
        goto LABEL_24;
      }

      v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v16 = *(v14 + 72);
      swift_arrayInitWithCopy();

      if (v6)
      {
        v17 = *(v4 + 16);
        v18 = __OFADD__(v17, v6);
        v19 = v17 + v6;
        if (v18)
        {
          goto LABEL_25;
        }

        *(v4 + 16) = v19;
      }
    }

    else
    {

      if (v6)
      {
        goto LABEL_23;
      }
    }

    ++v1;
  }

  v20 = v0[34];
  v22 = v0[31];
  v21 = v0[32];
  v24 = v0[29];
  v23 = v0[30];
  v26 = v0[27];
  v25 = v0[28];
  v27 = v0[23];

  *v27 = v4;

  OUTLINED_FUNCTION_9();

  v28();
}

uint64_t sub_1BF0C2A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  ObjectType = swift_getObjectType();
  v8 = *(a5 + 8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1BF0C2BB0;

  return v12(ObjectType, a5);
}

uint64_t sub_1BF0C2BB0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BF0C2C98()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_9();
  return v1();
}

uint64_t sub_1BF0C2CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a6;
  sub_1BF0C4AFC(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[4] = swift_task_alloc();
  v10 = sub_1BF17923C();
  v6[5] = v10;
  v11 = *(v10 - 8);
  v6[6] = v11;
  v12 = *(v11 + 64) + 15;
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  ObjectType = swift_getObjectType();
  v14 = *(a5 + 16);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v6[9] = v16;
  *v16 = v6;
  v16[1] = sub_1BF0C2EB0;

  return v18(ObjectType, a5);
}

uint64_t sub_1BF0C2EB0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 80) = v5;

  v6 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

id sub_1BF0C2F98()
{
  v36 = v0;
  v1 = v0[10];
  v2 = v0[6];
  result = sub_1BEFE90AC(v1);
  v4 = result;
  v5 = 0;
  v33 = v1 & 0xFFFFFFFFFFFFFF8;
  v34 = v1 & 0xC000000000000001;
  v31 = v2;
  v32 = v1 + 32;
  v6 = (v2 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (v4 != v5)
  {
    if (v34)
    {
      result = MEMORY[0x1BFB53020](v5, v0[10]);
    }

    else
    {
      if (v5 >= *(v33 + 16))
      {
        goto LABEL_20;
      }

      result = *(v32 + 8 * v5);
    }

    v8 = result;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    v10 = v0[4];
    v9 = v0[5];
    v11 = v0[3];
    v35 = result;
    sub_1BF0C31F8(&v35, v11, v10);

    if (__swift_getEnumTagSinglePayload(v10, 1, v9) == 1)
    {
      v12 = v0[4];
      OUTLINED_FUNCTION_7_15();
      result = sub_1BF0C4848(v13, &qword_1ED8EFC20, v14, MEMORY[0x1E69E6720]);
    }

    else
    {
      v16 = v0[7];
      v15 = v0[8];
      v17 = v0[5];
      v18 = *v6;
      (*v6)(v15, v0[4], v17);
      v18(v16, v15, v17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BF0A6444(0, *(v7 + 16) + 1, 1, v7);
        v7 = v23;
      }

      v20 = *(v7 + 16);
      v19 = *(v7 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1BF0A6444(v19 > 1, v20 + 1, 1, v7);
        v7 = v24;
      }

      v21 = v0[7];
      v22 = v0[5];
      *(v7 + 16) = v20 + 1;
      result = (v18)(v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v20, v21, v22);
    }

    ++v5;
  }

  v25 = v0[10];
  v26 = v0[7];
  v27 = v0[8];
  v28 = v0[4];
  v29 = v0[2];

  *v29 = v7;

  OUTLINED_FUNCTION_9();

  return v30();
}

uint64_t sub_1BF0C31F8@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2;
  v7 = sub_1BF1797DC();
  v8 = sub_1BF17AC9C();

  v33 = a3;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v9 = 136315394;
    v12 = *&v5[OBJC_IVAR___TFDiagnosticData_filename];
    v11 = *&v5[OBJC_IVAR___TFDiagnosticData_filename + 8];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v13 = sub_1BF01A7AC(v12, v11, &v34);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = sub_1BF1791CC();
    v16 = sub_1BF01A7AC(v14, v15, &v34);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1BEFE0000, v7, v8, "Writing diagnostic data with filename=%s to diagnostic cache dir=%s", v9, 0x16u);
    swift_arrayDestroy();
    v17 = v10;
    a3 = v33;
    MEMORY[0x1BFB547B0](v17, -1, -1);
    MEMORY[0x1BFB547B0](v9, -1, -1);
  }

  v18 = &v5[OBJC_IVAR___TFDiagnosticData_filename];
  v19 = *&v5[OBJC_IVAR___TFDiagnosticData_filename + 8];
  sub_1BF0C3558(*&v5[OBJC_IVAR___TFDiagnosticData_data], *&v5[OBJC_IVAR___TFDiagnosticData_data + 8], *&v5[OBJC_IVAR___TFDiagnosticData_filename], a3);
  if (v32)
  {
    v20 = v5;
    v21 = v6;
    v22 = sub_1BF1797DC();
    v23 = sub_1BF17ACBC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_1BF01A7AC(*v18, v18[1], &v34);
      *(v24 + 12) = 2080;
      v26 = 1;
      v27 = sub_1BF1791CC();
      v29 = sub_1BF01A7AC(v27, v28, &v34);

      *(v24 + 14) = v29;
      _os_log_impl(&dword_1BEFE0000, v22, v23, "Failed to write diagnostic data with filename=%s to diagnostic cache dir=%s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB547B0](v25, -1, -1);
      MEMORY[0x1BFB547B0](v24, -1, -1);
    }

    else
    {

      v26 = 1;
    }

    a3 = v33;
  }

  else
  {
    v26 = 0;
  }

  v30 = sub_1BF17923C();
  return __swift_storeEnumTagSinglePayload(a3, v26, 1, v30);
}

uint64_t sub_1BF0C3558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = a3;
  v19[2] = a1;
  v19[3] = a2;
  v5 = sub_1BF17912C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF0C4AFC(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v19 - v12;
  v14 = OBJC_IVAR___TFDiagnosticFileCollector_diagnosticDumpDir;
  v15 = sub_1BF17923C();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v13, v19[0] + v14, v15);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  (*(v6 + 104))(v9, *MEMORY[0x1E6968F70], v5);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF17920C();
  v17 = v19[5];
  result = sub_1BF17938C();
  if (v17)
  {
    return (*(v16 + 8))(a4, v15);
  }

  return result;
}

uint64_t sub_1BF0C3788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a1;
  v6[8] = a6;
  v8 = sub_1BF17923C();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64) + 15;
  v6[11] = swift_task_alloc();
  ObjectType = swift_getObjectType();
  v12 = *(a5 + 24);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  v6[12] = v14;
  *v14 = v6;
  v14[1] = sub_1BF0C390C;

  return v16(ObjectType, a5);
}

uint64_t sub_1BF0C390C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;
  v4 = *(v3 + 96);
  *v2 = *v0;
  *(v1 + 104) = v5;

  v6 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BF0C39F4()
{
  OUTLINED_FUNCTION_13_2();
  sub_1BEFE6A78(v0[8] + OBJC_IVAR___TFDiagnosticFileCollector_diagnosticAttachmentResolver, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v2 + 16);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1BF0C3B34;
  v6 = v0[13];

  return v8(v6, v1, v2);
}

uint64_t sub_1BF0C3B34()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_4_2();
  *v2 = v1;
  v4 = *(v3 + 112);
  v5 = *(v3 + 104);
  v6 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v9 + 120) = v8;

  v10 = OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

void sub_1BF0C3C34()
{
  v1 = 0;
  v2 = v0[15];
  v3 = v0[10];
  v4 = *(v2 + 16);
  v5 = (v2 + 40);
  v6 = MEMORY[0x1E69E7CC0];
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v7 = v0[11];
    v9 = *(v5 - 1);
    v8 = *v5;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF17915C();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BF0A6444(0, *(v6 + 16) + 1, 1, v6);
      v6 = v14;
    }

    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1BF0A6444(v10 > 1, v11 + 1, 1, v6);
      v6 = v15;
    }

    v12 = v0[11];
    v13 = v0[9];
    *(v6 + 16) = v11 + 1;
    (*(v3 + 32))(v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
    v5 += 2;
    ++v1;
  }

  v16 = v0[15];
  v17 = v0[11];
  v18 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  *v18 = v6;

  OUTLINED_FUNCTION_9();

  v19();
}

id DiagnosticFileCollector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticFileCollector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BF0C3F78(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  for (i = (a1 + 32); ; i += 2)
  {
    if (*(a1 + 16) == v2)
    {
      v4 = 0;
      goto LABEL_7;
    }

    if (*i == a2)
    {
      break;
    }

    ++v2;
  }

  v4 = v2;
LABEL_7:
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1BF0C403C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1BEFF5DB0(result, 1, sub_1BF0A6888);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = v9 + 16 * v5;
  sub_1BF0C4B60();
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1BEFFA1B4(v9 + 16 * a2, v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1BF0C4170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for ManualClock.WakeUp();
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v15 + v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = sub_1BF0A6F14(v14 + v12 * a2, v18 - a2, v15 + v12 * a3);
      v19 = *(v9 + 16);
      v20 = __OFADD__(v19, v16);
      v21 = v19 + v16;
      if (!v20)
      {
        *(v9 + 16) = v21;
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  if (a3 < 1 || v12 * a3 < 1)
  {
    return sub_1BF0C4848(a4, &qword_1EBDCBC40, type metadata accessor for ManualClock.WakeUp, MEMORY[0x1E69E6BC0]);
  }

  for (i = 0; (i & 1) == 0; i = 1)
  {
    result = sub_1BF0C4520(a4, v15);
    v15 += v12;
    if (v15 >= v17)
    {
      return sub_1BF0C4848(a4, &qword_1EBDCBC40, type metadata accessor for ManualClock.WakeUp, MEMORY[0x1E69E6BC0]);
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1BF0C42EC(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  swift_unknownObjectRetain();
  result = sub_1BF0C3F78(v5, a2);
  v8 = result;
  if (v2)
  {
    goto LABEL_4;
  }

  if (v7)
  {
    v8 = *(v5 + 16);
LABEL_4:
    swift_unknownObjectRelease();
    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 16 * result + 48; ; i += 16)
    {
      v11 = *(v5 + 16);
      if (v9 == v11)
      {
        break;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v12 = *(v5 + i);
      if (*(v5 + i) != a2)
      {
        if (v9 != v8)
        {
          if (v8 >= v11)
          {
            goto LABEL_19;
          }

          v18 = *(v5 + i);
          v17 = *(v5 + 32 + 16 * v8);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1BF107140(v5);
            v5 = v16;
          }

          v13 = v5 + 16 * v8;
          v14 = *(v13 + 32);
          *(v13 + 32) = v18;
          result = swift_unknownObjectRelease();
          if (v9 >= *(v5 + 16))
          {
            goto LABEL_20;
          }

          v15 = *(v5 + i);
          *(v5 + i) = v17;
          result = swift_unknownObjectRelease();
          *a1 = v5;
        }

        ++v8;
      }

      ++v9;
    }

    goto LABEL_4;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1BF0C4444()
{
  OUTLINED_FUNCTION_16();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4(v7);
  *v8 = v9;
  v8[1] = sub_1BF035DD0;

  return sub_1BF0C1FA8(v4, v2, v6, v5);
}

uint64_t sub_1BF0C4520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManualClock.WakeUp();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF0C4584(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1BF0C4678;

  return v6(v2 + 16);
}

uint64_t sub_1BF0C4678()
{
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  *v3 = *(v1 + 16);
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1BF0C479C()
{
  OUTLINED_FUNCTION_13_2();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_4(v5);
  *v6 = v7;
  v6[1] = sub_1BF035DD0;
  v8 = OUTLINED_FUNCTION_4_14();

  return sub_1BF0C2A88(v8, v9, v2, v4, v3);
}

uint64_t sub_1BF0C4848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1BF0C4AFC(0, a2, a3, a4);
  OUTLINED_FUNCTION_12(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_1BF0C489C()
{
  OUTLINED_FUNCTION_16();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_9_0(v4);

  return v7(v6);
}

uint64_t sub_1BF0C4930()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_15_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v1[1] = sub_1BF035DD4;
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_17_4();

  return sub_1BF0C2CC4(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1BF0C49CC()
{
  OUTLINED_FUNCTION_16();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_4(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_9_0(v4);

  return v7(v6);
}

uint64_t sub_1BF0C4A60()
{
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_15_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_4(v0);
  *v1 = v2;
  v1[1] = sub_1BF035DD0;
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_17_4();

  return sub_1BF0C3788(v3, v4, v5, v6, v7, v8);
}

void sub_1BF0C4AFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BF0C4B60()
{
  result = qword_1EBDCBA00;
  if (!qword_1EBDCBA00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBDCBA00);
  }

  return result;
}

TeaFoundation::CopyOnWriteStoragePropertyKeyword_optional __swiftcall CopyOnWriteStoragePropertyKeyword.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF17B57C();

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

uint64_t CopyOnWriteStoragePropertyKeyword.rawValue.getter()
{
  if (*v0)
  {
    return 7496054;
  }

  else
  {
    return 7628140;
  }
}

uint64_t sub_1BF0C4C40(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1BF0D3F1C();
}

uint64_t sub_1BF0C4C70@<X0>(uint64_t *a1@<X8>)
{
  result = CopyOnWriteStoragePropertyKeyword.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

uint64_t _COWBox._buffer.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t _COWBox.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  sub_1BF17B2EC();
  v4 = sub_1BF17B2DC();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t _COWBox.wrappedValue.getter@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a1 + *MEMORY[0x1E69E6B68] + 16);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  return (*(*(a2 - 8) + 16))(a3, &a1[v6], a2);
}

uint64_t sub_1BF0C4EE8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = _COWBox.wrappedValue.read(v8, *a1);
  (*(*(v5 - 8) + 16))(a4);
  return (v6)(v8, 0);
}

uint64_t (*_COWBox.wrappedValue.read(uint64_t a1, void *a2))()
{
  v2 = *(*a2 + *MEMORY[0x1E69E6B68] + 16);
  swift_beginAccess();
  return j_j__swift_endAccess_0;
}

uint64_t sub_1BF0C500C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  type metadata accessor for _COWBox();
  v6 = _COWBox.wrappedValue.modify();
  (*(*(v5 - 8) + 24))(v7, a1, v5);
  return (v6)(&v9, 0);
}

uint64_t (*_COWBox.wrappedValue.modify())()
{
  _COWBox._makeUniqueBufferIfNeeded()();
  v1 = *(**v0 + *MEMORY[0x1E69E6B68] + 16);
  swift_beginAccess();
  return j__swift_endAccess_0;
}

Swift::Void __swiftcall _COWBox._makeUniqueBufferIfNeeded()()
{
  v2 = v1;
  v3 = v0;
  v4 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = *(v3 + 16);
    sub_1BF17B2EC();
    v6 = *v2;
    v7 = sub_1BF17B2DC();

    *v2 = v7;
  }
}

uint64_t _COWBox.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  _COWBox._makeUniqueBufferIfNeeded()();
  v5 = *v2;
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  swift_beginAccess();
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  (*(v8 + 24))(&v5[v6], a1, v7);
  swift_endAccess();
  return (*(v8 + 8))(a1, v7);
}

uint64_t sub_1BF0C52EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = _COWBox.projectedValue.read();
  v6 = v5;

  result = (v4)(&v8, 0);
  *a2 = v6;
  return result;
}

uint64_t sub_1BF0C5370(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a1;

  type metadata accessor for _COWBox();
  v6 = _COWBox.projectedValue.modify();
  v8 = *v7;
  *v7 = v5;

  return (v6)(&v10, 0);
}

uint64_t _COWBox.projectedValue.setter(uint64_t a1)
{

  _COWBox._makeUniqueBufferIfNeeded()();
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1BF0C5488@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = MEMORY[0x1E69E6B68];
  v7 = *(*a2 + *MEMORY[0x1E69E6B68] + 16);
  swift_beginAccess();
  return (*(*(*(v5 + *v6) - 8) + 16))(a3, &a2[v7]);
}

uint64_t static _COWBox<>.== infix(_:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a4;
  OUTLINED_FUNCTION_0_37(a1, a2, a3);
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v24 - v16;
  v18 = MEMORY[0x1E69E6B68];
  v19 = *(*v15 + *MEMORY[0x1E69E6B68] + 16);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  v20 = *(v8 + 16);
  v20(v17, a1 + v19, a3);
  v21 = *(*a2 + *v18 + 16);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  v20(v14, a2 + v21, a3);
  LOBYTE(v20) = sub_1BF17A05C();
  v22 = *(v8 + 8);
  v22(v14, a3);
  v22(v17, a3);
  return v20 & 1;
}

uint64_t _COWBox<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_37(a1, a2, a3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v14 = *(*v13 + *MEMORY[0x1E69E6B68] + 16);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  (*(v6 + 16))(v12, a2 + v14, a3);
  sub_1BF179F2C();
  return (*(v6 + 8))(v12, a3);
}

uint64_t _COWBox<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1BF17BB6C();
  _COWBox<>.hash(into:)(v5, a1, a2);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0C5944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_1BF17BB6C();
  _COWBox<>.hash(into:)(v7, *v3, *(a2 + 16));
  return sub_1BF17BB9C();
}

uint64_t _COWBox<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_37(a1, a2, a3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v14 = *(*v13 + *MEMORY[0x1E69E6B68] + 16);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  (*(v6 + 16))(v12, a2 + v14, a3);
  sub_1BF179EDC();
  return (*(v6 + 8))(v12, a3);
}

uint64_t _COWBox<>.init(from:)(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  sub_1BEFE6A78(v9, v11);
  sub_1BF17A8BC();
  if (!v2)
  {
    v3 = _COWBox.init(wrappedValue:)(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_1BF0C5BB8()
{
  result = qword_1EBDCBC48[0];
  if (!qword_1EBDCBC48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCBC48);
  }

  return result;
}

uint64_t sub_1BF0C5C54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a3 - 8);
  result = _COWBox<>.init(from:)(a1, *(a2 + 16));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CopyOnWriteStoragePropertyKeyword(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BF0C5D8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF0C5DE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a3 + a4 - 8) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6);
  v9 = *a2;
  return Atomic.wrappedValue.setter(v7);
}

uint64_t XPCBlock.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t XPCBlock.init(_:arguments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  result = a3();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = result;
  return result;
}

uint64_t sub_1BF0C5F54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1BF0C5F94(uint64_t result, int a2, int a3)
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

double ISO8601Duration.timeInterval.getter()
{
  v0 = sub_1BF17965C();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_6_18();
  sub_1BF0C6DB4(0, v9, v10);
  OUTLINED_FUNCTION_68(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = sub_1BF1794AC();
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v18);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v34 - v26;
  sub_1BF17946C();
  sub_1BF17960C();
  sub_1BF17961C();
  (*(v3 + 8))(v8, v0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    (*(v20 + 8))(v27, v17);
    OUTLINED_FUNCTION_6_18();
    sub_1BF0C6B88(v16, v28, v29);
    return 0.0;
  }

  else
  {
    (*(v20 + 32))(v25, v16, v17);
    sub_1BF1793DC();
    v30 = v31;
    v32 = *(v20 + 8);
    v32(v25, v17);
    v32(v27, v17);
  }

  return v30;
}

uint64_t ISO8601Duration.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BF17907C();
  v5 = OUTLINED_FUNCTION_12(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t ISO8601Duration.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_0_38();
  sub_1BF0C6DB4(0, v6, v7);
  OUTLINED_FUNCTION_68(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v14 = sub_1BF17907C();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_0();
  v22 = (v21 - v20);
  v23 = type metadata accessor for ISO8601Duration();
  v24 = OUTLINED_FUNCTION_12(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_0();
  v29 = v28 - v27;
  if (a2)
  {
    sub_1BF0C651C(a1, a2);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      v33 = *(v17 + 32);
      v33(v22, v13, v14);
      v33(v29, v22, v14);
      sub_1BF0C6BDC(v29, a3);
      v32 = 0;
      return __swift_storeEnumTagSinglePayload(a3, v32, 1, v23);
    }

    OUTLINED_FUNCTION_0_38();
    sub_1BF0C6B88(v13, v30, v31);
  }

  v32 = 1;
  return __swift_storeEnumTagSinglePayload(a3, v32, 1, v23);
}

uint64_t sub_1BF0C6B88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BF0C6DB4(0, a2, a3);
  OUTLINED_FUNCTION_12(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1BF0C6BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO8601Duration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ISO8601Duration.init(hours:minutes:seconds:)(uint64_t a1)
{
  OUTLINED_FUNCTION_8_15(a1, &qword_1ED8ECA28);
  OUTLINED_FUNCTION_68(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_7_16(v6, &qword_1EBDCAED8);
  OUTLINED_FUNCTION_68(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = sub_1BF17965C();
  OUTLINED_FUNCTION_18_5(v12, v14, v15, v13);
  v16 = sub_1BF17969C();
  OUTLINED_FUNCTION_18_5(v1, v17, v18, v16);
  return OUTLINED_FUNCTION_14_11(v12, v1);
}

void sub_1BF0C6DB4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BF17AE6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

BOOL ISO8601Duration.isValid(startFrom:calendar:)()
{
  v1 = MEMORY[0x1E6969530];
  sub_1BF0C6DB4(0, &qword_1ED8EF860, MEMORY[0x1E6969530]);
  OUTLINED_FUNCTION_68(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12_12();
  sub_1BF17961C();
  v6 = sub_1BF1794AC();
  v7 = __swift_getEnumTagSinglePayload(v0, 1, v6) != 1;
  sub_1BF0C6B88(v0, &qword_1ED8EF860, v1);
  return v7;
}

uint64_t ISO8601Duration.hash(into:)()
{
  sub_1BF17907C();
  OUTLINED_FUNCTION_5_13();
  sub_1BEFFCB0C(v0, v1);

  return sub_1BF179F2C();
}

uint64_t ISO8601Duration.hashValue.getter()
{
  sub_1BF17BB6C();
  sub_1BF17907C();
  OUTLINED_FUNCTION_5_13();
  sub_1BEFFCB0C(v0, v1);
  sub_1BF179F2C();
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0C6FDC()
{
  sub_1BF17BB6C();
  sub_1BF17907C();
  sub_1BEFFCB0C(&qword_1EBDCBCD0, MEMORY[0x1E6968278]);
  sub_1BF179F2C();
  return sub_1BF17BB9C();
}

uint64_t ISO8601Duration.description.getter()
{
  MEMORY[0x1BFB51FF0](80, 0xE100000000000000);
  sub_1BF178FEC();
  if ((v0 & 1) == 0)
  {
    sub_1BF17B6FC();
    OUTLINED_FUNCTION_15_8();

    MEMORY[0x1BFB51FF0](89, 0xE100000000000000);
  }

  sub_1BF17900C();
  if ((v1 & 1) == 0)
  {
    sub_1BF17B6FC();
    OUTLINED_FUNCTION_15_8();

    MEMORY[0x1BFB51FF0](77, 0xE100000000000000);
  }

  sub_1BF178FAC();
  if ((v2 & 1) == 0)
  {
    sub_1BF17B6FC();
    OUTLINED_FUNCTION_15_8();

    MEMORY[0x1BFB51FF0](68, 0xE100000000000000);
  }

  sub_1BF178FCC();
  if ((v3 & 1) == 0 || (sub_1BF17902C(), (v4 & 1) == 0) || (sub_1BF17904C(), (v5 & 1) == 0))
  {
    MEMORY[0x1BFB51FF0](84, 0xE100000000000000);
    sub_1BF178FCC();
    if ((v6 & 1) == 0)
    {
      sub_1BF17B6FC();
      OUTLINED_FUNCTION_15_8();

      MEMORY[0x1BFB51FF0](72, 0xE100000000000000);
    }

    sub_1BF17902C();
    if ((v7 & 1) == 0)
    {
      sub_1BF17B6FC();
      OUTLINED_FUNCTION_15_8();

      MEMORY[0x1BFB51FF0](77, 0xE100000000000000);
    }

    sub_1BF17904C();
    if ((v8 & 1) == 0)
    {
      v9 = sub_1BF17B6FC();
      MEMORY[0x1BFB52000](v9);

      MEMORY[0x1BFB51FF0](83, 0xE100000000000000);
    }
  }

  if (sub_1BF17A1BC() == 1)
  {
    v10 = sub_1BF17B6FC();
    MEMORY[0x1BFB52000](v10);

    MEMORY[0x1BFB51FF0](68, 0xE100000000000000);
  }

  return 0;
}

uint64_t ISO8601Duration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  OUTLINED_FUNCTION_0_38();
  sub_1BF0C6DB4(0, v5, v6);
  OUTLINED_FUNCTION_68(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12_12();
  v11 = sub_1BF17907C();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_16_6();
  sub_1BF17BBBC();
  if (!v2)
  {
    v29 = v14;
    v21 = v31;
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    OUTLINED_FUNCTION_16_6();
    v22 = sub_1BF17B89C();
    v24 = v23;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF0C651C(v22, v24);
    if (__swift_getEnumTagSinglePayload(v3, 1, v11) == 1)
    {
      OUTLINED_FUNCTION_0_38();
      sub_1BF0C6B88(v3, v25, v26);
      sub_1BF17B1EC();

      MEMORY[0x1BFB52000](v22, v24);

      MEMORY[0x1BFB52000](0xD000000000000025, 0x80000001BF18D980);
      sub_1BF17B29C();
      swift_allocError();
      sub_1BF17B26C();

      swift_willThrow();
    }

    else
    {

      v27 = *(v29 + 32);
      v27(v19, v3, v11);
      v27(v21, v19, v11);
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ISO8601Duration.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF17BBFC();
  ISO8601Duration.description.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF17B91C();

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

id sub_1BF0C76A8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1BF17A07C();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t sub_1BF0C771C()
{
  v0 = sub_1BF17AE0C();
  if (!v1)
  {
    return 8;
  }

  return sub_1BF0C7754(v0, v1);
}

uint64_t sub_1BF0C7754(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 80 && a2 == 0xE100000000000000;
  if (v3 || (sub_1BF17B86C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 89 && a2 == 0xE100000000000000;
    if (v6 || (sub_1BF17B86C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 77 && a2 == 0xE100000000000000;
      if (v7 || (sub_1BF17B86C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 87 && a2 == 0xE100000000000000;
        if (v8 || (sub_1BF17B86C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 68 && a2 == 0xE100000000000000;
          if (v9 || (sub_1BF17B86C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 84 && a2 == 0xE100000000000000;
            if (v10 || (sub_1BF17B86C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 72 && a2 == 0xE100000000000000;
              if (v11 || (sub_1BF17B86C() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 83 && a2 == 0xE100000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1BF17B86C();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BF0C7980@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BF0C7754(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1BF0C79B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BF0C795C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::String_optional __swiftcall ISO8601Duration.formatted()()
{
  if (qword_1EBDCAEF8 != -1)
  {
    OUTLINED_FUNCTION_9_15();
  }

  v0 = off_1EBDCAF00;
  os_unfair_lock_lock(off_1EBDCAF00 + 6);
  v1 = *(v0 + 2);
  if (*(v1 + 16) && (v2 = sub_1BF0820AC(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
    [v5 setUnitsStyle_];
    [v5 setZeroFormattingBehavior_];
    [v5 setAllowedUnits_];
    v4 = v5;
    v6 = *(v0 + 2);
    swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v0 + 2);
    sub_1BF082BE0();
    *(v0 + 2) = v15;
  }

  os_unfair_lock_unlock(v0 + 6);
  v7 = sub_1BF178F8C();
  v8 = [v4 stringFromDateComponents_];

  if (v8)
  {
    v9 = sub_1BF17A0AC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = v9;
  v13 = v11;
  result.value._object = v13;
  result.value._countAndFlagsBits = v12;
  return result;
}

Swift::String_optional __swiftcall ISO8601Duration.formatted(unitsStyle:)(NSDateComponentsFormatterUnitsStyle unitsStyle)
{
  if (qword_1EBDCAEF8 != -1)
  {
    OUTLINED_FUNCTION_9_15();
  }

  v2 = off_1EBDCAF00;
  os_unfair_lock_lock(off_1EBDCAF00 + 6);
  v3 = *(v2 + 2);
  if (*(v3 + 16) && (v4 = sub_1BF0820AC(), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
    [v7 setUnitsStyle_];
    [v7 setZeroFormattingBehavior_];
    [v7 setAllowedUnits_];
    v6 = v7;
    v8 = *(v2 + 2);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v2 + 2);
    sub_1BF082BE0();
    *(v2 + 2) = v17;
  }

  os_unfair_lock_unlock(v2 + 6);
  v9 = sub_1BF178F8C();
  v10 = [v6 stringFromDateComponents_];

  if (v10)
  {
    v11 = sub_1BF17A0AC();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = v11;
  v15 = v13;
  result.value._object = v15;
  result.value._countAndFlagsBits = v14;
  return result;
}

uint64_t ISO8601Duration.formatted<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ISO8601Duration.timeInterval.getter();
  v7 = sub_1BF17BC9C();

  return MEMORY[0x1EEDC6E68](a1, v7, v6, a2, a3);
}

uint64_t sub_1BF0C7D6C()
{
  sub_1BF0C7DD4();
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  off_1EBDCAF00 = result;
  return result;
}

void sub_1BF0C7DD4()
{
  if (!qword_1EBDCA8D0)
  {
    sub_1BF0C7E3C();
    type metadata accessor for os_unfair_lock_s();
    v0 = sub_1BF17B2EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCA8D0);
    }
  }
}

void sub_1BF0C7E3C()
{
  if (!qword_1EBDCA948)
  {
    type metadata accessor for UnitsStyle();
    sub_1BEFF9AF8(255, &unk_1EBDCA918, 0x1E696AB70);
    sub_1BEFFCB0C(&qword_1EBDCA910, type metadata accessor for UnitsStyle);
    v0 = sub_1BF179E9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCA948);
    }
  }
}

uint64_t getEnumTagSinglePayload for DateComponent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DateComponent(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF0C8060()
{
  result = qword_1EBDCAD28;
  if (!qword_1EBDCAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCAD28);
  }

  return result;
}

uint64_t DynamicLocale.deinit()
{
  v1 = OBJC_IVAR____TtC13TeaFoundation13DynamicLocale_currentLocale;
  v2 = sub_1BF1795CC();
  OUTLINED_FUNCTION_0_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC13TeaFoundation13DynamicLocale_changeObserver);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t DynamicLocale.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13TeaFoundation13DynamicLocale_currentLocale;
  v2 = sub_1BF1795CC();
  OUTLINED_FUNCTION_0_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC13TeaFoundation13DynamicLocale_changeObserver);
  swift_unknownObjectRelease();
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1BF0C8248(uint64_t (*a1)(uint64_t))
{
  v4 = sub_1BF1795CC();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_14();
  v10 = (*(v7 + 16))(v2, v1 + OBJC_IVAR____TtC13TeaFoundation13DynamicLocale_currentLocale, v4);
  LOBYTE(a1) = a1(v10);
  (*(v7 + 8))(v2, v4);
  return a1 & 1;
}

uint64_t sub_1BF0C8344()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1BF0C8384()
{
  v1 = *(v0 + 16);
  sub_1BEFE6EA8(0, &qword_1ED8EE990);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1BF0C83E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BF042FE0(0, a2, a3);
  OUTLINED_FUNCTION_0_0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for DynamicLocale()
{
  result = qword_1EBDCBCE8;
  if (!qword_1EBDCBCE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF0C8498()
{
  result = sub_1BF1795CC();
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

id static Capabilities.hasExtendedColorDisplay()()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    hasExtendedColorDisplay = MobileGestalt_get_hasExtendedColorDisplay();

    return hasExtendedColorDisplay;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id Capabilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Capabilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Capabilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Capabilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Capabilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BF0C86C0()
{
  v0 = sub_1BF1795DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BF17965C();
  __swift_allocate_value_buffer(v5, qword_1ED8EBA20);
  __swift_project_value_buffer(v5, qword_1ED8EBA20);
  (*(v1 + 104))(v4, *MEMORY[0x1E6969868], v0);
  sub_1BF1795EC();
  return (*(v1 + 8))(v4, v0);
}

void sub_1BF0C87E0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECA78 = v2;
  unk_1ED8ECA80 = v4;
}

void sub_1BF0C88B0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECB00 = v2;
  unk_1ED8ECB08 = v4;
}

void sub_1BF0C8980()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECA98 = v2;
  unk_1ED8ECAA0 = v4;
}

void sub_1BF0C8A50()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECB20 = v2;
  unk_1ED8ECB28 = v4;
}

void sub_1BF0C8B20()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECAE8 = v2;
  unk_1ED8ECAF0 = v4;
}

void sub_1BF0C8BF0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECB60 = v2;
  unk_1ED8ECB68 = v4;
}

void sub_1BF0C8CC0()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECA58 = v2;
  unk_1ED8ECA60 = v4;
}

void sub_1BF0C8D8C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1BF17909C();
  v4 = v3;

  qword_1ED8ECAB0 = v2;
  *algn_1ED8ECAB8 = v4;
}

uint64_t Date.makeRandomlyImprecise(within:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2;
  v8 = sub_1BF17964C();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_20_6();
  v14 = sub_1BF17965C();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_0_40();
  sub_1BF00EAF0(0, v23, v24, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_25_4();
  result = -a1;
  if (__OFSUB__(0, a1))
  {
    __break(1u);
  }

  else
  {
    sub_1BF0C97A0(result, a1);
    sub_1BF17963C();
    (*(v11 + 104))(v3, *MEMORY[0x1E6969A98], v8);
    sub_1BF17962C();
    (*(v11 + 8))(v3, v8);
    (*(v17 + 8))(v22, v14);
    v30 = sub_1BF1794AC();
    OUTLINED_FUNCTION_4_16(v4);
    if (v31)
    {
      OUTLINED_FUNCTION_0_40();
      sub_1BF05AC80(v4, v32, v33);
      OUTLINED_FUNCTION_6_19();
      return (*(v34 + 16))(a2, v5, v30);
    }

    else
    {
      OUTLINED_FUNCTION_6_19();
      return (*(v35 + 32))(a2, v4, v30);
    }
  }

  return result;
}

uint64_t Date.addSeconds(_:calendar:)()
{
  v1 = OUTLINED_FUNCTION_12_13();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_0_40();
  sub_1BF00EAF0(0, v5, v6, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v11 = *MEMORY[0x1E6969A98];
  v12 = OUTLINED_FUNCTION_7_17();
  v13(v12);
  OUTLINED_FUNCTION_15_9();
  v14 = OUTLINED_FUNCTION_10_8();
  v15(v14);
  sub_1BF1794AC();
  OUTLINED_FUNCTION_4_16(v0);
  if (v16)
  {
    OUTLINED_FUNCTION_34_1();
    result = OUTLINED_FUNCTION_4_16(v0);
    if (!v16)
    {
      OUTLINED_FUNCTION_0_40();
      return sub_1BF05AC80(v0, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
    v20 = *(v19 + 32);
    v21 = OUTLINED_FUNCTION_19_7();
    return v22(v21);
  }

  return result;
}

void Date.addMinutes(_:calendar:)()
{
  v1 = OUTLINED_FUNCTION_12_13();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_0_40();
  sub_1BF00EAF0(0, v5, v6, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_68(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v11 = *MEMORY[0x1E6969A88];
  v12 = OUTLINED_FUNCTION_7_17();
  v13(v12);
  OUTLINED_FUNCTION_15_9();
  v14 = OUTLINED_FUNCTION_10_8();
  v15(v14);
  sub_1BF1794AC();
  OUTLINED_FUNCTION_4_16(v0);
  if (v16)
  {
    OUTLINED_FUNCTION_23_4();
    if (v16)
    {
      OUTLINED_FUNCTION_34_1();
      OUTLINED_FUNCTION_4_16(v0);
      if (!v16)
      {
        OUTLINED_FUNCTION_0_40();
        sub_1BF05AC80(v0, v17, v18);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_19();
    v20 = *(v19 + 32);
    v21 = OUTLINED_FUNCTION_19_7();
    v22(v21);
  }
}

uint64_t sub_1BF0C93DC(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_16;
  }

  sub_1BF037534(0, &qword_1EBDCA8E8, sub_1BF0C991C);
  result = OUTLINED_FUNCTION_28_5();
  v3 = result;
  v22 = *(v1 + 16);
  if (!v22)
  {
LABEL_16:

    return v3;
  }

  v4 = 0;
  v5 = result + 56;
  v20 = v1;
  v21 = v1 + 32;
  while (v4 < *(v1 + 16))
  {
    v6 = *(v21 + v4);
    v7 = *(v3 + 40);
    sub_1BF17BB6C();
    v8 = qword_1BF1825A8[v6];
    sub_1BF179F3C();

    result = sub_1BF17BB9C();
    v9 = -1 << *(v3 + 32);
    v10 = result & ~v9;
    v11 = v10 >> 6;
    v12 = *(v5 + 8 * (v10 >> 6));
    v13 = 1 << v10;
    if (((1 << v10) & v12) != 0)
    {
      v14 = ~v9;
      v15 = qword_1BF1825A8[v6];
      while (qword_1BF1825A8[*(*(v3 + 48) + v10)] != v15)
      {
        v16 = sub_1BF17B86C();
        result = swift_bridgeObjectRelease_n();
        if (v16)
        {
          goto LABEL_13;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v5 + 8 * (v10 >> 6));
        v13 = 1 << v10;
        if ((v12 & (1 << v10)) == 0)
        {
          goto LABEL_10;
        }
      }

      result = swift_bridgeObjectRelease_n();
    }

    else
    {
LABEL_10:
      *(v5 + 8 * v11) = v12 | v13;
      *(*(v3 + 48) + v10) = v6;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_18;
      }

      *(v3 + 16) = v19;
    }

LABEL_13:
    ++v4;
    v1 = v20;
    if (v4 == v22)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_1BF0C95B4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (sub_1BF0C97FC(), v2 = OUTLINED_FUNCTION_28_5(), v3 = v2, (v26 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v24 = v1;
    v25 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v25 + 8 * v4++);
      v7 = *(v3 + 40);
      sub_1BF17A0AC();
      sub_1BF17BB6C();
      v27 = v6;
      sub_1BF179F3C();
      v8 = sub_1BF17BB9C();

      v9 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v14 = *(*(v3 + 48) + 8 * v10);
        v15 = sub_1BF17A0AC();
        v17 = v16;
        if (v15 == sub_1BF17A0AC() && v17 == v18)
        {

          goto LABEL_17;
        }

        v20 = sub_1BF17B86C();

        if (v20)
        {

          goto LABEL_17;
        }

        v8 = v10 + 1;
      }

      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v27;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v23;
LABEL_17:
      v1 = v24;
      if (v4 == v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_1BF0C97A0(uint64_t a1, uint64_t a2)
{
  if (a2 - a1 != -1)
  {
    return sub_1BF0C9890(a2 - a1 + 1) + a1;
  }

  v3 = 0;
  MEMORY[0x1BFB547D0](&v3, 8);
  return v3;
}

void sub_1BF0C97FC()
{
  if (!qword_1EBDCA8D8)
  {
    type metadata accessor for URLResourceKey();
    sub_1BF05C0A4(&qword_1EBDCA938, type metadata accessor for URLResourceKey);
    v0 = sub_1BF17B19C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCA8D8);
    }
  }
}

unint64_t sub_1BF0C9890(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1BFB547D0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1BFB547D0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BF0C991C()
{
  result = qword_1EBDCAD30;
  if (!qword_1EBDCAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCAD30);
  }

  return result;
}

uint64_t fetch(urlRequest:session:)()
{
  sub_1BF0C9B3C();
  swift_allocObject();
  return sub_1BF08A5A8();
}

void sub_1BF0C99CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = sub_1BF178C0C();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = sub_1BF0C9CAC;
  v12[5] = v10;
  v15[4] = sub_1BF0C9F18;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1BF0C0248;
  v15[3] = &block_descriptor_6;
  v13 = _Block_copy(v15);

  v14 = [a5 dataTaskWithRequest:v11 completionHandler:v13];
  _Block_release(v13);

  [v14 resume];
}

void sub_1BF0C9B3C()
{
  if (!qword_1EBDCA9E8)
  {
    v0 = type metadata accessor for Promise();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCA9E8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation17PromiseFetchErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0C9BB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF0C9C0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

void *sub_1BF0C9C6C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

void sub_1BF0C9CB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void (*a7)(uint64_t, unint64_t))
{
  v13 = sub_1BF17A12C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  if (a4)
  {
    (a5)(a4);
  }

  else if (a2 >> 60 == 15)
  {
    if (a3 && (objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) != 0) && (v16 = v15, [v15 statusCode] >= 400))
    {
      v22 = [v16 statusCode];
      sub_1BF0C9F24();
      v23 = swift_allocError();
      v24[1] = 0;
      v24[2] = 0;
      *v24 = v22;
      a5();
      v19 = v23;
    }

    else
    {
      sub_1BF0C9F24();
      v17 = swift_allocError();
      *v18 = 0;
      v18[1] = 0;
      v18[2] = 1;
      a5();
      v19 = v17;
    }
  }

  else if (a3 && (objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) != 0) && (v21 = v20, [v20 statusCode] >= 400))
  {
    v25 = [v21 statusCode];
    sub_1BF17A10C();
    v26 = sub_1BF17A0CC();
    v28 = v27;
    sub_1BF0C9F24();
    v29 = swift_allocError();
    *v30 = v25;
    v30[1] = v26;
    v30[2] = v28;
    a5();
  }

  else
  {
    a7(a1, a2);
  }
}

unint64_t sub_1BF0C9F24()
{
  result = qword_1EBDCBCF8[0];
  if (!qword_1EBDCBCF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCBCF8);
  }

  return result;
}

void sub_1BF0C9F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  sub_1BF17ACCC();
  switch(v5)
  {
    case 1:
      sub_1BF071C70();
      v6 = swift_allocObject();
      v7 = OUTLINED_FUNCTION_0_41(v6, xmmword_1BF17DEF0);
      goto LABEL_7;
    case 2:
      sub_1BF071C70();
      v24 = swift_allocObject();
      v25 = OUTLINED_FUNCTION_0_41(v24, xmmword_1BF17E820);
      sub_1BEFE6A78(v25, v26);
      v7 = OUTLINED_FUNCTION_2_24();
      goto LABEL_7;
    case 3:
      sub_1BF071C70();
      v14 = swift_allocObject();
      v15 = OUTLINED_FUNCTION_0_41(v14, xmmword_1BF1805A0);
      sub_1BEFE6A78(v15, v16);
      v17 = OUTLINED_FUNCTION_2_24();
      sub_1BEFE6A78(v17, v18);
      v7 = a4 + 112;
      v8 = &v14[7];
      goto LABEL_7;
    case 4:
      sub_1BF071C70();
      v19 = swift_allocObject();
      v20 = OUTLINED_FUNCTION_0_41(v19, xmmword_1BF182690);
      sub_1BEFE6A78(v20, v21);
      v22 = OUTLINED_FUNCTION_2_24();
      sub_1BEFE6A78(v22, v23);
      sub_1BEFE6A78(a4 + 112, &v19[7]);
      v7 = a4 + 152;
      v8 = &v19[9].n128_i64[1];
      goto LABEL_7;
    case 5:
      sub_1BF071C70();
      v9 = swift_allocObject();
      v10 = OUTLINED_FUNCTION_0_41(v9, xmmword_1BF17EBE0);
      sub_1BEFE6A78(v10, v11);
      v12 = OUTLINED_FUNCTION_2_24();
      sub_1BEFE6A78(v12, v13);
      sub_1BEFE6A78(a4 + 112, &v9[7]);
      sub_1BEFE6A78(a4 + 152, &v9[9].n128_i64[1]);
      v7 = a4 + 192;
      v8 = &v9[12];
LABEL_7:
      sub_1BEFE6A78(v7, v8);
      sub_1BF071C2C();
      sub_1BF17AE3C();
      OUTLINED_FUNCTION_1_29();
      sub_1BF1797CC();

      break;
    default:
      sub_1BF071C2C();
      sub_1BF17AE3C();
      OUTLINED_FUNCTION_1_29();
      sub_1BF1797CC();
      break;
  }
}

void simulateCrash(unless:_:_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a1 & 1) == 0)
  {
    sub_1BF0C9F7C(a2, a3, a4, a5);
  }
}

uint64_t Quantity.quantifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1BF0CA1E4(v2, v3, v4);
}

uint64_t sub_1BF0CA1E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

uint64_t Quantity.description.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v3;
}

uint64_t sub_1BF0CA288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v13;
  v14 = type metadata accessor for Quantity();
  result = (*(*(a6 - 8) + 32))(a7 + v14[7], a2, a6);
  *(a7 + v14[8]) = a3;
  v16 = (a7 + v14[9]);
  *v16 = a4;
  v16[1] = a5;
  return result;
}

uint64_t static Quantity.need<A>(_:without:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_42(a1, a2, a3, a4);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_30();
  v8 = OUTLINED_FUNCTION_2_25(v7);
  v9(v8);
  OUTLINED_FUNCTION_4_17();
  sub_1BF17B1EC();
  MEMORY[0x1BFB52000](0x206465654ELL, 0xE500000000000000);
  v10 = Quantifier.description.getter();
  MEMORY[0x1BFB52000](v10);

  MEMORY[0x1BFB52000](0x74756F6874697720, 0xE900000000000020);
  sub_1BF17B80C();
  return OUTLINED_FUNCTION_3_19();
}

uint64_t sub_1BF0CA468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_0_42(a1, a2, a3, a4);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_30();
  v15 = *(v14 + 8);
  v16 = *(v14 + 16);
  v20[0] = *v14;
  v20[1] = v15;
  v21 = v16;
  (*(v17 + 16))(v8);
  sub_1BF0CA1E4(v20[0], v15, v16);
  MEMORY[0x1BFB52000](a5, a6);
  v18 = Quantifier.description.getter();
  MEMORY[0x1BFB52000](v18);

  MEMORY[0x1BFB52000](32, 0xE100000000000000);
  sub_1BF17B80C();
  return sub_1BF0CA288(v20, v8, 0, 0, 0xE000000000000000, v6, v7);
}

uint64_t static Quantity.doesNotHave<A>(_:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_42(a1, a2, a3, a4);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_30();
  v8 = OUTLINED_FUNCTION_2_25(v7);
  v9(v8);
  OUTLINED_FUNCTION_4_17();
  sub_1BF17B1EC();
  MEMORY[0x1BFB52000](0x746F6E2073656F44, 0xEE00206576616820);
  v10 = Quantifier.description.getter();
  MEMORY[0x1BFB52000](v10);

  MEMORY[0x1BFB52000](32, 0xE100000000000000);
  sub_1BF17B80C();
  return OUTLINED_FUNCTION_3_19();
}

uint64_t sub_1BF0CA6C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BF0CA760(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = *(v5 + 64);
  if (v6 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v9 >= a2)
  {
LABEL_26:
    v18 = (result + v7 + 17) & ~v7;
    if (v6 < 0x7FFFFFFF)
    {
      v19 = *(((v18 + v8) & 0xFFFFFFFFFFFFFFF8) + 16);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(v18, v6, v4);
    }
  }

  else
  {
    v10 = ((((v7 + 17) & ~v7) + v8) & 0xFFFFFFFFFFFFFFF8) + 24;
    v11 = a2 - v9;
    v12 = v10 & 0xFFFFFFF8;
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v13 = 2;
    }

    else
    {
      v13 = v11 + 1;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v16 = *(result + v10);
        if (!v16)
        {
          goto LABEL_26;
        }

LABEL_22:
        v17 = v16 - 1;
        if (v12)
        {
          v17 = 0;
          LODWORD(v12) = *result;
        }

        result = v9 + (v12 | v17) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1BF0CA8B4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = *(*(v6 - 8) + 64);
  v12 = ((((v10 + 17) & ~v10) + v11) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v9 >= a3)
  {
    v16 = 0;
  }

  else
  {
    v13 = a3 - v9;
    if (((((v10 + 17) & ~v10) + v11) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v16)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v19 = &a1[v10 + 17] & ~v10;
          if (v8 < 0x7FFFFFFF)
          {
            v20 = (v19 + v11) & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v20 + 8) = a2 & 0x7FFFFFFF;
              *(v20 + 16) = 0;
            }

            else
            {
              *(v20 + 16) = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v10 + 17) & ~v10) + v11) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v17 = a2 - v9;
    }

    else
    {
      v17 = 1;
    }

    if (((((v10 + 17) & ~v10) + v11) & 0xFFFFFFF8) != 0xFFFFFFE8)
    {
      v18 = ~v9 + a2;
      bzero(a1, ((((v10 + 17) & ~v10) + v11) & 0xFFFFFFFFFFFFFFF8) + 24);
      *a1 = v18;
    }

    switch(v16)
    {
      case 1:
        a1[v12] = v17;
        break;
      case 2:
        *&a1[v12] = v17;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v12] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1BF0CAAB8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_20_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1BF0C3FF4(result, 1);
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
  result = sub_1BF17923C();
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

uint64_t sub_1BF0CABA8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_20_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1BF0C400C(result, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v5 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v5)
  {
    *(v6 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1BF0CAC58(uint64_t a1)
{
  v8 = a1;
  v9 = sub_1BF126678(a1);
  v10 = *(*v2 + 16);
  if (__OFADD__(v10, v9))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1BF0C4024(v10 + v9, 1);
  v1 = *v2;
  v11 = *(*v2 + 16);
  v3 = (*(*v2 + 24) >> 1) - v11;
  v12 = sub_1BF176654(&v51, *v2 + 40 * v11 + 32, v3, v8);
  if (v12 < v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v12 >= 1)
  {
    v13 = *(v1 + 16);
    v14 = __CFADD__(v13, v12);
    v15 = __OFADD__(v13, v12);
    v16 = v13 + v12;
    if (v15)
    {
      __break(1u);
      goto LABEL_13;
    }

    *(v1 + 16) = v16;
  }

  if (v12 != v3)
  {
LABEL_7:

    *v2 = v1;
    return;
  }

LABEL_10:
  v6 = *(v1 + 16);
  v7 = v51;
  v16 = v52;
  v50 = *(v51 + 16);
  v14 = v52 >= v50;
  if (v52 == v50)
  {
    OUTLINED_FUNCTION_26_6();
    v17 = -1;
    goto LABEL_15;
  }

LABEL_13:
  if (v14)
  {
    goto LABEL_31;
  }

  v50 = v16 + 1;
  v18 = v7 + 40 * v16;
  v17 = *(v18 + 64);
  v3 = *(v18 + 48);
  v8 = *(v18 + 56);
  v5 = *(v18 + 32);
  v4 = *(v18 + 40);
  v19 = OUTLINED_FUNCTION_1_31();
  sub_1BF0CB03C(v19, v20, v21, v22, v17);
LABEL_15:
  v49 = v7;
  v48 = v7 + 32;
LABEL_16:
  if (v17 == -1)
  {
    v44 = OUTLINED_FUNCTION_1_31();
    sub_1BF0CB108(v44, v45, v46, v47, 255);
    goto LABEL_7;
  }

  v23 = *(v1 + 24) >> 1;
  if (v23 < v6 + 1)
  {
    sub_1BF0A6DDC();
    v1 = v43;
    v23 = *(v43 + 24) >> 1;
  }

  for (i = v1 + 64; ; i = v1 + 64)
  {
    v25 = (i + 40 * v6);
    do
    {
      if (v17 == -1 || v6 >= v23)
      {
        *(v1 + 16) = v6;
        goto LABEL_16;
      }

      v27 = OUTLINED_FUNCTION_1_31();
      sub_1BF0CB03C(v27, v28, v29, v30, v17);
      v31 = OUTLINED_FUNCTION_1_31();
      sub_1BF0CB108(v31, v32, v33, v34, v17);
      *(v25 - 4) = v5;
      *(v25 - 3) = v4;
      *(v25 - 2) = v3;
      *(v25 - 1) = v8;
      *v25 = v17;
      v25 += 40;
      ++v6;
      v17 = -1;
      v35 = *(v49 + 16);
      OUTLINED_FUNCTION_26_6();
    }

    while (v37 == v36);
    if (v37 >= v36)
    {
      break;
    }

    v38 = (v48 + 40 * v50);
    v17 = *(v38 + 32);
    v3 = v38[2];
    v8 = v38[3];
    v5 = *v38;
    v4 = v38[1];
    v39 = OUTLINED_FUNCTION_1_31();
    sub_1BF0CB03C(v39, v40, v41, v42, v17);
    ++v50;
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_1BF0CAE8C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1BF0CAEE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1BF0CAF64()
{
  if (!qword_1ED8EAE68)
  {
    sub_1BEFF51F8(255, qword_1ED8EE0E0, MEMORY[0x1E69E7C98] + 8, type metadata accessor for CallbackDefinition);
    v0 = sub_1BF17A65C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EAE68);
    }
  }
}

unint64_t sub_1BF0CAFE4()
{
  result = qword_1EBDCBD80;
  if (!qword_1EBDCBD80)
  {
    sub_1BF0CAF64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBD80);
  }

  return result;
}

unint64_t sub_1BF0CB03C(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 1:
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF01716C(a2);

      result = sub_1BF01716C(a3);
      break;
    case 2:
    case 3:
      sub_1BF01716C(result);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      goto LABEL_7;
    case 4:
    case 5:
      sub_1BF01716C(result);
LABEL_7:

      result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BF0CB108(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1BF0CB11C(result, a2, a3, a4, a5);
  }

  return result;
}

unint64_t sub_1BF0CB11C(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:
    case 1:

      sub_1BF017214(a2);

      result = sub_1BF017214(a3);
      break;
    case 2:
    case 3:
      sub_1BF017214(result);

      goto LABEL_7;
    case 4:
    case 5:
      sub_1BF017214(result);
LABEL_7:

      break;
    default:
      return result;
  }

  return result;
}

id InterprocessDiagnosticDumpNotifier.__allocating_init(notificationName:diagnosticTempDir:log:)()
{
  OUTLINED_FUNCTION_1_32();
  v0 = OUTLINED_FUNCTION_0_44();
  return InterprocessDiagnosticDumpNotifier.init(notificationName:diagnosticTempDir:log:)(v0, v1, v2, v3);
}

id InterprocessDiagnosticDumpNotifier.init(notificationName:diagnosticTempDir:log:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_1BF1797FC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BF17923C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a3, v15);
  v20 = a4;
  sub_1BF17980C();
  v21 = objc_allocWithZone(ObjectType);
  v22 = InterprocessDiagnosticDumpNotifier.init(notificationName:diagnosticTempDir:logger:)(a1, a2, v19, v14);

  (*(v16 + 8))(a3, v15);
  swift_getObjectType();
  v23 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x30);
  v24 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x34);
  swift_deallocPartialClassInstance();
  return v22;
}

id InterprocessDiagnosticDumpNotifier.__allocating_init(notificationName:diagnosticTempDir:logger:)()
{
  OUTLINED_FUNCTION_1_32();
  v0 = OUTLINED_FUNCTION_0_44();
  return InterprocessDiagnosticDumpNotifier.init(notificationName:diagnosticTempDir:logger:)(v0, v1, v2, v3);
}

id InterprocessDiagnosticDumpNotifier.init(notificationName:diagnosticTempDir:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v5[OBJC_IVAR___TFInterprocessDiagnosticDumpNotifier_interprocessDiagnosticDumpNotification];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = OBJC_IVAR___TFInterprocessDiagnosticDumpNotifier_diagnosticTempDir;
  v13 = sub_1BF17923C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v5[v12], a3, v13);
  v15 = OBJC_IVAR___TFInterprocessDiagnosticDumpNotifier_logger;
  v16 = sub_1BF1797FC();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v5[v15], a4, v16);
  v20.receiver = v5;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  (*(v17 + 8))(a4, v16);
  (*(v14 + 8))(a3, v13);
  return v18;
}

Swift::Void __swiftcall InterprocessDiagnosticDumpNotifier.triggerDiagnosticFileDump()()
{
  sub_1BF0CB6A4();
  v1 = *(v0 + OBJC_IVAR___TFInterprocessDiagnosticDumpNotifier_interprocessDiagnosticDumpNotification);
  v2 = *(v0 + OBJC_IVAR___TFInterprocessDiagnosticDumpNotifier_interprocessDiagnosticDumpNotification + 8);

  sub_1BF0CB9E0();
}

void sub_1BF0CB6A4()
{
  v26[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1BF17916C();
  v26[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v26];

  if (v2)
  {
    v3 = v26[0];
  }

  else
  {
    v4 = v26[0];
    v5 = sub_1BF17911C();

    swift_willThrow();
    v6 = v5;
    v7 = sub_1BF1797DC();
    v8 = sub_1BF17ACBC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v5;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1BEFE0000, v7, v8, "Failed to clear diagnostic file dir; error=%@", v9, 0xCu);
      sub_1BF085B60(v10);
      MEMORY[0x1BFB547B0](v10, -1, -1);
      MEMORY[0x1BFB547B0](v9, -1, -1);
    }

    else
    {
    }
  }

  v13 = sub_1BF17916C();
  v26[0] = 0;
  v14 = [v0 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:v26];

  if (v14)
  {
    v15 = v26[0];
  }

  else
  {
    v16 = v26[0];
    v17 = sub_1BF17911C();

    swift_willThrow();
    v18 = v17;
    v19 = sub_1BF1797DC();
    v20 = sub_1BF17ACBC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v17;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1BEFE0000, v19, v20, "Failed to create diagnostic file dir; error=%@", v21, 0xCu);
      sub_1BF085B60(v22);
      MEMORY[0x1BFB547B0](v22, -1, -1);
      MEMORY[0x1BFB547B0](v21, -1, -1);
    }

    else
    {
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1BF0CB9E0()
{
  v0 = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = sub_1BF17A07C();
  CFNotificationCenterPostNotification(v0, v1, 0, 0, 1u);
}

id InterprocessDiagnosticDumpNotifier.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id InterprocessDiagnosticDumpNotifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for InterprocessDiagnosticDumpNotifier()
{
  result = qword_1EBDCBDA0;
  if (!qword_1EBDCBDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF0CBC54()
{
  result = sub_1BF17923C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1BF1797FC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t static Random.string(chars:)(uint64_t a1)
{
  v1 = a1;
  v2 = arc4random_uniform(HIDWORD(a1));
  if (v2 <= v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  if (v3)
  {
    OUTLINED_FUNCTION_8_18();
    while (1)
    {
      result = sub_1BF17A1BC();
      if ((result & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(result))
      {
        goto LABEL_13;
      }

      arc4random_uniform(result);
      sub_1BF17A1FC();
      v5 = sub_1BF17A2EC();
      v7 = v6;
      v8 = *(v11 + 16);
      if (v8 >= *(v11 + 24) >> 1)
      {
        OUTLINED_FUNCTION_7_18();
      }

      *(v11 + 16) = v8 + 1;
      v9 = v11 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v7;
      if (!--v3)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_11:
    sub_1BF02027C();
    sub_1BF01B738();
    v10 = sub_1BF179F7C();

    return v10;
  }

  return result;
}

uint64_t static Random.colorHEX()()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1BF00DD60();
  v4 = sub_1BF17A1BC();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v4))
  {
    arc4random_uniform(v4);
    OUTLINED_FUNCTION_3_21();
    OUTLINED_FUNCTION_5_17();
    OUTLINED_FUNCTION_0_45();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_22:
  OUTLINED_FUNCTION_2_27();
LABEL_4:
  v6 = OUTLINED_FUNCTION_1_33();
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v6))
  {
    arc4random_uniform(v6);
    OUTLINED_FUNCTION_3_21();
    OUTLINED_FUNCTION_5_17();
    OUTLINED_FUNCTION_0_45();
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_25:
  OUTLINED_FUNCTION_2_27();
LABEL_7:
  v7 = OUTLINED_FUNCTION_1_33();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v7))
  {
    arc4random_uniform(v7);
    OUTLINED_FUNCTION_3_21();
    OUTLINED_FUNCTION_5_17();
    OUTLINED_FUNCTION_0_45();
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

  __break(1u);
LABEL_28:
  OUTLINED_FUNCTION_2_27();
LABEL_10:
  v8 = OUTLINED_FUNCTION_1_33();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v8))
  {
    arc4random_uniform(v8);
    OUTLINED_FUNCTION_3_21();
    OUTLINED_FUNCTION_5_17();
    OUTLINED_FUNCTION_0_45();
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

  __break(1u);
LABEL_31:
  OUTLINED_FUNCTION_2_27();
LABEL_13:
  v9 = OUTLINED_FUNCTION_1_33();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v9))
  {
    arc4random_uniform(v9);
    OUTLINED_FUNCTION_3_21();
    OUTLINED_FUNCTION_5_17();
    OUTLINED_FUNCTION_0_45();
    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_34:
  OUTLINED_FUNCTION_2_27();
LABEL_16:
  v10 = OUTLINED_FUNCTION_1_33();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (HIDWORD(v10))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  arc4random_uniform(v10);
  OUTLINED_FUNCTION_3_21();
  OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_0_45();
  if (v5)
  {
LABEL_37:
    OUTLINED_FUNCTION_2_27();
  }

  *(v16 + 16) = v2;
  v11 = v16 + 16 * v3;
  *(v11 + 32) = v0;
  *(v11 + 40) = v1;
  sub_1BF02027C();
  sub_1BF01B738();
  v12 = sub_1BF179F7C();
  v14 = v13;

  MEMORY[0x1BFB52000](v12, v14);

  return 35;
}

uint64_t static Random.data()()
{
  v0 = sub_1BF17A12C();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Random.string(chars:)(0x3200000019);
  sub_1BF17A10C();
  v8 = sub_1BF17A0BC();
  v10 = v9;

  result = (*(v3 + 8))(v7, v0);
  if (v10 >> 60 != 15)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t static Random.sentence(words:)(uint64_t a1)
{
  v1 = a1;
  v2 = arc4random_uniform(HIDWORD(a1));
  if (v2 <= v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  if (v3)
  {
    OUTLINED_FUNCTION_8_18();
    do
    {
      v4 = static Random.string(chars:)(0x800000003);
      v6 = v5;
      v7 = *(v11 + 16);
      if (v7 >= *(v11 + 24) >> 1)
      {
        OUTLINED_FUNCTION_7_18();
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = v4;
      *(v8 + 40) = v6;
      --v3;
    }

    while (v3);
  }

  sub_1BF02027C();
  sub_1BF01B738();
  v9 = sub_1BF179F7C();

  return v9;
}

double static Random.double(seed:allowNegative:)(uint32_t a1, char a2)
{
  v4 = arc4random_uniform(a1);
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;
  v7 = arc4random_uniform(a1);
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = v6 / v8;
  if ((a2 & 1) != 0 && (arc4random_uniform(2u) & 1) == 0)
  {
    return -v9;
  }

  return v9;
}

uint64_t static Random.uint(seed:)(uint32_t a1)
{
  LODWORD(result) = arc4random_uniform(a1);
  if (result <= 1)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

void static Random.date(withinLastDays:)(uint64_t a1)
{
  v4 = sub_1BF1794AC();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_19();
  if (__OFSUB__(0, a1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1BF1793EC();
  sub_1BF1793DC();
  OUTLINED_FUNCTION_9_18();
  if (!(v13 ^ v14 | v12))
  {
    goto LABEL_8;
  }

  if (v11 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11 < 4294967300.0)
  {
    arc4random_uniform(v11);
    sub_1BF1793EC();
    v15 = *(v7 + 8);
    v15(v1, v4);
    v15(v2, v4);
    return;
  }

LABEL_10:
  __break(1u);
}