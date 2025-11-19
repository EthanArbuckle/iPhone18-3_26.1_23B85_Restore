void sub_1DCFA0554(uint64_t a1, int a2)
{
  v47 = a2;
  v3 = sub_1DCB08B14(a1);
  v4 = 0;
  v46 = 0;
  v5 = a1 & 0xC000000000000001;
  v6 = MEMORY[0x1E69E7CC0];
  v48 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if (!v5)
    {
      if (v4 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(a1 + 8 * v4 + 32);
        sub_1DD0DCF8C();
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    MEMORY[0x1E12A72C0](v4, a1);
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    v9 = sub_1DCF9E948();

    ++v4;
    if (v9)
    {
      v10 = sub_1DCF9DF00(v47 & 1);
      v12 = v11;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(v48 + 16);
        sub_1DCB34108();
        v48 = v18;
      }

      v14 = *(v48 + 16);
      v13 = *(v48 + 24);
      if (v14 >= v13 >> 1)
      {
        OUTLINED_FUNCTION_21_0(v13);
        sub_1DCB34108();
        v48 = v19;
      }

      v15 = v48;
      *(v48 + 16) = v14 + 1;
      v16 = v15 + 16 * v14;
      *(v16 + 32) = v10;
      *(v16 + 40) = v12;
      v4 = v8;
    }
  }

  v20 = 0;
  v50 = v6;
  v43 = xmmword_1DD0E15D0;
  while (1)
  {
    if (v3 == v20)
    {

      return;
    }

    if (!v5)
    {
      break;
    }

    v39 = MEMORY[0x1E12A72C0](v20, a1);
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_36;
    }

    v23 = sub_1DCF9E948();
    if (v23)
    {
      v24 = v23;
      v25 = sub_1DCF9DF00(v47 & 1);
      v27 = v26;
      v28 = v48;
      v42 = sub_1DCFA08CC(v25, v26, v48);
      v45 = v29;
      v44 = &v41;
      v49[0] = v25;
      v49[1] = v27;
      MEMORY[0x1EEE9AC00](v42, v29);
      v40[2] = v49;
      v30 = v28;
      v31 = v46;
      v41 = sub_1DCC3C940(sub_1DCD00108, v40, v30);
      v33 = v32;
      v46 = v31;

      if (v45)
      {
        if (v33)
        {
          goto LABEL_27;
        }
      }

      else if ((v33 & 1) == 0 && v42 == v41)
      {
LABEL_27:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
        v34 = swift_allocObject();
        *(v34 + 16) = v43;
        *(v34 + 32) = v24;
        v35 = *(v39 + 24);
        v36 = *(v39 + 32);

        type metadata accessor for SiriKitDisambiguationItem();
        swift_allocObject();
        v37 = SiriKitDisambiguationItem.init(components:utterance:allowLineWrapForDisplayText:)(v34, v35, v36, 0);
        goto LABEL_29;
      }

LABEL_29:
      MEMORY[0x1E12A6920](v37);
      v38 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v38 >> 1)
      {
        OUTLINED_FUNCTION_21_0(v38);
        sub_1DD0DE33C();
      }

      sub_1DD0DE3AC();
      v20 = v22;
    }

    else
    {

      ++v20;
    }
  }

  if (v20 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(a1 + 8 * v20 + 32);
    sub_1DD0DCF8C();
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_1DCFA08CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1DD0DF0AC() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_1DCFA0958(uint64_t a1, char a2)
{
  v3 = sub_1DD0DDE9C();
  result = sub_1DCB08B14(a1);
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a1;
  v20 = a1 & 0xFFFFFFFFFFFFFF8;
  v21 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v5 == v6)
    {

      return v7;
    }

    if (!v21)
    {
      break;
    }

    result = MEMORY[0x1E12A72C0](v6, v8);
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    v10 = sub_1DCF9EAB0(a2 & 1);
    v12 = v11;
    result = sub_1DCC17E34(v10, v11, v3);
    if ((v13 & 1) == 0 && result == -1)
    {
      goto LABEL_20;
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC60728();
    v14 = sub_1DCC17E34(v10, v12, v3);
    v16 = v15;

    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v14;
    }

    ++v6;
    v18 = __CFADD__(v7, v17);
    v7 += v17;
    if (v18)
    {
      goto LABEL_19;
    }
  }

  if (v6 < *(v20 + 16))
  {
    v9 = *(v8 + 8 * v6 + 32);
    sub_1DD0DCF8C();
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1DCFA0B08(uint64_t a1)
{
  result = sub_1DCB08B14(a1);
  v3 = result;
  v4 = 0;
  while (1)
  {
    v5 = v4;
    if (v3 == v4)
    {
      return v3 != v5;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    result = MEMORY[0x1E12A72C0](v4, a1);
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    v7 = *(result + 16);
    if (v7 >> 62)
    {
      if (v7 < 0)
      {
        v9 = *(result + 16);
      }

      v8 = sub_1DD0DEB3C();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = v5 + 1;
    if (!v8)
    {
      return v3 != v5;
    }
  }

  if (v4 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(a1 + 8 * v4 + 32);
    sub_1DD0DCF8C();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DCFA0BEC(uint64_t a1, char a2)
{
  result = sub_1DCB08B14(a1);
  v4 = 0;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v6 = a1 + 32;
  v25 = result;
LABEL_2:
  if (v4 == result)
  {
    return 0;
  }

  if ((a1 & 0xC000000000000001) == 0)
  {
    if (v4 < *(v5 + 16))
    {
      v7 = *(v6 + 8 * v4);
      sub_1DD0DCF8C();
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  result = MEMORY[0x1E12A72C0](v4, a1);
  v8 = __OFADD__(v4++, 1);
  if (v8)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  v9 = *(result + 16);
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v13 = *(result + 16);
    }

    v10 = sub_1DD0DEB3C();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  do
  {
    while (1)
    {
      if (v11 == v10)
      {

        v5 = a1 & 0xFFFFFFFFFFFFFF8;
        result = v25;
        v6 = a1 + 32;
        goto LABEL_2;
      }

      if ((v9 & 0xC000000000000001) == 0)
      {
        break;
      }

      result = MEMORY[0x1E12A72C0](v11, v9);
      v8 = __OFADD__(v11++, 1);
      if (v8)
      {
        goto LABEL_35;
      }

      v24 = *(result + 80);
      result = swift_unknownObjectRelease();
      if ((v24 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }

    v12 = *(v9 + 32 + 8 * v11++);
  }

  while ((*(v12 + 80) & 1) != 0);
LABEL_24:

  v14 = sub_1DCB08B14(a1);
  if (v14 < 2)
  {
    return 0;
  }

  v15 = v14;
  v27 = MEMORY[0x1E69E7CC0];
  sub_1DCB38954();
  v16 = 0;
  do
  {
    MEMORY[0x1E12A72C0](v16, a1);
    v17 = sub_1DCF9EAB0(a2 & 1);
    v19 = v18;

    v21 = *(v27 + 16);
    v20 = *(v27 + 24);
    if (v21 >= v20 >> 1)
    {
      OUTLINED_FUNCTION_21_0(v20);
      sub_1DCB38954();
    }

    ++v16;
    *(v27 + 16) = v21 + 1;
    v22 = v27 + 16 * v21;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
  }

  while (v15 != v16);
  v23 = *(sub_1DCDA58AC(v27) + 16);

  return v23 < v15;
}

uint64_t SiriKitDisambiguationList.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t SiriKitDisambiguationList.__deallocating_deinit()
{
  SiriKitDisambiguationList.deinit();

  return swift_deallocClassInstance();
}

uint64_t destroy for SiriKitDisambiguationItemPair(uint64_t *a1)
{
  v2 = a1 + 1;
  v1 = *a1;

  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

void initializeWithCopy for SiriKitDisambiguationItemPair(void *a1, void *a2)
{
  *a1 = *a2;
  v2 = a2[4];
  a1[4] = v2;
  v3 = **(v2 - 8);
  sub_1DD0DCF8C();
}

void assignWithCopy for SiriKitDisambiguationItemPair(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = *a2;
  sub_1DD0DCF8C();
}

uint64_t *assignWithTake for SiriKitDisambiguationItemPair(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  __swift_destroy_boxed_opaque_existential_1Tm(a1 + 1);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  return a1;
}

_OWORD *SiriKitDisambiguationListAdapter.__allocating_init(disambiguationList:deviceState:authenticationPolicy:)(uint64_t a1, __int128 *a2)
{
  OUTLINED_FUNCTION_5_5();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1DCB18FF0(a2, v4 + 24);
  return OUTLINED_FUNCTION_1_129();
}

uint64_t SiriKitDisambiguationListAdapter.__allocating_init(disambiguationList:deviceState:)(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_5_5();
  v4 = swift_allocObject();
  SiriKitDisambiguationListAdapter.init(disambiguationList:deviceState:)(a1, a2);
  return v4;
}

uint64_t SiriKitDisambiguationListAdapter.init(disambiguationList:deviceState:)(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  sub_1DCB17CA0(a2, v2 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 96) = &type metadata for FeatureFlagDefinitions.Core;
  *(v2 + 104) = &off_1F585CB38;
  return v2;
}

_OWORD *SiriKitDisambiguationListAdapter.init(disambiguationList:deviceState:authenticationPolicy:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_1DCB18FF0(a2, v2 + 24);
  return OUTLINED_FUNCTION_1_129();
}

uint64_t sub_1DCFA1204()
{
  v1 = *(v0 + 16);
  v2 = sub_1DCFA1238();
  return sub_1DCF9FF44(v2 & 1) & 1;
}

uint64_t sub_1DCFA1238()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  if ((*(v2 + 248))(v0 + 8, v1, v2))
  {
    v3 = 0;
  }

  else
  {
    v4 = v0[6];
    v5 = v0[7];
    __swift_project_boxed_opaque_existential_1(v0 + 3, v4);
    v3 = (*(v5 + 8))(v4, v5) ^ 1;
  }

  return v3 & 1;
}

uint64_t SiriKitDisambiguationListAdapter.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  sub_1DCC4B20C(v0 + 64);
  return v0;
}

uint64_t SiriKitDisambiguationListAdapter.__deallocating_deinit()
{
  SiriKitDisambiguationListAdapter.deinit();
  OUTLINED_FUNCTION_5_5();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCFA142C(unint64_t a1, char a2, unsigned int a3, void *a4)
{
  v5 = v4;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DD0DEB3C())
  {
    result = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v18 = MEMORY[0x1E69E7CC0];
    sub_1DD0DED0C();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        __break(1u);
        goto LABEL_16;
      }

      if ((a1 & 0xC000000000000001) == 0)
      {
        break;
      }

      v16 = MEMORY[0x1E12A72C0](j, a1);
      sub_1DCFA30D8(&v16, a2 & 1, a3, a4, &v17);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      sub_1DD0DECDC();
      v12 = *(v18 + 16);
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
      if (v10 == i)
      {
        return v18;
      }
    }

    if (j < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v11 = *(a1 + 8 * j + 32);
      sub_1DD0DCF8C();
    }

LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

id sub_1DCFA15B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1DD0DED0C();
    v4 = *MEMORY[0x1E69C7F28];
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = objc_allocWithZone(MEMORY[0x1E69C7AB0]);

      v9 = [v8 init];
      v10 = sub_1DD0DDFBC();
      sub_1DCC65D3C(v10, v11, v9);
      sub_1DCC65D48(v6, v7, v9);

      sub_1DD0DECDC();
      v12 = *(v16 + 16);
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
      v5 += 2;
      --v1;
    }

    while (v1);
    v2 = v16;
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E69C7A48]) init];

  if (v2 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D8, &qword_1DD106560);
    v14 = sub_1DD0DEE0C();
  }

  else
  {
    sub_1DD0DF0CC();
    v14 = v2;
  }

  sub_1DCC6589C(v14, v13);
  return v13;
}

id sub_1DCFA19B8(uint64_t a1, char a2)
{
  type metadata accessor for SiriKitDisambiguationItem();
  v3 = OUTLINED_FUNCTION_3_117();
  v14 = MEMORY[0x1E69E7CC0];
  v4 = sub_1DCFA142C(v3, a2, 1u, &v14);

  v5 = sub_1DCCD2C5C(v4);
  if (v5)
  {
    v6 = v5;
    [v5 setSeparatorStyle_];
  }

  v7 = v14;
  v8 = sub_1DCB10E5C(0, &unk_1ECCA25E0, 0x1E69C7770);
  v12 = OUTLINED_FUNCTION_4_109(v8, v9, v10, v11, MEMORY[0x1E69E7CC0]);

  sub_1DCFA391C(v7, v12, qword_1ECCA1C80, &qword_1DD0E1D90, &selRef_setReferencedCommands_);
  return v12;
}

id sub_1DCFA1AB0(uint64_t a1, char a2, unsigned __int8 *a3)
{
  v4 = *a3;
  type metadata accessor for SiriKitDisambiguationItem();
  v5 = OUTLINED_FUNCTION_3_117();
  v16 = MEMORY[0x1E69E7CC0];
  v6 = sub_1DCFA142C(v5, a2, v4, &v16);

  v7 = sub_1DCCD2C5C(v6);
  if (v7)
  {
    v8 = v7;
    [v7 setSeparatorStyle_];
  }

  v9 = v16;
  v10 = sub_1DCB10E5C(0, &unk_1ECCA25E0, 0x1E69C7770);
  v14 = OUTLINED_FUNCTION_4_109(v10, v11, v12, v13, MEMORY[0x1E69E7CC0]);

  sub_1DCFA391C(v9, v14, qword_1ECCA1C80, &qword_1DD0E1D90, &selRef_setReferencedCommands_);
  return v14;
}

void static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForWatch(disambiguationItems:textToSpeechIsEnabled:)()
{
  v0 = sub_1DD0DB04C();
  v1 = OUTLINED_FUNCTION_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  OUTLINED_FUNCTION_16();
  sub_1DD0DCB8C();
}

id sub_1DCFA21D0(void *a1)
{
  v1 = a1[5];
  if (v1)
  {
    v2 = qword_1EDE46628;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    sub_1DCB4E718(v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    sub_1DCFA399C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  v6 = a1[4];
  *(inited + 32) = a1[3];
  *(inited + 40) = v6;

  v7 = sub_1DCFA15B4(inited);
  swift_setDeallocating();
  sub_1DCB19D2C();
  return v7;
}

uint64_t static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForAppleTV(disambiguationItems:)(uint64_t a1)
{
  v2 = sub_1DD0DB04C();
  v3 = OUTLINED_FUNCTION_9(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3, v8);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v12 = sub_1DCB08B14(a1);
  if (v12)
  {
    v13 = v12;
    v23[2] = MEMORY[0x1E69E7CC0];
    sub_1DD0DED0C();
    if ((v13 & 0x8000000000000000) == 0)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v23[0] = MEMORY[0x1E12A72C0](0, a1);
        sub_1DCFA2A0C(v23);
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v14 = *(a1 + 32);
        sub_1DD0DCF8C();
      }

      __break(1u);
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E69C7B58]) init];
    sub_1DCB2C534(0xD000000000000010, 0x80000001DD126C30, v15, &selRef_setGroupTitle_);
    sub_1DCB2C534(0x746974207473694CLL, 0xEA0000000000656CLL, v15, &selRef_setTitle_);
    v16 = OUTLINED_FUNCTION_68();
    sub_1DCC363A4(v16, v17);
    v18 = v15;
    sub_1DD0DB03C();
    v19 = sub_1DD0DAFFC();
    v21 = v20;
    (*(v5 + 8))(v11, v2);
    sub_1DCB4D8E8(v19, v21, v18);

    return v18;
  }

  return result;
}

void sub_1DCFA2A0C(uint64_t *a1)
{
  v2 = sub_1DD0DB04C();
  v9 = *(v2 - 8);
  v10 = v2;
  v3 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v8[4] = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCFA30D8(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v74 = a4;
  v75 = a3;
  v78 = a5;
  v7 = sub_1DD0DB04C();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v70 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v69 - v14;
  v16 = *a1;
  if (sub_1DCF9E948())
  {
    v77 = sub_1DCF9DEB4(a2 & 1);
    v18 = v17;
  }

  else
  {
    v77 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = sub_1DCF9E948();
  if (v19)
  {
    v76 = *(v19 + 81);
  }

  else
  {
    v76 = 0;
  }

  if (sub_1DCF9E9C0())
  {
    v20 = sub_1DCF9DEB4(a2 & 1);
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v69 = v15;
  if (sub_1DCF9EA38())
  {
    v23 = sub_1DCF9DEB4(a2 & 1);
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = *(v16 + 72);
  v27 = *(v16 + 80);
  if (*(v16 + 48))
  {
    v28 = 2;
  }

  else
  {
    v28 = 1;
  }

  v29 = *(v16 + 56);
  v73 = *(v16 + 64);
  v30 = sub_1DCC648A4(v77, v18, v20, v22, v23, v25, v28, v76);

  if (v27 && *(v27 + 16))
  {
    v31 = [objc_allocWithZone(MEMORY[0x1E69C9FC0]) init];
    sub_1DCC65CE0(v27, v31);
    v32 = dbl_1DD106568[v75];
    v33 = v31;
    [v33 setSize_];
    [v33 setShouldCropToCircle_];
    [v30 setImage_];

LABEL_38:
    goto LABEL_39;
  }

  if (v26)
  {
    v34 = [objc_allocWithZone(MEMORY[0x1E69CA260]) init];
    sub_1DCC65C8C(v73, v26, v34);
    [v34 setMonogramStyle_];
    v35 = dbl_1DD106568[v75];
    v36 = v34;
    [v36 setSize_];
    [v36 setShouldCropToCircle_];
    [v30 setImage_];

    goto LABEL_39;
  }

  if (v29)
  {
    v37 = objc_allocWithZone(MEMORY[0x1E69CA548]);
    v38 = v29;
    v39 = [v37 init];
    v40 = sub_1DCC65B64(v38);
    if (v41 >> 60 == 15)
    {
      sub_1DCC65BC8(v38);
      if (v42)
      {
        sub_1DCC65C2C(0x7079546567616D49, 0xEC0000004C525565, v39);
        v43 = v69;
        sub_1DD0DAEBC();

        v44 = sub_1DD0DAECC();
        v45 = 0;
        if (__swift_getEnumTagSinglePayload(v43, 1, v44) != 1)
        {
          v45 = sub_1DD0DAE6C();
          (*(*(v44 - 8) + 8))(v43, v44);
        }

        [v39 setUrlValue_];
      }
    }

    else
    {
      v46 = v40;
      v47 = v41;
      v48 = v39;
      sub_1DCC65C38(v46, v47, v48);

      sub_1DCB2C520(v46, v47);
    }

    v33 = v39;
    [v33 setShouldCropToCircle_];
    if (v75)
    {
      if (v75 != 1)
      {
        v49 = 34.0;
LABEL_36:
        v55 = v49;
        goto LABEL_37;
      }
    }

    else
    {
      v50 = v38;
      [v50 _imageSize];
      if (v51 > 0.0)
      {
        [v50 _imageSize];
        if (v52 > 0.0)
        {
          [v50 _imageSize];
          v49 = v53;
          [v50 _imageSize];
          v55 = v54;

LABEL_37:
          [v33 setSize_];
          [v30 setImage_];

          [v30 setImageIsRightAligned_];
          goto LABEL_38;
        }
      }
    }

    v49 = 47.0;
    goto LABEL_36;
  }

LABEL_39:
  v56 = *(v16 + 40);
  if (v56)
  {
    v57 = qword_1EDE46628;
    v58 = v56;
    if (v57 != -1)
    {
      swift_once();
    }

    sub_1DCB4E718(v79);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    sub_1DCFA399C();
  }

  v60 = *(v16 + 24);
  v59 = *(v16 + 32);
  v61 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v61 = v60 & 0xFFFFFFFFFFFFLL;
  }

  if (v61)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD0E07C0;
    *(inited + 32) = v60;
    *(inited + 40) = v59;

    v63 = sub_1DCFA15B4(inited);
    swift_setDeallocating();
    sub_1DCB19D2C();
    v64 = v70;
    sub_1DD0DB03C();
    sub_1DD0DAFFC();
    (*(v71 + 8))(v64, v72);
    v65 = sub_1DD0DDF8C();

    [v63 setAceId_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1DD0E15D0;
    v67 = swift_unknownObjectRetain();
    *(v66 + 32) = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)(v67);
    sub_1DCFA3898(v66, v30);
    v68 = v74;
    MEMORY[0x1E12A6920]();
    sub_1DCBBF95C(*((*v68 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1DD0DE3AC();
    swift_unknownObjectRelease();
  }

  *v78 = v30;
}

void sub_1DCFA3898(uint64_t a1, void *a2)
{
  sub_1DCB10E5C(0, &unk_1ECCAB530, 0x1E69C9E60);
  v3 = sub_1DD0DE2DC();

  [a2 setCommands_];
}

void sub_1DCFA391C(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, SEL *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v7 = sub_1DD0DE2DC();

  [a2 *a5];
}

_BYTE *storeEnumTagSinglePayload for SiriKitDisambiguationSnippetFactory(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCFA3C08()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_70();
  v3 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t sub_1DCFA3C4C()
{
  OUTLINED_FUNCTION_5_22();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCFA3C88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_70();
  v3 = *(v1 + 40);
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

void sub_1DCFA3CCC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFA3CF8()
{
  OUTLINED_FUNCTION_5_22();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_33_1();
}

void sub_1DCFA3D78(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1DCB5769C(v2);
}

void *sub_1DCFA3DA8()
{
  OUTLINED_FUNCTION_5_22();
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_1DCFA3E24()
{
  OUTLINED_FUNCTION_5_22();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCFA3EA4()
{
  OUTLINED_FUNCTION_5_22();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCFA3EE0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_70();
  v3 = *(v1 + 72);
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
}

uint64_t sub_1DCFA3F24()
{
  OUTLINED_FUNCTION_5_22();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCFA3F60()
{
  OUTLINED_FUNCTION_5_22();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCFA3F9C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  v9 = OUTLINED_FUNCTION_19();
  return a5(v9);
}

uint64_t sub_1DCFA3FE0()
{
  OUTLINED_FUNCTION_5_22();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t SiriKitEvent.SiriKitHybridEventBuilder.chosenItem.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_1DCC33634(a1, v1 + 128, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  return swift_endAccess();
}

uint64_t SiriKitEvent.SiriKitHybridEventBuilder.disambiguationItems.getter()
{
  OUTLINED_FUNCTION_5_22();
  v1 = *(v0 + 160);
}

uint64_t SiriKitEvent.SiriKitHybridEventBuilder.disambiguationItems.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_13_70();
  v3 = *(v1 + 160);
  *(v1 + 160) = a1;
}

uint64_t SiriKitEvent.SiriKitHybridEventBuilder.flowActivity.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_1DCC33634(a1, v1 + 168, &unk_1ECCA3280, &unk_1DD0E23D0);
  return swift_endAccess();
}

uint64_t sub_1DCFA42B0()
{
  sub_1DCB0E9D8(v0 + 128, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v1 = *(v0 + 160);

  return sub_1DCB0E9D8(v0 + 168, &unk_1ECCA3280, &unk_1DD0E23D0);
}

void SiriKitEvent.__allocating_init(taskFlowConfiguration:_:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for SiriKitEventPayload(0);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  OUTLINED_FUNCTION_16();
  v11 = v10 - v9;
  v12 = *v3;
  v13 = v3[1];
  v14 = v3[2];
  v15 = *(v3 + 24);
  type metadata accessor for SiriKitEvent.SiriKitOverridesEventBuilder();
  OUTLINED_FUNCTION_136();
  v16 = swift_allocObject();
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  v17 = v16;
  if (v1)
  {
    v1(&v17);
  }

  *v11 = v12;
  *(v11 + 8) = v13;
  *(v11 + 16) = v14;
  *(v11 + 24) = v15;
  OUTLINED_FUNCTION_138();
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFA4474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCEE0D08;

  return SiriKitEventSending.sendAsync(_:)(a1, a2, a3);
}

uint64_t SiriKitEventSending.sendAsync(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCFA4538()
{
  OUTLINED_FUNCTION_42();
  v1 = v0[5];
  (*(v0[4] + 8))(v0[2], v0[3]);
  OUTLINED_FUNCTION_29();

  return v2();
}

void sub_1DCFA45EC()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFA4750(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DCFA4794, 0, 0);
}

void sub_1DCFA4794()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DCFA45EC();
}

uint64_t sub_1DCFA4810(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCEE0D08;

  return sub_1DCFA4750(a1);
}

uint64_t sub_1DCFA48A8()
{
  type metadata accessor for RefreshableSiriKitEventSending();
  v0 = swift_allocObject();
  result = sub_1DCFA48E4();
  qword_1EDE57DF8 = v0;
  return result;
}

uint64_t sub_1DCFA48E4()
{
  v3[3] = type metadata accessor for NoopSiriKitEventSender();
  v3[4] = &off_1F5873928;
  v3[0] = swift_initStaticObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAB548, qword_1DD106A80);
  v1 = swift_allocObject();
  *(v1 + 56) = 0;
  sub_1DCB17CA0(v3, v1 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_1DCFA4974(void *a1)
{
  v1 = [a1 intentId];
  if (v1)
  {
    v2 = v1;
    sub_1DD0DDFBC();
  }

  return OUTLINED_FUNCTION_33_1();
}

id sub_1DCFA49D4(id result)
{
  if (result != 3)
  {
    return sub_1DCFA49E4(result);
  }

  return result;
}

id sub_1DCFA49E4(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t sub_1DCFA49F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *initializeBufferWithCopyOfBuffer for SiriKitEventPayload(void *a1, void *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 - 8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      *a1 = *a2;
      v6 = a2[2];
      a1[1] = a2[1];
      a1[2] = v6;
      *(a1 + 24) = *(a2 + 24);
      v7 = a2[7];

      if (v7)
      {
        v8 = a2[8];
        a1[7] = v7;
        a1[8] = v8;
        (**(v7 - 8))((a1 + 4), (a2 + 4), v7);
      }

      else
      {
        v69 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v69;
        a1[8] = a2[8];
      }

      a1[9] = a2[9];

      v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
      v71 = sub_1DD0DD2FC();
      if (__swift_getEnumTagSinglePayload(a2 + v70, 1, v71))
      {
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
        memcpy(a1 + v70, a2 + v70, *(*(v72 - 8) + 64));
      }

      else
      {
        (*(*(v71 - 8) + 16))(a1 + v70, a2 + v70, v71);
        __swift_storeEnumTagSinglePayload(a1 + v70, 0, 1, v71);
      }

      goto LABEL_33;
    case 1u:
      v44 = *a2;
      v45 = a2[1];
      *a1 = *a2;
      a1[1] = v45;
      a1[2] = a2[2];
      v46 = v44;

      goto LABEL_33;
    case 2u:
      v30 = a2[1];
      *a1 = *a2;
      a1[1] = v30;
      v31 = a2[3];
      a1[2] = a2[2];
      a1[3] = v31;
      v32 = a2[5];
      a1[4] = a2[4];
      a1[5] = v32;
      a1[6] = a2[6];
      *(a1 + 56) = *(a2 + 56);

      v33 = v30;

      goto LABEL_33;
    case 3u:
      *a1 = *a2;
      v35 = a2[1];
      v36 = a2[2];
      a1[1] = v35;
      a1[2] = v36;
      v37 = a2[4];
      a1[3] = a2[3];
      a1[4] = v37;
      v38 = a2[6];
      a1[5] = a2[5];
      a1[6] = v38;
      *(a1 + 56) = *(a2 + 56);
      v39 = v35;

      goto LABEL_33;
    case 4u:
      v16 = a2[3];
      a1[3] = v16;
      (**(v16 - 8))(a1, a2);
      v17 = a2[4];
      v18 = a2[5];
      a1[4] = v17;
      a1[5] = v18;
      v19 = a2[7];
      a1[6] = a2[6];
      a1[7] = v19;
      v20 = a2[9];
      a1[8] = a2[8];
      a1[9] = v20;
      *(a1 + 80) = *(a2 + 80);
      v21 = v17;

      goto LABEL_33;
    case 5u:
      *a1 = *a2;
      v49 = a2[1];
      v50 = a2[2];
      a1[1] = v49;
      a1[2] = v50;
      v51 = a2[4];
      a1[3] = a2[3];
      a1[4] = v51;
      a1[5] = a2[5];
      v52 = a2[9];
      v53 = v49;

      if (v52)
      {
        a1[9] = v52;
        (**(v52 - 8))((a1 + 6), (a2 + 6), v52);
      }

      else
      {
        v73 = *(a2 + 4);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = v73;
      }

      a1[10] = a2[10];
      *(a1 + 88) = *(a2 + 88);
      goto LABEL_33;
    case 6u:
      *a1 = *a2;
      v57 = a2[2];
      a1[1] = a2[1];
      a1[2] = v57;
      v58 = a2[4];
      a1[3] = a2[3];
      a1[4] = v58;
      v59 = a2[6];
      a1[5] = a2[5];
      a1[6] = v59;
      v60 = a2[8];
      a1[7] = a2[7];
      a1[8] = v60;
      v61 = a2[10];
      a1[9] = a2[9];
      a1[10] = v61;
      a1[11] = a2[11];
      *(a1 + 96) = *(a2 + 96);

      sub_1DD0DCF8C();
    case 7u:
      *a1 = *a2;
      v40 = a2[1];
      v41 = a2[2];
      a1[1] = v40;
      a1[2] = v41;
      v42 = a2[3];
      v43 = v40;
      sub_1DD0DCF8C();
    case 8u:
      *a1 = *a2;
      v64 = a2[2];
      a1[1] = a2[1];
      a1[2] = v64;
      v65 = a2[4];
      a1[3] = a2[3];
      a1[4] = v65;
      a1[5] = a2[5];
      *(a1 + 48) = *(a2 + 48);
      v66 = a2[10];
      sub_1DD0DCF8C();
    case 9u:
      *a1 = *a2;
      v28 = a2[2];
      a1[1] = a2[1];
      a1[2] = v28;
      a1[3] = a2[3];
      *(a1 + 32) = *(a2 + 32);
      v29 = a2[8];
      sub_1DD0DCF8C();
    case 0xAu:
      *a1 = *a2;
      v62 = a2[2];
      a1[1] = a2[1];
      a1[2] = v62;
      a1[3] = a2[3];
      *(a1 + 32) = *(a2 + 32);
      v63 = a2[8];
      sub_1DD0DCF8C();
    case 0xBu:
      *a1 = *a2;
      v13 = a2[2];
      a1[1] = a2[1];
      a1[2] = v13;
      v14 = a2[4];
      a1[3] = a2[3];
      a1[4] = v14;
      a1[5] = a2[5];
      v15 = a2[9];

      sub_1DD0DCF8C();
    case 0xCu:
      *a1 = *a2;
      v22 = a2[2];
      a1[1] = a2[1];
      a1[2] = v22;
      v23 = a2[4];
      a1[3] = a2[3];
      a1[4] = v23;
      v24 = a2[6];
      a1[5] = a2[5];
      a1[6] = v24;
      v25 = a2[8];
      a1[7] = a2[7];
      a1[8] = v25;
      v26 = a2[10];
      a1[9] = a2[9];
      a1[10] = v26;
      v27 = a2[12];
      a1[11] = a2[11];
      a1[12] = v27;
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 26) = *(a2 + 26);

      sub_1DD0DCF8C();
    case 0xDu:
      v54 = a2[1];
      *a1 = *a2;
      a1[1] = v54;
      v55 = a2[2];
      v56 = a2[3];
      a1[2] = v55;
      a1[3] = v56;

      goto LABEL_33;
    case 0xEu:
    case 0x11u:
      v12 = a2[1];
      *a1 = *a2;
      a1[1] = v12;

      goto LABEL_33;
    case 0xFu:
      v34 = a2[1];
      *a1 = *a2;
      a1[1] = v34;
      a1[2] = a2[2];
      *(a1 + 24) = *(a2 + 24);

      goto LABEL_33;
    case 0x10u:
    case 0x12u:
      v9 = a2[1];
      *a1 = *a2;
      a1[1] = v9;
      v10 = a2[2];
      a1[2] = v10;

      v11 = v10;
      goto LABEL_33;
    case 0x13u:
      v67 = *a2;
      *a1 = *a2;
      v68 = v67;
LABEL_33:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v47 = *(v5 + 64);

      result = memcpy(a1, a2, v47);
      break;
  }

  return result;
}

void *assignWithCopy for SiriKitEventPayload(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCB22AA4(a1);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        *(a1 + 24) = *(a2 + 24);
        v6 = a2[7];

        if (v6)
        {
          a1[7] = v6;
          a1[8] = a2[8];
          (**(v6 - 8))((a1 + 4), (a2 + 4), v6);
        }

        else
        {
          v40 = *(a2 + 2);
          v41 = *(a2 + 3);
          a1[8] = a2[8];
          *(a1 + 2) = v40;
          *(a1 + 3) = v41;
        }

        a1[9] = a2[9];

        v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
        v43 = sub_1DD0DD2FC();
        if (__swift_getEnumTagSinglePayload(a2 + v42, 1, v43))
        {
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
          memcpy(a1 + v42, a2 + v42, *(*(v44 - 8) + 64));
        }

        else
        {
          (*(*(v43 - 8) + 16))(a1 + v42, a2 + v42, v43);
          __swift_storeEnumTagSinglePayload(a1 + v42, 0, 1, v43);
        }

        goto LABEL_32;
      case 1u:
        v27 = *a2;
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        v28 = v27;

        goto LABEL_32;
      case 2u:
        *a1 = *a2;
        v17 = a2[1];
        a1[1] = v17;
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        a1[5] = a2[5];
        v18 = a2[6];
        *(a1 + 56) = *(a2 + 56);
        a1[6] = v18;

        v19 = v17;

        goto LABEL_32;
      case 3u:
        *a1 = *a2;
        v21 = a2[1];
        a1[1] = v21;
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        a1[5] = a2[5];
        v22 = a2[6];
        *(a1 + 56) = *(a2 + 56);
        a1[6] = v22;
        v23 = v21;

        goto LABEL_32;
      case 4u:
        v10 = a2[3];
        a1[3] = v10;
        (**(v10 - 8))(a1, a2);
        v11 = a2[4];
        a1[4] = v11;
        a1[5] = a2[5];
        a1[6] = a2[6];
        a1[7] = a2[7];
        a1[8] = a2[8];
        v12 = a2[9];
        *(a1 + 80) = *(a2 + 80);
        a1[9] = v12;
        v13 = v11;

        goto LABEL_32;
      case 5u:
        *a1 = *a2;
        v31 = a2[1];
        a1[1] = v31;
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        a1[5] = a2[5];
        v32 = a2[9];
        v33 = v31;

        if (v32)
        {
          a1[9] = v32;
          (**(v32 - 8))((a1 + 6), (a2 + 6), v32);
        }

        else
        {
          v45 = *(a2 + 4);
          *(a1 + 3) = *(a2 + 3);
          *(a1 + 4) = v45;
        }

        v46 = a2[10];
        *(a1 + 88) = *(a2 + 88);
        a1[10] = v46;
        goto LABEL_32;
      case 6u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        a1[5] = a2[5];
        a1[6] = a2[6];
        a1[7] = a2[7];
        a1[8] = a2[8];
        a1[9] = a2[9];
        a1[10] = a2[10];
        a1[11] = a2[11];
        *(a1 + 96) = *(a2 + 96);

        sub_1DD0DCF8C();
      case 7u:
        *a1 = *a2;
        v24 = a2[1];
        a1[1] = v24;
        a1[2] = a2[2];
        v25 = a2[3];
        v26 = v24;
        sub_1DD0DCF8C();
      case 8u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        v36 = a2[5];
        *(a1 + 48) = *(a2 + 48);
        a1[5] = v36;
        v37 = a2[10];
        sub_1DD0DCF8C();
      case 9u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        v15 = a2[3];
        *(a1 + 32) = *(a2 + 32);
        a1[3] = v15;
        v16 = a2[8];
        sub_1DD0DCF8C();
      case 0xAu:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        v34 = a2[3];
        *(a1 + 32) = *(a2 + 32);
        a1[3] = v34;
        v35 = a2[8];
        sub_1DD0DCF8C();
      case 0xBu:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        a1[5] = a2[5];
        v9 = a2[9];

        sub_1DD0DCF8C();
      case 0xCu:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        a1[5] = a2[5];
        a1[6] = a2[6];
        a1[7] = a2[7];
        a1[8] = a2[8];
        a1[9] = a2[9];
        a1[10] = a2[10];
        a1[11] = a2[11];
        a1[12] = a2[12];
        v14 = *(a2 + 26);
        *(a1 + 108) = *(a2 + 108);
        *(a1 + 26) = v14;

        sub_1DD0DCF8C();
      case 0xDu:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];

        goto LABEL_32;
      case 0xEu:
      case 0x11u:
        *a1 = *a2;
        a1[1] = a2[1];

        goto LABEL_32;
      case 0xFu:
        *a1 = *a2;
        a1[1] = a2[1];
        v20 = a2[2];
        *(a1 + 24) = *(a2 + 24);
        a1[2] = v20;

        goto LABEL_32;
      case 0x10u:
      case 0x12u:
        *a1 = *a2;
        a1[1] = a2[1];
        v7 = a2[2];
        a1[2] = v7;

        v8 = v7;
        goto LABEL_32;
      case 0x13u:
        v38 = *a2;
        *a1 = *a2;
        v39 = v38;
LABEL_32:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v29 = *(*(a3 - 8) + 64);

        return memcpy(a1, a2, v29);
    }
  }

  return a1;
}

_BYTE *initializeWithTake for SiriKitEventPayload(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    a1[24] = a2[24];
    v8 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v8;
    v9 = *(a2 + 9);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 9) = v9;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
    v11 = sub_1DD0DD2FC();
    if (__swift_getEnumTagSinglePayload(&a2[v10], 1, v11))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
      memcpy(&a1[v10], &a2[v10], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
      __swift_storeEnumTagSinglePayload(&a1[v10], 0, 1, v11);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *assignWithTake for SiriKitEventPayload(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCB22AA4(a1);
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    a1[24] = a2[24];
    v8 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v8;
    v9 = *(a2 + 9);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 9) = v9;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
    v11 = sub_1DD0DD2FC();
    if (__swift_getEnumTagSinglePayload(&a2[v10], 1, v11))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
      memcpy(&a1[v10], &a2[v10], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
      __swift_storeEnumTagSinglePayload(&a1[v10], 0, 1, v11);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void sub_1DCFA63E8()
{
  sub_1DCFA6558();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_getTupleTypeLayout();
    v4 = &v3;
    v5 = &unk_1DD1066E0;
    v6 = &unk_1DD1066F8;
    v7 = &unk_1DD1066F8;
    v8 = &unk_1DD106710;
    v9 = &unk_1DD106728;
    v10 = &unk_1DD106740;
    v11 = &unk_1DD106728;
    v12 = &unk_1DD106758;
    v13 = &unk_1DD106740;
    v14 = &unk_1DD106770;
    v15 = &unk_1DD106788;
    v16 = &unk_1DD1067A0;
    v17 = &unk_1DD1067B8;
    v18 = &unk_1DD106680;
    v19 = &unk_1DD1067D0;
    v20 = &unk_1DD1067E8;
    v21 = &unk_1DD106680;
    v22 = &unk_1DD1067E8;
    v23 = MEMORY[0x1E69E5CE0] + 64;
    swift_initEnumMetadataMultiPayload();
  }
}

void sub_1DCFA6558()
{
  if (!qword_1EDE4F6B8)
  {
    sub_1DD0DD2FC();
    v0 = sub_1DD0DE97C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE4F6B8);
    }
  }
}

uint64_t sub_1DCFA65C8()
{
  result = type metadata accessor for SiriKitEventPayload(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1DD0DAFDC();
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

_BYTE *storeEnumTagSinglePayload for SiriKitEventSender(_BYTE *result, int a2, int a3)
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

void sub_1DCFA6B38(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30 = type metadata accessor for SiriKitEventPayload(0);
  v16 = OUTLINED_FUNCTION_2(v30);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  OUTLINED_FUNCTION_16();
  v22 = v21 - v20;
  v29 = *a7;
  v32 = *a2;
  v23 = v32;
  v24 = (*(a11 + 304))(&v32, a5, a6, a10, a11);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  *v22 = v23;
  *(v22 + 8) = a3;
  *(v22 + 16) = a5;
  *(v22 + 24) = 0;
  *(v22 + 32) = 1;
  if (v24)
  {
    v26 = type metadata accessor for DefaultFlowActivity();
    v27 = sub_1DCCAE20C();
  }

  else
  {
    v26 = 0;
    v27 = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
  }

  *(v22 + 40) = v24;
  *(v22 + 64) = v26;
  *(v22 + 72) = v27;
  type metadata accessor for SiriKitEvent(0);
  *(v22 + 80) = a8;
  *(v22 + 88) = a9;
  *(v22 + 96) = v29;
  swift_storeEnumTagMultiPayload();

  sub_1DD0DCF8C();
}

void sub_1DCFA6D00(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, char a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v36 = type metadata accessor for SiriKitEventPayload(0);
  v18 = OUTLINED_FUNCTION_2(v36);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  OUTLINED_FUNCTION_16();
  v24 = v23 - v22;
  v34 = *a6;
  v35 = *a10;
  v26 = *(a10 + 4);
  v37 = *a2;
  v25 = v37;
  v27 = (*(a14 + 304))(&v37, a5, a9, a13, a14);
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  *v24 = v25;
  *(v24 + 8) = a3;
  *(v24 + 16) = a5;
  *(v24 + 24) = a7;
  *(v24 + 32) = a8 & 1;
  if (v27)
  {
    v29 = type metadata accessor for DefaultFlowActivity();
    v30 = sub_1DCCAE20C();
  }

  else
  {
    v29 = 0;
    v30 = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
  }

  *(v24 + 40) = v27;
  *(v24 + 64) = v29;
  *(v24 + 72) = v30;
  type metadata accessor for SiriKitEvent(0);
  *(v24 + 80) = v35;
  *(v24 + 88) = v26;
  *(v24 + 96) = a11;
  *(v24 + 104) = a12;
  *(v24 + 112) = v34;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

void sub_1DCFA6EF4(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, char a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v37 = type metadata accessor for SiriKitEventPayload(0);
  v20 = OUTLINED_FUNCTION_2(v37);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  OUTLINED_FUNCTION_16();
  v26 = v25 - v24;
  v36 = *a8;
  v38 = *a12;
  v28 = *(a12 + 4);
  v39[0] = *a2;
  v27 = v39[0];
  v29 = (*(a16 + 312))(v39, a5, a11, a15, a16);
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  *v26 = v27;
  *(v26 + 8) = a3;
  *(v26 + 16) = a5;
  *(v26 + 24) = a6;
  *(v26 + 32) = a7;
  *(v26 + 40) = a9;
  *(v26 + 48) = a10 & 1;
  if (v29)
  {
    v31 = type metadata accessor for DefaultFlowActivity();
    v32 = sub_1DCCAE20C();
  }

  else
  {
    v31 = 0;
    v32 = 0;
    *(v26 + 64) = 0;
    *(v26 + 72) = 0;
  }

  *(v26 + 56) = v29;
  *(v26 + 80) = v31;
  *(v26 + 88) = v32;
  type metadata accessor for SiriKitEvent(0);
  *(v26 + 96) = v38;
  *(v26 + 104) = v28;
  *(v26 + 112) = a13;
  *(v26 + 120) = a14;
  *(v26 + 128) = v36;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

void sub_1DCFA7174()
{
  v1 = *v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCFA7348(void *a1, char a2)
{
  v3 = *(v2 + 80);
  *(v2 + 80) = a1;
  v4 = *(v2 + 88);
  *(v2 + 88) = a2;
  sub_1DCC93338(a1);
  sub_1DCC22568(v3);
  sub_1DCFA7174();
}

uint64_t sub_1DCFA7418(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCFA7438, 0, 0);
}

uint64_t sub_1DCFA7438()
{
  v1 = v0[16];
  if (!*(v1 + 80))
  {
    v7 = *(v1 + 56);
    v8 = sub_1DD0DD1BC();
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      v12 = v0[16];
      sub_1DCFA78F0((v0 + 9));
      v14 = *(v12 + 64);
      v13 = *(v12 + 72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1DD0E07C0;
      *(v15 + 32) = v10;
      *(v15 + 40) = v11;
      v16 = v14();

      if (v16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26B0, &qword_1DD0FF8A0);
        swift_initStackObject();
        sub_1DCC4A9D8();
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v24 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v24, qword_1EDE57E00);
      v25 = sub_1DD0DD8EC();
      v26 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v25, v26))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v27, v28, "[SiriKitFixedAppResolutionFlow] Flow is configured to bypass authorization guards");
        OUTLINED_FUNCTION_80();
      }

      v29 = v0[15];
      v30 = v0[16];

      sub_1DCFA7348(1, 0);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v17 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v17, qword_1EDE57E00);
    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v18, v19))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_80();
    }

    v22 = v0[15];
    v23 = v0[16];

    sub_1DCFA7348(1, 0);
  }

  v2 = v0[15];
  v3 = type metadata accessor for ExecuteResponse(0);
  v4 = *(v3 + 36);
  v5 = type metadata accessor for PluginAction();
  __swift_storeEnumTagSinglePayload(v2 + v4, 1, 1, v5);
  *v2 = 1;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = 0;
  *(v2 + 48) = -4;
  v6 = (v2 + *(v3 + 40));
  *v6 = 0u;
  v6[1] = 0u;
  v31 = v0[1];

  return v31();
}

uint64_t sub_1DCFA78F0@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1DCEC8974(v1 + 16, &v4);
  if (!v5)
  {
    sub_1DCEC89E4(&v4);
    type metadata accessor for EnvironmentSummoner();
    swift_initStaticObject();
    sub_1DCEC8A4C(&qword_1EDE48A98, type metadata accessor for EnvironmentSummoner);
    sub_1DD0DCB0C();
  }

  sub_1DCB18FF0(&v4, &v6);
  return sub_1DCB18FF0(&v6, a1);
}

void sub_1DCFA7AA4(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v1 = *a1;
    v2 = *a1;
    v3 = v1;
    v4 = 1;
  }

  else
  {
    v3 = 1;
    v4 = 0;
  }

  sub_1DCFA7348(v3, v4);
}

uint64_t sub_1DCFA7AF4(uint64_t a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x74656C706D6F632ELL;
  }

  MEMORY[0x1E12A6780](0x2864656C6961662ELL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  MEMORY[0x1E12A6780](10537, 0xE200000000000000);
  return 0;
}

uint64_t sub_1DCFA7BD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v1 + 8);
  return sub_1DCFA7AF4(*v1);
}

uint64_t sub_1DCFA7BE8()
{
  sub_1DCEC89E4(v0 + 16);
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  v3 = *(v0 + 88);
  sub_1DCC22568(*(v0 + 80));
  return v0;
}

uint64_t sub_1DCFA7C24()
{
  sub_1DCFA7BE8();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCFA7C70(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 < 0xFFFFFFFFuLL)
  {
    *a1 = *a2;
  }

  else
  {
    v5 = v4;
    *a1 = v4;
  }

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t sub_1DCFA7CD0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 < 0xFFFFFFFF)
  {
    if (v5 >= 0xFFFFFFFF)
    {
      v8 = v5;
      *a1 = v5;
      goto LABEL_6;
    }

LABEL_8:
    v9 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a1 = v9;
    return a1;
  }

  if (v5 < 0xFFFFFFFF)
  {

    goto LABEL_8;
  }

  v6 = v5;
  v7 = *a1;
  *a1 = v5;

LABEL_6:
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t sub_1DCFA7D70(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4 < 0xFFFFFFFF)
  {
    goto LABEL_5;
  }

  if (*a2 < 0xFFFFFFFFuLL)
  {

LABEL_5:
    *a1 = *a2;
    goto LABEL_6;
  }

  *a1 = *a2;

LABEL_6:
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t sub_1DCFA7DD8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 9))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCFA7E2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DCFA7E8C(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1DCFA7EC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1DCEC8974(v3 + 16, a1);
}

uint64_t sub_1DCFA7F10(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1DCEC8A94(a1, v3 + 16);
  return swift_endAccess();
}

uint64_t (*sub_1DCFA7F64())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1DCFA7FDC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB193FC;

  return sub_1DCFA7418(a1);
}

uint64_t SiriKitFlowFrameInput.confirmationState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SiriKitFlowFrameInput();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for SiriKitFlowFrameInput()
{
  result = qword_1EDE4F2B0;
  if (!qword_1EDE4F2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriKitFlowFrameInput.parameterMetadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriKitFlowFrameInput() + 24));
}

uint64_t SiriKitFlowFrameInput.appResolutionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SiriKitFlowFrameInput() + 28);

  return sub_1DCB17CA0(v3, a1);
}

uint64_t SiriKitFlowFrameInput.init(parse:confirmationState:parameterMetadata:appResolutionState:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  sub_1DCB541FC(a1, a5);
  v9 = type metadata accessor for SiriKitFlowFrameInput();
  *(a5 + v9[5]) = v8;
  *(a5 + v9[6]) = a3;
  v10 = a5 + v9[7];

  return sub_1DCAFF9E8(a4, v10);
}

char *initializeBufferWithCopyOfBuffer for SiriKitFlowFrameInput(char *a1, char *a2, int *a3)
{
  if ((*(*(a3 - 1) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v7 = sub_1DD0DC76C();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      goto LABEL_27;
    case 1u:
      v16 = sub_1DD0DC76C();
      (*(*(v16 - 8) + 16))(a1, a2, v16);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&a1[*(v17 + 48)] = *&a2[*(v17 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v10 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v10;
      *(a1 + 2) = *(a2 + 2);

      goto LABEL_27;
    case 3u:
      *a1 = *a2;
      swift_unknownObjectRetain();
      goto LABEL_27;
    case 4u:
      v8 = sub_1DD0DB1EC();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      goto LABEL_27;
    case 5u:
      v18 = *a2;
      *a1 = *a2;
      v19 = v18;
      goto LABEL_27;
    case 6u:
      v20 = sub_1DD0DB4BC();
      (*(*(v20 - 8) + 16))(a1, a2, v20);
      v21 = type metadata accessor for USOParse();
      v22 = v21[5];
      v23 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v22], 1, v23))
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v22], &a2[v22], *(*(v24 - 8) + 64));
      }

      else
      {
        (*(*(v23 - 8) + 16))(&a1[v22], &a2[v22], v23);
        __swift_storeEnumTagSinglePayload(&a1[v22], 0, 1, v23);
      }

      v56 = v21[6];
      v57 = &a1[v56];
      v58 = &a2[v56];
      v59 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v59;
      v60 = v21[7];
      v61 = &a1[v60];
      v62 = &a2[v60];
      v61[4] = v62[4];
      *v61 = *v62;

      goto LABEL_27;
    case 7u:
      v11 = sub_1DD0DB4BC();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      v12 = type metadata accessor for USOParse();
      v13 = v12[5];
      v14 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v13], 1, v14))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v13], &a2[v13], *(*(v15 - 8) + 64));
      }

      else
      {
        (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
        __swift_storeEnumTagSinglePayload(&a1[v13], 0, 1, v14);
      }

      v36 = v12[6];
      v37 = &a1[v36];
      v38 = &a2[v36];
      v39 = *(v38 + 1);
      *v37 = *v38;
      *(v37 + 1) = v39;
      v40 = v12[7];
      v41 = &a1[v40];
      v42 = &a2[v40];
      v41[4] = v42[4];
      *v41 = *v42;
      v43 = type metadata accessor for LinkParse();
      v44 = v43[5];
      v45 = &a1[v44];
      v46 = &a2[v44];
      v47 = *(v46 + 1);
      *v45 = *v46;
      *(v45 + 1) = v47;
      v48 = v43[6];
      v49 = &a1[v48];
      v50 = &a2[v48];
      v51 = *(v50 + 1);
      *v49 = *v50;
      *(v49 + 1) = v51;
      v52 = v43[7];
      v53 = &a1[v52];
      v54 = &a2[v52];
      v55 = *(v54 + 1);
      *v53 = *v54;
      *(v53 + 1) = v55;

      goto LABEL_27;
    case 8u:
      v25 = sub_1DD0DD12C();
      (*(*(v25 - 8) + 16))(a1, a2, v25);
      v26 = type metadata accessor for NLRouterParse();
      v27 = v26[5];
      v28 = &a1[v27];
      v29 = &a2[v27];
      v30 = *(v29 + 1);
      *v28 = *v29;
      *(v28 + 1) = v30;
      v31 = v26[6];
      v32 = &a1[v31];
      v33 = &a2[v31];
      v34 = type metadata accessor for USOParse();

      if (__swift_getEnumTagSinglePayload(v33, 1, v34))
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v32, v33, *(*(v35 - 8) + 64));
      }

      else
      {
        v63 = sub_1DD0DB4BC();
        (*(*(v63 - 8) + 16))(v32, v33, v63);
        v64 = v34[5];
        v65 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v33[v64], 1, v65))
        {
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v32[v64], &v33[v64], *(*(v66 - 8) + 64));
        }

        else
        {
          (*(*(v65 - 8) + 16))(&v32[v64], &v33[v64], v65);
          __swift_storeEnumTagSinglePayload(&v32[v64], 0, 1, v65);
        }

        v67 = v34[6];
        v68 = &v32[v67];
        v69 = &v33[v67];
        v70 = *(v69 + 1);
        *v68 = *v69;
        *(v68 + 1) = v70;
        v71 = v34[7];
        v72 = &v32[v71];
        v73 = &v33[v71];
        v72[4] = v73[4];
        *v72 = *v73;

        __swift_storeEnumTagSinglePayload(v32, 0, 1, v34);
      }

      v74 = v26[7];
      v75 = *&a2[v74];
      *&a1[v74] = v75;
      v76 = v75;
      goto LABEL_27;
    case 9u:
      v9 = sub_1DD0DD08C();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(a1, a2, *(*(v6 - 8) + 64));
      break;
  }

  v77 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v77] = *&a2[v77];
  v78 = a3[7];
  v79 = &a1[v78];
  v80 = &a2[v78];
  v81 = *(v80 + 24);
  *&a1[v78 + 24] = v81;
  v82 = v81;
  v83 = **(v81 - 8);

  v83(v79, v80, v82);
  return a1;
}

uint64_t destroy for SiriKitFlowFrameInput(char *a1, uint64_t a2)
{
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v4 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v17 = sub_1DD0DC76C();
      (*(*(v17 - 8) + 8))(a1, v17);
      v18 = *&a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

      break;
    case 2u:
      v5 = *(a1 + 1);

      v6 = *(a1 + 2);
      goto LABEL_17;
    case 3u:
      v7 = *a1;
      swift_unknownObjectRelease();
      break;
    case 4u:
      v4 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v19 = *a1;
      goto LABEL_23;
    case 6u:
      v20 = sub_1DD0DB4BC();
      (*(*(v20 - 8) + 8))(a1, v20);
      v21 = type metadata accessor for USOParse();
      v22 = *(v21 + 20);
      v23 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(&a1[v22], 1, v23))
      {
        (*(*(v23 - 8) + 8))(&a1[v22], v23);
      }

      v16 = *(v21 + 24);
      goto LABEL_16;
    case 7u:
      v8 = sub_1DD0DB4BC();
      (*(*(v8 - 8) + 8))(a1, v8);
      v9 = type metadata accessor for USOParse();
      v10 = *(v9 + 20);
      v11 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(&a1[v10], 1, v11))
      {
        (*(*(v11 - 8) + 8))(&a1[v10], v11);
      }

      v12 = *&a1[*(v9 + 24) + 8];

      v13 = type metadata accessor for LinkParse();
      v14 = *&a1[v13[5] + 8];

      v15 = *&a1[v13[6] + 8];

      v16 = v13[7];
LABEL_16:
      v24 = *&a1[v16 + 8];
LABEL_17:

      break;
    case 8u:
      v25 = sub_1DD0DD12C();
      (*(*(v25 - 8) + 8))(a1, v25);
      v26 = type metadata accessor for NLRouterParse();
      v27 = *&a1[v26[5] + 8];

      v28 = &a1[v26[6]];
      v29 = type metadata accessor for USOParse();
      if (!__swift_getEnumTagSinglePayload(v28, 1, v29))
      {
        v30 = sub_1DD0DB4BC();
        (*(*(v30 - 8) + 8))(v28, v30);
        v31 = *(v29 + 20);
        v32 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(v28 + v31, 1, v32))
        {
          (*(*(v32 - 8) + 8))(v28 + v31, v32);
        }

        v33 = *(v28 + *(v29 + 24) + 8);
      }

      v19 = *&a1[v26[7]];
LABEL_23:

      break;
    case 9u:
      v4 = sub_1DD0DD08C();
LABEL_5:
      (*(*(v4 - 8) + 8))(a1, v4);
      break;
    default:
      break;
  }

  v34 = *&a1[*(a2 + 24)];

  v35 = &a1[*(a2 + 28)];

  return __swift_destroy_boxed_opaque_existential_1Tm(v35);
}

char *initializeWithCopy for SiriKitFlowFrameInput(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v7 = sub_1DD0DC76C();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      goto LABEL_25;
    case 1u:
      v16 = sub_1DD0DC76C();
      (*(*(v16 - 8) + 16))(a1, a2, v16);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&a1[*(v17 + 48)] = *&a2[*(v17 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v10 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v10;
      *(a1 + 2) = *(a2 + 2);

      goto LABEL_25;
    case 3u:
      *a1 = *a2;
      swift_unknownObjectRetain();
      goto LABEL_25;
    case 4u:
      v8 = sub_1DD0DB1EC();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      goto LABEL_25;
    case 5u:
      v18 = *a2;
      *a1 = *a2;
      v19 = v18;
      goto LABEL_25;
    case 6u:
      v20 = sub_1DD0DB4BC();
      (*(*(v20 - 8) + 16))(a1, a2, v20);
      v21 = type metadata accessor for USOParse();
      v22 = v21[5];
      v23 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v22], 1, v23))
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v22], &a2[v22], *(*(v24 - 8) + 64));
      }

      else
      {
        (*(*(v23 - 8) + 16))(&a1[v22], &a2[v22], v23);
        __swift_storeEnumTagSinglePayload(&a1[v22], 0, 1, v23);
      }

      v56 = v21[6];
      v57 = &a1[v56];
      v58 = &a2[v56];
      v59 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v59;
      v60 = v21[7];
      v61 = &a1[v60];
      v62 = &a2[v60];
      v61[4] = v62[4];
      *v61 = *v62;

      goto LABEL_25;
    case 7u:
      v11 = sub_1DD0DB4BC();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      v12 = type metadata accessor for USOParse();
      v13 = v12[5];
      v14 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v13], 1, v14))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v13], &a2[v13], *(*(v15 - 8) + 64));
      }

      else
      {
        (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
        __swift_storeEnumTagSinglePayload(&a1[v13], 0, 1, v14);
      }

      v36 = v12[6];
      v37 = &a1[v36];
      v38 = &a2[v36];
      v39 = *(v38 + 1);
      *v37 = *v38;
      *(v37 + 1) = v39;
      v40 = v12[7];
      v41 = &a1[v40];
      v42 = &a2[v40];
      v41[4] = v42[4];
      *v41 = *v42;
      v43 = type metadata accessor for LinkParse();
      v44 = v43[5];
      v45 = &a1[v44];
      v46 = &a2[v44];
      v47 = *(v46 + 1);
      *v45 = *v46;
      *(v45 + 1) = v47;
      v48 = v43[6];
      v49 = &a1[v48];
      v50 = &a2[v48];
      v51 = *(v50 + 1);
      *v49 = *v50;
      *(v49 + 1) = v51;
      v52 = v43[7];
      v53 = &a1[v52];
      v54 = &a2[v52];
      v55 = *(v54 + 1);
      *v53 = *v54;
      *(v53 + 1) = v55;

      goto LABEL_25;
    case 8u:
      v25 = sub_1DD0DD12C();
      (*(*(v25 - 8) + 16))(a1, a2, v25);
      v26 = type metadata accessor for NLRouterParse();
      v27 = v26[5];
      v28 = &a1[v27];
      v29 = &a2[v27];
      v30 = *(v29 + 1);
      *v28 = *v29;
      *(v28 + 1) = v30;
      v31 = v26[6];
      v32 = &a1[v31];
      v33 = &a2[v31];
      v34 = type metadata accessor for USOParse();

      if (__swift_getEnumTagSinglePayload(v33, 1, v34))
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v32, v33, *(*(v35 - 8) + 64));
      }

      else
      {
        v63 = sub_1DD0DB4BC();
        (*(*(v63 - 8) + 16))(v32, v33, v63);
        v64 = v34[5];
        v65 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v33[v64], 1, v65))
        {
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v32[v64], &v33[v64], *(*(v66 - 8) + 64));
        }

        else
        {
          (*(*(v65 - 8) + 16))(&v32[v64], &v33[v64], v65);
          __swift_storeEnumTagSinglePayload(&v32[v64], 0, 1, v65);
        }

        v67 = v34[6];
        v68 = &v32[v67];
        v69 = &v33[v67];
        v70 = *(v69 + 1);
        *v68 = *v69;
        *(v68 + 1) = v70;
        v71 = v34[7];
        v72 = &v32[v71];
        v73 = &v33[v71];
        v72[4] = v73[4];
        *v72 = *v73;

        __swift_storeEnumTagSinglePayload(v32, 0, 1, v34);
      }

      v74 = v26[7];
      v75 = *&a2[v74];
      *&a1[v74] = v75;
      v76 = v75;
      goto LABEL_25;
    case 9u:
      v9 = sub_1DD0DD08C();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
LABEL_25:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(a1, a2, *(*(v6 - 8) + 64));
      break;
  }

  v77 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v77] = *&a2[v77];
  v78 = a3[7];
  v79 = &a1[v78];
  v80 = &a2[v78];
  v81 = *(v80 + 24);
  *&a1[v78 + 24] = v81;
  v82 = v81;
  v83 = **(v81 - 8);

  v83(v79, v80, v82);
  return a1;
}

char *assignWithCopy for SiriKitFlowFrameInput(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_1DCB29EBC(a1);
    v6 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v7 = sub_1DD0DC76C();
        (*(*(v7 - 8) + 16))(a1, a2, v7);
        goto LABEL_26;
      case 1u:
        v15 = sub_1DD0DC76C();
        (*(*(v15 - 8) + 16))(a1, a2, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&a1[*(v16 + 48)] = *&a2[*(v16 + 48)];
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);

        goto LABEL_26;
      case 3u:
        *a1 = *a2;
        swift_unknownObjectRetain();
        goto LABEL_26;
      case 4u:
        v8 = sub_1DD0DB1EC();
        (*(*(v8 - 8) + 16))(a1, a2, v8);
        goto LABEL_26;
      case 5u:
        v17 = *a2;
        *a1 = *a2;
        v18 = v17;
        goto LABEL_26;
      case 6u:
        v19 = sub_1DD0DB4BC();
        (*(*(v19 - 8) + 16))(a1, a2, v19);
        v20 = type metadata accessor for USOParse();
        v21 = v20[5];
        v22 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v21], 1, v22))
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v21], &a2[v21], *(*(v23 - 8) + 64));
        }

        else
        {
          (*(*(v22 - 8) + 16))(&a1[v21], &a2[v21], v22);
          __swift_storeEnumTagSinglePayload(&a1[v21], 0, 1, v22);
        }

        v51 = v20[6];
        v52 = &a1[v51];
        v53 = &a2[v51];
        *v52 = *v53;
        *(v52 + 1) = *(v53 + 1);
        v54 = v20[7];
        v55 = &a1[v54];
        v56 = &a2[v54];
        v57 = *v56;
        v55[4] = v56[4];
        *v55 = v57;

        goto LABEL_26;
      case 7u:
        v10 = sub_1DD0DB4BC();
        (*(*(v10 - 8) + 16))(a1, a2, v10);
        v11 = type metadata accessor for USOParse();
        v12 = v11[5];
        v13 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v12], 1, v13))
        {
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v12], &a2[v12], *(*(v14 - 8) + 64));
        }

        else
        {
          (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
          __swift_storeEnumTagSinglePayload(&a1[v12], 0, 1, v13);
        }

        v34 = v11[6];
        v35 = &a1[v34];
        v36 = &a2[v34];
        *v35 = *v36;
        *(v35 + 1) = *(v36 + 1);
        v37 = v11[7];
        v38 = &a1[v37];
        v39 = &a2[v37];
        v40 = *v39;
        v38[4] = v39[4];
        *v38 = v40;
        v41 = type metadata accessor for LinkParse();
        v42 = v41[5];
        v43 = &a1[v42];
        v44 = &a2[v42];
        *v43 = *v44;
        *(v43 + 1) = *(v44 + 1);
        v45 = v41[6];
        v46 = &a1[v45];
        v47 = &a2[v45];
        *v46 = *v47;
        *(v46 + 1) = *(v47 + 1);
        v48 = v41[7];
        v49 = &a1[v48];
        v50 = &a2[v48];
        *v49 = *v50;
        *(v49 + 1) = *(v50 + 1);

        goto LABEL_26;
      case 8u:
        v24 = sub_1DD0DD12C();
        (*(*(v24 - 8) + 16))(a1, a2, v24);
        v25 = type metadata accessor for NLRouterParse();
        v26 = v25[5];
        v27 = &a1[v26];
        v28 = &a2[v26];
        *v27 = *v28;
        *(v27 + 1) = *(v28 + 1);
        v29 = v25[6];
        v30 = &a1[v29];
        v31 = &a2[v29];
        v32 = type metadata accessor for USOParse();

        if (__swift_getEnumTagSinglePayload(v31, 1, v32))
        {
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v30, v31, *(*(v33 - 8) + 64));
        }

        else
        {
          v58 = sub_1DD0DB4BC();
          (*(*(v58 - 8) + 16))(v30, v31, v58);
          v59 = v32[5];
          v60 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v31[v59], 1, v60))
          {
            v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v30[v59], &v31[v59], *(*(v61 - 8) + 64));
          }

          else
          {
            (*(*(v60 - 8) + 16))(&v30[v59], &v31[v59], v60);
            __swift_storeEnumTagSinglePayload(&v30[v59], 0, 1, v60);
          }

          v62 = v32[6];
          v63 = &v30[v62];
          v64 = &v31[v62];
          *v63 = *v64;
          *(v63 + 1) = *(v64 + 1);
          v65 = v32[7];
          v66 = &v30[v65];
          v67 = &v31[v65];
          v68 = *v67;
          v66[4] = v67[4];
          *v66 = v68;

          __swift_storeEnumTagSinglePayload(v30, 0, 1, v32);
        }

        v69 = v25[7];
        v70 = *&a2[v69];
        *&a1[v69] = v70;
        v71 = v70;
        goto LABEL_26;
      case 9u:
        v9 = sub_1DD0DD08C();
        (*(*(v9 - 8) + 16))(a1, a2, v9);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        break;
    }
  }

  a1[a3[5]] = a2[a3[5]];
  v72 = a3[6];
  v73 = *&a1[v72];
  *&a1[v72] = *&a2[v72];

  __swift_assign_boxed_opaque_existential_1(&a1[a3[7]], &a2[a3[7]]);
  return a1;
}

char *initializeWithTake for SiriKitFlowFrameInput(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v7 = sub_1DD0DC76C();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      goto LABEL_22;
    case 1u:
      v15 = sub_1DD0DC76C();
      (*(*(v15 - 8) + 32))(a1, a2, v15);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&a1[*(v16 + 48)] = *&a2[*(v16 + 48)];
      goto LABEL_22;
    case 4u:
      v18 = sub_1DD0DB1EC();
      (*(*(v18 - 8) + 32))(a1, a2, v18);
      goto LABEL_22;
    case 6u:
      v19 = sub_1DD0DB4BC();
      (*(*(v19 - 8) + 32))(a1, a2, v19);
      v20 = type metadata accessor for USOParse();
      v21 = v20[5];
      v22 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v21], 1, v22))
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v21], &a2[v21], *(*(v23 - 8) + 64));
      }

      else
      {
        (*(*(v22 - 8) + 32))(&a1[v21], &a2[v21], v22);
        __swift_storeEnumTagSinglePayload(&a1[v21], 0, 1, v22);
      }

      *&a1[v20[6]] = *&a2[v20[6]];
      v33 = v20[7];
      v34 = &a1[v33];
      v35 = &a2[v33];
      v34[4] = v35[4];
      *v34 = *v35;
      goto LABEL_22;
    case 7u:
      v24 = sub_1DD0DB4BC();
      (*(*(v24 - 8) + 32))(a1, a2, v24);
      v25 = type metadata accessor for USOParse();
      v26 = v25[5];
      v27 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v26], 1, v27))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v26], &a2[v26], *(*(v28 - 8) + 64));
      }

      else
      {
        (*(*(v27 - 8) + 32))(&a1[v26], &a2[v26], v27);
        __swift_storeEnumTagSinglePayload(&a1[v26], 0, 1, v27);
      }

      *&a1[v25[6]] = *&a2[v25[6]];
      v36 = v25[7];
      v37 = &a1[v36];
      v38 = &a2[v36];
      v37[4] = v38[4];
      *v37 = *v38;
      v39 = type metadata accessor for LinkParse();
      *&a1[v39[5]] = *&a2[v39[5]];
      *&a1[v39[6]] = *&a2[v39[6]];
      *&a1[v39[7]] = *&a2[v39[7]];
      goto LABEL_22;
    case 8u:
      v8 = sub_1DD0DD12C();
      (*(*(v8 - 8) + 32))(a1, a2, v8);
      v9 = type metadata accessor for NLRouterParse();
      *&a1[v9[5]] = *&a2[v9[5]];
      v10 = v9[6];
      v11 = &a1[v10];
      v12 = &a2[v10];
      v13 = type metadata accessor for USOParse();
      if (__swift_getEnumTagSinglePayload(v12, 1, v13))
      {
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v11, v12, *(*(v14 - 8) + 64));
      }

      else
      {
        v29 = sub_1DD0DB4BC();
        (*(*(v29 - 8) + 32))(v11, v12, v29);
        v30 = v13[5];
        v31 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v12[v30], 1, v31))
        {
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v11[v30], &v12[v30], *(*(v32 - 8) + 64));
        }

        else
        {
          (*(*(v31 - 8) + 32))(&v11[v30], &v12[v30], v31);
          __swift_storeEnumTagSinglePayload(&v11[v30], 0, 1, v31);
        }

        *&v11[v13[6]] = *&v12[v13[6]];
        v40 = v13[7];
        v41 = &v11[v40];
        v42 = &v12[v40];
        v41[4] = v42[4];
        *v41 = *v42;
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
      }

      *&a1[v9[7]] = *&a2[v9[7]];
      goto LABEL_22;
    case 9u:
      v17 = sub_1DD0DD08C();
      (*(*(v17 - 8) + 32))(a1, a2, v17);
LABEL_22:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(a1, a2, *(*(v6 - 8) + 64));
      break;
  }

  v43 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v43] = *&a2[v43];
  v44 = a3[7];
  v45 = &a1[v44];
  v46 = &a2[v44];
  v47 = *(v46 + 1);
  *v45 = *v46;
  *(v45 + 1) = v47;
  *(v45 + 4) = *(v46 + 4);
  return a1;
}

char *assignWithTake for SiriKitFlowFrameInput(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_1DCB29EBC(a1);
    v6 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v7 = sub_1DD0DC76C();
        (*(*(v7 - 8) + 32))(a1, a2, v7);
        goto LABEL_23;
      case 1u:
        v15 = sub_1DD0DC76C();
        (*(*(v15 - 8) + 32))(a1, a2, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&a1[*(v16 + 48)] = *&a2[*(v16 + 48)];
        goto LABEL_23;
      case 4u:
        v18 = sub_1DD0DB1EC();
        (*(*(v18 - 8) + 32))(a1, a2, v18);
        goto LABEL_23;
      case 6u:
        v19 = sub_1DD0DB4BC();
        (*(*(v19 - 8) + 32))(a1, a2, v19);
        v20 = type metadata accessor for USOParse();
        v21 = v20[5];
        v22 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v21], 1, v22))
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v21], &a2[v21], *(*(v23 - 8) + 64));
        }

        else
        {
          (*(*(v22 - 8) + 32))(&a1[v21], &a2[v21], v22);
          __swift_storeEnumTagSinglePayload(&a1[v21], 0, 1, v22);
        }

        *&a1[v20[6]] = *&a2[v20[6]];
        v33 = v20[7];
        v34 = &a1[v33];
        v35 = &a2[v33];
        v34[4] = v35[4];
        *v34 = *v35;
        goto LABEL_23;
      case 7u:
        v24 = sub_1DD0DB4BC();
        (*(*(v24 - 8) + 32))(a1, a2, v24);
        v25 = type metadata accessor for USOParse();
        v26 = v25[5];
        v27 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v26], 1, v27))
        {
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v26], &a2[v26], *(*(v28 - 8) + 64));
        }

        else
        {
          (*(*(v27 - 8) + 32))(&a1[v26], &a2[v26], v27);
          __swift_storeEnumTagSinglePayload(&a1[v26], 0, 1, v27);
        }

        *&a1[v25[6]] = *&a2[v25[6]];
        v36 = v25[7];
        v37 = &a1[v36];
        v38 = &a2[v36];
        v37[4] = v38[4];
        *v37 = *v38;
        v39 = type metadata accessor for LinkParse();
        *&a1[v39[5]] = *&a2[v39[5]];
        *&a1[v39[6]] = *&a2[v39[6]];
        *&a1[v39[7]] = *&a2[v39[7]];
        goto LABEL_23;
      case 8u:
        v8 = sub_1DD0DD12C();
        (*(*(v8 - 8) + 32))(a1, a2, v8);
        v9 = type metadata accessor for NLRouterParse();
        *&a1[v9[5]] = *&a2[v9[5]];
        v10 = v9[6];
        v11 = &a1[v10];
        v12 = &a2[v10];
        v13 = type metadata accessor for USOParse();
        if (__swift_getEnumTagSinglePayload(v12, 1, v13))
        {
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v11, v12, *(*(v14 - 8) + 64));
        }

        else
        {
          v29 = sub_1DD0DB4BC();
          (*(*(v29 - 8) + 32))(v11, v12, v29);
          v30 = v13[5];
          v31 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v12[v30], 1, v31))
          {
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v11[v30], &v12[v30], *(*(v32 - 8) + 64));
          }

          else
          {
            (*(*(v31 - 8) + 32))(&v11[v30], &v12[v30], v31);
            __swift_storeEnumTagSinglePayload(&v11[v30], 0, 1, v31);
          }

          *&v11[v13[6]] = *&v12[v13[6]];
          v40 = v13[7];
          v41 = &v11[v40];
          v42 = &v12[v40];
          v41[4] = v42[4];
          *v41 = *v42;
          __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
        }

        *&a1[v9[7]] = *&a2[v9[7]];
        goto LABEL_23;
      case 9u:
        v17 = sub_1DD0DD08C();
        (*(*(v17 - 8) + 32))(a1, a2, v17);
LABEL_23:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        break;
    }
  }

  v43 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  v44 = *&a1[v43];
  *&a1[v43] = *&a2[v43];

  v45 = a3[7];
  v46 = &a1[v45];
  v47 = &a2[v45];
  __swift_destroy_boxed_opaque_existential_1Tm(&a1[v45]);
  v48 = *(v47 + 1);
  *v46 = *v47;
  *(v46 + 1) = v48;
  *(v46 + 4) = *(v47 + 4);
  return a1;
}

uint64_t sub_1DCFAAB04()
{
  result = type metadata accessor for Parse(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1DCFAABB0(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (HIDWORD(a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_76();
  if (v9)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (a1 >> 16 > 0x10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_7:
  OUTLINED_FUNCTION_5_109();
  *swift_slowAlloc() = 0;
  v10 = sub_1DD0DD87C();
  v11 = sub_1DD0DE7FC();
  v12 = sub_1DD0DD83C();
  OUTLINED_FUNCTION_10_77(&dword_1DCAFC000, v13, v11, v12, v14, "enableTelemetry=YES");
  sub_1DCC56CC0(a6, &v19);
  if (v6)
  {
  }

  else
  {
    v15 = sub_1DD0DE7EC();
    v16 = sub_1DD0DD83C();
    OUTLINED_FUNCTION_10_77(&dword_1DCAFC000, v17, v15, v16, v18, "enableTelemetry=YES");

    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }
}

uint64_t sub_1DCFAAD08()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_11_67();

  OUTLINED_FUNCTION_29();
  v2 = *(v0 + 88);

  return v1();
}

uint64_t sub_1DCFAAD68()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  *(v0 + 128) = v5;
  *(v0 + 32) = v6;
  *(v0 + 40) = v7;
  *(v0 + 24) = v8;
  v9 = sub_1DD0DD85C();
  *(v0 + 80) = v9;
  v10 = *(v9 - 8);
  *(v0 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v0 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCFAAE34, 0, 0);
}

void sub_1DCFAAE34()
{
  v1 = *(v0 + 56);
  v2 = sub_1DD0DD87C();
  v3 = sub_1DD0DE7FC();
  if (sub_1DD0DE92C())
  {
    v4 = *(v0 + 32);
    if ((*(v0 + 128) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        v6 = *(v0 + 48);
        OUTLINED_FUNCTION_5_109();
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = sub_1DD0DD83C();
        _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v2, v3, v8, v4, "", v7, 2u);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_6_76();
      if (v5)
      {
LABEL_15:
        __break(1u);
        return;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  (*(*(v0 + 88) + 16))(*(v0 + 96), *(v0 + 48), *(v0 + 80));
  v9 = sub_1DD0DD8CC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 104) = sub_1DD0DD8BC();
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_1DCFAAFE0;
  v13 = *(v0 + 64);
  v14 = *(v0 + 72);
  v15 = *(v0 + 24);

  sub_1DCF485A8(v15, v13, v14);
}

uint64_t sub_1DCFAAFE0()
{
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v8 = v7;
  *(v9 + 120) = v0;

  if (v0)
  {
    v10 = sub_1DCFAB168;
  }

  else
  {
    v10 = sub_1DCFAB0E8;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1DCFAB0E8()
{
  OUTLINED_FUNCTION_4_111();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCFAB168()
{
  OUTLINED_FUNCTION_4_111();

  OUTLINED_FUNCTION_29();
  v3 = *(v0 + 120);

  return v2();
}

uint64_t sub_1DCFAB298(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_1DD0DD8FC();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_1DD0DD90C();
}

void sub_1DCFAB324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = a1;
    *(v9 + 12) = 2048;
    *(v9 + 14) = a2;
    _os_log_impl(&dword_1DCAFC000, v7, v8, "AFAnalytics log end : AFAnalyticsEventType %ld - %ld", v9, 0x16u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  sub_1DCDAC354(a3);
}

uint64_t sub_1DCFAB4B4()
{
  v0 = sub_1DD0DD8FC();
  v1 = OUTLINED_FUNCTION_9(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v10 = sub_1DD0DD88C();
  __swift_allocate_value_buffer(v10, qword_1EDE57DD0);
  __swift_project_value_buffer(v10, qword_1EDE57DD0);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v11 = __swift_project_value_buffer(v0, qword_1EDE57E00);
  (*(v3 + 16))(v9, v11, v0);
  return sub_1DD0DD86C();
}

uint64_t sub_1DCFAB620()
{
  sub_1DCCFA914();
  result = sub_1DD0DE94C();
  qword_1EDE57DB8 = result;
  return result;
}

uint64_t sub_1DCFAB6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1DCCFA914();
  result = sub_1DD0DE94C();
  *a4 = result;
  return result;
}

void static SiriKitLifecycle.abortExecution(_:logger:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v27[-v15];
  sub_1DCB09910(a3, &v27[-v15], &unk_1ECCA7470, &qword_1DD0E16E0);
  v17 = sub_1DD0DD8FC();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1DCB0E9D8(v16, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v31 = a7;

    v18 = sub_1DD0DD8EC();
    v19 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v30 = a4;
      v21 = v20;
      v29 = swift_slowAlloc();
      v32 = v29;
      *v21 = 136315650;
      v22 = sub_1DD0DEC3C();
      v24 = sub_1DCB10E9C(v22, v23, &v32);
      v28 = v19;
      v25 = v24;

      *(v21 + 4) = v25;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v31;
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_1DCB10E9C(a1, a2, &v32);
      _os_log_impl(&dword_1DCAFC000, v18, v28, "FatalError at %s:%lu - %s", v21, 0x20u);
      v26 = v29;
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v26, -1, -1);
      MEMORY[0x1E12A8390](v21, -1, -1);
    }

    (*(*(v17 - 8) + 8))(v16, v17);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(a1, a2);
}

void static SiriKitLifecycle._logCrashToEventBus(_:)(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v3 = type metadata accessor for SiriKitEventPayload(0);
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4F6A8 != -1)
  {
    swift_once();
  }

  memset(v14, 0, sizeof(v14));
  type metadata accessor for SiriKitEvent(0);
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  *v9 = 6;
  *(v9 + 1) = 0x54746E6572727543;
  *(v9 + 2) = 0xEB000000006B7361;
  *(v9 + 4) = 0;
  *(v9 + 5) = 0;
  *(v9 + 3) = 0;
  sub_1DCB09910(v14, (v9 + 48), &dword_1ECCA3CE0, &unk_1DD0E4F80);
  *(v9 + 10) = 0;
  *(v9 + 11) = 0;
  sub_1DCB09910(v12, (v9 + 96), &unk_1ECCA3280, &unk_1DD0E23D0);
  *(v9 + 17) = 0;
  *(v9 + 18) = 0;
  *(v9 + 19) = 0xD000000000000012;
  *(v9 + 20) = 0x80000001DD120EB0;
  *(v9 + 21) = v11;
  *(v9 + 22) = a2;
  v9[184] = 44;
  swift_storeEnumTagMultiPayload();

  SiriKitEvent.__allocating_init(_:builder:)(v9, 0);
  sub_1DCB4C064();
}

_BYTE *storeEnumTagSinglePayload for SiriKitLifecycle(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCFABC48(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  v4 = v3;
  if (v5 <= 0x3F)
  {
    v11 = *(v3 - 8) + 64;
    v6 = *(a1 + 88);
    v7 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State();
    v4 = v7;
    if (v8 <= 0x3F)
    {
      v12 = *(v7 - 8) + 64;
      inited = swift_initClassMetadata2();
      if (inited)
      {
        return inited;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1DCFABD38(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  sub_1DCFAC368(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t sub_1DCFABDA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_3_7();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_3_7();
  v7 = *(v6 + 88);
  v8 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v23 - v12;
  OUTLINED_FUNCTION_3_7();
  v15 = *(v14 + 128);
  swift_beginAccess();
  v16 = *(v9 + 16);
  v16(v13, &v1[v15], v8);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    v19 = v13[8];
    *a1 = *v13;
    *(a1 + 8) = v19;
    *(a1 + 40) = 1;
  }

  else if (result == 3)
  {
    v18 = *(v13 + 1);
    *a1 = *v13;
    *(a1 + 16) = v18;
    *(a1 + 25) = *(v13 + 25);
  }

  else
  {
    type metadata accessor for SiriKitNeedsDisambiguationFlow.NeedsDisambiguationError();
    OUTLINED_FUNCTION_3_119();
    swift_getWitnessTable();
    v20 = swift_allocError();
    v22 = v21;
    v16(v21, &v1[v15], v8);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v8);
    *a1 = v20;
    *(a1 + 8) = 0;
    *(a1 + 40) = 1;
    return (*(v9 + 8))(v13, v8);
  }

  return result;
}

void sub_1DCFABFB0()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCFAC264(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);
  v7 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State();
  (*(*(v7 - 8) + 24))(v1 + v4, a1, v7);
  swift_endAccess();
  sub_1DCFABFB0();
}

char *sub_1DCFAC368(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v10 = *v5;
  v23 = *(a5 + 16);
  v11 = *(a5 + 32);
  v12 = *(a5 + 40);
  v13 = *(a5 + 48);
  OUTLINED_FUNCTION_3_7();
  (*(*(*(v10 + 80) - 8) + 32))(&v5[*(v14 + 96)]);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a2, &v5[*(v15 + 104)]);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a3, &v5[*(v16 + 120)]);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a4, &v5[*(v17 + 112)]);
  OUTLINED_FUNCTION_66();
  v19 = &v5[*(v18 + 128)];
  *v19 = *a5;
  *(v19 + 1) = v23;
  *(v19 + 4) = v11;
  v19[40] = v12;
  *(v19 + 6) = v13;
  OUTLINED_FUNCTION_3_7();
  v21 = *(v20 + 88);
  type metadata accessor for SiriKitNeedsDisambiguationFlow.State();
  swift_storeEnumTagMultiPayload();
  return v5;
}

void sub_1DCFAC4DC()
{
  OUTLINED_FUNCTION_66();
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCFAC56C()
{
  OUTLINED_FUNCTION_42();
  v1[12] = v2;
  v1[13] = v0;
  v3 = *v0;
  v1[14] = *(*v0 + 88);
  v1[15] = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[16] = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  v1[17] = v5;
  v6 = *(v5 + 64) + 15;
  v1[18] = swift_task_alloc();
  v7 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State();
  v1[19] = v7;
  v8 = *(v7 - 8);
  v1[20] = v8;
  v9 = *(v8 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCFAC6DC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 104);
  v5 = *(*v4 + 128);
  swift_beginAccess();
  (*(v3 + 16))(v1, v4 + v5, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = *(v0 + 176);
      v7 = *v6;
      *(v0 + 184) = *v6;
      v8 = v6[1];
      *(v0 + 192) = v8;
      v9 = v6[2];
      v10 = v6[3];
      *(v0 + 200) = v10;
      v11 = v6[4];
      v12 = *(v6 + 40);
      v13 = v6[6];
      *(v0 + 208) = v13;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v14 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v14, qword_1EDE57E00);
      v15 = sub_1DD0DD8EC();
      v16 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v16))
      {
        v17 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v17);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v18, v19, v20, v21, v22, 2u);
        OUTLINED_FUNCTION_80();
      }

      *(v0 + 16) = v7;
      *(v0 + 24) = v8;
      *(v0 + 32) = v9;
      *(v0 + 40) = v10;
      *(v0 + 48) = v11;
      *(v0 + 56) = v12;
      *(v0 + 64) = v13;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 216) = v23;
      *v23 = v24;
      v23[1] = sub_1DCFACD74;
      v25 = *(v0 + 96);
      v26 = *(v0 + 104);
      OUTLINED_FUNCTION_73();

      return sub_1DCFACEE8(v27, v28);
    case 2u:
      v45 = *(v0 + 176);
      v47 = *(v0 + 136);
      v46 = *(v0 + 144);
      v48 = *(v0 + 120);
      v49 = *(v0 + 128);
      v50 = *(v0 + 112);
      v51 = *v45;
      type metadata accessor for NeedsDisambiguationFlowStrategyAdapter();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v47 + 32))(v46, &v45[*(TupleTypeMetadata2 + 48)], v49);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v53 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v53, qword_1EDE57E00);
      v54 = sub_1DD0DD8EC();
      v55 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = OUTLINED_FUNCTION_50_0();
        *v56 = 0;
        _os_log_impl(&dword_1DCAFC000, v54, v55, "SiriKitNeedsDisambiguationFlow handling disambiguation", v56, 2u);
        OUTLINED_FUNCTION_80();
      }

      v58 = *(v0 + 136);
      v57 = *(v0 + 144);
      v59 = *(v0 + 128);
      v61 = *(v0 + 96);
      v60 = *(v0 + 104);

      sub_1DCFAD760();
    case 3u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v31 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v31, qword_1EDE57E00);
      v32 = sub_1DD0DD8EC();
      v33 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v33))
      {
        v34 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v34);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v35, v36, v37, v38, v39, 2u);
        OUTLINED_FUNCTION_62();
      }

      v40 = *(v0 + 176);
      v41 = *(v0 + 152);
      v42 = *(v0 + 160);
      v43 = *(v0 + 96);

      v44 = static ExecuteResponse.complete()();
      (*(v42 + 8))(v40, v41, v44);
      break;
    case 4u:
      (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v62 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v62, qword_1EDE57E00);
      v63 = sub_1DD0DD8EC();
      v64 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v64))
      {
        v65 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v65);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v66, v67, v68, v69, v70, 2u);
        OUTLINED_FUNCTION_62();
      }

      v71 = *(v0 + 96);

      static ExecuteResponse.complete()();
      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v72 = *(v0 + 104);
      v73 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v73, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }

  v75 = *(v0 + 168);
  v74 = *(v0 + 176);
  v76 = *(v0 + 144);

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_73();

  __asm { BRAA            X1, X16 }

  return result;
}

uint64_t sub_1DCFACD74()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 216);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCFACE58()
{
  OUTLINED_FUNCTION_39();
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];

  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[18];

  OUTLINED_FUNCTION_29();

  return v8();
}

uint64_t sub_1DCFACEE8(uint64_t a1, uint64_t *a2)
{
  *(v3 + 168) = a1;
  *(v3 + 176) = v2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  *(v3 + 184) = v6;
  v7 = *(v5 + 88);
  *(v3 + 192) = v7;
  v8 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State();
  *(v3 + 200) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  v10 = *(v6 - 8);
  *(v3 + 216) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 224) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v3 + 232) = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  *(v3 + 240) = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v16 = *a2;
  v17 = a2[1];
  *(v3 + 248) = v15;
  *(v3 + 256) = v16;
  v18 = a2[2];
  v19 = a2[3];
  *(v3 + 264) = v17;
  *(v3 + 272) = v18;
  v20 = a2[4];
  *(v3 + 280) = v19;
  *(v3 + 288) = v20;
  v21 = *(a2 + 40);
  *(v3 + 336) = v21;
  v22 = a2[6];
  *(v3 + 296) = v22;
  *(v3 + 304) = *(v5 + 96);
  *(v3 + 16) = v16;
  *(v3 + 24) = v17;
  *(v3 + 32) = v18;
  *(v3 + 40) = v19;
  *(v3 + 48) = v20;
  *(v3 + 56) = v21;
  *(v3 + 64) = v22;
  v23 = *(v7 + 72);
  v27 = (v23 + *v23);
  v24 = v23[1];
  v25 = swift_task_alloc();
  *(v3 + 312) = v25;
  *v25 = v3;
  v25[1] = sub_1DCFAD1AC;

  return v27(v15, v3 + 16, v6, v7);
}

uint64_t sub_1DCFAD1AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 312);
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 320) = v0;

  if (v0)
  {
    v9 = sub_1DCFAD53C;
  }

  else
  {
    v9 = sub_1DCFAD2AC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1DCFAD2AC()
{
  v34 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_23(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  v24 = *(v0 + 336);
  v22 = *(v0 + 280);
  v23 = *(v0 + 288);
  v10 = *(v0 + 264);
  v20 = *(v0 + 304);
  v21 = *(v0 + 272);
  v11 = *(v0 + 256);
  v25 = *(v0 + 296);
  v27 = *(v0 + 240);
  v28 = *(v0 + 248);
  v26 = *(v0 + 232);
  v12 = *(v0 + 216);
  v13 = *(v0 + 224);
  v14 = *(v0 + 208);
  v15 = *(v0 + 184);
  v16 = *(v0 + 192);
  v17 = *(v0 + 176);
  v29 = *(v0 + 200);
  v30 = *(v0 + 168);

  type metadata accessor for NeedsDisambiguationFlowStrategyAdapter();
  (*(v12 + 16))(v13, v17 + v20, v15);
  v31[0] = v11;
  v31[1] = v10;
  v31[2] = v21;
  v31[3] = v22;
  v31[4] = v23;
  v32 = v24;
  v33 = v25;
  sub_1DCB17CA0(v17 + *(*v17 + 104), v0 + 128);
  v18 = sub_1DCDF118C(v13, v31, (v0 + 128));
  v19 = *(swift_getTupleTypeMetadata2() + 48);
  *v14 = v18;
  (*(v27 + 16))(v14 + v19, v28, v26);
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFAD53C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 336);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 272);
  *(v0 + 72) = *(v0 + 256);
  *(v0 + 88) = v4;
  *(v0 + 104) = v3;
  *(v0 + 112) = v1;
  *(v0 + 120) = v2;
  v5 = swift_task_alloc();
  *(v0 + 328) = v5;
  *v5 = v0;
  v5[1] = sub_1DCFAD5F8;
  v6 = *(v0 + 320);
  v7 = *(v0 + 176);

  return sub_1DCFAE034(v6, v0 + 72);
}

uint64_t sub_1DCFAD5F8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *(v1 + 328);
  v3 = *v0;
  OUTLINED_FUNCTION_27();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCFAD6DC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 168);

  static ExecuteResponse.complete()();
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);

  OUTLINED_FUNCTION_29();

  return v5();
}

void sub_1DCFAD760()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v36 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State();
  v4 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36, v5);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 24);
  v37 = swift_checkMetadataState();
  v8 = v7(v37, AssociatedConformanceWitness);
  v9 = &off_1EDE4F000;
  if (v8)
  {
    v10 = (v0 + *(*v0 + 112));
    v11 = v10[3];
    v12 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v11);
    if ((*(v12 + 8))(v11, v12) & 1) != 0 || (v13 = v10[3], v14 = v10[4], __swift_project_boxed_opaque_existential_1(v10, v13), ((*(v14 + 16))(v13, v14)))
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v15 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v15, qword_1EDE57E00);
      v16 = sub_1DD0DD8EC();
      v17 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1DCAFC000, v16, v17, "SiriKitNeedsDisambiguationFlow cannot request device unlock. Initiating Handoff", v18, 2u);
        MEMORY[0x1E12A8390](v18, -1, -1);
      }

      type metadata accessor for HandoffSessionToCompanionFlowAsync();
      sub_1DCB17CA0(v10, v39);
      sub_1DCB17CA0(v1 + *(*v1 + 120), v38);
      type metadata accessor for NeedsDisambiguationFlowStrategyAdapter();
      sub_1DD0DCF8C();
    }

    v19 = v10[3];
    v20 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v19);
    v21 = v0 + *(*v0 + 96);
    (*(v3 + 48))(v39, v2, v3);
    LOBYTE(v21) = (*(v20 + 248))(v39, v19, v20);
    sub_1DCC4B20C(v39);
    v9 = &off_1EDE4F000;
    if ((v21 & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v32 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v32, qword_1EDE57E00);
      v33 = sub_1DD0DD8EC();
      v34 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1DCAFC000, v33, v34, "SiriKitNeedsDisambiguationFlow requires that the device is unlocked to proceed. Pushing an UnlockDeviceFlow. Transitioning to unlockRequestSent.", v35, 2u);
        MEMORY[0x1E12A8390](v35, -1, -1);
      }

      type metadata accessor for UnlockDeviceFlowAsync(0);
      sub_1DCB17CA0(v10, v39);
      sub_1DCB17CA0(v1 + *(*v1 + 120), v38);
      type metadata accessor for NeedsDisambiguationFlowStrategyAdapter();
      sub_1DD0DCF8C();
    }

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v22 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v22, qword_1EDE57E00);
    v23 = sub_1DD0DD8EC();
    v24 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DCAFC000, v23, v24, "DisambiguationList requested an unlock but we are already unlocked", v25, 2u);
      v26 = v25;
      v9 = &off_1EDE4F000;
      MEMORY[0x1E12A8390](v26, -1, -1);
    }
  }

  if (v9[288] != -1)
  {
    swift_once();
  }

  v27 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v27, qword_1EDE57E00);
  v28 = sub_1DD0DD8EC();
  v29 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1DCAFC000, v28, v29, "SiriKitNeedsDisambiguationFlow pushing a PromptForDisambiguationFlow to handle disambiguation.", v30, 2u);
    MEMORY[0x1E12A8390](v30, -1, -1);
  }

  swift_getAssociatedTypeWitness();
  v31 = *(v3 + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentPromptAnswer();
  type metadata accessor for PromptForDisambiguationFlowAsync();
  (*(AssociatedConformanceWitness + 16))(v37, AssociatedConformanceWitness);
  sub_1DCB17CA0(v1 + *(*v1 + 120), v39);
  type metadata accessor for NeedsDisambiguationFlowStrategyAdapter();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFAE034(uint64_t a1, uint64_t a2)
{
  *(v3 + 248) = a1;
  *(v3 + 256) = v2;
  v5 = *(*v2 + 80);
  v6 = *(*v2 + 88);
  v7 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State();
  *(v3 + 264) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v3 + 272) = swift_task_alloc();
  v9 = type metadata accessor for SiriKitEventPayload(0);
  *(v3 + 280) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v3 + 288) = swift_task_alloc();
  v11 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v11;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1DCFAE140, 0, 0);
}

uint64_t sub_1DCFAE140()
{
  v25 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = v0[31];
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[26];
    v9 = v0[27];
    v11 = v0[28];
    v12 = sub_1DD0DF18C();
    v14 = sub_1DCB10E9C(v12, v13, &v24);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "SiriKitNeedsDisambiguationFlow encountered an error while building the disambiguation list: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v16 = v0[31];
  v15 = v0[32];
  v17 = (v15 + *(*v15 + 120));
  v19 = v17[3];
  v18 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v19);
  v20 = swift_task_alloc();
  v0[37] = v20;
  v20[2] = v15;
  v20[3] = v16;
  v20[4] = v0 + 2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[38] = v21;
  *v21 = v22;
  v21[1] = sub_1DCFAE368;

  return sub_1DCB63BBC((v0 + 9), &unk_1DD106DA8, v20, v19, v18);
}

uint64_t sub_1DCFAE368()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 304);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 312) = v0;

  if (v0)
  {
    v9 = sub_1DCFAE928;
  }

  else
  {
    v10 = *(v3 + 296);

    v9 = sub_1DCFAE470;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1DCFAE470()
{
  v3 = *(v1 + 96);
  v2 = *(v1 + 104);
  __swift_project_boxed_opaque_existential_1((v1 + 72), v3);
  if (sub_1DCB651D0(v3))
  {
    v4 = *(v1 + 288);
    v19 = *(v1 + 280);
    v5 = *(v1 + 248);
    v6 = (*(v1 + 256) + *(**(v1 + 256) + 104));
    v7 = [*(v1 + 24) typeName];
    v8 = sub_1DD0DDFBC();
    v10 = v9;

    v11 = *(v1 + 16);
    *(v1 + 152) = 0u;
    *(v1 + 168) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 144) = 0;
    *(v1 + 112) = 0u;
    swift_getErrorValue();
    v12 = *(v1 + 184);
    v13 = *(v1 + 200);
    v14 = sub_1DCEE0FD4(*(v1 + 192));
    v16 = v15;
    v18 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    type metadata accessor for SiriKitEvent(0);
    *v4 = 6;
    *(v4 + 8) = v8;
    *(v4 + 16) = v10;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 24) = v11;
    sub_1DCB09910(v1 + 152, v4 + 48, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    *(v4 + 80) = 0;
    *(v4 + 88) = 0;
    sub_1DCB09910(v1 + 112, v4 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
    *(v4 + 136) = 0u;
    *(v4 + 152) = 0u;
    *(v4 + 168) = v14;
    *(v4 + 176) = v16;
    *(v4 + 184) = 83;
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_12_66();
  v17 = v0;
  sub_1DCFAC264(v2);
}

uint64_t sub_1DCFAE774()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *(v4 + 320);
  v7 = *v0;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  sub_1DCB0E9D8(v2 + 112, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB0E9D8(v2 + 152, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DCFAE8A0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12_66();
  v2 = v1;
  sub_1DCFAC264(v0);
}

void sub_1DCFAE928()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[32];

  *v4 = v1;
  OUTLINED_FUNCTION_21_48();
  v6 = v1;
  sub_1DCFAC264(v4);
}

uint64_t sub_1DCFAE9C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCFAEA14, 0, 0);
}

uint64_t sub_1DCFAEA14()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(**(v0 + 120) + 96);
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 25);
  *(v0 + 16) = *(v1 + 1);
  *(v0 + 25) = v6;
  v7 = *(v1 + 25);
  *(v0 + 48) = *(v1 + 1);
  *(v0 + 57) = v7;
  v8 = *(*(v2 + 88) + 8);
  v9 = *(v8 + 24);
  sub_1DCDECFFC(v0 + 16, v0 + 80);
  v10 = *(v2 + 80);
  v17 = (v9 + *v9);
  v11 = v9[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 152) = v12;
  *v12 = v13;
  v12[1] = sub_1DCFAEBA8;
  v14 = *(v0 + 128);
  v15 = *(v0 + 112);

  return v17(v15, v14, v4, v5, v0 + 48, v10, v8);
}

uint64_t sub_1DCFAEBA8()
{
  OUTLINED_FUNCTION_39();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *(v2 + 152);
  v6 = *v1;
  *v4 = *v1;
  *(v3 + 160) = v0;

  v7 = *(v2 + 56);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCFAECFC, 0, 0);
  }

  else
  {
    v8 = *(v6 + 8);

    return v8();
  }
}

uint64_t sub_1DCFAECFC()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 160);
  return v2();
}

void sub_1DCFAED88(void *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 80);
  v37[2] = *(*v3 + 88);
  v37[3] = v7;
  v8 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v37 - v16;
  v18 = *(v6 + 128);
  swift_beginAccess();
  (*(v9 + 16))(v17, v3 + v18, v8);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    (*(v9 + 8))(v17, v8);
    if (a2)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v19 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v19, qword_1EDE57E00);
      v20 = a1;
      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6EC();
      sub_1DCB79378(a1, 1);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v38 = v24;
        *v23 = 136315138;
        swift_getErrorValue();
        v25 = sub_1DD0DF18C();
        v27 = v14;
        v28 = sub_1DCB10E9C(v25, v26, &v38);

        *(v23 + 4) = v28;
        v14 = v27;
        _os_log_impl(&dword_1DCAFC000, v21, v22, "SiriKitNeedsDisambiguationFlow received an unexpected error while trying to unlock the device: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x1E12A8390](v24, -1, -1);
        MEMORY[0x1E12A8390](v23, -1, -1);
      }

      *v14 = a1;
      v14[8] = 0;
      swift_storeEnumTagMultiPayload();
      v29 = a1;
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v31 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v31, qword_1EDE57E00);
      v32 = sub_1DD0DD8EC();
      v33 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1DCAFC000, v32, v33, "SiriKitNeedsDisambiguationFlow handed session off to companion device.", v34, 2u);
        MEMORY[0x1E12A8390](v34, -1, -1);
      }

      type metadata accessor for SiriKitNeedsDisambiguationFlow.NeedsDisambiguationError();
      swift_getWitnessTable();
      v35 = swift_allocError();
      __swift_storeEnumTagSinglePayload(v36, 1, 1, v8);
      *v14 = v35;
      v14[8] = 1;
      swift_storeEnumTagMultiPayload();
    }

    sub_1DCFAC264(v14);
  }

  (*(v9 + 8))(v17, v8);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v30 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v30, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCFAF41C(void *a1, int a2)
{
  v37 = a2;
  v35 = a1;
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 88);
  v6 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v34 - v14;
  v40 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  v39 = AssociatedTypeWitness;
  v17 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v18);
  v36 = &v34 - v19;
  v20 = *(v3 + 128);
  swift_beginAccess();
  v21 = *(v7 + 16);
  v21(v15, &v2[v20], v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v12;
    v23 = *v15;
    type metadata accessor for NeedsDisambiguationFlowStrategyAdapter();
    v24 = v39;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v26 = v38;
    v27 = v36;
    (*(v38 + 32))(v36, &v15[*(TupleTypeMetadata2 + 48)], v24);
    if (v37)
    {
      v28 = v35;
      *v22 = v35;
      *(v22 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      v29 = v28;
      sub_1DCFAC264(v22);
    }

    v33 = *(TupleTypeMetadata2 + 48);
    *v22 = v23;
    (*(v26 + 16))(v22 + v33, v27, v24);
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  (*(v7 + 8))(v15, v6);
  type metadata accessor for SiriKitNeedsDisambiguationFlow.NeedsDisambiguationError();
  swift_getWitnessTable();
  v30 = swift_allocError();
  v32 = v31;
  v21(v31, &v2[v20], v6);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v6);
  *v12 = v30;
  v12[8] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1DCFAC264(v12);
}

void sub_1DCFAF810(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 88);
  v5 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - v8;
  v10 = *(v4 + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for IntentPromptAnswer();
  v11 = type metadata accessor for PromptResult();
  (*(*(v11 - 8) + 16))(v9, a1, v11);
  swift_storeEnumTagMultiPayload();
  sub_1DCFAC264(v9);
}

unint64_t sub_1DCFAF944(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1, v1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6);
  v7 = 0x6C616974696E692ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v7 = 0xD000000000000012;
      v8 = *v6;

      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
      type metadata accessor for NeedsDisambiguationFlowStrategyAdapter();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(AssociatedTypeWitness - 8) + 8))(&v6[*(TupleTypeMetadata2 + 48)], AssociatedTypeWitness);
      break;
    case 2u:
      v13 = *v6;

      v14 = *(a1 + 16);
      v15 = *(a1 + 24);
      type metadata accessor for NeedsDisambiguationFlowStrategyAdapter();
      v16 = swift_getAssociatedTypeWitness();
      v17 = swift_getTupleTypeMetadata2();
      (*(*(v16 - 8) + 8))(&v6[*(v17 + 48)], v16);
      v7 = 0xD000000000000014;
      break;
    case 3u:
      (*(v3 + 8))(v6, a1);
      v7 = 0x74656C706D6F632ELL;
      break;
    case 4u:
      (*(v3 + 8))(v6, a1);
      v7 = 0x726F7272652ELL;
      break;
    case 5u:
      return v7;
    case 6u:
      v7 = 0xD000000000000012;
      break;
    default:
      (*(v3 + 8))(v6, a1);
      v7 = 0x646574726174732ELL;
      break;
  }

  return v7;
}

uint64_t *sub_1DCFAFC60()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v2 + 104)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v3 + 112)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v4 + 120)));
  OUTLINED_FUNCTION_66();
  v6 = *(v5 + 128);
  v7 = *(v1 + 88);
  v8 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State();
  OUTLINED_FUNCTION_2(v8);
  (*(v9 + 8))(v0 + v6);
  return v0;
}

uint64_t sub_1DCFAFD84()
{
  sub_1DCFAFC60();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCFAFE0C(uint64_t a1)
{
  v8 = "8";
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8);
    swift_getTupleTypeLayout2();
    v9 = &v7;
    swift_getTupleTypeLayout2();
    v10 = &v6;
    v11 = &unk_1DD106CE0;
    v12 = &unk_1DD106CF8;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void *sub_1DCFAFF04(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 80);
  if (((v10 + 8) & ~v10) + *(v8 + 64) <= 0x38)
  {
    v11 = 56;
  }

  else
  {
    v11 = ((v10 + 8) & ~v10) + *(v8 + 64);
  }

  v12 = v11 + 1;
  if (v10 > 7u || (v10 & 0x100000) != 0 || v12 > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v15 = a2[v11];
  v16 = v15 - 5;
  if (v15 >= 5)
  {
    if (v11 <= 3)
    {
      v17 = v11;
    }

    else
    {
      v17 = 4;
    }

    switch(v17)
    {
      case 1:
        v18 = *a2;
        goto LABEL_22;
      case 2:
        v18 = *a2;
        goto LABEL_22;
      case 3:
        v18 = *a2 | (a2[2] << 16);
        goto LABEL_22;
      case 4:
        v18 = *a2;
LABEL_22:
        v19 = (v18 | (v16 << (8 * v11))) + 5;
        if (v11 >= 4)
        {
          v15 = v18 + 5;
        }

        else
        {
          v15 = v19;
        }

        break;
      default:
        break;
    }
  }

  switch(v15)
  {
    case 0u:
      v20 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v20;
      v21 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v21;
      *(a1 + 4) = *(a2 + 4);
      a1[40] = a2[40];
      *(a1 + 6) = *(a2 + 6);
      a1[v11] = 0;
      sub_1DD0DCF8C();
    case 1u:
      *a1 = *a2;
      v28 = *(v9 + 16);
      sub_1DD0DCF8C();
    case 2u:
      *a1 = *a2;
      v25 = *(v9 + 16);
      sub_1DD0DCF8C();
    case 3u:
      v26 = a2[40];
      if (v26 >= 2)
      {
        v26 = *a2 + 2;
      }

      if (v26 == 1)
      {
        v30 = *a2;
        v31 = *a2;
        *a1 = v30;
        a1[8] = a2[8];
        a1[40] = 1;
      }

      else if (v26)
      {
        v32 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v32;
        *(a1 + 25) = *(a2 + 25);
      }

      else
      {
        v27 = *(a2 + 3);
        if (v27)
        {
          *(a1 + 3) = v27;
          (**(v27 - 8))(a1, a2);
        }

        else
        {
          v33 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v33;
        }

        v34 = *(a2 + 4);
        *(a1 + 4) = v34;
        a1[40] = 0;
        v35 = v34;
      }

      v24 = 3;
      goto LABEL_44;
    case 4u:
      v22 = *a2;
      v23 = *a2;
      *a1 = v22;
      a1[8] = a2[8];
      v24 = 4;
LABEL_44:
      a1[v11] = v24;
      result = a1;
      break;
    default:

      result = memcpy(a1, a2, v12);
      break;
  }

  return result;
}

void sub_1DCFB0278(id *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 80);
  v7 = ((v6 + 8) & ~v6) + *(*(AssociatedTypeWitness - 8) + 64);
  if (v7 <= 0x38)
  {
    v7 = 56;
  }

  v8 = *(a1 + v7);
  v9 = v8 - 5;
  if (v8 >= 5)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    switch(v10)
    {
      case 1:
        v11 = *a1;
        goto LABEL_12;
      case 2:
        v11 = *a1;
        goto LABEL_12;
      case 3:
        v11 = *a1 | (*(a1 + 2) << 16);
        goto LABEL_12;
      case 4:
        v11 = *a1;
LABEL_12:
        v12 = (v11 | (v9 << (8 * v7))) + 5;
        if (v7 >= 4)
        {
          v8 = v11 + 5;
        }

        else
        {
          v8 = v12;
        }

        break;
      default:
        break;
    }
  }

  switch(v8)
  {
    case 0u:
      v17 = *a1;

      v18 = a1[3];

      v16 = a1[6];
      goto LABEL_31;
    case 1u:
    case 2u:
      v19 = *(AssociatedTypeWitness - 8);
      v13 = *a1;

      v14 = *(v19 + 8);

      v14((a1 + v6 + 8) & ~v6, AssociatedTypeWitness);
      return;
    case 3u:
      v15 = *(a1 + 40);
      if (v15 >= 2)
      {
        v15 = *a1 + 2;
      }

      if (v15 == 1)
      {
        goto LABEL_26;
      }

      if (v15)
      {
        return;
      }

      if (a1[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      v16 = a1[4];
LABEL_31:

LABEL_28:

      return;
    case 4u:
LABEL_26:
      v16 = *a1;

      goto LABEL_28;
    default:
      return;
  }
}

void *sub_1DCFB04C4(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 80);
  if (((v10 + 8) & ~v10) + *(v8 + 64) <= 0x38)
  {
    v11 = 56;
  }

  else
  {
    v11 = ((v10 + 8) & ~v10) + *(v8 + 64);
  }

  v12 = a2[v11];
  v13 = v12 - 5;
  if (v12 >= 5)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    switch(v14)
    {
      case 1:
        v15 = *a2;
        goto LABEL_13;
      case 2:
        v15 = *a2;
        goto LABEL_13;
      case 3:
        v15 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v15 = *a2;
LABEL_13:
        v16 = (v15 | (v13 << (8 * v11))) + 5;
        if (v11 >= 4)
        {
          v12 = v15 + 5;
        }

        else
        {
          v12 = v16;
        }

        break;
      default:
        break;
    }
  }

  switch(v12)
  {
    case 0u:
      v17 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v17;
      v18 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v18;
      *(a1 + 4) = *(a2 + 4);
      a1[40] = a2[40];
      *(a1 + 6) = *(a2 + 6);
      a1[v11] = 0;
      sub_1DD0DCF8C();
    case 1u:
      *a1 = *a2;
      v25 = *(v9 + 16);
      sub_1DD0DCF8C();
    case 2u:
      *a1 = *a2;
      v22 = *(v9 + 16);
      sub_1DD0DCF8C();
    case 3u:
      v23 = a2[40];
      if (v23 >= 2)
      {
        v23 = *a2 + 2;
      }

      if (v23 == 1)
      {
        v27 = *a2;
        v28 = *a2;
        *a1 = v27;
        a1[8] = a2[8];
        a1[40] = 1;
      }

      else if (v23)
      {
        v29 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v29;
        *(a1 + 25) = *(a2 + 25);
      }

      else
      {
        v24 = *(a2 + 3);
        if (v24)
        {
          *(a1 + 3) = v24;
          (**(v24 - 8))(a1, a2);
        }

        else
        {
          v30 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v30;
        }

        v31 = *(a2 + 4);
        *(a1 + 4) = v31;
        a1[40] = 0;
        v32 = v31;
      }

      v21 = 3;
      goto LABEL_35;
    case 4u:
      v19 = *a2;
      v20 = *a2;
      *a1 = v19;
      a1[8] = a2[8];
      v21 = 4;
LABEL_35:
      a1[v11] = v21;
      result = a1;
      break;
    default:

      result = memcpy(a1, a2, v11 + 1);
      break;
  }

  return result;
}

unsigned __int8 *sub_1DCFB07FC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v7 = a3 + 16;
    v6 = *(a3 + 16);
    v5 = *(v7 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(AssociatedTypeWitness - 8);
    v10 = *(v9 + 80);
    if (((v10 + 8) & ~v10) + *(v9 + 64) <= 0x38)
    {
      v11 = 56;
    }

    else
    {
      v11 = ((v10 + 8) & ~v10) + *(*(AssociatedTypeWitness - 8) + 64);
    }

    v12 = 8 * v11;
    v13 = a1[v11];
    v14 = v13 - 5;
    if (v13 >= 5)
    {
      if (v11 <= 3)
      {
        v15 = v11;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a1;
          goto LABEL_14;
        case 2:
          v16 = *a1;
          goto LABEL_14;
        case 3:
          v16 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v16 = *a1;
LABEL_14:
          v17 = (v16 | (v14 << v12)) + 5;
          v13 = v16 + 5;
          if (v11 < 4)
          {
            v13 = v17;
          }

          break;
        default:
          break;
      }
    }

    switch(v13)
    {
      case 0u:
        v21 = *a1;

        v22 = *(a1 + 3);

        v20 = *(a1 + 6);
        goto LABEL_27;
      case 1u:
      case 2u:
        v18 = *a1;

        (*(v9 + 8))(&a1[v10 + 8] & ~v10, AssociatedTypeWitness);
        break;
      case 3u:
        v19 = a1[40];
        if (v19 >= 2)
        {
          v19 = *a1 + 2;
        }

        if (v19 == 1)
        {
          goto LABEL_25;
        }

        if (!v19)
        {
          if (*(a1 + 3))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          v20 = *(a1 + 4);
LABEL_27:
        }

        break;
      case 4u:
LABEL_25:

        break;
      default:
        break;
    }

    v23 = a2[v11];
    v24 = v23 - 5;
    if (v23 >= 5)
    {
      if (v11 <= 3)
      {
        v25 = v11;
      }

      else
      {
        v25 = 4;
      }

      switch(v25)
      {
        case 1:
          v26 = *a2;
          goto LABEL_37;
        case 2:
          v26 = *a2;
          goto LABEL_37;
        case 3:
          v26 = *a2 | (a2[2] << 16);
          goto LABEL_37;
        case 4:
          v26 = *a2;
LABEL_37:
          v27 = (v26 | (v24 << v12)) + 5;
          v23 = v26 + 5;
          if (v11 < 4)
          {
            v23 = v27;
          }

          break;
        default:
          break;
      }
    }

    switch(v23)
    {
      case 0u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        v28 = *(a2 + 4);
        a1[40] = a2[40];
        *(a1 + 4) = v28;
        *(a1 + 6) = *(a2 + 6);
        a1[v11] = 0;
        sub_1DD0DCF8C();
      case 1u:
        *a1 = *a2;
        v35 = *(v9 + 16);
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        v32 = *(v9 + 16);
        sub_1DD0DCF8C();
      case 3u:
        v33 = a2[40];
        if (v33 >= 2)
        {
          v33 = *a2 + 2;
        }

        if (v33 == 1)
        {
          v37 = *a2;
          v38 = *a2;
          *a1 = v37;
          a1[8] = a2[8];
          a1[40] = 1;
        }

        else if (v33)
        {
          v39 = *a2;
          v40 = *(a2 + 1);
          *(a1 + 25) = *(a2 + 25);
          *a1 = v39;
          *(a1 + 1) = v40;
        }

        else
        {
          v34 = *(a2 + 3);
          if (v34)
          {
            *(a1 + 3) = v34;
            (**(v34 - 8))(a1, a2);
          }

          else
          {
            v41 = *(a2 + 1);
            *a1 = *a2;
            *(a1 + 1) = v41;
          }

          v42 = *(a2 + 4);
          *(a1 + 4) = v42;
          a1[40] = 0;
          v43 = v42;
        }

        v31 = 3;
        goto LABEL_58;
      case 4u:
        v29 = *a2;
        v30 = *a2;
        *a1 = v29;
        a1[8] = a2[8];
        v31 = 4;
LABEL_58:
        a1[v11] = v31;
        return a1;
      default:

        return memcpy(a1, a2, v11 + 1);
    }
  }

  return a1;
}

void *sub_1DCFB0C80(_OWORD *a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  if (((v10 + 8) & ~v10) + *(v9 + 64) <= 0x38)
  {
    v11 = 56;
  }

  else
  {
    v11 = ((v10 + 8) & ~v10) + *(v9 + 64);
  }

  v12 = a2[v11];
  v13 = v12 - 5;
  if (v12 >= 5)
  {
    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    switch(v14)
    {
      case 1:
        v15 = *a2;
        goto LABEL_13;
      case 2:
        v15 = *a2;
        goto LABEL_13;
      case 3:
        v15 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v15 = *a2;
LABEL_13:
        v16 = (v15 | (v13 << (8 * v11))) + 5;
        if (v11 >= 4)
        {
          v12 = v15 + 5;
        }

        else
        {
          v12 = v16;
        }

        break;
      default:
        break;
    }
  }

  v17 = ~v10;
  switch(v12)
  {
    case 0u:
      v18 = *(a2 + 1);
      *a1 = *a2;
      a1[1] = v18;
      a1[2] = *(a2 + 2);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + v11) = 0;
      goto LABEL_33;
    case 1u:
      *a1 = *a2;
      (*(v9 + 32))((a1 + v10 + 8) & v17, &a2[v10 + 8] & v17, AssociatedTypeWitness);
      v19 = 1;
      goto LABEL_32;
    case 2u:
      *a1 = *a2;
      (*(v9 + 32))((a1 + v10 + 8) & v17, &a2[v10 + 8] & v17, AssociatedTypeWitness);
      v19 = 2;
      goto LABEL_32;
    case 3u:
      v20 = a2[40];
      if (v20 >= 2)
      {
        v20 = *a2 + 2;
      }

      if (v20 == 1)
      {
        *a1 = *a2;
        *(a1 + 8) = a2[8];
        *(a1 + 40) = 1;
      }

      else
      {
        v21 = *(a2 + 1);
        *a1 = *a2;
        a1[1] = v21;
        if (v20)
        {
          *(a1 + 25) = *(a2 + 25);
        }

        else
        {
          *(a1 + 4) = *(a2 + 4);
          *(a1 + 40) = 0;
        }
      }

      v19 = 3;
      goto LABEL_32;
    case 4u:
      *a1 = *a2;
      *(a1 + 8) = a2[8];
      v19 = 4;
LABEL_32:
      *(a1 + v11) = v19;
LABEL_33:
      result = a1;
      break;
    default:

      result = memcpy(a1, a2, v11 + 1);
      break;
  }

  return result;
}

unsigned __int8 *sub_1DCFB0F18(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v7 = a3 + 16;
    v6 = *(a3 + 16);
    v5 = *(v7 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(AssociatedTypeWitness - 8);
    v10 = *(v9 + 80);
    if (((v10 + 8) & ~v10) + *(v9 + 64) <= 0x38)
    {
      v11 = 56;
    }

    else
    {
      v11 = ((v10 + 8) & ~v10) + *(*(AssociatedTypeWitness - 8) + 64);
    }

    v12 = 8 * v11;
    v13 = a1[v11];
    v14 = v13 - 5;
    if (v13 >= 5)
    {
      if (v11 <= 3)
      {
        v15 = v11;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a1;
          goto LABEL_14;
        case 2:
          v16 = *a1;
          goto LABEL_14;
        case 3:
          v16 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v16 = *a1;
LABEL_14:
          v17 = (v16 | (v14 << v12)) + 5;
          v13 = v16 + 5;
          if (v11 < 4)
          {
            v13 = v17;
          }

          break;
        default:
          break;
      }
    }

    v18 = ~v10;
    switch(v13)
    {
      case 0u:
        v22 = *a1;

        v23 = *(a1 + 3);

        v21 = *(a1 + 6);
        goto LABEL_27;
      case 1u:
      case 2u:
        v19 = *a1;

        (*(v9 + 8))(&a1[v10 + 8] & v18, AssociatedTypeWitness);
        break;
      case 3u:
        v20 = a1[40];
        if (v20 >= 2)
        {
          v20 = *a1 + 2;
        }

        if (v20 == 1)
        {
          goto LABEL_25;
        }

        if (!v20)
        {
          if (*(a1 + 3))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          v21 = *(a1 + 4);
LABEL_27:
        }

        break;
      case 4u:
LABEL_25:

        break;
      default:
        break;
    }

    v24 = a2[v11];
    v25 = v24 - 5;
    if (v24 >= 5)
    {
      if (v11 <= 3)
      {
        v26 = v11;
      }

      else
      {
        v26 = 4;
      }

      switch(v26)
      {
        case 1:
          v27 = *a2;
          goto LABEL_37;
        case 2:
          v27 = *a2;
          goto LABEL_37;
        case 3:
          v27 = *a2 | (a2[2] << 16);
          goto LABEL_37;
        case 4:
          v27 = *a2;
LABEL_37:
          v28 = (v27 | (v25 << v12)) + 5;
          v24 = v27 + 5;
          if (v11 < 4)
          {
            v24 = v28;
          }

          break;
        default:
          break;
      }
    }

    switch(v24)
    {
      case 0u:
        v29 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v29;
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 6) = *(a2 + 6);
        a1[v11] = 0;
        return a1;
      case 1u:
        *a1 = *a2;
        (*(v9 + 32))(&a1[v10 + 8] & v18, &a2[v10 + 8] & v18, AssociatedTypeWitness);
        v30 = 1;
        goto LABEL_55;
      case 2u:
        *a1 = *a2;
        (*(v9 + 32))(&a1[v10 + 8] & v18, &a2[v10 + 8] & v18, AssociatedTypeWitness);
        v30 = 2;
        goto LABEL_55;
      case 3u:
        v31 = a2[40];
        if (v31 >= 2)
        {
          v31 = *a2 + 2;
        }

        if (v31 == 1)
        {
          *a1 = *a2;
          a1[8] = a2[8];
          a1[40] = 1;
        }

        else
        {
          v32 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v32;
          if (v31)
          {
            *(a1 + 25) = *(a2 + 25);
          }

          else
          {
            *(a1 + 4) = *(a2 + 4);
            a1[40] = 0;
          }
        }

        v30 = 3;
        goto LABEL_55;
      case 4u:
        *a1 = *a2;
        a1[8] = a2[8];
        v30 = 4;
LABEL_55:
        a1[v11] = v30;
        return a1;
      default:

        return memcpy(a1, a2, v11 + 1);
    }
  }

  return a1;
}

uint64_t sub_1DCFB130C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = ((*(v8 + 80) + 8) & ~*(v8 + 80)) + *(v8 + 64);
  v10 = 56;
  if (v9 > 0x38)
  {
    v10 = v9;
  }

  v11 = 250 - (1u >> (8 * v10));
  if (v10 > 3)
  {
    v11 = 250;
  }

  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_24;
  }

  v12 = v10 + 1;
  v13 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v16 = ((~(-1 << v13) + a2 - v11) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v16 < 2)
    {
LABEL_24:
      v18 = *(a1 + v10);
      if (v11 <= (v18 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v18);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_24;
  }

LABEL_16:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v11 + (v12 | v17) + 1;
}

void sub_1DCFB14CC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = ((*(v9 + 80) + 8) & ~*(v9 + 80)) + *(v9 + 64);
  if (v10 <= 0x38)
  {
    v10 = 56;
  }

  if (v10 <= 3)
  {
    v11 = 250 - (1u >> (8 * v10));
  }

  else
  {
    v11 = 250;
  }

  v12 = v10 + 1;
  v13 = 8 * (v10 + 1);
  if (v11 >= a3)
  {
    v14 = 0;
  }

  else if (v12 <= 3)
  {
    v17 = ((~(-1 << v13) + a3 - v11) >> v13) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (v11 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v10] = -a2;
        }

        break;
    }
  }

  else
  {
    v15 = ~v11 + a2;
    if (v12 < 4)
    {
      v16 = (v15 >> v13) + 1;
      if (v10 != -1)
      {
        v19 = v15 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v12 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v15;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v15;
      v16 = 1;
    }

    switch(v14)
    {
      case 1:
        a1[v12] = v16;
        break;
      case 2:
        *&a1[v12] = v16;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v12] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCFB170C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = ((*(v5 + 80) + 8) & ~*(v5 + 80)) + *(v5 + 64);
  if (v6 <= 0x38)
  {
    v6 = 56;
  }

  result = a1[v6];
  if (result >= 5)
  {
    if (v6 <= 3)
    {
      v8 = v6;
    }

    else
    {
      v8 = 4;
    }

    switch(v8)
    {
      case 1:
        v9 = *a1;
        goto LABEL_12;
      case 2:
        v9 = *a1;
        goto LABEL_12;
      case 3:
        v9 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v9 = *a1;
LABEL_12:
        if (v6 >= 4)
        {
          result = (v9 + 5);
        }

        else
        {
          result = (v9 | ((result - 5) << (8 * v6))) + 5;
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1DCFB1820(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = ((*(v8 + 80) + 8) & ~*(v8 + 80)) + *(v8 + 64);
  if (a2 > 4)
  {
    if (v9 <= 0x38)
    {
      v10 = 56;
    }

    else
    {
      v10 = v9;
    }

    v11 = a2 - 5;
    if (v10 < 4)
    {
      a1[v10] = (v11 >> (8 * v10)) + 5;
      if (v10)
      {
        v12 = v11 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v12;
          a1[2] = BYTE2(v12);
        }

        else if (v10 == 2)
        {
          *a1 = v12;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      a1[v10] = 5;
      bzero(a1, v10);
      *a1 = v11;
    }
  }

  else
  {
    if (v9 <= 0x38)
    {
      v9 = 56;
    }

    a1[v9] = a2;
  }
}

uint64_t sub_1DCFB1980()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DCFAC56C();
}

uint64_t sub_1DCFB1A40(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCFB1A94()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1DCB4AD3C;

  return sub_1DCFAE9C8(v3, v4, v5, v6);
}

uint64_t sub_1DCFB1B5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for SiriKitNeedsDisambiguationFlow.State();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8);
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

char *sub_1DCFB1BD8(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 80);
  if (((v10 + 8) & ~v10) + *(v8 + 64) <= 0x38)
  {
    v11 = 56;
  }

  else
  {
    v11 = ((v10 + 8) & ~v10) + *(v8 + 64);
  }

  v12 = v11 + 1;
  if (v10 > 7u || (v10 & 0x100000) != 0 || v12 > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v15 = a2[v11];
  if (v11 <= 3)
  {
    v16 = 250 - (1u >> (8 * v11));
  }

  else
  {
    v16 = 250;
  }

  if (v16 <= (v15 ^ 0xFF))
  {
    if (v15 >= 5)
    {
      if (v11 <= 3)
      {
        v18 = v11;
      }

      else
      {
        v18 = 4;
      }

      switch(v18)
      {
        case 1:
          v19 = *a2;
          goto LABEL_29;
        case 2:
          v19 = *a2;
          goto LABEL_29;
        case 3:
          v19 = *a2 | (a2[2] << 16);
          goto LABEL_29;
        case 4:
          v19 = *a2;
LABEL_29:
          v15 = (v19 | ((v15 - 5) << (8 * v11))) + 5;
          if (v11 >= 4)
          {
            v15 = v19 + 5;
          }

          break;
        default:
          break;
      }
    }

    switch(v15)
    {
      case 0u:
        v20 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v20;
        v21 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v21;
        *(a1 + 4) = *(a2 + 4);
        a1[40] = a2[40];
        *(a1 + 6) = *(a2 + 6);
        a1[v11] = 0;
        sub_1DD0DCF8C();
      case 1u:
        *a1 = *a2;
        v28 = *(v9 + 16);
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        v25 = *(v9 + 16);
        sub_1DD0DCF8C();
      case 3u:
        v26 = a2[40];
        if (v26 >= 2)
        {
          v26 = *a2 + 2;
        }

        if (v26 == 1)
        {
          v29 = *a2;
          v30 = *a2;
          *a1 = v29;
          a1[8] = a2[8];
          a1[40] = 1;
        }

        else if (v26)
        {
          v31 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v31;
          *(a1 + 25) = *(a2 + 25);
        }

        else
        {
          v27 = *(a2 + 3);
          if (v27)
          {
            *(a1 + 3) = v27;
            (**(v27 - 8))(a1, a2);
          }

          else
          {
            v32 = *(a2 + 1);
            *a1 = *a2;
            *(a1 + 1) = v32;
          }

          v33 = *(a2 + 4);
          *(a1 + 4) = v33;
          a1[40] = 0;
          v34 = v33;
        }

        v24 = 3;
        goto LABEL_47;
      case 4u:
        v22 = *a2;
        v23 = *a2;
        *a1 = v22;
        a1[8] = a2[8];
        v24 = 4;
LABEL_47:
        a1[v11] = v24;
        return a1;
      default:
        break;
    }
  }

  return memcpy(a1, a2, v12);
}

void sub_1DCFB1F74(id *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 80);
  v7 = 56;
  if (((v6 + 8) & ~v6) + *(*(AssociatedTypeWitness - 8) + 64) > 0x38)
  {
    v7 = ((v6 + 8) & ~v6) + *(*(AssociatedTypeWitness - 8) + 64);
  }

  v8 = *(a1 + v7);
  if (v7 <= 3)
  {
    v9 = 250 - (1u >> (8 * v7));
  }

  else
  {
    v9 = 250;
  }

  if (v9 <= (v8 ^ 0xFF))
  {
    if (v8 >= 5)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      switch(v10)
      {
        case 1:
          v11 = *a1;
          goto LABEL_17;
        case 2:
          v11 = *a1;
          goto LABEL_17;
        case 3:
          v11 = *a1 | (*(a1 + 2) << 16);
          goto LABEL_17;
        case 4:
          v11 = *a1;
LABEL_17:
          v8 = (v11 | ((v8 - 5) << (8 * v7))) + 5;
          if (v7 >= 4)
          {
            v8 = v11 + 5;
          }

          break;
        default:
          break;
      }
    }

    switch(v8)
    {
      case 0u:
        v16 = *a1;

        v17 = a1[3];

        v15 = a1[6];
        goto LABEL_34;
      case 1u:
      case 2u:
        v18 = *(AssociatedTypeWitness - 8);
        v12 = *a1;

        v13 = *(v18 + 8);

        v13((a1 + v6 + 8) & ~v6, AssociatedTypeWitness);
        return;
      case 3u:
        v14 = *(a1 + 40);
        if (v14 >= 2)
        {
          v14 = *a1 + 2;
        }

        if (v14 == 1)
        {
          goto LABEL_30;
        }

        if (v14)
        {
          return;
        }

        if (a1[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        v15 = a1[4];
LABEL_34:

LABEL_32:

        break;
      case 4u:
LABEL_30:
        v15 = *a1;

        goto LABEL_32;
      default:
        return;
    }
  }
}

char *sub_1DCFB21E8(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 80);
  if (((v10 + 8) & ~v10) + *(v8 + 64) <= 0x38)
  {
    v11 = 56;
  }

  else
  {
    v11 = ((v10 + 8) & ~v10) + *(v8 + 64);
  }

  v12 = a2[v11];
  if (v11 <= 3)
  {
    v13 = 250 - (1u >> (8 * v11));
  }

  else
  {
    v13 = 250;
  }

  if (v13 <= (v12 ^ 0xFF))
  {
    if (v12 >= 5)
    {
      if (v11 <= 3)
      {
        v15 = v11;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a2;
          goto LABEL_20;
        case 2:
          v16 = *a2;
          goto LABEL_20;
        case 3:
          v16 = *a2 | (a2[2] << 16);
          goto LABEL_20;
        case 4:
          v16 = *a2;
LABEL_20:
          v12 = (v16 | ((v12 - 5) << (8 * v11))) + 5;
          if (v11 >= 4)
          {
            v12 = v16 + 5;
          }

          break;
        default:
          break;
      }
    }

    switch(v12)
    {
      case 0u:
        v17 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v17;
        v18 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v18;
        *(a1 + 4) = *(a2 + 4);
        a1[40] = a2[40];
        *(a1 + 6) = *(a2 + 6);
        a1[v11] = 0;
        sub_1DD0DCF8C();
      case 1u:
        *a1 = *a2;
        v25 = *(v9 + 16);
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        v22 = *(v9 + 16);
        sub_1DD0DCF8C();
      case 3u:
        v23 = a2[40];
        if (v23 >= 2)
        {
          v23 = *a2 + 2;
        }

        if (v23 == 1)
        {
          v26 = *a2;
          v27 = *a2;
          *a1 = v26;
          a1[8] = a2[8];
          a1[40] = 1;
        }

        else if (v23)
        {
          v28 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v28;
          *(a1 + 25) = *(a2 + 25);
        }

        else
        {
          v24 = *(a2 + 3);
          if (v24)
          {
            *(a1 + 3) = v24;
            (**(v24 - 8))(a1, a2);
          }

          else
          {
            v29 = *(a2 + 1);
            *a1 = *a2;
            *(a1 + 1) = v29;
          }

          v30 = *(a2 + 4);
          *(a1 + 4) = v30;
          a1[40] = 0;
          v31 = v30;
        }

        v21 = 3;
        goto LABEL_38;
      case 4u:
        v19 = *a2;
        v20 = *a2;
        *a1 = v19;
        a1[8] = a2[8];
        v21 = 4;
LABEL_38:
        a1[v11] = v21;
        return a1;
      default:
        break;
    }
  }

  return memcpy(a1, a2, v11 + 1);
}

unsigned __int8 *sub_1DCFB2548(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = ~v10;
  if (((v10 + 8) & ~v10) + *(v9 + 64) <= 0x38)
  {
    v12 = 56;
  }

  else
  {
    v12 = ((v10 + 8) & ~v10) + *(*(AssociatedTypeWitness - 8) + 64);
  }

  v13 = 8 * v12;
  v14 = 250 - (1u >> (8 * v12));
  v15 = a1[v12];
  if (v12 > 3)
  {
    v14 = 250;
  }

  v16 = a2[v12];
  v17 = v16 ^ 0xFF;
  if (v14 > (v15 ^ 0xFF))
  {
    if (v14 <= v17)
    {
      if (v16 >= 5)
      {
        if (v12 <= 3)
        {
          v18 = v12;
        }

        else
        {
          v18 = 4;
        }

        switch(v18)
        {
          case 1:
            v19 = *a2;
            goto LABEL_33;
          case 2:
            v19 = *a2;
            goto LABEL_33;
          case 3:
            v19 = *a2 | (a2[2] << 16);
            goto LABEL_33;
          case 4:
            v19 = *a2;
LABEL_33:
            v16 = (v19 | ((v16 - 5) << v13)) + 5;
            v25 = v19 + 5;
            if (v12 >= 4)
            {
              v16 = v25;
            }

            break;
          default:
            break;
        }
      }

      switch(v16)
      {
        case 0u:
          goto LABEL_82;
        case 1u:
          goto LABEL_94;
        case 2u:
          goto LABEL_87;
        case 3u:
          goto LABEL_88;
        case 4u:
          goto LABEL_86;
        default:
          break;
      }
    }

LABEL_83:

    return memcpy(a1, a2, v12 + 1);
  }

  if (v14 > v17)
  {
    if (v15 >= 5)
    {
      if (v12 <= 3)
      {
        v20 = v12;
      }

      else
      {
        v20 = 4;
      }

      switch(v20)
      {
        case 1:
          v21 = *a1;
          goto LABEL_37;
        case 2:
          v21 = *a1;
          goto LABEL_37;
        case 3:
          v21 = *a1 | (a1[2] << 16);
          goto LABEL_37;
        case 4:
          v21 = *a1;
LABEL_37:
          v15 = (v21 | ((v15 - 5) << v13)) + 5;
          v26 = v21 + 5;
          if (v12 >= 4)
          {
            v15 = v26;
          }

          break;
        default:
          break;
      }
    }

    switch(v15)
    {
      case 0u:
        v30 = *a1;

        v31 = *(a1 + 3);

        v29 = *(a1 + 6);
        goto LABEL_50;
      case 1u:
      case 2u:
        v27 = *a1;

        (*(v9 + 8))(&a1[v10 + 8] & v11, AssociatedTypeWitness);
        goto LABEL_83;
      case 3u:
        v28 = a1[40];
        if (v28 >= 2)
        {
          v28 = *a1 + 2;
        }

        if (v28 == 1)
        {
          goto LABEL_48;
        }

        if (!v28)
        {
          if (*(a1 + 3))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          v29 = *(a1 + 4);
LABEL_50:
        }

        break;
      case 4u:
LABEL_48:

        break;
      default:
        goto LABEL_83;
    }

    goto LABEL_83;
  }

  if (a1 != a2)
  {
    v22 = v15 - 5;
    if (v15 >= 5)
    {
      if (v12 <= 3)
      {
        v23 = v12;
      }

      else
      {
        v23 = 4;
      }

      switch(v23)
      {
        case 1:
          v24 = *a1;
          goto LABEL_54;
        case 2:
          v24 = *a1;
          goto LABEL_54;
        case 3:
          v24 = *a1 | (a1[2] << 16);
          goto LABEL_54;
        case 4:
          v24 = *a1;
LABEL_54:
          if (v12 < 4)
          {
            v24 |= v22 << v13;
          }

          v15 = v24 + 5;
          break;
        default:
          break;
      }
    }

    switch(v15)
    {
      case 0u:
        v35 = *a1;

        v36 = *(a1 + 3);

        v34 = *(a1 + 6);
        goto LABEL_68;
      case 1u:
      case 2u:
        v32 = *a1;

        (*(v9 + 8))(&a1[v10 + 8] & v11, AssociatedTypeWitness);
        break;
      case 3u:
        v33 = a1[40];
        if (v33 >= 2)
        {
          v33 = *a1 + 2;
        }

        if (v33 == 1)
        {
          goto LABEL_66;
        }

        if (!v33)
        {
          if (*(a1 + 3))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          v34 = *(a1 + 4);
LABEL_68:
        }

        break;
      case 4u:
LABEL_66:

        break;
      default:
        break;
    }

    v37 = a2[v12];
    v38 = v37 - 5;
    if (v37 >= 5)
    {
      if (v12 <= 3)
      {
        v39 = v12;
      }

      else
      {
        v39 = 4;
      }

      switch(v39)
      {
        case 1:
          v40 = *a2;
          goto LABEL_78;
        case 2:
          v40 = *a2;
          goto LABEL_78;
        case 3:
          v40 = *a2 | (a2[2] << 16);
          goto LABEL_78;
        case 4:
          v40 = *a2;
LABEL_78:
          if (v12 < 4)
          {
            v37 = (v40 | (v38 << v13)) + 5;
          }

          else
          {
            v37 = v40 + 5;
          }

          break;
        default:
          break;
      }
    }

    switch(v37)
    {
      case 0u:
LABEL_82:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        v41 = *(a2 + 4);
        a1[40] = a2[40];
        *(a1 + 4) = v41;
        *(a1 + 6) = *(a2 + 6);
        a1[v12] = 0;
        sub_1DD0DCF8C();
      case 1u:
LABEL_94:
        *a1 = *a2;
        v49 = *(v9 + 16);
        sub_1DD0DCF8C();
      case 2u:
LABEL_87:
        *a1 = *a2;
        v46 = *(v9 + 16);
        sub_1DD0DCF8C();
      case 3u:
LABEL_88:
        v47 = a2[40];
        if (v47 >= 2)
        {
          v47 = *a2 + 2;
        }

        if (v47 == 1)
        {
          v50 = *a2;
          v51 = *a2;
          *a1 = v50;
          a1[8] = a2[8];
          a1[40] = 1;
        }

        else if (v47)
        {
          v52 = *a2;
          v53 = *(a2 + 1);
          *(a1 + 25) = *(a2 + 25);
          *a1 = v52;
          *(a1 + 1) = v53;
        }

        else
        {
          v48 = *(a2 + 3);
          if (v48)
          {
            *(a1 + 3) = v48;
            (**(v48 - 8))(a1, a2);
          }

          else
          {
            v54 = *(a2 + 1);
            *a1 = *a2;
            *(a1 + 1) = v54;
          }

          v55 = *(a2 + 4);
          *(a1 + 4) = v55;
          a1[40] = 0;
          v56 = v55;
        }

        v45 = 3;
        goto LABEL_100;
      case 4u:
LABEL_86:
        v43 = *a2;
        v44 = *a2;
        *a1 = v43;
        a1[8] = a2[8];
        v45 = 4;
LABEL_100:
        a1[v12] = v45;
        return a1;
      default:
        goto LABEL_83;
    }
  }

  return a1;
}

void *sub_1DCFB2BDC(_OWORD *a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  if (((v10 + 8) & ~v10) + *(v9 + 64) <= 0x38)
  {
    v11 = 56;
  }

  else
  {
    v11 = ((v10 + 8) & ~v10) + *(v9 + 64);
  }

  v12 = a2[v11];
  if (v11 <= 3)
  {
    v13 = 250 - (1u >> (8 * v11));
  }

  else
  {
    v13 = 250;
  }

  if (v13 <= (v12 ^ 0xFF))
  {
    if (v12 >= 5)
    {
      if (v11 <= 3)
      {
        v15 = v11;
      }

      else
      {
        v15 = 4;
      }

      switch(v15)
      {
        case 1:
          v16 = *a2;
          goto LABEL_20;
        case 2:
          v16 = *a2;
          goto LABEL_20;
        case 3:
          v16 = *a2 | (a2[2] << 16);
          goto LABEL_20;
        case 4:
          v16 = *a2;
LABEL_20:
          v12 = (v16 | ((v12 - 5) << (8 * v11))) + 5;
          if (v11 >= 4)
          {
            v12 = v16 + 5;
          }

          break;
        default:
          break;
      }
    }

    v17 = ~v10;
    switch(v12)
    {
      case 0u:
        v18 = *(a2 + 1);
        *a1 = *a2;
        a1[1] = v18;
        a1[2] = *(a2 + 2);
        *(a1 + 6) = *(a2 + 6);
        *(a1 + v11) = 0;
        goto LABEL_36;
      case 1u:
        *a1 = *a2;
        (*(v9 + 32))((a1 + v10 + 8) & v17, &a2[v10 + 8] & v17, AssociatedTypeWitness);
        v19 = 1;
        goto LABEL_35;
      case 2u:
        *a1 = *a2;
        (*(v9 + 32))((a1 + v10 + 8) & v17, &a2[v10 + 8] & v17, AssociatedTypeWitness);
        v19 = 2;
        goto LABEL_35;
      case 3u:
        v20 = a2[40];
        if (v20 >= 2)
        {
          v20 = *a2 + 2;
        }

        if (v20 == 1)
        {
          *a1 = *a2;
          *(a1 + 8) = a2[8];
          *(a1 + 40) = 1;
        }

        else
        {
          v21 = *(a2 + 1);
          *a1 = *a2;
          a1[1] = v21;
          if (v20)
          {
            *(a1 + 25) = *(a2 + 25);
          }

          else
          {
            *(a1 + 4) = *(a2 + 4);
            *(a1 + 40) = 0;
          }
        }

        v19 = 3;
        goto LABEL_35;
      case 4u:
        *a1 = *a2;
        *(a1 + 8) = a2[8];
        v19 = 4;
LABEL_35:
        *(a1 + v11) = v19;
LABEL_36:
        result = a1;
        break;
      default:
        goto LABEL_8;
    }
  }

  else
  {
LABEL_8:

    return memcpy(a1, a2, v11 + 1);
  }

  return result;
}

unsigned __int8 *sub_1DCFB2E9C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 80);
  v11 = ~v10;
  if (((v10 + 8) & ~v10) + *(v9 + 64) <= 0x38)
  {
    v12 = 56;
  }

  else
  {
    v12 = ((v10 + 8) & ~v10) + *(*(AssociatedTypeWitness - 8) + 64);
  }

  v13 = 8 * v12;
  v14 = 250 - (1u >> (8 * v12));
  v15 = a1[v12];
  if (v12 > 3)
  {
    v14 = 250;
  }

  v16 = a2[v12];
  v17 = v16 ^ 0xFF;
  if (v14 > (v15 ^ 0xFF))
  {
    if (v14 <= v17)
    {
      if (v16 >= 5)
      {
        if (v12 <= 3)
        {
          v18 = v12;
        }

        else
        {
          v18 = 4;
        }

        switch(v18)
        {
          case 1:
            v19 = *a2;
            goto LABEL_33;
          case 2:
            v19 = *a2;
            goto LABEL_33;
          case 3:
            v19 = *a2 | (a2[2] << 16);
            goto LABEL_33;
          case 4:
            v19 = *a2;
LABEL_33:
            v16 = (v19 | ((v16 - 5) << v13)) + 5;
            v25 = v19 + 5;
            if (v12 >= 4)
            {
              v16 = v25;
            }

            break;
          default:
            break;
        }
      }

      switch(v16)
      {
        case 0u:
          goto LABEL_82;
        case 1u:
          goto LABEL_93;
        case 2u:
          goto LABEL_87;
        case 3u:
          goto LABEL_88;
        case 4u:
          goto LABEL_86;
        default:
          break;
      }
    }

LABEL_83:

    return memcpy(a1, a2, v12 + 1);
  }

  if (v14 > v17)
  {
    if (v15 >= 5)
    {
      if (v12 <= 3)
      {
        v20 = v12;
      }

      else
      {
        v20 = 4;
      }

      switch(v20)
      {
        case 1:
          v21 = *a1;
          goto LABEL_37;
        case 2:
          v21 = *a1;
          goto LABEL_37;
        case 3:
          v21 = *a1 | (a1[2] << 16);
          goto LABEL_37;
        case 4:
          v21 = *a1;
LABEL_37:
          v15 = (v21 | ((v15 - 5) << v13)) + 5;
          v26 = v21 + 5;
          if (v12 >= 4)
          {
            v15 = v26;
          }

          break;
        default:
          break;
      }
    }

    switch(v15)
    {
      case 0u:
        v30 = *a1;

        v31 = *(a1 + 3);

        v29 = *(a1 + 6);
        goto LABEL_50;
      case 1u:
      case 2u:
        v27 = *a1;

        (*(v9 + 8))(&a1[v10 + 8] & v11, AssociatedTypeWitness);
        goto LABEL_83;
      case 3u:
        v28 = a1[40];
        if (v28 >= 2)
        {
          v28 = *a1 + 2;
        }

        if (v28 == 1)
        {
          goto LABEL_48;
        }

        if (!v28)
        {
          if (*(a1 + 3))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          v29 = *(a1 + 4);
LABEL_50:
        }

        break;
      case 4u:
LABEL_48:

        break;
      default:
        goto LABEL_83;
    }

    goto LABEL_83;
  }

  if (a1 != a2)
  {
    v22 = v15 - 5;
    if (v15 >= 5)
    {
      if (v12 <= 3)
      {
        v23 = v12;
      }

      else
      {
        v23 = 4;
      }

      switch(v23)
      {
        case 1:
          v24 = *a1;
          goto LABEL_54;
        case 2:
          v24 = *a1;
          goto LABEL_54;
        case 3:
          v24 = *a1 | (a1[2] << 16);
          goto LABEL_54;
        case 4:
          v24 = *a1;
LABEL_54:
          if (v12 < 4)
          {
            v24 |= v22 << v13;
          }

          v15 = v24 + 5;
          break;
        default:
          break;
      }
    }

    switch(v15)
    {
      case 0u:
        v35 = *a1;

        v36 = *(a1 + 3);

        v34 = *(a1 + 6);
        goto LABEL_68;
      case 1u:
      case 2u:
        v32 = *a1;

        (*(v9 + 8))(&a1[v10 + 8] & v11, AssociatedTypeWitness);
        break;
      case 3u:
        v33 = a1[40];
        if (v33 >= 2)
        {
          v33 = *a1 + 2;
        }

        if (v33 == 1)
        {
          goto LABEL_66;
        }

        if (!v33)
        {
          if (*(a1 + 3))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          v34 = *(a1 + 4);
LABEL_68:
        }

        break;
      case 4u:
LABEL_66:

        break;
      default:
        break;
    }

    v37 = a2[v12];
    v38 = v37 - 5;
    if (v37 >= 5)
    {
      if (v12 <= 3)
      {
        v39 = v12;
      }

      else
      {
        v39 = 4;
      }

      switch(v39)
      {
        case 1:
          v40 = *a2;
          goto LABEL_78;
        case 2:
          v40 = *a2;
          goto LABEL_78;
        case 3:
          v40 = *a2 | (a2[2] << 16);
          goto LABEL_78;
        case 4:
          v40 = *a2;
LABEL_78:
          if (v12 < 4)
          {
            v37 = (v40 | (v38 << v13)) + 5;
          }

          else
          {
            v37 = v40 + 5;
          }

          break;
        default:
          break;
      }
    }

    switch(v37)
    {
      case 0u:
LABEL_82:
        v41 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v41;
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 6) = *(a2 + 6);
        a1[v12] = 0;
        return a1;
      case 1u:
LABEL_93:
        *a1 = *a2;
        (*(v9 + 32))(&a1[v10 + 8] & v11, &a2[v10 + 8] & v11, AssociatedTypeWitness);
        v43 = 1;
        break;
      case 2u:
LABEL_87:
        *a1 = *a2;
        (*(v9 + 32))(&a1[v10 + 8] & v11, &a2[v10 + 8] & v11, AssociatedTypeWitness);
        v43 = 2;
        break;
      case 3u:
LABEL_88:
        v44 = a2[40];
        if (v44 >= 2)
        {
          v44 = *a2 + 2;
        }

        if (v44 == 1)
        {
          *a1 = *a2;
          a1[8] = a2[8];
          a1[40] = 1;
        }

        else
        {
          v45 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v45;
          if (v44)
          {
            *(a1 + 25) = *(a2 + 25);
          }

          else
          {
            *(a1 + 4) = *(a2 + 4);
            a1[40] = 0;
          }
        }

        v43 = 3;
        break;
      case 4u:
LABEL_86:
        *a1 = *a2;
        a1[8] = a2[8];
        v43 = 4;
        break;
      default:
        goto LABEL_83;
    }

    a1[v12] = v43;
  }

  return a1;
}

uint64_t sub_1DCFB34A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = ((*(v8 + 80) + 8) & ~*(v8 + 80)) + *(v8 + 64);
  v10 = 56;
  if (v9 > 0x38)
  {
    v10 = v9;
  }

  v11 = 250 - (1u >> (8 * v10));
  if (v10 > 3)
  {
    v11 = 250;
  }

  if (!a2)
  {
    return 0;
  }

  if (v11 - 1 >= a2)
  {
    goto LABEL_24;
  }

  v12 = v10 + 1;
  v13 = 8 * (v10 + 1);
  if ((v10 + 1) > 3)
  {
    goto LABEL_8;
  }

  v16 = ((~(-1 << v13) + a2 - v11 + 1) >> v13) + 1;
  if (HIWORD(v16))
  {
    v14 = *(a1 + v12);
    if (v14)
    {
      goto LABEL_16;
    }

LABEL_24:
    v18 = *(a1 + v10);
    if (v11 <= (v18 ^ 0xFFu))
    {
      v19 = 0;
    }

    else
    {
      v19 = 256 - v18;
    }

    if (v19 >= 2)
    {
      return v19 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v16 > 0xFF)
  {
    v14 = *(a1 + v12);
    if (*(a1 + v12))
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (v16 < 2)
  {
    goto LABEL_24;
  }

LABEL_8:
  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_24;
  }

LABEL_16:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return (v12 | v17) + v11;
}

void sub_1DCFB3670(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = ((*(v9 + 80) + 8) & ~*(v9 + 80)) + *(v9 + 64);
  v11 = 56;
  if (v10 > 0x38)
  {
    v11 = v10;
  }

  if (v11 <= 3)
  {
    v12 = 250 - (1u >> (8 * v11));
  }

  else
  {
    v12 = 250;
  }

  v13 = v11 + 1;
  v14 = 8 * (v11 + 1);
  if (v12 - 1 >= a3)
  {
    v15 = 0;
  }

  else if (v13 <= 3)
  {
    v18 = ((~(-1 << v14) + a3 - v12 + 1) >> v14) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v12 - 1 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v13] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v13] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_49:
        __break(1u);
        break;
      case 4:
        *&a1[v13] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          v21 = a2 - v12;
          if (a2 >= v12)
          {
            if (v13 < 4)
            {
              if (v11 != -1)
              {
                v22 = v21 & ~(-1 << v14);
                bzero(a1, v13);
                if (v13 == 3)
                {
                  *a1 = v22;
                  a1[2] = BYTE2(v22);
                }

                else if (v13 == 2)
                {
                  *a1 = v22;
                }

                else
                {
                  *a1 = v21;
                }
              }
            }

            else
            {
              bzero(a1, v11 + 1);
              *a1 = v21;
            }
          }

          else
          {
            a1[v11] = ~a2;
          }
        }

        break;
    }
  }

  else
  {
    v16 = a2 - v12;
    if (v13 < 4)
    {
      v17 = (v16 >> v14) + 1;
      if (v11 != -1)
      {
        v20 = v16 & ~(-1 << v14);
        bzero(a1, v13);
        if (v13 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v13 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11 + 1);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v13] = v17;
        break;
      case 2:
        *&a1[v13] = v17;
        break;
      case 3:
        goto LABEL_49;
      case 4:
        *&a1[v13] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCFB3924(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = ((*(v5 + 80) + 8) & ~*(v5 + 80)) + *(v5 + 64);
  if (v6 <= 0x38)
  {
    v6 = 56;
  }

  v7 = *(a1 + v6) | 0xFFFFFF00;
  if (v6 <= 3)
  {
    v8 = (1u >> (8 * v6)) - 251;
  }

  else
  {
    v8 = -251;
  }

  if (v8 < v7)
  {
    return -v7;
  }

  else
  {
    return 0;
  }
}

void sub_1DCFB39EC(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = ((*(v8 + 80) + 8) & ~*(v8 + 80)) + *(v8 + 64);
  if (v9 <= 0x38)
  {
    v9 = 56;
  }

  v10 = 250 - (1u >> (8 * v9));
  if (v9 > 3)
  {
    v10 = 250;
  }

  if (v10 >= a2)
  {
    if (a2)
    {
      a1[v9] = -a2;
    }
  }

  else
  {
    v11 = (v9 + 1);
    v12 = -1 << (8 * (v9 + 1));
    if (v11 <= 3)
    {
      v13 = ~v12;
    }

    else
    {
      v13 = -1;
    }

    if (v11)
    {
      v14 = (~v10 + a2) & v13;
      if (v11 <= 3)
      {
        v15 = v11;
      }

      else
      {
        v15 = 4;
      }

      bzero(a1, v11);
      switch(v15)
      {
        case 2:
          *a1 = v14;
          break;
        case 3:
          *a1 = v14;
          a1[2] = BYTE2(v14);
          break;
        case 4:
          *a1 = v14;
          break;
        default:
          *a1 = v14;
          break;
      }
    }
  }
}

uint64_t SiriKitParameterMetadata.__allocating_init(parameterName:shouldResolve:confirmationStates:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  result = swift_allocObject();
  *(result + 32) = a1;
  *(result + 40) = a2;
  *(result + 24) = a3;
  *(result + 16) = a4;
  return result;
}

uint64_t SiriKitParameterMetadata.debugDescription.getter()
{
  sub_1DD0DEC1C();
  OUTLINED_FUNCTION_0_121();
  MEMORY[0x1E12A6780](*(v0 + 32), *(v0 + 40));
  OUTLINED_FUNCTION_0_121();
  if (*(v0 + 24))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 24))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v1, v2);

  MEMORY[0x1E12A6780](0xD000000000000016, 0x80000001DD128C90);
  v3 = MEMORY[0x1E12A6960](*(v0 + 16), &type metadata for SiriKitConfirmationState);
  MEMORY[0x1E12A6780](v3);

  MEMORY[0x1E12A6780](32032, 0xE200000000000000);
  return 0;
}

uint64_t SiriKitParameterMetadata.parameterName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t static SiriKitParameterMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1DCC0D324(*(a1 + 16), *(a2 + 16)) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    return 1;
  }

  return sub_1DD0DF0AC();
}

void static SiriKitPlatformErrorCase.fromParse(_:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Parse(0);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  OUTLINED_FUNCTION_16();
  v11 = (v10 - v9);
  sub_1DCB29E58(a1, v10 - v9);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1DCB29EBC(v11);
LABEL_19:
    v25 = 3;
    goto LABEL_20;
  }

  v13 = *v11;
  v12 = v11[1];
  v14 = v11[2];
  v26[0] = *v11;
  v26[1] = v12;
  sub_1DCD00AE8();
  sub_1DCD00B3C();
  if ((sub_1DD0DDF3C() & 1) == 0)
  {

    goto LABEL_19;
  }

  if (("" & 0x2000000000000000) != 0)
  {
    v15 = ("" >> 40) & 0xF0000;
  }

  else
  {
    v15 = 1835008;
  }

  if (("" & 0x1000000000000000) != 0)
  {
    v16 = 11;
  }

  else
  {
    v16 = 7;
  }

  v17 = sub_1DCFB4334(v15 | v16, v13, v12);
  MEMORY[0x1E12A66E0](v17);

  v18 = sub_1DCFB43D8();
  if (v18 == 3)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v19 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v19, qword_1EDE57E00);

    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v26[0] = v23;
      *v22 = 136315138;

      v24 = sub_1DCB10E9C(v13, v12, v26);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_1DCAFC000, v20, v21, "Unknown platform error invocation identifier: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1E12A8390](v23, -1, -1);
      MEMORY[0x1E12A8390](v22, -1, -1);
    }

    else
    {
    }

    goto LABEL_19;
  }

  v25 = v18;

LABEL_20:
  *a2 = v25;
}

uint64_t SiriKitPlatformErrorCase.makePluginActionToRenderError()@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for Parse(0);
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_16();
  v10 = (v9 - v8);
  v11 = type metadata accessor for Input(0);
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  OUTLINED_FUNCTION_16();
  v18 = v17 - v16;
  v19 = "supportedForPersonalRequests";
  v20 = 0xD00000000000002ALL;
  if (*v1 != 1)
  {
    v20 = 0xD000000000000011;
    v19 = "eTooOldForPersonalRequests";
  }

  if (*v1)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0xD00000000000002CLL;
  }

  if (*v1)
  {
    v22 = v19;
  }

  else
  {
    v22 = "com.apple.mobilecal";
  }

  MEMORY[0x1E12A6780](v21, v22 | 0x8000000000000000);

  *v10 = 0xD00000000000001CLL;
  v10[1] = 0x80000001DD128D00;
  v10[2] = 0;
  swift_storeEnumTagMultiPayload();
  v23 = v18 + v11[7];
  *(v23 + 32) = 0;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  sub_1DCB29E58(v10, v18 + v11[5]);
  *(v18 + v11[6]) = MEMORY[0x1E69E7CC0];
  sub_1DD0DB03C();
  sub_1DCB29EBC(v10);
  *(v18 + v11[8]) = 0;
  return PluginAction.init(flowHandlerId:input:)(0xD000000000000020, 0x80000001DD110140, v18, a1);
}

unint64_t SiriKitPlatformErrorCase.invocationId.getter()
{
  v1 = "supportedForPersonalRequests";
  v2 = 0xD00000000000002ALL;
  if (*v0 != 1)
  {
    v2 = 0xD000000000000011;
    v1 = "eTooOldForPersonalRequests";
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xD00000000000002CLL;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = "com.apple.mobilecal";
  }

  MEMORY[0x1E12A6780](v3, v4 | 0x8000000000000000);

  return 0xD00000000000001CLL;
}

unint64_t sub_1DCFB4334(unint64_t result, uint64_t a2, unint64_t a3)
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
    v4 = sub_1DD0DE1EC();

    return v4;
  }

  return result;
}

uint64_t sub_1DCFB43D8()
{
  v0 = sub_1DD0DEE9C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t SiriKitPlatformErrorCase.identifier.getter()
{
  v1 = 0xD000000000000011;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000002ALL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000002CLL;
  }

  *v0;
  return result;
}

uint64_t SiriKitPlatformErrorCase.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

unint64_t sub_1DCFB4514()
{
  result = qword_1ECCAB750;
  if (!qword_1ECCAB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB750);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriKitPlatformErrorCase(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t SiriKitReliabilityCodes.flowStatusReason.getter()
{
  v1 = *v0;
  if (v1 > 0x7C)
  {
    return 31;
  }

  else
  {
    return dword_1DD107230[v1];
  }
}

SiriKitFlow::SiriKitReliabilityCodes_optional __swiftcall SiriKitReliabilityCodes.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DF0FC();

  v5 = 0;
  v6 = 107;
  switch(v3)
  {
    case 0:
      goto LABEL_126;
    case 1:
      v5 = 1;
      goto LABEL_126;
    case 2:
      v5 = 2;
      goto LABEL_126;
    case 3:
      v5 = 3;
      goto LABEL_126;
    case 4:
      v5 = 4;
      goto LABEL_126;
    case 5:
      v5 = 5;
      goto LABEL_126;
    case 6:
      v5 = 6;
      goto LABEL_126;
    case 7:
      v5 = 7;
      goto LABEL_126;
    case 8:
      v5 = 8;
      goto LABEL_126;
    case 9:
      v5 = 9;
      goto LABEL_126;
    case 10:
      v5 = 10;
      goto LABEL_126;
    case 11:
      v5 = 11;
      goto LABEL_126;
    case 12:
      v5 = 12;
      goto LABEL_126;
    case 13:
      v5 = 13;
      goto LABEL_126;
    case 14:
      v5 = 14;
      goto LABEL_126;
    case 15:
      v5 = 15;
      goto LABEL_126;
    case 16:
      v5 = 16;
      goto LABEL_126;
    case 17:
      v5 = 17;
      goto LABEL_126;
    case 18:
      v5 = 18;
      goto LABEL_126;
    case 19:
      v5 = 19;
      goto LABEL_126;
    case 20:
      v5 = 20;
      goto LABEL_126;
    case 21:
      v5 = 21;
      goto LABEL_126;
    case 22:
      v5 = 22;
      goto LABEL_126;
    case 23:
      v5 = 23;
      goto LABEL_126;
    case 24:
      v5 = 24;
      goto LABEL_126;
    case 25:
      v5 = 25;
      goto LABEL_126;
    case 26:
      v5 = 26;
      goto LABEL_126;
    case 27:
      v5 = 27;
      goto LABEL_126;
    case 28:
      v5 = 28;
      goto LABEL_126;
    case 29:
      v5 = 29;
      goto LABEL_126;
    case 30:
      v5 = 30;
      goto LABEL_126;
    case 31:
      v5 = 31;
      goto LABEL_126;
    case 32:
      v5 = 32;
      goto LABEL_126;
    case 33:
      v5 = 33;
      goto LABEL_126;
    case 34:
      v5 = 34;
      goto LABEL_126;
    case 35:
      v5 = 35;
      goto LABEL_126;
    case 36:
      v5 = 36;
      goto LABEL_126;
    case 37:
      v5 = 37;
      goto LABEL_126;
    case 38:
      v5 = 38;
      goto LABEL_126;
    case 39:
      v5 = 39;
      goto LABEL_126;
    case 40:
      v5 = 40;
      goto LABEL_126;
    case 41:
      v5 = 41;
      goto LABEL_126;
    case 42:
      v5 = 42;
      goto LABEL_126;
    case 43:
      v5 = 43;
      goto LABEL_126;
    case 44:
      v5 = 44;
      goto LABEL_126;
    case 45:
      v5 = 45;
      goto LABEL_126;
    case 46:
      v5 = 46;
      goto LABEL_126;
    case 47:
      v5 = 47;
      goto LABEL_126;
    case 48:
      v5 = 48;
      goto LABEL_126;
    case 49:
      v5 = 49;
      goto LABEL_126;
    case 50:
      v5 = 50;
      goto LABEL_126;
    case 51:
      v5 = 51;
      goto LABEL_126;
    case 52:
      v5 = 52;
      goto LABEL_126;
    case 53:
      v5 = 53;
      goto LABEL_126;
    case 54:
      v5 = 54;
      goto LABEL_126;
    case 55:
      v5 = 55;
      goto LABEL_126;
    case 56:
      v5 = 56;
      goto LABEL_126;
    case 57:
      v5 = 57;
      goto LABEL_126;
    case 58:
      v5 = 58;
      goto LABEL_126;
    case 59:
      v5 = 59;
      goto LABEL_126;
    case 60:
      v5 = 60;
      goto LABEL_126;
    case 61:
      v5 = 61;
      goto LABEL_126;
    case 62:
      v5 = 62;
      goto LABEL_126;
    case 63:
      v5 = 63;
      goto LABEL_126;
    case 64:
      v5 = 64;
      goto LABEL_126;
    case 65:
      v5 = 65;
      goto LABEL_126;
    case 66:
      v5 = 66;
      goto LABEL_126;
    case 67:
      v5 = 67;
      goto LABEL_126;
    case 68:
      v5 = 68;
      goto LABEL_126;
    case 69:
      v5 = 69;
      goto LABEL_126;
    case 70:
      v5 = 70;
      goto LABEL_126;
    case 71:
      v5 = 71;
      goto LABEL_126;
    case 72:
      v5 = 72;
      goto LABEL_126;
    case 73:
      v5 = 73;
      goto LABEL_126;
    case 74:
      v5 = 74;
      goto LABEL_126;
    case 75:
      v5 = 75;
      goto LABEL_126;
    case 76:
      v5 = 76;
      goto LABEL_126;
    case 77:
      v5 = 77;
      goto LABEL_126;
    case 78:
      v5 = 78;
      goto LABEL_126;
    case 79:
      v5 = 79;
      goto LABEL_126;
    case 80:
      v5 = 80;
      goto LABEL_126;
    case 81:
      v5 = 81;
      goto LABEL_126;
    case 82:
      v5 = 82;
      goto LABEL_126;
    case 83:
      v5 = 83;
      goto LABEL_126;
    case 84:
      v5 = 84;
      goto LABEL_126;
    case 85:
      v5 = 85;
      goto LABEL_126;
    case 86:
      v5 = 86;
      goto LABEL_126;
    case 87:
      v5 = 87;
      goto LABEL_126;
    case 88:
      v5 = 88;
      goto LABEL_126;
    case 89:
      v5 = 89;
      goto LABEL_126;
    case 90:
      v5 = 90;
      goto LABEL_126;
    case 91:
      v5 = 91;
      goto LABEL_126;
    case 92:
      v5 = 92;
      goto LABEL_126;
    case 93:
      v5 = 93;
      goto LABEL_126;
    case 94:
      v5 = 94;
      goto LABEL_126;
    case 95:
      v5 = 95;
      goto LABEL_126;
    case 96:
      v5 = 96;
      goto LABEL_126;
    case 97:
      v5 = 97;
      goto LABEL_126;
    case 98:
      v5 = 98;
      goto LABEL_126;
    case 99:
      v5 = 99;
      goto LABEL_126;
    case 100:
      v5 = 100;
      goto LABEL_126;
    case 101:
      v5 = 101;
      goto LABEL_126;
    case 102:
      v5 = 102;
      goto LABEL_126;
    case 103:
      v5 = 103;
      goto LABEL_126;
    case 104:
      v5 = 104;
      goto LABEL_126;
    case 105:
      v5 = 105;
      goto LABEL_126;
    case 106:
      v5 = 106;
LABEL_126:
      v6 = v5;
      break;
    case 107:
      break;
    case 108:
      v6 = 108;
      break;
    case 109:
      v6 = 109;
      break;
    case 110:
      v6 = 110;
      break;
    case 111:
      v6 = 111;
      break;
    case 112:
      v6 = 112;
      break;
    case 113:
      v6 = 113;
      break;
    case 114:
      v6 = 114;
      break;
    case 115:
      v6 = 115;
      break;
    case 116:
      v6 = 116;
      break;
    case 117:
      v6 = 117;
      break;
    case 118:
      v6 = 118;
      break;
    case 119:
      v6 = 119;
      break;
    case 120:
      v6 = 120;
      break;
    case 121:
      v6 = 121;
      break;
    case 122:
      v6 = 122;
      break;
    case 123:
      v6 = 123;
      break;
    case 124:
      v6 = 124;
      break;
    default:
      v6 = 125;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1DCFB4AD8()
{
  result = qword_1ECCAB758[0];
  if (!qword_1ECCAB758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCAB758);
  }

  return result;
}

uint64_t sub_1DCFB4B50@<X0>(uint64_t *a1@<X8>)
{
  result = SiriKitReliabilityCodes.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1DCFB4B88()
{
  OUTLINED_FUNCTION_50();
  v22 = v1;
  v25 = v2;
  v26 = v3;
  v24 = v4;
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v23 = OUTLINED_FUNCTION_21_49();
  OUTLINED_FUNCTION_9(v23);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v22 - v13;
  sub_1DCFB5A20();
  type metadata accessor for Input(255);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECCAB7E0, &qword_1DD107510);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v16 = *(TupleTypeMetadata3 + 48);
  v17 = *(TupleTypeMetadata3 + 64);
  sub_1DCC333DC(v24, v14);
  v18 = v26;
  *&v14[v16] = v25;
  *&v14[v17] = v18;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66();
  v20 = *(v19 + 136);
  OUTLINED_FUNCTION_22_42();
  v21 = *(v8 + 40);
  sub_1DD0DCF8C();
}

void sub_1DCFB4D48()
{
  OUTLINED_FUNCTION_50();
  v20 = v1;
  v21 = v2;
  v19 = v3;
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = type metadata accessor for SiriKitServerAssistedAppResolutionFlow.State();
  OUTLINED_FUNCTION_9(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v19 - v13;
  sub_1DCFB5A20();
  sub_1DCAFF9E8(v19, v14);
  v15 = v21;
  *(v14 + 5) = v20;
  *(v14 + 6) = v15;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_66();
  v17 = *(v16 + 136);
  OUTLINED_FUNCTION_22_42();
  v18 = *(v8 + 40);
  sub_1DD0DCF8C();
}

void AppResolutionFlowStrategy.makeAppResolutionUnsuccessfulResponse(intent:reason:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &a9 - v33;
  v35 = sub_1DD0DD2DC();
  v36 = OUTLINED_FUNCTION_9(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36, v41);
  (*(v38 + 16))(&a9 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v35);
  v42 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v43 = swift_allocObject();
  (*(v38 + 32))(v43 + v42, &a9 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), v35);
  v44 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v34, v45, v46, v44);
  v47 = swift_allocObject();
  v47[2] = 0;
  v47[3] = 0;
  v47[4] = &unk_1DD107440;
  v47[5] = v43;
  v47[6] = v25;
  v47[7] = v23;
  sub_1DD0DCF8C();
}

void sub_1DCFB5148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v22 - v16;
  v18 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v17, v19, v20, v18);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a8;
  v21[5] = 0;
  v21[6] = a3;
  v21[7] = a4;
  sub_1DD0DCF8C();
}