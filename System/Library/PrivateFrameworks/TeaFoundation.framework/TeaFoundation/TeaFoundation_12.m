float sub_1BF0E41C0(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_1_42(a1);
  sub_1BF0E5948(v2, v3);
  v5 = v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = OUTLINED_FUNCTION_49();
  sub_1BF014DC0(v8, v9);
  OUTLINED_FUNCTION_16_11();
  sub_1BF05F1AC(v10, v11, v12, v13);
  sub_1BF014E18(*v1, *(v1 + 8));
  *v1 = v15;
  *(v1 + 8) = v16;
  return v5;
}

void *sub_1BF0E4238@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BF1794FC();
  v5 = *(v4 - 8);
  *(v5 + 80);
  v6 = *(v5 + 72);
  result = swift_slowAlloc();
  if (a1)
  {
    v8 = *(v5 + 64);
    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 = result;
      memmove(result, a1, v8);
      (*(v5 + 16))(a2, v9, v4);
      return MEMORY[0x1BFB547B0](v9, -1, -1);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void CodableError.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v6 = sub_1BF17910C();
  v7 = [v6 domain];
  sub_1BF17A0AC();
  OUTLINED_FUNCTION_19_0();

  v8 = [v6 code];
  v9 = sub_1BF0E4484(v6);

  *a2 = v2;
  a2[1] = v3;
  a2[2] = v8;
  a2[3] = v9;
}

uint64_t CodableError.domain.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

TeaFoundation::CodableError __swiftcall CodableError.init(_:)(NSError *a1)
{
  v5 = v1;
  v6 = [(NSError *)a1 domain];
  sub_1BF17A0AC();
  OUTLINED_FUNCTION_5_20();

  *v5 = v2;
  v5[1] = v3;
  v5[2] = [(NSError *)a1 code];
  v7 = sub_1BF0E4484(a1);

  v5[3] = v7;
  result.errorUserInfo._rawValue = v11;
  result.errorCode = v10;
  result.domain._object = v9;
  result.domain._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_1BF0E4484(void *a1)
{
  v2 = sub_1BF179DAC();
  v3 = [a1 userInfo];
  v4 = sub_1BF179D5C();

  v5 = *MEMORY[0x1E696A578];
  sub_1BF17A0AC();
  sub_1BF0243AC(v4, &v10);

  if (v11)
  {
    if (OUTLINED_FUNCTION_20_10())
    {
      sub_1BF17A0AC();
      swift_isUniquelyReferenced_nonNull_native();
      *&v10 = v2;
      OUTLINED_FUNCTION_49();
      sub_1BF010A20();

      v2 = v10;
    }
  }

  else
  {
    sub_1BEFFD168(&v10);
  }

  v6 = [a1 userInfo];
  v7 = sub_1BF179D5C();

  v8 = *MEMORY[0x1E696A278];
  sub_1BF17A0AC();
  sub_1BF0243AC(v7, &v10);

  if (v11)
  {
    if (OUTLINED_FUNCTION_20_10())
    {
      sub_1BF17A0AC();
      OUTLINED_FUNCTION_19_0();
      swift_isUniquelyReferenced_nonNull_native();
      *&v10 = v2;
      OUTLINED_FUNCTION_16_11();
      sub_1BF010A20();

      return v10;
    }
  }

  else
  {
    sub_1BEFFD168(&v10);
  }

  return v2;
}

uint64_t CodableError.write(to:)()
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_1BF01A91C(*v0, v0[1]);
  v10 = *(v4 + 16);
  v5 = sub_1BF088784(&v10, &v11);
  v7 = v6;
  sub_1BF17939C();
  sub_1BF014E18(v5, v7);
  sub_1BF0E3740(v4);

  if (!v1)
  {
    v10 = v3;
    sub_1BF088784(&v10, &v11);
    OUTLINED_FUNCTION_19_0();
    sub_1BF17939C();
    sub_1BF014E18(v4, v5);
    v10 = *(v2 + 16);
    sub_1BF088784(&v10, &v11);
    OUTLINED_FUNCTION_19_0();
    sub_1BF17939C();
    sub_1BF014E18(v4, v5);
    result = sub_1BF0E3904(v2);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static CodableError.read(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static String.read(from:)(a1);
  if (!v2)
  {
    v7 = result;
    v8 = v6;
    v9 = sub_1BF05FF74(a1);
    result = sub_1BF0E4868(a1);
    *a2 = v7;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = result;
  }

  return result;
}

uint64_t sub_1BF0E4868(uint64_t *a1)
{
  v4 = sub_1BF17A12C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1BF05FF74(a1);
  if (v2)
  {
    return v1;
  }

  v7 = v6;
  if (v6 < 0)
  {
    sub_1BF0E5CAC();
    swift_allocError();
    v9 = 1;
    goto LABEL_6;
  }

  if (MEMORY[0x1BFB51150](*a1, a1[1]) < v6)
  {
    sub_1BF0E5CAC();
    swift_allocError();
    v9 = 2;
LABEL_6:
    *v8 = v9;
    swift_willThrow();
    return v1;
  }

  v10 = 0;
  v1 = MEMORY[0x1E69E7CC8];
  v32 = v7;
  while (1)
  {
    if (v7 == v10)
    {
      return v1;
    }

    if (__OFADD__(v10, 1))
    {
      break;
    }

    sub_1BF05FB18(a1);
    sub_1BF17A10C();
    sub_1BEFF5158(0, &qword_1ED8EDD80, MEMORY[0x1E69E7508], MEMORY[0x1E69E62F8]);
    sub_1BF060290();
    v34 = sub_1BF17A0DC();
    v12 = v11;

    v35 = v12;
    if (!v12)
    {
      sub_1BF0E5CAC();
      swift_allocError();
      *v29 = 0;
      swift_willThrow();
LABEL_23:

      return v1;
    }

    sub_1BF05FB18(a1);
    sub_1BF17A10C();
    v13 = sub_1BF17A0DC();
    v15 = v14;

    if (!v15)
    {
      sub_1BF0E5CAC();
      swift_allocError();
      *v30 = 0;
      swift_willThrow();

      goto LABEL_23;
    }

    v33 = v13;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_1BF014CA8();
    if (__OFADD__(v1[2], (v17 & 1) == 0))
    {
      goto LABEL_26;
    }

    v18 = v16;
    v19 = v17;
    sub_1BF0E5D00(0, &qword_1ED8EADD0, MEMORY[0x1E69E6DC8]);
    if (sub_1BF17B43C())
    {
      v20 = sub_1BF014CA8();
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_28;
      }

      v18 = v20;
    }

    v7 = v32;
    if (v19)
    {
      v22 = (v1[7] + 16 * v18);
      v23 = v22[1];
      *v22 = v33;
      v22[1] = v15;
    }

    else
    {
      v1[(v18 >> 6) + 8] |= 1 << v18;
      v24 = (v1[6] + 16 * v18);
      *v24 = v34;
      v24[1] = v35;
      v25 = (v1[7] + 16 * v18);
      *v25 = v33;
      v25[1] = v15;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_27;
      }

      v1[2] = v28;
    }

    ++v10;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

uint64_t sub_1BF0E4C70(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BF17B86C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
    if (v6 || (sub_1BF17B86C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x657355726F727265 && a2 == 0xED00006F666E4972)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF17B86C();

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

uint64_t sub_1BF0E4D8C(char a1)
{
  if (!a1)
  {
    return 0x6E69616D6F64;
  }

  if (a1 == 1)
  {
    return 0x646F43726F727265;
  }

  return 0x657355726F727265;
}

uint64_t sub_1BF0E4DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF0E4C70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF0E4E20(uint64_t a1)
{
  v2 = sub_1BF0E53CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF0E4E5C(uint64_t a1)
{
  v2 = sub_1BF0E53CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableError.encode(to:)(void *a1)
{
  sub_1BF0E5420(0, &qword_1EBDCBEB0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_1(v3);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v21 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v21[0] = v1[3];
  v21[1] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF0E53CC();
  sub_1BF17BC1C();
  v24 = 0;
  v16 = v21[2];
  sub_1BF17B66C();
  if (!v16)
  {
    v17 = v21[0];
    v23 = 1;
    sub_1BF17B68C();
    v21[3] = v17;
    v22 = 2;
    OUTLINED_FUNCTION_0_54();
    sub_1BF0E5D00(0, v18, v19);
    sub_1BF0E5484(&qword_1EBDCBEC8);
    sub_1BF17B69C();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t CodableError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BF0E5420(0, &qword_1EBDCBED0, MEMORY[0x1E69E6F48]);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF0E53CC();
  sub_1BF17BBDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1BF17B5CC();
  v12 = v11;
  v18 = sub_1BF17B5EC();
  OUTLINED_FUNCTION_0_54();
  sub_1BF0E5D00(0, v13, v14);
  sub_1BF0E5484(&qword_1EBDCBED8);
  sub_1BF17B5FC();
  v16 = OUTLINED_FUNCTION_10_4();
  v17(v16);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v18;
  a2[3] = v19;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BF0E52E8(uint64_t a1)
{
  v2 = sub_1BF0E56D8();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1BF0E5324(uint64_t a1)
{
  v2 = sub_1BF0E56D8();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1BF0E53CC()
{
  result = qword_1EBDCBEB8;
  if (!qword_1EBDCBEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBEB8);
  }

  return result;
}

void sub_1BF0E5420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BF0E53CC();
    v7 = a3(a1, &type metadata for CodableError.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BF0E5484(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_54();
    sub_1BF0E5D00(255, v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CodableError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF0E55D4()
{
  result = qword_1EBDCBEE0;
  if (!qword_1EBDCBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBEE0);
  }

  return result;
}

unint64_t sub_1BF0E562C()
{
  result = qword_1EBDCBEE8;
  if (!qword_1EBDCBEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBEE8);
  }

  return result;
}

unint64_t sub_1BF0E5684()
{
  result = qword_1EBDCBEF0;
  if (!qword_1EBDCBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBEF0);
  }

  return result;
}

unint64_t sub_1BF0E56D8()
{
  result = qword_1EBDCBEF8[0];
  if (!qword_1EBDCBEF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCBEF8);
  }

  return result;
}

void sub_1BF0E572C(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_15_12();
      if (v5 == v6)
      {
        goto LABEL_6;
      }

      __break(1u);
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v4 = *(a1 + 24);
LABEL_6:
      OUTLINED_FUNCTION_4_23();
      sub_1BF0E5AB8();
      break;
    case 3uLL:
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_28();
      break;
    default:
      *swift_slowAlloc() = a1;
      OUTLINED_FUNCTION_28();
      break;
  }
}

void sub_1BF0E57E0(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_15_12();
      if (v5 == v6)
      {
        goto LABEL_6;
      }

      __break(1u);
      return;
    case 2uLL:
      v3 = *(a1 + 16);
      v4 = *(a1 + 24);
LABEL_6:
      OUTLINED_FUNCTION_4_23();
      sub_1BF0E5B2C();
      goto LABEL_7;
    case 3uLL:
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_28();
      goto LABEL_7;
    default:
      *swift_slowAlloc() = a1;
      OUTLINED_FUNCTION_28();
LABEL_7:
      OUTLINED_FUNCTION_12_16();
      return;
  }
}

void sub_1BF0E5894(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      OUTLINED_FUNCTION_15_12();
      if (v5 == v6)
      {
        goto LABEL_6;
      }

      __break(1u);
      return;
    case 2uLL:
      v3 = *(a1 + 16);
      v4 = *(a1 + 24);
LABEL_6:
      OUTLINED_FUNCTION_4_23();
      sub_1BF0E5BA0();
      goto LABEL_7;
    case 3uLL:
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_28();
      goto LABEL_7;
    default:
      *swift_slowAlloc() = a1;
      OUTLINED_FUNCTION_28();
LABEL_7:
      OUTLINED_FUNCTION_12_16();
      return;
  }
}

uint64_t sub_1BF0E5948(uint64_t result, unint64_t a2)
{
  v2 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 >= result)
      {
        result = result;
        goto LABEL_7;
      }

      __break(1u);
      break;
    case 2uLL:
      result = *(result + 16);
      v5 = *(v2 + 24);
LABEL_7:
      result = sub_1BF0E5C14(result);
      break;
    case 3uLL:
      *swift_slowAlloc() = 0;
      result = MEMORY[0x1BFB547B0]();
      break;
    default:
      v3 = swift_slowAlloc();
      *v3 = v2;
      v4 = *v3;
      result = MEMORY[0x1BFB547B0]();
      break;
  }

  return result;
}

char *sub_1BF0E5A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1BF178F3C();
  v7 = result;
  if (result)
  {
    result = sub_1BF178F5C();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v7 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    sub_1BF178F4C();
    return sub_1BF0E4238(v7, a3);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

_BYTE *sub_1BF0E5AB8()
{
  v1 = OUTLINED_FUNCTION_8_20();
  if (v1)
  {
    v2 = v1;
    result = sub_1BF178F5C();
    if (__OFSUB__(v0, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v4 = (v0 - result + v2);
  }

  else
  {
    v4 = 0;
  }

  sub_1BF178F4C();
  result = swift_slowAlloc();
  if (v4)
  {
    *result = *v4;
    OUTLINED_FUNCTION_28();
    return OUTLINED_FUNCTION_12_16();
  }

LABEL_8:
  __break(1u);
  return result;
}

_WORD *sub_1BF0E5B2C()
{
  v1 = OUTLINED_FUNCTION_8_20();
  if (v1)
  {
    v2 = v1;
    result = sub_1BF178F5C();
    if (__OFSUB__(v0, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v4 = (v0 - result + v2);
  }

  else
  {
    v4 = 0;
  }

  sub_1BF178F4C();
  result = swift_slowAlloc();
  if (v4)
  {
    *result = *v4;
    OUTLINED_FUNCTION_28();
    return OUTLINED_FUNCTION_12_16();
  }

LABEL_8:
  __break(1u);
  return result;
}

_DWORD *sub_1BF0E5BA0()
{
  v1 = OUTLINED_FUNCTION_8_20();
  if (v1)
  {
    v2 = v1;
    result = sub_1BF178F5C();
    if (__OFSUB__(v0, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v4 = (v0 - result + v2);
  }

  else
  {
    v4 = 0;
  }

  sub_1BF178F4C();
  result = swift_slowAlloc();
  if (v4)
  {
    *result = *v4;
    OUTLINED_FUNCTION_28();
    return OUTLINED_FUNCTION_12_16();
  }

LABEL_8:
  __break(1u);
  return result;
}

_DWORD *sub_1BF0E5C14(uint64_t a1)
{
  v2 = sub_1BF178F3C();
  if (v2)
  {
    v3 = v2;
    result = sub_1BF178F5C();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v5 = (a1 - result + v3);
  }

  else
  {
    v5 = 0;
  }

  sub_1BF178F4C();
  result = swift_slowAlloc();
  if (v5)
  {
    *result = *v5;
    return MEMORY[0x1BFB547B0]();
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1BF0E5CAC()
{
  result = qword_1EBDCAD38[0];
  if (!qword_1EBDCAD38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCAD38);
  }

  return result;
}

void sub_1BF0E5D00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BF0E5D64()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1BF063100();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF0E5DB0()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1BF06314C();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF0E5DFC()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1BF063198();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BF0E5E48()
{
  v2 = *MEMORY[0x1E69E9840];
  result = sub_1BF0630B4();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::Bool __swiftcall URL.isHTTPURL()()
{
  v0 = sub_1BF1791EC();
  if (!v1)
  {
    goto LABEL_8;
  }

  if (v0 == 1886680168 && v1 == 0xE400000000000000)
  {
    goto LABEL_14;
  }

  v3 = sub_1BF17B86C();

  if ((v3 & 1) == 0)
  {
LABEL_8:
    v5 = sub_1BF1791EC();
    if (!v6)
    {
      v4 = 0;
      return v4 & 1;
    }

    if (v5 != 0x7370747468 || v6 != 0xE500000000000000)
    {
      v4 = sub_1BF17B86C();
LABEL_15:

      return v4 & 1;
    }

LABEL_14:
    v4 = 1;
    goto LABEL_15;
  }

  v4 = 1;
  return v4 & 1;
}

Swift::String_optional __swiftcall URL.queryItem(for:)(Swift::String a1)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  object = a1._object;
  v3 = sub_1BF178E2C();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_28();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = sub_1BF178F0C();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_0_55();
  sub_1BF0E6760(0, v21, v22);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v51 - v28;
  sub_1BF178E7C();
  sub_1BF01DBC0(v29, v27);
  if (__swift_getEnumTagSinglePayload(v27, 1, v12) == 1)
  {
    v30 = MEMORY[0x1E69681B8];
    sub_1BF0E6F18(v29, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
    v31 = v27;
    v32 = &qword_1ED8EE420;
    v33 = v30;
    goto LABEL_15;
  }

  (*(v15 + 32))(v20, v27, v12);
  v34 = sub_1BF178E5C();
  if (!v34)
  {
    (*(v15 + 8))(v20, v12);
    OUTLINED_FUNCTION_0_55();
    v31 = v29;
LABEL_15:
    sub_1BF0E6F18(v31, v32, v33);
    v44 = 0;
    v45 = 0;
LABEL_19:
    v34 = v44;
    v35 = v45;
    goto LABEL_21;
  }

  v36 = v34;
  v53 = v29;
  v54 = v15;
  v55 = v12;
  v52 = v11;
  v37 = 0;
  v38 = *(v34 + 16);
  v56 = v6 + 16;
  v57 = v20;
  while (1)
  {
    v39 = v57;
    if (v38 == v37)
    {

      (*(v54 + 8))(v39, v55);
      OUTLINED_FUNCTION_0_55();
      v31 = v53;
      goto LABEL_15;
    }

    if (v37 >= *(v36 + 16))
    {
      break;
    }

    (*(v6 + 16))(v1, v36 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v37, v3);
    if (sub_1BF178E0C() == countAndFlagsBits && v40 == object)
    {

LABEL_18:
      v46 = v52;
      (*(v6 + 32))(v52, v1, v3);
      v44 = sub_1BF178E1C();
      v45 = v47;
      (*(v54 + 8))(v39, v55);
      OUTLINED_FUNCTION_0_55();
      sub_1BF0E6F18(v53, v48, v49);
      (*(v6 + 8))(v46, v3);
      goto LABEL_19;
    }

    v42 = object;
    v43 = sub_1BF17B86C();

    if (v43)
    {

      v39 = v57;
      goto LABEL_18;
    }

    v34 = (*(v6 + 8))(v1, v3);
    ++v37;
    object = v42;
  }

  __break(1u);
LABEL_21:
  result.value._object = v35;
  result.value._countAndFlagsBits = v34;
  return result;
}

uint64_t URL.removingQueryItems(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1BF178F0C();
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v48 = v13 - v12;
  OUTLINED_FUNCTION_2_37();
  sub_1BF0E6760(0, v14, v15);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v44 - v18;
  OUTLINED_FUNCTION_0_55();
  sub_1BF0E6760(0, v20, v21);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v44 - v24;
  v26 = *(a1 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v45 = v9;
    v46 = v3;
    v47 = a2;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1BF00DD60();
    v27 = v49;
    v28 = (a1 + 40);
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;
      v31 = sub_1BF17A15C();
      v33 = v32;
      v49 = v27;
      v34 = *(v27 + 16);
      if (v34 >= *(v27 + 24) >> 1)
      {
        sub_1BF00DD60();
        v27 = v49;
      }

      *(v27 + 16) = v34 + 1;
      v35 = v27 + 16 * v34;
      *(v35 + 32) = v31;
      *(v35 + 40) = v33;
      v28 += 2;
      --v26;
    }

    while (v26);
    v3 = v46;
    a2 = v47;
    v9 = v45;
  }

  v36 = sub_1BF09EBD4(v27);
  sub_1BF178E7C();
  sub_1BF0E67B4(v25, v36);

  if (__swift_getEnumTagSinglePayload(v25, 1, v6))
  {
  }

  else
  {
    sub_1BF178E6C();
  }

  if (__swift_getEnumTagSinglePayload(v25, 1, v6))
  {
    v37 = sub_1BF17923C();
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v37);
  }

  else
  {
    v38 = v48;
    (*(v9 + 16))(v48, v25, v6);
    sub_1BF178E8C();
    (*(v9 + 8))(v38, v6);
    v37 = sub_1BF17923C();
    if (__swift_getEnumTagSinglePayload(v19, 1, v37) != 1)
    {
      (*(*(v37 - 8) + 32))(a2, v19, v37);
      goto LABEL_16;
    }
  }

  sub_1BF17923C();
  (*(*(v37 - 8) + 16))(a2, v3, v37);
  if (__swift_getEnumTagSinglePayload(v19, 1, v37) != 1)
  {
    OUTLINED_FUNCTION_2_37();
    sub_1BF0E6F18(v19, v39, v40);
  }

LABEL_16:
  OUTLINED_FUNCTION_0_55();
  return sub_1BF0E6F18(v25, v41, v42);
}

void sub_1BF0E6760(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1BF0E67B4(uint64_t a1, uint64_t a2)
{
  v49 = sub_1BF178E2C();
  v47 = *(v49 - 8);
  v4 = *(v47 + 64);
  v5 = MEMORY[0x1EEE9AC00](v49);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v37 - v7;
  sub_1BF0E6760(0, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - v10;
  v12 = sub_1BF178F0C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF01DBC0(a1, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1BF0E6F18(v11, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
    return 0;
  }

  (*(v13 + 32))(v16, v11, v12);
  result = sub_1BF178E5C();
  if (!result)
  {
    (*(v13 + 8))(v16, v12);
    return 0;
  }

  v18 = result;
  v38 = v16;
  v39 = v13;
  v40 = v12;
  v19 = 0;
  v46 = *(result + 16);
  v44 = v47 + 16;
  v41 = (v47 + 8);
  v42 = (v47 + 32);
  v20 = MEMORY[0x1E69E7CC0];
  for (i = result; ; v18 = i)
  {
LABEL_5:
    if (v19 == v46)
    {
      (*(v39 + 8))(v38, v40);

      return v20;
    }

    if (v19 >= *(v18 + 16))
    {
      break;
    }

    v21 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v22 = *(v47 + 72);
    (*(v47 + 16))(v48, v18 + v21 + v22 * v19++, v49);
    sub_1BF178E0C();
    v23 = sub_1BF17A15C();
    v25 = v24;

    if (*(a2 + 16))
    {
      v26 = *(a2 + 40);
      sub_1BF17BB6C();
      sub_1BF179F3C();
      v27 = sub_1BF17BB9C();
      v28 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v29 = v27 & v28;
        if (((*(a2 + 56 + (((v27 & v28) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v27 & v28)) & 1) == 0)
        {
          break;
        }

        v30 = (*(a2 + 48) + 16 * v29);
        if (*v30 != v23 || v30[1] != v25)
        {
          v32 = sub_1BF17B86C();
          v27 = v29 + 1;
          if ((v32 & 1) == 0)
          {
            continue;
          }
        }

        result = (*v41)(v48, v49);
        v18 = i;
        goto LABEL_5;
      }
    }

    v33 = *v42;
    (*v42)(v43, v48, v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BF070704(0, *(v20 + 16) + 1, 1);
      v20 = v50;
    }

    v36 = *(v20 + 16);
    v35 = *(v20 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_1BF070704(v35 > 1, v36 + 1, 1);
      v20 = v50;
    }

    *(v20 + 16) = v36 + 1;
    result = (v33)(v20 + v21 + v36 * v22, v43, v49);
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall URL.hashParameter(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1BF178E2C();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_28();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_1BF178F0C();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  sub_1BF178EFC();
  sub_1BF17921C();
  sub_1BF178EBC();
  v21 = sub_1BF178E5C();
  if (v21)
  {
    v23 = v21;
    v35 = v20;
    v36 = v15;
    v34 = v11;
    v37 = v12;
    v24 = 0;
    v25 = *(v21 + 16);
    v38 = v6 + 16;
    while (1)
    {
      if (v25 == v24)
      {

        (*(v36 + 8))(v35, v37);
        goto LABEL_13;
      }

      if (v24 >= *(v23 + 16))
      {
        break;
      }

      (*(v6 + 16))(v1, v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v3);
      if (sub_1BF178E0C() == countAndFlagsBits && v26 == object)
      {

LABEL_15:

        v31 = v34;
        (*(v6 + 32))(v34, v1, v3);
        v29 = sub_1BF178E1C();
        v30 = v32;
        (*(v36 + 8))(v35, v37);
        (*(v6 + 8))(v31, v3);
        goto LABEL_16;
      }

      v28 = sub_1BF17B86C();

      if (v28)
      {
        goto LABEL_15;
      }

      v21 = (*(v6 + 8))(v1, v3);
      ++v24;
    }

    __break(1u);
  }

  else
  {
    (*(v15 + 8))(v20, v12);
LABEL_13:
    v29 = 0;
    v30 = 0;
LABEL_16:
    v21 = v29;
    v22 = v30;
  }

  result.value._object = v22;
  result.value._countAndFlagsBits = v21;
  return result;
}

uint64_t sub_1BF0E6F18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1BF0E6760(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BF0E6F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v4[0] = a1;
  v4[1] = a2;
  return a3(v4);
}

uint64_t TestDataLoader.contentDirectory.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t TestDataLoader.__allocating_init(_:contentDirectory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  TestDataLoader.init(_:contentDirectory:)(a1, a2, a3);
  return v6;
}

void *TestDataLoader.init(_:contentDirectory:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = *v3;
  sub_1BF0E734C();
  v9 = v8;
  v11 = v10;
  v12 = *(v27 + 80);
  v29 = a1;
  (*(*(v27 + 88) + 8))(v12);
  v13 = sub_1BF0E7404();
  v15 = v14;

  v26 = a2;
  v28 = v11;
  if (a3)
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    MEMORY[0x1BFB52000](v13, v15);

    v16 = sub_1BF0E7404();
    v18 = v17;
  }

  else
  {
    v16 = sub_1BF0E7404();
    v18 = v19;
  }

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v20 = [objc_opt_self() defaultManager];
  v21 = sub_1BF17A07C();

  v22 = [v20 fileExistsAtPath_];

  if (v22)
  {
    (*(*(v12 - 8) + 8))(v29, v12);
    if (a3)
    {

      v23 = v26;
    }

    else
    {
      v23 = v9;
      a3 = v28;
    }

    v4[4] = v23;
    v4[5] = a3;
    v4[2] = v16;
    v4[3] = v18;
  }

  else
  {

    type metadata accessor for TestDataLoader.TestDataError();
    swift_getWitnessTable();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    (*(*(v12 - 8) + 8))(v29, v12);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

void sub_1BF0E734C()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v1 = sub_1BF17A4DC();

  if (v1[2])
  {
    v2 = v1[4];
    v3 = v1[5];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    sub_1BF0E7404();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BF0E7404()
{
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v1 = sub_1BF17A30C();
  sub_1BF17A20C();
  return v1;
}

uint64_t sub_1BF0E7504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v13 = *a5;
  TestDataLoader.loadData()();
  v14 = swift_allocObject();
  v14[2] = *(v13 + 80);
  v14[3] = a6;
  v14[4] = *(v13 + 88);
  v14[5] = a7;
  v14[6] = a1;
  v14[7] = a2;
  v14[8] = a3;
  v14[9] = a4;
  v15 = qword_1ED8F0210;

  if (v15 != -1)
  {
    swift_once();
  }

  sub_1BF09AAC4();
}

uint64_t TestDataLoader.loadData()()
{
  sub_1BF0C9B3C();
  swift_allocObject();
  return sub_1BF08A5A8();
}

void sub_1BF0E76A0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9)
{
  v23 = a8;
  v24 = a5;
  v25 = a4;
  v21 = a3;
  v22 = a2;
  v11 = *(a7 - 1);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v13;
  v17 = v13[1];
  type metadata accessor for _TeaJSONDecoder();
  swift_initStackObject();
  _TeaJSONDecoder.init()();
  sub_1BF015544(a7, v16, v17, a7, a9, v15);

  if (v9)
  {
    type metadata accessor for TestDataLoader.TestDataError();
    swift_getWitnessTable();
    v18 = swift_allocError();
    *v19 = v9;
    v20 = v9;
    v25(v18);
  }

  else
  {
    v22(v15);
    (*(v11 + 8))(v15, a7);
  }
}

uint64_t sub_1BF0E786C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v28 = a4;
  v26 = a3;
  v7 = sub_1BF179B5C();
  v30 = *(v7 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1BF179BBC();
  v11 = *(v29 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BF179B6C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  sub_1BEFF6E88();
  (*(v16 + 104))(v19, *MEMORY[0x1E69E7F98], v15);

  v21 = sub_1BF17ADAC();
  (*(v16 + 8))(v19, v15);
  v22 = swift_allocObject();
  v23 = v26;
  v22[2] = v27;
  v22[3] = v23;
  v22[4] = v28;
  v22[5] = sub_1BF096904;
  v22[6] = v20;
  aBlock[4] = sub_1BF0E83C0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_9;
  v24 = _Block_copy(aBlock);

  sub_1BF179B8C();
  v31 = MEMORY[0x1E69E7CC0];
  sub_1BEFF7458(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60]);
  sub_1BF027D54(0);
  sub_1BEFF7458(&qword_1ED8EFBD0, sub_1BF027D54);
  sub_1BF17B0BC();
  MEMORY[0x1BFB52B50](0, v14, v10, v24);
  _Block_release(v24);

  (*(v30 + 8))(v10, v7);
  (*(v11 + 8))(v14, v29);
}

void sub_1BF0E7C68(uint64_t *a1, void (*a2)(void), uint64_t a3, void (*a4)(uint64_t, unint64_t))
{
  v7 = *a1;
  v8 = [objc_opt_self() defaultManager];
  v9 = a1[2];
  v10 = a1[3];
  v11 = sub_1BF17A07C();
  v12 = [v8 contentsAtPath_];

  if (v12)
  {
    v13 = sub_1BF17935C();
    v15 = v14;

    a4(v13, v15);

    sub_1BF014E18(v13, v15);
  }

  else
  {
    v16 = *(v7 + 80);
    v17 = *(v7 + 88);
    type metadata accessor for TestDataLoader.TestDataError();
    swift_getWitnessTable();
    v18 = swift_allocError();
    *v19 = 0;
    a2();
  }
}

uint64_t TestDataLoader.syncLoadDataWithType<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v8 = *v4;
  v9 = sub_1BF179BEC();
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = dispatch_semaphore_create(0);
  v23 = sub_1BF17AE6C();
  v14 = swift_allocBox();
  v16 = v15;
  __swift_storeEnumTagSinglePayload(v15, 1, 1, a2);
  v27 = a2;
  v28 = a3;
  v29 = v4;
  v30 = a1;
  firstly<A>(closure:)(sub_1BF0E80D8);
  v17 = swift_allocObject();
  v17[2] = *(v8 + 80);
  v17[3] = a2;
  v17[4] = *(v8 + 88);
  v17[5] = a3;
  v17[6] = v14;

  v18 = sub_1BF014EDC(a2, MEMORY[0x1E69E7CA8] + 8);
  Promise.then<A>(on:closure:)();

  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  v20 = qword_1ED8F0210;
  v21 = v13;
  if (v20 != -1)
  {
    swift_once();
  }

  sub_1BF08C66C(off_1ED8F0218, sub_1BF095CF0, v19);

  sub_1BF179BCC();
  sub_1BF17ADBC();

  (*(v24 + 8))(v12, v25);
  swift_beginAccess();
  (*(*(v23 - 8) + 16))(v26, v16);
}

uint64_t sub_1BF0E80D8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return TestDataLoader.loadDataWithType<A>(_:)();
}

uint64_t sub_1BF0E8108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1BF17AE6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = swift_projectBox();
  (*(*(a4 - 8) + 16))(v10, a1, a4);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, a4);
  swift_beginAccess();
  return (*(v7 + 40))(v11, v10, v6);
}

uint64_t sub_1BF0E8254(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_1BF0E8108(a1, v1[6], v1[2], v1[3]);
}

uint64_t TestDataLoader.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t TestDataLoader.__deallocating_deinit()
{
  TestDataLoader.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1BF0E8384()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BF0E86DC()
{
  OUTLINED_FUNCTION_5_21();
  v4 = *(v0 + OBJC_IVAR____TtC13TeaFoundation15BridgedResolver_resolver);
  swift_getMetatypeMetadata();
  v5 = objc_allocWithZone(TFKey);
  v13 = OUTLINED_FUNCTION_1_17(v5, v6, v7, v8, v9, v10, v11, v12, v3);
  v16 = sub_1BEFE82CC(v13, v14, v15);
  v17 = [v16 address];

  OUTLINED_FUNCTION_58();
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  *(v18 + 24) = v1;

  v27 = OUTLINED_FUNCTION_7_22(v19, v20, v21, v22, v23, v24, v25, v26, v17);
  v29 = sub_1BEFF7D88(v27, v28);

  if (v29)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = OUTLINED_FUNCTION_2_38();
  }

  return OUTLINED_FUNCTION_1_43(ObjectType);
}

uint64_t sub_1BF0E8A58()
{
  OUTLINED_FUNCTION_3_29();
  v4 = *(v0 + OBJC_IVAR____TtC13TeaFoundation15BridgedResolver_resolver);
  swift_getMetatypeMetadata();
  v5 = objc_allocWithZone(TFKey);
  v13 = OUTLINED_FUNCTION_1_17(v5, v6, v7, v8, v9, v10, v11, v12, v3);
  v16 = sub_1BEFE82CC(v13, v14, v15);
  v17 = [v16 address];

  OUTLINED_FUNCTION_58();
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  *(v18 + 24) = v1;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v27 = OUTLINED_FUNCTION_7_22(v19, v20, v21, v22, v23, v24, v25, v26, v17);
  v29 = sub_1BEFF7D88(v27, v28);

  if (v29)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = OUTLINED_FUNCTION_2_38();
  }

  return OUTLINED_FUNCTION_1_43(ObjectType);
}

uint64_t sub_1BF0E8C80(void *a1, void (*a2)(void))
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 104))(v3, v4);
  a2();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BF0E9020()
{
  OUTLINED_FUNCTION_5_21();
  v4 = *(v0 + OBJC_IVAR____TtC13TeaFoundation15BridgedResolver_resolver);
  sub_1BEFE8DAC();
  v5 = objc_allocWithZone(TFKey);
  v6 = v3;
  v14 = OUTLINED_FUNCTION_1_17(v6, v7, v8, v9, v10, v11, v12, v13, v3);
  v17 = sub_1BEFE82CC(v14, v15, v16);
  v18 = [v17 address];

  OUTLINED_FUNCTION_58();
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  *(v19 + 24) = v1;

  v28 = OUTLINED_FUNCTION_7_22(v20, v21, v22, v23, v24, v25, v26, v27, v18);
  v30 = sub_1BEFF7D88(v28, v29);

  if (v30)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = OUTLINED_FUNCTION_2_38();
  }

  return OUTLINED_FUNCTION_1_43(ObjectType);
}

_OWORD *sub_1BF0E9528@<X0>(void *(*a1)(__int128 *__return_ptr)@<X5>, _OWORD *a2@<X8>)
{
  result = a1(&v4);
  if (v5)
  {
    return sub_1BEFF9A40(&v4, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF0E9574()
{
  OUTLINED_FUNCTION_3_29();
  v4 = *(v0 + OBJC_IVAR____TtC13TeaFoundation15BridgedResolver_resolver);
  sub_1BEFE8DAC();
  v5 = objc_allocWithZone(TFKey);
  v6 = v3;
  v14 = OUTLINED_FUNCTION_1_17(v6, v7, v8, v9, v10, v11, v12, v13, v3);
  v17 = sub_1BEFE82CC(v14, v15, v16);
  v18 = [v17 address];

  OUTLINED_FUNCTION_58();
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  *(v19 + 24) = v1;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  v28 = OUTLINED_FUNCTION_7_22(v20, v21, v22, v23, v24, v25, v26, v27, v18);
  v30 = sub_1BEFF7D88(v28, v29);

  if (v30)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = OUTLINED_FUNCTION_2_38();
  }

  return OUTLINED_FUNCTION_1_43(ObjectType);
}

uint64_t UniqueCollection.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1BF179CFC();
  result = sub_1BF179CEC();
  a1[1] = result;
  return result;
}

void UniqueCollection.prepend(_:)()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_2_3();
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_40();
  v10 = sub_1BF17AE6C();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_23_6();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_12_17();
  v17 = v16(v15);
  OUTLINED_FUNCTION_31_8(v17, v18);
  sub_1BF179EAC();

  OUTLINED_FUNCTION_25_8(v1);
  v19(v1, v10);
  if (v3 == 1)
  {
    v20 = OUTLINED_FUNCTION_21_0();
    (v5)(v20);
    v21 = OUTLINED_FUNCTION_16_12();
    (v5)(v21);
    OUTLINED_FUNCTION_27_7(v0);
    OUTLINED_FUNCTION_30_6();
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_20_11();
    v5();
    OUTLINED_FUNCTION_40();
    sub_1BF17A65C();
    sub_1BF17A5EC();
  }

  else
  {
    if (qword_1ED8F01C8 != -1)
    {
      OUTLINED_FUNCTION_0_56();
      swift_once();
    }

    OUTLINED_FUNCTION_29_7();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF17DEF0;
    v23 = OUTLINED_FUNCTION_21_0();
    (v5)(v23);
    OUTLINED_FUNCTION_31_0();
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = sub_1BF071CD8();
    *(inited + 32) = v6;
    *(inited + 40) = v24;
    if (v0 != 1)
    {
      OUTLINED_FUNCTION_28_7("collection must contain unique elements, duplicate=%{public}@");
    }

    swift_setDeallocating();
    sub_1BF0C8384();
  }

  OUTLINED_FUNCTION_26_2();
}

Swift::Void __swiftcall UniqueCollection.insert(contentsOf:at:)(Swift::OpaquePointer contentsOf, Swift::Int at)
{
  OUTLINED_FUNCTION_32();
  v90 = v3;
  v91 = v4;
  v5 = v2;
  v7 = v6;
  v66 = v8;
  v10 = v9;
  v11 = *(v6 + 16);
  OUTLINED_FUNCTION_54();
  v77 = sub_1BF17AE6C();
  v12 = OUTLINED_FUNCTION_1(v77);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_1();
  v69 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v65 - v20;
  OUTLINED_FUNCTION_2_3();
  v22 = v21;
  v24 = *(v23 + 64);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v68 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v65 - v29;
  v65 = v31;
  MEMORY[0x1EEE9AC00](v28);
  v76 = &v65 - v32;
  v33 = sub_1BF179CFC();
  v86 = v33;
  OUTLINED_FUNCTION_9_22();
  v34 = sub_1BF17A4EC();
  v85 = v34;
  OUTLINED_FUNCTION_9_22();
  if (v34 == sub_1BF17A5AC())
  {
LABEL_16:
    v83 = v33;
    v85 = v66;
    OUTLINED_FUNCTION_54();
    sub_1BF17A65C();
    OUTLINED_FUNCTION_11_14();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_10_0();
    swift_getWitnessTable();
    sub_1BF17AC4C();
    OUTLINED_FUNCTION_26_2();
    return;
  }

  v35 = *(v7 + 32);
  v80 = *(v35 + 8);
  v81 = v35 + 8;
  v79 = (v22 + 16);
  v73 = v22 + 32;
  v72 = v14 + 8;
  v71 = (v22 + 8);
  v67 = xmmword_1BF17DEF0;
  v82 = v35;
  v74 = v22;
  v70 = v10;
  while (1)
  {
    OUTLINED_FUNCTION_9_22();
    v36 = sub_1BF17A58C();
    sub_1BF17A51C();
    if ((v36 & 1) == 0)
    {
      break;
    }

    v37 = v10 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v34;
    v38 = v76;
    v78 = *(v22 + 16);
    v78(v76, v37, v11);
LABEL_5:
    OUTLINED_FUNCTION_26_7();
    sub_1BF17A62C();
    v39 = OUTLINED_FUNCTION_15_13(&v89);
    v40(v39, v38, v11);
    v41 = OUTLINED_FUNCTION_77_0();
    v42 = v80;
    v43 = (v80)(v41);
    v45 = v44;
    v46 = *(v5 + 8);
    v83 = v43;
    v84 = v45;
    v47 = v30;
    v48 = v75;
    sub_1BF179EAC();

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v48, 1, v11);
    v50 = OUTLINED_FUNCTION_15_13(&v88);
    v51(v50, v77);
    if (EnumTagSinglePayload == 1)
    {
      v52 = OUTLINED_FUNCTION_77_0();
      v42(v52);
      OUTLINED_FUNCTION_31_0();
      v53 = v69;
      v54 = v78;
      v78(v69, v47, v11);
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v11);
      v83 = EnumTagSinglePayload;
      v84 = v47;
      OUTLINED_FUNCTION_26_7();
      sub_1BF179E9C();
      sub_1BF179EBC();
      v54(v68, v47, v11);
      OUTLINED_FUNCTION_54();
      sub_1BF17A65C();
      sub_1BF17A5DC();
      (*v71)(v47, v11);
      v22 = v74;
      v10 = v70;
      v30 = v47;
    }

    else
    {
      if (qword_1ED8F01C8 != -1)
      {
        OUTLINED_FUNCTION_0_56();
        swift_once();
      }

      OUTLINED_FUNCTION_29_7();
      inited = swift_initStackObject();
      *(inited + 16) = v67;
      v30 = v47;
      v56 = (v80)(v11, v82);
      v58 = v57;
      *(inited + 56) = MEMORY[0x1E69E6158];
      *(inited + 64) = sub_1BF071CD8();
      *(inited + 32) = v56;
      *(inited + 40) = v58;
      v22 = v74;
      v10 = v70;
      if (v42 == 1)
      {
        v59 = OUTLINED_FUNCTION_15_13(&v87);
        v60(v59, v11);
        swift_setDeallocating();
        sub_1BF0C8384();
      }

      else
      {
        sub_1BF0C9F7C("collection must contain unique elements, duplicate=%{public}@", 61, 2, inited);
        swift_setDeallocating();
        sub_1BF0C8384();
        v61 = OUTLINED_FUNCTION_15_13(&v87);
        v62(v61, v11);
      }
    }

    OUTLINED_FUNCTION_9_22();
    v63 = sub_1BF17A5AC();
    v34 = v85;
    if (v85 == v63)
    {
      v33 = v86;
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_26_7();
  v64 = sub_1BF17B23C();
  if (v65 == 8)
  {
    v83 = v64;
    v38 = v76;
    v78 = *v79;
    v78(v76, &v83, v11);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
}

void UniqueCollection.removeSubrange<A>(_:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v3 = *(v1 + 16);
  OUTLINED_FUNCTION_54();
  v37 = sub_1BF17AE6C();
  v4 = OUTLINED_FUNCTION_1(v37);
  v39 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v32 - v8;
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  *&v46 = *v0;
  OUTLINED_FUNCTION_54();
  v17 = sub_1BF17A65C();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  sub_1BF17A43C();
  v18 = v47;
  v47 = *v0;
  v19 = UniqueCollection.startIndex.getter(v2);
  v20 = *v0;
  v45 = v0 + 1;
  v44 = v20;
  v46 = v20;
  v43 = v2;
  v21 = UniqueCollection.endIndex.getter(v2);
  if (v21 < v19)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  if (*(&v18 + 1) >= v21 || *(&v18 + 1) < v19 || v18 < v19 || v18 >= v21)
  {
    goto LABEL_18;
  }

  v34 = v17;
  v35 = v0;
  v32 = *(&v18 + 1);
  v33 = v18;
  sub_1BF17A68C();
  v26 = v36;
  v25 = v37;
  v28 = v27;
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_7_23();
  v29 = sub_1BF17B02C();
  *&v46 = v29;
  OUTLINED_FUNCTION_7_23();
  if (v29 != sub_1BF17B05C())
  {
    v43 = *(v43 + 32);
    *&v44 = v28;
    v41 = *(v43 + 8);
    v42 = v43 + 8;
    ++v39;
    v40 = v10 + 16;
    v38 = v10 + 8;
    do
    {
      OUTLINED_FUNCTION_7_23();
      sub_1BF17B04C();
      sub_1BF17B03C();
      (*(v10 + 16))(v16, v28 + *(v10 + 72) * v29, v3);
      sub_1BF17B06C();
      *&v47 = v41(v3, v43);
      *(&v47 + 1) = v30;
      sub_1BF179E9C();
      sub_1BF179D7C();
      v28 = v44;

      (*v39)(v26, v25);
      (*(v10 + 8))(v16, v3);
      OUTLINED_FUNCTION_7_23();
      v31 = sub_1BF17B05C();
      v29 = v46;
    }

    while (v46 != v31);
  }

  swift_unknownObjectRelease();
  *&v47 = v33;
  *(&v47 + 1) = v32;
  OUTLINED_FUNCTION_11_14();
  swift_getWitnessTable();
  sub_1BF17AC3C();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_26_2();
}

Swift::Void __swiftcall UniqueCollection.remove(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v38 = v4;
  v6 = v5;
  v7 = *(v2 + 16);
  OUTLINED_FUNCTION_40();
  v8 = sub_1BF17AE6C();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_1();
  v37 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  OUTLINED_FUNCTION_2_3();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_1();
  v36 = v24 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v39 = &v36 - v27;
  v28 = v1;
  v41 = *v1;
  UniqueCollection.subscript.getter(v6, v38, v3);
  if (__swift_getEnumTagSinglePayload(v18, 1, v7) == 1)
  {
    (*(v11 + 8))(v18, v8);
  }

  else
  {
    v38 = v8;
    (*(v20 + 32))(v39, v18, v7);
    v29 = v1[1];
    *&v41 = *v28;
    *(&v41 + 1) = v29;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    OUTLINED_FUNCTION_1_44();
    swift_getWitnessTable();
    v30 = *(v3 + 24);
    sub_1BF17ABCC();

    if (v40 == 1)
    {
      (*(v20 + 8))(v39, v7);
    }

    else
    {
      v31 = v39;
      *&v41 = (*(*(v3 + 32) + 8))(v7);
      *(&v41 + 1) = v32;
      OUTLINED_FUNCTION_30_6();
      v33 = v37;
      sub_1BF179D7C();

      (*(v11 + 8))(v33, v38);
      OUTLINED_FUNCTION_40();
      sub_1BF17A65C();
      v34 = v36;
      sub_1BF17A5FC();
      v35 = *(v20 + 8);
      v35(v34, v7);
      v35(v31, v7);
    }
  }

  OUTLINED_FUNCTION_26_2();
}

Swift::Void __swiftcall UniqueCollection.removeAll()()
{
  v1 = *(v0 + 16);
  sub_1BF179E9C();
  sub_1BF179E8C();
  OUTLINED_FUNCTION_54();
  sub_1BF17A65C();

  sub_1BF17A63C();
}

void UniqueCollection.replace(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_8_22();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_2_39();
  swift_getWitnessTable();
  v12 = *(v11 + 24);
  OUTLINED_FUNCTION_5_22();
  v13 = sub_1BF17A42C();

  if (v13)
  {
    v15 = *v10;
    v16 = v10[1];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    OUTLINED_FUNCTION_1_44();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_5_22();
    sub_1BF17ABCC();

    if (a10 != 1)
    {
      v14 = OUTLINED_FUNCTION_9_22();
      UniqueCollection.remove(at:)(v14);
      OUTLINED_FUNCTION_26_7();
      UniqueCollection.insert(_:at:)();
    }

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void UniqueCollection.replace(_:withContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_8_22();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_2_39();
  swift_getWitnessTable();
  v12 = *(v11 + 24);
  OUTLINED_FUNCTION_5_22();
  v13 = sub_1BF17A42C();

  if (v13)
  {
    v17 = *v10;
    v18 = v10[1];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    OUTLINED_FUNCTION_1_44();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_5_22();
    sub_1BF17ABCC();

    if (a10 != 1)
    {
      v14 = OUTLINED_FUNCTION_9_22();
      UniqueCollection.remove(at:)(v14);
      OUTLINED_FUNCTION_26_7();
      UniqueCollection.insert(contentsOf:at:)(v15, v16);
    }

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

void UniqueCollection.move(_:to:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, Swift::Int at, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_8_22();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  OUTLINED_FUNCTION_2_39();
  swift_getWitnessTable();
  v24 = *(v23 + 24);
  OUTLINED_FUNCTION_5_22();
  v25 = sub_1BF17A42C();

  if (v25)
  {
    v26 = *v22;
    v27 = v22[1];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    OUTLINED_FUNCTION_1_44();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_5_22();
    sub_1BF17ABCC();

    if (a10 != 1)
    {
      UniqueCollection.remove(at:)(at);
      UniqueCollection.insert(_:at:)();
    }

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

Swift::Int sub_1BF0EACBC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = UniqueCollection.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BF0EACE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1BF0EAD3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

void UniqueCollection.init(keepingFirstUniqueFrom:)()
{
  OUTLINED_FUNCTION_32();
  v29 = v0;
  v30 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_2_3();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  v17 = sub_1BF179CFC();
  v33 = v17;
  v18 = sub_1BF179CEC();
  v34 = v18;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v19 = sub_1BF17A4EC();

  v32 = v19;
  if (v19 != sub_1BF17A5AC())
  {
    v25 = v11;
    v26 = v7;
    v27 = (v9 + 32);
    v28 = (v9 + 16);
    while (1)
    {
      v20 = sub_1BF17A58C();
      sub_1BF17A51C();
      if (v20)
      {
        (*(v9 + 16))(v16, v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, v3);
      }

      else
      {
        v23 = sub_1BF17B23C();
        if (v25 != 8)
        {
          __break(1u);
          return;
        }

        v31[0] = v23;
        (*v28)(v16, v31, v3);
        swift_unknownObjectRelease();
      }

      sub_1BF17A62C();
      (*v27)(v14, v16, v3);
      v31[0] = v33;
      v31[1] = v34;
      type metadata accessor for UniqueCollection();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      OUTLINED_FUNCTION_2_39();
      swift_getWitnessTable();
      v21 = sub_1BF17A42C();

      if ((v21 & 1) == 0)
      {
        UniqueCollection.append(_:)();
      }

      (*(v9 + 8))(v14, v3);
      v22 = sub_1BF17A5AC();
      v19 = v32;
      if (v32 == v22)
      {

        v17 = v33;
        v18 = v34;
        v7 = v26;
        goto LABEL_12;
      }
    }
  }

LABEL_12:
  *v7 = v17;
  v7[1] = v18;
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF0EB0A8(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static UniqueCollection.== infix(_:_:)(a1, a2);
}

uint64_t UniqueCollection.description.getter(uint64_t a1)
{
  v4 = *v1;
  v2 = *(a1 + 16);
  sub_1BF17A65C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  swift_getWitnessTable();
  return sub_1BF17A14C();
}

void sub_1BF0EB12C(void *a1, void (*a2)(void))
{
  v4 = sub_1BF179B6C();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  if (qword_1ED8F0210 != -1)
  {
    OUTLINED_FUNCTION_1_10();
    swift_once();
  }

  if (off_1ED8F0218 == a1)
  {
    goto LABEL_16;
  }

  if (qword_1ED8EFB98 != -1)
  {
    OUTLINED_FUNCTION_6_27();
    swift_once();
  }

  v13 = qword_1ED8EFC18;
  v14 = 0x1E696A000uLL;
  v15 = 0x1FABC8000;
  if (qword_1ED8EFC18 == a1)
  {
    v16 = [objc_opt_self() isMainThread];
    v14 = 0x1E696A000uLL;
    v15 = 0x1FABC8000uLL;
    if (v16)
    {
      goto LABEL_16;
    }
  }

  if (qword_1ED8EF920 != -1)
  {
    OUTLINED_FUNCTION_5_23();
    v20 = v19;
    v22 = v21;
    swift_once();
    v14 = v22;
    v15 = v20;
  }

  if (qword_1ED8EF928 != a1)
  {
    if (v13 != a1)
    {
      OUTLINED_FUNCTION_17_10();
      return;
    }

    goto LABEL_17;
  }

  v17 = *(v14 + 3840);
  if (([objc_opt_self() (v15 + 1514)] & 1) == 0)
  {
LABEL_16:
    a2();
    return;
  }

  if (v13 == a1)
  {
LABEL_17:
    sub_1BEFF6E88();
    v18 = sub_1BF17AD5C();
    goto LABEL_18;
  }

  sub_1BEFF6E88();
  (*(v7 + 104))(v12, *MEMORY[0x1E69E7F88], v4);
  v18 = sub_1BF17ADAC();
  (*(v7 + 8))(v12, v4);
LABEL_18:
  OUTLINED_FUNCTION_17_10();
}

uint64_t SignpostRecorder.init(createdDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for SignpostRecorder() + 28);
  type metadata accessor for Signpost();
  *(a2 + v4) = sub_1BF179CFC();
  v5 = sub_1BF1794AC();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2, a1, v5);
}

uint64_t SignpostRecorder.mark(comment:createdDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a1;
  v50 = a2;
  v49 = *(a4 + 16);
  v6 = type metadata accessor for Signpost();
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v42 = v8;
  v43 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v40 - v11;
  v13 = sub_1BF1794AC();
  OUTLINED_FUNCTION_2_3();
  v15 = v14;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v40 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v46 = &v40 - v22;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_3();
  v24 = v23;
  v26 = *(v25 + 64);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v40 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v40 - v32;
  v41 = v15;
  v34 = *(v15 + 16);
  v45 = v31;
  v34(v31, v47, v13);
  v35 = *(a4 + 28);
  v47 = v4;
  v44 = v35;
  v51 = *(v4 + v35);
  sub_1BF17A65C();
  swift_getWitnessTable();
  sub_1BF179F6C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v6) == 1)
  {
    (*(v42 + 8))(v12, v43);
    v36 = v46;
    v34(v46, v47, v13);
  }

  else
  {
    v37 = v40;
    v34(v40, v12, v13);
    (*(v24 + 8))(v12, v6);
    v36 = v46;
    (*(v41 + 32))(v46, v37, v13);
  }

  v38 = v50;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF07CB2C(v45, v36, v48, v38, v33);
  (*(v24 + 16))(v30, v33, v6);
  sub_1BF17A5DC();
  return (*(v24 + 8))(v33, v6);
}

uint64_t sub_1BF0EB820(uint64_t a1)
{
  result = sub_1BF1794AC();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    type metadata accessor for Signpost();
    result = sub_1BF17A65C();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t VersionNumber.major.getter()
{
  if (*(*v0 + 16))
  {
    return *(*v0 + 32);
  }

  else
  {
    return OUTLINED_FUNCTION_0_4();
  }
}

uint64_t VersionNumber.subscript.getter(uint64_t result)
{
  if (*(*v1 + 16) <= result)
  {
    return OUTLINED_FUNCTION_0_4();
  }

  if ((result & 0x8000000000000000) == 0)
  {
    return *(*v1 + 8 * result + 32);
  }

  __break(1u);
  return result;
}

uint64_t VersionNumber.minor.getter()
{
  if (*(*v0 + 16) < 2uLL)
  {
    return OUTLINED_FUNCTION_0_4();
  }

  else
  {
    return *(*v0 + 40);
  }
}

TeaFoundation::VersionNumber_optional __swiftcall VersionNumber.init(_:)(Swift::String_optional a1)
{
  v2 = v1;
  if (a1.value._object)
  {
    *&a1.value._countAndFlagsBits = VersionNumber.init(_:)(a1.value);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return *&a1.value._countAndFlagsBits;
}

uint64_t sub_1BF0EB9D4()
{
  v0 = sub_1BF0EBA40();
  v4 = sub_1BF0EBA74(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1BF0EBA74(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1BF17A19C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1BF17AEBC();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1BF01A8B8(v9, 0);
  v12 = sub_1BF0EBBD4(v15, (v11 + 4), v10, a1, a2, a3, a4);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1BF17A19C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1BF17B2FC();
LABEL_4:

  return sub_1BF17A19C();
}

unint64_t sub_1BF0EBBD4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1BF0B603C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1BF17A28C();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1BF17B2FC();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1BF0B603C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_1BF17A25C();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1BF0EBDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1BF0EC8D8();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  result = sub_1BF17A30C();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1BF0EB9D4();
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1BF0EC378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = a1;
  v88 = a2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  result = sub_1BF17A30C();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1BF0EB9D4();
    v48 = v47;

    v7 = v48;
    if ((v48 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1BF17B2FC();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_2_2();
          if (v27 ^ v28 | v26)
          {
            v31 = 65;
          }

          if (!(v27 ^ v28 | v26))
          {
            v32 = 58;
          }

          if (v29)
          {
            v17 = 0;
            v33 = (v29 + 1);
            v19 = 1;
            do
            {
              v34 = *v33;
              if (v34 < 0x30 || v34 >= v32)
              {
                if (v34 < 0x41 || v34 >= v31)
                {
                  OUTLINED_FUNCTION_12_0();
                  if (!v23 || v34 >= v36)
                  {
                    goto LABEL_144;
                  }

                  v35 = -87;
                }

                else
                {
                  v35 = -55;
                }
              }

              else
              {
                v35 = -48;
              }

              v37 = v17 * a3;
              if ((v37 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_143;
              }

              v38 = v34 + v35;
              v23 = __CFADD__(v37, v38);
              v17 = v37 + v38;
              if (v23)
              {
                goto LABEL_143;
              }

              ++v33;
              --v30;
            }

            while (v30);
LABEL_53:
            v19 = 0;
            LODWORD(v6) = v17;
            goto LABEL_144;
          }

          goto LABEL_73;
        }

LABEL_143:
        LODWORD(v6) = 0;
        v19 = 1;
        goto LABEL_144;
      }

      goto LABEL_148;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (result)
        {
          v42 = 0;
          v19 = 1;
          do
          {
            v43 = *result;
            if (v43 < 0x30 || v43 >= v39)
            {
              if (v43 < 0x41 || v43 >= v40)
              {
                LODWORD(v6) = 0;
                if (v43 < 0x61 || v43 >= v41)
                {
                  goto LABEL_144;
                }

                v44 = -87;
              }

              else
              {
                v44 = -55;
              }
            }

            else
            {
              v44 = -48;
            }

            v45 = v42 * a3;
            if ((v45 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_143;
            }

            v46 = v43 + v44;
            v23 = __CFADD__(v45, v46);
            v42 = v45 + v46;
            if (v23)
            {
              goto LABEL_143;
            }

            ++result;
            --v8;
          }

          while (v8);
          v19 = 0;
          LODWORD(v6) = v42;
          goto LABEL_144;
        }

        goto LABEL_73;
      }

      goto LABEL_143;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_2_2();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          v19 = 1;
          while (1)
          {
            v20 = *v18;
            if (v20 < 0x30 || v20 >= v16)
            {
              if (v20 < 0x41 || v20 >= v15)
              {
                OUTLINED_FUNCTION_12_0();
                if (!v23 || v20 >= v22)
                {
                  goto LABEL_144;
                }

                v21 = -87;
              }

              else
              {
                v21 = -55;
              }
            }

            else
            {
              v21 = -48;
            }

            v24 = v17 * a3;
            if ((v24 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_143;
            }

            v25 = v20 + v21;
            v23 = v24 >= v25;
            v17 = v24 - v25;
            if (!v23)
            {
              goto LABEL_143;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_53;
            }
          }
        }

LABEL_73:
        LODWORD(v6) = 0;
        v19 = 0;
LABEL_144:

        LOBYTE(v87) = v19;
        return (v6 | (v19 << 32));
      }

      goto LABEL_143;
    }

    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  v49 = HIBYTE(v7) & 0xF;
  v87 = v6;
  v88 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v49)
      {
        OUTLINED_FUNCTION_0_6();
        if (v76 ^ v77 | v75)
        {
          v79 = 65;
        }

        if (!(v76 ^ v77 | v75))
        {
          v80 = 58;
        }

        v81 = &v87;
        v19 = 1;
        while (1)
        {
          v82 = *v81;
          if (v82 < 0x30 || v82 >= v80)
          {
            if (v82 < 0x41 || v82 >= v79)
            {
              OUTLINED_FUNCTION_12_0();
              if (!v23 || v82 >= v84)
              {
                goto LABEL_144;
              }

              v83 = -87;
            }

            else
            {
              v83 = -55;
            }
          }

          else
          {
            v83 = -48;
          }

          v85 = v54 * a3;
          if ((v85 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_143;
          }

          v86 = v82 + v83;
          v23 = __CFADD__(v85, v86);
          v54 = v85 + v86;
          if (v23)
          {
            goto LABEL_143;
          }

          v81 = (v81 + 1);
          if (!--v78)
          {
            goto LABEL_142;
          }
        }
      }

      goto LABEL_143;
    }

    if (v49)
    {
      if (v49 != 1)
      {
        OUTLINED_FUNCTION_0_6();
        if (v51 ^ v52 | v50)
        {
          v55 = 65;
        }

        if (!(v51 ^ v52 | v50))
        {
          v56 = 58;
        }

        v57 = &v87 + 1;
        v19 = 1;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v56)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              OUTLINED_FUNCTION_12_0();
              if (!v23 || v58 >= v60)
              {
                goto LABEL_144;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v61 = v54 * a3;
          if ((v61 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_143;
          }

          v62 = v58 + v59;
          v23 = v61 >= v62;
          v54 = v61 - v62;
          if (!v23)
          {
            goto LABEL_143;
          }

          ++v57;
          if (!--v53)
          {
            goto LABEL_142;
          }
        }
      }

      goto LABEL_143;
    }

    goto LABEL_147;
  }

  if (v49)
  {
    if (v49 != 1)
    {
      OUTLINED_FUNCTION_0_6();
      if (v64 ^ v65 | v63)
      {
        v67 = 65;
      }

      if (!(v64 ^ v65 | v63))
      {
        v68 = 58;
      }

      v69 = &v87 + 1;
      v19 = 1;
      do
      {
        v70 = *v69;
        if (v70 < 0x30 || v70 >= v68)
        {
          if (v70 < 0x41 || v70 >= v67)
          {
            OUTLINED_FUNCTION_12_0();
            if (!v23 || v70 >= v72)
            {
              goto LABEL_144;
            }

            v71 = -87;
          }

          else
          {
            v71 = -55;
          }
        }

        else
        {
          v71 = -48;
        }

        v73 = v54 * a3;
        if ((v73 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_143;
        }

        v74 = v70 + v71;
        v23 = __CFADD__(v73, v74);
        v54 = v73 + v74;
        if (v23)
        {
          goto LABEL_143;
        }

        ++v69;
        --v66;
      }

      while (v66);
LABEL_142:
      v19 = 0;
      LODWORD(v6) = v54;
      goto LABEL_144;
    }

    goto LABEL_143;
  }

LABEL_149:
  __break(1u);
  return result;
}

unint64_t sub_1BF0EC884()
{
  result = qword_1EBDCBFF0;
  if (!qword_1EBDCBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCBFF0);
  }

  return result;
}

unint64_t sub_1BF0EC8D8()
{
  result = qword_1EBDCBFF8[0];
  if (!qword_1EBDCBFF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBDCBFF8);
  }

  return result;
}

uint64_t ProxyContainer.__allocating_init(publicContainer:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ProxyContainer.init(publicContainer:)(a1);
  return v2;
}

uint64_t sub_1BF0EC99C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  return sub_1BF0ECCDC(*(v0 + 24));
}

id AsyncBlockOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AsyncBlockCancellingOperation.__allocating_init(_:)()
{
  OUTLINED_FUNCTION_76();
  v3 = objc_allocWithZone(v1);
  return AsyncBlockCancellingOperation.init(_:)(v2, v0);
}

uint64_t AsyncBlockCancellingOperation.perform(completion:)()
{
  v3 = v1;
  OUTLINED_FUNCTION_76();
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for AsyncBlockCancelledReporter();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v9 = *(v1 + qword_1EBDCAB08);
  v8 = *(v1 + qword_1EBDCAB08 + 8);
  v19[3] = v6;
  v19[4] = &off_1F3DBFB78;
  v19[0] = v7;
  v10 = v3;

  v9(v19);
  __swift_destroy_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_14_0();
  v11 = swift_allocObject();
  v12 = *((v5 & v4) + 0xF0);
  *(v11 + 16) = v12;
  *(v11 + 24) = v2;
  OUTLINED_FUNCTION_5_24(v11);
  v13 = sub_1BF014EDC(v12, MEMORY[0x1E69E7CA8] + 8);
  Promise.then<A>(on:closure:)();

  OUTLINED_FUNCTION_14_0();
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v2;
  v14[4] = v0;
  v15 = qword_1ED8F0210;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_2_35();
  }

  v16 = off_1ED8F0218;
  sub_1BEFF77FC();

  OUTLINED_FUNCTION_14_0();
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v2;
  OUTLINED_FUNCTION_5_24(v17);
  sub_1BF03952C(v16, sub_1BF0ECF58, v17);
}

uint64_t sub_1BF0ECCDC(void (*a1)(uint64_t *))
{
  v2 = type metadata accessor for Result();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = (&v13 - v8);
  sub_1BF095D40();
  v10 = swift_allocError();
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 2;
  *v9 = v10;
  swift_storeEnumTagMultiPayload();
  a1(v9);
  return (*(v5 + 8))(v9, v2);
}

uint64_t sub_1BF0ECED4()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t static XPCClassBuilder.buildBlock(_:)()
{
  v0 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  return sub_1BF09EC6C(v0);
}

_BYTE *storeEnumTagSinglePayload for XPCClassBuilder(_BYTE *result, int a2, int a3)
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

uint64_t ShortDescription.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BF0ED08C(a1, v7);
  sub_1BF0AAA78(v7, a2, a3);
  return sub_1BEFFD168(a1);
}

uint64_t sub_1BF0ED08C(uint64_t a1, uint64_t a2)
{
  sub_1BF008CC4(0, &qword_1ED8EFBA0, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double ShortDescription.subscript.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_1BF014CA8(), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 32 * v4;

    sub_1BF0075BC(v6, a1);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

double sub_1BF0ED170@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = *a1;
  v7 = *(a1 + 1);
  return ShortDescription.subscript.getter(a3);
}

uint64_t sub_1BF0ED1B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  sub_1BF0ED08C(a1, v6);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return ShortDescription.subscript.setter(v6, v3, v4);
}

void (*ShortDescription.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  v9 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v9;
  v9[10] = a4;
  v9[11] = v4;
  v9[8] = a2;
  v9[9] = a3;
  v11 = *v4;
  v12 = *(v4 + 1);
  ShortDescription.subscript.getter(v9);
  return sub_1BF0ED2A8;
}

void sub_1BF0ED2A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  if (a2)
  {
    sub_1BF0ED08C(*a1, v2 + 32);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    ShortDescription.subscript.setter(v2 + 32, v5, v4);
    sub_1BEFFD168(v2);
  }

  else
  {
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    ShortDescription.subscript.setter(v2, v5, v4);
  }

  free(v2);
}

uint64_t ShortDescription.shortDescription.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  a2[3] = a1;
  a2[4] = &protocol witness table for ShortDescription<A>;
  *a2 = v4;
  a2[1] = v3;
  a2[2] = v5;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t sub_1BF0ED398(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ShortDescribable.description.getter(a1, WitnessTable);
}

uint64_t sub_1BF0ED3EC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t URLHandlerOpenOptions.sourceApplication.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

__n128 URLHandlerOpenOptions.init(sourceApplication:annotation:openInPlace:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  result = *a3;
  v6 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v6;
  *(a5 + 48) = a4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1BF0ED4C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BF0ED51C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t (*Dictionary<>.disableSafeishSafety.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = Dictionary<>.disableSafeishSafety.getter(*v1) & 1;
  return sub_1BF0ED5E0;
}

uint64_t getEnumTagSinglePayload for NonCancellingReporter(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NonCancellingReporter(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t MachService.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

void *MachService.hostInterface.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1BF0ED7F8(v2);
}

void *sub_1BF0ED7F8(void *result)
{
  if (result)
  {
    v1 = result;

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

uint64_t MachService.serviceInterface.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  v4 = v2;

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

double MachService.init(name:hostInterface:serviceInterface:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(__int128 *__return_ptr)@<X2>, void (*a4)(__int128 *__return_ptr, void *)@<X4>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  v7 = a3(&v9);
  *(a5 + 16) = v9;
  a4(&v9, v7);
  result = *&v9;
  *(a5 + 32) = v9;
  return result;
}

double MachService.init(_:serviceInterface:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(__int128 *__return_ptr)@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  a3(&v6);
  result = *&v6;
  *(a4 + 32) = v6;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation12XPCInterfaceVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF0ED940(uint64_t a1, int a2)
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

uint64_t sub_1BF0ED980(uint64_t result, int a2, int a3)
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

uint64_t StoreState.data.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OUTLINED_FUNCTION_1(a1);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  (*(v6 + 16))(v10 - v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v6 + 8))(v11, a1);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_5:
    v16 = *(a1 + 16);
    v14 = a2;
    v15 = 1;
    return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
  }

  v13 = *(a1 + 16);
  (*(*(v13 - 8) + 32))(a2, v11, v13);
  v14 = a2;
  v15 = 0;
  v16 = v13;
  return __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
}

uint64_t StoreValue.__allocating_init()()
{
  OUTLINED_FUNCTION_19();
  v0 = swift_allocObject();
  StoreValue.init()();
  return v0;
}

uint64_t sub_1BF0EDB78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Promise();
  (*(v4 + 16))(v7, a1, a2);
  return Promise.__allocating_init(value:)();
}

uint64_t StoreValue.__allocating_init(computation:)()
{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_19();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_5_25();
  StoreValue.init(computation:)(v1, v2);
  return v0;
}

{
  OUTLINED_FUNCTION_76();
  OUTLINED_FUNCTION_19();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_5_25();
  StoreValue.init(computation:)(v1, v2);
  return v0;
}

uint64_t StoreValue.init(computation:)(uint64_t a1, uint64_t a2)
{
  return sub_1BF0EDD00(a1, a2, StoreComputedValue.__allocating_init(computation:));
}

{
  return sub_1BF0EDD00(a1, a2, StoreComputedValue.__allocating_init(computation:));
}

uint64_t sub_1BF0EDD00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3;
  OUTLINED_FUNCTION_6_28();
  v9 = *(v8 + 80);
  type metadata accessor for StoreComputedValue();
  *(v5 + 16) = a3(a1, a2);
  return v5;
}

uint64_t StoreComputedValue.nextInput(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_29();
  v3 = *(v2 + 80);
  v4 = type metadata accessor for StoreState();
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  (*(*(v3 - 8) + 16))(&v15 - v10, a1, v3);
  swift_storeEnumTagMultiPayload();
  StoreComputedValue.nextInput(_:)(v11);
  v13 = v12;
  (*(v6 + 8))(v11, v4);
  return v13;
}

void StoreComputedValue.nextInput(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v43 - v8;
  v9 = *(v4 + 88);
  v47 = type metadata accessor for StoreState();
  OUTLINED_FUNCTION_12(v47);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v12);
  v43 = v5;
  v13 = type metadata accessor for StoreState();
  OUTLINED_FUNCTION_1(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v43 - v19);
  v21 = *(v1 + *(v4 + 136));
  UnfairLock.lock()();
  OUTLINED_FUNCTION_6_28();
  v23 = *(v22 + 120);
  v24 = *(v2 + v23);
  if (v24 == -1)
  {
    __break(1u);
  }

  else
  {
    v44 = v4;
    *(v2 + v23) = v24 + 1;
    OUTLINED_FUNCTION_6_28();
    v26 = *(v25 + 112);
    swift_beginAccess();
    (*(v15 + 24))(v2 + v26, a1, v13);
    swift_endAccess();
    os_unfair_lock_unlock(*(v21 + 16));
    (*(v15 + 16))(v20, a1, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v28 = v45;
        v29 = v43;
        v30 = (*(v46 + 32))();
        MEMORY[0x1EEE9AC00](v30);
        *(&v43 - 2) = v2;
        *(&v43 - 1) = v28;
        firstly<A>(closure:)(sub_1BF0EE810);
        OUTLINED_FUNCTION_6_28();
        v32 = *(v31 + 144);
        v33 = *(v2 + v32);
        *(swift_allocObject() + 16) = v24;
        v34 = v33;
        Promise.then<A, B>(on:disposeOn:closure:)();

        v35 = *(v2 + v32);
        *(swift_allocObject() + 16) = v24;
        v36 = v35;
        Promise.error<A>(on:disposeOn:closure:)();

        (*(v46 + 8))(v45, v29);
      }

      else
      {
        type metadata accessor for Promise();
        swift_storeEnumTagMultiPayload();
        Promise.__allocating_init(value:)();
      }
    }

    else
    {
      v37 = *v20;
      OUTLINED_FUNCTION_6_28();
      v39 = *(v2 + *(v38 + 144));
      v40 = swift_allocObject();
      *(v40 + 16) = v37;
      *(v40 + 24) = v24;
      v41 = v39;
      v42 = v37;
      firstly<A, B>(on:disposeOn:closure:)(v41, v2, sub_1BF0EEAD4, v40, v47, v44);
    }
  }
}

Swift::Void __swiftcall StoreComputedValue.refresh()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for StoreState();
  OUTLINED_FUNCTION_1(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  v11 = *(v1 + 112);
  swift_beginAccess();
  (*(v5 + 16))(v10, v0 + v11, v3);
  StoreComputedValue.nextInput(_:)(v10);

  (*(v5 + 8))(v10, v3);
}

uint64_t StoreValue.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t StoreValue.__deallocating_deinit()
{
  StoreValue.deinit();
  v0 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF0EE584(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a5 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for Promise();
  a2(a1);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_1BF0EE638(void *a1, void *a2, unint64_t a3)
{
  v6 = *(*a1 + 88);
  v7 = type metadata accessor for StoreState();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - v10;
  *(v15 - v10) = a2;
  swift_storeEnumTagMultiPayload();
  v12 = a2;
  sub_1BF0EE774(v11, a3);
  (*(v8 + 8))(v11, v7);
  type metadata accessor for Promise();
  v13 = a1[2];
  AsyncObservable.value.getter(v11);
  return Promise.__allocating_init(value:)();
}

void sub_1BF0EE774(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + *(*v2 + 136));
  UnfairLock.lock()();
  v7 = *(*v3 + 128);
  if (*(v3 + v7) < a2)
  {
    v8 = v3[2];
    AsyncObservable.next(value:quiet:)(a1, 0);
    *(v3 + v7) = a2;
  }

  sub_1BF0EEAF0(v3);
}

uint64_t sub_1BF0EE810()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 32);
  return (*(v2 + 24))(v1);
}

uint64_t sub_1BF0EE844(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = *(*a2 + 88);
  v7 = type metadata accessor for StoreState();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  (*(*(v6 - 8) + 16))(&v14 - v10, a1, v6);
  swift_storeEnumTagMultiPayload();
  sub_1BF0EE774(v11, a3);
  (*(v8 + 8))(v11, v7);
  type metadata accessor for Promise();
  v12 = a2[2];
  AsyncObservable.value.getter(v11);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_1BF0EE9C8(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = *(*a2 + 88);
  v6 = type metadata accessor for StoreState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  *(&v13 - v9) = a1;
  swift_storeEnumTagMultiPayload();
  v11 = a1;
  sub_1BF0EE774(v10, a3);
  return (*(v7 + 8))(v10, v6);
}

char *StoreComputedValue.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(v0 + 4);

  OUTLINED_FUNCTION_29();
  v5 = *(v4 + 112);
  v6 = *(v1 + 80);
  v7 = type metadata accessor for StoreState();
  OUTLINED_FUNCTION_12(v7);
  (*(v8 + 8))(&v0[v5]);
  OUTLINED_FUNCTION_29();
  v10 = *&v0[*(v9 + 136)];

  OUTLINED_FUNCTION_29();

  return v0;
}

uint64_t StoreComputedValue.__deallocating_deinit()
{
  StoreComputedValue.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF0EEC28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1BF0EED4C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t dispatch thunk of StoreValue.__allocating_init(computation:)()
{
  return (*(v0 + 104))();
}

{
  return (*(v0 + 112))();
}

uint64_t sub_1BF0EEF90(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_8_24();
  sub_1BF0EF16C(a1, a2);
  return v4;
}

uint64_t sub_1BF0EEFD4()
{
  OUTLINED_FUNCTION_29();
  v3 = *(v2 + 80);
  v4 = type metadata accessor for Seal.Resolution();
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  OUTLINED_FUNCTION_15_15();
  if ((*(v0 + 24) & 1) == 0)
  {
    *(v0 + 24) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1BF006BE0();
    OUTLINED_FUNCTION_11_16();
    (*(v6 + 8))(v11, v4);
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return OUTLINED_FUNCTION_31_1();
}

uint64_t sub_1BF0EF124(uint64_t a1, uint64_t a2)
{
  sub_1BF17BB6C();
  v4 = *(a2 + 16);
  sub_1BF09E3D0(v6, *v2);
  return sub_1BF17BB9C();
}

uint64_t sub_1BF0EF16C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 80);
  v7 = type metadata accessor for Seal.Resolution();
  v8 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v20 - v14);
  type metadata accessor for Seal.Handler();
  *(v2 + 32) = sub_1BF179CFC();
  OUTLINED_FUNCTION_29();
  __swift_storeEnumTagSinglePayload(v2 + *(v16 + 112), 1, 1, v7);
  *(v2 + 16) = a1;
  *(v2 + 24) = 1;
  *v15 = a2;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v7);
  OUTLINED_FUNCTION_29();
  v18 = *(v17 + 112);
  OUTLINED_FUNCTION_7_2();
  (*(v10 + 40))(v2 + v18, v15, v8);
  swift_endAccess();
  return v2;
}

uint64_t sub_1BF0EF2EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Seal.Resolution();
  v9 = sub_1BF17AE6C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v21 - v12);
  (*(v10 + 16))(&v21 - v12, a1, v9);
  if (__swift_getEnumTagSinglePayload(v13, 1, v8) == 1)
  {
    result = (*(v10 + 8))(v13, v9);
LABEL_19:
    __break(1u);
    return result;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    result = (*(*(v8 - 8) + 8))(v13, v8);
    goto LABEL_19;
  }

  v14 = *v13;
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = v14;

  v16 = v14;
  if (qword_1ED8F0210 != -1)
  {
    swift_once();
  }

  if (off_1ED8F0218 == a2)
  {
    goto LABEL_15;
  }

  if (qword_1ED8EFB98 != -1)
  {
    swift_once();
  }

  if (qword_1ED8EFC18 == a2 && ([objc_opt_self() isMainThread] & 1) != 0)
  {
    goto LABEL_15;
  }

  if (qword_1ED8EF920 != -1)
  {
    swift_once();
  }

  if (qword_1ED8EF928 == a2 && ![objc_opt_self() isMainThread])
  {
LABEL_15:
    v19 = sub_1BF02E218;
  }

  else
  {
    v17 = swift_allocObject();
    v17[2] = a2;
    v17[3] = sub_1BF02E218;
    v17[4] = v15;
    v18 = a2;
    v19 = sub_1BF097A1C;
  }

  return v19;
}

uint64_t sub_1BF0EF614(uint64_t a1, void *a2, void (*a3)(), uint64_t a4)
{
  v8 = type metadata accessor for Seal.Resolution();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  (*(v9 + 16))(&v15 - v11, a1, v8);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v14 = sub_1BF006210(a2, a3, a4);
  v14();
}

_BYTE *sub_1BF0EF750(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BF0EF834(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1BF0EF958(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t type metadata accessor for AuthTokenResponseItem()
{
  result = qword_1ED8EA190;
  if (!qword_1ED8EA190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF0EFBB8()
{
  result = sub_1BF17923C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BF0EFC3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1BF17B86C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
    if (v6 || (sub_1BF17B86C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6974617269707865 && a2 == 0xED00006374556E6FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF17B86C();

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

uint64_t sub_1BF0EFD50(char a1)
{
  if (!a1)
  {
    return 7107189;
  }

  if (a1 == 1)
  {
    return 0x6E656B6F74;
  }

  return 0x6974617269707865;
}

uint64_t sub_1BF0EFDA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BF17923C();
  v5 = OUTLINED_FUNCTION_1(v4);
  v30 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v31 = v10 - v9;
  sub_1BF0F0190();
  v12 = OUTLINED_FUNCTION_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = type metadata accessor for AuthTokenResponseItem();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF0F01EC();
  sub_1BF17BBDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1BF0F0240();
  sub_1BF17B5FC();
  (*(v30 + 32))(v19, v31, v4);
  v21 = sub_1BF17B5CC();
  v22 = (v19 + *(v15 + 20));
  *v22 = v21;
  v22[1] = v23;
  sub_1BF17B5DC();
  v25 = v24;
  v26 = OUTLINED_FUNCTION_0_59();
  v27(v26);
  *(v19 + *(v15 + 24)) = v25;
  sub_1BF0F0298(v19, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BF0F02FC(v19);
}

uint64_t sub_1BF0F00D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF0EFC3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF0F0100(uint64_t a1)
{
  v2 = sub_1BF0F01EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF0F013C(uint64_t a1)
{
  v2 = sub_1BF0F01EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BF0F0190()
{
  if (!qword_1ED8E9B90)
  {
    sub_1BF0F01EC();
    v0 = sub_1BF17B63C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9B90);
    }
  }
}

unint64_t sub_1BF0F01EC()
{
  result = qword_1ED8EA1B8[0];
  if (!qword_1ED8EA1B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EA1B8);
  }

  return result;
}

unint64_t sub_1BF0F0240()
{
  result = qword_1ED8EACE0;
  if (!qword_1ED8EACE0)
  {
    sub_1BF17923C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EACE0);
  }

  return result;
}

uint64_t sub_1BF0F0298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthTokenResponseItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF0F02FC(uint64_t a1)
{
  v2 = type metadata accessor for AuthTokenResponseItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AuthTokenResponseItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF0F0438()
{
  result = qword_1EBDCC080;
  if (!qword_1EBDCC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC080);
  }

  return result;
}

unint64_t sub_1BF0F0490()
{
  result = qword_1ED8EA1A8;
  if (!qword_1ED8EA1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA1A8);
  }

  return result;
}

unint64_t sub_1BF0F04E8()
{
  result = qword_1ED8EA1B0;
  if (!qword_1ED8EA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA1B0);
  }

  return result;
}

Swift::Bool __swiftcall Optional.isNil()()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_1(v0);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, *(v1 + 16));
  if (EnumTagSinglePayload != 1)
  {
    (*(v4 + 8))(v8, v1);
  }

  return EnumTagSinglePayload == 1;
}

uint64_t Optional.unwrap()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = OUTLINED_FUNCTION_1(a1);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v6);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  v16 = *(v8 + 16);
  v16(&v20 - v14, v3, a1);
  v17 = *(a1 + 16);
  if (__swift_getEnumTagSinglePayload(v15, 1, v17) == 1 && (v16(v13, v3, a1), result = __swift_getEnumTagSinglePayload(v13, 1, v17), v15 = v13, result == 1))
  {
    __break(1u);
  }

  else
  {
    a2[3] = v17;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
    return (*(*(v17 - 8) + 32))(boxed_opaque_existential_0, v15, v17);
  }

  return result;
}

uint64_t sub_1BF0F0810(_BYTE *a1)
{
  result = swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    swift_beginAccess();
    *a1 = 1;
    return DeferredPromise.reject(_:)();
  }

  return result;
}

void static Promise.map<A>(on:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a1;
  OUTLINED_FUNCTION_2_3();
  v97 = v8;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v84 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v99 = v71 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v87 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v17 = v16;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v91 = v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v86 = v71 - v23;
  v24 = *(v4 + 80);
  sub_1BF179E9C();
  type metadata accessor for DeferredPromise();
  v25 = DeferredPromise.__allocating_init()();
  v88 = a2;
  v26 = a3;
  v72 = v4;
  if ((MEMORY[0x1BFB51C20](a2, a3, v4, a4) & 1) == 0)
  {
    v100[0] = 1;
    type metadata accessor for UnfairLock();
    swift_allocObject();
    v80 = UnfairLock.init(options:)(v100);
    v28 = swift_allocObject();
    v77 = a4;
    v29 = sub_1BF179CEC();
    v79 = v28;
    *(v28 + 16) = v29;
    v78 = swift_allocObject();
    *(v78 + 16) = 0;
    v90 = TupleTypeMetadata2;
    v76 = v24;
    if ((v88 & 0xC000000000000001) != 0)
    {
      v30 = sub_1BF17B47C();
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = v30 | 0x8000000000000000;
    }

    else
    {
      v35 = -1 << *(v88 + 32);
      v32 = ~v35;
      v31 = v88 + 64;
      v36 = -v35;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      else
      {
        v37 = -1;
      }

      v33 = v37 & *(v88 + 64);
      v34 = v88;
    }

    v98 = (v97 + 32);
    v71[1] = v32;
    v83 = (v32 + 64) >> 6;
    v92 = v97 + 16;
    v81 = (v17 + 32);
    v75 = v96 + 7;
    v74 = v97 + 8;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v38 = 0;
    v82 = v31;
    v89 = v34;
    v73 = v25;
    while (1)
    {
      if ((v34 & 0x8000000000000000) != 0)
      {
        if (sub_1BF17B48C())
        {
          sub_1BF17B82C();
          swift_unknownObjectRelease();
          sub_1BF17B82C();
          swift_unknownObjectRelease();
          v43 = v90;
          v51 = *(v90 + 48);
          v42 = v91;
          (*v98)();
          *(v42 + v51) = v100[0];
          v52 = v42;
          v53 = 0;
        }

        else
        {
          v43 = v90;
          v42 = v91;
          v52 = v91;
          v53 = 1;
        }

        __swift_storeEnumTagSinglePayload(v52, v53, 1, v43);
        v41 = v38;
        v96 = v33;
      }

      else
      {
        v39 = v33;
        v40 = v38;
        if (!v33)
        {
          v41 = v38;
          v43 = v90;
          v42 = v91;
          while (1)
          {
            v40 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              break;
            }

            if (v40 >= v83)
            {
              __swift_storeEnumTagSinglePayload(v91, 1, 1, v90);
              v96 = 0;
              goto LABEL_24;
            }

            v39 = *(v31 + 8 * v40);
            ++v41;
            if (v39)
            {
              v34 = v89;
              goto LABEL_18;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

LABEL_18:
        v96 = (v39 - 1) & v39;
        v44 = __clz(__rbit64(v39)) | (v40 << 6);
        v45 = v97;
        v46 = v99;
        (*(v97 + 16))(v99, *(v34 + 48) + *(v97 + 72) * v44, v26);
        v47 = *(*(v34 + 56) + 8 * v44);
        v48 = *(v90 + 48);
        v49 = *(v45 + 32);
        v42 = v91;
        v50 = v46;
        v43 = v90;
        v49(v91, v50, v26);
        *(v42 + v48) = v47;
        __swift_storeEnumTagSinglePayload(v42, 0, 1, v43);

        v41 = v40;
      }

LABEL_24:
      v54 = v86;
      (*v81)(v86, v42, v87);
      if (__swift_getEnumTagSinglePayload(v54, 1, v43) == 1)
      {
        break;
      }

      v95 = *(v54 + *(v43 + 48));
      v55 = v95;
      v56 = v97;
      v93 = *(v97 + 32);
      v57 = v99;
      v58 = v93(v99, v54, v26);
      MEMORY[0x1EEE9AC00](v58);
      v59 = v77;
      v71[-4] = v26;
      v71[-3] = v59;
      v71[-2] = v55;
      v60 = v76;
      v94 = firstly<A>(closure:)(sub_1BF0F1538);
      v61 = v84;
      (*(v56 + 16))(v84, v57, v26);
      v62 = (*(v56 + 80) + 64) & ~*(v56 + 80);
      v63 = (v75 + v62) & 0xFFFFFFFFFFFFFFF8;
      v64 = swift_allocObject();
      v64[2] = v60;
      v64[3] = v26;
      v64[4] = v59;
      v65 = v88;
      v66 = v80;
      v67 = v78;
      v64[5] = v80;
      v64[6] = v67;
      v64[7] = v79;
      v68 = v64 + v62;
      v25 = v73;
      (v93)(v68, v61);
      *(v64 + v63) = v65;
      *(v64 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8)) = v25;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

      Promise.then<A>(on:closure:)();

      v69 = swift_allocObject();
      v69[2] = v66;
      v69[3] = v67;
      v69[4] = v25;

      sub_1BEFF77FC();

      (*(v97 + 8))(v99, v26);
      v38 = v41;
      v33 = v96;
      v31 = v82;
      v34 = v89;
    }

    sub_1BF003FE8();
    OUTLINED_FUNCTION_2_41();
    if (!*(v25 + 16))
    {
      goto LABEL_31;
    }

    v70 = *(v25 + 16);

    goto LABEL_28;
  }

  swift_getTupleTypeMetadata2();
  sub_1BF17A56C();
  v100[0] = sub_1BF179DAC();
  DeferredPromise.resolve(_:)();

  OUTLINED_FUNCTION_2_41();
  if (*(v25 + 16))
  {
    v27 = *(v25 + 16);

LABEL_28:

    OUTLINED_FUNCTION_26_2();
    return;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_1BF0F1188(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v27 = a5;
  v9 = *(*a6 + 80);
  v10 = v9[3];
  v11 = sub_1BF17AE6C();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v25 - v14;
  v16 = v9[2];
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v20 = &v25 - v19;
  result = swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    (*(v17 + 16))(v20, a3, v16);
    (*(*(v10 - 8) + 16))(v15, v26, v10);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v10);
    swift_beginAccess();
    sub_1BF179EBC();
    swift_endAccess();
    swift_beginAccess();
    v22 = *a2;
    v23 = v9[4];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v24 = sub_1BF179DFC();

    type metadata accessor for Promise();
    result = sub_1BF179DFC();
    if (v24 == result)
    {
      swift_beginAccess();
      *a1 = 1;
      swift_beginAccess();
      v28 = *a2;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      DeferredPromise.resolve(_:)();
    }
  }

  return result;
}

void sub_1BF0F1460()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_1BF0F07BC();
}

void sub_1BF0F1470()
{
  v1 = (*(*(v0[3] - 8) + 64) + ((*(*(v0[3] - 8) + 80) + 64) & ~*(*(v0[3] - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = *(v0 + v1);
  v6 = *(v0 + ((v1 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_1BF0F1128();
}

void sub_1BF0F1500()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1BF0F1410();
}

uint64_t sub_1BF0F150C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1BF0F0810(*(v0 + 16));
}

uint64_t sub_1BF0F1528()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  return sub_1BF0F0810(*(v0 + 32));
}

uint64_t Diffable.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 16) + 8))(a2);
  sub_1BF179F3C();
}

unint64_t JSON.subscript.getter@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(*a1 + 16);
  result = sub_1BF01716C(*v2);
  v8 = (v4 + 40);
  v9 = 1;
  if (v6)
  {
    while (1)
    {
      v10 = *(v4 + 16);
      if (v9 - 1 >= v10)
      {
        break;
      }

      v11 = *(v8 - 1);
      if (v5 >> 61)
      {
        if (v5 >> 61 != 1)
        {
          if (v6 == 1)
          {
            goto LABEL_21;
          }

          result = sub_1BF017214(v5);
          if (v9 >= v10)
          {
            __break(1u);
LABEL_17:

            sub_1BF017214(v5);
LABEL_19:
            result = sub_1BF017214(v5);
          }

          v5 = 0xF000000000000007;
          goto LABEL_21;
        }

        v12 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v23 = *(v8 - 1);
        v24 = *v8;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF01716C(v5);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v13 = JSONPointer.Component.index.getter();
        if (v14)
        {
          sub_1BF017214(v5);

          goto LABEL_19;
        }

        v15 = v13;

        if (v15 < 0 || v15 >= *(v12 + 16))
        {
          goto LABEL_17;
        }

        v16 = (v12 + 8 * v15 + 32);
      }

      else
      {
        v17 = *(v5 + 16);
        if (!*(v17 + 16))
        {
          goto LABEL_19;
        }

        v18 = *v8;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF01716C(v5);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v19 = sub_1BF014CA8();
        v21 = v20;

        if ((v21 & 1) == 0)
        {
          goto LABEL_17;
        }

        v16 = (*(v17 + 56) + 8 * v19);
      }

      v22 = *v16;
      sub_1BF01716C(*v16);
      sub_1BF017214(v5);

      result = sub_1BF017214(v5);
      --v6;
      ++v9;
      v8 += 2;
      v5 = v22;
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    *a2 = v5;
  }

  return result;
}

uint64_t Synchronizer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = dispatch_group_create();
  return v0;
}

uint64_t Synchronizer.synchronize(on:closure:)(void *a1, void (*a2)(void))
{
  v3 = v2;
  sub_1BF00361C(0, &qword_1ED8ED8C0, type metadata accessor for Promise);
  v6 = swift_allocObject();
  v17 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();

  v7 = a1;
  v8 = UnfairLock.init(options:)(&v17);
  sub_1BF00361C(0, &qword_1ED8ED8D0, type metadata accessor for Seal);
  swift_allocObject();
  *(v6 + 16) = sub_1BF034CD4(v8);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BF0357A4;
  *(v9 + 24) = v6;
  v10 = *(v3 + 16);
  swift_retain_n();
  dispatch_group_enter(v10);
  a2();
  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = v7;
  v11[4] = sub_1BF0004A8;
  v11[5] = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1BF0F1DC4;
  *(v12 + 24) = v11;
  v13 = qword_1ED8F0210;

  v14 = v7;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = off_1ED8F0218;
  sub_1BEFFFDC4();

  sub_1BF08C66C(v15, sub_1BF0F1E00, v3);

  return v6;
}

uint64_t sub_1BF0F1A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[0] = a2;
  v7 = sub_1BF179B5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BF179BBC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  aBlock[4] = sub_1BF006170;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF0058CC;
  aBlock[3] = &block_descriptor_11;
  v19 = _Block_copy(aBlock);

  sub_1BF179B8C();
  v21[1] = MEMORY[0x1E69E7CC0];
  sub_1BEFF7458(&unk_1ED8EFBF0, MEMORY[0x1E69E7F60]);
  sub_1BF027D54(0);
  sub_1BEFF7458(&qword_1ED8EFBD0, sub_1BF027D54);
  sub_1BF17B0BC();
  sub_1BF17ACFC();
  _Block_release(v19);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

uint64_t Synchronizer.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BF0F1DD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation20ReferenceCodingErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1BF0F1E88(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
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

uint64_t sub_1BF0F1EC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1BF0F1F10(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

void __swiftcall NSURL.appendQueryItem(with:value:)(NSURL_optional *__return_ptr retstr, Swift::String with, Swift::String value)
{
  v60 = value;
  v59 = with;
  v3 = sub_1BF178F0C();
  v4 = OUTLINED_FUNCTION_1(v3);
  v58 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF015010(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v54 - v11;
  v13 = sub_1BF178E2C();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v14);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v54 - v22;
  v24 = sub_1BF17923C();
  v25 = OUTLINED_FUNCTION_1(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v31 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF015010(0, &qword_1ED8EE420, MEMORY[0x1E69681B8]);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v54 - v34;
  sub_1BF1791BC();
  sub_1BF178E7C();
  v36 = *(v27 + 8);
  v61 = v24;
  v55 = v36;
  v56 = v27 + 8;
  v36(v31, v24);
  if (OUTLINED_FUNCTION_2_42() || (v38 = sub_1BF178E5C()) == 0)
  {

    v37 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v37 = v38;
  }

  sub_1BF178DFC();
  (*(v16 + 16))(v21, v23, v13);
  v39 = v12;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BF0A6AF8(0, *(v37 + 16) + 1, 1, v37);
    v37 = v52;
  }

  v41 = *(v37 + 16);
  v40 = *(v37 + 24);
  if (v41 >= v40 >> 1)
  {
    sub_1BF0A6AF8(v40 > 1, v41 + 1, 1, v37);
    v37 = v53;
  }

  *(v37 + 16) = v41 + 1;
  (*(v16 + 32))(v37 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v41, v21, v13);
  if (OUTLINED_FUNCTION_2_42())
  {
  }

  else
  {
    sub_1BF178E6C();
  }

  v42 = v39;
  v43 = v61;
  if (OUTLINED_FUNCTION_2_42())
  {
    v44 = OUTLINED_FUNCTION_1_49();
    v45(v44);
    __swift_storeEnumTagSinglePayload(v39, 1, 1, v43);
  }

  else
  {
    v46 = v57;
    v47 = v58;
    (*(v58 + 16))(v57, v35, v3);
    sub_1BF178E8C();
    (*(v47 + 8))(v46, v3);
    if (__swift_getEnumTagSinglePayload(v42, 1, v43) == 1)
    {
      v48 = OUTLINED_FUNCTION_1_49();
      v49(v48);
    }

    else
    {
      sub_1BF17916C();
      v50 = OUTLINED_FUNCTION_1_49();
      v51(v50);
      v55(v42, v43);
    }
  }

  sub_1BF01F8EC(v35);
}

uint64_t sub_1BF0F2410(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BF17B86C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473694C6C7275 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF17B86C();

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

uint64_t sub_1BF0F24D8(char a1)
{
  if (a1)
  {
    return 0x7473694C6C7275;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1BF0F2508(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a4;
  sub_1BF0F2760();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF0F27BC();
  sub_1BF17BC1C();
  v16 = 0;
  sub_1BF17B66C();
  if (!v4)
  {
    v14[1] = v14[0];
    v15 = 1;
    sub_1BF096DCC(0);
    sub_1BF0F2810();
    sub_1BF17B69C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1BF0F26A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF0F2410(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF0F26C8(uint64_t a1)
{
  v2 = sub_1BF0F27BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF0F2704(uint64_t a1)
{
  v2 = sub_1BF0F27BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1BF0F2760()
{
  if (!qword_1ED8E9B68)
  {
    sub_1BF0F27BC();
    v0 = sub_1BF17B6CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9B68);
    }
  }
}

unint64_t sub_1BF0F27BC()
{
  result = qword_1ED8EA9E0[0];
  if (!qword_1ED8EA9E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EA9E0);
  }

  return result;
}

unint64_t sub_1BF0F2810()
{
  result = qword_1ED8E9C60;
  if (!qword_1ED8E9C60)
  {
    sub_1BF096DCC(255);
    sub_1BF0F2888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E9C60);
  }

  return result;
}

unint64_t sub_1BF0F2888()
{
  result = qword_1ED8EACF0;
  if (!qword_1ED8EACF0)
  {
    sub_1BF17923C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EACF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AuthTokenRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF0F29C0()
{
  result = qword_1EBDCC088;
  if (!qword_1EBDCC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC088);
  }

  return result;
}

unint64_t sub_1BF0F2A18()
{
  result = qword_1ED8EA9D0;
  if (!qword_1ED8EA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA9D0);
  }

  return result;
}

unint64_t sub_1BF0F2A70()
{
  result = qword_1ED8EA9D8;
  if (!qword_1ED8EA9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EA9D8);
  }

  return result;
}

uint64_t Cache.__allocating_init(_:)()
{
  OUTLINED_FUNCTION_0_1();
  v0 = swift_allocObject();
  Cache.init(_:)();
  return v0;
}

void Cache.init(_:)()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  OUTLINED_FUNCTION_5_27();
  v75 = *(v3 + 88);
  v4 = type metadata accessor for CacheEntry();
  v5 = OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_68(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_30();
  v64 = v9;
  OUTLINED_FUNCTION_2_3();
  v61 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6_30();
  v74 = v14;
  OUTLINED_FUNCTION_2_43();
  v73 = *(v15 + 80);
  OUTLINED_FUNCTION_2_3();
  v60 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6_30();
  v72 = v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v68 = sub_1BF17AE6C();
  v22 = OUTLINED_FUNCTION_1(v68);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_1();
  v70 = v27 - v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_10_21();
  v69 = v30;
  OUTLINED_FUNCTION_2_43();
  v65 = v4;
  v63 = *(v31 + 96);
  *(v0 + 16) = sub_1BF179CEC();
  v77 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v0 + 24) = UnfairLock.init(options:)(&v77);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v32 = sub_1BF17B47C();
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v2 = v32 | 0x8000000000000000;
  }

  else
  {
    v36 = -1 << *(v2 + 32);
    v37 = *(v2 + 64);
    OUTLINED_FUNCTION_18_0();
    v35 = v38 & v39;
  }

  v40 = 0;
  v41 = (v60 + 32);
  v42 = (v61 + 32);
  v43 = (v34 + 64) >> 6;
  v66 = (v24 + 32);
  v67 = v33;
  v62 = v2;
  v71 = TupleTypeMetadata2;
  while ((v2 & 0x8000000000000000) != 0)
  {
    if (!sub_1BF17B48C())
    {
      v54 = 1;
      v59 = v35;
      v46 = v40;
      v76 = v59;
      v47 = v70;
      TupleTypeMetadata2 = v71;
      goto LABEL_15;
    }

    sub_1BF17B82C();
    swift_unknownObjectRelease();
    v50 = v74;
    v51 = v75;
    sub_1BF17B82C();
    swift_unknownObjectRelease();
    v45 = v40;
    v41 = (v60 + 32);
    v76 = v35;
    TupleTypeMetadata2 = v71;
LABEL_14:
    v53 = *(TupleTypeMetadata2 + 48);
    v47 = v70;
    (*v41)();
    (*v42)(v70 + v53, v50, v51);
    v54 = 0;
    v46 = v45;
    v2 = v62;
LABEL_15:
    v48 = v69;
LABEL_16:
    __swift_storeEnumTagSinglePayload(v47, v54, 1, TupleTypeMetadata2);
    (*v66)(v48, v47, v68);
    if (__swift_getEnumTagSinglePayload(v48, 1, TupleTypeMetadata2) == 1)
    {
      sub_1BF003FE8();
      OUTLINED_FUNCTION_26_2();
      return;
    }

    v55 = *(TupleTypeMetadata2 + 48);
    (*v41)(v72, v48, v73);
    (*v42)(v74, v48 + v55, v75);
    sub_1BF01BEC4(v74, v75, v64);
    OUTLINED_FUNCTION_127();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v65);
    OUTLINED_FUNCTION_7_2();
    sub_1BF179E9C();
    TupleTypeMetadata2 = v71;
    sub_1BF179EBC();
    swift_endAccess();
    v40 = v46;
    v35 = v76;
    v33 = v67;
  }

  v44 = v35;
  v45 = v40;
  if (v35)
  {
LABEL_11:
    OUTLINED_FUNCTION_22_9(v44);
    OUTLINED_FUNCTION_29_8(*(v2 + 48));
    v49(v72);
    OUTLINED_FUNCTION_29_8(*(v2 + 56));
    v50 = v74;
    v51 = v75;
    v52(v74);
    goto LABEL_14;
  }

  v46 = v40;
  v48 = v69;
  v47 = v70;
  while (1)
  {
    v45 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v45 >= v43)
    {
      v76 = 0;
      v54 = 1;
      goto LABEL_16;
    }

    v44 = *(v33 + 8 * v45);
    ++v46;
    if (v44)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1BF0F30BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + a4 - 24);
  v7 = *(a3 + a4 - 16);
  v9 = sub_1BF17AE6C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v19 - v13;
  v15 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  (*(v17 + 16))(&v19 - v16, a3, v8);
  (*(v10 + 16))(v14, a1, v9);
  v18 = *a2;
  Cache.subscript.setter();
}

void (*Cache.subscript.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  v6 = sub_1BF17AE6C();
  v3[1] = v6;
  v7 = *(v6 - 8);
  v3[2] = v7;
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v3[4] = __swift_coroFrameAllocStub(v8);
  v3[5] = *(v4 + 80);
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  v3[6] = v9;
  v12 = *(v11 + 64);
  v3[7] = __swift_coroFrameAllocStub(v12);
  v3[8] = __swift_coroFrameAllocStub(v12);
  (*(v10 + 16))();
  Cache.subscript.getter();
  return sub_1BF0F33C0;
}

void sub_1BF0F33C0()
{
  OUTLINED_FUNCTION_32();
  v1 = *v0;
  v2 = (*v0)[7];
  v3 = (*v0)[8];
  if (v4)
  {
    v5 = v1[5];
    v6 = v1[6];
    v8 = v1[3];
    v7 = v1[4];
    v9 = v1[1];
    v10 = v1[2];
    v11 = *v1;
    (*(v10 + 16))(v8, v7, v9);
    (*(v6 + 32))(v2, v3, v5);
    Cache.subscript.setter();
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v1[3];
    v7 = v1[4];
    v12 = *v1;
    OUTLINED_FUNCTION_17_2();
    Cache.subscript.setter();
  }

  free(v3);
  free(v2);
  free(v7);
  free(v8);
  OUTLINED_FUNCTION_26_2();

  free(v13);
}

void Cache.subscript.getter(double a1)
{
  OUTLINED_FUNCTION_5_27();
  v7 = *(v6 + 88);
  v8 = OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_68(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6_30();
  v64 = v12;
  v13 = type metadata accessor for CacheEntry();
  v70 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1(v70);
  v67 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_2_3();
  v71 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - v22;
  v24 = *(v1 + 80);
  OUTLINED_FUNCTION_2_3();
  v26 = v25;
  v28 = *(v27 + 64);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v63 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13();
  v61 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_10_21();
  v65 = v34;
  OUTLINED_FUNCTION_2_43();
  v36 = *(v35 + 96);
  v66 = v7;
  v76 = v36;
  v79 = sub_1BF179CEC();
  v74 = v2;
  v37 = *(v2 + 24);
  UnfairLock.lock()();
  if (a1 < 0.0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    v73 = v4;
    OUTLINED_FUNCTION_8_25();
    v38 = sub_1BF17A4EC();
    v78 = v38;
    OUTLINED_FUNCTION_8_25();
    if (v38 != sub_1BF17A5AC())
    {
      v60 = v37;
      v75 = (v26 + 16);
      v68 = (v71 + 1);
      v69 = (v71 + 4);
      v71 = (v26 + 8);
      v72 = (v26 + 32);
      v62 = v66 - 8;
      ++v67;
      v39 = v65;
      do
      {
        v40 = v23;
        OUTLINED_FUNCTION_8_25();
        v41 = sub_1BF17A58C();
        sub_1BF17A51C();
        if (v41)
        {
          OUTLINED_FUNCTION_21_9();
          v44 = *(v26 + 16);
          v44(v39, (v42 + v43 * v38), v24);
        }

        else
        {
          OUTLINED_FUNCTION_28_8();
          v58 = sub_1BF17B23C();
          if (v61 != 8)
          {
            goto LABEL_20;
          }

          v77[0] = v58;
          v44 = *v75;
          (*v75)(v39, v77, v24);
          swift_unknownObjectRelease();
        }

        v45 = v73;
        OUTLINED_FUNCTION_28_8();
        sub_1BF17A62C();
        v46 = *v72;
        v47 = OUTLINED_FUNCTION_17_2();
        v48(v47);
        OUTLINED_FUNCTION_10_9();
        OUTLINED_FUNCTION_19_11();
        sub_1BF179EAC();
        if (__swift_getEnumTagSinglePayload(v45, 1, v13) == 1)
        {
          (*v67)(v45, v70);
          swift_endAccess();
        }

        else
        {
          v49 = *v69;
          OUTLINED_FUNCTION_17_11();
          v50();
          swift_endAccess();
          v51 = sub_1BF0183E0(v13);
          if (v51 >= -a1 && v51 <= a1)
          {
            v44(v63, v3, v24);
            v53 = v66;
            (*(*(v66 - 8) + 16))(v64, v40, v66);
            OUTLINED_FUNCTION_127();
            __swift_storeEnumTagSinglePayload(v54, v55, v56, v53);
            OUTLINED_FUNCTION_25_9();
            sub_1BF179E9C();
            v39 = v65;
            sub_1BF179EBC();
          }

          (*v68)(v40, v13);
        }

        v23 = v40;
        (*v71)(v3, v24);
        OUTLINED_FUNCTION_8_25();
        v57 = sub_1BF17A5AC();
        v38 = v78;
      }

      while (v78 != v57);
      v37 = v60;
    }

    os_unfair_lock_unlock(*(v37 + 16));
  }
}

uint64_t Cache.read(_:maxAge:)(double a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_0();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_0();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_0();
  v9 = *(v8 + 96);
  sub_1BF179E9C();
  OUTLINED_FUNCTION_12_1();
  type metadata accessor for Promise();
  Cache.subscript.getter(a1);
  return Promise.__allocating_init(value:)();
}

uint64_t Cache.write(values:)()
{
  v1 = *v0;
  static Cache.+= infix(_:_:)();
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  sub_1BF179E9C();
  OUTLINED_FUNCTION_12_1();
  type metadata accessor for Promise();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return Promise.__allocating_init(value:)();
}

Swift::Void __swiftcall Cache.removeAll()()
{
  v1 = *v0;
  v2 = v0[3];
  UnfairLock.lock()();
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_0_35();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_0_35();
  v6 = *(v5 + 88);
  type metadata accessor for CacheEntry();
  OUTLINED_FUNCTION_0_35();
  v8 = *(v7 + 96);
  sub_1BEFF4CFC();
  sub_1BF179E9C();
  sub_1BF179E8C();
  swift_endAccess();
  os_unfair_lock_unlock(*(v2 + 16));
}

uint64_t Cache<>.deleteAsync(_:)()
{
  v1 = *(v0 + 24);
  sub_1BF000444(sub_1BF0F3DE0);
  sub_1BF0F3DE8();
  swift_allocObject();
  v2 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return sub_1BF0AAF14(v2);
}

uint64_t sub_1BF0F3CBC(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 88);
  type metadata accessor for CacheEntry();
  -= infix<A, B>(_:_:)();
  return swift_endAccess();
}

void sub_1BF0F3DE8()
{
  if (!qword_1EBDCBE98)
  {
    sub_1BF02027C();
    v0 = type metadata accessor for Promise();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBDCBE98);
    }
  }
}

uint64_t URLSessionPool.__allocating_init(size:configuration:delegate:delegateQueue:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  URLSessionPool.init(size:configuration:delegate:delegateQueue:)(a1, a2, a3, a4);
  return v8;
}

uint64_t URLSessionPool.init(size:configuration:delegate:delegateQueue:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  *(v4 + 24) = 0;
  v15 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init(options:)(&v15);
  *(v4 + 32) = result;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v15 = MEMORY[0x1E69E7CC0];
      sub_1BF17B35C();
      sub_1BF0F41D4();
      do
      {
        v11 = a2;
        swift_unknownObjectRetain();
        v12 = a4;
        sub_1BF0F4048(v11, a3, a4);
        sub_1BF17B32C();
        v13 = *(v15 + 16);
        sub_1BF17B36C();
        sub_1BF17B37C();
        sub_1BF17B33C();
        --a1;
      }

      while (a1);

      swift_unknownObjectRelease();
      v5 = v4;
      v14 = v15;
    }

    else
    {

      swift_unknownObjectRelease();
      v14 = MEMORY[0x1E69E7CC0];
    }

    *(v5 + 16) = v14;
    return v5;
  }

  return result;
}

id sub_1BF0F4048(void *a1, uint64_t a2, void *a3)
{
  v5 = [swift_getObjCClassFromMetadata() sessionWithConfiguration:a1 delegate:a2 delegateQueue:a3];

  swift_unknownObjectRelease();
  return v5;
}

NSURLSession __swiftcall URLSessionPool.nextSession()()
{
  v1 = v0;
  v2 = *(v0 + 32);
  UnfairLock.lock()();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1BF0F4268(v4, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    result.super.isa = MEMORY[0x1BFB53020](v4, v3);
  }

  else
  {
    result.super.isa = *(v3 + 8 * v4 + 32);
  }

  isa = result.super.isa;
  v7 = *(v1 + 24);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  result.super.isa = sub_1BEFE90B4(v3);
  if (!result.super.isa)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v8 != 0x8000000000000000 || result.super.isa != -1)
  {
    *(v1 + 24) = v8 % result.super.isa;
    os_unfair_lock_unlock(*(v2 + 16));
    return isa;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t URLSessionPool.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t URLSessionPool.__deallocating_deinit()
{
  URLSessionPool.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

unint64_t sub_1BF0F41D4()
{
  result = qword_1ED8EDD30;
  if (!qword_1ED8EDD30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8EDD30);
  }

  return result;
}

unint64_t sub_1BF0F4268(unint64_t result, char a2, uint64_t a3)
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

uint64_t URLHandlerContext.init(match:clientContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1BF0D3CEC(a1, a4);
  v7 = type metadata accessor for URLHandlerContext();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 28);

  return v8(v9, a2, a3);
}

uint64_t sub_1BF0F4374(uint64_t a1)
{
  result = type metadata accessor for URLHandlerMatch();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF0F43FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1BF17923C();
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(*(v6 - 8) + 64);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (!a2)
  {
    return 0;
  }

  v16 = ((((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + v14 + 8;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v17 = (v16 & ~v14) + v15;
  v18 = 8 * v17;
  if (v17 > 3)
  {
    goto LABEL_10;
  }

  v21 = ((a2 - v12 + ~(-1 << v18)) >> v18) + 1;
  if (HIWORD(v21))
  {
    v19 = *(a1 + v17);
    if (v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v21 <= 0xFF)
    {
      if (v21 < 2)
      {
        goto LABEL_28;
      }

LABEL_10:
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_28;
      }

LABEL_18:
      v22 = (v19 - 1) << v18;
      if (v17 > 3)
      {
        v22 = 0;
      }

      if (v17)
      {
        if (v17 <= 3)
        {
          v23 = v17;
        }

        else
        {
          v23 = 4;
        }

        switch(v23)
        {
          case 2:
            v24 = *a1;
            break;
          case 3:
            v24 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v24 = *a1;
            break;
          default:
            v24 = *a1;
            break;
        }
      }

      else
      {
        v24 = 0;
      }

      return v12 + (v24 | v22) + 1;
    }

    v19 = *(a1 + v17);
    if (*(a1 + v17))
    {
      goto LABEL_18;
    }
  }

LABEL_28:
  if (v8 < v11)
  {
    v25 = (a1 + v16) & ~v14;
    v7 = v11;
LABEL_32:

    return __swift_getEnumTagSinglePayload(v25, v7, v9);
  }

  if (v7 >= 0x7FFFFFFF)
  {
    v25 = a1;
    v9 = v6;
    goto LABEL_32;
  }

  v26 = *(((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v26 >= 0xFFFFFFFF)
  {
    LODWORD(v26) = -1;
  }

  return (v26 + 1);
}

void sub_1BF0F4660(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1BF17923C();
  v9 = *(*(v8 - 8) + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(*(v8 - 8) + 84);
  }

  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(*(v8 - 8) + 64);
  v16 = ((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = *(v12 + 80);
  v18 = ((v16 + v17) & ~v17) + *(v12 + 64);
  v19 = 8 * v18;
  if (a3 <= v14)
  {
    v20 = 0;
  }

  else if (v18 <= 3)
  {
    v23 = ((a3 - v14 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v14 < a2)
  {
    v21 = ~v14 + a2;
    if (v18 < 4)
    {
      v22 = (v21 >> v19) + 1;
      if (v18)
      {
        v25 = v21 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else if (v18 == 2)
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v21;
      v22 = 1;
    }

    switch(v20)
    {
      case 1:
        a1[v18] = v22;
        break;
      case 2:
        *&a1[v18] = v22;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *&a1[v18] = v22;
        break;
      default:
        return;
    }

    return;
  }

  switch(v20)
  {
    case 1:
      a1[v18] = 0;
      if (a2)
      {
        goto LABEL_30;
      }

      return;
    case 2:
      *&a1[v18] = 0;
      if (a2)
      {
        goto LABEL_30;
      }

      return;
    case 3:
LABEL_53:
      __break(1u);
      return;
    case 4:
      *&a1[v18] = 0;
      goto LABEL_29;
    default:
LABEL_29:
      if (!a2)
      {
        return;
      }

LABEL_30:
      if (v10 < v13)
      {
        v26 = &a1[v16 + v17] & ~v17;
        v27 = a2;
        v9 = v13;
LABEL_32:

        __swift_storeEnumTagSinglePayload(v26, v27, v9, v11);
        return;
      }

      if (v10 >= a2)
      {
        if (v9 < 0x7FFFFFFF)
        {
          v29 = &a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            *(v29 + 72) = 0;
            *(v29 + 56) = 0u;
            *(v29 + 40) = 0u;
            *(v29 + 24) = 0u;
            *(v29 + 8) = 0u;
            *v29 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(v29 + 8) = (a2 - 1);
          }

          return;
        }

        v26 = a1;
        v27 = a2;
        v11 = v8;
        goto LABEL_32;
      }

      if (((((v15 + 7) & 0xFFFFFFF8) + 87) & 0xFFFFFFF8) != 0xFFFFFFF8)
      {
        v28 = ~v10 + a2;
        bzero(a1, v16);
        *a1 = v28;
      }

      return;
  }
}

uint64_t SignpostReporter.init(createdDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for SignpostReporter() + 28);
  type metadata accessor for SignpostEntry();
  *(a2 + v4) = sub_1BF179CFC();
  v5 = sub_1BF1794AC();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2, a1, v5);
}

uint64_t SignpostReporter.create(date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1BF1794AC();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_1();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v22 - v17;
  v19 = *(v10 + 16);
  v19(&v22 - v17, v3, v7);
  v19(v15, a1, v7);
  v20 = *(a2 + 16);
  sub_1BF17533C(v18, v15, *(v3 + *(a2 + 28)), a3);
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t SignpostReporter.add(_:object:date:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a5;
  v53 = a6;
  v54 = a3;
  v55 = a4;
  v51 = a2;
  v52 = sub_1BF1794AC();
  v8 = OUTLINED_FUNCTION_1(v52);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_1();
  v50 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v18 = *(a6 + 16);
  v19 = sub_1BF17AE6C();
  v20 = OUTLINED_FUNCTION_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v26 = &v48 - v25;
  v27 = type metadata accessor for SignpostEntry();
  v28 = OUTLINED_FUNCTION_1(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_1();
  v49 = v33 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v48 - v36;
  (*(v22 + 16))(v26, v51, v19);
  v38 = type metadata accessor for SignpostRecorder();
  v39 = a1;
  v40 = *(a1 + *(v38 + 28));
  v41 = *(v10 + 16);
  v42 = v17;
  v43 = v17;
  v44 = v52;
  v41(v43, v39, v52);
  v45 = v50;
  v41(v50, v54, v44);
  sub_1BF0D59D0(v26, v40, v42, v45, v55, v56, v37);
  (*(v30 + 16))(v49, v37, v27);
  v46 = *(v53 + 28);
  sub_1BF17A65C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF17A5DC();
  return (*(v30 + 8))(v37, v27);
}

uint64_t sub_1BF0F4E5C(uint64_t a1)
{
  result = sub_1BF1794AC();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    type metadata accessor for SignpostEntry();
    result = sub_1BF17A65C();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void BridgedContainer.init(bundleAssemblies:assemblies:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1BEFE90AC(a1);
  v4 = 0;
  v5 = (a1 & 0xC000000000000001);
  v45 = MEMORY[0x1E69E7CC0];
  v6 = &unk_1ED8EEC70;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v3 == v4)
    {

      v21 = sub_1BEFE90AC(a2);
      v22 = 0;
      v23 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v21 == v22)
        {

          type metadata accessor for SingletonPool();
          *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC8];
          LOBYTE(v54) = 3;
          v37 = type metadata accessor for Container(0);
          v38 = *(v37 + 48);
          v39 = *(v37 + 52);
          swift_allocObject();
          *&v43[OBJC_IVAR___TFContainer_container] = Container.init(bundleAssemblies:assemblies:singletonPool:environment:)();

          Container.resolver.getter(&v54);

          v40 = v55;
          v41 = v56;
          __swift_project_boxed_opaque_existential_1(&v54, v55);
          *&v43[OBJC_IVAR___TFContainer_resolver] = (*(v41 + 72))(v40, v41);
          __swift_destroy_boxed_opaque_existential_1(&v54);
          v46.receiver = v43;
          v46.super_class = ObjectType;
          objc_msgSendSuper2(&v46, sel_init);
          return;
        }

        if ((a2 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1BFB53020](v22, a2);
        }

        else
        {
          if (v22 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v24 = *(a2 + 8 * v22 + 32);
          swift_unknownObjectRetain();
        }

        if (__OFADD__(v22, 1))
        {
          goto LABEL_40;
        }

        v50 = v24;
        sub_1BEFE6EA8(0, qword_1ED8EF7D0);
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          swift_unknownObjectRelease();
          sub_1BEFE87B0(v49, &v54);
          sub_1BEFE87B0(&v54, &v51);
        }

        else
        {
          OUTLINED_FUNCTION_2_44();
          sub_1BF008DD0(v25, &qword_1EBDCC0C0, qword_1ED8EF7D0);
          v47 = &unk_1F3DD4CF8;
          v26 = swift_dynamicCastObjCProtocolConditional();
          if (!v26)
          {
            swift_unknownObjectRelease();
            OUTLINED_FUNCTION_1_50();
            sub_1BF008DD0(v32, v33, qword_1ED8EF7D0);
            goto LABEL_34;
          }

          v27 = v26;
          v28 = type metadata accessor for BridgedAssembly();
          v29 = swift_allocObject();
          *(v29 + 16) = v27;
          v52 = v28;
          v53 = &protocol witness table for BridgedAssembly;
          *&v51 = v29;
        }

        sub_1BEFE87B0(&v51, &v54);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = *(v23 + 16);
          sub_1BF0A6B38();
          v23 = v35;
        }

        v31 = *(v23 + 16);
        v30 = *(v23 + 24);
        if (v31 >= v30 >> 1)
        {
          OUTLINED_FUNCTION_3_32(v30);
          sub_1BF0A6B38();
          v23 = v36;
        }

        *(v23 + 16) = v31 + 1;
        sub_1BEFE87B0(&v54, v23 + 40 * v31 + 32);
LABEL_34:
        ++v22;
      }
    }

    if (v5)
    {
      v8 = MEMORY[0x1BFB53020](v4, a1);
    }

    else
    {
      if (v4 >= *(v7 + 16))
      {
        goto LABEL_39;
      }

      v8 = *(a1 + 8 * v4 + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    v50 = v8;
    sub_1BEFE6EA8(0, v6);
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      sub_1BEFE87B0(v49, &v54);
      sub_1BEFE87B0(&v54, &v51);
    }

    else
    {
      a1 = v7;
      v7 = v3;
      v3 = v5;
      OUTLINED_FUNCTION_2_44();
      v5 = v6;
      v6 = &unk_1EBDCC0B0;
      sub_1BF008DD0(v9, &unk_1EBDCC0B0, v5);
      v48 = &unk_1F3DD4D58;
      v10 = swift_dynamicCastObjCProtocolConditional();
      if (!v10)
      {
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_1_50();
        sub_1BF008DD0(v16, v17, v5);
        OUTLINED_FUNCTION_0_61();
        goto LABEL_16;
      }

      v11 = v10;
      v12 = type metadata accessor for BridgedBundleAssembly();
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      v52 = v12;
      v53 = &protocol witness table for BridgedBundleAssembly;
      *&v51 = v13;
      OUTLINED_FUNCTION_0_61();
    }

    sub_1BEFE87B0(&v51, &v54);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = *(v45 + 16);
      sub_1BF0A6B54();
      v45 = v19;
    }

    v15 = *(v45 + 16);
    v14 = *(v45 + 24);
    if (v15 >= v14 >> 1)
    {
      OUTLINED_FUNCTION_3_32(v14);
      sub_1BF0A6B54();
      v45 = v20;
    }

    *(v45 + 16) = v15 + 1;
    sub_1BEFE87B0(&v54, v45 + 40 * v15 + 32);
LABEL_16:
    ++v4;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

id BridgedContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t NSAttributedString.init(_:arguments:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v5 = sub_1BEFE90AC(a2);
  if (v5 == 1)
  {
    if (sub_1BEFE90AC(a2))
    {
      sub_1BF0F428C(0, (a2 & 0xC000000000000001) == 0, a2);
      if ((a2 & 0xC000000000000001) != 0)
      {
LABEL_15:
        v6 = MEMORY[0x1BFB53020](0, a2);
      }

      else
      {
        v6 = *(a2 + 32);
      }

      v7 = v6;

      sub_1BEFF9AF8(0, &qword_1ED8ECBC0, 0x1E696AEC0);
      v8 = [v4 string];
      sub_1BF17A0AC();

      v9 = sub_1BF0C76A8();
      v10 = sub_1BF17A07C();
      v11 = [v9 rangeOfString_];
      v13 = v12;

      sub_1BF0F5980(v7, v11, v13, v4, a1);
      goto LABEL_8;
    }

LABEL_7:

LABEL_8:
    v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttributedString_];

    return v14;
  }

  if (v5 < 2)
  {
    goto LABEL_7;
  }

  result = sub_1BEFE90AC(a2);
  if ((result & 0x8000000000000000) == 0)
  {
    v16 = result;
    for (i = 0; v16 != i; ++i)
    {
      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      v18 = i;
      sub_1BF0F5AEC(&v18, v4, a1, a2);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1BF0F5980(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (sub_1BF178BCC() == a2)
  {
    sub_1BF17ACBC();
    sub_1BF071C70();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BF17DEF0;
    v11 = [a5 string];
    v12 = sub_1BF17A0AC();
    v14 = v13;

    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1BF071CD8();
    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    sub_1BEFF9AF8(0, &qword_1ED8EE9B0, 0x1E69E9BF8);
    v15 = sub_1BF17AE3C();
    sub_1BF1797CC();
  }

  else
  {

    [a4 replaceCharactersInRange:a2 withAttributedString:{a3, a1}];
  }
}

void sub_1BF0F5AEC(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *a1;
  v8 = sub_1BEFF9AF8(0, &qword_1ED8ECBC0, 0x1E696AEC0);
  v9 = [a2 string];
  v10 = sub_1BF17A0AC();

  v11 = sub_1BF0C76A8();
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  v12 = v11;
  v13 = sub_1BF17B6FC();
  MEMORY[0x1BFB52000](v13);

  MEMORY[0x1BFB52000](16420, 0xE200000000000000);
  v14 = sub_1BF17A07C();

  v8 = [v12 rangeOfString_];
  v10 = v15;

  sub_1BF0F428C(v7, (a4 & 0xC000000000000001) == 0, a4);
  if ((a4 & 0xC000000000000001) != 0)
  {
LABEL_6:
    v16 = MEMORY[0x1BFB53020](v7, a4);
    goto LABEL_4;
  }

  v16 = *(a4 + 8 * v7 + 32);
LABEL_4:
  v17 = v16;
  sub_1BF0F5980(v16, v8, v10, a2, a3);
}

id NSAttributedString.addingAttribute(_:value:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  [v5 addAttribute:a1 value:sub_1BF17B84C() range:{0, objc_msgSend(v2, sel_length)}];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t OperationID.string.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  return v1;
}

uint64_t sub_1BF0F5D70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a2 + 16);
  v4 = a3();
  v4();
}

uint64_t sub_1BF0F5DB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_1BF099C3C();
  v2();
}

void sub_1BF0F5DFC(void *a1, char a2, void (*a3)(id *), uint64_t a4, void (*a5)(void), uint64_t a6, void (*a7)(void *))
{
  if (a2)
  {
    v13 = a1;
    sub_1BF0F890C(a1, 1);
    v10 = a1;
    sub_1BEFE6EA8(0, &qword_1ED8EFD30);
    if (!swift_dynamicCast() || (v12 & 1) != 0)
    {

      a7(a1);
      sub_1BF0F8918(a1, 1);
    }

    else
    {
      sub_1BF0F8918(a1, 1);
      a5();
    }
  }

  else
  {
    v13 = a1;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    a3(&v13);
  }
}

uint64_t sub_1BF0F5F1C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_1ED8EF090);
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = sub_1BF0F88C8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_1BF009984(a1);
  sub_1BF16C65C(v7, v6);

  return sub_1BEFE52DC(a1);
}

__n128 AuthTokenService.__allocating_init(endpointUrl:networkProxy:requestSigner:eventHandler:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_45();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = a2[1];
  *(v8 + 24) = *a2;
  *(v8 + 40) = v9;
  *(v8 + 49) = *(a2 + 25);
  v10 = *(a3 + 16);
  *(v8 + 72) = *a3;
  *(v8 + 88) = v10;
  *(v8 + 104) = *(a3 + 32);
  result = *a4;
  v12 = *(a4 + 16);
  *(v8 + 112) = *a4;
  *(v8 + 128) = v12;
  *(v8 + 144) = *(a4 + 32);
  return result;
}

uint64_t AuthTokenService.init(endpointUrl:networkProxy:requestSigner:eventHandler:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v5 = a2[1];
  *(v4 + 24) = *a2;
  *(v4 + 40) = v5;
  *(v4 + 49) = *(a2 + 25);
  v6 = *(a3 + 16);
  *(v4 + 72) = *a3;
  *(v4 + 88) = v6;
  *(v4 + 104) = *(a3 + 32);
  v7 = *(a4 + 16);
  *(v4 + 112) = *a4;
  *(v4 + 128) = v7;
  *(v4 + 144) = *(a4 + 32);
  return v4;
}

double AuthTokenService.__allocating_init(endpointUrl:networkProxy:requestSigner:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_45();
  v6 = swift_allocObject();
  v7 = a2[1];
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 49) = *(a2 + 25);
  v8 = *(a3 + 16);
  *(v6 + 72) = *a3;
  *(v6 + 16) = a1;
  *(v6 + 88) = v8;
  *(v6 + 104) = *(a3 + 32);
  result = 0.0;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0;
  return result;
}

uint64_t AuthTokenService.fetchAuthTokens(for:tokenType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v82 = a3;
  v83 = a2;
  v6 = sub_1BF1794FC();
  v7 = OUTLINED_FUNCTION_1(v6);
  v79 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v77 = &v74[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BF015064(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v74[-v14];
  v16 = sub_1BF17923C();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17);
  v80 = &v74[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v74[-v24];
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1BF1797FC();
  v27 = __swift_project_value_buffer(v26, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v85 = v27;
  v28 = sub_1BF1797DC();
  v29 = sub_1BF17ACDC();

  v30 = os_log_type_enabled(v28, v29);
  v84 = a1;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v76 = v15;
    v32 = v31;
    v33 = swift_slowAlloc();
    v75 = v29;
    v34 = v33;
    v86[0] = v33;
    *v32 = 136446210;
    v35 = MEMORY[0x1BFB522D0](a1, v16);
    v81 = v4;
    v37 = v6;
    v38 = v25;
    v39 = v19;
    v40 = v16;
    v41 = sub_1BF01A7AC(v35, v36, v86);
    v4 = v81;

    *(v32 + 4) = v41;
    v16 = v40;
    v19 = v39;
    v25 = v38;
    v6 = v37;
    v15 = v76;
    _os_log_impl(&dword_1BEFE0000, v28, v75, "AuthTokenService will fetch auth tokens for URLs: %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_28();
  }

  v42 = *(v4 + 16);
  v43 = *(v42 + 24);
  (*(v42 + 16))();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1BF0F698C(v15);
    v44 = sub_1BF1797DC();
    v45 = sub_1BF17ACDC();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1BEFE0000, v44, v45, "AuthTokenService endpoint URL is nil; auth tokens cannot be fetched", v46, 2u);
      OUTLINED_FUNCTION_28();
    }

    sub_1BF0F6A18();
    swift_allocError();
    *v47 = 0x8000000000000000;
    sub_1BF0F6A6C();
    OUTLINED_FUNCTION_27();
    swift_allocObject();
    v48 = OUTLINED_FUNCTION_66();
    return sub_1BF0DAB28(v48);
  }

  else
  {
    v50 = *(v19 + 32);
    v50(v25, v15, v16);
    v51 = sub_1BF178D3C();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    _s13TeaFoundation16ReferenceEncoderCACycfc_0();
    v86[0] = v83;
    v86[1] = v82;
    v86[2] = v84;
    sub_1BF0F824C();
    v54 = sub_1BF178D0C();
    v56 = v55;

    v57 = v77;
    sub_1BF1794EC();
    v82 = sub_1BF1794BC();
    v76 = v58;
    (*(v79 + 8))(v57, v6);
    sub_1BF0F82A0();
    OUTLINED_FUNCTION_27();
    swift_allocObject();

    sub_1BF014DC0(v54, v56);
    v81 = v4;
    sub_1BF08A678();
    v83 = v59;
    v60 = v80;
    (*(v19 + 16))(v80, v25, v16);
    v61 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v84 = v25;
    v85 = v19;
    v62 = (v78 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    v50((v63 + v61), v60, v16);
    v64 = v76;
    v65 = v56;
    v66 = v82;
    v67 = (v63 + v62);
    *v67 = v54;
    v67[1] = v65;
    v68 = (v63 + ((v62 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v68 = v66;
    v68[1] = v64;
    sub_1BF014DC0(v54, v65);
    v69 = qword_1ED8F0210;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    if (v69 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_7_25();
    sub_1BF0DB434();

    v70 = swift_allocObject();
    v70[2] = v81;
    v70[3] = v66;
    v70[4] = v64;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    OUTLINED_FUNCTION_7_25();
    sub_1BF0DB564();
    OUTLINED_FUNCTION_66();

    OUTLINED_FUNCTION_58();
    v71 = swift_allocObject();
    *(v71 + 16) = v66;
    *(v71 + 24) = v64;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    OUTLINED_FUNCTION_7_25();
    sub_1BF09A754();

    OUTLINED_FUNCTION_58();
    v72 = swift_allocObject();
    *(v72 + 16) = v66;
    *(v72 + 24) = v64;
    OUTLINED_FUNCTION_7_25();
    v49 = sub_1BF08C570();

    sub_1BF014E18(v54, v65);
    (*(v85 + 8))(v84, v16);
  }

  return v49;
}

uint64_t sub_1BF0F698C(uint64_t a1)
{
  sub_1BF015064(0, &qword_1ED8EFC20, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF0F6A18()
{
  result = qword_1EBDCC0D0;
  if (!qword_1EBDCC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDCC0D0);
  }

  return result;
}

void sub_1BF0F6A6C()
{
  if (!qword_1ED8E9CF8)
  {
    sub_1BF0F861C(255, &qword_1ED8ECC20, MEMORY[0x1E69E5E28]);
    v0 = type metadata accessor for Promise();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8E9CF8);
    }
  }
}

uint64_t sub_1BF0F6AE0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v27 = a2;
  v9 = sub_1BF17923C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BF178C6C();
  v14 = *(v30 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v30);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v26 - v19;
  v21 = *a1;
  v22 = a1[1];
  v26[1] = v21;
  (*(v10 + 16))(v13, v27, v9);
  sub_1BF178C2C();
  sub_1BF178BDC();
  sub_1BF014DC0(a3, a4);
  sub_1BF178C5C();
  sub_1BF178C4C();
  sub_1BF178C4C();
  if (v22)
  {
    sub_1BF178C4C();
  }

  v23 = v30;
  (*(v14 + 16))(v18, v20, v30);
  sub_1BF015064(0, &qword_1EBDCA9F0, MEMORY[0x1E6967EC8], type metadata accessor for Promise);
  swift_allocObject();
  v24 = sub_1BF0AAFCC();
  (*(v14 + 8))(v20, v23);
  return v24;
}

uint64_t sub_1BF0F6DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v6 = sub_1BF178C6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 16);
  v10(v9, a1, v6);
  sub_1BF0F86D0(a2 + 24, v28);
  v25 = sub_1BF0F702C(v9, v28);
  v11 = swift_allocObject();
  swift_weakInit();
  v10(v9, a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v15 = v14 + v12;
  v16 = v25;
  (*(v7 + 32))(v15, v9, v6);
  v17 = (v14 + v13);
  v18 = v27;
  *v17 = v26;
  v17[1] = v18;
  v19 = &v16[qword_1ED8EE2D0];
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  *v19 = sub_1BF0F872C;
  v19[1] = v14;

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BEFE52DC(v20);

  if (qword_1ED8EF148 != -1)
  {
    swift_once();
  }

  v22 = sub_1BF0F80AC(v16);

  return v22;
}

id sub_1BF0F702C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF178C6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  sub_1BF015064(0, qword_1ED8EDEB0, MEMORY[0x1E6967EC8], type metadata accessor for Accessor);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1BF0F89A0;
  *(v10 + 24) = v9;
  sub_1BF0F86D0(a2, v15);
  sub_1BF0F8A10();
  v12 = objc_allocWithZone(v11);
  v13 = sub_1BF0F7F28(v10, v15);
  sub_1BF0F840C(a2);
  (*(v5 + 8))(a1, v4);
  return v13;
}

uint64_t sub_1BF0F71F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BF0F8924(result + 112, v16);

    v12 = v17;
    if (v17)
    {
      v13 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v14[0] = v8;
      v14[1] = v9;
      v15 = v10;
      (*(v13 + 8))(v14, a3, a4, a5, v12, v13);
      return __swift_destroy_boxed_opaque_existential_1(v16);
    }

    else
    {
      return sub_1BF0F8460(v16, &qword_1ED8ECF08, &qword_1ED8ECF10);
    }
  }

  return result;
}

void sub_1BF0F7304(char **a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  v47 = a4;
  v57 = type metadata accessor for AuthToken();
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  v8 = MEMORY[0x1EEE9AC00](v57);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v47 - v11;
  isUniquelyReferenced_nonNull_native = sub_1BF17923C();
  v48 = *(isUniquelyReferenced_nonNull_native - 8);
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v63 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AuthTokenResponseItem();
  v59 = *(v15 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  if (qword_1ED8E9CB0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v19 = sub_1BF1797FC();
  __swift_project_value_buffer(v19, qword_1ED8F4DD0);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v20 = sub_1BF1797DC();
  v21 = sub_1BF17ACDC();

  v22 = os_log_type_enabled(v20, v21);
  v58 = isUniquelyReferenced_nonNull_native;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v64 = v24;
    *v23 = 134349314;
    *(v23 + 4) = *(v18 + 2);

    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_1BF01A7AC(a2, a3, &v64);
    _os_log_impl(&dword_1BEFE0000, v20, v21, "AuthTokenService successfully fetched %{public}ld tokens; X-REQUEST-ID=%{public}s", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v25 = v24;
    isUniquelyReferenced_nonNull_native = v58;
    MEMORY[0x1BFB547B0](v25, -1, -1);
    MEMORY[0x1BFB547B0](v23, -1, -1);
  }

  else
  {
  }

  v54 = *(v18 + 2);
  if (v54)
  {
    v26 = 0;
    v27 = *(v15 + 24);
    v52 = (v62 + *(v15 + 20));
    v53 = v27;
    v51 = &v18[(*(v59 + 80) + 32) & ~*(v59 + 80)];
    v60 = (v48 + 16);
    v50 = (v48 + 8);
    v28 = MEMORY[0x1E69E7CC8];
    v49 = v18;
    while (1)
    {
      if (v26 >= *(v18 + 2))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v29 = *(v59 + 72);
      v61 = v26;
      v30 = isUniquelyReferenced_nonNull_native;
      v31 = v62;
      sub_1BF0F0298(&v51[v29 * v26], v62);
      a2 = *v60;
      a3 = v63;
      (*v60)(v63, v31, v30);
      v32 = v56;
      _s13TeaFoundation12DateProviderC3now0B00C0VyF_0();
      v33 = v57;
      a2(&v32[*(v57 + 20)], v31, v30);
      v15 = a2;
      v34 = v52[1];
      v35 = *(v31 + v53);
      v36 = &v32[*(v33 + 24)];
      *v36 = *v52;
      *(v36 + 1) = v34;
      *&v32[*(v33 + 28)] = v35;
      v37 = v32;
      v18 = v10;
      sub_1BF0A8A64(v37, v10);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v28;
      sub_1BF082148();
      if (__OFADD__(v28[2], (v39 & 1) == 0))
      {
        goto LABEL_22;
      }

      v40 = v38;
      a3 = v39;
      sub_1BF0F861C(0, &qword_1ED8E9C08, MEMORY[0x1E69E6DC8]);
      if (sub_1BF17B43C())
      {
        sub_1BF082148();
        isUniquelyReferenced_nonNull_native = v58;
        if ((a3 & 1) != (v42 & 1))
        {
          sub_1BF17BAAC();
          __break(1u);
          return;
        }

        v40 = v41;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v58;
      }

      v28 = v64;
      if (a3)
      {
        sub_1BF0D7C88(v10, v64[7] + *(v55 + 72) * v40);
        (*v50)(v63, isUniquelyReferenced_nonNull_native);
        sub_1BF0F02FC(v62);
      }

      else
      {
        v64[(v40 >> 6) + 8] |= 1 << v40;
        a2 = v48;
        v43 = v63;
        (v15)(v28[6] + *(v48 + 72) * v40, v63, isUniquelyReferenced_nonNull_native);
        sub_1BF0A8A64(v10, v28[7] + *(v55 + 72) * v40);
        (*(a2 + 1))(v43, isUniquelyReferenced_nonNull_native);
        sub_1BF0F02FC(v62);
        v44 = v28[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_23;
        }

        v28[2] = v46;
      }

      v26 = v61 + 1;
      v18 = v49;
      if (v54 == v61 + 1)
      {
        goto LABEL_20;
      }
    }
  }

  v28 = MEMORY[0x1E69E7CC8];
LABEL_20:
  *v47 = v28;
}

void sub_1BF0F790C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED8E9CB0 != -1)
  {
    swift_once();
  }

  v6 = sub_1BF1797FC();
  __swift_project_value_buffer(v6, qword_1ED8F4DD0);
  v7 = a1;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  oslog = sub_1BF1797DC();
  v8 = sub_1BF17ACBC();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446466;
    swift_getErrorValue();
    v11 = sub_1BF17BB0C();
    v13 = sub_1BF01A7AC(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_1BF01A7AC(a2, a3, &v15);
    _os_log_impl(&dword_1BEFE0000, oslog, v8, "AuthTokenService failed to fetch tokens. error=%{public}s; X-REQUEST-ID=%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB547B0](v10, -1, -1);
    MEMORY[0x1BFB547B0](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1BF0F7AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BF0F7B28, 0, 0);
}

uint64_t sub_1BF0F7B28()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1BF0F7C54;
  v8 = v0[3];
  v7 = v0[4];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_1BF0F7C54(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v9 = sub_1BF0F7DFC;
  }

  else
  {
    *(v6 + 88) = a2;
    *(v6 + 96) = a1;
    v9 = sub_1BF0F7D88;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}