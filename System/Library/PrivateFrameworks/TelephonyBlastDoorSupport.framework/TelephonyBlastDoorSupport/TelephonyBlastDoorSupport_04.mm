uint64_t sub_26D201864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26D2018C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26D201914(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26D201968(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ChatbotRootMessageUnpacker.unpack(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26D22DA84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26D22DAC4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x277CF2AB8], v6);
  sub_26D22DA94();
  ChatbotRootMessageUnpacker.unpack(from:with:)(a1, a2, a3);
  return (*(v12 + 8))(v15, v11);
}

uint64_t ChatbotRootMessageUnpacker.unpack(from:with:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[1] = a3;
  v25[0] = sub_26D22CA54();
  v5 = *(v25[0] - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v25[0]);
  v8 = (v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_26D22E404();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_26D22DA84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D22DAA4();
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == *MEMORY[0x277CF2AB8])
  {
    goto LABEL_2;
  }

  if (v16 == *MEMORY[0x277CF2AC8])
  {
    sub_26D1BCB48(a1, a2);
    v17 = sub_26D1BE440(a1, a2);
    if (v18 >> 60 == 15)
    {
LABEL_9:
      sub_26D22E2E4();
      sub_26D201FFC(&qword_2804E04E0, MEMORY[0x277CF30A0]);
      swift_allocError();
      sub_26D22E2A4();
      return swift_willThrow();
    }

LABEL_10:
    a1 = v17;
    a2 = v18;
    goto LABEL_11;
  }

  if (v16 == *MEMORY[0x277CF2AE0])
  {
    sub_26D22E3F4();
    v19 = sub_26D22E3E4();
    if (!v20)
    {
      goto LABEL_9;
    }

    v17 = sub_26D1BE654(v19, v20);
    if (v18 >> 60 == 15)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  (*(v12 + 8))(v15, v11);
LABEL_2:
  sub_26D1BCB48(a1, a2);
LABEL_11:
  sub_26D22DAB4();
  v22 = sub_26D22CAA4();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_26D22CA94();
  *v8 = sub_26D1FE858;
  v8[1] = 0;
  (*(v5 + 104))(v8, *MEMORY[0x277CC86C8], v25[0]);
  sub_26D22CA64();
  sub_26D22CA74();
  sub_26D22DAD4();
  sub_26D201FFC(&qword_2804E13E8, MEMORY[0x277CF2B08]);
  sub_26D22CA84();
  sub_26D1BCB9C(a1, a2);
}

uint64_t sub_26D201FFC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26D202054(void *a1)
{
  v3 = sub_26D22D604();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  v8 = sub_26D1E25A8();
  if (!v1)
  {
    v9 = sub_26D202154(v8);

    sub_26D1C6300(v9, v6);

    sub_26D22D6D4();
  }
}

uint64_t sub_26D202154(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v6 = *(i - 2);
    v5 = *(i - 1);
    v7 = *i;
    swift_bridgeObjectRetain_n();
    v8 = v7;
    v10 = sub_26D1BDEEC(v6, v5);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      sub_26D1E3740(v13, 1);
      v1 = v31;
      v15 = sub_26D1BDEEC(v6, v5);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {

      v17 = v1[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      v30 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_26D22BA58(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v23 = sub_26D22BA58((v20 > 1), v21 + 1, 1, v18);
        v22 = v21 + 1;
        v18 = v23;
        *(v30 + 8 * v10) = v23;
      }

      *(v18 + 2) = v22;
      v4 = &v18[24 * v21];
      *(v4 + 4) = v6;
      *(v4 + 5) = v5;
      *(v4 + 6) = v8;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07D0, &qword_26D230D80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_26D22F360;
      *(v24 + 32) = v6;
      *(v24 + 40) = v5;
      *(v24 + 48) = v8;
      v1[(v10 >> 6) + 8] |= 1 << v10;
      v25 = (v1[6] + 16 * v10);
      *v25 = v6;
      v25[1] = v5;
      *(v1[7] + 8 * v10) = v24;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v1[2] = v28;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26D22E984();
  __break(1u);
  return result;
}

unint64_t sub_26D2023A4()
{
  result = qword_2804E13F0;
  if (!qword_2804E13F0)
  {
    sub_26D22D914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E13F0);
  }

  return result;
}

unint64_t sub_26D202444()
{
  result = qword_2804E13F8;
  if (!qword_2804E13F8)
  {
    sub_26D22D7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E13F8);
  }

  return result;
}

unint64_t sub_26D2024E4()
{
  result = qword_2804E1400;
  if (!qword_2804E1400)
  {
    sub_26D22D7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1400);
  }

  return result;
}

void sub_26D20266C(void *a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 3u)
  {
    if (a4 <= 5u)
    {
      if (a4 != 4)
      {
        sub_26D22EA64();
      }
    }

    else
    {
      if (a4 == 6)
      {
        swift_getErrorValue();
        sub_26D22E994();
        sub_26D22E2A4();
        sub_26D1B7E60(a1, a2, a3, 6u);
        return;
      }

      if (a4 == 7)
      {

        sub_26D22E2A4();

        sub_26D1B7E60(a1, a2, a3, 7u);
        return;
      }
    }
  }

  sub_26D22E2A4();
}

uint64_t sub_26D2029BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26D22E2E4();
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26D22D064();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v39 - v14;
  v16 = type metadata accessor for CPIMMessageUnpacker.Error();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26D1CD590(a1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v32 = *v19;
      v33 = v19[1];
      v34 = v19[2];
      v46 = sub_26D22EA64();
      v47 = v35;
      MEMORY[0x26D6B6C70](8250, 0xE200000000000000);
      MEMORY[0x26D6B6C70](v33, v34);
    }

    else
    {
      v28 = v19[1];
      v29 = v19[2];
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v30 = v19[1];
    v31 = v19[2];
LABEL_14:
    sub_26D22E2A4();
    return sub_26D1CD5F4(a1);
  }

  if (EnumCaseMultiPayload != 3)
  {
    goto LABEL_14;
  }

  v39[1] = a2;
  v21 = *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E09E0, &unk_26D2306B0) + 48));
  (*(v9 + 32))(v15, v19, v8);
  v22 = v21;
  sub_26D22E2F4();
  v46 = sub_26D22E2B4();
  v47 = v23;
  MEMORY[0x26D6B6C70](46, 0xE100000000000000);
  v24 = sub_26D22E2D4();
  MEMORY[0x26D6B6C70](v24);

  v25 = sub_26D22E2C4();
  if (v26)
  {
    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      v44 = 45;
      v45 = 0xE100000000000000;
      MEMORY[0x26D6B6C70]();

      MEMORY[0x26D6B6C70](v44, v45);
    }
  }

  v44 = 0xD000000000000014;
  v45 = 0x800000026D23BDE0;
  (*(v9 + 16))(v13, v15, v8);
  v37 = sub_26D1D732C(v13);
  if (v37 != 16)
  {
    v38 = v37;
    v42 = 0;
    v43 = 0xE000000000000000;
    MEMORY[0x26D6B6C70](10272, 0xE200000000000000);
    v41 = v38;
    sub_26D22E804();
    MEMORY[0x26D6B6C70](41, 0xE100000000000000);
    MEMORY[0x26D6B6C70](v42, v43);
  }

  sub_26D22E2A4();

  sub_26D1CD5F4(a1);
  (*(v40 + 8))(v7, v4);
  return (*(v9 + 8))(v15, v8);
}

unint64_t sub_26D202EF8()
{
  v1 = sub_26D22E2E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E90, &unk_26D231850);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(type metadata accessor for RCSBlastDoorDecodingResultEvent() + 20);
  sub_26D1D7738(&v0[v12], v11, &qword_2804E0E90, &unk_26D231850);
  v27 = v2;
  v13 = *(v2 + 48);
  v14 = v13(v11, 1, v1) == 1;
  sub_26D2032F8(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1408, &qword_26D234338);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26D230530;
  strcpy((inited + 32), "is_successful");
  *(inited + 46) = -4864;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  strcpy((inited + 56), "payload_type");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v16 = sub_26D203E48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1410, &unk_26D234340);
  swift_arrayDestroy();
  sub_26D1D7738(&v0[v12], v9, &qword_2804E0E90, &unk_26D231850);
  if (v13(v9, 1, v1) == 1)
  {
    sub_26D2032F8(v9);
  }

  else
  {
    v18 = v26;
    v17 = v27;
    (*(v27 + 32))(v26, v9, v1);
    sub_26D22E2B4();
    v19 = sub_26D22E3B4();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v16;
    sub_26D2034E0(v19, 0x6F645F726F727265, 0xEC0000006E69616DLL, isUniquelyReferenced_nonNull_native);
    v21 = v28;
    sub_26D22E2D4();
    v22 = sub_26D22E3B4();

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v28 = v21;
    sub_26D2034E0(v22, 0x5F6572756C696166, 0xEE006E6F73616572, v23);
    v16 = v28;
    (*(v17 + 8))(v18, v1);
  }

  return v16;
}

uint64_t type metadata accessor for RCSBlastDoorDecodingResultEvent()
{
  result = qword_2804E1418;
  if (!qword_2804E1418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26D2032F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E90, &unk_26D231850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D203360(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_26D1BDEEC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_26D203870();
      goto LABEL_7;
    }

    sub_26D1E3D6C(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_26D1BDEEC(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_26D22E984();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_26D22D1D4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_26D203658(v12, a2, a3, a1, v18);
}

uint64_t sub_26D2034E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26D1BDEEC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26D1E40EC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_26D1BDEEC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_26D22E984();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_26D203AF0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_26D203658(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_26D22D1D4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_26D203708()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A08, &qword_26D230E30);
  v2 = *v0;
  v3 = sub_26D22E824();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_26D203870()
{
  v1 = v0;
  v36 = sub_26D22D1D4();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0C50, &qword_26D230E38);
  v4 = *v0;
  v5 = sub_26D22E824();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_26D203AF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0BC0, &qword_26D230D98);
  v2 = *v0;
  v3 = sub_26D22E824();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_26D203C5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0A18, &unk_26D234350);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0C50, &qword_26D230E38);
    v8 = sub_26D22E844();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_26D1D7738(v10, v6, &qword_2804E0A18, &unk_26D234350);
      v12 = *v6;
      v13 = v6[1];
      result = sub_26D1BDEEC(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_26D22D1D4();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_26D203E48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0BC0, &qword_26D230D98);
    v3 = sub_26D22E844();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26D1BDEEC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26D203F60(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 240)
  {
    v4 = *a1;
    if (v4 >= 0x10)
    {
      return v4 - 15;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E90, &unk_26D231850);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_26D204028(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 240)
  {
    *result = a2 + 15;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0E90, &unk_26D231850);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26D2040D4()
{
  sub_26D204150();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26D204150()
{
  if (!qword_2804E1428)
  {
    sub_26D22E2E4();
    v0 = sub_26D22E654();
    if (!v1)
    {
      atomic_store(v0, &qword_2804E1428);
    }
  }
}

uint64_t sub_26D2041A8()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D20422C()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D204288@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26D22E854();

  *a2 = v5 != 0;
  return result;
}

void sub_26D20431C(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v23 = a2;
  v24 = a1;
  v5 = *&a1[v4];
  if (v5 >> 62)
  {
LABEL_27:
    v6 = sub_26D22E814();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v5 & 0xC000000000000001;

  v8 = 0;
  while (v6 != v8)
  {
    if (v7)
    {
      v9 = MEMORY[0x26D6B6F50](v8, v5);
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v9 = *(v5 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = *&v9[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v12 = *&v9[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

    v13 = sub_26D22E854();

    if (!v13)
    {
      v6 = v8;
      break;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_26;
    }
  }

  if (!(v5 >> 62))
  {
    if (v6 != *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_23:

    sub_26D1B7F48();
    swift_allocError();
    *v21 = 0xD00000000000001CLL;
    *(v21 + 8) = 0x800000026D23BE60;
    *(v21 + 16) = 0;
    *(v21 + 24) = 1;
    swift_willThrow();

    return;
  }

  if (v6 == sub_26D22E814())
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v7)
  {
    v15 = MEMORY[0x26D6B6F50](v6, v5);
  }

  else
  {
    if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v15 = *(v5 + 32 + 8 * v6);
  }

  v6 = v15;
  v16 = *&v15[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
  v17 = *&v15[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];

  v18 = sub_26D22E854();

  if (v18)
  {
LABEL_30:

    __break(1u);
    return;
  }

  sub_26D1B7480();

  if (!v22)
  {
    v19 = *MEMORY[0x277CF22C8];
    v20 = sub_26D22D4E4();
    (*(*(v20 - 8) + 104))(v23, v19, v20);
  }
}

uint64_t sub_26D2045F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x61642D70756F7267;
  }

  else
  {
    v4 = 25705;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xEA00000000006174;
  }

  if (*a2)
  {
    v6 = 0x61642D70756F7267;
  }

  else
  {
    v6 = 25705;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006174;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D204690()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D20470C()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D204774()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2047EC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26D22E854();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_26D20484C(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x61642D70756F7267;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006174;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_26D2048C4()
{
  result = qword_2804E1430;
  if (!qword_2804E1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1430);
  }

  return result;
}

unint64_t sub_26D20491C()
{
  result = qword_2804E1438;
  if (!qword_2804E1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1438);
  }

  return result;
}

uint64_t sub_26D204970(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6D617473656D6974;
  }

  else
  {
    v4 = 0x7069636974726170;
  }

  if (v3)
  {
    v5 = 0xEB00000000746E61;
  }

  else
  {
    v5 = 0xE900000000000070;
  }

  if (*a2)
  {
    v6 = 0x6D617473656D6974;
  }

  else
  {
    v6 = 0x7069636974726170;
  }

  if (*a2)
  {
    v7 = 0xE900000000000070;
  }

  else
  {
    v7 = 0xEB00000000746E61;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D204A24()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D204AB4()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D204B30()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D204BC8(uint64_t *a1@<X8>)
{
  v2 = 0x7069636974726170;
  if (*v1)
  {
    v2 = 0x6D617473656D6974;
  }

  v3 = 0xEB00000000746E61;
  if (*v1)
  {
    v3 = 0xE900000000000070;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_26D204C14(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = sub_26D22CE34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  KeyPath = swift_getKeyPath();
  v16 = a1;
  v17 = sub_26D1BAA78(KeyPath, v16);

  v18 = sub_26D1DE7E0(0, v17);
  if (v2)
  {

    goto LABEL_3;
  }

  v19 = v18;
  v36 = v5;
  v37 = v9;
  v34 = v12;
  v35 = v14;
  if (!v18)
  {

    sub_26D1B7F48();
    swift_allocError();
    v23 = xmmword_26D234570;
LABEL_8:
    *v22 = v23;
    *(v22 + 16) = 0;
    *(v22 + 24) = 1;
    swift_willThrow();
    goto LABEL_3;
  }

  v20 = &v18[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  if (!*(v20 + 1))
  {

    sub_26D1B7F48();
    swift_allocError();
    v24 = MEMORY[0x277D837D0];
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    *v25 = v24;
    *(v25 + 24) = 5;
    swift_willThrow();

    goto LABEL_3;
  }

  v21 = *v20;

  v26 = sub_26D1DE7E0(1, v17);

  if (!v26)
  {

    sub_26D1B7F48();
    swift_allocError();
    v23 = xmmword_26D234560;
    goto LABEL_8;
  }

  v27 = &v26[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  v28 = v27[1];
  if (v28)
  {
    v29 = *v27;

    v30 = v37;
    sub_26D1BCF54(v29, v28, v37);

    v32 = *(v36 + 32);
    v33 = v34;
    v32(v34, v30, v4);
    v32(v35, v33, v4);
    sub_26D22D3D4();
  }

  else
  {

    sub_26D1B7F48();
    swift_allocError();
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *v31 = v4;
    *(v31 + 24) = 5;
    swift_willThrow();
  }

LABEL_3:
}

uint64_t sub_26D204FD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x2D7463656A627573;
  }

  else
  {
    v4 = 0x7463656A627573;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEB00000000747865;
  }

  if (*a2)
  {
    v6 = 0x2D7463656A627573;
  }

  else
  {
    v6 = 0x7463656A627573;
  }

  if (*a2)
  {
    v7 = 0xEB00000000747865;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D205088()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D205114()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D20518C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D205220(uint64_t *a1@<X8>)
{
  v2 = 0x7463656A627573;
  if (*v1)
  {
    v2 = 0x2D7463656A627573;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000747865;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_26D205268(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_26D22D3C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26D1E05C0(a1, a2);
  if (!v3)
  {
    v13 = v12;
    if (v12)
    {
      v15 = *&v12[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v14 = *&v12[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v16 = v15 == 0x6465727265666572 && v14 == 0xE800000000000000;
      if (v16 || (v17 = *&v12[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v18 = *&v13[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8], (sub_26D22E964() & 1) != 0))
      {
        KeyPath = swift_getKeyPath();
        v20 = v13;
        v21 = sub_26D1BAA50(KeyPath, v20);

        v22 = sub_26D1E522C(v21);

        if (v22)
        {
          v23 = &v22[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
          swift_beginAccess();
          v24 = *v23;
          v25 = *(v23 + 1);
        }

        sub_26D22D3B4();

        (*(v8 + 32))(a3, v11, v7);
        (*(v8 + 56))(a3, 0, 1, v7);
      }

      else
      {
        sub_26D1B7F48();
        swift_allocError();
        *v26 = v15;
        *(v26 + 8) = v14;
        *(v26 + 16) = 0;
        *(v26 + 24) = 0;
        swift_willThrow();
      }
    }

    else
    {
      (*(v8 + 56))(a3, 1, 1, v7);
    }
  }
}

void sub_26D205528(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = 0xEB00000000747865;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*(a2 + 16) && ((a1 & 1) == 0 ? (v7 = 0x7463656A627573) : (v7 = 0x2D7463656A627573), (v8 = sub_26D1BDEEC(v7, v5), (v9 & 1) != 0) && (v10 = *(*(a2 + 56) + 8 * v8), *(v10 + 16))))
  {
    v11 = *(v10 + 32);

    v13 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v12 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v14 = v13 == 0x2D7463656A627573 && v12 == 0xEB00000000747865;
    if (v14 || (v15 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name], v16 = *&v11[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8], (sub_26D22E964() & 1) != 0))
    {
      sub_26D204C14(v11, a3);
      if (!v3)
      {
        v17 = sub_26D22D3E4();
        (*(*(v17 - 8) + 56))(a3, 0, 1, v17);
      }
    }

    else
    {
      sub_26D1B7F48();
      swift_allocError();
      *v19 = v13;
      *(v19 + 8) = v12;
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      swift_willThrow();
    }
  }

  else
  {

    v18 = sub_26D22D3E4();
    (*(*(v18 - 8) + 56))(a3, 1, 1, v18);
  }
}

uint64_t sub_26D20571C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2057F8()
{
  *v0;
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D2058C0()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D205998@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D2088C0();
  *a2 = result;
  return result;
}

void sub_26D2059C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x797469746E65;
  v5 = 0xE600000000000000;
  v6 = 0x737574617473;
  v7 = 0x800000026D23A210;
  v8 = 0xD000000000000014;
  if (v2 != 3)
  {
    v8 = 0x6574617473;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6465727265666572;
    v3 = 0xE800000000000000;
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

void sub_26D205A60(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1440, &qword_26D234620);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v89 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v86 = &v79 - v7;
  v8 = sub_26D22D414();
  v9 = *(v8 - 8);
  v87 = v8;
  v88 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1468, &qword_26D234668);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v79 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1470, &qword_26D234670);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v79 - v19;
  v21 = sub_26D22D494();
  v90 = *(v21 - 8);
  v22 = *(v90 + 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1478, &qword_26D234678);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v79 - v27;
  KeyPath = swift_getKeyPath();
  v30 = a1;
  v31 = sub_26D1BACD0(KeyPath, v30);

  v32 = v94;
  v33 = sub_26D1C578C(0, 0, v30);
  if (v32)
  {

    return;
  }

  v83 = v24;
  v84 = v28;
  v35 = v90;
  v94 = v30;
  v36 = v33;
  v82 = v16;
  v85 = v34;
  v37 = sub_26D1E05C0(2u, v31);
  v38 = v37;
  v81 = 0;
  if (!v37)
  {
    v43 = v84;
    (*(v35 + 56))(v84, 1, 1, v21);
LABEL_9:
    v44 = v12;
    goto LABEL_11;
  }

  v80 = v36;
  v39 = &v37[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  if (!*(v39 + 1))
  {

    v43 = v84;
    (*(v35 + 56))(v84, 1, 1, v21);
    v36 = v80;
    goto LABEL_9;
  }

  v40 = *v39;

  v41 = sub_26D208504();
  if (v41 != 9)
  {
    v45 = v41;
    v44 = v12;

    v46 = **(&unk_279D955F8 + v45);
    v47 = v83;
    (*(v35 + 104))(v83, v46, v21);
    v43 = v84;
    (*(v35 + 32))(v84, v47, v21);
    (*(v35 + 56))(v43, 0, 1, v21);
    v36 = v80;
LABEL_11:
    v48 = v81;
    sub_26D205268(1u, v31, v20);
    if (v48)
    {
      sub_26D1B950C(v43, &qword_2804E1478, &qword_26D234678);

      v49 = v94;

LABEL_13:

      return;
    }

    v90 = v20;
    v50 = sub_26D1E05C0(3u, v31);
    v81 = 0;
    v51 = v50;
    v80 = v36;

    if (v51)
    {
      v52 = &v51[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
      swift_beginAccess();
      v53 = v89;
      v54 = v82;
      if (*(v52 + 1))
      {
        v55 = *v52;

        v56 = sub_26D208550();
        if (v56 == 4)
        {

          sub_26D1B950C(v90, &qword_2804E1470, &qword_26D234670);
          sub_26D1B950C(v84, &qword_2804E1478, &qword_26D234678);
          sub_26D1B7F48();
          swift_allocError();
          *v57 = 0xD000000000000023;
          *(v57 + 8) = 0x800000026D23BE80;
          *(v57 + 16) = 0;
          *(v57 + 24) = 1;
          swift_willThrow();

          goto LABEL_29;
        }

        v61 = v56;

        v60 = v88;
        v62 = v44;
        v63 = v44;
        v64 = v87;
        (*(v88 + 104))(v62, **(&unk_279D95640 + v61), v87);
        (*(v60 + 32))(v54, v63, v64);
        v59 = v64;
        v58 = 0;
LABEL_22:
        (*(v60 + 56))(v54, v58, 1, v59);
        v65 = *&v94[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
        if (*(v65 + 16))
        {
          v66 = *&v94[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];

          v67 = sub_26D1BDEEC(0x6574617473, 0xE500000000000000);
          if (v68)
          {
            v69 = (*(v65 + 56) + 16 * v67);
            v71 = *v69;
            v70 = v69[1];

            v72 = sub_26D22D434();
            v92 = v71;
            v93 = v70;
            sub_26D2082A8();
            swift_bridgeObjectRetain_n();
            sub_26D22E554();
            v73 = *(v72 - 8);
            if ((*(v73 + 48))(v53, 1, v72) == 1)
            {

              sub_26D1B950C(v54, &qword_2804E1468, &qword_26D234668);
              sub_26D1B950C(v90, &qword_2804E1470, &qword_26D234670);
              sub_26D1B950C(v84, &qword_2804E1478, &qword_26D234678);
              sub_26D1B950C(v53, &qword_2804E1440, &qword_26D234620);
              sub_26D1B7F48();
              swift_allocError();
              *v74 = v71;
              *(v74 + 8) = v70;
              *(v74 + 16) = 0;
              *(v74 + 24) = 3;
              swift_willThrow();
              v75 = v94;

              goto LABEL_13;
            }

            swift_bridgeObjectRelease_n();
            v78 = v86;
            (*(v73 + 32))(v86, v53, v72);
            (*(v73 + 56))(v78, 0, 1, v72);
LABEL_28:
            sub_26D22D484();
            goto LABEL_29;
          }
        }

        v76 = sub_26D22D434();
        (*(*(v76 - 8) + 56))(v86, 1, 1, v76);
        goto LABEL_28;
      }

      v58 = 1;
    }

    else
    {
      v58 = 1;
      v53 = v89;
      v54 = v82;
    }

    v59 = v87;
    v60 = v88;
    goto LABEL_22;
  }

  sub_26D1B7F48();
  swift_allocError();
  *v42 = 0xD000000000000021;
  *(v42 + 8) = 0x800000026D23BEB0;
  *(v42 + 16) = 0;
  *(v42 + 24) = 1;
  swift_willThrow();

LABEL_29:
  v77 = v94;
}

uint64_t sub_26D206424(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6574617473;
  }

  else
  {
    v4 = 0x746E696F70646E65;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6574617473;
  }

  else
  {
    v6 = 0x746E696F70646E65;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D2064C8()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D206548()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D2065B4()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D20663C(uint64_t *a1@<X8>)
{
  v2 = 0x746E696F70646E65;
  if (*v1)
  {
    v2 = 0x6574617473;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D206678(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1440, &qword_26D234620);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v62 - v10;
  v12 = sub_26D22D464();
  v13 = *(v12 - 8);
  v70 = v12;
  v71 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v74 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  if (!*(a2 + 16) || ((a1 & 1) == 0 ? (v17 = 0x6574617473) : (v17 = 1919251317), v18 = sub_26D1BDEEC(v17, v16), (v19 & 1) == 0))
  {

    return 0;
  }

  v20 = *(*(a2 + 56) + 8 * v18);

  v21 = *(v20 + 16);
  if (!v21)
  {

    return MEMORY[0x277D84F90];
  }

  v63 = v9;
  v77 = MEMORY[0x277D84F90];
  result = sub_26D1E4718(0, v21, 0);
  v23 = 0;
  v24 = v77;
  v66 = v20;
  v67 = v20 + 32;
  v64 = v71 + 32;
  v65 = v21;
  v69 = v11;
  while (v23 < *(v20 + 16))
  {
    v25 = *(v67 + 8 * v23);
    v26 = &v25[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v27 = *&v25[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name] == 1919251317 && *&v25[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8] == 0xE400000000000000;
    if (!v27 && (sub_26D22E964() & 1) == 0)
    {
      v56 = v25;

      v58 = *v26;
      v57 = *(v26 + 1);
      sub_26D1B7F48();
      swift_allocError();
      *v59 = v58;
      *(v59 + 8) = v57;
      *(v59 + 16) = 0;
      *(v59 + 24) = 0;
      swift_willThrow();

      return v24;
    }

    v73 = v23;
    swift_getKeyPath();
    v28 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
    v29 = v25;
    swift_beginAccess();
    v30 = *&v25[v28];
    if (v30 >> 62)
    {
      if (v30 < 0)
      {
        v37 = *&v25[v28];
      }

      v31 = sub_26D22E814();
      v72 = v29;
      if (!v31)
      {
LABEL_29:
        v38 = v29;
        v36 = MEMORY[0x277D84F90];
        goto LABEL_30;
      }
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v72 = v29;
      if (!v31)
      {
        goto LABEL_29;
      }
    }

    v75 = MEMORY[0x277D84F90];
    v32 = v29;

    result = sub_26D22E7D4();
    if (v31 < 0)
    {
      goto LABEL_48;
    }

    v68 = v24;
    v33 = 0;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D6B6F50](v33, v30);
      }

      else
      {
        v35 = *(v30 + 8 * v33 + 32);
      }

      ++v33;
      sub_26D22E7B4();
      v34 = *(v75 + 16);
      sub_26D22E7E4();
      sub_26D22E7F4();
      sub_26D22E7C4();
    }

    while (v31 != v33);

    v36 = v75;
    v24 = v68;
    v29 = v72;
LABEL_30:

    v39 = sub_26D208300(v36);

    sub_26D206DCC(0, v39);
    v20 = v66;
    if (v2)
    {

      return v24;
    }

    v40 = *&v29[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
    v41 = v69;
    if (!*(v40 + 16))
    {
      goto LABEL_36;
    }

    v42 = *&v29[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];

    v43 = sub_26D1BDEEC(0x6574617473, 0xE500000000000000);
    if ((v44 & 1) == 0)
    {

LABEL_36:
      v52 = sub_26D22D434();
      (*(*(v52 - 8) + 56))(v41, 1, 1, v52);
      goto LABEL_37;
    }

    v45 = (*(v40 + 56) + 16 * v43);
    v46 = *v45;
    v47 = v45[1];

    v48 = sub_26D22D434();
    v75 = v46;
    v76 = v47;
    sub_26D2082A8();
    swift_bridgeObjectRetain_n();
    v49 = v63;
    sub_26D22E554();
    v50 = *(v48 - 8);
    if ((*(v50 + 48))(v49, 1, v48) == 1)
    {

      sub_26D1B950C(v49, &qword_2804E1440, &qword_26D234620);
      sub_26D1B7F48();
      swift_allocError();
      *v60 = v46;
      *(v60 + 8) = v47;
      *(v60 + 16) = 0;
      *(v60 + 24) = 3;
      swift_willThrow();

      v61 = v72;

      return v24;
    }

    swift_bridgeObjectRelease_n();
    v51 = v69;
    (*(v50 + 32))(v69, v49, v48);
    (*(v50 + 56))(v51, 0, 1, v48);
    v29 = v72;
LABEL_37:
    sub_26D22D454();

    v77 = v24;
    v54 = *(v24 + 16);
    v53 = *(v24 + 24);
    if (v54 >= v53 >> 1)
    {
      sub_26D1E4718(v53 > 1, v54 + 1, 1);
      v24 = v77;
    }

    v55 = v74;
    v23 = v73 + 1;
    *(v24 + 16) = v54 + 1;
    result = (*(v71 + 32))(v24 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v54, v55, v70);
    if (v23 == v65)
    {

      return v24;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

size_t sub_26D206DCC(char a1, uint64_t a2)
{
  v29 = sub_26D22D4A4();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (!*(a2 + 16) || ((a1 & 1) == 0 ? (v10 = 0x746E696F70646E65) : (v10 = 0x6574617473), v11 = sub_26D1BDEEC(v10, v9), (v12 & 1) == 0))
  {

    return 0;
  }

  v13 = *(*(a2 + 56) + 8 * v11);

  v14 = *(v13 + 16);
  if (!v14)
  {

    return MEMORY[0x277D84F90];
  }

  v30 = MEMORY[0x277D84F90];
  result = sub_26D1E475C(0, v14, 0);
  v16 = 0;
  v17 = v30;
  v28 = v5 + 32;
  while (v16 < *(v13 + 16))
  {
    v18 = *(v13 + 8 * v16 + 32);
    v19 = &v18[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v20 = *&v18[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name] == 0x746E696F70646E65 && *&v18[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8] == 0xE800000000000000;
    if (!v20 && (sub_26D22E964() & 1) == 0)
    {
      v24 = v18;

      v26 = *v19;
      v25 = *(v19 + 1);
      sub_26D1B7F48();
      swift_allocError();
      *v27 = v26;
      *(v27 + 8) = v25;
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      swift_willThrow();

      return v17;
    }

    v21 = v18;
    sub_26D205A60(v21, v8);
    if (v2)
    {

      return v17;
    }

    v30 = v17;
    v23 = *(v17 + 16);
    v22 = *(v17 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_26D1E475C(v22 > 1, v23 + 1, 1);
      v17 = v30;
    }

    ++v16;
    *(v17 + 16) = v23 + 1;
    result = (*(v5 + 32))(v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, v8, v29);
    if (v14 == v16)
    {

      return v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26D2070D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1919251317;
  }

  else
  {
    v4 = 0x6574617473;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1919251317;
  }

  else
  {
    v6 = 0x6574617473;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D20716C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2071E4()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D207248()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D2072C8(uint64_t *a1@<X8>)
{
  v2 = 1919251317;
  if (!*v1)
  {
    v2 = 0x6574617473;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_26D2072FC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1440, &qword_26D234620);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - v10;
  KeyPath = swift_getKeyPath();
  v13 = a1;
  v14 = sub_26D1BAAA0(KeyPath, v13);

  v15 = *&v13[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
  if (!*(v15 + 16))
  {
    goto LABEL_6;
  }

  v16 = *&v13[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];

  v17 = sub_26D1BDEEC(0x6574617473, 0xE500000000000000);
  if ((v18 & 1) == 0)
  {

LABEL_6:
    v25 = sub_26D22D434();
    (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
    goto LABEL_7;
  }

  v26[3] = a2;
  v19 = (*(v15 + 56) + 16 * v17);
  v20 = *v19;
  v21 = v19[1];

  v22 = sub_26D22D434();
  v26[0] = v20;
  v26[1] = v21;
  sub_26D2082A8();
  swift_bridgeObjectRetain_n();
  sub_26D22E554();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v9, 1, v22) == 1)
  {

    sub_26D1B950C(v9, &qword_2804E1440, &qword_26D234620);
    sub_26D1B7F48();
    swift_allocError();
    *v24 = v20;
    *(v24 + 8) = v21;
    *(v24 + 16) = 0;
    *(v24 + 24) = 3;
    swift_willThrow();

    return;
  }

  swift_bridgeObjectRelease_n();
  (*(v23 + 32))(v11, v9, v22);
  (*(v23 + 56))(v11, 0, 1, v22);
LABEL_7:
  sub_26D206678(1, v14);
  if (v2)
  {
    sub_26D1B950C(v11, &qword_2804E1440, &qword_26D234620);
  }

  else
  {

    sub_26D22D444();
  }
}

uint64_t sub_26D20764C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x7372657375;
  v3 = *a1;
  v4 = 0x6574617473;
  if (v3 == 1)
  {
    v4 = 0x7372657375;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v3)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0x800000026D23A190;
  }

  if (*a2 != 1)
  {
    v2 = 0x6574617473;
  }

  if (*a2)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0x800000026D23A190;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D20773C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2077DC()
{
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D207868()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D207904@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D208874();
  *a2 = result;
  return result;
}

void sub_26D207934(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7372657375;
  if (v2 != 1)
  {
    v4 = 0x6574617473;
    v3 = 0xE500000000000000;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (v5)
  {
    v3 = 0x800000026D23A190;
  }

  *a1 = v6;
  a1[1] = v3;
}

void sub_26D207990(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1440, &qword_26D234620);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v67 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1448, &qword_26D234628);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v67 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1450, &qword_26D234630);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v67 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1458, &qword_26D234638);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v67 - v21;
  KeyPath = swift_getKeyPath();
  v24 = a1;
  v25 = sub_26D1BAD20(KeyPath, v24);

  v26 = sub_26D1E0770(0, v25);
  if (v2)
  {
    goto LABEL_2;
  }

  v27 = v26;
  v70 = v8;
  v71 = v10;
  v72 = v14;
  v73 = v22;
  if (v26)
  {
    v29 = *&v26[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v28 = *&v26[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    if (v29 != 0xD000000000000016 || 0x800000026D23A190 != v28)
    {
      v30 = *&v26[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v31 = *&v27[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      if ((sub_26D22E964() & 1) == 0)
      {
        sub_26D1B7F48();
        swift_allocError();
        *v41 = v29;
        *(v41 + 8) = v28;
        *(v41 + 16) = 0;
        *(v41 + 24) = 0;
        swift_willThrow();

        return;
      }
    }

    v32 = swift_getKeyPath();
    v33 = v27;
    v34 = sub_26D1BACF8(v32, v33);

    v35 = sub_26D1E06C0(0, v34);
    v38 = v35;
    if (v35)
    {
      v39 = &v35[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
      swift_beginAccess();
      v40 = *(v39 + 1);
      v68 = *v39;
      v69 = v40;
    }

    else
    {
      v68 = 0;
      v69 = 0;
    }

    sub_26D205528(1, v34, v18);

    v49 = v73;
    sub_26D22D3F4();

    v65 = sub_26D22D404();
    (*(*(v65 - 8) + 56))(v49, 0, 1, v65);
  }

  else
  {
    v36 = sub_26D22D404();
    (*(*(v36 - 8) + 56))(v73, 1, 1, v36);
  }

  v37 = sub_26D1E0770(1, v25);
  if (v37)
  {
    v43 = *&v37[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v42 = *&v37[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    if (v43 != 0x7372657375 || v42 != 0xE500000000000000)
    {
      v44 = v37;
      v45 = *&v37[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v46 = sub_26D22E964();
      v37 = v44;
      v47 = v73;
      if ((v46 & 1) == 0)
      {
        sub_26D1B7F48();
        swift_allocError();
        *v66 = v43;
        *(v66 + 8) = v42;
        *(v66 + 16) = 0;
        *(v66 + 24) = 0;
        swift_willThrow();

        sub_26D1B950C(v47, &qword_2804E1458, &qword_26D234638);
LABEL_2:

LABEL_3:

        return;
      }
    }

    v48 = v72;
    sub_26D2072FC(v37, v72);
    v50 = 0;
  }

  else
  {
    v50 = 1;
    v48 = v72;
  }

  v51 = sub_26D22D474();
  (*(*(v51 - 8) + 56))(v48, v50, 1, v51);

  v52 = *&v24[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];
  v53 = v71;
  if (!*(v52 + 16))
  {
    goto LABEL_27;
  }

  v54 = *&v24[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes];

  v55 = sub_26D1BDEEC(0x6574617473, 0xE500000000000000);
  if ((v56 & 1) == 0)
  {

LABEL_27:
    v64 = sub_26D22D434();
    (*(*(v64 - 8) + 56))(v53, 1, 1, v64);
LABEL_28:
    sub_26D22D424();
    goto LABEL_3;
  }

  v57 = (*(v52 + 56) + 16 * v55);
  v59 = *v57;
  v58 = v57[1];

  v60 = sub_26D22D434();
  v74 = v59;
  v75 = v58;
  sub_26D2082A8();
  swift_bridgeObjectRetain_n();
  v61 = v70;
  sub_26D22E554();
  v62 = *(v60 - 8);
  if ((*(v62 + 48))(v61, 1, v60) != 1)
  {
    swift_bridgeObjectRelease_n();
    (*(v62 + 32))(v53, v61, v60);
    (*(v62 + 56))(v53, 0, 1, v60);
    goto LABEL_28;
  }

  sub_26D1B950C(v72, &qword_2804E1448, &qword_26D234628);
  sub_26D1B950C(v73, &qword_2804E1458, &qword_26D234638);
  sub_26D1B950C(v61, &qword_2804E1440, &qword_26D234620);
  sub_26D1B7F48();
  swift_allocError();
  *v63 = v59;
  *(v63 + 8) = v58;
  *(v63 + 16) = 0;
  *(v63 + 24) = 3;
  swift_willThrow();
}

uint64_t sub_26D2081AC()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D208200()
{
  sub_26D22E9E4();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D208244@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26D22E854();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_26D2082A8()
{
  result = qword_2804E1460;
  if (!qword_2804E1460)
  {
    sub_26D22D434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1460);
  }

  return result;
}

uint64_t sub_26D208300(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v24 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; ++i)
  {
    v6 = *i;
    swift_getAtKeyPath();

    v8 = sub_26D1BDEEC(v22, v23);
    v9 = v1[2];
    v10 = (v7 & 1) == 0;
    v11 = v9 + v10;
    if (__OFADD__(v9, v10))
    {
      break;
    }

    v12 = v7;
    if (v1[3] < v11)
    {
      sub_26D1E324C(v11, 1);
      v1 = v24;
      v13 = sub_26D1BDEEC(v22, v23);
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_17;
      }

      v8 = v13;
    }

    if (v12)
    {

      v5 = v1[7] + 8 * v8;
      MEMORY[0x26D6B6D60](v4);
      if (*(*v5 + 16) >= *(*v5 + 24) >> 1)
      {
        v20 = *(*v5 + 16);
        sub_26D22E5A4();
      }

      sub_26D22E5B4();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1480, qword_26D234680);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_26D22F360;
      *(v15 + 32) = v6;
      v1[(v8 >> 6) + 8] |= 1 << v8;
      v16 = (v1[6] + 16 * v8);
      *v16 = v22;
      v16[1] = v23;
      *(v1[7] + 8 * v8) = v15;
      v17 = v1[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_16;
      }

      v1[2] = v19;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:

  result = sub_26D22E984();
  __break(1u);
  return result;
}

uint64_t sub_26D208504()
{
  v0 = sub_26D22E854();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D208550()
{
  v0 = sub_26D22E854();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26D208610()
{
  result = qword_2804E1488;
  if (!qword_2804E1488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1488);
  }

  return result;
}

unint64_t sub_26D208668()
{
  result = qword_2804E1490;
  if (!qword_2804E1490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1490);
  }

  return result;
}

unint64_t sub_26D2086C0()
{
  result = qword_2804E1498;
  if (!qword_2804E1498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1498);
  }

  return result;
}

unint64_t sub_26D208718()
{
  result = qword_2804E14A0;
  if (!qword_2804E14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E14A0);
  }

  return result;
}

unint64_t sub_26D208770()
{
  result = qword_2804E14A8;
  if (!qword_2804E14A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E14A8);
  }

  return result;
}

unint64_t sub_26D2087C8()
{
  result = qword_2804E14B0;
  if (!qword_2804E14B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E14B0);
  }

  return result;
}

unint64_t sub_26D208820()
{
  result = qword_2804E14B8;
  if (!qword_2804E14B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E14B8);
  }

  return result;
}

uint64_t sub_26D208874()
{
  v0 = sub_26D22E854();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D2088C0()
{
  v0 = sub_26D22E854();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26D208960()
{
  result = qword_2804E14C0;
  if (!qword_2804E14C0)
  {
    sub_26D22D554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E14C0);
  }

  return result;
}

unint64_t sub_26D208A34()
{
  result = qword_2804E14C8;
  if (!qword_2804E14C8)
  {
    sub_26D22D204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E14C8);
  }

  return result;
}

uint64_t sub_26D208AB4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_26D22CB84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D22CB74();
  sub_26D22CB64();
  MEMORY[0x26D6B5330](7824750, 0xE300000000000000);
  sub_26D208E18();
  sub_26D22CB34();
  sub_26D22CB44();
  v11 = sub_26D22CCE4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_26D1B950C(v5, &qword_2804E0890, &qword_26D230770);
    sub_26D20B834();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return (*(v12 + 32))(a1, v5, v11);
  }
}

uint64_t sub_26D208D04()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

char *sub_26D208E18()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E14D8, &qword_26D234D10);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v400 = &v364 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v399 = &v364 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v398 = &v364 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v395 = &v364 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v392 = &v364 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v389 = &v364 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v388 = &v364 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v364 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v364 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v364 - v24;
  v26 = sub_26D22CB14();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v367 = &v364 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v366 = &v364 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v383 = &v364 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v382 = &v364 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v419 = &v364 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v381 = &v364 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v418 = &v364 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v417 = &v364 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v380 = &v364 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v416 = &v364 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v397 = &v364 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v396 = &v364 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v415 = &v364 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v379 = &v364 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v414 = &v364 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v413 = &v364 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v378 = &v364 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v412 = &v364 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v411 = &v364 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v377 = &v364 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v410 = &v364 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v409 = &v364 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v376 = &v364 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v408 = &v364 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v394 = &v364 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v393 = &v364 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v420 = &v364 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v375 = &v364 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v407 = &v364 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v406 = &v364 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v374 = &v364 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v405 = &v364 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v404 = &v364 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v373 = &v364 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v403 = &v364 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v391 = &v364 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v390 = &v364 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v402 = &v364 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v372 = &v364 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v401 = &v364 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v371 = &v364 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v370 = &v364 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v369 = &v364 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v368 = &v364 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v387 = &v364 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v386 = &v364 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v385 = &v364 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v384 = &v364 - v124;
  v125 = MEMORY[0x28223BE20](v123);
  v127 = &v364 - v126;
  MEMORY[0x28223BE20](v125);
  v129 = &v364 - v128;
  v424 = v27;
  v425 = MEMORY[0x277D84F90];
  v130 = v1[3];
  v421 = v1;
  if (!v130)
  {
    v422 = *(v27 + 56);
    v422(v25, 1, 1, v26);
LABEL_5:
    sub_26D1B950C(v25, &qword_2804E14D8, &qword_26D234D10);
    v134 = v1[6];
    if (!v134)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v131 = v1[1];
  v132 = v1[2];
  v133 = *v1;

  v27 = v424;
  sub_26D22CB04();
  v422 = *(v27 + 56);
  v422(v25, 0, 1, v26);

  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v1 = v421;
    goto LABEL_5;
  }

  v423 = *(v27 + 32);
  v423(v129, v25, v26);
  (*(v27 + 16))(v127, v129, v26);
  v167 = sub_26D22B99C(0, 1, 1, MEMORY[0x277D84F90]);
  v169 = v167[2];
  v168 = v167[3];
  v365 = v20;
  if (v169 >= v168 >> 1)
  {
    v167 = sub_26D22B99C(v168 > 1, v169 + 1, 1, v167);
  }

  v170 = v424;
  v171 = v424 + 8;
  (*(v424 + 8))(v129, v26);
  v167[2] = v169 + 1;
  v172 = v167 + ((*(v171 + 72) + 32) & ~*(v171 + 72)) + *(v171 + 64) * v169;
  v27 = v170;
  v423(v172, v127, v26);
  v425 = v167;
  v1 = v421;
  v20 = v365;
  v134 = v421[6];
  if (v134)
  {
LABEL_6:
    v136 = v1[7];
    v135 = v1[8];
    v426 = *(v1 + 2);
    v427 = v134;
    v428 = v136;
    v429 = v135;
    v137 = sub_26D20B888();
    sub_26D223D54(v137);
  }

LABEL_7:
  v138 = v1[9];
  v139 = v1[10];
  v140 = *(v1 + 88);

  sub_26D20CF48(v140, v23);

  v423 = *(v27 + 48);
  if (v423(v23, 1, v26) == 1)
  {
    sub_26D1B950C(v23, &qword_2804E14D8, &qword_26D234D10);
  }

  else
  {
    v141 = *(v27 + 32);
    v142 = v384;
    v141(v384, v23, v26);
    (*(v27 + 16))(v385, v142, v26);
    v143 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_26D22B99C(0, *(v143 + 2) + 1, 1, v143);
    }

    v145 = *(v143 + 2);
    v144 = *(v143 + 3);
    if (v145 >= v144 >> 1)
    {
      v143 = sub_26D22B99C(v144 > 1, v145 + 1, 1, v143);
    }

    (*(v27 + 8))(v384, v26);
    *(v143 + 2) = v145 + 1;
    v141(&v143[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v145], v385, v26);
    v425 = v143;
    v1 = v421;
  }

  v146 = v1[12];
  v147 = v1[13];
  v148 = *(v1 + 112);

  sub_26D20D13C(v148, v20);

  if (v423(v20, 1, v26) == 1)
  {
    sub_26D1B950C(v20, &qword_2804E14D8, &qword_26D234D10);
    if (v1[18])
    {
      goto LABEL_16;
    }

LABEL_28:
    v152 = v388;
    v422(v388, 1, 1, v26);
    goto LABEL_29;
  }

  v159 = *(v27 + 32);
  v160 = v386;
  v159(v386, v20, v26);
  (*(v27 + 16))(v387, v160, v26);
  v161 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v161 = sub_26D22B99C(0, *(v161 + 2) + 1, 1, v161);
  }

  v163 = *(v161 + 2);
  v162 = *(v161 + 3);
  if (v163 >= v162 >> 1)
  {
    v161 = sub_26D22B99C(v162 > 1, v163 + 1, 1, v161);
  }

  (*(v27 + 8))(v386, v26);
  *(v161 + 2) = v163 + 1;
  v159(&v161[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v163], v387, v26);
  v425 = v161;
  if (!v1[18])
  {
    goto LABEL_28;
  }

LABEL_16:
  v150 = v1[16];
  v149 = v1[17];
  v151 = v1[15];

  v152 = v388;
  sub_26D22CB04();
  v422(v152, 0, 1, v26);

  if (v423(v152, 1, v26) != 1)
  {
    v153 = *(v27 + 32);
    v154 = v368;
    v153(v368, v152, v26);
    (*(v27 + 16))(v369, v154, v26);
    v155 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v155 = sub_26D22B99C(0, *(v155 + 2) + 1, 1, v155);
    }

    v157 = *(v155 + 2);
    v156 = *(v155 + 3);
    if (v157 >= v156 >> 1)
    {
      v155 = sub_26D22B99C(v156 > 1, v157 + 1, 1, v155);
    }

    (*(v27 + 8))(v368, v26);
    *(v155 + 2) = v157 + 1;
    v153(&v155[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v157], v369, v26);
    v425 = v155;
    if (!v1[22])
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_26D1B950C(v152, &qword_2804E14D8, &qword_26D234D10);
  if (!v1[22])
  {
LABEL_22:
    v158 = v389;
    v422(v389, 1, 1, v26);
LABEL_31:
    sub_26D1B950C(v158, &qword_2804E14D8, &qword_26D234D10);
    goto LABEL_41;
  }

LABEL_30:
  v165 = v1[20];
  v164 = v1[21];
  v166 = v1[19];

  v158 = v389;
  sub_26D22CB04();
  v422(v158, 0, 1, v26);

  if (v423(v158, 1, v26) == 1)
  {
    goto LABEL_31;
  }

  v173 = *(v27 + 32);
  v174 = v370;
  v173(v370, v158, v26);
  (*(v27 + 16))(v371, v174, v26);
  v175 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v175 = sub_26D22B99C(0, *(v175 + 2) + 1, 1, v175);
  }

  v177 = *(v175 + 2);
  v176 = *(v175 + 3);
  if (v177 >= v176 >> 1)
  {
    v175 = sub_26D22B99C(v176 > 1, v177 + 1, 1, v175);
  }

  (*(v27 + 8))(v370, v26);
  *(v175 + 2) = v177 + 1;
  v173(&v175[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v177], v371, v26);
  v425 = v175;
LABEL_41:
  v179 = v1[23];
  v178 = v1[24];
  v180 = v1[25];

  sub_26D20DA6C(v181);
  if (v182)
  {
    v183 = v372;
    sub_26D22CB04();

    v184 = *(v27 + 32);
    v185 = v401;
    v184(v401, v183, v26);
    (*(v27 + 16))(v402, v185, v26);
    v186 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v186 = sub_26D22B99C(0, *(v186 + 2) + 1, 1, v186);
    }

    v188 = *(v186 + 2);
    v187 = *(v186 + 3);
    if (v188 >= v187 >> 1)
    {
      v186 = sub_26D22B99C(v187 > 1, v188 + 1, 1, v186);
    }

    (*(v27 + 8))(v401, v26);
    *(v186 + 2) = v188 + 1;
    v184(&v186[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v188], v402, v26);
    v425 = v186;
  }

  else
  {
  }

  v189 = type metadata accessor for TapToRadarDraft();
  v190 = v1 + v189[11];
  v191 = v392;
  sub_26D20D294(v392);
  if (v423(v191, 1, v26) == 1)
  {
    sub_26D1B950C(v191, &qword_2804E14D8, &qword_26D234D10);
  }

  else
  {
    v192 = *(v27 + 32);
    v193 = v390;
    v192(v390, v191, v26);
    (*(v27 + 16))(v391, v193, v26);
    v194 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v194 = sub_26D22B99C(0, *(v194 + 2) + 1, 1, v194);
    }

    v196 = *(v194 + 2);
    v195 = *(v194 + 3);
    if (v196 >= v195 >> 1)
    {
      v194 = sub_26D22B99C(v195 > 1, v196 + 1, 1, v194);
    }

    (*(v27 + 8))(v390, v26);
    *(v194 + 2) = v196 + 1;
    v192(&v194[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v196], v391, v26);
    v425 = v194;
    v1 = v421;
  }

  v197 = (v1 + v189[12]);
  v199 = *v197;
  v198 = v197[1];
  v200 = v197[2];

  sub_26D20D858(v201);
  if (v202)
  {
    v203 = v373;
    sub_26D22CB04();

    v204 = *(v27 + 32);
    v205 = v403;
    v204(v403, v203, v26);
    (*(v27 + 16))(v404, v205, v26);
    v206 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v206 = sub_26D22B99C(0, *(v206 + 2) + 1, 1, v206);
    }

    v208 = *(v206 + 2);
    v207 = *(v206 + 3);
    if (v208 >= v207 >> 1)
    {
      v206 = sub_26D22B99C(v207 > 1, v208 + 1, 1, v206);
    }

    (*(v27 + 8))(v403, v26);
    *(v206 + 2) = v208 + 1;
    v204(&v206[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v208], v404, v26);
    v425 = v206;
    v1 = v421;
  }

  else
  {
  }

  v209 = (v1 + v189[13]);
  v211 = *v209;
  v210 = v209[1];
  v212 = v209[2];

  sub_26D20D858(v213);
  if (v214)
  {
    v215 = v374;
    sub_26D22CB04();

    v216 = *(v27 + 32);
    v217 = v405;
    v216(v405, v215, v26);
    (*(v27 + 16))(v406, v217, v26);
    v218 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v218 = sub_26D22B99C(0, *(v218 + 2) + 1, 1, v218);
    }

    v220 = *(v218 + 2);
    v219 = *(v218 + 3);
    if (v220 >= v219 >> 1)
    {
      v218 = sub_26D22B99C(v219 > 1, v220 + 1, 1, v218);
    }

    (*(v27 + 8))(v405, v26);
    *(v218 + 2) = v220 + 1;
    v216(&v218[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v220], v406, v26);
    v425 = v218;
    v1 = v421;
  }

  else
  {
  }

  v221 = (v1 + v189[14]);
  v223 = *v221;
  v222 = v221[1];
  v224 = v221[2];

  sub_26D20D728(v225);
  if (v226)
  {
    v227 = v375;
    sub_26D22CB04();

    v228 = *(v27 + 32);
    v229 = v407;
    v228(v407, v227, v26);
    (*(v27 + 16))(v420, v229, v26);
    v230 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v230 = sub_26D22B99C(0, *(v230 + 2) + 1, 1, v230);
    }

    v232 = *(v230 + 2);
    v231 = *(v230 + 3);
    if (v232 >= v231 >> 1)
    {
      v230 = sub_26D22B99C(v231 > 1, v232 + 1, 1, v230);
    }

    (*(v27 + 8))(v407, v26);
    *(v230 + 2) = v232 + 1;
    v228(&v230[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v232], v420, v26);
    v425 = v230;
    v1 = v421;
  }

  else
  {
  }

  v233 = (v1 + v189[15]);
  v234 = *v233;
  v235 = v233[1];
  *(v233 + 16);

  v236 = v395;
  sub_26D22CB04();

  v420 = (v27 + 56);
  v422(v236, 0, 1, v26);

  if (v423(v236, 1, v26) == 1)
  {
    sub_26D1B950C(v236, &qword_2804E14D8, &qword_26D234D10);
  }

  else
  {
    v237 = *(v27 + 32);
    v238 = v393;
    v237(v393, v236, v26);
    (*(v27 + 16))(v394, v238, v26);
    v239 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v239 = sub_26D22B99C(0, *(v239 + 2) + 1, 1, v239);
    }

    v241 = *(v239 + 2);
    v240 = *(v239 + 3);
    if (v241 >= v240 >> 1)
    {
      v239 = sub_26D22B99C(v240 > 1, v241 + 1, 1, v239);
    }

    v242 = v424 + 8;
    (*(v424 + 8))(v393, v26);
    *(v239 + 2) = v241 + 1;
    v237(&v239[((*(v242 + 72) + 32) & ~*(v242 + 72)) + *(v242 + 64) * v241], v394, v26);
    v425 = v239;
  }

  v243 = (v1 + v189[16]);
  v245 = *v243;
  v244 = v243[1];
  v246 = v243[2];

  sub_26D20D728(v247);
  if (v248)
  {
    v249 = v376;
    sub_26D22CB04();

    v250 = v424;
    v251 = *(v424 + 32);
    v252 = v408;
    v251(v408, v249, v26);
    (*(v250 + 16))(v409, v252, v26);
    v253 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v253 = sub_26D22B99C(0, *(v253 + 2) + 1, 1, v253);
    }

    v255 = *(v253 + 2);
    v254 = *(v253 + 3);
    if (v255 >= v254 >> 1)
    {
      v253 = sub_26D22B99C(v254 > 1, v255 + 1, 1, v253);
    }

    v256 = v424 + 8;
    (*(v424 + 8))(v408, v26);
    *(v253 + 2) = v255 + 1;
    v251(&v253[((*(v256 + 72) + 32) & ~*(v256 + 72)) + *(v256 + 64) * v255], v409, v26);
    v425 = v253;
  }

  else
  {
  }

  v257 = (v1 + v189[17]);
  v259 = *v257;
  v258 = v257[1];
  v260 = v257[2];

  sub_26D20D550(v261);
  if (v262)
  {
    v263 = v377;
    sub_26D22CB04();

    v264 = v424;
    v265 = *(v424 + 32);
    v266 = v410;
    v265(v410, v263, v26);
    (*(v264 + 16))(v411, v266, v26);
    v267 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v267 = sub_26D22B99C(0, *(v267 + 2) + 1, 1, v267);
    }

    v269 = *(v267 + 2);
    v268 = *(v267 + 3);
    if (v269 >= v268 >> 1)
    {
      v267 = sub_26D22B99C(v268 > 1, v269 + 1, 1, v267);
    }

    v270 = v424 + 8;
    (*(v424 + 8))(v410, v26);
    *(v267 + 2) = v269 + 1;
    v265(&v267[((*(v270 + 72) + 32) & ~*(v270 + 72)) + *(v270 + 64) * v269], v411, v26);
    v425 = v267;
  }

  else
  {
  }

  v271 = (v1 + v189[18]);
  v273 = *v271;
  v272 = v271[1];
  v274 = v271[2];

  sub_26D20D728(v275);
  if (v276)
  {
    v277 = v378;
    sub_26D22CB04();

    v278 = v424;
    v279 = *(v424 + 32);
    v280 = v412;
    v279(v412, v277, v26);
    (*(v278 + 16))(v413, v280, v26);
    v281 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v281 = sub_26D22B99C(0, *(v281 + 2) + 1, 1, v281);
    }

    v283 = *(v281 + 2);
    v282 = *(v281 + 3);
    if (v283 >= v282 >> 1)
    {
      v281 = sub_26D22B99C(v282 > 1, v283 + 1, 1, v281);
    }

    v284 = v424 + 8;
    (*(v424 + 8))(v412, v26);
    *(v281 + 2) = v283 + 1;
    v279(&v281[((*(v284 + 72) + 32) & ~*(v284 + 72)) + *(v284 + 64) * v283], v413, v26);
    v425 = v281;
  }

  else
  {
  }

  v285 = (v1 + v189[19]);
  v287 = *v285;
  v286 = v285[1];
  v288 = v285[2];

  sub_26D20C3A0(v288);
  if (v289)
  {
    v290 = v379;
    sub_26D22CB04();

    v291 = v424;
    v292 = *(v424 + 32);
    v293 = v414;
    v292(v414, v290, v26);
    (*(v291 + 16))(v415, v293, v26);
    v294 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v294 = sub_26D22B99C(0, *(v294 + 2) + 1, 1, v294);
    }

    v296 = *(v294 + 2);
    v295 = *(v294 + 3);
    if (v296 >= v295 >> 1)
    {
      v294 = sub_26D22B99C(v295 > 1, v296 + 1, 1, v294);
    }

    v297 = v424 + 8;
    (*(v424 + 8))(v414, v26);
    *(v294 + 2) = v296 + 1;
    v292(&v294[((*(v297 + 72) + 32) & ~*(v297 + 72)) + *(v297 + 64) * v296], v415, v26);
    v425 = v294;
  }

  else
  {
  }

  v298 = (v1 + v189[20]);
  v299 = *v298;
  v300 = v298[1];
  *(v298 + 16);

  v301 = v398;
  sub_26D22CB04();

  v422(v301, 0, 1, v26);
  v302 = v301;

  if (v423(v301, 1, v26) == 1)
  {
    sub_26D1B950C(v301, &qword_2804E14D8, &qword_26D234D10);
  }

  else
  {
    v303 = v424;
    v304 = *(v424 + 32);
    v305 = v396;
    v304(v396, v302, v26);
    (*(v303 + 16))(v397, v305, v26);
    v306 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v306 = sub_26D22B99C(0, *(v306 + 2) + 1, 1, v306);
    }

    v308 = *(v306 + 2);
    v307 = *(v306 + 3);
    if (v308 >= v307 >> 1)
    {
      v306 = sub_26D22B99C(v307 > 1, v308 + 1, 1, v306);
    }

    v309 = v424 + 8;
    (*(v424 + 8))(v396, v26);
    *(v306 + 2) = v308 + 1;
    v304(&v306[((*(v309 + 72) + 32) & ~*(v309 + 72)) + *(v309 + 64) * v308], v397, v26);
    v425 = v306;
  }

  v310 = (v1 + v189[21]);
  v312 = *v310;
  v311 = v310[1];
  v313 = *(v310 + 16);

  sub_26D20CA58(v313);
  if (v314)
  {
    v315 = v380;
    sub_26D22CB04();

    v316 = v424;
    v317 = *(v424 + 32);
    v318 = v416;
    v317(v416, v315, v26);
    (*(v316 + 16))(v417, v318, v26);
    v319 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v319 = sub_26D22B99C(0, *(v319 + 2) + 1, 1, v319);
    }

    v321 = *(v319 + 2);
    v320 = *(v319 + 3);
    if (v321 >= v320 >> 1)
    {
      v319 = sub_26D22B99C(v320 > 1, v321 + 1, 1, v319);
    }

    v322 = v424 + 8;
    (*(v424 + 8))(v416, v26);
    *(v319 + 2) = v321 + 1;
    v317(&v319[((*(v322 + 72) + 32) & ~*(v322 + 72)) + *(v322 + 64) * v321], v417, v26);
    v425 = v319;
  }

  else
  {
  }

  v323 = (v1 + v189[22]);
  v325 = *v323;
  v324 = v323[1];
  v326 = v323[2];

  sub_26D20D728(v327);
  if (v328)
  {
    v329 = v381;
    sub_26D22CB04();

    v330 = v424;
    v331 = *(v424 + 32);
    v332 = v418;
    v331(v418, v329, v26);
    (*(v330 + 16))(v419, v332, v26);
    v333 = v425;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v333 = sub_26D22B99C(0, *(v333 + 2) + 1, 1, v333);
    }

    v335 = *(v333 + 2);
    v334 = *(v333 + 3);
    if (v335 >= v334 >> 1)
    {
      v333 = sub_26D22B99C(v334 > 1, v335 + 1, 1, v333);
    }

    v336 = v424 + 8;
    (*(v424 + 8))(v418, v26);
    *(v333 + 2) = v335 + 1;
    v331(&v333[((*(v336 + 72) + 32) & ~*(v336 + 72)) + *(v336 + 64) * v335], v419, v26);
    v425 = v333;
  }

  else
  {
  }

  v337 = (v1 + v189[23]);
  if (!v337[3])
  {
    v342 = v399;
    v422(v399, 1, 1, v26);
    v344 = v424;
    goto LABEL_140;
  }

  v339 = v337[1];
  v338 = v337[2];
  v340 = *v337;
  v341 = v337[3];

  v342 = v399;
  sub_26D22CB04();
  v422(v342, 0, 1, v26);

  v343 = v423(v342, 1, v26);
  v344 = v424;
  if (v343 == 1)
  {
LABEL_140:
    sub_26D1B950C(v342, &qword_2804E14D8, &qword_26D234D10);
    goto LABEL_141;
  }

  v345 = *(v424 + 32);
  v346 = v382;
  v345(v382, v342, v26);
  (*(v344 + 16))(v383, v346, v26);
  v347 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v347 = sub_26D22B99C(0, *(v347 + 2) + 1, 1, v347);
  }

  v349 = *(v347 + 2);
  v348 = *(v347 + 3);
  if (v349 >= v348 >> 1)
  {
    v347 = sub_26D22B99C(v348 > 1, v349 + 1, 1, v347);
  }

  v344 = v424;
  v350 = v424 + 8;
  (*(v424 + 8))(v382, v26);
  *(v347 + 2) = v349 + 1;
  v345(&v347[((*(v350 + 72) + 32) & ~*(v350 + 72)) + *(v350 + 64) * v349], v383, v26);
  v425 = v347;
LABEL_141:
  v351 = (v421 + v189[24]);
  if (!v351[3])
  {
    v356 = v400;
    v422(v400, 1, 1, v26);
    goto LABEL_149;
  }

  v353 = v351[1];
  v352 = v351[2];
  v354 = *v351;
  v355 = v351[3];

  v356 = v400;
  sub_26D22CB04();
  v422(v356, 0, 1, v26);

  if (v423(v356, 1, v26) == 1)
  {
LABEL_149:
    sub_26D1B950C(v356, &qword_2804E14D8, &qword_26D234D10);
    return v425;
  }

  v357 = *(v344 + 32);
  v358 = v366;
  v357(v366, v356, v26);
  v359 = v367;
  (*(v344 + 16))(v367, v358, v26);
  v360 = v425;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v360 = sub_26D22B99C(0, *(v360 + 2) + 1, 1, v360);
  }

  v362 = *(v360 + 2);
  v361 = *(v360 + 3);
  if (v362 >= v361 >> 1)
  {
    v360 = sub_26D22B99C(v361 > 1, v362 + 1, 1, v360);
  }

  (*(v344 + 8))(v358, v26);
  *(v360 + 2) = v362 + 1;
  v357(&v360[((*(v344 + 80) + 32) & ~*(v344 + 80)) + *(v344 + 72) * v362], v359, v26);
  return v360;
}

unint64_t sub_26D20B834()
{
  result = qword_2804E14D0;
  if (!qword_2804E14D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E14D0);
  }

  return result;
}

uint64_t sub_26D20B888()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E14E0, &qword_26D234D18);
  v1 = *(sub_26D22CB14() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26D234C40;
  v10 = *v0;
  sub_26D22E954();
  sub_26D22CB04();

  v5 = v0[1];
  v6 = v0[2];
  sub_26D22CB04();
  v7 = v0[3];
  v8 = v0[4];
  sub_26D22CB04();
  return v4;
}

uint64_t sub_26D20BA04()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_26D22E9E4();
  MEMORY[0x26D6B71D0](v1);
  sub_26D22E454();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D20BA84()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x26D6B71D0](*v0);
  sub_26D22E454();

  return sub_26D22E454();
}

uint64_t sub_26D20BAF4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_26D22E9E4();
  MEMORY[0x26D6B71D0](v1);
  sub_26D22E454();
  sub_26D22E454();
  return sub_26D22EA04();
}

uint64_t sub_26D20BB70(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_26D22E964() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_26D22E964();
}

unint64_t sub_26D20BC24(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_26D20BD88(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_26D20BC24(*a1);
  v5 = v4;
  if (v3 == sub_26D20BC24(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D20BE10()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D20BC24(v1);
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D20BE74()
{
  sub_26D20BC24(*v0);
  sub_26D22E454();
}

uint64_t sub_26D20BEC8()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D20BC24(v1);
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D20BF28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D20F3C8();
  *a2 = result;
  return result;
}

unint64_t sub_26D20BF58@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26D20BC24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26D20BF98()
{
  *v0;
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D20C09C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D20F460();
  *a2 = result;
  return result;
}

void sub_26D20C0CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_26D20C1B0()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D20C2AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D20F37C();
  *a2 = result;
  return result;
}

void sub_26D20C2DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_26D20C3A0(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_26D22B890(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_26D22B890((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_26D22B890(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_26D22B890((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_26D22B890(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_26D22B890((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_26D22B890(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_26D22B890((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_26D22B890(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_26D22B890((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = 0x657463656E6E6F43;
        *(v20 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E14E8, &unk_26D234D20);
            sub_26D20DC10();
            v1 = sub_26D22E394();

            return v1;
          }

LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_26D22B890(0, *(v2 + 2) + 1, 1, v2);
          }

          v25 = *(v2 + 2);
          v24 = *(v2 + 3);
          if (v25 >= v24 >> 1)
          {
            v2 = sub_26D22B890((v24 > 1), v25 + 1, 1, v2);
          }

          *(v2 + 2) = v25 + 1;
          v26 = &v2[16 * v25];
          *(v26 + 4) = 0xD000000000000016;
          *(v26 + 5) = 0x800000026D23BF00;
          goto LABEL_51;
        }

LABEL_41:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_26D22B890(0, *(v2 + 2) + 1, 1, v2);
        }

        v22 = *(v2 + 2);
        v21 = *(v2 + 3);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_26D22B890((v21 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v22 + 1;
        v23 = &v2[16 * v22];
        *(v23 + 4) = 0x61656854656D6F48;
        *(v23 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_26D22B890(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_26D22B890((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

BOOL sub_26D20C8B4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_26D20C8E4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_26D20C910@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_26D20C9FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26D20CA18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_26D20F4AC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_26D20CA58(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = sub_26D22E964();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_26D20CC28()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D20CD2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D20F414();
  *a2 = result;
  return result;
}

void sub_26D20CD5C(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000026D239F60;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x800000026D239F80;
    }

    v5 = 0x800000026D239F20;
    if (v2 != 3)
    {
      v5 = 0x800000026D239F40;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

uint64_t sub_26D20CE2C()
{
  v1 = *v0;
  sub_26D22E9E4();
  MEMORY[0x26D6B71D0](v1);
  return sub_26D22EA04();
}

uint64_t sub_26D20CEA0()
{
  v1 = *v0;
  sub_26D22E9E4();
  MEMORY[0x26D6B71D0](v1);
  return sub_26D22EA04();
}

unint64_t sub_26D20CEE4()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000028;
  }

  *v0;
  return result;
}

uint64_t sub_26D20CF48@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 9u)
  {
    v3 = 1;
  }

  else
  {
    sub_26D22CB04();

    v3 = 0;
  }

  v4 = sub_26D22CB14();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_26D20D13C@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 5u)
  {
    v3 = 1;
  }

  else
  {
    sub_26D22CB04();

    v3 = 0;
  }

  v4 = sub_26D22CB14();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_26D20D294@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0490, &qword_26D231F50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_26D22CE34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0498, &qword_26D234D30);
  sub_26D20DC74(v2 + *(v13 + 36), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26D1B950C(v7, &qword_2804E0490, &qword_26D231F50);
    v14 = 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v16 = sub_26D22E3B4();
    [v15 setDateFormat_];

    [v15 setDoesRelativeDateFormatting_];
    v17 = sub_26D22CDF4();
    v18 = [v15 stringFromDate_];

    sub_26D22E3C4();
    (*(v9 + 8))(v12, v8);
    v19 = *v2;
    v20 = v2[1];
    sub_26D22CB04();

    v14 = 0;
  }

  v21 = sub_26D22CB14();
  return (*(*(v21 - 8) + 56))(a1, v14, 1, v21);
}

uint64_t sub_26D20D550(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_26D22B890(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_26D22B890((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E14E8, &unk_26D234D20);
  sub_26D20DC10();
  v17 = sub_26D22E394();

  return v17;
}

uint64_t sub_26D20D728(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_26D22B890(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_26D22B890((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E14E8, &unk_26D234D20);
  sub_26D20DC10();
  v9 = sub_26D22E394();

  return v9;
}

uint64_t sub_26D20D858(uint64_t a1)
{
  v24 = sub_26D22CCE4();
  v2 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v8 = *(v3 + 16);
  v7 = v3 + 16;
  v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  v22 = *(v7 + 56);
  v23 = v8;
  v10 = (v7 - 8);
  v11 = MEMORY[0x277D84F90];
  do
  {
    v12 = v24;
    v13 = v7;
    v23(v5, v9, v24);
    v14 = sub_26D22CCA4();
    v16 = v15;
    (*v10)(v5, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_26D22B890(0, *(v11 + 2) + 1, 1, v11);
    }

    v18 = *(v11 + 2);
    v17 = *(v11 + 3);
    if (v18 >= v17 >> 1)
    {
      v11 = sub_26D22B890((v17 > 1), v18 + 1, 1, v11);
    }

    *(v11 + 2) = v18 + 1;
    v19 = &v11[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
    v9 += v22;
    --v6;
    v7 = v13;
  }

  while (v6);
  v25 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E14E8, &unk_26D234D20);
  sub_26D20DC10();
  v20 = sub_26D22E394();

  return v20;
}

uint64_t sub_26D20DA6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = *v2++;
    v5 = sub_26D22E954();
    v7 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_26D22B890(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_26D22B890((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v10 = &v3[16 * v9];
    *(v10 + 4) = v5;
    *(v10 + 5) = v7;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E14E8, &unk_26D234D20);
  sub_26D20DC10();
  v11 = sub_26D22E394();

  return v11;
}

uint64_t type metadata accessor for TapToRadarDraft()
{
  result = qword_2804E1578;
  if (!qword_2804E1578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26D20DC10()
{
  result = qword_2804E14F0[0];
  if (!qword_2804E14F0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E14E8, &unk_26D234D20);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804E14F0);
  }

  return result;
}

uint64_t sub_26D20DC74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0490, &qword_26D231F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D20DCF4(uint64_t a1)
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

uint64_t sub_26D20DD74(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_26D20DEF8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
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

uint64_t sub_26D20E174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0498, &qword_26D234D30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26D20E244(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0498, &qword_26D234D30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_26D20E2F4()
{
  sub_26D20E718(319, &qword_2804E1588, &qword_2804E0EE8, qword_26D231B80, sub_26D20E64C);
  if (v0 <= 0x3F)
  {
    sub_26D20E6C8();
    if (v1 <= 0x3F)
    {
      sub_26D20E718(319, &qword_2804E15A0, &qword_2804E15A8, "\u038B", sub_26D20E788);
      if (v2 <= 0x3F)
      {
        sub_26D20E718(319, &qword_2804E15B8, &qword_2804E15C0, "\u038B", sub_26D20E804);
        if (v3 <= 0x3F)
        {
          sub_26D20E718(319, &qword_2804E15D0, &qword_2804E15D8, "\u038B", sub_26D20E880);
          if (v4 <= 0x3F)
          {
            sub_26D20E718(319, &qword_2804E15E8, &qword_2804E0490, &qword_26D231F50, sub_26D20E8FC);
            if (v5 <= 0x3F)
            {
              sub_26D20E718(319, &qword_2804E15F8, &qword_2804E1600, &qword_26D234D98, sub_26D20E978);
              if (v6 <= 0x3F)
              {
                sub_26D20E718(319, &qword_2804E1610, &qword_2804E14E8, &unk_26D234D20, sub_26D20E9F4);
                if (v7 <= 0x3F)
                {
                  sub_26D20EAEC(319, &qword_2804E1620);
                  if (v8 <= 0x3F)
                  {
                    sub_26D20E718(319, &qword_2804E1628, &qword_2804E1630, &qword_26D234DA0, sub_26D20EA70);
                    if (v9 <= 0x3F)
                    {
                      sub_26D20EAEC(319, &qword_2804E1640);
                      if (v10 <= 0x3F)
                      {
                        sub_26D20EAEC(319, &qword_2804E1648);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
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
    }
  }
}

unint64_t sub_26D20E64C()
{
  result = qword_2804E1590;
  if (!qword_2804E1590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E0EE8, qword_26D231B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1590);
  }

  return result;
}

void sub_26D20E6C8()
{
  if (!qword_2804E1598)
  {
    v0 = sub_26D22E654();
    if (!v1)
    {
      atomic_store(v0, &qword_2804E1598);
    }
  }
}

void sub_26D20E718(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = type metadata accessor for URLParameter();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_26D20E788()
{
  result = qword_2804E15B0;
  if (!qword_2804E15B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E15A8, "\u038B");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E15B0);
  }

  return result;
}

unint64_t sub_26D20E804()
{
  result = qword_2804E15C8;
  if (!qword_2804E15C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E15C0, "\u038B");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E15C8);
  }

  return result;
}

unint64_t sub_26D20E880()
{
  result = qword_2804E15E0;
  if (!qword_2804E15E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E15D8, "\u038B");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E15E0);
  }

  return result;
}

unint64_t sub_26D20E8FC()
{
  result = qword_2804E15F0;
  if (!qword_2804E15F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E0490, &qword_26D231F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E15F0);
  }

  return result;
}

unint64_t sub_26D20E978()
{
  result = qword_2804E1608;
  if (!qword_2804E1608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E1600, &qword_26D234D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1608);
  }

  return result;
}

unint64_t sub_26D20E9F4()
{
  result = qword_2804E1618;
  if (!qword_2804E1618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E14E8, &unk_26D234D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1618);
  }

  return result;
}

unint64_t sub_26D20EA70()
{
  result = qword_2804E1638;
  if (!qword_2804E1638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E1630, &qword_26D234DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1638);
  }

  return result;
}

void sub_26D20EAEC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for URLParameter();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t _s21DecodingConfigurationV10CodingKeysOwet_1(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s21DecodingConfigurationV10CodingKeysOwst_1(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Reproducibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Reproducibility(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
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

uint64_t sub_26D20EF68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26D20EFB0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_26D20F00C()
{
  result = qword_2804E1650;
  if (!qword_2804E1650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1650);
  }

  return result;
}

unint64_t sub_26D20F064()
{
  result = qword_2804E1658;
  if (!qword_2804E1658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1658);
  }

  return result;
}

unint64_t sub_26D20F0BC()
{
  result = qword_2804E1660;
  if (!qword_2804E1660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1660);
  }

  return result;
}

unint64_t sub_26D20F114()
{
  result = qword_2804E1668;
  if (!qword_2804E1668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1668);
  }

  return result;
}

unint64_t sub_26D20F168()
{
  result = qword_2804E1670;
  if (!qword_2804E1670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1670);
  }

  return result;
}

unint64_t sub_26D20F1C0()
{
  result = qword_2804E1678;
  if (!qword_2804E1678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1678);
  }

  return result;
}

unint64_t sub_26D20F21C()
{
  result = qword_2804E1680;
  if (!qword_2804E1680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1680);
  }

  return result;
}

unint64_t sub_26D20F274()
{
  result = qword_2804E1688;
  if (!qword_2804E1688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1688);
  }

  return result;
}

unint64_t sub_26D20F2CC()
{
  result = qword_2804E1690;
  if (!qword_2804E1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1690);
  }

  return result;
}

unint64_t sub_26D20F328()
{
  result = qword_2804E1698;
  if (!qword_2804E1698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1698);
  }

  return result;
}

uint64_t sub_26D20F37C()
{
  v0 = sub_26D22E854();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D20F3C8()
{
  v0 = sub_26D22E854();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D20F414()
{
  v0 = sub_26D22E854();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D20F460()
{
  v0 = sub_26D22E854();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D20F4AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_26D20F4F4(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1DB0, &qword_26D238510);
  if (swift_dynamicCast())
  {
    sub_26D220F70(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_26D22CC34();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_26D1B950C(__src, &qword_2804E1DB8, &unk_26D238518);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_26D22E7A4();
  }

  sub_26D21D5E4(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_26D220E68(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_26D21D6AC(sub_26D220F08);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_26D22CD34();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_26D21D568(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_26D22E4B4();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_26D22E4E4();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_26D22E7A4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_26D21D568(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_26D22E4C4();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_26D22CD44();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_26D22CD44();
    sub_26D1BE640(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_26D1BE640(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_26D1BCB48(*&__src[0], *(&__src[0] + 1));

  sub_26D1BCB9C(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_26D20FA14(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E16E0, &qword_26D235488);
  result = sub_26D22E8A4();
  if (!v1)
  {
    if (!v4)
    {
LABEL_7:
      v6 = sub_26D22E794();
      swift_allocError();
      v8 = v7;
      sub_26D22E894();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1358, &qword_26D233C08);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26D22F360;
      *(inited + 56) = &_s21DecodingConfigurationV10CodingKeysON_42;
      *(inited + 64) = sub_26D2124CC();
      *(inited + 32) = a1;
      sub_26D223EA4(inited);
      sub_26D22E784();
      (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84168], v6);
      return swift_willThrow();
    }

    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v5)
    {

      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_26D20FB98(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = v30 - v6;
  v7 = sub_26D22CCE4();
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26D22CAD4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26D20FA14(a1);
  if (!v2)
  {
    v30[0] = v10;
    v30[1] = v1;
    v31 = a1;
    v32 = 0;
    v34 = v16;
    v35 = v17;
    sub_26D22CAB4();
    sub_26D1B1F48();
    a1 = sub_26D22E6B4();
    v19 = v18;
    (*(v12 + 8))(v15, v11);

    v20 = v36;
    sub_26D22CCD4();
    v21 = v33;
    if ((*(v33 + 48))(v20, 1, v7) == 1)
    {

      sub_26D1B950C(v20, &qword_2804E0890, &qword_26D230770);
      v22 = sub_26D22E794();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E16E0, &qword_26D235488);
      v25 = sub_26D22E894();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1358, &qword_26D233C08);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26D22F360;
      *(inited + 56) = &_s21DecodingConfigurationV10CodingKeysON_42;
      *(inited + 64) = sub_26D2124CC();
      *(inited + 32) = v31;
      v34 = v25;
      sub_26D223EA4(inited);
      sub_26D22E784();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84168], v22);
      swift_willThrow();
    }

    else
    {
      v28 = v30[0];
      (*(v21 + 32))(v30[0], v20, v7);
      sub_26D22CCC4();
      if (v29)
      {
      }

      else
      {
        v34 = 0x2F2F3A7370747468;
        v35 = 0xE800000000000000;
        MEMORY[0x26D6B6C70](a1, v19);

        a1 = v34;
      }

      (*(v21 + 8))(v28, v7);
    }
  }

  return a1;
}

uint64_t sub_26D20FF9C@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, char *a6@<X8>)
{
  v64 = a5;
  v63 = a4;
  v69 = a2;
  v8 = v6;
  v67 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v62 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v66 = &v57 - v14;
  v15 = sub_26D22CCE4();
  v68 = *(v15 - 8);
  v16 = *(v68 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v57 - v20;
  v22 = sub_26D22CAD4();
  v65 = *(v22 - 8);
  v23 = *(v65 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v70) = a1 & 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v69, a3);
  v27 = v72;
  result = sub_26D22E8A4();
  if (!v27)
  {
    v61 = v22;
    v69 = v26;
    v58 = v19;
    v59 = a1 & 1;
    v60 = v21;
    v30 = v15;
    v72 = 0;
    if (v29)
    {
      v31 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v31 = result & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {
        v57 = v8;
        v70 = result;
        v71 = v29;
        sub_26D22CAB4();
        sub_26D1B1F48();
        v32 = sub_26D22E6B4();
        v34 = v33;
        (*(v65 + 8))(v25, v61);

        v35 = v66;
        sub_26D22CCD4();
        v36 = v68;
        v37 = *(v68 + 48);
        if (v37(v35, 1, v30) == 1)
        {

          sub_26D1B950C(v35, &qword_2804E0890, &qword_26D230770);
          v38 = sub_26D22E794();
          swift_allocError();
          v40 = v39;
          v41 = sub_26D22E894();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1358, &qword_26D233C08);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26D22F360;
          *(inited + 56) = v63;
          *(inited + 64) = v64();
          *(inited + 32) = v59;
          v70 = v41;
          sub_26D223EA4(inited);
          sub_26D22E784();
          (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84168], v38);
          return swift_willThrow();
        }

        v65 = v32;
        v46 = *(v36 + 32);
        v47 = v60;
        v46(v60, v35, v30);
        sub_26D22CCC4();
        v44 = v30;
        if (v48)
        {

          v49 = v67;
          v46(v67, v47, v30);
        }

        else
        {
          v66 = (v36 + 32);
          v70 = 0x2F2F3A7370747468;
          v71 = 0xE800000000000000;
          MEMORY[0x26D6B6C70](v65, v34);

          v50 = v62;
          sub_26D22CCD4();

          if (v37(v50, 1, v30) == 1)
          {
            sub_26D1B950C(v50, &qword_2804E0890, &qword_26D230770);
            v51 = sub_26D22E794();
            swift_allocError();
            v53 = v52;
            v54 = sub_26D22E894();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1358, &qword_26D233C08);
            v55 = swift_initStackObject();
            *(v55 + 16) = xmmword_26D22F360;
            *(v55 + 56) = v63;
            *(v55 + 64) = v64();
            *(v55 + 32) = v59;
            v70 = v54;
            sub_26D223EA4(v55);
            sub_26D22E784();
            (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D84168], v51);
            swift_willThrow();
            return (*(v68 + 8))(v60, v30);
          }

          (*(v68 + 8))(v60, v30);
          v56 = v58;
          v46(v58, v50, v44);
          v49 = v67;
          v46(v67, v56, v44);
        }

        v45 = v49;
        v43 = 0;
        return (*(v68 + 56))(v45, v43, 1, v44);
      }
    }

    v43 = 1;
    v44 = v15;
    v45 = v67;
    return (*(v68 + 56))(v45, v43, 1, v44);
  }

  return result;
}

uint64_t sub_26D210708@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, char *a6@<X8>)
{
  v65 = a5;
  v64 = a4;
  v70 = a3;
  v68 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v67 = &v58 - v13;
  v14 = sub_26D22CCE4();
  v69 = *(v14 - 8);
  v15 = *(v69 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v58 - v19;
  v21 = sub_26D22CAD4();
  v66 = *(v21 - 8);
  v22 = *(v66 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  LOBYTE(v71) = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, v70);
  v27 = v73;
  result = sub_26D22E8A4();
  if (!v27)
  {
    v62 = v21;
    v70 = v26;
    v59 = v18;
    v61 = v20;
    v60 = v25;
    v30 = v14;
    v73 = 0;
    if (v29)
    {
      v31 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v31 = result & 0xFFFFFFFFFFFFLL;
      }

      if (v31)
      {
        v58 = v6;
        v71 = result;
        v72 = v29;
        sub_26D22CAB4();
        sub_26D1B1F48();
        v32 = sub_26D22E6B4();
        v34 = v33;
        (*(v66 + 8))(v24, v62);

        v35 = v67;
        sub_26D22CCD4();
        v36 = v69;
        v37 = *(v69 + 48);
        if (v37(v35, 1, v30) == 1)
        {

          sub_26D1B950C(v35, &qword_2804E0890, &qword_26D230770);
          v38 = sub_26D22E794();
          swift_allocError();
          v40 = v39;
          v41 = sub_26D22E894();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1358, &qword_26D233C08);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_26D22F360;
          *(inited + 56) = v64;
          *(inited + 64) = v65();
          *(inited + 32) = v60;
          v71 = v41;
          sub_26D223EA4(inited);
          sub_26D22E784();
          (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84168], v38);
          return swift_willThrow();
        }

        v66 = v32;
        v45 = *(v36 + 32);
        v46 = v61;
        v45(v61, v35, v30);
        sub_26D22CCC4();
        if (v47)
        {

          v48 = v68;
          v49 = v68;
          v50 = v46;
        }

        else
        {
          v71 = 0x2F2F3A7370747468;
          v72 = 0xE800000000000000;
          MEMORY[0x26D6B6C70](v66, v34);

          v51 = v63;
          sub_26D22CCD4();

          if (v37(v51, 1, v30) == 1)
          {
            sub_26D1B950C(v51, &qword_2804E0890, &qword_26D230770);
            v52 = sub_26D22E794();
            swift_allocError();
            v54 = v53;
            v55 = sub_26D22E894();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1358, &qword_26D233C08);
            v56 = swift_initStackObject();
            *(v56 + 16) = xmmword_26D22F360;
            *(v56 + 56) = v64;
            *(v56 + 64) = v65();
            *(v56 + 32) = v60;
            v71 = v55;
            sub_26D223EA4(v56);
            sub_26D22E784();
            (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D84168], v52);
            swift_willThrow();
            return (*(v69 + 8))(v61, v30);
          }

          (*(v69 + 8))(v61, v30);
          v57 = v59;
          v45(v59, v51, v30);
          v48 = v68;
          v49 = v68;
          v50 = v57;
        }

        v45(v49, v50, v30);
        v44 = v48;
        v43 = 0;
        return (*(v69 + 56))(v44, v43, 1, v30);
      }
    }

    v43 = 1;
    v44 = v68;
    return (*(v69 + 56))(v44, v43, 1, v30);
  }

  return result;
}

uint64_t sub_26D210E9C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26D22E854();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26D210F04(uint64_t a1)
{
  v2 = sub_26D2111F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D210F40(uint64_t a1)
{
  v2 = sub_26D2111F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.Postback.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_26D22E044();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E16A0, &qword_26D235460);
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D2111F4();
  sub_26D22EA24();
  if (!v2)
  {
    v25 = v7;
    v13 = sub_26D22E8D4();
    v23 = v4;
    v24 = v8;
    v14 = v13;
    v16 = v15;

    v17 = sub_26D20F4F4(v14, v16);
    v19 = v18;
    sub_26D22CD74();
    sub_26D1BCB9C(v17, v19);
    v20 = v25;
    sub_26D22E034();
    (*(v28 + 8))(v11, v24);
    (*(v26 + 32))(v27, v20, v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26D2111F4()
{
  result = qword_2804E16A8;
  if (!qword_2804E16A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E16A8);
  }

  return result;
}

uint64_t sub_26D211260(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6B63616274736F70;
  }

  else
  {
    v4 = 0x5479616C70736964;
  }

  if (v3)
  {
    v5 = 0xEB00000000747865;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x6B63616274736F70;
  }

  else
  {
    v6 = 0x5479616C70736964;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xEB00000000747865;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D211310()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D21139C()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D211414()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D2114A8(uint64_t *a1@<X8>)
{
  v2 = 0x5479616C70736964;
  if (*v1)
  {
    v2 = 0x6B63616274736F70;
  }

  v3 = 0xEB00000000747865;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D2114F0()
{
  if (*v0)
  {
    result = 0x6B63616274736F70;
  }

  else
  {
    result = 0x5479616C70736964;
  }

  *v0;
  return result;
}

uint64_t sub_26D211550(uint64_t a1)
{
  v2 = sub_26D2118EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D21158C(uint64_t a1)
{
  v2 = sub_26D2118EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.SuggestionCommon.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E16B0, &qword_26D235468);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_26D22DD14();
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E16B8, &qword_26D235470);
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v23);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D2118EC();
  v14 = v24;
  sub_26D22EA24();
  if (!v14)
  {
    v15 = v9;
    v24 = v8;
    v20 = v5;
    v16 = v22;
    v17 = v23;
    v26 = 0;
    v19 = sub_26D22E8D4();
    sub_26D22E044();
    v25 = 1;
    sub_26D21E550(&qword_2804E16C8, MEMORY[0x277CF2EE8]);
    sub_26D22E874();
    sub_26D22DD04();
    (*(v15 + 8))(v12, v17);
    (*(v21 + 32))(v16, v24, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26D2118EC()
{
  result = qword_2804E16C0;
  if (!qword_2804E16C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E16C0);
  }

  return result;
}

uint64_t Chatbot.Reply.init(from:configuration:)(uint64_t *a1)
{
  v3 = sub_26D22DD14();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D1FB6E0(a1, v9);
  Chatbot.SuggestionCommon.init(from:configuration:)(v9, v6);
  if (!v1)
  {
    sub_26D22DF24();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D211A24(uint64_t *a1)
{
  v3 = sub_26D22DD14();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D1FB6E0(a1, v9);
  Chatbot.SuggestionCommon.init(from:configuration:)(v9, v6);
  if (!v1)
  {
    sub_26D22DF24();
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D211AFC()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D211BC4()
{
  *v0;
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D211C78()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D211D3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D220CE4();
  *a2 = result;
  return result;
}

void sub_26D211D6C(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7107189;
  v4 = 0xE800000000000000;
  v5 = 0x65646F4D77656976;
  if (*v1 != 2)
  {
    v5 = 0x6574656D61726170;
    v4 = 0xEA00000000007372;
  }

  if (*v1)
  {
    v3 = 0x746163696C707061;
    v2 = 0xEB000000006E6F69;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_26D211DF0()
{
  v1 = 7107189;
  v2 = 0x65646F4D77656976;
  if (*v0 != 2)
  {
    v2 = 0x6574656D61726170;
  }

  if (*v0)
  {
    v1 = 0x746163696C707061;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26D211E70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D220CE4();
  *a1 = result;
  return result;
}

uint64_t sub_26D211EA8(uint64_t a1)
{
  v2 = sub_26D2124CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D211EE4(uint64_t a1)
{
  v2 = sub_26D2124CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.URLAction.OpenURL.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E16D0, &qword_26D235478);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E16D8, &qword_26D235480);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v36 - v8;
  v46 = sub_26D22E194();
  v44 = *(v46 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26D22E1C4();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E16E0, &qword_26D235488);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_26D2124CC();
  v23 = v48;
  sub_26D22EA24();
  if (!v23)
  {
    v41 = v15;
    v48 = v11;
    v24 = v17;
    v25 = v46;
    v26 = v47;
    v27 = v20;
    v39 = sub_26D20FB98(0);
    v40 = v28;
    v52 = 1;
    sub_26D21E550(&qword_2804E16F0, MEMORY[0x277CF2FF0]);
    v29 = v45;
    v30 = v25;
    sub_26D22E8C4();
    v38 = v27;
    v32 = v44;
    v37 = *(v44 + 48);
    if (v37(v29, 1, v25) == 1)
    {
      (*(v32 + 104))(v48, *MEMORY[0x277CF2FE0], v25);
      v33 = v26;
      if (v37(v29, 1, v30) != 1)
      {
        sub_26D1B950C(v29, &qword_2804E16D8, &qword_26D235480);
      }
    }

    else
    {
      (*(v32 + 32))(v48, v29, v25);
      v33 = v26;
    }

    sub_26D22E1B4();
    v51 = 2;
    sub_26D21E550(&qword_2804E16F8, MEMORY[0x277CF3018]);
    v34 = v38;
    sub_26D22E8C4();
    v50 = 3;
    sub_26D22E8A4();
    v35 = v41;
    sub_26D22E1A4();
    (*(v24 + 8))(v34, v16);
    (*(v42 + 32))(v33, v35, v12);
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

unint64_t sub_26D2124CC()
{
  result = qword_2804E16E8;
  if (!qword_2804E16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E16E8);
  }

  return result;
}

uint64_t sub_26D2125C0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26D22E854();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26D212628(uint64_t a1)
{
  v2 = sub_26D212A54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D212664(uint64_t a1)
{
  v2 = sub_26D212A54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.URLAction.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_26D22E1D4();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1700, &qword_26D235490);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_26D212A54();
  sub_26D22EA24();
  if (!v2)
  {
    v16 = v26;
    v15 = v27;
    v25 = v9;
    v17 = v8;
    if (sub_26D22E924())
    {
      sub_26D22E1C4();
      sub_26D21E550(&qword_2804E1710, MEMORY[0x277CF3028]);
      sub_26D22E884();
      (*(v25 + 8))(v12, v8);
      (*(v16 + 104))(v7, *MEMORY[0x277CF3030], v4);
      (*(v16 + 32))(v15, v7, v4);
    }

    else
    {
      v18 = sub_26D22E794();
      swift_allocError();
      v20 = v19;
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
      *v20 = v4;
      sub_26D22E894();
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_26D22E744();

      v28 = 0xD000000000000011;
      v29 = 0x800000026D23BFC0;
      v22 = MEMORY[0x26D6B6D70](&unk_287E99908, &_s21DecodingConfigurationV10CodingKeysON_41);
      MEMORY[0x26D6B6C70](v22);

      sub_26D22E784();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D84170], v18);
      swift_willThrow();
      (*(v25 + 8))(v12, v17);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

unint64_t sub_26D212A54()
{
  result = qword_2804E1708;
  if (!qword_2804E1708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1708);
  }

  return result;
}

uint64_t sub_26D212AE8(uint64_t a1)
{
  v2 = sub_26D212E58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D212B24(uint64_t a1)
{
  v2 = sub_26D212E58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.DialerAction.DialPhoneNumber.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = sub_26D22DB84();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1718, &qword_26D235498);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_26D212E58();
  v18 = v27;
  sub_26D22EA24();
  if (!v18)
  {
    v27 = v10;
    v24 = v7;
    v19 = v26;
    v29 = 0;
    sub_26D22E8D4();
    v23 = v20;
    sub_26D20FF9C(1, &qword_2804E1718, &qword_26D235498, &_s21DecodingConfigurationV10CodingKeysON_40, sub_26D212E58, v6);
    v21 = v27;
    sub_26D22DB74();
    (*(v12 + 8))(v15, v11);
    (*(v25 + 32))(v19, v21, v24);
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

unint64_t sub_26D212E58()
{
  result = qword_2804E1720;
  if (!qword_2804E1720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1720);
  }

  return result;
}

uint64_t sub_26D212EC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x7463656A627573;
  if (v2 != 1)
  {
    v4 = 0x6B6361626C6C6166;
    v3 = 0xEB000000006C7255;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6D754E656E6F6870;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB00000000726562;
  }

  v7 = 0xE700000000000000;
  v8 = 0x7463656A627573;
  if (*a2 != 1)
  {
    v8 = 0x6B6361626C6C6166;
    v7 = 0xEB000000006C7255;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D754E656E6F6870;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB00000000726562;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D212FDC()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D213090()
{
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D213130()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2131E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D220B68();
  *a2 = result;
  return result;
}

void sub_26D213210(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000726562;
  v4 = 0xE700000000000000;
  v5 = 0x7463656A627573;
  if (v2 != 1)
  {
    v5 = 0x6B6361626C6C6166;
    v4 = 0xEB000000006C7255;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D754E656E6F6870;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26D213280()
{
  v1 = 0x7463656A627573;
  if (*v0 != 1)
  {
    v1 = 0x6B6361626C6C6166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_26D2132EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D220B68();
  *a1 = result;
  return result;
}

uint64_t sub_26D213324(uint64_t a1)
{
  v2 = sub_26D2136E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D213360(uint64_t a1)
{
  v2 = sub_26D2136E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.DialerAction.DialEnrichedCall.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v22 - v5;
  v7 = sub_26D22DBA4();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1728, &qword_26D2354A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v22 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_26D2136E8();
  v18 = v25;
  sub_26D22EA24();
  if (!v18)
  {
    v25 = v7;
    v19 = v24;
    v28 = 0;
    sub_26D22E8D4();
    v22[1] = v20;
    v27 = 1;
    v22[0] = sub_26D22E8A4();
    sub_26D210708(2, &qword_2804E1728, &qword_26D2354A0, &_s21DecodingConfigurationV10CodingKeysON_39, sub_26D2136E8, v6);
    sub_26D22DB94();
    (*(v12 + 8))(v15, v11);
    (*(v23 + 32))(v19, v10, v25);
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

unint64_t sub_26D2136E8()
{
  result = qword_2804E1730;
  if (!qword_2804E1730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1730);
  }

  return result;
}

uint64_t sub_26D213758(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6B6361626C6C6166;
  }

  else
  {
    v4 = 0x6D754E656E6F6870;
  }

  if (v3)
  {
    v5 = 0xEB00000000726562;
  }

  else
  {
    v5 = 0xEB000000006C7255;
  }

  if (*a2)
  {
    v6 = 0x6B6361626C6C6166;
  }

  else
  {
    v6 = 0x6D754E656E6F6870;
  }

  if (*a2)
  {
    v7 = 0xEB000000006C7255;
  }

  else
  {
    v7 = 0xEB00000000726562;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D213814()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2138A8()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D21392C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D2139C8(uint64_t *a1@<X8>)
{
  v2 = 0x6D754E656E6F6870;
  if (*v1)
  {
    v2 = 0x6B6361626C6C6166;
  }

  v3 = 0xEB00000000726562;
  if (*v1)
  {
    v3 = 0xEB000000006C7255;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D213A18()
{
  if (*v0)
  {
    result = 0x6B6361626C6C6166;
  }

  else
  {
    result = 0x6D754E656E6F6870;
  }

  *v0;
  return result;
}

uint64_t sub_26D213A80(uint64_t a1)
{
  v2 = sub_26D213DF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D213ABC(uint64_t a1)
{
  v2 = sub_26D213DF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.DialerAction.DialVideoCall.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = sub_26D22DB64();
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1738, &qword_26D2354A8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_26D213DF0();
  v18 = v27;
  sub_26D22EA24();
  if (!v18)
  {
    v27 = v10;
    v24 = v7;
    v19 = v26;
    v29 = 0;
    sub_26D22E8D4();
    v23 = v20;
    sub_26D20FF9C(1, &qword_2804E1738, &qword_26D2354A8, &_s21DecodingConfigurationV10CodingKeysON_38, sub_26D213DF0, v6);
    v21 = v27;
    sub_26D22DB54();
    (*(v12 + 8))(v15, v11);
    (*(v25 + 32))(v19, v21, v24);
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

unint64_t sub_26D213DF0()
{
  result = qword_2804E1740;
  if (!qword_2804E1740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1740);
  }

  return result;
}

uint64_t sub_26D213E5C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x800000026D23A6B0;
  if (v2 == 1)
  {
    v5 = 0x800000026D23A6B0;
  }

  else
  {
    v3 = 0x656469566C616964;
    v5 = 0xED00006C6C61436FLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6E6F68506C616964;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEF7265626D754E65;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x656469566C616964;
    v4 = 0xED00006C6C61436FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F68506C616964;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEF7265626D754E65;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D213F78()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D214038()
{
  *v0;
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D2140E4()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D2141A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26D220B1C();
  *a2 = result;
  return result;
}

void sub_26D2141D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF7265626D754E65;
  v4 = 0x800000026D23A6B0;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x656469566C616964;
    v4 = 0xED00006C6C61436FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F68506C616964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_26D21424C()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x656469566C616964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F68506C616964;
  }
}

uint64_t sub_26D2142C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D220B1C();
  *a1 = result;
  return result;
}

uint64_t sub_26D2142FC(uint64_t a1)
{
  v2 = sub_26D214944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D214338(uint64_t a1)
{
  v2 = sub_26D214944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.DialerAction.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1748, &qword_26D2354B0);
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - v5;
  v7 = sub_26D22DBB4();
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v45 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v45 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - v18;
  v21 = a1[3];
  v20 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_26D214944();
  v55 = v6;
  v22 = v51;
  sub_26D22EA24();
  if (!v22)
  {
    v45 = v11;
    v46 = v14;
    v24 = v17;
    v51 = v19;
    v25 = v48;
    v26 = v49;
    LOBYTE(v53) = 0;
    v27 = v50;
    if (sub_26D22E924())
    {
      sub_26D22DB84();
      LOBYTE(v53) = 0;
      sub_26D21E550(&qword_2804E1768, MEMORY[0x277CF2B68]);
      v28 = v24;
      v29 = v55;
      sub_26D22E884();
      (*(v26 + 8))(v29, v27);
      v30 = MEMORY[0x277CF2B40];
    }

    else
    {
      LOBYTE(v53) = 1;
      v31 = v26;
      if ((sub_26D22E924() & 1) == 0)
      {
        LOBYTE(v53) = 2;
        v37 = sub_26D22E924();
        v34 = v47;
        if ((v37 & 1) == 0)
        {
          v40 = sub_26D22E794();
          swift_allocError();
          v42 = v41;
          v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
          *v42 = v7;
          v43 = v55;
          sub_26D22E894();
          v53 = 0;
          v54 = 0xE000000000000000;
          sub_26D22E744();

          v53 = 0xD000000000000011;
          v54 = 0x800000026D23BFC0;
          v44 = MEMORY[0x26D6B6D70](&unk_287E99930, &_s21DecodingConfigurationV10CodingKeysON_37);
          MEMORY[0x26D6B6C70](v44);

          sub_26D22E784();
          (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84170], v40);
          swift_willThrow();
          (*(v31 + 8))(v43, v27);
          return __swift_destroy_boxed_opaque_existential_1(v52);
        }

        sub_26D22DB64();
        LOBYTE(v53) = 2;
        sub_26D21E550(&qword_2804E1758, MEMORY[0x277CF2B60]);
        v38 = v45;
        v39 = v55;
        sub_26D22E884();
        (*(v31 + 8))(v39, v27);
        v30 = MEMORY[0x277CF2B80];
        v28 = v38;
        goto LABEL_10;
      }

      sub_26D22DBA4();
      LOBYTE(v53) = 1;
      sub_26D21E550(&qword_2804E1760, MEMORY[0x277CF2B70]);
      v32 = v46;
      v33 = v55;
      sub_26D22E884();
      (*(v26 + 8))(v33, v27);
      v30 = MEMORY[0x277CF2B50];
      v28 = v32;
    }

    v34 = v47;
LABEL_10:
    (*(v25 + 104))(v28, *v30, v7);
    v35 = *(v25 + 32);
    v36 = v51;
    v35(v51, v28, v7);
    v35(v34, v36, v7);
  }

  return __swift_destroy_boxed_opaque_existential_1(v52);
}

unint64_t sub_26D214944()
{
  result = qword_2804E1750;
  if (!qword_2804E1750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1750);
  }

  return result;
}

uint64_t sub_26D214A24@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26D22E854();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26D214A8C(uint64_t a1)
{
  v2 = sub_26D214D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D214AC8(uint64_t a1)
{
  v2 = sub_26D214D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MapAction.Location.Query.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_26D22E134();
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1770, &qword_26D2354B8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D214D20();
  v13 = v18;
  sub_26D22EA24();
  if (!v13)
  {
    v14 = v17;
    v18 = v3;
    sub_26D22E8D4();
    sub_26D22E124();
    (*(v8 + 8))(v11, v7);
    (*(v14 + 32))(v16, v6, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26D214D20()
{
  result = qword_2804E1778;
  if (!qword_2804E1778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1778);
  }

  return result;
}

uint64_t sub_26D214D8C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x64757469676E6F6CLL;
  }

  else
  {
    v4 = 0x656475746974616CLL;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (*a2)
  {
    v6 = 0x64757469676E6F6CLL;
  }

  else
  {
    v6 = 0x656475746974616CLL;
  }

  if (*a2)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D214E38()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D214EC0()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D214F34()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D214FC4(uint64_t *a1@<X8>)
{
  v2 = 0x656475746974616CLL;
  if (*v1)
  {
    v2 = 0x64757469676E6F6CLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D215008()
{
  if (*v0)
  {
    result = 0x64757469676E6F6CLL;
  }

  else
  {
    result = 0x656475746974616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_26D215064(uint64_t a1)
{
  v2 = sub_26D21544C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D2150A0(uint64_t a1)
{
  v2 = sub_26D21544C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MapAction.Location.Coordinates.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_26D22E104();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1780, &qword_26D2354C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_26D21544C();
  sub_26D22EA24();
  if (!v2)
  {
    v29 = v7;
    v30 = v9;
    v15 = v32;
    LOBYTE(v34) = 0;
    v16 = sub_26D22E8D4();
    v18 = v17;
    LOBYTE(v34) = 0;
    v19 = sub_26D22E8D4();
    if (v18 && v20 && (v28 = v19, v21 = v20, v34 = 0, v22 = sub_26D21DC54(v16, v18), , v22))
    {
      v34 = 0;
      v23 = sub_26D21DC54(v28, v21);

      if (v23)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    LOBYTE(v34) = 0;
    sub_26D22E8F4();
    LOBYTE(v34) = 1;
    sub_26D22E8F4();
LABEL_10:
    v26 = v29;
    v25 = v30;
    sub_26D22E0F4();
    (*(v25 + 8))(v12, v8);
    (*(v31 + 32))(v15, v26, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

unint64_t sub_26D21544C()
{
  result = qword_2804E1788;
  if (!qword_2804E1788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E1788);
  }

  return result;
}

uint64_t sub_26D2154C4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26D22E854();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26D21552C(uint64_t a1)
{
  v2 = sub_26D21DD4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D215568(uint64_t a1)
{
  v2 = sub_26D21DD4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MapAction.Location.Method.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v30 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1790, &qword_26D2354C8);
  v29 = *(v32 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v32);
  v5 = &v28 - v4;
  v6 = sub_26D22E144();
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v28 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v16 = a1[4];
  v17 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D21DD4C();
  v31 = v5;
  v18 = v34;
  sub_26D22EA24();
  if (v18)
  {
    v19 = a1;
  }

  else
  {
    v34 = v15;
    v21 = v28;
    v22 = v30;
    v23 = sub_26D22E924();
    v24 = (v29 + 8);
    v19 = v17;
    if (v23)
    {
      sub_26D1FB6E0(v17, v33);
      Chatbot.MapAction.Location.Query.init(from:configuration:)(v33, v13);
      (*v24)(v31, v32);
      v25 = MEMORY[0x277CF2FB0];
    }

    else
    {
      sub_26D1FB6E0(v17, v33);
      Chatbot.MapAction.Location.Coordinates.init(from:configuration:)(v33, v10);
      (*v24)(v31, v32);
      v25 = MEMORY[0x277CF2FA8];
      v13 = v10;
    }

    (*(v21 + 104))(v13, *v25, v6);
    v26 = *(v21 + 32);
    v27 = v34;
    v26(v34, v13, v6);
    v26(v22, v27, v6);
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_26D215918@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_26D22E854();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_26D215980(uint64_t a1)
{
  v2 = sub_26D21DDA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D2159BC(uint64_t a1)
{
  v2 = sub_26D21DDA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MapAction.Location.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_26D22E144();
  v24 = *(v4 - 8);
  v25 = v4;
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26D22E154();
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E17A0, &qword_26D2354D0);
  v23 = *(v11 - 8);
  v12 = *(v23 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D21DDA0();
  sub_26D22EA24();
  if (!v2)
  {
    v16 = v23;
    v19 = v7;
    v20 = v10;
    sub_26D1FB6E0(a1, v26);
    Chatbot.MapAction.Location.Method.init(from:configuration:)(v26, v27);
    sub_26D22E8A4();
    v18 = v20;
    sub_26D22E114();
    (*(v16 + 8))(v14, v11);
    (*(v21 + 32))(v22, v18, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D215D18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6B6361626C6C6166;
  }

  else
  {
    v4 = 0x6E6F697461636F6CLL;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEB000000006C7255;
  }

  if (*a2)
  {
    v6 = 0x6B6361626C6C6166;
  }

  else
  {
    v6 = 0x6E6F697461636F6CLL;
  }

  if (*a2)
  {
    v7 = 0xEB000000006C7255;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D215DC8()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D215E54()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D215ECC()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D215F60(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F697461636F6CLL;
  if (*v1)
  {
    v2 = 0x6B6361626C6C6166;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEB000000006C7255;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26D215FA8()
{
  if (*v0)
  {
    result = 0x6B6361626C6C6166;
  }

  else
  {
    result = 0x6E6F697461636F6CLL;
  }

  *v0;
  return result;
}

uint64_t sub_26D216008(uint64_t a1)
{
  v2 = sub_26D21DDF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D216044(uint64_t a1)
{
  v2 = sub_26D21DDF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MapAction.ShowLocation.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0890, &qword_26D230770);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = &v24 - v6;
  v32 = sub_26D22E154();
  v28 = *(v32 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v32);
  v30 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26D22E0E4();
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E17B0, &qword_26D2354D8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_26D21DDF4();
  sub_26D22EA24();
  if (!v2)
  {
    v25 = v12;
    v26 = v14;
    v20 = v29;
    v24 = v9;
    v21 = v31;
    v34 = 0;
    sub_26D21E550(&qword_2804E17C0, MEMORY[0x277CF2FC0]);
    sub_26D22E884();
    sub_26D20FF9C(1, &qword_2804E17B0, &qword_26D2354D8, &_s21DecodingConfigurationV10CodingKeysON_32, sub_26D21DDF4, v20);
    v23 = v25;
    sub_26D22E0D4();
    (*(v26 + 8))(v17, v13);
    (*(v27 + 32))(v21, v23, v24);
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_26D216458(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x61636F4C776F6873;
  }

  if (v3)
  {
    v5 = 0xEC0000006E6F6974;
  }

  else
  {
    v5 = 0x800000026D23AB30;
  }

  if (*a2)
  {
    v6 = 0xD000000000000013;
  }

  else
  {
    v6 = 0x61636F4C776F6873;
  }

  if (*a2)
  {
    v7 = 0x800000026D23AB30;
  }

  else
  {
    v7 = 0xEC0000006E6F6974;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D21650C()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D21659C()
{
  *v0;
  sub_26D22E454();
}

uint64_t sub_26D216618()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

void sub_26D2166B0(unint64_t *a1@<X8>)
{
  v2 = 0x800000026D23AB30;
  v3 = 0x61636F4C776F6873;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEC0000006E6F6974;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_26D2166FC()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x61636F4C776F6873;
  }

  *v0;
  return result;
}

uint64_t sub_26D216760(uint64_t a1)
{
  v2 = sub_26D21DE48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D21679C(uint64_t a1)
{
  v2 = sub_26D21DE48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Chatbot.MapAction.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E17C8, &qword_26D2354E0);
  v32 = *(v34 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v6 = &v29 - v5;
  v7 = sub_26D22E164();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_26D21DE48();
  sub_26D22EA24();
  if (!v2)
  {
    v30 = v14;
    v31 = v8;
    v18 = v32;
    v17 = v33;
    LOBYTE(v35) = 0;
    v19 = v34;
    if (sub_26D22E924())
    {
      sub_26D22E0E4();
      LOBYTE(v35) = 0;
      sub_26D21E550(&qword_2804E17D8, MEMORY[0x277CF2F78]);
      sub_26D22E884();
      (*(v18 + 8))(v6, v19);
      v20 = v31;
      (*(v31 + 104))(v12, *MEMORY[0x277CF2F88], v7);
      v21 = *(v20 + 32);
      v22 = v30;
      v21(v30, v12, v7);
    }

    else
    {
      LOBYTE(v35) = 1;
      if ((sub_26D22E924() & 1) == 0)
      {
        v24 = sub_26D22E794();
        swift_allocError();
        v26 = v25;
        v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E1158, &qword_26D232138) + 48);
        *v26 = v7;
        sub_26D22E894();
        v35 = 0;
        v36 = 0xE000000000000000;
        sub_26D22E744();

        v35 = 0xD000000000000011;
        v36 = 0x800000026D23BFC0;
        v27 = MEMORY[0x26D6B6D70](&unk_287E99A00, &_s21DecodingConfigurationV10CodingKeysON_31);
        MEMORY[0x26D6B6C70](v27);

        sub_26D22E784();
        (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84170], v24);
        swift_willThrow();
        (*(v18 + 8))(v6, v19);
        return __swift_destroy_boxed_opaque_existential_1(v37);
      }

      (*(v18 + 8))(v6, v19);
      v22 = v30;
      v23 = v31;
      (*(v31 + 104))(v30, *MEMORY[0x277CF2F98], v7);
      v21 = *(v23 + 32);
    }

    v21(v17, v22, v7);
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}