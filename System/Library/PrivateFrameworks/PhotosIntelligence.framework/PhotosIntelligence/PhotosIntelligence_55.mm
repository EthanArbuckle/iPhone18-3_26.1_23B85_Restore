uint64_t *sub_1C73731A0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v5 = *result;
  v6 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = sub_1C7550BFC();
    if (result >= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = result;
    }

    if (v10 >= v5)
    {
      sub_1C7550C5C();
      sub_1C75515DC();
      swift_getWitnessTable();
      v11 = sub_1C7550C4C();
      a3(v11, v12, v13, v14);

      return __swift_storeEnumTagSinglePayload(a5, 0, 1, a4);
    }
  }

  __break(1u);
  return result;
}

uint64_t static StoryGenerationUtilities.sanitize(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  v9[0] = a1;
  v9[1] = a2;
  v7 = sub_1C754E15C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_1C6FB5E8C();
  sub_1C755159C();
  sub_1C7374E0C(v6);
  return OUTLINED_FUNCTION_90();
}

uint64_t static StoryGenerationUtilities.tokenize(_:)(uint64_t a1, uint64_t a2)
{
  v6 = MEMORY[0x1E69E7CC0];
  v4 = [objc_allocWithZone(MEMORY[0x1E6977A88]) initWithUnit_];
  sub_1C6F9EDB0(a1, a2, v4);
  sub_1C755111C();

  return v6;
}

uint64_t sub_1C7373468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = sub_1C755098C();
  v8 = MEMORY[0x1CCA5CC40](v7);
  v10 = v9;

  sub_1C6FB0600();
  v11 = *(*a6 + 16);
  sub_1C6FB0EFC();
  v12 = *a6;
  *(v12 + 16) = v11 + 1;
  v13 = v12 + 16 * v11;
  *(v13 + 32) = v8;
  *(v13 + 40) = v10;
  return 1;
}

id sub_1C73734E0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NLTagScheme(0);
  v1 = sub_1C7550B3C();

  v2 = [v0 initWithTagSchemes_];

  return v2;
}

uint64_t sub_1C7373558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a1)
  {
    v7 = sub_1C755068C();
    v9 = v8;
    sub_1C6FB0DE8();
    v10 = *(*a4 + 16);
    sub_1C6FB1634();
    v11 = *a4;
    *(v11 + 16) = v10 + 1;
    v12 = (v11 + 32 * v10);
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = v7;
    v12[7] = v9;
  }

  return 1;
}

uint64_t static StoryGenerationUtilities.removeStopwords(in:)()
{
  OUTLINED_FUNCTION_126();
  sub_1C7374D84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AED8);
  v0 = OUTLINED_FUNCTION_11_2();
  *(v0 + 16) = xmmword_1C755BAB0;
  v1 = *MEMORY[0x1E69779C8];
  *(v0 + 32) = *MEMORY[0x1E69779C8];
  v2 = v1;
  v3 = sub_1C73734E0();
  v4 = OUTLINED_FUNCTION_0_11();
  sub_1C6F9EDB0(v4, v5, v3);
  v16 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AEF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755F060;
  v7 = *MEMORY[0x1E6977938];
  v8 = *MEMORY[0x1E6977948];
  *(inited + 32) = *MEMORY[0x1E6977938];
  *(inited + 40) = v8;
  v9 = *MEMORY[0x1E6977980];
  v10 = *MEMORY[0x1E69779A8];
  *(inited + 48) = *MEMORY[0x1E6977980];
  *(inited + 56) = v10;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  sub_1C707F640();
  sub_1C755139C();

  return v16;
}

uint64_t sub_1C7373788(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (a1)
  {
    v9 = a1;
    if (sub_1C700A700(v9, a4))
    {
    }

    else
    {
      v10 = sub_1C755098C();
      v11 = MEMORY[0x1CCA5CC40](v10);
      v13 = v12;

      sub_1C6FB0600();
      v14 = *(*a7 + 16);
      sub_1C6FB0EFC();

      v15 = *a7;
      *(v15 + 16) = v14 + 1;
      v16 = v15 + 16 * v14;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }
  }

  return 1;
}

void static StoryGenerationUtilities.removePossessivePronouns(in:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  sub_1C754D84C();
  OUTLINED_FUNCTION_3_0();
  v45 = v5;
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C7374D84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AED8);
  v7 = OUTLINED_FUNCTION_11_2();
  *(v7 + 16) = xmmword_1C755BAB0;
  v8 = *MEMORY[0x1E69779C8];
  *(v7 + 32) = *MEMORY[0x1E69779C8];
  v9 = v8;
  v10 = sub_1C73734E0();
  sub_1C6F9EDB0(v3, v1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C75604F0;
  sub_1C754F28C();
  *(v11 + 32) = sub_1C754F26C();
  *(v11 + 40) = v12;
  *(v11 + 48) = sub_1C754F26C();
  *(v11 + 56) = v13;
  v54 = MEMORY[0x1E69E7CC0];
  v14 = v3;
  v49 = v3;
  v50 = v1;
  v51 = v11;
  v52 = &v54;
  v48 = v10;
  sub_1C755139C();
  v15 = v54;
  v16 = *(v54 + 16);
  v47 = v14;
  if (v16)
  {
    sub_1C75504FC();
    v17 = (v15 + 16 * v16 + 24);
    v18 = &selRef_addingKeyAssetForObject_toAssets_options_;
    v19 = v1;
    while (v16 <= *(v15 + 16))
    {
      --v16;
      v21 = *(v17 - 1);
      v20 = *v17;
      v22 = sub_1C755065C();

      v23 = sub_1C755065C();
      v24 = [v22 stringByReplacingCharactersInRange:v21 withString:{v20, v23}];

      v25 = sub_1C755068C();
      v19 = v26;

      v17 -= 2;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1C75504FC();
    v25 = v14;
    v19 = v1;
LABEL_5:
    v53[0] = v25;
    v53[1] = v19;
    v27 = v44;
    sub_1C754D7FC();
    sub_1C6FB5E8C();
    v18 = sub_1C755154C();
    v29 = v28;
    (*(v45 + 8))(v27, v46);

    v19 = v47;
    v30 = v18 == v47 && v29 == v1;
    if (v30 || (OUTLINED_FUNCTION_52_0(), (sub_1C7551DBC() & 1) != 0))
    {

      goto LABEL_18;
    }
  }

  if (qword_1EDD0DBE0 != -1)
  {
    OUTLINED_FUNCTION_2_104();
  }

  v31 = sub_1C754FF1C();
  __swift_project_value_buffer(v31, qword_1EDD28D28);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v32 = sub_1C754FEEC();
  v33 = sub_1C755117C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v53[0] = v45;
    *v34 = 136315650;
    v35 = MEMORY[0x1CCA5D090](v11, MEMORY[0x1E69E6158]);
    v46 = v18;
    v36 = v19;
    v38 = v37;

    v39 = sub_1C6F765A4(v35, v38, v53);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_1C6F765A4(v36, v1, v53);
    *(v34 + 22) = 2080;
    v40 = OUTLINED_FUNCTION_52_0();
    *(v34 + 24) = sub_1C6F765A4(v40, v41, v42);
    _os_log_impl(&dword_1C6F5C000, v32, v33, "Removed possessive pronouns %s in %s = %s", v34, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

LABEL_18:
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C7373D70(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v10 = sub_1C755098C();
  MEMORY[0x1CCA5CC40](v10);

  v11 = sub_1C75506FC();
  v13 = v12;

  if (qword_1EDD0DBE0 != -1)
  {
    swift_once();
  }

  v14 = sub_1C754FF1C();
  __swift_project_value_buffer(v14, qword_1EDD28D28);
  v15 = a1;
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  v17 = sub_1C755118C();

  if (os_log_type_enabled(v16, v17))
  {
    v33 = a7;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_1C6F765A4(v11, v13, &v35);
    *(v18 + 12) = 2080;
    if (a1)
    {
      v20 = sub_1C755068C();
      v22 = v21;
    }

    else
    {
      v22 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E75;
    }

    v24 = sub_1C6F765A4(v20, v22, &v35);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_1C6F5C000, v16, v17, "Word %s is tagged as %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v19, -1, -1);
    MEMORY[0x1CCA5F8E0](v18, -1, -1);

    a7 = v33;
  }

  else
  {
  }

  v35 = v11;
  v36 = v13;
  MEMORY[0x1EEE9AC00](v23);
  v25 = sub_1C70735F4();

  if (v25)
  {
    v35 = a2;
    v36 = a3;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217628);
    sub_1C7099594(&qword_1EC217630, &qword_1EC217628);
    sub_1C6FB5E8C();
    v26 = sub_1C755143C();
    v28 = v27;
    sub_1C6FB080C();
    v29 = *(*a7 + 16);
    sub_1C6FB1098();
    v30 = *a7;
    *(v30 + 16) = v29 + 1;
    v31 = v30 + 16 * v29;
    *(v31 + 32) = v26;
    *(v31 + 40) = v28;
  }

  return 1;
}

uint64_t sub_1C73740C0()
{
  sub_1C6FB5E8C();
  sub_1C755155C();
  sub_1C755155C();

  sub_1C755155C();

  sub_1C755155C();

  v0 = sub_1C755155C();

  return v0;
}

void sub_1C73742BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_1EDD0DBE0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C754FF1C();
  __swift_project_value_buffer(v8, qword_1EDD28D28);
  sub_1C75504FC();
  sub_1C75504FC();
  oslog = sub_1C754FEEC();
  v9 = sub_1C755117C();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1C6F765A4(a1, a2, &v13);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1C6F765A4(a3, a4, &v13);
    _os_log_impl(&dword_1C6F5C000, oslog, v9, "Ending check to see if standardized string: “%s” contains standardized key: “%s”", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v11, -1, -1);
    MEMORY[0x1CCA5F8E0](v10, -1, -1);
  }
}

uint64_t static StoryGenerationUtilities.intRange(of:from:)()
{
  v0 = sub_1C75508EC();
  result = sub_1C75508EC();
  if (result >= v0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C73744D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v7 = sub_1C755068C();
  v9 = v8;
  if (v7 == sub_1C755068C() && v9 == v10)
  {

    return 1;
  }

  v12 = sub_1C7551DBC();

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = sub_1C755098C();
    v14 = MEMORY[0x1CCA5CC40](v13);
    v16 = v15;

    sub_1C6FB0600();
    v17 = *(*a6 + 16);
    sub_1C6FB0EFC();
    v18 = *a6;
    *(v18 + 16) = v17 + 1;
    v19 = v18 + 16 * v17;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
  }

  return 1;
}

void sub_1C73745E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, unint64_t *a8, uint64_t a9, uint64_t a10)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v13 = sub_1C755068C();
  v15 = v14;
  if (v13 == sub_1C755068C() && v15 == v16)
  {

    return;
  }

  v18 = sub_1C7551DBC();

  if ((v18 & 1) == 0)
  {
LABEL_7:
    v19 = sub_1C755098C();
    v20 = MEMORY[0x1CCA5CC40](v19);
    v22 = v21;

    sub_1C75504FC();
    sub_1C6FB0600();
    v23 = *(*a6 + 16);
    sub_1C6FB0EFC();
    v24 = *a6;
    *(v24 + 16) = v23 + 1;
    v25 = v24 + 16 * v23;
    *(v25 + 32) = v20;
    *(v25 + 40) = v22;
    v26 = *a8;
    if ((*a8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v26 < *(*a7 + 16))
    {
      v27 = *a7 + 16 * v26;
      if (v20 == *(v27 + 32) && v22 == *(v27 + 40))
      {
      }

      else
      {
        v29 = sub_1C7551DBC();

        if ((v29 & 1) == 0)
        {
          *a8 = 0;
          *a9 = 0;
          *(a9 + 8) = 1;
          return;
        }
      }

      v30 = *a8;
      if (!*a8)
      {
        *a9 = sub_1C75508EC();
        *(a9 + 8) = 0;
        v30 = *a8;
      }

      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (!v31)
      {
        *a8 = v32;
        if (v32 == *(*a7 + 16))
        {
          *a10 = sub_1C75508EC();
          *(a10 + 8) = 0;
        }

        return;
      }

LABEL_25:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_25;
  }
}

uint64_t sub_1C7374800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = (a3 + 40);
  v8 = v3 + 1;
  while (2)
  {
    v15 = v6 + 1;
    v9 = v8;
    v10 = v7;
    while (--v9)
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v11, v12);

      if (a1)
      {
        v13 = 0;
      }

      else
      {
        v13 = a2 == 0xE000000000000000;
      }

      if (!v13)
      {
        v10 += 2;
        if ((sub_1C7551DBC() & 1) == 0)
        {
          continue;
        }
      }

      return 1;
    }

    result = 0;
    v7 += 2;
    --v8;
    v6 = v15;
    if (v15 != v3)
    {
      continue;
    }

    break;
  }

  return result;
}

uint64_t sub_1C737490C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = sub_1C7374BAC(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1C755F060;
  *(result + 32) = 93;
  *(result + 40) = 0xE100000000000000;
  *(result + 48) = 41;
  *(result + 56) = 0xE100000000000000;
  *(result + 64) = 125;
  *(result + 72) = 0xE100000000000000;
  *(result + 80) = 37;
  *(result + 88) = 0xE100000000000000;
  v6 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    swift_setDeallocating();
    sub_1C6FDC9DC();
  }

  else
  {
    if (v6 >= v4[2])
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    MEMORY[0x1EEE9AC00](result);
    sub_1C75504FC();
    v7 = sub_1C70735F4();
    swift_setDeallocating();
    sub_1C6FDC9DC();

    if (v7)
    {

      v8 = 0;
      return v8 & 1;
    }
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755F060;
  *(inited + 32) = 91;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 40;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = 123;
  *(inited + 72) = 0xE100000000000000;
  *(inited + 80) = 37;
  *(inited + 88) = 0xE100000000000000;
  result = sub_1C75507FC();
  v10 = a3 + result;
  if (__OFADD__(a3, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 >= v4[2])
  {

    swift_setDeallocating();
    sub_1C6FDC9DC();
    v8 = 1;
    return v8 & 1;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    sub_1C75504FC();

    MEMORY[0x1EEE9AC00](v11);
    v12 = sub_1C70735F4();
    swift_setDeallocating();
    sub_1C6FDC9DC();

    v8 = !v12;
    return v8 & 1;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t static StoryGenerationUtilities.intRange(from:)(uint64_t result, uint64_t a2)
{
  v2 = __OFADD__(result, a2);
  v3 = result + a2;
  if (v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (v3 < result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void *sub_1C7374BAC(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C75507FC();
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = v4;
  v6 = sub_1C7374D08(v4, 0);
  sub_1C75504FC();
  v7 = sub_1C7374C3C(&v9, v6 + 4, v5, a1, a2);

  if (v7 != v5)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

uint64_t sub_1C7374C3C(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
    v10 = 0;
LABEL_15:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v10;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      result = sub_1C755088C();
      if (!v12)
      {
        a4 = v13;
        a5 = v14;
        goto LABEL_14;
      }

      *v9 = result;
      v9[1] = v12;
      v9 += 2;
      ++v10;
      if (v11 == a3)
      {
        a4 = v13;
        a5 = v14;
        v10 = a3;
LABEL_14:
        v7 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C7374D08(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218248);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

unint64_t sub_1C7374D84()
{
  result = qword_1EC21AED0;
  if (!qword_1EC21AED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC21AED0);
  }

  return result;
}

uint64_t sub_1C7374E0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C7374E7C()
{
  result = qword_1EC21AEE0;
  if (!qword_1EC21AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AEE0);
  }

  return result;
}

void static AssetClusteringUtilities.chunk<A>(array:into:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C7550BFC();
  if (a2)
  {
    MEMORY[0x1EEE9AC00](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AEE8);
    sub_1C7550C3C();
    sub_1C737542C();
    sub_1C7009510();
  }

  else
  {
    __break(1u);
  }
}

void *static AssetClusteringUtilities.clipprintByAssetUUID(from:in:)(uint64_t a1, id a2)
{
  v3 = [a2 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C755BAA0;
  *(v4 + 32) = sub_1C755068C();
  *(v4 + 40) = v5;
  *(v4 + 48) = sub_1C755068C();
  *(v4 + 56) = v6;
  *(v4 + 64) = sub_1C755068C();
  *(v4 + 72) = v7;
  sub_1C70B81C8(v4, v3);
  v8 = objc_opt_self();
  v9 = v3;
  v10 = sub_1C6FCA158(a1, v3, v8);

  if (!v10)
  {
    v14 = sub_1C75504DC();
LABEL_23:

    return v14;
  }

  v11 = [v10 count];
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  v12 = v11;
  if (!v11)
  {

    v14 = MEMORY[0x1E69E7CC8];
LABEL_22:
    v9 = v10;
    goto LABEL_23;
  }

  v32 = v9;
  v13 = 0;
  v14 = MEMORY[0x1E69E7CC8];
  v15 = &selRef_mergedPersonIdentifiers;
  v33 = v10;
  while (1)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = [v10 v15[45]];
    v35 = sub_1C6FCA214(v17);
    if (!v18)
    {
      goto LABEL_14;
    }

    v19 = v18;
    sub_1C73C6BB8();
    if (!v20)
    {

LABEL_14:

      goto LABEL_18;
    }

    v34 = v20;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1C6F78124(v35, v19);
    if (__OFADD__(v14[2], (v22 & 1) == 0))
    {
      break;
    }

    v23 = v21;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151D8);
    if (sub_1C7551A2C())
    {
      v25 = sub_1C6F78124(v35, v19);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_27;
      }

      v23 = v25;
    }

    if (v24)
    {

      *(v14[7] + 8 * v23) = v34;
    }

    else
    {
      v14[(v23 >> 6) + 8] |= 1 << v23;
      v27 = (v14[6] + 16 * v23);
      *v27 = v35;
      v27[1] = v19;
      *(v14[7] + 8 * v23) = v34;

      v28 = v14[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_25;
      }

      v14[2] = v30;
    }

    v10 = v33;
    v15 = &selRef_mergedPersonIdentifiers;
LABEL_18:
    ++v13;
    objc_autoreleasePoolPop(v16);
    if (v12 == v13)
    {

      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C737534C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = *a1;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    if (result + a2 >= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = result + a2;
    }

    if (v6 >= result)
    {
      sub_1C7550C5C();
      sub_1C75515DC();
      swift_getWitnessTable();
      result = sub_1C7550C4C();
      *a4 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C737542C()
{
  result = qword_1EC21AEF0;
  if (!qword_1EC21AEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21AEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AEF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AssetClusteringUtilities(_BYTE *result, int a2, int a3)
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

void sub_1C737553C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v24 = a2;
  v6 = type metadata accessor for PromptSuggestion(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v23 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v21 - v10);
  v12 = 0;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v13 == v12)
    {

      return;
    }

    if (v12 >= *(a1 + 16))
    {
      break;
    }

    v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v16 = *(v7 + 72);
    sub_1C71592A8(a1 + v15 + v16 * v12, v11);
    v17 = sub_1C737D908(v11, v24);
    if (v4)
    {
      sub_1C7382AE4(v11, type metadata accessor for PromptSuggestion);

      return;
    }

    if (v17)
    {
      sub_1C7159368(v11, v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716D568();
        v14 = v27;
      }

      v19 = *(v14 + 16);
      v20 = v19 + 1;
      if (v19 >= *(v14 + 24) >> 1)
      {
        v21 = *(v14 + 16);
        v22 = v19 + 1;
        sub_1C716D568();
        v19 = v21;
        v20 = v22;
        v14 = v27;
      }

      ++v12;
      *(v14 + 16) = v20;
      sub_1C7159368(v23, v14 + v15 + v19 * v16);
    }

    else
    {
      sub_1C7382AE4(v11, type metadata accessor for PromptSuggestion);
      ++v12;
    }
  }

  __break(1u);
}

uint64_t PromptSuggestionProvider.__allocating_init(photoLibrary:cache:searchSuggestionsDataSource:validator:embeddingDistanceThresholdForRanking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_132_4();
  PromptSuggestionProvider.init(photoLibrary:cache:searchSuggestionsDataSource:validator:embeddingDistanceThresholdForRanking:)(v8, a2, a3, a4);
  return v4;
}

uint64_t PromptSuggestionProvider.init(photoLibrary:cache:searchSuggestionsDataSource:validator:embeddingDistanceThresholdForRanking:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a2;
  v34 = a3;
  v8 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_0();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  v16 = OUTLINED_FUNCTION_76(v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  *(v4 + 16) = sub_1C755146C();
  *(v4 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_suggestionPoolSize) = 20;
  v19 = (v4 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_lastContextRefreshDate);
  v20 = sub_1C754DF6C();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v20);
  *v19 = 0;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AF08) + 28);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AF10);
  OUTLINED_FUNCTION_76(v22);
  bzero(v19 + v21, *(v23 + 64));
  sub_1C7381230(v18, v19 + v21, &unk_1EC219230);
  *(v5 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_photoLibrary) = a1;
  v24 = v33;
  sub_1C6FB5E28(v33, v5 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_cache);
  v25 = *(v5 + 16);
  v26 = a1;
  v27 = v25;
  sub_1C754FF2C();
  v28 = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger;
  (*(v10 + 32))(OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger + v5, v14, v8);
  v29 = v34;
  sub_1C6FB5E28(v34, v5 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_searchSuggestionsDataSource);
  sub_1C6FB5E28(a4, v5 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_validator);
  (*(v10 + 16))(v14, &v28[v5], v8);
  v30 = objc_allocWithZone(type metadata accessor for PromptSuggestionValidationObservation(0));
  v31 = sub_1C737E4A0(MEMORY[0x1E69E7CC0], v26, v14);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v24);
  *(v5 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_suggestionLibraryObservation) = v31;
  return v5;
}

uint64_t PromptSuggestionProvider.__allocating_init(photoLibrary:)()
{
  v2 = OUTLINED_FUNCTION_19_1();
  v3 = type metadata accessor for PromptSuggestionCache(v2);
  OUTLINED_FUNCTION_40_4();
  v4 = swift_allocObject();
  v5 = v0;
  v6 = v4;
  PromptSuggestionCache.init(photoLibrary:)();
  if (v1)
  {
  }

  else
  {
    v15[3] = v3;
    v15[4] = &protocol witness table for PromptSuggestionCache;
    v15[0] = v7;
    v8 = type metadata accessor for PromptSuggestionSearchDataSource();
    OUTLINED_FUNCTION_40_4();
    swift_allocObject();
    v9 = v5;
    v14[3] = v8;
    v14[4] = &protocol witness table for PromptSuggestionSearchDataSource;
    v14[0] = PromptSuggestionSearchDataSource.init(photoLibrary:)(v9);
    v10 = type metadata accessor for PromptSuggestionSafetyValidator();
    v11 = v9;
    v13[3] = v10;
    v13[4] = &protocol witness table for PromptSuggestionSafetyValidator;
    v13[0] = PromptSuggestionSafetyValidator.__allocating_init(photoLibrary:)(v11);
    v6 = swift_allocObject();
    PromptSuggestionProvider.init(photoLibrary:cache:searchSuggestionsDataSource:validator:embeddingDistanceThresholdForRanking:)(v11, v15, v14, v13);
  }

  return v6;
}

uint64_t PromptSuggestionProvider.fetchSuggestionsToDisplay(maxSuggestionResults:sharingFilter:seed:)()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  *(v1 + 132) = v3;
  *(v1 + 130) = v4;
  *(v1 + 168) = v5;
  v6 = sub_1C754DF6C();
  *(v1 + 192) = v6;
  OUTLINED_FUNCTION_18(v6);
  *(v1 + 200) = v7;
  *(v1 + 208) = OUTLINED_FUNCTION_77();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  OUTLINED_FUNCTION_76(v8);
  *(v1 + 216) = OUTLINED_FUNCTION_81_0();
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  v9 = type metadata accessor for PromptSuggestion(0);
  *(v1 + 240) = v9;
  OUTLINED_FUNCTION_18(v9);
  *(v1 + 248) = v10;
  *(v1 + 256) = OUTLINED_FUNCTION_81_0();
  *(v1 + 264) = swift_task_alloc();
  *(v1 + 272) = swift_task_alloc();
  *(v1 + 280) = swift_task_alloc();
  *(v1 + 288) = swift_task_alloc();
  *(v1 + 296) = swift_task_alloc();
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 312) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8);
  OUTLINED_FUNCTION_76(v11);
  *(v1 + 320) = OUTLINED_FUNCTION_81_0();
  *(v1 + 328) = swift_task_alloc();
  *(v1 + 336) = swift_task_alloc();
  *(v1 + 344) = swift_task_alloc();
  *(v1 + 352) = swift_task_alloc();
  v12 = sub_1C754DFFC();
  OUTLINED_FUNCTION_76(v12);
  *(v1 + 360) = OUTLINED_FUNCTION_77();
  v13 = sub_1C75500AC();
  *(v1 + 368) = v13;
  OUTLINED_FUNCTION_18(v13);
  *(v1 + 376) = v14;
  *(v1 + 384) = OUTLINED_FUNCTION_77();
  v15 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C7375EA8()
{
  v264 = v0;
  v5 = *(v0 + 376);
  v4 = *(v0 + 384);
  v6 = *(v0 + 368);
  sub_1C6F65BE8(0, &unk_1EDD0FA90);
  *v4 = sub_1C755126C();
  (*(v5 + 104))(v4, *MEMORY[0x1E69E8018], v6);
  v7 = sub_1C75500CC();
  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v9(v4, v6);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_98;
  }

  v3 = *(v0 + 184);
  v11 = *(v3 + 16);
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v12 = v11;
  v13 = PerformanceMeasure.init(name:log:)();
  v14 = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger;
  *(v0 + 392) = v13;
  *(v0 + 400) = v14;
  v15 = sub_1C754FEEC();
  v16 = sub_1C755118C();
  if (OUTLINED_FUNCTION_66(v16))
  {
    v17 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_92_0(v17);
    OUTLINED_FUNCTION_39();
    _os_log_impl(v18, v19, v20, v21, v22, 2u);
    OUTLINED_FUNCTION_37();
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 132);

  v25 = *(v23 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_photoLibrary);
  type metadata accessor for PromptSuggestionStatistics();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  *(v0 + 408) = PromptSuggestionStatistics.init(photoLibrary:)(v25);
  v26 = v25;
  v27 = sub_1C754FEEC();
  v28 = sub_1C75511BC();
  v29 = OUTLINED_FUNCTION_66(v28);
  if (v24)
  {
    if (v29)
    {
      v30 = OUTLINED_FUNCTION_127();
      *v30 = 0;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v31, v32, v33, v34, v30, 2u);
      OUTLINED_FUNCTION_10_1();
    }

    v35 = *(v0 + 360);

    sub_1C754DFEC();
    Random.Arc4Random.init(seed:)(v35, &v262);
  }

  else
  {
    if (v29)
    {
      v36 = *(v0 + 176);
      v37 = OUTLINED_FUNCTION_41_0();
      *v37 = 134217984;
      *(v37 + 4) = v36;
      OUTLINED_FUNCTION_57_5();
      OUTLINED_FUNCTION_141_8(v38, v39, v40, v41);
      OUTLINED_FUNCTION_10_1();
    }

    v42 = *(v0 + 176);

    Random.Arc4Random.init(seed:)(v42, &v262);
  }

  v43 = v262;
  v44 = v263;
  v45 = BYTE1(v263);
  *(v0 + 120) = v262;
  *(v0 + 128) = v44;
  *(v0 + 129) = v45;
  v46 = *(v0 + 130);
  *(v0 + 136) = v43;
  *(v0 + 144) = v44 | (v45 << 8);
  if (v46 != 2)
  {

    v88 = sub_1C754FEEC();
    v89 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_66(v89))
    {
      v90 = *(v0 + 130);
      v91 = swift_slowAlloc();
      *v91 = 33554688;
      *(v91 + 4) = v90;
      OUTLINED_FUNCTION_39();
      _os_log_impl(v92, v93, v94, v95, v96, 6u);
      OUTLINED_FUNCTION_37();
    }

    sub_1C6F85170();

    OUTLINED_FUNCTION_130_0();

    __asm { BRAA            X3, X16 }
  }

  sub_1C75504FC();
  v47 = sub_1C754FEEC();
  v48 = sub_1C755118C();
  if (OUTLINED_FUNCTION_21_0(v48))
  {
    v49 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v49);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v50, v51, v52, v53, v54, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v55 = *(v0 + 168);

  type metadata accessor for PromptSuggestionRanker();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v56 = PromptSuggestionRanker.init()();
  *(v0 + 416) = v56;
  v262 = sub_1C7377D0C(v55, v56, v0 + 136);
  sub_1C73B3D64(v0 + 120);
  v57 = v262;
  v58 = sub_1C754FEEC();
  v59 = sub_1C755118C();
  if (OUTLINED_FUNCTION_128(v59))
  {
    v60 = OUTLINED_FUNCTION_127();
    *v60 = 0;
    _os_log_impl(&dword_1C6F5C000, v58, v59, "Prompt Suggestion fetching whimsical suggestions", v60, 2u);
    OUTLINED_FUNCTION_109();
  }

  v61 = *(v0 + 352);

  v2 = 1;
  LOBYTE(v260) = 1;
  OUTLINED_FUNCTION_76_17(v62, &unk_1F46AA868, v63, v64, v65, v66, v67, v68, v240, v242, v244, v246, v248);
  v69 = v262;

  PromptSuggestionRanker.selectWhimsicalPrompt(_:using:)(v69, v61);
  v70 = sub_1C754FEEC();
  v71 = sub_1C755118C();
  v254 = v14;
  if (OUTLINED_FUNCTION_128(v71))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_135_8(&dword_1C6F5C000, v72, v73, "Prompt Suggestion fetching contextual suggestions");
    OUTLINED_FUNCTION_109();
  }

  v74 = MEMORY[0x1E69E7CC0];
  v1 = *(v0 + 344);

  LOBYTE(v260) = 1;
  OUTLINED_FUNCTION_76_17(v75, &unk_1F46AA890, v76, v77, v78, v79, v80, v81, v241, v243, v245, v247, v249);

  v82 = v262;

  PromptSuggestionRanker.selectContextualPrompt(_:otherPromptSuggestionCandidates:using:)(v82, v57, v0 + 120, v1);

  if ([objc_opt_self() alwaysShowCreativePrompts])
  {
    v83 = sub_1C754FEEC();
    v84 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v84))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_135_8(&dword_1C6F5C000, v85, v86, "Prompt Suggestion override : alwaysShowCreativePrompts");
      OUTLINED_FUNCTION_109();
    }

    v87 = *(v0 + 344);
    v1 = *(v0 + 352);
    v2 = *(v0 + 336);

    sub_1C710D924(v69);

    v69 = &unk_1C7570210;
    sub_1C6FD7FC8(v1, &qword_1EC2155A8);
    sub_1C7381230(v2, v1, &qword_1EC2155A8);
    sub_1C710D924(v82);

    sub_1C6FD7FC8(v87, &qword_1EC2155A8);
    sub_1C7381230(v2, v87, &qword_1EC2155A8);
    v14 = v254;
  }

  else
  {
  }

  v99 = *(v0 + 344);
  v100 = *(v0 + 328);
  v101 = *(v0 + 240);
  *(v0 + 152) = v74;
  sub_1C7326A18(v99, v100, &qword_1EC2155A8);
  v102 = OUTLINED_FUNCTION_69_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v102, v103, v101);
  v105 = *(v0 + 328);
  v4 = &unk_1C755E000;
  if (EnumTagSinglePayload != 1)
  {
    v107 = *(v0 + 304);
    v106 = *(v0 + 312);
    sub_1C7159368(v105, v106);
    sub_1C71592A8(v106, v107);
    v108 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_87_19();
    v110 = os_log_type_enabled(v108, v109);
    v111 = *(v0 + 304);
    if (v110)
    {
      v112 = OUTLINED_FUNCTION_41_0();
      v113 = OUTLINED_FUNCTION_20_1();
      v262 = v113;
      *v112 = 136315138;
      v2 = PromptSuggestion.shortDescription.getter();
      v114 = v3;
      v116 = v115;
      OUTLINED_FUNCTION_0_154();
      sub_1C7382AE4(v111, v117);
      v118 = sub_1C6F765A4(v2, v116, &v262);
      v3 = v114;
      v4 = 0x1C755E000;

      *(v112 + 4) = v118;
      _os_log_impl(&dword_1C6F5C000, v108, v69, "Including contextual suggestion %s", v112, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v113);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      OUTLINED_FUNCTION_0_154();
      sub_1C7382AE4(v111, v119);
    }

    sub_1C71592A8(*(v0 + 312), *(v0 + 296));
    sub_1C6FB3648(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v8 = v120;
    v1 = v120[2];
    v10 = v120[3];
    v7 = v1 + 1;
    if (v1 >= v10 >> 1)
    {
      goto LABEL_99;
    }

    goto LABEL_34;
  }

  sub_1C6FD7FC8(v105, &qword_1EC2155A8);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v126 = *(v0 + 240);
    sub_1C7326A18(*(v0 + 352), *(v0 + 320), &qword_1EC2155A8);
    v127 = OUTLINED_FUNCTION_69_2();
    v129 = __swift_getEnumTagSinglePayload(v127, v128, v126);
    v130 = *(v0 + 320);
    if (v129 == 1)
    {
      sub_1C6FD7FC8(v130, &qword_1EC2155A8);
    }

    else
    {
      v132 = *(v0 + 280);
      v131 = *(v0 + 288);
      sub_1C7159368(v130, v131);
      sub_1C71592A8(v131, v132);
      v133 = sub_1C754FEEC();
      v134 = sub_1C75511BC();
      v135 = os_log_type_enabled(v133, v134);
      v136 = *(v0 + 280);
      if (v135)
      {
        v137 = OUTLINED_FUNCTION_41_0();
        v2 = OUTLINED_FUNCTION_20_1();
        v262 = v2;
        *v137 = *(v4 + 2800);
        v138 = v3;
        v139 = PromptSuggestion.shortDescription.getter();
        v141 = v140;
        OUTLINED_FUNCTION_0_154();
        sub_1C7382AE4(v136, v142);
        v143 = v139;
        v3 = v138;
        sub_1C6F765A4(v143, v141, &v262);
        OUTLINED_FUNCTION_24_2();

        *(v137 + 4) = v136;
        _os_log_impl(&dword_1C6F5C000, v133, v134, "Including whimsical suggestion %s", v137, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v2);
        OUTLINED_FUNCTION_109();
        v14 = v254;
        OUTLINED_FUNCTION_109();
      }

      else
      {

        OUTLINED_FUNCTION_0_154();
        sub_1C7382AE4(v136, v144);
      }

      sub_1C71592A8(*(v0 + 288), *(v0 + 272));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v232 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB3648(v232, v233, v234, v8);
        v8 = v235;
      }

      v126 = v8[2];
      v145 = v8[3];
      if (v126 >= v145 >> 1)
      {
        v236 = OUTLINED_FUNCTION_15_2(v145);
        sub_1C6FB3648(v236, v237, v238, v8);
        v8 = v239;
      }

      v146 = *(v0 + 272);
      v1 = *(v0 + 248);
      OUTLINED_FUNCTION_0_154();
      sub_1C7382AE4(v147, v148);
      v8[2] = v126 + 1;
      OUTLINED_FUNCTION_191();
      sub_1C7159368(v146, v8 + v149 + *(v1 + 72) * v126);
      *(v0 + 152) = v8;
    }

    v150 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_49_25();
    if (os_log_type_enabled(v150, v151))
    {
      v152 = OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_58_25(v152, 3.852e-34);

      OUTLINED_FUNCTION_112_7();
      _os_log_impl(v153, v154, v155, v156, v152, 0xCu);
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    v157 = *(v0 + 168);
    v7 = v0 + 152;
    sub_1C6FD33C4();
    v158 = *(v0 + 152);
    v10 = *(v158 + 16);
    v159 = __OFSUB__(v157, v10);
    v4 = v157 - v10;
    if (!v159)
    {
      break;
    }

LABEL_98:
    __break(1u);
LABEL_99:
    v228 = OUTLINED_FUNCTION_15_2(v10);
    sub_1C6FB3648(v228, v229, v230, v8);
    v8 = v231;
LABEL_34:
    v121 = *(v0 + 296);
    v122 = *(v0 + 248);
    OUTLINED_FUNCTION_0_154();
    sub_1C7382AE4(v123, v124);
    v8[2] = v7;
    OUTLINED_FUNCTION_191();
    sub_1C7159368(v121, v8 + v125 + *(v122 + 72) * v1);
    *(v0 + 152) = v8;
    v14 = v254;
  }

  if (v4 >= 1)
  {
    v160 = swift_task_alloc();
    *(v0 + 424) = v160;
    *v160 = v0;
    v160[1] = sub_1C7377024;
    OUTLINED_FUNCTION_130_0();

    return sub_1C7378E20(v161, v162);
  }

  v165 = PromptSuggestionRanker.dedupe(suggestions:)(*(v0 + 152));
  *(v0 + 440) = v165;

  v166 = *(v165 + 16);
  v250 = v165;
  if (v166)
  {
    OUTLINED_FUNCTION_128_8();
    v255 = v167;
    v257 = v168;
    OUTLINED_FUNCTION_108_10();
    v252 = v169;
    v126 = v170 + 32;
    sub_1C75504FC();
    v171 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_118_10();
      v8 = &unk_1EC219230;
      v4 = &unk_1C7563720;
      sub_1C7326A18(v257 + v255, v14, &unk_1EC219230);
      OUTLINED_FUNCTION_0_154();
      sub_1C7382AE4(v1, v172);
      if (__swift_getEnumTagSinglePayload(v14, 1, v2) == 1)
      {
        sub_1C6FD7FC8(*(v0 + 216), &unk_1EC219230);
      }

      else
      {
        v14 = *v126;
        (*v126)(*(v0 + 208), *(v0 + 216), *(v0 + 192));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v176 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB3608(v176, v177, v178, v171);
          v171 = v179;
        }

        v2 = *(v171 + 16);
        v173 = *(v171 + 24);
        v1 = v2 + 1;
        if (v2 >= v173 >> 1)
        {
          OUTLINED_FUNCTION_15(v173);
          OUTLINED_FUNCTION_89_5();
          sub_1C6FB3608(v180, v181, v182, v171);
          v171 = v183;
        }

        *(v171 + 16) = v1;
        OUTLINED_FUNCTION_191();
        v14(v171 + v174 + *(v175 + 72) * v2);
      }

      v158 += v252;
      --v166;
    }

    while (v166);
  }

  else
  {
    sub_1C75504FC();
  }

  OUTLINED_FUNCTION_115_14();

  sub_1C7326A18(v158, v8, &unk_1EC219230);
  v184 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_lastRefreshDate;
  OUTLINED_FUNCTION_137_9();
  sub_1C717E2C4(v8, v126 + v184);
  swift_endAccess();
  v185 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_uiSuggestionStatistics;
  *(v0 + 448) = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_uiSuggestionStatistics;
  *(*(v126 + v185) + 80) = v250;
  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_136_4();

  *(*(v126 + v185) + 56) = v250;

  v186 = *(v126 + v185);

  sub_1C7241730(v250);

  sub_1C6FB5E28(v4 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_cache, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AF18);
  v187 = OUTLINED_FUNCTION_19_1();
  type metadata accessor for PromptSuggestionCache(v187);
  if ((OUTLINED_FUNCTION_116_13() & 1) == 0)
  {

    OUTLINED_FUNCTION_53_31();
    OUTLINED_FUNCTION_24_2();

    OUTLINED_FUNCTION_80_12();

    sub_1C70343B8(v185, v186);
    OUTLINED_FUNCTION_62_22();
    if (v250)
    {
      sub_1C7551DEC();
      OUTLINED_FUNCTION_114_12();
      v193 = swift_dynamicCastClass();
      if (!v193)
      {
        swift_unknownObjectRelease();
        v193 = MEMORY[0x1E69E7CC0];
      }

      v194 = *(v193 + 16);

      if (__OFSUB__(v250 >> 1, v185))
      {
        __break(1u);
      }

      else if (v194 == (v250 >> 1) - v185)
      {
        v192 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v192)
        {
LABEL_76:
          OUTLINED_FUNCTION_21_53();

          sub_1C737B098();

          v195 = (v186 + v185);
          v196 = sub_1C754FEEC();
          sub_1C75511BC();
          OUTLINED_FUNCTION_49_25();
          if (os_log_type_enabled(v196, v197))
          {
            OUTLINED_FUNCTION_23_1();
            v198 = OUTLINED_FUNCTION_47_10();
            OUTLINED_FUNCTION_79_15(3.8521e-34);
            OUTLINED_FUNCTION_40_29();
            v199 = *(v192 + 16);
            v200 = MEMORY[0x1E69E7CC0];
            if (v199)
            {
              v251 = v198;
              v253 = v185;
              v256 = v196;
              v201 = *(v0 + 248);
              v202 = *(v0 + 256);
              v259 = MEMORY[0x1E69E7CC0];
              sub_1C6F7ED9C();
              v200 = v259;
              OUTLINED_FUNCTION_191();
              v204 = v192 + v203;
              v258 = *(v201 + 72);
              do
              {
                sub_1C71592A8(v204, *(v0 + 256));
                v260 = 91;
                v261 = 0xE100000000000000;
                v205 = 0xE400000000000000;
                v206 = 1701736270;
                switch(*(v202 + 16))
                {
                  case 1:
                    v205 = 0xE600000000000000;
                    v206 = OUTLINED_FUNCTION_79_0();
                    break;
                  case 2:
                    v205 = 0xE600000000000000;
                    v206 = OUTLINED_FUNCTION_81();
                    break;
                  case 3:
                    v206 = OUTLINED_FUNCTION_2_105();
                    break;
                  case 4:
                    v206 = OUTLINED_FUNCTION_3_96();
                    break;
                  default:
                    break;
                }

                MEMORY[0x1CCA5CD70](v206, v205);

                OUTLINED_FUNCTION_100_15();
                MEMORY[0x1CCA5CD70](*(v202 + 104), *(v202 + 112));
                v207 = *(v202 + 296);
                if (v207)
                {
                  v208 = *(v202 + 288);
                  OUTLINED_FUNCTION_7_76();
                  v262 = v209;
                  OUTLINED_FUNCTION_17_70();
                  v263 = v210;
                  sub_1C75504FC();
                  MEMORY[0x1CCA5CD70](v208, v207);

                  OUTLINED_FUNCTION_104_11();
                  v211 = v262;
                  v207 = v263;
                }

                else
                {
                  v211 = OUTLINED_FUNCTION_111_12();
                }

                v212 = *(v0 + 256);
                v195 = &v260;
                MEMORY[0x1CCA5CD70](v211, v207);

                v214 = v260;
                v213 = v261;
                OUTLINED_FUNCTION_0_154();
                sub_1C7382AE4(v212, v215);
                v259 = v200;
                OUTLINED_FUNCTION_98_14();
                if (v217)
                {
                  OUTLINED_FUNCTION_15(v216);
                  v195 = &v259;
                  OUTLINED_FUNCTION_336();
                  sub_1C6F7ED9C();
                  v200 = v259;
                }

                *(v200 + 16) = v207;
                v218 = v200 + 16 * v212;
                *(v218 + 32) = v214;
                *(v218 + 40) = v213;
                v204 += v258;
                --v199;
              }

              while (v199);
              v185 = v253;
              v196 = v256;
              v198 = v251;
            }

            MEMORY[0x1CCA5D090](v200, MEMORY[0x1E69E6158]);
            OUTLINED_FUNCTION_92_14();

            v219 = OUTLINED_FUNCTION_23_14();
            sub_1C6F765A4(v219, v220, v221);
            OUTLINED_FUNCTION_132_4();

            *(v185 + 14) = v195;
            OUTLINED_FUNCTION_34_34(&dword_1C6F5C000, v222, v223, "Prompt Suggestion fetch returning %ld Result: %s");
            __swift_destroy_boxed_opaque_existential_1(v198);
            OUTLINED_FUNCTION_10_1();
            OUTLINED_FUNCTION_23_3();
          }

          else
          {
          }

          OUTLINED_FUNCTION_119_13(*(v0 + 184));
          *(v0 + 480) = sub_1C7550D0C();
          OUTLINED_FUNCTION_24_2();
          sub_1C7550C8C();
          OUTLINED_FUNCTION_8_71();
          goto LABEL_94;
        }

        v192 = MEMORY[0x1E69E7CC0];
LABEL_75:
        swift_unknownObjectRelease();
        goto LABEL_76;
      }

      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_16_6();
    sub_1C739CAA4(v188, v189, v190, v250);
    v192 = v191;
    goto LABEL_75;
  }

  OUTLINED_FUNCTION_36_30();
LABEL_94:
  OUTLINED_FUNCTION_130_0();

  return MEMORY[0x1EEE6DFA0](v224, v225, v226);
}

uint64_t sub_1C7377024()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 432) = v3;

  v4 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C7377110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, NSObject *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_127_1();
  a29 = v36;
  a30 = v37;
  OUTLINED_FUNCTION_63_0();
  a28 = v30;
  v38 = v30[23];
  sub_1C75504FC();
  v39 = sub_1C754FEEC();
  v40 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v40))
  {
    v31 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_58_25(v31, 3.852e-34);

    OUTLINED_FUNCTION_77_1();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  sub_1C6FD33C4();
  v46 = v30[19];
  v47 = PromptSuggestionRanker.dedupe(suggestions:)(v46);
  v30[55] = v47;

  v48 = *(v47 + 16);
  v101 = v47;
  if (v48)
  {
    OUTLINED_FUNCTION_128_8();
    a12 = v49;
    v103 = v50;
    OUTLINED_FUNCTION_108_10();
    a11 = v51;
    v32 = (v52 + 32);
    sub_1C75504FC();
    v53 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_118_10();
      v31 = &unk_1EC219230;
      v38 = &unk_1C7563720;
      sub_1C7326A18(a12 + v103, v34, &unk_1EC219230);
      OUTLINED_FUNCTION_0_154();
      sub_1C7382AE4(v33, v54);
      if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
      {
        sub_1C6FD7FC8(v30[27], &unk_1EC219230);
      }

      else
      {
        v34 = *v32;
        (*v32)(v30[26], v30[27], v30[24]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB3608(v58, v59, v60, v53);
          v53 = v61;
        }

        v35 = *(v53 + 16);
        v55 = *(v53 + 24);
        v33 = v35 + 1;
        if (v35 >= v55 >> 1)
        {
          OUTLINED_FUNCTION_15(v55);
          OUTLINED_FUNCTION_89_5();
          sub_1C6FB3608(v62, v63, v64, v53);
          v53 = v65;
        }

        *(v53 + 16) = v33;
        OUTLINED_FUNCTION_191();
        v34(v53 + v56 + *(v57 + 72) * v35);
      }

      v46 += a11;
      --v48;
    }

    while (v48);
  }

  else
  {
    sub_1C75504FC();
  }

  OUTLINED_FUNCTION_115_14();

  sub_1C7326A18(v46, v31, &unk_1EC219230);
  v66 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_lastRefreshDate;
  OUTLINED_FUNCTION_137_9();
  sub_1C717E2C4(v31, v32 + v66);
  swift_endAccess();
  v67 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_uiSuggestionStatistics;
  v30[56] = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_uiSuggestionStatistics;
  v68 = v101;
  (*(v32 + v67))[10] = v101;
  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_136_4();

  (*(v32 + v67))[7] = v101;

  v69 = *(v32 + v67);

  sub_1C7241730(v101);

  sub_1C6FB5E28(v38 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_cache, (v30 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AF18);
  v70 = OUTLINED_FUNCTION_19_1();
  type metadata accessor for PromptSuggestionCache(v70);
  if (OUTLINED_FUNCTION_116_13())
  {
    OUTLINED_FUNCTION_36_30();
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_53_31();
  OUTLINED_FUNCTION_24_2();

  OUTLINED_FUNCTION_80_12();

  sub_1C70343B8(v67, v69);
  OUTLINED_FUNCTION_62_22();
  if ((v101 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_1C7551DEC();
  OUTLINED_FUNCTION_114_12();
  v76 = swift_dynamicCastClass();
  if (!v76)
  {
    swift_unknownObjectRelease();
    v76 = MEMORY[0x1E69E7CC0];
  }

  v77 = *(v76 + 16);

  if (__OFSUB__(v101 >> 1, v67))
  {
    __break(1u);
    goto LABEL_50;
  }

  if (v77 != (v101 >> 1) - v67)
  {
LABEL_50:
    swift_unknownObjectRelease();
LABEL_19:
    OUTLINED_FUNCTION_16_6();
    sub_1C739CAA4(v71, v72, v73, v101);
    v75 = v74;
LABEL_26:
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v75 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v75)
  {
    v75 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

LABEL_27:
  OUTLINED_FUNCTION_21_53();

  sub_1C737B098();

  v78 = (v69 + v67);
  v79 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_49_25();
  if (os_log_type_enabled(v79, v80))
  {
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_47_10();
    OUTLINED_FUNCTION_125_8();
    OUTLINED_FUNCTION_79_15(3.8521e-34);
    OUTLINED_FUNCTION_40_29();
    v81 = MEMORY[0x1E69E7CC0];
    if (*(v75 + 16))
    {
      v102 = v32;
      OUTLINED_FUNCTION_91_15();
      v81 = a15;
      OUTLINED_FUNCTION_191();
      v83 = v75 + v82;
      OUTLINED_FUNCTION_122_9();
      do
      {
        sub_1C71592A8(v83, v30[32]);
        OUTLINED_FUNCTION_6_90();
        switch(v84)
        {
          case 1:
            OUTLINED_FUNCTION_79_0();
            break;
          case 2:
            OUTLINED_FUNCTION_81();
            break;
          case 3:
            OUTLINED_FUNCTION_2_105();
            break;
          case 4:
            OUTLINED_FUNCTION_3_96();
            break;
          default:
            break;
        }

        OUTLINED_FUNCTION_101_15();

        OUTLINED_FUNCTION_90_15();
        OUTLINED_FUNCTION_142_4();
        if (*(v68 + 296))
        {
          OUTLINED_FUNCTION_7_76();
          a18 = v85;
          OUTLINED_FUNCTION_17_70();
          OUTLINED_FUNCTION_140_8();
          OUTLINED_FUNCTION_89_15();

          OUTLINED_FUNCTION_88_13();
        }

        else
        {
          OUTLINED_FUNCTION_111_12();
        }

        v86 = v30[32];
        OUTLINED_FUNCTION_101_15();

        OUTLINED_FUNCTION_0_154();
        sub_1C7382AE4(v86, v87);
        a15 = v81;
        OUTLINED_FUNCTION_98_14();
        if (v89)
        {
          OUTLINED_FUNCTION_15(v88);
          v78 = &a15;
          OUTLINED_FUNCTION_336();
          sub_1C6F7ED9C();
          v81 = a15;
        }

        OUTLINED_FUNCTION_93_15();
      }

      while (!v90);
      v67 = a11;
      v79 = a12;
      v32 = v102;
    }

    MEMORY[0x1CCA5D090](v81, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_92_14();

    v91 = OUTLINED_FUNCTION_23_14();
    sub_1C6F765A4(v91, v92, v93);
    OUTLINED_FUNCTION_132_4();

    *(v67 + 14) = v78;
    OUTLINED_FUNCTION_34_34(&dword_1C6F5C000, v94, v95, "Prompt Suggestion fetch returning %ld Result: %s");
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
  }

  OUTLINED_FUNCTION_119_13(v30[23]);
  v30[60] = sub_1C7550D0C();
  OUTLINED_FUNCTION_24_2();
  sub_1C7550C8C();
  OUTLINED_FUNCTION_8_71();
LABEL_46:
  OUTLINED_FUNCTION_128_0();

  return MEMORY[0x1EEE6DFA0](v96, v97, v98);
}

uint64_t sub_1C737772C()
{
  OUTLINED_FUNCTION_42();
  sub_1C7114154((v0 + 104));
  v1 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C737778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, NSObject *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_127_1();
  a29 = v31;
  a30 = v32;
  OUTLINED_FUNCTION_63_0();
  a28 = v30;
  v33 = v30[55];
  v34 = v30[51];

  v35 = v30[13];
  v36 = v30[14];
  v37 = (v34 + OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_overnightSuggestionStatistics);
  swift_beginAccess();
  v38 = *v37;
  *v37 = v35;
  v37[1] = v36;

  OUTLINED_FUNCTION_53_31();
  OUTLINED_FUNCTION_24_2();

  OUTLINED_FUNCTION_80_12();

  sub_1C70343B8(v38, v33);
  OUTLINED_FUNCTION_62_22();
  if ((v35 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_1C7551DEC();
  OUTLINED_FUNCTION_114_12();
  v44 = swift_dynamicCastClass();
  if (!v44)
  {
    swift_unknownObjectRelease();
    v44 = MEMORY[0x1E69E7CC0];
  }

  v45 = *(v44 + 16);

  if (__OFSUB__(v35 >> 1, v38))
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v45 != (v35 >> 1) - v38)
  {
LABEL_32:
    swift_unknownObjectRelease();
LABEL_2:
    OUTLINED_FUNCTION_16_6();
    sub_1C739CAA4(v39, v40, v41, v35);
    v43 = v42;
    goto LABEL_9;
  }

  v43 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v43)
  {
    goto LABEL_10;
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  OUTLINED_FUNCTION_21_53();

  sub_1C737B098();

  v46 = (v33 + v38);
  v47 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_49_25();
  if (os_log_type_enabled(v47, v48))
  {
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_47_10();
    OUTLINED_FUNCTION_125_8();
    OUTLINED_FUNCTION_79_15(3.8521e-34);
    OUTLINED_FUNCTION_40_29();
    v49 = MEMORY[0x1E69E7CC0];
    if (*(v43 + 16))
    {
      OUTLINED_FUNCTION_91_15();
      v49 = a15;
      OUTLINED_FUNCTION_191();
      v51 = v43 + v50;
      OUTLINED_FUNCTION_122_9();
      do
      {
        sub_1C71592A8(v51, v30[32]);
        OUTLINED_FUNCTION_6_90();
        switch(v52)
        {
          case 1:
            OUTLINED_FUNCTION_79_0();
            break;
          case 2:
            OUTLINED_FUNCTION_81();
            break;
          case 3:
            OUTLINED_FUNCTION_2_105();
            break;
          case 4:
            OUTLINED_FUNCTION_3_96();
            break;
          default:
            break;
        }

        OUTLINED_FUNCTION_101_15();

        OUTLINED_FUNCTION_90_15();
        OUTLINED_FUNCTION_142_4();
        if (*(v35 + 296))
        {
          OUTLINED_FUNCTION_7_76();
          a18 = v53;
          OUTLINED_FUNCTION_17_70();
          OUTLINED_FUNCTION_140_8();
          OUTLINED_FUNCTION_89_15();

          OUTLINED_FUNCTION_88_13();
        }

        else
        {
          OUTLINED_FUNCTION_111_12();
        }

        v36 = v30[32];
        OUTLINED_FUNCTION_101_15();

        v38 = a16;
        v47 = a17;
        OUTLINED_FUNCTION_0_154();
        sub_1C7382AE4(v36, v54);
        a15 = v49;
        OUTLINED_FUNCTION_98_14();
        if (v56)
        {
          OUTLINED_FUNCTION_15(v55);
          v46 = &a15;
          OUTLINED_FUNCTION_336();
          sub_1C6F7ED9C();
          v49 = a15;
        }

        OUTLINED_FUNCTION_93_15();
      }

      while (!v57);
      OUTLINED_FUNCTION_94_16();
    }

    MEMORY[0x1CCA5D090](v49, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_92_14();

    v58 = OUTLINED_FUNCTION_23_14();
    sub_1C6F765A4(v58, v59, v60);
    OUTLINED_FUNCTION_132_4();

    *(v38 + 14) = v46;
    OUTLINED_FUNCTION_34_34(&dword_1C6F5C000, v61, v62, "Prompt Suggestion fetch returning %ld Result: %s");
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
  }

  OUTLINED_FUNCTION_119_13(v30[23]);
  v30[60] = sub_1C7550D0C();
  OUTLINED_FUNCTION_24_2();
  sub_1C7550C8C();
  OUTLINED_FUNCTION_8_71();
  OUTLINED_FUNCTION_128_0();

  return MEMORY[0x1EEE6DFA0](v63, v64, v65);
}

uint64_t sub_1C7377AFC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 464);

  sub_1C737F500(v1);
  v2 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C7377B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_63_0();
  v24 = v22[43];
  v23 = v22[44];
  v25 = v22[29];

  sub_1C6FD7FC8(v25, &unk_1EC219230);
  sub_1C6FD7FC8(v24, &qword_1EC2155A8);
  sub_1C6FD7FC8(v23, &qword_1EC2155A8);
  sub_1C6F85170();

  v44 = v22[58];
  v35 = v22[36];
  v36 = v22[35];
  v37 = v22[34];
  v38 = v22[33];
  v39 = v22[32];
  v40 = v22[29];
  v41 = v22[28];
  v42 = v22[27];
  v43 = v22[26];

  OUTLINED_FUNCTION_128_0();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, a20, a21, a22);
}

void *sub_1C7377D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v146 = sub_1C754E15C();
  v8 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v145 = (&v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PromptSuggestion(0);
  v149 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v144 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v143 = (&v128 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v141 = &v128 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v128 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v128 - v20;
  v22 = *(v3 + 16);
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v23 = v22;
  v137 = PerformanceMeasure.init(name:log:)();
  v24 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_photoLibrary);
  LOBYTE(v154) = 1;
  static PromptSuggestionReader.fetchPromptSuggestions(in:sources:contentMode:limit:shuffleGroupSize:generator:)(v24, &unk_1F46AA818, &v154, 40, 0, 40, 0, a3, &v156);
  rawValue = v156;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v134 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_81:
    sub_1C70E42C0();
    rawValue = v127;
  }

  v27 = rawValue[2];
  v140 = (*(v149 + 80) + 32) & ~*(v149 + 80);
  v147 = rawValue + v140;
  v156 = rawValue + v140;
  v157 = v27;
  sub_1C7381280(&v156);
  v158 = rawValue;
  v28 = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger;
  v29 = sub_1C754FEEC();
  v133 = sub_1C755118C();
  v30 = os_log_type_enabled(v29, v133);
  v148._rawValue = rawValue;
  v139 = v4;
  v136 = a2;
  v135 = a1;
  v138 = v28;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v150 = v131;
    *v31 = 134218242;
    *(v31 + 4) = rawValue[2];
    v132 = v31;
    *(v31 + 12) = 2080;
    v32 = rawValue[2];
    v4 = MEMORY[0x1E69E7CC0];
    if (v32)
    {
      v129 = v29;
      v130 = v8;
      v153 = MEMORY[0x1E69E7CC0];
      sub_1C75504FC();
      sub_1C6F7ED9C();
      v4 = v153;
      v142 = *(v149 + 72);
      v33 = v147;
      do
      {
        sub_1C71592A8(v33, v21);
        v156 = 91;
        v157 = 0xE100000000000000;
        v34 = 0xE400000000000000;
        v35 = 1701736270;
        switch(v21[16])
        {
          case 1:
            v34 = 0xE600000000000000;
            v35 = 0x636961736F4DLL;
            break;
          case 2:
            v34 = 0xE600000000000000;
            v35 = 0x686372616553;
            break;
          case 3:
            v35 = 0x616369736D696857;
            v34 = 0xE90000000000006CLL;
            break;
          case 4:
            v35 = 0x75747865746E6F43;
            v34 = 0xEA00000000006C61;
            break;
          default:
            break;
        }

        MEMORY[0x1CCA5CD70](v35, v34);

        MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
        MEMORY[0x1CCA5CD70](*(v21 + 13), *(v21 + 14));
        v36 = *(v21 + 37);
        if (v36)
        {
          v37 = *(v21 + 36);
          v154 = 0x20636973756D2820;
          v155 = 0xEB0000000027203ALL;
          sub_1C75504FC();
          MEMORY[0x1CCA5CD70](v37, v36);

          MEMORY[0x1CCA5CD70](10535, 0xE200000000000000);
          v38 = v154;
          v39 = v155;
        }

        else
        {
          v38 = 0;
          v39 = 0xE000000000000000;
        }

        MEMORY[0x1CCA5CD70](v38, v39);

        a2 = v156;
        v40 = v157;
        sub_1C7382AE4(v21, type metadata accessor for PromptSuggestion);
        v153 = v4;
        v41 = *(v4 + 16);
        if (v41 >= *(v4 + 24) >> 1)
        {
          sub_1C6F7ED9C();
          v4 = v153;
        }

        *(v4 + 16) = v41 + 1;
        v42 = v4 + 16 * v41;
        *(v42 + 32) = a2;
        *(v42 + 40) = v40;
        v33 += v142;
        --v32;
      }

      while (v32);
      rawValue = v148._rawValue;

      v8 = v130;
      v29 = v129;
    }

    v43 = MEMORY[0x1CCA5D090](v4, MEMORY[0x1E69E6158]);
    v45 = v44;

    v46 = sub_1C6F765A4(v43, v45, &v150);

    v47 = v132;
    *(v132 + 14) = v46;
    _os_log_impl(&dword_1C6F5C000, v29, v133, "Fetched Mosaic suggestions count: %ld %s", v47, 0x16u);
    v48 = v131;
    __swift_destroy_boxed_opaque_existential_1(v131);
    MEMORY[0x1CCA5F8E0](v48, -1, -1);
    MEMORY[0x1CCA5F8E0](v47, -1, -1);
  }

  a1 = rawValue[2];
  v49 = (v8 + 8);
  sub_1C75504FC();
  v50 = 0;
  v142 = MEMORY[0x1E69E7CC0];
  while (a1 != v50)
  {
    if (v50 >= rawValue[2])
    {
      __break(1u);
      goto LABEL_81;
    }

    a2 = *(v149 + 72);
    sub_1C71592A8(&v147[a2 * v50], v18);
    v51 = *(v18 + 31);
    v4 = *(v18 + 32);
    v52 = v145;
    sub_1C754E11C();
    v21 = sub_1C754E04C();
    v8 = v53;
    (*v49)(v52, v146);
    if (!v4)
    {

      goto LABEL_29;
    }

    if (v51 == v21 && v4 == v8)
    {

      goto LABEL_31;
    }

    v55 = sub_1C7551DBC();

    if (v55)
    {
LABEL_31:
      sub_1C7159368(v18, v141);
      v56 = v142;
      v57 = swift_isUniquelyReferenced_nonNull_native();
      v156 = v56;
      if ((v57 & 1) == 0)
      {
        sub_1C716D568();
        v56 = v156;
      }

      v4 = *(v56 + 16);
      if (v4 >= *(v56 + 24) >> 1)
      {
        sub_1C716D568();
        v56 = v156;
      }

      ++v50;
      *(v56 + 16) = v4 + 1;
      v142 = v56;
      sub_1C7159368(v141, v56 + v140 + v4 * a2);
      rawValue = v148._rawValue;
    }

    else
    {
LABEL_29:
      sub_1C7382AE4(v18, type metadata accessor for PromptSuggestion);
      ++v50;
      rawValue = v148._rawValue;
    }
  }

  swift_beginAccess();
  v158 = v142;

  v58 = sub_1C754FEEC();
  v59 = sub_1C755118C();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 134217984;
    *(v60 + 4) = *(v142 + 16);
    _os_log_impl(&dword_1C6F5C000, v58, v59, "Mosaic suggestions with valid Locale %ld", v60, 0xCu);
    MEMORY[0x1CCA5F8E0](v60, -1, -1);
  }

  v150 = 0;
  LOWORD(v151) = 0;
  LOBYTE(v153) = 3;
  static PromptSuggestionReader.fetchPromptSuggestions(in:sources:contentMode:limit:shuffleGroupSize:generator:)(v134, &unk_1F46AA840, &v153, 40, 0, 0, 1, &v150, &v154);

  v61 = v154;

  sub_1C75504FC();
  v62 = sub_1C754FEEC();
  v63 = sub_1C755118C();
  v64 = os_log_type_enabled(v62, v63);
  v148._rawValue = v61;
  if (v64)
  {
    LODWORD(v147) = v63;
    v65 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v153 = v146;
    *v65 = 134218242;
    *(v65 + 4) = v61[2];

    *(v65 + 12) = 2080;
    v66 = v61[2];
    v67 = MEMORY[0x1E69E7CC0];
    if (v66)
    {
      v141 = v65;
      v145 = v62;
      v152 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      v67 = v152;
      v68 = v61 + v140;
      v69 = *(v149 + 72);
      do
      {
        v70 = v143;
        sub_1C71592A8(v68, v143);
        v154 = 91;
        v155 = 0xE100000000000000;
        v71 = 0xE400000000000000;
        v72 = 1701736270;
        switch(*(v70 + 16))
        {
          case 1:
            v71 = 0xE600000000000000;
            v72 = 0x636961736F4DLL;
            break;
          case 2:
            v71 = 0xE600000000000000;
            v72 = 0x686372616553;
            break;
          case 3:
            v72 = 0x616369736D696857;
            v71 = 0xE90000000000006CLL;
            break;
          case 4:
            v72 = 0x75747865746E6F43;
            v71 = 0xEA00000000006C61;
            break;
          default:
            break;
        }

        MEMORY[0x1CCA5CD70](v72, v71);

        MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
        MEMORY[0x1CCA5CD70](*(v70 + 104), *(v70 + 112));
        v73 = *(v70 + 296);
        if (v73)
        {
          v74 = *(v70 + 288);
          v150 = 0x20636973756D2820;
          v151 = 0xEB0000000027203ALL;
          sub_1C75504FC();
          MEMORY[0x1CCA5CD70](v74, v73);

          MEMORY[0x1CCA5CD70](10535, 0xE200000000000000);
          v75 = v150;
          v76 = v151;
        }

        else
        {
          v75 = 0;
          v76 = 0xE000000000000000;
        }

        MEMORY[0x1CCA5CD70](v75, v76);

        v77 = v154;
        v78 = v155;
        sub_1C7382AE4(v70, type metadata accessor for PromptSuggestion);
        v152 = v67;
        v79 = *(v67 + 16);
        if (v79 >= *(v67 + 24) >> 1)
        {
          sub_1C6F7ED9C();
          v67 = v152;
        }

        *(v67 + 16) = v79 + 1;
        v80 = v67 + 16 * v79;
        *(v80 + 32) = v77;
        *(v80 + 40) = v78;
        v68 += v69;
        --v66;
      }

      while (v66);
      v62 = v145;
      v65 = v141;
    }

    v82 = MEMORY[0x1CCA5D090](v67, MEMORY[0x1E69E6158]);
    v84 = v83;

    v85 = sub_1C6F765A4(v82, v84, &v153);

    *(v65 + 14) = v85;
    _os_log_impl(&dword_1C6F5C000, v62, v147, "Fetched previously used Mosaic suggestions count: %ld %s", v65, 0x16u);
    v86 = v146;
    __swift_destroy_boxed_opaque_existential_1(v146);
    MEMORY[0x1CCA5F8E0](v86, -1, -1);
    MEMORY[0x1CCA5F8E0](v65, -1, -1);

    v81 = v135;
  }

  else
  {

    v81 = v135;
  }

  v87 = sub_1C75504FC();
  v88 = PromptSuggestionRanker.dedupe(suggestions:)(v87);

  v158 = v88;

  v89 = sub_1C754FEEC();
  v90 = sub_1C75511BC();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 134217984;
    *(v91 + 4) = *(v88 + 16);
    _os_log_impl(&dword_1C6F5C000, v89, v90, "Deduped prompt suggestions: %ld", v91, 0xCu);
    MEMORY[0x1CCA5F8E0](v91, -1, -1);
  }

  v92 = sub_1C75504FC();
  PromptSuggestionProvider.suggestionsVerifyingValidPersonUUIDs(suggestions:)(v92);
  v94 = v93;

  v158 = v94;

  v95 = sub_1C754FEEC();
  v96 = sub_1C75511BC();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 134217984;
    *(v97 + 4) = v94[2];
    _os_log_impl(&dword_1C6F5C000, v95, v96, "Prompt suggestions with verified people suggestions: %ld", v97, 0xCu);
    MEMORY[0x1CCA5F8E0](v97, -1, -1);
  }

  if (v81 <= 20)
  {
    v98 = 20;
  }

  else
  {
    v98 = v81;
  }

  v99 = sub_1C75504FC();
  v100 = PromptSuggestionRanker.rankTopPromptSuggestions(promptSuggestionCandidates:usedPromptSuggestions:fetchLimit:embeddingDistanceThreshold:)(v99, v148, v98, 1.0).suggestions._rawValue;

  sub_1C75504FC();
  v101 = sub_1C754FEEC();
  v102 = sub_1C75511BC();
  v103 = os_log_type_enabled(v101, v102);
  v104 = v144;
  if (v103)
  {
    LODWORD(v146) = v102;
    v148._rawValue = v94;
    v105 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v153 = v145;
    *v105 = 134218242;
    *(v105 + 4) = v100[2];

    v147 = v105;
    *(v105 + 12) = 2080;
    v106 = v100[2];
    v107 = MEMORY[0x1E69E7CC0];
    if (v106)
    {
      v142 = v101;
      v152 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      v107 = v152;
      v143 = v100;
      v108 = v100 + v140;
      v109 = *(v149 + 72);
      do
      {
        sub_1C71592A8(v108, v104);
        v154 = 91;
        v155 = 0xE100000000000000;
        v110 = 0xE400000000000000;
        v111 = 1701736270;
        switch(*(v104 + 16))
        {
          case 1:
            v110 = 0xE600000000000000;
            v111 = 0x636961736F4DLL;
            break;
          case 2:
            v110 = 0xE600000000000000;
            v111 = 0x686372616553;
            break;
          case 3:
            v111 = 0x616369736D696857;
            v110 = 0xE90000000000006CLL;
            break;
          case 4:
            v111 = 0x75747865746E6F43;
            v110 = 0xEA00000000006C61;
            break;
          default:
            break;
        }

        MEMORY[0x1CCA5CD70](v111, v110);

        MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
        MEMORY[0x1CCA5CD70](*(v104 + 104), *(v104 + 112));
        v112 = *(v104 + 296);
        if (v112)
        {
          v113 = *(v104 + 288);
          v150 = 0x20636973756D2820;
          v151 = 0xEB0000000027203ALL;
          sub_1C75504FC();
          MEMORY[0x1CCA5CD70](v113, v112);

          MEMORY[0x1CCA5CD70](10535, 0xE200000000000000);
          v114 = v150;
          v115 = v151;
        }

        else
        {
          v114 = 0;
          v115 = 0xE000000000000000;
        }

        MEMORY[0x1CCA5CD70](v114, v115);

        v117 = v154;
        v116 = v155;
        sub_1C7382AE4(v104, type metadata accessor for PromptSuggestion);
        v152 = v107;
        v118 = *(v107 + 16);
        if (v118 >= *(v107 + 24) >> 1)
        {
          sub_1C6F7ED9C();
          v107 = v152;
        }

        *(v107 + 16) = v118 + 1;
        v119 = v107 + 16 * v118;
        *(v119 + 32) = v117;
        *(v119 + 40) = v116;
        v108 += v109;
        --v106;
        v104 = v144;
      }

      while (v106);
      v101 = v142;
      v100 = v143;
    }

    v120 = MEMORY[0x1CCA5D090](v107, MEMORY[0x1E69E6158]);
    v122 = v121;

    v123 = sub_1C6F765A4(v120, v122, &v153);

    v124 = v147;
    *(v147 + 14) = v123;
    _os_log_impl(&dword_1C6F5C000, v101, v146, "Ranked mosaic suggestions: %ld : %s", v124, 0x16u);
    v125 = v145;
    __swift_destroy_boxed_opaque_existential_1(v145);
    MEMORY[0x1CCA5F8E0](v125, -1, -1);
    MEMORY[0x1CCA5F8E0](v124, -1, -1);
  }

  else
  {
  }

  sub_1C6F85170();

  return v100;
}

uint64_t sub_1C7378E20(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *(type metadata accessor for PromptSuggestion(0) - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AF20);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7378F64, 0, 0);
}

uint64_t sub_1C7378F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, char *a11, NSObject *a12, uint64_t a13, uint64_t a14, uint64_t a15, NSObject *a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_127_1();
  a29 = v31;
  a30 = v32;
  OUTLINED_FUNCTION_63_0();
  a28 = v30;
  v33 = v30[3];
  v34 = *(v30[5] + 16);
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v35 = v34;
  v30[16] = PerformanceMeasure.init(name:log:)();
  if (v33 >= 1)
  {
    v36 = MEMORY[0x1E69E7CC0];
    v30[2] = MEMORY[0x1E69E7CC0];
    v37 = objc_opt_self();
    v30[17] = v37;
    v38 = [v37 enablePromptSuggestionPlistCache];
    v39 = &unk_1EDD09000;
    v30[18] = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger;
    v40 = sub_1C754FEEC();
    v41 = sub_1C75511BC();
    v42 = OUTLINED_FUNCTION_21_0(v41);
    if (v38)
    {
      if (v42)
      {
        v43 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_37_0(v43);
        OUTLINED_FUNCTION_8_1();
        _os_log_impl(v44, v45, v46, v47, v48, 2u);
        OUTLINED_FUNCTION_23_3();
      }

      v49 = v30[5];

      OUTLINED_FUNCTION_86_13((v49 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_cache));
      v106 = OUTLINED_FUNCTION_110_10();
      OUTLINED_FUNCTION_15_3();
      v107 = v50 + *v50;
      v51 = swift_task_alloc();
      v30[19] = v51;
      *v51 = v30;
      v51[1] = sub_1C73794CC;
      OUTLINED_FUNCTION_16_6();
      OUTLINED_FUNCTION_128_0();

      return v55(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, v106, v107, a14, a15, a16, a17, a18, a19, a20, a21, a22);
    }

    if (v42)
    {
      v61 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v61);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v62, v63, v64, v65, v66, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    v67 = v30[3] - *(v36 + 16);
    v68 = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger;
    v30[24] = v36;
    v30[25] = v68;
    if (v67 >= 1)
    {
      v69 = sub_1C754FEEC();
      v70 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_66(v70))
      {
        v71 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_92_0(v71);
        OUTLINED_FUNCTION_39();
        _os_log_impl(v72, v73, v74, v75, v76, 2u);
        OUTLINED_FUNCTION_37();
      }

      v77 = swift_task_alloc();
      v30[26] = v77;
      *v77 = v30;
      OUTLINED_FUNCTION_9_75(v77);
      OUTLINED_FUNCTION_128_0();

      return PromptSuggestionProvider.fetchFallbackSuggestions(maxSuggestionResults:)();
    }

    v79 = MEMORY[0x1E69E7CC0];
    sub_1C75504FC();
    v80 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_49_25();
    if (os_log_type_enabled(v80, v81))
    {
      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_47_10();
      OUTLINED_FUNCTION_125_8();
      *v68 = 134218242;
      v82 = *(v79 + 16);
      *(v68 + 4) = v82;
      OUTLINED_FUNCTION_40_29();
      if (v82)
      {
        a9 = &unk_1EDD09000;
        HIDWORD(a10) = v36;
        a11 = v68;
        a12 = v80;
        v83 = v30[7];
        a15 = v79;
        OUTLINED_FUNCTION_18_54();
        sub_1C6F7ED9C();
        OUTLINED_FUNCTION_191();
        v85 = v79 + v84;
        v79 = a15;
        OUTLINED_FUNCTION_122_9();
        do
        {
          sub_1C71592A8(v85, v30[7]);
          OUTLINED_FUNCTION_6_90();
          switch(v86)
          {
            case 1:
              OUTLINED_FUNCTION_79_0();
              break;
            case 2:
              OUTLINED_FUNCTION_81();
              break;
            case 3:
              OUTLINED_FUNCTION_2_105();
              break;
            case 4:
              OUTLINED_FUNCTION_3_96();
              break;
            default:
              break;
          }

          OUTLINED_FUNCTION_101_15();

          OUTLINED_FUNCTION_90_15();
          OUTLINED_FUNCTION_142_4();
          if (*(v83 + 296))
          {
            OUTLINED_FUNCTION_7_76();
            a18 = v87;
            OUTLINED_FUNCTION_17_70();
            OUTLINED_FUNCTION_140_8();
            OUTLINED_FUNCTION_89_15();

            OUTLINED_FUNCTION_88_13();
          }

          else
          {
            OUTLINED_FUNCTION_111_12();
          }

          v39 = v30[7];
          OUTLINED_FUNCTION_101_15();

          v80 = a16;
          v68 = a17;
          OUTLINED_FUNCTION_0_154();
          sub_1C7382AE4(v39, v88);
          OUTLINED_FUNCTION_123_10();
          if (v90)
          {
            OUTLINED_FUNCTION_15(v89);
            OUTLINED_FUNCTION_336();
            sub_1C6F7ED9C();
            v79 = a15;
          }

          OUTLINED_FUNCTION_85_14();
        }

        while (!v91);
        OUTLINED_FUNCTION_94_16();
      }

      v92 = MEMORY[0x1CCA5D090](v79, MEMORY[0x1E69E6158]);
      v94 = v93;

      v95 = sub_1C6F765A4(v92, v94, &a14);

      *(v68 + 14) = v95;
      OUTLINED_FUNCTION_34_34(&dword_1C6F5C000, v96, v97, "Fetched search suggestions from plist cache: %ld : %s");
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_23_3();
    }
  }

  sub_1C6F85170();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_128_0();

  return v100(v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C73794CC()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_47();
  v9 = v8;
  OUTLINED_FUNCTION_40();
  *v10 = v9;
  v11 = *v1;
  OUTLINED_FUNCTION_14();
  *v12 = v11;
  *(v9 + 160) = v0;

  if (!v0)
  {
    v13 = *(v9 + 104);
    *(v9 + 168) = v5;
    *(v9 + 176) = v3;
    *(v9 + 184) = v7;
    *(v9 + 232) = *(v13 + 64);
    *(v9 + 236) = *(v13 + 80);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C7379604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_163_3();
  a31 = v34;
  a32 = v35;
  a30 = v32;
  v37 = *(v32 + 232);
  v36 = *(v32 + 236);
  v38 = *(v32 + 176);
  v39 = *(v32 + 168);
  v41 = *(v32 + 112);
  v40 = *(v32 + 120);
  v42 = *(v32 + 96);
  v43 = *(v32 + 48);
  *v40 = *(v32 + 184);
  *(v40 + v37) = v38;
  *(v40 + v36) = v39;
  result = sub_1C7326A18(v40, v41, &unk_1EC21AF20);
  v45 = 0;
  v46 = *v41;
  v47 = *(*v41 + 16);
  v48 = MEMORY[0x1E69E7CC0];
  while (v47 != v45)
  {
    if (v45 >= *(v46 + 16))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_99_14();
    v49 = *(v43 + 72);
    sub_1C71592A8(v46 + v33 + v49 * v45, v50);
    if (*(v42 + 16) == 2)
    {
      sub_1C7159368(*(v32 + 96), *(v32 + 88));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a20 = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C716D568();
        v48 = a20;
      }

      v55 = *(v48 + 16);
      v54 = *(v48 + 24);
      v56 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        OUTLINED_FUNCTION_15(v54);
        v59 = v58;
        a15 = v60;
        sub_1C716D568();
        v56 = v59;
        v55 = a15;
        v48 = a20;
      }

      ++v45;
      v57 = *(v32 + 88);
      *(v48 + 16) = v56;
      result = sub_1C7159368(v57, v48 + v33 + v55 * v49);
    }

    else
    {
      OUTLINED_FUNCTION_0_154();
      result = sub_1C7382AE4(v51, v52);
      ++v45;
    }
  }

  v62 = *(v32 + 104);
  v61 = *(v32 + 112);
  v63 = *(v32 + 80);

  result = sub_1C6FD7FC8(v61 + *(v62 + 48), &unk_1EC219230);
  v64 = 0;
  v65 = *(v48 + 16);
  v66 = MEMORY[0x1E69E7CC0];
  while (v65 != v64)
  {
    if (v64 >= *(v48 + 16))
    {
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_99_14();
    v67 = *(v43 + 72);
    sub_1C71592A8(v48 + v33 + v67 * v64, v68);
    if (*(v63 + 17) <= 1u)
    {
      sub_1C7159368(*(v32 + 80), *(v32 + 72));
      v71 = swift_isUniquelyReferenced_nonNull_native();
      a20 = v66;
      if ((v71 & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C716D568();
        v66 = a20;
      }

      v73 = *(v66 + 16);
      v72 = *(v66 + 24);
      v74 = v73 + 1;
      if (v73 >= v72 >> 1)
      {
        OUTLINED_FUNCTION_15(v72);
        a15 = v76;
        sub_1C716D568();
        v74 = a15;
        v66 = a20;
      }

      ++v64;
      v75 = *(v32 + 72);
      *(v66 + 16) = v74;
      result = sub_1C7159368(v75, v66 + v33 + v73 * v67);
    }

    else
    {
      OUTLINED_FUNCTION_0_154();
      result = sub_1C7382AE4(v69, v70);
      ++v64;
    }
  }

  v77 = v66;

  v78 = sub_1C754FEEC();
  v79 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v79))
  {
    v80 = OUTLINED_FUNCTION_41_0();
    *v80 = 134217984;
    *(v80 + 4) = *(v77 + 16);

    OUTLINED_FUNCTION_77_1();
    _os_log_impl(v81, v82, v83, v84, v85, 0xCu);
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  v86 = *(v32 + 24);

  sub_1C70343B8(v86, v77);
  LOBYTE(v88) = v87;

  v89 = sub_1C754FEEC();
  v90 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v90))
  {
    v91 = OUTLINED_FUNCTION_41_0();
    *v91 = 134217984;
    v92 = *(v77 + 16);

    *(v91 + 4) = v92;

    _os_log_impl(&dword_1C6F5C000, v89, v90, "Including %ld search suggestions", v91, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v93 = *(v32 + 120);
  sub_1C6FD3D8C();
  sub_1C6FD7FC8(v93, &unk_1EC21AF20);
  v95 = *(v32 + 16);
  v94 = *(v32 + 24);
  *(v32 + 192) = v95;
  v96 = *(v32 + 40);
  v97 = v94 - *(v95 + 16);
  v98 = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger;
  *(v32 + 200) = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger;
  if (v97 < 1)
  {
    sub_1C75504FC();
    v109 = &v98[v96];
    v110 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_87_19();
    if (os_log_type_enabled(v110, v111))
    {
      OUTLINED_FUNCTION_23_1();
      v112 = OUTLINED_FUNCTION_47_10();
      a16 = v112;
      OUTLINED_FUNCTION_32_34(3.8521e-34);
      v113 = MEMORY[0x1E69E7CC0];
      if (v90)
      {
        OUTLINED_FUNCTION_95_17();
        v110 = *(v32 + 56);
        a17 = v113;
        OUTLINED_FUNCTION_18_54();
        sub_1C6F7ED9C();
        OUTLINED_FUNCTION_19_63();
        do
        {
          sub_1C71592A8(v112, *(v32 + 56));
          OUTLINED_FUNCTION_15_69();
          switch(v114)
          {
            case 1:
              OUTLINED_FUNCTION_79_0();
              break;
            case 2:
              OUTLINED_FUNCTION_81();
              break;
            case 3:
              OUTLINED_FUNCTION_46();
              break;
            case 4:
              OUTLINED_FUNCTION_47_2();
              break;
            default:
              break;
          }

          OUTLINED_FUNCTION_117_9();

          OUTLINED_FUNCTION_100_15();
          v109 = &a18;
          MEMORY[0x1CCA5CD70](v110[13].isa, v110[14].isa);
          if (v110[37].isa)
          {
            OUTLINED_FUNCTION_7_76();
            a20 = v115;
            OUTLINED_FUNCTION_17_70();
            a21 = v116;
            sub_1C75504FC();
            OUTLINED_FUNCTION_113_12();

            v109 = &a20;
            OUTLINED_FUNCTION_104_11();
          }

          v88 = *(v32 + 56);
          OUTLINED_FUNCTION_117_9();

          v97 = a19;
          OUTLINED_FUNCTION_0_154();
          sub_1C7382AE4(v88, v117);
          OUTLINED_FUNCTION_57_25();
          if (v119)
          {
            OUTLINED_FUNCTION_15(v118);
            v109 = &a17;
            OUTLINED_FUNCTION_89_5();
            sub_1C6F7ED9C();
            v113 = a17;
          }

          OUTLINED_FUNCTION_23_44();
        }

        while (!v120);
        OUTLINED_FUNCTION_55_27();
      }

      MEMORY[0x1CCA5D090](v113, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_92_14();

      v121 = OUTLINED_FUNCTION_23_14();
      sub_1C6F765A4(v121, v122, v123);
      OUTLINED_FUNCTION_132_4();

      *(v97 + 14) = v109;
      OUTLINED_FUNCTION_42_32(&dword_1C6F5C000, v124, v88, "Fetched search suggestions from plist cache: %ld : %s");
      OUTLINED_FUNCTION_56_25();
      OUTLINED_FUNCTION_23_3();
    }

    OUTLINED_FUNCTION_54_27();

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_329();

    return v127(v125, v126, v127, v128, v129, v130, v131, v132, a9, a10, a11, a12, a13, v95, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }

  else
  {
    v99 = sub_1C754FEEC();
    v100 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v100))
    {
      v101 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v101);
      OUTLINED_FUNCTION_77_1();
      _os_log_impl(v102, v103, v104, v105, v106, 2u);
      OUTLINED_FUNCTION_37();
    }

    v107 = swift_task_alloc();
    *(v32 + 208) = v107;
    *v107 = v32;
    OUTLINED_FUNCTION_9_75(v107);
    OUTLINED_FUNCTION_329();

    return PromptSuggestionProvider.fetchFallbackSuggestions(maxSuggestionResults:)();
  }
}

uint64_t sub_1C7379D10()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v4;
  *(v2 + 224) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7379E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_163_3();
  a31 = v35;
  a32 = v36;
  a30 = v32;
  sub_1C75504FC();
  v37 = sub_1C754FEEC();
  v38 = sub_1C75511BC();
  v39 = OUTLINED_FUNCTION_21_0(v38);
  v40 = *(v32 + 216);
  if (v39)
  {
    v41 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_58_25(v41, 3.852e-34);

    OUTLINED_FUNCTION_77_1();
    _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  sub_1C6FD33C4();
  v47 = *(v32 + 16);
  if ([*(v32 + 136) enablePromptSuggestionPlistCache])
  {
    v48 = PromptSuggestionRanker.dedupe(suggestions:)(v47);

    *(v32 + 16) = v48;
    v47 = v48;
  }

  v49 = *(v32 + 200);
  v50 = *(v32 + 40);
  sub_1C75504FC();
  v51 = (v50 + v49);
  v52 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_87_19();
  if (os_log_type_enabled(v52, v53))
  {
    OUTLINED_FUNCTION_23_1();
    v54 = OUTLINED_FUNCTION_47_10();
    a16 = v54;
    OUTLINED_FUNCTION_32_34(3.8521e-34);
    v55 = MEMORY[0x1E69E7CC0];
    if (v34)
    {
      OUTLINED_FUNCTION_95_17();
      v52 = *(v32 + 64);
      a17 = v55;
      OUTLINED_FUNCTION_18_54();
      sub_1C6F7ED9C();
      OUTLINED_FUNCTION_19_63();
      do
      {
        sub_1C71592A8(v54, *(v32 + 64));
        OUTLINED_FUNCTION_15_69();
        switch(v56)
        {
          case 1:
            OUTLINED_FUNCTION_79_0();
            break;
          case 2:
            OUTLINED_FUNCTION_81();
            break;
          case 3:
            OUTLINED_FUNCTION_46();
            break;
          case 4:
            OUTLINED_FUNCTION_47_2();
            break;
          default:
            break;
        }

        OUTLINED_FUNCTION_117_9();

        OUTLINED_FUNCTION_100_15();
        v51 = &a18;
        MEMORY[0x1CCA5CD70](v52[13].isa, v52[14].isa);
        if (v52[37].isa)
        {
          OUTLINED_FUNCTION_7_76();
          a20 = v57;
          OUTLINED_FUNCTION_17_70();
          a21 = v58;
          sub_1C75504FC();
          OUTLINED_FUNCTION_113_12();

          v51 = &a20;
          OUTLINED_FUNCTION_104_11();
        }

        v33 = *(v32 + 64);
        OUTLINED_FUNCTION_117_9();

        v40 = a19;
        OUTLINED_FUNCTION_0_154();
        sub_1C7382AE4(v33, v59);
        OUTLINED_FUNCTION_57_25();
        if (v61)
        {
          OUTLINED_FUNCTION_15(v60);
          v51 = &a17;
          OUTLINED_FUNCTION_89_5();
          sub_1C6F7ED9C();
          v55 = a17;
        }

        OUTLINED_FUNCTION_23_44();
      }

      while (!v62);
      OUTLINED_FUNCTION_55_27();
    }

    MEMORY[0x1CCA5D090](v55, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_92_14();

    v63 = OUTLINED_FUNCTION_23_14();
    sub_1C6F765A4(v63, v64, v65);
    OUTLINED_FUNCTION_132_4();

    *(v40 + 14) = v51;
    OUTLINED_FUNCTION_42_32(&dword_1C6F5C000, v66, v33, "Fetched search suggestions: %ld : %s");
    OUTLINED_FUNCTION_56_25();
    OUTLINED_FUNCTION_23_3();
  }

  OUTLINED_FUNCTION_54_27();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_329();

  return v69(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, v47, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1C737A174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, char *a11, NSObject *a12, uint64_t a13, uint64_t a14, uint64_t a15, NSObject *a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_127_1();
  a29 = v33;
  a30 = v34;
  OUTLINED_FUNCTION_63_0();
  a28 = v30;
  v35 = v30[20];
  v36 = v35;
  v37 = sub_1C754FEEC();
  v38 = sub_1C755119C();

  v39 = os_log_type_enabled(v37, v38);
  v40 = v30[20];
  if (v39)
  {
    v31 = OUTLINED_FUNCTION_41_0();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    v41 = v40;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v42;
    *v32 = v42;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    sub_1C6FD7FC8(v32, &qword_1EC215190);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  v48 = v30[3] - *(MEMORY[0x1E69E7CC0] + 16);
  v49 = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger;
  v30[24] = MEMORY[0x1E69E7CC0];
  v30[25] = v49;
  if (v48 < 1)
  {
    v61 = MEMORY[0x1E69E7CC0];
    sub_1C75504FC();
    v62 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_49_25();
    if (os_log_type_enabled(v62, v63))
    {
      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_47_10();
      OUTLINED_FUNCTION_125_8();
      *v49 = 134218242;
      v64 = *(v61 + 16);
      *(v49 + 4) = v64;
      OUTLINED_FUNCTION_40_29();
      if (v64)
      {
        a9 = v32;
        HIDWORD(a10) = v31;
        a11 = v49;
        a12 = v62;
        v65 = v30[7];
        a15 = v61;
        OUTLINED_FUNCTION_18_54();
        sub_1C6F7ED9C();
        OUTLINED_FUNCTION_191();
        v67 = v61 + v66;
        v61 = a15;
        OUTLINED_FUNCTION_122_9();
        do
        {
          sub_1C71592A8(v67, v30[7]);
          OUTLINED_FUNCTION_6_90();
          switch(v68)
          {
            case 1:
              OUTLINED_FUNCTION_79_0();
              break;
            case 2:
              OUTLINED_FUNCTION_81();
              break;
            case 3:
              OUTLINED_FUNCTION_2_105();
              break;
            case 4:
              OUTLINED_FUNCTION_3_96();
              break;
            default:
              break;
          }

          OUTLINED_FUNCTION_101_15();

          OUTLINED_FUNCTION_90_15();
          OUTLINED_FUNCTION_142_4();
          if (*(v65 + 296))
          {
            OUTLINED_FUNCTION_7_76();
            a18 = v69;
            OUTLINED_FUNCTION_17_70();
            OUTLINED_FUNCTION_140_8();
            OUTLINED_FUNCTION_89_15();

            OUTLINED_FUNCTION_88_13();
          }

          else
          {
            OUTLINED_FUNCTION_111_12();
          }

          v32 = v30[7];
          OUTLINED_FUNCTION_101_15();

          v62 = a16;
          v49 = a17;
          OUTLINED_FUNCTION_0_154();
          sub_1C7382AE4(v32, v70);
          OUTLINED_FUNCTION_123_10();
          if (v72)
          {
            OUTLINED_FUNCTION_15(v71);
            OUTLINED_FUNCTION_336();
            sub_1C6F7ED9C();
            v61 = a15;
          }

          OUTLINED_FUNCTION_85_14();
        }

        while (!v73);
        OUTLINED_FUNCTION_94_16();
      }

      v74 = MEMORY[0x1CCA5D090](v61, MEMORY[0x1E69E6158]);
      v76 = v75;

      v77 = sub_1C6F765A4(v74, v76, &a14);

      *(v49 + 14) = v77;
      OUTLINED_FUNCTION_34_34(&dword_1C6F5C000, v78, v79, "Fetched search suggestions from plist cache: %ld : %s");
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_23_3();
    }

    sub_1C6F85170();

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_128_0();

    return v82(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  else
  {
    v50 = sub_1C754FEEC();
    v51 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_66(v51))
    {
      v52 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v52);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v53, v54, v55, v56, v57, 2u);
      OUTLINED_FUNCTION_37();
    }

    v58 = swift_task_alloc();
    v30[26] = v58;
    *v58 = v30;
    OUTLINED_FUNCTION_9_75(v58);
    OUTLINED_FUNCTION_128_0();

    return PromptSuggestionProvider.fetchFallbackSuggestions(maxSuggestionResults:)();
  }
}

uint64_t sub_1C737A5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_163_3();
  a31 = v35;
  a32 = v36;
  a30 = v32;
  v37 = *(v32 + 224);
  v38 = v37;
  v39 = sub_1C754FEEC();
  v40 = sub_1C755119C();

  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v32 + 224);
  if (v41)
  {
    v43 = OUTLINED_FUNCTION_41_0();
    v33 = swift_slowAlloc();
    *v43 = 138412290;
    v44 = v42;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v43 + 4) = v45;
    *v33 = v45;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
    sub_1C6FD7FC8(v33, &qword_1EC215190);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  v51 = *(v32 + 192);
  if ([*(v32 + 136) enablePromptSuggestionPlistCache])
  {
    v52 = PromptSuggestionRanker.dedupe(suggestions:)(v51);

    *(v32 + 16) = v52;
    v51 = v52;
  }

  v53 = *(v32 + 200);
  v54 = *(v32 + 40);
  sub_1C75504FC();
  v55 = (v54 + v53);
  v56 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_87_19();
  if (os_log_type_enabled(v56, v57))
  {
    OUTLINED_FUNCTION_23_1();
    v58 = OUTLINED_FUNCTION_47_10();
    a16 = v58;
    OUTLINED_FUNCTION_32_34(3.8521e-34);
    v59 = MEMORY[0x1E69E7CC0];
    if (v34)
    {
      OUTLINED_FUNCTION_95_17();
      v56 = *(v32 + 64);
      a17 = v59;
      OUTLINED_FUNCTION_18_54();
      sub_1C6F7ED9C();
      OUTLINED_FUNCTION_19_63();
      do
      {
        sub_1C71592A8(v58, *(v32 + 64));
        OUTLINED_FUNCTION_15_69();
        switch(v60)
        {
          case 1:
            OUTLINED_FUNCTION_79_0();
            break;
          case 2:
            OUTLINED_FUNCTION_81();
            break;
          case 3:
            OUTLINED_FUNCTION_46();
            break;
          case 4:
            OUTLINED_FUNCTION_47_2();
            break;
          default:
            break;
        }

        OUTLINED_FUNCTION_117_9();

        OUTLINED_FUNCTION_100_15();
        v55 = &a18;
        MEMORY[0x1CCA5CD70](v56[13].isa, v56[14].isa);
        if (v56[37].isa)
        {
          OUTLINED_FUNCTION_7_76();
          a20 = v61;
          OUTLINED_FUNCTION_17_70();
          a21 = v62;
          sub_1C75504FC();
          OUTLINED_FUNCTION_113_12();

          v55 = &a20;
          OUTLINED_FUNCTION_104_11();
        }

        v33 = *(v32 + 64);
        OUTLINED_FUNCTION_117_9();

        v40 = a19;
        OUTLINED_FUNCTION_0_154();
        sub_1C7382AE4(v33, v63);
        OUTLINED_FUNCTION_57_25();
        if (v65)
        {
          OUTLINED_FUNCTION_15(v64);
          v55 = &a17;
          OUTLINED_FUNCTION_89_5();
          sub_1C6F7ED9C();
          v59 = a17;
        }

        OUTLINED_FUNCTION_23_44();
      }

      while (!v66);
      OUTLINED_FUNCTION_55_27();
    }

    MEMORY[0x1CCA5D090](v59, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_92_14();

    v67 = OUTLINED_FUNCTION_23_14();
    sub_1C6F765A4(v67, v68, v69);
    OUTLINED_FUNCTION_132_4();

    *(v40 + 14) = v55;
    OUTLINED_FUNCTION_42_32(&dword_1C6F5C000, v70, v33, "Fetched search suggestions: %ld : %s");
    OUTLINED_FUNCTION_56_25();
    OUTLINED_FUNCTION_23_3();
  }

  OUTLINED_FUNCTION_54_27();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_329();

  return v73(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12, a13, v51, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

void PromptSuggestionProvider.suggestionsWithValidNumberOfAssets(_:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = type metadata accessor for PromptSuggestion(0);
  v4 = OUTLINED_FUNCTION_18(v3);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_78();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v84 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_130();
  v90 = v14;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_130();
  v93 = v16;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_130();
  v102 = v18;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v84 - v20;
  v22 = *(v0 + 16);
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_40_4();
  v92 = v23;
  swift_allocObject();
  v91 = v22;
  v84[1] = PerformanceMeasure.init(name:log:)();
  v24 = [objc_opt_self() promptValidationAssetCountThreshold];
  v99 = v0;
  v25 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(*(v0 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_photoLibrary), 2u, 1);
  [v25 setShouldPrefetchCount_];
  v94 = v25;
  v98 = v24;
  [v25 setFetchLimit_];
  v26 = *(v2 + 16);
  if (v26)
  {
    v86 = v12;
    OUTLINED_FUNCTION_191();
    v95 = v27;
    v96 = v28;
    v29 = v2 + v27;
    v30 = MEMORY[0x1E69E7CC0];
    v31 = *(v6 + 72);
    *&v32 = 134218498;
    v87 = v32;
    *&v32 = 136315394;
    v85 = v32;
    v88 = v21;
    v89 = v9;
    v33 = v93;
    v97 = v31;
    do
    {
      sub_1C71592A8(v29, v21);
      if (v21[16] == 2)
      {
        sub_1C71592A8(v21, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB3648(v67, v68, v69, v30);
          v30 = v70;
        }

        v35 = *(v30 + 16);
        v34 = *(v30 + 24);
        if (v35 >= v34 >> 1)
        {
          v71 = OUTLINED_FUNCTION_15(v34);
          sub_1C6FB3648(v71, v35 + 1, 1, v30);
          v30 = v72;
        }

        *(v30 + 16) = v35 + 1;
        sub_1C7159368(v9, v30 + v95 + v35 * v31);
      }

      else
      {
        v103 = v26;
        OUTLINED_FUNCTION_40_4();
        swift_allocObject();
        v36 = v91;
        v101 = PerformanceMeasure.init(name:log:)();
        sub_1C71592A8(v21, v102);
        sub_1C71592A8(v21, v33);
        v37 = sub_1C754FEEC();
        v38 = sub_1C755117C();
        v39 = os_log_type_enabled(v37, v38);
        v100 = v30;
        if (v39)
        {
          v40 = OUTLINED_FUNCTION_20_1();
          v41 = v102;
          v42 = v40;
          v43 = OUTLINED_FUNCTION_20_1();
          v104[0] = v43;
          *v42 = v87;
          *(v42 + 4) = v98;
          *(v42 + 12) = 2048;
          v44 = *(*(v41 + 24) + 16);
          sub_1C7382AE4(v41, type metadata accessor for PromptSuggestion);
          *(v42 + 14) = v44;
          *(v42 + 22) = 2080;
          v45 = PromptSuggestion.shortDescription.getter();
          v47 = v46;
          v21 = v88;
          sub_1C7382AE4(v33, type metadata accessor for PromptSuggestion);
          sub_1C6F765A4(v45, v47, v104);
          OUTLINED_FUNCTION_24_2();

          *(v42 + 24) = v45;
          _os_log_impl(&dword_1C6F5C000, v37, v38, "Fetching %ld out of %ld assets for prompt '%s'", v42, 0x20u);
          __swift_destroy_boxed_opaque_existential_1(v43);
          v9 = v89;
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        else
        {
          sub_1C7382AE4(v102, type metadata accessor for PromptSuggestion);

          v48 = OUTLINED_FUNCTION_0_11();
          sub_1C7382AE4(v48, v49);
        }

        v50 = objc_opt_self();
        v51 = sub_1C7550B3C();
        v52 = [v50 fetchAssetsWithUUIDs:v51 options:v94];

        v26 = v103;
        v31 = v97;
        if (!v52)
        {
          __break(1u);
          return;
        }

        v53 = [v52 count];

        if (v53 >= v98)
        {
          sub_1C71592A8(v21, v90);
          v30 = v100;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = OUTLINED_FUNCTION_24_0();
            sub_1C6FB3648(v73, v74, v75, v30);
            v30 = v76;
          }

          v33 = v93;
          v64 = *(v30 + 16);
          v63 = *(v30 + 24);
          if (v64 >= v63 >> 1)
          {
            v77 = OUTLINED_FUNCTION_15_2(v63);
            sub_1C6FB3648(v77, v78, v79, v30);
            v30 = v80;
          }

          *(v30 + 16) = v64 + 1;
          sub_1C7159368(v90, v30 + v95 + v64 * v31);
        }

        else
        {
          v54 = v86;
          sub_1C71592A8(v21, v86);
          v55 = sub_1C754FEEC();
          v56 = sub_1C75511BC();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = OUTLINED_FUNCTION_23_1();
            v104[0] = OUTLINED_FUNCTION_20_1();
            *v57 = v85;
            v58 = PromptSuggestion.shortDescription.getter();
            v60 = v59;
            OUTLINED_FUNCTION_0_154();
            sub_1C7382AE4(v54, v61);
            v62 = sub_1C6F765A4(v58, v60, v104);

            *(v57 + 4) = v62;
            *(v57 + 12) = 2048;
            *(v57 + 14) = v53;
            _os_log_impl(&dword_1C6F5C000, v55, v56, "Skipping prompt %s, only %ld assets left", v57, 0x16u);
            OUTLINED_FUNCTION_56_25();
            v26 = v103;
            OUTLINED_FUNCTION_109();
          }

          else
          {

            OUTLINED_FUNCTION_0_154();
            sub_1C7382AE4(v54, v65);
          }

          v9 = v89;
          v33 = v93;
          v30 = v100;
          v31 = v97;
        }

        sub_1C6F85170();
      }

      OUTLINED_FUNCTION_0_154();
      sub_1C7382AE4(v21, v66);
      v29 += v31;
      --v26;
    }

    while (v26);
  }

  sub_1C75504FC();
  v81 = sub_1C754FEEC();
  v82 = sub_1C75511BC();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_139_5(v83, 3.852e-34);
    _os_log_impl(&dword_1C6F5C000, v81, v82, "Found %ld prompt suggestions with valid assets", v83, 0xCu);
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
  }

  sub_1C6F85170();

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C737B098()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  v3 = OUTLINED_FUNCTION_76(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230);
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v20 = (v1 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_lastContextRefreshDate);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_lastContextRefreshDate));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AF08);
  sub_1C7326A18(v20 + *(v21 + 28), v9, &unk_1EC219230);
  os_unfair_lock_unlock(v20);
  v22 = OUTLINED_FUNCTION_69_2();
  if (__swift_getEnumTagSinglePayload(v22, v23, v10) == 1)
  {
    sub_1C6FD7FC8(v9, &unk_1EC219230);
LABEL_8:
    v31 = sub_1C7550D5C();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v31);
    OUTLINED_FUNCTION_3_16();
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v1;

    sub_1C6FEB80C(0, 0, v5, &unk_1C75855B0, v32);
  }

  (*(v12 + 32))(v19, v9, v10);
  sub_1C754DF3C();
  sub_1C754DEAC();
  v25 = v24;
  v26 = *(v12 + 8);
  v26(v16, v10);
  if (v25 >= 3600.0)
  {
    v26(v19, v10);
    goto LABEL_8;
  }

  v27 = sub_1C754FEEC();
  v28 = sub_1C75511BC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v29);
    _os_log_impl(&dword_1C6F5C000, v27, v28, "Not requesting refresh. Not enough time has elapsed.", v5, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  return (v26)(v19, v10);
}

void PromptSuggestionProvider.suggestionsVerifyingValidPersonUUIDs(suggestions:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v4 = v3;
  PerformanceMeasure.init(name:log:)();
  v5 = 0;
  v56 = MEMORY[0x1E69E7CC8];
  v64 = MEMORY[0x1E69E7CC8];
  v63 = MEMORY[0x1E69E7CD0];
  v6 = *(a1 + 16);
  v58 = *MEMORY[0x1E6978F98];
  v59 = a1;
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v7 = type metadata accessor for PromptSuggestion(0);
    OUTLINED_FUNCTION_18(v7);
    v10 = *(v9 + 72);
    if (__OFADD__(v5, 1))
    {
      goto LABEL_34;
    }

    v11 = v6;
    v12 = *(a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v10 * v5 + 304);
    v60 = MEMORY[0x1E69E7CD0];
    v13 = v58;
    v14 = [v12 length];
    v15 = swift_allocObject();
    *(v15 + 16) = &v60;
    OUTLINED_FUNCTION_30();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C71CCBDC;
    *(v16 + 24) = v15;
    aBlock[4] = sub_1C71CCBD4;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C743BBE4;
    aBlock[3] = &block_descriptor_34;
    v17 = _Block_copy(aBlock);

    [v12 enumerateAttribute:v13 inRange:0 options:v14 usingBlock:{0, v17}];

    _Block_release(v17);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      goto LABEL_35;
    }

    v18 = v60;

    v6 = v11;
    if (*(v18 + 16))
    {
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v56;
      sub_1C6FC7D38();
      v56 = aBlock[0];
      v64 = aBlock[0];
      sub_1C739796C(v18);
    }

    else
    {
    }

    ++v5;
    a1 = v59;
  }

  v19 = v55;
  v20 = sub_1C754FEEC();
  v21 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v21))
  {
    v22 = OUTLINED_FUNCTION_41_0();
    *v22 = 134283521;
    swift_beginAccess();
    *(v22 + 4) = *(v63 + 16);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    OUTLINED_FUNCTION_23_3();
  }

  swift_beginAccess();
  v28 = sub_1C75504FC();
  sub_1C71CD85C(v28);
  v29 = sub_1C737F3F0();

  v30 = [v29 fetchedObjects];
  v31 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    v32 = v30;
    sub_1C6F65BE8(0, &qword_1EDD100F0);
    v33 = sub_1C7550B5C();
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  v34 = sub_1C6FB6304();
  if (v34)
  {
    v35 = v34;
    v61 = v31;
    sub_1C6F7ED9C();
    if ((v35 & 0x8000000000000000) == 0)
    {
      v54 = v29;
      v57 = v6;
      v36 = 0;
      v31 = v61;
      while (1)
      {
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_36;
        }

        if ((v33 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x1CCA5DDD0](v36, v33);
        }

        else
        {
          if (v36 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v38 = *(v33 + 8 * v36 + 32);
        }

        v39 = v38;
        v40 = sub_1C70CAC04(v38);
        if (!v41)
        {
          goto LABEL_39;
        }

        v42 = v40;
        v43 = v41;

        v61 = v31;
        v45 = *(v31 + 16);
        v44 = *(v31 + 24);
        if (v45 >= v44 >> 1)
        {
          OUTLINED_FUNCTION_15(v44);
          sub_1C6F7ED9C();
          v31 = v61;
        }

        *(v31 + 16) = v45 + 1;
        v46 = v31 + 16 * v45;
        *(v46 + 32) = v42;
        *(v46 + 40) = v43;
        ++v36;
        if (v37 == v35)
        {

          v19 = v55;
          v6 = v57;
          v29 = v54;
          goto LABEL_29;
        }
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

LABEL_29:
  v47 = sub_1C706D154(v31);

  v48 = sub_1C75504FC();
  sub_1C737553C(v48, &v64, v47, v19);
  v50 = v49;
  sub_1C75504FC();
  sub_1C75504FC();
  v51 = sub_1C754FEEC();
  v52 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v52))
  {
    v53 = OUTLINED_FUNCTION_23_1();
    *v53 = 134218240;
    *(v53 + 4) = v6;

    *(v53 + 12) = 2048;
    *(v53 + 14) = *(v50 + 16);

    _os_log_impl(&dword_1C6F5C000, v51, v47, "Prompt Suggestion People Validation —— Total Count:%ld. Validated Count:%ld", v53, 0x16u);
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  sub_1C6F85170();
}

uint64_t PromptSuggestionProvider.fetchFallbackSuggestions(maxSuggestionResults:)()
{
  OUTLINED_FUNCTION_42();
  v1[13] = v2;
  v1[14] = v0;
  v3 = sub_1C754DFFC();
  v1[15] = v3;
  OUTLINED_FUNCTION_18(v3);
  v1[16] = v4;
  v1[17] = OUTLINED_FUNCTION_77();
  v5 = sub_1C754DF6C();
  v1[18] = v5;
  OUTLINED_FUNCTION_18(v5);
  v1[19] = v6;
  v1[20] = OUTLINED_FUNCTION_77();
  v7 = sub_1C754E15C();
  v1[21] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[22] = v8;
  v1[23] = OUTLINED_FUNCTION_77();
  v9 = type metadata accessor for PromptSuggestion(0);
  v1[24] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[25] = v10;
  v1[26] = OUTLINED_FUNCTION_77();
  v11 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C737BBB0()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[14];
  v2 = *(v1 + 16);
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v3 = v2;
  v0[27] = PerformanceMeasure.init(name:log:)();
  OUTLINED_FUNCTION_86_13((v1 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_searchSuggestionsDataSource));
  OUTLINED_FUNCTION_110_10();
  OUTLINED_FUNCTION_15_3();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_1C737BD04;
  OUTLINED_FUNCTION_16_6();

  return v7();
}

uint64_t sub_1C737BD04()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 232) = v4;
  *(v2 + 240) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C737BE08()
{
  v1 = sub_1C6FB6304();
  v0[31] = v1;
  if (v1)
  {
    v2 = v1;
    result = sub_1C754F41C();
    v0[32] = result;
    if (v2 < 1)
    {
      __break(1u);
    }

    else
    {
      v4 = v0[29];
      v5 = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_validator;
      v6 = *MEMORY[0x1E6978F98];
      v0[33] = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_validator;
      v0[34] = v6;
      v7 = MEMORY[0x1E69E7CC0];
      v0[35] = 0;
      v0[36] = v7;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1CCA5DDD0](0);
        v5 = v0[33];
      }

      else
      {
        v8 = *(v4 + 32);
      }

      v0[37] = v8;
      __swift_project_boxed_opaque_existential_1((v0[14] + v5), *(v0[14] + v5 + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      OUTLINED_FUNCTION_3_16();
      v17 = swift_allocObject();
      v0[38] = v17;
      *(v17 + 16) = xmmword_1C7565670;
      *(v17 + 32) = v8;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EA0);
      v0[12] = OUTLINED_FUNCTION_50_26(v18);
      __swift_allocate_boxed_opaque_existential_0(v0 + 8);
      MEMORY[0x1CCA5B6D0](v8);
      OUTLINED_FUNCTION_110_10();
      OUTLINED_FUNCTION_15_3();
      v23 = (v19 + *v19);
      v20 = swift_task_alloc();
      v0[39] = v20;
      *v20 = v0;
      OUTLINED_FUNCTION_37_33(v20);

      return v23(v17);
    }
  }

  else
  {

    sub_1C75504FC();
    v9 = sub_1C754FEEC();
    v10 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_66(v10))
    {
      v11 = OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_69_11(v11, 3.852e-34);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
      OUTLINED_FUNCTION_37();
    }

    else
    {
    }

    sub_1C6F85170();

    OUTLINED_FUNCTION_116();
    v22 = MEMORY[0x1E69E7CC0];

    return v21(v22);
  }

  return result;
}

uint64_t sub_1C737C118()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v2 + 320) = v6;

  __swift_destroy_boxed_opaque_existential_1(v2 + 64);
  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C737C224()
{
  v1 = v0[40];
  if (v1 >> 62)
  {
    v2 = sub_1C75516BC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[37];
  if (!v2)
  {

    isEscapingClosureAtFileLocation = v0[36];
    goto LABEL_10;
  }

  v4 = v0 + 2;
  v5 = v0[34];
  sub_1C6F65BE8(0, &qword_1EDD0CD98);
  v6 = v5;
  v7 = [v3 string];
  sub_1C755068C();

  v8 = sub_1C71C75E8();
  v9 = [v3 length];
  OUTLINED_FUNCTION_30();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  OUTLINED_FUNCTION_30();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1C71CCBCC;
  *(v11 + 24) = v10;
  v0[6] = sub_1C71CD308;
  v0[7] = v11;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C743BBE4;
  v0[5] = &block_descriptor_18;
  v12 = _Block_copy(v0 + 2);
  v13 = v6;
  v14 = v8;

  [v3 enumerateAttribute:v13 inRange:0 options:v9 usingBlock:{0, v12}];

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_25;
  }

  v16 = v0[26];
  v17 = v0[23];
  v76 = v0[24];
  v19 = v0[21];
  v18 = v0[22];
  v20 = v0[20];
  v21 = v0[17];
  v74 = v0[19];
  v75 = v0[18];
  v22 = v0[15];
  v23 = v0[16];
  v24 = v14;
  sub_1C754E11C();
  v25 = sub_1C754E04C();
  v72 = v26;
  v73 = v25;
  (*(v18 + 8))(v17, v19);
  v27 = v20;
  v4 = v24;
  sub_1C754DF3C();
  *(v16 + 17) = 0;
  sub_1C754DFEC();
  v28 = sub_1C754DF8C();
  v30 = v29;
  (*(v23 + 8))(v21, v22);
  *v16 = v28;
  *(v16 + 8) = v30;
  *(v16 + 304) = v24;
  v31 = MEMORY[0x1E69E7CC0];
  *(v16 + 64) = MEMORY[0x1E69E7CC0];
  *(v16 + 24) = v31;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  *(v16 + 16) = 2;
  *(v16 + 72) = 0;
  *(v16 + 80) = 0;
  *(v16 + 88) = v31;
  *(v16 + 96) = v31;
  v32 = [v24 string];
  v33 = sub_1C755068C();
  v35 = v34;

  *(v16 + 104) = v33;
  *(v16 + 112) = v35;
  *(v16 + 120) = 0;
  *(v16 + 128) = 0;
  *(v16 + 136) = v33;
  *(v16 + 144) = v35;
  *(v16 + 288) = 0;
  *(v16 + 296) = 0;
  *(v16 + 152) = xmmword_1C756A560;
  *(v16 + 168) = 0u;
  *(v16 + 184) = 0u;
  *(v16 + 200) = 0u;
  *(v16 + 216) = 0u;
  *(v16 + 232) = 0u;
  *(v16 + 248) = v73;
  *(v16 + 256) = v72;
  *(v16 + 272) = 0;
  *(v16 + 280) = 0;
  *(v16 + 264) = 0;
  v36 = *(v76 + 108);
  (*(v74 + 32))(v16 + v36, v27, v75);
  __swift_storeEnumTagSinglePayload(v16 + v36, 0, 1, v75);
  v37 = (v16 + *(v76 + 112));
  *v37 = 0;
  v37[1] = 0;
  sub_1C75504FC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  isEscapingClosureAtFileLocation = v0[36];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_25:
    v64 = OUTLINED_FUNCTION_24_0();
    sub_1C6FB3648(v64, v65, v66, isEscapingClosureAtFileLocation);
    isEscapingClosureAtFileLocation = v67;
  }

  v40 = *(isEscapingClosureAtFileLocation + 16);
  v39 = *(isEscapingClosureAtFileLocation + 24);
  if (v40 >= v39 >> 1)
  {
    v68 = OUTLINED_FUNCTION_15_2(v39);
    sub_1C6FB3648(v68, v69, v70, isEscapingClosureAtFileLocation);
    isEscapingClosureAtFileLocation = v71;
  }

  v41 = v0[37];
  v43 = v0[25];
  v42 = v0[26];

  *(isEscapingClosureAtFileLocation + 16) = v40 + 1;
  OUTLINED_FUNCTION_191();
  sub_1C7159368(v42, isEscapingClosureAtFileLocation + v44 + *(v43 + 72) * v40);
LABEL_10:
  v45 = v0[35] + 1;
  if (v45 == v0[31])
  {

    sub_1C75504FC();
    v46 = sub_1C754FEEC();
    v47 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_66(v47))
    {
      v48 = OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_69_11(v48, 3.852e-34);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
      OUTLINED_FUNCTION_37();
    }

    else
    {
    }

    sub_1C6F85170();

    OUTLINED_FUNCTION_116();

    return v56(isEscapingClosureAtFileLocation);
  }

  else
  {
    v0[35] = v45;
    v0[36] = isEscapingClosureAtFileLocation;
    v54 = v0[29];
    if ((v54 & 0xC000000000000001) != 0)
    {
      v55 = MEMORY[0x1CCA5DDD0]();
    }

    else
    {
      v55 = *(v54 + 8 * v45 + 32);
    }

    v58 = v55;
    v0[37] = v55;
    v59 = (v0[14] + v0[33]);
    __swift_project_boxed_opaque_existential_1(v59, v59[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    OUTLINED_FUNCTION_3_16();
    v60 = swift_allocObject();
    v0[38] = v60;
    *(v60 + 16) = xmmword_1C7565670;
    *(v60 + 32) = v58;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EA0);
    v0[12] = OUTLINED_FUNCTION_50_26(v61);
    __swift_allocate_boxed_opaque_existential_0(v0 + 8);
    MEMORY[0x1CCA5B6D0](v58);
    OUTLINED_FUNCTION_110_10();
    OUTLINED_FUNCTION_15_3();
    v77 = (v62 + *v62);
    v63 = swift_task_alloc();
    v0[39] = v63;
    *v63 = v0;
    OUTLINED_FUNCTION_37_33();

    return v77(v60);
  }
}

uint64_t sub_1C737C8F4()
{
  OUTLINED_FUNCTION_123();
  sub_1C6F85170();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t PromptSuggestionProvider.fetchSuggestionContext()()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_18(v3);
  v1[4] = v4;
  v1[5] = OUTLINED_FUNCTION_81_0();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AF20);
  v1[9] = v5;
  OUTLINED_FUNCTION_76(v5);
  v1[10] = OUTLINED_FUNCTION_81_0();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C737CC60()
{
  if ([objc_opt_self() enablePromptSuggestionPlistCache])
  {
    v1 = *(v0 + 72);
    OUTLINED_FUNCTION_86_13((*(v0 + 24) + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_cache));
    *(v0 + 144) = *(v1 + 48);
    OUTLINED_FUNCTION_110_10();
    OUTLINED_FUNCTION_15_3();
    v12 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_1C737CE74;
    OUTLINED_FUNCTION_16_6();

    return v12();
  }

  else
  {
    v5 = *(v0 + 16);
    sub_1C754DF6C();
    v6 = OUTLINED_FUNCTION_69_2();
    __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
    Context = type metadata accessor for PromptSuggestion.FetchContext(0);
    *(v5 + Context[5]) = 0;
    *(v5 + Context[6]) = 0;
    v10 = v5 + Context[7];
    *v10 = 0;
    *(v10 + 8) = 1;
    OUTLINED_FUNCTION_81_19();

    OUTLINED_FUNCTION_43();

    return v11();
  }
}

uint64_t sub_1C737CE74()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_47();
  v9 = v8;
  OUTLINED_FUNCTION_40();
  *v10 = v9;
  v11 = *v1;
  OUTLINED_FUNCTION_14();
  *v12 = v11;
  *(v9 + 112) = v0;

  if (!v0)
  {
    v13 = *(v9 + 72);
    *(v9 + 120) = v5;
    *(v9 + 128) = v3;
    *(v9 + 136) = v7;
    *(v9 + 148) = *(v13 + 64);
    *(v9 + 152) = *(v13 + 80);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C737CFAC()
{
  v57 = v0;
  v4 = *(v0 + 148);
  v3 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 120);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 64);
  v10 = *(v0 + 32);
  *v7 = *(v0 + 136);
  *(v7 + v4) = v5;
  *(v7 + v3) = v6;
  sub_1C7326A18(v7, v8, &unk_1EC21AF20);
  v11 = 0;
  v12 = *v8;
  v13 = *(*v8 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  while (v13 != v11)
  {
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    OUTLINED_FUNCTION_99_14();
    v1 = *(v10 + 72);
    sub_1C71592A8(v12 + v2 + v1 * v11, v15);
    if (*(v9 + 56) == 1)
    {
      sub_1C7159368(*(v0 + 64), *(v0 + 56));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = &v56;
        OUTLINED_FUNCTION_99();
        sub_1C716D568();
        v14 = v56;
      }

      v20 = v14[2];
      v19 = v14[3];
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        OUTLINED_FUNCTION_15(v19);
        v8 = &v56;
        v24 = v23;
        v54 = v25;
        sub_1C716D568();
        v21 = v24;
        v20 = v54;
        v14 = v56;
      }

      ++v11;
      v22 = *(v0 + 56);
      v14[2] = v21;
      sub_1C7159368(v22, v14 + v2 + v20 * v1);
    }

    else
    {
      OUTLINED_FUNCTION_0_154();
      sub_1C7382AE4(v16, v17);
      ++v11;
    }
  }

  v26 = *(v0 + 88);
  v27 = *(v0 + 72);
  v1 = *(v0 + 48);

  sub_1C6FD7FC8(v26 + *(v27 + 48), &unk_1EC219230);
  v28 = 0;
  v29 = v14[2];
  v8 = MEMORY[0x1E69E7CC0];
  while (v29 != v28)
  {
    if (v28 >= v14[2])
    {
      goto LABEL_34;
    }

    v30 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v31 = *(v10 + 72);
    sub_1C71592A8(v14 + v30 + v31 * v28, *(v0 + 48));
    if (*(v1 + 17) <= 1u)
    {
      sub_1C7159368(*(v0 + 48), *(v0 + 40));
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v56 = v8;
      if ((v34 & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C716D568();
        v8 = v56;
      }

      v12 = v8[2];
      v35 = v8[3];
      v36 = v12 + 1;
      if (v12 >= v35 >> 1)
      {
        OUTLINED_FUNCTION_15(v35);
        v55 = v38;
        sub_1C716D568();
        v36 = v55;
        v8 = v56;
      }

      ++v28;
      v37 = *(v0 + 40);
      v8[2] = v36;
      sub_1C7159368(v37, v8 + v30 + v12 * v31);
    }

    else
    {
      OUTLINED_FUNCTION_0_154();
      sub_1C7382AE4(v32, v33);
      ++v28;
    }
  }

  v8 = sub_1C70343B8(3, v8);
  v12 = v39;
  v1 = v40;
  v10 = v41;
  if ((v41 & 1) == 0)
  {
LABEL_22:
    sub_1C739CAA4(v8, v12, v1, v10);
    v43 = v42;
    goto LABEL_29;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v44 = swift_dynamicCastClass();
  if (!v44)
  {
    swift_unknownObjectRelease();
    v44 = MEMORY[0x1E69E7CC0];
  }

  v45 = *(v44 + 16);

  if (__OFSUB__(v10 >> 1, v1))
  {
    goto LABEL_35;
  }

  if (v45 != (v10 >> 1) - v1)
  {
LABEL_36:
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v43 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v43)
  {
    goto LABEL_30;
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_29:
  swift_unknownObjectRelease();
LABEL_30:
  v46 = *(v0 + 144);
  v47 = *(v0 + 96);
  v49 = *(v0 + 72);
  v48 = *(v0 + 80);
  v50 = v14[2];

  sub_1C7326A18(v47, v48, &unk_1EC21AF20);

  v51 = *(v49 + 48);
  PromptSuggestionProvider.suggestionContext(from:totalCount:lastUpdateDate:processingCode:)(v43, v50, v47 + v46, *(v48 + *(v49 + 64)), 0);

  sub_1C6FD7FC8(v47, &unk_1EC21AF20);
  sub_1C6FD7FC8(v48 + v51, &unk_1EC219230);
  OUTLINED_FUNCTION_81_19();

  OUTLINED_FUNCTION_43();

  return v52();
}

uint64_t sub_1C737D3F0()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_81_19();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t PromptSuggestionProvider.reportSuggestionEngagement(suggestion:state:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 16) = v4;
  *(v1 + 24) = v0;
  v5 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_76(v5);
  *(v1 + 32) = OUTLINED_FUNCTION_77();
  *(v1 + 56) = *v3;
  v6 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C737D50C()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  sub_1C71592A8(*(v0 + 16), v2);
  *(v2 + 17) = v1;
  if (*(v2 + 16) == 2)
  {
    OUTLINED_FUNCTION_86_13((*(v0 + 24) + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_cache));
    OUTLINED_FUNCTION_15_3();
    v11 = (v3 + *v3);
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    *v4 = v0;
    v4[1] = sub_1C737D6E4;
    OUTLINED_FUNCTION_16_6();

    return v11();
  }

  else
  {
    v6 = *(v0 + 32);
    v7 = *(*(v0 + 24) + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_photoLibrary);
    type metadata accessor for PromptSuggestionPersister();
    OUTLINED_FUNCTION_40_4();
    swift_allocObject();
    PromptSuggestionPersister.init(photoLibrary:)(v7);
    v8 = OUTLINED_FUNCTION_24_2();
    PromptSuggestionPersister.updatePromptSuggestionInDB(_:)(v8);
    OUTLINED_FUNCTION_0_154();
    sub_1C7382AE4(v6, v9);

    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_1C737D6E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C737D7E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_0_154();
  sub_1C7382AE4(v0, v1);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C737D848()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_0_154();
  sub_1C7382AE4(v0, v1);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C737D908(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PromptSuggestion(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a2;
  if (!*(v7 + 16))
  {
    return 1;
  }

  v8 = sub_1C6F78124(*a1, a1[1]);
  if ((v9 & 1) == 0 || !*(*(*(v7 + 56) + 8 * v8) + 16))
  {
    return 1;
  }

  sub_1C75504FC();
  sub_1C72B8828();
  if (v10)
  {

    return 1;
  }

  sub_1C71592A8(a1, v6);
  sub_1C75504FC();
  sub_1C75504FC();
  v12 = sub_1C754FEEC();
  v13 = sub_1C75511BC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v14 = 136381187;
    v15 = PromptSuggestion.shortDescription.getter();
    v17 = v16;
    sub_1C7382AE4(v6, type metadata accessor for PromptSuggestion);
    v18 = sub_1C6F765A4(v15, v17, &v29);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2081;
    v19 = sub_1C7550F9C();
    v21 = v20;

    v22 = sub_1C6F765A4(v19, v21, &v29);

    *(v14 + 14) = v22;
    *(v14 + 22) = 2081;
    v23 = sub_1C7550F9C();
    v25 = sub_1C6F765A4(v23, v24, &v29);

    *(v14 + 24) = v25;
    _os_log_impl(&dword_1C6F5C000, v12, v13, "Prompt Suggestion People Validation —— Dropping suggestion %{private}s because valid personUUIDs not found. Suggestion personUUIDs:%{private}s validPersonUUIDs:%{private}s", v14, 0x20u);
    v26 = v28;
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v26, -1, -1);
    MEMORY[0x1CCA5F8E0](v14, -1, -1);
  }

  else
  {

    sub_1C7382AE4(v6, type metadata accessor for PromptSuggestion);
  }

  return 0;
}

uint64_t sub_1C737DBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for PhotoAnalysisPhotoLibraryService(0);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C737DC7C, 0, 0);
}

uint64_t sub_1C737DC7C()
{
  v1 = v0[2];
  v2 = (v1 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_lastContextRefreshDate);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_lastContextRefreshDate));
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AF08) + 28);
  sub_1C6FD7FC8(v2 + v3, &unk_1EC219230);
  sub_1C754DF3C();
  v4 = sub_1C754DF6C();
  __swift_storeEnumTagSinglePayload(v2 + v3, 0, 1, v4);
  os_unfair_lock_unlock(v2);
  v5 = [*(v1 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_photoLibrary) photoAnalysisClient];
  v0[4] = v5;
  if (v5)
  {
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x1E69BE630]);
    v8 = v6;
    v9 = [v7 initWithServiceProvider_];
    if (qword_1EC213F98 != -1)
    {
      swift_once();
    }

    v10 = v0[3];
    v11 = sub_1C754FF1C();
    v12 = __swift_project_value_buffer(v11, qword_1EC219F58);
    (*(*(v11 - 8) + 16))(v10, v12, v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180);
    v14 = (v10 + *(v13 + 28));
    v15 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v16 = [v15 processName];

    v17 = sub_1C755068C();
    v19 = v18;

    *v14 = v17;
    v14[1] = v19;
    *(v10 + *(v13 + 32)) = v9;
    v20 = swift_task_alloc();
    v0[5] = v20;
    *v20 = v0;
    v20[1] = sub_1C737DFB8;

    return sub_1C729A970(0xD000000000000021, 0x80000001C75A86F0, &unk_1C757E698, 0, 0, 0);
  }

  else
  {
    v22 = sub_1C754FEEC();
    v23 = sub_1C755119C();
    if (OUTLINED_FUNCTION_21_0(v23))
    {
      v24 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v24);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    OUTLINED_FUNCTION_43();

    return v30();
  }
}

uint64_t sub_1C737DFB8(char a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 48) = v1;

  if (!v1)
  {
    *(v5 + 56) = a1 & 1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C737E0D0()
{
  OUTLINED_FUNCTION_123();
  v2 = *(v1 + 56);
  v3 = sub_1C754FEEC();
  if (v2 == 1)
  {
    sub_1C75511BC();
    OUTLINED_FUNCTION_49_25();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1C755119C();
    OUTLINED_FUNCTION_49_25();
    v9 = os_log_type_enabled(v3, v8);
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  v10 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_37_0(v10);
  OUTLINED_FUNCTION_112_7();
  _os_log_impl(v11, v12, v13, v14, v0, 2u);
  v15 = v7;
  OUTLINED_FUNCTION_23_3();
  v7 = v3;
  v3 = v15;
LABEL_6:

  OUTLINED_FUNCTION_46_30();
  sub_1C7382AE4(v6, v16);

  OUTLINED_FUNCTION_43();

  return v17();
}

uint64_t sub_1C737E1F4()
{
  v1 = v0[6];
  v2 = v1;
  v3 = sub_1C754FEEC();
  v4 = sub_1C755119C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  if (v5)
  {
    v9 = OUTLINED_FUNCTION_41_0();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_141_8(&dword_1C6F5C000, v3, v4, "Error requesting context refresh. %@");
    sub_1C6FD7FC8(v10, &qword_1EC215190);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_10_1();
    v13 = v3;
  }

  else
  {
    v13 = v0[4];
    v8 = v3;
  }

  OUTLINED_FUNCTION_46_30();
  sub_1C7382AE4(v7, v14);

  OUTLINED_FUNCTION_43();

  return v15();
}

uint64_t PromptSuggestionProvider.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(&v1[v0]);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_cache);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_searchSuggestionsDataSource);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_validator);

  v3 = v0 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_lastContextRefreshDate;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AF08);
  sub_1C6FD7FC8(v3 + *(v4 + 28), &unk_1EC219230);
  return v0;
}

uint64_t PromptSuggestionProvider.__deallocating_deinit()
{
  PromptSuggestionProvider.deinit();

  return swift_deallocClassInstance();
}

char *sub_1C737E4A0(uint64_t a1, void *a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedPeopleFetchRequest] = 0;
  *&v3[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedAssetFetchRequest] = 0;
  v7 = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observers;
  *&v3[v7] = [objc_opt_self() weakObjectsHashTable];
  *&v3[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_suggestionsAssetPeopleUUIDMap] = MEMORY[0x1E69E7CC8];
  *&v3[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_suggestions] = a1;
  *&v3[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_photoLibrary] = a2;
  v8 = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger;
  v9 = sub_1C754FF1C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v3[v8], a3, v9);
  v14.receiver = v3;
  v14.super_class = type metadata accessor for PromptSuggestionValidationObservation(0);
  v11 = a2;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  [*&v12[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_photoLibrary] registerChangeObserver_];

  (*(v10 + 8))(a3, v9);
  return v12;
}

uint64_t sub_1C737E618()
{
  v1 = v0;
  v2 = type metadata accessor for PromptSuggestion(0) - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_suggestions);
  v7 = *(v6 + 16);
  if (v7)
  {
    v17[0] = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_suggestions;
    v17[1] = v6;
    v8 = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_suggestionsAssetPeopleUUIDMap;
    v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v18 = *(v3 + 72);
    sub_1C75504FC();
    v10 = MEMORY[0x1E69E7CD0];
    do
    {
      sub_1C71592A8(v9, v5);
      static StoryGenerationUtilities.queryTokenPersonUUIDs(from:)();
      v12 = v11;
      v13 = sub_1C75504FC();
      v14 = sub_1C706D154(v13);
      v15 = sub_1C706D154(v12);
      v20 = v14;
      v21 = v15;
      v22 = v10;
      v23 = v10;
      v24 = 1;
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v19 = *(v1 + v8);
      sub_1C6FC97FC();
      *(v1 + v8) = v19;
      swift_endAccess();
      sub_1C7382AE4(v5, type metadata accessor for PromptSuggestion);
      v9 += v18;
      --v7;
    }

    while (v7);
  }

  sub_1C75504FC();
  sub_1C737E7FC();
}

void sub_1C737E7FC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for PromptSuggestion(0);
  v5 = OUTLINED_FUNCTION_18(v4);
  v153 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  v10 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v155 = (v14 - v15);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_130();
  v151 = v17;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v148[-v19];
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_130();
  v152 = v22;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_130();
  v154 = v24;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_130();
  v156 = v26;
  OUTLINED_FUNCTION_117();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v148[-v29];
  v31 = *(v12 + 16);
  v157 = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger;
  v158 = v31;
  v159 = v12 + 16;
  v31(&v148[-v29], &v1[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger], v10, v28);
  sub_1C75504FC();
  v32 = sub_1C754FEEC();
  v33 = sub_1C75511BC();
  v34 = os_log_type_enabled(v32, v33);
  v163 = v1;
  if (v34)
  {
    v35 = OUTLINED_FUNCTION_41_0();
    *v35 = 134217984;
    *(v35 + 4) = *(v3 + 16);

    _os_log_impl(&dword_1C6F5C000, v32, v33, "Refreshing people and asset observation in response to updated suggestions. Count:%ld", v35, 0xCu);
    v1 = v163;
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v160 = *(v12 + 8);
  v161 = v12 + 8;
  v160(v30, v10);
  v36 = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observers;
  v37 = [*&v1[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observers] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AFD0);
  OUTLINED_FUNCTION_23_14();
  sub_1C7550B5C();

  v38 = sub_1C6FB6304();

  v162 = v10;
  if (v38 && (v39 = *(v3 + 16)) != 0)
  {
    v150 = v20;
    v40 = v163;
    v158(v156, &v163[v157], v10);
    v41 = v40;
    sub_1C75504FC();
    v42 = v41;
    v43 = sub_1C754FEEC();
    v44 = sub_1C75511BC();
    v45 = OUTLINED_FUNCTION_128(v44);
    v155 = v42;
    if (v45)
    {
      v46 = OUTLINED_FUNCTION_23_1();
      v149 = v44;
      v47 = v46;
      *v46 = 134218240;
      v48 = [*&v40[v36] allObjects];
      sub_1C7550B5C();

      v49 = sub_1C6FB6304();

      *(v47 + 1) = v49;
      v10 = v162;

      *(v47 + 6) = 2048;
      *(v47 + 14) = v39;

      _os_log_impl(&dword_1C6F5C000, v43, v149, "Observers and suggestions are not empty. Adding change observation. Observers:%ld | suggestions count:%ld", v47, 0x16u);
      OUTLINED_FUNCTION_109();
    }

    else
    {

      v43 = v42;
    }

    v160(v156, v10);
    v164 = MEMORY[0x1E69E7CC0];
    v70 = OUTLINED_FUNCTION_18_54();
    sub_1C716EC6C(v70, v71, v72);
    v73 = v164;
    OUTLINED_FUNCTION_191();
    v75 = v3 + v74;
    v77 = *(v76 + 72);
    do
    {
      sub_1C71592A8(v75, v9);
      v78 = *(v9 + 88);
      v79 = *(v9 + 24);
      sub_1C75504FC();
      sub_1C75504FC();
      OUTLINED_FUNCTION_0_154();
      sub_1C7382AE4(v9, v80);
      v164 = v73;
      v82 = *(v73 + 16);
      v81 = *(v73 + 24);
      if (v82 >= v81 >> 1)
      {
        v84 = OUTLINED_FUNCTION_15(v81);
        sub_1C716EC6C(v84, v82 + 1, 1);
        v73 = v164;
      }

      *(v73 + 16) = v82 + 1;
      v83 = v73 + 16 * v82;
      *(v83 + 32) = v78;
      *(v83 + 40) = v79;
      v75 += v77;
      --v39;
    }

    while (v39);
    v85 = 0;
    v86 = MEMORY[0x1E69E7CC0];
    v87 = 32;
    while ((v82 + 1) != v85)
    {
      if (v85 >= *(v73 + 16))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        return;
      }

      v88 = *(v73 + v87);
      v89 = *(v88 + 16);
      v90 = *(v86 + 16);
      if (__OFADD__(v90, v89))
      {
        goto LABEL_64;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_native() || v90 + v89 > *(v86 + 24) >> 1)
      {
        sub_1C6FB3514();
        v86 = v91;
      }

      if (*(v88 + 16))
      {
        if ((*(v86 + 24) >> 1) - *(v86 + 16) < v89)
        {
          goto LABEL_69;
        }

        swift_arrayInitWithCopy();

        if (v89)
        {
          v92 = *(v86 + 16);
          v93 = __OFADD__(v92, v89);
          v94 = v92 + v89;
          if (v93)
          {
            goto LABEL_71;
          }

          *(v86 + 16) = v94;
        }
      }

      else
      {

        if (v89)
        {
          goto LABEL_65;
        }
      }

      v87 += 16;
      ++v85;
    }

    static StoryGenerationUtilities.queryTokenPersonUUIDs(from:)();
    v96 = v95;

    if (*(v96 + 16))
    {
      v97 = v155;
      v98 = sub_1C737F3F0();
      v99 = *(&v97->isa + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedPeopleFetchRequest);
      *(&v97->isa + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedPeopleFetchRequest) = v98;
      v100 = v98;

      OUTLINED_FUNCTION_96_14();
      OUTLINED_FUNCTION_127_9();
      v101();
      sub_1C75504FC();
      v102 = sub_1C754FEEC();
      v103 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v103))
      {
        v104 = OUTLINED_FUNCTION_41_0();
        *v104 = 134217984;
        v105 = *(v96 + 16);

        *(v104 + 4) = v105;

        _os_log_impl(&dword_1C6F5C000, v102, v103, "Added people change tracking for uuid count:%ld", v104, 0xCu);
        v99 = v162;
        OUTLINED_FUNCTION_109();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v160(v154, v99);
    }

    else
    {

      OUTLINED_FUNCTION_96_14();
      v106 = v152;
      OUTLINED_FUNCTION_127_9();
      v107();
      v108 = sub_1C754FEEC();
      v109 = sub_1C75511BC();
      v110 = OUTLINED_FUNCTION_128(v109);
      v97 = v155;
      if (v110)
      {
        v111 = OUTLINED_FUNCTION_127();
        *v111 = 0;
        _os_log_impl(&dword_1C6F5C000, v108, v109, "Removed people change tracking", v111, 2u);
        v85 = v162;
        OUTLINED_FUNCTION_109();
      }

      v160(v106, v85);
      v112 = *(&v97->isa + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedPeopleFetchRequest);
      *(&v97->isa + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedPeopleFetchRequest) = 0;
    }

    v113 = *(&v97->isa + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_photoLibrary);
    v156 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(v113, 2u, 1);

    v114 = 0;
    v115 = v82 + 1;
    v116 = MEMORY[0x1E69E7CC0];
    v117 = 40;
    while (v115 != v114)
    {
      if (v114 >= *(v73 + 16))
      {
        goto LABEL_66;
      }

      v118 = *(v73 + v117);
      v119 = *(v118 + 16);
      v120 = *(v116 + 16);
      if (__OFADD__(v120, v119))
      {
        goto LABEL_67;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_native() || v120 + v119 > *(v116 + 24) >> 1)
      {
        sub_1C6FB1814();
        v116 = v121;
      }

      if (*(v118 + 16))
      {
        if ((*(v116 + 24) >> 1) - *(v116 + 16) < v119)
        {
          goto LABEL_70;
        }

        swift_arrayInitWithCopy();

        if (v119)
        {
          v122 = *(v116 + 16);
          v93 = __OFADD__(v122, v119);
          v123 = v122 + v119;
          if (v93)
          {
            goto LABEL_72;
          }

          *(v116 + 16) = v123;
        }
      }

      else
      {

        if (v119)
        {
          goto LABEL_68;
        }
      }

      v117 += 16;
      ++v114;
    }

    if (*(v116 + 16))
    {
      v124 = objc_opt_self();
      v125 = v156;
      v126 = v156;
      v127 = sub_1C6FCA158(v116, v125, v124);

      v128 = *(&v155->isa + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedAssetFetchRequest);
      *(&v155->isa + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedAssetFetchRequest) = v127;

      OUTLINED_FUNCTION_96_14();
      v129 = v150;
      OUTLINED_FUNCTION_127_9();
      v130();
      sub_1C75504FC();
      v131 = sub_1C754FEEC();
      v132 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_66(v132))
      {
        v133 = OUTLINED_FUNCTION_41_0();
        *v133 = 134217984;
        v134 = *(v116 + 16);

        *(v133 + 4) = v134;

        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v135, v136, v137, v138, v133, 0xCu);
        v127 = v162;
        OUTLINED_FUNCTION_109();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v68 = v129;
      v69 = v127;
    }

    else
    {

      v139 = v162;
      v140 = v151;
      v158(v151, &v163[v157], v162);
      v141 = sub_1C754FEEC();
      v142 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_66(v142))
      {
        v143 = OUTLINED_FUNCTION_127();
        *v143 = 0;
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v144, v145, v146, v147, v143, 2u);
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      v68 = v140;
      v69 = v139;
    }
  }

  else
  {
    v50 = v163;
    v51 = *&v163[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedPeopleFetchRequest];
    *&v163[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedPeopleFetchRequest] = 0;

    v52 = *&v50[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedAssetFetchRequest];
    *&v50[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedAssetFetchRequest] = 0;

    v53 = v155;
    OUTLINED_FUNCTION_127_9();
    v54();
    v55 = v50;
    sub_1C75504FC();
    v56 = v55;
    v57 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_49_25();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = OUTLINED_FUNCTION_23_1();
      v60 = v50;
      v61 = v59;
      *v59 = 134218240;
      v62 = [*&v60[v36] allObjects];
      sub_1C7550B5C();

      v63 = sub_1C6FB6304();

      *(v61 + 1) = v63;

      *(v61 + 6) = 2048;
      *(v61 + 14) = *(v3 + 16);

      OUTLINED_FUNCTION_112_7();
      _os_log_impl(v64, v65, v66, v67, v61, 0x16u);
      OUTLINED_FUNCTION_109();
    }

    else
    {

      v57 = v56;
    }

    v68 = v53;
    v69 = v162;
  }

  v160(v68, v69);
  OUTLINED_FUNCTION_25_0();
}

id sub_1C737F3F0()
{
  v1 = objc_autoreleasePoolPush();
  v2 = [*(v0 + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_photoLibrary) librarySpecificFetchOptions];
  [v2 setPersonContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C755BAB0;
  *(v3 + 32) = sub_1C755068C();
  *(v3 + 40) = v4;
  sub_1C6FCA0EC(v3, v2);
  v5 = objc_opt_self();
  v6 = sub_1C7550B3C();
  v7 = [v5 fetchPersonsWithLocalIdentifiers:v6 options:v2];

  objc_autoreleasePoolPop(v1);
  return v7;
}

uint64_t sub_1C737F500(uint64_t a1)
{
  v3 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_suggestions) = a1;

  sub_1C75504FC();
  sub_1C737E618();
  (*(v5 + 16))(v9, v1 + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger, v3);
  sub_1C75504FC();
  v10 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_49_25();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_139_5(v12, 3.852e-34);
    OUTLINED_FUNCTION_112_7();
    OUTLINED_FUNCTION_141_8(v13, v14, v15, v16);
    OUTLINED_FUNCTION_10_1();
  }

  else
  {
  }

  v17 = OUTLINED_FUNCTION_0_11();
  return v18(v17);
}

uint64_t sub_1C737F668()
{
  v1 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v7 = v6 - v5;
  v8 = [*(v0 + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observers) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AFD0);
  v9 = sub_1C7550B5C();

  (*(v3 + 16))(v7, v0 + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger, v1);
  sub_1C75504FC();
  v10 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_49_25();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_41_0();
    *v12 = 134217984;
    *(v12 + 4) = sub_1C6FB6304();

    OUTLINED_FUNCTION_112_7();
    OUTLINED_FUNCTION_141_8(v13, v14, v15, v16);
    OUTLINED_FUNCTION_10_1();
  }

  else
  {
  }

  (*(v3 + 8))(v7, v1);
  result = sub_1C6FB6304();
  if (!result)
  {
  }

  v18 = result;
  if (result >= 1)
  {
    for (i = 0; i != v18; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v20 = OUTLINED_FUNCTION_0_11();
        v21 = MEMORY[0x1CCA5DDD0](v20);
      }

      else
      {
        v21 = *(v9 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v21 suggestionsDidGetInvalidated];
      swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

void sub_1C737F884()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = sub_1C755001C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  v9 = sub_1C755006C();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v15 = v14 - v13;
  sub_1C6F65BE8(0, &unk_1EDD0FA90);
  v16 = sub_1C755126C();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_30();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v1;
  v21[4] = sub_1C738296C;
  v21[5] = v18;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1C6FD8F68;
  v21[3] = &block_descriptor_59;
  v19 = _Block_copy(v21);
  v20 = v1;

  sub_1C755003C();
  v21[0] = MEMORY[0x1E69E7CC0];
  sub_1C7382974();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AFC0);
  sub_1C73829CC();
  sub_1C75515FC();
  MEMORY[0x1CCA5D7B0](0, v15, v8, v19);
  _Block_release(v19);

  (*(v4 + 8))(v8, v2);
  (*(v11 + 8))(v15, v9);
  OUTLINED_FUNCTION_25_0();
}

void sub_1C737FB04(uint64_t a1, void *a2)
{
  v152 = a2;
  v2 = sub_1C754FF1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v136 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v151 = &v136 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v136 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  v16 = *(Strong + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedPeopleFetchRequest);
  v150 = v3;
  v145 = v5;
  v146 = v8;
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = sub_1C6F65BE8(0, &qword_1EDD100F0);
  v18 = v16;
  v147 = sub_1C755141C();
  if (!v147)
  {

LABEL_16:
    v38 = MEMORY[0x1E69E7CD0];
    goto LABEL_38;
  }

  v19 = *(v3 + 16);
  v148 = v15;
  v142 = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger;
  v143 = v19;
  v144 = v3 + 16;
  v19(v13, &v15[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger], v2);
  v20 = sub_1C754FEEC();
  v21 = sub_1C75511BC();
  v22 = os_log_type_enabled(v20, v21);
  v149 = v2;
  v140 = v18;
  if (!v22)
  {

    v39 = *(v3 + 8);
    v40 = v13;
    v41 = v2;
LABEL_20:
    v141 = v39;
    (v39)(v40, v41);
    v49 = [v147 removedObjects];
    v50 = sub_1C7550B5C();

    v51 = sub_1C6FB6304();
    v52 = v151;
    if (v51)
    {
      v53 = v51;
      v155 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C();
      if (v53 < 0)
      {
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v54 = 0;
      v55 = v155;
      v153 = (v50 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v56 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          break;
        }

        if ((v50 & 0xC000000000000001) != 0)
        {
          v57 = MEMORY[0x1CCA5DDD0](v54, v50);
        }

        else
        {
          if (v54 >= v153[2].isa)
          {
            goto LABEL_82;
          }

          v57 = *(v50 + 8 * v54 + 32);
        }

        v58 = v57;
        v59 = sub_1C70CAC04(v57);
        if (!v60)
        {
          goto LABEL_88;
        }

        v61 = v59;
        v62 = v60;

        v155 = v55;
        v63 = *(v55 + 16);
        if (v63 >= *(v55 + 24) >> 1)
        {
          sub_1C6F7ED9C();
          v55 = v155;
        }

        *(v55 + 16) = v63 + 1;
        v64 = v55 + 16 * v63;
        *(v64 + 32) = v61;
        *(v64 + 40) = v62;
        v54 = (v54 + 1);
        if (v56 == v53)
        {

          v52 = v151;
          v18 = v140;
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v55 = MEMORY[0x1E69E7CC0];
LABEL_34:
    v38 = sub_1C706D154(v55);
    v15 = v148;
    v2 = v149;
    v143(v52, &v148[v142], v149);
    v65 = sub_1C754FEEC();
    v66 = sub_1C75511BC();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v155 = v68;
      *v67 = 136380675;
      sub_1C75504FC();
      v69 = v38;
      v70 = sub_1C7550F9C();
      v72 = v71;

      v73 = sub_1C6F765A4(v70, v72, &v155);

      *(v67 + 4) = v73;
      v38 = v69;
      _os_log_impl(&dword_1C6F5C000, v65, v66, "Photo Library Did Change for observed people. Removed PHPersons:%{private}s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x1CCA5F8E0](v68, -1, -1);
      v74 = v67;
      v15 = v148;
      v2 = v149;
      MEMORY[0x1CCA5F8E0](v74, -1, -1);

      v75 = v151;
    }

    else
    {

      v75 = v52;
    }

    (v141)(v75, v2);
LABEL_38:
    v76 = *&v15[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedAssetFetchRequest];
    if (v76)
    {
      sub_1C6F65BE8(0, &qword_1EDD0FA70);
      v77 = v76;
      v152 = sub_1C755141C();
      if (v152)
      {
        v78 = v150;
        v79 = *(v150 + 16);
        v148 = v15;
        v142 = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger;
        v143 = v79;
        v80 = v146;
        v144 = v150 + 16;
        v79(v146, &v15[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger], v2);
        v81 = sub_1C754FEEC();
        v82 = sub_1C75511BC();
        v83 = os_log_type_enabled(v81, v82);
        v149 = v2;
        v151 = v38;
        v147 = v77;
        if (v83)
        {
          LODWORD(v140) = v82;
          v153 = v81;
          v84 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v155 = v139;
          v141 = v84;
          *v84 = 136315138;
          v85 = [v152 changedObjects];
          v86 = sub_1C7550B5C();

          v87 = sub_1C6FB6304();
          if (v87)
          {
            v88 = v87;
            v154 = MEMORY[0x1E69E7CC0];
            sub_1C716C9F0(0, v87 & ~(v87 >> 63), 0);
            if (v88 < 0)
            {
              goto LABEL_87;
            }

            v89 = 0;
            v90 = v154;
            do
            {
              if ((v86 & 0xC000000000000001) != 0)
              {
                v91 = MEMORY[0x1CCA5DDD0](v89, v86);
              }

              else
              {
                v91 = *(v86 + 8 * v89 + 32);
              }

              v92 = v91;
              v93 = sub_1C70CAC04(v91);
              v95 = v94;

              v154 = v90;
              v97 = *(v90 + 16);
              v96 = *(v90 + 24);
              if (v97 >= v96 >> 1)
              {
                sub_1C716C9F0(v96 > 1, v97 + 1, 1);
                v90 = v154;
              }

              ++v89;
              *(v90 + 16) = v97 + 1;
              v98 = v90 + 16 * v97;
              *(v98 + 32) = v93;
              *(v98 + 40) = v95;
            }

            while (v88 != v89);
          }

          else
          {

            v90 = MEMORY[0x1E69E7CC0];
          }

          v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620);
          v102 = MEMORY[0x1CCA5D090](v90, v101);
          v104 = v103;

          v105 = sub_1C6F765A4(v102, v104, &v155);

          v106 = v141;
          *(v141 + 1) = v105;
          v107 = v153;
          _os_log_impl(&dword_1C6F5C000, v153, v140, "Asset changes do exist. Changed:%s", v106, 0xCu);
          v108 = v139;
          __swift_destroy_boxed_opaque_existential_1(v139);
          MEMORY[0x1CCA5F8E0](v108, -1, -1);
          MEMORY[0x1CCA5F8E0](v106, -1, -1);

          v100 = *(v150 + 8);
          v100(v146, v149);
        }

        else
        {

          v100 = *(v78 + 8);
          v100(v80, v2);
        }

        v109 = [v152 removedObjects];
        v110 = sub_1C7550B5C();

        v111 = sub_1C6FB6304();
        v146 = v100;
        if (v111)
        {
          v112 = v111;
          v155 = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C();
          if (v112 < 0)
          {
LABEL_85:
            __break(1u);
            goto LABEL_86;
          }

          v113 = 0;
          v114 = v155;
          v153 = (v110 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            v115 = v113 + 1;
            if (__OFADD__(v113, 1))
            {
              goto LABEL_81;
            }

            if ((v110 & 0xC000000000000001) != 0)
            {
              v116 = MEMORY[0x1CCA5DDD0](v113, v110);
            }

            else
            {
              if (v113 >= v153[2].isa)
              {
                goto LABEL_83;
              }

              v116 = *(v110 + 8 * v113 + 32);
            }

            v117 = v116;
            v118 = sub_1C70CAC04(v116);
            if (!v119)
            {
              goto LABEL_89;
            }

            v120 = v118;
            v121 = v119;

            v155 = v114;
            v122 = *(v114 + 16);
            if (v122 >= *(v114 + 24) >> 1)
            {
              sub_1C6F7ED9C();
              v114 = v155;
            }

            *(v114 + 16) = v122 + 1;
            v123 = v114 + 16 * v122;
            *(v123 + 32) = v120;
            *(v123 + 40) = v121;
            v113 = (v113 + 1);
            if (v115 == v112)
            {

              goto LABEL_70;
            }
          }
        }

        v114 = MEMORY[0x1E69E7CC0];
LABEL_70:
        v99 = sub_1C706D154(v114);
        v15 = v148;
        v124 = v149;
        v125 = v145;
        v143(v145, &v148[v142], v149);
        v126 = sub_1C754FEEC();
        v127 = sub_1C75511BC();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v155 = v129;
          *v128 = 136380675;
          sub_1C75504FC();
          v130 = sub_1C7550F9C();
          v132 = v131;

          v133 = sub_1C6F765A4(v130, v132, &v155);

          *(v128 + 4) = v133;
          _os_log_impl(&dword_1C6F5C000, v126, v127, "Photo Library Did Change for observed assetUUIDs. RemovedAssetUUIDs:%{private}s", v128, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v129);
          MEMORY[0x1CCA5F8E0](v129, -1, -1);
          v15 = v148;
          MEMORY[0x1CCA5F8E0](v128, -1, -1);
        }

        else
        {
        }

        v146(v125, v124);
        v38 = v151;
LABEL_74:
        if (*(v38 + 16) || *(v99 + 16))
        {
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C738087C();
          v135 = v134;

          if (v135)
          {
            sub_1C737F668();
          }
        }

        return;
      }
    }

    v99 = MEMORY[0x1E69E7CD0];
    goto LABEL_74;
  }

  LODWORD(v141) = v21;
  v23 = swift_slowAlloc();
  v139 = swift_slowAlloc();
  v155 = v139;
  v153 = v23;
  LODWORD(v23->isa) = 136315138;
  v24 = [v147 changedObjects];
  v25 = sub_1C7550B5C();

  v26 = sub_1C6FB6304();
  if (!v26)
  {

    v29 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620);
    v43 = MEMORY[0x1CCA5D090](v29, v42);
    v45 = v44;

    v46 = sub_1C6F765A4(v43, v45, &v155);

    v47 = v153;
    *(&v153->isa + 4) = v46;
    _os_log_impl(&dword_1C6F5C000, v20, v141, "People changes do exist. Changed:%s", v47, 0xCu);
    v48 = v139;
    __swift_destroy_boxed_opaque_existential_1(v139);
    MEMORY[0x1CCA5F8E0](v48, -1, -1);
    MEMORY[0x1CCA5F8E0](v47, -1, -1);

    v39 = *(v3 + 8);
    v40 = v13;
    v41 = v149;
    goto LABEL_20;
  }

  v27 = v26;
  v137 = v20;
  v138 = v17;
  v154 = MEMORY[0x1E69E7CC0];
  sub_1C716C9F0(0, v26 & ~(v26 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    v29 = v154;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1CCA5DDD0](v28, v25);
      }

      else
      {
        v30 = *(v25 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = sub_1C70CAC04(v30);
      v34 = v33;

      v154 = v29;
      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1C716C9F0(v35 > 1, v36 + 1, 1);
        v29 = v154;
      }

      ++v28;
      *(v29 + 16) = v36 + 1;
      v37 = v29 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
    }

    while (v27 != v28);

    v3 = v150;
    v18 = v140;
    v20 = v137;
    goto LABEL_19;
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
}

void sub_1C738087C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  v31 = 0;
  v13 = [objc_opt_self() promptValidationAssetCountThreshold];
  (*(v8 + 16))(v12, &v1[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger], v6);
  sub_1C75504FC();
  sub_1C75504FC();
  v14 = sub_1C754FEEC();
  v15 = sub_1C75511BC();

  if (os_log_type_enabled(v14, v15))
  {
    v29 = v13;
    v16 = OUTLINED_FUNCTION_23_1();
    v30[0] = swift_slowAlloc();
    *v16 = 136315394;
    v17 = sub_1C7550F9C();
    v28 = v6;
    v19 = sub_1C6F765A4(v17, v18, v30);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = sub_1C7550F9C();
    v22 = sub_1C6F765A4(v20, v21, v30);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_1C6F5C000, v14, v15, "Update validation state. changedPeopleIdentifiers:%s | removedAssetUUIDs:%s", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    v13 = v29;
    OUTLINED_FUNCTION_109();

    (*(v8 + 8))(v12, v28);
  }

  else
  {

    (*(v8 + 8))(v12, v6);
  }

  v23 = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_suggestionsAssetPeopleUUIDMap;
  swift_beginAccess();
  sub_1C75504FC();
  sub_1C75504FC();
  v24 = v5;
  v25 = v1;
  v26 = sub_1C75504FC();
  v27 = sub_1C7382444(v26, v3, v24, v13, &v31, v25);

  *&v1[v23] = v27;

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C7380B4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v39 = a5;
  v42 = a3;
  v43 = a4;
  v9 = sub_1C754FF1C();
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v40 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  swift_bridgeObjectRetain_n();
  sub_1C7069A44();
  v45 = v13;
  if (v13[2].isa)
  {
    v14 = sub_1C75504FC();
    sub_1C739796C(v14);
  }

  swift_bridgeObjectRetain_n();
  sub_1C7069A44();
  v44[3] = v15;
  if (*(v15 + 16))
  {
    v16 = sub_1C75504FC();
    sub_1C739796C(v16);
  }

  if (*(a2 + 16))
  {

LABEL_9:
    v21 = 0;
    *v43 = 1;
    goto LABEL_10;
  }

  v38 = v9;
  v17 = v45;
  v18 = sub_1C75504FC();
  v19 = sub_1C7238810(v18, v11);
  v37[1] = v17;

  v20 = *(v19 + 16);

  if (v20 < v42)
  {
    goto LABEL_9;
  }

  (*(v41 + 16))(v40, v39 + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger, v38);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v24 = sub_1C754FEEC();
  v25 = sub_1C75511BC();

  LODWORD(v43) = v25;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44[0] = v39;
    *v27 = 136315650;
    v28 = sub_1C7550F9C();
    v30 = sub_1C6F765A4(v28, v29, v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    v37[0] = v24;
    sub_1C75504FC();
    v31 = sub_1C7550F9C();
    v33 = v32;

    v34 = sub_1C6F765A4(v31, v33, v44);

    *(v27 + 14) = v34;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v42;
    v35 = v37[0];
    _os_log_impl(&dword_1C6F5C000, v37[0], v43, "Prompt is still valid. AssetUUIDs:%s | removed:%s | threshold:%ld", v27, 0x20u);
    v36 = v39;
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v36, -1, -1);
    MEMORY[0x1CCA5F8E0](v27, -1, -1);
  }

  else
  {
  }

  (*(v41 + 8))(v40, v38);
  v21 = 1;
LABEL_10:
  swift_beginAccess();
  v22 = v45;
  *a6 = v11;
  *(a6 + 8) = v12;
  *(a6 + 16) = v22;
  *(a6 + 24) = a2;
  *(a6 + 32) = v21;
  return sub_1C75504FC();
}

void sub_1C7380F54()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  OUTLINED_FUNCTION_19_1();
  v6 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  v13 = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observers;
  [*&v0[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observers] *v4];
  sub_1C75504FC();
  sub_1C737E7FC();

  (*(v8 + 16))(v12, &v0[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger], v6);
  v14 = v0;
  v15 = sub_1C754FEEC();
  v16 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v16))
  {
    v17 = OUTLINED_FUNCTION_41_0();
    *v17 = 134217984;
    *(v17 + 4) = [*&v5[v13] count];

    _os_log_impl(&dword_1C6F5C000, v15, v16, v2, v17, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  else
  {

    v15 = v14;
  }

  v18 = OUTLINED_FUNCTION_0_11();
  v19(v18);
  OUTLINED_FUNCTION_25_0();
}

id sub_1C7381134()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromptSuggestionValidationObservation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C7381230(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_164(a1, a2, a3);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(v3, v4);
  return v3;
}

void sub_1C7381280(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C7551D7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for PromptSuggestion(0);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PromptSuggestion(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C7381600(v8, v9, a1, v4);
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
    sub_1C73813B0(0, v2, 1, a1);
  }
}

void sub_1C73813B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for PromptSuggestion(0);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v31 = v19;
      v32 = a3;
      v29 = v22;
      v30 = v21;
      while (1)
      {
        sub_1C71592A8(v22, v16);
        sub_1C71592A8(v19, v12);
        if (*v16 == *v12 && v16[1] == v12[1])
        {
          break;
        }

        v24 = sub_1C7551DBC();
        sub_1C7382AE4(v12, type metadata accessor for PromptSuggestion);
        sub_1C7382AE4(v16, type metadata accessor for PromptSuggestion);
        if (v24)
        {
          if (!v33)
          {
            __break(1u);
            return;
          }

          sub_1C7159368(v22, v9);
          swift_arrayInitWithTakeFrontToBack();
          sub_1C7159368(v9, v19);
          v19 += v20;
          v22 += v20;
          if (!__CFADD__(v21++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_1C7382AE4(v12, type metadata accessor for PromptSuggestion);
      sub_1C7382AE4(v16, type metadata accessor for PromptSuggestion);
LABEL_14:
      a3 = v32 + 1;
      v19 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C7381600(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v124 = a1;
  v140 = type metadata accessor for PromptSuggestion(0);
  v132 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v128 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v139 = &v119 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v119 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v119 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v136 = (&v119 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v135 = (&v119 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v123 = (&v119 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v122 = (&v119 - v22);
  v134 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v26 = *v124;
    if (!*v124)
    {
      goto LABEL_154;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_116:
      v111 = (v25 + 16);
      for (i = *(v25 + 2); i >= 2; *v111 = i)
      {
        if (!*v134)
        {
          goto LABEL_151;
        }

        v113 = &v25[16 * i];
        v114 = *v113;
        v115 = &v111[2 * i];
        v116 = *(v115 + 1);
        v117 = v138;
        sub_1C7381F6C(*v134 + *(v132 + 72) * *v113, *v134 + *(v132 + 72) * *v115, *v134 + *(v132 + 72) * v116, v26);
        v138 = v117;
        if (v117)
        {
          break;
        }

        if (v116 < v114)
        {
          goto LABEL_139;
        }

        if (i - 2 >= *v111)
        {
          goto LABEL_140;
        }

        *v113 = v114;
        *(v113 + 1) = v116;
        v118 = *v111 - i;
        if (*v111 < i)
        {
          goto LABEL_141;
        }

        i = *v111 - 1;
        sub_1C7423CF4(v115 + 16, v118, v115);
      }

LABEL_112:

      return;
    }

LABEL_148:
    v25 = sub_1C7420830();
    goto LABEL_116;
  }

  v120 = a4;
  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v129 = v14;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    if (v24 + 1 < v23)
    {
      v130 = v23;
      v28 = *v134;
      v29 = *(v132 + 72);
      v30 = v24 + 1;
      v31 = v122;
      sub_1C71592A8(*v134 + v29 * v27, v122);
      v125 = v26;
      v133 = v29;
      v32 = v28 + v29 * v26;
      v33 = v123;
      sub_1C71592A8(v32, v123);
      if (*v31 == *v33 && v31[1] == v33[1])
      {
        LODWORD(v131) = 0;
      }

      else
      {
        LODWORD(v131) = sub_1C7551DBC();
      }

      v121 = v25;
      sub_1C7382AE4(v123, type metadata accessor for PromptSuggestion);
      sub_1C7382AE4(v122, type metadata accessor for PromptSuggestion);
      v35 = v125 + 2;
      v36 = v133 * (v125 + 2);
      v37 = v28 + v36;
      v38 = v30;
      v39 = v133 * v30;
      v40 = v28 + v133 * v30;
      do
      {
        v41 = v35;
        v42 = v38;
        v26 = v39;
        v43 = v36;
        v137 = v35;
        if (v35 >= v130)
        {
          break;
        }

        v44 = v135;
        sub_1C71592A8(v37, v135);
        v45 = v136;
        sub_1C71592A8(v40, v136);
        v46 = *v44 == *v45 && v44[1] == v45[1];
        v47 = v46 ? 0 : sub_1C7551DBC();
        sub_1C7382AE4(v136, type metadata accessor for PromptSuggestion);
        sub_1C7382AE4(v135, type metadata accessor for PromptSuggestion);
        v41 = v137;
        v35 = v137 + 1;
        v37 += v133;
        v40 += v133;
        v38 = v42 + 1;
        v39 = v26 + v133;
        v36 = v43 + v133;
      }

      while (((v131 ^ v47) & 1) == 0);
      if (v131)
      {
        v48 = v125;
        if (v41 < v125)
        {
          goto LABEL_145;
        }

        if (v125 >= v41)
        {
          v27 = v41;
          v25 = v121;
          v26 = v125;
          goto LABEL_39;
        }

        v49 = v125 * v133;
        do
        {
          if (v48 != v42)
          {
            v50 = *v134;
            if (!*v134)
            {
              goto LABEL_152;
            }

            sub_1C7159368(v50 + v49, v128);
            v51 = v49 < v26 || v50 + v49 >= v50 + v43;
            if (v51)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C7159368(v128, v50 + v26);
          }

          ++v48;
          v26 -= v133;
          v43 -= v133;
          v49 += v133;
        }

        while (v48 < v42--);
        v27 = v137;
      }

      else
      {
        v27 = v41;
      }

      v25 = v121;
      v26 = v125;
    }

LABEL_39:
    v53 = v134[1];
    if (v27 < v53)
    {
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_144;
      }

      if (v27 - v26 < v120)
      {
        break;
      }
    }

LABEL_61:
    if (v27 < v26)
    {
      goto LABEL_143;
    }

    v137 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC();
      v25 = v109;
    }

    v64 = *(v25 + 2);
    v65 = v64 + 1;
    v24 = v137;
    if (v64 >= *(v25 + 3) >> 1)
    {
      sub_1C6FB17EC();
      v24 = v137;
      v25 = v110;
    }

    *(v25 + 2) = v65;
    v66 = v25 + 32;
    v67 = &v25[16 * v64 + 32];
    *v67 = v26;
    v67[1] = v24;
    v133 = *v124;
    if (!v133)
    {
      goto LABEL_153;
    }

    if (v64)
    {
      while (1)
      {
        v68 = v65 - 1;
        v69 = &v66[16 * v65 - 16];
        v70 = &v25[16 * v65];
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v71 = *(v25 + 4);
          v72 = *(v25 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_81:
          if (v74)
          {
            goto LABEL_130;
          }

          v86 = *v70;
          v85 = *(v70 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_133;
          }

          v90 = *(v69 + 1);
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_136;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_138;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v65 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        if (v65 < 2)
        {
          goto LABEL_132;
        }

        v93 = *v70;
        v92 = *(v70 + 1);
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_96:
        if (v89)
        {
          goto LABEL_135;
        }

        v95 = *v69;
        v94 = *(v69 + 1);
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_137;
        }

        if (v96 < v88)
        {
          goto LABEL_110;
        }

LABEL_103:
        if (v68 - 1 >= v65)
        {
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
          goto LABEL_147;
        }

        if (!*v134)
        {
          goto LABEL_150;
        }

        v100 = v11;
        v101 = v25;
        v102 = &v66[16 * v68 - 16];
        v103 = *v102;
        v104 = v66;
        v105 = v68;
        v106 = &v66[16 * v68];
        v107 = *(v106 + 1);
        v108 = v138;
        sub_1C7381F6C(*v134 + *(v132 + 72) * *v102, *v134 + *(v132 + 72) * *v106, *v134 + *(v132 + 72) * v107, v133);
        v138 = v108;
        if (v108)
        {
          goto LABEL_112;
        }

        if (v107 < v103)
        {
          goto LABEL_125;
        }

        v26 = *(v101 + 2);
        if (v105 > v26)
        {
          goto LABEL_126;
        }

        *v102 = v103;
        *(v102 + 1) = v107;
        if (v105 >= v26)
        {
          goto LABEL_127;
        }

        v65 = v26 - 1;
        sub_1C7423CF4(v106 + 16, v26 - 1 - v105, v106);
        v25 = v101;
        *(v101 + 2) = v26 - 1;
        v24 = v137;
        v66 = v104;
        v11 = v100;
        v14 = v129;
        if (v26 <= 2)
        {
          goto LABEL_110;
        }
      }

      v75 = &v66[16 * v65];
      v76 = *(v75 - 8);
      v77 = *(v75 - 7);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_128;
      }

      v80 = *(v75 - 6);
      v79 = *(v75 - 5);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_129;
      }

      v82 = *(v70 + 1);
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_131;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_134;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = *(v69 + 1);
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_142;
        }

        if (v73 < v99)
        {
          v68 = v65 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_81;
    }

LABEL_110:
    v23 = v134[1];
    if (v24 >= v23)
    {
      goto LABEL_114;
    }
  }

  v54 = v26 + v120;
  if (__OFADD__(v26, v120))
  {
    goto LABEL_146;
  }

  if (v54 >= v53)
  {
    v54 = v134[1];
  }

  if (v54 < v26)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (v27 == v54)
  {
    goto LABEL_61;
  }

  v121 = v25;
  v55 = *v134;
  v56 = *(v132 + 72);
  v57 = *v134 + v56 * (v27 - 1);
  v58 = -v56;
  v125 = v26;
  v126 = v56;
  v59 = v26 - v27;
  v60 = v55 + v27 * v56;
  v127 = v54;
LABEL_48:
  v137 = v27;
  v130 = v60;
  v131 = v59;
  v133 = v57;
  while (1)
  {
    sub_1C71592A8(v60, v14);
    sub_1C71592A8(v57, v11);
    if (*v14 == *v11 && v14[1] == v11[1])
    {
      sub_1C7382AE4(v11, type metadata accessor for PromptSuggestion);
      sub_1C7382AE4(v14, type metadata accessor for PromptSuggestion);
LABEL_59:
      v27 = v137 + 1;
      v57 = v133 + v126;
      v59 = v131 - 1;
      v60 = v130 + v126;
      if (v137 + 1 == v127)
      {
        v27 = v127;
        v25 = v121;
        v26 = v125;
        goto LABEL_61;
      }

      goto LABEL_48;
    }

    v62 = sub_1C7551DBC();
    sub_1C7382AE4(v11, type metadata accessor for PromptSuggestion);
    sub_1C7382AE4(v14, type metadata accessor for PromptSuggestion);
    if ((v62 & 1) == 0)
    {
      goto LABEL_59;
    }

    if (!v55)
    {
      break;
    }

    v63 = v139;
    sub_1C7159368(v60, v139);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C7159368(v63, v57);
    v57 += v58;
    v60 += v58;
    v51 = __CFADD__(v59++, 1);
    if (v51)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
}

void sub_1C7381F6C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = type metadata accessor for PromptSuggestion(0);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = (&v48 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v48 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v48 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_73;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_74;
  }

  v23 = v19 / v18;
  v57 = a1;
  v56 = a4;
  v24 = v21 / v18;
  if (v19 / v18 < v21 / v18)
  {
    sub_1C741E1A8(a1, v19 / v18, a4);
    v25 = a4 + v23 * v18;
    v55 = v25;
    while (1)
    {
      if (a4 >= v25 || a2 >= a3)
      {
        goto LABEL_71;
      }

      sub_1C71592A8(a2, v16);
      sub_1C71592A8(a4, v13);
      if (*v16 == *v13 && v16[1] == v13[1])
      {
        sub_1C7382AE4(v13, type metadata accessor for PromptSuggestion);
        sub_1C7382AE4(v16, type metadata accessor for PromptSuggestion);
      }

      else
      {
        LODWORD(v53) = sub_1C7551DBC();
        sub_1C7382AE4(v13, type metadata accessor for PromptSuggestion);
        sub_1C7382AE4(v16, type metadata accessor for PromptSuggestion);
        if (v53)
        {
          if (a1 < a2 || a1 >= a2 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
          goto LABEL_40;
        }
      }

      if (a1 < a4 || a1 >= a4 + v18)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v56 = a4 + v18;
      a4 += v18;
LABEL_40:
      a1 += v18;
      v57 = a1;
    }
  }

  sub_1C741E1A8(a2, v21 / v18, a4);
  v30 = a2;
  v31 = a4 + v24 * v18;
  v32 = -v18;
  v33 = v31;
  v50 = -v18;
LABEL_42:
  v51 = v30;
  v34 = v30 + v32;
  v35 = a3;
  v48 = v33;
  while (1)
  {
    if (v31 <= a4)
    {
      v57 = v51;
      v55 = v33;
      goto LABEL_71;
    }

    if (v51 <= a1)
    {
      break;
    }

    v49 = v33;
    v36 = v50;
    v37 = v31 + v50;
    v38 = v52;
    sub_1C71592A8(v31 + v50, v52);
    v39 = v34;
    v40 = v34;
    v41 = v53;
    sub_1C71592A8(v40, v53);
    if (*v38 == *v41 && v38[1] == v41[1])
    {
      v43 = 0;
    }

    else
    {
      v43 = sub_1C7551DBC();
    }

    a3 = v35 + v36;
    sub_1C7382AE4(v53, type metadata accessor for PromptSuggestion);
    sub_1C7382AE4(v52, type metadata accessor for PromptSuggestion);
    if (v43)
    {
      v45 = v35 < v51 || a3 >= v51;
      v46 = v39;
      if (v45)
      {
        swift_arrayInitWithTakeFrontToBack();
        v30 = v39;
        v33 = v49;
        v32 = v50;
      }

      else
      {
        v47 = v49;
        v32 = v50;
        v33 = v49;
        v30 = v46;
        if (v35 != v51)
        {
          swift_arrayInitWithTakeBackToFront();
          v30 = v46;
          v33 = v47;
        }
      }

      goto LABEL_42;
    }

    v44 = v35 < v31 || a3 >= v31;
    v34 = v39;
    if (v44)
    {
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_60;
    }

    v33 = v37;
    v20 = v31 == v35;
    v35 = a3;
    v31 = v37;
    if (!v20)
    {
      swift_arrayInitWithTakeBackToFront();
LABEL_60:
      v35 = a3;
      v31 = v37;
      v33 = v37;
    }
  }

  v57 = v51;
  v55 = v48;
LABEL_71:
  sub_1C74208FC(&v57, &v56, &v55);
}

uint64_t sub_1C7382444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, void *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AFB0);
  result = sub_1C7551AEC();
  v8 = result;
  v9 = 0;
  v36 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v35 = result + 64;
  v39 = result;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v42 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = (*(v36 + 48) + 16 * v20);
      v43 = *v21;
      v44 = v21[1];
      v22 = *(v36 + 56) + 40 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      LOBYTE(v22) = *(v22 + 32);
      v47[0] = v23;
      v47[1] = v24;
      v47[2] = v25;
      v47[3] = v26;
      v48 = v22;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v27 = v49;
      sub_1C7380B4C(v47, a3, a4, a5, a6, v45);
      v49 = v27;
      if (v27)
      {
        break;
      }

      *(v35 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v8 = v39;
      v28 = (v39[6] + 16 * v20);
      *v28 = v43;
      v28[1] = v44;
      v29 = v39[7] + 40 * v20;
      v30 = v46;
      v31 = v45[1];
      *v29 = v45[0];
      *(v29 + 16) = v31;
      *(v29 + 32) = v30;
      v32 = v39[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v39[2] = v34;
      v15 = v42;
      if (!v42)
      {
        goto LABEL_5;
      }
    }

    v8 = v39;

    return v8;
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {

        return v8;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v42 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

void sub_1C73826FC()
{
  sub_1C754FF1C();
  if (v0 <= 0x3F)
  {
    sub_1C7382834();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C7382834()
{
  if (!qword_1EC21AF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC219230);
    v0 = sub_1C754E5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC21AF30);
    }
  }
}

uint64_t sub_1C73828A0()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C7382974()
{
  result = qword_1EDD0D0C0;
  if (!qword_1EDD0D0C0)
  {
    sub_1C755001C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0D0C0);
  }

  return result;
}

unint64_t sub_1C73829CC()
{
  result = qword_1EDD0CF90;
  if (!qword_1EDD0CF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC21AFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CF90);
  }

  return result;
}

uint64_t sub_1C7382A30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C6F738F4;

  return sub_1C737DBEC(a1, v4, v5, v6);
}

uint64_t sub_1C7382AE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_21_53()
{
  v0[58] = v1;
  *(*(v0[51] + v0[56]) + 104) = v1;
}

void OUTLINED_FUNCTION_32_34(float a1)
{
  *v1 = a1;
  *(v1 + 4) = *(v2 + 16);
  *(v1 + 12) = 2080;
}

void OUTLINED_FUNCTION_42_32(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_50_26(uint64_t a1)
{
  *(v1 + 88) = a1;

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_53_31()
{

  PromptSuggestionProvider.suggestionsWithValidNumberOfAssets(_:)();
}

unint64_t OUTLINED_FUNCTION_54_27()
{

  return sub_1C6F85170();
}

void OUTLINED_FUNCTION_56_25()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1CCA5F8E0);
}

uint64_t OUTLINED_FUNCTION_76_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return static PromptSuggestionReader.fetchPromptSuggestions(in:sources:contentMode:limit:shuffleGroupSize:generator:)(v14, a2, va, 1, 0, 40, 0, v13 + 136, (v15 - 88));
}

uint64_t OUTLINED_FUNCTION_79_15(float a1)
{
  *v1 = a1;
  *(v1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_80_12()
{
  *(*(v2 + v1) + 88) = v0;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_81_19()
{
}

void OUTLINED_FUNCTION_85_14()
{
  *(v3 + 16) = v4;
  v5 = v3 + 16 * v2;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
}

void OUTLINED_FUNCTION_88_13()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_89_15()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_90_15()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_91_15()
{

  sub_1C6F7ED9C();
}

void OUTLINED_FUNCTION_93_15()
{
  *(v3 + 16) = v4;
  v5 = v3 + 16 * v2;
  *(v5 + 32) = v1;
  *(v5 + 40) = v0;
}

void OUTLINED_FUNCTION_101_15()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_113_12()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_114_12()
{

  return swift_unknownObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_115_14()
{
  v3 = *(v1 + 232);

  return sub_1C742499C(v0, v3);
}

uint64_t OUTLINED_FUNCTION_116_13()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_117_9()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_118_10()
{
  v3 = *(v1 + 264);

  return sub_1C71592A8(v0, v3);
}

uint64_t OUTLINED_FUNCTION_119_13@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 472) = *(a1 + v1);

  return sub_1C7550D1C();
}

void OUTLINED_FUNCTION_135_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_136_4()
{
  *(*(v2 + v0) + 64) = v1;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_137_9()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_139_5(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_140_8()
{

  return sub_1C75504FC();
}

void OUTLINED_FUNCTION_141_8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_142_4()
{

  JUMPOUT(0x1CCA5CD70);
}

void static PromptSuggestionDiagnosticsGenerator.save(with:photoLibrary:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C75506DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PromptSuggestion(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PFOSVariantHasInternalDiagnostics())
  {
    v40 = v8;
    v41 = v6;
    v42 = v5;
    v43 = v2;
    v39[1] = a1;
    v46 = 0;
    v47 = 0;
    v50 = 0;
    static PromptSuggestionReader.fetchPromptSuggestions(in:sources:contentMode:limit:shuffleGroupSize:generator:)(a2, &unk_1F46A8708, &v50, 0, 1, 0, 1, &v46, &v48);

    v13 = v49;
    v14 = *(v48 + 16);
    if (v14)
    {
      v15 = *(v10 + 80);
      v39[0] = v48;
      v16 = v48 + ((v15 + 32) & ~v15);
      v17 = *(v10 + 72);
      v44 = "csGenerator.swift";
      v18 = MEMORY[0x1E69E7CC0];
      v45 = v17;
      do
      {
        sub_1C71592A8(v16, v12);
        if (*(v13 + 16) && (sub_1C6FC3130(), (v20 & 1) != 0))
        {
          v21 = (*(v13 + 56) + 16 * v19);
          v22 = *v21;
          v23 = v21[1];
          v48 = 0;
          v49 = 0xE000000000000000;
          sub_1C75504FC();
          sub_1C755180C();
          MEMORY[0x1CCA5CD70](0x203A444955555BLL, 0xE700000000000000);
          MEMORY[0x1CCA5CD70](v22, v23);

          MEMORY[0x1CCA5CD70](2653, 0xE200000000000000);
          PromptSuggestion.description.getter();
          MEMORY[0x1CCA5CD70](v24);

          MEMORY[0x1CCA5CD70](0xD000000000000039, v44 | 0x8000000000000000);
          v25 = v48;
          v26 = v49;
          sub_1C715930C(v12);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v18 = v29;
          }

          v27 = *(v18 + 16);
          if (v27 >= *(v18 + 24) >> 1)
          {
            sub_1C6FB1814();
            v18 = v30;
          }

          *(v18 + 16) = v27 + 1;
          v28 = v18 + 16 * v27;
          *(v28 + 32) = v25;
          *(v28 + 40) = v26;
          v17 = v45;
        }

        else
        {
          sub_1C715930C(v12);
        }

        v16 += v17;
        --v14;
      }

      while (v14);
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    v48 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C703328C();
    sub_1C75505FC();

    v31 = v40;
    sub_1C75506CC();
    v32 = sub_1C755069C();
    v34 = v33;

    (*(v41 + 8))(v31, v42);
    if (v34 >> 60 == 15)
    {
      if (qword_1EC214058 != -1)
      {
        swift_once();
      }

      v35 = sub_1C754FF1C();
      __swift_project_value_buffer(v35, qword_1EC21AFD8);
      v36 = sub_1C754FEEC();
      v37 = sub_1C755119C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1C6F5C000, v36, v37, "Cannot encode description. Skipping Prompt Suggestion diagnostics file saving.", v38, 2u);
        MEMORY[0x1CCA5F8E0](v38, -1, -1);
      }
    }

    else
    {
      sub_1C7161C08();
      sub_1C70B5C10(v32, v34);
    }
  }
}

uint64_t sub_1C738354C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21AFD8);
  __swift_project_value_buffer(v0, qword_1EC21AFD8);
  return sub_1C754FEFC();
}

_BYTE *storeEnumTagSinglePayload for PromptSuggestionDiagnosticsGenerator(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C7383694(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = v5;
  *(v6 + 96) = a3;
  *(v6 + 104) = a4;
  v9 = sub_1C754F2FC();
  *(v6 + 128) = v9;
  *(v6 + 136) = *(v9 - 8);
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  v10 = sub_1C754F38C();
  *(v6 + 160) = v10;
  *(v6 + 168) = *(v10 - 8);
  v11 = swift_task_alloc();
  v12 = *a1;
  *(v6 + 176) = v11;
  *(v6 + 184) = v12;
  v13 = *a2;
  *(v6 + 192) = a1[2];
  *(v6 + 200) = v13;
  *(v6 + 248) = *(a2 + 8);
  *(v6 + 249) = *(a2 + 9);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C73837EC()
{
  v19 = v0;
  v1 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  OUTLINED_FUNCTION_70(v1, v1[3]);
  sub_1C754F15C();
  sub_1C754F2CC();
  v2 = *(v0 + 249);
  v3 = *(v0 + 248);
  v4 = *(v0 + 200);
  OUTLINED_FUNCTION_70((v0 + 16), *(v0 + 40));
  sub_1C754F15C();
  sub_1C7367CE0();
  v6 = v5;
  type metadata accessor for QueryGenerator();
  v16 = v4;
  v17 = v3;
  v18 = v2;
  v7 = MomentGroundingProcessor.safeOverlappingMomentGrounding(in:sensitiveFlags:eventRecorder:)(v6, &v16, (v0 + 56));
  *(v0 + 208) = v7;

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  sub_1C754F2DC();
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  sub_1C754F2BC();
  (*(v11 + 32))(v9, v8, v10);
  v12 = swift_task_alloc();
  *(v0 + 216) = v12;
  *v12 = v0;
  v12[1] = sub_1C7383B64;
  v13 = *(v0 + 184);
  v14 = *(v0 + 144);

  return sub_1C7384018(v13, v7, v0 + 16, v14);
}

uint64_t sub_1C7383B64(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  OUTLINED_FUNCTION_40();
  *v7 = v6;
  *v7 = *v3;
  v6[28] = v2;

  if (!v2)
  {
    v6[29] = a2;
    v6[30] = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1C7383CA4()
{
  v1 = v0[28];
  sub_1C73847B8(v0[30], v0[29], v0 + 2);
  v3 = v2;

  sub_1C754F2DC();
  if (v1)
  {
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[20];

    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    OUTLINED_FUNCTION_1_114();
    (*(v5 + 8))(v4, v6);
    (*(v0[17] + 8))(v0[14], v0[16]);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X1, X16 }
  }

  sub_1C71CD85C(v3);
  sub_1C75504FC();
  sub_1C70401E8();

  sub_1C754F2EC();
  v9 = v0[22];
  v10 = v0[20];
  v11 = v0[21];
  v12 = v0[13];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  OUTLINED_FUNCTION_70(v12, v12[3]);
  sub_1C754F1AC();
  (*(v11 + 8))(v9, v10);

  OUTLINED_FUNCTION_17_1();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1C7383F28()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[13];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  OUTLINED_FUNCTION_70(v4, v4[3]);
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);
  (*(v0[17] + 8))(v0[14], v0[16]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1C7384018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = sub_1C754F2FC();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C73840EC, 0, 0);
}

uint64_t sub_1C73840EC()
{
  sub_1C754F2CC();
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  OUTLINED_FUNCTION_70(*(v0 + 104), *(*(v0 + 104) + 24));
  sub_1C754F15C();
  sub_1C754F2BC();
  (*(v4 + 32))(v2, v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = sub_1C7384298;
  v6 = *(v0 + 144);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);

  return sub_1C70A7540(v0 + 56, v7, v8, v0 + 16, v6);
}

uint64_t sub_1C7384298()
{
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73843A0()
{
  v1 = v0[7];
  v2 = v0[8];
  v0[22] = v1;
  v0[23] = v2;
  v0[9] = v1;
  v0[10] = v2;
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_1C7384454;

  return sub_1C7368FDC();
}

uint64_t sub_1C7384454()
{
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  v2[25] = v4;
  v2[26] = v5;
  v2[27] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7384574()
{
  v1 = v0[27];
  sub_1C754F2EC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));

    OUTLINED_FUNCTION_6_0();

    return v2();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));

    v4 = v0[1];
    v5 = v0[25];
    v6 = v0[26];

    return v4(v5, v6);
  }
}

uint64_t sub_1C7384664()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C7384700()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C73847B8(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F15C();
  if (qword_1EDD099E8 != -1)
  {
    swift_once();
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  v5 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD099F0);
  MEMORY[0x1EEE9AC00](v5);
  v19 = v6;
  v7 = sub_1C707351C();
  static StoryGenerationUtilities.querySortOrder(in:)();
  v8 = v20;
  if (qword_1EDD0E038 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
  MEMORY[0x1EEE9AC00](v9);
  v19 = v10;
  sub_1C75504FC();
  v11 = sub_1C706CC1C(sub_1C7055510, &v18, a1);
  if (v7)
  {
    goto LABEL_6;
  }

  if (v8)
  {
    v12 = sub_1C7551DBC();

    if ((v12 & 1) == 0 && *(v11 + 2))
    {
LABEL_6:
      sub_1C7365564();

      goto LABEL_13;
    }
  }

  else
  {
  }

LABEL_13:
  sub_1C75504FC();
  v13 = sub_1C754FEEC();
  v14 = sub_1C755117C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v13, v14, "There are %ld eligible trips", v15, 0xCu);
    MEMORY[0x1CCA5F8E0](v15, -1, -1);
  }

  else
  {
  }

  if (sub_1C6FB6304())
  {
    sub_1C736A17C();
    v20 = v8;
    QueryGenerator.applySortOrderToAssetUUIDsLeveragingTrips(_:with:eventRecorder:)();

    sub_1C74A9740();
    a1 = v16;

    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {

    v20 = v8;
    QueryGenerator.applySortOrderToAssetUUIDsLeveragingMoments(_:with:eventRecorder:)();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_1C75504FC();
  }

  return a1;
}

id static FreeformStoryShot.dummyShot(query:assets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = OUTLINED_FUNCTION_5_81();
  v8 = OUTLINED_FUNCTION_5_81();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v7;
  a4[4] = v8;
  sub_1C75504FC();

  return a3;
}

uint64_t FreeformStoryShot.init(query:assets:similarityScoreByAssetUUID:calibratedSimilarityScoreByAssetUUID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t FreeformStoryShot.query.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

unint64_t FreeformStoryShot.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](v1, v2);
  MEMORY[0x1CCA5CD70](2108450, 0xE300000000000000);
  [v3 count];
  v4 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v4);

  MEMORY[0x1CCA5CD70](0x2973746573736120, 0xE800000000000000);
  return 0xD00000000000001ALL;
}

uint64_t FreeformStoryShot.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AFF0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C713E08C(a1);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v7 = v6;
  v19 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7385BEC();
  sub_1C7551FFC();
  LOBYTE(v21) = 0;
  v17 = sub_1C7551BBC();
  v18 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215708);
  sub_1C72B8DF8(&qword_1EDD06C28);
  OUTLINED_FUNCTION_0_155();
  sub_1C7551C1C();
  v16 = v21;
  LOBYTE(v20) = 3;
  OUTLINED_FUNCTION_0_155();
  sub_1C7551C1C();
  v9 = v21;
  v10 = objc_autoreleasePoolPush();
  sub_1C7385068(v7, &v20, &v21);
  objc_autoreleasePoolPop(v10);

  v12 = v21;
  v13 = OUTLINED_FUNCTION_2_106();
  v14(v13);
  *v19 = v17;
  v19[1] = v18;
  v19[2] = v12;
  v19[3] = v16;
  v19[4] = v9;
  sub_1C75504FC();
  v15 = v12;
  sub_1C75504FC();
  sub_1C75504FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1C7385068(void *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AFF0);
  sub_1C6FF60E4(&qword_1EDD0CF50);
  sub_1C7551C1C();
  v7 = v3;
  if (!v3)
  {
    v8 = [a1 librarySpecificFetchOptions];
    v9 = objc_opt_self();
    v10 = v8;
    v11 = sub_1C6FCA158(v14, v8, v9);

    if (v11)
    {
      type metadata accessor for FreeformStoryDiagnosticsUtils();
      v13 = sub_1C734A78C(v11, v14, a1);

      *a3 = v13;
      return;
    }

    sub_1C7385C40();
    v7 = swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }

  *a2 = v7;
}

PhotosIntelligence::FreeformStoryShot::CodingKeys_optional __swiftcall FreeformStoryShot.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x7972657571 && stringValue._object == 0xE500000000000000;
  if (v5 || (OUTLINED_FUNCTION_42_0() & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    v8 = countAndFlagsBits == 0x737465737361 && object == 0xE600000000000000;
    if (v8 || (OUTLINED_FUNCTION_42_0() & 1) != 0)
    {

      v7 = 1;
    }

    else
    {
      v9 = countAndFlagsBits == 0xD00000000000001ALL && 0x80000001C7595750 == object;
      if (v9 || (OUTLINED_FUNCTION_42_0() & 1) != 0)
      {

        v7 = 2;
      }

      else if (countAndFlagsBits == 0xD000000000000024 && 0x80000001C75ACCE0 == object)
      {

        v7 = 3;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_42_0();

        if (v11)
        {
          v7 = 3;
        }

        else
        {
          v7 = 4;
        }
      }
    }
  }

  *v4 = v7;
  return result;
}

uint64_t FreeformStoryShot.CodingKeys.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

unint64_t FreeformStoryShot.CodingKeys.stringValue.getter()
{
  result = 0x7972657571;
  switch(*v0)
  {
    case 1:
      result = 0x737465737361;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C73854A8(uint64_t a1)
{
  v2 = sub_1C7385BEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73854E4(uint64_t a1)
{
  v2 = sub_1C7385BEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FreeformStoryShot.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AFF8);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = *v1;
  v41 = v1[1];
  v42 = v9;
  v10 = v1[2];
  v37 = v1[3];
  v11 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7385BEC();
  sub_1C755200C();
  v12 = [v10 fetchedObjects];
  if (v12)
  {
    v13 = v12;
    v36 = v11;
    v38 = v8;
    v39 = v5;
    v40 = v3;
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    v14 = sub_1C7550B5C();

    v15 = sub_1C6FB6304();
    v16 = 0;
    v44 = MEMORY[0x1E69E7CC0];
    while (v15 != v16)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1CCA5DDD0](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);

        __break(1u);
        return result;
      }

      v13 = sub_1C70CAC04(v17);
      v21 = v20;

      ++v16;
      if (v21)
      {
        v22 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v22 = v27;
        }

        v24 = *(v22 + 16);
        v23 = *(v22 + 24);
        v44 = v22;
        if (v24 >= v23 >> 1)
        {
          sub_1C6FB1814();
          v44 = v28;
        }

        v25 = v44;
        *(v44 + 16) = v24 + 1;
        v26 = v25 + 16 * v24;
        *(v26 + 32) = v13;
        *(v26 + 40) = v21;
        v16 = v19;
      }
    }

    LOBYTE(v46) = 0;
    v29 = v40;
    v30 = v38;
    v31 = v43;
    sub_1C7551CCC();
    if (v31)
    {
      (*(v39 + 8))(v30, v29);
    }

    else
    {
      v46 = v44;
      sub_1C75504FC();
      sub_1C70401E8();
      v34 = v39;

      v45 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C6FF60E4(&qword_1EDD0CF60);
      OUTLINED_FUNCTION_3_97();
      sub_1C7551D2C();

      v35 = v36;
      v46 = v37;
      v45 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215708);
      sub_1C72B8DF8(&qword_1EDD06C30);
      OUTLINED_FUNCTION_3_97();
      sub_1C7551D2C();
      v46 = v35;
      v45 = 3;
      OUTLINED_FUNCTION_3_97();
      sub_1C7551D2C();
      return (*(v34 + 8))(v30, v29);
    }
  }

  else
  {
    sub_1C7385C40();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();
    return (*(v5 + 8))(v8, v3);
  }
}

void static FreeformStoryShot.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[3];
  v2 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_1C7551DBC() & 1) != 0)
  {
    sub_1C6F65BE8(0, &qword_1EDD10100);
    if (sub_1C75513EC())
    {
      sub_1C708C5DC(v3, v4);
      if (v7)
      {

        sub_1C708C5DC(v2, v5);
      }
    }
  }
}

uint64_t FreeformStoryShot.hash(into:)(const void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_1C75505AC();
  sub_1C75513FC();
  sub_1C7090D88(a1, v3);

  return sub_1C7090D88(a1, v4);
}

uint64_t FreeformStoryShot.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C75513FC();
  sub_1C7090D88(v4, v1);
  sub_1C7090D88(v4, v2);
  return sub_1C7551FAC();
}

uint64_t sub_1C7385B60()
{
  v3[9] = *v0;
  v1 = *(v0 + 24);
  v4 = *(v0 + 8);
  v5 = v1;
  sub_1C7551F3C();
  FreeformStoryShot.hash(into:)(v3);
  return sub_1C7551FAC();
}

unint64_t sub_1C7385BEC()
{
  result = qword_1EDD0AB00;
  if (!qword_1EDD0AB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AB00);
  }

  return result;
}

unint64_t sub_1C7385C40()
{
  result = qword_1EC21B000;
  if (!qword_1EC21B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B000);
  }

  return result;
}

unint64_t sub_1C7385C98()
{
  result = qword_1EC21B008;
  if (!qword_1EC21B008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B008);
  }

  return result;
}

unint64_t sub_1C7385CF0()
{
  result = qword_1EDD0AAF0;
  if (!qword_1EDD0AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AAF0);
  }

  return result;
}

unint64_t sub_1C7385D48()
{
  result = qword_1EDD0AAF8;
  if (!qword_1EDD0AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0AAF8);
  }

  return result;
}

unint64_t sub_1C7385DA0()
{
  result = qword_1EC21B010;
  if (!qword_1EC21B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B010);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryShot.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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